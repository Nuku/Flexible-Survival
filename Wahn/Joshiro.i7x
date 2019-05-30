Version 1 of Joshiro by Wahn begins here.
[Version 1 - Put into its own file]

[ HP of Joshiro                                      ]
[   0: never met                                     ]
[   1: had a friendly talk                           ]
[   2: had voluntary sex                             ]
[  20: fought before, player lost                    ]
[  21: fought before, player fled                    ]
[  22: fought before, player won                     ]
[ 100: player not interested                         ]

[ Libido of Joshiro                                  ]
[   0: no sex with the player                        ]
[   1: Joshiro on player oral                        ]
[   2: player on Joshiro oral                        ]
[   3: mutual oral                                   ]
[   4: Joshiro got fucked by the player              ]
[   5: player got fucked by Joshiro                  ]
[   6: mutual fuckings                               ]

Section 1 - Initial Events

Table of GameEventIDs (continued)
Object	Name
Road Wanderer	"Road Wanderer"

Road Wanderer is a situation.
The sarea of Road Wanderer is "High".

Instead of resolving a Road Wanderer:
	if HP of Joshiro is 0: [never met before]
		say "     Exploring the streets of the high rise district, you wander past piles of trash, check out abandoned cars and houses, all while taking care not to draw any attention from wandering beasts. Luck is with you today, as your scavenging is soon rewarded by finding a forgotten bag of salted nuts under the seat of one of the cars. It's a bit dusty but still good, even if the best before date makes you guess that the owner of the car must have dropped it under the seat months ago. You pack the food into your backpack with a grin on your face, then set out to see if you'll find more nice stuff today.";
		LineBreak;
		say "[bold type]You gain 1 food![roman type][line break]";
		increase carried of food by 1;
		LineBreak;
		say "     Continuing on your way, you soon reach a street corner, which brings with it a curious sight. There's a human man there, just openly strolling down the centerline of the road as if he is ready to take on the world. Even more outrageous is his outfit: The muscular Asian man's only real article of clothing is a pair of loose, bright red shorts, as if he just stepped out of a kickboxing ring or fitness studio, baring his V-shaped chest for the world to see. Other than that, the only fabric on the man are a pair of martial arts handwraps. Looking at the guy's handsome face and the boyish grin he throws you as he examines you in turn, you can't help but think that he must be fairly tough, if he made it till now while cockily strutting through the street.";
		LineBreak;
		say "     [bold type]What now?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Try to start a conversation. You're both sane, that has to count for something even during the nanite apocalypse!";
		say "     [link](2)[as]2[end link] - A hunky human is right in front of you. Grab him and fuck him of course!";
		say "     [link](3)[as]3[end link] - Eh, you don't need this right now. Just keep your distance and go the other way.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to talk, [link]2[end link] to fight or [link]3[end link] to avoid the guy.";
		if calcnumber is 1: [talk]
			LineBreak;
			say "     As you approach him, the skimpily dressed man offers his hand to shake without hesitation and says, 'Hey there, I'm Joshiro. Nice to meet a friendly face for once. Not that I had any problems dealing with the others...' He boasts good-naturedly about what creatures he fought recently, and that none could stand against him. After that, Joshiro offers to flex his arms for you so you can give his bicep a squeeze, being all in all very happy to show off his body to you.";
			now Resolution of Road Wanderer is 1; [talked]
			say "[JoshiroTalkMenu]";
		else if calcnumber is 2: [fight]
			LineBreak;
			say "     As you step towards the human with lust in your eyes, he takes that in stride, simply raising his fists as he gets ready for a fight. 'One of those are you, eh? Fine, let's get it on!' he calls out, sure of his victory.";
			challenge "Human Martial Artist";
			if fightoutcome < 20: [player won]
				now Resolution of Road Wanderer is 4; [forceful sex with the player]
				say "[JoshiroForcedSexMenu]";
				now HP of Joshiro is 22; [fought, player won]
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     After the man's last blow, you sway back and forth, then fall on your ass as he gives you another gentle love-tap with his index finger. 'Joshiro Arashi wins again!' he shouts and throws his arms up in a victorious gesture, almost as if he was posing for a huge crowd of cheering spectators. He basks in the imaginary glory for a few seconds, then turns his attention to you with an intense expression on his handsome face. Lithely crouching in front of you, the Asian Adonis puts one hand on your crotch and gives it an eager grope.";
				if Player is male:
					say "     Joshiro seems very happy to find that you have a cock, and he immediately starts to stroke and jerk you, his capable fingers teasing your manhood into action even though you just fought one another. 'To the victor go the spoils,' he tells you with a broad grin, squeezing your shaft eagerly. 'And what I want is a nice hard cock up my ass!' With that said, he just shoves the red shorts off his thighs, revealing a lengthy and erect cock that is literally dripping with pre-cum. Not giving you any chance to resist or even comment, the martial artist then steps right over you and crouches down, simply sliding his quite flexible pucker down on your manhood. 'Nnnghh, fuck yeah!' your former opponent grunts happily and squeezes his inner muscles around your shaft, creating an incredible sensation for you.";
					WaitLineBreak;
					say "     Despite being sweaty from your earlier fight, Joshiro doesn't show any sign of exhaustion now that things have turned to sex. He bounces up and down on your shaft in a rapid tempo, his grinning face bent over you as he pins your arms to the ground. Grunting in lust every time his buttocks smack against you thigh, the man uses you like a living sex toy, always wanting more: deeper thrusts and a nice thick cock to stretch his hole. In between his moans, grunts and gasp, you manage to catch some words he keeps murmuring to himself, something about you 'fucking him like that orc brute did'. With a very athletic and seemingly tireless man riding your cock relentlessly, it doesn't take all that long for Joshiro to stroke the fires of your arousal higher and higher, until you finally just can't contain yourself any longer.";
					say "     Reflexively hammering your hips up against him, you thrust yourself deep into the Asian man, thrashing against his strong hands as he keeps you pinned. The martial artist's face takes on a blissful, almost greedy expression as he feels your shaft throb hard inside his ass, painting his insides white with the first spurt of your built-up load. He moans like a bitch in heat as blast after blast of your cum enters his ass, seemingly taking great pleasure from being bred by another man. This even goes so far that his own hard cock erupts after another few throbs into Joshiro's ass, without anyone even touching it. The long prick sways back and forth from his movements, spraying heavy strings of seed to splatter over Joshiro, you and the ground.";
					WaitLineBreak;
					say "     Riding out your mutual orgasms on top of you, Joshiro calms down a bit and simply enjoys the feeling of your load inside him, breathing deeply to replenish his reserves. Then he looks down at you and puts on a boyish grin, followed by the words, 'Nice cock on ya, stranger. Wanna tell me who just bred my ass?' The corny way he says this makes you chuckle despite yourself, and you can't really deny telling him your name. '[if Player is not defaultnamed][name of Player], eh? [end if]Pleasure meeting you. And being meated by you, hah!' While you're still groaning about the stupid joke, Joshiro slides himself up on your shaft, carefully sliding his hand behind his back to prevent your load from gushing out of him as he pulls off. It looks rather funny how he standing there, plugging his hole with a finger, but his rear entrance apparently tightens itself up in abnormal speed. Just a minute or two later, Joshiro doesn't run any danger of losing his creamy filling as he goes to grab his shorts and get dressed again. 'So long, you hot fucker!' he says with a smile, then saunters off.";
					now Libido of Joshiro is 4; [Joshiro got fucked]
					now Resolution of Road Wanderer is 5; [player fought, lost, got ridden]
				else:
					say "     Joshiro seems a bit disappointed that you don't have a cock, shrugging to himself and standing up. 'Hm, my bad I guess. But hey, you jumped me, not the other way around.' With that said, he turns around and strolls off, just leaving you behind.";
					now Resolution of Road Wanderer is 6; [player fought, lost, no sex]
				now HP of Joshiro is 20; [fought, player lost]
			else if fightoutcome is 30: [fled]
				say "     As you run off, you can hear the martial artist shout after you, 'Can't withstand the power of Joshiro Arashi, hah! You better run!'";
				now Resolution of Road Wanderer is 7; [player fought, ran]
				now HP of Joshiro is 21; [fought, player ran]
		else: [avoid]
			LineBreak;
			say "     Deciding that you don't want anything to do with this guy, you turn around and walk the other way, leaving him to continue his own path.";
			now HP of Joshiro is 100; [player not interested]
			now Resolution of Road Wanderer is 99;
	now Road Wanderer is resolved; [for now]

Table of GameEventIDs (continued)
Object	Name
Slut Wanderer	"Slut Wanderer"

Slut Wanderer is a situation.
Prereq1 of Slut Wanderer is Road Wanderer.
Prereq1Resolution of Slut Wanderer is { 1, 2, 3, 4, 5, 6, 7 }.
PrereqTime of Slut Wanderer is "Night".
The sarea of Slut Wanderer is "High".

Instead of resolving a Slut Wanderer:
	say "     Wandering through the streets of the high rise district at night leaves a whole different feeling than during the day. With only the dim light of the moon to illuminate your surroundings, the absence of light, electricity and the sounds of civilization is glaringly obvious. Buildings rise as dark shadows over you, creating long canyons sticking up against the starry expanse of the sky. Yet that doesn't mean there aren't any noises to be heard: The clatter of a can or something being kicked down the road, far-off splintering glass and clawed paws scraping over the asphalt are just a few of the sounds that reach your ears, as if to remind you that this isn't the city you knew anymore. None of it seems to have anything to do with you, as you are careful about any footsteps following you. No, it's just the creatures of the city going about their business - living, scavenging, and all too often noisily fucking.";
	say "     One of the latter cases is something you become aware of as you pass a small side alley, as unrestrained lewd moans echo from its depth, their pitch and volume marked by what must be rhythmic thrusts against the person being fucked. You're about to just walk past when you hear the same masculine voice call out in a lewd tone, 'Yeah! Pound the tiger, kitty!' A satisfied growl from some sort of large beast follows in reply, combined with another deep thrust. A second later things click in your mind: You recognize the person that is in the alley, it's Joshiro Higashi, whom you met before, wandering the streets of this area. Sounds like he's gotten himself into some sort of sexual situation, which isn't too surprising, given his outlook and the fact that he was walking around in just a pair of skimpy shorts.";
	LineBreak;
	say "     [bold type]Do you want to step in the alley and see what's going on?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure. Curiosity is your middle name.";
	say "     ([link]N[as]n[end link]) - Nah, you got better things to do.";
	if Player consents:
		LineBreak;
		say "     Directing your steps into the narrow side alley, you follow the sounds of sex and soon see movement in the darkness. There is something green back there, faintly luminescent from the looks of it. It waves back and forth a little and you realize that it is the tail-tip of a large cat, sticking out of a small courtyard adjoining the alley ahead. Continuing on, you see more and more of the beast's outline, straining your eyes to see its mostly black and gray form, then the pair of tentacles sprouting from its upper back, ending in large more brightly glowing gripper pads. Beneath the muscular feral feline, and the target of its rhythmic thrusts, Joshiro is on the ground, ass raised high and his chest pushed down, one tentacle wrapped around to lift and hold his body by the abs, the other pushing down on his neck to keep the man's face planted on what is thankfully fairly smooth asphalt.";
		say "     The Asian hunk isn't struggling against this treatment though, instead letting out happy, whorish moans and raising his ass to meet every new push into his gripping hole. His signature red shorts lie discarded on the ground a few feet away. With all the moans, growls, pants and roars coming from this mating of man and beast, you manage to get quite close to the two of them with out even being noticed, which means that you're just in time to see the big cat give one last deep thrust, followed by pulsing throbs of its weighty, black-furred balls. 'Fwuckkk! Breed me!' Joshiro grunts out in a lust-drunk state, taking away any ambiguity about what might be happening before your eyes right now. The big cat shudders and growls in satisfaction as it floods its human mate with potent seed.";
		WaitLineBreak;
		say "     Calmly walking around the two of them and stepping into line of sight, the large cat glances towards you with his glowing green eyes, seemingly unfazed by your presence. In fact, he opens his muzzle to let out a sound that you think is feline amusement, after which he leans down to lick the human slut he just fucked, almost as if to proclaim that he got there first. Then the large beast pulls his powerful body away from Joshiro, leaving the man to collapse in a sweaty heap as the thick shaft of feline manhood is pulled from his rear end. The shadowy feline takes a final look at the man, sweaty, exhausted and leaking cum as he is, and almost seems surprised that he isn't turning into one of its kind. After a short moment of hesitation, there is a kind of shrugging twitch of its tentacles, then it strokes a gripping pad along his flank and gives a playful spank on the ass before flouncing off into the nearest corner of the courtyard. Throwing himself on his side there, he takes a majestic position of repose and begins to lick his crotch clean of any excess semen. After a moment, he settles in to watch what you'll do next as he mellows out.";
		if Player is male:
			LineBreak;
			say "     [bold type]What do you want to do now?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Line your dick up for sloppy seconds in Joshiro's fuckhole.";
			say "     [link](2)[as]2[end link] - Get to Joshiro and eat that ass out.";
			say "     [link](3)[as]3[end link] - Help Joshiro up and assist him in leaving the alley. He must be tired from all the fucking.";
			say "     [link](4)[as]4[end link] - Just leave, this isn't your mess to clean up.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 4:
				say "Choice? (1-4)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to fuck Joshiro, [link]2[end link] to eat him out, [link]3[end link] to help him up or [link]4[end link] to leave.";
			if calcnumber is 1:
				LineBreak;
				say "[JoshiroSloppyAlleyFuck]";
			else if calcnumber is 2:
				LineBreak;
				say "[JoshiroAlleyEating]";
			else if calcnumber is 3:
				LineBreak;
				say "[JoshiroAlleyHelp]";
			else:
				LineBreak;
				say "[JoshiroAlleyLeave]";
		else:
			say "     [bold type]What do you want to do now?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Get to Joshiro and eat that ass out.";
			say "     [link](2)[as]2[end link] - Help Joshiro up and assist him in leaving the alley. He must be tired from all the fucking.";
			say "     [link](3)[as]3[end link] - Just leave, this isn't your mess to clean up.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to eat him out, [link]2[end link] to help him up or [link]3[end link] to leave.";
			if calcnumber is 1:
				LineBreak;
				say "[JoshiroAlleyEating]";
			else if calcnumber is 2:
				LineBreak;
				say "[JoshiroAlleyHelp]";
			else:
				LineBreak;
				say "[JoshiroAlleyLeave]";
	else:
		LineBreak;
		say "     With a shrug, you leave the alley and Joshiro behind and simply continue on.";
		now Resolution of Slut Wanderer is 99; [disinterest]

