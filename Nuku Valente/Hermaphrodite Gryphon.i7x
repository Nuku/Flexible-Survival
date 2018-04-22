Version 2 of Hermaphrodite Gryphon by Nuku Valente begins here.
[Version 2.1 - Added special MPreg-anal player loss.]

"Adds a Hermaphrodite Gryphon creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Hermaphrodite Gryphon" } to infections of hermaphrodite;
	add { "Hermaphrodite Gryphon" } to infections of furry;

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
		if player is submissive, increase analchance by 2;
		if player is mpreg_ok, increase analchance by 2;
		if anallevel is 2, now analchance is ( 2 * analchance ) / 3;
		if anallevel is 1, now analchance is 0;
		if cunts of player > 0 and cocks of player > 0:
			if a random chance of 2 in 3 succeeds:	[fucking the player]
				if cunt length of player >= 12:
					say "[gryphonfuck1]";
				else:
					say "[gryphonfuck5]";
			else if a random chance of analchance in 18 succeeds:
				say "[gryphonfuck7]";
			else if cock length of player > 6:
				say "[gryphonfuck3]";
			else:
				say "[gryphonfuck2]";
		else if cocks of player > 0:
			if a random chance of analchance in 15 succeeds:
				if player is mpreg_able:
					say "[gryphonfuck8]";
				else:
					say "[gryphonfuck7]";
			else if cock length of player > 6:
				say "[gryphonfuck3]";
			else:
				say "[gryphonfuck2]";
		else if cunts of player > 0:
			if a random chance of analchance in 20 succeeds:
				say "[gryphonfuck7]";
			else if cunt length of player >= 12:
				say "[gryphonfuck1]";
			else:
				say "[gryphonfuck5]";
		else:
			if anallevel is 1:
				say "[gryphonfuck6]";
			else:
				if player is mpreg_able:
					say "[gryphonfuck8]";
				else:
					say "[gryphonfuck7]";

to say gryphonfuck1:
	say "     The gryphon, victorious, pushes you onto your back and buries her face into your crotch. She pulls your clothes free before she starts to lap at your [cock size desc of player] [cock of player] shaft before moving on to your [cunt size desc of player] lips. Her soft tongue has you squirming in pleasure, growing wet under her skillful ministrations. Detecting you're ready, she slips up over you, pressing her large breasts to your [if breast size of player > 0][breast size desc of player][else][bodytype of player][end if] chest, smoothly slipping her black shaft into your eager and ready body. She kisses and licks at you, pressing that beak expertly to your lips, managing a fierce and passionate exchange despite it. You find your hands wandering over her sides, then drawing her closer as her love making becomes more and more intense. Her taloned hands grip your throbbing maleness and stroke it as she thrusts into you. Your body grows tense before pleasure washes over you, but the gryphon is not yet sated, pistoning smoothly against you and crooning in an ear as she begins to bump you with the thick knot of her shaft. A firm shove, and it pops into place, locking her to you as your belly begins to swell with fertile seed. She shivers and buries her face into your neck as she peaks, remaining on top of you, hugging, for the minute it takes for her huge balls to unload. You are stuck to her, snuggling quietly, for what feels like an hour before she slips from you, kisses one last time, and departs.[ovichance]";

to say gryphonfuck2:
	say "     The gryphon [one of]shoves you to the ground roughly and seems disappointed about something. She sniffs at you once more before snorting loudly. With a disdainful kick of a foot, she leaves some dust on you, then departs[or]pushes you back with one hand while the other grabs at you, removing any clothing you may have. She speaks haltingly, as if she is not used to speaking anymore, 'You are too small, but maybe, later. For now, a gift.' She kneels before you and takes your [cock size desc of player] [cock of player] member into her beak, lapping over it with soft, wet, tongue. Her firm paw hands hold to your ass as she begins to bob slowly against you, making your flesh tingle with delight as she works at you expertly. All too soon you are spilling seed across that tongue, grunting with your own satisfaction. She rises, licking her beak. With a wink, she saunters off[at random].";

