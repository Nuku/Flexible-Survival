Version 1 of Atticus by Wahn begins here.
[Version 1 - Put into its own file]


[ lust of Atticus - interaction with Evil Elijah                  ]
[   0: nothing yet                                                ]
[   1: watched them fuck                                          ]
[  99: player walked out on their initial fuck                    ]
[ 100: squashed Elijah interactions                               ]

[ Charisma of Atticus - nonsexual interaction                     ]
[   0: nothing yet                                                ]
[   1: opened up with a fatherly moment                           ]
[  99: missed the window                                          ]

[ TimekeepingVar - Atticus's location                             ]
[ 1, -7 (midnight): sleeping in Atticus's Bedroom                 ]
[ 0, -8 (pre dawn): sleeping in Atticus's Bedroom                 ]
[ -1, 7 (early morning): sleeping in Atticus's Bedroom            ]
[ -2, 6 (mid-morning): awake in Atticus's Bedroom                 ]
[ -3, 5 (noon): awake in Survivor Refuge                          ]
[ -4, 4 (mid afternoon): awake in Survivor Refuge                 ]
[ -5, 3 (evening): outside the apartment                          ]
[ -6, 2 (early night): outside the apartment                      ]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - Initial Events
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameEventIDs (continued)
Object	Name
Army Convoy	"Incubus Offspring Meeting"

Incubus Offspring Meeting is a situation.
The sarea of Incubus Offspring Meeting is "Nowhere".

when play begins:
	add Incubus Offspring Meeting to badspots of guy;
	add Incubus Offspring Meeting to badspots of Incest;

after going to Burned-Out Chapel while (LilithKidCounter > 0 and PlayerMet of Atticus is false and Elijah is not in Burned-Out Chapel and a random chance of 1 in 3 succeeds): [Atticus exists, hasn't met the player, Elijah not in there (too complex), 33% chance]
	move Atticus to Burned-Out Chapel;
	say "     As you enter the nave of the ruined chapel, with its soot-blackened walls and columns rising high above you, you become aware that someone else is already inside the room. A series of candles has been set up in the apse behind the altar, their flickering glow playing over the naked skin of a handsome young man standing against the wall there. Casually naked and clearly quite comfortable in his skin, he is pinching his nipples one by one while jerking his meaty shaft in fluid movements. Two small horns bend upwards from his forehead, dark red in color just like the bat-like wings on his back and the spaded tail swinging through the air behind his back. Clearly, this is an incubus - but there's more to him than just that... something about his features and the sexual energy lying thick in the air around him reminds you of Lilith, and it isn't too hard to guess that this is a son of the powerful succubus. You can't help but feel that you've seen someone looking kinda like him before, but you can't put your finger on it right away.";
	say "     Amber eyes flicker towards you as the incubus registers your presence, and with a grin, he speeds his masturbation into a rapid flurry of movement, accompanied by lewd moans spilling easily past his lips. You can do little more than stare as he quickly pushes himself past the point of no return, letting out a satisfied grunt as his body stiffens and a thick spurt of cum erupts from his manhood, followed by another and another. Second by second, the glow of the candles around the naked man seem to diminish and it takes you a second to figure out why: He's literally shooting out the candles with his cum! One, two, three, then four flames are extinguished as their wicks are engulfed by the demon's seed but he aimed a little high for the fifth, so it is only grazed, spreading the scent of burning and cum in the air instead.";
	WaitLineBreak;
	say "     'Aww, just four! So close! Guess I'll have to keep practicing,' the young man says in playfully overacted anger, then glances you up and down hungrily. His gaze is so intense that you almost feel you got groped just by the looks alone. 'You know, you could help me with this. It's your job after all, showing an interest and giving support for the hobbies of your offspring.' A beaming grin spreads over his face as your eyes widen, followed by a confirming nod and a slow, lazy stroke of his cock. ";
	if Playermet of Atticus is false:
		say "'Yeah, that's right! Remember knocking up a certain succubus? I'm the result, daddy! I'm Atticus, by the way. Now why don't you come over here and give your boy a kiss?' Wiggling his eyebrows in a seductive, teasing way, Atticus turns his body to highlight his best features, eager to draw you in.";
	else:
		say "'You don't want to be that kind of dad, do you? Look, you already missed all of the two hours I grew up in, so this is your chance to make up for that! Come play with me! Give your boy a kiss to make it all better, eh?' Wiggling his eyebrows in a seductive, teasing way, Atticus turns his body to highlight his best features, eager to draw you in.";
	LineBreak;
	say "     [bold type]How do you want to deal with him?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Kiss the incubus. He asked nicely after all.";
	say "     [link](2)[as]2[end link] - Walk up to him and give your son a hug (nothing sexual right now).";
	say "     [link](3)[as]3[end link] - Shake your head and ignore his lewd offer.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go reply to his advances, [link]2[end link] to hug him or [link]3[end link] to ignore his lewdness.";
	if calcnumber is 1:
		LineBreak;
		say "     Moving closer to the attractive young demon, you're welcomed with open arms by Lilith's son, with him drawing you into a close embrace. Atticus naked chest rubs against your body as he plasters himself to your side, strong arms holding you tight as he lets his hands wander and feels you up. His lips find yours in a breathtaking instant, followed by his tongue slipping between your lips and playfully wrestling with yours as you make out. Sharing your breath and gazing deep into your eyes with his amber irises full of burning lust, the sex demon draws you under his spell, keeping you close for you don't know how long. Then finally, he releases your form and takes the tiniest step back, just enough so that he can nod down towards his crotch as he says, 'My, my, daddy! You're good at showing your love, but I think we've got another problem now. Wanna kiss that too and make it all better?' Following his gaze, you see Atticus erect cock, complete with a glistening drop of pre-cum at the slit.";
		now Charisma of Atticus is 99; [missed the window]
	if calcnumber is 2:
		LineBreak;
		say "     Moving closer to the attractive young demon, you're the one who draws him into a fatherly embrace. Taking care to just lay your arms around his chest and not touching him in a sexual way, you hold him tight and tell Atticus that you're very glad to meet him and hope to spend some time together. Surprised at your approach to his sexual offers, the young incubus is almost stunned for a second or two, his hands hesitating in the positions where he started to grope at you. 'I - um, thanks daddy,' Atticus haltingly says a moment later, lifting his arms to just squeeze you back. The two of you stay like that for you don't know how long, just holding each other, until your son gets a little unruly and slips out of your grasp. He steps back, looking at you wide-eyed and bites his lip, as if not knowing how to go on from here. What must be incubus instinct has him taking a quite sexy pose, showing off his naked form in the candlelight, but the voice in which he says, 'I'd like to hang out with you some more. I'll be here when you come visit.' is far from the cocky tone it was before.";
		now Charisma of Atticus is 1; [cracked his shell]
	else:
		LineBreak;
		say "     Giving the incubus a shake of your head has his features draw into a pout at being rejected for a second or two before he catches himself and puts his seductive smile back on. 'I'll be ready for you when you change your mind daddy, just come and join me then. You know you want to...' With that said, he turns his attention back to jerking his cock, already fully hard again after just shooting a few moments ago.";
		now Charisma of Atticus is 99; [missed the window]
	now PlayerMet of Atticus is true;

after going to Burned-Out Chapel while (Atticus is in Burned-Out Chapel and PlayerMet of Atticus is true and Lust of Atticus is 0 and HP of Elijah is 99 and cocks of player > 0 and a random chance of 1 in 3 succeeds): [Atticus in the room, has met the player, first Atticus/Elijah meeting, Evil Eli exists, male player, 33% chance on entry]
	say "     As you enter the nave of the ruined chapel, with its soot-blackened walls and columns rising high above you, you become aware that someone else is already inside the room. A series of candles has been set up in the apse behind the altar, their flickering glow playing over the naked forms of two entwined bodies. Both men, from the sounds of their grunts. Clothing is scattered on the floor around them, some of it hanging off the remnants of church pews, clearly thrown aside in the throes of lust. Despite seeing only the back of the larger of the two, you have a good guess who it is, recognizing Elijah by his black hair and black wings. His partner has both arms wrapped around the fallen Adonis, groping his ass and feeling his broad back as the two of them make out.";
	say "     A few heartbeats later, the second male reveals himself to be an incubus by bending his head to the side and nibbling on Elijah's earlobe. As he does so, the sex demon's gaze falls upon you, instantly followed by an impish smile on the lips of whom you recognize as your son Atticus. The young man gives you a little wave with the hand not squeezing Elijah's buttocks, then beckons you closer to them. Seems he's interested in some fun between the three of you.";
	LineBreak;
	say "     [bold type]How do you react to his invitation?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Stroll up to the two of them. This'll be fun!";
	say "     [link](2)[as]2[end link] - Shake your head and keep to the shadows, watching.";
	say "     [link](3)[as]3[end link] - Turn right around and walk out of there. You don't want to see this.";
	say "     [link](4)[as]4[end link] - Storm up to them and wrench Elijah away from your son.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go up to them, [link]2[end link] to hide and watch, [link]3[end link] to leave or [link]4[end link] to split them up.";
	if calcnumber is 1:
		LineBreak;
		say "     Walking towards the end of the chapel, you skirt around some of the broken and blackened furniture and some mounds of debris, soon arriving at the elevated altar section. As you take the step up to stand in the half-circle of candles set up all along the walls, Atticus gives Elijah's neck a last little lick and sucks on it to create a hickey, then chuckles and calls out to you with the words, 'Hey daddy!' Not quite pulling his arms from around the naked demon pressed against his chest, Elijah half-turns and his eyebrows rise as he spots you. Getting over the surprised recognition quickly, he lets out an amused laugh, followed by the words, 'I should have known this pretty little slut would have some connection with you. Guess you're a regular visitor to the area to sate all your sexual needs, eh? Angels, demons, and anything else you might want to mount, hah!' Atticus snakes a hand between the two of them to wrap it around Elijah's cock and gives it a squeeze, nodding to confirm the angel's words.";
		say "     '[if Charisma of Atticus is 1]Daddy comes to visit me sometimes. I look forward to it quite a bit. Kinda wanna show off to [ObjectPro of player] too![else][SubjectProCap of Player] boned Lilith right next door in the sacristy, and I gotta say [SubjectPro of Player] did a bang-up job doing so. Can't deny the awesome results, eh?[end if]' Stroking over his own flawless abs as he says this, Atticus then grabs his own cock and rubs it against Elijah's, drawing a horny grunt from the angel that leads over to a hungry kiss between the two of them. Almost forgetting you're there for a moment, they tongue-wrestle back and forth for a little while before Elijah pulls back and looks over to you again. 'I was soaring in the sky over the area, looking for someone fun to fuck, when this little boy-slut flew right up to me, naked and with his dick flapping in the air. Oh, the things he shouted, for all the world to hear! How could I not go for his inviting offer, and now the three of us are here together, you, me and the boytoy. I new he was a young buck, but if he's your kid he can't be older than a few days, hah! Can't wait to feel him around my cock!'";
		WaitLineBreak;
		say "     Looking at the two of them, naked and arm in arm, you realize what Elijah meant. It's not like Atticus's form isn't that of a young adult, with him having the confidence of a grown man too, but he's oh so very clearly the youngster in the pair. The fallen angel's timeless beauty puts him on just about the same physical age, but there's so much more to him, an air of maturity that betrays the real difference between them. 'Who could resist when this stud flies past, right?!' Atticus says to you, wiggling his eyebrows and grinning. 'And now, I wanna have some fun! With my angel daddy and my real daddy!' he adds with a purr right after that, lust vibrating in his voice. Elijah just smiles, raising the arm that isn't still wrapped around your son's naked midriff to wave you closer.";
		say "[AtticusElijahThreesomeMenu]";
	else if calcnumber is 2: [just watch]
		LineBreak;
		say "     As you turn down his offer of a threesome, [if Charisma of Atticus is 1]Atticus expression falls and he looks at you in disappointment. [else]Atticus sticks out his tongue at you, then smacks his free hand down on Elijah's butt too, spreading his cheeks and squeezing their firm roundness. [end if]Meanwhile can hear the angel kissing and suckling on your son's neck, giving him hickeys while the young demon plays to his audience, soon involving his spaded tail slipping between Elijah's legs and arching upwards towards his ass. Licking his lips and blowing you a kiss, Atticus plays his tail-tip up and down the fallen angel's crack, making Elijah grunt and stick out his ass a little more. An eyeblink later, the pointy end of that red-skinned tail has pushed past his pucker, with the visible length of the appendage twitching left and right as it worms its way deeper. 'Fuck yeah! You're a naughty slut aren't you?' Elijah groans as he feels Atticus moving inside him, then runs a hand through the young incubus's hair and pulls his head back to look into his eyes.";
		say "     'You've no idea yet, Elijah!' the incubus says with a wide grin, followed by the loudly spoken words of, 'Wanna be my angel daddy? Your boy needs a good fucking!' You can't be completely sure, but you think that his eyes flashed aside to look at your hiding spot for a second as he said that, meaning that those words were meant for you. Elijah all but growls out his reply of, 'I'm gonna take you like the whore you are, son!' and he moves in to kiss Atticus aggressively, their mouths pressed together in a wild tongue-battle as they make out. Never stopping from pegging his fuck-buddy, Atticus moves his hands to hook over Elijah's shoulders, followed by his legs wrapping around the tall male's hips as he clings to the fallen angel. Elijah stumbles over towards the altar while kissing, groping and being fucked by Atticus, then lays him back on the cracked and cum-stained stone table.";
		WaitLineBreak;
		say "     'Little sluts like you need a strong fatherly influence! And I got just the thing to drive some lessons home into you!' Elijah says somewhat in an amused, lewd tone. Pressing one hand down on Atticus's chest and pinning him to the altar, his other is wrapped tight around the base of his erect cock, wagging it towards the waiting demon. 'Yeah daddy, I want it! I need it!' the incubus replies loudly to his dual audience, hands gripping the sides of the altar as he devours Elijah's naked form with his hungry looks. 'Lift your legs and show me that boycunt!' Elijah commands and is quickly obeyed, then lines himself up with the young man's hole. Thrusting in with a victorious grunt, he sinks his angelic shaft deep into the demon's eager body, all the way up to his balls in one single push. 'A little whore just as I like em, tight yet flexible enough to take a deep dicking!' 'I trained a lot to be ready for you, dad! With the beasts outside, and my own tail!'";
		say "     As he moans out the words, Atticus's tail goes wild in its pegging of Elijah's ass, twisting and turning to rub against him inside and out, really pushing the fallen angel's buttons. A lusty groan that's pretty much just a 'Nnnnghhhh!!' instead of words escapes from Elijah, followed by him really railing the incubus under him now, slamming into him with all the force he can muster. The moans and grunts of the two handsome males fill the desecrated chapel as they become louder and louder, building up to a climactic shout of 'Take it boytoy!' as Elijah slams forward so hard that he almost pushes his fuck-buddy off the altar. Only the fact that he can brace himself against the floor with the two strong demonic wings on his back saves Atticus from falling down, as his hands are wrapped tightly around his throbbing cock right now, stroking it in a mad flurry instead of holding on to the altar. With the angel beginning to flood his ass with fertile seed, the demon isn't far behind, bucking his hips as his perfect cock erupts with his infernal cum.";
		WaitLineBreak;
		say "     Watching from the shadows, you feast your eyes on the climactic finish of the two men fucking. You can't help but feel proud about the fact that you were the one who made the sexy show possible, both by knocking up Lilith to bring Atticus into this world in the first place, as well as giving Elijah a hard shove to fall from his previously so lofty status to become the deviant sex-fiend he is now. A grin covers your face as you look at them still grinding against each other, slowly coming down from their shared orgasms. It's quite a lewd image that presents itself to you, with the handsome incubus limply stretched out on the altar, chest splattered in his own cum and Elijah bent over him, still balls-deep and bracing himself on the stone to catch his breath. Then he reaches behind himself and grabs hold of the demonic tail still wiggling between his cheeks, pulling it out with a gasp. 'You're quite good with this thing, demon slut!'";
		say "     'So you liked your boy playing with your ass daddy?' Atticus replies in a playful tease. As he opens his mouth to say more after that, Elijah starts to scoop up the cum all over the incubus's chest and feeds it to him instead. With three fingers pushed between Atticus's lips, Elijah grunts, 'Yeah, take it boy! Suck it all off good! I can see that I'll have to regularly visit you, little slut!' With the sex between the two of them winding down, it's becoming more likely that Elijah will notice you at some point, so you quietly exit the chapel and wait for him to leave before stepping back in.";
		now Lust of Atticus is 1; [watched them fuck]
		NPCSexAftermath Atticus receives "AssFuck" from Elijah;
		NPCSexAftermath Elijah receives "AssDildoFuck" from Atticus;
	else if calcnumber is 3: [do not watch]
		LineBreak;
		say "     Shaking your head at the sexy young man that your pairing with the succubus created, you turn around and quietly start walking out of the building. With the state of the chapel being as it is, you can't go too quickly as not to make noise or stumble over some debris, which means that you hear some moans and grunts from the fucking men before you're out of earshot.";
		now Lust of Atticus is 99; [player walked out, no interest]
	else: [stop them]
		say "     No longer able to hold back, you run all the way and grab Elijah by the arm, wrenching him away from his embrace with Atticus. The sudden attack catches both of them totally by surprise, with the fallen angel stumbling down the step to the apse and landing in a sprawled heap on the soot-blackened floor, his wings partially splayed out to break his fall. Atticus is left standing where he was, bafflement written all across his face as he can't quite make sense of what's going on. You draw him into a close embrace, just holding your confused demon offspring for a second before you hear a growl of, 'What the fuck?!' from behind you. Half-turning with Atticus in your arms, you glower at Elijah and snarl for him to fuck off, shouting that this young man isn't for him. He scowls darkly, then makes a throwing-away gesture with his hand and stomps over to grab his clothes before making a beeline to the exit of the chapel. 'Fine, have the little slut. Who needs that worthless whore anyways. I bet he's a loose and blown-out amateur!'";
		say "     With that last explosive tirade, the fallen angel is gone, leaving you alone with Atticus. 'D-daddy? What just happened?' he asks you with a wide-eyed gaze and you stroke his hair to calm him down. Clearing your throat, you explain that Elijah isn't someone he should hang out with. 'But I fuck around with all sorts of people. What's so bad about this dude? He's hot!' Pulling back a little, you place both hands on Atticus's shoulders and look him straight in the eye, stressing that you know what you're talking about and that he should trust you on this. 'I will dad,' he replies with a sigh, then adds, 'I was looking forward to a good fuck though. Can you help me out instead, if you don't want him to take me?' The last few words are said in a tone of re-ignited lust, with Atticus finally throwing off the confusion your intervention created. He unconsciously grinds himself against your body, instinct reinforcing his invitation a little more before he peels himself out of your grasp and steps back a little, striking a sexy pose.";
		now Lust of Atticus is 100; [squashed his Elijah interactions]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
Atticus	"Atticus"

Atticus is a man.
ScaleValue of Atticus is 3. [human sized]
Cocks of Atticus is 1.
Cock Length of Atticus is 12.
Cock Width of Atticus is 8.
Testes of Atticus is 2.
Cunts of Atticus is 0.
Cunt Length of Atticus is 0.
Cunt Width of Atticus is 0.
Breasts of Atticus is 2. [2 nipples]
Breast Size of Atticus is 0.
[Basic Interaction states as of game start]
PlayerMet of Atticus is false.
PlayerRomanced of Atticus is false.
PlayerFriended of Atticus is false.
PlayerControlled of Atticus is false.
PlayerFucked of Atticus is false.
OralVirgin of Atticus is false.
Virgin of Atticus is true.
AnalVirgin of Atticus is false.
PenileVirgin of Atticus is false.
SexuallyExperienced of Atticus is true.
MainInfection of Atticus is "Incubus".
The description of Atticus is "[AtticusDesc]".
The conversation of Atticus is { "<This is nothing but a placeholder!>" }.
The scent of Atticus is "     Atticus smells nicely masculine, with just the smallest amount of sexy sweat to his body, complete with lots of pheromones that can drive almost anyone wild in lust.".

to say AtticusDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Atticus: [HP of Atticus] <- DEBUG[line break]";
	say "     Atticus has the looks of an eighteen-year old young man with a toned swimmer's build. He has absolutely no hangups about showing it off either, strolling around naked or even hard with casual ease. A pair of small, sharp horns curve up from his forehead and behind his back you can see muscular bat-like wings half-unfolded, as if ready to be laid around you or another partner to draw you in against him. The long and thin tail with a spaded tip completes the image of an attractive incubus. As Atticus notices your interest in him, he gives you an enticing smile, followed by a wink that promises anything you might want or desire.";

[
an everyturn rule:
	if AtticusRelationship > 10 and AtticusRelationship < 90:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [midnight]
			if player is in Atticus's Bedroom and Atticus is nowhere:
				project the figure of Atticus_face_icon;
				say "     You hear the front door open and close, then the barks of Romulus and Remus as they happily arrive back home. A short moment later, the three of them come into the Bedroom and Atticus greets you, but quickly makes clear that he's fairly tired and needs some rest. Yawning, he adds that you of course can feel free to stay longer, just to please not wake him. And with that, the man sets down his gear next to the bed, quickly strips off and gets into bed, slipping under the covers dressed only in some baggy boxer shorts. His two wolves quickly follow, cuddling up to their master and getting some pats from him before all three of them doze off.";
			else if player is in Survivor Refuge and Atticus is nowhere:
				project the figure of Atticus_face_icon;
				say "     The front door is unlocked with the key and Atticus opens it, letting in his two wolves Romulus and Remus. The feral canines beat their tails, happy to arrive back home and make a beeline for you, sniffing a little before they move on. A short moment later, when Atticus is done closing the door and re-locking it securely, he greets you, but quickly makes clear that he's fairly tired and needs some rest. Yawning, he adds that you of course can feel free to stay longer, just to please not wake him. And with that, he vanishes into his bedroom, together with the two wolves.";
			else if player is in Atticus's Bathroom and Atticus is nowhere:
				say "     You hear the front door open and close, then the barks of Romulus and Remus as they happily arrive back home. A little while later, you hear another door - that must have been the one to the bedroom. Sounds like the three of them came back and went straight to bed.";
			move Atticus to Atticus's Bedroom;
		[else if TimekeepingVar is 0 or TimekeepingVar is -8:] [pre dawn - unused, Atticus sleeps]
		[else if TimekeepingVar is 7 or TimekeepingVar is -1:] [early morning - unused, Atticus sleeps in]
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			if player is in Atticus's Bedroom:
				project the figure of Atticus_face_icon;
				say "     Waking up after a restful night, Atticus sits up between the two wolves cuddled up against him and stretches his arms, which gives you a good view of his broad-shouldered chest and trained body. He yawns and says good morning to you, then gently shakes Romulus and Remus awake and goes into the main room of the apartment to feed them. Atticus returns a little while later, still in nothing but his baggy boxer shorts. 'Did I miss anything exciting going on out there?' he asks with a nod to the city outside the large windows and his telescope specifically. As you shake your head, he smiles and goes to grab his usual outfit, getting dressed before he sits down at his desk.";
			else if player is in Survivor Refuge:
				say "     Suddenly, the door to the bedroom opens and Atticus steps out of it, dressed in nothing more than some baggy boxer shorts and followed by some very eager wolves. He wishes you a good morning, then quickly stops by the kitchen to feed his feral canines, ducking back into the bedroom while they're still wolfing down their food.";
			else if player is in Atticus's Bathroom:
				say "     You hear a door open and close, then happy barks by Romulus and Remus. Sounds like Atticus woke up and just went to feed them.";
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			if player is in Atticus's Bedroom:
				project the figure of Atticus_face_icon;
				say "     Sitting up from working at his desk, where he was updating some lists and his journal, Atticus stretches out and goes into the main room of the loft apartment.";
			else if player is in Survivor Refuge:
				project the figure of Atticus_face_icon;
				say "     Atticus comes out of the bedroom and nods to you, then sits down on the lifting bench and starts to pump a weight up and down. He keeps at it tirelessly for quite a while too - no wonder he has such a physique.";
			else if player is in Atticus's Bathroom:
				say "     You hear a door open and close somewhere nearby - the bedroom maybe? Then some fairly low, rhythmic grunting starts up in the main room of the loft apartment.";
			move Atticus to Survivor Refuge;
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			if player is in Survivor Refuge and Atticus is in Survivor Refuge:
				project the figure of Atticus_face_icon;
				say "     Finishing with a fairly well-rounded exercise routine, Atticus moves over to the comfortable sofa in the front half of the room and sits down on it. As he leans forward to grab a book, Romulus and Remus are already on the way to join him on the sofa, soon flanking the muscular man on both sides and pressing up against him. They sniff him happily and lap at any exposed skin, licking his salty sweat off. After a minute or two of this, with Atticus stroking his companions['] fur, the three of them quiet down and sit quietly to read - the wolves either understanding what is written in the book too, or simply enjoying the companionship with their master.";
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if ((player is in Atticus's Bedroom or player is in Atticus's Bathroom) and Atticus is in Survivor Refuge):
				say "     You hear Atticus say, 'Come on guys, time for some scavenging!' The happy barks of his two wolves follow, and soon after, you hear the front door open and close.";
			else if player is in Survivor Refuge and Atticus is in Survivor Refuge:
				project the figure of Atticus_face_icon;
				say "     Going to collect his gear - backpack, baseball bat and taser - Atticus then waves the wolves up from where they have been lounging around and says, 'Come on guys, time for some scavenging!' Both Romulus as well as Remus give happy barks, tails wagging eagerly to go out with their master. Atticus bids you farewell, saying that you can stay and keep an eye on the place while he's out, then leads his companions to the door and leaves.";
			now Atticus is nowhere; [stashed in another dimension]
		[else if TimekeepingVar is 2 or TimekeepingVar is -6:] [early night - unused, Atticus is out scavenging]
]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Conversation
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing the Atticus:
	say "     What do you want to talk to Atticus about?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Atticus to tell you about himself";
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
				if (nam is "Himself"):
					say "[AtticusTalk1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young incubus, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AtticusTalk1:
	say "     Atticus chuckles as you ask him about himself and he starts to casually play with his nipples as he thinks for a second, then replies, 'Oh, it's just the usual story. You bone mom in a bout of amazing sex, knock her up and a few hours later - boom, here I am. The world's my oyster, and I wanna fuck all of it! [one of]That includes actual oysters actually, you see, there were those freaky girls out in the surf at the coast, and I gave it to them good! Might have some grand-kids out there too now, if you know what I mean.' [or]Women, men, other things - where's the difference? I can tell you, there was this one pretty boy orc who just had the most amazing ass that I just couldn't get enough of. He had a proper little bump in his stomach by the time his leather daddy came back to check on him and I had to beat a hasty retreat out a window.' [or]Women, men, other things - where's the difference? I mean, canine bitches clearly have that nice big tail as a handhold to hold on to while you fuck [']em, right? So, so convenient...' [at random]He regales you with a shockingly detailed account of his latest conquests, clearly enjoying himself quite a bit as he lays it out for you.";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Atticus:
	if (lastfuck of Atticus - turns < 2): [he got fucked in the last 18 hours = 6 turns]
		say "     'Hey, I'm a horny dude, but after a certain point one can get sore. Give ma a moment, alright?' Atticus replies with a chuckle.";
	else: [ready for sex]
		say "     As you walk up to Atticus, he recognizes the lustful gleam in your eyes and licks his lips in anticipation. 'Oooh daddy, are you ready to play with me?' he says in a cocky tone, stroking a hand over his muscular chest as he does so.";
		wait for any key;
		say "[AtticusSexMenu]";

to say AtticusSexMenu:
	say "     What exactly do you plan on doing with Atticus?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[
	if player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Push him down to get a blowjob";
		now sortorder entry is 1;
		now description entry is "Make Atticus suck you off";
	]
	choose a blank row in table of fucking options;
	now title entry is "Sink to your knees and give Atticus a blowjob";
	now sortorder entry is 2;
	now description entry is "Give the handsome demon some oral pleasure";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Take control and fuck Atticus's ass";
		now sortorder entry is 3;
		now description entry is "Bend him forward and give the incubus a hard pounding";
	[
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take Atticus's cock in your pussy";
		now sortorder entry is 4;
		now description entry is "Get fucked by the incubus";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Atticus's cock in your ass";
	now sortorder entry is 5;
	now description entry is "Get fucked in the ass by the incubus";
	]
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
				if (nam is "Push him down to get a blowjob"):
					say "[AtticusSex1]";
				if (nam is "Sink to your knees and give Atticus a blowjob"):
					say "[AtticusSex2]";
				if (nam is "Take control and fuck Atticus's ass"):
					say "[AtticusSex3]";
				if (nam is "Take Atticus's cock in your pussy"):
					say "[AtticusSex4]";
				if (nam is "Take Atticus's cock in your ass"):
					say "[AtticusSex5]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young incubus, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AtticusSex1: [oral on the player]
	say "     ...";

to say AtticusSex2: [BJ on Atticus]
	say "     Giving Atticus's shoulder a squeeze, you lean in to kiss him on the lips, at which point the young man slides his arms around you and takes control. His tongue darts into your mouth as the two of you make out, wrestling your own down in a playful show of dominance. His hands wander down your body, stroking and touching, soon coming to rest on your crotch and squeezing it. 'I know what you want,' he laughingly says as both of you pull back to catch your breaths. Then he sticks out his tongue and licks the tip of your nose as he goes on to tease, 'You just can't control yourself, can you? Your mouth watering when you think about sucking my long, hard cock! Here it is, daddy! Go on, worship it!' With that said, the incubus grasps the base of his thick piece of man-meat and wags it against your body while his other hand moves to push down on your shoulder.";
	say "     Sinking down to your knees, you look up to see the smiling face of Atticus looking down at you, just past his erect cock. He traces the tip of his index finger over the cum-slit and comes away from it with a sticky string of pre-cum, then smears the fluid over your lips. 'Open wide to receive me!' the young demon commands, proudly holding out his dick and moving to stand over you. He gleefully brushes his cum-slit against your lips even as you open your mouth and try to start sucking, only allowing you to do so once he has spread more of his pre on you. Then finally, he's inside your mouth - his warm length of demonic cock laying on your tongue and pushing further back to bump the back of your throat. Working himself back and forth, the incubus contains his impatience enough so that he can get you used to his girth, tilting back your head as he pushes down your throat eventually.";
	WaitLineBreak;
	say "     'You did such a good job in making this cock, daddy! Glad you're taking the chance to savor your handiwork now. How does it feel down your throat, eh? Leaking pre into daddy! Fuck, this is nice!' Atticus says in a gleeful tone as he works himself in and out of your mouth, patting your head. He's obviously quite into the fun of using you this way and soon proceeds to take hold of your head with both hands, then starts to face-fuck you in a rapid tempo, chuckling about the slapping noises of his balls against your chin. 'I'm gonna feed you my cum now! Ready to take a load from your own demon boy? Of course you are, daddy. Only a real cum-slut would be on their knees before their son!' With that said, Atticus takes out all the stops and really hammers into your throat hard, making it hard to even get a panted breath through your nose as he mostly blocks your airways with his cock.";
	say "     It doesn't take all that long of such harsh pounding before Atticus shouts, 'Fffuuckkkkk! Take it, slut!' His cock throbs heavily against your tongue and you can feel it in your throat as the first splash of cum is pumped into it. More and more follow after that, so many that you actually have to pat urgently against the incubus's hips so he pulls back and allows you a gasp of air. It's not like he doesn't enjoy that part of it either though, as any cum that isn't blown down your throat gets used to paint your face white. As his orgasm slowly ebbs off, Atticus looks down at you with a grin, inspecting his handiwork. 'Hmm, that's a great look on you daddy! I might just forgive you for being an absentee dad and missing all the hours of my childhood if you keep this up.'";
	NPCSexAftermath Player receives "OralCock" from Atticus;

to say AtticusSex3: [ass fuck on Atticus]
	say "     Giving Atticus's shoulder a squeeze, you move your hand to the back of his head and draw him towards you, meeting the incubus's smiling lips in a demanding kiss. As you invade his mouth with your tongue, wrestling his appendage down in a bout for supremacy over the cocky young man, he replies in kind, tensing is muscles and spreading his wings a bit further as if to appear bigger and more powerful. His hands wander down your body, stroking and touching, soon coming to rest on your crotch and squeezing it. 'Someone's eager to be with me here,' he laughingly says as both of you pull back to catch your breaths. Then he sticks out his tongue and licks the tip of your nose as he goes on to tease, 'You just can't control yourself, getting hard and dripping at just the thought of feeling my dick in you. Pounding in and out of your mouth or ass, eh? Pleasuring your very own son!'";
	say "     Being the sex-demon that he is, it's almost certain that Atticus knows exactly what you want to do to him, but still the young buck can't help but tease and prod you a little. Which in the end just makes it so much more satisfying to push against his chest and make him stumble back against the wall, then catching his wrists one by one to pin them against the soot-stained stone. Holding him tight like that, you kiss his full lips forcefully before moving on to lick the side of his neck and nibbling at his earlobe. Grunting into his ear that you'll make him your moaning bitch, you then grab his shoulder and turn Atticus around, overwhelming the token resistance he puts up against you. Man-handling the incubus, you get him standing against the wall in a classic police pat-down pose, legs spread and hands planted wide apart against the stone.";
	WaitLineBreak;
	say "     'You'll never break me, copper!' Atticus growls playfully over his shoulder, his tail waving sinuously in front of your face, then pointing down towards his ass with the spaded tip. Happy to follow the invitation, you quickly free your [cock of player] erection and smack it a few times against the globes your demonic offspring's amazing bubble butt. Gathering a bit of spit to let drip down onto your shaft, you then line yourself up with his rear entrance and thrust in with a sharp push, sinking into the young man with a satisfied grunt in both of your voices. 'Fffuuckkk!' he groans out lustfully, raising his ass a little to receive you. 'Soo good! Love the girth of your prick inside me, daddy! Pound me, I've been a bad, bad boy!'";
	say "     Sinking all the way into the incubus's tight hole, you have to grab hold of his shoulders to keep standing as he squeezes his muscles around your length and gives you a mind-bogglingly good sensation that way. He doesn't let off doing that afterwards either, making every thrust into him akin to a hand closing around your cock and milking it. 'Feels good, doesn't it daddy?' Atticus asks over his shoulder, that challenging tone rising back in his voice as he can't help but needle you. This time, you've got enough of his cocky attitude though and with a quick grab, you snatch his tail and shove the spaded tip into his mouth, telling him to suck it and be quiet. Finally having shut your incubus boy-toy up, you pull yourself out all the way from his ass, then shove your prick back into him all of a sudden, followed by jack-hammering in and out of his fuckhole too fast for him to start his tricks again.";
	WaitLineBreak;
	say "     Mercilessly pounding the young demon's ass, you reduce him to moaning and grunting around the tail-tip still in his mouth, the muscles in his arms flexing as he braces against your thrusts. Reaching around, you find his own cock fully erect and literally dripping long streaks of pre, making your fingers slick and wet. Wrapping them around his boner, you jerk your sexy partner in rhythm with your own deep thrusts, driving his arousal to new heights. You can hear his breaths coming faster and faster and soon, there's a throb of his cock as a spurt of pre splashes out - at which point you stop your thrusts and just clamp your fingers tight around his length. Atticus moves to grind back against you for a second, only to be brought to a stand still by your other hand tightly clasping his hip. Leaning forward, you grunt into his ear that you're in control now and will decide if and when he can come.";
	say "     Pulling his tail-tip out of his mouth, Atticus breathlessly pants out, 'Yes daddy! Now fuck me, please!' You've got little doubt that he'll be back to his cocky self soon after, but for now, that's exactly what you wanted to hear, so you tell him what a good boy he is and hammer into him hard, your hand jerking him off in a furious tempo. 'Nnnnghhhh!' Atticus shouts out loud, filling the chapel with his moan of pleasure as his dick erupts like a cum-volcano, splattering the wall with creamy spurts of his seed. The young man's hole quivers and flexes around you as he orgasms, creating the most exquisite feeling for your cock and driving you over the edge right along with him. Thrusting deep, you grind against his rear as you paint his insides white, staking your claim to this sexy man, at least for a little while.";
	WaitLineBreak;
	say "     As your shared orgasms run their course, Atticus eventually switches over to brace himself against the wall with the edges of his strong wings, freeing his arms for other things. He slides his hands along your sides and moans in pleasure, then says, 'That was amazing daddy! Feeling you inside me, and now I'm so warm and full.' He tilts his ass up and down a little, grinding against you and enjoying himself before adding, 'Too bad you're going soft already now, I'd love to have you and your cum inside me longer.' Shaking your head about the incessant goading the cocky demon dishes out at the slightest opportunity, you reply that you have just the thing to help him out with that. 'Oh, what's that daddy?' he asks and wiggles his ass left and right, making you groan as that squeezes your cock.";
	say "     Pulling your softening length out of him once he holds still again a moment later, you then grab his tail and wedge the spit-slick spade against his hole, plugging the incubus's asshole with his own appendage! 'Damn! Nice idea,' Atticus almost drools as he experimentally pushes his spade deeper, then retracts it a little again. With the sex-demon busy with himself for a while now, you have the time to get dressed again in peace.";
	NPCSexAftermath Atticus receives "AssFuck" from Player;

to say AtticusSex4: [pussy-fucking by Atticus]
	say "     ...";

to say AtticusSex5: [ass-fucking by Atticus]
	say "     ...";

to say AtticusElijahThreesomeMenu:
	say "     What exactly do you plan on doing with Atticus and Elijah?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Get a shared blowjob, with both of them on their knees";
		now sortorder entry is 1;
		now description entry is "Make Atticus and Elijah service you";
	[
	choose a blank row in table of fucking options;
	now title entry is "Sink to your knees and worship both of their dicks";
	now sortorder entry is 2;
	now description entry is "Let them use your mouth";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Spit-roast Atticus";
		now sortorder entry is 3;
		now description entry is "Bend him the incubus over the altar and fuck him from both ends";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Spit-roast Elijah";
		now sortorder entry is 4;
		now description entry is "Bend him the incubus over the altar and fuck him from both ends";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Be spit-roasted between them";
		now sortorder entry is 5;
		now description entry is "Take the incubus and angel at the same time, front and back";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Do a three man chain-fuck";
		now sortorder entry is 6;
		now description entry is "Have some anal fun";
	]
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
				if (nam is "Get a shared blowjob, with both of them on their knees"):
					say "[AtticusEliThreesomeSex1]";
				if (nam is "Sink to your knees and worship both of their dicks"):
					say "[AtticusEliThreesomeSex2]";
				if (nam is "Spit-roast Atticus"):
					say "[AtticusEliThreesomeSex3]";
				if (nam is "Spit-roast Elijah"):
					say "[AtticusEliThreesomeSex4]";
				if (nam is "Be spit-roasted between them"):
					say "[AtticusEliThreesomeSex5]";
				if (nam is "Do a three man chain-fuck"):
					say "[AtticusEliThreesomeSex6]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Changing your mind about this whole thing, you clear your throat and tell Atticus and Elijah that you've got things to do. 'But dad! I wanna fuck!' comes the immediate groaned-out reply from your demonic offspring, followed by Elijah chuckling and telling him, 'I'll take care of you, boy-slut!' You use the moment of distraction to hurry out of the chapel, debris and gravel crunching under your feet and not quite covering the moans and grunts that start up behind you.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AtticusEliThreesomeSex1: [two man oral]
	say "     Quickly peeling off what gear and clothing you have, you step up to the waiting men with your [cock of player] shaft leading the way, already hard and ready from watching their antics. The two of them greet you with hungry looks and lewd grins. For a second, it seems like Elijah is going to take the lead, but before he can you've already given the command to get on their knees. The incubus immediately complies, letting out a playfully over-acted moan as he sinks down. '[if Charisma of Atticus is 1]Yes daddy, anything for you,[else]I love it when [SubjectPro of Player]'s all bossy,[end if]' the young demon says as he tugs on his angelic fuck-buddy's hand, having to do it twice before Elijah shrugs and joins him on the ground before you. Looking down on the handsome faces of your two partners, one framed in long black hair, the other with red hair and pointy little horns, you feel your prick throb in your hand.";
	say "     It may be the middle of the nanite apocalypse, but moments like this almost make the fall of civilization and having to fight for your life worth it all on their own. Such a perfect opportunity to have two sexy studs to play with, one created by yourself when you bred and knocked up Lilith, the other the result of you giving him a hard shove to fall from his lofty status to become a sex fiend. As these thoughts go through your mind, your cum-slit leaks a drop of pre, forming a glistening bead at the tip of your dick. It starts to run down the curve of your erection's head a little as more pre-cum wells up, then suddenly is stopped by Atticus's tongue as the demon laps it up. 'Mmmh, tasty!' he sighs in pleasure, being joined by Elijah a second later, who kisses the side of your shaft and mouths at it, his tongue playing along the underside.";
	WaitLineBreak;
	say "     Putting your hands on the heads of both of your willing sluts, you lean your head back and close your eyes for the moment, fully concentrating on the duo of mouths and tongues teasing and caressing your sex. Almost constantly, you have one and sometimes even two tongues lapping at your dickhead, intermixed with eager lips sliding over your head to lightly suckle at it. Their hands glide up and down along your thighs and back to your buttocks, stroking and feeling you up, with the one that isn't working your dickhead usually licking your shaft or taking your balls into his mouth and playing over them with his tongue. Your burning libido is audible in your voice as you praise them for their service, moan and grunt at the things they do to pleasure your body. For a while, you are simply content to have them servicing you at their own pace and revel in the sensations, but as you start to feel the familiar tingle of a nearing orgasm in your balls, you decide you want more.";
	say "     Looking down at your happily sucking and licking sluts, you get a bit of a firmer grip of their heads and guide them to work on both sides of your erection at the same time. Eye to eye with each other, the demon and angel's lips form an almost unbroken circle around your shaft, with the tips of their tongues playing over your sex. It is a lot of fun to hump your hips back and forth to feel the oral pleasure zone all along your dick, rapidly bringing you closer and closer to the point of no return. When the rising urge to come can barely be denied any longer, you withdraw from between them with a sharp pull, making Atticus's and Elijah's lips meet as they suddenly lose contact with the dick they were servicing. Your two kneeling studs take this in stride, tongues wrestling with each other as they start to make out lustfully. And that is when you finally erupt, blasting thick ropes of seed to paint your kissing sluts faces in white splatters.";
	WaitLineBreak;
	say "     Atticus and Elijah bask in the fruits of their oral service, stopping their kisses just long enough to lick up this or that streak of cum and then sharing it with the other. Now that the edge of your own lust is ebbing, you manage to focus past your own dick and their faces, seeing that the two of them are joined in another way: Atticus is holding their dicks together in his hands, one atop the other as he's stroking the two shafts in a rapid pace. Meanwhile, Elijah humps his hips back and forth a little to grind against his grasp and rub the demon's cock with his own. With you out of the picture, the two intensify their efforts to please each other, which results in an explosive finish before much longer, with Atticus starting to blast his infernal seed over Elijah's crotch while the angel in turn covers his balls and inner thighs with his own cum. Sinking forward to lean against each other as they pant and gasp for breath, your two fuck buddies ride out their shared orgasms together.";
	say "     'That was FUN!' Atticus bursts out with an eager smile, looking up at you, then down again at Elijah. 'Wanna do so again, sometime soon?' he asks in an eager tone, drawing a laugh from Elijah who wipes up the cum from his crotch with one hand and raises it to shove two cum-dripping fingers between Atticus's lips. As the incubus sucks his own load off, the fallen angel replies, 'Who could resist such an eager little whore? You know[if player is not defaultnamed] [Name of Player],[else],[end if] I think I'll have to come by to visit this ruin regularly from now on. What it's lacking in amenities it more than makes up in the slutty boy-toy.' Laughing along with him and watching Elijah pull Atticus into a demanding kiss, you saunter back over to your dropped gear and get dressed.";
	NPCSexAftermath Atticus receives "OralCock" from Player;
	NPCSexAftermath Elijah receives "OralCock" from Player;

to say AtticusEliThreesomeSex2:
	say "     ...";

to say AtticusEliThreesomeSex3:
	say "     ...";

to say AtticusEliThreesomeSex4:
	say "     ...";

to say AtticusEliThreesomeSex5:
	say "     ...";

to say AtticusEliThreesomeSex6:
	say "     ...";

Atticus ends here.
