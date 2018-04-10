Version 5 of Zebra by Vervaine begins here.
[ Original File by Sarokcat]
[ Version 4 - Submissive and Dominant scenes and endings]
[ Version 5 - Thorough overhaul and expansion by Vervaine]

"Adds a Zebra to Flexible Survival's Wandering Monsters table, With Impreg chance"

Section 1 - Monster Responses

when play begins:
	add { "Zebra" } to infections of guy;
	add { "Zebra" } to infections of furry;

ZebraLossCount is a number that varies. ZebraLossCount is usually 0.
LostToZebra is a number that varies. LostToZebra is usually 0.

to say Zebra wins:
	if inasituation is true: [part of an event - dealing with him is done elsewhere]
		if debugactive is 1:
			say "     DEBUG: Empty scene in the file 'Zebra.i7x' - Dealing with the event outcome is taken care of at the event source[line break]";
		stop the action;
	else: [regular combat victory over the player]
		if ((cocks of player > 0) and (player is submissive) and (LostToZebra is 3)):
			say "     'What? You again?!' The zebra man looks at your panting form with a puzzled look on his face. His expression changes to a leering grin. 'You must be one of those beta males I've heard the [one of]huskies[or]wolves[or]German Shepherds[at random] talking about.' [if player is mpreg_ok]The stallion bends down and sniffs you. 'Or even one of those omega males!' he says with a grin. [end if]He taps the side of his muzzle thoughtfully. 'Well, I was always told never to look a gift horse in the mouth, and I'm not going to start now.' He steps up to you, bumping your face with his huge dick. [bold type]What will your stud do next?[roman type]";
			increase LostToZebra by 1;
			wait for any key;
			say "[ZebraDommingPlayerSexMenu]";
		else if ((cocks of player > 0) and (player is submissive) and (LostToZebra > 3)):
			say "     The stallion knocks you over with a little kick. 'Back again, eh? Can't say I blame you, my little boy mare. After all, who could resist all of this?' The zebra man strikes a few poses, his muscled body rippling as he showcases his arms and chest. He finishes the routine by slapping your face with his massive prick. [bold type]'Now, what to do with my new favorite mare?'[roman type]";
			wait for any key;
			say "[ZebraDommingPlayerSexMenu]";
		else if cunts of player > 0:
			say "     'Ah good! Another female for my herd!' the zebra stallion says with a self satisfied grin as he looks down on your defeated form, 'Of course, it looks like you need some [italic type]persuasion[roman type] still to join my little herd!' the beast says with a lewd grin on his muzzle as he strokes his fully erect zebra cock, leaving no doubt in your mind as to what kind of [italic type]persuasion[roman type] he intends. You can't resist in the least as he pins you down to the ground, spreading your legs out to the side and exposing your gaping pussy to him, and he whickers in amusement. Your head fogs with lust, as his strong dominant scent and actions seem to wake an almost instinctive need to submit to his strong masculine needs. 'Oh, you will make a fine mare.' The zebra grunts lustfully, as he rubs the blunt tip of his cock along the outside of your increasingly needy lips. 'Now, we just need to make sure you are MY mare!' The horny zebra draws his hips back slightly so that his cocktip presses right up against your entrance, before thrusting himself into you!";
			say "     You gasp as he buries his thick cock into you as far as it will go with that first powerful thrust, his hands pinning you down on the rough ground as you writhe underneath him helplessly. Your eyes glaze over in pleasure at the feel of his thick rod spearing into you as far as it can, splitting you open around him as your sex grips the stallion's hard cock in desperate need. The big zebra stallion on top of you grunts in pleasure as he thrusts himself into you roughly, making your body shake with every movement as he ruts you hard, intent on claiming your body as his own. You moan as the experienced stallion nips at you with his mouth and controls you with his hands, even as he pounds into you. His every move means to reinforce his dominant position and reduce you to nothing more than a submissive, little herd member.";
			WaitLineBreak;
			say "     You struggle to hang on to any scrap of yourself, as he pounds his hard rod into you, each thrust making it harder and harder to remember why you would ever want to be independent or human. After what seems like an eternity of rough pleasure, his body tenses as he shoots his thick equine seed into you, the hot, sticky semen flooding your womb with his stallion sperm and overflowing out down his cock as he pumps more and more into you, laying his mark deep into your body. You can only lie there helplessly as he pulls himself out, his seed leaking out of your well-used body as he hauls himself up and grins down at you. 'Let's see if that doesn't make a proper zebra mare out of you now,' he says in a smug tone. 'Now, I have to go check on the rest of the herd, and maybe find a few more new mares while I'm at it. You'll be sure to come back to join us soon now, won't you?' The zebra beast asks with a short laugh, as if the matter was never in doubt, as he trots away, leaving you lying there with his seed still leaking out of you.";
			fimpregchance;
			increase LostToZebra by 1;
		else if cunts of player is 0 and player is mpreg_ok and a random chance of anallevel in 4 succeeds:	[Mpreg anal]
			say "     '[if cocks of player > 0]Another male[else]A useless gelding[end if] in my territory! Well, we will... *sniff*... see about... *sniff*...' the large stallion starts to say before catching a whiff of something in the air. 'Oh ho! What have we here? It looks like we have a breeder mare posing as a male.' He chuckles as he grabs you roughly. He runs his hooved hands over your lower belly, taking in your scent again. [if player is mpreg_able]'And here you are, ready to be knocked up again, you male mare.[else]'It seems someone's already gotten to you. Best to give you a [italic type]proper reminder[roman type] to return to my herd the next time your male mare body is ready.[end if]' Grinning lewdly, he pushes you to the ground and strokes his erect zebra cock.";
			say "     [if HP of player > 0 or player is submissive]Your body, giving in to the striped stallion's dominant scent and actions, moves onto all fours and has you raise your ass in the air. [else]Too worn out to put up more than a token resistance by this point, your head fogs with lust, the striped stallion's dominant scent and actions awakening an almost instinctive need to submit to his strong, masculine needs. As the last of your will struggles against this, he pushes you onto all fours and raises your ass up. [end if]With you presenting such a delectable[if player is mpreg_able], breedable[end if] target, he rubs the blunt tip of his drooling cock against your tight ring. Smearing his precum against it for a little added lubrication, he gives your anus a few probing pushes. 'Oh, you will make a fine mare,' the zebra grunts lustfully, spurting another gob of precum, this one flowing into your relaxing hole. 'And now, we just need to make sure you are MY mare!' With that, the horny zebra pulls your ass firmly towards his hips while his other hand guides his equine rod into your rectum.";
			WaitLineBreak;
			say "     You gasp as he steadily drives his long, thick cock into your bowels until it's fully buried inside of you. You moan and squirm beneath him, your body trembling with growing pleasure at having this virile stud inside of you. Any remaining thoughts of resisting or escaping quickly fade as he starts thrusting, his equine pole pumping into your tight ass over and over again. Your eyes glaze over in pleasure as his thick rod spears deep inside of you again and again. [if cocks of player > 0]Your prostate throbs and pulses each time his medial ring pops past your sphincter[end if]He ruts you hard in his intent to claim you as his own, and your body responds to his needs, your inner walls squeezing and pulling at his shaft, longing for him to stake his claim on your [if player is mpreg_able]hidden womb. [else][bodytype of player] body. [end if]You moan as the experienced stallion nips at you with his mouth and controls you with his hands, even as he pounds into you. His every move means to reinforce his dominant position and reduce you to nothing more than a submissive little herd member.";
			say "     You struggle to hold onto any scrap of yourself as he pounds his hard rod into you. Each thrust makes it harder and harder to remember why you would ever want to be independent or human when you have such a virile stallion to breed you. After an eternity of rough pleasure, his body tenses, and he shoots his thick seed into you. His sticky semen floods your bowels[if scalevalue of player <= 3] enough to plump out your belly[end if][if player is mpreg_able] as it rushes into your hidden womb[end if] with plenty of excess overflowing around his pulsing shaft. He manhandles you with a rough, confident manner as he pumps blast after blast of zebra cum into your receptive body, your hips grinding back as you can only moan for more at this point.";
			mimpregchance;
			say "     Having left his mark inside of you, he slowly withdraws his still twitching cock and sprays a few stripes of zebra cum across your back. A gush of his sperm pours from your gaping anus when he pulls out, and you find yourself reaching back, doing your best to plug your stretched hole with your fingers to hold that hot, wet goo inside until your muscles can recover and close. He chuckles at the sight of this and grins down at you. 'Let's see if that doesn't make a proper zebra mare out of you, you strange little [if cocks of player > 0]male[else]gelding[end if],' he says in a smug tone. 'Now, I have to go check on the rest of the herd, and maybe find a few more new mares while I'm at it. I look forward to you joining us there, my special male breeder,' he adds, caressing your cheek with a lewd grin. 'You'll be sure to come back to join us now, won't you?' the zebra beast asks with a short laugh, as if the matter was never in doubt. He trots away with a confident gait, leaving you laying there in a sticky pool of his seed. Thoughts of being part of his herd and being bred up the ass repeatedly by the virile stud roll around in your lust-addled mind for quite some time.";
			increase LostToZebra by 1;
		else if cunts of player is 0 and player is submissive and a random chance of 2 in 3 succeeds:
			say "     '[if cocks of player > 0]Another male[else]A useless gelding[end if] in my territory! Well, we will see about that!' the large stallion says. As the confident stallion brashly looks you over, your submissive urges kick in. You find yourself drawn to his half-hard cock, longing to see its full girth, to feel its full girth [bold type]in you[roman type]! The striped stud chuckles as you start licking and kissing at his cock, coaxing it to engorge. 'Look at you, so eager to be my mare";
			if player is not mpreg_ok and a random chance of anallevel in 5 succeeds:		[Submissive anal]
				say ". Well, who am I to disappoint you?'";
				say "     Moving yourself quickly onto all fours, even he moves you into position, you raise your ass and present yourself to the confident male. 'While I much prefer fucking proper mares, this should help with curing your little problem,' he says, grabbing your cock tight enough to make you wince. He then slaps his drooling rod across your ass cheeks before hotdogging it between them, smearing gooey pre across your tight pucker to lube you up a little. Kissing his broad flare against your relaxing tailstar, he starts pushing into you just as a slick spurt of precum sprays into your spreading ring. Your anus is stretched open by his virile manhood, and soon, you're speared on the full length of his equine member as he holds nothing back.";
				WaitLineBreak;
				say "     'Look at you, moaning and panting like a mare in heat beneath a proper stud. With an attitude like that, you'll make a fine member of my herd in no time,' he says with confidence. Grunting and thrusting harder, he gives your ass a swat. 'You *grunt* just need some *unff* encouragement, some hot, sticky [']encouragement['].' He chuckles between excited nickers as his rod throbs and pulses inside of you. The sensation of his medial ring popping in and out of you[if cocks of player > 0] and rubbing across your prostate[end if] fills you with lustful delight.";
				say "     And when the big stud buries himself hard into you as he starts to cum, you can feel every gooey shot firing deep inside you, claiming your body as his. Excess cum flows out around his equine meat, drooling down your thighs. When he's done and pulls out, a great gush of it pours out of your gaping hole. Not wanting to lose any, you stuff a few fingers into your yawning pucker to stem the flow as best you can. 'That's a sure sign that you were meant to be a mare in my herd,' the zebra teases. 'Speaking of, it's high time I get back to my proper mares. I look forward to you joining them soon.' And with that, he trots off, leaving you laying there in a sticky pool of his seed. Thoughts of being a part of that herd and of getting plowed by him whenever he wants to take you roll around in your lust-addled mind for quite some time.";
				mimpregchance;
				increase LostToZebra by 1;
			else:		[Submissive oral]
				say ". Well, how about you show me how much you want it?'";
				say "     Running your tongue along his pulsing rod, you move to its broad flare and kiss its gaping, drooling cum-slit. Treated to a spurt of his pre, you suck it down before opening your mouth and stuffing his virile pole past your lips. 'Very good, but how much can you take?' he asks, chuckling as he grabs your head and pulls your roughly forward. This spears his rod down your throat, to which you can only moan and suck down harder. Rubbing his plump testes, you have a growing need to taste their virile contents.";
				WaitLineBreak;
				say "     He wastes no time in fucking your face, bucking his hips hard as he pulls your head towards each thrust. Working to please this confident stud, you play your tongue along his shaft, rubbing against the bulging veins and medial ring each time he pulls out. Ordering you to swallow it all down like a good mare, he nickers and makes a few last thrusts before cumming hard. As he blasts his hot, musky load right down your throat, his order is quite unnecessary, your lust driving you to swallow back down every creamy drop that manages to leak up around that thick rod stuffing your throat[if scalevalue of player <= 3]. There is so much that your belly is left slightly distended by all of the added fluid filling it[end if].";
				say "     Pulling his cock free, he gets you to lick it clean before finally pushing you away. 'It's time I go check on my herd again. When you're ready to join them as one of my mares, I'll give you the proper fucking a slut like you clearly needs.' And with that, he gives your ass a firm swat before trotting off. Meanwhile, you flop down onto your ass, rubbing your stuffed tummy, images of being part of the stud's herd and being plowed hard by him rolling around in your lust-addled mind for quite some time.";
				increase LostToZebra by 1;
		else:
			say "     '[if cocks of player > 0]Another male[else]A useless gelding[end if] in my territory! Well, we will see about that!' the large stallion says, as he places one of his hooves on your defeated body, pinning you down to the ground. 'Let's see you stay male after this!' The zebra beast says with a sneer, as he begins to pump his hands along his thick, black cock. He starts to moan in pleasure as a few drops of pre form while you look on in horror. The beast continues to jack himself off as he stands over your body. While you try weakly to escape, your efforts are futile, and soon, the beast lets out a loud whinnying noise as his equine cock erupts, spraying its thick seed all over your helpless body in powerful spurts. Your body tingles as he covers you in his seed. Once his cock finally empties, the panting zebra backs off and stares down at you with a self satisfied look on his face. 'Now, why don't you lie there and become a good little mare,' the zebra says with an amused snort, 'and then maybe I'll come find you and make you a real member of the herd.' The beasts turns and [if ndmhigh is 1]heads back through the door from which he came[else]trots down the zoo pathways[end if], leaving you to your changes.";
			increase LostToZebra by 1;

