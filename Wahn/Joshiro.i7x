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

[ libido of Joshiro                                  ]
[   0: no sex with the player                        ]
[   1: Joshiro on player oral                        ]
[   2: player on Joshiro oral                        ]
[   3: mutual oral                                   ]
[   4: Joshiro got fucked by the player              ]
[   5: player got fucked by Joshiro                  ]
[   6: mutual fuckings                               ]

Section 1 - Initial Events

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
			say "     As you approach him, the skimpily dressed man offers his hand to shake without hestitation and says, 'Hey there, I'm Joshiro. Nice to meet a friendly face for once. Not that I had any problems dealing with the others...' He boasts good-naturedly about what creatures he fought recently, and that none could stand against him. After that, Joshiro offers to flex his arms for you so you can give his bicep a squeeze, being all in all very happy to show off his body to you.";
			say "[JoshiroTalkMenu]";
		else if calcnumber is 2: [fight]
			LineBreak;
			say "     As you step towards the human with lust in your eyes, he takes that in stride, simply raising his fists as he gets ready for a fight. 'One of those are you, eh? Fine, let's get it on!' he calls out, sure of his victory.";
			challenge "Human Martial Artist";
			if fightoutcome < 20: [player won]
				say "[JoshiroForcedSexMenu]";
				now HP of Joshiro is 22; [fought, player won]
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     After the man's last blow, you sway back and forth, then fall on your ass as he gives you another gentle love-tap with his index finger. 'Joshiro Arashi wins again!' he shouts and throws his arms up in a victorious gesture, almost as if he was posing for a huge crowd of cheering spectators. He basks in the imaginary glory for a few seconds, then turns his attention to you with an intense expression on his handsome face. Lithely crouching in front of you, the Asian Adonis puts one hand on your crotch and gives it an eager grope.";
				if player is male:
					say "     Joshiro seems very happy to find that you have a cock, and he immediately starts to stroke and jerk you, his capable fingers teasing your manhood into action even though you just fought one another. 'To the victor go the spoils,' he tells you with a broad grin, squeezing your shaft eagerly. 'And what I want is a nice hard cock up my ass!' With that said, he just shoves the red shorts off his thighs, revealing a lengthy and erect cock that is literally dripping with pre-cum. Not giving you any chance to resist or even comment, the martial artist then steps right over you and crouches down, simply sliding his quite flexible pucker down on your manhood. 'Nnnghh, fuck yeah!' your former opponent grunts happily and squeezes his inner muscles around your shaft, creating an incredible sensation for you.";
					WaitLineBreak;
					say "     Despite being sweaty from your earlier fight, Joshiro doesn't show any sign of exhaustion now that things have turned to sex. He bounces up and down on your shaft in a rapid tempo, his grinning face bent over you as he pins your arms to the ground. Grunting in lust every time his buttocks smack against you thigh, the man uses you like a living sex toy, always wanting more: deeper thrusts and a nice thick cock to stretch his hole. In between his moans, grunts and gasp, you manage to catch some words he keeps murmuring to himself, something about you 'fucking him like that orc brute did'. With a very athletic and seemingly tireless man riding your cock relentlessly, it doesn't take all that long for Joshiro to stroke the fires of your arousal higher and higher, until you finally just can't contain yourself any longer.";
					say "     Reflexively hammering your hips up against him, you thrust yourself deep into the Asian man, thrashing against his strong hands as he keeps you pinned. The martial artist's face takes on a blissful, almost greedy expression as he feels your shaft throb hard inside his ass, painting his insides white with the first spurt of your built-up load. He moans like a bitch in heat as blast after blast of your cum enters his ass, seemingly taking great pleasure from being bred by another man. This even goes so far that his own hard cock erupts after another few throbs into Joshiro's ass, without anyone even touching it. The long prick sways back and forth from his movements, spraying heavy strings of seed to splatter over Joshiro, you and the ground.";
					WaitLineBreak;
					say "     Riding out your mutual orgasms on top of you, Joshiro calms down a bit and simply enjoys the feeling of your load inside him, breathing deeply to replenish his reserves. Then he looks down at you and puts on a boyish grin, followed by the words, 'Nice cock on ya, stranger. Wanna tell me who just bred my ass?' The corny way he says this makes you chuckle despite yourself, and you can't really deny telling him your name. '[if player is not defaultnamed][name of player], eh? [end if]Pleasure meeting you. And being meated by you, hah!' While you're still groaning about the stupid joke, Joshiro slides himself up on your shaft, carefully sliding his hand behind his back to prevent your load from gushing out of him as he pulls off. It looks rather funny how he standing there, plugging his hole with a finger, but his rear entrance apparently tightens itself up in abnormal speed. Just a minute or two later, Joshiro doesn't run any danger of losing his creamy filling as he goes to grab his shorts and get dressed again. 'So long, you hot fucker!' he says with a smile, then saunters off.";
					now libido of Joshiro is 4; [Joshiro got fucked]
				else:
					say "     Joshiro seems a bit disappointed that you don't have a cock, shrugging to himself and standing up. 'Hm, my bad I guess. But hey, you jumped me, not the other way around.' With that said, he turns around and strolls off, just leaving you behind.";
				now HP of Joshiro is 20; [fought, player lost]
			else if fightoutcome is 30: [fled]
				say "     As you run off, you can hear the martial artist shout after you, 'Can't withstand the power of Joshiro Arashi, hah! You better run!'";
				now HP of Joshiro is 21; [fought, player ran]
		else: [avoid]
			LineBreak;
			say "     Deciding that you don't want anything to do with this guy, you turn around and walk the other way, leaving him to continue his own path.";
			now HP of Joshiro is 100; [player not interested]
	now Road Wanderer is resolved; [for now]

