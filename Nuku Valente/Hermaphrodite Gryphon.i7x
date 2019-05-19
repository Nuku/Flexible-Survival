Version 2 of Hermaphrodite Gryphon by Nuku Valente begins here.
[Version 2.1 - Added special MPreg-anal player loss.]

"Adds a Hermaphrodite Gryphon creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

when play begins:
	add { "Blue Gryphon Herm" } to infections of hermaphrodite;
	add { "Blue Gryphon Herm" } to infections of furry;

nohgryphonsex is a number that varies.
hgryphonwin is a number that varies.
hgryphon_TGcount is a number that varies.
lasthgryphon_TG is a number that varies. lasthgryphon_TG is usually 255.

To say losetohgryphon:
	if inasituation is true:
		say ""; [taken care of at the event source]
	else:
		now nohgryphonsex is 0;
		let analchance be 5;
		if Player is submissive, increase analchance by 2;
		if Player is mpreg_ok, increase analchance by 2;
		if anallevel is 2, now analchance is ( 2 * analchance ) / 3;
		if anallevel is 1, now analchance is 0;
		if Player is herm:
			if a random chance of 2 in 3 succeeds:	[fucking the player]
				if Cunt Depth of Player >= 12:
					say "[gryphonfuck1]"; [player herm pussy fuck]
				else:
					say "[gryphonfuck4]"; [oversized pussy fuck]
			else if a random chance of analchance in 18 succeeds:
				say "[gryphonfuck7]";
			else if Cock Length of Player > 6:
				say "[gryphonfuck3]";
			else:
				say "[gryphonfuck2]";
		else if Player is male:
			if a random chance of analchance in 15 succeeds:
				if Player is mpreg_able:
					say "[gryphonfuck8]";
				else:
					say "[gryphonfuck7]";
			else if Cock Length of Player > 6:
				say "[gryphonfuck3]";
			else:
				say "[gryphonfuck2]";
		else if Player is female:
			if a random chance of analchance in 20 succeeds:
				say "[gryphonfuck7]";
			else if Cunt Depth of Player >= 12:
				say "[gryphonfuck5]"; [female player pussy fuck]
			else:
				say "[gryphonfuck4]"; [oversized pussy fuck]
		else:
			if anallevel is 1:
				say "[gryphonfuck6]";
			else:
				if Player is mpreg_able:
					say "[gryphonfuck8]";
				else:
					say "[gryphonfuck7]";

to say gryphonfuck1: [player herm pussy fuck]
	say "     The gryphon, victorious, pushes you onto your back and buries her face into your crotch. She pulls your clothes free before she starts to lap at your [cock size desc of Player] [Cock of Player] shaft before moving on to your [cunt size desc of Player] lips. Her soft tongue has you squirming in pleasure, growing wet under her skillful ministrations. Detecting you're ready, she slips up over you, pressing her large breasts to your [if Breast Size of Player > 0][breast size desc of Player][else][bodytype of Player][end if] chest, smoothly slipping her black shaft into your eager and ready body. She kisses and licks at you, pressing that beak expertly to your lips, managing a fierce and passionate exchange despite it. You find your hands wandering over her sides, then drawing her closer as her love making becomes more and more intense. Her taloned hands grip your throbbing maleness and stroke it as she thrusts into you. Your body grows tense before pleasure washes over you, but the gryphon is not yet sated, pistoning smoothly against you and crooning in an ear as she begins to bump you with the thick knot of her shaft. A firm shove, and it pops into place, locking her to you as your belly begins to swell with fertile seed. She shivers and buries her face into your neck as she peaks, remaining on top of you, hugging, for the minute it takes for her huge balls to unload. You are stuck to her, snuggling quietly, for what feels like an hour before she slips from you, kisses one last time, and departs.[ovichance]";

to say gryphonfuck2: [rejection, because of "too small"]
	say "     The gryphon [one of]shoves you to the ground roughly and seems disappointed about something. She sniffs at you once more before snorting loudly. With a disdainful kick of a foot, she leaves some dust on you, then departs[or]pushes you back with one hand while the other grabs at you, removing any clothing you may have. She speaks haltingly, as if she is not used to speaking anymore, 'You are too small, but maybe, later. For now, a gift.' She kneels before you and takes your [cock size desc of Player] [Cock of Player] member into her beak, lapping over it with soft, wet, tongue. Her firm paw hands hold to your ass as she begins to bob slowly against you, making your flesh tingle with delight as she works at you expertly. All too soon you are spilling seed across that tongue, grunting with your own satisfaction. She rises, licking her beak. With a wink, she saunters off[at random].";

