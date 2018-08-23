Version 1 of Seraphis by Vinickus begins here.
[Version 1 - new npc]

[ SeraphisRelationship                                       ]
[   0: not met                                               ]
[ 100: met, refused                                          ]

[ hp of Seraphis                                             ]
[   1-15: Seraphis is dominant one.                                     ]
[   16-30: Seraphis is submissive one.                            ]
[   50-60: Seraphis was abandoned at some point, and broken by various other horny beasts in the plains.                              ]
[   50: Seraphis was left.]
[   61: Seraphis is pleased with the player character, but mostly neutral towards them sexually.]

[ libido of Seraphis                                         ]
[   0: anal virgin                                           ]
[   1: player fucked him                                     ]

Section 1 - Basic Setup


Seraphis is a man.
The description of Seraphis is "[SeraphisDesc]".
The conversation of Seraphis is { "<Hello.>"}.
The scent of Seraphis is "     He radiates a strong, equine musk."
SeraphisRelationship is a number that varies.
SeraphisContent is a number that varies. [Determines if Seraphis will let the player through the gate.]
MarkedSeraphisCum is a number that varies. [Determines if the player has been covered/marked by Seraphis's potent seed.]
ConclaveKnowledge is a number that varies. [Determines if the Conclave knows of the player.]
PlayerInformed is a number that varies. [Determines if the player knows how Seraphis was dosed.]
[Seraphis is in Slaver Village Gate.]
SeraphisNeedy is a number that varies. [Helps differentiate the two dominant Seraphis scenes for this event.]

Section 2 - Seraphis Events

Conflict within the Plains is a situation. The level of Conflict within the Plains is 6.
The sarea of Conflict within the Plains is "Plains".
when play begins:
	add Conflict within the Plains to badspots of guy;
	add Conflict within the Plains to badspots of furry;

if (cocks of player < 1) and (cunts of player <= 1): [All scenes so far are based around the player character having a dick.]
	say "     You spot some suspicious figures in the distance, and deciding it's best to avoid such oddities, you turn back from where you came.";
	now Conflict within the Plains is resolved;

Instead of resolving a Conflict within the Plains:
	if HP of Seraphis is 0: [First interaction]
		say "     Moving through the plains rarely brings much of interest to your eyes, but as you don't have much else to do during your travel through the grasses, you let your eyes wander far and wide. Surprisingly, you notice a glint of light off to the side. As you focus your gaze that way, it repeats again, and keeps repeating in irregular intervals, drawing your attention to what might be reflecting [if daytimer is day]sun[else]moon[end if]light out here. The source definitely seems to be on the move, and after studying another half-dozen flashes, you manage to pin down the direction and speed of your curiosity. Your drive to learn what the object is outweighs any wariness within your mind, so you set out to close the distance.";
		say "     It takes a few minutes of running through the grass to begin making out any details at all, but eventually you do manage to learn that it isn't one source of reflected light, but three, moving from right to left in the intermediate distance. After another minute or two more of further running, you're finally close enough to make out what's before you: Three angry, gorilla-like beings in metallic armor that are chasing a centaur. Before your very eyes, they drive him into a field of crumbling ruins and pen him in against a wall blocking any further flight. The situation looks rather risky, as the conflict of whoever they are might splash over on you. It might just be a good idea to gain some distance before any of them notice you.";
		say "     [bold type]It looks rather risky, maybe leaving and coming back another time would be for the best, but then you might miss something. Do you run or stay?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Stay and see what's happening.";
		say "     ([link]N[as]y[end link]) - Run, run, and keep running in whatever direction isn't this one.";
		if player consents:
			WaitLineBreak;
			say "     One centaur is completely surrounded by three armored, almost gorilla looking individuals. Their armor covers them from head to toe, leaving no possible way to see a single bit of skin, hair, or any other identifying factor. All you can go off of is the general shape and posture of the three forms. They stand hunched over, their arms stretching down to their knees, fists curled up into a metal ball, the arms obviously quite large, considering the sheer diameter of the armor around the appendages. All the metal covering their bodies is also entirely based around straight plates and angled connections between them. The helmets they wear are square in the back half, and around where one would assume the ears are, they angle at forty-five degrees towards the middle of the entities['] faces. It all gives off an almost rugged science fiction appearance. And the all metal look easily reflects any light directed at it, explaining the light glints.";
			say "     With these threatening forms before you, your muscles tense up, either from aggression towards these hostile figures, worry about yourself, or sheer outrage at how they're treating such a majestic centaur. His hair short, buzz cuts running across the sides, a bit of hair barely making it to an inch on top, all while his body, even from the back, is well sculpted and hard to look away from, his equine half matching the human half in lithe, powerful muscle. He also doesn't look to be wearing a thing over any part of his body, though that could be because he was stripped by the beasts crowding in on him. Even with him looking to be in danger, and being so dashing, should you get in trouble with him, for him even? You don't know him, so why risk it. Still, he could be friendly, helpful even. Of course, you could always sneak closer and listen in, then go from there.";
			now PlayerInformed is 1; [Player knows how Seraphis was dosed.]
			LineBreak;
			say "     [bold type]What do you want to do?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Listen in to find out what's going on, and approach when it's safe.";
			say "     [link](2)[as]2[end link] - Try to approach the surrounded centaur quietly. Maybe you can catch the big guys unaware.";
			say "     [link](3)[as]3[end link] - Run like hell away from anything to do with whatever this is.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to Listen in, [link]2[end link] to Sneak up or [link]3[end link] to Run.";
			if calcnumber is 1:
				LineBreak;
				say "     As you try to keep yourself unseen, you creep close enough to overhear voices, and lucky for you, all four figures seem completely consumed by their own presence. However, their tone carries quite a bit of disdain, and as you queue more into who is talking when, you notice that the centaur is uncharacteristically quiet. The only ones that seem to be speaking are the gorilla-like beings, their grunt-filled voices ringing out with significant base, doing little to make the situation feel safe. Much like the muscled forms of the Gorilla-like beasts, their voices carry significant strength, and ooze hostility with every syllable.";
				say "     Once you get yourself close enough to clearly understand what the big humanoids are saying, you go completely prone, merely lifting your head to listen in. 'So you thought you could take it away from us, and use it for yourselves?! How dare you even think you're worthy of anything on this level. Your petulance will be dealt with quite easily though, and will leave us no worse for it.' After that statement, you see the centaur getting animated, struggling against something you can't quite make out. Hell, knowing the way this city is now, he could be held down by magic for all you know.";
				WaitLineBreak;
				say "     Either way, whatever he's struggling against is rendered to be rather moot a moment later. One of the bipedal creatures walks over to him, grunting a few times before cupping his hand over the centaur's face, and at that moment, the half-equine man freezes. You find yourself unable to look away now, but with centaur still held stock-still, the three armored figures group together and start to move on, the centaur still stuck in the same spot. 'As soon as the first creature uses him, it won't be long before he's just another mindless cumdump out here.' The male who just spoke then turns to another of his kind, 'Isn't that right captain?' He just receives a nod as a response. The third then chimes in, 'Fitting punishment, considering.' As they grow farther away, spurts of laughter can be heard, clearly unperturbed by their recent actions. Eventually, they're almost completely out of sight, and entirely too far to hear.";
				say "     After they get far enough away from the scene, you find the urge to investigate the centaur growing stronger. After a few seconds of watching the stock-still male, you glance back to the other side of him, watching as the three bulky figures disappear into the haze simmering off the ground. Feeling relieved that they're finally gone, you head over to the still centaur. As you approach, your nose flares, a scent in the air growing more powerful, spicy as you close in on the male. It seems to grow thicker as you get closer, your thoughts dashing away each time you reach for one, leaving you questioning even the most obvious details.";
				WaitLineBreak;
				say "     It's at the time the scent grows its strongest, that you feel your mind grow a bit more resistant to it, and you realize what it is: pure, unadulterated sex, need and musk. And it fills your mind with such...images and needs, driving you to an insane desire you've rarely felt. At that point, you can't resist examining the centaur and all his curved, muscled, chiseled features, but most of all, you can't take your eyes off his curvy equine ass, or his long, hard, dripping and throbbing equine tool. 'I-I'm...I need. Please, let me. I need to fuck you. You need. You. Please, let me.' His meandering and stuttering lasts long enough for you to move right in-front of him before anything of interest comes out of his mouth.";
				say "     'Let me sink my cock into your ass and leave it gaping!' You're almost knocked over just by his sudden outburst alone, but as soon as you feel your wits return, you feel objects grabbing and groping at you. Objects that all have five smaller objects that roam and poke and pinch at all sorts of places, both sensitive and near-to numb, both painful and pleasurable. It leaves you overwhelmed and stimulated in all sorts of ways. Even with how much of you is lost to his smell and groping, you still have the presence of mind, and the strength, to knock back the hands. Once they're out of the way you jump back, getting clear of the centaur's reach.";
				WaitLineBreak;
				say "     'Dammit. Get back here.' The centaur hoarsely yells. You know that's something you're definitely not going to do without a good reason. You try to question him for a decent idea as to what's going on, but you mostly get grunts and lusty comments. The only calming thing about this entire situation, is the fact that his hooves seem firmly stuck where they're planted. Deciding that you need to investigate him more thoroughly, you move around his broad form, getting close and running your hands along his equine body, out of reach of his human torso.";
				say "     His hairs bristle against your skin, the fur strangely coarse in places, but soft and yielding in others. You find your hands trailing closer to the centaur's flank as you walk, taking no time before they find themselves grasping at the cushioned rear of the horse-man. 'I Change....to slave, no.' You hear him give out what sounds like a protest, but his words are jumbled, messy. Though they make you hesitate, you still rub and squeeze at his ass, your digits roaming closer to the pucker in the middle of his rump. 'I'll be your...turned slave.' He grunts out, unable to form a coherent sentence.";
				LineBreak;
				say "     [bold type]What do you do; give him control, continue what you're doing, or leave him?[roman type][line break]";
				say "     [link](1)[as]1[end link] - Give yourself to him, for now.";
				say "     [link](2)[as]2[end link] - Continue with his ass.";
				say "     [link](3)[as]3[end link] - Leave him to deal with the issue on his own.";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 3:
					say "Choice? (1-3)>[run paragraph on]";
					get a number;
					if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
						break;
					else:
						say "Invalid choice. Type [link]1[end link] to Give Control, [link]2[end link] to Take Control or [link]3[end link] to Abandon Him.";
				if calcnumber is 1:
					LineBreak;
					say "[DominantSeraphisFirst]";
				else if calcnumber is 2:
					LineBreak;
					say "[SubmissiveSeraphisFirst]";
				else if calcnumber is 3:
					LineBreak;
					say "     While he is hot, and awfully tempting to bend over for, or even use, you decide it's not worth the risks of dealing with someone so...unstable. At least, that is, for now.";
					now HP of Seraphis is 50;
					now Conflict within the Plains is resolved;
			else if calcnumber is 2:
				LineBreak;
				say "     You question your decision each second you get closer to the four figures, the shorter distance giving you a far more stark view of the situation. The centaur is easily kept docile, by what, you don't know, and it's disconcerting to see such a powerful beast rendered so muted. And as you get closer, the three hulking beasts around the distressed centaur cock their heads, causing you to instinctively drop to the ground barely fifty feet from where they're standing. Your instincts at least guided you to drop behind a lone bush, instead of right in the open, so as they look at where you were standing just seconds before, they see nothing threatening. However, you feel a light breeze blowing past you and right towards the three hulking creatures.";
				say "     You instinctively take a few deep breaths, sniffing at whatever scent might be discernable from everything else. Unfortunately, there's not much hiding that you very much have a detectable scent, which is made even more clear when the three gorilla-like beings look directly at you. You can't tell much from their masks, but you're almost certain there's a sneer spreading across their faces at that moment. Surprisingly enough though, they turn back to the centaur and run their hands over him, whispering something into his ear before they wander off, one of them glaring in your direction frequently as they go.";
				now ConclaveKnowledge is 1; [The Conclave knows of the player character]
				WaitLineBreak;
				say "     When you can only barely make out the three silhouettes, you carefully move closer to the centaur, your eyes darting over his form, taking in every slight twitch or movement. 'Don't get too close, whoever you are.' You're a little startled, but his voice comes across as calm and well mannered, or at least that's what he's attempting to get across. You can tell that he's quite nervous, and just a little twitchy, which doesn't frankly surprise you. 'Don't touch my hide or you'll get the oil on you too.' As you try to question him on what he's talking about, you catch movement from around his flank, his equine shaft pushing out and downward as the seconds go by. His fluids also drip out like a broken faucet, and it leaves much of his shaft shiny with pre.";
				say "     He hasn't moved since you laid eyes on him, his hooves entirely flat to the dirt under them, his leg muscles giving off a twitch here and there, but his hooves seem unable to move from their immediate spot. However, he doesn't really have to move to influence the area around him, because saying his musk is palpable is an understatement. It almost overwhelms you with need several times, and makes it ever harder to understand anything he says. However, you easily catch something about an oil, or liquid, referred to as Morphing Lust, and how it influences the person it gets on or in. 'Just....just stay...let me fuck you, and it'll be handled. You'll enjoy it, and I'll get my needs dealt with.' He turns to look at you, 'plus, you look like you could take a load or three.'";
				LineBreak;
				say "     [bold type]Do you give into his demands and help sate his need, wait it out to see if the effects wear off, or take advantage of the man's current state?[roman type][line break]";
				say "     [link](1)[as]1[end link] - Jump at the chance to sate this beast's sexual needs.";
				say "     [link](2)[as]2[end link] - Make sure to keep a healthy space between yourself and the lust mad centaur.";
				say "     [link](3)[as]3[end link] - Walk behind him and use the lustful beast for your own desires.";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 3:
					say "Choice? (1-3)>[run paragraph on]";
					get a number;
					if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
						break;
					else:
						say "Invalid choice. Type [link]1[end link] to Give in to him, [link]2[end link] to Stay Back or [link]3[end link] to Take Control.";
				if calcnumber is 1:
					LineBreak;
					say "[DominantSeraphisFirst]";
					now SeraphisNeedy is 1;
				else if calcnumber is 2:
					LineBreak;
					say "     Considering he can't really move from where he's standing, it's not hard to stay away from him, and after a few hours it starts to seem as though he's coming down from his lust high. More intelligence is visible within his eyes with each passing second, and as the third or fourth hour passes, you can tell his cock is deflating a little. However, he's still very evidently horny, but at least a little more in control than before. 'Huh. You're a rather...unique individual. Most would have jumped at the chance for a fuck, especially now-a-days.'";
					say "     You tell him about what you've been through so far, leaving out anything too risky, and his face seems to lighten up a bit. 'Ah, so you avoided the brunt of the start. Lucky, ";
					if bodyname of player is "Human":
						say "and you've even kept your own body.' His equine shaft jerks up a bit as he says that. ";
					else:
						say "well, for the most part, for you definitely lost your old body,' he remarks with some evident disappointment. ";
					say "'Either way, I need to get out of this, so if you'd mind staying back for a second....' The centaur pauses as he looks down, eyes closed the next second. Then, with a flick of a wrist his eyes open again, his hooved feet lifting one after another.";
					WaitLineBreak;;;
					say "     'There we go. Now, for introductions,' he mentions as he turns to you. 'I'm Seraphis, and I must thank you for distracting those three before they could do anything to me that was too severe.' You acknowledge his thanks and give your own name. 'Well, thank you for trusting me with your name, [if player is not defaultnamed][name of player][end if]. Beyond that, I have to go deal with someone immediately. I do hope we meet again though. Goodbye,' he gracefully declares as his arm crosses his waist and his human half bows. He then moves away, getting into a gallop seconds later.";
					now SeraphisContent is 1;
					now HP of Seraphis is 61;
					now Conflict within the Plains is resolved;
				else if calcnumber is 3:
					LineBreak;
					say "[SubmissiveSeraphisFirst]";
			else if calcnumber is 3:
				Linbreak;
				say "     You decide that whatever is going on here is too strange and dangerous for you, drawing you to get up and move away quickly and quietly.";
				now HP of Seraphis is 50;
				now Conflict within the Plains is resolved;
		else:
			LineBreak;
			say "     You move away as hastily as you can manage without making much noise. Soon you're far, far away from anything immediately dangerous, relatively, at least.";
			now HP of Seraphis is 50;
			now Conflict within the Plains is resolved;

Section 3 - Seraphis Location and Details

if SeraphisContent is 0: [Seraphis isn't pleased enough to open the gate]


if SeraphisContent is 1: [Seraphis sees the player as worthy of entrance]


to say SeraphisDesc:
	if debugactive is 1:
		say "DEBUG -> SeraphisRelationship: [SeraphisRelationship], HP: [HP of Seraphis] <- DEBUG[line break]";
	say "     Seraphis is a muscled, nine foot tall centaur that'd easily make any brave individual quake in their boots, especially if they were on his bad side. His body is chiseled like what you'd expect of an old Adonis renaissance sculpture, except with a strong, horse-like body from his waist down. Of course, much like a horse he has a cock to be reckoned with, one that has to be at least a foot long, probably even larger whenever it's fully ready for action. However, at most times his dick is either semi-flaccid, like now, or at incredibly rare times, withdrawn into his sheathe.";


Section 4 - Talk

Instead of conversing the Seraphis:




Section 5 - Sex

to say DominantSeraphisFirst:
	if gender of player is "Male":
		say "     [if SeraphisNeedy is 1]His words seems to draw you to serve him, to help bring down his need[else]You give in to his stuttered speaking and decide it'd be best to help him first[end if]. The sheer sexual musk radiating off him only makes it that much harder to resist your [if player is dominant]unusually strong submissive side[else if player is submissive]powerful and needy submissive side[end if]. Once you find your body giving into the need, you can't help but walk to his side, stroking a hand through his fur as you lean down for a closer look at his dripping need. You have to question your decision as you do so though, as you're immediately hit with an even more powerful whiff of musk.";
		say "     Your cock lurches and releases a good dollop of pre as you take a deep breath, your body drawn to take in more air after feeling the sheer heat emitting from his crotch. Of course none of that helps your already aching cock and needy body, making everything all the more sensitive. You can't resist any of your lust-addled mind's needs any longer. You reach forward, grasping the fluid covered cock, giving it a few pumps as you get onto your hand and knees, working yourself right under the beast of a man. The musk right next to his genitals is close to the strongest smelling masculine scent you've encountered, however it is a moot point by now, as your brain is already entirely consumed by the smells and lust.";
		WaitLineBreak;
		say "     Once you get close enough to his cock, you drag your tongue up his shaft. Your wet appendage snakes its way along the bulging veins covering his cock, going from the low hanging, cum packed orbs, to the flaring tip. When your tongue is nice and covered in the pre dribbling down his dick, you eagerly suck it back into your mouth, swooshing the seed around and around, savoring every little taste you can get before swallowing it. Before long, you find your lips sucking and kissing at his tip, his urethra rewarding your dutiful attention with more of his musky nectar. You then happily sit down under him, spreading your legs and giving yourself easy, comfortable access to his sexual fluids, the top of your head brushing against the big male's belly as missed cum, and your saliva, drip down over your chest and groin.";
		say "     What little is left of your logical mind, tells you to remove whatever clothing you have on, and toss it all to the side. With that handled in just seconds, you quickly get back to your duty of lathering up the beautiful pole before you. It takes very little time for his cock to pulse, and as you work your lips around his flaring head, you know exactly what to expect. And so you prepare yourself for the oncoming deluge of cum; both hands grasping onto his cock, lips firmly locked around the tip, and legs pushing down unconsciously. It is a good thing you got a firm grip and a nice lip lock, because when the big equine dick gives a final, huge throb, you get a solid and hard first spurt of cum right to the back of the throat.";
		WaitLineBreak;
		say "     You barely contain a few coughs, and while you do so, block off your throat with your tongue, pushing it to the top of your mouth as you let your greedy maw fill with ever more musky fluids. With the coughs contained, you let your tongue relax every so often, encouraging some of the rapidly dispersing cum to flow down your throat. Your eager swallows make it easy to take down large gulps at once, but with how many spurts he gives you every few seconds, and with how much cum accompanies each spurt, it gets hard to keep up. Cum manages to slip out here and there pretty easily because of that, but his flare blocks most of it from escaping. However, a good amount of seed manages to trail down your chin and over your torso, pooling around your cock, trickling between your legs and then over your ass.";
		say "     The main force of cum seems to have trickled down to a constant dribble, so without having to brace yourself so thoroughly, you take the chance to run a hand down your torso, gathering up the equine cum over you and pushing it lower. When you get low enough, your fingers rub over your penis and testicles, reaching their main target. With the cum that had coated your ass, and the cum you covered your hand with on the way down, you lightly rub over and prod at you hole, getting it a bit more stretched than before, and certainly more lubed. With your cheeks spread open, the cum that trickles down now goes right into your crack, and helps your ever increasing zeal when it comes to lubing and stretching yourself.";
		WaitLineBreak;
		say "     Within a few minutes you feel ready, and with your gut filled from one end, and his urethra just giving a trickle of cum, you get up onto all fours and push your back against the centaur's warm, furred stomach. With your feet firmly planted on the ground, you grab onto one of the big male's front legs with one hand, while reaching back with the other and grabbing his dick. It takes you a few tries, but you eventually get him angled towards your sloppy hole, the flared tip poking at your eager and relaxed anus. Your body as ready as it'll ever be, and his cock still leaking onto your ass, you push back slowly, easing his tip a millimeter, then a centimeter, then an inch into your ass.";
		say "     Your methodical approach to stretching and getting him inside you is abruptly ended by a loud whinny though, and then a powerful thrust from the big hybrid's hips forces you forward. You barely brace yourself in time, and are left with both of your hands pressed against the ground as his cock gets lodged a-quarter-of-the-way inside you. You have little desire or choice but to keep going, and you quickly reorient yourself with feet braced against the ground instead of up in the air, your hands clasping onto the forelegs of the equine again as well.";
		WaitLineBreak;
		say "     Fully ready, you push back, relaxing your hole as shlocking sounds greet your ears, and the wet, fluid covered cock spears further into you, lubed by the sexual fluids constantly leaking out of it. Of course, more whinnies fill your ears when the flare scrapes your inner walls, the cock burying itself deeper within, and the hips of the big beast aiding that with infrequent but forceful thrusts. Once past the medial ring, it doesn't take long to find your ass brushing against fur and the male's sheathe, your own testicles feeling a light touch from the heavy testicles of the far bigger male.";
		say "     You begin to pull yourself away, letting his cock slip from your hole inch by inch, but as you do, the centaur beats you to it, pulling back halfway before slamming forwards again, burying his dick all the way once more. Instinctively tightening your grip on the male's front legs, you keep yourself steady as wet slap after wet slap fills the area, shlocking slurping noises aiding in the orgasmic sound of sex. You find it hard not to enjoy the idea of being used by the powerful beast, and the musk makes any resistance impossible, so you stay braced, relaxing and tightening your anus at the right times to encourage the centaur even more.";
		WaitLineBreak;
		say "     Thrust upon thrust upon thrust, and he's still pounding you with no sign of stopping, even after what feels like hours of your ass being used. You do feel yourself approaching an edge though, and it quickly gets closer and closer as his flare rubs against your swelling prostate more with each second. Within a short period of time you jerk and thrust and hump, trying to [if player is knotted]knot something that isn't there[else]fuck something that isn't there[end if], while also trying to keep fucking yourself on the equine breeding rod. Before you even realize it, you're being filled with warmth, your own cum firing out while the rod within you pulses and expands.";
		say "     The flare digs into your inner walls as the superior male breeds your hole. Minutes go by and your orgasm passes as your constantly filled with seed, so much seed that it goops at your entrance before falling down to the ground in loud splats. Most of it seems to cling to you though, caking your groin in white sexual fluids. When you finally feel the pressure ease, and the warmth inside you stop growing, you hear a breathy, hushed voice, 'thank you for that.' You then see his hands appear and shortly thereafter his hooves pick up off the ground.";
		WaitLineBreak;
		say "     'I really needed the help there.' He gives a light chuckle before backing up, your body too drained to do more than stay upright, swiftly failing when his flare starts pulling at your anus. 'You'd be fun to train, but I need to go deal with someone first. And the name's Seraphis, by the way. However, you'll most likely not use that name much, if at all.' Seraphis then turns to you, walking over your form with his cock angled at your face. 'Lick me clean. None of my seed should go to waste.' You use what little energy you have left to do as your told, the musk minimizing your desire to go against anything he says. The salty fluids soon rush over your tongue as you lap up the cum, making sure to pay special attention to his medial ring and behind his flare. After a short period of this, he backs off. 'Good. Now I'll leave you to deal with yourself for now. I'm sure we'll meet again soon.' He gives a wry smile before turning away and moving into a gallop.";
		now MarkedSeraphisCum is 1;
		now Conflict within the Plains is resolved;
		now HP of Seraphis is 1;
		now SeraphisContent is 1;

to say SubmissiveSeraphisFirst:
	if player is "Male":
		say "     You open up your clothes and let your [cockname of player] genitals flop out, your eyes completely locked onto this beast's flank. The donut hole back here, plus the curvy rump around it, is hard to look away from. You know how good it's going to feel to sink your cock down to the root in it, all the while grinding your hips into him[if anallevel < 2]. You gather up as much spit as you can in your mouth, and when there's enough of it, you spit it onto his ass, using your cock to smear it around and into his hole.[else], but you can't resist getting a nice taste of that ass before anything else. Which is why you immediately, and a bit harshly, yank his tail out of the way. Your rough treatment earns you a nice sight of his donut and a quiet, whimpering neigh. With your sight now locked in on your goal, you drop to one knee, propping yourself up as you push your face between those sexy equine curves.";
		say "     Your nose is quickly met with a strong, masculine musk, and as you poke your tongue out, the taste of sweat and the very same musk you smelled, greets you. With a near mad vigor, you run your tongue over every nook and cranny of his ass, gracing the hole ever so slightly at random intervals, keeping the centaur on edge the entire time. It doesn't take long for his hole to start winking, his excitement growing with each swipe of your tongue, each huffed breath over his ass. Whinny after whinny starts filling your ears, panting gasps and moans following each one, and as you finally move over his twitching hole, you dart your tongue straight into him.";
		WaitLineBreak;
		say "     With your tongue wiggling about in his depths, you sloppily thrust it in and out, swiping it around the edges of the inner walls. While you keep up your pleasuring of the beast, you can't help but reach out with your free hand to grip at his ass, rubbing and squeezing his furred flank. You smile to yourself at the sheer noises the centaur makes, giving into the satisfaction of twisting another to your whims. Just as you think about that, you hear huffed utterances, 'Please...pl-please. Fuck. Fuck me.' Your smile grows even more, glee filling you as you give one more thrust of your tongue, and one last suck on his hole. With that, you pull back, angling his flank down towards your hips. [end if][if anallevel < 2]You then angle his flank down towards your hips[end if]. With the centaur's strong back legs lowered, his hips are easy to get into the right position.";
		say "     The big male's flank is soon mere inches from your cock, and as you pull it closer to your tip, you can feel heat radiate off his rear. That heat envelopes your crotch, driving your lusts further, and as you push your hips forward, you feel his saliva slickened hole part for your [cock size of player] breeding rod. As you sink inch after inch inside him, sheathing your cock in his depths, you move your hand from his flank, resting it on your hip as you push into him. While you sink further in, the lust that filled you before doubles, no, triples as the donut hole tightens and loosens constantly. The hole is quite large, but it has more muscles then most any other hole you've been in, and the mad beast uses them with exceptional skill.";
		WaitLineBreak;
		say "     Even with how needy he is, you still feel exceptionally skilled muscle movements, twitches, and control. It all drives you closer to the edge even faster than if your sole goal was to get off, but this lustful half-beast still has a great deal more use to you. As you pump in and out of his quivering hole, you focus on the feeling of the sun on your skin, your hips against his rear, but you do everything you can to not think of the slick, suctioning hole quivering around your cock. You try and not think about how it feels when you slam your hips into him, his raised anus pressing against your groin, or how it feels to be pistoning in and out of that warm, fleshy pit.";
		say "     It's all for not though, and you find your balls tensing and rising with each second, your cock pulsing as you hit the edge and shoot right past it[if player is knotted], shoving your knot straight into his ass[end if]. As you feel your seed pumping through your shaft, the ecstasy of orgasm rushes over your body, filling you with more savage desire as you [if player is knotted]yank your knot out and shove it back in, continuing to pound him as your knot slips in and out of[else]keep pounding in and out of[end if] the fleshy hole you find yourself releasing in.";
		WaitLineBreak;
		say "     Your violent [if player is knotted]knot-fucking[else]fucking[end if] picks up as your need slows, soon dropping as you eventually just press your hips firmly to his flank[if player is knotted], popping your knot into him deeper than ever[end if]. Your body freezes, your head bent backwards as if you're howling to announce your release, and your back is in a similar, if less dramatic state, leaving you stretching your legs out as you find yourself on the tips of your toes. The only movement you give off is the occasional pulse rushing through your body, signaling a different spurt of seed shooting into your newfound mount. With each spurt, the warmth of the half-equine's hole grows exponentially, giving your sensitive penis a newfound escalation of pleasure.";
		say "     As the pleasure tapers off, you lower your head, looking over the expanding and contracting back of the centaur. The pants slow as you stay buried within the male, his hole going lax around you, allowing bits of your semen to flow out around your softening shaft. As more trickles out and covers your crotch in bits of seed, you grip onto the man's hips with both hands, releasing his tail as you pull out while holding him in place[if player is knotted], your extra-sensitive knot making you shiver a it pops out[end if]. You feel his muscles moving, his body trying to push back as you pull out, but you manage to hold him in place long enough to fully withdraw. Happy with how eager he is, you slap a hand against his flank, the centaur raising his ass back up to almost chest level.";
		WaitLineBreak;
		say "     Your about to congratulate him on how well he sated you, but he talks first, 'That was great...but I need to go deal with someone.' With a little irritation in your voice, you warn him about not having thought of your wants first, but decide to let him. First, however, you request his name, and that he clean you up. 'My name is Seraphis, sir. And alright.' He then reaches both hands down, closing his eyes for a few seconds before lifting each hoof off the ground. 'There,' he whispers. With that he turns towards you, 'So you have a cloth?' You grin at him before grabbing his head and pulling it down towards you, roughly kissing him.";
		say "     After a solid minute of making out, you step back, pulling his head lower. You let his face grace your chest, stomach, and then when he reaches your groin, you push him against it, smearing seed over his face as he does nothing. After a few seconds of grinding him into your crotch, he gets the hint, giving a trepid lick or two before getting into it, swiping his tongue over your whitened groin. He gathers up a nice bit of seed then swallows it, rinse and repeat, all until he gets most of it off you, and then he sucks your cock into his mouth. This elicits a firm moan from you as he suckles all the loose sexual fluids off you.";
		WaitLineBreak;
		say "     When you hear a few loud, content gulps, you thrust your hips forward and yank his face all the way to your crotch[if player is knotted]. Your still partially engorged knot gives a bit of trouble while shoving your dick into him, but he opens his cheeks wider and it pops right in easily enough[end if]";
		if WSlevel is 3:
			say ". [if player is knotted]With your knot plugging his face hole, you feel more than confident in filling him with far more fluids than he expected, and no doubt he'll be forced to take however much you deign to give[else]With your cock plunged deep into his mouth and undoubtedly a bit down his throat, you feel quite assured in your next idea of asserting who's in control[end if]. So without any further delay, you relax your bladder, letting the warm liquid flow through your cock and into him.";
			say "     A look of surprise covers his face, but you can feel his throat reflexively swallowing, his body easily accepting his new place. Still carrying a confused and hesitant look, he sucks down every drop you give him, drinking greedily as you relax and let more of your piss fill him. It doesn't take long for your bladder to completely empty, or for him to drink it all down, and once you feel satisfied you [if player is knotted]pop your knot out of his mouth[else]pull your cock out of his mouth[end if], wiping the tip on his tongue for good measure.";
			WaitLineBreak;
		else:
			say ". You then pull your hips back, thrusting forward a second later and hearing the smacking sound of your hips slamming against his face[if player is knotted], and the slickening feeling of your knot popping back into his drooling mouth[end if]. Almost content with the dominating display, you grind into him, holding his head in place as you rub against his face[if player is knotted], grinding your almost deflated knot deeper into his mouth[end if]. When you grow tired of grinding into his face, [if player is knotted]you pop your knot out of his mouth[else]you pull out of his now sloppy mouth and step back[end if].";
		say "     You watch as he rises up to his full height, eyes glazed and body sluggish. When he seems to fully recover, he clears his throat and announces his intent, 'I must take care of that insolent fool.' However, he still looks to you, eyes questioning. You give him a single nod and he gallops away. With but dust remaining of his previous presence, you redress and tidy yourself up before leaving the area.";
		now Conflict within the Plains is resolved;
		now HP of Seraphis is 15;
		now SeraphisContent is 1;


[NPCs have these listed as stats by default, can be used for various purposes as variables]
[
A person has a number called HP.
A person has a number called XP.
A person has a number called Level.
A person has a number called Dexterity.
A person has a number called libido.
A person has a text called linkaction.
]

Seraphis ends here.
