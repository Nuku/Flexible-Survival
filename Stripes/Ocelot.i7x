Version 1 of Ocelot by Stripes begins here.

"Adds a paired set of Ocelot creature (one small-thin and one large-fat) to Flexible Survival's Wandering Monsters table"

[ OliverRelationship                                                    ]
[   0: Have not encountered Oliver or said little kitty to little ocelot]
[   1: Have said little kitty to ocelot                                 ]
[   2: Have met Oliver in an event in the High Rise District            ]
[  99: Has said Big Kitty to Little Ocelot                              ]

OliverRelationship is a number that varies.

Section 1 - Creature Responses

ocelotchoice is a number that varies.
ocelotsize is a number that varies.
noocelotbtsex is a number that varies.
noocelotldsex is a number that varies.

to say losetoocelot:
	now noocelotbtsex is 0;
	now noocelotldsex is 0;
	if ocelotsize is 0:
		say "[losetoocelot_bt]";
	else:
		say "[losetoocelot_ld]";


to say losetoocelot_bt:
	choose row MonsterID from the Table of Random Critters;
	if HP of Player > 0:
		say "     Opting to give in rather than fight the small feline, you let him push you to sit on the ground and climb atop you. He runs his paws over your [bodytype of Player] body. He nuzzles at your neck and licks your throat softly.";
	else:
		say "     Beaten by the small, agile feline, you are pushed rather roughly to sit on the ground by him. He climbs atop you and runs his paws over your [bodytype of Player] body. He nuzzles at your neck and licks your throat softly.";
	if ocelotchoice is 0:
		say "     'Mmm... what kind of a kitty are you, deep down?' he purrs, rubbing a paw over your crotch. 'Are you going to be a big, dom kitty for me or another sexy little toy like me?' He nips at your shoulder and gropes you some more. 'Which will it be?'.";
		say "     [bold type]It seems you have some kind of choice to make.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Big kitty.";
		say "     ([link]N[as]n[end link]) - Little kitty.";
		if Player consents:
			LineBreak;
			now ocelotchoice is 2;
			now Cock Length entry is 10;
			now Ball Size entry is 3;
			now Breast Size entry is 5;
			now Cunt Depth entry is 10;
			now Cunt Tightness entry is 4;
			now OliverRelationship is 99;
		else:
			LineBreak;
			now ocelotchoice is 1;
			now OliverRelationship is 1;
	if ocelotchoice is 1:				[sub-ocelot chosen]
		if Player is male:
			say "     'Purrrrr... [if Player is ocelotbodied]a cute kitty fucktoy for me to play with[else]There it is. I smell a cute kitty fucktoy inside you, eager to come out and play[end if].' He snuggles you close and takes your cock in his paw. The feline's touch soon has you erect. Eager and excited now, you return the favor to him, even lowering yourself to your knees to lick and suck at his shaft. He purrs happily, rubbing your head as you bob over his six inch cock.";
			if Player is female and a random chance of 3 in 4 succeeds:	[vaginal]
				say "[ocelotloss_bt_v1]";
			else if Player is not female and anallevel > 1 and ( ( a random chance of 1 in 4 succeeds ) or ( anallevel is 3 and a random chance of 1 in 4 succeeds ) or ( player is submissive and a random chance of 1 in 4 succeeds ) or ( player is mpreg_ok and a random chance of 1 in 4 succeeds ) ):	[anal]
				say "[ocelotloss_bt_a1]";
			else:	[oral]
				say "[ocelotloss_bt_o1]";
		else if Player is female:
			say "     'Purrrrr... [if Player is ocelotbodied]a cute kitty girl for me to play with[else]There it is. I smell a cute kitty fucktoy inside you, eager to come out and play[end if].' He snuggles you close and rubs a paw over your puss[yfn], slipping his fingers into you. The feline's touch soon has you wet and ready. Eager and excited now, you return the favor to him by stroking his erection, even lowering yourself to your knees to lick and suck at his shaft. He purrs happily, rubbing your head as you bob over his six inch cock.";
			if a random chance of 3 in 4 succeeds or ( player is submissive and a random chance of 1 in 4 succeeds ):[vaginal]
				say "[ocelotloss_bt_v1]";
			else:	[oral]
				say "[ocelotloss_bt_o1]";
		else:
			say "     'Purrrrr... [if Player is ocelotbodied]you poor kitty fucktoy. Left with nothing for me to play with[else]There it is. I smell a cute kitty fucktoy inside you, eager to come out and play. But he's got no toys to play with[end if],' he adds, groping your bare groin sadly. He snuggles you close and kisses you tenderly, his paws groping your ass while grinding his throbbing cock against your hip. Eager and excited now, you lower yourself to your knees to lick and suck at his shaft. He purrs happily, rubbing your head as you bob over his six inch cock.";
			if anallevel > 1 and ( ( a random chance of 1 in 4 succeeds ) or ( anallevel is 3 and a random chance of 1 in 4 succeeds ) or ( BodyName of Player is "Ocelot" and a random chance of 1 in 4 succeeds ) or ( player is mpreg_ok and a random chance of 1 in 4 succeeds ) ):	[anal]
				say "[ocelotloss_bt_a1]";
			else:	[oral]
				say "[ocelotloss_bt_o1]";
	else if ocelotchoice is 2:		[dom-ocelot chosen]
		if Player is male:
			say "     'Purrrrr... [if Player is ocelotbodied]a big, dom kitty to use me right[else]There it is. I smell a big, dom kitty inside you, eager to have his way with a little fucktoy like me[end if].' He snuggles up to you, running his paws down to your cock, stroking you to erection. With you hard, the kitty nuzzles down your chest, giving little licks with his small tongue as he goes until he reaches your throbbing shaft. Sliding his muzzle over it, he starts to lick and suck at your cock, worshiping you pulsing maleness with his mouth[if FaceName of Player is listed in infections of Felinelist] while you purr happily[end if].";
			if anallevel > 1 and ( ( a random chance of 1 in 4 succeeds ) or ( anallevel is 3 and a random chance of 1 in 4 succeeds ) or ( player is submissive and a random chance of 1 in 4 succeeds ) or ( player is mpreg_ok and a random chance of 1 in 4 succeeds ) ):	[anal]
				say "[ocelotloss_bt_a2]";
			else:
				say "[ocelotloss_bt_o2]";
		else if Player is female:
			say "     'Purrrrr... [if Player is ocelotbodied]a big, dom kitty to use me right[else]There it is. I smell a big, dom kitty inside you, eager to have her way with a little fucktoy like me[end if].' He snuggles up to you and rubs a paw over your puss[yfn], slipping his fingers into you. The feline's touch soon has you wet and ready. It is at this point that he starts to nuzzle down your chest, giving little licks with his small tongue as he goes until he reaches your juicy crotch and presses his muzzle to it. He sets himself to task, licking over your damp folds and kissing your clit[sfn], worshiping your heated loins with his mouth[if FaceName of Player is listed in infections of Felinelist] while you purr happily[end if].";
			if a random chance of 2 in 3 succeeds or ( player is submissive and a random chance of 1 in 4 succeeds ):[vaginal]
				say "[ocelotloss_bt_v2]";
			else:	[oral]
				say "[ocelotloss_bt_o2]";
		else:
			say "     'Purrrrr... [if Player is ocelotbodied]you poor, big kitty. Left with nothing for me to take care of[else]There it is. I smell a big, dom kitty inside you, eager to have his way with a little fucktoy like me. But he's got no toys to play with[end if],' he adds, groping your bare groin sadly. He snuggles up to you, kissing you tenderly, his paws moving to grope your ass while grinding his cock against your hip. You reach down and grab the eager kitty's crotch, fondling his balls before moving up to stroke his throbbing shaft.";
			say "[ocelotloss_bt_j2]";