to say gryphonfuck3: [player fucks gryphon pussy]
	say "     Eyeing something she wants, the gryphon pushes you back a little before turning around and raising her tail high into the air, exposing her pouting lips to your view. Unable to resist, you move up and seize her well-muscled hips and are soon pushing against her. With every sink of your [cock size desc of Player] [Cock of Player] meat into her, she gives a pleasured, keening sound. Her cunt squeezes around your hefty member, encouraging it until you blow your load deep inside of her dripping snatch. Your bodies tremble against one another as passions ebb and she lets you slide off to the ground. Before leaving, she turns to gently lick over your face, then cleans your [cock size desc of Player] tool dutifully.";


to say gryphonfuck4: [oversized pussy fuck]
	say "     The gryphon nudges you over onto your belly with suddenly gentle hands, holding you in place as she scrambles on top of you, pressing her warm furry bulk against your [Skin of Player] back. You feel a shaft that's far too large for your [cunt size desc of Player] passageway. Before you can wriggle away, it shoves up into you, pounding deeply and making your entire body shudder and quake. You can feel yourself being stretched painfully by the huge member as it batters against your cervix. The gryphon calls out above you, squeezing you close to her curvy front as hot seed rushes into you, directly injected into your womb with powerful cannon blasts. You can feel the heat washing off her immense balls as she makes your belly swell with potential life. Sated, she gently sets you down, licks your cheek, and moves off, semi stiff member wagging between her thighs.[ovichance]";
	if "Male Preferred" is not listed in feats of Player and "Modest Organs" is not listed in feats of Player, increase Cunt Depth of Player by 1;

to say gryphonfuck5: [female player pussy fuck]
	say "     The gryphon, victorious, pushes you onto your back and buries her face into your crotch. She pulls your clothes free before she starts to lap at your [cunt size desc of Player] lips. Her soft tongue has you squirming in pleasure, growing wet under her skillful ministrations. Detecting you're ready, she slips up over you, pressing her large breasts to your [Skin of Player] [breast size desc of Player] chest, smoothly slipping her black shaft into your eager and ready body. She kisses and licks at you, pressing that beak expertly to your lips, managing a fierce and passionate exchange despite it. You find your hands wandering over her sides, then drawing her closer as her love making becomes more and more intense. Your body grows tense before pleasure washes over you, but the gryphon is not yet sated, pistoning smoothly against you and crooning in an ear as she begins to bump you with the thick knot of her shaft. A firm shove, and it pops into place, locking her to you as your belly begins to swell with fertile seed. She shivers and buries her face into your neck as she peaks, remaining on top of you, hugging, for the minute it takes for her huge balls to unload. You are stuck to her, snuggling quietly, for what feels like an hour before she slips from you, kisses one last time, and departs.[ovichance]";

to say gryphonfuck6:
	say "     The gryphon is surprised to find you rather lacking and nudges you over onto your belly with suddenly gentle hands. She holds you in place as she scrambles on top of you, pressing her warm furry bulk against your back. You feel a shaft slide against your rear, dribbling pre across your back entrance. Before you can wriggle away, it shoves up into you, pounding deeply and making your entire body shudder and quake. You can feel yourself being stretched painfully by the large member as it forces its way into your bowels. The gryphon calls out above you, squeezing you close to her curvy front as hot seed rushes into you, pumping into your rectum with powerful cannon blasts. You can feel the heat washing off her immense balls as she makes your belly swell with her virile seed. Sated, she gently sets you down, licks your cheek, and moves off, semi stiff member wagging between her thighs.[movichance]";

to say gryphonfuck7:
	say "     The gryphon[if Player is neuter] is surprised to find you rather lacking in the genital department and[end if] nudges you over onto your belly with suddenly gentle hands. She holds you in place as she scrambles on top of you, pressing her warm furry bulk against your back. You feel a shaft slide against your rear, dribbling pre across your back entrance. Before you can wriggle away, it shoves up into you, pounding deeply and making your entire body shudder and quake. You can feel yourself being stretched [if scalevalue of the player < 4]painfully [end if]by the large member as it forces its way into your bowels[if Player is female]. Her taloned hand gropes you as she fucks your ass, playfully teasing at the [cunt size desc of Player] pussy she could instead be using[end if][if Player is male]. She takes a hold of your [cock size desc of Player] [Cock of Player] shaft and pumps at it while thrusting into you[end if]. After enjoying a quick ride, the gryphon calls out above you, squeezing you close to her curvy front as hot seed rushes into you, pumping into your rectum with powerful cannon blasts. You can feel the heat washing off her immense balls as she makes your belly swell with her virile seed. Sated, she gently sets you down, licks your cheek, and moves off, semi stiff member wagging between her thighs.[movichance]";