to say gryphonfuck3:
	say "     Eyeing something she wants, the gryphon pushes you back a little before turning around and raising her tail high into the air, exposing her pouting lips to your view. Unable to resist, you move up and seize her well-muscled hips and are soon pushing against her. With every sink of your [cock size desc of player] [cock of player] meat into her, she gives a pleasured, keening sound. Her cunt squeezes around your hefty member, encouraging it until you blow your load deep inside of her dripping snatch. Your bodies tremble against one another as passions ebb and she lets you slide off to the ground. Before leaving, she turns to gently lick over your face, then cleans your [cock size desc of player] tool dutifully.";


to say gryphonfuck4:
	say "     The gryphon nudges you over onto your belly with suddenly gentle hands, holding you in place as she scrambles on top of you, pressing her warm furry bulk against your [skin of player] back. You feel a shaft that's far too large for your [cunt size desc of player] passageway. Before you can wriggle away, it shoves up into you, pounding deeply and making your entire body shudder and quake. You can feel yourself being stretched painfully by the huge member as it batters against your cervix. The gryphon calls out above you, squeezing you close to her curvy front as hot seed rushes into you, directly injected into your womb with powerful cannon blasts. You can feel the heat washing off her immense balls as she makes your belly swell with potential life. Sated, she gently sets you down, licks your cheek, and moves off, semi stiff member wagging between her thighs.[ovichance]";
	if "Male Preferred" is not listed in feats of player and "Modest Organs" is not listed in feats of player, increase cunt length of player by 1;

to say gryphonfuck5:
	say "     The gryphon, victorious, pushes you onto your back and buries her face into your crotch. She pulls your clothes free before she starts to lap at your [cunt size desc of player] lips. Her soft tongue has you squirming in pleasure, growing wet under her skillful ministrations. Detecting you're ready, she slips up over you, pressing her large breasts to your [skin of player] [breast size desc of player] chest, smoothly slipping her black shaft into your eager and ready body. She kisses and licks at you, pressing that beak expertly to your lips, managing a fierce and passionate exchange despite it. You find your hands wandering over her sides, then drawing her closer as her love making becomes more and more intense. Your body grows tense before pleasure washes over you, but the gryphon is not yet sated, pistoning smoothly against you and crooning in an ear as she begins to bump you with the thick knot of her shaft. A firm shove, and it pops into place, locking her to you as your belly begins to swell with fertile seed. She shivers and buries her face into your neck as she peaks, remaining on top of you, hugging, for the minute it takes for her huge balls to unload. You are stuck to her, snuggling quietly, for what feels like an hour before she slips from you, kisses one last time, and departs.[ovichance]";

to say gryphonfuck6:
	say "     The gryphon is surprised to find you rather lacking and nudges you over onto your belly with suddenly gentle hands. She holds you in place as she scrambles on top of you, pressing her warm furry bulk against your back. You feel a shaft slide against your rear, dribbling pre across your back entrance. Before you can wriggle away, it shoves up into you, pounding deeply and making your entire body shudder and quake. You can feel yourself being stretched painfully by the large member as it forces its way into your bowels. The gryphon calls out above you, squeezing you close to her curvy front as hot seed rushes into you, pumping into your rectum with powerful cannon blasts. You can feel the heat washing off her immense balls as she makes your belly swell with her virile seed. Sated, she gently sets you down, licks your cheek, and moves off, semi stiff member wagging between her thighs.[movichance]";