to say Zebra loses:
	if inasituation is true: [part of an event - dealing with him is done elsewhere]
		if debugactive is 1:
			say "     DEBUG: Empty scene in the file 'Zebra.i7x' - Dealing with the event outcome is taken care of at the event source[line break]";
		stop the action;
	say "     'Fine' the zebra stallion says in a pained voice, as he stumbles backwards in defeat. 'You win the battle for now, but I'll be back stronger than ever to make you one of the herd before you know it!' he continues, eyes moving left and right as he looks for a way of escape.";
	say "     [line break]";
	if ZebraLossCount is 0:
		say "     With a sudden burst of speed, the zebra dashes off as fast as his hoofed legs can carry him. Caught by surprise, you don't have any realistic chance of catching him, so you just stay where you are and watch. He sure looks impressive, with the high stature and well-muscled body. Maybe next time, you can catch him before he runs off...";
		increase ZebraLossCount by 1;
	else if ZebraLossCount is 1:
		say "     This time, you're better prepared for stopping the stallion before he runs off. As his muscles tense and he starts in one direction, you jump in his way... only to realize too late that he did a feint and is already dashing off in the opposite direction. Damn, there he goes again, running faster than you could catch up with.";
		increase ZebraLossCount by 1;
	else if ZebraLossCount > 4 and player is dominant:
		say "     You shout as he turns to run off, asking if he still wants to play resisting. The zebra man's shoulders slump and he collapses to his knees, realizing that he doesn't want to escape. The zebra man cringes as you approach and looks down to avoid your eyes. You smirk, knowing that he at last acknowledges you as his superior, his [master].";
		if graphics is true:
			project the figure of Zebra_face_icon;
		if cunts of player > 0:
			say "     [bold type]What do you want to do with your striped plaything?[roman type][line break]";
			say "     ([link]1[as]1[end link]) - Have him service your cunt.";
			say "     ([link]2[as]2[end link]) - Ride your personal equine dildo.";
			say "     ([link]3[as]3[end link]) - Discipline him.";
			say "     ([link]4[as]4[end link]) - Force him to cum with your foot.";
			say "     ([link]5[as]5[end link]) - Let him go with a reminder.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 5:
				say "Choice? (1-5)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to get eaten out, [link]2[end link] to ride him or [link]3[end link] to discipline him, or [link]4[end link] to give him a footjob, or [link]5[end link] let him go.";
			if calcnumber is 1:			[cunnilingus]
				say "     You strip, revealing your dripping pussy, then snap your fingers, your intent obvious. The zebra male crawls forward, unconsciously licking his lips before burying his muzzle in your folds. Nice long tongue, this zebra, and he knows how to use it. It reaches deep inside of you and expertly finds the spots that make you gasp and moan. You grab his mane and grind your cunt into his face, making sure he knows who's in charge. His oral stimulation drives your arousal to new heights quickly, and before much longer, you orgasm, a gush of femcum running down over the zebra's face. Stepping back, you grin at the cum-splattered stallion.";
				say "     Not content with just one orgasm, you finish admiring your handiwork and tell him to get back to work. He doesn't hesitate before diving back in, this time [if cocks of player > 0]jerking you off[else]playing with your clit[end if] as he eats your pussy. You milk another orgasm or two out of your toy, soaking his face with your juices, before you let him jack himself to completion. The zebra man smiles proudly when you say he really knows how to show a lady a good time. He leans into your hand as you pat him on the head before leaving him in a puddle of your combined cum.";
				infect "Zebra";
			else if calcnumber is 2:			[ride him]
				say "[zebrasex_ride]";
			else if calcnumber is 3:			[discipline]
				say "     You spot a thin stick on the ground and have an idea. You pick it up and swing it through the air, grinning as it makes a lovely swishing noise, signalling that it's perfect for your purposes. You slap your palm a few times with the switch and command the zebra to straighten up. He rises from his haunches, but as he goes to stand up, you strike him across his broad chest. When you say that you didn't tell him to stand, he nods and remains on his knees, squaring his shoulders and widening his stance to follow your order. You draw the switch across his chest and ask if you should punish him for making you work so hard to get to this point. Fighting and running even though it was inevitable he'd end up just like this; on his knees before you. The zebra shudders and his shaft throbs as he answers, 'Yes, [master], punish me.' You nod and begin to flick the switch across his chest, enjoying each wince and whimper.";
				say "     After a couple minutes, his chest has a new set of stripes, red and tender, which has done little to cool his passion. His horsecock still stands erect, leaking precum profusely. You bring the switch down to his cock, poking it lightly. You ask what you should do next as you draw your switch along the side of his dick, smiling as he shivers. He mutters something you don't quite catch, his face turned to the side. You grab his muzzle with your free hand and make him look at you, demanding that he repeat what he said. He swallows hard before whispering, 'Spank me, [master].'";
				WaitLineBreak;
				say "     You're taken aback at his request though you recover quickly. Spying a retaining wall that would serve nicely, you order your toy to get up and follow you. You sit down on the stone wall and tell him to lay on your lap. His shaft makes finding a position difficult, but finally, he guides it so that it's pointing down between your legs, allowing you full access to his meaty ass. You ask if he's ready to begin, and you can hear the lust in his voice as he says, 'Yes, [master], please spank me.' With such an eager toy, you begin in earnest, holding his tail out of the way for maximum effect.";
				say "     You start lightly, feeling his cheeks after each slap, but you quickly put more strength into it, wanting to see red underneath his short fur. Your zebra can't keep silent for long and is constantly nickering with each stroke, and when you take a quick breather to rest your arm, he begs you to keep going. You tell him that you are in control and to get off of your lap. He whines but obeys, his horsecock throbbing so intensely that he must be on the verge of orgasm. You tell him to turn around and pick up the switch again. He turns, and you strike him one final time, telling him to run. He takes a step before stumbling to the ground and grabbing his dick, stroking it as he cums. You turn away to leave, pleased with your work.";
			else if calcnumber is 4:			[footjob]
				say "     You look over your pet, pleased that you've brought such a strong male to heel. The thought inspires your next move as you tell the kneeling equine to spread his legs. He complies quickly, though confusion is clear on his face as he does so. The confusion is replaced with a grimace as you place your foot, shoe and all, on his massive tower of horseflesh. You begin to move your foot up and down his horsecock, delighting in his grunts and the constant drool of precum that runs down his shaft. You add some twists to your footjob, ensuring that there's a little pain with his pleasure.";
				say "     His ejaculation catches you by surprise, as you couldn't feel how hard his dick had gotten under your crushing and rubbing, but that doesn't lessen your enjoyment at seeing his chest and face drenched in his own foals. You continue to rub your foot on his shaft long after the last blast of cum leaves his rod, and when you finally remove your foot, the zebra falls back in exhaustion. Riding high on the power you feel, you leave your pet in a moaning mess on the ground, waving goodbye which is returned by a faint, 'Goodbye, [master].'";
			else if calcnumber is 5:								[slap him]
				say "     You command the stallion to look at you before you slap him with the full force of your body. He falls to the ground, and you tell him that you don't have time for him now. As you turn to leave, he shouts after you, 'Next time then, [master]?' You don't answer him, but you don't need to.";
		else if cocks of player > 0:
			say "     [bold type]What do you want to do with your striped plaything?[roman type][line break]";
			say "     ([link]1[as]1[end link]) - Have him service your cock.";
			say "     ([link]2[as]2[end link]) - Fuck your toy to show him his place.";
			say "     ([link]3[as]3[end link]) - Ride your personal equine dildo.";
			say "     ([link]4[as]4[end link]) - Discipline him.";
			say "     ([link]5[as]5[end link]) - Force him to cum with your foot.";
			say "     ([link]6[as]6[end link]) - Let him go with a reminder.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 6:
				say "Choice? (1-6)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5 or calcnumber is 6:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to get a blowjob, [link]2[end link] to fuck him, [link]3[end link] to ride him or [link]4[end link] to discipline him, or [link]5[end link] to give him a footjob, or [link]6[end link] let him go.";
			if calcnumber is 1:								[blowjob]
				say "     You pull out your hard [cock of player] dick and whistle, your intent obvious. The zebra crawls over to you and begins to lick at your head. You allow him to get reacquainted with your shaft for a delicious minute or two before grabbing onto his mane to force him further down. You're slightly disappointed when he doesn't gag, but when you mockingly ask if he's been practicing, the slump in his shoulders gives you the thrill you wanted. You begin to fuck his face in earnest, enjoying his newly talented tongue and hands; he really has been practicing!";
				say "     Curious and more than a little eager to make him uncomfortable, you ask several questions of your cocksucker, rhetorically of course. Did he catch some males and practice on them? Or did he crawl to the nearest cock and beg to suck it? You hold him to your groin, finally getting him to choke on the full length of your prick. You decide that his rapid improvement means that he has obviously offered his services to anyone who'd let him. You withdraw your rod fully, causing your zebra to gasp, and you slap him a few times across the muzzle with it. You ask if he begged to suck dick until he got his wish before slamming back into the zebra's welcoming maw. You hold him flush against your groin for a long minute until he nods.";
				WaitLineBreak;
				say "     The knowledge that it was you that has changed this once dominant stallion into the sub kneeling before you pushes you almost to the edge of orgasm. A few more thrusts pushes you over, and as you start to cum, you slowly pull him off you, filling his mouth with cum before you spend your last blasts on his face. The zebra shudders, and you grin as his massive pole flares and cums all over the ground in front of him, some of it landing on your thighs and legs. You scoop some up and rub it between your fingers. Telling him that he's changed for the better now that he's your little slut, you turn and walk away, leaving the zebra sitting in his own mess, with your cum drying on his face.";
				repeat with y running from 1 to number of filled rows in table of random critters:
					choose row y in table of random critters;
					if name entry is "Zebra":
						now monster is y;
						break;
				now sex entry is "Male";
				infect "Zebra";
			else if calcnumber is 2:			[fuck him]
				say "     You snap your fingers and the zebra gets on all fours, presenting his striped ass invitingly. You quickly strip down and make him nicker in surprise as you dive forward and start eating him out. His cock throbs as you pull his firm globes apart and tongue fuck his hole. You pull back, his hole now moist with your slobber, and start fingering him. He groans in anticipation and thrusts back onto your two, three, four fingers. You pull out, and he turns to look at you when he doesn't feel your dick at his backdoor. He sees you laying on your back, hands cradling your head, with your [cock of player] shaft jutting up. Telling your pet that you want him to show you how much he wants your prick, you wait to see what he'll do.";
				say "     With a lick of his lips, the stallion eagerly crawls forward. As he crawls over your body to get into position, he laps at your [cock of player] meat, then drawing his tongue along your body before stopping at your face. He looks at you and you nod, letting him kiss you briefly before pushing him back. The zebra sits up and begins backing up onto your pole. He winces as your head breaches his hole. You whisper that you're glad he's still tight for his [master], making his massive cock twitch. He braces himself on your chest as he slides down slowly, moaning as inch after inch of your cock enters his velvety insides. Finally, his hands clutching you tightly, his meaty ass hits your groin, and you both moan as that final inch is stuffed in. Your eyes lock, and you tell him to fuck himself. He nods and says, 'Yes, [master],' before he begins to bob up and down on your dick.";
				WaitLineBreak;
				say "     He pants, tongue lolling out of his mouth as he finds his rhythm, and his massive pole of horseflesh is now partially obscuring your vision. You remove one hand from behind your head to play with his flared head; making it jiggle a bit, rubbing his precum over his it, little touches along his length, anything to make him moan louder. Suddenly, he throws his head back, and you feel his hole begin to clench, and he yells, 'Ahhhh, [master], I'm cumming!' You feel his cock throb in your hand as it begins to spurt zebra cum all over your face. He continues to fuck himself as he rides out his orgasm as you wipe your face so that you can see again, licking your fingers clean as he finishes.";
				say "     You grab the zebra's cock, hard, drawing a yelp from him as you tell him that you're not finished yet. He nods and begins to bounce again on your shaft. Bathed in his cum, nestled in his tight ass, it's not much longer before you're shooting your seed into him, asking if he's ready to bear [italic type]your[roman type] young. 'Y-yes, [master], fill me with your foals,' he replies, and he shudders, cumming again though his cock, but only dribbles this time. He pulls himself off of you and helps you up. After you finish dressing, you smile and caress his muzzle, saying that he's a good boy for coming a long way in such a short time. You abruptly turn and walk away, leaving the zebra with your load in his ass behind you.";
				repeat with y running from 1 to number of filled rows in table of random critters:
					choose row y in table of random critters;
					if name entry is "Zebra":
						now monster is y;
						break;
				now sex entry is "Male";
				infect "Zebra";
			else if calcnumber is 3:			[ride him]
				say "[zebrasex_ride]";
			else if calcnumber is 4:			[discipline]
				say "     You spot a thin stick on the ground and have an idea. You pick it up and swing it through the air, grinning as it makes a lovely swishing noise, signalling that it's perfect for your purposes. You slap your palm a few times with the switch and command the zebra to straighten up. He rises from his haunches, but as he goes to stand up, you strike him across his broad chest. When you say that you didn't tell him to stand, he nods and remains on his knees, squaring his shoulders and widening his stance to follow your order. You draw the switch across his chest and ask if you should punish him for making you work so hard to get to this point. Fighting and running even though it was inevitable he'd end up just like this; on his knees before you. The zebra shudders and his shaft throbs as he answers, 'Yes, [master], punish me.' You nod and begin to flick the switch across his chest, enjoying each wince and whimper.";
				say "     After a couple minutes, his chest has a new set of stripes, red and tender, which has done little to cool his passion. His horsecock still stands erect, leaking precum profusely. You bring the switch down to his cock, poking it lightly. You ask what you should do next as you draw your switch along the side of his dick, smiling as he shivers. He mutters something you don't quite catch, his face turned to the side. You grab his muzzle with your free hand and make him look at you, demanding that he repeat what he said. He swallows hard before whispering, 'Spank me, [master].'";
				WaitLineBreak;
				say "     You're taken aback at his request though you recover quickly. Spying a retaining wall that would serve nicely, you order your toy to get up and follow you. You sit down on the stone wall and tell him to lay on your lap. His shaft makes finding a position difficult, but finally, he guides it so that it's pointing down between your legs, allowing you full access to his meaty ass. You ask if he's ready to begin, and you can hear the lust in his voice as he says, 'Yes, [master], please spank me.' With such an eager toy, you begin in earnest, holding his tail out of the way for maximum effect.";
				say "     You start lightly, feeling his cheeks after each slap, but you quickly put more strength into it, wanting to see red underneath his short fur. Your zebra can't keep silent for long and is constantly nickering with each stroke, and when you take a quick breather to rest your arm, he begs you to keep going. You tell him that you are in control and to get off of your lap. He whines but obeys, his horsecock throbbing so intensely that he must be on the verge of orgasm. You tell him to turn around and pick up the switch again. He turns, and you strike him one final time, telling him to run. He takes a step before stumbling to the ground and grabbing his dick, stroking it as he cums. You turn away to leave, pleased with your work.";
			else if calcnumber is 5:			[footjob]
				say "     You look over your pet, pleased that you've brought such a strong male to heel. The thought inspires your next move as you tell the kneeling equine to spread his legs. He complies quickly, though confusion is clear on his face as he does so. The confusion is replaced with a grimace as you place your foot, shoe and all, on his massive tower of horseflesh. You begin to move your foot up and down his horsecock, delighting in his grunts and the constant drool of precum that runs down his shaft. You add some twists to your footjob, ensuring that there's a little pain with his pleasure.";
				say "     His ejaculation catches you by surprise, as you couldn't feel how hard his dick had gotten under your crushing and rubbing, but that doesn't lessen your enjoyment at seeing his chest and face drenched in his own foals. You continue to rub your foot on his shaft long after the last blast of cum leaves his rod, and when you finally remove your foot, the zebra falls back in exhaustion. Riding high on the power you feel, you leave your pet in a moaning mess on the ground, waving goodbye which is returned by a faint, 'Goodbye, [master].'";
			else if calcnumber is 6:								[slap him]
				say "     You command the stallion to look at you before you slap him with the full force of your body. He falls to the ground, and you tell him that you don't have time for him now. As you turn to leave, he shouts after you, 'Next time then, [master]?' You don't answer him, but you don't need to.";
		else:
			say "     [bold type]What do you want to do with your striped plaything?[roman type][line break]";
			say "     ([link]1[as]1[end link]) - Ride your personal equine dildo.";
			say "     ([link]2[as]2[end link]) - Discipline him.";
			say "     ([link]3[as]3[end link]) - Force him to cum with your foot.";
			say "     ([link]4[as]4[end link]) - Let him go with a reminder.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 4:
				say "Choice? (1-4)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to ride him, [link]2[end link] to discipline him, [link]3[end link] to give him a footjob, [link]4[end link] to let him go.";
			if calcnumber is 1:			[ride him]
				say "[zebrasex_ride]";
			else if calcnumber is 2:			[discipline]
				say "     You spot a thin stick on the ground and have an idea. You pick it up and swing it through the air, grinning as it makes a lovely swishing noise, signalling that it's perfect for your purposes. You slap your palm a few times with the switch and command the zebra to straighten up. He rises from his haunches, but as he goes to stand up, you strike him across his broad chest. When you say that you didn't tell him to stand, he nods and remains on his knees, squaring his shoulders and widening his stance to follow your order. You draw the switch across his chest and ask if you should punish him for making you work so hard to get to this point. Fighting and running even though it was inevitable he'd end up just like this; on his knees before you. The zebra shudders and his shaft throbs as he answers, 'Yes, [master], punish me.' You nod and begin to flick the switch across his chest, enjoying each wince and whimper.";
				say "     After a couple minutes, his chest has a new set of stripes, red and tender, which has done little to cool his passion. His horsecock still stands erect, leaking precum profusely. You bring the switch down to his cock, poking it lightly. You ask what you should do next as you draw your switch along the side of his dick, smiling as he shivers. He mutters something you don't quite catch, his face turned to the side. You grab his muzzle with your free hand and make him look at you, demanding that he repeat what he said. He swallows hard before whispering, 'Spank me, [master].'";
				WaitLineBreak;
				say "     You're taken aback at his request though you recover quickly. Spying a retaining wall that would serve nicely, you order your toy to get up and follow you. You sit down on the stone wall and tell him to lay on your lap. His shaft makes finding a position difficult, but finally, he guides it so that it's pointing down between your legs, allowing you full access to his meaty ass. You ask if he's ready to begin, and you can hear the lust in his voice as he says, 'Yes, [master], please spank me.' With such an eager toy, you begin in earnest, holding his tail out of the way for maximum effect.";
				say "     You start lightly, feeling his cheeks after each slap, but you quickly put more strength into it, wanting to see red underneath his short fur. Your zebra can't keep silent for long and is constantly nickering with each stroke, and when you take a quick breather to rest your arm, he begs you to keep going. You tell him that you are in control and to get off of your lap. He whines but obeys, his horsecock throbbing so intensely that he must be on the verge of orgasm. You tell him to turn around and pick up the switch again. He turns, and you strike him one final time, telling him to run. He takes a step before stumbling to the ground and grabbing his dick, stroking it as he cums. You turn away to leave, pleased with your work.";
			else if calcnumber is 5:			[footjob]
				say "     You look over your pet, pleased that you've brought such a strong male to heel. The thought inspires your next move as you tell the kneeling equine to spread his legs. He complies quickly, though confusion is clear on his face as he does so. The confusion is replaced with a grimace as you place your foot, shoe and all, on his massive tower of horseflesh. You begin to move your foot up and down his horsecock, delighting in his grunts and the constant drool of precum that runs down his shaft. You add some twists to your footjob, ensuring that there's a little pain with his pleasure.";
				say "     His ejaculation catches you by surprise, as you couldn't feel how hard his dick had gotten under your crushing and rubbing, but that doesn't lessen your enjoyment at seeing his chest and face drenched in his own foals. You continue to rub your foot on his shaft long after the last blast of cum leaves his rod, and when you finally remove your foot, the zebra falls back in exhaustion. Riding high on the power you feel, you leave your pet in a moaning mess on the ground, waving goodbye which is returned by a faint, 'Goodbye, [master].'";
			else if calcnumber is 6:								[slap him]
				say "     You command the stallion to look at you before you slap him with the full force of your body. He falls to the ground, and you tell him that you don't have time for him now. As you turn to leave, he shouts after you, 'Next time then, [master]?' You don't answer him, but you don't need to.";
	else if ZebraLossCount > 1:
		say "     Thinking that it's time for this striped windbag to get taken down a peg or two, you look for a way to do that as the zebra turns to run off. Bending down, you snatch up a large stick lying on the ground, glad that no one cleans up here anymore. Pulling your arm back far, you let it fly after the zebra stallion and...";
		let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
		let xx be ZebraLossCount / 2;
		if xx > 8, now xx is 8;
		increase bonus by xx;
		let diceroll be a random number from 1 to 20;
		say "     You roll 1d20([diceroll])+[bonus]: [diceroll + bonus] (Dexterity Check)";
		increase diceroll by bonus;
		if diceroll > 18:
			say "     [line break]";
			say "     [if a random chance of 1 in 2 succeeds]...hit him in the head[else]...it hits his legs and causes him to stumble[end if]. The zebra stallion goes down, and you're upon him before he can get back up, grabbing his mane to keep him on his knees.";
			if graphics is true:
				project the figure of Zebra_face_icon;
			if cocks of player > 0:
				say "     Now that you have the upper hand in this, what do you want to with the zebra? Get him to [link](1) blow you[as]1[end link], [link](2) fuck[as]2[end link] his striped ass, claim a [link](3) ride on his pole[as]3[end link] on your own terms or just give him a [link](4) beating[as]4[end link]?";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 4:
					say "Choice? (1-4)>[run paragraph on]";
					get a number;
					if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
						break;
					else:
						say "Invalid choice. Type [link]1[end link] to get a blowjob, [link]2[end link] to fuck him, [link]3[end link] to ride him or [link]4[end link] to rough him up.";
				if calcnumber is 1:								[blowjob]
					say "     Pulling out your already hard [cock of player] shaft, you rub it against the zebra stallion's lips. He's not very happy about that and tries to turn his head away, but you hold him tight with a strong grip of his mane. Telling the striped wimp that he better open up and accept his punishment for picking a fight, you then pull a bit harder on his mane. As he opens his mouth to gasp, you thrust forward, plunging your manhood between his lips. Your rod finally where it belongs, you tell him to suck... and that you'll beat him if he even thinks about biting.";
					say "     With a huff, the stallion accepts his fate and hesitantly starts to blow your cock, slowly sucking on it and bobbing a tiny bit back and forth on its length. He's obviously a cocksucking novice, so you give him some hints about relaxing his throat and let him suckle on you some more. When you decide that his grace period is over, you start face-fucking him. Holding his head with both hands, you thrust into the warm and wet cavern of his mouth, moaning at the feeling of his lips sliding over your shaft.";
					WaitLineBreak;
					say "     Before much longer, you feel a familiar tingling rise up inside of your balls and pull back a bit until only the tip of your cock is inside the zebra's mouth. It's quite satisfying to see the proud stallion's eyes go wide as the first blast of cum shoots out onto his tongue, and you hold him tight as he tries to pull away. You growl that he'd best keep it all in his mouth. Trying not to moan, you warn him that he won't like it if he dares spit it out as spurt after spurt of your seed fill the zebra's mouth.";
					say "     After you're done cumming, you pull out and grin down at the defeated stallion holding your cum behind his closed lips. You order him to swish your cum around a bit, taste it, then show you his tongue. You pull on his mane a bit until he complies and finally sticks his tongue out, covered with your white cum. Pleased with his obedience, you tell him to swallow and show you. With an unhappy expression, he swallows down everything and shows you his cum-free tongue as you ask him to. Praising your stripey slut for his efforts, you tell him that maybe you'll add him as your boy mare. As he squirms, you say you look forward to next time then leave him kneeling at that spot and walk away.";
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Zebra":
							now monster is y;
							break;
					now sex entry is "Male";
					infect "Zebra";
					now sex entry is "Female";
					increase ZebraLossCount by 1;
				else if calcnumber is 2:			[fuck him]
					say "     You order him onto all fours and pull on his mane when he hesitates to comply. Still rather reluctantly, the large stallion takes the position, watching you with dismay as you pull out your hard [cock of player] shaft, then stroll behind him. Giving the firm globes of his ass a slap, you remark that he has a nice rump that's perfect for a boy-mare before spreading his cheeks and then pulling up his tail, revealing a tightly closed pucker. You see the muscles in his legs tense up as he prepares for another attempt at running away, and you give him another slap on the cheek, harder this time, and say that you wouldn't try that if you were him - better to accept his fate, as both of you know that he's going to get fucked today.";
					say "     With a huff, the stallion finally accepts his fate and remains in position. You bring your hand to his rear entrance and start stroking up and down his crack, then insert a finger up into his tight hole. Pushing the probing digit deeper, you find his prostate and rub it, eliciting an unwilling moan from your partner. You continue fingering him a moment, adding another finger, then decide he's as ready as he is gonna get.";
					WaitLineBreak;
					say "     Moving your hips forward, you rub your rock-hard cock up and down his crack, then push against his hole until you pop in. He's nice and tight like a virgin, gripping your shaft with his anal muscles. Holding on to the powerful equine's hips, you thrust deep, plunging all the way into his body. With the incredible feeling of being inside of his tight love tunnel and the arousing fact that you have the formerly dominant stallion moaning as he's being fucked, you don't think you'll last much longer.";
					say "     You pound his ass, accompanied by slapping noises as your hips meet his cheeks, and soon, you feel a familiar feeling rise in your balls. Shouting for him to take your load, you cross the line with one last deep thrust, shooting long blasts of cum deep inside of his ass. There's something especially satisfying about filling up this proud stallion who had originally planned to make you his mare. As you finish cumming inside of him and pull out, you smile even more as you see his equine shaft dangling erect between his legs. You mock him, using his throbbing member as proof that he loves getting fucked. Ordering your bitch to jerk himself off, you say that you see a great future as a boy mare for him, then watch as he jerks off shame-faced and blows his load onto the ground. Grinning, you walk away after that.";
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Zebra":
							now monster is y;
							break;
					now sex entry is "Male";
					infect "Zebra";
					now sex entry is "Female";
					increase ZebraLossCount by 1;
				else if calcnumber is 3:			[ride him]
					say "[zebrasex_ride]";
				else:												[beating]
					say "     You rough the stallion up a bit before allowing him to crawl away. He might learn not to mess with you out of the beating - maybe...";
					increase ZebraLossCount by 1;
			else if cunts of player > 0:
				say "     Now that you have the upper hand in this, what do you want to with the zebra? Get him to lick you [link](1)[as]1[end link], claim a [link](2) ride on his pole[as]2[end link] on your own terms or just give him a [link](3) beating[as]3[end link]?";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 3:
					say "Choice? (1-3)>[run paragraph on]";
					get a number;
					if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
						break;
					else:
						say "Invalid choice. Type [link]1[end link] to get a licked, [link]2[end link] to ride him or [link]3[end link] to rough him up.";
				if calcnumber is 1:								[cunnilingus]
					say "     Pulling off your clothes, you reveal your already moist and swollen pussy, then step up close to him, grinding your crotch against his face. It's clear that you want him to lick you, and the words are barely out of your mouth before he starts to use his tongue on your vagina. Nice long tongue, this zebra, and he knows how to use it. His oral stimulation drives your arousal to new heights quickly, and before much longer, you orgasm, a gush of femcum running down over the zebra's face. Stepping back, you grin at the cum-splattered stallion. You revel in the afterglow of your orgasm, glad that you've found a use for the zebra's mouth. Looking down to his erect equine shaft you taunt him for getting hard from servicing you before getting dressed, squashing any hope he may have had of fucking you. Armed and ready again, you turn and walk away, though you look back once or twice to watch the zebra jerk off his almost painfully hard cock and shoot his seed onto the ground.";
					infect "Zebra";
					increase ZebraLossCount by 1;
				else if calcnumber is 2:			[ride him]
					say "[zebrasex_ride]";
				else:			[beating]
					say "     You rough the stallion up a bit before allowing him to crawl away. He might learn not to mess with you out of the beating - maybe...";
					increase ZebraLossCount by 1;
			else:
				say "     Since you don't have genitals that he could please you with, you rough the stallion up a bit before allowing him to crawl away. He might learn not to mess with you out of the beating - maybe...";
				increase ZebraLossCount by 1;
		else:
			say "     ...Miss. Too bad that there's no time for another try, and he's too far gone now. Maybe you should try to improve your aim for next time.";
			increase ZebraLossCount by 1;
