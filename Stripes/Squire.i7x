Version 1 of Squire by Stripes begins here.
[ Version 1.0 - Player loss + infection.]

"Adds a Squire creature to Flexible Survival's Wandering Monsters table"


Section 0 - Setup

squirefeature is a number that varies. squirefeature is usually 1.

when play begins:
	add { "Squire" } to infections of guy;

Section 1 - Description

to say squiredesc:
	setmongender 3; [creature is male]
	now kpstatus is 0;
	choose row monster from table of random critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	if bodyname of player is "Knight":
		now kpstatus is 1;
	else if bodyname of player is "Squire":
		now kpstatus is 2;
	else if player is bodily human and player is facially human and player is skintone human and tail of player is "":
		now kpstatus is 3;
	else:
		now kpstatus is 4;
	now knightcrestnum is a random number between 1 and 10;
	if kpstatus is 2 and knightcrestnum is playercrestnum:
		increase knightcrestnum by 1;
		if knightcrestnum is 10, now knightcrestnum is 1;
	now squirefeature is a random number between 1 and 5;
	if debugactive is 1:
		say "DEBUG: knightcrestnum: [knightcrestnum], playercrestnum: [playercrestnum], kpstatus: [kpstatus], squirefeature: [squirefeature].";
	say "     Before you is a handsome young man with [if squirefeature is 1]scruffy brown hair[else if squirefeature is 2]blond locks[else if squirefeature is 3]a pretty-boy face[else if squirefeature is 4]goofy grin[else]bright, blue eyes[end if] in medieval garb. He has a happy eagerness to his face that tells you he's no longer quite right in the head. He is wearing simple breeches and a string-tied shirt with a loose-fitting tabard overtop. The tabard has the colorful crest of [stateknightcrest] on it. In his hand, he holds a short sword marred by a few nicks.";
	say "     Sizing you up, he raises his sword towards you.";
	if kpstatus is 1:				[player is Knight]
		say "     'A knight? You would challenge my master? I think not! I am his brave squire and shall defeat you myself,' he says boldly, only a slight quaver in his voice and a few moment's pause before attacking.";
	else if kpstatus is 2:		[player is Squire]
		say "     'You are a knight's squire, like myself? Let us train together. My master is the greatest knight of all and has trained me well. I shall come out on top,' he boasts with an eager smile.";
	else if kpstatus is 3:		[player is human-like]
		say "     He takes a nervous step back. 'A brigand[if showlocale is true]! I knew I would find your ilk when I joined my knight on his quest through these dark woods[end if]. You shall not escape, bandit! My master is the bravest knight around and he has trained me well,' he yells, psyching himself up enough to charge at you.";
	else:						[player is somehow non-human = monster!]
		say "     He nervously looks over your transformed state. 'A fearsome beast! I- I warn you, monster,' he says with an audible quaver in his voice. 'I am squire to the strongest knight around and he has trained me well[if showlocale is true]. We have come here to do br-brave battle against monstrous foes for glory and honor[end if]. I shall defeat you and prove myself to him,' he says with a mix of nervous eagerness before charging at you with zeal.";

to say stateknightcrest_new:
	if knightcrestnum is 1:
		say "an ejaculating cock ringed by ivy";
	else if knightcrestnum is 2:
		say "a horse carnally riding a knight";
	else if knightcrestnum is 3:
		say "a sword between two dangling dicks";
	else if knightcrestnum is 4:
		say "a charging knight with a butt-plug-tipped lance";
	else if knightcrestnum is 5:
		say "two downward-pointing dildos on a yellow field";
	else if knightcrestnum is 6:
		say "a set of anal beads";
	else if knightcrestnum is 7:
		say "a pair of tits between crossed sword and mace";
	else if knightcrestnum is 8:
		say "a passant guardant hound with visible cock";
	else if knightcrestnum is 9:
		say "twin maidens dancing nude together";
	else:
		say "a radiant pussy dribbling juices into a golden bowl";


Section 2 - Monster Victory

