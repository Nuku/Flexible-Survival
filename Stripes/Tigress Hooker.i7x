Version 2 of Tigress Hooker by Stripes begins here.
[Version 2.2 - Hard Mode adjustment]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds a Tigress Hooker creature to Flexible Survival's Wandering Monsters table, with impreg chance and resource loss"


Section 1 - Monster Responses

[ Use To say for overlong behaviors that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]

when play begins:
	add { "Tigress Hooker" } to infections of hermaphrodite;
	add { "Tigress Hooker" } to infections of furry;

tempnum is a number that varies.
tigresswinner is a number that varies.	[marked as having won last time - used later]
tigressfucked is a number that varies.	[marked as having lost last time - used later]
tigressclient is a number that varies.	[marked as having submitted last time - used later]
stiffedpayment is a number that varies.	[marked as having failed to pay the fee - used later]
mqfightresult is a number that varies.	[ 1 = win / 2 = lose / 3 = fled (unchanged) ]

to say tigress_desc:
	setmongender 5; [creature is herm]
	choose row monster from the table of random critters;
	let debit be 0;
	if mqstatus is 3:				[fighting tigresses at the motel]
		say "     The lovely tigress is quite upset at the intruder to hir motel home. Shi growls angrily and readies to deal with you soundly so shi can have hir way with you and put you in your place. Under hir.";
		if hardmode is true and level of player > 5, let debit be level of player - 5;
		now HP entry is 55 + ( debit * 4 );
		now monsterHP is 55 + ( debit * 4 );
		now wdam entry is 7 + ( debit / 3 );
		now lev entry is 5 + debit;
		now libido entry is 100;
	else if mqstatus is 6:				[fighting the matron]
		say "     The tigress matron of the motel is a larger and more impressive female. Shi's got an extra foot of height on any of hir girls and a much fuller rack as well. Hir long, flowing orange hair swishes as shi pulls off the bathrobe shi was wearing, baring hir strong and sensual body to you. Shi looks at you with a strange expression, clearly not pleased that you've burst in here after hurting several of hir girls, but eager to put you in your place. Hir dark nipples and cock are hard with hir anticipation of enjoying a new plaything.";
		if hardmode is true and level of player > 8, let debit be level of player - 8;
		now HP entry is 90 + ( debit * 6 );
		now monsterHP is 90 + ( debit * 6 );
		now wdam entry is 12 + ( ( 4 * debit ) / 11 );
		now lev entry is 8 + debit;
		now libido entry is 100;
	else:					[standard tigress]
		say "     Leaning against a building is a striking female feline. She is wearing a skimpy outfit, a short top and even shorter skirt. This lets you see the soft orange tiger fur that covers her attractive body, rich with black stripes. Her bosom and stomach have snowy, white fur that covers them. Her ears have [one of]large hoop earrings[or]a trio of small studs[or]tattoos of stars on the inside[or]long, dangling earrings[at random]. Her [one of]long, black hair is held in a pony tail.[or]hair is dyed a bright red.[or]orange hair is styled into fiery mane.[or]dark hair has been bleached blond, though you can see the darker roots.[or]hair is neon pink and very long, hanging to her waist.[or]hair is a deep blue, with green tips.[at random]     Spotting you before you can move away, she flicks her cigarette aside and sizes you up quickly. 'So honey, you lookin['] for a little fun? For a little something, I'll show you a good time.' As she steps up, you catch the edge of something extra making a bulge under her skirt. Clearly this tigress hooker is equipped to pleasure any client shi may find. And shi's found you!";
		if hardmode is true and level of player > 5, let debit be level of player - 5;
		now HP entry is 55 + ( debit * 4 );
		now monsterHP is 55 + ( debit * 4 );
		now wdam entry is 7 + ( debit / 3 );
		now lev entry is 5 + debit;
		now libido entry is 0;