Sloppy Seconds is a situation. Sloppy Seconds is resolved. [player must know Tyke, Darius and Joshiro to find this]
The sarea of Sloppy Seconds is "Red".

Instead of resolving a Sloppy Seconds:
	say "     Exploring the red light district, you are just strolling along a street and passing some unimpressive houses that likely have long been looted when a scuffle breaks out on the other side of the street. Looks like a herm hyena and a tigress hooker are having a disagreement about the price of her services. The noise soon draws the feline's pimp, who approaches in a combative manner. For a second it looks like the hyena will get fleeced by those two, but then she calls out loudly and two more of her kind step out of a nearby alley. This escalation heralds trouble, you're sure, and since you have better things to do than getting dragged into that, you take the easy way out by stepping into the building right before you through its leaned-to door. Sounds of a fight start just as you close the door behind you.";
	say "     You check for a back door, but have little luck, so you shrug and decide to check the building out while you wait for situation outside to die down. Sadly, the interior of the building is about what you expected: Run-down apartments with their flimsy furniture mostly smashed by someone who rifled through them. Going from room to room, you find nothing worth even the effort of bending down to pick it up, and eventually end up on the roof of the two story building. There's a little wooden shack built in the back corner of it, a pigeon coop, but even that is just filled with open cages and a whole lot of scattered feathers. You idly wonder if this means that the owner became a pigeon himself, the birds transformed, or something came and ate them. No way to tell really, so eventually you shrug and leave the shack through its crooked door.";
	WaitLineBreak;
	say "     Just as you are about to wander to the front of the building to check on the street fight, you hear noise from behind it. Glancing over the edge of the roof, you spot two anthro canines walking through the alley down there, a muscled dalmatian and his even bigger doberman buddy. It's Darius and Tyke. 'So, what did you wanna show me so bad dude? Dragging me out here all of a sudden!' the black and white furred drug dealer asks and his companion grunts, 'You'll see,' as he uses his superior bulk to drag his friend after himself. From your raised position, you see where they're going already - on the other side of a half-broken fence cutting the alley in two, there is a mattress laid out, and on it you recognize a bare-ass naked Joshiro. The human male is stretched out on his front and dozes, with fresh cum trickling out of his ass. He must have been fucked hard not too long ago to put him in such a state.";
	say "     As he gets pulled through the hole in the fence, Darius calls out, 'Whoa! What's this? Dragging me out here to introduce your new girlfriend, dawg? You've really fallen for this gay shit, didn't you?' Tyke grunts and makes a throwing away gesture. 'Naw man, I'm not gay! It's just this faggot here! He's something else - try him and you'll see.' Darius ruffles his muzzle and shakes his head, 'You kiddin'? No way I'm gonna stick my dick in a dude!' 'Yes way! Time for you to learn for yourself what I mean!' Tyke responds, his hand grabbing Darius by the neck and shoving him forward. 'What the fuck?' Darius shouts back, yet his buddy doesn't budge, simply cracking his knuckles and nodding towards the naked man. 'Get yo dick in there, man. You're not leaving before you do.' 'That's whacked man, I -' Darius starts to reply, but his words stop as Tyke lets out a threatening growl.";
	WaitLineBreak;
	say "     'Fuck!' Darius curses as he turns away from his friend, fully taking in the naked man in front of him for the first time. He mutters something you don't catch, then reaches for his belt buckle and soon slides his jeans down, pulling first his left then his right paw out of them. 'You can hold my pants if yo crazy ass is gonna make me do this!' Darius shouts at his friend and flings his jeans to Tyke, who catches them easily. 'They better not get dirty,' the dalmatian adds gruffly, to which Tyke just chuckles and hangs the article of clothing over his shoulder. Not having any other reason to delay what is demanded of him, Darius steps forward slowly and sets his paw on the mattress. The movement draws attention from the dozing human on it, who groggily rubs his face and says, 'Nngh, Tyke baby! Breeding me again so soon?' Darius barks in an indignant tone, 'Nah, I'm not your faggot boyfriend! He's forcing me to fuck ya dirty ass!'";
	say "     Joshiro pushes himself up on his elbow and half turns around, looking in confusion to the two canines. His gaze wanders over Darius's spotted shape, his muscled chest and then down to the anthro canine's crotch, where a red-skinned cock is already pushing out of his sheath. 'Okay, I'm fine with that,' the human calls out and picks himself up from the mattress to get on all fours, presenting his ass to Darius. The dalmatian looks down at his growing erection in dismay, weakly saying to no one in particular, 'That's just because... this skanky ass's sex scent that is all of the place. And the fucker presenting like a bitch that wants to be bred. Anyone would get hard from that.'";
]
Section 2 - Talk Menu

