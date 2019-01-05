Version 2 of Spike by Wahn begins here.
[Version 1 - New Character - Wahn]
[Version 2 - New Naming Rules, Anal Scenes - Wahn]

[ HP of Spike                                      ]
[   0: not met yet                                 ]
[   1: recruited                                   ]
[  99: sent into the city                          ]
[ 100: sent back to Alexandra                      ]

[ MaxHP of Spike - who is his daddy?               ]
[   1: Player                                      ]
[   2: Fang                                        ]
[   3: Korvin                                      ]
[   4: Carl                                        ]
[   5: Brutus                                      ]

[ thirst of Spike - what does he call the player?  ]
[  0: <name of player>                             ]
[  1: standard setting - Boss                      ]
[  2: Don                                          ]
[  3: Capo                                         ]
[  4: Kingpin                                      ]
[  5: Oyabun                                       ]
[  6: Chief                                        ]
[ 11: Daddy                                        ]
[ 12: Dad                                          ]
[ 13: Stepdaddy                                    ]
[ 14: Stepdad                                      ]
[ 15: Master                                       ]
[ 21: Mommy                                        ]
[ 22: Mom                                          ]
[ 23: Stepmommy                                    ]
[ 24: Stepmom                                      ]
[ 25: Mistress                                     ]

[ libido of Spike - Spike in subby position        ]
[  0: nothing yet                                  ]
[  1: talked into oral service / BJ                ]
[  2: nothing yet                                  ]
[  3: nothing yet                                  ]
[  4: nothing yet                                  ]
[ 21: pressured into oral service / BJ             ]
[ 22: nothing yet                                  ]
[ 23: nothing yet                                  ]
[ 24: nothing yet                                  ]
[ 41: forced into oral service / BJ                ]
[ 42: nothing yet                                  ]
[ 43: nothing yet                                  ]
[ 44: nothing yet                                  ]