to say losetosquire:
	if inasituation is true:
		stop the action; [text taken care of at the source]
	if kpstatus is 1:
		if HP of player > 0:
			say "     When you submit to the bold squire, he gives a nervous laugh before growing boastful once the surprise has passed. 'Not much of a knight at all, are you? You would surrender to a lowly squire? Clearly I am more a knight than you,' he adds as he stands taller and sheathes his small sword. 'It looks like you need some more training, and I'm just the brave warrior to do it,' he says, grabbing you in a surprisingly strong grip. Tugging down his breeches, he reveals his stiff member. His seven incher stands proud, hard and ready, as he pushes aside your garb, ready to finally take his turn on top.";
		else:
			say "     The battle ends with a wild swing from the squire that manages to knock you off your feet. He gives a wild laugh as he pants to catch his breath. 'I... I beat you? A knight?' he says in shocked amazement. Standing taller, he sheathes his small sword and approaches you. 'Not much of a knight all then, are you? Perhaps I'd make for a better knight and you should go back to being a lowly squire,' he muses, grabbing you in a surprisingly strong grip. Tugging down his breeches, he reveals his stiff member. His seven incher stands proud, hard and ready, as he pushes aside your garb, ready to finally take his turn on top.";
		WaitLineBreak;
		if player is female:
			say "[squirewins_vaginal_shift]";
		else:
			say "[squirewins_anal_shift]";
		now playercrestnum is knightcrestnum; [player replaces squire, taking his old crest]
	else if kpstatus is 2:
		if HP of player > 0:
			say "     Rather than fight further, you submit to the eager squire. He's laughs a little when you submit to him. 'That's right. My lord knight can defeat your master, and you know it,' he boasts proudly. That said, he sheathes his small sword and approaches you. 'And now, with the matter of the victor decided, let us have some fun. It's clear you need more training,' he says as he rolls you onto the ground. 'And I'd be happy to help a fellow squire out,' he says, tugging down his breeches to reveal his stiff member. His seven incher stands proud, hard and ready, as he pushes aside your garb.";
		else:
			say "     His last blow is followed by a leg trip that drops you to the ground, leaving you down in the dirt. He gives a mirthful laugh as he pants to catch his breath. 'Well fought, but it is clear who has received the better training,' he boasts proudly. That said, he sheathes his small sword and approaches you. 'And now, with the matter of the victor decided, let us have some fun. It's clear you need more training,' he says as he rolls you onto the ground. 'And I'd be happy to help a fellow squire out,' he says, tugging down his breeches to reveal his stiff member. His seven incher stands proud, hard and ready, as he pushes aside your garb.";
		WaitLineBreak;
		if player is female:
			say "[squirewins_vaginal]";
		else if player is male:
			say "[squirewins_anal_sq]";
		else:
			say "[squirewins_anal_n]";
	else if kpstatus is 3:
		if HP of player > 0:
			say "     Rather than fight further, you submit to the eager squire. He's momentarily surprised by your submission before giving a soft laugh in relief. 'That's right, brigand. Better you submit than face a true knight's protege,' he says proudly. After taking a moment to catch his breath, he approaches you. '[one of]My master will be so proud of me when he hears that I've defeated you, bandit,' the squire says[or]And so the young squire routed the villainous bandit,' the lad narrates as he raises his sword proudly[or]You were right to give up. You don't compare to the foes my lord knight has defeated, bandit,' the squire proclaims[or]At this rate, I shall surely prove myself worthy to my knightly master,' the squire states[or]That's right, bandit. My master would strike you down if you opposed me,' the young man brags[at random].";
		else:
			say "     His last blow is followed by a solid punch to the side of the head, dazing you to the point of falling to your knees. And while the hardworking nanites quickly seal the wounds, you're still quite hurt and unable to keep fighting. The victorious lad pants to catch his breath before standing tall and approaching you. '[one of]My master will be so proud of me when he hears that I've defeated you, brigand,' the squire says[or]And so the young squire defeated the rowdy bandit,' the lad narrates as he raises his sword proudly[or]You don't compare to the foes my lord knight has defeated, bandit,' the squire proclaims[or]At this rate, I shall surely prove myself worthy to my knightly master,' the squire states[at random].";
		WaitLineBreak;
		let analchance be 40 + ( anallevel * 10 );
		if player is mpreg_ok, increase analchance by 10;
		if anallevel is 1, now analchance is analchance / 2;
		if player is male and ( a random chance of anallevel in 100 succeeds or cunts of player is 0 ):
			say "[squirewins_ride]";
		else if player is female:
			say "[squirewins_vaginal]";
		else:
			say "[squirewins_anal_n]";
	else:
		if HP of player > 0:
			say "     Rather than fight further, you submit to the eager squire. He's momentarily surprised by your submission before giving a soft laugh in relief. 'That's right, beast. Better you submit than face a true knight's protege,' he says proudly. After taking a moment to catch his breath, he approaches you. '[one of]My master will be so proud of me when he hears that I've defeated you, creature,' the squire says[or]And so the young squire quelled the foul beast,' the lad narrates as he raises his sword proudly[or]You were right to give up. You don't compare to the beasts my lord knight has defeated, creature,' the squire proclaims[or]At this rate, I shall surely prove myself worthy to my knightly master,' the squire states[at random].";
		else:
			say "     His last blow knocks you on the side of the head, dazing you to the point of falling to your knees. And while the hardworking nanites quickly seal the wounds, you're still quite hurt and unable to keep fighting. The victorious lad pants to catch his breath before standing tall and approaching you. '[one of]My master will be so proud of me when he hears that I've defeated you, creature,' the squire says[or]And so the young squire defeated the foul beast,' the lad narrates as he raises his sword proudly[or]You don't compare to the beasts my lord knight has defeated, creature,' the squire proclaims[or]At this rate, I shall surely prove myself worthy to my knightly master,' the squire states[at random].";
		WaitLineBreak;
		let analchance be 40 + ( anallevel * 10 );
		if player is mpreg_ok, increase analchance by 10;
		if anallevel is 1, now analchance is analchance / 2;
		if player is male and ( a random chance of anallevel in 100 succeeds or cunts of player is 0 ):
			say "[squirewins_ride]";
		else if player is female:
			say "[squirewins_vaginal]";
		else:
			say "[squirewins_anal_n]";