to say ocelotloss_bt_v1:	[sub on sub - vaginal]
	say "     The [if scalevalue of Player > 2]smaller[else]small[end if] ocelot, once this foreplay is done, guides you down onto all fours and moves atop you. 'Mrrr... I so rarely get a chance to be the one on top. I'm going to enjoy this,' he purrs in your ear, licking the edge of it. He lets his cock brush lightly against your folds, quite wet now and you eagerly push yourself back onto his rod. He runs his dainty paws over your body, tweaking and caressing every sensitive spot he can find as he thrusts into you. His cock throbs inside you, dribbling precum into your already wet hole[if Cock Count of Player > 1]. Reaching around, he wraps a paw around one of your [Cock of Player] cocks, stroking it and teasing your balls. He alternates between your shafts from time to time to build your arousal all the more without letting you cum quite yet[else if Cock Count of Player is 1]. Reaching around, he wraps a paw around your [Cock of Player] cock, stroking it and teasing your balls. He is careful to pause in his teasing from time to time, building your arousal but not letting you cum quite yet[else]. He brushes his fingertips across your folds and teases at your clit, working you to greater arousal but not letting you cum quite yet[end if][if Cunt Count of Player > 1]. The thrusting kitty even swaps cunts on you a few times, drawing it out even longer[end if]. As he's doing this all this, he's purring to you about how he'll help show you how to be a good, subby kitty and a proper fucktoy like him.";
	say "     In time, he cums hard inside you, mrowling in pleasure. As he does, he works his paw over you vigorously, driving you to climax as well[if Player is male]. Your sticky seed splatters across the ground as he strokes you off while breeding you[end if]. Once he's done, the panting kitty gets up, strokes your ass lightly and gives you another kiss. '[one of]I need to get back to my master[or]I'd best hurry back to my master[or]I should go find my master[or]I can't wait to tell my master all about this. I have to go find him[at random], but I hope you'll come join us soon,' he purrs. '[one of]You'd make a fine playmate for me[or]I think my master would love playing with you, too[or]I know you'd love my big, sexy master[or]We could have so much fun pleasing my master together[at random].'[impregchance]";


to say ocelotloss_bt_a1:	[sub on sub - anal]
	say "     The [if scalevalue of Player > 2]smaller[else]small[end if] ocelot, once this foreplay is done, guides you down onto all fours and moves atop you. 'Mrrr... I so rarely get a chance to be the one on top. I'm going to enjoy this,' he purrs in your ear, licking the edge of it. He lets his cock brush lightly against your back entrance, dribbling some precum onto it. He works one of his slender fingers into your asshole, lubed from a little bottle he had tucked away somewhere. This helps you to relax your anal rings and prepare before what you're increasingly eager to have come next. Once his feline shaft is back into position, you push yourself back onto his rod, drawing a moan from both of you.";
	say "     He runs his dainty paws over your body, tweaking and caressing every sensitive spot he can find as he thrusts into you. His cock throbs inside you, dribbling precum into your tight hole to lube you up further[if scalevalue of Player is 1]. Having an average-sized cock, his shaft is a little snug inside you, wonderfully filling for your tiny body[else if scalevalue of Player > 3]. Having an average-sized cock, his shaft is an easy fit for your [Body Size Adjective of Player] body[end if][if Cock Count of Player > 1]. Reaching around, he wraps a paw around one of your [Cock of Player] cocks, stroking it and teasing your balls. He alternates between your shafts from time to time to build your arousal all the more without letting you cum quite yet[else if Cock Count of Player is 1]. Reaching around, he wraps a paw around your [Cock of Player] cock, stroking it and teasing your balls. He is careful to pause in his teasing from time to time, building your arousal but not letting you cum quite yet[else]. He tweaks your nipples and pets your side while nibbling tenderly along your neck. All this works to turn you on all the more[end if]. As he's doing this, he's purring to you about how he'll help show you how to be a good, subby kitty and a proper fucktoy like him.";
	say "     In time, he cums hard inside you, mrowling in pleasure. As he does, he works his paw over you vigorously[if Player is male], driving you to climax as well. Your sticky seed splatters across the ground as he strokes you off while breeding you[else], making you moan happily as you feel him spilling his load inside you[end if]. Once he's done, the panting kitty gets up, strokes your ass lightly and gives you another kiss. '[one of]I need to get back to my master[or]I'd best hurry back to my master[or]I should go find my master[or]I can't wait to tell my master all about this. I have to go find him[at random], but I hope you'll come join us soon,' he purrs. '[one of]You'd make a fine playmate for me[or]I think my master would love playing with you, too[or]I know you'd love my big, sexy master[or]We could have so much fun pleasing my master together[at random].'[impregchance]";


to say ocelotloss_bt_o1:	[sub on sub - oral]
	if Player is male and a random chance of 1 in 2 succeeds:
		say "     The [if scalevalue of Player > 2]smaller[else]small[end if] ocelot rubs his dainty paws over your head, petting you as you work your mouth over his pulsing shaft. Precum wets your tongue as you continue to please him. He purrs happily at this opportunity to receive some attention, complimenting you on what a fine, subby kitty you'll make. Quite excited and eager now, you do your best to get the feline off and you're soon rewarded for your efforts with a mouthful of sticky ocelot cum. It has a soft taste that is quite pleasing, so much so you have to share it, pulling him into a kiss and pushing some of it into his mouth while your tongues wrestle. After the kiss, he strokes your ass lightly. '[one of]I need to get back to my master[or]I'd best hurry back to my master[or]I should go find my master[or]I can't wait to tell my master all about this. I have to go find him[at random], but I hope you'll come join us soon,' he purrs. '[one of]You'd make a fine playmate for me[or]I think my master would love playing with you, too[or]I know you'd love my big, sexy master[or]We could have so much fun pleasing my master together[at random].'[impregchance]";


to say ocelotloss_bt_v2:	[sub on dom - vaginal]
	say "     The [if scalevalue of Player > 2]smaller[else]small[end if] ocelot, once this foreplay is done, eagerly guides you to lie back and moves atop you. 'Mmm... You're just in a bad mood because you need some relief. I'll be a good, subby kitty and take care of you... give you what you need,' he purrs as he [if scalevalue of Player > 3]kisses at your chest[else]licks along the edge of your ear[end if]. He lets his cock brush lightly against your folds, quite wet now and easily parting for the spotted feline as he thrusts into you gently. His paws [if scalevalue of Player > 3]wrap as much as they can around your [Body Size Adjective of Player] body[else]run over your [bodydesc of Player] body[end if] while his hips rock and his cock pumps into you.";
	say "     He turns out to be a very eager and obedient kitty, listening to your every request to go faster or slower, harder or softer as best suits your changing desires as your arousal grows[if Cunt Count of Player > 1]. You even have him switch cunts a few times, making sure you'll be completely satisfied[end if]. Petting his head and complimenting him for his fine work, you guide his muzzle to your breasts, encouraging him to kiss, lick, nip and suckle them as well. It makes you wish he was yours, but he's clearly already got an owner who's trained him well. You'll just have to find another to keep, then.";
	say "     Eventually the subby kitty can't hold back any longer and, with your permission, unleashes his hot, sticky load inside your pussy. You have a powerful, deeply satisfying orgasm after the well-trained kitty's thorough attention. Left worn out, but very fulfilled, you give the kitty a kiss, a pat on the rear and send him on his way. '[one of]I need to get back to my master[or]I'd best hurry back to my master[or]I should go find my master[or]I can't wait to tell my master all about this. I have to go find him[at random],' he purrs. 'Maybe once you've got a kitty fucktoy of your own [one of]we can play again[or]you and my master can share[or]you'd like to meet him[or]you can watch us play together[at random].'[impregchance]";