to say gryphonfuck8:	[MPreg special]
	say "     When the victorious gryphon pushes you to the ground, your body automatically moves onto all fours with your ass raised. You feel a warm of excitement in your lower belly, like an empty need you hope to be filled. Like an animal in heat, your hidden male womb's decided it wants to be bred. The gryphon grins as you present yourself so easily and rubs her taloned hands over your rear, massaging your butt as it moves into position. With a little spit added, a taloned finger dips into your waiting pucker and wriggles around, drawing a moan from you.";
	say "     [one of]'My, aren't we eager now?' [or][if HP of Player > 0]'Oh, I do love the eager ones.' [else]'What was all that fuss for earlier? I can tell you really want it.' [end if][or]'That's it, slut - raise that ass and take it.' [or]'I've seen your like before. Time to breed that ass of yours.' [or]'You're a breeder male, aren't you? Well, time to put some eggs in that butt of yours.' [at random]With that, the herm sinks her dick into your readied hole and starts pounding away at you. Your hips push back into her thrusts and your anal walls squeeze and tug at it, eager to get the creature's seed. Your body acts on its own, leaving you awash in the pleasure of the coming breeding.";
	say "     The two of you go at it like this for a few minutes, the gryphon as eager to accomplish the act as you are. When she does peak, your insides are blasted with a hot rush of virile cream that fills your bowels with warm, gooey heat. Much of this heat pools in your rectal womb, seeking to impregnate you.[movichance]";
	if gestation of Child is 0:
		say "     Having dumped her load into you, the gryphon pauses to recover for a time before starting up again. Perhaps it is your pheromones urging her on, telling her loins that you've not yet been impregnated and thus driving them to try a second time. Having just cum, she fucks your rougher and goes for much longer in her attempt to breed you. Eventually though, she's able to build up another orgasm and unleashes a second, somewhat weaker, series of shots that flood your already filled bowels. More semen flows into your already filled womb, stuffing it with a fresh batch of virile sperm that seek out your egg.[movichance]";
		if gestation of Child is 0:
			say "     The gryphon, fully spent at this point, pulls out and falls back on her ass. Some of her excess load flows out of your used and abused butthole. Your body, knowing it's not been bred, tries to hold back the flow, but can only slow the leak. You give an unsatisfied moan and wiggle your ass temptingly, but the gryphon has no more to give and staggers to her feet. As if sensing her failure, your unsuccessful stud gives your rear and apologetic pat before leaving.";
		else:
			say "     Having successfully been bred this time, your body's needs are satisfied and you release a long and happy moan. The herm stud grins and gives your ass a slap before slowly pulling out. Much of her excess load flows out of your used and abused butthole, but you know the deed is done and thus have no more need to hold it in. After taking a moment to enjoy the sight of your well-creamed ass, she heads off with a happy strut to her step.";
	else:
		say "     Having successfully been bred, your body's needs are satisfied and you release a long and happy moan. The herm stud grins and gives your ass a slap before slowly pulling out. Some of her excess load leaks out of your well-used butthole, but you know the deed is done and thus have no more need to hold it in. After taking a moment to enjoy the sight of your well-creamed ass, she heads off with a happy strut to her step.";