to say squirewins_vaginal_shift:
	choose row monster from the table of random critters;
	if player is herm:
		say "     The smaller guy gets you down on your back and slides your ass up into his lap. Lifting your [cock size desc of player] cock[if cockname of player is not listed in infections of InternalList] and balls[end if], he smiles as he confirms the presence of your juicy pussy. 'This encounter gets better and better. This fallen knight has a scabbard as well as a sword. ";
	else:
		say "     The smaller guy gets you down on your back and slides your ass up into his lap. With a fine view of your juicy pussy, he smiles eagerly. 'This encounter gets better and better; this fallen knight has a scabbard for my sword. ";
	say "     But what kind of a knight cannot stand up to a squire? You're unworthy to be a knight for [if HP of player > 0]surrendering so easily[else]losing[end if] to a squire. You're clearly undeserving of your title,' he says as he pushes a few fingers into your cunt eagerly. He clumsily gropes and teases your cunny, relishing this opportunity with a female. After his inexperienced exploration, he gets his erection lined up with your wet folds and pushes his dribbling cock into your vagina with one confident motion.";
	say "     He gives a satisfied moan as he sets himself to thrusting into you. Being more familiar with being on the receiving end, his youthful eagerness shows in how he fucks you hard and fast. And while his inexperience with females shows, he does rein it in after his initially overeager start. And his skills seem to grow as he pounds into you, thrusting with increasing confidence. As his assertiveness increases, he [if player is male]takes hold of your [cock of player] cock and starts jerking you off as he makes love to you[else]puts a hand on your spread folds and tweaks your clit[end if]. This arouses your further, adding to the stimulation from having his pistoning rod in your quivering tunnel.";
	WaitLineBreak;
	say "     Your enjoyment of the increasingly skillful fucking you're receiving increases as it continues, though you don't quite realize why at first. At first you think it just your increasing excitement, but you come to realize the squire's cock is actually engorging further inside you, pushing deeper and filling you more fully. Looking up at him, you see these changes aren't limited to just his cock either. The young man's becoming more mature and strikingly handsome as his body grows to fill out his loose tunic. Even as you watch, his young face becomes that of a nobleman[if squirefeature is 1]. His scruffy brown hair is tamed even as he gains a manly beard to match[else if squirefeature is 2]. His blond locks become long and flowing, making him all the more attractive in his maturity[else if squirefeature is 3]. His pretty-boy face ages to become that of square-jawed man[else if squirefeature is 4]. His goofy grin is replaced by that of a mirthful man who knows no fear[else]. He looks down at you with those blue eyes of his features become regal and dignified[end if].";
	say "     But the changes not limited to him alone, your knightly body becoming smaller even as he grows, helping to make him seem all the more impressive. ";
	now bodyname of player is "Squire";
	now body of player is body entry;
	decrease humanity of player by 2;
	if facename of player is "Knight":
		now facename of player is "Squire";
		now face of player is face entry;
		say "     Even as you look up at him, you can feel your own face changing, loosing that mature, noble cast to become more youthfully attractive, ";
		decrease humanity of player by 2;
	if skinname of player is "Knight":
		now skinname of player is "Squire";
		now skin of player is skin entry;
		say "     Those marks and scars on your skin of brave battles fade away, leaving you with young, smooth skin. ";
		decrease humanity of player by 1;
	if cockname of player is "Knight":
		now cockname of player is "Squire";
		now cock of player is cock entry;
		if player is male:
			say "     Tingles run through your cock as it changes subtly and you feel less desire to use it, not when you might instead yourself be fucked. ";
		decrease humanity of player by 1;
	if tailname of player is "Knight":
		now tailname of player is "Squire";
		now tail of player is tail entry;
		decrease humanity of player by 2;
		say "     This comes with a reshaping of your buttocks into a cute and sexy bubble-butt made for and longing to be filled. ";
	say "     As you regress back to the body of a late teen, your lust to be fucked increases further as well, your body desiring to be screwed. You are meant to service noble knights such as the one now thrusting into you. You long to find your own knight to serve and service.";
	say "     Noticing that the crest on the maturing knight's tunic has changed to that of [stateknightcrest_new], you lift up the edge of your own tabard to confirm that the squire's crest of [stateknightcrest] has become yours now. The thought that you must find the knight with this crest pops into your head immediately. You feel a longing to enter his service as quickly as you can and, with your arousal very high at the moment, it is hard to fight the desire to search for him the moment the knight atop you is done.";
	WaitLineBreak;
	say "     The feel of this new knight's enlarged manhood gliding in and out of your heated cunny is wonderful. The feel of it drooling copious amounts of precum has you grinding back against him with yearning. Having watched you transform even as he did seems to be as great a turn-on for him as it has been for you. He quickens his pace further until finally his groaning release unleashes gooey blasts of his semen into your clenching tunnel, spilling his seed into your womb[if player is male]. You cum hard in response, your cock[smn] twitching and throbbing as you drain your [ball size] across yourself with a lustful moan[end if]. Once done, the knight slips his slick cock from your rear and wipes his [']sword['] across your buttocks before resheathing it in his breeches.";
	say "     'I was right; you make for a much better squire,' he says, speaking with a mature and dignified voice now even as he fingers your cum-slick hole. 'I would claim you as my own squire, but it would not be right to leave my former master bereft of one. I shall need to seek out a fine and brave lad or lass to follow me on my adventures.' Getting up, he goes over to his sword, now transformed into a longsword suitable for a knight, and sheathes it in its now matching scabbard. He helps you to your feet and gives your messy rear a swat to send you on your way. 'Seek out your master and serve him as well as I did.'";