to say gryphonfuck7:
	say "     The gryphon[if player is neuter] is surprised to find you rather lacking in the genital department and[end if] nudges you over onto your belly with suddenly gentle hands. She holds you in place as she scrambles on top of you, pressing her warm furry bulk against your back. You feel a shaft slide against your rear, dribbling pre across your back entrance. Before you can wriggle away, it shoves up into you, pounding deeply and making your entire body shudder and quake. You can feel yourself being stretched [if scalevalue of the player < 4]painfully [end if]by the large member as it forces its way into your bowels[if cunts of player > 0]. Her taloned hand gropes you as she fucks your ass, playfully teasing at the [cunt size desc of player] pussy she could instead be using[end if][if cocks of player > 0]. She takes a hold of your [cock size desc of player] [cock of player] shaft and pumps at it while thrusting into you[end if]. After enjoying a quick ride, the gryphon calls out above you, squeezing you close to her curvy front as hot seed rushes into you, pumping into your rectum with powerful cannon blasts. You can feel the heat washing off her immense balls as she makes your belly swell with her virile seed. Sated, she gently sets you down, licks your cheek, and moves off, semi stiff member wagging between her thighs.[movichance]";

to say gryphonfuck8:	[MPreg special]
	say "     When the victorious gryphon pushes you to the ground, your body automatically moves onto all fours with your ass raised. You feel a warm of excitement in your lower belly, like an empty need you hope to be filled. Like an animal in heat, your hidden male womb's decided it wants to be bred. The gryphon grins as you present yourself so easily and rubs her taloned hands over your rear, massaging your butt as it moves into position. With a little spit added, a taloned finger dips into your waiting pucker and wriggles around, drawing a moan from you.";
	say "     [one of]'My, aren't we eager now?' [or][if HP of player > 0]'Oh, I do love the eager ones.' [else]'What was all that fuss for earlier? I can tell you really want it.' [end if][or]'That's it, slut - raise that ass and take it.' [or]'I've seen your like before. Time to breed that ass of yours.' [or]'You're a breeder male, aren't you? Well, time to put some eggs in that butt of yours.' [at random]With that, the herm sinks her dick into your readied hole and starts pounding away at you. Your hips push back into her thrusts and your anal walls squeeze and tug at it, eager to get the creature's seed. Your body acts on its own, leaving you awash in the pleasure of the coming breeding.";
	say "     The two of you go at it like this for a few minutes, the gryphon as eager to accomplish the act as you are. When she does peak, your insides are blasted with a hot rush of virile cream that fills your bowels with warm, gooey heat. Much of this heat pools in your rectal womb, seeking to impregnate you.[mimpregchance]";
	if gestation of child is 0:
		say "     Having dumped her load into you, the gryphon pauses to recover for a time before starting up again. Perhaps it is your pheromones urging her on, telling her loins that you've not yet been impregnated and thus driving them to try a second time. Having just cum, she fucks your rougher and goes for much longer in her attempt to breed you. Eventually though, she's able to build up another orgasm and unleashes a second, somewhat weaker, series of shots that flood your already filled bowels. More semen flows into your already filled womb, stuffing it with a fresh batch of virile sperm that seek out your egg.[mimpregchance]";
		if gestation of child is 0:
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
		if player is neuter:
			say "[one of]The once proud beast is knocked to the ground, her wings drawn protectively. Victorious, you move on.[or]Succumbing to her wounds, the gryphon collapses at your feet, posing no further threat.[at random]";
		else if nohgryphonsex > 2 and ( the remainder after dividing nohgryphonsex by 5 is not 0 ):
			say "     Driven back by you, the herm gryphon whimpers with unsatisfied need. She crawls over to a [one of]wall[or]pile of rubble[or]crashed car[at random] and sits against it while masturbating furiously in an attempt to sate her lust. As with the others, you turn away, ignoring your urges to join in.";
			increase nohgryphonsex by 1;
		else:
			say "     [if a random chance of 1 in 2 succeeds]Your opponent hits the ground with a loud *thud* and a squawk. Lying defeated and on her back, the gryphon awaits her fate with more than a little anticipation[else]Driven back by you, the herm gryphon whimpers with unsatisfied need. She crawls over to a [one of]wall[or]pile of rubble[or]crashed car[at random] and sits against it while masturbating furiously in an attempt to sate her lust[end if]. The sight of her like this is quite a tempting one. Perhaps you might have some fun now that you've taken the fight out of her[if carried of gryphon cum > 0 and HP of Garrett >= 5 and inasituation is false]. You're also reminded that you have a bottle of Garrett's special gryphon cum milk. It probably wouldn't take much coaxing to tempt her into drinking some[end if].";
			now sextablerun is 0;
			blank out the whole of table of fucking options;
			if cocks of player > 0:
				choose a blank row in table of fucking options;
				now title entry is "Fuck her";
				now sortorder entry is 1;
				now description entry is "screw the defeated gryphon";
			if cunts of player > 0:
				choose a blank row in table of fucking options;
				now title entry is "Ride her";
				now sortorder entry is 2;
				now description entry is "get that knotted cock in your pussy";
	[		if cunts of player is 0:
				choose a blank row in table of fucking options;
				now title entry is "Anal ride";
				now sortorder entry is 3;
				now description entry is "get that knotted cock in your ass"; ]
			if cocks of player > 0 and cock length of player > 7 and cunts of player > 0 and cunt length of player > 5:
				choose a blank row in table of fucking options;
				now title entry is "Titty fuck + ride";
				now sortorder entry is 4;
				now description entry is "get a titty fuck while riding her cock";
	[		if cocks of player > 0:
				choose a blank row in table of fucking options;
				now title entry is "Blow job";
				now sortorder entry is 5;
				now description entry is "get her to suck you off"; ]
	[		choose a blank row in table of fucking options;
			now title entry is "Blow her";
			now sortorder entry is 6;
			now description entry is "suck her off"; ]
			if carried of gryphon cum > 0 and HP of Garrett >= 5 and inasituation is false:
				choose a blank row in table of fucking options;
				now title entry is "Garrett's special milk";
				now sortorder entry is 99;
				now description entry is "tempt her into consuming the manly drink";
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
					if player consents:
						let nam be title entry;
						now sextablerun is 1;
						if nam is "Fuck her":
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