to say losetotigress:
	if mqstatus is 3:				[if on the motel run, set variable and prevent the regular scene]
		now mqfightresult is 2;
		say "Oh No! You are beaten up by the tigress at the motel.";
		stop the action;
	if mqstatus is 6:				[if fighting matron, set variable and prevent the regular scene]
		now mqfightresult is 2;
		say "Oh No! You are beaten up by the tigress matron.";
		stop the action;
	now tempnum is 0; [Reset payment flag]
	if HP of player > 0:									[DID THE PLAYER SUBMIT? - YES]
		if junknum is 0:									[Normal encounter]
			say "     As you accept hir offer, shi moves up to you with a lustful smile. Rumbling and purring as shi rubs hir body against yours, shi guides you into a shadowy alleyway as shi starts releasing the easy straps on hir street clothes. There's an old mattress in there and from the smell, shi's used it for hir clients before. As shi guides you towards it, shi nuzzles along your neck and slides your backpack's straps off your shoulders. As shi helps you with your remaining clothes with one paw and a smile, hir other dips into your pack, searching for something to take as payment.";
			say "[paymentcheck][line break]"; [Put forth a payment]
			if tempnum is 1:
				stop the action;
		if junknum is 1:									[Special junkyard encounter - freebie]
			say "     As you agree to hir offer, shi gives you a lustful smile before nuzzling at your neck. Rumbling and purring as shi rubs hir body against yours, shi guides you to the discarded mattress as shi starts releasing the easy straps on hir street clothes. As you move with hir, shi nuzzles along your neck and slides your backpack's straps off your shoulders and sets it aside, not bothering to look for a payment this time. Your help has been payment enough for this romp.";
			now junknum is 0;
		if cunts of player > 0 and cocks of player > 0:				[Yes = HERM Identified!]
			say "     Shi presses you down onto the mattress looks hir client over with a predatory rumble, particularly pleased at the prospects of servicing you, both john and jane in one. Shi lowers hirself onto the mattress atop you and rubbing hir body against yours. Hir soft striped fur running along your body, shi moves to licking and nibbling along your neck. You can feel hir sharp, feline fangs along your skin, but shi is very careful and only gives you the lightest nips, which feel exquisite. You can feel the warm bulge of hir sheath and the wet touch of hir emerging cock as it bumps against yours. Shi moves a paw down to stroke your [cockname of player] [if cocks of player is 1]cock[else]cocks[end if] as shi nibbles and nuzzles hir way down your chest and belly. As shi slides down, hir paw drifts over your balls and to your wet slit, diving into it.";
			say "     With hir muzzle between your legs, shi starts licking and kissing your [if cocks of player is 1]cock[else]cocks[end if]. Hir raspy tongue slides along your sensitive [cock of player] penis and lavishes attention on it. [if cocks of player > 1]As you have multiple cocks for hir to tend to, shi sets to work on the lower one with hir muzzle and the other(s) with hir right paw. [end if]Hir left paw is between your legs, working in and out of your wet [if cunts of player is 1]pussy's lips[else]pussies['] lips[end if]. The herm moans and mewls lustfully as shi lavishes attention upon both your male and female genitals. Hir muzzle moves from time to time to your dripping [if cunts of player is 1]pussy[else]pussies[end if], but is always drawn back to your cock. [if cunts of player is 1]While hir tongue ends to your upper slit, hir right paw is working away at the other(s), making sure they're not neglected in any way.[end if]";
			increase libido of player by 10; [Oral submission increases Libido]
			if libido of player > 100:
				now libido of player is 100;
			if cock length of player < 5:						[Cock size check begins - small]
				say "     Your [cock size desc of player] [cock of player] cock easily fills hir muzzle and shi works hir broad tongue all over it at once. Shi licks and sucks on it with as much enthusiasm as shi would any other, if not more to make you still feel strong and virile. Clearly having a lot of practice, shi polishes your rod until your throbbing hard, ready to blow. Shi then eases off, pulling hir muzzle back to lick and kiss your [ball size] for a while before moving to your shaft once again.";
				say "     Shi sucks firmly at your cock now, tongue not letting up for a moment as shi does, fingering your pussy hard and fast as well. Eventually, you can take no more and cum, pumping your hot load into hir muzzle. Your load coats hir tongue and flows down hir throat as shi drinks it down with a lustful moan.";
			else if cock length of player < 9:				[Cock size check - medium]
				say "     Your [cock size desc of player] [cock of player] cock fills hir muzzle quite nicely, giving hir a pleasant muzzleful to lick and suck lustfully. Hir tongue plays up and down it, teasing your glans and sliding along your shaft as hir muzzle bobs up and down along your length. Clearly having a lot of practice, shi polishes your rod until your throbbing hard, ready to blow. Shi then eases off, pulling hir muzzle back to lick and kiss your [ball size] for a while before moving to your shaft once again.";
				say "     Shi sucks firmly at your cock now, tongue not letting up for a moment as shi does, fingering your pussy hard and fast as well. Eventually, you can take no more and cum, pumping your hot load into hir muzzle. Your load coats hir tongue and flows down hir throat as shi drinks it down with a lustful moan.";
			else if cock length of player < 13:				[Cock size check - large]
				say "     Your [cock size desc of player] [cock of player] fills hir muzzle quite full, but she takes it in with practiced ease, moaning as it slides smoothly down hir throat. Hir tongue plays up and down it, teasing your glans and sliding along your shaft as hir muzzle bobs up and down along your length. Clearly having a lot of practice, shi polishes your rod until your throbbing hard, ready to blow. Shi then eases off, pulling hir muzzle back to lick and kiss your [ball size] for a while before moving to your shaft once again.";
				say "     Shi sucks firmly at your cock now, tongue not letting up for a moment as shi does, fingering your pussy hard and fast as well. Eventually, you can take no more and cum, pumping your hot load into hir muzzle. Your load coats hir tongue and flows down hir throat as shi drinks it down with a lustful moan.";
			else:									[Cock size check - fuggin' huge]
				say "     Finding your [cock size desc of player] [cock of player] too big even for hir practiced muzzle, shi takes to licking and kissing all over it, paying particularly strong attention to the sensitive tip and leaking cumslit. Hir raspy tongue plays all over it as shi presses hir softly furred breasts against your shaft. Clearly having a lot of practice, shi polishes your [cockname of player] rod until your throbbing hard, ready to blow. Shi then eases off, pulling hir muzzle back to lick and kiss your [ball size] for a while before moving to your shaft once again.";
				say "     Shi's giving your cock a thorough slathering with hir rough tongue and fingering your pussy hard and fast as well, which all feels so good along your sensitive flesh. Eventually, the tigress's titfuck is too much for you and you cum hard, spraying your hot semen across hir muzzle. After letting you paint hir face with a few shots, shi presses hir muzzle over your cumslit and lets it flow into hir muzzle and down hir throat with a lustful moan.";
			if cocks of player > 1:							[Yes = multi-cocked player]
				say "     As you fill hir muzzle from the one, your other [if cocks of player is 2]cock sends [else]cocks send [end if]spurts of hot cum across your body, leaving you with streaks of your own seed over you.";
			let diceroll be a random number from 1 to 125; [lust check vs 125]
			if diceroll < libido of player:
				say "     As the tigress finally moves hir head back, shi smiles up at you. You smile back at hir dazedly, still woozy in the blissful haze of the afterglow, but still feeling quite horny.";
				say "     [bold type] Eyeing hir lustfully, your gaze flips back and forth between hir penis and hir vagina as you struggle to choose which you want most.[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Penis.";
				say "     ([link]N[as]n[end link]) - Vagina.";
				if the player consents:						[Yes = wants cock, fucked by kitty]
					say "[line break]     With a soft moan, you spread your legs and hold your pussy lips open for hir, moaning as you eye hir waiting cock. 'Do me,' you say with a lustful rumble in your voice. 'I want more, kitty.' More than happy to give hir client what shi wants, the tigress smiles lustfully back at you.";
					say "     Moving atop you, shi lines up hir cock with your wet folds and starts to sink hir barbed shaft into you. After the long session preparing you, shi has little trouble sliding hirself into you and sets to pounding at your already soaked [bodyname of player] pussy. Shi plants hir left paw beside you, gripping the mattress firmly in hir claws for support as shi drives hir throbbing member into again and again. Hir right paw strokes your [if cocks of player is 1]cock [else]cocks, each in turn, [end if]as shi pounds you lustfully.";
					say "     Rubbing hir body against yours, soft striped fur running along your [skin of player] form, shi moves to licking and nibbling along your neck while sandwiching your [if cocks of player is 1]cock [else]cocks [end if]between you. You can feel hir sharp, feline fangs along your skin, but shi is very careful and only gives you the lightest nips, which feel exquisite. The barbed cock is in no way painful, only small bumps that tingle along your walls as shi thrusts, building you towards climax again. Hir rumbling and purring grows louder and deeper until shi climaxes, pumping hir hot feline seed into you. You can feel it warming you deep inside as shi gives you another orgasm that sends your hot seed to soak your chests.[impregchance]";
					say "     Once shi's finally drained hir balls into you and filled you with tigercum, shi withdraws with a soft, satisfied mew. Shi moves up and rubs hir cum-slick cock against your [character number breast size of player in cupsize] cup breasts, smearing hir cum into the sticky mess of your own, as if marking you as one of hir clients. Shi then rises slowly and helps you up, a little woozy hirself. Shi gives your rump a firm squeeze with one paw, rubs the other over your belly, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, shi gives your rear a swat, telling you to come back soon.";
				else:								[No = wants pussy, fucks the kitty]
					say "[line break]     With a soft moan, you rub over your [cockname of player] [if cocks of player is 1]cock, keeping it [else]cocks, keeping them [end if]from growing fully soft and coaxing your erection back. 'Now there, sexy kitty. I'm not done with you yet.' With a lustful smile back down at you, shi licks hir lips and moves to straddle your hips."; [Male sex if fail check]
					if cock length of player < 16:			[Cock size check - not huge]
						if cocks of player is 1:
							say "     Shi takes a hold of your cock and lines it up with hir wet pussy, mrrowling in delight as shi sinks down onto it. You can feel the wet grip of her inner walls as they squeeze down around your [cock of player]. Hir breasts bounce as shi rides in your lap and hir cock slaps against your belly, drooling precum onto it. Shi kneads hir left paw over your chest and rumbles louder and louder as shi rides you hard. Hir right finds it way under hir to stroke your [if cunts of player is 1]pussy[else]pussies[end if]. You can feel hir hot juices leaking down over your [cock of player] and feminine folds as hir cunt squeezes and milks at it.";
							say "     Having already blown your load once, you have a good long screw with the eager, feline whore. Hir cock blasts hot feline seed across your chest twice, as if marking you as one of hir clients. The quivering of hir vaginal muscles around you as shi climaxes the second time is enough to finally push you over the edge as you shoot your hot cum into hir as well.";
							say "     Once you both are finally drained, shi eases hirself off your cock with a soft, satisfied mew and helps you up, a little woozy hirself. Shi gives your rump a firm squeeze with one paw, rubs the other over your cock, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, shi gives your rear a swat, telling you to come back soon.";
						if cocks of player is 2:
							say "     Shi takes a hold of your twin cocks and lines them up with hir wet pussy and tailhole, mrrowling in delight as shi sinks down onto them slowly. She whimpurrrs a little as shi pushes you into both hir front and back passage as once, but hir cock rises to full erection almost immediately. You can feel the tight grip of her inner walls as they squeeze down around your [cock size desc of player] [cock of player].";
							say "     Hir breasts bounce as shi rides in your lap and hir cock slaps against your belly, drooling precum onto it. Shi kneads hir left paw over your chest and rumbles louder and louder as shi rides you hard. Hir right finds it way under hir to stroke your [if cunts of player is 1]pussy[else]pussies[end if]. You can feel hir hot juices leaking down over your [cock of player] and feminine folds as hir pussy and anus squeeze and milks at them.";
							say "     Having already blown your load once, you have a good long screw with the eager feline whore. Hir cock blasts hot feline seed across your chest twice to add to the mess of your own seed already there, as if marking you as one of hir clients. The quivering of hir vaginal and anal muscles around you as shi climaxes the second time is enough to finally push you over the edge as you shoot your hot cum into hir as well. Shi yowls lustfully as your hot seed flows into hir, filling both hir womb and hir bottom with your warmth.";
							say "     Once you both are finally drained, shi eases hirself off your cocks with a soft, satisfied mew and helps you up, a little woozy hirself. Shi gives your rump a firm squeeze with one paw, rubs the other over your cocks, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, shi gives your rear a swat, telling you to come back soon.";
						if cocks of player > 2:
							say "     Shi takes a hold of two of your cocks and lines them up with hir wet pussy and tailhole, mrrowling in delight as shi sinks down onto them slowly. She whimpurrrs a little as shi pushes you into both hir front and back passage as once, but hir cock rises to full erection almost immediately. Shi takes a hold of your third cock begins stroking alongside hirs. You can feel the tight grip of her inner walls as they squeeze down around your [cock size desc of player] [cock of player].";
							say "     Hir breasts bounce as shi rides in your lap and hir cock slaps against your belly, drooling precum onto it. Shi kneads hir left paw over your chest and rumbles louder and louder as shi rides you hard. Hir right finds it way under hir to stroke your [if cunts of player is 1]pussy[else]pussies[end if]. You can feel hir hot juices leaking down over your [cock of player] and feminine folds as hir pussy and anus squeeze and milks at them.";
							say "     Having already blown your load once, you have a good long screw with the eager feline whore. Hir cock blasts hot feline seed across your chest twice to add to the mess of your own seed already there, as if marking you as one of hir clients. The quivering of hir vaginal and anal muscles around you as shi climaxes the second time is enough to finally push you over the edge as your hot cum into hir as well. Shi yowls lustfully as your hot seed flows into hir, filling both hir womb and hir bottom with your warmth. Your third cock shoots fresh cum across your chest, leaving you thoroughly soaked in a mix of the tigress's seed and your own.";
							say "     Once you both are finally drained, shi eases hirself off your cocks with a soft, satisfied mew and helps you up, quite woozy hirself. Shi gives your rump a firm squeeze with one paw, rubs the other over your cocks, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, shi gives your rear a swat, telling you to come back for more soon.";
					else:							[cock size check - huge -> sneaky get fucked!]
						say "     The tigress rubs hir pussy against your [if cocks of player is 1]penis[else]penises[end if], mewling in disappointment - shi'd never be able to fit such a monstrous cock into hir, as much as shi'd like to try. Shi grinds hir wet folds and smaller cock against the base of your [if cocks of player is 1]shaft and clutches your length[else]shafts and clutching your lengths[end if] to hir chest, titfucking you once again. Shi licks and kisses at it as hir soft, warm breasts rub against your cockflesh. You can feel the throb of hir hard cock and the wet touch of hir dripping pussy against your balls as shi works you steadily higher.";
						say "     With a playful grin, shi shifts hir hips a little and you feel hir cock nudge against your wet folds. You moan loudly, then try to tell hir to stop, as you'd not asked for that, but then shi's sinking that barbed, feline cock into you and you find yourself unable to object further. After the long session preparing you, shi has little trouble sliding hirself into you and sets to pounding at your already soaked cunny.";
						say "     Shi grips hir arms around your massive [cockname of player] [if cocks of player is 1]member[else]members[end if] for support and continues the titfuck even as shi fucks you hard and fast. The barbed cock is in no way painful, only small bumps that tingle along your walls as shi thrusts, building you towards climax again. Hir rumbling and purring grows louder and deeper until shi climaxes, pumping hir hot feline seed into you. You can feel it warming you deep inside as shi gives you another orgasm that sends your hot seed to splashing across hir muzzle.[impregchance]"; [Herm sneaky-sex!]
						say "     Once shi's finally drained hir balls into you and filled you with tigercum, shi withdraws with a soft, satisfied mew. Shi moves up and rubs hir cum-slick cock against your [character number breast size of player in cupsize] cup boobs, smearing hir cum into the sticky mess of your own, as if marking you as one of hir clients. Shi then rises slowly and helps you up, a little woozy hirself. Shi gives your rump a firm squeeze with one paw, rubs the other over your cum-filled belly, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, shi gives your rear a swat, telling you to come back soon.";
						increase libido of player by 5; [Sneaky sex makes you extra-horny]
						if libido of player > 100:
							now libido of player is 100;
				decrease libido of player by 20; [Somewhat satisfied by sex...]
				if libido of player < 0:
					now libido of player is 0;
				decrease humanity of player by 3; [...but give in a little more]
			else:
				say "     As the tigress finally moves hir head back, shi smiles up at you. You smile back at hir dazedly, still woozy in the blissful haze of the afterglow. Shi moves to sit atop your waist and grind hir wet, dripping pussy lips along your spent shaft while pumping at hir cock intently. Soon shi's pumping hot tigress cum all over your chest[if cocks of player > 1] to add to the mess of your own seed already there[end if], as if marking you as one of hir clients. Now spent hirself, shi has you up and on your way with a kiss on the cheek and a squeeze on the bottom, asking you to come back again soon. You feel a touch of excitement in your loins, lustfully looking forward to meeting up with another of these sexy felines.";
		else if cunts of player > 0 and cocks of player is 0:		[Yes = FEMALE Identified!]
			say "     Shi presses you down onto the mattress looks hir client over with a predatory rumble. Shi lowers hirself onto the mattress and bring hir muzzle to your [character number breast size of player in cupsize] cup bosom. Hir raspy tongue plays over your [skinname of player] flesh as shi licks and kisses at your chest. While tending to your hard nipples, shi moves hir paw between your legs to stroke the wet lips of your [if cunts of player is 1]pussy[else]pussies[end if]. Shi dips them in slowly and starts to stroke your vaginal walls, working to find all the spots that excite you. Quite adept at hir work, you find yourself growing to a quick climax which soaks hir paw in your juices.";
			say "     As you shiver with the tingles of your orgasm running through you, shi slides down your [bodyname of player] body and buries hir muzzle between your legs, licking at your juicy folds. Hir rough, feline tongue sends new waves of pleasure through you. It dives deep into you, once again finding those pleasure spots and ravaging them, intent on giving hir jane a fine romp.[if cunts of player > 1] While hir tongue ends to your upper slit, hir right paw is working away at the other, making sure it is not neglected in any way.[end if]";
			say "     Hir left paw is firmly wrapped around hir cock, stroking and pumping it as shi works your honeypot with practiced intent. Hir shaft looks to be about nine inches in length and dribbles pre as shi works hir paw along it. It is a dark red with a pointed glans and small bumps along it. This time, shi eases off repeatedly as you start to build close to orgasm, having roughly gauged the signs from your first and letting you instead build over and over. You are soon moaning and whimpering with need, much to hir satisfaction.";
			say "     When the climax finally comes, it hits you like a tidal wave, washing through your body even as your hot juices spray across hir muzzle. Hir tail lashes excitedly while hir tongue goes from patiently working your cunny to lapping up your sweet nectar eagerly. Your climax is long and powerful, drawn out by the rough tongue trying to get every drop it can from you.";
			increase libido of player by 10; [Oral submission increases Libido]
			if libido of player > 100:
				now libido of player is 100;
			let diceroll be a random number from 1 to 125; [lust check vs 125]
			if diceroll < libido of player:
				say "[line break]     As the tigress finally moves hir head back, shi smiles up at you. You smile back at hir dazedly, still woozy in the blissful haze of the afterglow, but still feeling quite horny. With a soft moan, you spread your legs and hold your pussy lips open for hir, moaning as you eye hir waiting cock. 'Do me,' you say with a lustful rumble in your voice. 'I want more, kitty.' More than happy to give hir client what she wants, the tigress smiles lustfully back at you.";
				say "     Moving atop you, shi lines up hir cock with your wet folds and starts to sink hir barbed shaft into you. After the long session preparing you, shi has little trouble sliding hirself into you and sets to pounding at your already soaked pussy. Shi plants hir paws on either side of you, gripping the mattress firmly in hir claws for support as shi drives hir throbbing member into again and again.";
				say "     Rubbing hir body against yours, soft striped fur running along your [bodyname of player] body, shi moves to licking and nibbling along your neck. You can feel hir sharp, feline fangs along your skin, but shi is very careful and only gives you the lightest nips, which feel exquisite. The barbed cock is in no way painful, only small bumps that tingle along your walls as shi thrusts, building you towards climax again. Hir rumbling and purring grows louder and deeper until shi climaxes, pumping hir hot feline seed into you. You can feel it warming you deep inside as shi gives you a third orgasm that nearly knocks you out.[impregchance]";
				say "     Once shi's finally drained hir balls into you and filled you with tigercum, shi withdraws with a soft, satisfied mew. Shi moves up and rubs hir cum-slick cock against your [character number breast size of player in cupsize] cup boobs, as if marking you as one of hir clients. Shi then rises slowly and helps you up, a little woozy hirself. Shi gives your rump a firm squeeze with one paw, rubs the other over your belly, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, shi gives your rear a swat, telling you to come back soon.";
				decrease libido of player by 20; [Somewhat satisfied by sex...]
				if libido of player < 0:
					now libido of player is 0;
				decrease humanity of player by 3; [...but give in a little more]
			else:
				say "     As the tigress finally moves hir head back, shi smiles up at you. You smile back at hir dazedly, still woozy in the blissful haze of the afterglow. Shi moves to sit atop your waist and grind hir wet, dripping folds over yours while pumping at hir cock intently. Soon shi's pumping hot tigress cum all over your chest, as if marking you as one of hir clients. Now spent hirself, shi has you up and on your way with a kiss on the cheek and a squeeze on the bottom, asking you to come back again soon. You feel a touch of excitement in your loins, lustfully looking forward to meeting up with another of these sexy felines."; [Female no-sex ending]
		else if cunts of player is 0 and cocks of player > 0:		[Yes = MALE Identified!]
			say "     Shi presses you down onto the mattress looks hir client over with a predatory rumble. Shi lowers hirself onto the mattress atop you and rubbing hir body against yours. Hir soft striped fur running along your [skinname of player] flesh, shi moves to licking and nibbling along your neck. You can feel hir sharp, feline fangs along your skin, but shi is very careful and only gives you the lightest nips, which feel exquisite. You can feel the warm bulge of hir sheath and the wet touch of hir emerging cock as it bumps against yours. Shi moves a paw down to stroke hir john's cock[smn] as shi nibbles and nuzzles hir way down your chest and belly.";
			say "     With hir muzzle between your legs, shi starts licking and kissing your cock[smn]. Hir raspy tongue slides along your sensitive [cockname of player] penis and lavishes attention on it, eager to please hir john.[if cocks of player > 1] As you have multiple cocks for hir to tend to, shi sets to work on the lower one with hir muzzle and the other(s) with hir right paw.[end if]";
			increase libido of player by 10; [Oral submission increases Libido]
			if libido of player > 100:
				now libido of player is 100;
			if cock length of player < 5:						[Cock size check begins - small]
				say "     Your [cock size desc of player] [cock of player] cock easily fills hir muzzle and shi works hir broad tongue all over it at once. Shi licks and sucks on it with as much enthusiasm as shi would any other, if not more to make you still feel strong and virile. Clearly having a lot of practice, shi polishes your rod until your throbbing hard, ready to blow. Shi then eases off, pulling hir muzzle back to lick and kiss your [ball size] for a while before moving to your shaft once again.";
				say "     Hir left paw is firmly wrapped around hir cock, stroking and pumping it as shi works your penis with practiced intent. Hir shaft looks to be about nine inches in length and dribbles pre as shi works hir paw along it. It is a dark red with a pointed glans and small bumps along it.";
				say "     Shi sucks firmly at your cock now, tongue not letting up for a moment as shi does. Eventually, you can take no more and cum, pumping your hot load into hir muzzle. Your load coats hir tongue and flows down hir throat as shi drinks it down with a lustful moan.";
			else if cock length of player < 9:				[Cock size check - medium]
				say "     Your [cock size desc of player] [cock of player] cock fills hir muzzle quite nicely, giving hir a pleasant muzzleful to lick and suck lustfully. Hir tongue plays up and down it, teasing your glans and sliding along your shaft as hir muzzle bobs up and down along your length. Clearly having a lot of practice, shi polishes your rod until your throbbing hard, ready to blow. Shi then eases off, pulling hir muzzle back to lick and kiss your [ball size] for a while before moving to your shaft once again.";
				say "     Hir left paw is firmly wrapped around hir cock, stroking and pumping it as shi works your penis with practiced intent. Hir shaft looks to be about nine inches in length and dribbles pre as shi works hir paw along it. It is a dark red with a pointed glans and small bumps along it.";
				say "     Shi sucks firmly at your cock now, tongue not letting up for a moment as shi does. Eventually, you can take no more and cum, pumping your hot load into hir muzzle. Your load coats hir tongue and flows down hir throat as shi drinks it down with a lustful moan.";
			else if cock length of player < 13:				[Cock size check - large]
				say "     Your [cock size desc of player] [cock of player] cock fills hir muzzle quite full, but she takes it in with practiced ease, moaning as it slides smoothly down hir throat. Hir tongue plays up and down it, teasing your glans and sliding along your shaft as hir muzzle bobs up and down along your length. Clearly having a lot of practice, shi polishes your rod until your throbbing hard, ready to blow. Shi then eases off, pulling hir muzzle back to lick and kiss your [ball size] for a while before moving to your shaft once again.";
				say "     Hir left paw is firmly wrapped around hir cock, stroking and pumping it as shi works your penis with practiced intent. Hir shaft looks to be about nine inches in length and dribbles pre as shi works hir paw along it. It is a dark red with a pointed glans and small bumps along it.";
				say "     Shi sucks firmly at your cock now, tongue not letting up for a moment as shi does. Eventually, you can take no more and cum, pumping your hot load into hir muzzle. Your load coats hir tongue and flows down hir throat as shi drinks it down with a lustful moan.";
			else:									[Cock size check - fuggin' huge]
				say "     Finding your [cock size desc of player] [cock of player] cock too big even for hir practiced muzzle, shi takes to licking and kissing all over it, paying particularly strong attention to the sensitive tip and leaking cumslit. Hir raspy tongue plays all over it as shi presses hir softly furred breasts against your shaft. Clearly having a lot of practice, shi polishes your rod until your throbbing hard, ready to blow. Shi then eases off, pulling hir muzzle back to lick and kiss your [ball size] for a while before moving to your shaft once again.";
				say "     Hir left paw is firmly wrapped around hir cock, stroking and pumping it as shi works your penis with practiced intent. Hir shaft looks to be about nine inches in length and dribbles pre as shi works hir paw along it. It is a dark red with a pointed glans and small bumps along it.";
				say "     Shi's giving your cock a thorough slathering with hir rough tongue, which feels so good along your sensitive flesh. Eventually, the tigress's titfuck is too much for you and you cum hard, spraying your hot semen across hir muzzle. After letting you paint hir face with a few shots, shi presses hir muzzle over your cumslit and lets it flow into hir muzzle and down hir throat with a lustful moan.";
			if cocks of player > 1:							[Yes = multi-cocked player]
				say "     As you fill hir muzzle from the one, your other [if cocks of player is 2]cock sends [else]cocks send [end if]spurts of hot cum across your body, leaving you with streaks of your own seed over you.";
			let diceroll be a random number from 1 to 125; [lust check vs 125]
			if diceroll < libido of player:
				say "[line break]     As the tigress finally moves hir head back, shi smiles up at you. You smile back at hir dazedly, still woozy in the blissful haze of the afterglow, but still feeling quite horny. With a soft moan, you rub over your [cockname of player] [if cocks of player is 1]cock, keeping it [else]cocks, keeping them [end if]from growing fully soft and coaxing it back to erection. 'Now there, sexy kitty. I'm not done with you yet.' With a lustful smile back down at you, shi licks hir lips and moves to straddle your hips.";
				if cock length of player < 16:				[Yes = not huge cock]
					if cocks of player is 1:
						say "     Shi takes a hold of your [cock size desc of player] cock and lines it up with hir wet pussy, mrrowling in delight as shi sinks down onto it. You can feel the wet grip of her inner walls as they squeeze down around your [cockname of player] member. Hir breasts bounce as shi rides in your lap and hir cock slaps against your belly, drooling precum onto it. Shi kneads hir paws over your chest and rumbles louder and louder as shi rides you hard. You can feel hir hot juices leaking down over your [cock of player] shaft as hir pussy squeezes and milks at it.";
						say "     Having already blown your load once, you have a good long screw with the eager feline whore. Hir cock blasts hot feline seed across your chest twice, as if marking you as one of hir clients. The quivering of hir vaginal muscles around you as shi climaxes the second time is enough to finally push you over the edge as you shoot your hot cum into hir as well.";
						say "     Once you both are finally drained, shi eases hirself off your cock with a soft, satisfied mew and helps you up, a little woozy hirself. Shi gives your rump a firm squeeze with one paw, rubs the other over your cock, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, shi gives your rear a swat, telling you to come back soon.";
					if cocks of player is 2:
						say "     Shi takes a hold of your twin [cock size desc of player] cocks and lines them up with hir wet pussy and tailhole, mrrowling in delight as shi sinks down onto them slowly. She whimpurrrs a little as shi pushes you into both hir front and back passage as once, but hir cock rises to full erection almost immediately. You can feel the tight grip of her inner walls as they squeeze down around your [cockname of player] members. Hir breasts bounce as shi rides in your lap and hir cock slaps against your belly, drooling precum onto it. Shi kneads hir paws over your chest and rumbles louder and louder as shi rides you hard. You can feel hir hot juices leaking down over your [cock of player] as hir pussy and anus squeeze and milks at them.";
						say "     Having already blown your load once, you have a good long screw with the eager feline whore. Hir cock blasts hot feline seed across your chest twice to add to the mess of your own seed already there, as if marking you as one of hir clients. The quivering of hir vaginal and anal muscles around you as shi climaxes the second time is enough to finally push you over the edge as you shoot your hot cum into hir as well. Shi yowls lustfully as your hot seed flows into hir, filling both hir womb and hir bottom with your warmth.";
						say "     Once you both are finally drained, shi eases hirself off your cocks with a soft, satisfied mew and helps you up, a little woozy hirself. Shi gives your rump a firm squeeze with one paw, rubs the other over your cocks, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, shi gives your rear a swat, telling you to come back soon.";
					if cocks of player > 2:
						say "     Shi takes a hold of two of your [cock size desc of player] cocks and lines them up with hir wet pussy and tailhole, mrrowling in delight as shi sinks down onto them slowly. She whimpurrrs a little as shi pushes you into both hir front and back passage as once, but hir cock rises to full erection almost immediately. Shi takes a hold of your third cock begins stroking alongside hirs. You can feel the tight grip of her inner walls as they squeeze down around your [cockname of player] members. Hir breasts bounce as shi rides in your lap and hir cock slaps against your belly, drooling precum onto it. Shi kneads one paw over your chest and rumbles louder and louder as shi rides you hard while the other strokes over your uppermost cock and hirs. You can feel hir hot juices leaking down over your [cock of player] as hir pussy and anus squeeze and milks at them.";
						say "     Having already blown your load once, you have a good long screw with the eager feline whore. Hir cock blasts hot feline seed across your chest twice to add to the mess of your own seed already there, as if marking you as one of hir clients. The quivering of hir vaginal and anal muscles around you as shi climaxes the second time is enough to finally push you over the edge as your hot cum into hir as well. Shi yowls lustfully as your hot seed flows into hir, filling both hir womb and hir bottom with your warmth. Your third cock shoots fresh cum across your chest, leaving you thoroughly soaked in a mix of the tigress's seed and your own.";
						say "     Once you both are finally drained, shi eases hirself off your cocks with a soft, satisfied mew and helps you up, quite woozy hirself. Shi gives your rump a firm squeeze with one paw, rubs the other over your cocks, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, shi gives your rear a swat, asking you to come back for more soon.";
				else:								[No = huge cock]
					say "     The tigress rubs hir pussy against your penis, mewling in disappointment - shi'd never be able to fit such a monstrous [cockname of player] cock into hir, as much as shi'd like to try. Shi grinds hir wet folds and smaller cock against the base of your [if cocks of player is 1]shaft and clutches your length [else]shafts and clutching your lengths [end if]to hir chest, titfucking you once again. Shi licks and kisses at it as hir soft, warm breasts rub against it. You can feel the throb of hir hard cock and the wet touch of hir dripping pussy against your balls as shi works you steadily until you release again. As you leave streaks of white cum across hir striped fur, shi cums as well, spraying hir hot seed across the base of your cock, which drools down to your balls, enveloping them in hir scent.";
					say "     Once you both are finally drained, shi eases hirself off of you with a soft, satisfied mew and helps you up, a little woozy hirself. Shi gives your rump a firm squeeze with one paw, rubs the other over your cock, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, shi gives your rear a swat, telling you to come back soon.";
				decrease libido of player by 20; [Somewhat satisfied by sex...]
				if libido of player < 0:
					now libido of player is 0;
				decrease humanity of player by 3; [...but give in a little more]
			else:
				say "     As the tigress finally moves hir head back, shi smiles up at you. You smile back at hir dazedly, still woozy in the blissful haze of the afterglow. Shi moves to sit atop your waist and grind hir wet, dripping pussy lips along your spent shaft while pumping at hir cock intently. Soon shi's pumping hot tigress cum all over your chest[if cocks of player > 1] to add to the mess of your own seed already there[end if], as if marking you as one of hir clients. Now spent hirself, shi has you up and on your way with a kiss on the cheek and a squeeze on the bottom, asking you to come back again soon. You feel a touch of excitement in your loins, lustfully looking forward to meeting up with another of these sexy felines."; [Male no-sex ending]
		else:										[No to all = NEUTER Identified!]
			say "     Woo! Huh! Neuter?";
		now tigressclient is 1;
		now tigressfucked is 0;
		now tigresswinner is 0;
	else:											[PLAYER LOST THE FIGHT!]
		say "     Physically battered by the tigress's arousing assault, you sway dazedly over the corner of the nearby building, seeking support to stay upright. Before you can try resisting hir assaults further, shi grabs you firmly and shoves you into the alleyway. Stumbling, you fall onto a dirty mattress in the shadows of the buildings. With your face buried in it, you find yourself taking in the scent of sex all over it. It is rich with the aromas of various lovers, but most strongly is the scent of tigress. The musky mixture quickly fills you with arousal and you find yourself rubbing your face across the mattress, taking it all in with soft moans of desire.";
		increase libido of player by 12; [Default Libido increase of 12...]
		decrease humanity of player by 6; [...and give in a bit more]
		if libido of player > 100:
			now libido of player is 100;
		let diceroll be a random number from 1 to 125; [lust check vs 125]
		if diceroll < libido of player:						[scored under libido, too horny to wait]
			say "     This gives the tigress a moment to release the easy straps on hir street clothes before pouncing atop you. Shi pulls your backpack off and tosses it aside, all thoughts of payment lost after watching your lustful writhing on the bed. As shi grinds hirself against your [bodyname of player] body, shi helps you out of your remaining clothes, eager to get right to it. As the firm cheeks of your ass press around it, you can feel its pointed glans and small, stimulating bumps. You can tell it's a larger than average cock, but not massive like many you've seen since the outbreak. You can feel the tigress's pre leaking down between your cheeks and you find yourself longing for hir to take you with it.";
		else:										[scored over libido, remembers to get paid]
			say "     Shi grins down at you as you writhe on the mattress, losing yourself in the rich scent of sex pervading it. Shi takes a moment to release the easy straps on hir street clothes before helping you with yours. Shi sets your backpack aside, and then removes your remaining clothes. Once naked, shi runs a paw down your back and between your legs to fondle and tease your equipment while hir other paw rummages through your backpack for something to take as payment.";
			say "[paymentcheck]";
			if tempnum is 1:
				stop the action;
			say "     After searching through your belongs for a while, shi decides to get to it as your moaning grows louder. Shi pounces atop you and grinds hirself against your [bodyname of player] body, sliding hir leaking cock against your ass. As your firm cheeks press around it, you can feel its pointed glans and small, stimulating bumps. You can tell it's a larger than average cock, but not massive like many you've seen since the outbreak. You can feel the tigress's pre leaking down between your cheeks and you find yourself longing for hir to take you with it.";
		if cunts of player > 0 and cocks of player > 0:				[Yes = HERM Identified!]
			say "     With one paw between your shoulders, shi holds you down as the other grabs your hip firmly. After shifting hir position a little, you can feel the tigress's hard cock at your [cunt size desc of player] pussy before it sinks into you. You moan your pleasure as you feel the firm piece of meat pushing in, teasing you delightfully with those bumps. Your [cock size desc of player] [cock of player] [if cocks of player is 1]shaft dribbles[else]shafts dribble[end if] pre onto the mattress as shi mounts you.";
			say "     Hir hips rock slowly at first, letting hir unusually shaped penis stimulate your sensitive walls. You push your rear back against hir thrusting, matching hir pace. As you moan and press your face into the scent-filled mattress, you lose track of time, only knowing the joy of that softly-barbed cock inside you. Surely it was sculpted to please any lover and you love having it in you, as your own hard [if cocks of player is 1]cock[else]cocks[end if] and leaking precum show.";
			say "     After a long session of slow, stimulating thrusting, the tigress rumbles deeply as hir cock throbs in you. Shi takes the back of your neck in her jaws, holding you firmly, but carefully, and starts pounding into you hard and fast. With hir elbows on the mattress, shi's puts a paw on your [breast size desc of player] tits and fondles them while the other moves to stroke your [cock size desc of player] [if cocks of player is 1]shaft[else]shafts[end if]. As shi drives hirself into you again and again, shi pumps at your throbbing member.";
			say "     One final, hard thrust into you and shi's growling deeply as hir shaft throbs inside you, pumping hir hot, feline seed deep inside you, sending it flowing into your womb. This sends you into a powerful climax, hot feminine juices flowing from your pussy and thick cum from your [if cocks of player is 1]cock[else]cocks[end if] as shi fills you with hir seed. You hot seed sprays onto the mattress to join the multitude of others.[impregchance]";
			if cunts of player > 1 and gestation of child is 0:		[Multi-pussy, not preg]
				say "     As shi eases hir cock from your cum-slick slit, shi keeps hir grip on your nape and moves hir cock to your second slit, pushing into you again. Shi starts to pound away at you again, filling your second hole. Shi goes hard and fast from the very beginning this time, eager to fill you with more of hir semen to breed you. You moan lustfully beneath hir, having another powerful orgasm as that barbed shaft throbs inside you and seeds you a second time, though with an albeit smaller load this time after such a fast turnaround.[if a random chance of 1 in 2 succeeds][impregchance][end if]"; [half as likely to impreg on 2nd try]
				increase libido of player by 6; [2nd hole filled - Libido increase of 6...]
				decrease humanity of player by 3; [...and give in a little more]
				if libido of player > 100:
					now libido of player is 100;
				if cunts of player > 2 and gestation of child is 0:	[triple-pussy and still not preg]
					say "     With still another pussy to go, shi pushes hir cock into you a third time and pounds you hard, mrrrowling as shi does. Shi takes you very hard and ends up scooting you along the mattress from the force of hir pounding, almost pushing your head off the edge before cumming a third and final time to try and breed you. Hir load this time is quite small, but maybe third time's the charm.[if a random chance of 1 in 3 succeeds][impregchance][end if]"; [third as likely to impreg on 3rd try]
					increase libido of player by 3; [3nd hole filled - Libido increase of 3...]
					decrease humanity of player by 2; [...and give in a little more]
					if libido of player > 100:
						now libido of player is 100;
		else if cunts of player > 0 and cocks of player is 0:		[Yes = FEMALE Identified!]
			say "     With one paw between your shoulders, shi holds you down as the other grabs your hip firmly. After shifting hir position a little, you can feel the tigress's hard cock at your [cunt size desc of player] cunt before it sinks into you. You moan your pleasure as you feel the firm piece of meat pushing in, teasing you delightfully with those bumps. Hir hips rock slowly at first, letting hir unusually shaped penis stimulate your sensitive walls. You push your rear back against hir thrusting, matching hir pace. As you moan and press your face into the scent-filled mattress, you lose track of time, only knowing the joy of that softly-barbed cock inside you. Surely it was sculpted to please any lover and you love having it in you.";
			say "     After a long session of slow, stimulating thrusting, the tigress rumbles deeply as hir cock throbs in you. Shi takes the back of your neck in her jaws, holding you firmly, but carefully, and starts pounding into you hard and fast. With hir elbows on the mattress, shi's got hir paws on your [character number breast size of player in cupsize] cup tits and fondles them as shi drives hirself into you again and again. One final, hard thrust into you and shi's growling deeply as hir shaft throbs inside you, pumping hir hot, feline seed deep inside you, sending it flowing into your womb. This sends you into a powerful climax, hot feminine juices flowing from your pussy as shi fills you with hir seed.[impregchance]";
			if a random chance of 1 in 3 succeeds:				[One in three chance of gender change now]
				follow the sex change rule; [I think this will work]
				if cocks of player > 0:						[New cock sex scene]
					say "     You groan loudly as a smaller version of the tigress's cock grows in, hard and throbbing with fresh need. Spent, the tigress releases you and you roll onto your back with a soft mewl of need. Looking down, shi sees your new equipment and grins happily. Shi takes your small shaft in hir paw and starts stroking you before leaning down and taking it into hir muzzle. Shi licks and sucks at it, lavishing attention upon your newly-formed penis. Already sensitive after its growth, you quickly blow your load, giving hir a taste of your fresh seed.";
					increase libido of player by 8; [New cock makes you horny...]
					decrease humanity of player by 6; [...and give in a bit more]
					if libido of player > 100:
						now libido of player is 100;
			if cunts of player > 1 and gestation of child is 0:		[multi-pussy, not preg]
				if cocks of player is 0:					[Did not do new-cock scene instead]
					say "     As shi eases hir cock from your cum-slick slit, shi keeps hir grip on your nape and moves hir cock to your second slit, pushing into you again. Shi starts to pound away at you again, filling your second hole. Shi goes hard and fast from the very beginning this time, eager to fill you with more of hir semen to breed you. You moan lustfully beneath hir, having another powerful orgasm as that barbed shaft throbs inside you and seeds you a second time, though with an albeit smaller load this time after such a fast turnaround.[if a random chance of 1 in 2 succeeds][impregchance][end if]"; [half as likely to impreg on 2nd try]
					increase libido of player by 6; [2nd hole filled Libido increase of 6...]
					decrease humanity of player by 3; [...and give in a little more]
					if libido of player > 100:
						now libido of player is 100;
					if cunts of player > 2 and gestation of child is 0:	[triple-pussy and still not preg]
						say "     With still one pussy to go, shi pushes hir cock into you a third time and pounds you hard, mrrrowling as shi does. Shi takes you very hard and ends up scooting you along the mattress from the force of hir pounding, almost pushing your head off the edge before cumming a third and final time to try and breed you. Hir load this time is quite small, but maybe third time's the charm.[if a random chance of 1 in 3 succeeds][impregchance][end if]"; [third as likely to impreg on 3rd try]
						increase libido of player by 3; [3nd hole filled Libido increase of 3...]
						decrease humanity of player by 2; [...and give in a little more]
						if libido of player > 100:
							now libido of player is 100;
		else if cunts of player is 0 and cocks of player > 0:		[Yes = MALE Identified!]
			say "     With one paw between your shoulders, shi holds you down as the other grabs your hip firmly. After shifting hir position a little, you can feel the tigress's hard cock nudge at your anal ring before easing slowly into you. You groan softly and try to relax as you feel the firm piece of meat pushing in, its pointed tip and hir flowing pre helping it push into you. As it sinks in further, you are teased by those delightful, soft barbs. Hir hips rock slowly at first, letting hir unusually shaped penis stimulate your sensitive walls. You push your rear back against hir thrusting, matching hir pace. As you moan and press your face into the scent-filled mattress, you lose track of time, only knowing the joy of that softly-barbed cock inside you. Surely it was sculpted to please any lover and you love having it in you.";
			say "     After a long session of slow, stimulating thrusting, the tigress rumbles deeply as hir cock throbs in you. Shi takes the back of your neck in hir jaws, holding you firmly, but carefully, and starts pounding into you hard and fast. With hir paws around your wrists, holds you pinned down, though by this point you're eager to have hir violate you. One final, hard thrust into you and shi's growling deeply as hir shaft throbs inside you, pumping hir hot, feline seed deep inside you, sending it flowing into your bowels. This sends you into a powerful climax, shooting your cum onto the mattress to join the multitude of others as shi fills you with hir seed.[mimpregchance]";
			if a random chance of 1 in 3 succeeds:				[One in three chance of gender change now]
				follow the sex change rule; [I think this will work]
				if cunts of player > 0:						[New pussy sex scene]
					say "     You moan softly as a wet little snatch forms between your legs, dripping with fresh need. Even as shi eases hir cock out of your ass, shi spots the new addition and mrrrowls in pleasure. Hir softening shaft grows hard again, eager to be the first to take your new, virgin hole. Shi eases hir cum-slick shaft into your small pussy, finding it a tight fit. Shi takes it slow at first, but soon quickens hir pace and takes you by the nape again, eager to breed you well. The stimulating barbs sliding along your vaginal walls feel so good, different from when shi was in your ass. You're soon pushing back into hir thrusts until finally shi pushes hir glans past your cervix and into your womb to unleash hir hot seed. You climax as well, having your first orgasm from your new pussy as the tigress who just gave it to you cums inside your newly-grown womb.[impregchance]";
					increase libido of player by 8; [New pussy makes you horny...]
					decrease humanity of player by 6; [...and give in a bit more]
					if libido of player > 100:
						now libido of player is 100;
		else:										[No to all = NEUTER Identified!]
			say "     Uh oh! Huh! Neuter?"; [No cunt & no cock]
		say "     Finished with you now, shi helps you up, shoves your stuff into your arms and sends you on your way with a firm squeeze of your bottom, digging hir claws into you a little possessively. You feel a tingling in your loins and, while you feel satisfied for the moment, you yearn to meet up with another of these sexy felines soon.";
		now tigressclient is 0;
		now tigressfucked is 1;
		now tigresswinner is 0;


to say beattigress:
	if mqstatus is 3:				[if on the motel run, set variable and prevent the regular scene]
		now mqfightresult is 1;
		say "Hurray! You beat the tigress, time to continue.";
		stop the action;
	if mqstatus is 6:				[if fighting matron, set variable and prevent the regular scene]
		now mqfightresult is 1;
		say "Hurray! You beat the tigress matron, time to celebrate.";
		stop the action;
	say "     As you strike a final blow to the tigress, you drive hir back into the shaded alley, sending hir to collapse onto a dirty mattress in the shadows of the buildings. From the smell, shi's used it for hir clients before. Shi mewls with lustful need, looking up at you with hir feline eyes as shi releases the easy straps of hir street clothes. The slutty tigress bares hir striped body for you, lost to hir lustful desires but too weakened to pounce you to sate them.";
	say "     The tigress whore is available for your amusement.";
	say "     [bold type]Do you wish to give in and have some fun with hir?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if the player consents:									[Decides to fuck tigress]
		LineBreak;
		if cunts of player > 0 and cocks of player > 0:				[Yes = HERM Identified!]
			increase libido of player by 10; [Oral submission increases Libido]
			if libido of player > 100:
				now libido of player is 100;
			if cock length of player < 13:					[Cock size check: small-large]
				say "     As the tigress mewls hir need again, you decide to fill that lovely, striped muzzle and move overtop of hir. Shi smiles up at you, licking hir lips even as you move into position. Catching a flash of hir pointed teeth, you momentarily rethink your idea before shi grabs your hips and pulls you closer so hir raspy tongue can glide over your swollen [if cocks of player is 1]member[else]members[end if].";
				say "     Lowering your hips, you push your [cock size desc of player] [cock of player] cock into hir eager muzzle. Shi wraps hir warm lips around it and starts licking and sucking with considerable skill, clearly having had a lot of practice. You pump your cock into hir muzzle steadily, sliding it along hir palate.";
				say "     As the tigress works [if cunt length of player < 6]a finger [else]several fingers [end if]inside your [if cunts of player is 1]vagina[else]vaginas[end if], you lean overtop hir and start licking and sucking hir dual equipment in return. Hir shaft looks to be about nine inches in length and dribbles pre as you tease it. It is a dark red with a pointed glans and small bumps along it. After sampling it for a while, you move your mouth to hir pussy, licking and kissing it in return. After getting hir pussy quivering and dripping with need, you move back to hir cock again. As you plunge your [facename of player] mouth down over it, you press two fingers into hir dripping puss and fingerfuck hir hard and fast.";
				say "     Shi laps up your pre eagerly, working hir tongue over you with skillful intent, having your arousal build and build until you pound into hir muzzle hard and fast. You blow your load down hir throat and your [if cunts of player is 1]pussy soaks hir paw [else]pussies soak hir paws [end if]in your juices. This is enough to finally set hir off, blasting tigercum down your throat. Shi swallows your cum down happily, even moaning in pleasure as shi does. Clearly, this feline loves hir job.[if cocks of player is 2] With one cock in hir muzzle, the other one ends up blowing its hot seed across hir body, covering hir striped fur in streaks of your white semen.[else if cocks of player > 2] With one cock in hir muzzle, the others end up blowing their hot seed across hir body, covering hir striped fur in streaks of your white semen.[end if]";
			else:									[Cock size check: huge!]
				say "     As the tigress mewls hir need again, you decide to fill that lovely, striped muzzle and move to straddle hir chest. Shi smiles up at you, licking hir lips even as you move into position. Catching a flash of hir pointed teeth, you momentarily rethink your idea before shi grabs your hips and pulls you closer so hir raspy tongue can glide over your swollen member[smn].";
				say "     Given the size of your [cock size desc of player] [cock of player] member[smn], you won't be able to take full advantage of the tigress's muzzle, so you go for something almost as good. Sitting across hir hips, you lay your lengthy cock[smn] across hir chest, nestling [if cocks of player is 1]it[else]them[end if] between hir breasts. Shi starts rubbing hir body against [if cocks of player is 1]it[else]them[end if], rumbling with desire. Shi licks and kisses at your tip[smn], lapping up your precum with a hunger for more. Hir raspy, feline tongue is very stimulating, as is the warm, soft feel of hir bosom around your shaft[smn]. Hir well-trained paws stroke over the lower portion of your cock[smn] and fondle your balls, working to attend to as much of your as shi can manage.";
				if cock length of player > 23:				[Extra-huge for add-on]
					say "     You grind your hips down overtop of hirs, rubbing your wet pussy lips against hirs and pressing hir smaller cock underneath your much more massive meat. Shi mewls and wiggles hir hips, rocking hir softly-barbed cock against the underside of your shaft, further stimulating you.";
				say "     Eventually, your excitement builds to the breaking point and you unload. Your hot seed shoots across hir face and into hir open muzzle. Shi has it open wide, tongue hanging out to catch as much as shi can. Your seed paints white streaks across hir orange, striped face. As shi runs hir tongue across hir creamy muzzle, you can feel hir shaft throb under you, followed by the hot rush of tigercum spraying onto you.";
			let diceroll be a random number from 1 to 125; [lust check vs 125]
			if diceroll < libido of player:
				say "     Having gotten good and wound up after that, you feel you're still ready for more. As you look over the tigress, you try to decide what you want to use hir for next.";
				say "     [bold type] Eyeing hir lustfully, your gaze flips back and forth between hir penis and hir vagina as you struggle to choose which you want most.[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Penis.";
				say "     ([link]N[as]n[end link]) - Vagina.";
				if the player consents:						[Yes = wants cock, get fucked]
					LineBreak;
					say "     Deciding you want to try riding that sexy feline cock, you shift yourself around, straddling the tigress's hips. You rub your [if cunts of player is 1]pussy[else]pussies[end if] down onto hir cock with a moan of desire. Never having given it a chance to get soft, you coax hir cock back to full hardness quickly and slowly sink yourself down onto it. The tigress mrowls in pleasure as shi feels you taking hir feline member in. As it sinks into you, your [if cocks of player is 1]cock throbs, [else]cocks throb, [end if]rising back to full hardness.";
					say "     You run your hands over hir body as you start riding up and down. With you on top, you set the pace and ride hir nice and slow to begin, growing faster and faster as you go. Stroking through the soft white fur on hir chest, you knead hir breasts and tease hir nipples. The tigress brings hir paws to your [if cocks of player is 1]cock[else]cocks[end if], stroking your meat in return.";
					if cunts of player > 1:					[Extra in middle if multi-pussy]
						say "     Having more than one hot hole to file, you switch from one pussy to next a few times. Doing this makes the tigress mewl in disappointment, then moan in pleasure as you slide off hir, then take hir back in again. Enjoying hir reaction, you keep doing it to tease hir over and over again much more often than you would otherwise. You find hir to be a delightful feline playtoy.";
						decrease libido of player by 5; [Extra satisfaction if multi-pussy sex]
						if libido of player < 0:			[Should never be needed due to earlier increase...]
							now libido of player is 0; [...but left for completeness.]
					say "     The barbed cock is in no way painful, only small bumps that tingle along your walls as you ride hir, building you towards climax again. Hir rumbling and purring grows louder and deeper until shi climaxes, pumping hir hot feline seed into you. As that warm rush flows into you, you grind down firmly onto hir cock and you orgasm again. Your hot seed sprays across hir striped body, leaving sticky streaks of white on hir snowy tummyfur and breasts.[impregchance]";
					say "     Once shi's finally drained hir balls into you and filled you with tigercum, you slide yourself off hir. Shi releases a soft, satisfied mew as hir cock pops free with a gush of tigercum and your own juices flowing down onto hir. You lean forward and nuzzle hir, nibbling hir ear before getting up. Having had your fun, you get off the mattress and gather your things. You leave the well-used tigress in hir alley, covered in cum and juices. You smile, feeling quite satisfied for now.";
				else:								[No = wants pussy, does the fucking]
					LineBreak;
					say "     Deciding you want to pound hir dripping puss with your throbbing cock, you feel you're still ready for a second go and nudge the tigress over. Shi rolls onto all fours eagerly, arching up hir tail and wiggling hir rear in anticipation. You eye hir sexy rump, running your hands over it, looking at hir hot, dripping pussy. That's more than enough to get you fully hard again and you move into position atop hir.";
					if cock length of player < 16:			[Yes = not huge cock]
						say "     Lining up your [cock size desc of player] [cock of player] shaft with hir pussy, you ease forward, enjoying the feel of hir wet folds wrapping around you. You sink in slowly until you're fully sheathed inside hir. Hir inner walls squeeze down around your cock, urging you to start fucking her - and you do with fast, hard strokes. Having already blown your load once, you have a good, long screw with the eager feline whore. While you pound into hir, shi reaches back with a paw to finger your [if cunts of player is 1]pussy[else]pussies[end if].";
						say "     Hir cock blasts hot feline seed across the mattress when you finally blast your hot load into hir. The quivering of hir vaginal muscles around your throbbing [cockname of player] cock ensures you have a good, long orgasm, draining your balls for all you'll give.[if cocks of player is 2] With one cock stuffed inside of hir, the other one ends up shooting its hot seed across hir shapely body, covering hir striped fur in more streaks of your thick seed.[else if cocks of player > 2] With one cock stuffed inside of hir, the others end up shooting their hot seed across hir shapely body, covering hir striped fur in more streaks of your thick seed.[end if]";
					else:							[No = huge cock!]
						say "     While you're too large for hir to take, you still need some extra relief. You grind your hefty shaft against hir shapely bottom and along hir back, pressing it between you both. Hir fur feels so nice against your sensitive flesh and your balls slap firmly against hir pussy. Shi mewls and pushes back firmly each time you thrust particularly hard and your balls slap hir wet folds. Shi kneads hir paws at the mattress. Having already blown your load once, you stroke yourself against the feline whore's tight rear and strong, flexible back. While you rub your hard meat against hir, shi reaches back with a paw to finger your [if cunts of player is 1]pussy[else]pussies[end if].";
						say "     When you finally peak, you blast hot cum across hir body and onto the back of hir head with the first shot. Sitting back up, you shoot a few more onto hir as you move back to spray onto that cute bubble-butt. You line up [if cocks of player > 1]one of[end if] your spurting [cockname of player] [if cocks of player is 1]penis[else]penises[end if] with hir pussy, pushing your glans against those wet folds and spraying your hot seed onto it, forcing as much in as you can. Hir cock blasts hot feline seed across the mattress when you finally blast your hot load into hir. The quivering of hir pussy lips around your tip ensures you have a good, long orgasm, draining your balls for all you'll give.";
					say "     Having had your fun, you nibble hir ear and fondle hir breast before rising off the mattress. Gathering your things, you leave the well-used tigress in hir alley, covered in cum and juices. You smile, feeling quite satisfied for now.";
				decrease libido of player by 25; [Satisfied by sex...]
				if libido of player < 0:
					now libido of player is 0;
			else:									[Herm no-sex ending]
				say "     Having had your fun, you get up slowly and stroke over hir ears before you get off the mattress and leave the alley behind. Feeling somewhat satisfied for now, your loins warm with the thoughts of finding another of these sexy felines to play with as you see fit.";
		else if cunts of player > 0 and cocks of player is 0:		[Yes = FEMALE Identified!]
			LineBreak;
			say "     As the tigress mewls hir need again, you decide to put that lovely, striped muzzle to use. You sit across hir face, lowering your juicy pussy over hir muzzle. Shi licks hir lips, then runs hir raspy tongue across your wet folds. You moan in pleasure as you feel it glide across you and you grind down firmly onto hir muzzle, encouraging hir to send that talented tongue deep inside you.";
			say "     As the tigress works hir tongue inside your [cunt size desc of player] vagina, you lean overtop hir and start licking and sucking hir dual equipment in return. Hir shaft looks to be about nine inches in length and dribbles pre as you tease it. It is a dark red with a pointed glans and small bumps along it. After sampling it for a while, you move your mouth to hir pussy, licking and kissing it in return. After getting hir pussy quivering and dripping with need, you move back to hir cock again. As you plunge your [facename of player] mouth down over it, you press two fingers into hir dripping puss and fingerfuck hir hard and fast.";
			say "     This is enough to finally set hir off, blasting tigercum down your throat. Even as you gulp it down, your orgasm hits as well, further soaking hir striped muzzle in your hot juices. You moan in ecstasy, grinding down onto hir face as hir well-practiced tongue continues to play inside you, sending you crashing through multiple orgasms until you collapse atop hir, panting for breath for several minutes.";
			increase libido of player by 10; [Worked up by oral]
			if libido of player > 100:
				now libido of player is 100;
			let diceroll be a random number from 1 to 125; [lust check vs 125]
			if diceroll < libido of player:
				say "[line break]     Having gotten good and wound up after that, you feel you're still ready for more and turn yourself around, straddling the tigress's hips. You rub your [if cunts of player is 1]pussy[else]pussies[end if] down onto hir cock with a moan of desire. Never having given it a chance to get soft, you coax hir cock back to full hardness quickly and slowly sink yourself down onto it. The tigress mrowls in pleasure as shi feels you taking hir feline member in.";
				say "     You run your hands over hir body as you start riding up and down. With you on top, you set the pace and ride hir nice and slow to begin, growing faster and faster as you go. Stroking through the soft white fur on hir chest, you knead hir breasts and tease hir nipples. The tigress brings hir paws to your chest, stroking your breasts in return.";
				if cunts of player > 1:						[Extra in middle if multi-pussy]
					say "     Having more than one hot hole to file, you switch from one pussy to next a few times. Doing this makes the tigress mewl in disappointment, then moan in pleasure as you slide off hir, then take hir back in again. Enjoying hir reaction, you keep doing it to tease hir over and over again much more often than you would otherwise. You find hir to be a delightful feline playtoy.";
					decrease libido of player by 5; [Extra satisfaction if multi-pussy sex]
					if libido of player < 0:				[Should never be needed due to earlier increase...]
						now libido of player is 0; [...but left for completeness.]
				say "     The barbed cock is in no way painful, only small bumps that tingle along your walls as you ride hir, building you towards climax again. Hir rumbling and purring grows louder and deeper until shi climaxes, pumping hir hot feline seed into you. As that warm rush flows into you, you grind down firmly onto hir cock and you orgasm again.[impregchance]";
				say "     Once shi's finally drained hir balls into you and filled you with tigercum, you slide yourself off hir. Shi releases a soft, satisfied mew as hir cock pops free with a gush of tigercum and your own juices flowing down onto hir. You lean forward and nuzzle hir, nibbling hir ear before getting up. Having had your fun, you get off the mattress and gather your things. You leave the well-used tigress in hir alley, covered in cum and juices. You smile, feeling quite satisfied for now.";
				decrease libido of player by 25; [Satisfied by sex...]
				if libido of player < 0:
					now libido of player is 0;
			else:
				say "     Having had your fun, you get up slowly and stroke over hir ears before you get off the mattress and leave the alley behind. Feeling somewhat satisfied for now, your loins warm with the thoughts of finding another of these sexy felines to play with as you see fit."; [Female no-sex ending]
		else if cunts of player is 0 and cocks of player > 0:		[Yes = MALE Identified!]
			say "     As the tigress mewls hir need again, you decide to fill that lovely, striped muzzle and move to straddle hir chest. Shi smiles up at you, licking hir lips even as you move into position. Catching a flash of hir pointed teeth, you momentarily rethink your idea before shi grabs your hips and pulls you closer so hir raspy tongue can glide over your swollen [if cocks of player is 1]member[else]members[end if].";
			increase libido of player by 10; [Oral submission increases Libido]
			if libido of player > 100:
				now libido of player is 100;
			if cock length of player < 13:					[Cock size check: small-large]
				say "     Placing your hands on hir head, you pull hir forward, pushing your [cock size desc of player] [cock of player] cock into hir eager muzzle. Shi wraps hir warm lips around it and starts licking and sucking with considerable skill, clearly having had a lot of practice. Shi presses hir breasts against your cock and balls while hir mouth bobs over the rest. You pump your [cockname of player] penis into hir muzzle steadily, sliding it along hir palate. Shi laps up your pre eagerly, working hir tongue over you with skillful intent, having your arousal build and build until you pound into hir muzzle hard and fast, blowing your load down hir throat.";
				say "     Shi swallows it down happily, even moaning in pleasure as shi does. Clearly, this feline loves hir job.[if cocks of player is 2] With one cock in hir muzzle, the other one ends up blowing its hot seed across hir face, covering hir striped fur in streaks of your white semen.[else if cocks of player > 2] With one cock in hir muzzle, the others end up blowing their hot seed across hir face, covering hir striped fur in streaks of your white semen.[end if]";
			else:									[Cock size check: huge!]
				say "     Given the size of your massive [if cocks of player is 1]member[else]members[end if], you won't be able to take full advantage of the tigress's muzzle, so you go for something almost as good. Sitting across hir hips, you lay your lengthy [if cocks of player is 1]cock[else]cocks[end if] across hir chest, nestling [if cocks of player is 1]it[else]them[end if] between hir breasts. Shi starts rubbing hir body against [if cocks of player is 1]it[else]them[end if], rumbling with desire. Shi licks and kisses at your [if cocks of player is 1]tip[else]tips[end if], lapping up your precum with a hunger for more. Hir raspy, feline tongue is very stimulating, as is the warm, soft feel of hir bosom around your meat. Hir paws stroke over the lower portion of your [if cocks of player is 1]cock[else]cocks[end if] and fondle your balls, working to attend to as much of your as shi can manage.";
				if cock length of player > 23:				[Extra-huge for add-on]
					say "     You grind your hips down overtop of hirs, rubbing your balls against hir and pressing hir smaller cock underneath your much more massive meat. Shi mewls and wiggles hir hips, rocking hir softly-barbed cock against the underside of your shaft, further stimulating you.";
				say "     Eventually, your excitement builds to the breaking point and you unload. Your hot seed shoots across hir face and into hir open muzzle. Shi has it open wide, tongue hanging out to catch as much as shi can. Your seed paints white streaks across hir orange, striped face. As shi runs hir tongue across hir creamy muzzle, you can feel hir shaft throb under you, followed by the hot rush of tigercum spraying onto you.";
			let diceroll be a random number from 1 to 125; [lust check vs 125]
			if diceroll < libido of player:
				say "[line break]     Having gotten good and wound up after that, you feel you're still ready for a second go and nudge the tigress over. Shi rolls onto all fours eagerly, arching up hir tail and wiggling hir rear in anticipation. You eye hir sexy rump, running your hands over it, looking at hir hot, dripping pussy. That's more than enough to get you fully hard again and you move into position atop hir.";
				if cock length of player < 16:				[Yes = not huge cock]
					say "     Lining up your [cock size desc of player] [cock of player] shaft with hir pussy, you ease forward, enjoying the feel of hir wet folds wrapping around you. You sink in slowly until you're fully sheathed inside hir. Hir inner walls squeeze down around your cock, urging you to start fucking her - and you do with fast, hard strokes. Having already blown your load once, you have a good, long screw with the eager feline whore.";
					say "     Hir cock blasts hot feline seed across the mattress when you finally blast your hot load into hir. The quivering of hir vaginal muscles around your throbbing [cockname of player] cock ensures you have a good, long orgasm, draining your balls for all you'll give.[if cocks of player is 2] With one cock stuffed inside of hir, the other one ends up shooting its hot seed across hir shapely body, covering hir striped fur in more streaks of your thick seed.[else if cocks of player > 2] With one cock stuffed inside of hir, the others end up shooting their hot seed across hir shapely body, covering hir striped fur in more streaks of your thick seed.[end if]";
				else:								[No = huge cock]
					say "     While you're too large for hir to take, you still need some extra relief. You grind your hefty shaft against hir shapely bottom and along hir back, pressing it between you both. Hir fur feels so nice against your sensitive flesh and your balls slap firmly against hir pussy. Shi mewls and pushes back firmly each time you thrust particularly hard and your balls slap hir wet folds. Shi kneads hir paws at the mattress. Having already blown your load once, you stroke yourself against the feline whore's tight rear and strong, flexible back.";
					say "     When you finally peak, you blast hot cum across hir body and onto the back of hir head with the first shot. Sitting back up, you shoot a few more onto hir as you move back to spray onto that cute bubble-butt. You line up [if cocks of player > 1]one of[end if] your spurting [cockname of player] [if cocks of player is 1]penis[else]penises[end if] with hir pussy, pushing your glans against those wet folds and spraying your hot seed onto it, forcing as much in as you can. Hir cock blasts hot feline seed across the mattress when you finally blast your hot load into hir. The quivering of hir pussy lips around your tip ensures you have a good, long orgasm, draining your balls for all you'll give.";
				decrease libido of player by 25; [Satisfied by sex...]
				if libido of player < 0:
					now libido of player is 0;
				say "     Having had your fun, you nibble hir ear and fondle hir breast before rising off the mattress. Gathering your things, you leave the well-used tigress in hir alley, covered in cum and juices. You smile, feeling quite satisfied for now.";
			else:
				say "     Having had your fun, you get up slowly and stroke over hir ears before you get off the mattress and leave the alley behind. Feeling somewhat satisfied for now, your loins warm with the thoughts of finding another of these sexy felines to play with as you see fit."; [Male no-sex ending]
		else:
			say "     Hurrah! Neuter! WTF! Can't have sex with no junk!";
	else:
		say "     You feel the pull of your arousal, but resist giving in, leaving hir to hir own devices. With a cursory glance for trouble, you head on your way, blocking out the mewling moans of the unsatisfied tigress.";
	now tigressclient is 0;
	now tigressfucked is 0;
	now tigresswinner is 1;
	stop the action;


to say paymentcheck:
	now tempnum is 0; [reset payment flag again, jic]
	if gryphon milk is owned:
		say "     Finding a container of gryphon milk, shi smiles happily. 'Ooo! Cream for the kitty.' Shi opens it and sniffs. 'Birdy milk at that. That makes for a happy kitty!' Keeping hir find as payment, shi leans down and gives you a kiss on the cheek for bringing hir such a tasty treat.";
		delete gryphon milk;
	else if dolphin milk is owned:
		say "     Finding a container of dolphin milk, shi smiles happily. 'Ooo! Cream for the kitty.' Shi opens it and sniffs. 'Fishy milk at that. That makes for a happy kitty!' Keeping hir find as payment, shi leans down and gives you a kiss on the cheek for bringing hir such a tasty treat.";
		delete dolphin milk;
	else if panther milk is owned:
		say "     Finding a container of panther milk, shi smiles happily. 'Ooo! Cream for the kitty.' Shi opens it and sniffs. 'You brought kitty milk for the kitty. That makes for a happy kitty!' Keeping hir find as payment, shi leans down and gives you a kiss on the cheek for bringing hir such a tasty treat.";
		delete panther milk;
	else if cheetah milk is owned:
		say "     Finding a container of cheetah milk, shi smiles happily. 'Ooo! Cream for the kitty.' Shi opens it and sniffs. 'You brought kitty milk for the kitty. That makes for a happy kitty!' Keeping hir find as payment, shi leans down and gives you a kiss on the cheek for bringing hir such a tasty treat.";
		delete cheetah milk;
	else if cow milk is owned:
		say "     Finding a container of cow milk, shi smiles happily. 'Ooo! Cream for the kitty.' Shi opens it and sniffs. 'Good old cow milk, rich and creamy. That makes for a happy kitty!' Keeping hir find as payment, shi leans down and gives you a kiss on the cheek for bringing hir such a tasty treat.";
		delete cow milk;
	else if chocolate milk is owned:
		say "     Finding a container of white chocolate milk, shi smiles happily. 'Ooo! Cream for the kitty.' Shi opens it and sniffs. 'Oh my, creamy white chocolate milk! The matron will be so pleased with me!' Keeping hir find as payment, shi leans down and gives you a kiss on the cheek for bringing hir such a tasty treat.";
		delete chocolate milk;
	else if vixen milk is owned:
		say "     Finding a container of vixen milk, shi smiles happily. 'Ooo! Cream for the kitty.' Shi opens it and sniffs. 'Ugh! It smells like medicine and musky vixens. Maybe we can boil that fox smell out of it,' shi muses. Keeping hir find as payment, shi sets your backpack aside.";
		delete vixen milk;
	else if dog milk is owned:
		say "     Finding a container of dog milk, shi smiles happily. 'Ooo! Cream for the kitty.' Shi opens it and sniffs. 'Ugh, it smells of dog. Well, it's still milk, so I'll take it! Maybe we can boil that dog smell out of it,' shi muses. Keeping hir find as payment, shi sets your backpack aside.";
		delete dog milk;
	else if Fish is owned:
		say "     Finding the fish you've wrapped in old newspaper, shi smiles happily. 'Ooo! Tasty feesh! We'll be eating well back at the motel tonight,' shi rumbles happily. Keeping hir find as payment, shi leans down and gives you a kiss on the cheek for bringing hir such a tasty treat.";
		delete Fish;
	else if soda is owned:
		say "     Finding a can of soda, shi smiles happily. 'Hey! This is my favorite flavor. I haven't been able to find one for days.' Keeping hir find as payment, shi sets your backpack aside.";
		delete soda;
	else if water bottle is owned:
		say "     Finding a water bottle, shi pulls it out. 'Here we go. We always need more fresh water.' Keeping hir find as payment, shi sets your backpack aside.";
		delete water bottle;
	else if dirty water is owned:
		say "     Finding a bottle of dirty water, shi pulls it out. 'Here we go. I was getting a little thirsty working out here.' Keeping hir find as payment, shi sets your backpack aside.";
		delete dirty water;
	else if chips is owned:
		say "     Finding a bag of chips, shi smiles. 'Hey! This is my favorite flavor. I thought they'd discontinued it, but you found one.' Keeping hir find as payment, shi leans down and gives you a kiss on the cheek for bringing hir such a tasty treat.";
		delete chips;
	else if food is owned:
		say "     Finding some food in your pack, shi pulls it out. 'Things have been getting a little lean back at the motel. It'll be good to have a full meal.' Keeping hir find as payment, shi sets your backpack aside.";
		delete food;
	else if motel key is owned:
		say "     Digging all the way to the bottom of your pack in search of something of interest, shi finds a motel key down there. 'Oh my! Where did you find this? We were worried it was lost. Thanks for finding and returning it, sweetie,' shi purrrs, kissing your cheek and giving you a playful grope.";
		delete motel key;
	else:										[No payment. Smacked around, then raped.]
		say "     Having gone through your whole bag and having found nothing of interest to hir, shi growls and slams the bag into your face. As you yell out, shi grabs your throat, silencing your cry. 'Trying to get a little fun with the kitty without paying the price? Well, I'll give you all the hot tigress you can take, you little fool.' Shi growls again, kneeing you in the gut before slamming you up against the brick face of one of the buildings. Shi seems even stronger in hir anger and you are unable to stop hir sudden assault.";
		say "     Before you have a chance to recover, hir teeth are at the back of your neck and hir throbbing cock grinds against your rear. You look for a means to escape, but those sharp teeth keep you in place. Then suddenly it's too late and the tigress's cock is pushing into your back door, spreading your tailhole open painfully fast. Shi gives you no time to adjust to the rapid intrusion, pounding you in quick, hard strokes. Despite yourself, you start to grow aroused from the assfuck you're receiving, but shi holds your arms tightly to the wall, preventing you from tending to your growing arousal.";
		say "     Eventually, you feel the hot blast of hir cum inside you and you moan in pleasure. You hope shi'll let you get off now, but shi just holds you to the wall, growling softly. Growing fearful, you continue to wait, wiggling your rear over hir cock for what little stimulation you can get without rubbing your tender flesh against the rough brick wall. Suddenly, your bowels are filled with a rush of stinging fluid, painful to your abused hole. As shi withdraws, shi continues to empty hir bladder, pissing across your butt. Shi shoves you to the ground, then finishes draining hirself all over your battered body.";
		say "     Painfully grabbing you by the neck and ass, claws sinking into your flesh, shi tosses you from the alley. Shi gives you a final kick to send you on your way. You are left a dirty mess, reeking of hir scent and painfully aroused from the rough sex without relief.";
		decrease HP of player by 20;
		increase libido of player by 15; [Increase libido because shi doesn't let you get off...]
		if libido of player > 100:
			now libido of player is 100;
		decrease humanity of player by 12; [...and give in a lot more]
		infect; [Added infection as punishment]
		now tempnum is 1; [Temporarily marks lack of payment for use in losetotigress]
		now stiffedpayment is 1; [Permanenly marks failure to pay]


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
   Choose a blank row from Table of random critters;
   now name entry is "Tigress Hooker"; [Name of your new Monster]
   now attack entry is "[one of]Slamming hir shoulder into you, shi pushes you back against a nearby wall, grabbing your groin![or]Punched in the gut, you reflexively bend forward, allowing hir to bury your face in hir cleavage![or]The tigress grabs you in a reverse arm lock and grinds the hard bulge under hir skirt against your rear until you can twist free![or]You have but a moment to awe at the tigress's flexibility before that kick strikes you upside the head! Dazed, you try to get up, only to have hir press your face under hir skirt and against hir pink panties![or]After several quick slashes of hir claws, shi grabs your shoulders and pulls you forward into an equally fierce kiss![or]With a judo throw, shi tosses you to the ground, then pounces atop you, nipping along your neck with a rumbling purr! As you roll away, shi manages to grab your ass one last time![at random]";
   now defeated entry is "[beattigress]";
   now victory entry is "[losetotigress]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
   now desc entry is "[tigress_desc]"; [ Description of the creature when you encounter it.]
   now face entry is "now a feminine tiger face and long, flowing hair. Your hair is raven black and curls lightly at the ends as it drapes across your shoulders, framing your pretty, blue eyes"; [ Face description, format as the text "Your face is (your text)."]
   now body entry is "curvaceous and desirable, moving with feline fluidity. Your body moves sensually with every step, drawing in the eye of all who see you. Your hands are human in shape, but with feline claws, paw pads and fur"; [ Body Description, format as the text "Your Body is (your text)"]
   now skin entry is "ivory white fur streaked with tiger stripes that covers your"; [ skin Description, format as the text "You have (your text) skin"]
   now tail entry is "From your rear emerges a long, white tail with black stripes banding the fur. It flicks behind you with [one of]concealed nervousness[or]excitement[or]lustful playfulness[at random]."; [ Tail description, write a whole Sentence or leave blank. ]
   now cock entry is "ebon feline"; [ Cock Description, format as you have a 'size' (your text) cock]
   now face change entry is "it shifts and changes, forming a short muzzle. Your new nose and muzzle twitch as your whiskers grow in. Though you cannot see them yet, somehow you know your eyes have turned a pale, icy blue. Long, luscious black hair flows down, curling lightly to give you a full and sexy locks. You can feel your ears shifting, poking free as they become cute and tiger-like"; [ face change text. format as "Your face feels funny as (your text)." ]
   now body change entry is "it shifts, growing tighter here, wider there. Your limbs and body stretch with feline flexibility as they move become those of a sexy tiger. Delicate, hand-like paws replace your current hands. They are nimble and you feel the urge to please someone with their touch. They also hide sheathed claws, waiting to sink into those who displease you. Your body starts giving off a subtle scent, like that of expensive perfume"; [ body change text. format as "Your body feels funny as (your text)." ]
   now skin change entry is "soft fur spreads across your body. It is a white as pure as driven snow and sensually soft and silky to the touch. Even as you start to examine it, deep black stripes start to spread through it, leaving you covered in tiger-striped fur"; [ skin change text. format as "Your skin feels funny as (your text)." ]
   now ass change entry is " shivers of delight run down your spine. You can feel it growing, extending out into a long tiger-like tail. As it does, your bottom shifts and tightens into a cute, firm bubble-butt. As you rub your hand over it, you feel the urge to find a nice cock to fill it"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
   now cock change entry is "it becomes dark, almost black in color. Shifting shape, it grows soft, stimulating barbs and a tapered glans. As you watch, your new shaft is bundled up in a softly-furred sheath which spreads down to cover your ballsack as well. You look forward to putting this new piece of meat to work"; [ cock change text. format as "Your cock feels funny as (your text)" ]
   now str entry is 14;
   now dex entry is 20;
   now sta entry is 14;
   now per entry is 14;
   now int entry is 12;
   now cha entry is 18;
   now sex entry is "Both"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
   now HP entry is 55;
   now lev entry is 5; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
   now wdam entry is 7; [Amount of Damage monster Does when attacking.]
   now area entry is "Red"; [ Location of monster, in this case Red Light District ]
   now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
   now cock length entry is 9; [ Length infection will make cock grow to if cocks]
   now cock width entry is 5; [ Size of balls apparently ;) sneaky Nuku]
   now breasts entry is 2; [ Number of Breasts infection will give you. ]
   now breast size entry is 4; [Size of breasts infection will try to attain ]
   now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
   now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
   now cunt length entry is 12;
   now cunt width entry is 4;
   now libido entry is 0; [ Set to zero in this monster to control elsewhere ]
   now loot entry is "motel key"; [ Dropped item. Key will be used later ]
   now lootchance entry is 75; [ Chance of loot dropping 0-100 ]
   now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
   now body descriptor entry is "[one of]sultry[or]alluring[or]curvaceous[or]flexible[at random]";
   now type entry is "feline"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
   now magic entry is false;
   now resbypass entry is false;
   now non-infectious entry is false;
   blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
   now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

Table of Game Objects (continued)
name	desc	weight	object
"motel key"	"You see a motel room key dangling from a red key fob."	0	motel key

motel key is a grab object.
it is part of the player.
It is not temporary.

instead of using motel key:
	say "You fiddle with the motel key. You look it over, but find no indication which motel it is for or where to find it.";

the scent of motel key is "Motel keys smell of cheap perfume and one night stands.".

Tigress Hooker ends here.