to say ocelotloss_bt_a2:	[sub on dom - anal]
	say "     The [if scalevalue of Player > 2]smaller[else]small[end if] ocelot, once this foreplay is done, eagerly climbs back into your lap and moves atop your shaft. 'Mmm... You're just in a bad mood because you need some relief. I'll be a good, subby kitty and take care of you... let you fuck me like the big, strong dom you are,' he purrs as he [if scalevalue of Player > 3]kisses at your chest[else]licks along the edge of your ear[end if]. He lets your cock brush against his tight little pucker and starts lowering himself down onto your shaft. His hole, already lubed, spreads easily for you as he sinks down into your lap[if Cock Length of Player > 24]. Even your [cock size desc of Player] [Cock of Player] shaft can make its way into the slender kitty's bottom with little difficulty, though he's deliciously tight around you. Despite, or perhaps even because of, the phallic bulge your meat makes in him, he rumbles and purrs loudly as he rides up and down it[else if Cock Length of Player > 15]. Even your [cock size desc of Player] [Cock of Player] shaft can make its way into the slender kitty's bottom with little difficulty, though he's deliciously tight around you. Despite, or perhaps even because, he's so deeply filled, he rumbles and purrs loudly as he rides up and down it[else if Cock Length of Player > 8]. Your [cock size desc of Player] [Cock of Player] shaft is no problem for the slender kitty to take, sliding it into his well-trained bottom. He is still somehow deliciously tight around you though[else]. Despite his obvious ease at taking your [cock size desc of Player] [Cock of Player] shaft into his rear, he is still somehow deliciously tight around you[end if][if scalevalue of Player > 3]. He wraps as much of his arms as he can get around your [Body Size Adjective of Player] waist and nuzzles at your big body happily[else]. He runs his paws over your [bodydesc of Player] body[end if] while riding your cock for all he's worth.";
	say "     He turns out to be a very eager and obedient kitty, listening to your every request to go faster or slower, harder or softer as best suits your changing desires as your arousal grows. His slinky body bends and squirms in so many delightful ways[if Player is male]. You even have him switch cocks a few times, making sure you'll be completely satisfied[end if][if Nipple Count of Player > 0 and Breast Size of Player > 0]. Petting his head and complimenting him for his fine work, you guide his muzzle to your breasts, encouraging him to kiss, lick, nip and suckle them as well[else]. Petting his head and complimenting him on his fine work, you scritch the kitty's ears and eagerly tell him to keep it up[end if]. It makes you wish he was yours, but he's clearly already got an owner who's trained him well. You'll just have to find another to keep, then.";
	say "     Eventually you can't hold back any longer and, giving him permission to cum as well, you unleash your hot load into the kitty's bottom[if Player is male] and across his body[end if][if Ball Size of Player > 6]. You pump so much cum into the small feline that he's so bloated and overfull that some gurgles up and overflows from his mouth[else if Ball Size of Player > 6]. You pump so much cum into the small feline that he's left bloated and overfull[else if Ball Size of Player > 4]. You pump so much cum into the small feline that he has a bit of a bulge in his tummy from it all[end if]. When you're drained and [if Cock Length of Player > 24 or Ball Size of Player > 4]he's managed to pull[else]he's pulled[end if] himself off your spent shaft, you're left worn out, but very fulfilled. You give the kitty a kiss, a pat on the rear and send him on his way. '[one of]I need to get back to my master[or]I'd best hurry back to my master[or]I should go find my master[or]I can't wait to tell my master all about this. I have to go find him[at random],' he purrs. 'Maybe once you've got a kitty fucktoy of your own [one of]we can play again[or]you and my master can share[or]you'd like to meet him[or]you can watch us play together[at random][if Ball Size of Player > 6].' The overloaded ocelot staggers off slowly[else if Ball Size of Player > 4].' The stuffed ocelot sloshing slightly as he heads off[else].' The well-fucked ocelot heads off[end if], leaking your semen from his creamy hole.";


to say ocelotloss_bt_o2:	[sub on dom - oral]
	if Player is male:
		say "     The [if scalevalue of Player > 2]smaller[else]small[end if] ocelot keeps this up, lavishing attention upon your cock. 'Mmmm... You're just in a bad mood because you need some relief. Just relax and let the subby kitty take care of this [Cock of Player] cock of yours,' he purrs before kissing your glans again and slowly lapping up the precum that's beaded up while he was speaking. His dainty paws glide across your flesh, rubbing at your balls when he's not taking a break from sucking you off to nuzzle or kiss them[if Cock Length of Player > 16]. Even your [cock size desc of Player] [Cock of Player] shaft can make its way into the petite kitty's muzzle with little difficulty, though his throat is deliciously tight around you. Despite, or perhaps even because of, the phallic bulge your meat makes in him, he rumbles and purrs loudly as he deepthroats you, adding to your stimulation[else if Cock Length of Player > 10]. Even your [cock size desc of Player] [Cock of Player] shaft can make its way into the petite kitty's muzzle with little difficulty, though his throat is deliciously tight around you. Despite, or perhaps even because, he's so deeply filled, he rumbles and purrs loudly as he deepthroats you, adding to your stimulation[else if Cock Length of Player > 5]. Your [cock size desc of Player] [Cock of Player] shaft is no problem for the petite kitty to deal with, engulfing it in his muzzle and pushing the tip into his throat. He purrs loudly as he deepthroats you, adding to your stimulation[else]. Despite the unimpressive size of your [cock size desc of Player] [Cock of Player] cock in his muzzle, he still treats it like it's impressive and suckles at it eagerly, purring happily all the while[end if].";
		say "     He turns out to be a very eager and obedient kitty, listening to your every request to go faster or slower, to lick or to suck as best suits your changing desires as your arousal grows. His cute muzzle and agile little tongue work hard to please you in so many delightful ways[if Player is male]. You even have him switch cocks a few times, making sure you'll be completely satisfied[end if][if Cunt Count of Player > 1]. You also direct him on how to best finger and tease your pussies, not that he seems to need much encouragement on that score either[else if Cunt Count of Player is 1]. You also direct him on how to best finger and tease your pussy, not that he seems to need much encouragement on that score either[end if][if Nipple Count of Player > 0 and Breast Size of Player > 0]. Petting his head and complimenting him for his fine work, you bring your other hand to your breasts, playing with them as you watch the little slave kitty suck you off[else]. Petting his head and complimenting him on his fine work, you scritch the kitty's ears and eagerly tell him to keep it up[end if]. It makes you wish he was yours, but he's clearly already got an owner who's trained him well. You'll just have to find another to keep, then.";
		say "     Eventually you can't hold back any longer and, giving him permission to cum as well, you unleash your hot load into the kitty's muzzle[if Player is male] and across his body[end if][if Ball Size of Player > 6]. You pump so much cum into the small feline that he's so bloated and overfull that some eventually has to bubble out around your [cock size desc of Player] shaft[else if Ball Size of Player > 6]. You pump so much cum into the small feline that he's left bloated and overfull[else if Ball Size of Player > 4]. You pump so much cum into the small feline that he has a bit of a bulge in his tummy from it all[end if]. When you're drained and [if Cock Length of Player > 24 or Ball Size of Player > 4]he's managed to pull[else]he's pulled[end if] your spent shaft from his throat, you're left worn out, but very fulfilled. You give the kitty a kiss, a pat on the rear and send him on his way. '[one of]I need to get back to my master[or]I'd best hurry back to my master[or]I should go find my master[or]I can't wait to tell my master all about this. I have to go find him[at random],' he purrs. 'Maybe once you've got a kitty fucktoy of your own [one of]we can play again[or]you and my master can share[or]you'd like to meet him[or]you can watch us play together[at random][if Ball Size of Player > 6].' The overloaded ocelot staggers off slowly[else if Ball Size of Player > 4].' The stuffed ocelot sloshing slightly as he heads off[else].' The well-fed ocelot heads off[end if], grooming his face with a paw to get any stray cum that leaked out.";
	else:
		say "     The [if scalevalue of Player > 2]smaller[else]small[end if] ocelot keeps this up, lavishing attention upon your [cunt size desc of Player] pussy. 'Mmmm... You're just in a bad mood because you need some relief. Just relax and let the subby kitty take care of this beautiful pussy of yours,' he purrs before kissing your clit again and slowly lapping across your folds. His dainty paws glide across your flesh, rubbing over your [CockName of Player] pussy with his softly furred fingertips[if Cunt Depth of Player > 24]. Presented with such a huge cunt to please, the attentive kitty dives in eagerly, pushing his whole paw deep inside you while his raspy tongue runs up and down. He rumbles and purrs happily as he works to please you, his purring sending delightful shivers through your bulging button[else if Cunt Depth of Player > 15]. Presented with such a large cunt to please, the attentive kitty dives in eagerly, pushing several fingers fully inside you while his raspy tongue runs up and down. He rumbles and purrs happily as he works to please you, his purring sending delightful shivers through your swollen button[else if Cunt Depth of Player > 8]. Presented with your engorged cunt to please, the attentive kitty dives in eagerly, pushing a pair of fingers deep inside you while his raspy tongue runs up and down. He rumbles and purrs happily as he works to please you, his purring sending delightful shivers through your plump button[else]. The attentive kitty dives in eagerly, pushing a finger deep inside you while his raspy tongue runs up and down. He rumbles and purrs happily as he works to please you, his purring sending delightful shivers through your hot button[end if].";
		say "     He turns out to be a very eager and obedient kitty, listening to your every request to go faster or slower, where to rub and where to lick as best suits your changing desires as your arousal grows. His cute muzzle and agile little tongue work hard to please you in so many delightful ways[if Cunt Count of Player > 1]. You even have him switch cunts a few times, making sure you'll be completely satisfied[end if][if Nipple Count of Player > 0 and Breast Size of Player > 0]. Petting his head and complimenting him for his fine work, you bring your other hand to your breasts, playing with them as you watch the little slave kitty eat you out[else]. Petting his head and complimenting him on his fine work, you scritch the kitty's ears and eagerly tell him to keep it up[end if]. It makes you wish he was yours, but he's clearly already got an owner who's trained him well. You'll just have to find another to keep, then.";
		say "     Eventually you can't hold back any longer and, giving him permission to cum as well, you arch your back and cry out in orgasm, soaking the kitty's muzzle and paw in your juices[if Cunt Depth of Player > 36]. In your throws of passion, you inadvertently end up pushing the kitty's head partway into your giant pussy, but he takes this in stride, licking across your inner walls as they spasm around his face[else if Cunt Depth of Player > 24]. In your throws of passion, you inadvertently end up pushing the kitty's muzzle into your enlarge pussy, but he takes this in stride, licking across your inner walls as they spasm around his furry muzzle[else if Cunt Depth of Player > 15]. In your throws of passion, you inadvertently end up pushing the kitty's muzzle squarely against your twitching folds, pulling his tongue into you, but he takes this in stride, licking and lapping inside your spasming inner walls[else]. In your throws of passion, you inadvertently end up pushing the kitty's muzzle squarely against your twitching folds, pressing his tongue against it, but he takes this in stride, lavishing attention upon your clit[end if]. When you finally release him and flop back onto the ground, he smiles up at you while licking his wet muzzle[if Cunt Depth of Player > 24]. His head is literally soaked in your juices, making a mess of the exotic kitty's fur[else if Cunt Depth of Player > 15]. His face is literally soaked in your juices, making a mess of the exotic kitty's fur[else]. His muzzle is quite soaked with your juices, making a mess of the exotic kitty's fur[end if]. You, meanwhile, are left feeling worn out, but very fulfilled. You give the kitty a kiss, a pat on the rear and send him on his way. '[one of]I need to get back to my master[or]I'd best hurry back to my master[or]I should go find my master[or]I can't wait to tell my master all about this. I have to go find him[at random],' he purrs. 'Maybe once you've got a kitty fucktoy of your own [one of]we can play again[or]you and my master can share[or]you'd like to meet him[or]you can watch us play together[at random][if Cunt Depth of Player > 24].' The rather damp ocelot pads away slowly, working to groom his face with a paw to both settle his fur and taste more of your juices[else if Cunt Depth of Player > 15].' The somewhat damp ocelot pads away slowly, working to groom his face with a paw to both settle his fur and taste more of your juices[else].' The somewhat scruffy ocelot pads away slowly, working to groom his muzzle with a paw to both settle his fur and taste more of your juices[end if].";


