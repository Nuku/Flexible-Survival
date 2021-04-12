Version 2 of Giant by Gherod begins here.

"Adds Giant to Flexible Survival."

[ Original by Stripes ]
[ Version 2 - Reworked Giant, added and polished scenes - Gherod ]
[ Version 3 - Giant stats nerfed. Expanded with Victory scenes - Gherod]

Section 1 - Creature Responses

giantheight is a number that varies. giantheight is usually 18.

to say giantdesc:
	setmongender 3; [creature is male]
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "     You find yourself faced with a giant of a man standing well over forty feet tall. This makes him nearly as tall as the biggest trees decorating the area, though most only come up to his waist. The towering man has a burly, muscled body to help support his massive height, but not unhandsomely so. He still looks completely human, just grown to a dizzying height. Worn loosely over his chest is huge tan jacket indicating that he may have once been part of the zoo staff. Somehow enlarged or transformed to be a part of him, it is rather worse for wear and hangs loose over his chest, but is still wearable and is the only clothes he has on. He has a gruff expression on his face and has dirty blond hair atop his distant. He carries [one of]a broken telephone pole[or]a metal girder[or]a streetlight[or]an uprooted tree[at random] like a massive club. Between his legs he has another large club, this one of meaty flesh to more than match his enormous size.";
		say "     He hasn't spotted you yet, giving you time to consider your options in the face of such a situation. It seems you could always just [bold type]ignore the giant man and get out of there[roman type] before he has the chance to see you. However, if you're interested in [bold type]observing him[roman type], there are a few areas with tall vegetation where you can conceal yourself in to watch what he's doing from a safe distance. Alternatively, if you're brave enough, you can just [bold type]go talk to him[roman type], but if you think words won't work with him, you can always attempt to [bold type]fight[roman type] the towering, forty feet tall of a burly muscular man that could probably stomp you flat with one strike... Ill-advised, unless you're into being crushed and instigating aggression.";
		LineBreak;
		say "     [link](1)[as]1[end link] - Walk away.";
		say "     [link](2)[as]2[end link] - Hide and watch.";
		say "     [link](3)[as]3[end link] - Approach him.";
		say "     [link](4)[as]4[end link] - Fight the Giant.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to walk away, [link]2[end link] to hide and observe the giant, [link]3[end link] to approach him or [link]4[end link] to enter a fight.";
		if calcnumber is 1: [walk away]
			say "     Seeing how threatening he looks, you don't want to run into any risky situation that could pose a serious threat to your general integrity. With that in mind, you seek a path that you can safely walk through without being seen by the giant as he continues doing whatever he's so focused on. Past some trees and bushes, it's not so difficult to avoid this encounter at all! As small as you are compared to him, it's just a matter of being quiet enough and he doesn't notice you leaving.";
			now combat abort is 1;
		else if calcnumber is 2:
			say "     You think it would be interesting to observe the giant from a safe place. Having spotted just the perfect spot to remain hidden, you quietly and quickly make haste to said area, concealing yourself behind the tall grass and between the trees. Now you have a good angle of view, able to see whatever the overgrown human is up to...";
			WaitLineBreak;
			now combat abort is 1;
			say "[WatchTheGiant]";
		else if calcnumber is 3:
			say "     He's still a human, alright? Even though he grew several feet tall, he must be capable of communication and the sort... Or so you think. Half-confident of your chances, you proceed to walk up to him, trying to call his attention by waving around. He's not hearing you so well, though, so you have to get more creative, maybe by running around him and trying to get within his eyesight. Having finally gotten a reaction out of the giant man, who spots you after your incessant attempts to make your presence noticeable, he [one of]gives a rough, coarse laugh[or]grumbles about animals getting out of their cages again[or]says you look like a fun playtoy[or]speaks softly, saying he'll take care of you, inching forward by a several yards at a time -[at random] and makes a sudden grab for you with one of his meaty fists!";
			say "     It seems your attempt to communicate with the human giant ended up with you being snatched away by him. Maybe you should have thought this through...";
			WaitLineBreak;
			now combat abort is 1;
			say "[WalkToGiant]";
		else if calcnumber is 4:
			say "     He will never be expecting you to come out of nowhere and attack, as you have the element of surprise! Bolstering up all your courage, bravado and enormous will to fight, you leap out of hiding and rush straight into the giant, delivering a totally unpredictable strike to his heel! You keep your flurry of attacks steady, in hopes to bring your enemy down swiftly. But as the giant looks over you while frowning his eyebrows, you realize this isn't being very effective. Having finally detected your presence, the giant [one of]gives a rough, coarse laugh[or]grumbles about animals getting out of their cages again[or]says you look like a fun playtoy[or]speaks loudly, saying that you're being bad and will regret trying to smack him -[at random] and attempts to grab you with one of his meaty fists! Luckily you're able to dodge him, but he doesn't sound very happy...";

to say losetogiant:
	if inasituation is true:
		say ""; [dealt with at the source]
	else if HP of Player > 0:
		say "     Unwilling to continue fighting against the giant, you surrender to him. Noticing that you just gave up, he laughs while grabbing you with both his huge hands and grips you painfully tight. Bringing you closer to his face, you expect him to start talking soon... 'So you come attack me and think I'll just let you go as if it was nothing?! No one messes with my zoo! Not even you!' he shouts, making your entire existence shake with the booming sound of his deep voice. It seems he's well aware that you are an intruder, since you attacked him on sight. Now all you can do is hope that he won't do anything to end your life miserably...";
		WaitLineBreak;
		say "[SubmitToGiant]";
	else:
		say "     You kept on fighting the giant with no surrender, but it seems your efforts were not enough to bring the overgrown man down, only to truly piss him off. In the heat of the battle, he just keeps riposting with everything he has got, until you've exhausted all your strength. This gives him the perfect opportunity to pin you down under his giant foot, threatening to crush you underneath his sole with minimal effort. You have no escape, feeling progressively flattened against the ground as your bones begin to ache, the pressure over you increasing with each passing second. He laughs at your demise, knowing now that you're not just an animal, but actually seeing you as an intruder. 'Came to rob my zoo?! Too bad I've got you pinned down, now. What will you do, huh? Squirm around, trying to escape?' he shouts with his deep, earth shaking voice as he chuckles demeaningly.";
		say "     Forced to hear his taunts as he threatens to crush you against the ground, you're simply forced to remain there at the giant's mercy, hoping he doesn't end your life here and now. His sheer power and overwhelming force are unmatched, and you can't help yourself before this situation. 'I should just squash you like a bug to teach you not to mess with me! But I'm a kind man, so I'll let you live.' You're actually relieved to know that he will spare you, and even more once the pressure that was being exerted all over your body comes to a stop, feeling a whiff of fresh air greeting your face as you try to get up, only to realize that everything in your body hurts.";
		WaitLineBreak;
		say "     'You're still here?! Let me help you, then!' he shouts, grabbing you with one of his huge hands with a painfully hard grip, then throws you past several trees, away from him. You're left sore, bruised, and hurting all over, needing some time to recover from the physical punishment you've just received.";