To say beatthehgryphon:
	if inasituation is true:
		say ""; [taken care of at the event source]
	else:
		increase hgryphonwin by 1;
		if Player is neuter:
			say "[one of]The once proud beast is knocked to the ground, her wings drawn protectively. Victorious, you move on.[or]Succumbing to her wounds, the gryphon collapses at your feet, posing no further threat.[at random]";
		else if nohgryphonsex > 2 and ( the remainder after dividing nohgryphonsex by 5 is not 0 ):
			say "     Driven back by you, the herm gryphon whimpers with unsatisfied need. She crawls over to a [one of]wall[or]pile of rubble[or]crashed car[at random] and sits against it while masturbating furiously in an attempt to sate her lust. As with the others, you turn away, ignoring your urges to join in.";
			increase nohgryphonsex by 1;
		else:
			say "     [if a random chance of 1 in 2 succeeds]Your opponent hits the ground with a loud *thud* and a squawk. Lying defeated and on her back, the gryphon awaits her fate with more than a little anticipation[else]Driven back by you, the herm gryphon whimpers with unsatisfied need. She crawls over to a [one of]wall[or]pile of rubble[or]crashed car[at random] and sits against it while masturbating furiously in an attempt to sate her lust[end if]. The sight of her like this is quite a tempting one. Perhaps you might have some fun now that you've taken the fight out of her[if carried of gryphon cum > 0 and HP of Garrett >= 5 and inasituation is false]. You're also reminded that you have a bottle of Garrett's special gryphon cum milk. It probably wouldn't take much coaxing to tempt her into drinking some[end if].";
			now sextablerun is 0;
			blank out the whole of table of fucking options;
			[]
			choose a blank row in table of fucking options;
			now title entry is "Milk her";
			now sortorder entry is 2;
			now description entry is "Fill a bottle with some tasty gryphon milk";
			[]
			if Player is male:
				choose a blank row in table of fucking options;
				now title entry is "Fuck her";
				now sortorder entry is 1;
				now description entry is "Screw the defeated gryphon";
			[]
			if Player is female:
				choose a blank row in table of fucking options;
				now title entry is "Ride her";
				now sortorder entry is 2;
				now description entry is "Get that knotted cock in your pussy";
			[]
	[		if Player is not female:
				choose a blank row in table of fucking options;
				now title entry is "Anal ride";
				now sortorder entry is 3;
				now description entry is "Get that knotted cock in your ass"; ]
			[]
			if Player is male and Cock Length of Player > 7 and player is female and Cunt Depth of Player > 5:
				choose a blank row in table of fucking options;
				now title entry is "Titty fuck + ride";
				now sortorder entry is 4;
				now description entry is "Get a titty fuck while riding her cock";
			[]
	[		if Player is male:
				choose a blank row in table of fucking options;
				now title entry is "Blow job";
				now sortorder entry is 5;
				now description entry is "Get her to suck you off"; ]
			[]
	[		choose a blank row in table of fucking options;
			now title entry is "Blow her";
			now sortorder entry is 6;
			now description entry is "Suck her off"; ]
			[]
			if carried of gryphon cum > 0 and HP of Garrett >= 5 and inasituation is false:
				choose a blank row in table of fucking options;
				now title entry is "Garrett's special milk";
				now sortorder entry is 99;
				now description entry is "Tempt her into consuming the manly drink";
			[]
			repeat with y running from 1 to number of filled rows in table of fucking options:
				choose row y from the table of fucking options;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "[link]0 - Leave her be[as]0[end link][line break]";
			while sextablerun is 0:
				say "Pick the corresponding number> [run paragraph on]";
				get a number;
				if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
					now current menu selection is calcnumber;
					choose row calcnumber in table of fucking options;
					say "[title entry]: [description entry][line break]";
					say "Is this what you want?";
					if Player consents:
						let nam be title entry;
						now sextablerun is 1;
						if nam is "Milk her":
							say "[hgryphon_pw_00]";
						else if nam is "Fuck her":
							say "[hgryphon_pw_01]";
						else if nam is "Ride her":
							say "[hgryphon_pw_02]";
	[					else if nam is "Anal ride":
							say "[hgryphon_pw_03]"; ]
						else if nam is "Titty fuck + ride":
							say "[hgryphon_pw_04]";
	[					else if nam is "Blow job":
							say "[hgryphon_pw_05]"; ]
	[					else if nam is "Blow her":
							say "[hgryphon_pw_06]"; ]
						else if nam is "Garrett's special milk":
							say "[hgryphon_TG]";
				else if calcnumber is 0:
					say "     You resist the temptation of sex and turn away. Having stopped her from assaulting you is sufficient.";
					increase nohgryphonsex by 1;
					now sextablerun is 1;
				else:
					say "Invalid Option. Pick between 0 and [the number of filled rows in the table of fucking options].";