to say JoshiroTalkMenu:
	LineBreak;
	now sextablerun is 0;
	say "     When you're eventually able to get a word in edgewise, you talk to Joshiro about:";
	blank out the whole of table of fucking options;
	[]
	if player is male: [only males and herms can get a blowjob]
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
			if player consents:
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
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the human male and say your goodbyes, then walk down the street in another direction as him. 'Hope to see ya again!' Joshiro calls after you, waving before he moves on himself.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
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
	say "     As you bring up the question of why he's still completely human and not changed like almost everyone else, the boisteous man hesitates for a second, then shrugs and replies jokingly, 'Maybe I'm just that tough. I don't know. Haven't noticed any chances about myself, even after wrestling down all sorts of beasts.' He stretches his arms up one by one, turning and inspecting them, followed by doing the same with his his legs, and then even lifting the waistband of his shorts to check out what lies inside. A grin is on Joshiro's face as he looks up after that and says, 'Nope, everything normal around here. Just as big as it always was, if you know what I mean.' He throws you a wink, then pauses for a moment and rubs his chin.";
	say "     'One thing did change though, if I have to be honest. I wasn't a slouch in bed before, don't misunderstand this, but... ever since I ran into that big green brute at the start of this mess, and got a load of his pumped up my rear... well, my libido has been in overdrive. And I learned that I really, really like to take dicks up my ass. Seems I was missing out before, maybe it's just my body deciding that it should catch up on that, eh?' Despite what he's telling himself, you can't help but wonder if the nanites didn't have a certain effect on this man after all. Not everything that those things to is visible to casual observation after all.";
	say "[JoshiroTalkMenu]"; [looping back for more conversation]

