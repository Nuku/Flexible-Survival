Version 1 of Masturbate by Core Mechanics begins here.
[version 1 - Masturbate added ]
[- Originally Authored By: Stripes -]

"Adds some porn you can use to masturbate and decrease your libido."

Section 1 - Porn Collection

Table of Game Objects (continued)
name	desc	weight	object
"porn collection"	"     A sizable stack of pornographic magazines of various levels of tastelessness for a myriad of lurid preferences."	2	porn collection

porn collection is a grab object. It is part of the player. It is not temporary.

the scent of the porn collection is "The bundle of pornographic magazines have a lingering scent of sex to them.".

when play begins:
	add "porn collection" to invent of Porn Store;

[
before taking the porn collection for the first time:
	say "     Lisa notices your interest in the bundle of porn magazine's she's set aside and tied together with string. 'That's a bunch of stock I don't have any interest in keeping. You can take them if you'd like.' Looking them over, you can see they have quite a bit of diversity in them, many of them quite raunchy, showing men and women in all forms of sexual congress. There's even a few with male-male pairings. There should certainly be something to pique your interest when you need a little diversion.";
]

Section 2 - Masturbation


instead of using porn collection:
	if Player is neuter:
		say "     Lacking any real gender of your own, you find the magazines rather unsatisfying and put them away.";
	else if Libido of Player < 25:
		say "     You're not that turned on and really should focus on more important things right now.";
	else if Libido of Player < 50:
		say "[simplemast]";
	else:
		say "     Pulling out your porn collection, you look over the assorted magazines in search of something of interest. Shall you have a quick session to relieve a little pressure (Y) or do you want to draw it out and really let off some steam (N)?";
		if Player consents:
			say "[simplemast]";
		else:
			say "     You settle yourself down to really enjoy some personal time and relieve your excess arousal. You pull out a selection of the hard core magazines and begin playing with yourself[if Breast Size of Player > 8]. You start by rubbing over your [BodyName of Player] body and playing with your nipples and teasing your huge breasts, running your fingers over their sensitive flesh[else if Breast Size of Player > 5]. You start by rubbing over your [BodyName of Player] body and playing with your nipples and teasing your large breasts, running your fingers over their sensitive flesh[else if Breast Size of Player > 2]. You start by rubbing over your [BodyName of Player] body and playing with your nipples and teasing your large breasts, running your fingers over their sensitive flesh[else]. You start by rubbing over your [BodyName of Player] body and teasing your nipples[end if][if Nipple Count of Player > 2]. You lavish attention upon each pair in turn, helping to get yourself wound up for a bigger release[end if].";
			if Player is herm:
				say "     Being a herm, you place a hand at your cock[smn] and the other at your cunt[sfn] and start playing with them. You stroke your [cock size desc of Player] [Cock of Player] shaft slowly at first while fingering the wet folds of your puss[yfn]. Precum dribbles onto you while your feminine juices soak your other hand. You move your hand away from time to time to rub your [Ball Size Adjective of Player] [Balls], feeling the pressure build up in them.";
				if companion of Player is mouse girl:
					say "     As you continue to play with yourself, your mind wanders to thinking of sexy mice and all the fun things you could do with them. Glancing over, you spot Rachel sitting nearby, playing with herself as she watches you. She grins at you knowingly as fresh images of you surrounded by horny mice fill your mind. Moaning, you become even more aroused and play with yourself even more vigorously. You even start to share in the mouse girl's sensations as well.";
				say "     You keep teasing yourself, holding back your orgasm a little longer, wanting really enjoy it... until finally you moan loudly and cum hard, releasing a [if Ball Size of Player < 12]sizable blast[else if Ball Size of Player < 25]stream[else]veritable torrent[end if] of thick semen, creating a messy pool of your seed as you spray it onto yourself and the ground nearby. Your cunt quivers and squeezes down around your fingers, [if Libido of Player < 75]soaking your hand[else if Libido of Player < 90]sending your juices down your legs until a small puddle is formed[else]blasting a gush of feminine juices that soaks your thighs and runs down your legs to form a large, musky puddle[end if]. You keep stroking and pumping until you're left panting and moaning, almost passing out from the much-needed release.";
			else if Player is male:
				say "     You take hold of your [if Cock Count of Player > 1]cocks and start playing with them[else]cock and start playing with it[end if]. You stroke your [cock size desc of Player] [Cock of Player] shaft[smn] slowly at first, pleasing yourself as only you can, knowing just what feels right. Precum dribbles down your meat to get spread over it as you stroke yourself. You move a hand away from time to time to rub your [Ball Size Adjective of Player] [Balls], feeling the pressure build up in them.";
				if companion of Player is mouse girl:
					say "     As you continue to play with yourself, your mind wanders to thoughts of sexy mice and all the fun things you could do with them. Glancing over, you spot Rachel sitting nearby, playing with herself as she watches you. She grins at you knowingly as fresh images of you surrounded by horny mice fill your mind. Moaning, you become even more aroused and play with yourself even more vigorously. You even start to share in the mouse girl's sensations as well.";
				say "     You keep teasing yourself, holding back your orgasm a little longer, wanting really enjoy it... until finally you moan loudly and cum hard, blasting a [if Ball Size of Player < 12]sizable blast[else if Ball Size of Player < 25]stream[else]veritable torrent[end if] of thick semen, creating a messy pool of your musky seed as you spray it onto yourself and the ground nearby. You keep stroking and pumping until you're left panting and moaning, almost passing out from the much-needed release.";
			else if Player is female:
				say "     You move your hands down to start fingering the wet folds of your [if Cunt Count of Player is 1]pussy[else]pussies[end if]. You work [if Cunt Tightness of Player is 1]a finger[else if Cunt Tightness of Player < 4]a pair of fingers[else if Cunt Tightness of Player < 6]a trio of fingers[else]a trio of fingers and eventually your whole hand[end if] into your gripping, squeezing vagina. You rub and tease along your inner walls and make sure to pay proper attention to your sensitive clit.";
				if companion of Player is mouse girl:
					say "     As you continue to play with yourself, your mind wanders to thinking of sexy mice and all the fun things you could do with them. Glancing over, you spot Rachel sitting nearby, playing with herself as she watches you. She grins at you knowingly as fresh images of you surrounded by horny mice fill your mind. Moaning, you become even more aroused and play with yourself even more vigorously. You even start to share in the mouse girl's sensations as well.";
				say "     You keep teasing yourself, holding back your orgasm a little longer, wanting to really enjoy it... until finally you moan loudly and cum hard, [if Libido of Player < 75]soaking your hand[else if Libido of Player < 90]sending your juices down your legs until a small puddle is formed[else]blasting a gush of feminine juices that soaks your thighs and runs down your legs to form a large, musky puddle[end if] as your cunt quivers and squeezes down around your fingers. You keep rubbing and fingering yourself until you're left panting and moaning, almost passing out from the much-needed release.";
			let muskwave be ( Libido of Player + ( Ball Size of Player * 3 ) + ( Cunt Tightness of Player * 5 ) );
			now Libido of Player is Libido of Player / 4;
			decrease humanity of Player by a random number between 2 and 5;
			if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 1;
			if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 1;
			if the companion of Player is mouse girl:
				decrease humanity of Player by 2;
				if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 1;
				if a random chance of 2 in 3 succeeds:
					if a random chance of 1 in 2 succeeds, now researchbypass is 1;
					infect "Mental Mouse";
					decrease humanity of Player by 1;
					now researchbypass is 0;
				now Libido of Player is ( 5 * Libido of Player ) / 6;
			if the location of Player is not sleepsafe:
				while muskwave > 50:
					if a random number between 1 and 200 < muskwave:
						say "     As you're resting and recovering from your massive orgasm, a nearby creature is drawn in by the musky aroma of your sexual fluids before the scent can dissipate.";
						let l be a random visible dangerous door;
						if l is not nothing, now battleground is the marea of l;
						if l is nothing, now battleground is "Outside";
						fight;
					decrease muskwave by 75;
			follow the turnpass rule;


to say simplemast:
	say "     You settle yourself down to [if Player is herm]play around with your junk for a bit[else if Player is male]jerk yourself off briefly[else]give yourself a quick fingering[end if]. You grab one of the magazines for added inspiration and get yourself off, relieving some of your excess arousal";
	if the companion of Player is mouse girl:
		say ". Partway into your masturbatory session, thoughts of sexy mice slip into your mind.";
		decrease humanity of Player by 1;
		if a random chance of 1 in 2 succeeds:
			if a random chance of 1 in 2 succeeds, now researchbypass is 1;
			infect "Mental Mouse";
			decrease humanity of Player by 1;
			now researchbypass is 0;
		now Libido of Player is ( 9 * Libido of Player ) / 10;
	else:
		say ".";
	now Libido of Player is ( 4 * Libido of Player ) / 5;


Masturbate ends here.