to say zebrasex_ride:
	if cunts of player > 0 and player is dominant:
		say "     You push him back, and he falls onto his back, barely catching himself with his hands. Pulling off any gear or garments in the way, you bare your loins and move onto his lap, grabbing his fully hard cock firmly in hand. Holding up his equine shaft, you press your juicy pussy against its flared tip. The subservient male begins to buck into you, but you slap him with your free hand and tell him firmly that he is not to move without your say so. He nods eagerly and holds still, meekly waiting for you to engulf him. Dropping down a few inches, you pop his thick shaft into your dripping cunny, getting an excited nicker from the zebra.";
		say "     You take your time, enjoying his girth as you bob on the first half of his cock, which takes its toll on the stallion. You see him grit his teeth, muscles straining as he struggles to follow your order to keep still. You pat his head lightly, calling him a good toy, making yourself gasp as his rod pulses when you call him your toy. After adjusting to his impressive size, you start to ride him a little faster. Your vaginal walls squeeze and ripple across his meat, drawing lustful whimpers from the obedient male. You delight in the way his equine shaft fills you up so nicely and how its medial ring rubs along your sensitive spots, enjoying several smaller orgasms while always slowing down any time your stallion prize is getting close.";
		WaitLineBreak;
		say "     By the time you're ready to cum, you've got him thoroughly blue-balled and aching for release. Taking pity on your pet, you command him to fuck you. The zebra wastes no time, eagerly thrusting into your stretched pussy, causing you to moan loudly. Crying out, he cums hard, blasting shot after gooey shot of his virile seed up into your womb. Feeling this sends you over the top, driving you to a crashing orgasm that milks his needy shaft all the harder. Once you've drained his balls[if scalevalue of player <= 3] and rounded your belly by an inch or three, thanks to all of that semen[end if], you rise up off of him. A good amount of his messy load ends up flowing out of you, splattering across his lap. The zebra, thoroughly drained, moans and collapses backwards onto the ground as you leave him.";
		impregchance;
		infect "Zebra";
	else if player is dominant:
		say "     You push him back and he falls onto his back, barely catching himself with his hands. Pulling off any gear or garments in the way, you bare your ass and move onto his lap, grabbing his fully hard cock firmly in hand. Holding up his equine shaft, you press your tight pucker against its flared tip. The subservient male begins to buck into you, but you slap him with your free hand and tell him firmly that he is not to move without your say so. He nods eagerly and holds still, meekly waiting for you to engulf him. After getting yourself slick with his pre, you pop his thick shaft into your anus and drop down a few inches, getting an excited nicker from the zebra.";
		say "     You take your time, enjoying his girth as you bob on the first half of his cock, which takes its toll on the stallion. You see him grit his teeth, muscles straining as he struggles to follow your order to keep still. You pat his head lightly, calling him a good toy, making yourself gasp as his rod pulses when you call him your toy. After adjusting to his impressive size, you start to ride him a little faster. Your anal walls squeeze and ripple across his meat, drawing lustful whimpers from the obedient male. You delight in the way his equine shaft fills you up so nicely and how its medial ring feels as it pops in and out of you, drawing out your own enjoyment while always slowing down any time your stallion prize is getting close.";
		WaitLineBreak;
		say "     By the time you're ready to cum, you've got him thoroughly blue-balled and aching for release. Taking pity on your pet, you command him to fuck you. The zebra wastes no time, eagerly thrusting into your stretched ass, causing you to moan loudly. Crying out, he cums hard, blasting shot after gooey shot of his virile seed up into your bowels. Feeling this sends you over the top, driving you to a crashing orgasm that milks his needy shaft all the harder. Once you've drained his balls[if scalevalue of player <= 3] and rounded your belly by an inch or three, thanks to all of that semen[end if], you rise up off of him. A good amount of his messy load ends up flowing out of you, splattering across his lap. The zebra, thoroughly drained, moans and collapses backwards onto the ground as you leave him.";
		mimpregchance;
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Zebra":
				now monster is y;
				break;
		now sex entry is "Male";
		infect "Zebra";
	else if cunts of player > 0:
		say "     Keeping a firm grip on his mane, you force him into a seated position and grab his half-hard cock firmly in hand. Stroking it, you get it to quickly rise to full erection. Pulling off any gear or garments in the way, you bare your loins and move onto his lap. Holding up his equine shaft, you press your juicy pussy against its flared tip. The overconfident male starts to chuckle that he knew you couldn't resist him, but you silence him with a rough pull on his mane and a growl that you're only after some cock and that he's lucky it got to be his at all. Dropping down a few inches, you pop his thick shaft into your dripping cunny, getting an excited nicker from the zebra.";
		say "     You take your time with the first few instances of you lowering yourself down onto his shaft, much to the stallion's frustration. You keep a firm grip on his mane with one hand and his nuts with the other, ensuring that he stays in line. After adjusting to his impressive size, you start to ride him a little faster. Your vaginal walls squeeze and ripple across his meat, drawing lustful whimpers from the tightly held male. You delight in the way his equine shaft fills you up so nicely and how its medial ring rubs along your sensitive spots, enjoying several smaller orgasms while always slowing down any time your stallion prize is getting close.";
		WaitLineBreak;
		say "     By the time you're ready to cum, you've got him thoroughly blue-balled and aching for release. Laughing, you decide to give the poor beast some release finally and ride his pole hard and fast. Crying out, he cums hard, blasting shot after gooey shot of his virile seed up into your womb. Feeling this sends you over the top, driving you to a crashing orgasm that milks his needy shaft all the harder. Once you've drained his balls[if scalevalue of player <= 3] and rounded your belly by an inch or three, thanks to all of that semen[end if], you rise up off of him. A good amount of his messy load ends up flowing out of you, splattering across his lap. The zebra, thoroughly drained, moans and collapses backwards onto the ground as you leave him.";
		impregchance;
		increase ZebraLossCount by 1;
	else:
		say "     Keeping a firm grip on his mane, you force him into a seated position and grab his half-hard cock firmly in hand. Stroking it, you get it to quickly rise to full erection. Pulling off any gear or garments in the way, you bare your ass and move onto his lap. Holding up his equine shaft, you press your tight pucker against its flared tip. The overconfident male starts to chuckle that he knew you couldn't resist him, but you silence him with a rough pull on his mane and a growl that you're only after some cock and that he's lucky it got to be his at all. After getting yourself slick with his pre, you pop his thick shaft into your anus and drop down a few inches, getting an excited nicker from the zebra.";
		say "     You take your time with the first few instances of you lowering yourself down onto his shaft, much to the stallion's frustration. You keep a firm grip on his mane with one hand and his nuts with the other, ensuring he stays in line. After adjusting to his impressive size, you start to ride him a little faster. Your anal walls squeeze and ripple across his meat, drawing lustful whimpers from the tightly held male. You delight in the way his equine shaft fills you up so nicely and how its medial ring feels as it pops in and out of you, drawing out your own enjoyment while always slowing down any time your stallion prize is getting close.";
		WaitLineBreak;
		say "     By the time you're ready to cum, you've got him thoroughly blue-balled and aching for release. Laughing, you decide to give the poor beast some release finally and ride his pole hard and fast. Crying out, he cums hard, blasting shot after gooey shot of his virile seed up into your bowels. Feeling this sends you over the top, driving you to a crashing orgasm that milks his needy shaft all the harder. Once you've drained his balls[if scalevalue of player <= 3] and rounded your belly by an inch or three, thanks to all of that semen[end if], you rise up off of him. A good amount of his messy load ends up flowing out of you, splattering across his lap. The zebra, thoroughly drained, moans and collapses backwards onto the ground as you leave him.";
		mimpregchance;
		increase ZebraLossCount by 1;