to say hgryphon_pw_01:
	say "     Approaching the defeated gryphon with confidence, you nudge her legs apart with your feet to get a better look at that moist slit she has tucked under those balls of hers. Seeing your interest, she raises her hips and holds her scrotum out of the way. You move to your knees, positioning your [cock size desc of player] member at your victim's quivering slit.";
	if cock length of player < 6:
		say "     With almost no effort, her massive pussy swallows your entire cock. With what could almost pass for a smirk, the gryphon squawks 'I guess you're just not man enough...' Anger and lust getting the better of you, you pull your cock out of her voluminous cunt and, repositioning slightly, place the tip at the entrance to her back door. Her eyes going wide with fear, your prey is about to voice her dissent, but too late, your lust won't be denied. With some effort you push past her tightly clenched sphincter, drawing loud pained squawks from your victim. You start slowly fucking her tight asshole, in and out, gradually picking up speed. Eventually the gryphon's squawking changes pitch; however she felt before, she definitely seems to be enjoying this now.";
	else:
		say "     With what almost sounds like a combination of a squawk and purring the gryphon spreads her legs further apart, her blue lips trembling against your [cock of player] manhood. She stares up at you expectantly as you slowly enter her accommodating tunnel. A look of absolute pleasure crosses the gryphon's face as you start to slide in and out. You pick up speed, your balls slapping against her on every thrust.";
	attempttowait;
	say "     As your rhythmic fucking continues, your victim starts to squeeze her gigantic blue breasts. You see a small dribble of milk escape both of her nipples as she roughly fondles herself. Continuing with your assault, you start to get annoyed by her massive erection. It's so big that it manages to slap your chin on each thrust. On one thrust a bit of precum escapes the gryphon's cock and hits your tongue; the taste is magical, and you need more. Shifting a bit, you manage to take the tip of the gryphon's knotted black cock into your mouth, and you start wildly pumping away at it with both hands while still fucking her abused hole furiously.";
	attempttowait;
	say "     The combined stimulation is too much for the gryphon as her body is wracked with orgasm. Gob after gob of the most delicious cum starts pouring down your throat, while at the same time milk gushes from the gryphon's massive breasts, soaking the both of you. Your blue partner's orgasm causes her muscles to involuntarily clamp down on your throbbing cock, this increased friction is all it takes as you start to pump her full of your seed.";
	say "     Spent and exhausted you get dressed and walk away, leaving the Hermaphrodite Gryphon to lie in a pool of her own milk.";
	decrease libido of player by 30;
	PlayerEat 5;
	if libido of player < 0, now libido of player is 0;