[ lust of Spike - sex tracking                     ]
[  0: never had sex with the player                ]
[  1: got blown by the player                      ]
[  2: fucked the player's pussy                    ]
[  3: fucked the player's ass                      ]
[  4: fucked the player's pussy + ass              ]

thirst of Spike is usually 1. [standard setting change]

an everyturn rule:
	if HP of Spike is 1 and doberman companion is not tamed: [error fix]
		add "Tamed" to Traits of doberman companion;
		now doberman companion is tamed;

Section 1 - Introduction

instead of navigating Grey Abbey Library while (Alexandra is in Grey Abbey Library and libido of Alexandra > 2 and a random chance of 1 in 4 succeeds and HP of Spike is 0):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Meeting Spike[line break]";
	project the figure of Spike_face_icon;
	say "     Arriving back at the library, you are greeted by the sight of a male anthro doberman, leaning against the building's exterior wall close to the front entrance. He is casually smoking a cigarette, blowing out smoke as he watches you come closer. The doberman is a young adult, eighteen or nineteen from the looks of it, not that it means much anymore these days. He is dressed in a pair of ripped jeans, a white mesh shirt showing off his toned chest, as well as a tight-fitting collar around his neck, studded with spikes. With half of his head hair shaved off and the other half dyed neon-green, he certainly has a memorable look. 'Hey there, I'm Spike,' the canine says to you in a firm tone, clearly taking care not to sound too eager. 'With you being the boss around here, I got a proposition,' he adds and takes a pull from his cigarette, blowing a puff of smoke into the air after a short moment.";
	say "     'I've had enough of being just one of the pack, and I was thinking that you need a right-hand man. I'm plenty tough and wanna see some action out there in the city, not just a few blocks around the lair. Come on, if you agree, the queen bitch in the library can't tell me off no more.' His last comment, combined with the young man's physical appearance finally makes something click in your mind, and you realize with a start who and what he is. You are talking with one of Alexandra's offspring, who clearly had a bit of a growth spurt recently, turning into this young man. From the looks of it, he's inherited a lot of the 'bad dog' attitude of his mother, and has decided to make a name for himself in a typical 'young tough guy' fashion - by becoming a hanger-on for the biggest, baddest person he knows: You. After all, you did make Alexandra your bitch.";
	WaitLineBreak;
	say "     With this new realization in mind, you take another look at Spike: this young canine looks about 18 years old and clearly has been working out a bit, giving him a toned but not too bulky physique that should serve him well in a fight. He shows a stoic and tough expression that you think must have been practiced and perfected in front of a mirror, yet he can't quite hide the excitement betrayed by his slowly wagging tail. When he realizes what you are looking at, Spike concentrates to stop the movement behind his back. The tension in his whole being is palpable, with the young dog waiting for you to reply to his offer.";
	LineBreak;
	say "     [bold type]What do you tell Spike as your answer?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Take him on as your companion. He'll learn a lot.";
	say "     [link](2)[as]2[end link] - Tell him to be a good doggie and go back to Alexandra.";
	say "     [link](3)[as]3[end link] - If he's so tough, he can just set out alone. (Send him away)[line break]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to accept him, [link]2[end link] to send him back to Alexandra or [link]3[end link] to send him away.";
	if calcnumber is 1:
		LineBreak;
		say "[SpikeAccepted]";
		decrease libido of Alexandra by 1; [one less teen following Alexandra around]
	else if calcnumber is 2: [send him back to Alexandra]
		LineBreak;
		say "     As you tell the young dog that he should go back to his mother, Spike's expression just gets more determined and he pushes himself off from the wall to step closer and persuade you. 'Come on! You know that I can be very useful for you. I could keep your back protected when you fight a group of people, or be a lookout, and I have a [italic type]really[roman type] good nose too. I could sniff it out if someone wants to hide themselves or some nice stuff from you. Or all sorts of other things. You'd regret not having me along!' He's really putting everything he has into this plea, trying to show his toughness, but at the same time a bit of the typical 'puppy dog eyes' creeps into his expression too.";
		say "     [bold type]Will you change your mind?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, fine. He can follow you around.";
		say "     ([link]N[as]n[end link]) - Nope. This dog is gonna go straight back to mommy.";
		if player consents:
			LineBreak;
			say "[SpikeAccepted]";
		else:
			LineBreak;
			say "     Telling the young man that no, you [italic type]actually[roman type] just want him to go back to his mother hand help her keep on top of the unruly bunch of his siblings, Spike growls under his breath. Flinging the cigarette away with an angry flick of his wrist, the anthro canine grumbles, 'This is fucking stupid,' and looks to the ground sulkily. For a moment, it seems like he'll just reject your decision, but then he suddenly looks up at you and barks out, 'I thought that you'd be different. Like a real leader or something!' And with that, he turns his back to you, shuffling off to get back into the library.";
			now HP of Spike is 100;
	else: [send him away - you monster!]
		LineBreak;
		say "     As you tell the young dog that he should go off on his own, he freezes in motion for a second, not sure what to reply. Clearly, this is one option that he hadn't even considered when he played through things in his mind. You see him swallow nervously, glancing to the library entrance for a second before he shakes his head to himself. 'Okay then, I'll do it,' Spike says, his firm tone sounding just a little bit brittle to your ears as he pushes himself off from the wall. 'I'm gonna go make my own way, out there. Alone in the city,' he adds, taking a few slow steps down the road as if waiting to hear you say that he passed the test and that you'll keep him now. But no, all you give him is a wish for good luck, which leaves Spike standing there for a moment longer, his back turned to you, before he runs away, not stopping for one second before he is out of sight.";
		decrease libido of Alexandra by 1; [one less teen following Alexandra around]
		now HP of Spike is 99;
	now PlayerMet of Spike is true;

to say SpikeAccepted:
	say "     As you agree to take Spike along as your companion, his tail starts wagging up a storm and the young man says excitedly, 'Right on! We'll make this city ours! Let's have some fun!' With his hand lowering to rub the crotch of his jeans, you have little doubt what sort of 'fun' he expects to soon have. Taking another drag from his smoke, the anthro canine then flicks it aside and takes position by your side, steeling his expression to be properly tough and just a bit overbearing, as he expects the right-hand man of 'The Boss' would need to be.";
	now HP of Spike is 1;
	add "Tamed" to Traits of doberman companion;
	now doberman companion is tamed;
	now companion of player is doberman companion;

Section 2 - Combat Pet

Table of GameCharacterIDs (continued)
object	name
doberman companion	"doberman companion"

doberman companion is a pet. doberman companion is a part of the player.
understand "Spike" as doberman companion.
understand "doberman" as doberman companion.
The description of doberman companion is "[SpikeDesc]".
The weapon damage of doberman companion is 7.
The level of doberman companion is 5.
The Dexterity of doberman companion is 16.
The summondesc of doberman companion is "[SummonSpike]".
The dismissdesc of doberman companion is "[DismissSpike]".
The assault of doberman companion is "[one of]Spike pounces your opponent, landing some good hits.[or]The anthro doberman by your side lands a kick on the leg of your opponent, hurting and distracting them.[or]An aggressive bark by Spike distracts your enemy a moment - long enough for you to score a quick hit![or]Snarling, Spike snaps for your enemy with his teeth, leaving a gash as he is fought off.[at random]".
the fuckscene of doberman companion is "[SexWithSpike]".

to say SummonSpike:
	if Spike is visible: [summoning while standing next to him]
		project the figure of Spike_face_icon;
		say "     You give a sharp whistle and wave to Spike, directing him to follow you. The young canine quickly rushes to your side and takes his spot to support you.";
		now Spike is nowhere;
	else: [regular summoning]
		say "     And how do you want to do that? Cell phone reception kinda went downhill with the start of the nanite apocalypse and it's not like you can just magic up Spike to appear next to you. Go pick him up yourself.";
		now companion of player is nullpet;

to say DismissSpike:
	project the figure of Spike_face_icon;
	if player is in Sitting Area:
		say "     You tell Spike that you don't need him right now. He looks at you with a somewhat disappointed expression, then shrugs and goes over to hang out in his improvised man-cave.";
	else if player is booked or player is bunkered: [dismissing him in the abbey]
		say "     You tell Spike that you don't need him right now. He looks at you with a somewhat disappointed expression, then shrugs and walks off, likely to hang out in his improvised man-cave on the upper floor.";
	else:
		say "     You tell Spike that you don't need him right now. He looks at you with a somewhat disappointed expression, glancing around. 'Err, okay then. I'll make my way back to the library. See ya, [SpikePlayerAdress].' With that said, he wanders off and is quickly out of sight.";
	move Spike to Sitting Area;

Section 3 - NPC

Table of GameCharacterIDs (continued)
object	name
Spike	"Spike"

Spike is a man.
ScaleValue of Spike is 3. [human sized]
Cocks of Spike is 1.
Cock Length of Spike is 9.
Cock Width of Spike is 4.
Testes of Spike is 2.
Cunts of Spike is 0.
Cunt Length of Spike is 0.
Cunt Width of Spike is 0.
Breasts of Spike is 2.
Breast Size of Spike is 0.
The description of Spike is "[SpikeDesc]".
OralVirgin of Spike is true.
Virgin of Spike is true.
AnalVirgin of Spike is true.
PenileVirgin of Spike is false.
SexuallyExperienced of Spike is true.
The conversation of Spike is { "<This is nothing but a placeholder!>" }.
The scent of Spike is "     Spike's scent of dog is almost drowned out by some sort of after-shave he's found out in the city. It's a good, masculine scent, you only wish he wouldn't be using quite as much of it.".

to say SpikeDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Spike] <- DEBUG[line break]";
	project the figure of Spike_face_icon;
	say "     Spike is a young doberman that looks to be about eighteen years old. He clearly has been working out a bit, giving him a toned but not too bulky physique that should serve him well in a fight. The young man is dressed in a pair of ripped jeans, a skin-tight mesh shirt showing off his toned chest, as well as a loose-fitting collar around his neck, studded with spikes. With half of his head hair shaved off and the other half dyed neon green and hanging down one side of his face as a middling long strand, he certainly has a memorable look.";
	if player is in Sitting Area:
		say "     Having claimed a corner of the upper library floor as his, Spike has made a little man-cave for himself, dragging a mattress up from the bunker and setting the desk that had occupied the corner as a little reading nook on its side, to block a passage between two bookshelves. Posters of scantily dressed human women, as well as one or two with anthro furry erotic art have been pinned to the back wall so that he can look at them when lying down. Which Spikes does quite a bit, day-dreaming about things while stroking himself.";
	else:
		say "     Accompanying you on your travel throughout the city, he is never far away, usually just a step behind and a little to the side, serving as muscle and glowering at anyone who might dream of crossing you. As he notices your attention on himself, the doberman strokes a hand through his green-dyed hair and gives you a [if libido of Spike > 40]slightly frightened[else]respectful[end if] nod.";

Section 3 - Conversation

instead of conversing the Spike:
	if Spike is visible:
		say "[SpikeTalkMenu]";
	else if companion of player is doberman companion:
		say "[SpikeTalkMenu]";
	else:
		say "     Spike isn't here.";

instead of conversing doberman companion:
	if doberman companion is not tamed:
		say "     Who?";
	else:
		if Spike is visible:
			say "[SpikeTalkMenu]";
		else if companion of player is doberman companion:
			say "[SpikeTalkMenu]";
		else:
			say "     Spike isn't here.";

to say SpikeTalkMenu:
	project the figure of Spike_face_icon;
	say "     What do you want to talk with Spike about?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is not defaultnamed and thirst of Spike is 0:
		choose a blank row in table of fucking options;
		now title entry is "The name he should address you by";
		now sortorder entry is 1;
		now description entry is "Ask about the name or title Spike should use for you";
	[]
	if Spike is visible:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to come with you";
		now sortorder entry is 2;
		now description entry is "Take the young doberman along as your companion";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him about himself";
	now sortorder entry is 3;
	now description entry is "Make Spike tell you about his background";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him about Alexandra";
	now sortorder entry is 4;
	now description entry is "Ask Spike his opinion about his mother";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk about the military";
	now sortorder entry is 5;
	now description entry is "Bring up the soldiers in the city";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask where he gets his food";
	now sortorder entry is 6;
	now description entry is "Question Spike about what he eats";
	[]
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
				if (nam is "The name he should address you by"):
					say "[SpikeRenameMenu]";
				else if (nam is "Tell him to come with you"):
					say "[SpikePickup]";
				else if (nam is "Ask him about himself"):
					say "[SpikeTalk3]";
				else if (nam is "Ask him about Alexandra"):
					say "[SpikeTalk4]";
				else if (nam is "Talk about the military"):
					say "[SpikeTalk5]";
				else if (nam is "Ask where he gets his food"):
					say "[SpikeTalk6]";
				wait for any key;
				say "[SpikeTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young doberman, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SpikePickup:
	say "     You give a sharp whistle and wave to Spike, directing him to follow you. The young canine quickly rushes to your side and takes his spot to support you.";
	now Spike is nowhere;
	now companion of player is doberman companion;

to say SpikeTalk3: [himself]
	say "     Lifting his arms and putting both hands behind his head, Spike looks at you and shrugs. 'You know most of it anyways. After all, you were the one who tamed the tough bitch that is my mom and brought her to the library. She had me and the others not much later. Living with all of them as a pack wasn't half-bad at first either. You should have seen the things that we did together! There are some corners in the library that... ah, but that's old news. Anyways, mom kept treating me like a pup even when I grew up. Hell, I was fully grown for days and she still lumped me in with the others. Got pretty annoyed with that shit, fast, so I started exploring the surrounding city blocks on my own. Anything to get out from under her paw a bit, you know?' Patting the leg of his ripped jeans and tugging on his skin-tight mesh shirt, the anthro doberman proudly explains that he found them scavenging.";
	say "     Then Spike goes on to grab his crotch, adjusting the penis-shaped bulge in it and says, 'After what happened next, I knew that I didn't just want to go back and spend all of my time cooped up in the library. Following the most amazing scent, I went down the street and into an alley, and there I met a bitch! Oh yeah, let me tell you, that husky slut was just asking for it. Totally in heat and ready to rub up against me from the first moment our eyes met. Damn, I still can't believe how good it felt to sink my bone into her, to take that needy bitch!' Now your canine companion is openly rubbing his dick through the fabric of his pants, caught up in the memory of losing his virginity. 'Well, I fucked her good! Tied with her and stayed on top till I had bred that pussy to the brim!'";
	WaitLineBreak;
	say "     Spike shares a grin with you, happy to share his story, but then suddenly his face draws into a bit of a frown. 'When I got back home mom was angry about me just going off on my own and wanted to know what I had been doing. I told her exactly [italic type]whom[roman type] I had been doing, and that I was an adult now. That stupid bitch just laughed!' Intentionally raising his voice to sound a bit more like Alexandra, Spike says in a biting tone, 'Just because you got your dick wet doesn't mean that you're a man.' The young man shows a little bit of his teeth and growls under his breath, then barks out the words, 'I'll show her, and everyone else too! Things are gonna be great with me and you out in the city together!'";

to say SpikeTalk4: [Alexandra]
	say "     Asking the anthro doberman about his parent causes Spike to grimace a little bit, followed by a huff. 'What can I say? I'm the son of a bitch. The top bitch of the library, if you ask her, and someone I should apparently listen to and obey. Oh, don't misunderstand me, she was pretty nice to have as a mom when I was a pup, but definitively less so later.' Grumbling, Spike makes a fist, followed by a throwing-away gesture. 'It's just unfair, you know. I know a bit of how she thinks, ever since I was little and drank it up with her milk. Part of mom felt freed when she became your bad bitch; unrestrained in her lusts and desires, allowing herself to let stupid morality [italic type]go for good[roman type]. Hell, I grew up knowing just how much you can accomplish if you're powerful and ruthless enough. How was I supposed to stay her sweet little cub forever? Fuck that! I wanna get some action too!'";

to say SpikeTalk5: [military]
	say "     Bringing up the topic of the military and their presence in the city draws little attention from Spike. Only when you keep looking at him, one eyebrow raised as you wait for a reply does the young doberman say, 'Um, what about them? Isn't it some sort of loser gang or something? I got some inherited memories from mom and she thought they are supposed to be a big deal, but I've got my doubts. From what I've seen out in the city, lots of those soldiers got taken as sluts and breeding bitches by all sorts of creatures. Pretty weak and pathetic in my book.' Shrugging and putting aside all thought on the military, Spike clears his throat and adds, 'Now if you want a group that truly has to be reckoned with, just look at the hyenas. They're strong, take what they wand and no one fucks around with them, that's for sure!'";

to say SpikeTalk6: [food]
	say "     Mentioning the topic of food, spike stands up a little straighter and gives you a self-confident look. 'No need to worry about that with me [SpikePlayerAdress]. I know how to take care of myself and won't take up any of your supplies at all. There are lots of places where one can scavenge for good stuff and even if you don't find anything yourself, someone else out on the streets will have. Most of the time you just gotta wait till they start rutting with someone or something, then make off with the food. And if they wise up and try to stop me - I'm plenty tough enough to rough up someone who wants a beating.'";

to say SpikeRenameMenu:
	project the figure of Spike_face_icon;
	say "     What should Spike use to address you in the future?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is not defaultnamed and thirst of Spike is not 0:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you by your name";
		now sortorder entry is 0;
		now description entry is "Allow Spike to call you [name of player]";
	[]
	if thirst of Spike is not 1:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Boss";
		now sortorder entry is 1;
		now description entry is "Make Spike call you Boss";
	[]
	if thirst of Spike is not 2:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Don";
		now sortorder entry is 2;
		now description entry is "Make Spike call you Don";
	[]
	if thirst of Spike is not 3:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Capo";
		now sortorder entry is 3;
		now description entry is "Make Spike call you Capo";
	[]
	if thirst of Spike is not 4:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Kingpin";
		now sortorder entry is 4;
		now description entry is "Make Spike call you Kingpin";
	[]
	if thirst of Spike is not 5:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Oyabun";
		now sortorder entry is 5;
		now description entry is "Make Spike call you Oyabun";
	[]
	if thirst of Spike is not 6:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Chief";
		now sortorder entry is 6;
		now description entry is "Make Spike call you Chief";
	[]
	if thirst of Spike is not 7:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Sir";
		now sortorder entry is 7;
		now description entry is "Make Spike call you Sir";
	[]
	if thirst of Spike is not 8:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Hoss";
		now sortorder entry is 8;
		now description entry is "Make Spike call you Hoss";
	[]
	if MaxHP of Spike is 1 and thirst of Spike is not 11 and libido of Spike > 0 and libido of Spike < 20: [player is the father, joyful sexual relationship]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Daddy";
		now sortorder entry is 11;
		now description entry is "Let Spike call you Daddy";
	[]
	if MaxHP of Spike is 1 and thirst of Spike is not 12: [player is the father]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Dad";
		now sortorder entry is 12;
		now description entry is "Let Spike call you Dad";
	[]
	if MaxHP of Spike is not 1 and thirst of Spike is not 13 and libido of Spike > 0 and libido of Spike < 20: [player is not the father, joyful sexual relationship]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Stepdaddy";
		now sortorder entry is 13;
		now description entry is "Let Spike call you Stepdaddy";
	[]
	if MaxHP of Spike is not 1 and thirst of Spike is not 14: [player is not the father]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Stepdad";
		now sortorder entry is 14;
		now description entry is "Let Spike call you Stepdad";
	[]
	if thirst of Spike is not 15:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Master";
		now sortorder entry is 15;
		now description entry is "Let Spike call you Master";
	[]
	if MaxHP of Spike is 1 and thirst of Spike is not 11 and libido of Spike > 0 and libido of Spike < 20: [player is the father, joyful sexual relationship]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Mommy";
		now sortorder entry is 11;
		now description entry is "Let Spike call you Mommy";
	[]
	if MaxHP of Spike is 1 and thirst of Spike is not 12: [player is the father]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Mom";
		now sortorder entry is 12;
		now description entry is "Let Spike call you Mom";
	[]
	if MaxHP of Spike is not 1 and thirst of Spike is not 13 and libido of Spike > 0 and libido of Spike < 20: [player is not the father, joyful sexual relationship]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Stepmommy";
		now sortorder entry is 13;
		now description entry is "Let Spike call you Stepmommy";
	[]
	if MaxHP of Spike is not 1 and thirst of Spike is not 14: [player is not the father]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Stepmom";
		now sortorder entry is 14;
		now description entry is "Let Spike call you Stepmom";
	[]
	if thirst of Spike is not 15:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Mistress";
		now sortorder entry is 15;
		now description entry is "Let Spike call you Mistress";
	[]
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
				if nam is:
					-- "Tell him to call you by your name":
						say "[SpikePlayerName]";
					-- "Tell him to call you Boss":
						say "[SpikePlayerNameBoss]";
					-- "Tell him to call you Don":
						say "[SpikePlayerDon]";
					-- "Tell him to call you Capo":
						say "[SpikePlayerNameCapo]";
					-- "Tell him to call you Kingpin":
						say "[SpikePlayerNameKingpin]";
					-- "Tell him to call you Oyabun":
						say "[SpikePlayerNameOyabun]";
					-- "Tell him to call you Chief":
						say "[SpikePlayerNameChief]";
					-- "Tell him to call you Sir":
						say "[SpikePlayerNameSir]";
					-- "Tell him to call you Hoss":
						say "[SpikePlayerNameHoss]";
					-- "Tell him to call you Daddy":
						say "[SpikePlayerNameDaddy]";
					-- "Tell him to call you Dad":
						say "[SpikePlayerNameDad]";
					-- "Tell him to call you Stepdaddy":
						say "[SpikePlayerNameStepdaddy]";
					-- "Tell him to call you Stepdad":
						say "[SpikePlayerNameStepdad]";
					-- "Tell him to call you Master":
						say "[SpikePlayerNameMaster]";
					-- "Tell him to call you Mommy":
						say "[SpikePlayerNameMommy]";
					-- "Tell him to call you Mom":
						say "[SpikePlayerNameMom]";
					-- "Tell him to call you Stepmommy":
						say "[SpikePlayerNameStepmommy]";
					-- "Tell him to call you Stepmom":
						say "[SpikePlayerNameStepmom]";
					-- "Tell him to call you Mistress":
						say "[SpikePlayerNameMistress]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You change your mind and wave off the topic of conversation.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SpikePlayerName:
	say "     'Alright! Will do, [name of player]!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring looks when he thinks you are not watching.";
	now thirst of Spike is 0;

to say SpikePlayerNameBoss:
	if thirst of Spike is 0 or (thirst of Spike > 10 and thirst of Spike < 15) or (thirst of Spike > 20 and thirst of Spike < 25):
		say "     'Of course. Will do, Boss!' Spike replies, taking care to appear upbeat about it even though you're taking a little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";
	else:
		say "     'Of course. Will do, Boss!' Spike replies, giving you a respectful nod. The young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching, apparently wishing for more than just being a follower to you.";
	now thirst of Spike is 1;

to say SpikePlayerDon:
	if thirst of Spike is 0 or (thirst of Spike > 10 and thirst of Spike < 15) or (thirst of Spike > 20 and thirst of Spike < 25):
		say "     'Of course. Will do, Don! Guess we're the new mob, eh?' Spike replies, taking care to appear upbeat about it even though you're taking a little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";
	else:
		say "     'Of course. Will do, Don! Guess we're the new mob, eh?' Spike replies, giving you a respectful nod. The young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching, apparently wishing for more than just being a follower to you.";
	now thirst of Spike is 2;

to say SpikePlayerNameCapo:
	if thirst of Spike is 0 or (thirst of Spike > 10 and thirst of Spike < 15) or (thirst of Spike > 20 and thirst of Spike < 25):
		say "     'Of course. Will do, Capo! Guess we're the new mob, eh?' Spike replies, taking care to appear upbeat about it even though you're taking a little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";
	else:
		say "     'Of course. Will do, Capo! Guess we're the new mob, eh?' Spike replies, giving you a respectful nod. The young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching, apparently wishing for more than just being a follower to you.";
	now thirst of Spike is 3;

to say SpikePlayerNameKingpin:
	if thirst of Spike is 0 or (thirst of Spike > 10 and thirst of Spike < 15) or (thirst of Spike > 20 and thirst of Spike < 25):
		say "     'Of course. Will do, Kingpin! And I'll keep an eye out for red devils, eh?' Spike replies, taking care to appear upbeat about it even though you're taking a little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";
	else:
		say "     'Of course. Will do, Kingpin! And I'll keep an eye out for red devils, eh?'' Spike replies, giving you a respectful nod. The young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching, apparently wishing for more than just being a follower to you.";
	now thirst of Spike is 4;

to say SpikePlayerNameOyabun:
	if thirst of Spike is 0 or (thirst of Spike > 10 and thirst of Spike < 15) or (thirst of Spike > 20 and thirst of Spike < 25):
		say "     'Of course. Will do, Oyabun!' Spike replies, adding an inexpert bow. He is taking care to appear upbeat about it even though you're taking a little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";
	else:
		say "     'Of course. Will do, Oyabun!' Spike replies, adding an inexpert bow. The young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching, apparently wishing for more than just being a follower to you.";
	now thirst of Spike is 5;

to say SpikePlayerNameChief:
	if thirst of Spike is 0 or (thirst of Spike > 10 and thirst of Spike < 15) or (thirst of Spike > 20 and thirst of Spike < 25):
		say "     'Of course. Will do, Chief!' Spike replies, saluting with a fist held against his chest. He is taking care to appear upbeat about it even though you're taking a little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";
	else:
		say "     'Of course. Will do, Chief!' Spike replies, saluting with a fist held against his chest. The young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching, apparently wishing for more than just being a follower to you.";
	now thirst of Spike is 6;

to say SpikePlayerNameSir:
	if thirst of Spike is 0 or (thirst of Spike > 10 and thirst of Spike < 15) or (thirst of Spike > 20 and thirst of Spike < 25):
		say "     'Of course. Will do, Sir!' Spike replies, giving a somewhat sloppy version of a salute. He is taking care to appear upbeat about it even though you're taking a little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";
	else:
		say "     'Of course. Will do, Sir!' Spike replies, giving a somewhat sloppy version of a salute. The young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching, apparently wishing for more than just being a follower to you.";
	now thirst of Spike is 7;

to say SpikePlayerNameHoss:
	if thirst of Spike is 0 or (thirst of Spike > 10 and thirst of Spike < 15) or (thirst of Spike > 20 and thirst of Spike < 25):
		say "     'Of course. Will do, Hoss!' Spike replies, adding a respectful nod. He is taking care to appear upbeat about it even though you're taking a little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";
	else:
		say "     'Of course. Will do, Hoss!' Spike replies, adding a respectful nod. The young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching, apparently wishing for more than just being a follower to you.";
	now thirst of Spike is 8;

to say SpikePlayerNameDaddy:
	if player is male:
		say "     'Alright! I can do that Daddy!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	else:
		say "     Spike hesitates for a second as you say your part, letting his eyes roam up and down over your body. 'But you're not - err, nevermind. You're the boss Daddy!' Spike replies with a happy bark after shaking off his confusion, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	now thirst of Spike is 11;

to say SpikePlayerNameDad:
	if player is male:
		say "     'Alright! I can do that Dad!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	else:
		say "     Spike hesitates for a second as you say your part, letting his eyes roam up and down over your body. 'But you're not - err, nevermind. You're the boss Dad!' Spike replies with a happy bark after shaking off his confusion, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	now thirst of Spike is 12;

to say SpikePlayerNameStepdaddy:
	if player is male:
		say "     'Alright! With mom being your bitch, I guess Stepdaddy fits!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	else:
		say "     Spike hesitates for a second as you say your part, letting his eyes roam up and down over your body. 'But you're not - err, nevermind. You're the boss Stepdaddy!' Spike replies with a happy bark after shaking off his confusion, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	now thirst of Spike is 13;

to say SpikePlayerNameStepdad:
	if player is male:
		say "     'Alright! With mom being your bitch, I guess Stepdad fits!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	else:
		say "     Spike hesitates for a second as you say your part, letting his eyes roam up and down over your body. 'But you're not - err, nevermind. You're the boss Stepdad!' Spike replies with a happy bark after shaking off his confusion, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	now thirst of Spike is 14;

to say SpikePlayerNameMaster:
	if libido of Spike < 40 or libido of Spike > 60: [not forced into sex]
		if player is male:
			say "     As you bring up your ideas for what he should address you with, Spike frowns and crosses his arms in front of his chest. 'No, that I won't do. I'm not some flunky or slave boss! I came to you to be part of your organization and learn from the best, but that doesn't mean you can push me around to do anything you want.' With a shake of his head and a somewhat sulky expression, he turns away from you.";
		else:
			say "     As you bring up your ideas for what he should address you with, Spike frowns and crosses his arms in front of his chest. 'No, that I won't do. I'm not some flunky or slave boss! I came to you to be part of your organization and learn from the best, but that doesn't mean you can push me around to do anything you want. And you're not even a man either.' With a shake of his head and a somewhat sulky expression, he turns away from you.";
	else:
		say "     As you bring up your ideas for what he should address you with, Spike frowns and starts to cross his arms in front of his chest. Yet as he feels your unrelenting gaze on him, the young man hesitates and trembles a little, maybe remembering the things you did to him before. 'I - um,' he starts to say, then swallows his words with a little bit of a grimace before finally choking out, 'Yes, Master.' With a shake of his head and a somewhat sulky expression, he turns away from you.";
		now thirst of Spike is 15;

to say SpikePlayerNameMommy:
	if player is female:
		say "     'Alright! I can do that Mommy!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	else:
		say "     Spike hesitates for a second as you say your part, letting his eyes roam up and down over your body. 'But you're not - err, nevermind. You're the boss Mommy!' Spike replies with a happy bark after shaking off his confusion, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	now thirst of Spike is 21;

to say SpikePlayerNameMom:
	if player is female:
		say "     'Alright! I can do that Mom!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	else:
		say "     Spike hesitates for a second as you say your part, letting his eyes roam up and down over your body. 'But you're not - err, nevermind. You're the boss Mom!' Spike replies with a happy bark after shaking off his confusion, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	now thirst of Spike is 22;

to say SpikePlayerNameStepmommy:
	if player is female:
		say "     'Alright! With mom being your bitch, I guess Stepmommy fits!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	else:
		say "     Spike hesitates for a second as you say your part, letting his eyes roam up and down over your body. 'But you're not - err, nevermind. You're the boss Stepmommy!' Spike replies with a happy bark after shaking off his confusion, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	now thirst of Spike is 23;

to say SpikePlayerNameStepmom:
	if player is female:
		say "     'Alright! With mom being your bitch, I guess Stepmom fits!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	else:
		say "     Spike hesitates for a second as you say your part, letting his eyes roam up and down over your body. 'But you're not - err, nevermind. You're the boss Stepmom!' Spike replies with a happy bark after shaking off his confusion, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	now thirst of Spike is 24;

to say SpikePlayerNameMistress:
	if libido of Spike < 40 or libido of Spike > 60: [not forced into sex]
		if player is female:
			say "     As you bring up your ideas for what he should address you with, Spike frowns and crosses his arms in front of his chest. 'No, that I won't do. I'm not some flunky or slave boss! I came to you to be part of your organization and learn from the best, but that doesn't mean you can push me around to do anything you want.' With a shake of his head and a somewhat sulky expression, he turns away from you.";
		else:
			say "     As you bring up your ideas for what he should address you with, Spike frowns and crosses his arms in front of his chest. 'No, that I won't do. I'm not some flunky or slave boss! I came to you to be part of your organization and learn from the best, but that doesn't mean you can push me around to do anything you want. And you're not even a woman either.' With a shake of his head and a somewhat sulky expression, he turns away from you.";
	else:
		say "     As you bring up your ideas for what he should address you with, Spike frowns and starts to cross his arms in front of his chest. Yet as he feels your unrelenting gaze on him, the young man hesitates and trembles a little, maybe remembering the things you did to him before. 'I - um,' he starts to say, then swallows his words with a little bit of a grimace before finally choking out, 'Yes, Mistress.' With a shake of his head and a somewhat sulky expression, he turns away from you.";
		now thirst of Spike is 25;

to say SpikePlayerAdress:
	if thirst of Spike is:
		-- 0:
			say "[name of player]";
		-- 1:
			say "Boss";
		-- 2:
			say "Don";
		-- 3:
			say "Capo";
		-- 4:
			say "Kingpin";
		-- 5:
			say "Oyabun";
		-- 6:
			say "Chief";
		-- 11:
			say "Daddy";
		-- 12:
			say "Dad";
		-- 13:
			say "Stepdaddy";
		-- 14:
			say "Stepdad";
		-- 15:
			say "Master";
		-- 21:
			say "Mommy";
		-- 22:
			say "Mom";
		-- 23:
			say "Stepmommy";
		-- 24:
			say "Stepmom";
		-- 25:
			say "Mistress";


Section 4 - Fucking

instead of fucking the Spike:
	say "[SexWithSpike]";

to say SexWithSpike:
	if (lastfuck of Spike - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     Spike looks at you somewhat wide-eyed, then clears his throat. 'Uhm, I - I'm not ready for another round yet [SpikePlayerAdress]. Guess I need to build up my stamina to keep up with you.";
	else: [ready for sex]
		if libido of Spike < 20 or libido of Spike is 100: [eager for any sex OR promised that he doesn't have to do gay stuff]
			say "     As you walk up to Spike, he notices the horny look in your eyes and his tail starts wagging.";
		else if libido of Spike < 40: [pressured into subby sex]
			say "     Watching Spike as you approach him, you notice his Adam's Apple bounce a little as he swallows, apparently preparing himself to doing what you might demand of him.";
		else if libido of Spike < 60: [forced into subby sex]
			say "     Watching Spike as you approach him, you can't help but grin at the moment in which he notices your attention, flinching slightly before he steels himself for what you might force him to do next.";
		wait for any key;
		say "[SpikeSexMenu]";

to say SpikeSexMenu:
	project the figure of Spike_face_icon;
	say "     What exactly do you want to do with Spike?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male and libido of Spike is not 100: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Spike suck you off";
	[]
	if player is female and libido of Spike is not 100: [only females and herms can get eaten out]
		choose a blank row in table of fucking options;
		now title entry is "Get your pussy eaten out";
		now sortorder entry is 2;
		now description entry is "Let Spike service you orally";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Spike off";
	now sortorder entry is 3;
	now description entry is "Go down on your dobie";
	[]
	if AnalVirgin of Spike is true and player is male and libido of Spike > 0 and libido of Spike < 100:
		choose a blank row in table of fucking options;
		now title entry is "Take Spike's virginity";
		now sortorder entry is 4;
		now description entry is "Introduce your dobie to taking a dick up his rear end";
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
				if (nam is "Get a blowjob"):
					say "[SpikeSex1]";
				else if (nam is "Get your pussy eaten out"):
					say "[SpikeSex2]";
				else if (nam is "Suck Spike off"):
					say "[SpikeSex3]";
				else if (nam is "Take Spike's virginity"):
					say "[SpikeSex4]";
				if PlayerFucked of Spike is false:
					now PlayerFucked of Spike is true;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young doberman, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;


[ libido of Spike - Spike in subby position    ]
[  0: nothing yet                              ]
[  1: talked into oral service / BJ            ]
[  2: anal virginity taken (nicely)            ]
[  3: nothing yet                              ]
[  4: nothing yet                              ]
[ 21: pressured into oral service / BJ         ]
[ 22: anal virginity taken (strict)            ]
[ 23: nothing yet                              ]
[ 24: nothing yet                              ]
[ 41: forced into oral service / BJ            ]
[ 42: anal virginity taken (forcefully)        ]
[ 43: nothing yet                              ]
[ 44: nothing yet                              ]

to say SpikeSex1: [oral on the player]
	if libido of Spike is 0:
		say "     As you tell the young doberman that you want him to blow your cock, he gapes openly at you and replies, 'Wait - what's this now?! I thought that we'd pick up some babes out on the streets to have fun with, or maybe even a girly dude. But now you want [italic type]me[roman type] to go down on you? I don't know, [SpikePlayerAdress].' The anthro canine takes half a step back and raises his hands in a warding gesture, clearly less than convinced that he wants to follow your request.";
		say "     [bold type]How do you want to deal with this? It will likely set the tone for your further relationship...[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Talk him into going down on you.";
		say "     [link](2)[as]2[end link] - Pressure Spike into servicing you.";
		say "     [link](3)[as]3[end link] - Just grab him and force him to his knees.";
		say "     [link](4)[as]4[end link] - Allow him to refuse.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to talk him into it, [link]2[end link] to pressure him into it, [link]3[end link] to physically make him do it, or [link]4[end link] to allow Spike to refuse.";
		if calcnumber is 1: [talked into it]
			LineBreak;
			say "     Raising an eye at his refusal, you tell the young man that in order to have total trust in one another, real men become more than just people who work together. That there is a whole level of devotion beyond simple obedience. Drawing him in with words full of fervor, you soon have Spike listening with eager attention, his tail wagging left and right. When you then go on to say that you think he is ready to become one of the people you really trust, the young doberman sinks down in front of you and looks up with a smile on his muzzle. Stroking the strands of neon-green head-hair out of his face, you run your hand along the side of his face and proclaim that you're proud of him, then push aside your clothes and free your [cock of player] shaft to stand erect before his eyes.";
			say "     Spike looks wide-eyed at your erection, unsure about how to proceed, even as his wagging tail tells you how happy he is to become your special friend. Placing a hand on top of his head, you gently push him towards your crotch and tell him to start licking. 'Will do, [SpikePlayerAdress],' he replies with a smile on his muzzle and gives you a worshipful glance, then laps over your cock with his long, floppy tongue. The anthro doberman starts out slow, exploring the full length of your manhood in a novice's curiosity until he reaches the tip and slurps up the pre that already has leaked out of your slit. Closing his muzzle to swallow and raising his eyebrows at the unexpected and enticing taste, Spike then goes back for more, licking over your dickhead again and again.";
			WaitLineBreak;
			say "     You allow the young canine a little while of just slurping at your tip, then eventually move your hand to rub the base of his ears, which Spike clearly enjoys, before cradling the back of his head in your fingers. Slowly pushing his head forward, you tell him to take your dick. Spike's tail is still wagging up a storm behind his back as the eager doberman opens up his muzzle a little wider, allowing your erection to slide into it against the warm and slick surface of his floppy tongue. Holding his head steady with your hand, you pump in and out of his muzzle with steady thrusts, enjoying the warmth of his mouth around your manhood. Part of you longs to just go all out in face-fucking your companion, but you temper the impulse and instead give him a few well-meant tips on how to please a man, then slowly take your hand away from his head, stroking Spike's cheek as you do so.";
			say "     Finding himself suddenly without guidance, the canine pulls back a little and licks your dickhead again, then looks up, an unspoken question in his gaze. You simply give him a supportive smile and a nod, after which he starts doing his best to please you all on his own. Following an earlier suggestion, Alexandra's son leans in to lick at your balls, slurping over them and giving each one eager attention. Despite being totally new to it, he is quite good at giving oral pleasure, and it doesn't take long before you have to tell him to get his muzzle around your dick again, as you want to blow in his mouth when you come. The kneeling young man grins happily and replies, 'Just a second.' And with that said, he moves his hands to pull down the zipper of his pants, freeing a hard canine rod to stand erect as a flagpole.";
			WaitLineBreak;
			say "     With his own cock in hand and jerking it in a frantic pace, Spike gets back to his first solo blowjob, bobbing on your cock in a very enthusiastic way. Except the need for a little reminder to cover his teeth with his lips, the young man really does a nice job of it, clearly a quick study - if motivated [italic type]properly[roman type]. Soon, you can't suppress moans and grunts anymore and just let them out, loudly letting your companion know that you are about to come. He just intensifies his attack on your manhood, closing his muzzle around it and sucking hard, which serves very well to push you over the edge in very short notice. Hands shooting forward to clamp onto his canine head, you hump into his muzzle and keep his nose pressed deep into your pubes as spurts of cum splash the back of his throat. While you keep hold of Spike up top and make him eat your load, he keeps jerking himself and barrels over the line of no return to his own climax just moments later.";
			say "     The young dobie grunts around the cock in his muzzle as he starts to shoot long streaks of sperm all over the ground between your legs, each spurt making his whole body twitch and tremble, including the tongue half-wrapped around your own shaft and giving you quite pleasurable sensations. Together, the two of you ride out your respective orgasms, until you eventually pull Spike off your now sensitive cock and help him to stand before you once more. Guiding his muzzle to your lips, you kiss him openly and suck on his tongue, tasting some of your own seed on it. With a teasing smile, you tell him that good things come to those who prove themselves to you, and that he will enjoy himself greatly as your companion. 'I'm sure that I will,' he answers and licks his muzzle, then pushes his softening cock back into his jeans and zips himself up.";
			now libido of Spike is 1; [talked into it]
			now OralVirgin of Spike is false;
			now PlayerFriended of Spike is true;
			add "Spike" to OralVirginitiesTaken of player;
		else if calcnumber is 2: [pressured into it]
			LineBreak;
			say "     Looking scornfully at the resistant young man, you tell him in no uncertain terms that you are very disappointed in his performance as your companion. After all, how can you count on him for important tasks if he even fails at the most simple things you give him as a test. Something even the most stupid slut you could pick up on the street would be capable of doing. Spike's face is a study of emotions as you make your accusation-filled little speech, going from disapproval, to shock, to a deep worry. He gulps when you come to a stop, looking at him expectantly, then slowly sinks to his haunches. A grin spreads over your face when you look at the trembling canine on the ground before you, especially as he gulps nervously when you push aside your clothes to free your [cock of player] shaft to stand erect before his eyes.";
			say "     Spike looks wide-eyed at your erection, either unsure about how to proceed or still not really wanting to do this. Doesn't matter which, as you place a hand on top of his head, then firmly push him towards your crotch and tell him to start licking. 'Uhm... okay. Will do, [SpikePlayerAdress],' he replies haltingly and glances up in the hope that you'll change his mind. It takes an impatient clearing of your throat to get him going finally. Submitting to what he must do to redeem himself in your eyes, the young man laps over your cock with his long, floppy tongue. The anthro doberman starts out slow, exploring the full length of your manhood in a novice's curiosity until he reaches the tip and slurps up the pre that already has leaked out of your slit. Closing his muzzle to swallow and raising his eyebrows at the unexpected and apparently enticing taste, Spike then goes back for more, licking over your dickhead again and again.";
			WaitLineBreak;
			say "     You allow the young canine a little while of just slurping at your tip, then eventually declare that it isn't enough and he needs to really go down on your dick. With that said, you reach down and cradle the back of his head in your fingers. Slowly pushing his head forward, you tell him to open wide. Spike's Adam's Apple bobs nervously as he swallows, then parts his muzzle and allows your erection to slide into it against the warm and slick surface of his broad tongue. Holding his head steady with your hand, you pump in and out of his muzzle with steady thrusts, enjoying the warmth of his mouth around your manhood. Part of you longs to just go all out in face-fucking your companion, but you temper the impulse to not overwhelm your sub in training. To stave off the temptation for now, you pull out instead, then slap your dripping wet shaft against the top of his muzzle, laying across its length.";
			say "     Finding himself crossing his eyes to look at your cock, the canine whimpers in confusion, then looks up, the unspoken question of what to do now in his gaze. You simply give him a grin and tell him to lick. Eyebrows drawing together for a second, Spike takes a second to realize that his nose is pressed right against your balls, with that obviously being what you want serviced. Alexandra's son suppresses a whine as he slowly licks your balls, slurping over them and giving each one attention. Despite being totally new to it, he apparently is a natural at giving oral pleasure, and it doesn't take long before you have to tell him to get his muzzle around your dick again, as you want to blow in his mouth when you come. The kneeling young man nods silently and then takes your [cock of player] shaft into his muzzle, this time not even having to be led by your hand on his head.";
			WaitLineBreak;
			say "     Slowly getting used to what is expected of him, Spike gets back to his first solo blowjob, bobbing on your cock in a dutiful manner. Except the need for a slight smack to the back of his head as a reminder to cover his teeth with his lips, the young man actually does a nice job of it, clearly a quick study - if motivated [italic type]properly[roman type]. Soon, you can't suppress moans and grunts anymore and just let them out, loudly letting your companion know that you are about to come. He freezes for a second, tempted to pull off, then pushes aside his reluctance and instead intensifies his attack on your manhood. Closing his muzzle around it, Spike sucks hard, which serves very well to push you over the edge in very short notice. Hands shooting forward to clamp onto his canine head, you hump into his muzzle and keep his nose pressed against your crotch as spurts of cum splash the back of his throat. While you keep hold of Spike's head, the young man's hands grasp your legs, his grip tightening every time a new spurt of seed erupts into him.";
			say "     You ride out your orgasm, filling the dobie's stomach with your load, then also pulling back to cover his tongue with more of the creamy fluid. Eventually, you pull Spike off your now sensitive cock and pat his head, telling him that he's proven himself - for now. As he stands before you, an expression of mixed relief and worry washes over his face, no doubt from Spike wondering what he might need to do next. You just throw an arm around his shoulders in a vaguely possessive fashion, then rub the dobie's hair and tell him that good things come to those who prove themselves to you. 'I'll make sure to remember that,' he answers and brushes away a spurt of cum from the side of his muzzle, wiping it off on the ground.";
			now libido of Spike is 21; [pressured into it]
			now OralVirgin of Spike is false;
			now PlayerControlled of Spike is true;
			add "Spike" to OralVirginitiesTaken of player;
		else if calcnumber is 3: [forced into it]
			LineBreak;
			say "     Stepping right into the young doberman's comfort zone, you don't give him even a second to react, simply snatching him by the loose collar and using that convenient handhold to wrench him even closer. Spike lets out a somewhat choked gasp at suddenly being man-handled, his eyes wide in fear as your merciless gaze studies his face. Telling him that he gave himself to you, with everything this implies, you then physically push him down, making the anthro canine fall to his knees before you. A grin spreads over your face when you look at the trembling doberman on the ground, especially as he gulps nervously when you push aside your clothes to free your [cock of player] shaft to stand erect before his eyes.";
			say "     'But I - oommmphh,' Spike starts to say, which gives you just what you needed, an open mouth and warm doggy tongue to slide your dick against. Grabbing a handful of his green hair, you give him a sharp warning about not biting you, then hold the young man's head tightly and just slam your hips forward. Your erection slips easily between his lips, only stopping as his nose is pressed against your crotch. Spike sputters and coughs at the sudden intrusion of your cock, his hands moving to weakly grab your legs and push himself away - without much success, as you keep hold of him in an unrelenting grip. It feels kinda nice how his trembling tongue is moving against your cock as he tries to speak and or push your shaft aside and you leave him to struggle a bit, then finally reach down with your other hand and grab his throat. Squeezing lightly, you growl for him to hold still and listen, then lay out in no uncertain terms that he's yours to do with as you please.";
			WaitLineBreak;
			say "     You keep your grip on Spike's neck for a little while longer to allow his situation to fully sink in, then let go, chuckling a little as you feel the warmth of the shallow, panicky breaths that follow against your cock. Despite the fact that he has now given up struggling, you grab the young man's head with both hands, getting a good grip as you begin to face-fuck him. There are some gurgles and choking noises during your first few thrusts against the back of his throat, but the doggy boy learns quickly enough to cope as you just keep going, enjoying the tightness of his flexing muscles and tongue against your [cock of player] shaft. As Spike loses his oral virginity to you, his reflexive swallowing squeezes your dickhead in pleasant and exciting ways. You keep humping his muzzle in a fast rhythm of going in and out, some part of you enjoying the power you've got over your doggy playmate almost more than even the physical sensations.";
			say "     Used harshly as he is, Spike is panting hard, or would be if your dick wasn't in his mouth all the time. What he actually is doing is drawing in lots of air through his nose and you can feel the warmth of his breath wash over your crotch, then his wet nose right against it as you hold the dobie down and force him to huff the scent of your sweaty arousal. Alexandra's son looks a bit cross-eyed as he does so, finding himself focusing on what his sensitive nose is taking in. It's fun to see what you can make the little gangster wannabe get used to, and so it doesn't take all that much longer until you can feel a familiar tenseness grow in your balls. Stopping your thrusts for a second and keeping his nose pressed against your crotch, you bend forward and tell the young man that he's about to get what he's meant for, then take up face-fucking him with furious speed once more.";
			WaitLineBreak;
			say "     Just a moment later, as he tenses up nicely around your dick when realization about what you mean hits, you orgasm, shooting a first heavy spurt of cum right down his throat. Spike pushes against you weakly as he is subjected to the indignity of getting fed your cum, futilely struggling against your firm grip and just increasing the pleasure of your climax with everything he does. Between your satisfied growls at each throb of cum gushing into your doggy toy's stomach, you call out what a good pet and cumdump he is, rubbing your dominance in hard. Soon, Spike's resistance falters and then stops entirely as he finally seems to accept what role you've given him. To test this, you pull the dobie's muzzle off your cock with a wet slurp, then command him to open wide and aim the final few spurts of your load onto his trembling tongue, painting it with white streaks. With a grin, you give the follow-up order to swallow, which Spike does with little more than a short whimper.";
			say "     Patting your dobie companion's head possessively, you keep praising him for being a good pet, then demand that he cleans your cock and balls with his tongue. 'Y-yes boss,' the young man says in a subdued tone and gets to work, slowly lapping away at your crotch. You spend some further time having fun in teaching him the proper way to service you, making Spike re-do lick after lick of every part of your genitals, then eventually push him away from your crotch and casually tell him to clean himself up. He takes being manhandled like this without complaint, his gaze filled with just the right amount of trepidation at what you might do if he said anything.";
			now libido of Spike is 41; [forced into it]
			now OralVirgin of Spike is false;
			now PlayerControlled of Spike is true;
			add "Spike" to OralVirginitiesTaken of player;
		else: [allow him to refuse subby sex]
			LineBreak;
			say "     Slowly reaching out to put a hand on his shoulder, you smile at the young man and tell him that he doesn't have to worry. You wouldn't want to do anything that he isn't comfortable with. 'Thanks [SpikePlayerAdress], I appreciate it. I would do almost anything for you, but you know... I'm a [italic type]real[roman type] man. In control and on top. Not a bitch to service anyone - even you.' Giving him a little squeeze with your hand and nodding to the impressionable young man, you tell Spike that you'll respect his position. His tail wags left and right at this show of being treated [']right['], and it's confirmed in his stance. Looks like your decision did cost you the immediate pleasure of enjoying the doberman's mouth, but gained you a new level of devotion from your young follower.";
			now libido of Spike is 100; [allowed him to refuse, not gonna bring it up again]
	else if libido of Spike > 0 and libido of Spike < 20: [repeat of talked into it]
		say "     Sliding an arm around the young doberman hips, you pull him against yourself and give him a naughty grin as you squeeze his ass. Spike's brows rise at the groping and his hands automatically start to touch your sides in turn. As he opens his muzzle to say something, you slurp the tip of his tongue into your mouth, playfully sucking at it for a second before you pull back and tell him that you want to have fun with your most trusted lieutenant. You keep praising him some more after that, stressing in a honest tone just how proud you're of his performance as your companion, and the young guy preens in the glory you shine upon him, his face soon dominated by a very wide and happy smile. Behind Spike's back, his slender tail is wagging up a storm and you let your fingers wander to it to rub the base, making his right paw reflexively scratch over the ground in pleasured response.";
		say "     Touching and stroking your armful of happy, increasingly horny dobie, you keep going until he soon asks, 'So, what do you wanna do, [SpikePlayerAdress]?' In reply, you move your hand to the back of his neck and reply that you want to feel his muzzle on your [cock of player] shaft, then gently press down on Spike to make him kneel before you. As he readily gets into position, you [SelfStripCrotch], then brush the strands of his neon-green hair out of his face and stroke along the side of his muzzle. The young man gives you a worshipful glance as you wrap your fingers around your dick, stroking its girth up and down slowly before holding it out to him. The anthro doberman starts out slow, exploring the full length of your manhood with the tip of his tongue until he reaches the tip and slurps up a drop of pre that already has formed at the slit. Closing his muzzle to swallow, his tail wags even harder at the enticing taste, then Spike goes back for more, licking over your dickhead again and again.";
		WaitLineBreak;
		say "     You allow the young canine a little while of just slurping at your tip, then eventually move your hand to rub the base of his ears, which Spike clearly enjoys, before cradling the back of his head in your fingers. Slowly pushing his head forward a little, he takes the hint to open his muzzle a little wider, allowing your erection to slide into it against the warm and slick surface of his floppy tongue. Holding his head steady with your hand, you pump in and out of his muzzle with steady thrusts, enjoying the feel of his mouth around your manhood. Part of you longs to just go all out in face-fucking your companion, but you temper the impulse to not overwhelm him, no matter how eager he may be. As his wet nose bumps into your crotch, with your whole cock now in his mouth, you slowly take your hand away from Spike's head, stroking his cheek as you do so.";
		say "     Finding himself in control of his own movements again, the canine pulls back a little and licks your dickhead again, then looks up to meet your gaze, a joyful twinkle in his eyes. You simply give him a supportive smile and a nod, after which he starts doing his best to please you all on his own. The young doberman leans in to lick at your balls, slurping over them and giving each one eager attention, just long enough to wind you up before he switches back to your hard length. He takes your shaft into his muzzle, careful not to brush it with any of his canine teeth, and bounces up and down on it, sucking you with an eager novice's attention. Despite the fact that he's only been sexually active for a little while, your dobie is quite good at giving oral pleasure. He also clearly enjoys hearing your joyful moans and grins around the shaft between his lips, soon pulling off for a little while to say, 'Just a second.' With that, he moves his hands to pull down the zipper of his pants, freeing a hard canine rod to stand erect as a flagpole.";
		WaitLineBreak;
		say "     With his own cock in hand and jerking it in a frantic pace, Spike gets back to servicing you, bobbing on your cock in a very enthusiastic way. It feels amazing how he lets his tongue dance over your girth and presses it up against the ribbed roof of his muzzle. Soon, your moans and grunts rise in volume as you're getting quite close to cumming, which you call out for Spike to know. He just intensifies his attack on your manhood, closing his muzzle around it and sucking hard, which serves very well to push you over the edge in very short notice. Hands shooting forward to clamp onto his canine head, you hump into his muzzle and keep his nose pressed deep into your pubes as spurts of cum splash the back of his throat. While you keep hold of Spike up top and make him eat your load, he continues jerking himself and barrels over the line of no return to his own climax just moments later.";
		say "     The young dobie grunts around the cock in his muzzle as he starts to shoot long streaks of sperm all over the ground between your legs, each spurt making his whole body twitch and tremble, including the tongue half-wrapped around your own shaft and giving you quite pleasurable sensations. Together, the two of you ride out your respective orgasms, until you eventually pull Spike off your now sensitive cock and help him to stand before you once more. Guiding his muzzle to your lips, you kiss him openly and suck on his tongue, tasting some of your own seed on it. With a teasing smile, you tell him that you're more than happy with having him as your companion. 'Me too, [SpikePlayerAdress], me too,' he answers with a smile and licks his muzzle, then pushes his softening cock back into the jeans and zips himself up.";
	else if libido of Spike > 20 and libido of Spike < 40: [repeat of pushed into it]
		say "     Stepping up before the young man, hands on your hips, you let your eyes roam up and down over him with a serious expression on your face. Standing at attention, the nervous-looking dobie tenses a little more with each moment that you just keep staring, until you finally grin at him and say that it is time for him to show his loyalty to you again. Spike's eyebrows rise a little at the lewd undertone of your voice, but he says nothing as you [SelfStripCrotch], then point at the ground in front of you and order him to kneel. There is a tiny moment of hesitation before Spike replies, 'Yes [SpikePlayerAdress],' then moves to comply, sinking down in front of you. The anthro dobie's muzzle twitches a little as he breathes in the first whiff of your masculine arousal, but he quickly smoothes his expression and just awaits what will come next.";
		say "     You playfully sway your hips a tiny bit, letting your hard shaft sway before Spike's eyes like the sword of Damocles, enjoying the nervous attention he is paying to it. When you finally bark out for him to get to work, he twitches visibly, the tension unloading all at once. Submitting to what he must do to keep on your good side, the young man laps over your cock with his long, floppy tongue. He starts out slow, exploring the full length of your manhood in a not quite willing partner's hesitation, until he reaches the tip and makes himself slurp up the pre that already has leaked out of your slit. Closing his muzzle to swallow, his expression showing the internal conflict at the fact that he actually kinda likes the taste, Spike then leans forward again, licking over your dickhead several more times.";
		WaitLineBreak;
		say "     You allow the young canine a little while of just slurping at your tip, then eventually declare that it isn't enough and he needs to really go down on your dick. With that said, you reach down and cradle the back of his head in your fingers. Slowly pushing his head forward, you tell him to open wide. Spike's Adam's Apple bobs nervously as he swallows, then parts his muzzle and allows your erection to slide into it against the warm and slick surface of his broad tongue. Holding his head steady with your hand, you pump in and out of his muzzle with steady thrusts, enjoying the warmth of his mouth around your manhood. Part of you longs to just go all out in face-fucking your companion, but you temper the impulse to not overwhelm the young sub. To stave off the temptation for now, you pull out instead, then slap your dripping wet shaft against the top of his muzzle, laying across its length.";
		say "     Finding himself crossing his eyes to look at your cock, the canine suppresses a whimper and huffs through his nose, the warm air washing over your balls just in front of it. He glances up to meet your eyes in an unspoken question, and you grin and order him to lick. Closing his eyes tightly for a second, maybe imagining himself somewhere else, Alexandra's son then opens his muzzle and starts to slowly lick your balls, slurping over them and giving each one some attention. Despite his reluctance, he's a natural at giving oral pleasure, and it doesn't take long before you have to tell him to get his lips around your dick again, as you want to blow in his mouth when you come. The kneeling young man nods silently and then takes your [cock of player] shaft into his muzzle, this time not even having to be led by your hand on his head.";
		WaitLineBreak;
		say "     Resigned to get his task over with as quick as possible, Spike bobs on your cock in a dutiful manner. Except the need for a slight smack to the back of his head as a reminder to cover his teeth with his lips, the young man actually does a nice job of it, clearly a quick study - if motivated [italic type]properly[roman type]. Soon, you can't suppress moans and grunts anymore and just let them out, loudly letting your companion know that you are about to come. He freezes for a second, tempted to pull off, then pushes aside his reluctance and instead intensifies his attack on your manhood. Closing his muzzle around it, Spike sucks hard, which serves very well to push you over the edge in very short notice. Hands shooting forward to clamp onto his canine head, you hump into his muzzle and keep his nose pressed against your crotch as spurts of cum splash the back of his throat. While you keep hold of Spike's head, the young man's hands grasp your legs, his grip tightening every time a new spurt of seed erupts into him.";
		say "     You ride out your orgasm, filling the dobie's stomach with your load, then also pulling back to cover his tongue with more of the creamy fluid. Eventually, you pull Spike off your now sensitive cock and pat his head, telling him that he's proven himself - for now. As he stands before you, an expression of mixed relief and worry washes over his face, no doubt from Spike wondering what he might need to do next. You just throw an arm around his shoulders in a vaguely possessive fashion, then rub the dobie's hair and tell him that good things come to those who prove themselves to you. 'I sure hope so,' he mumbles and brushes away a spurt of cum from the side of his muzzle, wiping it off on the ground.";
	else if libido of Spike > 40 and Libido of Spike < 60: [repeat of forced into it]
		say "     Stepping right into the young doberman's comfort zone, you don't give him even a second to react, simply snatching him by the loose collar and using that convenient handhold to wrench him even closer. Spike lets out a somewhat choked gasp at suddenly being man-handled, his eyes wide in fear as your merciless gaze studies his face. Telling him harshly that you want to make use of his mouth, you then physically push him down, making the anthro canine fall to his knees before you. A grin spreads over your face when you look at the trembling doberman on the ground, especially as he gulps nervously when you [SelfStripCrotch], then stroke your [cock of player] shaft to stand erect before his eyes.";
		say "     'Please go slower this ti- oommmphh,' Spike starts to say, which gives you just what you needed, an open mouth and warm doggy tongue to slide your dick against. Grabbing a handful of his green hair, you sharply tell him to be a good doggy and fuckhole, then hold the young man's head tightly and just slam your hips forward. Your erection slips easily between his lips, only stopping as his nose is pressed against your crotch. Spike sputters and coughs at the sudden intrusion of your cock, his hands moving to weakly grab your legs and push himself away - without much success, as you keep hold of him in an unrelenting grip. It feels kinda nice how his trembling tongue is moving against your cock as he tries to speak and or push your shaft aside and you leave him to struggle a bit, then finally reach down with your other hand and grab his throat. Squeezing lightly, you growl for him to hold still and listen, then remind the young dobie that he's yours to do with as you please.";
		WaitLineBreak;
		say "     You keep your grip on Spike's neck for a little while longer to allow his situation to fully sink in, then let go, chuckling a little as you feel the warmth of the shallow, panicky breaths that follow against your cock. Despite the fact that he has now given up struggling, you grab the young man's head with both hands, getting a good grip as you begin to face-fuck him. There are less gurgles and choking noises this time, but he still struggles to take thrusts against and past the back of his throat. You just keep going, enjoying the tightness of his flexing muscles and tongue against your [cock of player] shaft, humping his muzzle in a fast rhythm of going in and out. Some part of you enjoys the power you've got over your doggy playmate almost more than even the physical sensations.";
		say "     Used harshly as he is, Spike is panting hard, or would be if your dick wasn't in his mouth all the time. What he actually is doing is drawing in lots of air through his nose and you can feel the warmth of his breath wash over your crotch, then his wet nose right against it as you hold the dobie down and force him to huff the scent of your sweaty arousal. Alexandra's son looks a bit cross-eyed as he does so, finding himself focusing on what his sensitive nose is taking in. It's fun to see what you can make the little gangster wannabe get used to, and so it doesn't take all that much longer until you can feel a familiar tenseness grow in your balls. Stopping your thrusts for a second and keeping his nose pressed against your crotch, you bend forward and tell the young man that he's about to get what he's meant for, then take up face-fucking him with furious speed once more.";
		WaitLineBreak;
		say "     He knows what's coming and puts his hands on your legs, squeezing them in his nervousness that also has Spike's throat muscles tremble and twitch around your shaft. This makes face-fucking him even more fun and you quickly orgasm, shooting a first heavy spurt of cum right down his throat. Spike pushes against you weakly as he is subjected to the indignity of getting fed your cum, futilely struggling against your firm grip and just increasing the pleasure of your climax with everything he does. Between your satisfied growls at each throb of cum gushing into your doggy toy's stomach, you call out what a good pet and cumdump he is, rubbing your dominance in hard. Soon, Spike's reflexive resistance falters, with him forcing himself to submit and accept what role you've given him. To test this, you pull the dobie's muzzle off your cock with a wet slurp, then command him to open wide and aim the final few spurts of your load onto his trembling tongue, painting it with white streaks. With a grin, you give the follow-up order to swallow, which Spike does with little more than a short whimper.";
		say "     Patting your dobie companion's head possessively, you keep praising him for being a good pet, then demand that he cleans your cock and balls with his tongue. 'Y-yes boss,' the young man says in a subdued tone and gets to work, slowly lapping away at your crotch. You spend some further time having fun in teaching him the proper way to service you, making Spike re-do lick after lick of every part of your genitals, then eventually push him away from your crotch and casually tell him to get dressed as you're done. He takes being manhandled like this without complaint, his gaze filled with just the right amount of trepidation at what you might do if he said anything.";

to say SpikeSex2: [oral on the player's pussy]
	if libido of Spike is 0:
		say "     As you tell the young doberman that you want him to eat you out, he gapes openly at you and replies, 'Wait - what's this now?! I wanna be the guy on top, not be crawling between someone's legs to service them! I thought that we'd pick up some babes out on the streets to fuck, or maybe even a girly dude. Why should I be the one that gives others pleasure if I'm not getting off at the same time? I don't know, [SpikePlayerAdress].' The anthro canine takes half a step back and raises his hands in a warding gesture, clearly less than convinced that he wants to follow your request.";
		say "     [bold type]How do you want to deal with this? It will likely set the tone for your further relationship...[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Talk him into going down on you.";
		say "     [link](2)[as]2[end link] - Pressure Spike into servicing you.";
		say "     [link](3)[as]3[end link] - Just grab him and force him to his knees.";
		say "     [link](4)[as]4[end link] - Allow him to refuse.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to talk him into it, [link]2[end link] to pressure him into it, [link]3[end link] to physically make him do it, or [link]4[end link] to allow Spike to refuse.";
		if calcnumber is 1: [talked into it]
			LineBreak;
			say "     Raising an eye at his refusal, you tell the young man that in order to have total trust in one another, him and you should become more than just people who work together. That there is a whole level of devotion beyond simple obedience. Drawing him in with words full of fervor, you soon have Spike listening with eager attention, his tail wagging left and right. When you then go on to say that you think he is ready to become one of the people you really trust, the young doberman sinks down in front of you and looks up with a smile on his muzzle. Stroking the strands of neon-green head-hair out of his face, you run your hand along the side of his face and proclaim that you're proud of him, then [SelfStripCrotch]. Using the fingers of one hand, you spread the folds of your sex and brush over the clit, giving him a close-up view of what makes a woman go wild.";
			say "     Spike looks wide-eyed at the bared pussy, unsure about how to proceed, even as his wagging tail tells you how happy he is to become your special friend. Placing a hand on top of his head, you gently push him towards your crotch and tell him to start licking. 'Will do, [SpikePlayerAdress],' he replies with a smile on his muzzle and gives you a worshipful glance, then laps over your nether-lips with his long, floppy tongue. The anthro doberman starts out slow, exploring the inner and outer folds in a novice's curiosity until he reaches the clit and runs his tongue-tip over it in a light touch that makes you tremble in arousal and hold your breath. As your lust spikes from his touch, you start getting wet and dripping with female lubrication, which Spike slurps up on his follow-up licks, raising his eyebrows at the unexpected and enticing taste. He keeps going back for more long laps at your crotch, eager to please.";
			WaitLineBreak;
			say "     You allow the young canine a little while of just doing slow licks and leisurely slurping up your fluids, then eventually move your hand to rub the base of his ears, which Spike clearly enjoys, before cradling the back of his head in your fingers. Gently pushing his head forward, you tell him to get his tongue in between the folds of your pussy and go deeper. Spike's tail is still wagging up a storm behind his back as the eager doberman opens up his muzzle a little wider and sticks his floppy tongue out, experimentally pressing it against your opening. His tongue easily slips inside the flexible opening, wiggling around as he explores your sex and giving you quite pleasurable sensations in the process. The young dobie's enthusiastic, if not particularly focused probing puts you on edge, panting needily and grinding a little against his face.";
			say "     Eventually, you just can't bear being inactive anymore and pull his head against your crotch with more force, really pushing his muzzle against your folds and driving the wiggling tongue even deeper. Spike is surprised at the sudden man-handling, his breath coming warm and fast through the nose wedged between your nether-lips, huffing the heady scent of your arousal and finding it very much to his own liking. He adapts to your now more demanding stance and curls that long canine tongue inside your pussy, touching and teasing your inner walls in ways that make your knees go wobbly, forcing you to hold on to his shoulders for support. You stand there for you don't know how long, clutching on to your eager canine companion as he eats you out good, your mind lost in a pleasurable haze. Yet as nice as this is, you can't get off from just his tongue alone, and so you groan out to the dobie that he should go for your clit and sink his fingers into your pussy instead.";
			WaitLineBreak;
			say "     Spike pulls back from his deep tongue-penetration of your sex, snapping his muzzle shut with a smile and swallowing down your fluids, then looks up with a worshipful expression on his face. Meeting his gaze, you stroke the side of his muzzle affectionately, then pant out in an urgent tone that you [italic type]need[roman type] him to finish you off. Prompted to look down by your fingers brushing over the pleasure-button of your clit, the anthro doberman is happy to comply, bringing his muzzle forward to lap right at it. A moaned reminder has him touching your opening a moment later too, pushing two fingers inside to spread it and rub your sensitive walls. Over your own moans and the slurps of your canine companion, you hear something else - a zipper being undone. Looking down, you see Spike's pants being open a the front, his hard canine rod erect as a flagpole as the young man closes his other hand around it.";
			say "     With his own cock in hand and jerking it in a frantic pace, Spike focuses back on his first cunnilingus experience, nodding his head with the licking motions over your button. The young man really does a nice job of it, clearly a quick study in what pleases you, picking up on the pitch of your moans at his ministrations. Soon, you can't hold back anymore and just let your moans and grunts out at full blast, sounding like a bitch in heat as you shout that you're about to come. Spike just intensifies his attack on your womanhood, the tip of his tongue circling around its edge in an incredibly nice teasing touch. Meanwhile, his fingers are inside you to the knuckles, feeling around and rubbing you in a very right way. You can't take much of this, and just a few moments later, you howl out loud, telling the world about the breathtaking orgasm just breaking over yourself. Femcum squirts out, bathing Spike's tongue and muzzle in fluids that are eagerly licked up and swallowed by him.";
			WaitLineBreak;
			say "     While you cling to Spike as he eats you out, his hand is busy jerking himself off, and so the dobie barrels over the line of no return to his own climax just moments later. He grunts loudly with his nose still buried against your crotch as he starts to shoot long streaks of sperm all over the ground between your legs, each spurt making his whole body twitch and tremble, including the tongue pressed against your clit and giving you quite pleasurable sensations. Together, the two of you ride out your respective orgasms, until you eventually pull Spike back from your now sensitive sex and help him to stand before you once more. Guiding his muzzle to your lips, you kiss him openly and suck on his tongue, tasting some of your own fluids on it. With a teasing smile, you tell him that good things come to those who prove themselves to you, and that he will enjoy himself greatly as your companion. 'I'm sure that I will,' he answers and licks his muzzle, then pushes his softening cock back into his jeans and zips himself up.";
			now libido of Spike is 1; [talked into it]
			now OralVirgin of Spike is false;
			now PlayerFriended of Spike is true;
			add "Spike" to OralVirginitiesTaken of player;
		else if calcnumber is 2: [pressured into it]
			LineBreak;
			say "     Looking scornfully at the resistant young man, you tell him in no uncertain terms that you are very disappointed in his performance as your companion. After all, how can you count on him for important tasks if he even fails at the most simple things you give him as a test. Something even the most stupid slut you could pick up on the street would be capable of doing. Spike's face is a study of emotions as you make your accusation-filled little speech, going from disapproval, to shock, to a deep worry. He gulps when you come to a stop, looking at him expectantly, then slowly sinks to his haunches. A grin spreads over your face when you look at the trembling canine on the ground before you, especially as he gulps nervously when you [SelfStripCrotch]. Using the fingers of one hand, you spread the folds of your sex and brush over the clit, telling him that he must service you till you're satisfied.";
			say "     Spike looks wide-eyed at the bared pussy, either unsure about how to proceed or still not really wanting to do this. Doesn't matter which, as you place a hand on top of his head, then firmly push him towards your crotch and tell him to start licking. 'Uhm... okay. Will do, [SpikePlayerAdress],' he replies haltingly and glances up in the hope that you'll change his mind. It takes an impatient clearing of your throat to get him going finally. Submitting to what he must do to redeem himself in your eyes, the young man laps over your nether-lips with his long, floppy tongue. The anthro doberman starts out slow, exploring the inner and outer folds in a novice's curiosity until he reaches the clit and runs his tongue-tip over it in a light touch that makes you tremble in arousal and hold your breath. As your lust spikes from his touch, you start getting wet and dripping with female lubrication, which Spike slurps up on his follow-up licks, raising his eyebrows at the unexpected and enticing taste. After a light tap on the back of his head, he remembers to keep going, lapping away at your crotch.";
			WaitLineBreak;
			say "     You allow the young canine a little while of just doing slow licks and leisurely slurping up your fluids, then eventually move your hand to cradle the back of his head in your fingers. Gently pushing his head forward, you tell him to get his tongue in between the folds of your pussy and go deeper. Spike is nervous and tense at being made to take the submissive role, but he doesn't really resist, instead opening up his muzzle a little wider and sticking his floppy tongue out, experimentally pressing it against your opening. It easily slips inside the flexible opening, wiggling around as he explores your sex and giving you quite pleasurable sensations in the process. The young dobie's slowly increasing enthusiasm at tongue-fucking you puts you on edge, panting needily and grinding a little against his face.";
			say "     Eventually, you just can't bear being inactive anymore and pull his head against your crotch with more force, really pushing his muzzle against your folds and driving the wiggling tongue even deeper. Spike is surprised at the sudden man-handling and whimpers for a second, his breath coming warm and fast through the nose wedged between your nether-lips. Yet as he huffs the heady scent of your arousal, he can't help but be aroused too. He adapts to your now more demanding stance and curls that long canine tongue inside your pussy, touching and teasing your inner walls in ways that make your knees go wobbly, forcing you to hold on to his shoulders for support. You stand there for you don't know how long, clutching on to your compliant canine companion as he eats you out, your mind lost in a pleasurable haze. Yet as nice as this is, you can't get off from just his tongue alone, and so you groan out to the dobie that he should go for your clit and sink his fingers into your pussy instead.";
			WaitLineBreak;
			say "     Slowly getting used to what is expected of him, Spike pulls back from his deep tongue-penetration of your sex, snapping his muzzle shut and swallowing down your fluids, then looks up with a slightly conflicted expression on his face. He clearly does enjoy having sex, it's just that not being in control irks him a little. Meeting his gaze, playfully grab the scruff of his neck and call him a good dog, then pant out in an urgent tone that you [italic type]need[roman type] him to finish you off. Prompted to look down by your fingers brushing over the pleasure-button of your clit, the anthro doberman is quick to comply, bringing his muzzle forward to lap right at it. A moaned reminder has him touching your opening a moment later too, pushing two fingers inside to spread it and rub your sensitive walls.";
			say "     Spike focuses on his first cunnilingus experience, nodding his head with the licking motions over your button. The young man really does a nice job of it, clearly a quick study in what pleases you, picking up on the pitch of your moans at his ministrations. Soon, you can't hold back anymore and just let your moans and grunts out at full blast, sounding like a bitch in heat as you shout that you're about to come. Spike takes that as a command to intensify his attack on your womanhood, the tip of his tongue circling around its edge in an incredibly nice teasing touch. Meanwhile, his fingers are inside you to the knuckles, feeling around and rubbing you in a very right way. You can't take much of this, and just a few moments later, you howl out loud, telling the world about the breathtaking orgasm just breaking over yourself. Femcum squirts out, bathing Spike's tongue and muzzle in fluids that are eagerly licked up and swallowed by him.";
			WaitLineBreak;
			say "     You ride out your orgasm while the dobie drinks down your femcum and continues to lap at your sex until you pat his head and order him to stop. Pulling Spike back from your now sensitive sex, you tell him that he's proven himself - for now. As he stands before you, an expression of mixed relief and worry washes over his face, no doubt from Spike wondering what he might need to do next. You just stroke his muzzle in a vaguely possessive fashion, then rub the dobie's hair and tell him that good things come to those who prove themselves to you. 'I'll make sure to remember that,' he answers and brushes away a drop of femcum from the side of his muzzle, wiping it off on the ground.";
			now libido of Spike is 21; [pressured into it]
			now OralVirgin of Spike is false;
			now PlayerControlled of Spike is true;
			add "Spike" to OralVirginitiesTaken of player;
		else if calcnumber is 3: [forced into it]
			LineBreak;
			say "     Stepping right into the young doberman's comfort zone, you don't give him even a second to react, simply snatching him by the loose collar and using that convenient handhold to wrench him even closer. Spike lets out a somewhat choked gasp at suddenly being man-handled, his eyes wide in fear as your merciless gaze studies his face. Telling him that he gave himself to you, with everything this implies, you then physically push him down, making the anthro canine fall to his knees before you. A grin spreads over your face when you look at the trembling canine on the ground before you, especially as he gulps nervously when you [SelfStripCrotch]. Using the fingers of one hand, you spread the folds of your sex and brush over the clit, telling him that he must service you till you're satisfied.";
			say "     'But I - oommmphh,' Spike starts to say, but you don't really care and just clamp your hand on the back of his head and force his muzzle against your crotch. He tenses, futilely pulling against your grip as he finds his nose wedged against the wet folds of your sex, with the scent of your arousal overwhelmingly strong as he huffs it with rapid, panicky breaths. You keep the anthro canine tightly under control to allow his situation to fully sink in, then let go, chuckling a little as he pulls back and glances up at you in shock. Grinning at the young man, you tell him in no uncertain terms that he will service you, licking at your pussy until you're satisfied. He swallows visibly as he hears the tone of your voice, then gives a somewhat frightened nod. Despite the fact that your canine plaything has now given up struggling, you grab the young man's head with both hands, getting a good grip as you begin to grind against his muzzle.";
			WaitLineBreak;
			say "     At first, there isn't any participation on his end, just you brushing your nether lips over his wet nose and enjoying the touch, but after a little reminder in form of a light slap to the back of his head, the doggy boy learns quickly enough to lick when you want him to. As Spike loses his oral virginity to you, he slurps up the fluids of your arousal and is surprised at the fact that he actually kinda likes the taste. Thus the young man quickly gets over his initial reluctance and attacks your sex with growing enthusiasm, the floppy length of his tongue slipping into your body and exploring it with wiggling movements. You keep humping against his muzzle even as he eats you out, some part of you enjoying the power you've got over your doggy playmate almost more than even the physical sensations.";
			say "     Used harshly as he is, Spike is panting hard against your crotch, huffing the scent of your sweaty arousal. Alexandra's son looks a bit cross-eyed as he does so, finding himself focusing on what his sensitive nose is taking in. It's fun to see what you can make the little gangster wannabe get used to, including grinding your clit against the top of his nose and inundating it in your female juices. Stopping your movements for a second and keeping his nose pressed against your crotch, you bend forward and tell the young man that he's about to get what he's meant for, then take up fucking yourself against his tongue and muzzle furious speed once more. Just a moment later, as he tenses up and his tongue curls in a very pleasurable way inside your pussy, you orgasm, a thick spurt of femcum splashing over his muzzle, followed by more and more right after. Spike pushes against you weakly as he is subjected to the indignity of getting drenched by your climax, futilely struggling against your firm grip and just increasing the pleasure of your climax with everything he does.";
			WaitLineBreak;
			say "     Between your high-pitched moans coming with each throb of femcum gushing onto your doggy toy, you call out what a good pet and bitch-boy he is, rubbing your dominance in hard. Soon, Spike's resistance falters and then stops entirely as he finally seems to accept what role you've given him. To test this, you pull the dobie's muzzle away from your crotch and command him to lick your fluids off his own muzzle, which he does with swipes of that long tongue of his. Grinning, you give the follow-up order to swallow, which Spike does with little more than a short whimper. Patting your doberman companion's head possessively, you keep praising him in a condescending tone, then demand that he cleans your crotch with his tongue. 'Y-yes boss,' the young man says in a subdued tone and gets to work, slowly lapping away at your crotch.";
			say "     You spend some further time having fun in teaching him the proper way to service you, making Spike re-do lick after lick of every part of your genitals, then eventually push him away from your crotch and casually tell him to clean himself up. He takes being manhandled like this without complaint, his gaze filled with just the right amount of trepidation at what you might do if he said anything.";
			now libido of Spike is 41; [forced into it]
			now OralVirgin of Spike is false;
			now PlayerControlled of Spike is true;
			add "Spike" to OralVirginitiesTaken of player;
		else: [allow him to refuse subby sex]
			LineBreak;
			say "     Slowly reaching out to put a hand on his shoulder, you smile at the young man and tell him that he doesn't have to worry. You wouldn't want to do anything that he isn't comfortable with. 'Thanks [SpikePlayerAdress], I appreciate it. I would do almost anything for you, but you know... I'm a [italic type]real[roman type] man. In control and on top. Not a bitch to service anyone - even you.' Giving him a little squeeze with your hand and nodding to the impressionable young man, you tell Spike that you'll respect his position. His tail wags left and right at this show of being treated [']right['], and it's confirmed in his stance. Looks like your decision did cost you the immediate pleasure of enjoying the doberman's mouth, but gained you a new level of devotion from your young follower.";
			now libido of Spike is 100; [allowed him to refuse, not gonna bring it up again]
	else if libido of Spike > 0 and libido of Spike < 20: [repeat of talked into it]
		say "     Sliding an arm around the young doberman hips, you pull him against yourself and give him a naughty grin as you squeeze his ass. Spike's brows rise at the groping and his hands automatically start to touch your sides in turn. As he opens his muzzle to say something, you slurp the tip of his tongue into your mouth, playfully sucking at it for a second before you pull back and tell him that you want to have fun with your most trusted lieutenant. You keep praising him some more after that, stressing in a honest tone just how proud you're of his performance as your companion, and the young guy preens in the glory you shine upon him, his face soon dominated by a very wide and happy smile. Behind Spike's back, his slender tail is wagging up a storm and you let your fingers wander to it to rub the base, making his right paw reflexively scratch over the ground in pleasured response.";
		say "     Touching and stroking your armful of happy, increasingly horny dobie, you keep going until he soon asks, 'So, what do you wanna do, [SpikePlayerAdress]?' In reply, you move your hand to the back of his neck and reply that you want to feel his tongue in your pussy, then gently press down on Spike to make him kneel before you. As he readily gets into position, you [SelfStripCrotch], then brush the strands of his neon-green hair out of his face and stroke along the side of his muzzle. The young man gives you a worshipful glance as you spread your folds enticingly before him, showing how wet you already are in anticipation of him going down on you. The anthro doberman starts out slow, exploring the inner and outer folds in a novice's curiosity until he reaches the clit and runs his tongue-tip over it in a light touch that makes you tremble in arousal and hold your breath.";
		WaitLineBreak;
		say "     You allow the young canine a little while of just doing slow licks and leisurely slurping up your fluids, then eventually move your hand to rub the base of his ears, which Spike clearly enjoys, before cradling the back of his head in your fingers. Gently pushing his head forward, you tell him to get his tongue in between the folds of your pussy and go deeper. Spike's tail is still wagging up a storm behind his back as the eager doberman opens up his muzzle a little wider and sticks his floppy tongue out, slipping it inside the flexible opening. It wiggles around as he explores your sex and gives quite pleasurable sensations in the process. The young dobie's enthusiastic, if not particularly focused probing puts you on edge, panting needily and grinding a little against his face.";
		say "     Eventually, you just can't bear being inactive anymore and pull his head against your crotch with more force, really pushing his muzzle against your folds and driving the wiggling tongue even deeper. Spike seems to have expected you to do this, as his nostrils flare widely when his nose gets wedged between your folds, taking deep huffs of the heady scent of your arousal. He adapts to your now more demanding stance and curls that long canine tongue inside your pussy, touching and teasing your inner walls in ways that make your knees go wobbly, forcing you to hold on to his shoulders for support. You stand there for you don't know how long, clutching on to your eager canine companion as he eats you out good, your mind lost in a pleasurable haze. Yet as nice as this is, you can't get off from just his tongue alone, and so you groan out to the dobie that he should go for your clit and sink his fingers into your pussy instead.";
		WaitLineBreak;
		say "     Spike pulls back from his deep tongue-penetration of your sex, snapping his muzzle shut with a smile and swallowing down your fluids, then looks up with a worshipful expression on his face. Meeting his gaze, you stroke the side of his muzzle affectionately, then pant out in an urgent tone that you [italic type]need[roman type] him to finish you off. Prompted to look down by your fingers brushing over the pleasure-button of your clit, the anthro doberman is happy to comply, bringing his muzzle forward to lap right at it while his hand gets raised to your crotch too and strokes against it. A moment later, two of his fingers push your pussy to spread it and rub your sensitive walls. Over your own moans and the slurps of your canine companion, you hear something else - a zipper being undone. Looking down, you see Spike's pants being open a the front, his hard canine rod erect as a flagpole as the young man closes his other hand around it.";
		say "     With his own cock in hand and jerking it in a frantic pace, Spike focuses back on his first cunnilingus experience, nodding his head with the licking motions over your button. The young man really does a nice job of it, clearly a quick study in what pleases you, picking up on the pitch of your moans at his ministrations. Soon, you can't hold back anymore and just let your moans and grunts out at full blast, sounding like a bitch in heat as you shout that you're about to come. Spike just intensifies his attack on your womanhood, the tip of his tongue circling around its edge in an incredibly nice teasing touch. Meanwhile, his fingers are inside you to the knuckles, feeling around and rubbing you in a very right way. You can't take much of this, and just a few moments later, you howl out loud, telling the world about the breathtaking orgasm just breaking over yourself. Femcum squirts out, bathing Spike's tongue and muzzle in fluids that are eagerly licked up and swallowed by him.";
		WaitLineBreak;
		say "     While you cling to Spike as he eats you out, his hand is busy jerking himself off, and so the dobie barrels over the line of no return to his own climax just moments later. He grunts loudly with his nose still buried against your crotch as he starts to shoot long streaks of sperm all over the ground between your legs, each spurt making his whole body twitch and tremble, including the tongue pressed against your clit and giving you quite pleasurable sensations. Together, the two of you ride out your respective orgasms, until you eventually pull Spike back from your now sensitive sex and help him to stand before you once more. Guiding his muzzle to your lips, you kiss him openly and suck on his tongue, tasting some of your own fluids on it. With a teasing smile, you thank him for being an amazing companion in any occasion, be it work or play. 'My pleasure,' he answers and licks his muzzle, then pushes his softening cock back into his jeans and zips himself up.";
	else if libido of Spike > 20 and libido of Spike < 40: [repeat of pushed into it]
		say "     Stepping up before the young man, hands on your hips, you let your eyes roam up and down over him with a serious expression on your face. Standing at attention, the nervous-looking dobie tenses a little more with each moment that you just keep staring, until you finally grin at him and say that it is time for him to show his loyalty to you again. Spike's eyebrows rise a little at the lewd undertone of your voice, but he says nothing as you [SelfStripCrotch], then point at the ground in front of you and order him to kneel. There is a tiny moment of hesitation before Spike replies, 'Yes [SpikePlayerAdress],' and moves to comply, sinking down in front of you. The anthro dobie's muzzle twitches a little as he breathes in the first whiff of your feminine arousal, but he quickly smoothes his expression and just awaits what will come next.";
		say "     You playfully sway your hips a tiny bit, drawing Spike's gaze to your crotch and enjoying the nervous attention he is paying to it. When you finally bark out for him to get to work, he twitches visibly, the tension unloading all at once. Submitting to what he must do to keep on your good side, the young man bows his head forward an laps over your crotch with his long, floppy tongue. He starts out slow, exploring the folds of your female sex in a not quite willing partner's hesitation, working his way to the clit and making himself slurp up the feminine fluids that already are beginning to lubricate your slit. Closing his muzzle to swallow, his expression showing the internal conflict at the fact that he actually kinda likes the taste, Spike then leans forward again, licking over your pussy several more times.";
		WaitLineBreak;
		say "     You allow the young canine a little while of just slow licks and leisurely slurping up your fluids, then eventually reach down to cradle the back of his head in your fingers. Slowly pushing his head forward, you tell him to get his tongue in between the folds of your pussy and go deeper. Spike's Adam's Apple bobs nervously as he swallows, then parts his muzzle and sticks his floppy tongue out, slipping it inside the flexible opening. It wiggles around as he explores your sex and gives quite pleasurable sensations in the process. Holding his head steady with your hand, you enjoy his tongue-fucking and grind lightly against him. Eventually, you just can't bear being inactive anymore and pull his head against your crotch with more force, really pushing his muzzle against your folds and driving the wiggling tongue even deeper.";
		say "     Spike seems to have expected you to do this, as his nostrils flare widely when his nose gets wedged between your folds, taking deep huffs of the heady scent of your arousal. He adapts to your now more demanding stance and curls that long canine tongue inside your pussy, touching and teasing your inner walls in ways that make your knees go wobbly, forcing you to hold on to his shoulders for support. You stand there for you don't know how long, clutching on to your compliant canine companion as he eats you out good, your mind lost in a pleasurable haze. Yet as nice as this is, you can't get off from just his tongue alone, and so you groan out to the dobie that he should go for your clit and sink his fingers into your pussy instead.";
		WaitLineBreak;
		say "     Spike pulls back from his deep tongue-penetration of your sex, snapping his muzzle shut and swallowing down your fluids, then looks up with a slightly conflicted expression on his face. He clearly does enjoy having sex, it's just that not being in control irks him a little. Meeting his gaze, playfully grab the scruff of his neck and call him a good dog, then pant out in an urgent tone that you [italic type]need[roman type] him to finish you off. Prompted to look down by your fingers brushing over the pleasure-button of your clit, the anthro doberman is quick to comply, bringing his muzzle forward to lap right at it. A moment later, two of his fingers push your pussy to spread it and rub your sensitive walls.";
		say "     Looking to get his task over as quick as possible, Spike services you in a dutiful manner and actually doing a quite nice job despite the slight reluctance. Soon, you can't hold back anymore and just let your moans and grunts out at full blast, sounding like a bitch in heat as you shout that you're about to come. Spike takes that as a command to intensify his attack on your womanhood, the tip of his tongue circling around its edge in an incredibly nice teasing touch. Meanwhile, his fingers are inside you to the knuckles, feeling around and rubbing you in a very right way. You can't take much of this, and just a few moments later, you howl out loud, telling the world about the breathtaking orgasm just breaking over yourself. Femcum squirts out, bathing Spike's tongue and muzzle in fluids that are quickly licked up and swallowed by him.";
		WaitLineBreak;
		say "     You ride out your orgasm while the dobie drinks down your femcum and continues to lap at your sex until you pat his head and order him to stop. Pulling Spike back from your now sensitive sex, you tell him that he's proven himself - for now. As he stands before you, an expression of mixed relief and worry washes over his face, no doubt from Spike wondering what he might need to do next. You just stroke his muzzle in a vaguely possessive fashion, then rub the dobie's hair and tell him that good things come to those who prove themselves to you. 'I'll make sure to remember that,' he answers and brushes away a drop of femcum from the side of his muzzle, wiping it off on the ground.";
	else if libido of Spike > 40 and Libido of Spike < 60: [repeat of forced into it]
		say "     Stepping right into the young doberman's comfort zone, you don't give him even a second to react, simply snatching him by the loose collar and using that convenient handhold to wrench him even closer. Spike lets out a somewhat choked gasp at suddenly being man-handled, his eyes wide in fear as your merciless gaze studies his face. Telling him harshly that you want to make use of his mouth, you then physically push him down, making the anthro canine fall to his knees before you. A grin spreads over your face when you look at the trembling doberman on the ground, especially as he gulps nervously when you [SelfStripCrotch]. Using the fingers of one hand, you spread the folds of your sex and brush over the clit, telling him that he must service you till you're satisfied.";
		say "     'Please go slower this ti- oommmphh,' Spike starts to say, but you don't really care and just clamp your hand on the back of his head and force his muzzle against your crotch. He tenses, futilely pulling against your grip as he finds his nose wedged against the wet folds of your sex, with the scent of your arousal overwhelmingly strong as he huffs it with rapid, panicky breaths. Spike sputters and struggles, yet you keep the anthro canine tightly under control to allow his situation to fully sink in, then let go, chuckling a little as he pulls back and glances up at you in shock. Grinning at the young man, you remind Spike that he's yours to do with as you please and that he will service you, licking at your pussy until you're satisfied. He swallows visibly as he hears the tone of your voice, then gives a somewhat frightened nod.";
		WaitLineBreak;
		say "     Despite the fact that your canine plaything has now given up struggling, you grab the young man's head with both hands, getting a good grip as you begin to grind against his muzzle. His participation comes quicker this time, the anthro's tongue being brought to bear on your sex and slurping up the fluids of your arousal. Since he does like the taste, the young man quickly gets over his initial reluctance and attacks your sex with growing enthusiasm, the floppy length of his tongue slipping into your body and exploring it with wiggling movements. You keep humping against his muzzle even as he eats you out, some part of you enjoying the power you've got over your doggy playmate almost more than even the physical sensations.";
		say "     Used harshly as he is, Spike is panting hard against your crotch, huffing the scent of your sweaty arousal. Alexandra's son looks a bit cross-eyed as he does so, finding himself focusing on what his sensitive nose is taking in. It's fun to see what you can make the little gangster wannabe get used to, including grinding your clit against the top of his nose and inundating it in your female juices. Stopping your movements for a second and keeping his nose pressed against your crotch, you bend forward and tell the young man that he's about to get what he's meant for, then take up fucking yourself against his tongue and muzzle furious speed once more. Just a moment later, as he tenses up and his tongue curls in a very pleasurable way inside your pussy, you orgasm, a thick spurt of femcum splashing over his muzzle, followed by more and more right after. Spike pushes against you weakly as he is subjected to the indignity of getting drenched by your climax, futilely struggling against your firm grip and just increasing the pleasure of your climax with everything he does.";
		WaitLineBreak;
		say "     Between your high-pitched moans coming with each throb of femcum gushing onto your doggy toy, you call out what a good pet and bitch-boy he is, rubbing your dominance in hard. Soon, Spike's resistance falters and then stops entirely as he finally seems to accept what role you've given him. To test this, you pull the dobie's muzzle away from your crotch and command him to lick your fluids off his own muzzle, which he does with swipes of that long tongue of his. Grinning, you give the follow-up order to swallow, which Spike does with little more than a short whimper. Patting your doberman companion's head possessively, you keep praising him in a condescending tone, then demand that he cleans your crotch with his tongue. 'Y-yes boss,' the young man says in a subdued tone and gets to work, slowly lapping away at your crotch.";
		say "     You spend some further time having fun in teaching him the proper way to service you, making Spike re-do lick after lick of every part of your genitals, then eventually push him away from your crotch and casually tell him to clean himself up. He takes being manhandled like this without complaint, his gaze filled with just the right amount of trepidation at what you might do if he said anything.";

to say SpikeSex3: [oral on Spike]
	if libido of Spike is 0: [never done anything with Spike in subby position]
		say "     As you tell the young doberman that you want to suck his dick, [if lust of Spike is 0]his eyebrows rise and Spike pants out, 'Really? But you're the boss and -umh,' He stops as he realizes that he's almost starting to talk himself out a blowjob, snapping his muzzle shut and looking at you eagerly, with his tail wagging. [else]a grin spreads over Spike's muzzle. 'Oh yeah, want some of this dobie cock, don't you?' he starts to boast, then sees you raise your eyebrow at his antics and snaps his muzzle shut right quick, swallowing the next few words and just looking at you eagerly, with his tail wagging hard. [end if]You let it go with a chuckle and sink to a crouch in front of him, pulling down the zipper of his jeans. Rapidly pushing out of his sheath as it gets harder by the second, Spike's dickhead comes into view right away, as your canine companion is free-balling, ready as soon as his pants are open. Popping the button next, you wrench the jeans down to his knees in a quick pull, revealing the young man's furry crotch and swinging balls too.";
		say "     Spike pants audibly as you wrap your fingers around his hot shaft, one hand of his moving to rest on your shoulder and steady himself. You can feel the trembling of his hips from just how hard the anthro's tail is wagging and find yourself grinning almost without meaning to. It's certainly fun to have a very eager partner. Leaning forward and giving his tip a lick draws a pleased gasp from the doberman, followed by a huff as he forces himself to close his open muzzle and starts to breathe through his nose, trying so very hard not to show his youth and relative inexperience. 'Nnghh, oh god!' he whispers under his breath as you take his shaft into your mouth and suck on it hard, then play your tongue over it to trace all the little veins and details one by one. At the same time, one of your hands brushes up the inside of his legs, then cups the doberman's furry balls, gently rolling them between your fingers.";
		WaitLineBreak;
		say "     Soon starting to blow your canine playmate in earnest, you bob up and down on his cock, lips tightly wrapped around his erect manhood as you suck on it and slurp up the pre-cum he is leaking. Spike has a pleasant nutty taste to his pre that makes you want more, so you massage his balls and milk him for it, little spurts delivered right onto your tongue. 'Fuck yeah,' he gasps out loud, any attempt of controlling himself quickly forgotten in view of your teasing and stroking. You can't be quite sure about it, but you feel as if the volume of his pre-spurts is increasing as you push the young man's arousal to higher and higher levels. One thing is for sure though - you can literally feel his balls getting tighter as they churn to prepare a big load for rapid delivery.";
		say "     As much fun it is to wind the dobie boy up, you eventually relent to getting him where he needs to go and take out all the stops in blowing him, slurping that hot rod of his into your mouth and bobbing on it hard. The assault of oral pleasure draws a whole new level of response from Spike, who lets out a litany of, 'Oh yeah. YEAH! Fuck, fuccckkk! Fuck I'm close!' As he gets loud, you squeeze his balls a little and rub them between your fingers, which is enough to give the young dobie offspring the final push. With a needy growl coming out of the depths of his throat, the young man hammers his hips forward in a sudden thrust, only slowed by the swell of his knot bumping against your lips. He doesn't try to force it in, simply enjoying unloading thick spurts of cum right down your throat. Pulse by pulse, he fills your stomach with rich canine seed. Only when his orgasm starts to flag a little, its intensity petering out, do you pull back and take the next few shots on your tongue, getting a taste of Spike's cum.";
		WaitLineBreak;
		say "     'That was awesome,' the young doberman pants out exhaustedly, looking down at you with a smile as you pull off his shaft and flex your tongue to spread his flavor all over it. Then he pulls his pants back up and zips up, eager for more fun times to be had with you, or out on the streets.";
	else if libido of Spike > 0 and libido of Spike < 20: [joyful dobie]
		say "     Sliding an arm around the young doberman hips, you pull him against yourself and give him a naughty grin as you squeeze his ass. Spike's brows rise at the groping and his hands automatically start to touch your sides in turn. As he opens his muzzle to say something, you slurp the tip of his tongue into your mouth, playfully sucking at it for a second before you pull back and tell him that you want to have fun with your most trusted lieutenant. You keep praising him some more after that, stressing in a honest tone just how proud you're of his performance as your companion, and the young guy preens in the glory you shine upon him, his face soon dominated by a very wide and happy smile. Behind Spike's back, his slender tail is wagging up a storm and you let your fingers wander to it to rub the base, making his right paw reflexively scratch over the ground in pleasured response.";
		say "     Touching and stroking your armful of happy, increasingly horny dobie, you keep going until he soon asks, 'So, what do you wanna do, [SpikePlayerAdress]?' In reply, you move your hand down to rest on the bulge in his jeans and give it a squeeze, then say that you want to taste his dobie cock. 'Wow,' the young man says under his breath, still slightly amazed that you're taking the receiving end, being his leader and all. He looks so cute and eager that you just have to kiss him again, tongue-wrestling with Spike for a little while as he replies in kind. Eventually, you pull back from making out with a chuckle and sink to a crouch in front of him, pulling down the zipper of his jeans. Rapidly pushing out of his sheath as it gets harder by the second, Spike's dickhead comes into view right away, as your canine companion is free-balling, ready as soon as his pants are open. Popping the button next, you wrench the jeans down to his knees in a quick pull, revealing the young man's furry crotch and swinging balls too.";
		WaitLineBreak;
		say "     Spike pants audibly as you wrap your fingers around his hot shaft, one hand of his moving to rest on your shoulder and steady himself. You can feel the trembling of his hips from just how hard the anthro's tail is wagging and find yourself grinning almost without meaning to. It's certainly fun to have a very eager partner. Leaning forward and giving his tip a lick draws a pleased gasp from the doberman, followed by a huff as he forces himself to close his open muzzle and starts to breathe through his nose, trying so very hard not to show his youth and relative inexperience. 'Nnghh, oh god!' he whispers under his breath as you take his shaft into your mouth and suck on it hard, then play your tongue over it to trace all the little veins and details one by one. At the same time, one of your hands brushes up the inside of his legs, then cups the doberman's furry balls, gently rolling them between your fingers.";
		say "     Soon starting to blow your canine playmate in earnest, you bob up and down on his cock, lips tightly wrapped around his erect manhood as you suck on it and slurp up the pre-cum he is leaking. Spike has a pleasant nutty taste to his pre that makes you want more, so you massage his balls and milk him for it, little spurts delivered right onto your tongue. 'Fuck yeah,' he gasps out loud, any attempt of controlling himself quickly forgotten in view of your teasing and stroking. You can't be quite sure about it, but you feel as if the volume of his pre-spurts is increasing as you push the young man's arousal to higher and higher levels. One thing is for sure though - you can literally feel his balls getting tighter as they churn to prepare a big load for rapid delivery.";
		WaitLineBreak;
		say "     As much fun it is to wind the dobie boy up, you eventually relent to getting him where he needs to go and take out all the stops in blowing him, slurping that hot rod of his into your mouth and bobbing on it hard. The assault of oral pleasure draws a whole new level of response from Spike, who lets out a litany of, 'Oh yeah. YEAH! Fuck, fuccckkk! Fuck I'm close!' As he gets loud, you squeeze his balls a little and rub them between your fingers, which is enough to give Alexandra's offspring the final push. With a needy growl coming out of the depths of his throat, the young man hammers his hips forward in a sudden thrust, only slowed by the swell of his knot bumping against your lips. He doesn't try to force it in, simply enjoying unloading thick spurts of cum right down your throat. Pulse by pulse, he fills your stomach with rich canine seed. Only when his orgasm starts to flag a little, its intensity petering out, do you pull back and take the next few shots on your tongue, getting a taste of Spike's cum.";
		say "     'That was awesome,' the young doberman pants out exhaustedly, looking down at you with a smile as you pull off his shaft and flex your tongue to spread his flavor all over it. Then he pulls his pants back up and zips them, eager for more fun times to be had with you, or out on the streets.";
	else if libido of Spike > 20 and libido of Spike < 40: [dutiful dobie]
		say "     Stepping up before the young man, hands on your hips, you let your eyes roam up and down over him with a serious expression on your face. Standing at attention, the nervous-looking dobie tenses a little more with each moment that you just keep staring, until you finally grin at him and say that it is time for him to show his loyalty to you again. Spike's eyebrows rise a little at the lewd undertone of your voice, then asks, 'Uhm, so what do you want to do, [SpikePlayerAdress]?' With a chuckle, you reply that he should push down his pants. There is a tiny moment of hesitation before Spike reacts, moving to comply quickly afterwards and undoing his button and zipper before pushing the jeans down over the firm curve of his ass. This bares the anthro dobie's relatively slender hips and his crotch, revealing a furry pair of balls and canine sheath. Spike is slightly surprised at you stepping up next, gasping out loud as you cup his furry balls with one hand, giving them a noticeable squeeze and rolling the sensitive orbs between your fingers.";
		say "     Your stroking leads to Spike's cock rapidly pushing out of his sheath, filling out into a quite well-sized red rocket of canine manhood. Despite the fact that he is still confused about being man-handled into getting a blowjob, the anthro dobie's body knows exactly how to react, his tail wagging in joy all of its own. Spike pants audibly as you wrap your fingers around his hot shaft, one hand of his moving to rest on your shoulder and steady himself. You can feel the trembling of his hips from just how hard the anthro's tail is wagging and find yourself chuckling at the conflicting emotions you must be giving your play-pet. It's certainly fun to have a sexy doggy to do whatever you want with. Leaning forward and giving his tip a lick draws a pleased gasp from the doberman, followed by a huff as he forces himself to close his open muzzle and starts to breathe through his nose, trying so very hard not to show his youth and relative inexperience. 'Nnghh, oh god!' he whispers under his breath as you take his shaft into your mouth and suck on it hard, then play your tongue over it to trace all the little veins and details one by one.";
		WaitLineBreak;
		say "     Soon starting to blow your canine playmate in earnest, you bob up and down on his cock, lips tightly wrapped around his erect manhood as you suck on it and slurp up the pre-cum he is leaking. Spike has a pleasant nutty taste to his pre that makes you want more, so you massage his balls and milk him for it, little spurts delivered right onto your tongue. 'Fuck yeah,' he gasps out loud, any attempt of controlling himself quickly forgotten in view of your teasing and stroking. You can't be quite sure about it, but you feel as if the volume of his pre-spurts is increasing as you push the young man's arousal to higher and higher levels. One thing is for sure though - you can literally feel his balls getting tighter as they churn to prepare a big load for rapid delivery.";
		say "     As much fun it is to wind the dobie boy up, you eventually relent to getting him where he needs to go and take out all the stops in blowing him, slurping that hot rod of his into your mouth and bobbing on it hard. The assault of oral pleasure draws a whole new level of response from Spike, who lets out a litany of, 'Oh yeah. YEAH! Fuck, fuccckkk! Fuck I'm close!' As he gets loud, you squeeze his balls a little and rub them between your fingers, which is enough to give Alexandra's offspring the final push. With a needy growl coming out of the depths of his throat, the young man hammers his hips forward in a sudden thrust, only slowed by the swell of his knot bumping against your lips. He doesn't try to force it in, simply enjoying unloading thick spurts of cum right down your throat. Pulse by pulse, he fills your stomach with rich canine seed. Only when his orgasm starts to flag a little, its intensity petering out, do you pull back and take the next few shots on your tongue, getting a taste of Spike's cum.";
		WaitLineBreak;
		say "     'Wow! That-that was awesome,' the young doberman pants out exhaustedly, looking down at you with a confused smile as you pull off his shaft and flex your tongue to spread his flavor all over it. Then he pulls his pants back up and zips them, getting ready for further adventures with you, or out on the streets.";
	else if libido of Spike > 40 and Libido of Spike < 60: [forced dobie]
		say "     Stepping right into the young doberman's comfort zone, you don't give him even a second to react, simply snatching him by the loose collar and using that convenient handhold to wrench him even closer. Spike lets out a somewhat choked gasp at suddenly being man-handled, his eyes wide in fear as your merciless gaze studies his face. Telling him harshly that you want his dick, you leave the dobie standing with a perplexed look on his face as you sink down into a crotch right before him. With a grin on your face, you pop the button of his jeans, then wrench them down over the tight curve of his ass, baring the young man's body down to the knees. 'What the - nnnghh!' he gasps out as you cup his furry balls with one hand, giving them a noticeable squeeze and rolling the sensitive orbs between your fingers. Your stroking leads to Spike's cock rapidly pushing out of his sheath despite his clear resistance, filling out into a quite well-sized red rocket of canine manhood.";
		say "     Being slightly afraid due to being man-handled, even if he's getting a blowjob, the anthro dobie's body tenses in your grasp. Spike pants audibly as you wrap your fingers around his hot shaft, one hand of his moving to rest on your shoulder and steady himself. You can feel some trembling of his hips from the anthro's tail wagging on its own despite anything he can do and find yourself chuckling at the conflicting emotions you must be giving your play-pet. It's certainly fun to have a sexy doggy to do whatever you want with. Leaning forward and giving his tip a lick draws a pleased gasp from the doberman, followed by a huff as he forces himself to close his open muzzle and starts to breathe through his nose, trying so very hard not to show his youth and relative inexperience. The young man's eyes clench shut tightly, most likely from him imagining being somewhere else right now. 'Nnghh, oh god!' he whispers under his breath as you take his shaft into your mouth and suck on it hard, then play your tongue over it to trace all the little veins and details one by one.";
		WaitLineBreak;
		say "     Soon starting to blow your canine playmate in earnest, you bob up and down on his cock, lips tightly wrapped around his erect manhood as you suck on it and slurp up the pre-cum he is leaking. Spike has a pleasant nutty taste to his pre that makes you want more, so you massage his balls and milk him for it, little spurts delivered right onto your tongue. 'Fucking hell,' he gasps out loud, any attempt of controlling himself quickly forgotten in view of your teasing and stroking. You can't be quite sure about it, but you feel as if the volume of his pre-spurts is increasing as you push the young man's arousal to higher and higher levels. One thing is for sure though - you can literally feel his balls getting tighter as they churn to prepare a big load for rapid delivery.";
		say "     As much fun it is to wind the dobie boy up, you eventually decide that you want to milk him, taking out all the stops. Slurping that hot rod of his into your mouth and bobbing on it hard, the assault of oral pleasure draws a whole new level of response from Spike, who lets out a litany of, 'Finish me! Please! Fuccckkk, you bastard! Nnnghh, so close!' As he gets loud, you squeeze his balls a little and rub them between your fingers, which is enough to give Alexandra's offspring the final push. With a needy growl coming out of the depths of his throat, the young man hammers his hips forward in a sudden thrust, only slowed by the swell of his knot bumping against your lips. In mindless lust, he tries to force it in too, but you wrap your fingers around the swelling bulge to prevent that, even while he unloads thick spurts of cum right down your throat. Pulse by pulse, Spike fills your stomach with rich canine seed. Only when his orgasm starts to flag a little, its intensity petering out, do you pull back and take the next few shots on your tongue, getting a taste of dobie cum.";
		WaitLineBreak;
		say "     'Done using me now?' the young doberman pants out in an exhausted and somewhat defensive tone, looking down at you with a frown. You stand up wordlessly, grab the back of his neck and pulling his head back, then grunt for him to open up his muzzle. As he does so, you spit a mouthful of his own cum onto the trembling young man's tongue and order him to swallow, which he does begrudgingly. Commenting with a chuckle about how nice of a cum-dump he's becoming, you wave him trying to say something afterwards off with casual disinterest, telling him to clean himself up and get ready to serve as your companion once more.";
	if Lust of Spike is 0:
		now Lust of Spike is 1;
	PlayerEat 10;

to say SpikeSex4: [cherry popping]
	if libido of Spike > 0 and libido of Spike < 20: [joyful dobie]
		say "     Sliding an arm around the young doberman hips, you pull him against yourself and give him a naughty grin as you squeeze his ass. Spike's brows rise at the groping and his hands automatically start to touch your sides in turn. As he opens his muzzle to say something, you slurp the tip of his tongue into your mouth, playfully sucking at it for a second before you pull back and tell him that you want to have fun with your most trusted lieutenant. You keep praising him some more after that, stressing in a honest tone just how proud you're of his performance as your companion, and the young guy preens in the glory you shine upon him, his face soon dominated by a very wide and happy smile. Behind Spike's back, his slender tail is wagging up a storm and you let your fingers wander to it to rub the base, making his right paw reflexively scratch over the ground in pleasured response.";
		say "     Touching and stroking your armful of happy, increasingly horny dobie, you keep going until he soon asks, 'So, what do you wanna do, [SpikePlayerAdress]?' In reply, you slide your hand lower from where it was gripping his tail, pushing your fingers under the belt-line of his low-rising jeans. With no underwear in the way, you cup the firm curve of his buttocks and caress Spike's rear end, drawing a pleased little sigh from him. Soon, you proceed to dipping your fingers into the crack between his cheeks, making the doberman's eyes go wide. 'H-Hey, that's - um, I'm not sure if I'm ready to... nnnghhh - fuuuck!' Spike's hesitant first words lead over to a breathless gasp as you rub over his pucker and slip the tip of your finger in, smiling broadly as he pants with his tongue hanging out and a wondrous expression on his face. You can feel him stiffen in response to rubbing his prostate, his cock straining against the material of his pants.";
		WaitLineBreak;
		say "     'Wow,' the young man says under his breath, then looks into your eyes before somewhat shame-facedly asking, 'Can - can you do that again? I'm no fag, but that was strangely nice.' Happy to open up Spike's horizons, you teasingly brush your fingers over his pucker, stroking and touching his sensitive hole. Panting through his open mouth, tongue hanging out to the side, he clearly enjoys it and has his eyes half-closed as he focuses on the sensations you're giving him. Leaning into your embrace with his tail wagging eagerly, the cute canine wakes the desire in you to kiss him again, which you do after pulling his muzzle to your face. Tongue-wrestling with Spike as he happily returns your affections, you lose track of time for a little while, just enjoying the intimacy of touching and making out with your companion. Before long, your [cock of player] shaft is rock hard, standing proudly erect as the dobie grinds against you after another rub over his tailstar.";
		say "     Pulling away a little from the dobie, you stroke the fur at the back of his neck affectionately. Then you give the tip of his nose a quick peck and say that he's worthy for the next step to become your close confidant. After all, what could be closer than sharing one's bed? Eyes full of lust and hero worship, Spike nods in assent without even a second of further hesitation. His hands move towards his hips, then pull at his belt, soon undoing its clasp with eager haste. Then the doberman just shoves his jeans down, followed by kicking them off to the side. Standing before you, naked from the waist down, you can see that he's also hard and erect, his red rocket having a glistening drop of pre at its very tip. Swiping the pre-cum up with your finger, you hold it out to Spike with a provocative grin that only grows wider as he leans in to lick it off.";
		WaitLineBreak;
		say "     Fingers sliding under the edge of his white mesh shirt, you quickly pull the piece of cloth off Spike and drop it, then let your eyes roam over the now fully nude body of your companion. His slender yet toned form literally trembles in anticipation as he stands ready to follow your every direction. Unwilling to wait even a second longer, you make quick work of stripping down yourself, then step over the little pile of your discarded gear to draw Spike against you. His short fur feels soft and warm against your skin as you enfold him in a tight embrace and share a fun little bit of groping with each other, culminating in a request for him to get on the ground. Spike lets go after another moment or two, then crouches down and braces himself with one arm as he sits on the floor and lays back. You join him just a moment later, coming to kneel between the toned legs of the anthro canine.";
		say "     'Can you, uhm, go slow? I'm new to... butt stuff,' Spike says to you from where he lays on the ground. He's trying his best to sound butch and confident, but is unable to fully hide his nervousness about giving up his virginity to you. His innocent vulnerability makes your lust spike and you lay a hand possessively on his chest as you say that you take very good care of your partners. Gathering some spit, you let it drip off the tip of your tongue to land on your [cock of player] erection, stroking the shaft to spread the improvised lube. After that, you reach down to lift Spike's legs and put them in a nice spread-open position before telling tell him to take over from you. The dobie does so readily enough, then nods to you with a little smile and says in a brave tone, 'I'm ready.' Bending your cock down to line up with the young man's pucker, you slowly press forward against the resistance of the tight opening with increasing force until the head pops in, accompanied by grunts in both of your voices.";
		WaitLineBreak;
		say "     'Fuuuckk,' Spike groans, his hole reflexively contracting to squeeze your dickhead like a vise. The incredible sensation that creates has your eyes rolling back in your head and you can't help but pant out loud, yet when the state of tension of his muscles persists for a whole minute, you shake out of the bliss and focus back on your companion. Meeting his eyes, you jokingly tell him that there's much more to come than just an inch or two, if he will only release your dick. Shame-faced in his inexperience, Spike sputters for a second or two, then replies, 'Oh! Er- yeah, I'll do that then.' He pants audibly and forces his clenched fists to relax, soon placing both hands on the ground, fingers outstretched. At the same time, the young man's asshole loosens its death-grip on your cock, allowing you to start up small movements in and out.";
		say "     Each little rub of your tip against the sensitive pleasure-spot of Spike's prostate draws some noise from him - but now they're moans instead of winces. The dobie looks up at you in open amazement of just how good you make him feel. Moving a hand to stroke over his flat stomach and the lightly muscled chest as it heaves with deep breaths, you start pushing deeper into your companion, exploring the sensual pleasure his tight passage promises. Eager as the dobie is, he readily takes your advice on when to flex his inner muscles, squeezing and milking your cock inside his ass. At the same time, his own knotted cock stands proudly erect from all the anal stimulation, swaying back and forth with the continued thrusts into him. As your shared pleasure mounts, your love-making becomes increasingly intense, with deeper, ever faster penetrations and Spike hiking up his hips to meet them.";
		WaitLineBreak;
		say "     The sound of moans and your own crotch meeting his buttocks in rhythmic slaps is joined by Spike's dick smacking the flat of his abs every time you hammer into him as hard as you are. Looking down at the swinging piece of man-meat, you can see that he's leaked enough pre by now to create sticky strings between the tip of his erection and the increasingly matted fur under Spike's belly button. Clearly, your doggie boy is enjoying the wild ride he's getting. A grin spreads over your lips as you look him in the eye and tell Spike that he's your special little friend now, a real man you can trust with anything, and to underline your words, you take hold of his cock and start jerking the young man. Aligning your hand movements with the thrusts of your cock, you tell him how good his ass feels around you. Getting physical pleasure at the same time as the acknowledgement he so clearly craves pushes Spike to the next level, whimpering like a bitch in heat as he gives himself to you fully and with all his self.";
		say "     Feeling that tight, formerly virgin ass around your cock and the hot rod of Spike's erection in your hand, you're driven wild as he calls out the fateful words, 'I'm yours [SpikePlayerAdress]! You feel so good inside me!' Lust flares hotly inside you, making any and all restraint fall away as you proceed to ravage Spike's ass, pulling out all the way then slamming back inside in a single thrust, once, twice, then three times. And as your balls touch his ass this time, the over-sexed young man finally is at the end of his endurance: Barking out unintelligible sounds of pleasure, Spike thrashes under you and his cock starts to erupt with cum that splatters his heaving chest in long streaks. His inner muscles quiver and clench at the same time as the rest of the anthro male, creating the sensation of being jerked off inside his hole, which pushes you over the edge right along with him. Groaning loudly, you grind against his ass and erupt into his innermost depths, laying claim to the athletic canine by breeding his ass thoroughly.";
		WaitLineBreak;
		say "     As both of you slowly start to wind down from the incredible rush of orgasm, reason starts to re-emerge behind the abating lust. 'You really liked fucking me, didn't you? That was some finish!' the young doberman pants out exhaustedly, his ears perking up as he waits for your reply. It almost seems like he wants to make sure that your praise before wasn't just a heat of the moment thing, being still unsure about his self-worth. Looking down at the young man, sweaty and stretched out on the ground before you, his cum splattered over his own chest, you grin and reply that he's a proper little stud with an amazingly tight hole, just the man you want by your side. The anthro dobie beams happily as you pat his chest and go on a little about how nice it felt when he flexed around you, then lean in and plant a kiss on his muzzle. After a little while of banter and caresses, you eventually pull out of your young companion and stand up, holding out your hand to help him get off the ground too.";
		say "     As Spike then goes to pick up his jeans, you watch his buttocks flex and move, a little trickle of your cum visible between them. The dobie starts to get dressed, stepping into the pants and gingerly working them up over his slightly sore butt. 'Man, you really did a number on my ass,' he says half-jokingly, looking at you as he starts pulling up his zipper. 'I don't think I'll be able to sit down anytime soon.' He walks to where his mesh shirt is lying on the ground and winces as he tries to bend over to pick it up, so you step in and take it, then pull it over his head, helping your companion to get dressed. As Spike tucks the cloth into place, you proceed to affectionately rub the back of his neck and then his cheek, finally thanking him for letting you make him your special friend and giving his ass up to you. 'I figured you were right about being a team as we make this city ours, so why not become your butt-brother, hah! Much more fun than a blood oath for sure!' Tousling his green hair, you grin at the dobie and he steps up to his usual position by your right shoulder, ready to follow you to new adventures.";
		now libido of Spike is 2; [anal virginity taken (nicely)]
	else if libido of Spike > 20 and libido of Spike < 40: [dutiful dobie]
		say "     Stepping up before the young man, hands on your hips, you let your eyes roam up and down over him with a serious expression on your face. Standing at attention, the nervous-looking dobie tenses a little more with each moment that you just keep staring, until you finally grin at him and say that it is time for him to show his loyalty to you again. Spike's eyebrows rise a little at the lewd undertone of your voice, then asks, 'Uhm, so what do you want to do, [SpikePlayerAdress]?' With a chuckle, you reply that he should push down his pants. There is a tiny moment of hesitation before Spike reacts, moving to comply quickly afterwards and undoing his button and zipper before pushing the jeans down over the firm curve of his ass. This bares the anthro dobie's relatively slender hips and his crotch, revealing a furry pair of balls and canine sheath.";
		say "     As you order him to get on all fours and raise his ass, Spike is visibly shocked and tries to back away, but that attempt is brought short by the jeans still around his ankles. 'Listen, I - I'm fine with the other things we've done, but-' he starts to stammer, only to be shut up as you give him a hard stare. The young doberman visibly swallows as he realizes that accepting you as his boss means that he'll have to follow all of your commands, no matter what he may think of them. Thankfully, he still remembers the speech you gave him before, so this time all it takes is clearing your throat for him to submit and start moving to follow orders. Pulling his paws out of the bunched-up pants around his ankles, the young man folds them and lays down the package to kneel on. Then he gets down on all fours and glances back at you over his shoulder, maybe hoping that this could be just a test to check his resolve and obedience. His expression falls a little as he sees that you're getting undressed.";
		WaitLineBreak;
		say "     Soon stripping off the last article of clothing, you step up to the dobie in all of your naked glory, the hard [cock of player] shaft between your legs swinging with every step. Looking down at your canine companion in appreciation of his lithe form and firm buttocks, the fires of lust flare up a little brighter, making you want to be inside him right away. As you get into position behind Spike, you take note of the fact that his tail is tucked down between his buttocks in a subconscious sign of discomfort, even though he might have relented to your demands. This makes you soften your approach at least a little bit, not wanting to scar your fun little boy-toy too much after all. Placing your hands on his buttocks, you give the dobie some firm but gentle caresses, then slide them underneath and feel for his sheath.";
		say "     Spike isn't hard at first, but with one hand cupping his furry balls and rolling them between your fingers and the other stroking up and down over the sheath and even slipping a finger inside, there's not long to wait before he can't help but grow erect. Wrapping your fingers around the canine's shaft, you let your other hand roam further up, feeling his chest and playing with the young man's nipples. Bent over him as you are, it isn't too hard to move your head next to his pointy ear and whisper into them that he seems to like being your obedient doggy after all, underlining the words with caresses and more stroking. 'Yes, [SpikePlayerAdress],' Spike pants out in a fairly submissive tone, with little of his earlier reluctance remaining now that you've gotten him aroused and more ready for actual fun. Pulling back, you glance at where his tail is just loosely hanging down now, easily tugged up and to the side, after which you give its base a pleasant little rub.";
		WaitLineBreak;
		say "     With the target of your lust now in sight, your dick throbs as you imagine the tight chute around it. Spike's tail-star is a little pink thing, a wrinkled ring between his buttocks that clearly hasn't ever been taken. Feeling playful about his first time, you go back to stroking the doberman's own cock some more, holding out your other hand to catch any pre he's leaking and even edging him so far as to get little spurts of pre before allowing him to cool down some more. Dipping two fingers into the small handful of slick fluid milked from your boy-toy, you brush your digits over his hole teasingly, circling around and around mixed with little almost-pushes. When you eventually slip him your middle finger, it is a sudden move, putting you knuckle deep before he can even realize that this isn't another feint at penetration. 'Nnnghh, fuck!' Spike groans as his hole tightens into a death-grip around your digit and you don't try to move it, just letting him get used to the feeling.";
		say "     To distract the anthro dobie from the momentary pain of his asshole being fingered, you use your thumb to massage his pucker from the outside some more and also stroke his cock, both of which work wonders in making Spike think of other things. This allows you to push your index-finger in too in another surprise move, starting to stretch and open your bottom in training slowly but surely as you soon begin working them in and out of him. It still takes a fair bit patience and a few gobs of spit to lube his entrance well enough, but eventually you feel that he's ready for your cock. Spike inhales a gasping breath as you tell him this with a grin on your face, and after a little coaching, you get him to call out, 'Fuck me [SpikePlayerAdress], I- I need to feel you inside me.' Playfully slapping your erection onto his buttocks left and right, you line it up with the tempting, slickened hole between them, then start to push into your little dobie.";
		WaitLineBreak;
		say "     Spike's asshole is tight as only a virgin man can be, gripping you firmly from all sides without being too restrictive. Prepping him thoroughly definitively pays off now, as you can sink your cock into him in a smooth move, slowly but surely and accompanied by your companion's whimpers and moans. Finally feeling your balls against his ass, you give a victorious grunt and grope his buttocks some more as you simply enjoy the sight of having the young man impaled on your cock all the way. After a little while of just resting inside him and letting Spike get used to being your cock-sleeve, you start pulling back, drawing more moans and pants from him as you slide against his inner walls, followed by another slow push inside. Working up to a sawing your dick in and out of the young man, you slowly increase the tempo and are soon  playfully timing your thrusts with his moans of pleasure, hammering into Spike as he is just breathing out and making him go light-headed as you drive the last remaining air from his lungs.";
		say "     Breathless, horny and oh so very ply-able, your dobie can properly be called a sex toy by now, pushed long past any hesitation or even intelligible speech. As such, you don't hesitate to become more extreme when the mood strikes you, for example pulling out completely to look at his stretched, somewhat reddening pucker gaping in apparent confusion, then slamming in balls deep just as it starts to pull closed again. With a whorish moan that would fit a needy bitch in heat, the dobie takes everything you can dish out and even raises his ass higher, presenting himself for deeper penetration. With all stops falling by the wayside, you use him as you see fit in a wild rush of hard fucking, stoking the fires of your lust ever higher. Then suddenly, there is an animalistic howl of pleasure as Spike starts to tremble and trash underneath you, his fuckhole clenching tight around your cock as his own knotted manhood starts to blast out sticky strings of cum.";
		WaitLineBreak;
		say "     With the music of Spike's moans in your ears and feeling the sudden vice-like tightness of his asshole, you're not far behind him in reaching your own climax. Forcefully thrusting into his innermost depths, you grind against the smooth fur of the dobie's buttocks as you blast into him hard, claiming the young man as your own by painting his insides white. Spike's inner muscles keep flexing while you both are coming, literally milking more seed out of you and prolonging the orgasm quite nicely. By the time your further spurts of cum eventually ebb off, the both of you are quite exhausted and you sink down to rest on your partner's back to rest for a little while, which makes his trembling arms buckle and lands the two of you sprawled on the ground, still connected by your erection and with your arms loosely wrapped around his chest. For a little while, you just lay there like that, breathing heavily to re-gain your breath and enjoying the afterglow.";
		say "     As the rush of sex is over and the last embers of lust die down, Spike soon starts to become a bit unruly, apparently feeling the itch and burn of an overtaxed hole now. He gingerly pushes off your arm from where it lays over his side, then slowly pulls his ass away from your hips, wincing as the girth of your softening cock slides out of his pucker. The young man reaches behind himself hesitantly, then feels around with a light touch, apparently checking the state of his freshly de-virginized hole. 'Man, you really did a number on my ass. I don't think I'll be sitting down anytime soon,' he says with a wince, then gulps a little as he sees your answering grin that promises more pounding in the future. You don't feel a need to comment any more than that, simply lying back in relaxation as you watch him get up slowly, then curse a little as he realizes that part of his load soaked into the jeans he was kneeling on. After watching him get dressed, you eventually rise from the ground yourself and prepare yourself for more adventures out in the city.";
		now libido of Spike is 22; [anal virginity taken (middling, wild)]
	else if libido of Spike > 40 and Libido of Spike < 60: [forced dobie]
		say "     Stepping right into the young doberman's comfort zone, you don't give him even a second to react, simply snatching him by the loose collar and using that convenient handhold to wrench him even closer. Spike lets out a somewhat choked gasp at suddenly being man-handled, his eyes wide in fear as your merciless gaze studies his face. Telling him harshly it's about time that he puts out for you brings a panicked look to his eyes. You've got little doubt that he'd whimper and beg for you not to do this, but as you're not in the mood for push-back from your soon to be broken-in bitch, you just clamp your fingers around his muzzle and keep it tightly shut so he can do little more than whine and huff through his nose. Gruffly telling him that he's yours and he'd do well to remember that, you then give the doberman a harsh shove that has him falling to the ground, barely catching himself from face-planting on it.";
		say "     With a merciless grin on your face, you pounce on him before he has got any chance to re-orient himself, pushing down on the middle of his back with your knee and pinning him to the ground while your hands reach for his jeans. Harshly wrenching on the pants to get them over the curve of his buttocks, they're shoved out of the way a second later, revealing the tight ass of your abused companion. An open-handed slap of his furry cheeks makes the young man thrash weakly against you in a futile attempt to free himself. 'God, that stings!' he groans against the ground, which you answer with another bit of spanking, telling him that you want him to stay in this position and keep down the whining. After a few more hits to drive your point home, you ask Spike if he understands, and the young man gives a pained nod. Testing his seeming submission, you lift your knee a little and are well satisfied in that the anthro stays as he is, ass raised high and presenting for fucking.";
		WaitLineBreak;
		say "     Moving behind the doberman, you quickly pull out your cock and slap the [cock of player] shaft left and right on his curving buttocks. Spike's tail is clenched between those, at least until you pull it up in a sharp tug, then use it as a handhold as you grind against his crack. Quiet grunts come from him as the tail-pulling pains Spike, not that you care a bit about that. Gathering a big glob of saliva, you spit at his hole and spread the fluid around with the tip of your erection a little, then line yourself up with his virgin passage. The tension between the doberman and yourself rises as you plant your hands on his hips and take a tight grip, followed by a brutal thrust into his tight hole. As tight and clenched as he may be, the young man's pucker is no match against your steel-hard rod, plunging into him like a hot knife into butter. There just is no way he could keep quiet through this, and a hoarse scream leaves Spike's lips as you take his virginity from him by force.";
		say "     Your unwilling sex-toy certainly has a sweet ass on him, tightly gripping the sides of your shaft as you bottom out inside him. He's almost too tight, far from having the more accommodating chute of a more experienced partner, but you're in no mood to take things slow. Slapping his buttocks once more and railing at him about relaxing his muscles, you thrust in and out in an unrelenting tempo. Grim amusement plays over your lips as you watch his skin clinging tightly to your cock on each pull out, followed by the next push inside that draws another gasp from your helpless partner. Breaking him in like this forces your boy-toy to learn the ropes quickly unless he wants his ass torn up, and so far Spike's doing a fairly nice job of it, with only one or two painful mistakes in which he didn't loosen his muscles quickly enough.";
		WaitLineBreak;
		say "     Despite the harsh treatment and you just taking what pleasure you want from his gripping asshole, the stimulation of Spike's prostate isn't something the young man can deny. He may whimper and groan as you force your dick into his hole again and again, yet somewhere in between, there's a shocked moan or two too and reaching beneath him, your questing fingers find that his canine cock has pushed out of its sheath. Squeezing his erection sharply, you laugh and comment that it can't be too bad if he's hard from being fucked, then demand for him to beg you for more sex. You do indeed get that, as Spike gasps out between groans, 'Fuck me! Take me [SpikePlayerAdress]! *Nnnnghhhh* Fuck my ass!' Going back to harsh thrusts with your hands on his hips after that, you rail your little bitch-boy good, hammering into him faster and faster until you can barely contain your lust anymore. Then finally, you slam into him one last time and erupt into his depth, flooding the young man with your virile cum and claiming his ass as yours.";
		say "     You stay on top of Spike for long enough that your spurts of cum eventually ebb off and then cease, then wrench your shaft out of his hole with little regard to the sore state of his pucker. With the pained gurgle of the dobie in your ears, you eagerly take in your handiwork: His tail-star is far from the tight little button it once was, instead showing as a reddened ring that only slowly pulls closed again. Even as it does so, at some point the movement slows down and comes to a stop, leaving a tiny bit of a gape behind, just enough for the creamy white cum you bred him with to leak out. You've definitively left a lasting mark on Spike, who just lies where you left him, exhausted and sore, while you grab your gear and get dressed again. Not really paying him too much attention while you get dressed, you see him look down in shame as he pulls his pants on a little while later, gingerly pulling it over his aching ass.";
		now libido of Spike is 42; [anal virginity taken (brutally)]
	now AnalVirgin of Spike is false;
	add "Spike" to AnalVirginitiesTaken of player;
	if Lust of Spike is 0:
		now Lust of Spike is 1;

to say SpikeSex5: [Spike fucks player pussy]
	say "     A";

to say SpikeSex6: [Spike fucks player ass]
	say "     A";


Spike ends here.

[ Idea for Start of Romance Path: ]
[ Event where Alexandra berates Spike for leaving her pack and running around outside with the player, some shouting, her eventually going "So you think you mean anything to <player> other than being a fuckhole? Dream on boy!" - player then being able to just stay out of it, defend Spike and say that he's a good right hand man, or draw him close and kiss him, saying that he's more than just a battle brother to them - making Spike thrilled and Alexandra grumpy]
