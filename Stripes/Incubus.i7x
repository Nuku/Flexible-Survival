Version 3 of Incubus by Stripes begins here.
[ Version 2.5 - Adjusted to fit the new incubus image]
[ Version 3 - Added a Demon Brute (Unpurified) victory scene - Gherod]

"Adds an Incubus creature to Flexible Survival's Wandering Monsters table"
[Created in thanks for Wahn for all his hard work helping with typos]

Section 1 - Creature Responses

incubusnosex is a number that varies.

to say incubusdesc:
	project Figure of Incubus_clothed_icon;
	setmongender 3; [creature is male]
	say "     You are confronted by a person who moves to block your path. At first, you could almost mistake him for a handsome man, were it not for some extra features which confirm a more sinister nature. Atop his lovely face are a pair of small, red horns and his amber eyes have a hint of an unearthly glow to them. On his back, there is a pair of large bat-like wings in a dark red color. Finally, from the end of his spine extends a long, slender tail ending in a spaded tip. His physique is well-toned and his [one of]cream[or]pink[or]tan[or]chocolate[at random] skin is smooth and without blemish despite the mess of the surrounding city. The man's body is beautifully muscled, but not massively so, looking like a statue of Adonis come to life.";
	say "     His tail gives a swish as he looks you over with a lustful grin. '[one of]Now, you may be able to provide some amusement[or]Give in to your urges and enjoy physical pleasure[or]I'm looking forward to filling you properly[or][if Player is female]Spread your legs[else]Bend over[end if] for me, my lovely. You know you want me in you[or]I know what you desire. Let me give it to you[or]Join me in delicious, sinful pleasure[at random],' he says with a silky, seductive voice and a sinister smile on his full, red lips. His hands run across his shapely body, showing it off for you before moving down to slide over the bulge his erect cock makes in the supple leather pants that are his only article of clothing.";