to say JoshiroSloppyAlleyFuck:
	say "     You tear your gaze away from the non-hostile and sexually satisfied feline to focus on Joshiro instead, who's still slumped on the ground, semi-conscious after the hard fuck he just got. Something about how this Asian Adonis lies there sprawled out, sweaty, vulnerable, and all fucked out stirs your own lust greatly. Tossing your gear against the side of a dumpster and making quick time undressing yourself, you stand over him, your cock proudly erect as you look at the gaping chasm of the martial artist's leaking fuckhole. You can't help but throw the large cat a respectful look, he must be hung like a donkey to leave Joshiro in such a state. Wanting a better look before you take advantage of the easy lay the shadow beast has made for you, you flip the sex-addled fighter over on to his back. His physique is definitively worth the effort, as you enjoy a few moments of ogling, then groping and kneading his chiseled form.";
	say "     After getting your fill touching Joshiro's firm pecs and muscled chest, you let your fingers wander down south where you slip them between his legs. He is wet and slippery down there, with quite a bit of cum having leaked out and now forming sticky strings between his thighs as you spread them a little to get better access. The stretched-out hunk moans loudly, his head lolling a bit with eyes still closed as you finger his gaping hole, finding it very slick and receptive for further sex. With the chiseled man-slut ripe for the taking, you push his legs apart fully and line your erect [Cock of Player] shaft up with the freshly bred opening. Then you shove your cock into his loose fuckhole with a loud squish and begin to rape the helpless man just then and there.";
	WaitLineBreak;
	say "     The sudden deep penetration shakes Joshiro out of his semiconscious state and he bucks up from the ground, lust-hazy eyes blinking open in shock as he tries to sit up. Ready for this, you catch the lean, tanned male with your arms, wrapping them around his arms and chest as you hammer into him and pinning his limbs against his sides. 'W-whut? [if Player is not defaultnamed][name of Player]![end if] You're fucking me? Nnnghh. You're fucking me! Dawmmnnnghhh!' Confusion is written on the handsome man's face as he meets your eyes, his body currently so weak that you can easily man-handle it and suppress the tries to push you off. ";
	if Resolution of Road Wanderer > 3 and Resolution of Road Wanderer < 8: [fought against him in their first meeting]
		say "All it takes is a decent headbutt between the eyes to put the Asian man in a daze, his head lolling back in stupor. ";
	else if Resolution of Road Wanderer is 3: [fucked in the first meeting, on friendly terms]
		say "Grinning at him, you reply casually that you fucked him before, so what is he complaining about. 'Erh? Oh yeah, yeahhhhhght. Fuck that feels great,' he half says, half groans, calming down a bit and no longer struggling. ";
	else: [talked in the first meeting]
		say "Grinning at him, you casually ask if he'd like you to stop (not that you would). 'Erh? Oh no, this feels greaaght! Fuuuck!' he groans in reply calming down a bit and no longer struggling. ";
	say "With his attempts to get free now slackening, your vice-like embrace squeezes his chest pecs further than before, and you can see his meaty pecs bulging right before your nose, drawing attention to the hard points of his nipples.";
	say "     With a chuckle, you bend your neck a little and give Joshiro's areolas a playful lick, then catch his hardened nipple between your lips and suckle on it, which has a noticeable effect on the handsome hunk. He jolts in your grasp, any complaint forgotten as he shivers in ecstasy and slurs out, 'Fwack! Nnngh you suck my tits so good [if Resolution of Road Wanderer > 3 and Resolution of Road Wanderer < 8]you bastard[else]dude[end if]!' Continuing to use the weakened boy-toy like a flesh-jack, you slam hard against his ass, over and over in deep penetrations that leave cum squishing out and splattering your balls. Then suddenly, the desire to over-power this hunk and really savor being in control of him bubbles up in your mind, and you decide to act on it. Moving away from the entrapping embrace, you wrench both of his arms above his head and shove the man back onto the ground, ending up with his arms pinned above his head and you stretched out on top. Holding him down, you forcefully make out with him at the same time as savagely pounding his hole.";
	WaitLineBreak;
	say "     Joshiro clearly doesn't seem to mind being fucked roughly, as he moans into your mouth more often than not as you kiss him, then also wraps his legs around your waist and pulls you even harder against himself for each new thrust. Seems he can't even get enough while being piston-fucked. Drifting in and out of consciousness, Joshiro moans in one of his more lucid moments, 'Fuck yeah! I wanna be the best damn bottom there is! Fuck me up real good [if Resolution of Road Wanderer > 3 and Resolution of Road Wanderer < 8]you bastard[else]dude! I can take it[end if]!' He stares at your erection sliding in and out between his legs for a moment longer, then sinks back again in a lewdly moaning, exhausted mess. No matter, his wet, trembling hole still flexes and squeezes around your cock as if it is trying to milk you, and so you prepare to plant your seed deep in the needy whore. Moving in and out of the slick hole at ever faster speed, you feel your balls tighten and catch Joshiro's face by the jaw, holding him firm as you lean in to [if Resolution of Road Wanderer > 3 and Resolution of Road Wanderer < 8]meet his eyes with a gloating grin[else]kiss him full on the lips[end if] at he same time as you erupt deep in his insides.";
	say "     Grunting deeply, you pump your rich, creamy cum into the human hunk beneath you. He goes wild as the first spurt makes your cock throb hard against his prostate and moans, 'Breed me!' By the time the second spurt of your cum splashes into him, Joshiro himself is splattering his own seed all over his chest, the breeding he is getting from you just too much to take in. Breathing hard, your Asian toy-boy bucks and trembles as he plays cum-fountain, any further noises coming from his mouth just unintelligible babbling. Seems you've broken him, for now, and even while his cock is still spurting out further cum, Joshiro sinks back into unconsciousness. You yourself are left lying on top of him, balls-deep in that cream-filled hole, and you find yourself puzzled when you hear a strange, throaty sound from somewhere nearby. It's the tentacled feline, still lazing about and apparently amused at your antics.";
	WaitLineBreak;
	say "     Exhausted from your own fuck and momentarily unwilling to pull out, you find yourself watching passively as the big cat gets back onto its paws and saunters closer, his muzzle rising a little as he sniffs around you and your fuckhole of a partner. He bares his fangs and gives another one of those throaty chuckles and you wonder for a second if he'll do the same to you as Joshiro before, pouncing and claiming you for himself. But no, all you get is an experimental lick or two over the side of your sweaty neck and shoulder, followed by the beast padding past you, vanishing into the night after giving your ass a slap with one tentacle.";
	say "     This leaves you alone with Joshiro, lying on top of the passed out hunk as you catch your breath, then eventually pulling out and getting your gear and clothing back on. Glancing at the martial artist, you wonder if you should take him somewhere away from here, but given the fact that he seems to be out for what will be quite a while, and he's fairly heavy in a muscled kind of way, you just shrug and leave him where he is. It's not like he's on the middle of a main road, this out of the way courtyard should be suitable for him to sleep off his arousal.";
	now Resolution of Slut Wanderer is 1; [fucked J]

to say JoshiroAlleyEating: [for cumsluts, females, etc.]
	say "     You tear your gaze away from the non-hostile and sexually satisfied feline to focus on Joshiro instead, who's still slumped on the ground, semi-conscious after the hard fuck he just got. Something about how this Asian Adonis lies there sprawled out, sweaty, vulnerable, and all fucked out stirs your own lust greatly. Especially that gaping hole of his, sticky droplets of cum clinging to the cheeks around and much more of the sweet bounty buried inside... you can't help but lick your lips eagerly as you imagine burying your face in his ass. Then suddenly you realize that you can just do it - there's no one here stopping you, not the smashed hunk and not the lazily reclining feline. And so, you sink to your knees behind him and lean forward, then lower your head to Joshiro's ass. He smells of cum, sweat and pheromones, which sends a shiver of arousal down your spine.";
	say "     With an eager sigh, you plant your hands on the rounded globes of his ass, spreading the cheeks to expose the gaping chasm of the martial artist's leaking fuckhole. You can't help but throw the large cat a respectful look, he must be hung like a donkey to leave Joshiro in such a state. Then you open your mouth, stretch out the tongue and begin licking. Surely enough, the taste of this human's creampie is just primal, in an amazingly good way. Like potent ambrosia, creamy and savory to the palate, it delights your senses; even heightening them as you become somewhat giddy and almost drunk. You can't help but wonder what exactly the muscled fighter has up his ass, churned up by his last fucker. It can't just be the feline's seed, can it? No, with his libido, this is most likely the sperm of at least a dozen creatures, mixed together.";
	WaitLineBreak;
	say "     Licking your lips and taking another deep huff of the aroma, you plant your grinning face back between the cheeks of that voluptuous muscled ass in front of you. Following a playful idea born from the lust-addled carefree feeling that begins to suffuse your mind, you go so far as to knead his ass cheeks into sandwiching your face, all while you continue to eat out the muscled hunk. Joshiro meanwhile lets out long and deep groans, letting you and the feline know of his reawakened lust. Between his legs, the man's cock throbs and twitches as your tongue delves deep into his gaping hole. Lick after lick, you claim some of his creamy treasure and swallow it eagerly, the effects of the potent mixture making you ever more hungry for more. Yet soon, your tongue just can't reach any further, so you have to use your fingers instead, sticking them deep up Joshiro's rear end to liberate more of is cummy treat.";
	say "     Of course, being licked and fingered isn't without an effect on your target either, as Joshiro trembles in lust, his hands scratching over the ground as he tries to brace himself against your oral assault. He wiggles his rear end in your face, causing light slaps of his buttocks against your cheeks. Lust-drunk, he slurs out, 'Nnngh! Oh YEAH! Tongue my fucking hole! If you want it, come and get it!' Which you do eagerly, and in doing so you notice that the pulsations of his inner muscles when he's aroused deliver some more tasty cum to your reach. The next thing to do is obvious: You reach between his legs and start jerking Joshiro, all the while having your face planted in his crack, tongue questing deep into his asshole. 'Dawwmmnnghhh!' the Asian hunk groans as you massage and jerk his long schlong at the same time as tongue-fucking his ass.";
	WaitLineBreak;
	say "     It doesn't take all that long before your dual assault pushes the already exhausted hunk past the limits of his endurance, and he lets out a helpless moan as his balls start to unload all over the ground between his legs. His insides tremble and twitch at the same time, pushing more of the frothy cum along, to be eagerly slurped up by yourself. Joshiro slumps forward against the ground as his orgasm runs its course, simply passing out without another word. Meanwhile, you're reduced to [if Player is male]stroking[else if Player is female]fingering[else]rubbing[end if] yourself in a lusty haze, groaning to yourself and smacking your lips after licking up the last of the creampie that you managed to claim. Not really in the right headspace to do anything but sit and stare, you find yourself watching passively as the big cat gets back onto its paws and saunters closer, his muzzle rising a little as he sniffs around you and your passed-out partner.";
	say "     He bares his fangs and gives another one of those throaty chuckles and you wonder for a second if he'll do the same as you to Joshiro right now, pouncing as you are weak. But no, all you get is an experimental lick or two over the side of your sweaty neck and shoulder, followed by the beast padding past you, vanishing into the night after giving your ass a slap with one tentacle. This leaves you alone with Joshiro, leaning against the passed-out hunk as you ride out the high, then stumbling to your feet. Glancing at the martial artist, you wonder if you should take him somewhere away from here, but given the fact that he seems to be out for what will be quite a while, and he's fairly heavy in a muscled kind of way, you just shrug and leave him where he is. It's not like he's on the middle of a main road, this out of the way courtyard should be suitable for him to sleep off his arousal.";
	now Resolution of Slut Wanderer is 2; [ate J out]