to say beatthegiant:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "     It seems that during the heat of battle, the giant shows a deep anger for you, preparing for a [bold type]super hard stomp[roman type] on you! But there is a chance you could use this to your advantage...";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Simply dodge it. His move is very predictable.";
		say "     ([link]N[as]n[end link]) - Make him come for you. Chances are that he trips and falls, as weakened as he is.";
		if player consents:
			Linebreak;
			say "     The giant stomps his feet angrily after your final blow, making the ground shake and sending all the nearby creatures in hiding scattering to the four winds. 'You're too much trouble to deal with right now. [one of]I'll catch you later[or]I'll deal with you after I catch them[or]I've got a stampede on my hands[at random],' he booms, charging off in a random direction after the fleeing animals. Glad to be rid of him, you head off, hoping to avoid his attention in the future.";
		else:
			Linebreak;
			say "     It is a crazy plan, but a clever one nonetheless. Amidst his fury, the giant risks a step too long, even for himself, and that causes him to lose balance! You watch the titanic human fall flat on the ground, right on his back, and ceases to move. You still hear his deep, heavy breath, so apparently he just lost his senses.";
			WaitLineBreak;
			say "     Perhaps you could take advantage of this situation...";
			Linebreak;
			now sextablerun is 0;
			blank out the whole of table of fucking options;
			[]
			choose a blank row in table of fucking options;
			now title entry is "Play with his massive cock";
			now sortorder entry is 1;
			now description entry is "Climb his body and have your way with his manhood";
			[]
			choose a blank row in table of fucking options;
			now title entry is "Gather some essence from the giant";
			now sortorder entry is 2;
			now description entry is "Milk him for some of his fluids";
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
						if (nam is "Play with his massive cock"):
							say "[GiantLosesCockPlay]";
						if (nam is "Gather some essence from the giant"):
							say "[GiantLosesCumMilk]";
						wait for any key;
				else if calcnumber is 0:
					now sextablerun is 1;
					say "     Perhaps it would be best to drop it here. No way to know the risks messing with a slumbering giant could pose to you, and it is better to be safe than sorry.";
					wait for any key;
				else:
					say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
			clear the screen and hyperlink list;

to say GiantLosesCockPlay:
	say "     The huge man is fully exposed to you, and he won't be able to offer any resistance in this condition, thrown into such a deep slumber. This proves to be a great opportunity to explore his body, but of course, with one thing in mind... That enormous shaft, laying soft across one of his huge thighs, accompanied by a massive, heavy sack with two full orbs dandling inside. Putting thoughts into actions, you make an attempt to climb his legs up, slowly and carefully, reaching for a holding point on his ankle and balancing your body upwards with all your might, lifting one leg over as you bring yourself on top of his foot, or a little before that. Then, you are finally ready to make your way towards his crotch. You can already sense the manly musk coming from his junk as you approach, sending the good kind of shivers down your spine.";
	say "     In order to keep your balance, you let your hands hover above his leg as you walk, in case you slip. Fortunately, despite the little bump you had to climb over his knee to make it to his thigh, you didn't find anything particular difficult about this, and your prize lays just ahead, soon to be in reach for your touch. Glancing over the giant's face, you realize he is still asleep, and doesn't seem to be keen on waking up anytime soon. Perhaps you will be able to take your sweet time without taking any risks, a conclusion that draws a smile on your face.";
	WaitLineBreak;
	say "     All the efforts eventually prove to be fruitful, as you are finally able to touch his cock. It feels warm, and starts pulsing at the second your palms start giving it a rub, the gigantic shaft beginning to engorge, its veins bulging out as blood begins to flow inside his meat, as it starts to raise ever so slightly with each throb. The formerly soft giant dick eventually assumes a solid erection as it continues to stand up, and you grab on to it so you don't lose your reach. It seems that any movement you make excites the man further, and it reaches one point where it is so hard that it feels like warm pulsating rock in your hands. He has a very generous and gigantic size on his manhood, the shaft being thicker than your body width and taller than you, forcing you to hug it tight as you attempt to climb towards the tip.";
	say "     It appears that your weight is enough to tilt his erection a little towards his abs, making it easier for you to attain a comfortable balance. With gravity on your side, you manage to make it to the gleaming tip, oozing a thick droplet of precum by the time you arrive. While it is apparent that the giant man is totally blacked out and has no real awareness that you are holding on to his manhood, his lusty senses continue to work at their fullest. A few rubs, some kisses, the friction between your body and the enormous cock you are grabbing, everything makes him harder. The more his gigantic log throbs, the more it drools all over you, slicky fluid simply coating your head and descending over the rest of your body as you provide all the lavish good sensations.";
	WaitLineBreak;
	say "     You reach a point that you are merely bouncing your body up and down and humping against his shaft, stimulating the massive dick in as much ways, inches and corners as you can. The momentum is emphasized by the pace that you keep increasing, excitement and lust taking over your mind for a while, causing you to run your tongue over the precum covered glans that assault your buds with a taste of salt. The giant, even asleep, lets out a few mumbling moans as you feel his entire member beginning to tremble and throb at an increasing rate, all a build-up for the sudden explosion of cum that is shot upwards like a powerful geyser, making it rain all around you. Each spurt thicker than the last until it reaches a peak, during what seems like a minute!";
	say "     As it subsides, its still generous quantity falls all over you once the pumping grows weaker, and that proves to be a problem. You lose your grip due to the slippery surface, and fall right on his plump ballsack as his cock begins to lower back to its soft state... approaching you at an alarming rate! In order to avoid being smothered by a half-hard shaft and a pair of emptied orbs, you roll to the side and jump away... into a massive puddle of cum, which makes you fall right down, earning yourself a whole new cumbath. It is fortunate that you came to be on top on this encounter - well, more or less - or that would definitely have an impact on you. Nonetheless, you manage to get up and slowly make it through the mess without waking up the giant. If anything, he should be thankful, though.";