to say squirewins_anal_shift:
	choose row monster from the table of random critters;
	if player is neuter:
		say "     The smaller guy gets you down on your back and slides your ass up into his lap. Your genderless crotch gives him momentary pause and he's drawn to rub across your nullpatch. 'What kind of knight has neither sword nor scabbard? No wonder you're unworthy to be a knight and [if HP of player > 0]surrendered so easily[else]lost[end if]. You're clearly undeserving of your title,' he says before pushing a few spit-slick fingers into your asshole to stretch you out. After this brief preparation, he gets his erection lined up with your asshole and pushes his dribbling cock into your rear with one confident motion.";
	else:
		say "     The smaller guy gets you down on your back and slides your ass up into his lap. 'What kind of a knight cannot stand up to a squire? You're clearly unworthy to be a knight for [if HP of player > 0]surrendering so easily[else]losing[end if] to a squire. You're clearly undeserving of your title,' he says before pushing a few spit-slick fingers into your asshole to stretch you out. After this brief preparation, he gets his erection lined up with your asshole and pushes his dribbling cock into your rear with one confident motion.";
	say "     As the young man sets himself to fucking you, he does so with some skill. And while more familiar with being on the receiving end, he has clearly learnt much about how an ass should be fucked. And his skills seem to grow as he pounds into you, thrusting with increasing confidence. As his assertiveness increases, he [if player is male]takes hold of your [cock of player] cock and starts jerking you off as he buggers you[else]puts a hand on your barren crotch and rubs at it while buggering you[end if]. This arouses your further, adding to the stimulation from having his pistoning rod in your back passage.";
	WaitLineBreak;
	say "     Your enjoyment of the anal fucking you're receiving increases as it continues, though you don't quite realize why at first. At first you think it just your increasing excitement, but you come to realize the squire's cock is actually engorging further inside you, pushing deeper and filling you more fully. Looking up at him, you see these changes aren't limited to just his cock either. The young man's becoming more mature and strikingly handsome as his body grows to fill out his loose tunic. Even as you watch, his young face becomes that of a nobleman[if squirefeature is 1]. His scruffy brown hair is tamed even as he gains a manly beard to match[else if squirefeature is 2]. His blond locks become long and flowing, making him all the more attractive in his maturity[else if squirefeature is 3]. His pretty-boy face ages to become that of square-jawed man[else if squirefeature is 4]. His goofy grin is replaced by that of a mirthful man who knows no fear[else]. He looks down at you with those blue eyes of his features become regal and dignified[end if].";
	say "     But the changes not limited to him alone, your knightly body becoming smaller even as he grows, helping to make him seem all the more impressive. ";
	now bodyname of player is "Squire";
	now body of player is body entry;
	if facename of player is "Knight":
		now facename of player is "Squire";
		now face of player is face entry;
		say "     Even as you look up at him, you can feel your own face changing, loosing that mature, noble cast to become more youthfully attractive. ";
	if skinname of player is "Knight":
		now skinname of player is "Squire";
		now skin of player is skin entry;
		say "     Those marks and scars on your skin of brave battles fade away, leaving you with young, smooth skin. ";
	if cockname of player is "Knight":
		now cockname of player is "Squire";
		now cock of player is cock entry;
		if player is male:
			say "     Tingles run through your cock as it changes subtly and you feel less desire to use it, not when you might instead yourself be fucked. ";
	if tailname of player is "Knight":
		now tailname of player is "Squire";
		now tail of player is tail entry;
		say "     This comes with a reshaping of your buttocks into a cute and sexy bubble-butt made for and longing to be filled. ";
	say "     As you regress back to the body of a late teen, your lust to be fucked increases further as well, your body desiring to be screwed. You are meant to service noble knights such as the one now thrusting into you. You long to find your own knight to serve and service.";
	say "     Noticing that the crest on the maturing knight's tunic has changed to that of [stateknightcrest_new], you lift up the edge of your own tabard to confirm that the squire's crest of [stateknightcrest] has become yours now. The thought that you must find the knight with this crest pops into your head immediately. You feel a longing to enter his service as quickly as you can and, with your arousal very high at the moment, it is hard to fight the desire to search for him the moment the knight atop you is done.";
	WaitLineBreak;
	say "     The feel of this new knight's enlarged manhood gliding in and out of you[if player is male], pressing at your prostate and drooling[else] as it drools[end if] copious amounts of precum has you grinding back against him with yearning. Having watched you transform even as he did seems to be as great a turn-on for him as it has been for you. He quickens his pace further until finally his groaning release unleashes gooey blasts of his semen into your clenching bowels[if player is male]. You cum hard in response, your cock[smn] twitching and throbbing as you drain your [ball size] across yourself with a lustful moan[end if]. Once done, the knight slips his slick cock from your rear and wipes his [']sword['] across your buttocks before resheathing it in his breeches.";
	say "     'I was right; you make for a much better squire,' he says, speaking with a mature and dignified voice now even as he fingers your cum-slick hole. 'I would claim you as my own squire, but it would not be right to leave my former master bereft of one. I shall need to seek out a fine and brave lad or lass to follow me on my adventures.' Getting up, he goes over to his sword, now transformed into a longsword suitable for a knight, and sheathes it in its now matching scabbard. He helps you to your feet and gives your messy rear a swat to send you on your way. 'Seek out your master and serve him as well as I did.'";