to say hgryphon_pw_02:
	say "     Approaching the defeated gryphon with confidence, you approach her and eye that stiff cock of hers. You straddle your fallen blue playmate and start to ease the tip of the long black shaft past your moistening lips. You feel every inch as you slide all the way down to the knot. Unable to take the cock in any further, you start to move your hips, grinding against the gryphon's mighty black knot. The gryphon's eyes start to roll back, your opponent lost in bliss from your grinding, occasionally emitting a low, rolling squawk.";
	attempttowait;
	say "     As you increase your pace, you see what appears to be milk dribbling from the beast's large nipples. You bend down and take one of the nipples into your mouth. While you greedily consume all the milk these wonderful teats will produce, a hot wave of desire floods through you, and you start to really want that knot inside you. Grinding harder and harder, faster and faster, you try and slide that bulb past your slick labial lips. You feel climax approaching, so you thrust down as hard as you can to force that wonderful bulge inside.";
	if cunt length of player < 6:
		say "     It's no use, you are just too small to take it all in. The gryphon chirps soothingly understanding your frustration. Suddenly, you let out a startled yelp as you feel an electrifying tickling sensation on your clit and look down to see the puffed end of a blue tail to be the cause.";
		attempttowait;
		say "     'Perhaps this will help ease your suffering,' your lover says softly, and help it does! The added sensation of that blue tail proves too much for you. As your body shakes with orgasm, you involuntarily clench your jaw, clamping down on her tasty, milk squirting nipple. The added pain is apparently just what she needed, your azure mate letting out a loud squawk as she climaxes, filling you with cum from one end and milk from the other.[ovichance]";
	else:
		say "     Seeing what you are trying to do, your blue lover waits for the right moment, and with one masterful thrust, she firmly wedges her massive black knot deep inside your trembling pussy. The mixed feelings of pain and pleasure overcome you; your knees buckle and you collapse into the soft furry warmth of the gryphon's bosom. You are still conscious, but you are too overwhelmed to do anything but enjoy the ride.";
		attempttowait;
		say "     'It's alright baby, mama's here,' the gryphon coos as she softly wraps her furry blue arms around you, placing her leaking nipple back into your mouth. As you resume suckling, the gryphon starts to rock her hips back and forth, causing her knot to stretch you to your limits. The pleasure is so intense that you barely register achieving orgasm after orgasm thanks to your lover's exceptional skills. After what seems like seconds (although you realize it's more like half an hour), the gryphon herm lets out a loud squawk as she climaxes, filling you with cum from one end and milk from the other.[ovichance]";
	say "     You lie there for a few minutes, not wanting to move after that marathon fucking, and also enjoying the softness of your partner's massive furry blue breasts. Eventually, the gryphon's swollen knot shrinks down and she finishes filling you with seed. You slowly get to your feet, still impaled on gryphon cock. You start gingerly sliding the bulbous black shaft out, and as it passes your abused nether lips, a torrent of cum spills out, drenching the almost unconscious gryphon below. You get dressed and leave, the gryphon still on the ground, eyes closed, moaning, and idly fondling her ample breasts.";
	PlayerDrink 5;
	decrease libido of player by 30;
	if thirst of player < 0, now thirst of player is 0;
	if libido of player < 0, now libido of player is 0;