to say GiantLosesCumMilk:
	say "     The huge man is fully exposed to you, and he won't be able to offer any resistance in this condition, thrown into such a deep slumber. This proves to be a great opportunity to explore his body, but of course, with one thing in mind... That enormous shaft, laying soft across one of his huge thighs, accompanied by a massive, heavy sack with two full orbs dandling inside, full of incredibly rare and valuable cum! Surely, you could simply have fun with the thing, but your interests are merely materialistic. Without any further ado, you make an attempt to climb his legs up, slowly and carefully, reaching for a holding point on his ankle and balancing your body upwards with all your might, lifting one leg over as you bring yourself on top of his foot, or a little before that. Then, you are finally ready to make your way towards his crotch. You can already sense the manly musk coming from his junk as you approach, stronger than ever.";
	say "     In order to keep your balance, you let your hands hover above his leg as you walk, in case you slip. Fortunately, despite the little bump you had to climb over his knee to make it to his thigh, you didn't find anything particular difficult about this, and your prize lays just ahead, soon to be in reach for your touch. Glancing over the giant's face, you realize he is still asleep, and doesn't seem to be keen on waking up anytime soon. You will have to be smart about this, or you may very well be overwhelmed by the gigantic log you will have to handle in order to collect your prize.";
	WaitLineBreak;
	say "     All the efforts eventually prove to be fruitful, as you are finally able to touch his cock. It feels warm, and starts pulsing at the second your palms start giving it a rub, the gigantic shaft beginning to engorge, its veins bulging out as blood begins to flow inside his meat, as it starts to raise ever so slightly with each throb. The formerly soft giant dick eventually assumes a solid erection as it continues to stand up, and you grab on to it so you don't lose your reach. It seems that any movement you make excites the man further, and it reaches one point where it is so hard that it feels like warm pulsating rock in your hands. He has a very generous and gigantic size on his manhood, the shaft being thicker than your body width and taller than you, forcing you to hug it tight as you attempt to climb towards the tip.";
	say "     It appears that your weight is enough to tilt his erection a little towards his abs, making it easier for you to attain a comfortable balance. With gravity on your side, you manage to make it to the gleaming tip, oozing a thick droplet of precum by the time you arrive. While it is apparent that the giant man is totally blacked out and has no real awareness that you are holding on to his manhood, his lusty senses continue to work at their fullest. A few rubs are enough to cause the beast of a dick to leak a generous amount of [']essence['] that you are happy to collect into a bottle of your own, a task that you find more difficult than you would like to admit.";
	say "     In any case, your job is now done, and you proceed to slide down over to his enormous, cum-filled balls that just seem to be begging for a release, something you won't give him right now. Instead, you jump out and be on your way, leaving the gigantic man with a massive hard-on throbbing during his blackout.";
	ItemGain giant essence by 1;

to say WatchTheGiant:
	let randomnumber be a random number from 1 to 5;
	if randomnumber is:
		-- 1:
			say "     It seems that you caught the giant on his break, and in the middle of what he likes to call [']playtime['] with some of the critters he's treating. At first, it looks like he's simply jerking off, but in the middle of his fist is an anthro [one of]zebra[or]giraffe[or]rhino[or]tiger[at random] being spread open and full body stretched on the gigantic cock that is almost splitting them in half. It's incredible how they're basically being used as living fleshlights, their insides rearranged to accommodate the massive size of the dong that's bulging out of their shapes. You can hear the giant man moaning as he slides them down and up his shaft vigorously, as they squirm and cry out of their distended forms.";
			say "     Such display leaves you rather bothered, even more so when the overgrown human male finally reaches his orgasm, cum spewing through the animal's mouth and leaking from their orifices, as they swell to hold all of the jizz that is being deposited inside them, ending up in a form that's more similar to a meat balloon that the giant discards back in their pen to [']rest[']. Surely they will need it after being plowed like that by a monstrous several foot long cock.";
		-- 2:
			say "     Looks like the giant is tidying up things around the zoo. Though he's not just cleaning around, no, he's obsessively rearranging objects and other types of things too large for an average person to move around. Nothing seems to be right to him as he spends long minutes trying to get everything the way he wants. But you don't complain, as while he does all this, you get a privileged view at his enormous butt whenever he bends over to grab something off the ground, or to keep aligning stuff. It's almost scary the fact his pucker could fit someone of [if scalevalue of player < 5]your size[else]a normal size[end if] and seal them shut fully buried in his gigantic ass. Actually, you can't help but wonder if that actually already happened.";
			say "     After long minutes, it seems he's done. That is, before he's onto chasing another critter that is trying to escape, making the earth around you shake with each heavy footstep he gives. Looks like your free show is over.";
		-- 3:
			say "     In fact, you wouldn't need your eyes to realize what happened just before you got here. There's an intense smell of sex and cum as you look at the giant trying to clean up his own mess off the area he's been resting at. Not just that, but scattered all over the ground, there are numerous animals of various shapes and sizes, completely bloated and leaking his fluids on top of more puddles of white cream. He's grabbing them one by one, giving them a tongue bath, and putting them back on their places while they're too heavy and swollen to move on their own. You hear him praising them for being good [']playthings['] before the licking starts, and they're only put down where the only cum they have visible is the one leaking out of their abused holes.";
			say "     There's plenty of them, and he surely takes his time giving them all a [']bath['] before returning them to their respective pens. Though you have to leave him at it, as you think he almost spotted you. Better leave now before you're also included in the clean-up session.";
		-- 4:
			say "     You're lucky to find the giant in a not so rare moment of respite, but an unique one at it since he's actually not playing with any critter at the moment. Just him, himself, and his massive dick, rock hard, in what seems to be a jerking off time. The giant is rubbing his muscular chest, playing with his nipples, feeling his entire fit body all over and leaning his head back in pleasure as he truly enjoys rubbing his shaft up and down rhythmically. Even his heavy nutsack bounces almost hypnotically as he keeps going with the deep and powerful strokes, all bringing him closer and closer to orgasm. When his breathing gets more intense, he gets up, looking down at his manhood as he jerks his hips forward...";
			say "     Then he grunts, his voice booming through and making your surroundings tremble, and you're too late to realize his cock is pointed in your direction! You try to get cover from the incoming projectiles of thick cum falling from above, nearly getting hit by the massive spurts that could potentially immobilize you in place, or worse. They completely flood portions of the soil where you could easily sink down to your waist if you tried, and looking up, there are still thick trails of jizz slowly breaking apart to fall down through the leaves and branches. You'd better go before any drop, or even the giant himself as he admires the huge load he just came out, catches you by surprise.";
		-- 5:
			say "     As you observe the giant, you notice he's not just lying down, but is also fast asleep. Probably a nap during his worktime, as you presume. What's interesting to note is that there are a few critters trying to escape by walking around his body, or attempting to bypass his enormous muscles without trampling over and falling from a considerable height. Some find their situations complicated once they head down his manhood, getting stuck in the many hairs of his pubes while trying to slip down to his balls and off to the ground. Worse, the giant seems to be building a raging hard-on the more they move around his shaft, and one of them has to hold tight against the shaft in order to not fall.";
			say "     Problems are not over by then. All this movement makes the overgrown man turn around, just enough to smother some of the critters underneath him, denying them any chance of escaping. You can only wonder how nearly crushed those that were still on his balls are right now, and the one who was holding on to his dick is now pinned down on the ground and getting plentiful of precum gushing down on their face. It seems the giant is going to be very busy once he wakes up, and you definitely shouldn't be here once he does...";

to say SubmitToGiant:
	if BodyName of Player is "Human Giant" and FaceName of Player is "Human Giant":
		SubmitHumanGiantFuck;
	else:
		let randomnumber be a random number from 1 to 2;
		if randomnumber is:
			-- 1:
				SubmitGiantCock;
			-- 2:
				SubmitGiantAss;