to say losetoincubus:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		project Figure of Incubus_naked_icon;
		now incubusnosex is 0;
		if BodyName of Player is "Incubus" or BodyName of Player is "Succubus":
			if Player is female:
				say "     Unwilling or unable to continue resisting the infernal temptation that the incubus provides, you give your body up to him. Stepping up to you, he runs his hands over your face and shoulders, lightly caressing you. 'Mmm... I see that you've already begun to accept our infernal gifts and give in to your lustful nature. Good.' He guides you onto all fours and lets his tail slide across your body, sending shivers of delight through your tainted flesh.";
				say "     The incubus moves atop you after pushing down his tight leather pants, rubbing his throbbing cock between your cheeks, leaking precum steadily. You can't help but moan as his tail continues to sensually tease you as he lets his glans brush across your anus before continuing on down to your wet slit. It slides against your folds teasingly, making you beg for him to fuck you. He grins at this and slides his tongue across your cheek, then nibbles your ear. 'Certainly, my dear. Let's make some hellspawn.' With that, he thrusts into you.";
				WaitLineBreak;
				say "     The pleasure you feel as his large, perfect cock pushes into you is one of utter, sinful delight. He fucks you hard and fast, rocking his hips and pumping his shaft into you. His hands roam over your body, joining his tail in teasing against your flesh. It is only the soft sound of the beating of his wings that tells you how he's supporting himself so easily atop you. His body, penis, fingers, tongue, mouth and tail all move with the practiced ease of one who's spent countless ages exploring sexual pleasure and loving every moment of it. You cannot help but cum repeatedly from it all, your pussy practically overflowing with lustful juices from almost continual orgasms.";
				say "     Finally, after what feels like hours of sinful fucking, he drives his shaft fully into you and unleashes his hot seed, pouring his tainted load into your womb[if Cock Count of Player is 1]. Your balls tighten and your cock throbs as he pumps it, spraying your semen onto his waiting hand before bringing it forward for you both to lustfully lap up[else if Player is male]. He pumps at your cocks, playfully stroking each to orgasm in turn while his other hand waits to catch the load. Each sticky handful of cum is brought forward for you both to lustfully lap up[end if]. His large balls slap against your thighs as he drains his infernal seed into you. Spent, he pushes you to the ground, giving you a tongue-filled kiss and a final grope before heading off in nimble leaps across the rubble, using flaps of his large wings to assist his progress from time to time.";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Incubus";
			else:
				say "     Unwilling or unable to continue resisting the infernal temptation that the incubus provides, you give your body up to him. Stepping up to you, he runs his hands over your face and shoulders, lightly caressing you. 'Mmm... I see that you've already begun to accept our infernal gifts and give in to your lustful nature. Good.' He guides you onto all fours and lets his tail slide across your body, sending shivers of delight through your tainted flesh.";
				say "     The incubus moves atop you after pushing down his tight leather pants, rubbing his throbbing cock between your cheeks, leaking precum steadily. You can't help but moan as his tail continues to sensually tease you as he lets his glans brush across your anus, letting his pre get it slick. It presses lightly against your tight back entrance teasingly, soon making you beg for him to fuck you. He grins at this and slides his tongue across your cheek, then nibbles your ear. 'Certainly, my dear. Let us enjoy the forbidden male lust.' With that, he thrusts into you.";
				WaitLineBreak;
				say "     The pleasure you feel as his large, perfect cock pushes into you is one of utter, sinful delight. He fucks you hard and fast, rocking his hips and pumping his shaft into you. His hands roam over your body, joining his tail in teasing against your flesh. It is only the soft sound of the beating of his wings that tells you how he's supporting himself so easily atop you. His body, penis, fingers, tongue, mouth and tail all move with the practiced ease of one who's spent countless ages exploring sexual pleasure and loving every moment of it. You cannot help but moan and push back into his thrusts as he buggers you, your asshole practically milking at his cock with lustful need.";
				say "     Finally, after what feels like hours of sinful fucking, he drives his shaft fully into you and unleashes his hot seed, pouring his tainted load into your bowels[if Cock Count of Player is 1]. Your balls tighten and your cock throbs as he pumps it, spraying your semen onto his waiting hand before bringing it forward for you both to lustfully lap up[else if Player is male]. He pumps at your cocks, playfully stroking each to orgasm in turn while his other hand waits to catch the load. Each sticky handful of cum is brought forward for you both to lustfully lap up[end if]. His large balls slap against your thighs as he drains his infernal seed into you. Spent, he pushes you to the ground, giving you a tongue-filled kiss and a final grope before heading off in nimble leaps across the rubble, using flaps of his large wings to assist his progress from time to time.";
				CreatureSexAftermath "Player" receives "AssFuck" from "Incubus";
		else if Player is submissive and ( ( player is female and a random chance of 3 in 5 succeeds ) or ( Cock Count of Player is 0 and a random chance of anallevel in 5 succeeds ) ):
			say "     [if HP of Player > 0]Having submitted to[else]Beaten by[end if] the infernal temptation of the incubus, you are pushed down by the alluring male. Looking up at the creature who's bested you - and his stiff erection - your submissive tendencies kick in. Licking your lips, you reach for his cock without even realizing it. You only take notice of your actions and the fact that you're welcoming his perfect penis into your mouth when he chuckles darkly.";
			say "     'It seems you're already quite well suited to becoming my slutty plaything. Go on, toy, suck that cock you so clearly desire.'";
			say "     You blush at his order and submit yourself to the demonic tempter's will. You work your tongue along its smooth flesh and across its leaking glans. And sucking on the incubus's cock only makes you more aroused[if Player is herm], rock hard and dripping yourself[else if Player is male], rock hard yourself[else if Player is female], dripping yourself[end if]. By the point he tells you to [if Player is female]lay down and spread your legs[else]get on all fours and raise your ass[end if], you do so without hesitation.";
			WaitLineBreak;
			if Player is female:
				say "     To tease you, he first lets his tail brush tantalizingly across your juicy pussy a few times while he [if Breast Size of Player > 0 and a random chance of 2 in 3 succeeds]squeezes your breasts[else if Player is male]strokes your throbbing manhood[else]holds its folds open with his graceful fingers[end if]. This causes you to moan and beg for him to fuck you, to which he grins. Moving into position above you, he gets his saliva-slick cock to your cunny. 'Mmm... your desire for my infernal penis is simply [italic type]delicious[roman type],' he says, savoring the final word as he starts sinking his shaft into your needy vagina. Feeling that perfect cock penetrating you causes you to moan with sinful delight.";
				say "     While your submissive body desires a good, hard pounding, he starts slowly and sensually, building your arousal higher. [if Player is male]. Leaving one hand to tend to your erection[smn], the other roams[else]. His hands roam[end if] across your body, joining his tail in teasing against your flesh. With what feels like the experience of millennia, this demonic lover soon has you squirming in delight beneath him, your body begging for him to ravage you. Grinding your hips up into each thrust, you plead for him to fuck you hard, but he keeps himself in check. While his skillful lovemaking allows your pussy several small orgasms, you're denied the powerful release your [bodytype of Player] body starts to ache for as he continues to tantalizingly deny you for quite some time.";
				WaitLineBreak;
				say "     It is only once you start moaning for your master to take you, to fill you like the slutty whore[if Player is impreg_able], to breed you like the fucktoy pet you are[end if] that he finally relents and pounds you with infernal zeal. You cry out in sinful ecstasy, your hips being raised as he kneels up and drills hard and deep into you over and over again. Your pussy quivers around his meat as you feel your rapidly approaching climax. In the end, you orgasm long and hard, your body trembling as waves of delight run through you and your cunt milks at his cock with need[if Player is male]. Your penis[esmn] throb[smv] with an aching need of their own, splattering you with your own cum in long arcs of sticky semen[end if]. Grinning at how he's manipulated your body and lust so easily, he drives his throbbing rod deep inside you and releases his own load, pumping shot after gooey shot of demonic seed into you, claiming your womb. While the excess flows out around his pulsing shaft, his tainted load fills your uterus with a wet heat that oozes deeper still, as if almost to your very soul. Once he's drained his balls inside you, he pulls out and leaves you on the ground in a dazed afterglow. He gives you a tongue-filled kiss and a final grope before heading off in nimble leaps across the rubble, using flaps of his large wings to assist his progress from time to time.";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Incubus";
			else:
				say "     To tease you, he first lets his tail brush tantalizingly across your tight hole a few times[if Player is male] while he strokes your throbbing manhood[end if]. This causes you to moan and beg him to fuck you, to which he grins. Moving into position, he gets his saliva-slick cock to your anus. 'Mmmm... your desire for the forbidden male lust is simply [italic type]delicious[roman type],' he says, savoring the final word as he starts sinking his shaft into your tight hole. Feeling that perfect cock penetrating you causes you to moan with sinful delight.";
				say "     While your submissive body desires a good, hard pounding, he starts slowly and sensually, building your arousal even higher[if Player is male]. Leaving one hand to tend to your erection[smn], the other roams[else]. His hands roam[end if] across your body, joining his tail in teasing against your flesh. With what feels like the experience of millennia, this demonic lover soon has you squirming in delight beneath him, your body begging for him to ravage you. And even when you start to beg him to do so, he continues to teasingly deny you for some time, always drawing you close and then backing away from your orgasm.";
				WaitLineBreak;
				say "     It is only once you start moaning for your master to take you, to fill you like the slutty pet you are that he finally relents and pounds you with infernal zeal. You cry out in sinful ecstasy, your ass pressing back into those hard thrusts while your anus squeezes and milks at his cock[if Player is male]. Feeling his pounding thrusts against your prostate while he pumps your manhood soon drives you over the edge. You cum long and hard, your pent up cum blasting from your balls and pooling beneath you[else]. While lacking a direct means of release, the rough fucking sends shudders of pleasure through your [bodytype of Player] body as you feel a rush of heat[end if]. Grinning at how he's manipulated your body and lust so easily, he drives his throbbing rod deep inside you and releases his own load, pumping shot after gooey shot of demonic seed into you, claiming your ass. His tainted load fills your bowels with a wet heat that oozes deep inside you, as if almost to your very soul. Once he's drained his balls inside you, he pulls out and leaves you on the ground in a dazed afterglow. He gives you a tongue-filled kiss and a final grope before heading off in nimble leaps across the rubble, using flaps of his large wings to assist his progress from time to time.";
				CreatureSexAftermath "Player" receives "AssFuck" from "Incubus";
			CreatureSexAftermath "Player" receives "OralCock" from "Incubus";
			decrease humanity of Player by a random number between 4 and 8;
			if "Strong Psyche" is listed in feats of Player, increase humanity of Player by 2;
			if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by 2;
		else if Player is female:
			say "     Unwilling or unable to continue resisting the infernal temptation that the incubus provides, you give your body up to him. Stepping up to you, he runs his hands over your face and shoulders, lightly caressing you. 'Mmm... I'm glad [if HP of Player > 0]you've accepted[else]you're no longer resisting[end if] your body's lustful needs. Now let's give you a body to match those sinful desires,' he says with a dark smile. He guides you onto all fours and lets his tail slide across your body, sending shivers of delight through you.";
			say "     The incubus moves atop you, rubbing his throbbing cock between your cheeks, leaking precum steadily. You can't help but moan as his tail continues to sensually tease you as he lets his glans brush across your anus before continuing on down to your wet slit. It slides against your folds teasingly, making you beg for him to fuck you. He grins at this and slides his tongue across your cheek, then nibbles your ear. 'Certainly, my dear. Let's corrupt this mortal body of yours.' With that, he moves his cock back up to your asshole and thrusts into you.";
			say "     The disappointment you feel for being denied his cock is countered by the pleasure you feel as his large, perfect cock pushes into you. It is an utter, sinful delight to feel that perfect cock sink into your rear, sodomizing you. He fucks you hard and fast, rocking his hips and pumping his shaft into you. His hands roam over your body, joining his tail in teasing against your flesh. It is only the soft sound of the beating of his wings that tells you how he's supporting himself so easily atop you.";
			say "     His tail moves down to you denied pussy and pushes into you, its large spade made of soft flesh that spreads you open as it pushes into you. Your cunt quivers in delight at this, delighting in the sensation of having something in it after being denied your lover's cock. His body, penis, fingers, tongue, mouth and tail all move with the practiced ease of one who's spent countless ages exploring sexual pleasure and loving every moment of it. You cannot help but moan and push back into his thrusts as he buggers you, your asshole practically milking at his cock with lustful need while your cunt overflows with the juices of continual orgasms.";
			say "     Finally, after what feels like hours of sinful fucking, he drives his shaft fully into you and unleashes his hot seed, pouring his tainted load into your bowels and you cum hard around his thrusting tail[if Cock Count of Player is 1]. Your balls tighten and your cock throbs as he pumps it, spraying your semen onto his waiting hand before bringing it forward for you both to lustfully lap up[else if Player is male]. He pumps at your cocks, playfully stroking each to orgasm in turn while his other hand waits to catch the load. Each sticky handful of cum is brought forward for you both to lustfully lap up[end if]. His large balls slap against your thighs as he drains his infernal seed into you. Spent, he gives you a tongue-filled kiss and a final grope before heading off in nimble leaps across the rubble, using flaps of his large wings to assist his progress from time to time.";
			CreatureSexAftermath "Player" receives "PussyFuck" from "Incubus";
		else:
			say "     Unwilling or unable to continue resisting the infernal temptation that the incubus provides, you give your body up to him. Stepping up to you, he runs his hands over your face and shoulders, lightly caressing you. 'Mmm... I'm glad [if HP of Player > 0]you've accepted[else]you're no longer resisting[end if] your body's lustful needs. Now let's give you a body to match those sinful desires,' he says with a dark smile. He guides you onto all fours and lets his tail slide across your body, sending shivers of delight through you.";
			say "     The incubus moves atop you, rubbing his throbbing cock between your cheeks, leaking precum steadily. You can't help but moan as his tail continues to sensually tease you as he lets his glans brush across your anus, letting his pre get it slick. It presses lightly against your tight back entrance teasingly, soon making you beg for him to fuck you. He grins at this and slides his tongue across your cheek, then nibbles your ear. 'Certainly, my dear. Let us enjoy the forbidden male lust.' With that, he thrusts into you.";
			say "     The pleasure you feel as his large, perfect cock pushes into you is one of utter, sinful delight. He fucks you hard and fast, rocking his hips and pumping his shaft into you. His hands roam over your body, joining his tail in teasing against your flesh. It is only the soft sound of the beating of his wings that tells you how he's supporting himself so easily atop you. His body, penis, fingers, tongue, mouth and tail all move with the practiced ease of one who's spent countless ages exploring sexual pleasure and loving every moment of it. You cannot help but moan and push back into his thrusts as he buggers you, your asshole practically milking at his cock with lustful need.";
			say "     Finally, after what feels like hours of sinful fucking, he drives his shaft fully into you and unleashes his hot seed, pouring his tainted load into your bowels[if Cock Count of Player is 1]. Your balls tighten and your cock throbs as he pumps it, spraying your semen onto his waiting hand before bringing it forward for you both to lustfully lap up[else if Player is male]. He pumps at your cocks, playfully stroking each to orgasm in turn while his other hand waits to catch the load. Each sticky handful of cum is brought forward for you both to lustfully lap up[end if]. His large balls slap against your thighs as he drains his infernal seed into you. Spent, he gives you a tongue-filled kiss and a final grope before heading off in nimble leaps across the rubble, using flaps of his large wings to assist his progress from time to time.";
			CreatureSexAftermath "Player" receives "AssFuck" from "Incubus";
		if Libido of Player > 80, now Libido of Player is 80;
		if "Female Preferred" is listed in feats of Player and FemaleList is not banned:
			infect "Succubus";
		else:
			infect "Incubus";