to say squirewins_anal_sq:
	say "     Pushing you over onto your front, the young man runs a hand across your ass before fingering your pucker. 'As the victor, it is my duty to play the knight and assist in training the weaker squire,' he says with lustful eagerness. He starts by warming you up by working a few spit-slick fingers into your hole before swapping to his cock. He lets his precum drool across your stretched pucker, further lubing you up before sinking his seven-inch penis into you.";
	say "     As the young man sets himself to fucking you, he does so with some skill. And while more familiar with being on the receiving end, he has clearly learnt much about how an ass should be fucked. And so, while this [']lesson['] is a little rough at the start, it quickly becomes enjoyable for you as well. The pistoning of his rod into your back passage provides some stimulation for your growing arousal.";
	WaitLineBreak;
	say "     As his pace quickens towards climax, you push your ass back into his thrusts, eager to have him seed you, hoping that may provide some outlet for your lustful need. And as if sensing this need, he quickens his pace and drives hard into you for a few last thrusts. Each shot of gooey cum that shoots into your bowels is accompanied by the young lad rubbing at your sexless groin in an effort to provide his [if kpstatus is 2]fellow squire[else]poor opponent[end if] at least some relief and added stimulation. You moan and cry out, your asshole squeezing and pulling at his cock as waves of unfocused pleasure run through you. This false orgasm leaves you more worn than satisfied, but it does at least slake your need for the moment.";
	if kpstatus is 2:
		say "     'That should be enough training for now, strange squire,' he says with a satisfied sigh. 'Perhaps that will aid you in your quest to become a better squire. But we should go now and rejoin our knights so we might service them. Your knight may even now have found a means to assist you in your genderless plight,' he adds in a misguided attempt to be encouraging. Spent and sticky, you see little point in talking further to the delusional lad and instead take your leave while you can.";
	else:
		say "     'And there you are, strange [if kpstatus is 3]brigand[else]beast[end if]. Perhaps that will [if kpstatus is 3]satisfy that which drives you to villainy[else]slake your monstrous rampage[end if].' Sticky, sore and aching a little, but also flush with the warm of his seed in your rear, you see little point in trying to correct the delusional lad and instead take your leave while you can.";
	say "     As the young man sets himself to fucking you, he does so with some skill. And while more familiar with being on the receiving end, he has clearly learnt much about how an ass should be fucked. And so, while this [']lesson['] is a little rough at the start, it quickly becomes enjoyable for you as well. The pistoning of his rod into your back passage and across your prostate sends shivers of erotic pleasure through you. This is further increased when the lustful lad reaches around to stroke and pump at your [cock of player] cock while he fucks you.";
	say "     As his pace quickens towards climax, you find your hips pressing up into each thrust, wanting the young man to spill his seed inside you. And given his pace and zeal, you are not left longing for long, with him thrusting deep into your tight hole and dumping several gooey shots of his seed. You cry out in orgasm in response, your lust overtaking you as you cry out while he cums inside you. Your [cock size desc of player] cock throbs in his hand and sprays its messy load onto the ground beneath you.";
	say "     'That should be enough training for now, [if HP of player > 0]my fellow[else]bold[end if] squire,' he says with a satisfied sigh. 'Perhaps that will aid you in your quest to become a better squire. But we should go now and rejoin our knights so we might service them,' he says with an eagerness that part of you feels as well. You try your best to shake off the desire to run off and find [if knightcrestnum is 0]a knight to be your master[else]your knight[end if]. Spent and sticky, you see little point in talking further to the delusional lad and instead take your leave while you can in the hopes of clearing your head.";