to SubmitHumanGiantFuck:
	say "     As if only realizing now that you're a giant like him, albeit much smaller, he lifts you up to your feet. 'Wait a second... You must be that new recruit I was promised! It's about time you got here! Things are a real mess, I really needed an extra pair of hands.' he admits, and you can't help but look confused as to why he's thinking you're some sort of reinforcement when you really just attacked him in plain sight. 'Though you were very bad, attacking me like that! We don't even know each other, yet...' he says, eyeing you from head to toe, before adding 'I think you need your first training lesson.' in the end of his speech. His words fall heavily on you as he bends you over his knee, your ass pointing outwards as he [if player is not naked]removes whatever gear you have covering it and [end if]lands his large, meaty hand on top of your buttcheeks, a loud smack sound storming audibly.";
	say "     'Here you have to obey and respect me, you hear? Maybe this spanking will make sure you do.' he says, as he keeps hitting your ass with vigor, each cheek turning red and burning with pain by the second he keeps slapping your rear. You can't help but grunt, squirm and protest, to no avail, as he continues to spank you as if nothing was happening. 'You were a very bad [boygirl]... I don't think you've had enough.' his taunts continue, and soon, it's not just slapping, but one of his thick fingers actually finding its way between your cheeks, pushing itself inside your anus way faster than what you would find ideal. He keeps burying the entire length of his index inside you while shaking his hand a bit, to make sure you feel that huge wiggling finger stretching your hole.";
	WaitLineBreak;
	say "     'You like that? Think you can take any more?' he asks, but not really awaiting an answer, instead shoving another finger, distending your pucker to painfully wide measures, to which you can only grunt in discontent. The giant pays no mind to you, only continuing to torture your ass as he sees fit, enjoying watching you cry and squirm under his grasp. Your cheeks are still burning hot, and now your hole feels like it's being ripped apart. 'Why are you not standing still while receiving your training? Guess you need more spanking!' he lets you know before rapidly pulling his fingers out of your ass and landing strong, loud slaps, which hurt even more than the first. He spanks you so hard that eventually your skin becomes numb of such pain, and he often alternates from spanking to fingering, whichever makes you cry more...";
	say "     Though there is something that saves you from getting tortured anymore. There seems to be a runaway critter than he needs to chase before they get away. 'Alright, training's over. Hope you have learned your lesson, small fry. Now get back to work while I'm gone.' he orders, after putting you on the ground to chase after the escapee. You're left sore and with the biggest pain in the ass, quite literally.";

to SubmitGiantCock:
	say "     He brings you to his eye level, [if player is not naked]taking every gear you might have had on off and throwing it away[else]rotating your fully exposed body, having a good look at you[end if], to appreciate your shape and so little size compared to his. 'Since you quickly understood that you're no match for someone like me, your punishment will be more fun. For me, at least.' he says, licking his lips with an enormous tongue surging from beneath, before bringing you close to his mouth and give you a long, hard lick all over your body, enough to cover you in his slick saliva. You're fearing the worst when he opens his mouth and gives you a clear view of his gaping maw, looking terrifying from your perspective, but he doesn't seem to actually bring you any closer to his mouth. Instead, he pulls you away slightly, enough to be able to look at you once more.";
	say "     'It would be easy for me to swallow you whole, even!' he says, laughing at you, before adding 'But I have other plans for you...' With that said, he begins to lower you, slowly, past his muscular chest... then over his abs... and onto his naked bottom, as he sits on the ground. Having you tight on his grip, he stretches his legs forward, slightly split, getting comfortable as he yet continues to lower you. When you think he's going to put you down, the direction of his movements change, and you're being brought closer and closer to his enormous cock, with a massive set of balls underneath it, each probably as big as you are tall! 'Enjoying the view down there? Maybe you'd like to take a closer look...' he says, as once more he pushes you in the direction of his junk, his manly scent becoming overwhelming to you...";
	WaitLineBreak;
	say "     Eventually, you're smothered against his warm and plump sack, emanating his scent so intensely that you can only feel slightly lightheaded. He doesn't stop there, however. Lying you down on the ground, facing up, just before his nuts, he releases you from his grasp, but your short period of freedom is suddenly terminated when the giant lifts his cum factories and drops them right on top of you, effectively trapping all your body underneath his huge and heavy orbs, only leaving your head out. 'How do you like that, huh? Enjoying the full size and weight of my balls on you? I hope you do, because you're gonna stay there while I work on this cock.' he taunts you, grinning as he gives his monstrous dong a good couple of strokes.";
	say "     Powerless and unable to move, you can only attempt to wiggle your way out, although his scent is intoxicating, and his balls start feeling incredibly warm around you... Not to mention that everytime you squirm, it seems to excite the giant even further. He begins to stroke with vigor, his nuts bouncing slightly with each hand movement, and their whole weight coming down on you in a serious threat to crush you flat. 'Mmm... you feel good against my testes... Maybe I should keep you as a plaything.' he says, while rubbing his girthy shaft, sliding his hand up and down, slowly and steadily... Soon, a single drop of precum escapes his slit, and since he's a gigantic man, that drop is possibly the size of your face, slowly making its way down his long shaft, slipping in the space between his balls, and descending at the pace of a snail right towards you...";
	WaitLineBreak;
	say "     You have no choice but to patiently await for that drop of precum to fall right on top of you, soaking your entire head and neck with such a salty and thick liquid. It's impressive how a tiny little drop of precum from his dick can threaten to drown you, albeit being quite tasty. So much in fact that you're licking your lips and attempting to taste it with the best of your efforts. 'You liked that? There's a lot more where that came from...' he says, continuing to stroke his titanic dick as more precum is building on top of his glans. With a squeeze, he brings out a few more drops, which fall down his shaft the same way towards you. This time, a lot more of the stuff... So much that he has to wipe it off your face, as you're struggling to breathe.";
	say "     'So puny and vulnerable now... I could let you drown by just letting my precum cover you. That will teach you not to bother me in the future!' he says to you, laughing as he strokes faster and faster... By the sound and trembling his balls are making, he must be getting close. It must be his cum sloshing around and getting ready to be shot out. He keeps you there, trapped underneath, as his movements become harder and even faster, each swing making his enormous nuts pressure against you at nearly painful levels, so much that you can almost feel yourself bouncing together with his sack. 'Ohh... I hope you enjoy the bath...' he says, before pulling you from underneath his orbs, holding you in place in the ground, and pointing his cock at you...!";
	WaitLineBreak;
	say "     It is only a matter of seconds until he shouts 'Fuck... Yeah!' as a ridiculous amount of thick cum is shot in your direction, the first spurt enough to completely cover your body as he keeps on pumping out more and more, further covering you in white jizz until the very last drop leaves his prick. You're left to roll over and desperately attempt to free your nose and mouth in order to breathe, only to slip and sink further in the massive poodle formed by the giant's fluids. He grunts as he squeezes his shaft thorough, enjoying seeing you struggle to get his cum out of your covered face. 'You need help with that?' he says, as he once again grabs you with his huge hand, brings you over his mouth and licks you in every inch and corner of your body, tasting his own man juice.";
	if vorelevel > 1 and scalevalue of player < 5: [cock vore]
		say "     But... he doesn't seem to be done with you, yet...";
		WaitLineBreak;
		say "     'That felt good... but you know... Now my balls are empty...' he says, with a wicked grin forming between his lips as he keeps stroking his still hard shaft. 'I might need something, or someone, to fill them up again... Oh, don't worry, you'll enjoy it in there. It's nice and warm.' You almost can't believe your eyes as you're once more brought down to his junk, and instead of being directed towards his balls around his shaft, he intends to shove you down IN through his gaping slit! Without any further ado, the giant only makes the initial effort to fit your feet in his pee hole, then simply begins to push you down slowly as he lets out a pleasure moan. 'Down my dick you go...' he lets you know, pushing you deeper as your ankles and calves begin to sink in the hot, fleshy tunnel that keeps clenching and pulsing around your legs.";
		say "     As more of you sinks in deeper, the harder his dick throbs, even harder than before, and you feel yourself being pushed lower into his urethra with minimal effort from the giant, as if his cock was doing all the work for him. He barely even exerts any force from his fingers, letting gravity and his cock pulsing over and over slurp you down until your waist in the slowest way possible. There's a wide grin on his face as he sees you being swallowed alive by his own manhood, down to your chest, as he forces your arms inside as well with a painful grip around you. He uses this to keep pushing you in, and soon, you have sunk down to your neck. He lifts your chin with a single finger and makes you look at him one last time. His wide, toothy grin as he moans in pleasure are the last things you perceive before he makes one final push with his index, submerging you completely in darkness as his slit closes above your head.";
		WaitLineBreak;
		say "     You're left to sink in deeper and deeper, the walls of his shaft throbbing and undulating around you as the air becomes damp, moist and hot. The sensation is suffocating as you're hopelessly brought to the base of his cock, only to slip down into one of his testicles, eagerly awaiting your arrival. You can hear and feel his moans vibrating through his enormous body, and suddenly, the fleshy walls around twist and twirl with you inside, as he seems to be squeezing and fondling his own balls to feel your tiny body constrained within. 'There you go... Hope you enjoy the stay in my balls, little fry.' he says, sarcastically, as he torments you with additional rubbing and squeezing, sending you in sickening twirls while you feel your entire body rubbing against the inside of his gonads. It's not long until they begin to refill with his cum, and soon, you're bathing in a pool of it once more...";
		say "     This ordeal continues for hours and hours, his scorching hot semen taking your entire body in as it begins to fill his balls completely once again, threatening to fully submerge you... Eventually, you lose track of time, and you begin to feel your skin seemingly melt and give in to the digestive properties of his warm, hungry cum, that is soon covering you from head to toe... It is then that you lose conscience, blacking out as your senses diminish.";
		WaitLineBreak;
		follow the turnpass rule;
		follow the turnpass rule;
		say "     You wake up hours later, at the shore of a lake nearby, completely naked and accompanied by a massive trail of white jizz. Your body is still whole and you're in good shape, albeit very dizzy and mildly confused towards what happened exactly. By the looks of it, seems like the giant came you out of his balls right before you were turned into his next orgasm, fortunately for you. Walking by for a bit, [if player is not naked]you're also able to find the gear he stripped away, so you put it back on[else]you see which way to go next[end if] and prepare to leave.";
		infect;
		infect;
	else:
		say "     'Hope you have learned your lesson!' he tells you, laughing at your so vulnerable state. 'Now get out of my face before I regret not squashing you like a bug.' he says, while throwing you away back into the forest. Luckily, a nearby bush cushions your fall, though you don't escape without a few bruises and cuts. That's fine, better than being crushed by a gigantic man, one could wonder[if player is not naked]... You're also able to find the gear he stripped away from you, so you put it back on and prepare to leave[end if]...";