to say ZebraDommingPlayerSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Face Fuck";
	now sortorder entry is 1;
	now description entry is "Suck the superior male's horsecock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Mounted";
	now sortorder entry is 2;
	now description entry is "The zebra takes you like a mare";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Face Sit";
	now sortorder entry is 3;
	now description entry is "Your master wants to be eaten out";
	[]
	if animal heat is true and player is mpreg_able:
		choose a blank row in table of fucking options;
		now title entry is "Mating Rut";
		now sortorder entry is 4;
		now description entry is "Your stallion has smelled your need and has gone into rut";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Denied[as]100[end link][line break]";
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
				if (nam is "Face Fuck"):
					say "[ZebraDommingPlayerSex1]";
				if (nam is "Mounted"):
					say "[ZebraDommingPlayerSex2]";
				if (nam is "Face Sit"):
					say "[ZebraDommingPlayerSex3]";
				if (nam is "Mating Rut"):
					say "[ZebraDommingPlayerSex4]";
				wait for any key;
		else if calcnumber is 100:
			say "Does the zebra not have time for his slut?";
			if the player consents:
				now sextablerun is 1;
				say "     The stallion takes a step back and shakes his head. 'On second thought, maybe I'll let you suffer a little longer without this,' he says as he grips his cock. He leaves you there, denied the release you wanted so badly.";
				increase libido of player by 10;
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say ZebraDommingPlayerSex1: [Face Fuck]
	say "     The zebra man grabs hold of his rod, rubbing its head over your lips and smearing his precum liberally. When you open your mouth to start licking his shaft, he takes you by surprise and forces his flared head in. Before you can react, he begins pushing the rest of his length into your throat. When you gag he stops, briefly withdrawing a little bit, before continuing to sink deeper into your gullet. It's not long before his pendulous, black balls are resting under your chin, your nose buried in his sheath. With his pole filling and stretching your throat and his groin flush with your face, it's almost impossible to breathe. You think that you might pass out, but your master pulls his cock free before you do, strings of saliva and precum still connecting you as you gasp for air.";
	say "     Your respite doesn't last long before the stallion grabs your head with one hand and his horsecock with the other, guiding it back to its rightful place. Hilting himself in your throat with one smooth motion, he laces his fingers behind your head and begins to fuck your face. He pulls back just enough to pop his medial ring past your lips on the backend of each pump of his hips. With the zebra man holding your head in place, it's hard to see anything but his abs, but sometimes, when he pulls out a little further, you see his tongue lolling out. A wave of pleasure washes through you, knowing that your master is enjoying using your body to sate his lust.";
	WaitLineBreak;
	say "     His rhythm fully established, your hands begin to slide down the zebra's muscled thighs towards your own dick. As you begin to masturbate feverishly, you hear a chuckle from above. 'Wow, you're really into this, aren't you? When the [one of]huskies[or]wolves[or]German Shepherds[at random] would talk about how good fucking a beta bitch was, I didn't believe them. But I'm starting to.' You hear him smack his lips. 'Seeing you get so hard while you choke on my cock, I can't wait until you join my herd full time.' With that, he speeds up, slapping his balls against your chin.";
	say "     You groan around the rod in your throat in response to your master's words, jacking yourself off even faster. With a loud whinny, the stallion slams his horsecock home, and you feel it shooting his cum into your stomach. You can feel your belly swell as it's filled with your stallion's virile seed. As your vision begins to dim, you cum as well, shooting your seed onto the ground, pushed to orgasm with your purpose as a cum dump fulfilled. Your stallion pulls free and kicks you over, pumping the last few spurts of seed onto your crumpled form. 'You'll have to teach my mares how to do that. Otherwise, I'll never leave you alone.' He grins and trots away.";
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Zebra":
			now monster is y;
			break;
	now sex entry is "Male";