to say hgryphon_pw_00: [milking]
	say "     Approaching the defeated gryphon with confidence, you reach out and place your hands on her full breasts, giving them a squeeze. 'Mmmh! That feels nice,' she murrs in pleasure, leaning into your touch. Several small drops of milk already start leaking from her nipples just from the first caress, and you can see that she's obviously more than ready to give some milk. The gryphoness gives a surprised chuckle as you dig an empty plastic bottle from your pack, then press its open neck against one of her nipples, squeezing the boob around it with your other hand. A first squirt of rich gryphon milk shoots into the bottle followed by another and another. The air fills with the strangely arousing scent of the hybrid creature's milk while you switch back and forth between her breasts, milking both of them equally. Your former opponent clearly doesn't mind at all that you're taking what you want from her, letting out sighs of pleasure and arousal throughout the process.";
	say "     By the time you've filled up your bottle, the gryphoness is putty in your hands, plyable and oh so very horny. If you hadn't already proven that you can take her in a fight, you think she'd just jump you right away and want have sex. As things stand, the blue-feathered avian just lies back as you take your hands off her, stroking her own breasts, as well as the erect shaft between her legs. Packing away your fresh milk, you step back from the gryphoness as she begins to masturbate, leaving her behind to take care of herself.";
	LineBreak;
	say "[bold type]You gain a bottle of gryphon milk![roman type][line break]";
	increase carried of gryphon milk by 1;

to say hgryphon_pw_01:
	say "     Approaching the defeated gryphon with confidence, you nudge her legs apart with your feet to get a better look at that moist slit she has tucked under those balls of hers. Seeing your interest, she raises her hips and holds her scrotum out of the way. You move to your knees, positioning your [cock size desc of Player] member at your victim's quivering slit.";
	if Cock Length of Player < 6:
		say "     With almost no effort, her massive pussy swallows your entire cock. With what could almost pass for a smirk, the gryphon squawks 'I guess you're just not man enough...' Anger and lust getting the better of you, you pull your cock out of her voluminous cunt and, repositioning slightly, place the tip at the entrance to her back door. Her eyes going wide with fear, your prey is about to voice her dissent, but too late, your lust won't be denied. With some effort you push past her tightly clenched sphincter, drawing loud pained squawks from your victim. You start slowly fucking her tight asshole, in and out, gradually picking up speed. Eventually the gryphon's squawking changes pitch; however she felt before, she definitely seems to be enjoying this now.";
	else:
		say "     With what almost sounds like a combination of a squawk and purring the gryphon spreads her legs further apart, her blue lips trembling against your [Cock of Player] manhood. She stares up at you expectantly as you slowly enter her accommodating tunnel. A look of absolute pleasure crosses the gryphon's face as you start to slide in and out. You pick up speed, your balls slapping against her on every thrust.";
	WaitLineBreak;
	say "     As your rhythmic fucking continues, your victim starts to squeeze her gigantic blue breasts. You see a small dribble of milk escape both of her nipples as she roughly fondles herself. Continuing with your assault, you start to get annoyed by her massive erection. It's so big that it manages to slap your chin on each thrust. On one thrust a bit of precum escapes the gryphon's cock and hits your tongue; the taste is magical, and you need more. Shifting a bit, you manage to take the tip of the gryphon's knotted black cock into your mouth, and you start wildly pumping away at it with both hands while still fucking her abused hole furiously.";
	say "     The combined stimulation is too much for the gryphon as her body is wracked with orgasm. Gob after gob of the most delicious cum starts pouring down your throat, while at the same time milk gushes from the gryphon's massive breasts, soaking the both of you. Your blue partner's orgasm causes her muscles to involuntarily clamp down on your throbbing cock, this increased friction is all it takes as you start to pump her full of your seed.";
	say "     Spent and exhausted you get dressed and walk away, leaving the Hermaphrodite Gryphon to lie in a pool of her own milk.";
	decrease Libido of Player by 30;
	PlayerEat 5;
	if Libido of Player < 0, now Libido of Player is 0;