to SubmitGiantAss:
	say "     He brings you to his eye level, [if player is not naked]taking every gear you might have had on off and throwing it away[else]rotating your fully exposed body, having a good look at you[end if], to appreciate your shape and so little size compared to his. 'Since you quickly understood that you're no match for someone like me, your punishment will be more fun. For me, at least.' he says, licking his lips with an enormous tongue surging from beneath, before bringing you close to his mouth and give you a long, hard lick all over your body, enough to cover you in his slick saliva. You're fearing the worst when he opens his mouth and gives you a clear view of his gaping maw, looking terrifying from your perspective, but he doesn't seem to actually bring you any closer to his mouth. Instead, he pulls you away slightly, enough to be able to look at you once more.";
	say "     'It would be easy for me to swallow you whole, even!' he says, laughing at you, before adding 'But I have other plans for you...' With that said, he begins to lower you, slowly, past his muscular chest... then over his abs... and over his naked bottom... legs... It really is a long trip down to the ground, where he sits you. Although, you have a very, very strange feeling about this, since the giant is kneeling above you, keeping you between both his legs and giving you a complete view of his growing cock and expansive ass, clouding you in darkness. 'How do you feel about having a giant ass all for yourself, eh?' he threats you as his colossal rear hovers above you. The last thing you are able to see is that hungry-looking pucker between his asscheeks approaching you at an alarming pace, before it sits right on top of you, engulfing your whole face in it.";
	WaitLineBreak;
	say "     With your world enclosed in the space between the giant's enormous buttocks, things get really hot, very literally, as the musky air around nearly suffocates you with its intense humidity. 'You better wiggle for me! And start licking my ass to make up for your intrusion.' his voice booms out to you, and you have no choice but to comply. He truly has a big anus, twitching at you with every touch you lay on it, and loves to thoroughly slurp at your face everytime the giant man grinds his ass against you. Sweat covers your body as you give your best to appease the giant, lest you want to risk being grinded until nothing more of you is left. With your tongue, you give it a tentative lick, which the zookeeper replies with yet another hump against your face. 'Was that your tongue? Fuck, that felt good...'";
	say "     This continues for a while longer, with mostly you being smothered under a gigantic ass, forced to please his hole like the pint-sized plaything you are to him. Rubbing, kissing and licking are all on table when it comes to obliging his demands, and you can tell this whole situation pleases him a lot, were it not for the jerking motions that you can feel towards your side, as well as his grunts. But the more excited he gets, the more relaxed his pucker seems, and given your size difference, that could prove problematic...";
	if vorelevel > 1 and scalevalue of player < 5: [anal vore possibility]
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Hold yourself against his ass.";
		say "     ([link]N[as]n[end link]) - Don't fight it.";
		if player consents:
			Linebreak;
			SubmitGiantAssNormal;
		else:
			Linebreak;
			SubmitGiantAssAV;
	else:
		SubmitGiantAssNormal;

to SubmitGiantAssNormal:
	say "     Not wanting to get caught in any tight situation, you stretch your arms and your yourself by pushing against his glutes, effectively keeping your body from being smooched by the giant's pucker harder than intended. By the looks of his movements though, it won't be too much long until you have satisfied him enough, jerking off his cock as he continues to rub his asshole all over your body. He then releases one longer grunt, then lets his ass rest on you heavily as you're forcingly pinned down right underneath the asshole, feeling it twitching with each spurt the zookeeper shoots out of his cock.";
	say "     His orgasm takes a long while, enough time for you to run out of breath. He only lifts his ass to look at you once the deed is done, and there's this wide grin on his face as he stares at your messy state. 'That was good, wasn't it?! I should just probably keep you, but then I'd get too distracted using you instead of working... Just think twice before attacking me next time, or you're gonna get squished again.' he warns you, before picking you up and delivering you someplace else, leaving afterwards. You're sore and every bone in your body hurts, given the raw treatment you've received, but eventually you are able to get up and start walking on your own.";