to say beattheincubus:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		project Figure of Incubus_naked_icon;
		if demon brute is listed in companionList of Player and DBCaptureQuestVar is 5 and DemonBruteStatus < 2: [Evil DB, has a dick]
			say "     As you deliver your final strike to the incubus, he staggers back as he tries to remain standing, though clearly looking defeated. However, as one normally would show quite a bit of sass, even in a harsh predicament, this one seems slightly terrified at the sight of your captured demon brute's intimidating sight, and you can see why. His crimson eyes glare towards the handsome devil, with something between pure hatred and impulsive arousal, ready to rape his ass were you to allow it. 'Alright! You won! But I would very much like to beg of you to control your brute pet! It would be a shame if it were to disturb us in your well deserved time of pleasure with me...!'";
			say "     Though the defeated incubus still makes a last attempt at tempting you to indulge in infernal sin with him, you could still consider [bold type]letting your demon brute do the honors[roman type], instead. He seems more than ready, his huge cock twitching and yearning to be put to use, albeit still blocked by your command. All you have to do is to give the green light, or perhaps it is best that you [bold type]simply take control and order him to stay back[roman type], as the incubus is yours to have.";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Set the brute loose on the defeated incubus.";
			say "     ([link]N[as]n[end link]) - No, you want him for yourself.";
			if Player consents:
				LineBreak;
				say "     A thought is all you need to give in order to realize that this could actually be quite fun to watch. The poor incubus would be no match for such a hulking demon brute, deprived from all the sex he could be having, were it not for your binding control over him, given how evident the size difference between both is. You cannot help yourself but give the defeated devil a mischievous grin as you do the exact opposite of what he beckoned, with a single word allowing the brute to do whatever he wants with the bat-winged man. His eyes widen as your pet, without trading any gaze with you, simply walks towards him, steadily and unbothered, his cock raising to a scary and sizable full erection... in complete silence, like the cold-blooded fucker he is.";
				say "     He makes his move for the incubus, grabs him by the hair and forcefully pushes him onto the ground to have him on all fours, causing the cute devil to moan in pain. Then, the brute has him raise his ass, aiming his monstrous cock at his anus, and begins to press against it. The incubus is not relaxed at all, and such a forceful entry rips a loud grunt from his mouth as the brute continues to stretch his hole wide open, burying every inch of his throbbing erection deep inside the unwilling devil. With a thrust, the rest of his cock disappears into the winged man's bubblebutt, with only those heavy hanging nuts swinging back and forth as the brute pounds him into submission.";
				WaitLineBreak;
				say "     Your infernal pet does not show any mercy at all, only going harder and faster as soon as he feels the sweet, tight and pulsing warm tunnel of flesh wrapped around his large size, leaning on top of the incubus as he places one of his powerful arms around his neck, holding him down and offering no chance of escape. The incubus['] moans become wheezing whenever the brute tightens his grip on him, which only puts a happy smile (or rather, a really demonic and evil grin) on his face as he fucks his ass even harder and faster, drilling that hole like it was the last one he would have in a long time. With all of his huge muscles squeezing and smothering the helpless and defeated devil, he remains at the full mercy of your pet's subsequent fucking for as long as you permit.";
				say "     However, due to the fact the incubus could still manage a full erection of his own while being utterly raped by the demon brute, there would be no problem in letting your pet finish inside his ass... a couple of times, at least. The sounds of flesh on flesh clashing are very audible, produced with each hard thrust the hulking infernal beast puts full energy into, destroying that bubblebutt so fast that you doubt the incubus would be able to walk after this. Then, a few moments of intense fucking follow until the brute blows his first load into the handsome devil's bowels, filling him up until he cannot physically hoard any more of your pet's manjuice inside, ending up leaking from his ass in thick droplets and onto a slowly forming puddle underneath them both.";
				WaitLineBreak;
				say "     Though you really do not see any signs of your brute stopping anytime soon. He continues to fuck the incubus, covering his mouth, pinning him down below him even harder, thrusting his huge erection in and out of his ass, over and over, again and again... the sounds of muffled desperate moans and grunts barely reaching your ears, when compared to the sounds of your brute's virile pounding. This one takes longer than the last, but eventually, he deposits a second load inside the lust demon, shoving his entire length deep inside him as he pumps every drop of jizz into him...";
				WaitLineBreak;
				say "     You eventually lost count of how many times he cums inside the defeated devil, who lies nearly unconscious on the floor with lots of it leaking through his hole. Perhaps you should make your pet stop and prepare to leave, as you think he has had enough. With one simple command, your pet ceases the fucking and returns to you, leaving the poor incubus lying there, soaked in brute spunk and barely moving. Curiously, your demon brute pet does not seem to hate you so much, at least for now, as he gives you a satisfied grin. It seems treats like this work on him.";
			else:
				LineBreak;
				say "     With a single word, you order your demon brute pet to shove it. This is your victory, and you want to engage with the incubus by yourself. The winged devil seems to be relieved, and is quick to return to his usual flirty mood.";
				WaitLineBreak;
				IncubusNormalDefeat;
		else:
			IncubusNormalDefeat;