to say JoshiroTalk4: [offering sex]
	if player is not male: [he really wants to be fucked, so females/neuter are a bit out of luck]
		say "     As you offer Joshiro to have a good time with him, the Asian man gives you a look up and down, then blows out his breath, rubbing the back of his neck in slight embarrassment. 'You know, a little while ago before all this, I'd have taken you up on that in a second. Now... well, it's like this: I found the most amazing feeling ever, and it comes from taking a big, juicy cock up my rear end. Not sure if I'll ever get enough of that, but until I do, I'd like to focus on trying out everything anal. You wouldn't believe the positions that come up in my mind all of their own, or the variety of dicks that people swing these days! Damn, there was this one guy I met yesterday who had [one of]a two foot horsecock[or]a huge knotted shaft[or]two dicks, side by side[or]a prehensile dick[or]this wiggling tentacle-thing[or]a shaft literally as thick as a beer can[at random]! That felt freaky - freaky good - in me!' He's lost in the memory for a second, then shakes it off and tells you, 'So. Erm. No hard feelings, but thanks, not now.";
		say "[JoshiroTalkMenu]"; [looping back for more conversation]
	else:
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
	now title entry is "Tease his hole";
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Have him blow you"):
					say "[JoshiroSex1]";
				if (nam is "Fuck his ass"):
					say "[JoshiroSex2]";
				if (nam is "Tease his hole"):
					say "[JoshiroSex3]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the human male and say your goodbyes, then walk down the street in another direction as him. 'Hope to see ya again!' Joshiro calls after you, waving before he moves on himself.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JoshiroSex1: [let him blow you]
	say "     A smile spreading over your face, you offer the Asian hunk the chance to blow you off, and Joshiro literally licks his lips in anticipation as he nods to you. 'Oh, you wanna feed the tiger huh?' he comments with a snicker while you [SelfStripCrotch], then wrap your hand around your [cock of player] shaft and wag it in his direction. Joshiro eyes your manhood with an undisguised leer, clearly liking what he sees. He steps forward with a swagger in his step, quickly closing the gap between the two of you. Stealing a quick kiss, the Asian martial artist takes a whiff of your scent from the base of your neck; at the same time stroking your hardening shaft with a his strong fingers. You grunt and exhale deeply at the skilled handjob the young stud is giving you, quickly getting your manhood standing proud and erect to poke the hunky guy in the abs.";
	say "     Joshiro drops to the floor as soon as the first bead of pre-cum forms at your slit, kneeling between your legs and slurping over your dickhead with a brush of his tongue. The man follows up by brushing his cheek almost affectionately against the side of your cock and taking in another deep breath of your manly scent before plunging his lips down over your cock. He certainly has impressive control over the muscles in his throat, as he doesn't even pause for one second to get used to your girth, instead just inhaling all of your [cock of player] shaft right down to the base. The tight confines of his throat squeeze your dick in a quite pleasurable way, making you grasp his shoulders as your knees go a little weak for a second. The expression you see in Joshiro's eyes makes it evident that this young Adonis clearly loves his man meat. Looking past his face, you notice a growing wet patch at the front of his boxing shorts too.";
	WaitLineBreak;
	say "     It doesn't take long before Joshiro himself realizes he's leaking pre into his only article of clothing, at which point the martial artist casually pushes down his boxing shorts and gets completely naked, kneeling before you in the middle of an high rise district road. He seems to revel in the fact that this shows off his trained body to who knows how many creatures are lurking just out of sight all around you, and the young man's cock throbs visibly as he lets his gaze wander left and right before he gets back to servicing you. Bobbing his head up and down your length, Joshiro simultaneously strokes himself and he fondles with his meaty pecs and nipples. Slurping lewdly, the young hunk lets his tongue play over your shaft as he increases his pace of face-fucking himself on your manhood. He moves his hands to worship your body and even rubs his rock hard nipples along the inner parts of your thigh.";
	say "     As you peer down on the sweat-glistening stud, you see that he is getting quite the workout from just sucking you off; you can't help but ogle his impressive ripped physique and the tanline he sports on his bubble butt in the shape of a skimpy pair of speedos. It is quite clear this boy loves showing off his body in the sun. Being serviced by such an eager and cock-hungry stud, you relax and just enjoy yourself, leaning your head back with closed eyes as he goes down on your schlong again and again. With Joshiro's expert stimulation, you can feel yourself getting close to cumming before much longer. A lusty groan and the quickening rhythm of your breaths must have betrayed this, as the next thing you feel is the hunk pulling off your length with a wet slurp. You have barely begun wondering what he is doing, no less opened your eyes and looked down, when suddenly your hard cock is engulfed in something new. Something warm and tight and squeezing your shaft oh so very nicely. It's Joshiro's ass!";
	WaitLineBreak;
	say "     Eyes fluttering open as you take in the martial artist's bronzed back stretching out in front of where you stand, you can't help but groan in lust as he rocks back against your hips. The cheeky bastard must have jumped up in the blink of an eye, then rammed himself onto your cock without any hesitation! Joshiro is definitively very convinced of his own abilities, which apparently includes taking any cock he might run into. Throwing a determined grin at you over his shoulder, the asian fighter pounds himself with your dick. He even takes hold and guides your hands over his body and on to his chest and abs. You shudder in delight as he expertly works his ass and inner muscles in rhythmic movements in sync with your breathing. It isn't long before his crusade to milk you dry reaches its climax.";
	say "     Straightening his upper body to pull your arms in to embrace him, the man enjoys hearing you let out a defeated moan into his ears, his ass now grinding slowly against your groin until every fresh, warm spurt of your virile seed is swallowed up by his insatiable hole. 'Fuck yeah, just what I needed!' Joshiro calls out in a happy voice and strokes over his firm abs as if to check if you gave him a belly bulge with your load. 'You're quite the stud, handsome.' Well-sated and fairly sweaty, the Asian hunk leans back against you and pauses to catch his breath. With your cock still balls deep inside him, and the attractive dude feeling quite nice to hold in your arms, you simply enjoy the quiet moment. Eventually, Joshiro lets out a long breath and then gently slips out of your grasp, creating a slurping sound as he ass pulls off your softening dick and starts leaking dribs and drabs of cum.";
	WaitLineBreak;
	say "     The martial artist strolls over to where he threw his shorts earlier, making the move to pick them up an obvious show of bending forward and wiggling his ass. 'I think I'll better wait to put these back on,' he tells you wish a smirk, brushing his fingers down the crack of his ass and looking at them and your cum that is slowly oozing from his hole. Licking the creamy treat from his fingers, he hangs his shorts over his shoulders and wiggles his eyebrows at you. 'I'll get going now. Sure wouldn't mind running into you sometime again though.' With a wave, he wanders off after that, strolling down the middle of the street fully nude now.";