to SubmitGiantAssAV:
	say "     He grinds his ass against you repeatedly, and soon, the fleshy orifice is enveloping you. No matter how much you wiggle and kick around, it doesn't seem to have any effect, and given how much the zookeeper is moaning, it just seems to further excite him. He then lets his ass rest on you heavily as you're forcingly pinned down right underneath the asshole, and you feel your head and hands sinking in the moist flesh that only seems to be pulling you in with each twitching movement. The more you move, the deeper you sink, and before you know it, half of your body is going inside his ass, with only your legs left kicking the air.";
	say "     Grunting with the ecstasy your presence in his anal entrance is providing, the giant helps himself by helping you go in, pushing your body with his fingers until you're fully shoved inside. His pucker shuts behind you, holding you inside firmly within the moist, warm and fleshy walls throbbing all around you. The air inside is so hot that you feel like you've been pushed into an oven, but the zookeeper seems to really enjoy having you there. You can feel his whole jerking movements getting more intense by the time he is feeling your presence squirming against his prostate, and you know when he is about to burst.";
	WaitLineBreak;
	say "     Your surroundings twitch and pulse at each spurt the giant shoots out of his cock, and his grunts echo all around you. For what looks like a full minute, you are thoroughly squeezed and wiggled about as he cums, humping his hips into the air with all the intensity that came with his excitement. 'Ohh yes!!! That was fucking good...! Phew...' he pauses to take a breath, rubbing his asscheek tenderly and making your new resting place bobble around. 'I hope you enjoy your stay... Because you're not leaving anytime soon, little ant!' he threatens you mockingly, and actually decides to keep you inside his torturous fleshy tunnel that squeezes and constricts you all over, rubbing against your naked body without cease...";
	say "     In what seems to be hours, you're left inside his ass, scorching hot flesh clenching constantly against you, making it a living hell for you...";
	WaitLineBreak;
	follow the turnpass rule;
	follow the turnpass rule;
	say "     You wake up hours later, at the shore of a lake nearby, completely naked and accompanied by a massive trail of white jizz. Your body is still whole and you're in good shape, albeit very dizzy and mildly confused towards what happened exactly. By the looks of it, seems like the giant got you out of his ass, and proceeded to give you a cumbath while you were unconscious. Fortunately for you, he didn't actually consume you, or anything worse. Walking by for a bit, [if player is not naked]you're also able to find the gear he stripped away, so you put it back on[else]you see which way to go next[end if] and prepare to leave.";
	infect;
	infect;