to say squirewins_ride:
	say "     The aroused squire pushes you down onto his back and pulls down his pants. Straddling you, he grinds his rear down onto your [cock size desc of player] cock. '[if cock length of player > 15]My master will surely be impressed when I tell him of your formidable size[else if cock length of player >= 10]My master will be quite impressed when I tell him of your size[else if cock length of player > 5]Not quite as grand as my lord's, but it'll still make for a good training session[else]You don't have much to show for yourself, but at least it can be a warm-up to get me limber before a proper training session[end if], [if kpstatus is 3]rogue[else]beast[end if].'";
	say "     Aiming your erection to his puckered hole, he lowers himself with [if cock length of player > 15]a groaning effort[else if cock length of player >= 10]a slow moan[else if cock length of player > 5]a soft moan[else]ease[end if] down onto your [cock size desc of player] shaft. It's clear the young man has had his asshole stretched more than a few times. That does not mean he's loose by any means; his inner muscles and anal rings are quite practiced and squeezing and pulling at your [cock of player] rod even as he rides you.";
	say "     'It is a squire's duty to serve his knight - not that a [if kpstatus is 3]brigand[else]monster[end if] like you would understand duty or honor. But regardless, I shall train hard to I might slake my knight's needs like a proper and loyal squire,' he pants as he grinds down harder. His pace quickens as he relaxes further, taking you hard and deep with increasing lustful zeal.";
	WaitLineBreak;
	say "     The horny squire certainly seems to be enjoying his [']training['], probably looking forward to the next time he might show off his growing skills to his knight. And you grow increasingly aroused as well, the young man's talents working you quickly towards your peak until you cannot hold back and unleash your [cum load size of player] load into him, [if cock width of player > 25]bloating his belly[else if cock width of player > 15]flooding his bowels[else]painting his prostate[end if] with your seed. He rides you through your orgasm and pulls off you once you're done. Grabbing your head, he presses it to his pulsing cock. Giving himself a few final strokes is all it takes before he cums messily, splattering your face with his sticky semen.";
	say "     'There, [if kpstatus is 3]bandit[else]beast[end if], let that be a reminder to you of the bold young warrior who bested you. Now go and cease your [if kpstatus is 3]thievery[else]rampage[end if].' Spent and sticky, you see little point in trying to correct the delusional lad and instead take your leave while you can.";

