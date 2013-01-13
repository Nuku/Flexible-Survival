Version 1 of Leonard Events by Stripes begins here.
[version 1.2 - First 4 unique events]

"Adds a batch of random encounters with Leonard's Pride to Flexible Survival scattered around the city."
[Note: These will only be accessible after completing Leonard's Quest.]

Section 1 - Park

Part 0 - Core Event

leoparklist is a list of numbers that varies.  leoparklist is usually {1, 2, 5, 6, 9}.
leonardwrdesk is a truth state that varies.  leonardwrdesk is normally false.
leonardcabinet is a truth state that varies.  leonardcabinet is normally false.

PridePark is a situation.  PridePark is resolved.
The sarea of PridePark is "Park";

Instead of resolving PridePark:
	if leoparklist is not empty and a random chance of 1 in 3 succeeds:	[unique situations]
		sort leoparklist in random order;
		if entry 1 of leoparklist is 1, say "[leoparkscene1]";
		if entry 1 of leoparklist is 2, say "[leoparkscene2]";
		if entry 1 of leoparklist is 3, say "[leoparkscene3]";
		if entry 1 of leoparklist is 4, say "[leoparkscene4]";
		if entry 1 of leoparklist is 5, say "[leoparkscene5]";
		if entry 1 of leoparklist is 6, say "[leoparkscene6]";
		if entry 1 of leoparklist is 7, say "[leoparkscene7]";
		if entry 1 of leoparklist is 8, say "[leoparkscene8]";
		if entry 1 of leoparklist is 9, say "[leoparkscene9]";
	otherwise:		[randomized situations]
		let t be a random number between 1 and 5;
		if T is 1:					[treed kitty]
			say "     As you're travelling along, you hear the plaintive yowl of a feline and come to a stop.  Hearing it again, you head quickly in that direction[one of], drawn to it by your matronly urges[or], somehow sensing it to be a member of your pride[or], fearing it to be one of your precious pride kitties[purely at random][one of].  Following a short path,[or].  Pushing through the undergrowth,[or].  Running through the woods,[or].  Going around some flowering bushes,[or].  Heading down a short incline,[or].  Leaping a fallen tree,[in random order] you reach a small clearing where one of the feline girls has gotten herself caught in a tree, having fled from a creature.  Spotting you, she [one of]cries out 'Matron!' cheerfully, happy to see you here to rescue her[or]yowls again and clutches the tree even tighter[or]scrambles a little higher and yowls for your help[at random].  Having drawn the creature's attention to you, you prepare to [one of]fight[or]defend your smaller pride sister[or]at least buy her enough time to get away[or]protect your pride member[in random order].";
			fight;
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Having beaten your foe, you welcome the poor, scared kitty into your arms and snuggle with her.  She purrs happily and thanks you profusely with make cute kisses";
				if player is felinebodied:
					say ".  She nuzzles at your chest and starts nursing, drawing out your feline milk.  You purr soothingly to her that [one of]the pride[or]you[or]your pride[purely at random] [one of]loves her[or]will protect her[or]will keep her safe[or]is where she belongs[purely at random].  Soon she's calmed down and purring happily in your arms.  Once she's been fed, you put her down and release her back into the park[one of], cautioning her to be more careful[or], giving her rear a soft pat[or] after warning her to be more careful[or] after giving her ears a scritch[or] after giving her a final hug[purely at random].  Feeling better for having helped [one of]the pride[or]your pride[or]Leonard's pride[or]your pride sister[or]the cute lioness[or]the kitty girl[purely at random], you head back on your way.";
					increase morale of player by 1;
					infect "Feline";
					increase libido of player by 2;
					decrease humanity of player by 2;
				otherwise:
					say ".  She nuzzles at your chest and mewls softly, kneading her paws over your [bodytype of player] body, helping to restore your matronly feline body.  As your feline bosom returns, she wraps her lips around a nipple and starts to nurse milk from you.  You purr soothingly to her that [one of]the pride[or]you[or]your pride[purely at random] [one of]loves her[or]will protect her[or]will keep her safe[or]is where she belongs[purely at random].  Soon she's calmed down and purring happily.  Once she's been fed, you put her down and release her back into the park[one of], cautioning her to be more careful[or], giving her rear a soft pat[or] after warning her to be more careful[or] after giving her ears a scritch[or] after giving her a final hug[purely at random].  Feeling better for having helped [one of]the pride[or]your pride[or]Leonard's pride[or]your pride sister[or]the cute lioness[or]the kitty girl[purely at random], you head back on your way.";
					increase morale of player by 1;
					felinebodyshift;
					increase libido of player by 2;
					decrease humanity of player by 2;
			if fightoutcome >= 20 and fightoutcome <= 29:
				say "     As you recover from the fight, you look around to see that the feline girl was at least able to get away during the struggle.";
			otherwise if fightoutcome >= 30:
				say "     Taking a moment to make sure that the feline girl has safely come down the tree and is ready to get away, you make a break for it in the other direction, keeping your opponent's attention on you long enough for her to escape.";
		otherwise if T is 2 or T is 3:	[wandering kitty]
			say "     As you walk through the park, you run into another of the cute Feline girls running around.  It takes you but a moment to recognize her as [one of]one of Leonard's pride[or]one of your smaller pride sisters[or]a member of your pride[or]a member of the pride[purely at random], [one of]remembering her from the battle[or]recognizing her from the recital[or]having seen her in the den before[or]catching Leonard's scent upon her[purely at random].  You kneel down and open your arms wide for her, welcoming her with a hug and a kiss.  She snuggles up to you and is soon nuzzling at your chest";
			if player is felinebodied:
				say " and wrapping her lips around your nipple.  She starts nursing, purring happily as she does while you rumble to her [one of]about what an good and loyal kitty she is[or]about what a pretty kitty she is[or]that you and Leonard love her[or]about how much her pride cares for her[as decreasingly likely outcomes].  You pet her lovely, leonine body, patting her bottom and fingering her pussy to get her worked up for another session with Leonard.  After she's been fed and her bond with the pride has been renewed, you release her back in the park with a reminder that Leonard would welcome another visit from her soon.";
				infect "Feline";
				increase libido of player by 2;
				decrease humanity of player by 2;
			otherwise:
				say ", kneading her paws over your [bodytype of player] until your matronly figure is restored and she can begin nursing from your milk.  She purrs happily as she does while you rumble to her [one of]about what an good and loyal kitty she is[or]about what a pretty kitty she is[or]that you and Leonard love her[or]about how much her pride cares for her[as decreasingly likely outcomes].  You pet her lovely, leonine body, patting her bottom and fingering her pussy to get her worked up for another session with Leonard.  After she's been fed and her bond with the pride has been renewed, you release her back in the park with a reminder that Leonard would welcome another visit from her soon.";
				felinebodyshift;
				increase libido of player by 2;
				decrease humanity of player by 2;
		otherwise if T is 4:			[injured kitty]
			say "     As you travel through the park, you come across another of the cute Feline girls.  She's been hurt and is nursing an injured [one of]footpaw[or]side[or]head[or]shoulder[or]arm[or]leg[purely at random].  It takes you but a moment to recognize her as [one of]one of Leonard's pride[or]one of your smaller pride sisters[or]a member of your pride[or]a member of the pride[purely at random], [one of]remembering her from the battle[or]recalling her helping with the recital[or]having seen her in the den before[or]catching Leonard's scent upon her[purely at random].  She mewls plaintively as you approach, smiling softly at the sight of her matron coming to her aid.";
			if medkit is owned or healing booster is owned:
				if medkit is owned:
					let medloss be 0;
					if ( "Expert Medic" is not listed in feats of player and a random chance of 1 in 10 succeeds ) or ( "Expert Medic" is listed in feats of player and a random chance of 8 in 100 succeeds ):
						let medloss be 1;
						delete medkit;
					say "     Your matronly desire to protect your pride girls kicks in and you don't hesitate to help.  Remembering your medkit, you pull it out and start to patch her up.  She winces and mewls softly as you get her bandaged up and give her some meds from the kit[if medloss is 1].  This uses up the last of that medkit, but you feel no regrets over that at the moment[end if].  She snuggles up to you, giving you several kisses in thanks.  You guide her muzzle down to your chest ";
				otherwise if healing booster is owned:
					delete healing booster;
					say "     Your matronly desire to protect your pride girls kicks in and you don't hesitate to help.  Recalling the healing booster you have, you pull it out and inject it close to her wound.  She winces and mewls, but starts to purr as the medecine starts to take effect.  She snuggles up to you, giving you several kisses in thanks.  You guide her muzzle down to your chest ";
				if player is felinebodied:
					say "so she may nurse for your feline milk to help her recover faster.  As she suckles your milk, you [one of]purr to her that you and Leonard will love and protect her[or]purr to her that her pride will take care of her[or]remind her to be more careful[or]purr that the pride will protect her[or]purr to her to continue doing her best for the pride[purely at random].  Once she's had a chance to feed and heal, you release her back into the park with a pat on her bottom.  You feel a little better for having helped your pride.";
					increase morale of player by 1;
					infect "Feline";
					increase libido of player by 2;
					decrease humanity of player by 2;
				otherwise:
					say "which quickly shifts back to its leonine pride mother form, allowing the weak kitty to nurse from you to help her recover faster.  As she suckles your milk, you [one of]purr to her that you and Leonard will love and protect her[or]purr to her that her pride will take care of her[or]remind her to be more careful[or]purr that the pride will protect her[or]purr to her to continue doing her best for the pride[purely at random].  Once she's had a chance to feed and heal, you release her back into the park with a pat on her bottom.  You feel a little better for having helped your pride.";
					increase morale of player by 1;
					felinebodyshift;
					increase libido of player by 2;
					decrease humanity of player by 2;
			otherwise:
				if Feline_attached is 0:
					if player is felinebodied:
						say "     Having any proper means to help her here, you lift the feline girl carefully into your arms, cradling her to your chest.  She clings to you weakly and nuzzles at your chest and starts to nurse from your bosom, suckling your milk.  You make your way quickly back to Leonard's den.  The maids, noticing you first, exclaim in surprise and rush over, soon taking the injured feline from your care so they may tend to her.  Leonard, drawn by the commotion, checks to make sure that you are alright before hugging you tightly to his chest[one of].  He thanks you for helping the poor girl get back here[or].  He reassures you that the maids can take care of the girl from here[or].  He tells you how relieved her is that you're safe[purely at random][one of].  He snuggles you close, purring softly to you and giving you several kisses while stroking your sexy rear[or].  He gives you a passionate kiss and holds you tight, telling you again what a fine mate you are[or].  He runs a paw along your feline body and rumbles again about what a matron you've become for the pride[or].  He gives you a tender kiss and tells you how lucky the pride is to have you[at random].  You and Leonard snuggle together in his large chair, smiling when the maids return later to tell you that the girl has been patched up and is resting comfortably.";
						infect "Feline";
						increase libido of player by 2;
						decrease humanity of player by 2;
						increase lastfuck of Leonard by 1;
					otherwise:
						say "     Having any proper means to help her here, you lift the feline girl carefully into your arms, cradling her to your chest.  She clings to you weakly and nuzzles at your chest, kneading her paws over it.  As your matronly feline body returns, the injured kitty starts to nurse, the milk soothing her somewhat.  You make your way quickly back to Leonard's den.  The maids, noticing you first, exclaim in surprise and rush over, soon taking the injured feline from your care so they may tend to her.  Leonard, drawn by the commotion, checks to make sure that you are alright before hugging you tightly to his chest[one of].  He thanks you for helping the poor girl get back here[or].  He reassures you that the maids can take care of the girl from here[or].  He tells you how relieved her is that you're safe[purely at random][one of].  He snuggles you close, purring softly to you and giving you several kisses while stroking your sexy rear[or].  He gives you a passionate kiss and holds you tight, telling you again what a fine mate you are[or].  He runs a paw along your feline body and rumbles again about what a matron you've become for the pride[or].  He gives you a tender kiss and tells you how lucky the pride is to have you[at random].  You and Leonard snuggle together in his large chair, smiling when the maids return later to tell you that the girl has been patched up and is resting comfortably.";
						felinebodyshift;
						increase libido of player by 2;
						decrease humanity of player by 2;
						increase lastfuck of Leonard by 1;
				otherwise:
					if player is felinebodied:
						say "     Having any proper means to help her here, lower the feline girl currently at your chest to the ground and lift up the other in her stead.  Surprisingly, the wild feline makes no objection, instead clinging to you with a paw in your hand.  Your injured charge nuzzles at your chest, kneading her paws over it.  As your matronly feline body returns, the injured kitty starts to nurse, the milk soothing her somewhat.  You make your way quickly back to Leonard's den with the wild girl following quietly at your side.  The maids, noticing you first, exclaim in surprise and rush over, soon taking the injured feline from your care so they may tend to her.  Leonard, drawn by the commotion, checks to make sure that you are alright before hugging you tightly to his chest[one of].  He thanks you for helping the poor girl get back here[or].  He reassures you that the maids can take care of the girl from here[or].  He tells you how relieved her is that you're safe[purely at random][one of].  He snuggles you close, purring softly to you and giving you several kisses while stroking your sexy rear[or].  He gives you a passionate kiss and holds you tight, telling you again what a fine mate you are[or].  He runs a paw along your feline body and rumbles again about what a matron you've become for the pride[or].  He gives you a tender kiss and tells you how lucky the pride is to have you[at random].  You and Leonard snuggle together in his large chair with the wild feline nursing from your chest once more.  You all smile when the maids return later to tell you that the girl has been patched up and is resting comfortably.";
						infect "Feline";
						increase libido of player by 2;
						decrease humanity of player by 2;
						increase lastfuck of Leonard by 1;
					otherwise:
						say "     Having any proper means to help her here, you lift the feline girl carefully into your arms, cradling her to your chest.  She clings to you weakly and nuzzles at your chest, kneading her paws over it.  As your matronly feline body returns, the injured kitty starts to nurse, the milk soothing her somewhat.  You make your way quickly back to Leonard's den.  The maids, noticing you first, exclaim in surprise and rush over, soon taking the injured feline from your care so they may tend to her.  Leonard, drawn by the commotion, checks to make sure that you are alright before hugging you tightly to his chest[one of].  He thanks you for helping the poor girl get back here[or].  He reassures you that the maids can take care of the girl from here[or].  He tells you how relieved her is that you're safe[purely at random][one of].  He snuggles you close, purring softly to you and giving you several kisses while stroking your sexy rear[or].  He gives you a passionate kiss and holds you tight, telling you again what a fine mate you are[or].  He runs a paw along your feline body and rumbles again about what a matron you've become for the pride[or].  He gives you a tender kiss and tells you how lucky the pride is to have you[at random].  You and Leonard snuggle together in his large chair with the wild feline nursing from your chest once more.  You all smile when the maids return later to tell you that the girl has been patched up and is resting comfortably.";
						felinebodyshift;
						increase libido of player by 2;
						decrease humanity of player by 2;
						increase lastfuck of Leonard by 1;
				attempttowait;
				move player to Lion's Den;
				now battleground is "void";
		otherwise if T is 5:			[workgroup on patrol]
			say "     While [one of]walking along the path[or]searching through the woods[or]pausing at a children's play area[or]pushing through the underbrush[purely at random], you're met by your work group as they're out on a patrol[one of][or], keeping an eye out for troublemakers[or], helping to protect the other girls in the pride[or], dealing with stray felines from the broken prides[or] between errands for Leonard[as decreasingly likely outcomes].  [one of]Pleased to see their matron[or]Happy to see you[or]Mewling happily[purely at random], the four of them come up to you and snuggle you tightly.  Much kissing and groping ensues between you all as [one of]you snuggle with the friendly felines[or]you let your pride favourites nurse from you[or]you pet the lovely kitties[or]the lovely kitties pile atop their dear matron[purely at random]";
			if cocks of player > 0:
				if a random chance of 1 in 3 succeeds:
					say ".  After they fondle your [cock of player] cock to erection, you pull Raven, the dark-haired girl, into your lap and fuck her while she nurses.  You purr lovingly to her, telling her how pleased you are with her for watching out for your other special girls.  Not neglecting them, you make sure to give plenty of attention to the other girls as well";
				otherwise:
					say ".  Fondling your [cock of player] cock to erection, they take turns licking it before playing [randomgame] to decide who gets to [one of]ride[or]suck[or]play with[as decreasingly likely outcomes] it.  Regardless of the winner, you make sure to give them all plenty of attention, especially clever Raven, the black-haired one, who's been leading the group in your stead";
			otherwise:
				if a random chance of 1 in 3 succeeds:
					say ".  You push Raven, the black-haired girl, onto her back and bury your face between her legs.  You lick and lap at her pussy, making her moan and mewl in ecstasy.  Wanting to thank her for [one of]keeping an eye on your favourite girls[or]leading the small band in your stead[or]taking care of your personal favourites[or]helping out with your personal girls[purely at random], you [one of]fellate her[or]eat her out[or]lick her pussy[purely at random] until she cums repeatedly";
				otherwise:
					say ".  You push one of the girls onto her back and bury your face between her legs.  You lick and lap at her pussy, making her moan and mewl in ecstacy.  You lavish attention upon the lucky girl, [one of]fellating her[or]eating her out[or]licking her pussy[purely at random] until she cums repeatedly";
			if cunts of player > 0:
				say ".  Your pussy gets fingered and licked by the loving girls while you finger a pair of them in return.  It's a delight for you to hear their mewls of pleasure as you get them off and they help the other two get off as well.";
			otherwise:
				say ".  You finger one of the girls with each hand, pumping fingers into their juicy cunts until they come.  It's a delight for you to hear their mewls of pleasure as you get them off and they help the other two get off as well.";
			say "     Once your fun is all done, you give them parting kisses and hugs, letting them get back to their duties.  Your encouter with them has lifted your spirits and makes you feel closer to your pride.";
			felinebodyshift;
			infect "Feline";
			decrease humanity of player by 3;
			increase morale of player by 1;
			if morale of player < 0, increase morale of player by 2;
	if libido of player > 100, now libido of player is 100;


to say randomgame:
	say "[one of]rock-paper-scissors[or]choosies[or]eeny-meeny-miny-moe[or]roshambo[as decreasingly likely outcomes]";


Part 1 - Special Park Pride 1 - Leonard out for a Walk

to say leoparkscene1:
	say "     As you're travelling through the park, you recieve a pleasant surprise as you come across Leonard walking in the park.  He smiles to you and welcomes you into his arms, kissing his mate lovingly.  'I decided to take a short walk in the park to [if daytimer is day]take in the pleasant sights.  And I am treated by the most pleasant sight of all[otherwise]stretch my legs and get some fresh air.  And I am treated to the refreshing sight of my lovely mate[end if],' he purrs, stroking his paw over your face.  'Come, let us walk together, my dear,' he says, offering his arm to you like the refined gentleman he is.";
	say "     You partake in an enjoyable walk with the lion as he talks with you about the pride and how things in the park have been changing.  It's clear he's out for more than just to stretch his legs, but is also checking up on the state of things in the area.  While he's quelled his primary opponents, things are still very unsettled in the park and other males are still prowling around.  But it is not all business either, as he enjoys the natural beauty, smells the flowers and happily greats those other pride kitties he encounters.  A few of them stop to nurse from you[if the player is not felinebodied], helping to restore your matronly figure, [end if]but they don't linger long, leaving their master and matron to enjoy their pleasant walk together.  It is a very enjoyable and relaxing time for you, as none willing to oppose the two leaders of the most powerful pride in the park.  Eventually, the meandering steers back to lion's den and you join him inside.";
	if the player is not felinebodied:
		felinebodyshift;
	otherwise:
		infect "Feline";
	now lastfuck of leonard is turns + 8;
	remove 1 from leoparklist;
[	add 7 to leoparklist;		[opens next walk]		]
	now battleground is "void";
	move player to Lion's Den;


Part 2 - Special Park Pride 2 - Cabinet

to say leoparkscene2:
	say "     While travelling through the park, you hear an odd sound coming from nearby.  Heading cautiously towards the intermittent scraping sound, you spot one of the feline girls sniffling and grunting as she struggles to drag a large cabinet.  You're quite surprised to see her trying to drag the finely crafted cabinet all on her own given that it's bigger than she is.  Seeing that she's exhausted and on the verge of tears, you rush over to join her.  Spotting you, she stops trying to shuffle it past a rock and rushes into your arms.  After nursing for a little while to soothe her[if the player is not felinebodied] and restore your matronly figure[end if], you scritch her ears and ask her why she's struggling with the furniture.";
	felinebodyshift;
	say "     'Master Leonard had mentioned that something nicer than the bookshelf was needed for his kitchen if he was going to be able to entertain guests.  I'd been looking for a good one for soooo long and this one would fit just right in that open spot and everything.  I was so happy when I found this one and I was bringing it back.  I had a cart and a blanket to cover it and straps and everything, matron,' she insists.  'But then -sniff- that coyote that's always hanging around spotted me and he was mean and hit me and he took my cart and all the rest of it.  He said he needed it for some -sniff- stupid prank and then I was stuck and I couldn't leave the cabinet to find another cart and it was -sniff- supposed to be a surprise and another girl could've gotten it or...'";
	attempttowait;
	say "     By this point, her narrative starts to break down as the tears struggle to return, so you cuddle her in your arms and tell her that you'll help her bring it back to the cave.  She smiles up at you and hugs you very tightly, thanking you repeatedly between kisses.";
	say "     After some more playful snuggling, you head over to the cabinet and look it over.  It's an older style with round glass windows built into the upper half and several drawers below that.  While it's not as large as others you've seen, it will fit much better into the limited space of Leonard's cave.  And while you may not be that knowledgeable of such things, it certainly looks like a well-made and older collector's piece.  It is fairly heavy and you're impressed that the smaller girl was able to drag it so far, a testament to her determination to please the handsome lion.";
	say "     With your help and a few more breaks along the way, the cabinet arrives safely at Leonard's cave.  You allow the feline girl to present it to Leonard, who seems quite pleased with her acquisition and quickly has the maids move it into position.  As she'd said, it fits nicely into one side of the kitchen area, freeing that bookshelf to join the others in the sitting room area.";
	attempttowait;
	say "     You hang back during the installation, letting the kitty take the spotlight for her find, but when Leonard's ushers her off to receive her reward, she insists that you come as well.  You join them on the bed just as she's helping Leonard out of his suit coat.  Spotting the lion's stiff member, you take it in your paw and stroke it while giving him a kiss.";
	say "     He cuddles the hard-working girl close and lickgrooms between her legs, running his tongue over her pussy and getting her to moan in delight.  His tongue then moves upwards across her breasts.  He rumbles and purrrs to her about what a good, obedient girl she is and compliments her on her determination.  As he lifts her up into his arms, you hold his cock in position.  You watch closely as he lowers her down onto his stiff cock, seeing her wet folds spread for her handsome lover's glans before sliding down onto his maleness.  She mrowls in delight and wraps her arms around him, purring and mewling in delight as he bounces her in his lap, fucking her.";
	say "     You snuggle up behind her and purr to her about what a good and loyal kitty she is and how she never gave up in her goal to please her master.  You lick her ears and rub your fingers at her wet folds, pressing them around Leonard's thrusting shaft.  Feeling it pumping inside her, you long to have it inside you again, but you know that this is her special time with Leonard and you're determined to make it even better for her by stroking and fingering the kitty through several smaller orgasms and a change of position to lying atop you so she can nurse from your bosom while being fucked.  She comes to a loud and powerful orgasm that soaks your paw as the lion finally cums and pumps her small belly full of his seed.  Left with a rounded tummy from the lion's output, she purrs happily as her mate and her matron snuggle up on either side of her for a much-needed catnap.";
	infect "Feline";
	now battleground is "void";
	remove 2 from leoparklist;
	now leonardcabinet is true;
	move player to Lion's Den;


Part 3 - Special Park Pride 3 - Wounded Non-Pride Kitty

to say leoparkscene3:
	say "***Special 3.";
	remove 3 from leoparklist;


Part 4 - Special Park Pride 4 - Infected Kitty

to say leoparkscene4:
	say "***Special 4.";
	remove 4 from leoparklist;
	add 8 to leoparklist;


Part 5 - Special Park Pride 5 - Kitty Rescue

to say leoparkscene5:
	if hermaphrodite is not banned:
		say "     You hear a plaintive yowl in the distance and your matronly instincts kick in before you even know what's happening.  You move as quickly as you can towards the sound.  You soon arrive at a pair of wolves who have one of the feline girls pinned and are getting ready to ravage her.  Hearing you charging, one remains to deal with their prisoner while the other turns to confront you with a growl.";
		challenge "Painted Wolf Herm";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Having dealt with the first of them, you approach the second.  Shi's managed to get the feline girl partially tied up in the time you've been occupied and turns to deal with you so shi can enjoy hir prize.";
			challenge "Painted Wolf Herm";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Having defeated the second of the wolves, you head over to the kitty girl and free her from her bondage.  She hugs herself tightly to you and kisses you repeatedly as she thanks you for saving her";
				if player is felinebodied:
					say ".  Nuzzling at your chest, she starts nursing, drawing out your feline milk.  You purr soothingly to her that the pride will protect her.  Soon she's calmed down and purring happily in your arms.  Once she's been fed, you put her down and turn your attention towards the fallen wolves.";
				otherwise:
					say ".  Nuzzling at your chest, she mewls softly and kneads her paws over your [bodytype of player] body, helping to restore your matronly feline body.  As your feline bosom returns, she wraps her lips around a nipple and starts to nurse milk from you.  You purr soothingly to her that the pride will protect her.  Soon she's calmed down and purring happily.  Once she's been fed, you put her down and turn your attention towards the fallen wolves.";
				say "     With your matronly instincts running strong, you head towards the pair of would-be assailants.  The two wolves, still dazed after their defeat, can only struggle weakly as you and the feline girl press them to your bosom.  With their muzzles pressed to your nipples, your still-flowing milk dribbles across their lips and soon they start suckling for more.  You purr softly to them about how they should calm down and that they'd submit like good kitties.  At first, they growl a little at these words, but don't stop nursing.";
				say "     The kitty girl, meanwhile, is snuggled between them, stroking their backs.  At your prompting, she purrs to them about how she'd welcome them as her sisters.  They were just being too rough before, you tell them.  If they were good, submissive kitties, they'd all get along so much better.  To emphasize this, the kitty slides her paws under them, groping them to draw soft moans.";
				say "     As this treatment progresses, the wolves start to change, becoming smaller and more feminine.  There ears turn more feline in shape and their muzzles a little shorter.  While still rather lupine by the time it's done, they do have some leonine traits starting to show.  Grinning happily at this trio, you give the kitty girl a kiss and a fondle.  Dazed from their meal of matronly milk, the other two listen obediently as you tell them to follow the kitty girl back to Leonard's cave where he can help them become proper sisters for their lovely kitty friend.  You can't help but grin happily as you watch them go.";
				increase morale of player by 1;
				increase libido of player by 3;
				decrease humanity of player by 3;
		if fightoutcome >= 20 and fightoutcome <= 29:
			say "     Defeated, you are pushed to the ground beside the bound feline girl.  The wolves then proceed to mount you both repeatedly, taking turns with each of you.  Because you'd tried to keep them from their prize, they are rough and don't hold back, pounding away at you as you moan beneath them.  By the time they are done, you are leaking wolf cum from every orifice.  Too weak to struggle, you can only watch as they head off with the considerably transformed feline girl.  Changing much more dramatically than you, she's well on her way to being a herm wolf herself and has been lost to the pride.[impregchance]";
			decrease morale of player by 3;
			infect "Painted Wolf Herm";
		otherwise if fightoutcome >= 30:
			say "     Forced to flee, you must abandon the feline girl to her lupine fate.  It saddens you to lose a member of the pride.";
			decrease morale of player by 3;
	otherwise:
		say "     You come across the signs of a struggle and a few scattered tufts of feline fur and the musky scent of lupine sex.  It seems that one of the feline girls was captured and mated here.  From the way her paw prints change, it seems she was fucked and transformed into a wolf by her assailants.  You are saddened by this, but know there's little you can do about it at this point.";
	remove 5 from leoparklist;


Part 6 - Special Park Pride 6 - Work Group Fight

to say leoparkscene6:
	say "     While following a wooded path, you hear the sounds of fighting breaking out up ahead.  At first, you prepare to turn around and find another route, but the angry growls and snarls of felines changes your mind.  Advancing quickly, you find your work group in the midst of a pitched battle with a [if hermaphrodite is not banned]painted wolf[otherwise]bear woman[end if].  The girls seem to be faring quite well and fighting as a unit with the black-haired Raven leading the charge.  While it's pretty clear they'll prevail, you rush to their aid rather than risk one of them getting hurt unnecessarily.  Seeing you join the fight, the creature makes a hasty retreat.  The girls let it go rather than pursue it, instead turning their attention to snuggling their matron.";
	say "     Another feline, the [if hermaphrodite is not banned]wolf[otherwise]bear[end if][']s original opponent, comes out of hiding and purrs happily as she kisses all of her rescuers.  You end up spending an enjoyable break with the lovely felines, letting them all nurse from you[if player is not felinebodied], restoring your feline form[end if] before advancing to some more sexual play.  Your impromptu orgy with the female felines involves a lot of licking, kissing and fingering of their juicy pussies[if cocks of player > 0].  Your original trio of girls take turns licking and sucking at your cock until you're hard.  You then alternate between fucking Raven and the girl they'd been rescuing.  You finish by cumming hard into the feline pride member with the work group pairing off with one set licking and sucking you clean with the other two take turns licking the cum from the seeded girl's pussy[otherwise if cunts of player > 0].  The horny felines switch partners several times, sharing their love for their pride mates.  They eventually finish up with a pair from the work group taking turns at your pussy with the other two doing the same to the girl they rescued[end if].  Once everyone's had another powerful orgasm, you all snuggle up together in a warm bundle of fur and love on the grass, taking a nap.  After some kisses and snuggling when you awaken, the snuggle pile breaks up with the work group returning to their patrolling and the feline girl getting back to her assigned duties.";
	if player is not felinebodied:
		felinebodyshift;
		infect "Feline";
	otherwise:
		infect "Feline";
		infect "Feline";
	remove 6 from leoparklist;
	now battleground is "void";
	rest;

Part 7 - Special Park Pride 7 - Walk #2

to say leoparkscene7:
	say "***Special 7.";
	remove 7 from leoparklist;
[	add 10 to leoparklist;		[opens next walk]	]


Part 8 - Special Park Pride 8 - Infected Kitty #2

to say leoparkscene8:
	say "***Special 8.";
	remove 8 from leoparklist;


Part 9 - Special Park Pride 9 - Writing Desk

to say leoparkscene9:
	now tempnum is 0;
	say "     You are surprised as your path through the park is cut off by a large writing desk carried jointly by your work group.  When you call out to them, they put their heavy load down and rush into your arms, snuggling and kissing you.  They purr and snuggle with you running their paws over your [bodydesc of player] body[if the player is not felinebodied], working to restore the sexy figure of their matron[end if].  Raven, seeming rather grumpy, is pushed to the front and allowed to nurse from your bosom, which does much to lift her spirits.  As she's suckling your milk, you stroke her dark hair and ask the others about what's going on.";
	if player is not felinebodied:
		felinebodyshift;
		now tempnum is 1;
	say "     'Master Leonard had mentioned that a writing desk would be handy for writing letters and about his life.  Since it was a big job, he entrusted it to us,' Jasmine says with obvious pride.  'It took us a while to find a really good one, but Raven talked to a pretty butterfly girl who told us where to find this one.  It's just been a lot of work to bring it all this way and we're getting pretty tired.'";
	say "     'But we're almost there,' Raven adds with a smile, her mood much improved after her refreshing drink of matron milk.";
	say "     When you offer to help them take it the rest of the way, you are immediately buried underneath a pile of grateful kitties.  They kiss, snuggle and grope you lovingly for several minutes, during which they all get to take a drink of your milk, before it's decided to get back to work.  The writing desk is quite large and is considerably taller than the girls trying to carry it.  It's an older style with the narrow build and a door that lowers to become the writing area as well as a shelving section above it.  While not as ostentacious as big office desks can be, it will fit much better into the limited space of Leonard's cave.  And while you may not be that knowledgeable of such things, it certainly looks like a well-made and older collector's piece.  It is made of solid wood and is quite heavy, making it clear how much work the girls have been putting into this gift for their leonine mate and master.";
	attempttowait;
	say "     Carrying the desk on its back, you hold the middle of the heavier lower end and a girl takes each corner.  Once you've gotten moving, Yarrow (on your right) turns to you.  'Matron, I've got a riddle for you.  Why is a raven like a writing desk?'";
	say "     'Argh!' Raven growls from the front and the girl on your right laughs merrily.  Dahlia (to your left) explains that she's been asking that riddle about a dozen times since they started.  They're clearly just having some teasing fun and even the black-haired lioness has a bit of a smile.";
	say "     'Well, do you know why a raven is like writing desk?' the girl asks again.";
	say "     Deciding to turn the tables on her, you smile and nod.  'I do, my sweet kitty.  A raven is like a writing desk because they'll both hurt really, really hard when they hit you upside the head and I'm pretty sure one of them will really soon if you don't stop teasing poor Raven - though I can't be sure which it'll be.'  The others start giggling, which breaks out into full laughter as Raven gives Yarrow a dark, toothy grin.";
	say "     Your added help and companionship keep the girls in good spirits and help them get the writing desk back to the tunnel den without the need for another break.  Leonard happily greets you all, having heard your laughing as you approached.  He's quite pleased with the great find, being very complimentary of its craftsmanship and at the amount of work the girls clearly went through to bring it to him.  He gives all the girls hugs and kisses while the maids get it put into place.  It fitted nicely to one side of the tunnel and, with some proper propping up, is made to sit level.  The Chippendale chair is placed in front of it, giving Leonard a proper writing space.";
	attempttowait;
	say "     You let the girls snuggle up to Leonard during the installation, but follow along with Leonard afterwards as he escorts them towards the plush bed.  It seems Leonard would enjoy your assistance in ensuring all four girls are properly rewarded for their efforts, something you're more than happy to help him with.  With Jasmine and Dahlia in your arms, you watch as Raven and Yarrow lick and kiss at the lion's cock.  There's no sign of discord despite the earlier teasing, showing how close they've all become.  The dark-haired girl even moves back to lick at her friend's pussy while Yarrow sucks the lion off.";
	if cocks of player > 0 and cunts of player > 0:
		say "     Meanwhile, you have two girls of your own to tend to.  They nurse from your bosom side by side while fingering your pussy and stroking your cock.  After their drink, they give you a cute mewl and several kisses before Jasmine climbs into your lap and down onto your cock.  Dahlia nuzzles under her tail and licks at her juicy pussy and your thrusting cock.  Looking over, you spot the others in a similar position with Raven getting a ride on Leonard's throbbing manhood while Yarrow returns the favour by licking Raven's stuffed snatch.  The six of you have a long and enjoyable orgy together, lavishing attention upon the girls for their hard work and making sure they're all amply rewarded by you both before it eventually winds down into a pile of warm kitties snuggling together for a nap.";
	otherwise if cocks of player > 0:
		say "     Meanwhile, you have two girls of your own to tend to.  They nurse from your bosom side by side while stroking your cock.  After their drink, they give you a cute mewl and several kisses before Jasmine climbs into your lap and down onto your cock.  Dahlia nuzzles under her tail and licks at her juicy pussy and your thrusting cock.  Looking over, you spot the others in a similar position with Raven getting a ride on Leonard's throbbing manhood while Yarrow returns the favour by licking Raven's stuffed snatch.  The six of you have a long and enjoyable orgy together, lavishing attention upon the girls for their hard work and making sure they're all amply rewarded by you both before it eventually winds down into a pile of warm kitties snuggling together for a nap.";
	otherwise:
		say "     Meanwhile, you have two girls of your own to tend to.  They nurse from your bosom side by side while fingering your pussy.  They do this together, a pair of fingers from each of them stuffed into you and moving together to send shivers of delight through your body.  After their drink, they give you a cute mewl and several kisses before you push them onto their backs.  You bury your face between Jasmine's legs and start licking at her pussy with you finger Dahlia.  A quick glance over shows that Raven's now in Leonard's lap, riding his cock while Yarrow returns the favour by licking at her stuffed snatch.";
		say "     After getting Jasmine to cum, you switch your mouth to Dahlia's pussy and finger Jasmine.  The girls kiss one another while watching Leonard fuck the other two.  Once he's done with them, the pairs switch so Leonard may breed them all while you lick and finger the others to another climax.  The six of you have a long and enjoyable orgy together, lavishing attention upon the girls for their hard work and making sure they're all amply rewarded by you both before it eventually winds down into a pile of warm kitties snuggling together for a nap.";
	if tempnum is 0:
		infect "Feline";
		infect "Feline";
	otherwise:
		infect "Feline";
	now lastfuck of leonard is turns;
	now battleground is "void";
	remove 9 from leoparklist;
	now leonardwrdesk is true;
	move player to Lion's Den;



to felinebodyshift:
	[puts Feline as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Feline":
			now monster is y;
			break;
	now bodyname of player is "Feline";
	attributeinfect;
	now body of player is body entry;
	follow the breast change rule;
	follow the sex change rule;


Leonard Events ends here.