Version 3 of Werewolf Brute by Gherod begins here.

"Adds the Werewolf Brute species and encounters to Avalon."

[ Version 1 - Created File ]
[ Version 2 - Added cum inflation variants to existing scenes. New victory scene: Body Worship]
[ Version 3 - Added victory scene with Xaedihr]

WerewolfBruteSubmitCount is a number that varies. [@Tag:NotSaved]
WerewolfBruteSubmitCount is usually 0.

to say GenerateTrophyList_WerewolfBrute:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "werewolf brute fur" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (25 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 1 - Creature Responses

to say Werewolf Brute Wins:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		project Figure of Werewolf_hard_icon;
		if HP of Player > 0: [player submitted]
			say "     Seeing how large this werewolf is has you consider your actions, so you choose to submit to him by dropping to your knees and raising your hands. He takes a liking to this as a grin forms across his muzzle, and the sizable beastman approaches you unchallenged. 'So, playtoy it is? Good choice.' he comments as he grabs you by the chin, forces you to look at him and, locking his gaze on your eyes, he orders you to do as he says. 'You better make me feel good, then. I like my pups tame.'";
		else:
			say "     You do not really stand a chance against such a huge beast, who manages to take you down without much of an effort. As you fall to your knees, sore and defeated, he approaches you with a grin on his muzzle, taking a liking to the sight. 'You were not even a challenge! Looks like you need to learn what your place is, little pup.' he comments as he grabs you by the chin, forces you to look at him and, locking his gaze on your eyes, he orders you to do as he says. 'Don't worry, you're gonna like it... They all do.'";
		WaitLineBreak;
		if WerewolfBruteSubmitCount >= 3 and player is not dominant and Resolution of Discover The Werewolves Den is 0 and a random chance of 1 in 2 succeeds: [One time event for Werewolf's lair]
			say "[WerewolfBruteLair]";
		else:
			let randomnumber be a random number from 1 to 2; [adjust the latter number for the number of options]
			if randomnumber is:
				-- 1: [facefucks]
					say "     From his sheath is already emerging a big and thick red rod, pulsing with eagerness as it raises to a full erection right in front of you. 'Lick it.' he orders, pulling your head as you inevitably bump your lips on the werewolf's meat, which throbs happily upon your involuntary kiss. He leads you through his shaft as you are made to rub your mouth across, its salty flavor slipping into your taste buds as you start opening your mouth a bit more. 'That's it, pup. Open wide. That's a big cock for you.' His grasp on you is tight and secure, now taking you to the tip of his lupine manhood as your lips begin to part, taking that fat cockhead past them and onto your tongue, sinking it deeper inside your mouth...";
					say "     He lets out a grunt of pleasure as he finds his dick diving into the depths of your throat, your jaw aching from being forced open so much in order to accommodate such a girthy meatlog. But things do not end here, as the werewolf brute is not satisfied with just letting you hold his cock in your mouth or suck it as you normally would. Instead, he keeps his large paw-like hand taking hold of your skull and leads your head back and forth across his length, giving you no option but to endure this facefucking as his penis stretches your throat and keeps your jaw wide open. Precum rapidly starts to leak out of his meat, filling your mouth with more beast manjuice than you are comfortable with, threatening your gag reflex with every thrust.";
					WaitLineBreak;
					say "     But you do not think he cares if you choke or not, as he likes going deep and slow without care for your limits, in fact pushing them with every single motion, as if he enjoyed watching you struggle with his large endowment. 'You got a tight throat. Bet your [if player is female]pussy[else]asshole[end if] feels as good... Heh, maybe something to think about for another time...' he comments, with clear interest for bending you over and fucking you from behind, but preferring to stick to your mouth, this time, as he picks up the pace to facefuck you faster, alternating between moving your head back and forth as if it was a fleshlight toy, to holding it in place as he does all the thrusting.";
					say "     It definitely is a mouthful, even a throatful, keeping your jaw wide open for so long it starts feeling numb. Tears fall from your eyes and slide through your cheeks as you can barely breath between his cock in your throat and him temporary pulling back, but the delight and joy in the beastman's expression as he feels every inch of your oral depths around his manhood is something to note. You try keeping your hands on his legs and push against them if you really need to breath, but the brute's strength is so much that he does not even notice it, you are only kept conscious by the random chances you get to breathe in some air, which is filled with musky pheromones. Some part of you even starts liking this, and you do not know why.";
					WaitLineBreak;
					say "     'Bet you enjoy being handled like an alpha's bitch.' he teases you, keeping that sharp grin and threatening look in his face, but clearly out of all the bliss he is getting from dominating you. Your mind feels blurry as he says these words, mixed in with his animalistic scent, and it all starts sounding like a good... no, great, idea. You look up at him with red and teary eyes, and you think that really does something to him as his huge member twitches inside your mouth. 'Fucking love when you look at me like that, pup.' he says, stroking your cheek and wiping your tears of hard effort. 'Wanna swallow my load? I know you do...' and asks the werewolf as he pets the back of your head with a couple of tender squeezes.";
					if WerewolfBruteSubmitCount > 0 and a random chance of 1 in 2 succeeds or WerewolfBruteSubmitCount > 2: [special cum inflation scene]
						WaitLineBreak;
						say "     [italic type]And not so long after, you feel the beastman's cock throb and pulse with a strong intensity, but only initially teasing you with just a couple of drops on your tongue. 'Oh, fuck... It's gonna be a big one...!' He warns you, and judging by the current size of his full balls, having overgrown to accumulate a massive load within, he is not lying. After this build-up, he begins to unleash a massive torrent of creamy and sweet-tasting spunk forcingly down your throat, each thrust followed by another and another spurt, all while he holds your head in place. You gulp everything down helplessly, each time equaling to a mouthful of cum that is merciless dropped down into your stomach, and it continues in such an abundance that your belly begins to swell.";
						say "     'You're gonna get all of it!' The werewolf shouts and grunts as this climax endures for about a full minute, in which you are made to swallow so much cum that you are quickly thrown out of your balance the moment he lets go of you. Falling on your back with a belly looking like if you were several months pregnant, the sight before your eyes is a panting hulking werewolf beast happily grinning down on you, with his large cock throbbing its few last drops out. 'That's what you get for coming back to take it, pup. And I could keep filling you up, if you wanted... well, me and my pack, even.' He chuckles mischievously as he shakes the remains of his load still hanging from his now slowly shrinking manhood down onto your face.[roman type][line break]";
						WaitLineBreak;
						say "     'Heh, you did great, little pup. Keep that up and I might actually bring you over. Maybe we can see how many loads we can fit inside you before you start leaking wolf cum out of every hole in your body. Hehe...' With that, he rubs your head once more before taking his leave. There is a whole mess on your face and in your stomach, including a very swollen belly, which you will have to rest up before being able to get up and continue on your way.";
					else: [normal ending]
						say "     And not so long after, you feel the beastman's cock throb and pulse as his generous load unleashes right in your mouth, several thick drops of creamy and sweet-tasting spunk that you are forced to gulp down with the werewolf's thrusts, sending the rest directly down your throat. He nearly howls at the pleasure his climax gives him, which lasts for nearly half-a-minute, all that time delivering copious amounts of cum inside you as his knot remains just behind your lips, tightly wrapped around his cock, throbbing. He then pulls out, finally allowing you all the room you want to breathe, and pats on the head as if you were his little pet.";
						WaitLineBreak;
						say "     'You did good, little pup. Keep that up and you might join our pack as our sex slave! How does that sound? Wanna have lots of big werewolf cocks in you? Hehe, bet you do...' With that, he rubs your head once more before taking his leave. There is a whole mess on your face and in your stomach, which you will have to rest up before being able to get up and continue on your way.";
					CreatureSexAftermath "Player" receives "OralCock" from "Werewolf Brute";
				-- 2: [fucks doggy style, always anal]
					say "     From his sheath is already emerging a big and thick red rod, pulsing with eagerness as it raises to a full erection right in front of you. But he does not seem to be interest in your front. 'How about you bend over?' he asks, in a tone that more seems like an order. Knowing that he means it, you do so [if player is submissive]eagerly[end if], turning around and getting on all fours, exposing your butt to him. 'Yeah... spread those cheeks. I wanna see that hole.' his powerful voice commands you as he takes hold of his erection, stroking it observing your actions. You take a grab of both your asscheeks and spread them to the sides as he asked, giving him a clear view of your pucker.";
					say "     'Get a finger in it...' - he orders, once more - 'unless you wanna risk mine. These are some sharp claws, so... Better be safe, pup. You're gonna need to warm that up for me.' You definitely know what he means, so given your predicament, you better do exactly as he says. By shoving a finger in your hole, you have obeyed and pleased the big werewolf, who gets more into his jerking motions, rubbing that thick and large meat faster as he watches you. 'Keep on adding more... Stretch it wide...' his words continue, and so do you, adding two fingers and getting comfortable with them before progressing into three and more. The beastman then proceeds to crouch behind you, resting his manhood on top of your buttocks, but without disturbing your fingering efforts.";
					WaitLineBreak;
					say "     You feel his pulsing rod like a heavy, thick and warm log, throbbing each second, slowly being rubbed against the space between the beginning of your glutes. He gives your ass a light tap with his dick between his soft thrusts, and after letting you finger yourself for a while more, he begins to slide that girthy dick down through between your asscheeks. You make way for the incoming cock that is so eager to get inside you, and he proceeds to push it against your hole, very slowly. 'Ready to take it in, pup?' he asks, but without even awaiting a reply, you already start feeling it push and stretch your entrance wide open, his hot and thick manhood starting to force its way into you.";
					say "     'Ohh... you're really tight for me... Hope I ain't hurting you... much. Hehe...' he comments as he continues to push his erection into you, and it does feel massive. His thickness is the biggest challenge here, forcing your entrance to stretch wide open in order to accommodate such a cock! The werewolf is now grabbing your hips and taking full control, starting to pound you deep and a little too fast for comfort. 'Fuck... That's such a good hole... My mates would have loved to have you riding them, too...' he teases you, and inevitably, images of a whole pack of horny werewolves surge in your mind, highly suggestive of what he means. You do your best to endure his massive dong buried deep inside your ass as he starts to pick up the pace...";
					WaitLineBreak;
					say "     Now, you are being utterly assfucked in doggy style, and that is not just because he happens to be a werewolf. With you on all fours, he is kneeling behind you, grabbing your hips and keeping your ass in place as he fucks you. You would say he started slow when compared to how deep, rough and hard he gets after a while, his pelvis bumping against your buttocks so hard they make a loud clapping sound on collision. You do not think he is caring about the fat knot at the base of his cock giving signs of swelling as he continues to fuck you really, really deep... To a point you think he is going to bulge out through your belly. 'Oh yeah... I'm gonna fill you up, now...' he warns you, and not long after, you feel his cock pulse deep in your depths.";
					if WerewolfBruteSubmitCount > 0 and a random chance of 1 in 2 succeeds or WerewolfBruteSubmitCount > 2: [special cum inflation scene, pussy if female]
						WaitLineBreak;
						say "     [italic type]Though, as his throbbing intensifies, you are only teased with a couple of warning shots before he slides his knot into you";
						if player is female:
							say ". 'Ohh... Fuck... This one's gonna be so big... It's gotta go in the proper place!' He warns as he quickly pulls out of your anus and mercilessly shoves his big lupine cock past your womanhood, so hard that it even feels mildly painful. Not only he is now penetrating your vagina, but also pushes it all the way in, even past his knot, and locks himself inside you";
						else:
							say ". 'Ohh... Fuck... This one's gonna be so big you're gonna look like a pregnant bitch...' He warns as he lets out a loud grunt, pushing his big lupine cock all the way into you, that swollen knot of his sliding past your anal ring and effectively locking the big werewolf inside you";
						say ". Then, as his overgrown balls rest against your skin, you feel each pump of his massive load invading you, an amount so big and so great that you feel it hitting you like a geyser, filling you up so much and so quickly you can even feel [if player is female]your womb[else]your bowels[end if] extending to keep all that he gives you. 'Take it all, pup!' He shouts as he takes you in for an embrace, pressing his whole body against you and towards the ground, howling in pleasure. 'You deserve every drop...! Fuck... YEAH!'";
						say "     You continue to feel his meat throbbing and filling you up, until your insides swell up due to all the cum he pumps into you, for like a full minute, in which you are unable to move due to two reasons, one of which is the fact he is pinning you down, and the other being the weight you feel within you from the ridiculous amount of jizz sloshing in there. Once the beastman is done breeding you, he takes the next following minutes to cuddle with you, licking your face all over while he waits for his knot to deflate. 'This is what you get for coming back to take it, pup. And I could keep filling you up, if you wanted... well, me and my pack, even.' His cock still twitches inside you slightly as he says this.[roman type][line break]";
						WaitLineBreak;
						say "     Once the werewolf can finally pull his dick out of you, he does so and stands up, leaving on lying down on the floor with cum leaking through your [if player is female]gaping cunt[else]stretched asshole. 'Keep that up and I might actually bring you over. Maybe we can see how many loads we can fit inside you before you start leaking wolf cum out of every hole in your body. Hehe...' He then walks away. You definitely have to take some time to be able to feel your legs and get up on your feet in order to take your leave, but this time, you must also wait until your body has processed all the cum inside you... Somehow.";
						if player is female:
							CreatureSexAftermath "Player" receives "PussyFuck" from "Werewolf Brute";
					else: [normal ending]
						say "     Then, finally, you feel several hot gushes of creamy seed being delivered in quick succession right into your bowels as the large beastman locks himself inside you, taking you in for an embrace as he presses his whole body against you and towards the ground, howling in pleasure. 'That's right...! Fuck yes! Take it all in, little pup...' he grunts and moans in utter bliss as he continues to unload his full balls inside you. Helpless to the situation, you are forced to take everything in and endure a long time of cuddling as he licks your face waiting for his knot to deflate. 'Love being ballsdeep on someone like this. You sure you don't wanna pay my pack a visit?' he asks, in an obvious teasing way, but you are even too exhausted to even think of replying.";
						WaitLineBreak;
						say "     Once the werewolf can finally pull his dick out of you, he does so and stands up, leaving on lying down on the floor with cum leaking through your stretched asshole. 'See you around, pup! Think about my offer... My brothers would love to use you over and over... Bet you'd enjoy that.' He then walks away. You definitely have to take some time to be able to feel your legs and get up on your feet in order to take your leave.";
					CreatureSexAftermath "Player" receives "AssFuck" from "Werewolf Brute";
		increase WerewolfBruteSubmitCount by 1;

to say Werewolf Brute Loses:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		project Figure of Werewolf_hard_icon;
		if fightoutcome is 11: [werewolf brute submitted by libido victory]
			say "     After pulling your best efforts at seducing and teasing this hulking werewolf, his movements become more sluggish as that massive erection swinging around between his legs really gets in his way. After so much throbbing, he finally seems to give up on trying to catch and subdue you, falling on the ground while trying to catch his breath. 'Fuck...! D-don't do this to me...! J-just come sit on this dick and we'll call it even!' he says, putting an end to the fight as he looks at you with pleading eyes.";
		else:
			say "     After a strenuous fight, you manage to subdue the big werewolf with the best of your abilities, bringing the beast down with your last efforts. He growls at you, unable to stand up and remaining helplessly defeated. 'Grr! There's no way you could've won!' says the lupine brute, trying his very best to find strength in himself to resist you, but he really looks exhausted. Looking at him, you are left to think if you want to do anything with the tired werewolf, now that you have got him under your thumb.";
		Linebreak;
		say "[WerewolfBruteLosesSexMenu]";

to say WerewolfBruteLosesSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Worship that strong body of his";
	now sortorder entry is 1;
	now description entry is "Feel up the werewolf brute's muscles";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Have some fun with his cock";
	now sortorder entry is 2;
	now description entry is "Touch the werewolf brute's dick";
	[]
	if demonologist is listed in companionList of Player and libido of Xaedihr > 0:
		choose a blank row in table of fucking options;
		now title entry is "Dominate the brute with Xaedihr";
		now sortorder entry is 99;
		now description entry is "The demonologist is with you, how about you both use the werewolf (You'll end up riding the beast while Xaedihr fucks his face)";
	[]
	if symbiotic darkness is listed in companionList of Player:
		choose a blank row in table of fucking options;
		now title entry is "Unleash the darkness upon the werewolf brute";
		now sortorder entry is 99;
		now description entry is "Let its wicked perversion loose on the brute";
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
				if (nam is "Worship that strong body of his"):
					say "[WerewolfBruteLosesBodyWorship]";
				else if (nam is "Have some fun with his cock"):
					say "[WerewolfBruteLosesHandjob]";
				else if (nam is "Dominate the brute with Xaedihr"):
					say "[WerewolfBruteLosesXaedihr]";
				else if (nam is "Unleash the darkness upon the werewolf brute"):
					say "[WerewolfBruteLosesDarkTyrant]";
				now WerewolfBruteSubmitCount is 0; [resetting Submit Count]
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You decide to leave him there and start walking away, turning your attention to more important matters. He begs you to not leave him like that, but you pay no further mind to the werewolf brute.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say WerewolfBruteLosesBodyWorship:
	if fightoutcome is 11:
		say "     Having downed such a huge werewolf beast all by yourself, in your own way, you figured that you also deserved a reward for your efforts. So, you start walking towards him, and the beastman only continues to look at you, his begging gaze as obvious as the erection he built. But you are not going to sit on his big dick, as he requested, no. You want to feel those fur-covered muscles, instead, so you begin to slide your hands over that thick coat of fur, feeling up his bulging arms and broad chest. 'Fuck... That feels good... B-but what about my cock?' He asks you, whimpering, and while you see such a beautiful and satisfactory erection down between his legs, your mind is, instead, focused on other things. Like feeling up this amazing and powerful body.";
	else:
		say "     Having downed such a huge werewolf beast all by yourself, you figured that you deserved a reward for your efforts. So, you start walking towards him, and the beastman stops moving a bone, looking at you coming cautiously. 'What do you want?! Having... Ugh...! B-Beating me up wasn't enough for you?!' he asks, and the werewolf seems really angry at you! However, as you crouch down next to him, you just go on ahead and move your hands all over those fur-covered muscles, feeling up his bulging arms and broad chest. 'W-what do you think you're doing?! You can't touch me like that...! I...' He tries to stop you, but to no avail. In his weak state, he cannot resist your loving touch, and his lust is quick to betray him as his erection builds up faster than he would like to admit. 'Fuck... T-that feels... good...''";
	say "     As you quickly get the werewolf under your spell, you are now free to rub your hands on him some more. He does not try to stop you as you feel up his pecs, leaning down closer on him, appreciating his physique as he pants in lust. 'This makes me wanna fuck your brains out...' Making the beastman moan with every touch, you then figure that just touching him with your hands is not enough. You want to kiss him, as well, truly give that body the appreciation it deserves. As soon as your lips come in contact with his chest, he takes a deep breath and his cock throbs in response, sliding one of his over the top of your head to, perhaps, encourage you to continue. 'You're sure you don't wanna ride me, now...? I'm in position and everything, you just needed to take a seat...";
	WaitLineBreak;
	say "     You know he wants it, but you really are here for his body, to kiss each muscle and worship all that strength. Soon, you feel him bouncing a little, and for moments, you are unsure why, but a look over to his crotch reveals why. The werewolf brute got so turned on that he could not help himself but stroke his cock as you continued to kiss and rub him all over. 'Fuck yeah... Massage my body... Feel these muscles... Feels so fucking good!' At some point, your mouth has moved to one of his arms, which he flexes as your lips run over his biceps and triceps, and a little over his armpits, as well. They send you this musky animalistic scent, as expected, but the werewolf seems to really like having you kissing him there.";
	say "     As he picks up the pace with his stroking, you feel his powerful arm surrounding your neck and skull, then pulling you to him as your face becomes squished against his pecs. This has caused your lips to come in direct contact with his nipples, which are, apparently, very sensitive. He does not voice it, but a moan is all you need to know what he wants, and you see no issue in not giving him what he craves. With your tongue on that sensitive nub, he lets out a louder moan as strokes his cock faster, still pulling you against his pec as an enthusiastic gesture. 'Suck on them... You're getting me close...' He lets you know, and the best move you can possibly think of is to join efforts with another hand of yours to stimulate his other nipple, effectively handling both his pecs and nips for additional pleasure.";
	WaitLineBreak;
	say "     Feeling that pec under your palm and the hard nub rubbing against your hand is enough to send the werewolf into a lust frenzy, zoning out as he continues to jerk off, only moaning and whispering to you how much he is enjoying this. 'You could've had this load in you... I know you'd like it, pup...!' He also keeps on teasing you as his orgasm draws closer, and with a steady rhythm, he eventually gets there. 'Here it comes... Fuck yeah!' With a shout comes his swollen knot, then the first spurt and the second... Eventually, he is cumming like a geyser as you wiggle your tongue and finger around his nipples. There is so much cum being shot out of that cock that you think he could make you look pregnant if you took all of it inside you. 'Fuck, it's so much cum...! Yes! Lick me...!";
	say "     As his orgasm continues, you dare not to stop stimulating him until the end. He goes at this for about a full minute, seeming so incredibly turned on by your efforts and love. Though, it eventually subsides, and you realize he has caused a huge mess all over himself, with some of his seed having landed on your shoulder, arm and even the back of your head. Now, he catches his breath as you give him a few final kisses on his bulging pectorals, swelling and shrinking with each inhale and exhale. 'Fuck... I can't believe I came so much from that... Just get outta here, now. You made me waste a big fucking load!";
	WaitLineBreak;
	say "     The werewolf brute says nothing more, simply lying down on the ground for a moment, paying no mind to you as you take your leave.";
	CreatureSexAftermath "Werewolf Brute" receives "Other" from "Player";

to say WerewolfBruteLosesHandjob:
	WaitLineBreak;
	if fightoutcome is 11:
		say "     Having downed such a huge werewolf beast all by yourself, in your own way, you figured that you also deserved a reward for your efforts. So, you start walking towards him, and the beastman only continues to look at you, his begging gaze as obvious as the erection he built. But you are not going to sit on his big dick, as he requested, no. First, you crouch down next to him, give his leg and nice and gentle pat, then move your hand towards his crotch as you signal your first intentions. 'Yeah, touch it... Give it a good rub...' the beastman tells you, but you have to show him who is in charge, here. You do as you please, only touching as much as you want, whenever you want and wherever you want.";
		say "     'I'd fuck your brains out if you let me... It'd feel so good...' he keeps on teasing you, too, as his meat only keeps on throbbing and leaking with every touch you give it, or when you are feeling up his large nuts hanging underneath his cock. With both your hands now at work, you slip yourself in between his thick lupine legs for better reach as you position yourself to provide him with a proper handjob. His dick is absolutely enormous, fitting his general size, reaching a foot and half of length while being thicker than a can of soda, all this without accounting for the knot at its base, which you imagine would be extremely effective at locking its receiver in place after an intense fuck.";
	else:
		say "     Having downed such a huge werewolf beast all by yourself, you figured that you deserved a reward for your efforts. So, you start walking towards him, and the beastman stops moving a bone, looking at you coming cautiously. 'What do you want?! Having... Ugh...! B-Beating me up wasn't enough for you?!' he asks, and the werewolf seems really angry at you! However, as you crouch down next to him, you give his leg a nice and gentle pat, moving your hand towards his crotch as you signal your intentions. 'Fucking little perv... Couldn't just leave me without having funny ideas?' he exclaims, but as your hand slips onto his thick furred sheath, a red tip begins to emerge immediately after, betraying the beastman's discontent.";
		say "     'You're lucky I'm sore, or I'd flip you over and fuck your brains out, right now...' he keeps on taunting you as his meat grows to a full erection pretty fast, then only harder and harder as you rub and caress it, then feeling up his large nuts hanging underneath and back to his shaft, now both your hands at work as you slip yourself in between his thick lupine legs for better reach. His dick is absolutely enormous, fitting his general size, reaching a foot and half of length while being thicker than a can of soda, all this without accounting for the knot at its base, which you imagine would be extremely effective at locking its receiver in place after an intense fuck.";
	WaitLineBreak;
	say "     For now, you are the one doing so to the werewolf (keeping him in place, that is) as you continue to feel his sizable rod as much as you want, stroking and rubbing it as you deem appropriate. With how much you got him hard, he simply concedes, letting you do anything you want with his pulsing erection. Having a dick this big in your hands fills you with ideas, but for now, you merely want to give it a really nice stroking as you move your hands up and down along his thick red shaft. He lets out several long moans as you take your sweet time rubbing his meaty dick all over, only jerking him faster once you are satisfied with your touching. As you pick up the pace, sliding your hands up and down at a quicker rate, the werewolf begins to grit his teeth at the anticipation of an explosive orgasm...";
	say "     But you want to keep him on the edge for a little longer, and so, you alternate between quick strokes to slow and steady caresses around his manhood and nuts. The first thing you notice as he comes close to erupting is his knot wanting to swell, which gives you a clear sign of how close his point of no return gets. With a little more time, you get the beastman taking deep breaths as he begins to get impatient, trying to take things into his own matters... And you shove his hands away the second they come too close to you. 'Fuck...! Just make me cum, already...! Don't you wanna see how much I've got in me?' he asks, in almost an attempt at persuading you, but perhaps you should allow him the release, since you have spent enough time here, already.";
	WaitLineBreak;
	say "     To his joy, you resume your fast stroking, jerking his cock at a good pacing. The effect is almost immediate as his knot begins to swell and a full geyser of cum erupts from his member, shooting all over his own body, leaving a thick trail of spunk along his fur-covered chest and abs. Softly rubbing his shaft, now, you let him have his last moments of pleasure until the last drop oozes out. He nearly howls once his climax subsides, and this means it is time for you to get your hands off him, stand up and begin to leave.";
	say "     The werewolf brute says nothing more, simply lying down on the ground for a moment, paying no mind to you.";
	CreatureSexAftermath "Werewolf Brute" receives "Other" from "Player";

to say WerewolfBruteLosesXaedihr:
	say "     You look over to Xaedihr, who seems quite unimpressed with the whole display, and have this idea of asking if he would like to join you in subduing the brute in more fun ways. He has his arms crossed, looking down on the werewolf beast with an expression of contempt. 'I mean, is he even worth it? Such a pushover... Acting all powerful and dominant, then ends up losing a confrontation like this so easily, with so little effort. The question really is if he deserves our attention...' he replies as he begins walking towards the beast. The sight is somewhat spectacular, as despite the werewolf's much bigger size, the half-demon does not even flinch as he puts his boot over the brute's junk. 'What do you say, puppy? Are you worthy?' asks Xaedihr with a sarcastic tone, pressing his foot harder against the large wolfman's furred sheath and causing him to whimper. You see, however, that the creature's eyes are filling with rage...";
	say "     But before the werewolf has a chance to react, Xaedihr raises his hand and makes dark tendrils appear from the ground, quickly wrapping themselves around the brute's arms and legs and pulling them down, effectively immobilizing him, belly up and with his back on the dirt, leaving his privates fully exposed and in plain view. 'Don't you even think about putting those claws on me, beast. I have other plans for you that involve you staying still.' The sorcerer then makes another gesture and causes a sort of glowing red orb to appear, which then you see floating in his direction. As the tendrils continue to travel through the werewolf's body, he is forced to spread his legs and raise his butt, but the brute continues to struggle against his bindings. It is then that you see this orb nearing the wolfman's ass and disappearing right inside it, which causes him to moan and grunt uncontrollably as he squirms around.";
	WaitLineBreak;
	say "     What you see next is almost incredulous, if you did not know Xaedihr to be a magician so full of surprises. The werewolf brute remains still after a while, with the hardest raging boner you ever saw on one like him, panting and lost in bliss, and that is only judging by his expression. 'That's a lot better. A magic orb of pulsing energy attached to his prostate is all that's required to turn an enraged wolf into a harmless pup[if player is male]. Though I'm afraid that means you'll have to bottom, lest you want that orb to affect your dick on your way there and leave you in a lusty stupor, which I'd prefer to not have to deal with, please[else]. And luckily enough, you don't have a dick, so that means you could only ride him, anyway. If you were to fuck that hole, you'd probably fall into a lusty stupor, which I won't have to deal with, thankfully[end if]. With this said, I'm taking his mouth for personal relief.' As the sorcerer just informed you, he begins to move over the brute's head, leaving his crotch entirely available for you.";
	say "     Now that the tendrils have pulled the beast back onto the ground, you find it a lot easier to just climb over him, if you wanted to do so. Given how ready he looks, you do not even give it much thought. Looking at your own [if player is naked]naked body, you ready for action[else]body, you unclothe yourself to get ready for action[end if] and proceed to walk up to the immobilized brute. His red cock, thick and throbbing, even leaks as you approach, all while your mage companion sits on the werewolf's face with his round bubblebutt turned towards you. As you take hold of that large lupine cock and lean it towards your [if player is female]wet curls[else]hole[end if], you get to look at Xaedihr's strong back and ass, even catching a glimpse of his footlong being shoved down the brute's muzzle, who offers absolutely no resistance. As the sorcerer has to keep his legs spread and lean forward, you even get to see his butthole, though you think he knows he is also putting on a show for you. With that long black jacket he is always wearing, you barely get to see how thick and muscular his body actually is, normally!";
	WaitLineBreak;
	say "     With an added visual entertainment, this just got a lot more enjoyable as you begin to sit on the werewolf's cock. That thick shaft of his is somewhat of an issue, at first, but you manage to relax your [if player is female]your lower lips[else]butthole[end if] enough to let it press into you and enter. You notice him trying to thrust into you, but Xaedihr's magic tendrils are keeping his hips still, denying him any movement, which you imagine would feel very frustrating. But as you feel the brute's prick continuously throbbing inside you, he must enjoy this sensation of helplessness way more than he would like to admit under other less unfavorable circumstances. As your [if player is female]folds[else]hole[end if] stretch around his girthy meat, the sorcerer shoves his whole cock down the brute's throat, grabbing his head and holding it in place as he thrusts into him.";
	say "     'Even the most brutish of the beasts can be a nice and tame puppy. Just sprinkle some fun magic and you got yourself a willing servant, right pup? Who's a good boy?' you hear Xaedihr tease the brute, even slapping him lightly on the cheek, and surprised to feel his cock throb so much inside [if player is female]your pussy[else]ass[end if] upon hearing this and whimpering. It only makes it feel better as you carry on riding the wolfman and squatting down on his big cock, feeling it push through your insides progressively deeper. This turns out to be quite a workout for your legs, but the pleasure you are getting from it is all worth the trouble, especially with a view like this";
	if player is submissive:
		say ". Watching the sorcerer throatfuck the brute in such a dominant way turns you on in unexplainable ways, imagining what he could do to you if he were to turn around and use your mouth like he is using the werewolf's, all while you ride the beast's large cock all the way until he is knotted inside you.";
		WaitLineBreak;
		say "     Your drooling face is soon noticed by the half-demon, who happens to glance over his shoulder and back at you. 'Oh, my... You must be having a blast with such a view, huh... How about you lean over here?' he asks, placing a hand over one of his buttocks and pushing it to the side, giving you a clear shot at his hole. 'Eating this ass while taking that big dick in you... I'm sure you can also be a good [boygirl]...' he says, with a smirk on his face that further triggers your submissive tendencies into taking hold of your decisions. You just do as he says... which ends up turning you on even more.";
	else:
		say ". That butt keeps on looking juicier by the second, his buttcheeks clenching and bouncing as he throatfucks the brute in such mesmerizing ways.";
		WaitLineBreak;
		say "     Then, the half-demon happens to glance over his shoulder and back at you, noticing where you eyes are [if player is male]. 'Don't get any ideas, big [boygirl]. If you want this ass, it's only your tongue that may go in, if you're that desperate for it[else]. 'You like my ass that much? Damn, should've sat on your face, instead. But you can still put it right between my buns and give my hole a good licking, if you want[end if],' he says, with a smirk on his face that just further turns you on. Maybe you shall just do that, given how tasty it looks and how easy it would be for you to reach it, and you do not get an offer like this everytime...";
	say "     With that cock still in your [if player is female]pussy[else]ass[end if], you lean forward to place your head right between Xaedihr's asscheeks, leading your lips to his soft and smooth butthole as he pushes his rear against you, to make sure your mouth rubs against that pucker hard enough for his liking. To give yourself some additional support, you place both your hands on his buttocks, plump and filled with beefy muscle, even feeling your fingers sinking into his silky skin a little, and begin to eat that tasty and sweet ass like it was your daily meal. Your efforts cause you to wiggle your lower areas with the werewolf's cock throbbing in you, and eventually, you resume your squatting as you push your tongue into the sorcerer's ass. 'Fuck... This feels better than I... anticipated...'";
	WaitLineBreak;
	say "     You do not think a lot of time has passed until you hear your companion lose his control, moaning as a great wave of pleasure surges through him. You can feel the ring of his butthole surrounding your tongue quiver as he begins to shoot his abundant load right down the werewolf's throat, who had been sucking on Xaedihr's cock all this time. Followed by him, your [if player is female]cunt[else]ass[end if] also earns its share of cum fill as the beast, without even having knotted inside you, just openly bursts inside you, its force enough to slowly push your rear away from his wild shooting prick, then getting cum to rain everywhere around you in a shower of lupine manjuice, coating both you and the sorcerer in multiple areas. You, too, end up [if player is male]busting your nut with such force that you nearly fall to the side as your legs get weak[else]quivering in a climax of pleasure that nearly makes you fall to the side as your legs get weak[end if].";
	say "     'Fuck...!' Xaedihr exclaims, as he sees that the werewolf still managed to cover you both with his cum. 'These guys cum a lot, don't they?! I can see why you keep coming back to them...' You do not think he meant that in any bad way, perhaps because he could actually enjoy this particular trait from the werewolf brutes. Your furred partner has, however, fell asleep after that, probably due to all the ordeals you both just made him go through. With this over, you slowly walk out from the top of the brute and meet your partner to your right, who is beckoning you to approach him. And ,as you do, he grabs you, pulls you close to him and kisses you on the mouth. Both your cum soaked bodies rub against one another as your tongues intertwine and wrestle together for like half a minute, and you even feel his cock twitch.";
	WaitLineBreak;
	say "     He then pulls out, realizing your current conditions. 'Shit, I'm still horny. Must be all this fucking cum and the musk... We gotta get going before we end up fucking each other, again... Yeah, I know that doesn't sound too bad, right now, but I might not be able to get a whole group of these beasts under control if his pack finds us, so...' he then steps back, letting go of you, and proceeds to cast another spell, this one being some sort of quick magic that flows through the both of you and cleans you all up, from head to toe. 'There, ready to put our clothes on and start walking away. This was fun, though... We're ought to do this more often, I suggest.'";
	say "     You are happy, your companion seems happy, but he is right, you should go. With this in mind, you grab your stuff, Xaedihr grabs his, and you both get ready to leave.";
	if loyalty of Xaedihr < 30:
		say "     [bold type]You've bonded with Xaedihr a little more.[roman type][line break]";
		increase loyalty of Xaedihr by 1;
	if player is female:
		CreatureSexAftermath "Player" receives "PussyFuck" from "Werewolf Brute";
	else:
		CreatureSexAftermath "Player" receives "AssFuck" from "Werewolf Brute";
	CreatureSexAftermath "Werewolf Brute" receives "OralCock" from "Xaedihr";
	CreatureSexAftermath "Player" receives "Other" from "Xaedihr";

to say WerewolfBruteLosesDarkTyrant:
	say "     As you look at the brute, the darkness within you speaks in your mind, filling your body with a slowly erupting but lingering bliss as it tempts you to let your true desires become a reality. 'This werewolf brute wishes to be even bigger, even stronger, more virile... a true alpha of his species. He hates the fact that he lost against you, feeling weak and powerless. His darkest desires allow me to possess his body and grant him his wish, but more importantly... we can enjoy our captured prey together as I sip on some of his essence. We won't hurt him... it shall only be very pleasurable for us all...' Not even thinking twice, you allow this to happen as your symbiotic partner begins to emerge from you in the shape of dark goo, flowing towards the brute.";
	say "     'What... What's happening?! What are you doing?!' The brute seems to be startled, but you tell him to not resist, as it is something that will make him feel [italic type]very[roman type] good. Once the darkness has touched him, the brute relaxes, except for his cock, which springs to attention at the mere touch of the dark goo. 'Wait... This feels... so good... W-what is it...?' he asks, as the bound between you is set. You then begin to feel as if the goo was enveloping your body, the same way it is wrapping itself around the brute, both of you tethered to one another by a shadow link. You feel the brute's pleasure as he feels yours, and suddenly, a smirk draws itself across the werewolf's muzzle. 'Yess... I want it... Please, give it to me...' he begs, and the symbiosis provides...";
	WaitLineBreak;
	say "     Before you, the werewolf begins to grow even larger, even stronger, his muscles trembling and slowly swelling up as he continuously grunts. His cock, throbbing and leaking copious amount of precum, only throbs harder, then thicker, then longer... He cannot even move as the pleasure overwhelms him - and you, in consequence, - only growing bigger, stronger, harder... He becomes an even larger brute, the equivalent of a bodybuilder in werewolf brute standards. 'More... More!' he shouts, and you know he seeks more of this intoxicating power, so the darkness provides. He continues to grow even bigger, especially his cock and balls, reaching a point of absurdity. The brute's nuts are so big and full they begin to drop low and swelling, approaching his knees with their size alone, looking more like massive beachballs hanging underneath the trunk of a tree...";
	say "     'So big... so powerful... Yes...! Everyone will bow to me... Everyone will serve me... I'm the biggest...!' The tyrant yet continues to grant his wishes, the evergoing growth, to seemingly no end. It comes to a point where the weight of his endowment is so great the brute falls on his knees, balls and cock continuing to grow, with so much cum contained within only two testicles that have grown to ridiculous dimensions. 'I've granted his wish, so now... we must claim our payment,' says your symbiotic partner as you perceive your body moving on its own towards the brute, who is panting happily while looking at you approaching him, having fallen on his back as his huge cock throbs, pointing upwards and leaking like a broken faucet.";
	WaitLineBreak;
	say "     'I want to fill you up... breed you... impregnate you... make you mine...!' the werewolf grunts, and you almost cannot believe you are doing this, walking up to the brute and bending over to him, showing him your [if player is female]pussy[else]ass[end if], rubbing it for him, tempting him to come for it and fuck you. In fact, you find yourself wanting it, badly, as your body remains oversensitive and yearning for sexual pleasure. The brute is immediately seduced by the opportunity and, with a surge of power, he manages to get behind you, ready to take you on a doggy style. The size difference is very significant, but you feel like you can take it without a problem thanks to the Dark Tyrant's power.'";
	say "     In fact, your whole body seems quite more elastic and malleable, a feeling that you are not really used to, but as soon as the brute presses his giant cock against your [if player is female]wet curls[else]anus[end if], you feel at ease, as your [if player is female]pussy[else]ass[end if] swallows the brute's cock to however deep he wants to go. This excites him, and soon, he proceeds to pound into you with the horniness of a beast in heat, his dick so huge that you can see its tip protruding in your belly. This shocks you for a moment, but you know this to be your shadowy companion's doing, even as the otherworldly pleasure feels as real as everything looks.";
	WaitLineBreak;
	say "     'You'll carry all my pups... We'll make tons of them! An entire pack of my own...' He is so big you can feel his balls collide against your legs, heavy and so full of cum you have a hard time imagining how you will fit all of that inside you, but everything is prepared for that event. As the massive girth of his cock stretches your entrance, you bounce your rear against the brute along his thrusts, showing him that you are oh so very into this. He then grabs you by the hips and really starts fucking you with the force and power of a battering ram, lost in his desire and lustful thoughts of breeding you over and over again... It is then that your symbiotic companion decides to ramp it up, his dark gooey form appearing behind the werewolf with growing tendrils spreading all over the brute.";
	say "     These extensions of the Dark Tyrant head for all his erogenous zones, further stimulating him with rhythmical pulses and thrusts, and you can already feel the brute's cock throb intensely as he reaches his climax. Once he gets really close, he pushes his entire manhood inside you, the swollen knot squeezing past your [if player is female]labia[else]anal ring[end if] as he grunts, deeply and loudly, almost like a roar. 'Ooh yeah, here it comes...! Hnng...! Hope I don't make you pop just yet...!' You feel it all coming, spurt after spurt, all that warm beastly cum pouring into you and quickly filling you up in a matter of few seconds, and it just goes on and on... Your body makes space for it, swelling up to catch all his jizz, inflating like a balloon as you feel your entire insides becoming almost only wolf cum.";
	WaitLineBreak;
	say "     You quickly realize that, though, your body has not really changed at all. Your symbiotic partner has simply used you as a vessel and soaked up all the brute's essence on his own, leaving your mortal form safe and intact. He only made you feel the pleasure from this encounter in impossible, even magical, ways, which inevitably brought you to your own orgasm, drained by his gooey form that tethered the both of you. As the shadow retracts, you see the werewolf in his normal form and size, though he still remains knotted into you. The whole ordeal exhausted him, and he now fell asleep as his knot slowly deflates, only allowing you to walk away several moments later.";
	say "     'This was exceptional. Delightful. I look forward to twist your encounters into utter bliss and pervertion even more times in the future, my friend. Together we'll grow even stronger... And have a lot of good fun.' The now enormous goo giant then returns to his dark and misty form, enjoying the boost he just got from this in the safety of your form's shadow. Or, at least, you think that is where he goes. You are actually not sure where, in the physical world, he stays when attached to you, even though his presence is made well-known.";
	if player is female:
		CreatureSexAftermath "Player" receives "PussyFuck" from "Werewolf Brute";
	else:
		CreatureSexAftermath "Player" receives "AssFuck" from "Werewolf Brute";
	CreatureSexAftermath "Werewolf Brute" receives "Other" from "Fallen King";
	NPCSexAftermath Player receives "Other" from Fallen King;

to say Werewolf Brute Desc:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		project Figure of Werewolf_clothed_icon;
		say "     In front of you stands a really, really big and burly lupine beast, which resembles an actual werewolf from one or more fantasy stories. You can clearly tell it is a [']he['] given the sizable sheath hanging between his legs. The beastly brute is also abnormally large, being about twice as tall as an average person, and has a hulking frame capable of smothering a smaller prey into submission if caught in his grasp, covered in a coat of gray fur. His fangs are sharp, as well as his claws, a very dangerous sight to have. As his tail twitches, he looks over to you with an inquisitive look, cautiously approaching you with his intimidating presence.";
		if scalevalue of player < 4:
			say "     'Now, who's this puny thing? Another playtoy?' he asks, chuckling to himself. 'You better know your place, or you're gonna get thrashed pretty badly.' With this, the werewolf brute readies his claws to attack you.";

Section 2 - Werewolf Brute Lair Scenes

to say WerewolfBruteLair:
	say "     Though, as he moves to inspect you and decide on a course of action, he stops, thinking to himself. Then, a grin forms across his muzzle as he looks down at you. 'Heh... Y'know what... You've been coming around so often, that only means you must like big werewolves. Isn't that right?' He then grabs and pulls you to him, giving your face a long lick as your body is nearly smothered against his furry bulk. 'I know a place with lots of them, and they'd probably like you, too! Imagine all these huge, burly, furred beasts like me, with big hard cocks, full balls with pent-up loads, all yearning for your attention...' He hugs you tighter as he speaks, growling in joy, and then gives you another lick while his erection comes to poke at your leg.";
	say "     'Hrng... I've popped a boner just thinking about what we're gonna do to you...' He comments, as indeed, his red rod has left the fur sheath. 'Hope you can swim, lil['] pup. You've seen how much one of us can cum... heh-heh...' The werewolf ends with a slow smirking chuckle before he throws you over his shoulder, keeping you there as he grabs your butt... To hold you there, of course. And to feel it up, too, as he nonchalantly walks away. Those strong paws of his do actually feel pretty nice against your buttocks as he squeezes them[if player is not naked] under your clothes[end if], even occasionally sliding a finger in between to rub at [if player is female]your sex, further ahead[else]your hole[end if]. It looks like he wants you to enjoy your trip over to wherever he desires to take you.";
	WaitLineBreak;
	say "     Being too weak from the fight before, it really is no challenge for the hulking werebeast to carry you on his shoulder, and it definitely is not any easier for you to offer any resistance - that is, if you wanted to - when you are actually feeling so good from his stimulations. Maybe that is his strategy to keep you quiet and still, which is, without any doubt, working fine, so far. In fact, it works so well that you end up completely distracted by it and barely realize you are approaching a cave. As the moonlight is replaced with pitch black darkness, you start hearing multiple huffings, growlings and howlings from within this place, the beastly smell of lupines soon reaching your nostrils as the werewolf brings you deeper inside.";
	say "     'We're almost there, pup!' The huge beast gives your ass one final, playful slap as he carries on walking further in. Fortunately, the darkness seems to go away as some lit torches at the cavern's walls illuminate the way and the rooms ahead. Inside, you see several werewolves hanging out with each others, but more important, many more down on a nearby pit... fucking. Not just fucking between themselves, but also some more [']prey['] they have caught. Your captor seems to still want to have his fun with you, as his cock has not gotten any softer ever since he caught you, swinging around in plain sight on its full glory as he brings you down to said pit. He then whistles to a nearby group, who immediately come closer.";
	WaitLineBreak;
	say "     'Hey boys! Caught us some fun for the rest of the night! Let's fill [ObjectPro] up!' The werewolf then taps your ass as he brings you to the ground[if player is not naked], hastily removing your clothes and tossing them to the side[end if]. Now, you are lying down on the dirty floor with your body completely exposed to the group of hulking werewolves circling you, all male with the fullest balls and hardest red cocks, eager to get started. They seem to be so excited that you can see them already stroking themselves, tongues out and panting at the idea of ravaging you together. 'I wanna have [PosAdj] mouth!' one exclaims, 'I want [if player is female][PosAdj] pussy[else][PosAdj] ass[end if]!' another says, 'I'm sure we could make [ObjectPro] take two of us [if player is female]in both [PosAdj] holes[else]in the same hole[end if]!'";
	say "     Your captor, however, steps up and stops them from going all wild on you. 'Hey, piss off! I'm the one who captured [ObjectPro], so that means I get to call the shots, runts!' The others whine at this brute's claim over you, but they cower and oblige as he approaches you. 'We've still got unfinished business, right?' The werewolf asks you as he places his throbbing cock in front of your face, looking down at you with a grin. He is not forcing you to do anything, but the beastly scent, his confident pose and the entire sight just compels you to give it a kiss. Then, a lick. Eventually, you are simply sucking on it, wrapping your lips around the girthy meat and sliding it deeper into your mouth. 'That's it, pup... Teach the boys how it's done. Make them jealous, too...' He ends that last sentence with a slow and mocking chuckle as he turns to the rest of the group from the corner of his eye.";
	WaitLineBreak;
	say "     As he pumps his rod down your throat, the remaining werewolves stroke their meats while they watch you give your captor a really good sucking, putting on an effort at pleasing the smiling beast. You think he might be getting off more from the fact he is being watched by his mates, receiving a blowjob from the prey he has captured, than from that by itself. 'You're a pretty eager one to please, aren't you, pup?' He pets you like one, caressing your ears as he leans down to look closer at you. 'Wanna share the love with my brothers? Or would you rather keep sucking this cock as they watch? Since you're loving it so much...' He directs you this question and leaves the decision in your hands.";
	LineBreak;
	say "     [bold type]Do you wish to continue sucking your captor's cock? Or would you rather have the others join in?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Keep sucking this cock.";
	say "     ([link]N[as]n[end link]) - Blow the others, as well.";
	if Player consents:
		LineBreak;
		say "     You love this one. Big, thick, juicy and, most importantly, throbbing hard. It belongs to your captor, the one who worked his ass to bring you here, and he is the one you are going to offer the pleasure to use your mouth. He puffs his chest and lets out a loud chuckle, his rubbing on your head intensifying as he pulls you to him, forcing more inches of his manhood down your throat. 'Hah! That's my pup! Loyal to [PosAdj] master! That's right, you suck my cock and have the others watch as I fuck your tight little throat, yeah?' The other werewolves groan in protest, even cursing at your captor, 'C'mon, you asshole! You're not gonna take [ObjectPro] all for yourself, are you?! What about us?!' He does not care about this, only giving them a smug face.";
		say "     'Well, then get your own fucking bitch! For now, [SubjectPro] gets to suck my cock and you get to watch!' Your captor continues to thrust into your throat as he angrily replies back to his comrades, who limit themselves to stroking their cocks. They might have complained, but they are still rock solid and beating their junk like this was turning them on so much, an indeed curious dynamic among the werewolves['] clan. In the meantime, your jaw is numb with how much you have to stretch in order to get that big monster of a lupine dong in your mouth, nearly choking on it every time the beast thrusts in deep. His large, full furred sack bounces back and forth, hitting your chin whenever he makes a faster move, and all you hear is the constant huffing, grunting and moaning from the excited werewolves.";
		WaitLineBreak;
		say "     With how heavy his balls seem, you figured it would be a good idea to cup them in your hands, a move well received by your partner, who smiles in joy. 'That a good pup, taking the initiative to rub [PosAdj] master's balls...' He then lets out a pleased sigh as he slows down, letting you taste his cock with your tongue and give him a better amount of attention. 'Mmh... They feel better, now, thanks to you... And filling up reeeally good, too...' You do not know why, but this seems to excite him a lot as he is thrown into a blissful trance, truly enjoying your efforts at blowing him. Unfortunately, it is interrupted by one of his brothers, who seems impatient, 'Can we cum on [ObjectPro] now?! MY balls are aching!'";
		say "     'For fuck sake, let me enjoy the nice things for one second!' says the large werewolf whose dick is throbbing like mad in your mouth, seemingly at the verge of bursting into a crazy huge load. For now, though, it only leaks copious amounts of precum, which taste so good you cannot get enough of it. 'Fuck off, I'm gonna cum on [ObjectPro] now!' exclaims one of his comrades who, inadvertently, walks closer to you and, with a prolonged moan, lets out his generous deposit of cum all over your face and your captor's crotch. What could trigger annoyance in the hulking beast is turned, instead, into a peak of arousal as he sees his mate covering you with his jizz, which makes him inevitably being to unload his in your mouth. 'You little fuck...! Hnng pup, you gotta take it!'";
		WaitLineBreak;
		say "     His warning comes too late, as the first mouthful arrives and nearly makes you choke, forcing you to swallow an insane amount of werewolf cum like you were chugging down a large bottle of the stuff, all at once. The others take this as a signal to join the cum shower, and they too jerk off as fast as they can until they shoot their loads all across your body. Between the cock in your mouth force-feeding you buckets of cum that make your belly swell, you become completely coated from head to toe in lupine manjuice, lost in a cacophony of grunts and moans as they cover you in white cream. Your captor's balls were especially full, you are not done drinking his load even after half a minute, still swallowing drop thick drops of it and feeling your body getting heavier and fuller by the second.";
	else:
		LineBreak;
		say "     How could you refuse all those cocks?! Big, thick, juicy and, most importantly, all throbbing hard, yearning for your attention and all around you... Even the scent feels like a heavenly dream that only leaves you aroused at the thought of offering pleasure to so many at once. Your captor sees how hungrily you eye all his werewolf comrades and assumes you have made your decision. 'My pup wants to take them all like a champ? Well, boys... you're in luck. Looks like someone's insatiable!' He the pulls you away from his cock and beckons his comrades to come closer. 'C'mon, y'all! Make yourselves at home! Everyone gets some head!' The boys begin to approach with their cocks in hand, eager to put you to work.";
		say "     As their manhoods come close to your face, your mouth instinctively opens to welcome them, the girthy red meats filling your mouth, each on their own turn, as you go by them one by one. You usually keep your hands on two, one on each, and your lips wrapped around another at the center. Occasionally, the werewolf whose cock is in your mouth begins to thrust enthusiastically, nearly making you gag as his sizeable erection invades your throat in such a rude manner... But, in all honesty, it does not bother you at all. The sexual energy surrounding the werewolf brutes is so high that it intoxicates you, making you thoroughly enjoy every second a cock is past your lips, the others pulsating in your grasp.";
		WaitLineBreak;
		say "     'Looks like my pup's gonna be a popular cocksucker, ain't that right?' says your captor, who proceeds to grab your head and pull it away from the cock you were sucking on, despite his mate's protests, without really caring much about it. 'Can't help but be a little slut for some werewolf cock, huh? he asks you, looking into your eyes before he slides his meatlog in your mouth, allowing you only to nod... Though you really did not think too much about it, either, 'Yeah... I know... Bet you'd love to stick around and be all my brothers['] cum dump. Let them fuck you by night, cup their growing balls by day, when they're asleep, making sure they build up some huge loads to put in you... Your dream life, right?'";
		say "     'Fuck, bro. That talk's turning me on...' says one of his mates, whose cock you are actually grabbing, 'Yeah, you keep talking like that, we might just have to keep [ObjectPro]...' another says, stroking himself right besides you, 'And cum all over [ObjectPro], too...' says the other one who is getting a handjob from you. 'You want our loads, pup? Wanna earn yourself a coating of wolf juice? Heh... bet you do.' He does not wait for your answer and simply pulls his dick out of your mouth, taking matters into his own hands, quite literally. You are encouraged to stroke the other cocks as fast as you can, and within only a few seconds, the cum rain kicks in. 'Here it comes, pup!' shouts your captor, and before you know it, you are being utterly covered by ridiculous amounts of cum!";
		WaitLineBreak;
		say "     Gallons of it, you could guess, are being delivered all over your body, the force so strong that it leaves your brain and senses numb, only a lust frenzy overtaking you as you let - and want it to - fall on your every spot and corner. You lose yourself in a cacophony of grunts and moans as they cover you in white cream, their loads coming one right after the other until you are no longer distinguishable from the layers upon layers of lupine jizz. This keeps going for so long that you have no idea how much time it passes, thick drops still falling onto you as you inevitably consider how much that would make you swell if they ever wanted to cum inside! With their knots, you would be in for quite a filling...";
	say "     Eventually, it all passes. The werewolves['] orgasms begin to subside and are simply left panting, with the few remaining drops of their loads slowly oozing out of their half-hard erections. 'You'll do a great pup for my mates, I'm sure. You'll enjoy the rest of the stay... Yeah?' Your captor says this while mischievously grinning, and after some prolonged eye contact as he pets your head like if you were, indeed, a pup, he begins to walk away as he gestures to other werewolves to gather around you. These are still energetic ones... Quite horny, hard cocks sticking out of their sheaths, dandling around in many sizes and shapes as they walk towards you... And there are so many of them...!";
	WaitLineBreak;
	say "     You quickly lose track of time as they toss you around, fuck your face, your [if player is female]holes[else]hole[end if], and even rubbing their meats on other parts of your body while they wait, all eager to put you on for a ride or mount you for hours and hours... They do not even address you as anything in particular, just using you as a fucktoy and filling you up with more loads until you cannot even walk. Your entire body feels so swollen that you can only roll around at some point, spread your legs for the next werewolf to fuck you silly while you choke on some other's cock, all while being utterly covered in lupine jizz, smelling like beast fluids and sweat. This mess drags on for what feels like the whole night...";
	follow the turnpass rule;
	follow the turnpass rule;
	say "     Eventually, it all comes to a stop, but you cannot even tell how many werewolves have nutted inside you, only that you find it difficult to walk on your own. That is, because your legs are shaking and have barely enough strength to move an inch. When you look around you, the realization that you have been, essentially, captured by the beasts comes down to your mind. They seem to have put you in a sort of oubliette kind of dungeon underneath the pit where you had the orgy. In here there are a multitude of other people, in various shapes and sizes, who you can barely see, but they all seem to either be fucking, jerking off or not paying any attention to anything else around them.";
	say "     And now it seems you have been added to the werewolves['] collection. Can you, and should you, try to escape this place?";
	CreatureSexAftermath "Player" receives "OralCock" from "Werewolf Brute";
	CreatureSexAftermath "Player" receives "AssFuck" from "Werewolf Brute";
	if player is female:
		CreatureSexAftermath "Player" receives "PussyFuck" from "Werewolf Brute";
	WaitLineBreak;
	move player to Lair Of The Lupines Oubliette;

Section 3 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Werewolf Brute";
	add "Werewolf Brute" to infections of CanineList;
	add "Werewolf Brute" to infections of FurryList;
	add "Werewolf Brute" to infections of NatureList;
	add "Werewolf Brute" to infections of MaleList;
	add "Werewolf Brute" to infections of SheathedCockList;
	add "Werewolf Brute" to infections of BipedalList;
	add "Werewolf Brute" to infections of TailList;
	now Name entry is "Werewolf Brute";
	now enemy title entry is "";
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]He leaps forward and goes to bite you with his sharp fangs.[or]The big werewolf charges and swipes towards you with one clawed hand.[or]The large lupine beastman tries to tackle you, the impact alone being enough to hurt you![or]He comes dangerously close to deliver a flurry of claw swipes at you, fortunately only leaving you with a few scratches.[or]The large werewolf attempts to pin you down under his strong bulk, but you manage to roll to the side and break free, taking some damage in the process.[or]The lupine brute swings his clawed hands at you with two consecutive strikes, cutting through your skin painfully.[at random]";
	now defeated entry is "[Werewolf Brute Loses]";
	now victory entry is "[Werewolf Brute Wins]";
	now desc entry is "[Werewolf Brute Desc]";
	now face entry is "furred, resembling a big and angry wolf with a fierce and dangerous look, lupine eyes and a large mouth covered with sharp teeth, including a couple of respectable fangs.";
	now body entry is "that of a hulking werewolf, covered in large muscles, gray fur and sharp claws in place of nails";
	now skin entry is "covered in gray fur";
	now tail entry is "You have a moderately long fluffy tail swinging excitedly behind you.";
	now cock entry is "[one of]lupine[or]knotted[or]sheathed[at random]";
	now face change entry is "it flows into a lupine shaped muzzle, with a big mouth covered by sharp teeth and fangs. It gives you a fierce and intimidating look";
	now body change entry is "your bones creak and crack as they morph into a brutish and muscular werewolf body, quite powerful looking";
	now skin change entry is "a coat of gray fur flows over your body";
	now ass change entry is "a fluffy lupine tail emerges from above your ass, twitching about lightly";
	now cock change entry is "your shaft swells and thickens with sudden arousal, attaining a red tone and a knot at its base as a sheath forms around it";
	now str entry is 38;
	now dex entry is 17;
	now sta entry is 21;
	now per entry is 15;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 117;
	now lev entry is 12;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 28;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Avalon";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 16;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 4;  [ Size of balls ]
	now Nipple Count entry is 2;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is false;
	now libido entry is 70;  [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "werewolf brute fur";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 50;  [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "werewolf brute man-milk";
	now CumItem entry is "werewolf brute cum";
	now TrophyFunction entry is "[GenerateTrophyList_WerewolfBrute]";
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]furred[or]muscled[or]strong[at random]";  [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "lupine";
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [sexually transmitted infection for when the player loses; can be left empty if they infect with the monster's own]
	now DayCycle entry is 2;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump";  [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Husky Alpha"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 8; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 2; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your ears are drawn upwards to the top of your head and a tooth-filled muzzle pushes forward to give you the head of a proud husky"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a husky with [Head Color of Player] fur"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "furred"; [one word descriptive adjective]
	now Head Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "white"; [one word color descriptor]
	now Hair Style entry is "buzzcut"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "blue"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 10; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 10;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "slobbery"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 7; [length in inches]
	now Torso Change entry is "grey and white fur sprouts all over it, giving you a warm and shining coat"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "covered in a warm coat of [Torso Color of Player] fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "pink"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into blunt claws and grey-white fur spreads over your paw-hands, then all the way up your arms"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] fur, ending in paw-hands with blunt claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of an anthro husky with thick grey and white fur and paws"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro husky, with thick [Legs Color of Player] fur covering them from your hips down to the clawed paws"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes well-rounded, with grey and white fur sprouting over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered thick grey and white fur"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "furry";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a mid-length canine tail sprouts from your tailbone, soon covered in grey and white fur"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "mid-length, [Tail Color of Player] tail"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 8; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "pink"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 4; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 9; [length in inches]
	now Cock Change entry is "it takes on a reddish color and canine shape, complete with a pointy tip, knot at the base and a sheath to protect it"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and has a pointy tip and a knot at the base, as well as a sheath to protect it when not erect"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cock Color entry is "red"; [one word color descriptor]
	now Ball Count entry is 2;
	now Ball Size entry is 3; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a furry, low-hanging sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a canine appearance, complete with a clit at the top"; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player]-colored and shaped like that of a canine bitch, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "pink"; [one word color descriptor]
	now Clit Size entry is 2; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Table of Game Objects (continued)
name	desc	weight	object
"werewolf brute fur"	"A tuft of gray fur that looks like it has been pulled out of the coat of a werewolf brute. It's rather soft."	0	werewolf brute fur

werewolf brute fur is a grab object.
It is temporary.
Usedesc of werewolf brute fur is "[WWBruteFurUse]";

to say WWBruteFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Werewolf Brute";

instead of sniffing werewolf brute fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";

Table of Game Objects (continued)
name	desc	weight	object
"werewolf brute cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Werewolf Brute Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	werewolf brute cum

werewolf brute cum is a grab object.
werewolf brute cum is cum.
werewolf brute cum is infectious.
Strain of werewolf brute cum is "Werewolf Brute".
Usedesc of werewolf brute cum is "[werewolf brute cum use]";

to say werewolf brute cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy fluid cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing werewolf brute cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Table of Game Objects (continued)
name	desc	weight	object
"werewolf brute man-milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Werewolf Brute Man-Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	werewolf brute man-milk

werewolf brute man-milk is a grab object.
werewolf brute man-milk is milky.
Purified of werewolf brute man-milk is "distilled milk".
werewolf brute man-milk is infectious.
Strain of werewolf brute man-milk is "Werewolf Brute".
Usedesc of werewolf brute man-milk is "[werewolf brute man-milk use]";

to say werewolf brute man-milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the reptilian man-milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

instead of sniffing werewolf brute man-milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

Werewolf Brute ends here.