to say ocelotloss_bt_j2:	[sub on dom - jerk]
	say "     Seeking to have some fun with the [if scalevalue of Player > 2]smaller[else]small[end if] ocelot, you turn him over to lie across your lap while you stroke and pump at his cock. He mewls and moans in pleasure at this attention, very responsive to your every touch. Getting more and more into the mood, you playfully tease the kitty, smiling as he squirms in your lap every time you switch to a new spot or a new motion[if anallevel is 3]. And shivers of delight the little playtoy gives when you press a finger into his bottom, apparently already slick with lube, are a joy to behold[end if]. While you'd initially just wanted to get him off so you could go, you find yourself taking your time, wanting to enjoy this to the fullest.";
	say "     He turns out to be a very eager and obedient kitty, listening to your every request and obeying your every whim as you play with him. His cute cock throbs and dribbles with precum, stiff with arousal but never going off early despite his obvious excitement[if Nipple Count of Player > 0 and Breast Size of Player > 0]. Petting his head and complimenting him being such an enjoyable plaything, you shift him in your lap and guide his small muzzle to your bosom, letting him lick, kiss and suck at your nipples[else]. Petting his head and complimenting being such an enjoyable plaything, you scritch the kitty's ears and work his cock all the harder[end if]. It makes you wish he was yours, but he's clearly already got an owner who's trained him well. You'll just have to find another to keep, then.";
	say "     Eventually you can't wait any longer and, pulling out all the stops, you give him permission to cum. The kitty, mewling, moaning and purring after holding back for so long, cries out in pleasure and unleashes many spurts of white cum across his spotted tummyfur[if anallevel is 3]. Rubbing at his prostate, you[else]. You[end if] stroke and squeeze at his cock until he's fully drained, making quite the mess of himself. Several shots even flew far enough to splatter across his face. You, after such a long and intense session, are left feeling a little worn out, but very fulfilled. You give the kitty a kiss, a pat on the rear and send him on his way. '[one of]I need to get back to my master[or]I'd best hurry back to my master[or]I should go find my master[or]I can't wait to tell my master all about this. I have to go find him[at random],' he purrs. 'Maybe once you've got a kitty fucktoy of your own [one of]we can play again[or]you and my master can share[or]you'd like to meet him[or]you can watch us play together[at random][if Cunt Depth of Player > 15].' The somewhat damp ocelot pads away slowly, working to groom his face with a paw to both settle his fur and taste more of your juices[else].' The cum-streaked kitty sets to grooming himself with his paw, purring softly as he licks up the swipes of cum. Noticing some of his tasty cum on your hand, you lick your fingers clean while lying back on the ground for a moment.";