to say WalkToGiant:
	if BodyName of Player is "Human Giant" and FaceName of Player is "Human Giant":
		say "     As if only realizing now that you're a giant like him, albeit much smaller, he lifts you up to your feet. '[one of]You must be that new recruit I was promised. It's about time you got here[or]It's about time someone else showed up to work. Things are a real mess here[or]About time someone showed up to give me a hand with rounding up all these animals[or]Look at you, small fry. They just keep hiring younger and younger here every year[at random],' he says loudly, slapping you hard on the back. 'But what're you doin['] out of uniform? Don't you know we got work to do?' Before you can recover from the hard blow to respond, he wraps his arm around you, pulling you close. 'Oh! You must be on break. How about we take a break together?' he says with a big grin, pushing you back to the ground.";
		if Player is female and Cunt Depth of Player > 25 and Cunt Tightness of Player > 20 and a random chance of 2 in 3 succeeds:
			say "     Forced to lay on your back, the bigger giant moves over you, getting his earth-shaking cock lined up with your [cunt size desc of Player] pussy. Despite the large size of your cunt, it is unquestionably a tight fit, but he makes a game effort of it. While somewhat uncomfortable at first, you soon start to moan and squirm beneath him as at first your cunt and then your body starts to stretch to accommodate his massive girth. And while he's only able to get part of it in you, even that much feels wonderful inside you, making you moan and pant beneath him. And when he cums, he unleashes a veritable torrent of cum into your womb, flooding your insides as your belly swells and bulges to accommodate it all.";
			say "     Grinning, he pulls out of you with a wet plop, unleashing the flood gates and causing a massive flow of his seed to leak out of you and pool on the ground between your splayed legs. Your giant body does manage to keep a surprising amount of it inside as well. Too weak to get up, you ";
			if a random chance of 1 in 3 succeeds and inasituation is false:
				say "can't resist as he picks you up and carries you off, a thick finger buried in your pussy, teasing your creamy, leaking and stretched hole. He takes you back to the gift shop and pushes you inside roughly. 'Okay, breaktime's over. Time to get your uniform on and get back to work,' he says, turning and head off.";
				move player to Zoo Giftshop;
				now battleground is "void";
			else:
				say "can only lay there in the mess he's made as his excess semen leaks out of you. 'Thanks for sharing your break with me. We should do this again sometime,' he adds, lumbering to his feet and spotting another critter to chase after.";
			CreatureSexAftermath "Player" receives "PussyFuck" from "Human Giant";
		else if Player is not female and anallevel > 1 and a random chance of anallevel in 5 succeeds:
			say "     Forced to move onto all fours, the bigger giant moves over you, getting his earth-shaking cock lined up with your (relatively) small ass. He smears some thick precum across it before he pushes a saliva-slick finger into your hole to get you prepared, squirming the big digit around inside you roughly. Despite the large size of your body, it is unquestionably a tight fit when he starts pushing his cock into you, but he makes a game effort of it. While somewhat uncomfortable at first, you soon start to moan and squirm beneath him as at first your anus and then your body starts to stretch to accommodate his massive girth. And while he's only able to get part of it in you, even that much feels wonderful inside you, making you moan and pant beneath him. And when he cums, he unleashes a veritable torrent of cum into your bowels, flooding your insides as your belly swells and bulges to accommodate it all.";
			say "     Grinning, he pulls out of you with a wet plop, unleashing the flood gates and causing a massive flow of his seed to leak out of you and pool on the ground between your splayed legs. Your giant body does manage to keep a surprising amount of it inside as well. Too weak to get up, you ";
			if a random chance of 1 in 3 succeeds and inasituation is false:
				say "can't resist as he picks you up and carries you off, a thick finger buried in your ass, teasing your creamy, leaking and stretched hole. He takes you back to the gift shop and pushing you inside roughly. 'Okay, breaktime's over. Time to get your uniform on and get back to work,' he says, turning and head off.";
				move player to Zoo Giftshop;
				now battleground is "void";
			else:
				say "can only lay there in the mess he's made as his excess semen leaks out of you. 'Thanks for sharing your break with me. We should do this again sometime,' he adds, lumbering to his feet and spotting another critter to chase after.";
			CreatureSexAftermath "Player" receives "AssFuck" from "Human Giant";
		else:
			say "     Getting you on your knees, he takes a seat in front of you and then pulls your face roughly into his crotch, pressing your against his earth-shaking cock. The scent of it excites you immediately and you start licking and kissing over it as best you can. As his thick pre leaks down your face, he guides your hips to his cock and pulls you roughly forward, forcing a sizable portion of his gigantic cock into your open mouth and down your throat. You moan weakly at this rough treatment, scrambling for support. Your hands, landing on his massive balls, end up just rubbing over the giant's balls and encouraging him further.";
			say "     After the initial surprise and discomfort fades, you realize that your giant mouth and throat have stretched wide to accommodate his enormous meat. It's hard for you to do more than be a tight, wet fuckhole for him, but you lick and squeeze around his meat as best you can. Thankfully he doesn't hold out for very long and unleashes a veritable torrent of cum down your throat and into your stomach, flooding your insides as your belly swells and bulges to accommodate it all.";
			say "     Grinning, he pulls out of you with a wet plop, unleashing the flood gates and causing a massive flow of his seed to gurgle up out of your mouth and pool on the ground in front of you. Your giant body does manage to keep a surprising amount of it inside as well. Too weak to get up, you ";
			if a random chance of 1 in 3 succeeds and inasituation is false:
				say "can't resist as he picks you up and carries you off, a thick finger wiping over your face, feeding the cum that leaked out back into you. He takes you back to the gift shop and pushing you inside roughly. 'Okay, breaktime's over. Time to get your uniform on and get back to work,' he says, turning and head off.";
				move player to Zoo Giftshop;
				now battleground is "void";
			else:
				say "can only lay there in the mess he's made as his excess semen leaks out of you. 'Thanks for sharing your break with me. We should do this again sometime,' he adds, lumbering to his feet and spotting another critter to chase after.";
			CreatureSexAftermath "Player" receives "OralCock" from "Human Giant";
		infect;
	else:
		say "     He pins you to the ground. '[one of]I've caught you now, back in your cage you go[or]Gotcha! Don't worry, you'll calm down once you're back in your pen[or]It's okay, little guy. Don't be scared. I'm just going to put you back in your cage where it's safe[at random],' he says in his booming voice, trying to sound reassuring. You try to protest that you're not a zoo animal, he just laughs. 'Oh, don't you try to trick me. Who's the zookeeper here?' he chuckles heartily.";
		say "     'Mmm... you must be excited like the rest of them, that's all. Looking to run around, stretch your legs and have some fun, eh? How about we have some fun then?' he asks. Not waiting for your response, he kneels down above you, pressing his huge cock down onto you and grinding you under its massive weight. Buried under his musky cock, you as soon covered in his leaking precum as he rubs the massive log of meat against you.";
		say "     After a few minutes of this, he picks you up [if scalevalue of Player > 4]with some effort [end if]and holds you against his pulsing rod. His strong hands press you hard against that hard flesh, stroking the whole of your [bodytype of Player] body against his manhood while precum leaks down over you. Soaked in it, you make for a slick toy for him to rub along his shaft. Every throb and pulse of it with the beating of his massive heart is felt through your entire body, so you have no problem noticing it beating faster (slow as it is) as his excitement builds.";
		say "     You can't help but grow aroused yourself as the scent of his manhood covers you and soon enough, you're rubbing, licking and kissing at his cock as best you can. You press your lips to his giant, gaping urethra, gulping down mouthfuls of his precum and diving your tongue into it. Heedless of the consequences, you keep this up even as his excitement continues to grow to the boiling point and he finally cums loudly, spraying his hot seed all over your face, much of it being forced down into your mouth by the blast, filling you [if scalevalue of Player < 4]to the point that you're bloated and rounded from it[else]until you're stuffed and have to push away[end if], unable to take any more. He continues to cum in massive arcs across the zoo, leaving huge streaks of white that sends the critters who'd gathered to watch fleeing.";
		now Libido of Player is Libido of Player / 2;
		if a random chance of 1 in 3 succeeds or inasituation is true:
			say "     Spotting them, he drops you roughly to the ground and lumbers to his feet, narrowly missing stomping on you by accident. '[one of]More escapees[or]Oh no! More got out[or]No, don't run, little critters[at random],' he booms, stomping off after some other hapless creature. You're left to drain and absorb the massive load filling you until you're able to rise to your feet and head back on your way.";
		else:
			now battleground is "void";
			say "     When he's done, he gets up slowly, looking over your bloated, sticky body. 'Now, what kind of critter are you?' he mutters to himself in obvious confusion. Not very bright, he shrugs and makes a misguided guess, carrying you off to drop you in ";
			let t be a random number between 1 and 10;
			if t is 1:
				say "one of the pens along the fence path. After you finally recover and enough of his massive load has leaked out and been absorbed into you for you to move, you climb the fence and get back on the path.";
				move player to Fence Path;
			else if t is 2:
				say "the large pasture near the northern wall of the zoo, dropping you off next to a big rhino. He gently pats the guy on his head between charges. 'Keep it up, big guy. You'll get it soon.' Left there to drain and absorb the massive load of cum, you can hear the constant thumping of the big rhino's feet around the ground, followed by a heavy crunch over and over again.";
				move player to Border Wall;
			else if t is 3 or t is 4 or t is 5:
				let holder be "beagle";
				say "[randomdesc]"; [yields 'slutname' - bottom]
				say "[randombodypart]"; [yields 'bodyselector' - top]
				while bodyselector is slutname:
					say "[randombodypart]";
				now holder is slutname;
				say "[randomdesc2]";
				while bodyselector is slutname or holder is slutname:
					say "[randomdesc2]";
				say "one of the small pens near the entryway along with a few other bloated, cum-filled [']escaped animals['] he's found. There's currently a [slutname], a [bodyselector], a [randomdesc2] and a few others you can't quite get a good look at around your overstuffed body. Thankfully the cage door's been left open and none of the others trapped in here feel in the mood for any fun with the other victims by the time they're recovered enough to move. When you're ready to go a few others have replaced those who've left, but you, like those before you, have had more than enough sex for the moment.";
				move player to Entryway;
			else if t is 6:
				say "the cheetah enclosure. It is heavy with the scent of the aroused feline who lives here. You should probably get out of here soon, but you're too bloated and full to leave for some time. It takes quite a while for you to drain and absorb the heavy load that's filling you.";
				move player to Cheetah Habitat;
			else if t is 7:
				say "one of the nearby enclosures as if not wanting to bother to find where you belong. You're stuck in there for quite some time, unable to move until his massive load has been absorbed and leaked out of your body. Thankfully the gate was broken when he tore it open to put you inside, so you're eventually able to make your escape.";
				now battleground is "Zoo";
			else if t is 8:
				say "the nearby gator pit. With another shrug, he heads off in search of other wayward animals. You moan wetly, but cannot get up, too overfull with the giant's cum. You're forced to wait there until your body's drained and absorbed his heavy load. The cum that leaks out of you flows down towards the broken sewer grate.";
				move player to Gator Pit;
			else if t is 9:
				say "the nearby bird house. He roughly shoves you inside before heading off in search of other wayward animals with a smile on his face. You moan wetly, but cannot get up, too overfull with the giant's cum. You're forced to wait there until your body's drained and absorbed his heavy load. You can hear the rustling of feathers and the chirping of birds in here, but are thankfully unnoticed or ignored until you can move again.";
				move player to Bird House;
			else if t is 10:
				say "the nearby roundabout. He muses over where to put you, looking between the lion pit and the snake house before finally settling on the latter. Opening the door, he roughly shoves you inside before heading off in search of other wayward animals with a smile on his face. You moan wetly, but cannot get up, too overfull with the giant's cum, forcing you to wait there until your body's drained and absorbed his heavy load. Thankfully this place seems unoccupied, at least for the moment.";
				move player to Snake House;

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Human"; [name of the overall species of the infection, used for children, ...]
	add "Human Giant" to infections of HumanList;
	add "Human Giant" to infections of MythologicalList;
	add "Human Giant" to infections of MaleList;
	add "Human Giant" to infections of BipedalList;
	now Name entry is "Human Giant"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The [one of]giant[or]giant man[or]lumbering brute[or]towering creature[at random] [one of]bashes you with a massive fist[or]slaps you with an enormous backhand, knocking you back[or]grabs you in his crushing grip before throwing you to the ground[or]clobbers you with his makeshift club[or]swings his massive club into you[or]stomps a giant foot down onto you[at random]!";
	now defeated entry is "[beatthegiant]";
	now victory entry is "[losetogiant]";
	now desc entry is "[giantdesc]";
	now face entry is "a human head with coarse, brown hair, just significantly larger";
	now body entry is "a normal human body, just grown to gigantic proportions. You have a strong, muscled body to help support your great height. At around fifteen feet tall, it's quite difficult for you to get in and out, requiring you find (or make) alternate entrances or squirm your way through doorways and move on all fours while exploring. Probably best to stick to open areas";
	now skin entry is "Human";
	now tail entry is "Your ass is gigantic!";
	now cock entry is "human";
	now face change entry is "your head becomes human-like[if scalevalue of Player is 4], but grown larger in size[else if scalevalue of Player > 4], but grown to a significantly larger size[end if]. You look much like your old self, though with a bigger head";
	now body change entry is "your body becomes human, but starts to grow to significantly larger size. Your body becomes muscled and strong as it changes, toughening up to support its increasing weight. You become something around fifteen feet in height";
	now skin change entry is "it changes, reverting to your old skin tone, though with bit a rougher, thicker feel to it";
	now ass change entry is "it pulses and throbs. I hope you like big butts, because yours is growing, and growing, and growing. That's one gigantic ass! Having gained wide, strong hips, you can feel powerful muscles beneath your impressive backside";
	now cock change entry is "it throbs and pulses, shifting and changing shape as spurts of cum fly from it. Eventually it settles down, having returned to being a fairly typical, human-shaped penis";
	now str entry is 40;
	now dex entry is 9;
	now sta entry is 30;
	now per entry is 22;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Nochange"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 650; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 18; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 41; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Zoo"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 45; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 7; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 18; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 45;
	now Cunt Tightness entry is 40;
	now SeductionImmune entry is false;
	now libido entry is 30; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]strong[or]towering[or]huge[at random]";
	now type entry is "[one of]giant[or]human[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Section 3 - Items