to say ZebraDommingPlayerSex2: [Mounted]
	say "     The striped stallion pulls you up by the arm and directs you to a stretch of enclosure fencing that's still standing. 'Grab on tightly, little man.' You grab the bars and push your ass out for the zebra man. He spits, and you feel his large fingers rubbing your crack. Spitting a few more times, he manages to fit two of his fingers inside of you before he decides you're ready. He takes them out, and you soon feel his flared head against your hole. Gripping your hips, he grunts as he pushes into you then lets out a loud moan. 'Man, when those [one of]huskies[or]wolves[or]German Shepherds[at random] talked about how good fucking ass was, I never thought I'd agree. Now that we've done this a few times, I'm coming around.' With that said and both of you having had a brief moment to adjust, the zebra is off to the races.";
	say "     He starts with short thrusts, enjoying the feeling of your ass gripping his horsecock. You yelp as his medial ring breaches your hole, but your stallion doesn't stop thrusting, and you both let out a muffled cry as he bottoms out in your ass. For a few moments, it's silent except for the sound of your panting. Then you feel his breath on your ear, and he says, 'I'm going to make this ass mine.' Your master rips his dick out of you, and you moan as his ring and flare stretch your hole on their way out. When he pounds back into you, your moaning only grows louder as he long-dicks you hard, his giant balls making an audible noise as they hit your butt. Your [cock of player] bounces with each stroke, and you can feel it dripping pre, but you can't let go of the bars without getting slammed into them. Your sounds of lust are underscored by little growls of frustration as your master's cock stimulates your prostate. His breath is on your ear again. 'Don't worry, I'll make sure you cum too.'";
	WaitLineBreak;
	say "     Your stallion switches his grip, moving his hands from your hips to your shoulders. He steps back and pulls you back a step, forcing you down as he does so that your torso is parallel with the ground below. Grabbing your hips again, the zebra man switches back to short, quick thrusts, his groin barely separating from your ass. He begins to snort, and his hands tighten their grip, letting you know that he's getting close to his peak. He yells as you feel his prick twitch, pumping his seed into your depths. Your master steps back, abruptly pulling his still pulsing dick from your wrecked hole, and you feel his cum coat your back and ass. His hand rubs your ass, spreading his seed over your skin, and you can feel a familiar tingle as your nanites react. You hear a chuckle from behind you as he gives your butt a slap. 'And here I'd always considered myself a boob man.'";
	say "     Before you can reply, you feel his rod against your hole again, and he slips back into you. His hands find your mouth, and your [cock of player] dick, sticking his cum-slick fingers into your mouth while roughly jerking you off. 'I'm told bitch males need a cock in them, or they can't get off. Judging by how hard your dick is, I'd say that's true.' A moan escapes around his thick fingers as he fucks you lazily, the stimulation reaching unbearable levels. Each time you think you're going to orgasm, the zebra stops moving, simply holding his horseflesh inside of you. Once he feels you begin to calm, he starts thrusting again. Finally, his pole softens and pops out of you, and that's the final straw. As his seed gushes out of your hole, you begin shooting your own seed on the ground in front of you, allowed to cum at last. Your master lets you go, and you collapse to your knees, absolutely drenched in cum, your stomach still swollen from the stallion's load. He gives you a wave and a wink as he struts away.";
	mimpregchance;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Zebra":
			now monster is y;
			break;
	now sex entry is "Male";