to say losetoocelot_ld:
	choose row MonsterID from the Table of Random Critters;
	if HP of Player > 0:
		say "     Opting to give in rather than fight the large feline, you let him wrap his arms around you and pull you into his lap as he sits down with you. He runs his paws over your [bodytype of Player] body. He nuzzles at your neck and licks your throat softly.";
	else:
		say "     Beaten by the large, powerful feline, you are grabbed rather roughly in his arms and pulled into his lap as he sits down. He runs his paws over your [bodytype of Player] body. He nuzzles at your neck and licks your throat softly.";
	if ocelotchoice is 0:
		say "     'Mmm... what kind of a kitty are you, deep down?' he purrs, rubbing a paw over your crotch and groping your ass with the other. 'Are you going to be another big, dom kitty like me or a sexy little toy for me to play with?' He nips at your shoulder and gropes you some more. 'Which will it be?'.";
		say "     [bold type]It seems you have some kind of choice to make.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Big kitty.";
		say "     ([link]N[as]n[end link]) - Little kitty.";
		if Player consents:
			LineBreak;
			now ocelotchoice is 2;
			now Cock Length entry is 10;
			now Ball Size entry is 3;
			now Breast Size entry is 5;
			now Cunt Depth entry is 10;
			now Cunt Tightness entry is 4;
			now OliverRelationship is 99;
		else:
			LineBreak;
			now ocelotchoice is 1;
	if ocelotchoice is 1:				[sub-ocelot chosen]
		if Player is male:
			say "     'Purrrrr... [if Player is ocelotbodied]a cute kitty fucktoy in need of some proper attention from a big, strong kitty[else]There it is. I smell a cute kitty fucktoy inside you, eager for some proper attention from a big, strong kitty[end if].' He snuggles you close and takes your cock in his paw. The feline's touch soon has you erect. Eager and excited now, you return the favor to him, even lowering yourself to your knees to lick and suck at his shaft. He purrs happily, rubbing your head as you bob over his six inch cock.";
			if Player is female and a random chance of 3 in 4 succeeds:	[vaginal]
				say "[ocelotloss_bt_v1]";
			else if Player is not female and anallevel > 1 and ( ( a random chance of 1 in 4 succeeds ) or ( anallevel is 3 and a random chance of 1 in 4 succeeds ) or ( player is submissive and a random chance of 1 in 4 succeeds ) or ( player is mpreg_ok and a random chance of 1 in 4 succeeds ) ):	[anal]
				say "[ocelotloss_bt_a1]";
			else:	[oral]
				say "[ocelotloss_bt_o1]";
		else if Player is female:
			say "     'Purrrrr... [if Player is ocelotbodied]a cute kitty girl for me to play with[else]There it is. I smell a cute kitty fucktoy inside you, eager to come out and play[end if].' He snuggles you close and rubs a paw over your puss[yfn], slipping his fingers into you. The feline's touch soon has you wet and ready. Eager and excited now, you return the favor to him by stroking his erection, even lowering yourself to your knees to lick and suck at his shaft. He purrs happily, rubbing your head as you bob over his six inch cock.";
			if a random chance of 3 in 4 succeeds or ( player is submissive and a random chance of 1 in 4 succeeds ):[vaginal]
				say "[ocelotloss_bt_v1]";
			else:	[oral]
				say "[ocelotloss_bt_o1]";
		else:
			say "     'Purrrrr... [if Player is ocelotbodied]you poor kitty fucktoy. Left with nothing for me to play with[else]There it is. I smell a cute kitty fucktoy inside you, eager to come out and play. But he's got no toys to play with[end if],' he adds, groping your bare groin sadly. He snuggles you close and kisses you tenderly, his paws groping your ass while grinding his throbbing cock against your hip. Eager and excited now, you lower yourself to your knees to lick and suck at his shaft. He purrs happily, rubbing your head as you bob over his six inch cock.";
			if anallevel > 1 and ( ( a random chance of 1 in 4 succeeds ) or ( anallevel is 3 and a random chance of 1 in 4 succeeds ) or ( BodyName of Player is "Ocelot" and a random chance of 1 in 4 succeeds ) or ( player is mpreg_ok and a random chance of 1 in 4 succeeds ) ):	[anal]
				say "[ocelotloss_bt_a1]";
			else:	[oral]
				say "[ocelotloss_bt_o1]";





to say beattheocelot:
	if ocelotsize is 0:
		say "[beattheocelot_bt]";
	else:
		say "[beattheocelot_ld]";