Table of Game Objects (continued)
name	desc	weight	object
"giant essence"	"A very slippery liquid with an almost transparent color, only slightly white, which is the precum of a human giant."	1	giant essence

giant essence is a grab object.
Usedesc of giant essence is "[giant essence use]";

to say giant essence use:
	say "     The warm, sticky liquid tastes really salty as you drink it. You feel it going down your throat, leaving you craving for something of titanic proportions...";
	PlayerDrink 2;
	if "Iron Stomach" is not listed in Feats of Player:
		infect "Human Giant";


instead of sniffing hellfire seed:
	say "The demonic semen smells sweet, a little like burnt cream.";



Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Human Giant Infection"	"Infection"	""	Human Giant Infection rule	1000	false

This is the Human Giant Infection rule:
	if Player has a body of "Human Giant":
		trigger ending "Human Giant Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     As your thoughts grow simpler and slower, you head out into the city and stumble around for a while, hardly noticing as everything gradually gets smaller and smaller. Unable to recognize the fact that you're actually growing, but finding the city increasingly confining, you make your way to the relative openness of the zoo. There you find a giant man being tied to the ground as military teams struggle to lash him down with steel cables. Growling at these pests, you come charging in, swatting them aside by the handful and tearing out the metal cables (which seem only as thick wires to you) to free the other giant. As he gets up, the military calls the retreat, forced to abandon their attempt. As you're helping the giant out of the last of the tangle, you can see groups of the zoo animals moving in on the injured soldiers you've left in your wake. Knowing they'll be taken care of, you turn your attention to the giant.";
			say "     He's very grateful for the rescue and thanks you for finally coming to help him with the zoo. He claims to have been getting the situation under control until those little soldier people showed up, but is really glad that you're here now to help him with it. You settle down, living there with him, playing around with the animals, getting them back into their cages, giving them the occasional soldier you find as a treat";
			if Player is herm:
				say " and dousing much of the nearby area with your hot, sticky cum as your big, strong mate fucks you silly[if Player is impreg_ok]. Your many giant offspring are sent out into the world to find their own fun with all the fun little critters running around to be their toys[end if].";
			else if Player is male:
				say " and dousing much of the nearby area with your hot, sticky cum as you and your big, strong mate take turns fucking one another[if Player is mpreg_ok]. Your many giant offspring are sent out into the world to find their own fun with all the fun little critters running around to be their toys[end if].";
			else if Player is female:
				say " when not stretching yourself out on one of the many open grazing plains while your big, strong mate fucks you silly[if Player is impreg_ok]. Your many giant offspring are sent out into the world to find their own fun with all the fun little critters running around to be their toys[end if].";
			else:
				say " and helping your giant friend use some of the cuter critters around as sextoys when he needs some sticky, messy relief[if Player is mpreg_ok]. Your many giant offspring are sent out into the world to find their own fun with all the fun little critters running around to be their toys[end if].";
		else:
			say "     Your manage to keep your mind intact and survive until the military rescue can arrive, but your huge size makes extracting you difficult. You are forced to accompany a ground team on their march out of the city. At first, they're very nervous about you, but change their tune after your powerful body helps drive off a mutant attack. From that point on, they're joking and laughing with you, calling you their friendly giant. One teases you about where Rusty and Jerome are, but you don't catch the reference, though he doesn't seem to mind.";
			say "     Hearing the reports when you get back to the city, the military are very grateful and, with a little coaxing from the other soldiers you've befriended, get you to sign up with the military. This accelerates your process through the processing camp and soon enough you join the unit. No longer having the time or means for proper training, you're given a crash course by your teammates and head back into the city to help them save any others you can.";
			say "     There are some losses and eventually your unit is turned over to RSX control, but you all keep doing your best to defend those too weak to defend themselves in this crisis. And the fact that your fellow soldiers have been gradually growing and becoming stronger, turning into giant men and women like yourself (helped along by your R&R lovemaking sessions), certainly makes that easier for you all to do. Equipment becomes harder to procure, but that's nothing a good, strong tree or telephone pole can't fix.";

Giant ends here.