to say JoshiroAlleyHelp:
	say "     You step up to the crumpled form of the martial artist, taking him under the arm and slowly pulling him to his feet. He's fairly heavy, in a muscle-packed way, so you struggle to get him upright. 'Huh? Whazzat? I don't wanna get up yet,' he slurs at you in a lust-drunk way, blearily blinking to focus on you. You tell him that he shouldn't just lie around in alleys and ask if he's alright to stand while you grab his shorts. He nods somewhat crookedly and just to be on the safe side you lean him against the wall so you can grab his clothing - futilely, as it turns out, as the man immediately begins to stumble after you, overshoots and falls flat on his face after a few steps.";
	say "     This draws an amused, throaty chuckle from the large cat that fucked him just a little while ago. The feline beast then demonstrates just how long its tentacles are, reaching out with one to wrap it around Joshiro's arm and pull him closer. Soon, the naked hunk is curled against the feline's side, lulled to sleep as the cat purrs to him and holds him securely with the tentacles. A throaty growl gets directed to you as you make a step in their direction. Seems like the cat decided he can look out better for the Asian hunk, or he just possibly wants another fuck later on. As both options don't seem to put Joshiro in any danger, you eventually just shrug and leave them like that, then walk out of the alley.";
	now Resolution of Slut Wanderer is 3; [tried to get J out, failed]

to say JoshiroAlleyLeave:
	say "     Glancing down at the sweaty, cum-leaking and semiconscious man, you think for a moment, then shrug and turn around. Not your problem if he gets himself into situations like the town drunk. With the large feline giving a throaty sound of amusement from behind, you're out of that alley in no time at all, and on your way.";
	now Resolution of Slut Wanderer is 4; [left J after watching him be fucked]

Table of GameEventIDs (continued)
Object	Name
Jumping The Dobie	"Jumping The Dobie"

Jumping The Dobie is a situation.
The Prereq1 of Jumping The Dobie is Road Wanderer.
The Prereq1Resolution of Jumping The Dobie is { 1, 2, 3, 4, 5, 6 }.
The sarea of Jumping The Dobie is "Red".