to say beattheocelot_bt:
	choose row MonsterID from the Table of Random Critters;
	now noocelotbtsex is 0;
	if noocelotbtsex > 2:
		say "     Having beaten the little slip of a kitty, you knock him to the ground. Rather than listen to his pleas, you push him away and give him a hard swat on the ass, warning him to stay away from you in the future, as you've done with the others of his ilk recently. He runs off with a frightened mewl.";
	else:
		if Player is neuter:
			say "     Having beaten the little slip of a kitty, you knock him to the ground. He whimpers a little and clutches your leg. 'I'm sorry I was a bad kitty. I [one of]just wanted to get back to my master[or]was just looking for my master[or]had just gotten lost[or]was just startled[at random]. Please, let me be a good kitty and make it up to you,' he purrs, nuzzling your leg. Lacking any gender of your own, his offer isn't that tempting to you. You push him away, give him a swat on the ass, warning him to stay away from you in the future. He runs off with a frightened mewl.";
		else if BodyName of Player is "Ocelot" and ocelotchoice > 0:
			say "     Having beaten the little slip of a kitty, you knock him to the ground. He whimpers a little and clutches your leg. 'I'm sorry I was a bad kitty. I [one of]just wanted to get back to my master[or]was just looking for my master[or]had just gotten lost[or]was just startled[at random]. Please, let me make it up to you, [if ocelotchoice is 2]big kitty[else]little kitty[end if],' he purrs, nuzzling your leg. The thought of having some fun with a kitty fucktoy like him is quite appealing.";
		else:
			say "     Having beaten the little slip of a kitty, you knock him to the ground. He whimpers a little and clutches your leg. 'I'm sorry I was a bad kitty. I [one of]just wanted to get back to my master[or]was just looking for my master[or]was just startled[at random]. Please, let me be a good kitty and make it up to you,' he purrs, nuzzling your leg. While this looks like it could be fun, you're not sure whether you want to let this little fucktoy distract you.";
		say "     [bold type]Should you have some fun?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Fuck him.";
		say "     ([link]N[as]n[end link]) - Leave.";
		if Player consents:
			LineBreak;
			now noocelotbtsex is 0;
			if ocelotchoice is 0:
				say "     Having gotten permission to please you, the feline fucktoy nuzzles up your leg, kissing as he goes, while his dainty paws rub your thigh. 'Mmm... and what kind of kitty are you, deep down?' he purrs, rubbing a paw over your crotch even as you move atop him, pressing him to the ground beneath you. 'Are you going to be a big, dom kitty for me or another sexy little toy like me?' He nips at your shoulder and gropes you some more.";
				say "     [bold type]'Which will it be?' It seems you have some kind of choice to make.[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Big kitty.";
				say "     ([link]N[as]n[end link]) - Little kitty.";
				if Player consents:
					LineBreak;
					say "     'Purrrrr... [if Player is ocelotbodied]a big, dom kitty to have his way with me for being a bad kitty[else]There it is. I smell a big, dom kitty inside you, eager to have his way with me for being a bad kitty[end if],' he purrs, rubbing a paw over your crotch even as you move atop him. You press him to the ground beneath you and rub your hands over his body, grinning as you watch him squirm in delight.";
					now ocelotchoice is 2;
					now Cock Length entry is 10;
					now Ball Size entry is 3;
					now Breast Size entry is 5;
					now Cunt Depth entry is 10;
					now Cunt Tightness entry is 4;
				else:
					LineBreak;
					say "     'Purrrrr... [if Player is ocelotbodied]a cute kitty fucktoy who wants to play with me[else]There it is. I smell a cute kitty fucktoy inside you, eager to come out and play with me[end if]. Come on, let's have some fun then.' He starts sliding off your gear while licking at your chest, purring softly.";
					now ocelotchoice is 1;
					now OliverRelationship is 1;
			else if ocelotchoice is 1:
				say "     Having gotten permission to please you, the feline fucktoy nuzzles your leg, kissing as he goes, while his dainty paws rub your thigh. 'Purrrrr... [if Player is ocelotbodied]a cute kitty fucktoy who wants to play with me[else]There it is. I smell a cute kitty fucktoy inside you, eager to come out and play with me[end if]. Come on, let's have some fun then.' He starts sliding off your gear while licking at your chest, purring softly.";
			else if ocelotchoice is 2:
				say "     Having gotten permission to please you, the feline fucktoy nuzzles your leg, kissing as he goes, while his dainty paws rub your thigh. 'Purrrrr... [if Player is ocelotbodied]a big, dom kitty to have his way with me for being a bad kitty[else]There it is. I smell a big, dom kitty inside you, eager to have his way with me for being a bad kitty[end if],' he purrs, rubbing a paw over your crotch even as you move atop him. You press him to the ground beneath you and rub your hands over his body, grinning as you watch him squirm in delight.";
			if ocelotchoice is 1:				[sub-ocelot chosen]
				if Player is male:
					say "     Looking down at the cute little guy, you find yourself increasingly eager to play with him. You run your hands over his body and guide him to the ground. You roll around with him, groping and petting one another for a while, getting each other quite excited before you remind him that he's been a bad kitty and needs to make it up to you. Grinning, he gets onto all fours and raises his striped tail, waving his rear at you with a soft mew. Very eager by this point, you move overtop of the [if scalevalue of Player > 2]smaller[else]small[end if] kitty.";
					say "     His hole, already lubed, spreads easily for you as you push your cock into him[if Cock Length of Player > 24]. Even your [cock size desc of Player] [Cock of Player] shaft can make its way into the slender kitty's bottom with little difficulty, though he's deliciously tight around you. Despite, or perhaps even because of, the phallic bulge your meat makes in him, he rumbles and purrs loudly as he braces himself for what he hopes will be a very thorough fucking[else if Cock Length of Player > 15]. Even your [cock size desc of Player] [Cock of Player] shaft can make its way into the slender kitty's bottom with little difficulty, though he's deliciously tight around you. Despite, or perhaps even because, he's so deeply filled, he rumbles and purrs loudly as he braces himself for what he hopes will be a thorough fucking[else if Cock Length of Player > 8]. Your [cock size desc of Player] [Cock of Player] shaft is no problem for the slender kitty to take, sliding it into his well-trained bottom. He is still somehow deliciously tight around you though[else]. Despite his obvious ease at taking your [cock size desc of Player] [Cock of Player] shaft into his rear, he is still somehow deliciously tight around you[end if][if scalevalue of Player > 3]. He seems to also enjoy having the added weight of your [Body Size Adjective of Player] body overtop of him[else]. You nuzzle at the kitty's neck[end if] as you thrust in and out of his sexy little ass.";
					say "     He turns out to be a very enjoyable playmate, his inner muscles squeezing and pulling at your cock as he wiggles is rear in delightful ways[if Cock Count of Player > 1]. Having so much fun with him, you even swap cocks on him a few times, making sure you'll be completely satisfied and he gets a good, long fucking[end if]. Reaching around, you stroke the [if scalevalue of Player > 2]smaller[else]small[end if] kitty's erection, enjoying the soft mewls he makes as you tease his glans or balls while he holds out for you to finish. You [if scalevalue of Player > 3]pet[else]nuzzle[end if] his head and do your best to remember all the fine tricks the slinky kitty is using so you might share them with someone else.";
					say "     Eventually you can't hold back any longer and, working your [if BodyName of Player is listed in infections of Felinelist]paw[else]hand[end if] over his cock vigorously, you thrust deep into the kitty's bottom and unleash your [Cum Load Size of Player] load into [if Player is male](and all over) [end if]him. As he cums, [if Ball Size of Player > 6]you pump so much semen into the small feline that he's so bloated and overfull that some gurgles up and overflows from his mouth[else if Ball Size of Player > 6]you pump so much semen into the small feline that he's left bloated and overfull[else if Ball Size of Player > 4]you pump so much semen into the small feline that he has a bit of a bulge in his tummy from it all[end if]you continue fucking him, squeezing out as much as you can for your sexy playmate. When you're drained and [if Cock Length of Player > 24 or Ball Size of Player > 4]you manage to pull[else]you pull[end if] out of his tight rump, you're left worn out, but very fulfilled. You give the kitty a kiss, a pat on the rear and send him on his way, warning him to be more careful next time[if Ball Size of Player > 6]. The overloaded ocelot staggers off slowly[else if Ball Size of Player > 4]. The stuffed ocelot sloshes slightly as he heads off[else]. The well-fucked ocelot heads off[end if], leaking your semen from his creamy hole.";
				else:
					say "     Looking down at the cute little guy, you find yourself increasingly eager to play with him. You run your hands over his body and guide him to the ground. You roll around with him, groping and petting one another for a while, getting each other quite excited before you remind him that he's been a bad kitty and needs to make it up to you. Grinning, he rolls over onto his back, his arms and paws curled up cutely at his chest as his stiff cock stands erect and waiting for you. Very eager by this point, you move overtop of the [if scalevalue of Player > 2]smaller[else]small[end if] kitty.";
					say "     As you sink down onto his average-sized cock, his paws move to your chest[if Nipple Count of Player > 0 and Breast Size of Player > 0] and rub your breasts. His fingers glide over your bosom and move to play with your nipples[end if]. His cock throbs inside you, dribbling precum into your already [cunt size desc of Player] pussy. You take your time riding him, finding yourself wanting to make the most of this opportunity now that you've started[if Cunt Count of Player > 2]. You even alternate cunts a few times, sliding off his erection briefly before taking it back in another juicy cunt[else if Cunt Count of Player is 2]. You even alternate cunts a few times, sliding off his erection briefly before taking it back in your other juicy cunt[end if].";
					say "     The obedient kitty, having held back through all this, finally cums as you cry out in orgasm. Arching your back, your cunt clamps down around his rod and milks the seed from him. With a [if BodyName of Player is listed in infections of Felinelist]paw[else]hand[end if] at his balls, you roll them around, feeling every twitch they make as he cums inside you. Once he's drained, you get off slowly and send him on his way with a kiss and a pat on the rear, warning him to be more careful next time.[impregchance]";
			else if ocelotchoice is 2:
				if Player is male:
					say "     Looking down at the cute little guy, you find yourself increasingly eager to have your way with him. You tell him to get onto all fours, which he does readily. He mewls softly about being a bad kitty needing to be punished while waving his ass at you, tail raised and cock hard. At this point, the sight is most enticing and you grab those rounded cheeks of his and move in behind the [if scalevalue of Player > 2]smaller[else]small[end if] ocelot.";
					say "     Deciding he needs at least a little punishment for his earlier actions, you yank his tail up sharply as you thrust into him, keeping his pre-lubed hole extra-tight as you thrust into him. He mewls and digs his claws into the ground, but braces himself and pushes back onto you all the same, deservedly accepting this rough treatment[if Cock Length of Player > 24]. Even your [cock size desc of Player] [Cock of Player] shaft can make its way into the slender kitty's bottom with little difficulty, though he's deliciously tight around you. Despite, or perhaps even because of, the phallic bulge your meat makes in him, he rumbles and purrs loudly as he braces himself for what he hopes will be a very thorough fucking[else if Cock Length of Player > 15]. Even your [cock size desc of Player] [Cock of Player] shaft can make its way into the slender kitty's bottom with little difficulty, though he's deliciously tight around you. Despite, or perhaps even because, he's so deeply filled, he rumbles and purrs loudly as he braces himself for what he hopes will be a thorough fucking[else if Cock Length of Player > 8]. Your [cock size desc of Player] [Cock of Player] shaft is no problem for the slender kitty to take, sliding it into his well-trained bottom. He is still somehow deliciously tight around you though[else]. Despite his obvious ease at taking your [cock size desc of Player] [Cock of Player] shaft into his rear, he is still somehow deliciously tight around you[end if]. As you start fucking the slutty kitty, you give his rear the occasional slap, delighting in how his anus clamps down for a moment with each swat. Each one also brings a cute mewl and a surge in his purring, happy to have a dominant [if Player is female]herm[else]male[end if] pounding him and punishing him.";
					say "     He turns out to be a very enjoyable fucktoy, his inner muscles squeezing and pulling at your cock as he wiggles is rear in delightful ways[if Cock Count of Player > 1]. Having so much fun with him, you even swap cocks on him a few times, making sure you'll be completely satisfied and he gets a good, long fucking[end if]. After going like this for a while, you lean overtop of him, thrusting harder and deeper into him now[if scalevalue of Player > 3]. He seems to also enjoy having the added weight of your [Body Size Adjective of Player] body overtop of him[else]. You nuzzle at the kitty's neck[end if] as you reach around for his average-sized cock";
					if BodyName of Player is "Ocelot":
						say ". As you fuck away at the [if scalevalue of Player > 2]smaller[else]small[end if] kitty, you find yourself musing that it might be nice to have one of these guys for your very own.";
					say ".";
					say "     Eventually you can't hold back any longer and, giving him permission to cum as well, you unleash your hot load into the kitty's bottom[if Player is male] and across his body[end if][if Ball Size of Player > 6]. Your [Cum Load Size of Player] load fills him with so much cum that he's so bloated and overfull that some gurgles up and overflows from his mouth[else if Ball Size of Player > 6]. Your [Cum Load Size of Player] load fills him with so much cum that he's left bloated and overfull[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load fills him with so much cum that he has a bit of a bulge in his tummy from it all[end if]. Having emptied your balls into him, [if Cock Length of Player > 24 or Ball Size of Player > 4]you pull out of his well-fucked hole with some effort[else]you slide your cock from his well-fucked hole[end if], leaving you feeling a little worn out, but very fulfilled. You give the kitty a final swat on the rear and send him on his way with a warning to be more careful next time or you won't go so easy on him[if Ball Size of Player > 6]. The overloaded ocelot staggers off slowly[else if Ball Size of Player > 4]. The stuffed ocelot sloshes slightly as he heads off[else]. The well-fucked ocelot heads off[end if], leaking your semen from his creamy hole.";
				else:
					say "     Looking down at the cute little guy, you find yourself increasingly eager to have your way with him. Baring your groin, you grab his head and press it firmly between your thighs, growling for him to get licking if he wants to start making it up to you. He mewls softly that the naughty kitty will do his best for upsetting the [if BodyName of Player is listed in infections of Felinelist]feline mistress[else]sexy mistress[end if]. Wanting action and not words at this point, you cram his muzzle against your wet folds and order him to shut up and eat you out, which he obediently does.";
					say "     The [if scalevalue of Player > 2]smaller[else]small[end if] ocelot slowly laps across your folds before moving to work his rough tongue across your clit[if Cunt Depth of Player > 15]. With your [cunt size desc of Player] cunt pressed before him, the attentive kitty works his muzzle up and down with long licks. He rumbles and purrs happily as he works to please you, his purring sending delightful shivers through your bulging button[else if Cunt Depth of Player > 8]. With your [cunt size desc of Player] cunt pressed before him, the attentive kitty works his muzzle up and down with firm licks. He rumbles and purrs happily as he works to please you, his purring sending delightful shivers through your plump button[else]. With your [cunt size desc of Player] cunt pressed before him, the attentive kitty works his muzzle up and down with short licks. He rumbles and purrs happily as he works to please you, his purring sending delightful shivers through your hot button[end if].";
					say "     He turns out to be a very eager and obedient kitty, listening to your every order to go faster or slower, where to nuzzle and where to lick as best suits your changing desires as your arousal grows. His cute muzzle and agile little tongue work hard to please you in so many delightful ways[if Cunt Count of Player > 1]. You even have him switch cunts a few times, making sure you'll be completely satisfied[end if]. He's done a good job of getting you worked up.";
					say "     [bold type]Shall you let the kitty fuck you to finish you off?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Yes.";
					say "     ([link]N[as]n[end link]) - No.";
					if Player consents:
						LineBreak;
						say "     Having done his job quite well, you decide he deserves a little reward to go with his punishment. Pushing him away suddenly, he falls on his ass. He mewls softly in surprise only to have you pounce atop him, pressing your [cunt size desc of Player] pussy down onto his stiff, unattended cock. Pressing his body to yours, you start riding up and down in his lap in heavy thumps. His face, damp with your juices, nuzzles against ";
						if Breast Size of Player > 0:
							say "[if scalevalue of Player < 4]your bosom, licking and kissing at your breasts while he does his best to thrust up into you while you ride him vigorously. He puts his arms around you, hugging you tightly as he thrusts back up into you[else if scalevalue of Player is 4]your midriff, your breasts slapping down upon the top of his head while you ride him vigorously. He puts as much of his arms around you as he can, hugging you tightly as he thrusts back up into you[else]your tummy as the poor kitty struggles to deal with having such a large, energetic female riding in his lap. He puts his arms around you as much as he can, barely reaching your sides as he hugs you while thrusting back up into you[end if].";
						else:
							say "[if scalevalue of Player < 4]your chest, licking and kissing at it even as he tries to lap up your feminine juices from his muzzle[else if scalevalue of Player is 4]your midriff, licking and kissing at it even as he tries to lap up your feminine juices from his muzzle[else]your tummy as the poor kitty struggles to deal with having such a large, energetic female riding in his lap[end if].";
						say "     After the earlier warmup, you can't hold out much longer and cum with a loud [if FaceName of Player is listed in infections of Felinelist]mrowl[else]moan[end if] of ecstasy, soaking the kitty's crotch with your juices as you order him to cum inside you. Needing no further encouragement, he thrusts up into you a few more times before mewling in pleasure while sending his feline seed into your cunt. Once he's drained, you push the kitty back to flop onto the ground. You stand above him, dripping his seed down onto his face while he's still panting to recover. You order him to get up and send him off with a firm swat on his rear, sending him on his way with a warning to be more careful next time or you won't go so easy on him. Worn out and dazed, the rather sticky ocelot pads away slowly, working to groom his face with a paw as he goes off in search of his proper master.[impregchance]";
					else:
						LineBreak;
						say "     Given his earlier actions, you decide that might be too much of a reward for the ocelot and let him continue licking you. You do scritch his ears and tell the obedient fucktoy to lick you harder because you want to cum now. At your orders, he dives in, working that well-trained tongue across every sensitive spot it can reach inside and out[if Breast Size of Player > 0]. Bringing your other hand to your breasts, you play with them as you watch the little slave kitty eat you out[end if]";
						if BodyName of Player is "Ocelot":
							say ". As climax quickly approaches, you find yourself musing that it might be nice to have one of these guys for your very own";
						say ".";
						say "     Eventually you can't hold back any longer and cum with a loud [if FaceName of Player is listed in infections of Felinelist]mrowl[else]moan[end if] of ecstasy, soaking the kitty's muzzle with your juices[if Cunt Depth of Player > 36]. In your throws of passion, you inadvertently end up pulling the spotted kitty's head partway into your giant pussy. He takes this in stride and licks eagerly across your inner walls as they spasm around his face[else if Cunt Depth of Player > 24]. In your throws of passion, you inadvertently end up pulling the spotted kitty's muzzle into your enlarge pussy. He takes this in stride and licks eagerly across your inner walls as they spasm around his furry muzzle[else if Cunt Depth of Player > 15]. In your throws of passion, you inadvertently end up pulling the spotted kitty's muzzle squarely against your twitching folds, pressing his tongue into you. He takes this in stride, licking and lapping inside your spasming inner walls[else]. In your throws of passion, you inadvertently end up pulling the spotted kitty's muzzle squarely against your twitching folds, pressing his tongue against it. He takes this in stride and lavishes attention upon your clit[end if]. Once satisfied, you push him away so he lands on his ass, his cock throbbing hard after having been left unattended through all that[if Cunt Depth of Player > 24]. His head is literally soaked in your juices, making a mess of the exotic feline's fur[else if Cunt Depth of Player > 15]. His face is literally soaked in your juices, making a mess of the exotic feline fur[else]. His muzzle is quite soaked with your juices, making a mess of the exotic feline's fur[end if], which he starts licking up. You pull him to his feet, give his ass a firm swat and send him on his way with a warning to be more careful next time or you won't go so easy on him[if Cunt Depth of Player > 24]. The rather damp ocelot pads away slowly, working to groom his face with a paw to both settle his fur and taste more of your juices[else if Cunt Depth of Player > 15]. The somewhat damp ocelot pads away slowly, working to groom his face with a paw to both settle his fur and taste more of your juices[else]. The somewhat scruffy ocelot pads away slowly, working to groom his muzzle with a paw to both settle his fur and taste more of your juices[end if] while searching for his proper master (or at least a place to jerk off).";
		else:
			LineBreak;
			say "     Resisting the urge to play with this kitty slut, you shake him off your leg and [if ocelotchoice is 2]give him a hard swat on the rear[else]push him away with your foot[end if]. You warn him to stay away from you in the future. He runs off with a frightened mewl.";