to say hgryphon_pw_02:
	say "     Approaching the defeated gryphon with confidence, you approach her and eye that stiff cock of hers. You straddle your fallen blue playmate and start to ease the tip of the long black shaft past your moistening lips. You feel every inch as you slide all the way down to the knot. Unable to take the cock in any further, you start to move your hips, grinding against the gryphon's mighty black knot. The gryphon's eyes start to roll back, your opponent lost in bliss from your grinding, occasionally emitting a low, rolling squawk. As you increase your pace, you see what appears to be milk dribbling from the beast's large nipples. You bend down and take one of the nipples into your mouth. While you greedily consume all the milk these wonderful teats will produce, a hot wave of desire floods through you, and you start to really want that knot inside you. Grinding harder and harder, faster and faster, you try and slide that bulb past your slick labial lips. You feel climax approaching, so you thrust down as hard as you can to force that wonderful bulge inside.";
	if Cunt Depth of Player < 6:
		say "     It's no use, you are just too small to take it all in. The gryphon chirps soothingly understanding your frustration. Suddenly, you let out a startled yelp as you feel an electrifying tickling sensation on your clit and look down to see the puffed end of a blue tail to be the cause. 'Perhaps this will help ease your suffering,' your lover says softly, and help it does! The added sensation of that blue tail proves too much for you. As your body shakes with orgasm, you involuntarily clench your jaw, clamping down on her tasty, milk squirting nipple. The added pain is apparently just what she needed, your azure mate letting out a loud squawk as she climaxes, filling you with cum from one end and milk from the other.[ovichance]";
	else:
		say "     Seeing what you are trying to do, your blue lover waits for the right moment, and with one masterful thrust, she firmly wedges her massive black knot deep inside your trembling pussy. The mixed feelings of pain and pleasure overcome you; your knees buckle and you collapse into the soft furry warmth of the gryphon's bosom. You are still conscious, but you are too overwhelmed to do anything but enjoy the ride. 'It's alright baby, mama's here,' the gryphon coos as she softly wraps her furry blue arms around you, placing her leaking nipple back into your mouth. As you resume suckling, the gryphon starts to rock her hips back and forth, causing her knot to stretch you to your limits. The pleasure is so intense that you barely register achieving orgasm after orgasm thanks to your lover's exceptional skills. After what seems like seconds (although you realize it's more like half an hour), the gryphon herm lets out a loud squawk as she climaxes, filling you with cum from one end and milk from the other.[ovichance]";
	WaitLineBreak;
	say "     You lie there for a few minutes, not wanting to move after that marathon fucking, and also enjoying the softness of your partner's massive furry blue breasts. Eventually, the gryphon's swollen knot shrinks down and she finishes filling you with seed. You slowly get to your feet, still impaled on gryphon cock. You start gingerly sliding the bulbous black shaft out, and as it passes your abused nether lips, a torrent of cum spills out, drenching the almost unconscious gryphon below. You get dressed and leave, the gryphon still on the ground, eyes closed, moaning, and idly fondling her ample breasts.";
	PlayerDrink 5;
	decrease Libido of Player by 30;
	if thirst of Player < 0, now thirst of Player is 0;
	if Libido of Player < 0, now Libido of Player is 0;

to say hgryphon_pw_03:
	say "***anal ride";

to say hgryphon_pw_04:
	say "     Approaching the defeated gryphon with confidence, you approach her and eye that stiff cock of hers. You straddle your fallen blue playmate and start to ease the tip of the long black shaft past your moistening lips. You feel every inch as you slide all the way down to the knot. Unable to take the cock in any further, you start to move your hips, grinding against the gryphon's mighty black knot. The gryphon's eyes start to roll back, your opponent lost in bliss from your grinding, occasionally emitting a low, rolling squawk.";
	say "     Realizing that knot is not going in without a bit more force than gravity can provide, you get an idea. Taking your large [Cock of Player] rod, you push it down between your lover's massive blue furred tits. You take the gryphon's arms and have her cross her chest, under her breasts but over your cock, effectively locking you in place. 'Hold on tight!' you say as you lean back, using the leverage your giant cock provides to force the knot inside. You both moan loudly as the pain quickly transforms to intense pleasure, the gryphon starting to rock back and forth as you become accustomed to her size.";
	WaitLineBreak;
	say "     Enjoying the sensation, you join in, rocking your hips back and forth, causing your cock to start fucking the gryphon's ample cleavage. You feel something moist start rubbing the tip of your rock hard shaft and look down to see the gryphon's beak encasing the head of your cock. Worrying that the gryphon's impressive beak is about to take a bite our of your favorite organ, you start to withdraw, but you quickly realize there is nothing to worry about as her tongue starts to dance across the head of your engorged member. You feel your [Ball Size Adjective of Player] balls start to contract as you near orgasm. Sensing you're near, the gryphon pick up the pace of her fucking, pounding your abused pussy mercilessly.";
	say "     'HARDER, FASTER!' you scream as you feel your orgasm approaching. With a guttural yell you climax, releasing gob after gob of hot thick cum straight down the gryphon's throat. Not to be left out, the gryphon gives one last hard thrust and starts dumping what feels like gallons of hot seed into your belly. Knowing that you are tied on that knot and not going anywhere until the gryphon is done cumming, you ease yourself forward and rest your head on one of her bountiful blue breasts.";
	WaitLineBreak;
	say "     You absentmindedly start sucking on one of your lover's dark blue nipples and your tongue is greeted with the sweetest, most delicious milk you have ever tasted. You start suckling greedily, taking your fill of the gryphon's magnificent nectar. Once your thirst has been quenched, you notice that the gryphon's cock has shrunk down and can now be easily removed. As you rise to your feet, the gryphon's cock pops out of you like the cork on a champagne bottle, your gaping pussy spraying gryphon seed everywhere.[ovichance]";
	say "     'Call me!' the gryphon squawks plaintively as you stumble away, dressing yourself as you go.";
	PlayerDrink 5;