to say squirewins_vaginal:
	say "     The aroused squire slips his hand between your legs and runs his fingers over your wet slit[if HP of player > 0]. The[else]. Despite your attempts to resist, the[end if] touch of the handsome young man is quite arousing and you feel yourself growing flush from it.";
	if kpstatus is 2:
		say "     'It's rare for a lass to be a knight's squire[if player is male]... though I see you have a sword as well as a scabbard,' he adds, letting his fingers tease your [cock of player] cock momentarily before returning to your pussy[else],' he says as he fingers your increasingly wet pussy[end if]. 'And as the victor, it is my duty to play the knight and assist in training the weaker squire,' he says with a leer. As he pulls down his pants to reveal his seven inch penis to be hard and ready to perform this task.";
	else:
		say "     'Now normally, this is the knight's privilege, but my lord isn't here right now... And it is a squire's duty to aid his knight in fulfilling his obligations,' he says with a leer. As he pulls down his pants to reveal his seven inch penis to be hard and ready to perform this task.";
	WaitLineBreak;
	say "     With his cock pressed to your waiting folds, he wastes no time in thrusting into you with a satisfied moan. Being more familiar with being on the receiving end, his youthful eagerness shows in how he fucks you hard and fast. And while his inexperience with females shows, that he shows such zeal in his want for you provides a carnal excitement. In his lust, his hands [if player is male]reach around to stroke and pump at your [cock of player] cock[else if breast size of player > 1]grope your [short breast size desc of player] breasts while his tongue lavishes your nipples[else]squeeze your ass while he runs his tongue across your chest and neck[end if].";
	say "     As his pace quickens towards climax, you find your hips pressing up into each thrust, wanting the young man to spill his seed inside you. And given his pace and zeal, you are not left longing for long, with him thrusting deep into your wet cunny and dumping several gooey shots of his seed. You cry out in orgasm in response, your lust overtaking you as you cry out while he cums inside you.";
	if kpstatus is 2:
		say "     'That should be enough training for now,' he says with a satisfied sigh. 'Perhaps that will even leave you with a reminder of the bold squire with whom you trained one [short time of day]. But we should go now and rejoin our knights so we might service them.' Spent and sticky, you see little point in talking further to the delusional lad and instead take your leave while you can.";
	else:
		say "     'And there you are, [if kpstatus is 3]brigand[else]beast[end if]. Perhaps that will leave a reminder of the bold young warrior who bested you. Now go and cease your [if kpstatus is 3]thievery[else]rampage[end if].' Spent and sticky, you see little point in trying to correct the delusional lad and instead take your leave while you can.";

to say squirewins_anal_n:
	if kpstatus is 2:
		say "     'What a strange squire you are, to have neither sword nor scabbard?' he muses aloud as he feels your barren crotch. 'But that is fine for this lesson. As the victor, it is my duty to play the knight and assist in training the weaker squire,' he says, moving his touch to finger your asshole. He pushes you over onto your front and rubs his cock between your buns and across your pucker. After giving your nullpatch another curious rub, he eases his seven inch shaft into your precum-slickened hole.";
	else:
		say "     'What kind of a [if kpstatus is 3]rogue[else]creature[end if] are you, having neither sword nor scabbard?' he asks in surprise as he feels up your barren crotch. 'Very well then. If I am to teach you a lesson for your [if kpstatus is 3]thieving[else]rampaging[end if] ways, it shall have to be this way,' he adds, fingering your asshole as he pushes you over onto your front. After giving your nullpatch another curious rub while teasing his drooling cocktip against your pucker, he eases his seven inch shaft into your precum-slickened hole.";
	say "     As the young man sets himself to fucking you, he does so with some skill. And while more familiar with being on the receiving end, he has clearly learnt much about how an ass should be fucked. And so, while this [']lesson['] is a little rough at the start, it quickly becomes enjoyable for you as well. The pistoning of his rod into your back passage provides some stimulation for your growing arousal.";
	WaitLineBreak;
	say "     As his pace quickens towards climax, you push your ass back into his thrusts, eager to have him seed you, hoping that may provide some outlet for your lustful need. And as if sensing this need, he quickens his pace and drives hard into you for a few last thrusts. Each shot of gooey cum that shoots into your bowels is accompanied by the young lad rubbing at your sexless groin in an effort to provide his [if kpstatus is 2]fellow squire[else]poor opponent[end if] at least some relief and added stimulation. You moan and cry out, your asshole squeezing and pulling at his cock as waves of unfocused pleasure run through you. This false orgasm leaves you more worn than satisfied, but it does at least slake your need for the moment.";
	if kpstatus is 2:
		say "     'That should be enough training for now, strange squire,' he says with a satisfied sigh. 'Perhaps that will aid you in your quest to become a better squire. But we should go now and rejoin our knights so we might service them. Your knight may even now have found a means to assist you in your genderless plight,' he adds in a misguided attempt to be encouraging. Spent and sticky, you see little point in talking further to the delusional lad and instead take your leave while you can.";
	else:
		say "     'And there you are, strange [if kpstatus is 3]brigand[else]beast[end if]. Perhaps that will [if kpstatus is 3]satisfy that which drives you to villainy[else]slake your monstrous rampage[end if].' Sticky, sore and aching a little, but also flush with the warm of his seed in your rear, you see little point in trying to correct the delusional lad and instead take your leave while you can.";