to say ZebraDommingPlayerSex3: [Face Sit]
	say "     'Since you've started coming around, I've been talking more with the [one of]huskies[or]wolves[or]German Shepherds[at random], asking them some questions about sub males like you. Like what makes you tick, what makes you different from a woman, and what makes it worth fucking someone without a juicy snatch that you can just slide right into.' He grips your shoulder with his left hand and crouches in front of you, shoving his face right next to yours. 'And you know what their answer was, my little slut?' You shake your head, desperate for him to tell you the answer. 'They said the difference, the reason to have a beta male, was how far they would go just for a taste of your cock. Let's find out how far you'll go.' He gets up and turns around, shoving his thick, muscular ass into your face.";
	say "     Buried between his firm cheeks, you are bathed in the musk of your master, and you bask in its masculine aroma for a while. You feel your stallion's hands grasping at the back of your head, and after a curt, 'Get to it,' you begin licking at his hole. His fingers twist in your hair in response, causing you to stop and wince, but you start again when he says, 'I didn't say stop, boy.' Each hiss and whimper you draw from your zebra stallion increases your fervor, and you drive your tongue deeper each time. As his pucker begins to open up to your eager tongue-fucking, you add some flourishes. Some love bites along his cheeks, sucking his hole, and then a finger or two, pressing his p-spot. He bucks against your face, and you feel movement and hear the familiar sound of jerking off.";
	WaitLineBreak;
	say "     'Oh shit, keep doing that!' your master groans, and you take a deep breath before diving back in, intent on pleasing him. You lick around his hole as you continue to finger blast his prostate, and you can tell that he's getting close. Suddenly, he steps away from you, nickering as your fingers slip out of him. He turns around and is pumping his shaft right at your face. 'Enjoy your reward, boy.' He closes his eyes and throws his head back as he blasts your face with his cum, his hand slowing its furious pumping. Leaning forward, you try to suck on his cock head, but you feel his hand on your head, holding you back. You stick out your tongue and are just able to reach your prize; straining against your stallion's strong hold, you manage to get the faintest taste of him. He holds you in this tantalizing position until his prick softens, falling away from your cum-drenched face. He releases you, stepping back as you fall to the ground.";
	say "     'Those [one of]huskies[or]wolves[or]German Shepherds[at random] were right about you beta bitches. You really are obsessed with dick. And you are truly obsessed with [italic type]my[roman type] dick,' he says as he slaps your face with a loud smack. Your own prick throbbing with unfulfilled lust, you plead with him, asking if you can suck him, jack him off, or even just touch his rod while you finish yourself off. He laughs as he walks away, leaving you to pull yourself together. You try to get yourself off alone, but without your master present, your heart isn't in it. Giving up in spite of the desperate need within you, you get dressed to face survival in this dangerous new world.";
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Zebra":
			now monster is y;
			break;
	now sex entry is "Male";
	increase libido of player by 10;

to say ZebraDommingPlayerSex4: [Mating Rut]
	say "     The heat of battle fading, something new piques the interest of your striped stallion. His nostrils flaring, you see his pupils dilate, and he bends down to start tearing off your clothes. Once you're mostly naked, he flips you onto your front, exposing your butt. He snorts and spreads your cheeks apart before shoving his muzzle between them, taking a deep whiff of your needy hole. 'You've brought me a gift, boy, and I'm going to show you how much I love it.' His tongue slides right into you, your pucker inviting him inside. Its length reaches deep, finding your prostate and sinking you deeper into your need to be fucked. As he rims you, you can barely speak, but you manage a stuttering, 'F-fuck me, p-please.' Your master pulls back from your ass and simply says, 'Soon,' before he spits on your hole and goes back to tongue fucking you. You grind your hips back against him, futilely trying to get more of him in you.";
	say "     The zebra man pulls back again, and you hear him sucking on his fingers, whose girth make you moan as they enter you. You try to back up again, this time a little more successful, the two fingers slipping into you, stretching your hole wide. The zebra man adds a third and fourth finger, your need making you pliable and slick, and when he withdraws, you can feel your ass gape. 'Winking just like the mare you are,' is what your master grunts before diving back into your hole, muzzle first. Writhing in pleasure as your hands tear at the grass, your frustration at not being fucked rises, but you've reached a level of delirium that prevents you from voicing your need. You can hear your stallion grunt and snort as he eats you out, signalling his own impatience. Mercifully, he soon finishes preparing your ass and withdraws, cool air rushing to replace his absence. He doesn't leave you wanting for long as he pulls you onto your hands and knees, and you can feel his flared head press against your loosened pucker.";
	WaitLineBreak;
	say "     Both of you moan as your master's horsecock pops into your well-prepared hole, facing no resistance, even as his medial ring enters you. The stallion easily hilts himself to the balls in your welcoming ass, but he doesn't waste any time enjoying it. He fucks you relentlessly, almost mechanically, each stroke is long, hard, and deep, but nearly indistinguishable from one another. You grunt each time he slams home, his large balls slapping against your rear, but not because he's too rough or hitting the wrong spot. You grunt because this fuck is a primal act, and both of you are beyond anything but his massive rod pounding into your hot ass. It's not long until you feel his dick throb within you, and you can feel his cum sloshing inside of you. But he doesn't stop thrusting, and you don't want him to; you still ache with a burning need to be bred, and it's driving both of you into a mating frenzy.";
	say "     You don't know how much time has passed when the zebra man slumps on to your back, dragging both of you to the ground. It's a surprisingly controlled fall, with the two of you landing on your sides, nestled like spoons. His lower arm cradles your head while his free hand massages your cum-swollen belly, filled with ten - or was it twelve? - of his virile loads. Your body has many little aches now from being fucked for a long period time - your hands, your knees, your hole - but now that the rutting has ended, you mostly feel relief and contentment. The two of you lay still for awhile, after your stallion's raging erection finally softens and after your stomach begins to return to its normal size. But it's dangerous to stay in one place for too long, and you've tried your luck enough for one day. As you get up to leave, the zebra man reaches out to touch your still engorged belly. You place your hand over his and share once last, smoldering look before you head your separate ways.";
	mimpregchance;
	mimpregchance;
	mimpregchance;
	mimpregchance;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Zebra":
			now monster is y;
			break;
	now sex entry is "Male";