to say beattheocelot_ld:
	say "...";


to say ocelotdesc:
	setmongender 3; [creature is male]
	choose row MonsterID from the Table of Random Critters;
	if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	now ocelotsize is 0; [only small one for now]
	say "     You are [one of]surprised[or]startled[at random] by a small, speedy feline running out from cover. Finding himself [one of]confronted[or]blocked[at random] by you, he stops and bares his claws. This small fellow is short and slender, maybe around five feet tall. His golden-brown fur is beautifully spotted and striped, lighter at the belly, though densely filled with black spots there are well. The ocelot is wearing a black leather harness, collar, cuffs and a codpiece over what seems to be an average-sized package. In it, he looks like someone's boytoy kitty slave. He shifts from foot to foot, preparing to strike.";
	let debit be 0;
	if HardMode is true and level of Player > 3, let debit be level of Player - 3; [one level behind player]
	now HP entry is 22 + ( debit * 3 );
	now monsterHP is 22 + ( debit * 3 );
	now wdam entry is 5 + ( debit / 3 );
	now lev entry is 2 + debit;
	now str entry is 8;
	now dex entry is 19 + (debit / 4);
	now sta entry is 8;
	now per entry is 12;
	now int entry is 10;
	now cha entry is 14;

[  --coming soon
	choose row MonsterID from the Table of Random Critters;
	if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	now ocelotsize be a random number between 0 and 1;
	if HardMode is false and level of Player < 2, now ocelotsize is 0;
	let debit be 0;
	if ocelotsize is 0:
		say "     You are [one of]surprised[or]startled[at random] by a small, speedy feline running out from cover. Finding himself [one of]confronted[or]blocked[at random] by you, he stops and bares his claws. This small fellow is short and slender, maybe around five feet tall. His golden-brown fur is beautifully spotted and striped, lighter at the belly, though densely filled with black spots there are well. The ocelot is wearing a black leather harness, collar, cuffs and a codpiece over what seems to be an average-sized package. In it, he looks like someone's boytoy kitty slave. He shifts from foot to foot, preparing to strike.";
		if HardMode is true and level of Player > 3, let debit be level of Player - 3; [one level behind player]
		now HP entry is 22 + ( debit * 3 );
		now monsterHP is 22 + ( debit * 3 );
		now wdam entry is 5 + ( debit / 3 );
		now lev entry is 2 + debit;
		now str entry is 8;
		now dex entry is 19 + (debit / 4);
		now sta entry is 8;
		now per entry is 12;
		now int entry is 10;
		now cha entry is 14;
	else:
		say "     You find yourself facing off with a very large, rotund feline. The pudgy ocelot glares at you angrily for disturbing him and bares his claws. This big fellow is quite large, maybe six feet tall, but well over 300 lbs. His golden-brown fur is beautifully spotted and striped, lighter at the belly, though densely filled with black spots there are well. The ocelot is wearing a black leather harness, fingerless gloves, cap and a codpiece over what seems to be rather sizable package. In all this, he looks like someone's leather daddy kitty. He shifts his leather cap, making sure its snug with his feline ears poking out before preparing to strike.";
		if HardMode is true and level of Player > 3, let debit be level of Player - 3; [one level above player]
		now HP entry is 33 + ( debit * 4 );
		now monsterHP is 33 + ( debit * 4 );
		now wdam entry is 7 + ( debit / 3 );
		now lev entry is 4 + debit;
		now str entry is 14;
		now dex entry is 16 + (debit / 4);
		now sta entry is 14;
		now per entry is 12;
		now int entry is 10;
		now cha entry is 12;
]