to IncubusNormalDefeat:
	if BodyName of Player is "Incubus" or BodyName of Player is "Succubus":
		if Player is male:
			say "     'Well done, my infernal sibling,' the incubus says with a smile as he bows in submission to you. 'You are definitely the more powerful seducer,' he acknowledges with another, lower bow and you can't help but smile, feeling strangely at ease now that the combat is over. 'Shall you claim your prize?' he says with a grin, turning around and getting onto all fours. His tail arches up and his shapely, bubble butt is offered to you. You are quite tempted by the sight, eager to give him the good, hard fucking he would have given you.";
			say "     [bold type]Shall you?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Fuck him.";
			say "     ([link]N[as]n[end link]) - Refuse.";
			if Player consents:
				LineBreak;
				say "     You move atop him eagerly, bringing your throbbing cock to his dark pucker. He moans lustfully and pushes back, spearing himself onto your [cock size desc of Player] shaft with the ease of one who's been taken by the erections of numerous demonic creatures before. The feel of his gripping, squeezing walls around your cock is exquisite, filling you with such sinful pleasure at buggering that hot hole. His anus is like a hot vice around your shaft and almost seems to suck on it with its lustful need for your seed. You let your hand roam over his muscled body, then move it down to stroke over that perfect cock of his.";
				say "     When you finally cum, painting his inner walls with your semen, he cums as well with a loud cry of sexual pleasure. He holds a cupped hand into the spurting blasts, gathering a palmful of his tainted load. He laps up some of it and, when he offers you some as well, you are too lost in your lustful pleasure to even consider refusing. You lap up the rest and even suck his fingers clean. After withdrawing, you both rise and he gives you a passionate French kiss while running his hands over your body. 'I look forward to you joining our ranks more fully so we may continue to share in the pleasures of the flesh,' he whispers while nibbling your ear before heading off in nimble leaps across the rubble, using flaps of his large wings to assist his progress from time to time. You watch him go while his tainted seed sends warm tingles through your body.";
				if Libido of Player > 80, now Libido of Player is 80;
				if "Female Preferred" is listed in feats of Player and FemaleList is not banned:
					infect "Succubus";
				else:
					infect "Incubus";
				CreatureSexAftermath "Incubus" receives "AssFuck" from "Player";
			else:
				LineBreak;
				say "     When you refuse, the incubus's face briefly becomes one of demonic anger before returning to its beautiful appearance. 'Very well, then. Perhaps you will be more accommodating once you join our ranks more fully. I promise to show you such wonderful pleasures of the flesh, my dear,' he says with a dark smile. 'I expect you will become a most impressive temptation,' he says, still grinning. 'I hope you'll accept my offers for sinful delights when that time comes, or perhaps the next time we meet,' he adds with a slow lick across the spaded tip of his tail. With that, he turns and heads off in nimble leaps across the rubble, using flaps of his large wings to assist his progress from time to time..";
		else:
			say "     'Well done, my infernal sibling,' the incubus says with a smile as he bows in submission to you. 'You are definitely the more powerful seducer,' he acknowledges with another, lower bow and you can't help but smile, feeling strangely at ease now that the combat is over. 'I look forward to you joining our ranks more fully so we may share in the pleasures of the flesh. I expect you will become a most impressive temptation,' he says with a grin. 'I hope you'll accept my offers for sinful delights when that time comes, or perhaps the next time we meet,' he adds with a slow lick across the spaded tip of his tail. With that, he turns and heads off in nimble leaps across the rubble, using flaps of his large wings to assist his progress from time to time.";
	else if Player is male and incubusnosex < 3:
		say "     'Alas, I am defeated,' the incubus moans as it staggers back as it tries to remain standing. 'I cannot resist your might any further,' the incubus says as he falls to his knees. 'You may now make use of my body as you would,' he says with an exaggerated sigh, reaching for your groin and licking his lips.";
		say "     [bold type]Shall you take your prize and make the sex demon blow you, or will you refuse this final temptation?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get blown.";
		say "     ([link]N[as]n[end link]) - Refuse.";
		if Player consents:
			LineBreak;
			say "     Wanting a go at the sex demon's hot mouth, you grab his head and pull him forward onto your cock. He moans softly as you thrust between his soft, wet lips and starts sucking expertly. His hands roam across your ballsack, your thighs and your ass as he works eagerly to blow you. Your infernal lover is very good at it, working his whole mouth to build you up to the biggest climax he can. With a talent brought from centuries of such depravities, the demon's mouth offers such a sinful delight.";
			WaitLineBreak;
			if anallevel > 1 and a random chance of 2 in 3 succeeds:
				say "     As the great blow job continues, you enjoy the moans of the incubus sucking you off. As he performs a particularly pleasurable bit of tonguework that has you panting and groaning, you feel a slick digit slip between your cheeks and probing at your anus. Too aroused and into getting sucked off, you don't resist as that wet finger makes its way into your rectum to rub at your prostate. You moan and clench down on it as you blow your load, shooting your hot seed into the demonic boytoy's mouth to feed his dark lusts. The finger's withdrawn slowly with a wet pop and your cock released.";
				say "     'Mmm... that was most enjoyable. Do you see how much better it could be now if you just give in and accept the pleasures of the flesh?' he says with a grin as he rises with ease. He makes a show of licking his lips before turning and heading off in nimble leaps across the rubble, using flaps of his large wings to assist his progress from time to time. It is not until he's gone that you notice the warm, wet feeling of your anus and look down to see the puddle of incubus cum with a finger streak through it.";
			else:
				say "     As the great blow job continues, you enjoy the moans of the incubus sucking you off. As he performs a particularly pleasurable bit of tonguework that has you panting and moaning, he grabs your balls with a warm, sticky hand and rubs them firmly. This soon has you over the edge and shooting your hot seed into the demonic boytoy's mouth to feed his dark lusts. He licks and sucks your cock clean, then nibbles on your balls lightly.";
				say "     'Mmm... that was most enjoyable. Do you see how much better it could be now if you just give in and accept the pleasures of the flesh?' he says with a grin as he rises with ease. He makes a show of licking his lips before turning and heading off in nimble leaps across the rubble, using flaps of his large wings to assist his progress from time to time. It is not until he's gone that you notice the warm, wet feeling on your ballsack and look down to see the puddle of incubus cum with a hand streak through it.";
			if "Female Preferred" is listed in feats of Player and FemaleList is not banned:
				infect "Succubus";
			else:
				infect "Incubus";
			CreatureSexAftermath "Incubus" receives "OralCock" from "Player";
		else:
			LineBreak;
			say "     The incubus's eyes burn and his face briefly becomes one of demonic anger before returning to its beautiful appearance. 'Very well, then. Should you change your mind, I promise to show you such wonderful pleasures of the flesh, my dear,' he says with a dark smile. 'I expect you will become a most impressive temptation,' he says, still grinning. 'I hope you'll accept my offers for sinful delights when that time comes, or perhaps the next time we meet,' he adds with a slow lick across the spaded tip of his tail. With that, he rises with ease and heads off in nimble leaps across the rubble, using flaps of his large wings to assist his progress from time to time.";
			increase incubusnosex by 1;
	else:
		say "     'It is unfortunate that you aren't interested in the pleasures I could offer you,' the incubus says as he staggers back from your assault. 'I could have shared such sensual pleasures of the flesh with you,' he says with a disappointed sigh before turning and heading off in nimble leaps across the rubble, using flaps of his large wings to assist his progress from time to time.";