to say hgryphon_pw_05:
	say "***blow job";

to say hgryphon_pw_06:
	say "***blow her";

to say hgryphon_TG:
	decrease carried of gryphon cum by 1;
	increase hgryphon_TGcount by 1;
	now lasthgryphon_TG is turns;
	increase XP of Garrett by 1;
	say "     Approaching the gryphon, you take her cock in hand and start stroking it. She gives a satisfied moan and relinquishes it to you. Stroking the dark-skinned meat gets the creature all the more aroused and compliant. Taking out the bottle of gryphon cum, you let her have a tantalizing sniff of it. She moans and asks what that [one of]great[or]rich[or]yummy[at random] stuff is. You wave it under her beak and say that it's pure, he-gryphon milk, rich and potent. 'It's from a buff, sexy gryphon - all male and all stud. Firm chest, strong shoulders and hard, hard cock. His virile spunk refined and purified into a potent milk. Doesn't that just sound simply delicious?' you whisper sensually to her, stroking her pulsing rod all the while. It leaks increasingly the further you go on. 'Have some and you'll be a he-gryphon stud just like that.'";
	say "     Between your stroking keeping her aroused and the drink's alluring scent, she moans that she wants it so bad. Grinning, you pass her the bottle and watch eagerly as she downs it without hesitation. The man-milk's effects are quick, causing a rapid shift in the herm's body. Her shoulders broaden and chest flattens as her boobs recede. The wet sounds of her frantically fingering her pussy end with a final wet slurp and an orgasmic cry as the new he-gryphon's digits are pushed out of the closing hole. Despite the blasts of fresh semen shooting forth, the horny creature's balls and cock plump up a little further.";
	WaitLineBreak;
	say "     By the time it's over, the hybrid is now fully male, a cute and sexy [if the remainder after dividing hgryphon_TGcount by 4 is 1]twink[else if the remainder after dividing hgryphon_TGcount by 4 is 2]stud[else if the remainder after dividing hgryphon_TGcount by 4 is 3]girly-boy[else]dude[end if]. He sags back against their resting spot, panting to catch his breath while running his paws over his gender-shifted body. Whether it is an effect of the semen milk, the powerful orgasm or the delicious afterglow, the creature seems quite pleased with his present state.";
	say "     Taking the opportunity, you run your fingers through his feathers sensually and tell him about Garrett, the sexy male stud who is making the special milk he's just enjoyed. You describe the buff gryphon male in a way that makes the woozy gryphon lustful with gay thoughts. You add that the milkman would enjoy meeting him and showing him just how much fun two sexy male gryphons can have together. You finish by providing directions to the floating city and send him on his way, quite certain your friend will be very pleased to meet the newcomer.";
	if HP of Garrett < 6, now HP of Garrett is 6;