to say JoshiroSex3: [ass teasing]
	say "     A smile spreading over your face, you ask the Asian hunk if he likes to be fucked and Joshiro literally licks his lips in anticipation as he nods to you. 'Oh, you wanna ride the tiger, huh?' he comments with a snicker while you [SelfStripCrotch], then wrap your hand around your [cock of player] shaft and wag it in his direction. Joshiro eyes your manhood with an undisguised leer, clearly liking what he sees. He steps forward with a swagger in his step, quickly closing the gap between the two of you. Stealing a quick kiss, the Asian martial artist takes a whiff of your scent from the base of your neck; at the same time stroking your hardening shaft with a his strong fingers. You grunt and exhale deeply at the skilled handjob the young stud is giving you, quickly getting your manhood standing proud and erect to poke the hunky guy in the abs.";
	say "     Clearing your throat, you tell him to get on all fours and ready himself for you. The request makes his eyes flash with satisfaction and Joshiro is swift to comply, grabbing a large piece of clean cardboard from the refuse littering the street and laying it down to kneel on. He sticks out his butt demonstratively, then lowers his red shorts over them, first inch by inch then in a sudden reveal of the rounded globes of his ass. 'Waiting for you. Come and get me daddy!' the Asian hunk calls out playfully and slaps his buttocks. You wonder if he'd be this eager if he knew what you're planning and smirk as you walk over to him. Coming up infront of the eager hunk, you wag your manhood enticingly. Taking the bait without a moment of hesitation, Joshiro inches over and begins to get your boner nice and wet in his warm, well-trained mouth. You marvel at his oral skills as he takes you to the pubes effortlessly and even nuzzles you with a lusty moan.";
	WaitLineBreak;
	say "     After a pleasant little while of relaxed face-fucking, you pull the Asian male up by the chin and reward the sexy man-slut with a long wet kiss. Moving around to his rear next, you plant a hand between his shoulderblades and push the martial artist down until he face-plants on the cardboard beneath the both of you. Moaning submissively with his cheek pressed to the floor, the muscled human wiggles his very inviting ass, showing off a pucker that winks in anticipation of your entry. You chuckle at just how eager he is for sex and give Joshiro's voluptuous ass-cheeks a loud spank; causing the man to groan lustily, then bite his lip to control himself. 'Yeah, you like that ass don't you. C'mon daddy, Fuck me!' the handsome male calls out demandingly.";
	say "     You move up a little behind him on your knees and look down at the waiting male, a broad grin on your face. Slapping your hands hard on both sides of his rear winns an excstatic whelp from Joshiro, and you follow up with kneading his ass and thrusting your front against his rear. The slutty man-whore smiles happily as he peers at you over his shoulder and winks in boyish playfulness. You slap your [cock size desc of player], [cock of player] boner between his cheeks, right over Joshiro's winking hole. Then you gather some spit and let it drip from your tongue to act as extra lube for your intent of teasing the moaning hunk before you. Squishing his buns together with your hands, you grind it back and forth for a moment, feeling almost as if you were fucking him for real.";
	WaitLineBreak;
	say "     Joshiro's breath comes a little faster as he feels you grind against his ass, your pre and spit making his crack a slick groove to slide your dick against. Yet as you simply continue to do so, the horny man eventually lets out the urgent whisper of, 'Stick it in. Come on. Stick that dick in me.' You put your hand back on his back, pushing down on it a little, then tell the man to stay in position and obey his top. He nods, the slight stubble on his face rustling against the cardboard, then takes a tense breath as you line your dickhead up with his hole. Slowly pressing in, you feel his pucker start to flex around your head, at which point you bend your dick up and thrust against the waiting groove between his buttocks.";
	say "     'Nnnghh!' Joshiro groans against the ground in frustration, raising his ass as if to give a better target to penetrate when you pull back once more. You entertain yourself further while fighting back the urge to chuckle. Brushing the large mushroom head of your throbbing cock over his hole repeatedly, you once again miss the target on purpose and slam your crotch hard into his rear. As you watch it wiggle under the impact, you feel your slut whine under his breath, then start trying to push himself up. Seems like the denial got too much for him, but you're not done with him yet! Pushing down on him, you move quickly to swing your body around and literally sit on his shoulder-blades, pinning the man to the ground. Then you lean forward and bury your face between the buns of his ass and start licking.";
	WaitLineBreak;
	say "     Eating out the Asian hunk's hole, you find his struggles melt away like butter, a single swipe of your tongue causing the man to almost drool on the cardboard his face is pressed against. Moaning like a bitch in heat under you, the man presents a fun toy to be played with, and you experiment what sounds you can let him make with just the right tease of his hole. The muscles of his sweaty, trained body ripple in a beautiful display as he trembles in arousal, and even more so when you reach around to also stroke his cock. Soon, all the precum he is leaking forms sticky strings between his shaft and the cardboard below. As you push your tongue deeper into Joshiro's rear, you notice a flavor of semen in his depths. Clearly, this buttslut got fucked by someone else not long ago! Eating the cum out of the martial artist makes him moan happily, and you think you can hear him whimper the word 'Mul' in his blissed-out state.";
	say "     As you eventually push yourself up from the bottom boy's ass to take a breather and let your eyes roam over his naked body once more, Joshiro's pucker twitches and flexes. 'Please come back! I need something inside me!' Joshiro whines under you, whimpering in a plea for you to finally fuck his quivering hole, or at least get back to tongue-fucking him. From the sound of his voice, he's past resisting now, simply a needy slut desparate for his fix.";
	say "     [bold type]Relent and give the buttslut what he needs?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Slam in and breed that hole!";
	say "     ([link]N[as]n[end link]) - Nope. You'll hotdog that ass and shoot over his back.";
	if player consents:
		LineBreak;
		say "     Patting the buns of his delicious rear gently, you get up from on top of the needy male and move back behind him, from where you pull Joshiro up with your hands hooking under his armpits. Drawing him against your chest, you kiss the athletic man as he looks over his shoulder. You hands wander over his chest, squeezing and groping his pecs and abs and overloading his senses with these further pleasures. Meanwhile, you grind and fuck your throbbing member between his sweaty, saliva-slick buttocks, then finally press down against your dickhead and slip into his long-waiting hole. Joshiro lets out an excstatic howl as you fill his hole with your slick shaft, stretching his chute around your girth. 'YES! FUCK ME!' the man shouts, his whole body trembling in your grasp.";
		say "     You brush you face against his cheeks, taking in a whiff of his manly scent before licking him possessively; telling him how much of a good boy he's been up til this point. Pulling out just to the tip of your schlong before plunging in pubes deep in his tanned rear, Joshiro's eyes roll white in their sockets, salivating as he lolls his head on your shoulder. 'Fuck yeah! Pound my hole Daddy! Nnngh! Yes. Yes. YES!' His lust-addled expression coupled with the amazing feeling of his ass swallowing your cock hole drives you deeper and deeper into a lust-crazed momentum. Pounding hard into your bitch boy, you can't help but be impressed by the fact that no matter how much and how hard you fuck him, he always wants more! Joshiro really is an insatiable buttslut!";
		WaitLineBreak;
		say "     After a while of fucking him doggy style, you pull out and take hold of the Asian man, pushing him to lie on his back. As soon as he is in position, you pin him down again with your hands on his upper arms, getting on top of the man and thrusting in hard. At the same time, you invade another needy hole - his mouth. Exchanging sloppy kisses back and forth, you fuck him to your heart's content in a Folded Deck Chair position; showcasing the incredible flexibility of this martial artist as he as he holds himself in a partial split without needing any assistance from his or your hands. Ramming hard and deep into him, you can feel yourself get pretty close, and as you tell your partner just that, he gives you a beaming smile, followed by a slurred shout of, 'BREED ME!' Only to eager to comply, you grind your hips against Joshiro's raised ass and blast a thick spurt of your [cockname of player in lower case] cum into him, followed by many more after that.";
		say "     The sensation of your shaft throbbing inside him and the spreading warmth of cum to fill his needy hole is enough to push Joshiro over the edge right along with you. He pants whorishly as he has a hands-free orgasm, the long cock lying on his toned abs suddenly pulsing out cum to turn them into cum-gutters. Burts of cum fly all over the sweaty man as you jostle him in your own grinding, with one streak even hitting his forehead and creating a sticky patch in his hair. Tightly entwined as you are, the two of you ride out your climaxes together, panting and grunting as you empty your balls into and onto Joshiro. When you eventually wind down and catch your breath again, your partner says exhaustedly, 'Fuck yeah, I needed that! Man, you almost drove me out of my mind with all that teasing!' He strokes over his firm abs, spreading about his own cum as he seems to check if you gave him a belly bulge with your load.";
		WaitLineBreak;
		say "     'You're quite the stud, handsome.' Joshiro says happily. With your cock still balls deep inside him, and the attractive dude feeling being quite nice to just look at and grope a little, you enjoy the quiet moment between the two of you and get back to making out a little. Only after a long while does Joshiro let out a long breath and then gently slips out of your grasp, creating a slurping sound as he ass pulls off your softening dick and starts leaking dribs and drabs of cum. Getting to his feet with his shorts in hand, the martial artist makes a little show of turning around and wiggling his ass. 'I think I'll better wait to put these back on,' he tells you wish a smirk, brushing his fingers down the crack of his ass and looking at them and your cum that is slowly oozing from his hole. Licking the creamy treat from his fingers, he hangs his shorts over his shoulders and wiggles his eyebrows at you. 'I'll get going now. Sure wouldn't mind running into you sometime again though.' With a wave, he wanders off after that, strolling down the middle of the street fully nude now.";
	else:
		LineBreak;
		say "     Patting the buns of his delicious rear gently, you get up from on top of the needy male and move back behind him, from where you pull Joshiro up with your hands hooking under his armpits. Drawing him against your chest, you kiss the athletic man as he looks over his shoulder. You hands wander over his chest, squeezing and groping his pecs and abs and overloading his senses with these further pleasures. Meanwhile, you grind and fuck your throbbing member between his sweaty, saliva-slick buttocks, still doing nothing more than hot-dogging the panting man. Pounding hard against his ass, you pin down his arms to suppress a last attempt of his to angle your dick so it penetrates, gleefully making use of him as just a big boy toy until you feel a familiar tightness rise in your balls.";
		say "     With a deep grunt, you slam into him hard one more time and blast your load, covering the small of Joshiro's back with creamy white streaks. They ooze and drip down over his sweaty skin even while more cum is splattered over the Asian male's back, soon reaching the top of his ass-crack, to make grinding the man even slicker with frothed up semen. Joshiro whimpers and opens his mouth to say something, but you get a hand up to his chin, shoving two fingers into his mouth to suck on. Licking his cheek, you tell the tanned human what a good boy he has been and use your other hand to jerk his erection in a rapid tempo. Over-heated on arousal as he is, it takes but a moment to push Joshiro past the point of no return, hollering loudly as his cock erupts with a huge load of cum.";
		WaitLineBreak;
		say "     Both of you just grunt and pant for a little while as your orgasms run their course, until Joshiro finally catches his breath and manages to pant, 'You're a cruel, cruel person to tease me like that. Fuuuck, I wanted to feel you inside me!' Patting his chest, you roughly tell him to stop bitching, then lick his cheek somewhat possessively and push him away from your chest to catch himself with his hands on the cardboard square. Glancing down to take in your handiwork of creaming his back, you chuckle and get up, then stand back to watch the Asian man do the same. With his red shorts in hand, he looks himself over and twists around to see your cum oozing down the crack of his butt. 'I think I'll better wait to put these back on,' he tells you wish a weak smirk, still regaining his usual self assurance after what you put him through. He hangs his shorts over his shoulders and says, 'I'll get going now. Sure wouldn't mind running into you sometime again though. But next time you have to fuck me properly, alright?' With a wave, he wanders off after that, strolling down the middle of the street fully nude now.";