to say hgryphon_pw_03:
	say "***anal ride";

to say hgryphon_pw_04:
	say "     Approaching the defeated gryphon with confidence, you approach her and eye that stiff cock of hers. You straddle your fallen blue playmate and start to ease the tip of the long black shaft past your moistening lips. You feel every inch as you slide all the way down to the knot. Unable to take the cock in any further, you start to move your hips, grinding against the gryphon's mighty black knot. The gryphon's eyes start to roll back, your opponent lost in bliss from your grinding, occasionally emitting a low, rolling squawk.";
	say "     Realizing that knot is not going in without a bit more force than gravity can provide, you get an idea. Taking your large [cock of player] rod, you push it down between your lover's massive blue furred tits. You take the gryphon's arms and have her cross her chest, under her breasts but over your cock, effectively locking you in place. 'Hold on tight!' you say as you lean back, using the leverage your giant cock provides to force the knot inside. You both moan loudly as the pain quickly transforms to intense pleasure, the gryphon starting to rock back and forth as you become accustomed to her size.";
	attempttowait;
	say "     Enjoying the sensation, you join in, rocking your hips back and forth, causing your cock to start fucking the gryphon's ample cleavage. You feel something moist start rubbing the tip of your rock hard shaft and look down to see the gryphon's beak encasing the head of your cock. Worrying that the gryphon's impressive beak is about to take a bite our of your favorite organ, you start to withdraw, but you quickly realize there is nothing to worry about as her tongue starts to dance across the head of your engorged member. You feel your [short ball size] balls start to contract as you near orgasm. Sensing you're near, the gryphon pick up the pace of her fucking, pounding your abused pussy mercilessly.";
	say "     'HARDER, FASTER!' you scream as you feel your orgasm approaching. With a guttural yell you climax, releasing gob after gob of hot thick cum straight down the gryphon's throat. Not to be left out, the gryphon gives one last hard thrust and starts dumping what feels like gallons of hot seed into your belly. Knowing that you are tied on that knot and not going anywhere until the gryphon is done cumming, you ease yourself forward and rest your head on one of her bountiful blue breasts.";
	attempttowait;
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
	say "     Approaching the gryphon, you take her cock in hand and start stroking it. She gives a satisfied moan and relinquishes it to you. Stroking the dark-skinned meat gets the creature all the more aroused and compliant. Taking out the bottle of gryphon cum, you let her have a tantalizing sniff of it. She moans and asks what that [one of]great[or]rich[or]yummy[at random] stuff is. You wave it under her beak and say that it's pure, he-gryphon milk, rich and potent.";
	say "     'It's from a buff, sexy gryphon - all male and all stud. Firm chest, strong shoulders and hard, hard cock. His virile spunk refined and purified into a potent milk. Doesn't that just sound simply delicious?' you whisper sensually to her, stroking her pulsing rod all the while. It leaks increasingly the further you go on. 'Have some and you'll be a he-gryphon stud just like that.'";
	attempttowait;
	say "     Between your stroking keeping her aroused and the drink's alluring scent, she moans that she wants it so bad. Grinning, you pass her the bottle and watch eagerly as she downs it without hesitation. The man-milk's effects are quick, causing a rapid shift in the herm's body. Her shoulders broaden and chest flattens as her boobs recede. The wet sounds of her frantically fingering her pussy end with a final wet slurp and an orgasmic cry as the new he-gryphon's digits are pushed out of the closing hole. Despite the blasts of fresh semen shooting forth, the horny creature's balls and cock plump up a little further.";
	attempttowait;
	say "     By the time it's over, the hybrid is now fully male, a cute and sexy [if the remainder after dividing hgryphon_TGcount by 4 is 1]twink[else if the remainder after dividing hgryphon_TGcount by 4 is 2]stud[else if the remainder after dividing hgryphon_TGcount by 4 is 3]girly-boy[else]dude[end if]. He sags back against their resting spot, panting to catch his breath while running his paws over his gender-shifted body. Whether it is an effect of the semen milk, the powerful orgasm or the delicious afterglow, the creature seems quite pleased with his present state.";
	say "     Taking the opportunity, you run your fingers through his feathers sensually and tell him about Garrett, the sexy male stud who is making the special milk he's just enjoyed. You describe the buff gryphon male in a way that makes the woozy gryphon lustful with gay thoughts. You add that the milkman would enjoy meeting him and showing him just how much fun two sexy male gryphons can have together. You finish by providing directions to the floating city and send him on his way, quite certain your friend will be very pleased to meet the newcomer.";
	if HP of Garrett < 6, now HP of Garrett is 6;