Section 3 - Player Victory

to say beatthesquire:
	if inasituation is true:
		stop the action; [text taken care of at the source]
	say "     Sending his sword skittering away and knocking him to his knees, you are victorious over the squire. He scrambles backwards and back to his feet. ";
	if kpstatus is 1:
		say "     'You are indeed a brave and powerful knight. Perhaps you should face off against my master in honorable combat. He would surely best even you,' he proclaims as he recovers his sword and departs quickly.";
	else if kpstatus is 2:
		say "     'You are quite strong for a squire. Clearly I must train harder,' he says dejectedly as he recovers his sword. 'But the bold knight I serve could still best yours,' he adds with a laugh as he dashes off.";
	else if kpstatus is 3:
		say "     'You may have defeated me, brigand,' he says angrily, 'but my master shall deal with you and all the rest of you thieving bandits.' He recovers his sword and makes his escape quickly, perhaps to find this knight of whom he speaks.";
	else:
		say "     'You are a more powerful beast than I anticipated. But my master is a bold and brave knight. When he finds you, you will fall,' he declares as he snatches up his sword. He turns quickly and then dashes off, perhaps to find this knight of whom he speaks.";


Section 4 - Monster Insertion

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Squire"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The squire[or]The brave lad[or]The young man[or]The bold retainer[or]The brave squire[as decreasingly likely outcomes] [one of]swings his short sword at you[or]jab at you with his sword[or]manages a quick hit on you[or]feints before striking you with his blade[or]shows some skill as he dodges before thrusting at you[at random]!";
	now defeated entry is "[beatthesquire]"; [ Text when monster loses. ]
	now victory entry is "[losetosquire]"; [ Text when monster wins. ]
	now desc entry is "[squiredesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "thankfully human in appearance - that of [if ( player is herm ) or ( player is neuter) ]a younger and more androgynous[else if player is male]yourself, but as a young man[else]yourself, but as a tomboyish girl[end if]. Your expression is often one of youthful eagerness and optimism, regardless of how you're feeling at that moment";
	now body entry is "that of a young [if player is female]woman[else]man[end if]. Your body shows some muscle tone from exercise, speaking of a strength yet to come. Across your torso is a loose-fitting tabard with an emblem stitched into it of [stateplayercrest]";
	now skin entry is "smooth, lightly-tanned";
	now tail entry is "";
	now cock entry is "human";
	now face change entry is "the bones of your head shift with the occasional pop or crack that makes you wince. As these changes progress, your face becomes similar to your old one, but younger and [if ( player is herm ) or ( player is neuter) ]androgynous[else if player is male]more like that of a young man[else]more like that of a tomboyish girl[end if]";
	now body change entry is "changes spread through it. Your muscles tense and flex and your body reshapes itself, in time becoming that of a maturing [if player is female]tomboy[else]young man[end if]. Your body shows some muscle as if you'd recently started physical training. As you look down at your chest, a tabard that is slightly too big for you forms across your torso. In bright colors, its bears the crest of [stateplayercrest] at its center. Any attempt to cover or remove this has it return in short order";
	now skin change entry is "exciting tingles run all over your [bodydesc of player] body. Your flesh shifts and changes, subtly at first, until eventually becoming smooth, lightly tanned and quite human in appearance. There's the start of some callouses on your right hand from learning to wield something heavy, which your hand feel somehow empty without it";
	now ass change entry is "your buttocks muscles firm up, forming a cute bubble-butt made for fucking. You feel an empty craving to have something buried in your asshole";
	now cock change entry is "it pulses and throbs in arousal. Precum dribbles out with each pulse and your cockflesh changes as well. By the time you orgasm from the transformation, you're left with a very human-looking cock";
	now str entry is 14; [ These are now the creature's stats... ]
	now dex entry is 15; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 14; [ These values may be used as part of alternate combat. ]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 15;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 31; [ The monster's starting HP. ]
	now lev entry is 3; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5; [ Monster's average damage when attacking. ]
	now area entry is "Forest"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 7; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 5; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 0; [ Number of nipples the infection will give a player. ]
	now breast size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "erudite"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "conceptual"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

Section 5 - Endings

[
when play ends:
	if bodyname of player is "Squire":
		if humanity of player < 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Squire ends here.