to say HermGryphonDesc:
	setmongender 5;
	if inasituation is true:
		say ""; [taken care of at the event source]
	else:
		say "     You encounter a tall and striking blue gryphon. She has wide hips and huge blue breasts, implying she leans more on her mammal half than her avian, though her large blue wings are quite a sight to behold. Between her white-furred thighs is a huge, knotted black cock and tightly drawn balls. From behind, the pinkened folds of her female gender are visible under the lion-like tail she sports. Her feet are digitigrade and sport huge, wicked claws that clack on hard surfaces.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is true;
	now Species Name entry is "Blue Gryphon";
	now Name entry is "Blue Gryphon Herm"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "She [one of]throws her impressive, and somewhat jiggly bulk against you[or]snaps at you with that razor sharp beak, leaving a thin red line as it cuts your [Skin of Player] body[or]presses up against you suddenly and grinds her huge shaft against your belly. While you are distracted, you can feel her grabbing at your sides, squeezing painfully[or]charges at you, wings pulling her free of the ground just moments before her body crashes into you[at random].";
	now defeated entry is "[beatthehgryphon]";
	now victory entry is "[losetohgryphon]";
	now desc entry is "[HermGryphonDesc]";
	now face entry is "powerful beak that protrudes in a clean curve. Above, feline ears twitch and turn above your altered features"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "dramatically altered, with powerful digitigrade legs of leonine musculature, great claws on your [Skin of Player] feetpaws. Behind you, two large feathery wings flutter on occasion"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "[one of]soft, blue, and furry[or]softly furred[at random]"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "You have a thin, leonine tail swaying over your ass. Its [Skin of Player] length has a tuft of blue fur at the end."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]sheathed and black[or]knotted[or]dense, black[or]inhumanly bulging[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "your ears are drawn upwards to the top of your head and a wicked beak pushes forward"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "you feel surges of alien power building in your thighs as they grow with new muscles. The oddly pleasant sensation flows downwards into your shins as they smoothly shift to a digitigrade stance. Your feet become [Skin of Player] paws, large, with dangerous looking curved claws. You glance back as your back itches, then in a burst of brief pain, parts to admit two large, feathery, wings"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "a flush of arousal stirs through you, a dense carpet of blue fur engulfing you in its warm, encouraging presence"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "you feel a new weight. A glance shows a long, [Skin of Player] tube growing over your ass. The end blossoms out into a blue, furry tuft. You have a tail"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "your cock deepens to a midnight black, a large, swollen knot forming towards the base and a soft, blue, furry sheath overtaking the very base of it"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 12;
	now dex entry is 10; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12; [ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 10;
	now cha entry is 12;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 22;
	now lev entry is 2; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5; [ Monster's average damage when attacking. ]
	now area entry is "Outside"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 13; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 8; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 13; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 7; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is "gryphon milk"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]winged[or]alluring[or]curvaceous[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]gryphon[or]feline[or]hybrid[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "";
	now Name entry is "Blue Gryphon Herm"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 6; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 6; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 8; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your ears are drawn upwards to the top of your head and a wicked beak pushes forward to give you the head of a bird of prey"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a sharp-beaked bird of prey"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "avian"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "feathered"; [one word descriptive adjective]
	now Head Color entry is "blue"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "tuft of head feathers"; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "blue"; [one word color descriptor]
	now Hair Style entry is "ponytail"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "azure"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 10; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 10;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "broad"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "sky-blue"; [one word color descriptor]
	now Tongue Length entry is 7; [length in inches]
	now Torso Change entry is "it broadens a bit and blue feathers start to sprout out of your skin, giving you a shining coat"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "broad, with a shining coat of blue feathers"; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
	now Torso Adjective entry is "avian"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is "feathered tummy"; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "feathered"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "blue"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "bouncy"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 8; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "azure"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is "a pair of wings sprouts out of it, soon covered in shining blue feathers"; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is "the pair of blue-feathered wings growing from beneath your shoulder blades"; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "feathered"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "blue"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into sharp claws and yellow-orange scales spread over your hands and lower arms"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in blue feathers down to the elbow, with small, yellow-orange scales from there to your clawed hands"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "scaled"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "yellow-orange"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of an anthro lion with blue fur, complete with clawed paws"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro lion, with short blue fur covering them from your hips down to the clawed paws"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "blue"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes well-rounded and blue fur sprouts all over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered short blue fur"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "furry";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "blue"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 4; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a long tail sprouts from your tailbone, soon covered in blue fur and with an azure tuft at the end"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is "long, blue-furred tail with an azure tuft of fur at the end"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "blue"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 10; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "blue"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 4; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 13; [length in inches]
	now Cock Change entry is "it takes on a fairly human-like appearance, complete with an uncut foreskin - and all of it in azure blue"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "looks fairly human in shape, complete with an uncut foreskin"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "human"; [one word adjective: avian/canine/...]
	now Cock Color entry is "azure"; [one word color descriptor]
	now Ball Count entry is 2;
	now Ball Size entry is 2; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a furry, low-hanging sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 1;
	now Cunt Depth entry is 14;
	now Cunt Tightness entry is 6;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a fairly human-like appearance, complete with a clit at the top - and all of it in azure blue"; [partial sentence that fits in: "Your cunt [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "fairly human in shape, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Adjective entry is "human"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "azure"; [one word color descriptor]
	now Clit Size entry is 3; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]

Section 3 - Endings

[ See - Timothy.i7x in Sarokcat's folder for endings ]

Hermaphrodite Gryphon ends here.