to say ZebraDesc:
	setmongender 3;
	if inasituation is true: [part of an event - dealing with him is done elsewhere]
		if debugactive is 1:
			say "     DEBUG: Empty monster description in the file 'Zebra.i7x' - Dealing with the event outcome is taken care of at the event source[line break]";
		stop the action;
	say "     [if ndmhigh is 1]After getting slammed in the back by a surprise blow, you can hear the loud, braying chuckle behind you[else]Wandering down the zoo paths, you hear a strange thundering noise coming up on you quickly[end if]. Turning to face the noise, you find that a large anthro zebra is closing on you with an intent look in his eyes. His large, thick cock is partially erect as he lunges forward, obviously eager to be put to use. '[one of]You'll make a fine addition to the herd[or]You look like you want to be my mare[or]Soon, you'll be mine[or]Now, I have you[or]I'll make you acknowledge my dominance[or]Now, to enlarge the herd[or]You will be no match for me[or]Submit now, resistance is futile[at random]!' he calls out, before unleashing a sharp cry and attacking!";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Zebra";
	now attack entry is "[one of]He slams his large forehead right into your head, causing you to see stars![or]The large beast pauses for a minute to stroke his thick zebra cock and grins at you lewdly, the sight and his strong dominant musk sapping your will to fight![or]He lashes out at you with his strong hoof-like hands![or]He charges forward wildly, slamming his body into yours![or]The zebra stallion lowers his shoulder and rams into you, throwing you to the ground painfully![at random]";
	now defeated entry is "[Zebra loses]";
	now victory entry is "[Zebra wins]";
	now desc entry is "[ZebraDesc]";
	now face entry is "a long, zebra-like muzzle. Your ears have lengthened and constantly swivel above your head as they search for danger, though your eyes still stare with human emotion"; [Your face is (your text)."]
	now body entry is "thickly built. You stand easily on your strong digitigrade legs, balancing easily on your thick hooves. Your four-fingered hands bear a strong resemblance to equine hooves, and you can't seem to manipulate objects quite as well as you could before";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "[one of]black-and-white-striped[or]coarse-furred[or]zebra-striped[or]zebra fur[at random]";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You have a whip-like zebra tail hanging off of your tight, powerful ass. Long, coarse, black hairs extend from part of the sides of the tail and from the tip, extending its length almost to the ground as it swishes behind you.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]equine[or]zebra[or]thick, black[at random]";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "you feel it stretch forward into a proper zebra-like muzzle, your teeth flattening and your nose expanding to take in the new scents around you. With a painful stretching feeling, your ears are tugged upwards to rest on top of your head, and black hair sprouts up to form a mohawk-like zebra mane. Soon, the only difference between your face and that of a normal zebra is a slightly humanlike cast to your features, plus your strangely human eyes staring out at the world through an animal's face"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "its chest thickens and stretches into a more zebra-like barrel. Legs thickening and shifting into a digitigrade stance, your feet round out into rough hooves underneath you. Your arms thicken with new muscle while your fingers seem to flow and merge, leaving you with only three fingers and a thumb on each hand. The tips of your reformed digits are covered in thick, black nails, giving your hands a strong hoof-like appearance"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "soft, black-and-white-striped fur slowly covers your body, your skin twitching and shuddering as it settles into place"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it firms up, and you feel a sharp stretching sensation as a thin whip-like zebra tail pushes its way out from above your ass. With a sharp, short shock of pain, strands of thick zebra hair explode out of the tip of the appendage and form a tuft of fur"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it darkens to a deep-black colour, and its tip blunts into an equine tip. A zebra's sheath forms at its base, and it pulls up into it, ready to emerge when you get aroused"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 19;
	now dex entry is 19;
	now sta entry is 16;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Female";
	now HP entry is 75;
	now lev entry is 8;
	now wdam entry is 10;
	now area entry is "Zoo";
	now cocks entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 18;  [ Length infection will make cock grow to if cocks]
	now cock width entry is 8;  [ Size of balls ]
	now breasts entry is 2;  [ Number of Breasts infection will give you. ]
	now breast size entry is 6;  [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 9;
	now cunt width entry is 4;
	now libido entry is 30;  [ Amount player Libido will go up if defeated ]
	now loot entry is "zebra fur";  [ Loot monster drops, ]
	now lootchance entry is 30;  [ Chance of loot dropping 0-100 ]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]thick[or]barrel-chested[at random]";
	now type entry is "[one of]equine[or]zebrine[at random]";
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	blank out the nocturnal entry;  [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";  [ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname of player is "Zebra":
		if humanity of player < 10:
			if cunts of player > 0 and player is dominant and (ZebraLossCount > 4):
				say "     Finally free of the last vestiges of your humanity, you make your way to the zoo, eager to assert your rightful place in the new world order. It's not long before you find what you're looking for; your servile stallion, the key to your plan. He yields his harem to you, and you assess the strengths and weaknesses of your sizeable herd. It's obvious that your pet zebra wanted more of a harem than a real fighting force as even the few boy-mares you have are more suited to breeding than battle. You institute drills for all herd members not currently foaling, and between raiding and special sessions with some willing fillies, you even out the gender imbalance in your herd. It takes a few weeks, but thankfully, the nanites make it easy to achieve your goal of a strong gang.";
				say "     It doesn't take long for you to carve out the zoo as your personal territory, with most of the city's other gangs giving you a wide berth. You are nothing if not a generous [master], and while your herd is at the top of the heap, you don't neglect the other denizens of your domain, making sure they're comfortable and safe. This is what sets you apart from other gangs and allows you to lead a comfortable existence - and a rather varied sex life. However, just as your herd is the top priority, so is your stallion your primary mate. He has served you well as your second-in-command, and he has served you even better as your lover. He is no longer the brash male who you had first met not so long ago; he speaks only after thinking and fucks only at your command. He eagerly takes what you give him and proudly bears his welts as a sign of your favor, rare as those occasions may be. After all, it doesn't do to have your lieutenant constantly incapacitated. Though you reserve the right to bear the children of any one you choose, the majority of the time, if your womb has quickened, it is with his seed.";
				say "     When the military finally arrives, you are well-prepared and are able to extract favorable terms for your surrender, helped by affirmations of your relative beneficence from your subjects. Your herd and anyone else willing to come with you are granted a large plot of land outside of the city. Given ample supplies, a small town quickly springs up, with you at its head. It is a life worth living that you have found, made possible by your favorite stallion.";
			else if cocks of player > 0 and player is dominant and (ZebraLossCount > 4):
				say "     Finally free of the last vestiges of your humanity, you make your way to the zoo, eager to assert your rightful place in the new world order. It's not long before you find what you're looking for; your servile stallion, the key to your plan. He yields his harem to you, and you assess the strengths and weaknesses of your sizeable herd. It's obvious that your pet zebra wanted more of a harem than a real fighting force as even the few boy-mares you have are more suited to breeding than battle. You institute drills for all herd members not currently foaling, and between raiding and special sessions with some willing fillies, you even out the gender imbalance in your herd. It takes a few weeks, but thankfully, the nanites make it easy to achieve your goal of a strong gang.";
				say "     It doesn't take long for you to carve out the zoo as your personal territory, with most of the city's other gangs giving you a wide berth. You are nothing if not a generous [master], and while your herd is at the top of the heap, you don't neglect the other denizens of your domain, making sure they're comfortable and safe. This is what sets you apart from other gangs and allows you to lead a comfortable existence - and a rather varied sex life. However, just as your herd is the top priority, so is your stallion your primary mate. He has served you well as your second-in-command, and he has served you even better as your lover. He is no longer the brash male who you had first met not so long ago; he speaks only after thinking and fucks only at your command. He eagerly takes what you give him and proudly bears his welts as a sign of your favor, rare as those occasions may be. After all, it doesn't do to have your lieutenant constantly incapacitated. [if player is mpreg_ok]Though you reserve the right to bear the children of any one you choose, the majority of the time, if your womb has quickened, it is with his seed.[end if]";
				say "     When the military finally arrives, you are well-prepared and are able to extract favorable terms for your surrender, helped by affirmations of your relative beneficence from your subjects. Your herd and anyone else willing to come with you are granted a large plot of land outside of the city. Given ample supplies, a small town quickly springs up, with you at its head. It is a life worth living that you have found, made possible by your favorite stallion.";
			else if player is dominant and (ZebraLossCount > 4):
				say "     Finally free of the last vestiges of your humanity, you make your way to the zoo, eager to assert your rightful place in the new world order. It's not long before you find what you're looking for; your servile stallion, the key to your plan. He yields his harem to you, and you assess the strengths and weaknesses of your sizeable herd. It's obvious that your pet zebra wanted more of a harem than a real fighting force as even the few boy-mares you have are more suited to breeding than battle. You institute drills for all herd members not currently foaling, and between raiding and special sessions with some willing fillies, you even out the gender imbalance in your herd. It takes a few weeks, but thankfully, the nanites make it easy to achieve your goal of a strong gang.";
				say "     It doesn't take long for you to carve out the zoo as your personal territory, with most of the city's other gangs giving you a wide berth. You are nothing if not a generous [master], and while your herd is at the top of the heap, you don't neglect the other denizens of your domain, making sure they're comfortable and safe. This is what sets you apart from other gangs and allows you to lead a comfortable existence - and a rather varied sex life. However, just as your herd is the top priority, so is your stallion your primary mate. He has served you well as your second-in-command, and he has served you even better as your lover. He is no longer the brash male who you had first met not so long ago; he speaks only after thinking and fucks only at your command. He eagerly takes what you give him and proudly bears his welts as a sign of your favor, rare as those occasions may be. After all, it doesn't do to have your lieutenant constantly incapacitated. [if player is mpreg_ok]Though you reserve the right to bear the children of any one you choose, the majority of the time, if your womb has quickened, it is with his seed.[end if]";
				say "     When the military finally arrives, you are well-prepared and are able to extract favorable terms for your surrender, helped by affirmations of your relative beneficence from your subjects. Your herd and anyone else willing to come with you are granted a large plot of land outside of the city. Given ample supplies, a small town quickly springs up, with you at its head. It is a life worth living that you have found, made possible by your favorite stallion.";
			else if cunts of player > 0:
				say "     Surrendering to your new instincts, the instincts instilled in you by the strong and powerful zebra stallion, you find yourself hurrying back to the zoo, unable to stand being separated from the herd any longer. Soon, you are found by the strong and dominant zebra stallion you fought earlier, though the burning between your legs at the sight of his strong handsome form ensures that fighting the stallion is definitely the last thing on your mind. You find yourself trembling as the zebra stallion comes over and brushes himself against you, the feel of his hard, strong body next to yours making you feel weak and helpless, like you need this powerful stallion to hold you, to own you, to make you part of his herd, and protect you from ever being alone again.";
				say "     Soon, you find yourself completely overcome with these new needs, and you find yourself begging him to take you, to make you his, to fill your belly with his strong zebra foals, and make his claim to your body plain for all to see. The stallion chuckles as he teases you with his hoof-like hands, enjoying the way he can make you beg and squirm for him. Hee accepts your surrender and fills you with his thick black cock, causing your eyes to roll back in pleasure as you let out soft whinnying noises with each thrust of his large equine member. Your muscles clench him inside you tightly as he ruts you with abandon, your tightness and eagerness seeming to please your new master, the stallion who will soon sire his foals in you! Realizing at last your true place, the place of a slutty, little zebra mare in this strong stallion's herd, you abandon any last vestiges of your old life as your powerful orgasm grips you and his thick zebra cock shoots his powerful seed deep within you. The hot, thick seed floods through your womb as you pant helplessly in his strong arms. You can feel it settling into your depths, sealing your fate as nothing more than a slutty, little mare to your stallion, just another striped member of his herd for him to use and breed whenever he wants.";
			else if cocks of player > 0 and player is submissive and (LostToZebra >= 3):
				say "     Feeling a calling deep inside of you, your thoughts are drawn to the zebra herd, and your body must follow. You are soon found by a rather smug zebra stallion. You quickly fall to your knees, knowing that your place is to serve such a dominant male. Welcoming you as his male mare, he bends you over and soon has you submitting to him and getting bred by his ebon pole.";
				say "     You grow pleased with your new life [if player is mpreg_ok], even as your foal grows inside of you.[else]as your stallion's cumdump.[end if] And your stallion is a generous one, allowing you to mount any [italic type]incurable[roman type] males he finds, even as he rides you. This treatment eventually turns them into smaller, submissive males like yourself[if player is mpreg_ok], with the ability to bear foals. Your offspring and those of your ilk are always more submissive females or servile male breeders.[else].[end if] The others get traded around between the herds like so much horseflesh, but you are always kept by your striped stallion as his special prize.";
			else if cocks of player > 0 and player is mpreg_ok:
				say "     Feeling a calling deep inside of you, your thoughts are drawn to the zebra herd and your body must follow. You are soon found by a rather smug zebra stallion. At first, you are tempted to resist, some part of you wanting to be a stallion yourself, but when he advances on you, you find yourself giving in. Welcoming you as his male mare, he bends you over and soon has you submitting to him and getting bred by his ebon pole.";
				say "     You grow pleased with your new life, even as your foal grows inside you. And your stallion is a generous one, allowing you to mount any [italic type]incurable[roman type] males he finds, even as he rides you. This treatment eventually turns them into smaller male mares like yourself. [if the player is dominant]You are permitted to continue breeding them as an outlet for your own dominant urges; it is a privilege you take advantage of often[end if]Your offspring and those of your ilk are always more submissive females or servile male breeders. The others get traded around between the herds like so much horseflesh, but you are always kept by your striped stallion as his special prize.";
			else:
				say "     Surrendering to the inevitable, you give in to the increasingly strong urges within you, the urges to find mates, dominate them, and force them to bear your many offspring. You prowl the streets of the city, hunting and searching for those yet to be transformed, so that you can add them to your herd. Unfortunately, you find that you held off the infection for so long that there are few targets left in the city human enough for your lustful desires to change, and the competition to find said last few remaining holdouts is fierce. By the time the military sweeps into the city, you have barely a handful of mares to your name, a paltry herd and nowhere near as much as some of the more powerful stallions who started earlier. Unlike those larger herds, however, your smaller size allows you to take shelter from the fighting easier, and eventually allows you to slip out of the city with most of your herd intact. Fearing further military contact, you shy away from most occupied areas with your herd, but your need for a larger herd still drives you to induct the occasional camper or people from the nearby small towns who you think won't be missed. It's a hard life, but already, your expanding herd swells with the new life you have placed in their bellies, and eventually, it might even grow to rival the herd of the stallion who changed you to begin with...";
		else if cunts of player > 0 and player is dominant and (ZebraLossCount > 4):
			say "     With the military closing in, there's one last thing you need to do before you're rescued; find your pet stallion. Making your way to the zoo, it doesn't take long before he finds you, his nostrils flaring at your scent. You scatter his herd, unwilling to add any complications to your gambit. Turning yourselves in at the earliest opportunity, the military quickly processes you both as unfortunate, but ordinary, survivors. Certainly neither of you appears to be one of the more troublesome sorts who have created their own personal militias or harems. Life afterwards is difficult for you at first, as it is for any of the mutated, but it doesn't take long for you to turn the tides in your favor.";
			say "     Having seen firsthand the power horse cock can have over a person, you open an escort service specializing in horsemen, with your stallion as your primary stud. Though your stable has been made non-infectious, as per military policy, you quickly build a client base that is nonetheless hungry for horse dick, and you are happy to provide. Your stallion is one of the more popular of your escorts, but it is the two of you who are the star attraction when you break out the crop and bridle at your company parties. Your business gives you and your zebra a comfortable life, although never [italic type]too[roman type] comfortable for your stud, and he wouldn't have it any other way.";
		else if cocks of player > 0 and player is dominant and (ZebraLossCount > 4):
			say "     With the military closing in, there's one last thing you need to do before you're rescued; find your pet stallion. Making your way to the zoo, it doesn't take long before he finds you, his nostrils flaring at your scent. You scatter his herd, unwilling to add any complications to your gambit. Turning yourselves in at the earliest opportunity, the military quickly processes you both as unfortunate, but ordinary, survivors. Certainly neither of you appears to be one of the more troublesome sorts who have created their own personal militias or harems. Life afterwards is difficult for you at first, as it is for any of the mutated, but it doesn't take long for you to turn the tides in your favor.";
			say "     Having seen firsthand the power horse cock can have over a person, you open an escort service specializing in horsemen, with you and your stallion as your primary studs. Though your stable has been made non-infectious, as per military policy, you quickly build a client base that is nonetheless hungry for horse dick, and you are happy to provide. Your stallion is one of the more popular of your escorts, but it is the two of you who are the star attraction when you break out the crop and bridle at your company parties. Your business gives you and your zebra a comfortable life, although never [italic type]too[roman type] comfortable for your stud, and he wouldn't have it any other way.";
		else if player is dominant and (ZebraLossCount > 4):
			say "     With the military closing in, there's one last thing you need to do before you're rescued; find your pet stallion. Making your way to the zoo, it doesn't take long before he finds you, his nostrils flaring at your scent. You scatter his herd, unwilling to add any complications to your gambit. Turning yourselves in at the earliest opportunity, the military quickly processes you both as unfortunate, but ordinary, survivors. Certainly neither of you appears to be one of the more troublesome sorts who have created their own personal militias or harems. Life afterwards is difficult for you at first, as it is for any of the mutated, but it doesn't take long for you to turn the tides in your favor.";
			say "     Having seen firsthand the power horse cock can have over a person, you open an escort service specializing in horsemen, with your stallion as your primary stud. Though your stable has been made non-infectious, as per military policy, you quickly build a client base that is nonetheless hungry for horse dick, and you are happy to provide. Your stallion is one of the more popular of your escorts, but it is the two of you who are the star attraction when you break out the crop and bridle at your company parties. Your business gives you and your zebra a comfortable life, although never [italic type]too[roman type] comfortable for your stud, and he wouldn't have it any other way.";
		else if cocks of player > 0 and player is submissive and (LostToZebra >= 3):
			say "     Helicopters flying overhead, you run for the zoo, desperate to find your master before it's too late. It's not long before he finds you, and he holds you close, making you feel safe as this chaotic world is turned right side up again. Your stallion is held longer than you are, and he looks a bit worse for the wear when he's finally released. He tells you that he's alright, but the army had wanted detailed information about his 'unsavory activities,' as they put it, in order to locate specific survivors. Life after the rescue is hard for the two of you, as it is for all mutants, and it takes some time before the two of you get back onto your hooves.";
			say "     What makes the scales tip in your favor is when the two of you are approached by a [one of]horse[or]lion[or]tiger[or]deer[or]gator[or]wolf[or]hyena[at random]morph who offers an interesting proposition. They'd noticed that during the outbreak that horsecock was a popular treat for many, though they declined to say whether they knew from personal experience, and they were wondering if you and your stud would like to work at their escort agency. Your stallion eagerly agrees for the both of you, but he insists that both of you will only have to fuck not get fucked as, 'I'm a top and this guy's ass belongs to me'. This is an easy caveat to accommodate, and it's not long before the two of you become some of the agency's most requested escorts. Though you fuck a lot of ass and pussy on the job, at home, it's you with your legs over your head, screaming for your stud to stuff you with his horsecock[if player is mpreg_ok] and put a foal in you.[else].[end if]";
		else:
			say "     Rescued finally by the military, you find yourself standing out in life afterwards due to your strange new zebra-like form. Eventually, you manage to find yourself a job that pays well enough, and though your promotion opportunities seem slim, it at least pays the bills. You find yourself feeling terribly isolated and alone at times as a changed creature in a world surrounded by humans, these feelings usually leading you to one of the local bars to drink until you feel better. On one of these trips, however, you run into another changed, a [one of]horse[or]lion[or]tiger[or]deer[or]gator[or]wolf[or]hyena[at random]morph of all things, and while not quite of the same species, you certainly do find plenty in common in a world full of humans. Eventually, you end up back at your place, and a few nights later, you end up over at theirs. Almost before you know it, you are spending all of your free time together, and eventually, just end up getting a larger place for the both of you. You both find yourselves trying to make life better for the changed, or at least lower the level of discrimination. The two of you eventually attract several other misfit changed in the area, those without any others of their species around for support, and soon, you move into an even larger place, which is often full of many different species, working and living together in harmony (for the most part). It may be a very strange collection of individuals, but it looks like you managed to find a herd of your own to belong to after all...";

Table of Game Objects(continued)
name	desc	weight	object
"zebra fur"	"A tuft of black zebra mane fur."	1	zebra fur

instead of sniffing zebra fur:
	say "Smells a bit of horse - or rather zebra.";

zebra fur is a grab object.
the usedesc of zebra fur is "[zebra fur use]";

to say zebra fur use:
	say "Playing a bit with the coarse strands of hair, you stroke them over your arm. A moment later, they suddenly disintegrate into a fine powder which just seems to melt into your skin...";

zebra fur is infectious. The strain of zebra fur is "Zebra".

Zebra ends here.