to say incubus fight:
	say "[one of]The incubus zips up beside you incredibly quickly, pressing his throbbing shaft against you as his hands teasingly play across your body, making you strongly consider just giving in to him![or]The incubus lands a one-two combo of punches that strike with unnatural might![or]The incubus does an acrobatic flip back and stretches his body in a sensual display, making you long for its sinful pleasures![or]The demonic creature grabs your wrists and stares deep into your eyes. His eyes seem to glow and your will to keep resisting wavers![or]The incubus weaves in close to you and presses his body to yours. As he gropes you, his tongue slides along your neck and up to your ear, which he gives a playful nibble![or]The demonic seducer spins, slapping his tail across your ass, then rubs it teasingly against your sore bottom before pulling it away again![at random]";
	increase Libido of Player by a random number from 3 to 8;
	if BodyName of Player is "Succubus" or BodyName of Player is "Incubus", increase Libido of Player by a random number between 1 and 2;
	if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 1;
	if "Cold Fish" is listed in feats of Player, decrease Libido of Player by 1;
	if Libido of Player >= 110:
		say "You find yourself too aroused to keep fighting the handsome seducer and drop to your knees. Having fallen under the sway of this dark tempter, you long to submit yourself to his lustful desires.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Incubus" to infections of DemonList;
	add "Incubus" to infections of OtherworldlyList;
	add "Incubus" to infections of MaleList;
	add "Incubus" to infections of BipedalList;
	add "Incubus" to infections of TailList;
	now Name entry is "Incubus"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[incubus fight]"; [ Successful attack message ]
	now defeated entry is "[beattheincubus]"; [ Text when monster loses. ]
	now victory entry is "[losetoincubus]"; [ Text when monster wins. ]
	now desc entry is "[incubusdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that a beautiful human, with lovely features, full lips and a seductive smile. Your eyes have amber irises that glow a little bit. Growing from your brow are a pair of small, red horns";
	now body entry is "that of a handsome and attractive human being, toned and strong. Attached to your back are a pair of bat-like wings. These are red and well-sized, maybe even large enough to fly with once you figure out the details";
	now skin entry is "[one of]soft, human[or]pristine[or]perfect[at random]";
	now tail entry is "You have a round bubble butt with a long, slender tail attached. It is a classic devil tail: thin, red and ending in a spaded tip."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]amazing[or]incubus[or]perfect[or]human-like[at random]";
	now face change entry is "your facial muscles seem to ripple under the skin, rearranging themselves into a softer, more sexually attractive appearance. Small horns push out of your brow"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a more attractive form, though you are soon distracted from this change by the strange feeling of your skin stretching and pressing out from your back. Looking over your shoulder, you stare in wonder as two small bulges of flesh push out of your back, before popping open in an almost orgasmic release. Unfurling further and further after that, you soon have a pair of large dark red bat wings on your back";
	now skin change entry is "your skin seems to soften and smooth out, any blemishes and unwanted hair wiped away with a wonderfully pleasant sensation that leaves you with perfect skin";
	now ass change entry is "it tightens up into a perfect, sexy ass, forming a wonderfully fuckable bubble butt. Then a long and thin tail grows out of your back just above it, sporting a spaded tip at the end";
	now cock change entry is "it seems to grow partially erect and twitch eagerly, almost like it has a mind of its own, eagerly hunting for the next chance to be put to use";
	now str entry is 16;
	now dex entry is 20;
	now sta entry is 12;
	now per entry is 16;
	now int entry is 10;
	now cha entry is 25;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 50; [ The monster's starting HP. ]
	now lev entry is 8; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 14; [ Monster's average damage when attacking. ]
	now area entry is "Campus"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 9; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is "libido pill"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 30; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]alluring[or]sexy[or][if Player is male]handsome[else]sultry[end if][at random]";
	now type entry is "demonic"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true;
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


Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Incubus Infection"	"Infection"	""	Incubus Infection rule	1000	false

This is the Incubus Infection rule:
	if Player has a body of "Incubus":
		trigger ending "Incubus Infection"; [Here it states, that the ending has been played.]
		if Player is pure and graphics is true, project the figure of Incubus_clothed_icon;
		if humanity of Player < 10:
			if Player is herm:
				say "     Finally giving in to your new body's sexual urges, you waste no time in following the call of the others of your kind back to the campus where they've been tempting the college students and professors alike into sinful decadence. There, you quickly hunt down one of your incubi brethren and pounce onto him. While he smiles at first at the feel of your cock against him, he is surprised to feel your breasts and cunt there are well. Grinning evilly, you roll him onto all fours and start fucking the surprised incubus senseless. Gripping the base of his cock, you keep him from cumming as you fuck him again and again, your feminine side allowing you repeated orgasms that soon have him moaning and begging beneath you. Once he's finally acknowledged you as his superior, you roll him over and drive your cunt down over his aching cock, finally letting him cum inside you in one massive, release.";
				say "     Your new minion leads you back to the other incubi's lair, finding them in a lustful orgy with each other and their captive pets. You waste no time in filling each and every one of them with your demonic seed while denying them release until they submit to you and give their tainted load to your hungering pussy. Soon enough, they are all bowing before you in subjugation, their lustful master and mistress in one. Unable to keep up with your insatiable new body, your new subjects hail you as their king. Your horns grow larger, curving over your flowing hair and becoming pitch black at the base as your former tormentors worship your powerfully attractive body.";
				say "     Still, their worship isn't quite enough and while you are quite certain more incubi will come from your bountiful womb, you will need more playthings to satisfy yourself now. After fucking all of their captive pets, breeding them full of your incubi spawn, you command your subjects to go forth and seek out more pets to fuck and people to convert. While you enjoy the ones already here and those new playthings they bring in, still you aren't satisfied and you send them further afield.";
				say "     The military camp proves to be the perfect place for your incubi to hunt, all the horny, young soldiers being easily led astray by the forbidden temptations provided by the sexual demons. They are converted into either more incubi themselves or into pets for your pleasure, depending on how lustful and depraved their weak minds are. Quickly, the camp falls into chaos as more and more soldiers give in to the temptations of your minions. The quarantine attempts failing as they are unable to reinforce the barricades with soldiers joining your ranks faster than they can be deployed. While those incubi you create in the horny pets are normal incubi, those birthed from your womb are hermaphroditic like yourself and further help to accelerate the conquest.";
				say "     While the other creatures in the city begin to escape through the fallen lines, you and your incubi are further amused by this, letting them go so they make someday become lovely little pets as well for your people. Your forces continuously spread out and secure the rest of the territory around here as more and more people give in to the pleasures of the flesh. A new kingdom rises up from the ruins of their pathetic, little civilization. It is a kingdom of incubi, based on sex and pleasure, with you at its head, dark king and mistress to all the incubi. Your herm offspring become the ruling class among them, the lords running their territories in your name and submitting themselves until you for breeding every year.";
			else if Player is male:
				say "     Succumbing to the sexual desires of your lustful body, you find yourself following the call of the others of your kind back to the campus where they've been tempting the college students and professors alike into sinful decadence. There you are greeted with open arms by your incubus brothers, welcomed with kisses and fondling. Joining your new brethren in celebration of your new form, you return their kissing and groping in kind. You run your hands over their sexy bodies just as eagerly as theirs run over yours, adoring their perfect, sculpted beauty. But simple touches aren't enough to satisfy your infernal desires and soon enough you all are sharing in a lustful orgy, enjoying every sinful pleasure two males may share.";
				say "     After your lustful welcome, you all break up to go roam the city some more, looking eagerly for more survivors to convert. While you find a number of already converted beasts and creatures as you prowl the streets, they are hardly able to satisfy your infernal lusts for long. A few you find make fine pets to divert yourself or to breed full of tainted spawn, but little more. Fortunately for you, it isn't long before the rescue comes, bringing much more enjoyable diversion in the form of the horny, young soldiers. You are able to sidle up to several squads of those handsome soldiers as they come to [']rescue['] you. Your sensual body provides unnatural temptation to them as you tease and kiss them, whispering how much you want to [']thank['] them for coming to save you into all their gullible ears. Soon enough, each batch of soldiers and any others they've found in need of help gives in to you and is well on its way to joining you as a lovely incubus brother or becoming a nicely oversexed female pet for you and your brethren to enjoy. And the best part is there always seems to be more horny, gullible soldiers to tempt into decadent, male lust.";
			else if Player is female:
				say "     Succumbing to the sexual desires of your lustful body, you find yourself following the call of the others of your kind to the campus where they've been tempting the college students and professors alike into sinful decadence. Arriving there, you are soon met by a handsome incubus approaching you with a sultry sway and a collar and leash in his head. 'Now, here I see we have another lustful pet for my brothers and I to enjoy,' he says as he examines your form with an amused grin on his red lips. 'It looks like you've come to accept your place as another lovely breeder for us, now haven't you?' he purrs into your ear as he brushes the loop of the leash across your wet folds, making you shiver with arousal. 'All you need do now is accept your place and put on the collar, my sweet plaything,' he says, licking around the edge of your ear as he holds it up to you, 'and we'll share such pleasures with you.' Part of you deep down knows that you will never be the same if you put on the collar, but the need of your body is too great and you long to accept the promised pleasures at any price.";
				say "     Taking the collar, you slip it around your neck and the latch seems to vanish and you can feel something deep inside you being collared and chained as well. Fastening the leash to your collar, the incubus grins and licks your juices from its leather handle before leading you down the streets like a good pet, your cunt dripping juices with every step. Soon, you can't help but fantasize about all the ways you can be a good, little pet and breedtoy for your master, serving him and his brothers like a good fucktoy when they're not out hunting for more innocent people to make into sexy pets like you. Arriving at the lobby of a large condominium building, you look up to see a group of gathered incubi smiling and grinning at you eagerly. As your new master parades you around the room, you see several other pets already serving their own masters in the corners, their bellies swollen with growing hellspawn. You realize all those dirty little fantasies are about to come true.";
			else:		[neuter]
				say "     Succumbing to the sexual desires of your lustful body, but having no means of release, you find yourself following the call of the others of your kind to the campus where they've been tempting the college students and professors alike into sinful decadence. Arriving there, you are soon met by a handsome incubus approaching you with a sultry sway and a collar and leash in his head. 'Now, here I see we have another lustful pet for my brothers and I to enjoy,' he says as he examines your form with an amused grin on his red lips. 'What an amusing creature you are,' he purrs into your ear as he brushes the loop of the leash across your bare groin, making you shiver a little. You find the infernal creature very arousing despite your condition and you moan in need. 'All you need do now is accept your place and put on the collar, my sweet plaything,' he says, licking around the edge of your ear as he holds it up to you. 'I'm very curious to see how you'll respond to the pleasures we can provide.' Part of you deep down knows that you will never be the same if you put on the collar, but the need of your body is too great and you long to accept the promised pleasures at any price.";
				say "     Taking the collar, you slip it around your neck and the latch seems to vanish and you can feel something deep inside you being collared and chained as well. Fastening the leash to your collar, the incubus grins and rubs your bare groin before leading you down the streets like a good pet, your body hot with a growing arousal you cannot sate. Soon, you can't help but fantasize about giving yourself to him, serving him and his brothers like a good fucktoy when they're not out hunting for more innocent people to make into sexy pets. Arriving at the lobby of a large condominium building, you look up to see a group of gathered incubi smiling and grinning at you eagerly. As your new master parades you around the room, you see several other pets already serving their own masters in the corners, their bellies swollen with growing hellspawn.";
				say "     Your nature as a neutered incubus draws considerable curious interest from the gathered incubi. As your master cuddles you in his lap, rubbing his cock against your rear, there is much discussion among them about how you'll react. Your excitement grows until all you can do is moan incoherently before he slides his cock into your tight ass and another fills your mouth with his cock. The feel of those perfect cocks inside you provide such pleasure, if little actual relief, for your lusts.";
				if a random chance of 1 in 2 succeeds:
					say "     They have their way with you until they cum hard, pumping their loads into you. Your incubus body, made for sexual pleasure, provides them with considerable pleasure and you enjoy their ample loads, lustfully delighting in the feel of it being pumped into you. You're shared around with all the others, each taking turns with you non-stop, pumping you full of more and more cum as already failing mind is obliterated in a sea of arousal. You become a moaning, squirming being of unsatisfied lust, feeling only momentary pleasure when someone's cumming inside you. You become a cum-bucket for the group, enjoying to fuck you full of cum and almost feeding off your eternal lust. They even share you with any pets they have with cocks, letting even them bugger your needy body. You spent the rest of your existence soaked and stuffed with cum in a state of unreleased arousal, loving every moment of it.";
				else:
					say "     They have their way with you until they cum hard, pumping their hot loads into you. Their cocks throb and their balls pulse as they spurt again and again, pumping everything they have to give in a lustful display while moaning about how wonderful it is and that it's the best sex they've ever had. You moan and squirm in your master's lap as a powerful orgasm wracks your body, filling you with such sensual pleasure as you've never known before. When they finally collapse back, their cocks and balls are gone, completely drained away into cum to fill you.";
					say "     The other incubi are surprised by this, but something about the display has aroused them as well and they don't flee or attack. When you and the other nullified incubi rise and move to take hold of other cocks, the wild sex is repeated again with the same results and effect. Soon enough, all of them are converted into new nullcubi and they turn to their pets. Licking cunts, sucking cocks and nursing from nipples, the pets are pleasured until they cum repeatedly and are remade into genderless sluts. Those pregnant pets enjoy a rapidly progressing pregnancy and birth of nullcubi children before their pussies close up forever. Once all are converted, the lustful nullcubi head out into the city. They lust for the delight of the only sexual release they have, bringing others to a final, overpowering orgasm that leaves them nullcubi like themselves.";
		else:
			say "     When the rescue comes, you are quite happy to leave this place behind and go with the military. Your new form gets numerous speculative looks from the soldiers, your attractive body tempting quite a few of them and you find yourself tempted to sneak around with a few of them. Once you are clear of the military and free to do as you please, you consider what you'd like to do for a living now that you've changed so drastically. While you ponder the matter, you move around, finding lovers of various sorts from those infected and not, finding [if charisma of Player > 16]it easy to seduce almost anyone you desire[else]several you are able to persuade[end if] into having sex with you. After a few months of living a life of hedonistic abandon, you grow bored with it and seek to find something more fulfilling to do with your time outside of sex.";
			say "     Deciding to seek out a television career, you are easily able to seduce your way into an interview and soon enough a position at a major news network. Your attractive, sexually exciting body draws in the viewers, making your segments on the changing world and the nanite infection very popular. Rather than waste your time gathering the news, you report the events, adding a particularly lustful flair to everything. You become the voice of the news for the network and eventually the top name in news, skyrocketing with popularity that keeps you surrounded by lustful fans, guest stars and coworkers to satisfy your lustful desires.";
			say "     And as your audience grows, they also start to grow more accepting of the changing world and their sexual desires and your reporting reflects this. More guests appear naked or even showing off their altered bodies and the populace responds, seeking to change themselves into the forms you clearly enjoy the most as you showcase them. While never directly credited, the effect of your career greatly accelerates the world's cascade into a new, lustful era of sexual, infected diversity.";

Incubus ends here.