Instead of resolving a Jumping The Dobie:
	say "     Strolling through the red light district, you come upon a warehouse or something, fairly inconspicuous even though it is two stories tall. It doesn't really look like anyone has paid the place too much attention since the nanite apocalypse began, which might mean that there is something worthwhile left inside. The front door is locked tight, but through the chain link fence surrounding an adjacent parking lot, you see a small side door at the far end of the building, next to a loading dock. Maybe that could be your way in.";
	say "     [bold type]Do you try to get access to the building?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure, let's scavenge the place!";
	say "     ([link]N[as]n[end link]) - Nah, who knows what is waiting inside.";
	if Player consents:
		LineBreak;
		say "     Out to find a way in, you wander along the fence and after just a little while, you come upon a spot where it is damaged, showing all the signs of being worked on with a bolt cutter. This allows you to bend up a part of the mesh and slip inside, to soon arrive at the side door. On closer inspection, its frame has a patchy look around the lock, where it was inexpertly repaired after a previous break-in. This is only to your advantage, as it takes only a sharp wrench of the doorknob to rip the soft plaster out of the wall, after which the door swings open with no trouble at all. Beyond, a well-filled warehouse awaits you, pallets of boxes stacked high in it. Curious what you have found here, you move to the closest one and make short work of a carton box, out of which you pull... DVDs and BluRay Disks of various porn releases. There must be thousands and tens of thousands of those in here!";
		say "     Checking several more boxes for anything that might be a bit more useful than the disks, you are disappointed in finding just more of the same. Well, almost - that one section is all interracial, this one gay, and so on. After about half an hour of searching, you're almost ready to call it a day and simply leaving, but then you realize that there is a set of stairs on the wall near the front of the building, leading to a boxy office on stilts. Hoping that there might be something up there at least, you dash through the fairly dark inside of the building to check it out, then climb up the metal stairway and enter it. Hmm, going through the rooms, you find an unpowered computer, several filing cabinets, a fireman hunk calendar with delivery dates, and... a stash of energy bars in the lowest drawer of the desk! Grinning, you shovel the treasured items into your backpack.";
		LineBreak;
		say "[bold type]You gain 3 food![roman type][line break]";
		increase carried of food by 3;
		WaitLineBreak;
		project the Figure of Tyke_clothed_icon;
		say "     Over the rustling of the candy wrappers, you pretty much overhear the first call coming from outside the building, only realizing something is going on as it is repeated and you register the louder words of 'Hey Tyke!' Zipping up your backpack, you stand up and step towards the office's windows, through which you can see the adjoining building (a garage) and the parking lot between it and your location. Tyke, the towering and fairly over-muscled doberman you've seen at Darius's place is standing in it, next to a party bus that must have been in some sort of accident, as only some fragments remain of the tinted windows it once had. The person shouting after the large canine is another man you know - Joshiro, whom you ";
		if Resolution of Road Wanderer is:
			-- 1:
				say "met and had a chat with.";
			-- 3:
				say "met and had some fun with.";
			-- 4:
				say "met and took down to have some fun with.";
			-- 5:
				say "met and fought, only to be ridden by him afterwards when you lost.";
			-- 6:
				say "met and fought, with him winning in the end.";
			-- 7:
				say "attacked, then ran away from afterwards.";
		say "     Tyke is looking at the boyishly grinning martial artist in slight shock as he comes closer to him in a rapid lope. 'What the fuck are you doing here fag? Did you follow me or what?! Go away, I - I'm busy.' Joshiro comes to a halt not too far off from the larger male, taking a proudly posing stance that pushes his hips forward, showing off the bulge in the red shorts that are still his only item of clothing. 'Sure I looked for you. T'was fun last time big doggie. And also - don't you want a rematch with the tiger? Afraid to take me on, are you?' Tyke bristles, his hackles rising, 'Hey! No way, I can give your ass a beating any time I want. I'm not afraid of no thing!' The Asian hunk chuckles in reply and calls back, 'Oh, so you want to pound my ass? Good to know.' He spins around and wiggles his rear playfully, making the dobie even more flustered. 'Wha- NO! Fuck off with this gay shit!'";
		say "     [bold type]You can see where this is going from a mile away. A fight, and then someone's definitively gonna get fucked. Do you want to stay at the window and watch?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure thing. Too bad there's no popcorn.";
		say "     ([link]N[as]n[end link]) - Nah, not interested.";
		if Player consents:
			LineBreak;
			say "     Grabbing an office chair and wheeling it over to the windows, you plop yourself down and gaze outside, where Tyke just finished another snarled reply and waves his stacked arms to chase Joshiro off. The human fighter shows a bit of a sullen expression, shoulders sinking as he calls out, 'Fine, be that way. I guess I'll just have to go... to have the proper windup!' While talking, he wanders a little distance to the side, then suddenly starts out with a mad sprint towards Tyke, jumping off when he's just about ten feet distant and throwing himself at the large canine. He hits the perplexed dobie's chest with a meaty thud and wraps himself around the big man, arms encircling his broad shoulders and clamping together behind his head, legs wrapping around Tyke's hips. Given his momentum, he almost bowls the anthro canine over, with only the side of the party bus stopping them from tumbling to the ground as Tyke falls against it.";
			say "     Shaking his head to get over the shock of such a sudden attack, Tyke bares his teeth and snarls, 'Stop that you - you...' He loses his train of thought as the clingy human lets himself slide down a bit further, then humps against Tyke's own bulge, crotch to crotch. Before the muscled canine is even able to set his paws on his pesky assaulter, Joshiro slips off him and ducks between Tyke's muscled legs, then pulls the larger male's paws out from under him and sends him toppling over. Pouncing on the anthro from behind, Joshiro restrains him in first a submission hold and then follows up with a camel clutch. Pretty fired up from the constant pestilence of the smaller male, Tyke lets out an aggressive growl and flings Joshiro off his back with brute force, sending him to crash into the side of the damaged bus with a loud bang and adding another deep dent in its metal.";
			WaitLineBreak;
			project the Figure of Tyke_naked_icon;
			say "     Resilient as he is, the Japanese hunk bounces back from even that impact and start another teasing shout, 'Hah that's one nice mo-Uucck!' Interrupted by a large paw-hand closing on his throat, Joshiro brings out only a choking noise as he is lifted off the ground. 'Okay, ENOUGH of this! Li'l bitch! I'll - I... I'll fuck you up you damn faggot and I'm not gonna be gentle!' Tyke shouts loudly, shaking his captive a little bit till he is almost passed out and surely seeing stars. With a snort, the large dobie throws the dazed male over his shoulder and pushes the door of the damaged bus open. Looks like things are just about to get heavy. In short notice, Joshiro is thrown onto a broad sofa inside the bus, his red shorts wrenched down and flung out one window, then pushed into doggy-style position, head pressed into the cushions by Tyke's large hand, ass raised up in presentation.";
			say "     With his blood pumping as it is now, Tyke doesn't waste much time in undoing his zipper and pushing down his shorts, then hefting the massive piece of meat between his legs to line it up with Joshiro's ass. Growling aggressively, the large dobie just rams himself home, overwhelming the man's pucker in a sharp thrust that brings with it a squelching noise. 'What the?! You're fuller than a three dollar whore! Damn, look at all the frigging cum squelching out of you!' Looking at it from your perspective, it's hard to tell if Joshiro's copious mating with all sorts of creatures is what saves his ass from being torn up in the rough pounding that follows, or if Tyke throws his last restraints overboard as he realizes just what a slut he's got under him. No matter which, he goes wild, really hammering the rape-bait human with all his might.";
			WaitLineBreak;
			say "     Joshiro lets out whorish moans with each new thrust into is raised ass, apparently enjoying himself despite the hard treatment. He holds himself defiantly against the anal invasion from his prized top, shuddering and often drifting into micro orgasms as Tyke drills himself into Joshiro's depths like few could possibly do. In the heat of the moment, the hulking Doberman anthro hefts a leg up and pins his manslut down by the shoulder blades; causing the tanned Japanese hunk to moan even more lewdly than before into the musky bus's couch. Shifting the angle of his brutal fucking flexes Joshiro's hole in a slightly different way than before, and the next harsh thrust by the alpha male canine creates a narrow squirt of cum fountaining up from the human's rear, splattering Tyke's chest and the side of his muzzle. 'What's that smell? Nnnghh.' Tyke grunts out somewhat puzzled, then reflexively licks the splash of white off his muzzle.";
			say "     'Y-yeah Babe! You like it too, eh? That's orc cum! Some green brute named Mul gave me the fuck of my life when this whole situation started, and since then... I've been craving to be bred. Found a hunky greenskin not long before I came to you too. The stuff's awesome and keeps you going nonstop!' Tyke shakes his head and comments, 'Dayum! Ya sound like a crack whore, li'l fag.' Yet even as he does so, the big man's hand wipes off the cum from his chest, and he licks it clean seemingly on autopilot. The drug-like aphrodisiacs in the orc seed unfold their effects only seconds later, driving Tyke to renew his assault on the helpless human under him. As the dobie is getting close to orgasming, the bulge at the base of his cock starts to swell, which means that the next harsh thrust rams an especially large intruder past Joshiro's pucker, making both of them grunt in helpless lust.";
			WaitLineBreak;
			say "     Barking in satisfaction as his balls slap Joshiro's ass and his knot locks the two of them together, Tyke follows up with a loud howl as his balls start to flood the martial artist's already well-bred ass. With no place to go due to the thick shaft plugging his rear end, all the cum gushing into the moaning human stays right inside him, meaning that his belly swells up moment by moment, soon making him appear almost as if he was in an early pregnancy. The sensation of being filled by the aggressive top is enough to drive Joshiro over the edge just a few heartbeats after Tyke, and he bucks wildly under the large man, creaming the couch he's pinned on. The two of them grind against each other for some more time, riding out their mutual climaxes and enjoying the afterglow.";
			say "     A little while later, Tyke looks around for a more comfortable place to be than bent over his sweaty boytoy, then just slides his arm under the man and picks him up. Carrying Joshiro along, he throws himself onto a clean couch, his knotted partner clutched to the broad chest on the dobie. Leaning back and letting out a long breath, Tyke says, 'Well, you're a crazy, faggot bitch. But I kinda like how you squeeze my dick.' 'You mean like this?' Joshiro replies, arching his body and swaying his hips, which draws a shocked indrawn breath from the doberman, followed by him clutching his fucktoy to keep him still. 'No one ever tell you that a knot is sensitive after cumming?' he barks out with a wince. 'I don't fuck dogs. Regularly, I mean. How should I know?' Joshiro tells him with a grin, then reaches up to scratch behind the other man's ears.";
			WaitLineBreak;
			say "     Solence stretches out between the two of them for a while, with Tyke simply holding the other man to his chest and allowing Joshiro to rub the sensitive base of his ears. Finally, the massive 'So, err... I'm not gay, you know.' The tanned Asian man resting on his chest shrugs in reply. 'Never said you were. But you're really quite the fucker, that's for sure. I'll keep coming back for more, so how about you stop resisting? Not like you didn't enjoy this round.' With that said, the human tugs one of the large paws of his fucker to lay on his bulging belly, swollen with Tyke's cum. After grunting noncommittally, Tyke falls silent and just sits there for a little while, his fingers stroking over the curve of Joshiro's belly with surprising gentleness.";
			say "     Finally, he says, 'Aw fuck it, why not? You've really got one sweet fucking ass. So, you're my bitch now li'l J, just so we understand each other. Gonna fuck you when I want, where I want, and you better be available.' The tanned martial artist grins broadly as he hears his top say those words, and he replies, 'Will do, big dog, will do.' Then he leans his head back against the large canine's broad chest and dozes off, with Tyke himself not far behind. Looks like they really exhausted themselves with all the fucking and fighting.";
			now Resolution of Jumping The Dobie is 1; [watched them fuck]
		else:
			LineBreak;
			say "     With a shrug, you shoulder your backpack and leave the office, ignoring the sounds of a fight starting outside. Dashing through the dark warehouse and exiting on the other end, you make sure you don't come anywhere near the area where Tyke and Joshiro are duking it out right now and just wander off into the red light district.";
			now Resolution of Jumping The Dobie is 2; [didn't watch them fuck]
	else:
		LineBreak;
		say "     With a shrug, you turn away from the location and wander down the street instead.";
		now Resolution of Jumping The Dobie is 100; [not interested]
	now Jumping The Dobie is resolved;

Table of GameEventIDs (continued)
Object	Name
Sloppy Seconds	"Sloppy Seconds"

Sloppy Seconds is a situation.
The Prereq1 of Sloppy Seconds is JoshiroEncounterTale 1.
The Prereq2 of Sloppy Seconds is Jumping The Dobie.
The Prereq2Resolution of Sloppy Seconds is { 1, 2 }.
The sarea of Sloppy Seconds is "Red".

Instead of resolving a Sloppy Seconds:
	say "     Exploring the red light district, you are just strolling along a street and passing some unimpressive houses that likely have long been looted when a scuffle breaks out on the other side of the street. Looks like a herm hyena and a tigress hooker are having a disagreement about the price of her services. The noise soon draws the feline's pimp, who approaches in a combative manner. For a second it looks like the hyena will get fleeced by those two, but then she calls out loudly and two more of her kind step out of a nearby alley. This escalation heralds trouble, you're sure, and since you have better things to do than getting dragged into that, you take the easy way out by stepping into the building right before you through its leaned-to door. Sounds of a fight start just as you close the door behind you.";
	say "     You check for a back door, but have little luck, so you shrug and decide to check the building out while you wait for situation outside to die down. Sadly, the interior of the building is about what you expected: Run-down apartments with their flimsy furniture mostly smashed by someone who rifled through them. Going from room to room, you find nothing worth even the effort of bending down to pick it up, and eventually end up on the roof of the two story building. There's a little wooden shack built in the back corner of it, a pigeon coop, but even that is just filled with open cages and a whole lot of scattered feathers. You idly wonder if this means that the owner became a pigeon himself, the birds transformed, or something came and ate them. No way to tell really, so eventually you shrug and leave the shack through its crooked door.";
	WaitLineBreak;
	project the Figure of Tyke_clothed_icon;
	say "     Just as you are about to wander to the front of the building to check on the street fight, you hear noise from behind it. Glancing over the edge of the roof, you spot two anthro canines walking through the alley down there, a muscled dalmatian and his even bigger doberman buddy. It's Darius and Tyke. 'So, what did you wanna show me so bad dude? Dragging me out here all of a sudden!' the black and white furred drug dealer asks and his companion grunts, 'You'll see,' as he uses his superior bulk to drag his friend after himself. From your raised position, you see where they're going already - on the other side of a half-broken fence cutting the alley in two, there is a mattress laid out, and on it you recognize a bare-ass naked Joshiro. The human male is stretched out on his front and dozes, with fresh cum trickling out of his ass. He must have been fucked hard not too long ago to put him in such a state.";
	say "     As he gets pulled through the hole in the fence, Darius calls out, 'Whoa! What's this? Dragging me out here to introduce your new girlfriend, dawg? You've really fallen for this gay shit, didn't you?' Tyke grunts and makes a throwing away gesture. 'Naw man, I'm not gay! It's just this faggot here! He's something else - try him and you'll see.' Darius ruffles his muzzle and shakes his head, 'You kiddin'? No way I'm gonna stick my dick in a dude!' 'Yes way! Time for you to learn for yourself what I mean!' Tyke responds, his hand grabbing Darius by the neck and shoving him forward. 'What the fuck?' Darius shouts back, yet his buddy doesn't budge, simply cracking his knuckles and nodding towards the naked man. 'Get yo dick in there, man. You're not leaving before you do.' 'That's whacked man, I -' Darius starts to reply, but his words stop as Tyke lets out a threatening growl.";
	say "     [bold type]Do you want to keep watching?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure, let's see where it goes.";
	say "     ([link]N[as]n[end link]) - Nah, check the front of the building and see if the way is clear by now.";
	if Player consents:
		LineBreak;
		project the Figure of Darius_face_icon;
		say "     'Fuck!' Darius curses as he turns away from his friend, fully taking in the naked man in front of him for the first time. He mutters something you don't catch, then reaches for his belt buckle and soon slides his jeans down, pulling first his left then his right paw out of them. 'You can hold my pants if yo crazy ass is gonna make me do this!' Darius shouts at his friend and flings his jeans to Tyke, who catches them easily. 'They better not get dirty,' the dalmatian adds gruffly, to which Tyke just chuckles and hangs the article of clothing over his shoulder. Not having any other reason to delay what is demanded of him, Darius steps forward slowly and sets his paw on the mattress. The movement draws attention from the dozing human on it, who groggily rubs his face and says, 'Nngh, Tyke baby! Breeding me again so soon?' Darius barks in an indignant tone, 'Nah, I'm not your faggot boyfriend! He's forcing me to fuck ya dirty ass!'";
		say "     Joshiro pushes himself up on his elbow and half turns around, looking in confusion to the two canines. His gaze wanders over Darius's spotted shape, his muscled chest and then down to the anthro canine's crotch, where a red-skinned cock is already pushing out of his sheath. 'Okay, I'm fine with that,' the human calls out and picks himself up from the mattress to get on all fours, presenting his ass to Darius. The dalmatian looks down at his growing erection in dismay, weakly saying to no one in particular, 'That's just because... this skanky ass's sex scent is all over the place. And the fucker presenting like a bitch that wants to be bred. Anyone would get hard from that.' Joshiro smiles from over his shoulder at the dalmatian, wiggling his rounded buttocks playfully. Despite the fact that Darius is battling with himself, unconsciously gulping in lust yet shaking his head in disbelief at what he's supposed to do next, he gets onto the mattress too, kneeling behind the eager human buttslut.";
		WaitLineBreak;
		say "     Giving the sex-primed Asian hunk a wink, Tyke calls out teasingly, 'Show my pal Darius here the works eh, J? Don't needa go easy on him. Really squeeze that knot when he's inside you!' With that said, the towering doberman strolls a bit closer, eager to see all the action. Just in time too, as Joshiro wastes not a second more time. Ramming his ass into the Dalmatian's crotch, he takes the shaft of the large dog to the root, his puffy ass-lips easily sliding over the throbbing red member thanks to Tyke's earlier creampie lubing his hole. The aggressive move pushes Darius to grunt in arousal, panting with his tongue hanging out and gasping in several nosefuls of the musk of sex, cum and joyful sweat around Joshiro. The heady mixture finally breaks the canine out of his indecisiveness and his hands snap forward to grab the human's hips tightly. Unable to control his primal drive to mate, the drug dealer grinds against the pale-skinned ass of his male bitch and barks out in pleasure.";
		say "     Awestruck from the unbelievable sensations of his rather unpreferred lay, Darius lolls his head back in a pleasured moan, his gaze thankfully to unfocused to see you watching them from above. Meanwhile the Asian hunk isn't idle, rocking back and forth to let his ass repeatedly swallow the thick canine cock from top to base and goading Darius with whorish moans. Before long, the muscular canine falls right into treating his eager buttslut like a bitch in heat and starts pounding, going all out in his harsh thrusts into the trembling insides of Joshiro. Tyke isn't unaffected by the rousing atmosphere of lust down in that alley either, and he licks his muzzle hungrily as he strokes himself. Sitting down on a stack of not too grimy abandoned crates, he is clearly entranced by the sight and smells of his best friend mating the freaky human slut he has come to enjoy so often lately.";
		WaitLineBreak;
		say "     With all that vigorous action he is taking in his rear, Joshiro moans out like a bitch in heat. And from all appearances, that's more or less what he is right now. Arms shaking, the man steadies himself as best as he can to take the hard pounding his canine partner is dishing out. Seems like he is focusing all of his attention on making sure Darius changes his mind about fucking men. Biting his lips slightly, the sweaty human peers over to his favorite doberman, locking gazes with him as they give each other mutual, hungry looks. Watching almost in a trance as his Asian buttslut's muscled pecs bounce with each forceful impact from behind is drawing the 'straight' dog in, and the large man finds himself on his feet almost despite himself, slowly walking forwards and breathing in more of the heady aroma of sex and Joshiro's pheromones as he comes closer.";
		say "     'Nnggh! Yeah Tyke, get o-over her-e! Fuck. He's s-so BIG! But I want my-Nngh! Alpha's c-cock too!' Joshiro whimpers before crumbling for a moment to rest his upper body onto the mattress as Darius ravages his prostate. 'Heh, what a fucking insatiable slut! Love it! I hope you know what you're asking for...' Tyke replies with a grin and steps onto the mattress, giving his dalmatian friend a fistbump as he moves into position at the human's other end. 'Alright bitch, open that pretty mouth of yours for daddy,' he barks out, the last few words more grunted as the human buttslut is already nuzzling his crotch and stretching one arm up to feel the ripped body of the massive doberman. In turn, Tyke reaches out to grope and knead Joshiro's meaty pecs, pinching his nipples lightly which spurs the Asian man on greatly.";
		WaitLineBreak;
		say "     Riding his lust to the event horizon of the incredible sex he is having with his best bud's fuckboy (or maybe actual boyfriend, from the looks of it), Darius's thrusts come ever harder, if at slightly slower speed as he really savors the quivering hole around his dick. His lusty growls and barks join in tandem with Tyke's howls, echoing through the alley, street, maybe the whole red light district. Undaunted by being throat-fucked with his favorite doggy bone at the same time, Joshiro senses nevertheless that the dalmatian behind him is getting quite close, and he slams himself back with the full intention of letting the spotted canine knot him. Darius has other plans though, as he shouts, 'Aww, FUCK No! I'm not gonna knot no dude and be tied to a guy for half an hour! You can let that faggot mutt you got in your mouth do it! That's one fucking ace hole I admit, but mating you? Nawh man. Nope!'";
		say "     Wrenching his dick out just barely far enough to let his knot swell up outside of Joshiro, Darius growls in lust, his tail wagging up a storm as his balls start to throb and a volley of creamy seed gets pumped into the human's already cum-sloshing hole. Eyes meeting Tyke's gaze as he groans around his big dobie's thick cock, Joshiro gives a shrug in mild disappointment, only to have his hair scruffed affectionately by the alpha male anthro. 'Don't listen to him dude. You did great!' Somewhat disgusted at the affection of his pal and his man-slut, Darius wraps a hand around his knot to squeeze it tightly, fucking the Asian Adonis with everything he has left, rock hard as he breeds his ass with a deluge of warm, sticky cum and churns it together with Tyke's earlier load. When the pulsing of his balls eventually ebbs off, the panting drug dealer grunts in satisfaction and pulls out with little fanfare, leaving the man's whorish hole gaping and gushing cum onto the old mattress.";
		WaitLineBreak;
		project the Figure of Tyke_naked_icon;
		say "     As Darius falls back and pants in exhaustion, disinterested in further contact with the man he was made to fuck, Joshiro lets out a needy whine and reaches back to feel his hole with trembling fingers, sinking them into his gaping opening. As that isn't enough either, he pulls off Tyke's shaft with a slurp, then looks up at the large canine and says, 'I feel so empty Ty.' The dobie grins broadly and barks out in answer, 'Can't have that, can we? A good slut deserves to be used properly.' With that said, the muscled canine slides his hands under Joshiro's arms and picks the man up bodily, drawing him up to his chest. The sudden burst of man-handling makes the Asian man's muscles twitch in surprise, which sends a squirt of dog cum from his ass to land on Darius's legs, drawing an immediate complain of, 'Ew, your fag slimed me!' from Darius. The other two males totally ignore him though, as Tyke lines Joshiro up with his erect pole.";
		say "     A deep grunt and joyful shout echoes from out of the alley as the human buttslut is rammed down onto his canine lover's shaft. The big red pole stretches his hole wide around its girth and white frothy cum squirts out around it, Joshiro's insides just being too full to contain it all. The dog's muzzle meets his smaller human's lips and they kiss frantically, Tyke's long tongue slipping into the Asian man's mouth. There is no need for words between them any more in that moment, their boundless lust unloading as a furious bout of a thick shaft ramming in and out of its welcoming cock-sheath. Wound up and ready as they are, it doesn't take long at all before Tyke's arms wrap even tighter around his mate and he rams himself balls deep, knotting the man as he starts to unload yet another load into him.";
		WaitLineBreak;
		say "     Tyke's strength falters for a second from the sheer power of his orgasm and he literally falls over backwards, landing on the stained mattress with Joshiro stretched out on top of him. The human groans as he is bred, one hand flying to his stomach to feel it swell with more cum inside, the other jerking his dick a few more times until it erupts with cum, drawing white lines on the dobie's chest-fur. The enormous canine just lies on his back, eyes closed and panting happily, his arms wrapped around the sweaty bundle of Asian man now also flopping down weakly on his chest. The two of them rest for a moment in the happy afterglow of their shared orgasms, and the renewed connection made by knotting man to anthro beast, until an amused bark by Darius breaks the mood. Turning his head to throw his buddy a tired look, Tyke barks, 'What?!'";
		say "     Darius grins at him, still naked and with his dick swinging freely, although now having had time to wipe the cum off his leg. 'Oh, nothing. Just wanted to let you know that I admit I was wrong. Pounding a primo slut like this is hell'a fun and doesn't make you a fag. Knotting the bitch while making out with him and then going into a cuddle puddle on the other hand - that's kinda gay, buddy.' Tyke rolls his eyes and groans, then stares at Darius and opens his mouth to give a heated reply, only to be stopped by Joshiro pecking the tip of his muzzle. Meeting the human's eyes in surprise, the dobie pauses for a second, then seems to come to a decision. 'Fuck it. Up yours then, Dar! I actually like this slut, so what if he's a dude.' Darius eyes widen a bit at that admission, but the dalmatian moves on to shrug almost immediately and grabs his pants from the ground. 'Fine, gonna leave you lovebirds for the honeymoon then. See ya around dawg, we can have a drink later.'";
		WaitLineBreak;
		say "     Darius walks off without even putting his clothing back on, free-balling it for all the world to see. This leaves the human canine couple of Tyke and Joshiro alone in the alley, entwined and knotted together. 'So I'm 'your' slut now, eh?' Joshiro asks somewhat amusedly, making Tyke snort and nod. 'Ya better believe it, dude. I'm not gonna give up breeding that hole of yours anytime soon. Or pull out of it, as I'm hard as a rock right now.' The naked and sweaty human wiggles his ass on the shaft impaling it a little, drawing a gasp from Tyke who clamps his hands tightly on the man. 'I'm sure we'll find a way to while away the time,' the Asian Adonis says with a smirk, then stretches his neck to start making out with his top dog.";
		say "     As the two of them settle down into mostly just kissing, holding each other and quiet words being exchanged, you step back from the edge of the roof and wander to the other side, checking on the street fight that actually made you go up here. The road in front of the house is empty and shows no trace of the combatants, which is fine by you. Making your way to the roof access door, you walk down the stairs and soon arrive on the street, which you follow to leave the area.";
		now Resolution of Sloppy Seconds is 1;
	else: [no interest in watching them]
		LineBreak;
		say "     Turning your back on the argument between the two anthro dogs, you stroll back towards the front of the building to have a glance down at the street fight. As you do so, it becomes apparent that even with three to two odds, the hyenas were no match for the vicious pimp and his working girl. You only see two hyenas though, so maybe the third one ran off when things started to go against them. The other two are on the ground, groaning and holding their sides, with the colorfully dressed pimp standing over them. 'Thought you could fuck one of my girls and not pay, eh? Bad idea. You'll pay alright now, with your bodies! And you'll keep earning me money for a long time after you're done transforming!' He pulls his dick out then and there, slapping one hyena that sits up in the face with it, then forcing it into her muzzle and giving a few pumps while he keeps a tight grip on her hair.";
		say "     'That's it girl, suck your master!' the man shouts in triumph as his captive soon quits struggling, instead letting herself be face-fucked obediently. He glances down to see her cock hard and pussy dripping, laughing at how quickly the herm came around. 'Let's give you the proper induction into my stable of girls in a more comfortable place. Up and follow, bitch!' With a nod to the tigress to pick up the second hyena, he saunters off after that, leaving the way clear for you to get out of this place too. Walking over to the roof access door, you hear some excited barking and the rhythmic slapping of sex from behind the building. Shrugging, you don't even go to see who is fucking who and just make your way down to the street, then leave the area for now.";
		now Resolution of Sloppy Seconds is 99;
	now Sloppy Seconds is resolved;


Section 2 - Talk Menu

to say JoshiroTalkMenu:
	LineBreak;
	now sextablerun is 0;
	say "     When you're eventually able to get a word in edgewise, you talk to Joshiro about:[line break]";
	blank out the whole of table of fucking options;
	[]
	if Player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Who he is";
		now sortorder entry is 1;
		now description entry is "Ask questions about him";
	[]
	choose a blank row in table of fucking options;
	now title entry is "What he is doing here";
	now sortorder entry is 2;
	now description entry is "Ask why he is wandering the streets";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Why he's still human";
	now sortorder entry is 3;
	now description entry is "Ask how he remained unchanged by the nanites";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Having sex with him";
	now sortorder entry is 4;
	now description entry is "Offer the human man a good time";
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
				if (nam is "Who he is"):
					say "[JoshiroTalk1]";
				if (nam is "What he is doing here"):
					say "[JoshiroTalk2]";
				if (nam is "Why he's still human"):
					say "[JoshiroTalk3]";
				if (nam is "Having sex with him"):
					say "[JoshiroTalk4]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the human male and say your goodbyes, then walk down the street in another direction as him. 'Hope to see ya again!' Joshiro calls after you, waving before he moves on himself.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JoshiroTalk1: [who he is]
	say "     As you ask him about himself, the Asian man's expression falls for a second before he puts on a determined smile once more. 'Really? Never heard about me? Joshiro Arashi? Kickboxing champion of the West Coast League since last fall? Man, I should get a better agent!' He grumbles a little and shrugs, then turns his attention back to you. 'Anyways, I'm a martial artist and am training for the national championship. You'd have recognized me for sure if this whole thing had happened two months later, after I won!'";
	say "[JoshiroTalkMenu]"; [looping back for more conversation]

to say JoshiroTalk2: [what he's doing on the streets]
	say "     As you ask what he is doing out here in the streets, the martial artist laughs and puffs up his bare chest a little, playfully flexing his muscled pecs to show off. 'I'm gonna be famous, you know. With all this free training here, I'll not only ace the national championship, but there'll be lots of opportunities besides that when we get out of here. A movie deal for sure - [']Joshiro the Monster Puncher[']. Maybe they'll even make a video game about me, hah!' Listening to his eager chatter about the cloud-castles he dreams lie in his future, you have to admit that he definitively has got spirit in spades, never faltering to think big despite the dire situation everyone in this city found themselves in.";
	say "[JoshiroTalkMenu]"; [looping back for more conversation]

to say JoshiroTalk3: [why he is human]
	say "     As you bring up the question of why he's still completely human and not changed like almost everyone else, the boisteous man hesitates for a second, then shrugs and replies jokingly, 'Maybe I'm just that tough. I don't know. Haven't noticed any chances about myself, even after wrestling down all sorts of beasts.' He stretches his arms up one by one, turning and inspecting them, followed by doing the same with his legs, and then even lifting the waistband of his shorts to check out what lies inside. A grin is on Joshiro's face as he looks up after that and says, 'Nope, everything normal around here. Just as big as it always was, if you know what I mean.' He throws you a wink, then pauses for a moment and rubs his chin.";
	say "     'One thing did change though, if I have to be honest. I wasn't a slouch in bed before, don't misunderstand this, but... ever since I ran into that big green brute at the start of this mess, and got a load of his pumped up my rear... well, my libido has been in overdrive. And I learned that I really, really like to take dicks up my ass. Seems I was missing out before, maybe it's just my body deciding that it should catch up on that, eh?' Despite what he's telling himself, you can't help but wonder if the nanites didn't have a certain effect on this man after all. Not everything that those things to is visible to casual observation after all.";
	say "[JoshiroTalkMenu]"; [looping back for more conversation]

to say JoshiroTalk4: [offering sex]
	if Player is not male: [he really wants to be fucked, so females/neuter are a bit out of luck]
		say "     As you offer Joshiro to have a good time with him, the Asian man gives you a look up and down, then blows out his breath, rubbing the back of his neck in slight embarrassment. 'You know, a little while ago before all this, I'd have taken you up on that in a second. Now... well, it's like this: I found the most amazing feeling ever, and it comes from taking a big, juicy cock up my rear end. Not sure if I'll ever get enough of that, but until I do, I'd like to focus on trying out everything anal. You wouldn't believe the positions that come up in my mind all of their own, or the variety of dicks that people swing these days! Damn, there was this one guy I met yesterday who had [one of]a two foot horsecock[or]a huge knotted shaft[or]two dicks, side by side[or]a prehensile dick[or]this wiggling tentacle-thing[or]a shaft literally as thick as a beer can[at random]! That felt freaky - freaky good - in me!' He's lost in the memory for a second, then shakes it off and tells you, 'So. Erm. No hard feelings, but thanks, not now.";
		say "[JoshiroTalkMenu]"; [looping back for more conversation]
	else:
		now Resolution of Road Wanderer is 3; [sex with the player]
		say "[JoshiroSexMenu]"; [moving on to sex]

Section 3 - Joshiro Sex Menus

to say JoshiroSexMenu:
	LineBreak;
	now sextablerun is 0;
	say "     What would you like to do with the eager Asian dude?";
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Have him blow you";
	now sortorder entry is 1;
	now description entry is "Ask Joshiro to suck you off (includes anal finish)";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fuck his ass";
	now sortorder entry is 2;
	now description entry is "Ask if you can fuck his rear end";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tease his hole (includes rimming)";
	now sortorder entry is 3;
	now description entry is "Play denial games with the human buttslut";
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
				if (nam is "Have him blow you"):
					say "[JoshiroSex1]";
				if (nam is "Fuck his ass"):
					say "[JoshiroSex2]";
				if (nam is "Tease his hole (includes rimming)"):
					say "[JoshiroSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the human male and say your goodbyes, then walk down the street in another direction as him. 'Hope to see ya again!' Joshiro calls after you, waving before he moves on himself.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JoshiroSex1: [let him blow you]
	say "     A smile spreading over your face, you offer the Asian hunk the chance to blow you off, and Joshiro literally licks his lips in anticipation as he nods to you. 'Oh, you wanna feed the tiger huh?' he comments with a snicker while you [SelfStripCrotch], then wrap your hand around your [Cock of Player] shaft and wag it in his direction. Joshiro eyes your manhood with an undisguised leer, clearly liking what he sees. He steps forward with a swagger in his step, quickly closing the gap between the two of you. Stealing a quick kiss, the Asian martial artist takes a whiff of your scent from the base of your neck; at the same time stroking your hardening shaft with a his strong fingers. You grunt and exhale deeply at the skilled handjob the young stud is giving you, quickly getting your manhood standing proud and erect to poke the hunky guy in the abs.";
	say "     Joshiro drops to the floor as soon as the first bead of pre-cum forms at your slit, kneeling between your legs and slurping over your dickhead with a brush of his tongue. The man follows up by brushing his cheek almost affectionately against the side of your cock and taking in another deep breath of your manly scent before plunging his lips down over your cock. He certainly has impressive control over the muscles in his throat, as he doesn't even pause for one second to get used to your girth, instead just inhaling all of your [Cock of Player] shaft right down to the base. The tight confines of his throat squeeze your dick in a quite pleasurable way, making you grasp his shoulders as your knees go a little weak for a second. The expression you see in Joshiro's eyes makes it evident that this young Adonis clearly loves his man meat. Looking past his face, you notice a growing wet patch at the front of his boxing shorts too.";
	WaitLineBreak;
	say "     It doesn't take long before Joshiro himself realizes he's leaking pre into his only article of clothing, at which point the martial artist casually pushes down his boxing shorts and gets completely naked, kneeling before you in the middle of a high rise district road. He seems to revel in the fact that this shows off his trained body to who knows how many creatures are lurking just out of sight all around you, and the young man's cock throbs visibly as he lets his gaze wander left and right before he gets back to servicing you. Bobbing his head up and down your length, Joshiro simultaneously strokes himself and he fondles with his meaty pecs and nipples. Slurping lewdly, the young hunk lets his tongue play over your shaft as he increases his pace of face-fucking himself on your manhood. He moves his hands to worship your body and even rubs his rock hard nipples along the inner parts of your thigh.";
	say "     As you peer down on the sweat-glistening stud, you see that he is getting quite the workout from just sucking you off; you can't help but ogle his impressive ripped physique and the tan line he sports on his bubble butt in the shape of a skimpy pair of speedos. It is quite clear this boy loves showing off his body in the sun. Being serviced by such an eager and cock-hungry stud, you relax and just enjoy yourself, leaning your head back with closed eyes as he goes down on your schlong again and again. With Joshiro's expert stimulation, you can feel yourself getting close to cumming before much longer. A lusty groan and the quickening rhythm of your breaths must have betrayed this, as the next thing you feel is the hunk pulling off your length with a wet slurp. You have barely begun wondering what he is doing, no less opened your eyes and looked down, when suddenly your hard cock is engulfed in something new. Something warm and tight and squeezing your shaft oh so very nicely. It's Joshiro's ass!";
	WaitLineBreak;
	say "     Eyes fluttering open as you take in the martial artist's bronzed back stretching out in front of where you stand, you can't help but groan in lust as he rocks back against your hips. The cheeky bastard must have jumped up in the blink of an eye, then rammed himself onto your cock without any hesitation! Joshiro is definitively very convinced of his own abilities, which apparently includes taking any cock he might run into. Throwing a determined grin at you over his shoulder, the Asian fighter pounds himself with your dick. He even takes hold and guides your hands over his body and on to his chest and abs. You shudder in delight as he expertly works his ass and inner muscles in rhythmic movements in sync with your breathing. It isn't long before his crusade to milk you dry reaches its climax.";
	say "     Straightening his upper body to pull your arms in to embrace him, the man enjoys hearing you let out a defeated moan into his ears, his ass now grinding slowly against your groin until every fresh, warm spurt of your virile seed is swallowed up by his insatiable hole. 'Fuck yeah, just what I needed!' Joshiro calls out in a happy voice and strokes over his firm abs as if to check if you gave him a belly bulge with your load. 'You're quite the stud, handsome.' Well-sated and fairly sweaty, the Asian hunk leans back against you and pauses to catch his breath. With your cock still balls deep inside him, and the attractive dude feeling quite nice to hold in your arms, you simply enjoy the quiet moment. Eventually, Joshiro lets out a long breath and then gently slips out of your grasp, creating a slurping sound as he ass pulls off your softening dick and starts leaking dribs and drabs of cum.";
	WaitLineBreak;
	say "     The martial artist strolls over to where he threw his shorts earlier, making the move to pick them up an obvious show of bending forward and wiggling his ass. 'I think I'll better wait to put these back on,' he tells you wish a smirk, brushing his fingers down the crack of his ass and looking at them and your cum that is slowly oozing from his hole. Licking the creamy treat from his fingers, he hangs his shorts over his shoulders and wiggles his eyebrows at you. 'I'll get going now. Sure wouldn't mind running into you sometime again though.' With a wave, he wanders off after that, strolling down the middle of the street fully nude now.";

to say JoshiroSex2: [fucking his ass]
	say "     A smile spreading over your face, you ask the Asian hunk if he likes to be fucked and Joshiro literally licks his lips in anticipation as he nods to you. 'Oh, you wanna ride the tiger, huh?' he comments with a snicker while you [SelfStripCrotch], then wrap your hand around your [Cock of Player] shaft and wag it in his direction. Joshiro eyes your manhood with an undisguised leer, clearly liking what he sees. He steps forward with a swagger in his step, quickly closing the gap between the two of you. Stealing a quick kiss, the Asian martial artist takes a whiff of your scent from the base of your neck; at the same time stroking your hardening shaft with a his strong fingers. You grunt and exhale deeply at the skilled handjob the young stud is giving you, quickly getting your manhood standing proud and erect to poke the hunky guy in the abs.";
	say "     Clearing your throat, you tell him to get on all fours and ready himself for you. The request makes his eyes flash with satisfaction and Joshiro is swift to comply, grabbing a large piece of clean cardboard from the refuse littering the street and laying it down to kneel on. He sticks out his butt demonstratively, then lowers his red shorts over them, first inch by inch then in a sudden reveal of the rounded globes of his ass. 'Waiting for you. Come and get me daddy!' the Asian hunk calls out playfully and slaps his buttocks. With a smirk on your face, you prepare to give him what he wants as you walk over to Joshiro. Coming up in front of the eager hunk, you sway your manhood enticingly. Taking the bait without a moment of hesitation, Joshiro inches over and begins to get your boner nice and wet in his warm, well-trained mouth. You marvel at his oral skills as he takes you all the way effortlessly and even nuzzles you with a lusty moan.";
	WaitLineBreak;
	say "     After a pleasant little while of relaxed face-fucking, you pull the Asian male up by the chin and reward the sexy man-slut with a long wet kiss. Moving around to his rear next, you plant a hand between his shoulder blades and push the martial artist down until he face-plants on the cardboard beneath the both of you. Moaning submissively with his cheek pressed to the floor, the muscled human wiggles his very inviting ass, showing off a pucker that winks in anticipation of your entry. You chuckle at just how eager he is for sex and give Joshiro's voluptuous ass-cheeks a loud spank; causing the man to groan lustily, then bite his lip to control himself. 'Yeah, you like that ass don't you. C'mon daddy, Fuck me!' the handsome male calls out demandingly.";
	say "     You move up a little behind him on your knees and look down at the waiting male, a broad grin on your face. Slapping your hands hard on both sides of his rear wins an ecstatic yelp from Joshiro, and you follow up with kneading his ass and thrusting your front against his rear. The slutty man-whore smiles happily as he peers at you over his shoulder and winks in boyish playfulness. You slap your [cock size desc of Player], [Cock of Player] boner between his cheeks, right over Joshiro's winking hole. Then you gather some spit and let it drip from your tongue to act as extra lube for your intent of teasing the moaning hunk before you. Squishing his buns together with your hands, you grind it back and forth for a moment, feeling almost as if you were fucking him for real.";
	WaitLineBreak;
	say "     Joshiro's breath comes a little faster as he feels you grind against his ass, your pre and spit making his crack a slick groove to slide your dick against. Yet as you can't tear yourself from how good even just rubbing up against him feels, the horny man eventually lets out the urgent whisper of, 'Stick it in. Come on. Stick that dick in me.' A chuckle comes up in your throat at his eagerness, and you take hold of your [Cock of Player] erection to set it right against his trembling pucker. A satisfied grunt comes over your lips as you watch your man-meat spreads the man open, his hungry hole swallowing it nice and smooth, flexing readily around your shaft while still being nicely tight. Joshiro moans out as he bites his lip, clearly very pleased with the offering you've plugged him with.";
	say "     Pushing in balls deep, then slowly withdrawing inch by inch as you wiggle your cock left and right, you take in the sight of his enticing entrance gaping open for a second as your cockhead leaves him, then winks open and shut as if begging you to return. You're of course happy to take up that plea and savagely plunge in for another deep dive! The feeling of being in such an amazing muscled bottom drives you wild, especially as the moaning man flexes his inner muscles in what feels like jerking you off - right inside his ass. It doesn't take long of this to stir something primal inside you, and you find yourself hammering brutally into the Asian Adonis! Taking the lead, you completely subdue the resilient man-slut, pushing his V-shaped chest down hard with one hand while pulling his ass to your crotch. He just takes it in stride, taking all the beating your strength and stamina can muster and whimpering for more.";
	WaitLineBreak;
	say "     You dominantly grab the handsome Japanese hunk and pull him up by his hair, wrapping an arm around his chest to embrace him tightly as you bottom out inside him yet again. Lips finding the other's, the two of you make out as you feel and grope his lean muscled physique. Joshiro lets you claim him readily, even guiding your arms to his large meaty pecs to knead and play. Your combined sweat and musk in this heated, sensual entanglement lies thick in your nose, pushing the haze of lust on and on. 'Yeah! That's right you sexy devil. Fuck me like you wanna own this!' Joshiro taunts playfully, grabbing your hand to slap his ass hard. You lower your other hand to his rear too, using them to squeeze and grope the full orbs of his buttocks.";
	say "     While doing so, your fingers encounter something that you had been too focused to notice till now - Joshiro is wet and dripping, with his lower crack, inner thighs and also your balls slick in some fluid. Bringing your hand up to look at it, you see it is cum, frothy from you churning his already bred ass with your cock and leaking out to make quite a mess. Stopping his kissing at your mouth as he notices you looking past his face, Joshiro glances at your hand and lets out a boyish chuckle. 'Well, I told you I'm training with all sorts of beasts out here on the streets. Can't leave out any part of your muscles, eh? Especially those that can keep your ass tight enough to hold a guy's cum inside after doing THIS!' And with that, he works his inner muscles around your manhood in a mind-boggling mixture of vice-like tightness as well as rhythmic squeezing.";
	WaitLineBreak;
	say "     Any thoughts of talking go right out the window as Joshiro springs his cock-trap move on you, and you utter an aggressive growl as you hump against his ass with full force. Hammering the man-whore in your arms hard and deep, you ravage his insides as you feel your orgasm rapidly approaching. After just a few more deep thrusts into the slick and tight innards of the Asian hunk, your balls tingle and tighten, followed by the first hard throb of cum pulsing out to mingle with the deposits of earlier partners. As you fill Joshiro with yet another load of fresh cum, you can't help but wonder how many men and herms he has been fucked by today. The man himself seems to be above such questions, breathing shallowly as he obviously enjoys being bred quite a bit - and frantically jerks off to the sensations of someone cumming in his ass.";
	say "     Eager to watch your handsome lay as you breed him well and deep, you make use of the energy that arousal has given you to grab him by the sides of his tight muscled body and spin him about; all the while still impaled on your throbbing shaft. Finding himself lowered onto the cardboard mat he was kneeling on, Joshiro finds himself face to face with you, while your cum-pulsing shaft still presses rhythmically against his overworked prostate. You grab his powerful legs and push them backwards, to end up beside his head as the Asian hunk's eyes grow wide with wonder. Moaning lewdly as you pummel into him once more, he reaches the point of no return and starts to shoot a hefty load over his tanned body; drenching his abs, pecs and face in his own cum - hands free!";
	WaitLineBreak;
	say "     Joshiro grins broadly as you finish off inside him, the pulses of your cock slowly ebbing off. As he looks into your eyes, his tongue licks a stray spurt of his own cum from just above his lips, and the man futilely tries to reach the next streak on his abs with his tongue. Amused with him being hungry for cum from either end, you relent and lean over him, slurping up a long splash of the hunk's seed and then French-kissing him to share the tasty load with him. After a kinky session of you licking him clean and proceeding to feed him his own cum mouth to mouth, Joshiro swallows eagerly and even sticks out his tongue to show you that he ate it all. He peers down between both your bodies and motions for you to feed him your cock next. 'That was one impressive fuck. And cock! Let me clean you off,' the Japanese Adonis adds with a wink, still not sated.";
	say "     You can't help but smile and nod in agreement to his suggestion. Pulling out of his well-used ass allows a gush of frothy cum to escape with your slick shaft before his ring pulls tight, locking the rest inside Joshiro. Quickly climbing on top of him and straddling the sexy muscled body you just had the privilege of fucking, you let your long shaft fall over his face and smack him in the nose. Joshiro gives you a sensual moan and cranes his neck to catch your dick, inhaling it in one deep gulp that leaves you deep-throating the man. His eyes rolling back and show mostly white in sheer ecstasy as he suckles on your dick. Pleasant shudders run down your spine as he works his lips and tongue over your erection, [']cleaning['] you expertly. A little while later he pulls off with a final wet plop, then says, 'Thanks for the awesome fuck man!'";
	WaitLineBreak;
	say "     Glancing down to take in the sweaty, happy martial artist, you chuckle and get up, then stand back to watch the Asian man do the same. With his red shorts in hand, he looks himself over and twists around to look at the cum that is making his inner thighs slick. 'I think I'd better wait to put these back on,' he tells you with a smirk, showing his usual self assurance. He hangs his shorts over his shoulders and says, 'I'll get going now. Sure wouldn't mind running into you sometime again though.' With a wave, he wanders off after that, strolling down the middle of the street fully nude now.";


to say JoshiroSex3: [ass teasing]
	say "     A smile spreading over your face, you ask the Asian hunk if he likes to be fucked and Joshiro literally licks his lips in anticipation as he nods to you. 'Oh, you wanna ride the tiger, huh?' he comments with a snicker while you [SelfStripCrotch], then wrap your hand around your [Cock of Player] shaft and wag it in his direction. Joshiro eyes your manhood with an undisguised leer, clearly liking what he sees. He steps forward with a swagger in his step, quickly closing the gap between the two of you. Stealing a quick kiss, the Asian martial artist takes a whiff of your scent from the base of your neck; at the same time stroking your hardening shaft with a his strong fingers. You grunt and exhale deeply at the skilled handjob the young stud is giving you, quickly getting your manhood standing proud and erect to poke the hunky guy in the abs.";
	say "     Clearing your throat, you tell him to get on all fours and ready himself for you. The request makes his eyes flash with satisfaction and Joshiro is swift to comply, grabbing a large piece of clean cardboard from the refuse littering the street and laying it down to kneel on. He sticks out his butt demonstratively, then lowers his red shorts over them, first inch by inch then in a sudden reveal of the rounded globes of his ass. 'Waiting for you. Come and get me daddy!' the Asian hunk calls out playfully and slaps his buttocks. You wonder if he'd be this eager if he knew what you're planning and smirk as you walk over to him. Coming up in front of the eager hunk, you wag your manhood enticingly. Taking the bait without a moment of hesitation, Joshiro inches over and begins to get your boner nice and wet in his warm, well-trained mouth. You marvel at his oral skills as he takes you to the pubes effortlessly and even nuzzles you with a lusty moan.";
	WaitLineBreak;
	say "     After a pleasant little while of relaxed face-fucking, you pull the Asian male up by the chin and reward the sexy man-slut with a long wet kiss. Moving around to his rear next, you plant a hand between his shoulder blades and push the martial artist down until he face-plants on the cardboard beneath the both of you. Moaning submissively with his cheek pressed to the floor, the muscled human wiggles his very inviting ass, showing off a pucker that winks in anticipation of your entry. You chuckle at just how eager he is for sex and give Joshiro's voluptuous ass-cheeks a loud spank; causing the man to groan lustily, then bite his lip to control himself. 'Yeah, you like that ass don't you. C'mon daddy, Fuck me!' the handsome male calls out demandingly.";
	say "     You move up a little behind him on your knees and look down at the waiting male, a broad grin on your face. Slapping your hands hard on both sides of his rear wins an ecstatic whelp from Joshiro, and you follow up with kneading his ass and thrusting your front against his rear. The slutty man-whore smiles happily as he peers at you over his shoulder and winks in boyish playfulness. You slap your [cock size desc of Player], [Cock of Player] boner between his cheeks, right over Joshiro's winking hole. Then you gather some spit and let it drip from your tongue to act as extra lube for your intent of teasing the moaning hunk before you. Squishing his buns together with your hands, you grind it back and forth for a moment, feeling almost as if you were fucking him for real.";
	WaitLineBreak;
	say "     Joshiro's breath comes a little faster as he feels you grind against his ass, your pre and spit making his crack a slick groove to slide your dick against. Yet as you simply continue to do so, the horny man eventually lets out the urgent whisper of, 'Stick it in. Come on. Stick that dick in me.' You move your hand to his back, pushing down on it a little, then tell the man to stay in position and obey his top. He nods, the slight stubble on his face rustling against the cardboard, then takes a tense breath as you line your dickhead up with his hole. Slowly pressing in, you feel his pucker start to flex around your head, at which point you bend your dick up and thrust against the waiting groove between his buttocks.";
	say "     'Nnnghh!' Joshiro groans against the ground in frustration, raising his ass as if to give a better target to penetrate when you pull back once more. You entertain yourself further while fighting back the urge to chuckle. Brushing the large mushroom head of your throbbing cock over his hole repeatedly, you once again miss the target on purpose and slam your crotch hard into his rear. As you watch it wiggle under the impact, you feel your slut whine under his breath, then start trying to push himself up. Seems like the denial got too much for him, but you're not done with him yet! Pushing down on him, you move quickly to swing your body around and literally sit on his shoulder-blades, pinning the man to the ground. Then you lean forward and bury your face between the buns of his ass and start licking.";
	WaitLineBreak;
	say "     Eating out the Asian hunk's hole, you find his struggles melt away like butter, a single swipe of your tongue causing the man to almost drool on the cardboard his face is pressed against. Moaning like a bitch in heat under you, the man presents a fun toy to be played with, and you experiment what sounds you can let him make with just the right tease of his hole. The muscles of his sweaty, trained body ripple in a beautiful display as he trembles in arousal, and even more so when you reach around to also stroke his cock. Soon, all the precum he is leaking forms sticky strings between his shaft and the cardboard below. As you push your tongue deeper into Joshiro's rear, you notice a flavor of semen in his depths. Clearly, this buttslut got fucked by someone else not long ago! Eating the cum out of the martial artist makes him moan happily, and you think you can hear him whimper the word 'Mul' in his blissed-out state.";
	say "     As you eventually push yourself up from the bottom boy's ass to take a breather and let your eyes roam over his naked body once more, Joshiro's pucker twitches and flexes. 'Please come back! I need something inside me!' Joshiro whines under you, whimpering in a plea for you to finally fuck his quivering hole, or at least get back to tongue-fucking him. From the sound of his voice, he's past resisting now, simply a needy slut desperate for his fix.";
	say "     [bold type]Relent and give the buttslut what he needs?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Slam in and breed that hole!";
	say "     ([link]N[as]n[end link]) - Nope. You'll hotdog that ass and shoot over his back.";
	if Player consents:
		LineBreak;
		say "     Patting the buns of his delicious rear gently, you get up from on top of the needy male and move back behind him, from where you pull Joshiro up with your hands hooking under his armpits. Drawing him against your chest, you kiss the athletic man as he looks over his shoulder. You hands wander over his chest, squeezing and groping his pecs and abs and overloading his senses with these further pleasures. Meanwhile, you grind and fuck your throbbing member between his sweaty, saliva-slick buttocks, then finally press down against your dickhead and slip into his long-waiting hole. Joshiro lets out an ecstatic howl as you fill his hole with your slick shaft, stretching his chute around your girth. 'YES! FUCK ME!' the man shouts, his whole body trembling in your grasp.";
		say "     You brush your face against his cheeks, taking in a whiff of his manly scent before licking him possessively; telling him how much of a good boy he's been up till this point. Pulling out just to the tip of your schlong before plunging in pubes deep in his tanned rear, Joshiro's eyes roll white in their sockets, salivating as he lolls his head on your shoulder. 'Fuck yeah! Pound my hole Daddy! Nnngh! Yes. Yes. YES!' His lust-addled expression coupled with the amazing feeling of his ass swallowing your cock hole drives you deeper and deeper into a lust-crazed momentum. Pounding hard into your bitch boy, you can't help but be impressed by the fact that no matter how much and how hard you fuck him, he always wants more! Joshiro really is an insatiable buttslut!";
		WaitLineBreak;
		say "     After a while of fucking him doggy style, you pull out and take hold of the Asian man, pushing him to lie on his back. As soon as he is in position, you pin him down again with your hands on his upper arms, getting on top of the man and thrusting in hard. At the same time, you invade another needy hole - his mouth. Exchanging sloppy kisses back and forth, you fuck him to your heart's content in a Folded Deck Chair position; showcasing the incredible flexibility of this martial artist as he as he holds himself in a partial split without needing any assistance from his or your hands. Ramming hard and deep into him, you can feel yourself get pretty close, and as you tell your partner just that, he gives you a beaming smile, followed by a slurred shout of, 'BREED ME!' Only to eager to comply, you grind your hips against Joshiro's raised ass and blast a thick spurt of your [CockName of Player in lower case] cum into him, followed by many more after that.";
		say "     The sensation of your shaft throbbing inside him and the spreading warmth of cum to fill his needy hole is enough to push Joshiro over the edge right along with you. He pants whorishly as he has a hands-free orgasm, the long cock lying on his toned abs suddenly pulsing out cum to turn them into cum-gutters. Bursts of cum fly all over the sweaty man as you jostle him in your own grinding, with one streak even hitting his forehead and creating a sticky patch in his hair. Tightly entwined as you are, the two of you ride out your climaxes together, panting and grunting as you empty your balls into and onto Joshiro. When you eventually wind down and catch your breath again, your partner says exhaustedly, 'Fuck yeah, I needed that! Man, you almost drove me out of my mind with all that teasing!' He strokes over his firm abs, spreading about his own cum as he seems to check if you gave him a belly bulge with your load.";
		WaitLineBreak;
		say "     'You're quite the stud, handsome,' Joshiro says happily. With your cock still balls deep inside him, and the attractive dude feeling being quite nice to just look at and grope a little, you enjoy the quiet moment between the two of you and get back to making out a little. Only after a long while does Joshiro let out a long breath and then gently slips out of your grasp, creating a slurping sound as he ass pulls off your softening dick and starts leaking dribs and drabs of cum. Getting to his feet with his shorts in hand, the martial artist makes a little show of turning around and wiggling his ass. 'I think I'll better wait to put these back on,' he tells you wish a smirk, brushing his fingers down the crack of his ass and looking at them and your cum that is slowly oozing from his hole. Licking the creamy treat from his fingers, he hangs his shorts over his shoulders and wiggles his eyebrows at you. 'I'll get going now. Sure wouldn't mind running into you sometime again though.' With a wave, he wanders off after that, strolling down the middle of the street fully nude now.";
	else:
		LineBreak;
		say "     Patting the buns of his delicious rear gently, you get up from on top of the needy male and move back behind him, from where you pull Joshiro up with your hands hooking under his armpits. Drawing him against your chest, you kiss the athletic man as he looks over his shoulder. You hands wander over his chest, squeezing and groping his pecs and abs and overloading his senses with these further pleasures. Meanwhile, you grind and fuck your throbbing member between his sweaty, saliva-slick buttocks, still doing nothing more than hot-dogging the panting man. Pounding hard against his ass, you pin down his arms to suppress a last attempt of his to angle your dick so it penetrates, gleefully making use of him as just a big boytoy until you feel a familiar tightness rise in your balls.";
		say "     With a deep grunt, you slam into him hard one more time and blast your load, covering the small of Joshiro's back with creamy white streaks. They ooze and drip down over his sweaty skin even while more cum is splattered over the Asian male's back, soon reaching the top of his ass-crack, to make grinding the man even slicker with frothed up semen. Joshiro whimpers and opens his mouth to say something, but you get a hand up to his chin, shoving two fingers into his mouth to suck on. Licking his cheek, you tell the tanned human what a good boy he has been and use your other hand to jerk his erection in a rapid tempo. Over-heated on arousal as he is, it takes but a moment to push Joshiro past the point of no return, hollering loudly as his cock erupts with a huge load of cum.";
		WaitLineBreak;
		say "     Both of you just grunt and pant for a little while as your orgasms run their course, until Joshiro finally catches his breath and manages to pant, 'You're a cruel, cruel person to tease me like that. Fuuuck, I wanted to feel you inside me!' Patting his chest, you roughly tell him to stop bitching, then lick his cheek somewhat possessively and push him away from your chest to catch himself with his hands on the cardboard square. Glancing down to take in your handiwork of creaming his back, you chuckle and get up, then stand back to watch the Asian man do the same. With his red shorts in hand, he looks himself over and twists around to see your cum oozing down the crack of his butt. 'I think I'd better wait to put these back on,' he tells you wish a weak smirk, still regaining his usual self assurance after what you put him through. He hangs his shorts over his shoulders and says, 'I'll get going now. Sure wouldn't mind running into you sometime again though. But next time you have to fuck me properly, alright?' With a wave, he wanders off after that, strolling down the middle of the street fully nude now.";

to say JoshiroForcedSexMenu:
	LineBreak;
	now sextablerun is 0;
	say "     What would you like to do with the defeated Asian dude?";
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Face-fuck him";
		now sortorder entry is 1;
		now description entry is "Use Joshiro's mouth";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 2;
		now description entry is "Make use of Joshiro's rear end";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride his pole";
	now sortorder entry is 3;
	now description entry is "Make use of his cock for your own pleasure";
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
				if (nam is "Face-fuck him"):
					say "[JoshiroForcedSex1]";
				if (nam is "Fuck his ass"):
					say "[JoshiroForcedSex2]";
				if (nam is "Ride his pole"):
					say "[JoshiroForcedSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the human male and say that you're not in the mood after all. He replies with a groan, and a murmur about making up your mind before handing out beatings. Shrugging, you step back from him and walk away.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JoshiroForcedSex1: [face fuck]
	say "     Grabbing the swaying martial artist, you tell him with a grin that you want to enjoy his mouth, then push down hard on his shoulder, sending him to fall to the floor. After that, you take hold of his head by the hair and pull him up into a kneeling posture. Smiling, you [SelfStripCrotch], then take hold of your [Cock of Player] shaft and slap it against his cheek. Joshiro lets out a defeated moan but is too weak to resist you further. You stroke his handsome face for a moment before forcefully slamming his mouth onto your cock, right down to griding his face into your pubes like the man-slut he is. There is something intensely satisfying about hearing as he gags and gurgles. Squirming in your grasp, the punch-drunk guy mumbles something unintelligible due to the girth of your cock between his lips. You show the defeated stud who's boss around here, pound hard and fast into his amazing throat.";
	say "     He clearly is a veteran cock-sucker, as Joshiro instinctively works his throat muscles to accommodate the rough face-fucking you give him. This drives your lust to whole new levels and you work his mouth even harder now that you know he can take it. Each sloppy slap of your crotch to his blushed red face draws a gurgled moan and sends his bruised, sweaty muscled form bouncing lewdly. Meanwhile, the sexy man's red boxing shorts tent prominently and sport a wet patch where the tip of Joshiro's cock is. Clearly, the dude loves being manhandled by a dominant partner, which gives you an idea. You reluctantly pull out of the eager male slut, then grab him by the hair and drag the Asian hunk over to a nearby wall. Pulling up his strength-less arms and pinning them over his head, you then continue your relentless assault on your defeated opponent.";
	WaitLineBreak;
	say "     Pounding against his face with rhythmic thrusts, you chuckle at the strings of spit and pre-cum that tether to your crotch and his handsome face on every pull back. The fluids drip down onto the trained body of the martial artist, trickling down over his abs to where you can see his cock still straining against its cloth prison. As you bottom out in Joshiro's mouth, a small spurt of shoots from its tip, oozing right through the soaked fabric. 'Nhhhghl!' the Asian man gurgles around your shaft, his arms twitching weakly against your grasp. You laugh at whatever he wanted to say and teasingly ask if he wanted you to go harder. Joshiro's eyes widen at that, and he groans when you answer yourself and note that that's surely what he wants. You grin at your own perversions, thrusting harder, faster and deeper now. Pulling out to completely then shoving it back in deep as the Asian Adonis's body instinctively rises in protest - only to be quelled by your lust driven aggression.";
	say "     Joshiro's pecs bounce and rub against your legs quite nicely as you thrust into your opponent's face, pinning him to the wall. Grinding into his groaning mouth, you peer down over his body, its chest covered in streaks of pre, spit and sweat. The Asian Adonis squirms as you wait a little too long and his breath begins to run out, so you allowing him a respite and pull out. Coughing and struggling for breath, the man starts to say, 'You Fuck-erNNNGGGH!' Before he is able to finish his sentence, you batter into his mouth one final time, sinking balls deep. Howling in lust, you unload a flood of your warm virile seed into his sloppy wide-eyed face. The muscled man struggles to breathe all the while your semen chugs down into his stomach. Something, maybe being creamed, or the oxygen deprivation, or both, pushes Joshiro to a hands-free climax, and he thrashes against your relentless grip as he unloads his balls against the inside of his red shorts.";
	WaitLineBreak;
	say "     With your own orgasm and the amusement at Joshiro getting off at the same time as distractions, you only realize that you actually did cut off his air a bit too long when he goes slack under your hands, unconscious. Somewhat embarrassedly, you whip your still spurting cock out of his mouth and see with relief as he takes a shallow breath. Looks like he'll be okay, so you get back to enjoying yourself, aiming your manhood to paint his muscled chest white with the last few spurts of cum. A little while later, you step back and look at your handiwork with a grin on your face: Joshiro leaning against that wall, sweaty, sticky and out for the count. Putting your clothes back in order, you leave him there and stroll down the street to get back to scavenging, now with an extra spring in your step.";

to say JoshiroForcedSex2: [fuck]
	say "     Grabbing the swaying martial artist, you tell him with a grin that you want to enjoy his ass, then push down hard on his shoulder, sending him to fall to the floor and land on all fours. With a quick yank, the shorts are off his ass and down at his knees, after which you get into position behind the groaning man. Smiling, you [SelfStripCrotch], then take hold of your [Cock of Player] shaft and slap it against his buttocks. Joshiro lets out a defeated moan but is too weak to resist you further. You stroke his well-rounded ass for a second before giving it a stinging slap, making the man-whore you overpowered grunt in shock. Laying your [Cock of Player] shaft into the crack between Joshiro's cheeks, you grind against him and enjoy the feeling of having the punch-drunk guy in your power. Squirming a little from being man-handled, he starts to turn his head and look back at you, but you just push down hard on the broad of his back, pushing the Asian man back into a proper doggy-style position.";
	say "     You waste little time in getting your playmate fully naked, just tugging the pre-cum stained boxing shorts off his legs and tossing them aside. This leaves you with the enviable sight of the muscled hunk's voluptuous rear, with the handprint from your slap visible in a slightly reddened outline. Now moving even closer, you put both hands on his cheeks and knead them, then sandwich your boner between and hot-dog his ass. Joshiro shudders slightly as your shaft brushes against his pucker, and you're interested to see the somewhat puffy pink skin of his anal entrance wink open to reveal frothy white cum already inside. He's been fucked quite recently, and your predecessor's deposit leaks out of the gaping opening, a trickle oozing down between Joshiro's buttocks and down over his balls and cock. This butt-slut has been kept busy by the horny beasts roaming the streets.";
	WaitLineBreak;
	say "     As the guy is pre-lubed, you toss aside all considerations for preparing his hole, instead just lining yourself up with is opening and brazenly forcing your length into his rear. His well-used rear getting filled so suddenly makes Joshiro let out a lusty groan, while his insides easily stretch around the girth of your shaft. Nevertheless, he is far from loose, just quite flexible indeed and at the same time still providing a nicely tight chute to sink into. Getting right into the mood you shove his face deeper against the smooth asphalt of the street, pressing down on his back as you hump hard into his ass. Even if he wasn't moaning like a bitch in heat and wanted to resist, with his arms tucked between his chest and the street, there is little chance for Joshiro to do so. Battering your full length in and out of his ass with relentless vigor, you revel in the buttslut's lewd cries and moans.";
	say "     'Fwuck yeah. Nngghhh! Fuck me hard,' the Asian hunk slurs and seems to raise his ass a little bit higher in answer to your thrusts, insatiable for more cock to fill his need. Even with you dominating his formerly so cocky self, he seems to be enjoying this quite a bit, as is evidenced when you reach around his hips and find the hard rod of his cock with your fingers. It is literally dripping wet, his pre and some cum squelching out of Joshiro's ass with each new penetration making the hard shaft slick in your grasp. Playfully, you wrap your fingers around his girth and stoke him in rhythm with your own thrusts for a little bit, then pull your hand away again. Placing the palm of your hand right in front of the man's face, you then order him in a harsh tone to lick, and he immediately starts to lap up the mixed fluids from your skin.";
	WaitLineBreak;
	say "     You can't help but be impressed by the sweat-slick man beneath you as he tirelessly thrusts back against your hard banging, showing just how resilient of a fighter - or slut - he really is. With sloppy wet squishing to accompany your thrusts, you churn his cum-filled hole into a warm frothy mess. The stimulation of his already overworked prostate soon sends a flood tide of pleasure down Joshiro's spine. Biting his lips in a vain attempt to resist his inevitable end, you watch with great pleasure as Joshiro thrashes under you in helpless lust. 'Oh. o-oh. Fwukk.... Nnngghh!' the muscle slut moans out as he unloads his balls onto the street beneath him. With spurt after spurt of cum being blasted out, the energy reserves of your fucktoy are finally exhausted, and he passes out even while his cock is still throbbing.";
	say "     Undaunted by the fact that Joshiro has gone limp, you keep humping his ass and find that it is surprisingly still working your throbbing invader with his insides. You hold the blissed-out buttslut tightly and let out a primal roar of lust. Spewing your hot load, you drench his already cum-filled insides until the man just can't contain any more and it spurts out from the sides of his stretched hole. Riding out the high of your orgasm in his incredible ass, you continue to hammer into the hunk for a little longer. Once you've had your fill of his sexy body, you release your grasp and watch with a grin on your face as your boner slips out in a lewd slurp and Joshiro's muscled body falls to the floor in a loud thump. Glancing at the gaping, winking hole you just fucked, you flick your softening cock to get rid of the excess cum, splattering the exhausted stud's back. Putting your clothes back in order, you leave him there and stroll down the street to get back to scavenging, now with an extra spring in your step.";

to say JoshiroForcedSex3: [ride]
	say "     Grabbing the swaying martial artist, you tell him with a grin that you want to enjoy his cock, then push against his chest lightly, which is enough to send him falling on the floor to land on his ass. With a quick yank, the shorts are off his ass and down at his knees, after which you get into position to stand above the groaning man. Smiling, you [SelfStripCrotch], then crouch on top of him, lowering your hips to sit right on his abs. 'Huh? Whassup? Not gonna fuck me?' Joshiro babbles, still punch-drunk from your fight and the fall. You just chuckle and reach behind yourself, sliding your fingers around his erect cock and stroking it. 'Wanna get fucked!' the Asian man grunts and starts to push himself up, only to be stopped by you capturing both his wrists and pinning them to the ground. As you pull them together and transfer the hold to one hand, you lean over your beaten hunk and give him a demanding kiss, then tell him that you're in charge now.";
	say "     A somewhat sullen expression appears on Joshiro's face as he doesn't get what he wanted, which you just ignore and reach back to take hold of his cock. Raising your ass and pushing it backwards, it isn't hard to line the martial artist's erection up with your hole and push yourself against it, increasing the pressure until it pops past your pucker. You let out a more than satisfying moan which hums in tandem with your subdued hunk as you sink down on his thick shaft. Stealing another kiss, you knead and toy with his pecs and find that pinching his nipples sends a throb of arousal through the rock hard cock inside your asshole. You can't help but think that he's quite well equipped for a human, with about 12 inches in length that you just started to impale yourself on. Moans escape both of your lips as you wrestle each other's tongues.";
	WaitLineBreak;
	say "     Letting his cock plop past your anal entrance a few times, you enjoy feeling his warm girth, then take a deep breath and slam yourself right down to the long shaft's base. His eyes go wide as you take that dick and squeeze the Asian hunk with your inner muscles, then bounce up and down on the erect shaft. 'Ffuckk!' he groans out, the conceited martial artist's resistance banished by lust and your ass gripping his cock. Leaning forward, you take in a whiff of his aromatic musk, enjoying the feeling of the weakened fighter's ripped muscles brushing against you in sweaty touches as you pleasure yourself on the street warrior's sex. Before long, he can't hold back any longer and actually bucks his hips upwards to meet your buttocks with the thrusts. Seeing him succumb to the lust of the moment, you keep him pinned for a few more moments, then let go of Joshiro's arms and place your hands on his chest instead, pinching those nipples to make your playtoy howl in arousal.";
	say "     Meanwhile, Joshiro isn't just humping against you, as he also lowers his no longer held arms to stroke his cock, and stretches himself to dip some fingers into his own asshole. The panting hunk finger-fucks himself in rhythm with your ass gliding up and down on his cock, yet his hungry hole's appetite seems boundless and he keeps adding more digits to satisfy it. Soon, the Asian Adonis is almost fisting himself, sinking just about his whole hand inside. You watch the needy slut's antics amusedly as you continue to fuck yourself on his long cock. Not wanting to give him a moment of respite, you also continue you assault on his pecs, pinching them and bringing your mouth down to lightly bite and suckle on Joshiro's nipples. At the same time, your ass plunges deep onto his shaft with intensive momentum again and again, giving you a fun show of Joshiro biting his lip as his eyes roll back in helpless ecstasy.";
	WaitLineBreak;
	say "     Seems like the riding, fisting and suckling overtaxed your beaten hunk, as he thrashes under you in impending orgasm. Together with the whorish moans he lets out, there are also some squishy noises which make you look back in puzzlement. The hand he keeps popping in and out of his wet, sloppy hole is slick with frothy cum - probably from other creatures he's 'sparred' with recently. His sweat-sleek, tanned body bucks up hard as he reaches the inevitable end of mounting arousal, blasting a barrage of thick warm streaks of virile cum into your ass and painting its insides white. Feeling the muscled man's cock pulsing inside your hole pushes you over the edge right with him, your own [Cock of Player] shaft spraying a hefty load all over the exhausted hunk beneath you. Something is quite satisfying in seeing the mess you've made of the cocky guy, and you playfully massage the cum into his toned abs and pecs.";
	say "     After a few long moments of cum-blasting moans and thrashing around, the Japanese fighter sinks to the ground under you in complete exhaustion. His chest heaving up and down as he attempts to catch his breath, slurring out the words, 'Damn. T'was good. Still, wish ya had fwucked me.' With that said, he passes out, head lolling to the side and drooling a little. Chuckling at your complete victory - physical, as well as sexual - over the hunk, you play around a little while longer with his limp form, squeezing and groping those muscles and rubbing your cum into his skin. Only when you feel him slowly start getting soft do you eventually pull off his shaft and collect your clothes and gear. Glancing at the naked, cum-smeared hunk, you can't help but show a broad smile as you put yourself back in order, then leave him there and stroll down the street. Moving on to get back to scavenging, you definitively have an extra spring in your step after this encounter.";


Section 4 - Enemy Definition

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Human";
	add "Human Martial Artist" to infections of HumanList;
	add "Human Martial Artist" to infections of NatureList;
	add "Human Martial Artist" to infections of MaleList;
	add "Human Martial Artist" to infections of BipedalList;
	now Name entry is "Human Martial Artist";
	now enemy title entry is ""; [name of the encountered creature at combat start - "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is "Joshiro";
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]Joshiro kicks you right in the face.[or]The martial artist kicks your knee.[or]For a second, you think you got him, but Joshiro elbows you in the stomach and sends you stumbling back.[or]Joshiro's balled fist hits your side![at random]";
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "     Joshiro is a muscular and quite well built man, armed with a kickboxer's training and lots of stamina. He sure won't be easy to beat down!";
	now face entry is "charmingly human";
	now body entry is "charmingly human";
	now skin entry is "smooth";
	now tail entry is "";
	now cock entry is "[one of]normal[or]flesh-toned[or]uninfected[or]human[at random]";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 19;
	now dex entry is 16;
	now sta entry is 20;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Nochange";       [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 125;                [ How many HP has the monster got? ]
	now lev entry is 15;                [ Level of the Monster, you get this much XP if you win, or this much XP halved if you loose ]
	now wdam entry is 12;              [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";       [ Case sensitive]
	now Cock Count entry is 1;              [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 11;
	now Ball Size entry is 3;         [ Size of balls ]
	now Nipple Count entry is 2;            [ Number of nipples. ]
	now Breast Size entry is 4;        [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;              [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 6;
	now Cunt Tightness entry is 4;
	now libido entry is 75;            [ Amount player Libido will go up if defeated ]
	now loot entry is "";              [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;         [ Chance of loot dropping 0-100 ]
	now scale entry is 3;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "Human";
	now type entry is "human";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;     [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
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


Section 5 - NPCs

Table of GameCharacterIDs (continued)
object	name
Joshiro	"Joshiro"

Joshiro is a man.
ScaleValue of Joshiro is 3. [human sized]
Cock Count of Joshiro is 1.
Cock Length of Joshiro is 12.
Ball Size of Joshiro is 4.
Ball Count of Joshiro is 2.
Cunt Count of Joshiro is 0.
Cunt Depth of Joshiro is 0.
Cunt Tightness of Joshiro is 0.
Nipple Count of Joshiro is 2. [2 nipples]
Breast Size of Joshiro is 0.
Humanity of Joshiro is 60.
OralVirgin of Joshiro is false.
Virgin of Joshiro is false.
AnalVirgin of Joshiro is false.

The description of Joshiro is "[JoshiroDesc]".
The conversation of Joshiro is { "Woof." }.

to say JoshiroDesc:
	say "WIP";

Joshiro ends here.
