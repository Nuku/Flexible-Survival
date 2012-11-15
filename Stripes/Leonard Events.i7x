Version 1 of Leonard Events by Stripes begins here.
[version 1 - Basic set-up]

"Adds a batch of random encounters with Leonard's Pride to Flexible Survival scattered around the city."
[Note: These will only be accessible after completing Leonard's Qeust.]

Section 1 - Park

Part 0 - Core Event

leoparklist is a list of numbers that varies.  leoparklist is usually {1, 2, 3, 4, 5, 6}.

PridePark is a situation.  PridePark is resolved.
The sarea of PridePark is "Park";

Instead of resolving PridePark:
[	if leoparklist is not empty and a random chance of 1 in 3 succeeds:	[unique situations]
		sort leoparklist in random order;
		if entry 1 of leoparklist is 1, say "[leoparkscene1]";
		if entry 1 of leoparklist is 2, say "[leoparkscene2]";
		if entry 1 of leoparklist is 3, say "[leoparkscene3]";
		if entry 1 of leoparklist is 4, say "[leoparkscene4]";
		if entry 1 of leoparklist is 5, say "[leoparkscene5]";
		if entry 1 of leoparklist is 6, say "[leoparkscene6]";
		if entry 1 of leoparklist is 7, say "[leoparkscene7]";
		if entry 1 of leoparklist is 8, say "[leoparkscene8]";
	otherwise:		[randomized situations]	]
	if 1 is 1:
		let t be a random number between 1 and 4;
		if T is 1:
			say "     As you're travelling along, you hear the plaintive yowl of a feline and come to a stop.  Hearing it again, you head quickly in that direction[one of], drawn to it by your matronly urges[or], somehow sensing it to be a member of your pride[or], fearing it to be one of your precious pride kitties[purely at random][one of].  Following a short path,[or].  Pushing through the undergrowth,[or].  Running through the woods,[or].  Going around some flowering bushes,[or].  Heading down a short incline,[or].  Leaping a fallen tree,[in random order] you reach a small clearing where one of the feline girls has gotten herself caught in a tree, having fled from a creature.  Spotting you, she [one of]cries out 'Matron!' cheerfully, happy to see you here to rescue her[or]yowls again and clutches the tree even tighter[or]scrambles a little higher and yowls for your help[at random].  Having drawn the creature's attention to you, you prepare to [one of]fight[or]defend your smaller pride sister[or]at least buy her enough time to get away[or]protect your pride member[in random order].";
			fight;
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Having beaten your foe, you welcome the poor, scared kitty into your arms and snuggle with her.  She purrs happily and thanks you profusely with make cute kisses";
				if player is felinebodied:
					say ".  She nuzzles at your chest and starts nursing, drawing out your feline milk.  You purr soothingly to her that [one of]the pride[or]you[or]your pride[purely at random] [one of]loves her[or]will protect her[or]will keep her safe[or]is where she belongs[purely at random].  Soon she's calmed down and purring happily in her arms.  Once she's been fed, you put her down and release her back into the park[one of], cautioning her to be more careful[or], giving her rear a soft pat[or] after warning her to be more careful[or] after giving her ears a scritch[or] after giving her a final hug[purely at random].  Feeling better for having helped [one of]the pride[or]your pride[or]Leonard's pride[or]your pride sister[or]the cute lioness[or]the kitty girl[purely at random], you head back on your way.";
					increase morale of player by 1;
					infect "Feline";
					increase libido of player by 2;
					decrease humanity of player by 2;
				otherwise:
					say ".  She nuzzles at your chest and mewls softly, kneading her paws over your [bodytype of player] body, helping to restore your matronly feline body.  As your feline bosom returns, she wraps her lips around a nipple and starts to nurse milk from you.  You purr soothingly to her that [one of]the pride[or]you[or]your pride[purely at random] [one of]loves her[or]will protect her[or]will keep her safe[or]is where she belongs[purely at random].  Soon she's calmed down and purrign happily.  Once she's been fed, you put her down and release her back into the park[one of], cautioning her to be more careful[or], giving her rear a soft pat[or] after warning her to be more careful[or] after giving her ears a scritch[or] after giving her a final hug[purely at random].  Feeling better for having helped [one of]the pride[or]your pride[or]Leonard's pride[or]your pride sister[or]the cute lioness[or]the kitty girl[purely at random], you head back on your way.";
					increase morale of player by 1;
					felinebodyshift;
					increase libido of player by 2;
					decrease humanity of player by 2;
			if fightoutcome >= 20 and fightoutcome <= 29:
				say "     As you recover from the fight, you look around to see that the feline girl was at least able to get away during the struggle.";
			otherwise if fightoutcome >= 30:
				say "     Taking a moment to make sure that the feline girl has safely come down the tree and is ready to get away, you make a break for it in the other direction, keeping your opponent's attention on you long enough for her to escape.";
		otherwise if T is 2 or T is 3:
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
		otherwise if T is 4:
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
		otherwise if T is 5:
			say "***Coming soon. - work group on patrol";

[		- kitty thirsty/hungry (nurse + food/water)	- areas outside the park]


Part 1 - Special Park Pride 1 - Leonard out for a Walk

to say leoparkscene1:
	say "***Special 1.";
	remove 1 from leoparklist;
	add 7 to leoparklist;		[opens next walk]


Part 2 - Special Park Pride 2 - Writing Desk

to say leoparkscene2:
	say "***Special 2.";
	remove 2 from leoparklist;


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
	say "***Special 5.";
	remove 5 from leoparklist;


Part 6 - Special Park Pride 6 - Work Group Fight

to say leoparkscene6:
	say "***Special 6.";
	remove 6 from leoparklist;


Part 7 - Special Park Pride 7 - Walk #2

to say leoparkscene7:
	say "***Special 7.";
	remove 7 from leoparklist;
[	add 9 to leoparklist;		[opens next walk]	]


Part 8 - Special Park Pride 8 - Infected Kitty #2

to say leoparkscene8:
	say "***Special 8.";
	remove 8 from leoparklist;


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