to say HermGryphonDesc:
	setmongender 5;
	if inasituation is true:
		say ""; [taken care of at the event source]
	else:
		say "     She is a tall and striking blue gryphon. She has wide hips and huge blue breasts, implying she leans more on her mammal half than her avian, though her large blue wings are quite a sight to behold. Between her white-furred thighs is a huge, knotted black cock and tightly drawn balls. From behind, the pinkened folds of her female gender are visible under the lion-like tail she sports. Her feet are digitigrade and sport huge, wicked claws that clack on hard surfaces.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Hermaphrodite Gryphon"; [The creature's name as displayed and used in naming descriptions]
	now attack entry is "She [one of]throws her impressive, and somewhat jiggly bulk against you[or]snaps at you with that razor sharp beak, leaving a thin red line as it cuts your [skin of player] body[or]presses up against you suddenly and grinds her huge shaft against your belly. While you are distracted, you can feel her grabbing at your sides, squeezing painfully[or]charges at you, wings pulling her free of the ground just moments before her body crashes into you[at random].";
	now defeated entry is "[beatthehgryphon]";
	now victory entry is "[losetohgryphon]";
	now desc entry is "[HermGryphonDesc]";
	now face entry is "powerful beak that protrudes in a clean curve. Above, feline ears twitch and turn above your altered features"; [ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "dramatically altered, with powerful digitigrade legs of leonine musculature, great claws on your [skin of player] feetpaws. Behind you, two large feathery wings flutter on occasion"; [ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "[one of]soft, blue, and furry[or]softly furred[at random]"; [ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a thin, leonine tail swaying over your ass. Its [skin of player] length has a tuft of blue fur at the end."; [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "[one of]sheathed and black[or]knotted[or]dense, black[or]inhumanly bulging[at random]"; [ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your ears are drawn upwards to the top of your head and a wicked beak pushes forward"; [ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "you feel surges of alien power building in your thighs as they grow with new muscles. The oddly pleasant sensation flows downwards into your shins as they smoothly shift to a digitigrade stance. Your feet become [skin of player] paws, large, with dangerous looking curved claws. You glance back as your back itches, then in a burst of brief pain, parts to admit two large, feathery, wings"; [ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "a flush of arousal stirs through you, a dense carpet of blue fur engulfing you in its warm, encouraging presence"; [ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you feel a new weight. A glance shows a long, [skin of player] tube growing over your ass. The end blossoms out into a blue, furry tuft. You have a tail"; [ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your cock deepens to a midnight black, a large, swollen knot forming towards the base and a soft, blue, furry sheath overtaking the very base of it"; [ Cock TF text, format as "Your cock feels funny as (your text)." ]
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
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 13; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 7; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of breasts the infection will give a player. ]
	now breast size entry is 8; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 13; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 7; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is "gryphon milk"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]winged[or]alluring[or]curvaceous[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "[one of]gryphon[or]feline[or]hybrid[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "hump"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

[ See - Timothy.i7x in Sarokcat's folder for endings ]

Hermaphrodite Gryphon ends here.