to say JoshiroForcedSexMenu:
	LineBreak;
	now sextablerun is 0;
	say "     What would you like to do with the defeated Asian dude?";
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Face-fuck him";
	now sortorder entry is 1;
	now description entry is "Use Joshiro's mouth";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fuck his ass";
	now sortorder entry is 2;
	now description entry is "Make use of Joshiro's rear end";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tease his hole";
	now sortorder entry is 3;
	now description entry is "Play denial games with the human buttslut";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride his pole";
	now sortorder entry is 4;
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Face-fuck him"):
					say "[JoshiroForcedSex1]";
				if (nam is "Fuck his ass"):
					say "[JoshiroForcedSex2]";
				if (nam is "Tease his hole"):
					say "[JoshiroForcedSex3]";
				if (nam is "Tease his hole"):
					say "[JoshiroForcedSex4]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the human male and say that you're not in the mood after all. He replies with a groan, and a murmur about making up your mind before handing out beatings. Shrugging, you step back from him and walk away.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JoshiroForcedSex1:
	say "     Grabbing the swaying martial artist, you tell him with a grin that you want to enjoy his mouth, then push down hard on his shoulder, sending him to fall to the floor. After that, you take hold of his head by the hair and pull him up into a kneeling posture. Smiling, you [SelfStripCrotch], then take hold of your [cock of player] shaft and slap it against his cheek. Joshiro lets out a defeated moan but is too weak to resist you further. You stroke his handsome face for a moment before forcefully slamming his mouth onto your cock, right down to griding his face into your pubes like the man-slut he is. There is something intensely satisfying about hearing as he gags and gurgles. Squirming in your grasp, the punch-drunk guy mumbles something unintelligible due to the girth of your cock between his lips. You show the defeated stud who's boss around here, pound hard and fast into his amazing throat.";
	say "     He clearly is a veteran cock-sucker, as Joshiro instinctively works his throat muscles to accommodate the rough face-fucking you give him. This drives your lust to whole new levels and you work his mouth even harder now that you know he can take it. Each sloppy slap of your crotch to his blushed red face draws a gurgled moan and sends his bruised, sweaty muscled form bouncing lewdly. Meanwhile, the sexy man's red boxing shorts tent prominently and sport a wet patch where the tip of Joshiro's cock is. Clearly, the dude loves being manhandled by a dominant partner, which gives you an idea. You reluctantly pull out of the eager male slut, then grab him by the hair and drag the Asian hunk over to a nearby wall. Pulling up his strength-less arms and pinning them over his head, you then continue your relentless assault on your defeated opponent.";
	WaitLineBreak;
	say "     Pounding against his face with rhythmic thrusts, you chuckle at the strings of spit and pre-cum that tether to your crotch and his handsome face on every pull back. The fluids drip down onto the trained body of the martial artist, trickling down over his abs to where you can see his cock still straining against its cloth prison. As you bottom out in Joshiro's mouth, a small spurt of shoots from its tip, oozing right through the soaked fabric. 'Nhhhghl!' the Asian man gurgles around your shaft, his arms twitching weakly against your grasp. You laugh at whatever he wanted to say and teasingly ask if he wanted you to go harder. Joshiro's eyes widen at that, and he groans when you answer yourself and note that that's surely what he wants. You grin at your own perversions, thrusting harder, faster and deeper now. Pulling out to completely then shoving it back in deep as the Asian Adonis's body instinctively rises in protest - only to be quelled by your lust driven aggression.";
	say "     Joshiro's pecs bounce and rub against your legs quite nicely as you thrust into your opponent's face, pinning him to the wall. Grinding into his groaning mouth, you peer down over his body, its chest covered in streaks of pre, spit and sweat. The asian adonis squirms as you wait a little too long and his breath begins to run out, so you allowing him a respite and pull out. Coughing and stuggling for breath, the man starts to say, 'You Fuck-erNNNGGGH!'' Before he is able to finish his sentence you batter into his mouth one final time, sinking balls deep. Howling in lust, you unload a flood of your warm virile seed into his sloppy wide-eyed face. The muscled man struggles to breathe all the while your semen chugs down into his stomach. Something, maybe being creamed, or the oxygen deprivation, or both, pushes Joshiro to a hands-free climax, and he thrashes against your relentless grip as he unloads his balls against the inside of his red shorts.";
	WaitLineBreak;
	say "     With your own orgasm and the amusement at Joshiro getting off at the same time as distractions, you only realize that you actually did cut off his air a bit too long when he goes slack under your hands, unconscious. Somewhat embarrassedly, you whip your still spurting cock out of his mouth and see with relief as he takes a shallow breath. Looks like he'll be okay, so you get back to enjoying yourself, aiming your manhood to paint his muscled chest white with the last few spurts of cum. A little while later, you step back and look at your handiwork with a grin on your face: Joshiro leaning against that wall, sweaty, sticky and out for the count. Putting your clothes back in order, you leave him there and stroll down the street to get back to scavenging, now with an extra spring in your step.";

Section 4 - Enemy Definition

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Human Martial Artist";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
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
	now cocks entry is 1;              [ number of cocks if sex is 'Male' or 'Both' ]
	now cock length entry is 11;
	now cock width entry is 6;         [ Size of balls ]
	now breasts entry is 2;            [ Number of nipples. ]
	now breast size entry is 4;        [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;              [ number of pussies if sex is 'Female' or 'Both' ]
	now cunt length entry is 6;
	now cunt width entry is 4;
	now libido entry is 75;            [ Amount player Libido will go up if defeated ]
	now loot entry is "";              [ Loot monster drops, ]
	now lootchance entry is 0;         [ Chance of loot dropping 0-100 ]
	now scale entry is 3;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "Human";
	now type entry is "human";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	blank out the nocturnal entry;     [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";

Joshiro ends here.