to say ocelotattack:
	if ocelotsize is 0:
		say "The [one of]ocelot[or]boytoy kitty[or]slender feline[or]lithe kitty[or]feline slave boy[or]small ocelot[at random] [one of]leaps at you, claws flashing![or]slashes at you, some of his frantic blows hitting![or]grabs onto your leg and sinks his teeth into your [leghit]![or]moves in close and gives you a rather distracting grope.[or]moves in close and rubs his body sensually against yours![at random]";
	else:
		say "The [one of]ocelot[or]kitty dom[or]hefty feline[or]pudgy kitty[or]feline leather daddy[or]big ocelot[at random] [one of]charges at you, claws flashing![or]swings at you, claws bared![or]gives you a solid punch![or]moves in close and gives you a rather distracting grope.[or]moves in close and gives your ass a very hard swat![at random]";


to say leghit:
	say "[one of]ankle[or]calf[or]thigh[or]hip[purely at random]";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Ocelot" to infections of FelineList;
	add "Ocelot" to infections of FurryList;
	add "Ocelot" to infections of NatureList;
	add "Ocelot" to infections of MaleList;
	add "Ocelot" to infections of BarbedCockList;
	add "Ocelot" to infections of SheathedCockList;
	add "Ocelot" to infections of BipedalList;
	add "Ocelot" to infections of TailList;
	now Name entry is "Ocelot"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[ocelotattack]"; [ Successful attack message ]
	now defeated entry is "[beattheocelot]"; [ Text when monster loses. ]
	now victory entry is "[losetoocelot]"; [ Text when monster wins. ]
	now desc entry is "[ocelotdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "of a spotted feline, with a small muzzle and rounded ears";
	now body entry is "[ocelotbodydesc]";
	now skin entry is "[one of]spotted and striped fur[or]patterned fur[or]ocelot fur[at random]";
	now tail entry is "You possess a feline tail covered in brownish-gold fur with a rich set of spots and stripes.";
	now cock entry is "[one of]feline[or][if ocelotchoice is 2]thick[else]slender[end if][as decreasingly likely outcomes]";
	now face change entry is "your vision gets briefly cloudy as pops and snaps lead to your head changing shape until you're left with a feline head";
	now body change entry is "[ocelotbodychange]";
	now skin change entry is "as the feel of soft fur brushes across your body as you are rapidly covered in a coat of golden brown fur that is resplendent with spots and stripes, much like that of an ocelot[if Player is ocelotbodied]. After this comes cool tingles as some leather gear grows from your skin";
	now ass change entry is "[if ocelotchoice is 2]it gets plumper, padded with a layer of fat[else]it becomes a cute, bubble butt[end if]. As that shift is ending, another comes as you form a feline tail that is richly covered in spots and stripes";
	now cock change entry is "it pulses and throbs, very hard as it forms a sheath of soft fur to house itself. Your cock is not left unchanged either, [if ocelotchoice is 2]getting thick and meaty[else]becoming slender and shapely[end if] as it takes on a decidedly feline shape";
	now str entry is 8; [ These are now the creature's stats... ]
	now dex entry is 19; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 8; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 14;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 22; [ The monster's starting HP. ]
	now lev entry is 2; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5; [ Monster's average damage when attacking. ]
	now area entry is "High"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 6; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 2; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 10;
	now Cunt Tightness entry is 4;
	now SeductionImmune entry is false;
	now libido entry is 72; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[ocelotbd]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "feline"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
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



to say ocelotbodydesc:
	if ocelotchoice is 2:	[big kitty]
		say "that of a heavy-set feline creature. You probably weigh over 300 lbs, but the weight doesn't seem to inconvenience you very much, feeling stronger muscles and a six foot frame below the fat to help support it. Your hands have become pudgy paws that seem eager to grab, grope or swat some asses";
		if SkinName of Player is "Ocelot":
			say ". Your body has also formed a harness, fingerless gloves and [if Player is male or Cunt Count of Player is 0]a codpiece[else]panties[end if] all out of black leather for you as well";
	else:			[slender kitty]
		say "that of a slender feline creature. This body, only about five feet tall, is quite lithe, capable of using its flexibility to please your lovers. To help with this, your paws have slender, nimble digits that are very sensitive, almost as if they're able to locate every spot needing attention";
		if SkinName of Player is "Ocelot":
			say ". Your body has also formed a harness, cuffs and [if Player is male or Cunt Count of Player is 0]a codpiece[else]panties[end if] all out of black leather for you as well";


to say ocelotbd:
	if ocelotchoice is 2:	[big kitty]
		say "[one of]fat[or]plump[or]hefty[or]pudgy[at random]";
	else:			[slender kitty]
		say "[one of]slender[or][if Player is female]petite[else]boytoy[end if][or]flexible[or]alluring[at random]";

to say ocelotbodychange:
	say "parts of you start going numb, followed by the pops and snaps of changing bone. As your body changes shape, you becomes increasingly ";
	if ocelotchoice is 2:	[big kitty]
		say "fat, gaining excess pudginess all over even as your muscles and bones are altered to help deal with this. Your hands become paws with pudgy fingers and your body has a subtle, feline shape to it that you can still make out";
	else:
		say "slender, shrinking down to become quite thin and lithe. Your hands become dainty paws with nimble fingers and your body has a subtle, feline shape to it";
	if SkinName of Player is "Ocelot":
		say ". As the changes are wrapping up, some leather gear forms over your body as well to complete the look";


Section 3 - Definitions

Definition: a person is ocelotbodied:
	if BodyName of Player is "Ocelot", yes;
	no;


[
Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Ocelot Infection"	"Infection"	""	Ocelot Infection rule	1000	false

This is the Ocelot Infection rule:
	if Player has a body of "Ocelot":
		trigger ending "Ocelot Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     You succumb to your ocelot infection.";
		else:
			say "     You survive, but were infected by the ocelot.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Ocelot ends here.
