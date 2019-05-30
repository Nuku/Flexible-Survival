Version 2 of Tigress Hooker by Stripes begins here.
[Version 2.2 - Hard Mode adjustment]
"Adds a Tigress Hooker creature to Flexible Survival's Wandering Monsters table, with impreg chance and resource loss"


Section 1 - Creature Responses

tempnum is a number that varies.
tigresswinner is a number that varies.	[marked as having won last time - used later]
tigressfucked is a number that varies.	[marked as having lost last time - used later]
tigressclient is a number that varies.	[marked as having submitted last time - used later]
stiffedpayment is a number that varies.	[marked as having failed to pay the fee - used later]
mqfightresult is a number that varies.	[ 1 = win / 2 = lose / 3 = fled (unchanged) ]

to say tigress_desc:
	setmongender 5; [creature is herm]
	choose row MonsterID from the Table of Random Critters;
	let debit be 0;
	if mqstatus is 3:				[fighting tigresses at the motel]
		say "     The lovely tigress is quite upset at the intruder to her motel home. she growls angrily and readies to deal with you soundly so she can have her way with you and put you in your place. Under hir.";
		if hardmode is true and level of Player > 5, let debit be level of Player - 5;
		now HP entry is 55 + ( debit * 4 );
		now monsterHP is 55 + ( debit * 4 );
		now wdam entry is 7 + ( debit / 3 );
		now lev entry is 5 + debit;
		now libido entry is 100;
	else if mqstatus is 6:				[fighting the matron]
		say "     The tigress matron of the motel is a larger and more impressive female. Shi's got an extra foot of height on any of her girls and a much fuller rack as well. her long, flowing orange hair swishes as she pulls off the bathrobe she was wearing, baring her strong and sensual body to you. she looks at you with a strange expression, clearly not pleased that you've burst in here after hurting several of her girls, but eager to put you in your place. her dark nipples and cock are hard with her anticipation of enjoying a new plaything.";
		if hardmode is true and level of Player > 8, let debit be level of Player - 8;
		now HP entry is 90 + ( debit * 6 );
		now monsterHP is 90 + ( debit * 6 );
		now wdam entry is 12 + ( ( 4 * debit ) / 11 );
		now lev entry is 8 + debit;
		now libido entry is 100;
	else:					[standard tigress]
		say "     Leaning against a building is a striking female feline. She is wearing a skimpy outfit, a short top and even shorter skirt. This lets you see the soft orange tiger fur that covers her attractive body, rich with black stripes. Her bosom and stomach have snowy, white fur that covers them. Her ears have [one of]large hoop earrings[or]a trio of small studs[or]tattoos of stars on the inside[or]long, dangling earrings[at random]. Her [one of]long black hair is held in a pony tail[or]hair is dyed a bright red[or]orange hair is styled into fiery mane[or]dark hair has been bleached blond, though you can see the darker roots.[or]hair is neon pink and very long, hanging to her waist[or]hair is a deep blue, with green tips[at random].";
		say "     Spotting you before you can move away, she flicks her cigarette aside and sizes you up quickly. 'So honey, you lookin['] for a little fun? For a little something, I'll show you a good time.' As she steps up, you catch the edge of something extra making a bulge under her skirt. Clearly this tigress hooker is equipped to pleasure any client she may find. And shi's found you!";
		if hardmode is true and level of Player > 5, let debit be level of Player - 5;
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
	if HP of Player > 0:									[DID THE PLAYER SUBMIT? - YES]
		if junknum is 0:									[Normal encounter]
			say "     As you accept her offer, she moves up to you with a lustful smile. Rumbling and purring as she rubs her body against yours, she guides you into a shadowy alleyway as she starts releasing the easy straps on her street clothes. There's an old mattress in there, and judging from the smell, shi's used it for her clients before. As she guides you towards it, she nuzzles along your neck and slides your backpack's straps off your shoulders. As she helps you with your remaining clothes with one paw and a smile, her other dips into your pack, searching for something to take as payment.";
			say "[paymentcheck][line break]"; [Put forth a payment]
			if tempnum is 1:
				stop the action;
		if junknum is 1:									[Special junkyard encounter - freebie]
			say "     As you agree to her offer, she gives you a lustful smile before nuzzling at your neck. Rumbling and purring as she rubs her body against yours, she guides you to the discarded mattress as she starts releasing the easy straps on her street clothes. As you move with hir, she nuzzles along your neck and slides your backpack's straps off your shoulders and sets it aside, not bothering to look for a payment this time. Your help has been payment enough for this romp.";
			now junknum is 0;
		if Player is herm:				[Yes = HERM Identified!]
			say "     she presses you down onto the mattress looks her client over with a predatory rumble, particularly pleased at the prospects of servicing you, both john and jane in one. she lowers hirself onto the mattress atop you and rubbing her body against yours. her soft striped fur running along your body, she moves to licking and nibbling along your neck. You can feel her sharp, feline fangs along your skin, but she is very careful and only gives you the lightest nips, which feel exquisite. You can feel the warm bulge of her sheath and the wet touch of her emerging cock as it bumps against yours. she moves a paw down to stroke your [CockName of Player] cock[smn] as she nibbles and nuzzles her way down your chest and belly. As she slides down, her paw drifts over your balls and to your wet slit, diving into it.";
			say "     With her muzzle between your legs, she starts licking and kissing your cock[smn]. her raspy tongue slides along your sensitive [Cock of Player] penis and lavishes attention on it. [if Cock Count of Player > 1]As you have multiple cocks for her to tend to, she sets to work on the lower one with her muzzle and the other(s) with her right paw. [end if]Hir left paw is between your legs, working in and out of your wet [if Cunt Count of Player > 1]pussies['] lips[else]pussy's lips[end if]. The herm moans and mewls lustfully as she lavishes attention upon both your male and female genitals. her muzzle moves from time to time to your dripping puss[yfn], but is always drawn back to your cock[if Cunt Count of Player > 1]. While her tongue ends to your upper slit, her right paw is working away at the other(s), making sure they're not neglected in any way[end if].";
			increase Libido of Player by 10; [Oral submission increases Libido]
			if Libido of Player > 100:
				now Libido of Player is 100;
			if Cock Length of Player < 5:						[Cock size check begins - small]
				say "     Your [cock size desc of Player] [Cock of Player] cock easily fills her muzzle and she works her broad tongue all over it at once. she licks and sucks on it with as much enthusiasm as she would any other, if not more to make you still feel strong and virile. Clearly having a lot of practice, she polishes your rod until your throbbing hard, ready to blow. she then eases off, pulling her muzzle back to lick and kiss your [Ball Size Adjective of Player] [Balls] for a while before moving to your shaft once again.";
				say "     she sucks firmly at your cock now, tongue not letting up for a moment as she does, fingering your pussy hard and fast as well. Eventually, you can take no more and cum, pumping your hot load into her muzzle. Your load coats her tongue and flows down her throat as she drinks it down with a lustful moan.";
			else if Cock Length of Player < 9:				[Cock size check - medium]
				say "     Your [cock size desc of Player] [Cock of Player] cock fills her muzzle quite nicely, giving her a pleasant muzzleful to lick and suck lustfully. her tongue plays up and down it, teasing your glans and sliding along your shaft as her muzzle bobs up and down along your length. Clearly having a lot of practice, she polishes your rod until your throbbing hard, ready to blow. she then eases off, pulling her muzzle back to lick and kiss your [Ball Size Adjective of Player] [Balls] for a while before moving to your shaft once again.";
				say "     she sucks firmly at your cock now, tongue not letting up for a moment as she does, fingering your pussy hard and fast as well. Eventually, you can take no more and cum, pumping your hot load into her muzzle. Your load coats her tongue and flows down her throat as she drinks it down with a lustful moan.";
			else if Cock Length of Player < 13:				[Cock size check - large]
				say "     Your [cock size desc of Player] [Cock of Player] fills her muzzle quite full, but she takes it in with practiced ease, moaning as it slides smoothly down her throat. her tongue plays up and down it, teasing your glans and sliding along your shaft as her muzzle bobs up and down along your length. Clearly having a lot of practice, she polishes your rod until your throbbing hard, ready to blow. she then eases off, pulling her muzzle back to lick and kiss your [Ball Size Adjective of Player] [Balls] for a while before moving to your shaft once again.";
				say "     she sucks firmly at your cock now, tongue not letting up for a moment as she does, fingering your pussy hard and fast as well. Eventually, you can take no more and cum, pumping your hot load into her muzzle. Your load coats her tongue and flows down her throat as she drinks it down with a lustful moan.";
			else:									[Cock size check - fuggin' huge]
				say "     Finding your [cock size desc of Player] [Cock of Player] too big even for her practiced muzzle, she takes to licking and kissing all over it, paying particularly strong attention to the sensitive tip and leaking cumslit. her raspy tongue plays all over it as she presses her softly furred breasts against your shaft. Clearly having a lot of practice, she polishes your [CockName of Player] rod until your throbbing hard, ready to blow. she then eases off, pulling her muzzle back to lick and kiss your [Ball Size Adjective of Player] [Balls] for a while before moving to your shaft once again.";
				say "     Shi's giving your cock a thorough slathering with her rough tongue and fingering your pussy hard and fast as well, which all feels so good along your sensitive flesh. Eventually, the tigress's titfuck is too much for you and you cum hard, spraying your hot semen across her muzzle. After letting you paint her face with a few shots, she presses her muzzle over your cumslit and lets it flow into her muzzle and down her throat with a lustful moan.";
			if Cock Count of Player > 1:							[Yes = multi-cocked player]
				say "     As you fill her muzzle from the one, your other [if Cock Count of Player > 2]cocks send[else]cock sends[end if] spurts of hot cum across your body, leaving you with streaks of your own seed over you.";
			let diceroll be a random number from 1 to 125; [lust check vs 125]
			if diceroll < Libido of Player:
				say "     As the tigress finally moves her head back, she smiles up at you. You smile back at her dazedly, still woozy in the blissful haze of the afterglow, but still feeling quite horny.";
				say "     [bold type]Eyeing her lustfully, your gaze flips back and forth between her penis and her vagina as you struggle to choose which you want most.[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Penis.";
				say "     ([link]N[as]n[end link]) - Vagina.";
				if Player consents:						[Yes = wants cock, fucked by kitty]
					say "[line break]     With a soft moan, you spread your legs and hold your pussy lips open for hir, moaning as you eye her waiting cock. 'Do me,' you say with a lustful rumble in your voice. 'I want more, kitty.' More than happy to give her client what she wants, the tigress smiles lustfully back at you.";
					say "     Moving atop you, she lines up her cock with your wet folds and starts to sink her barbed shaft into you. After the long session preparing you, she has little trouble sliding hirself into you and sets to pounding at your already soaked [BodyName of Player] pussy. she plants her left paw beside you, gripping the mattress firmly in her claws for support as she drives her throbbing member into again and again. her right paw strokes your [if Cock Count of Player > 1]cocks, each in turn, [else]cock [end if]as she pounds you lustfully.";
					say "     Rubbing her body against yours, soft striped fur running along your [Skin of Player] form, she moves to licking and nibbling along your neck while sandwiching your cock[smn] between you. You can feel her sharp, feline fangs along your skin, but she is very careful and only gives you the lightest nips, which feel exquisite. The barbed cock is in no way painful, only small bumps that tingle along your walls as she thrusts, building you towards climax again. her rumbling and purring grows louder and deeper until she climaxes, pumping her hot feline seed into you. You can feel it warming you deep inside as she gives you another orgasm that sends your hot seed to soak your chests.[impregchance]";
					say "     Once shi's finally drained her balls into you and filled you with tigercum, she withdraws with a soft, satisfied mew. she moves up and rubs her cum-slick cock against your [character number Breast Size of Player in cupsize] cup breasts, smearing her cum into the sticky mess of your own, as if marking you as one of her clients. she then rises slowly and helps you up, a little woozy hirself. she gives your rump a firm squeeze with one paw, rubs the other over your belly, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, she gives your rear a swat, telling you to come back soon.";
				else:								[No = wants pussy, fucks the kitty]
					say "[line break]     With a soft moan, you rub over your [CockName of Player] [if Cock Count of Player > 1]cocks, keeping them[else]cock, keeping it[end if] from growing fully soft and coaxing your erection back. 'Now there, sexy kitty. I'm not done with you yet.' With a lustful smile back down at you, she licks her lips and moves to straddle your hips."; [Male sex if fail check]
					if Cock Length of Player < 16:			[Cock size check - not huge]
						if Cock Count of Player > 2:
							say "     she takes a hold of two of your cocks and lines them up with her wet pussy and tailhole, mrrowling in delight as she sinks down onto them slowly. She whimpurrrs a little as she pushes you into both her front and back passage as once, but her cock rises to full erection almost immediately. she takes a hold of your third cock begins stroking alongside hirs. You can feel the tight grip of her inner walls as they squeeze down around your [cock size desc of Player] [Cock of Player] cocks.";
							say "     her breasts bounce as she rides in your lap and her cock slaps against your belly, drooling precum onto it. she kneads her left paw over your chest and rumbles louder and louder as she rides you hard. her right finds it way under her to stroke your puss[yfn]. You can feel her hot juices leaking down over your [Cock of Player] and feminine folds as her pussy and anus squeeze and milks at them.";
							say "     Having already blown your load once, you have a good long screw with the eager feline whore. her cock blasts hot feline seed across your chest twice to add to the mess of your own seed already there, as if marking you as one of her clients. The quivering of her vaginal and anal muscles around you as she climaxes the second time is enough to finally push you over the edge as your hot cum into her as well. she yowls lustfully as your hot seed flows into hir, filling both her womb and her bottom with your warmth. Your third cock shoots fresh cum across your chest, leaving you thoroughly soaked in a mix of the tigress's seed and your own.";
							say "     Once you both are finally drained, she eases hirself off your cocks with a soft, satisfied mew and helps you up, quite woozy hirself. she gives your rump a firm squeeze with one paw, rubs the other over your cocks, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, she gives your rear a swat, telling you to come back for more soon.";
						else if Cock Count of Player is 2:
							say "     she takes a hold of your twin cocks and lines them up with her wet pussy and tailhole, mrrowling in delight as she sinks down onto them slowly. She whimpurrrs a little as she pushes you into both her front and back passage as once, but her cock rises to full erection almost immediately. You can feel the tight grip of her inner walls as they squeeze down around your [cock size desc of Player] [Cock of Player] cocks.";
							say "     her breasts bounce as she rides in your lap and her cock slaps against your belly, drooling precum onto it. she kneads her left paw over your chest and rumbles louder and louder as she rides you hard. her right finds it way under her to stroke your puss[yfn]. You can feel her hot juices leaking down over your [Cock of Player] and feminine folds as her pussy and anus squeeze and milks at them.";
							say "     Having already blown your load once, you have a good long screw with the eager feline whore. her cock blasts hot feline seed across your chest twice to add to the mess of your own seed already there, as if marking you as one of her clients. The quivering of her vaginal and anal muscles around you as she climaxes the second time is enough to finally push you over the edge as you shoot your hot cum into her as well. she yowls lustfully as your hot seed flows into hir, filling both her womb and her bottom with your warmth.";
							say "     Once you both are finally drained, she eases hirself off your cocks with a soft, satisfied mew and helps you up, a little woozy hirself. she gives your rump a firm squeeze with one paw, rubs the other over your cocks, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, she gives your rear a swat, telling you to come back soon.";
						else:
							say "     she takes a hold of your cock and lines it up with her wet pussy, mrrowling in delight as she sinks down onto it. You can feel the wet grip of her inner walls as they squeeze down around your [Cock of Player]. her breasts bounce as she rides in your lap and her cock slaps against your belly, drooling precum onto it. she kneads her left paw over your chest and rumbles louder and louder as she rides you hard. her right finds it way under her to stroke your puss[yfn]. You can feel her hot juices leaking down over your [Cock of Player] and feminine folds as her cunt squeezes and milks at it.";
							say "     Having already blown your load once, you have a good long screw with the eager, feline whore. her cock blasts hot feline seed across your chest twice, as if marking you as one of her clients. The quivering of her vaginal muscles around you as she climaxes the second time is enough to finally push you over the edge as you shoot your hot cum into her as well.";
							say "     Once you both are finally drained, she eases hirself off your cock with a soft, satisfied mew and helps you up, a little woozy hirself. she gives your rump a firm squeeze with one paw, rubs the other over your cock, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, she gives your rear a swat, telling you to come back soon.";
					else:							[cock size check - huge -> sneaky get fucked!]
						say "     The tigress rubs her pussy against your penis[esmn], mewling in disappointment - shi'd never be able to fit such a monstrous cock into hir, as much as shi'd like to try. she grinds her wet folds and smaller cock against the base of your shaft[smn] and clutches your length[smn] to her chest, titfucking you once again. she licks and kisses at it as her soft, warm breasts rub against your cockflesh. You can feel the throb of her hard cock and the wet touch of her dripping pussy against your balls as she works you steadily higher.";
						say "     With a playful grin, she shifts her hips a little and you feel her cock nudge against your wet folds. You moan loudly, then try to tell her to stop, as you'd not asked for that, but then shi's sinking that barbed, feline cock into you and you find yourself unable to object further. After the long session preparing you, she has little trouble sliding hirself into you and sets to pounding at your already soaked cunny.";
						say "     she grips her arms around your massive [CockName of Player] member[smn] for support and continues the titfuck even as she fucks you hard and fast. The barbed cock is in no way painful, only small bumps that tingle along your walls as she thrusts, building you towards climax again. her rumbling and purring grows louder and deeper until she climaxes, pumping her hot feline seed into you. You can feel it warming you deep inside as she gives you another orgasm that sends your hot seed to splashing across her muzzle.[impregchance]"; [Herm sneaky-sex!]
						say "     Once shi's finally drained her balls into you and filled you with tigercum, she withdraws with a soft, satisfied mew. she moves up and rubs her cum-slick cock against your [character number Breast Size of Player in cupsize] cup boobs, smearing her cum into the sticky mess of your own, as if marking you as one of her clients. she then rises slowly and helps you up, a little woozy hirself. she gives your rump a firm squeeze with one paw, rubs the other over your cum-filled belly, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, she gives your rear a swat, telling you to come back soon.";
						increase Libido of Player by 5; [Sneaky sex makes you extra-horny]
						if Libido of Player > 100:
							now Libido of Player is 100;
				decrease Libido of Player by 20; [Somewhat satisfied by sex...]
				if Libido of Player < 0:
					now Libido of Player is 0;
				decrease humanity of Player by 3; [...but give in a little more]
			else:
				say "     As the tigress finally moves her head back, she smiles up at you. You smile back at her dazedly, still woozy in the blissful haze of the afterglow. she moves to sit atop your waist and grind her wet, dripping pussy lips along your spent shaft while pumping at her cock intently. Soon shi's pumping hot tigress cum all over your chest[if Cock Count of Player > 1] to add to the mess of your own seed already there[end if], as if marking you as one of her clients. Now spent hirself, she has you up and on your way with a kiss on the cheek and a squeeze on the bottom, asking you to come back again soon. You feel a touch of excitement in your loins, lustfully looking forward to meeting up with another of these sexy felines.";
		else if Player is female:		[Yes = FEMALE Identified!]
			say "     she presses you down onto the mattress looks her client over with a predatory rumble. she lowers hirself onto the mattress and bring her muzzle to your [character number Breast Size of Player in cupsize] cup bosom. her raspy tongue plays over your [SkinName of Player] flesh as she licks and kisses at your chest. While tending to your hard nipples, she moves her paw between your legs to stroke the wet lips of your puss[yfn]. she dips them in slowly and starts to stroke your vaginal walls, working to find all the spots that excite you. Quite adept at her work, you find yourself growing to a quick climax which soaks her paw in your juices.";
			say "     As you shiver with the tingles of your orgasm running through you, she slides down your [BodyName of Player] body and buries her muzzle between your legs, licking at your juicy folds. her rough, feline tongue sends new waves of pleasure through you. It dives deep into you, once again finding those pleasure spots and ravaging them, intent on giving her jane a fine romp[if Cunt Count of Player > 1]. While her tongue ends to your upper slit, her right paw is working away at the other, making sure it is not neglected in any way[end if].";
			say "     her left paw is firmly wrapped around her cock, stroking and pumping it as she works your honeypot with practiced intent. her shaft looks to be about nine inches in length and dribbles pre as she works her paw along it. It is a dark red with a pointed glans and small bumps along it. This time, she eases off repeatedly as you start to build close to orgasm, having roughly gauged the signs from your first and letting you instead build over and over. You are soon moaning and whimpering with need, much to her satisfaction.";
			say "     When the climax finally comes, it hits you like a tidal wave, washing through your body even as your hot juices spray across her muzzle. her tail lashes excitedly while her tongue goes from patiently working your cunny to lapping up your sweet nectar eagerly. Your climax is long and powerful, drawn out by the rough tongue trying to get every drop it can from you.";
			increase Libido of Player by 10; [Oral submission increases Libido]
			if Libido of Player > 100:
				now Libido of Player is 100;
			let diceroll be a random number from 1 to 125; [lust check vs 125]
			if diceroll < Libido of Player:
				say "[line break]     As the tigress finally moves her head back, she smiles up at you. You smile back at her dazedly, still woozy in the blissful haze of the afterglow, but still feeling quite horny. With a soft moan, you spread your legs and hold your pussy lips open for hir, moaning as you eye her waiting cock. 'Do me,' you say with a lustful rumble in your voice. 'I want more, kitty.' More than happy to give her client what she wants, the tigress smiles lustfully back at you.";
				say "     Moving atop you, she lines up her cock with your wet folds and starts to sink her barbed shaft into you. After the long session preparing you, she has little trouble sliding hirself into you and sets to pounding at your already soaked pussy. she plants her paws on either side of you, gripping the mattress firmly in her claws for support as she drives her throbbing member into again and again.";
				say "     Rubbing her body against yours, soft striped fur running along your [BodyName of Player] body, she moves to licking and nibbling along your neck. You can feel her sharp, feline fangs along your skin, but she is very careful and only gives you the lightest nips, which feel exquisite. The barbed cock is in no way painful, only small bumps that tingle along your walls as she thrusts, building you towards climax again. her rumbling and purring grows louder and deeper until she climaxes, pumping her hot feline seed into you. You can feel it warming you deep inside as she gives you a third orgasm that nearly knocks you out.[impregchance]";
				say "     Once shi's finally drained her balls into you and filled you with tigercum, she withdraws with a soft, satisfied mew. she moves up and rubs her cum-slick cock against your [character number Breast Size of Player in cupsize] cup boobs, as if marking you as one of her clients. she then rises slowly and helps you up, a little woozy hirself. she gives your rump a firm squeeze with one paw, rubs the other over your belly, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, she gives your rear a swat, telling you to come back soon.";
				decrease Libido of Player by 20; [Somewhat satisfied by sex...]
				if Libido of Player < 0:
					now Libido of Player is 0;
				decrease humanity of Player by 3; [...but give in a little more]
			else:
				say "     As the tigress finally moves her head back, she smiles up at you. You smile back at her dazedly, still woozy in the blissful haze of the afterglow. she moves to sit atop your waist and grind her wet, dripping folds over yours while pumping at her cock intently. Soon shi's pumping hot tigress cum all over your chest, as if marking you as one of her clients. Now spent hirself, she has you up and on your way with a kiss on the cheek and a squeeze on the bottom, asking you to come back again soon. You feel a touch of excitement in your loins, lustfully looking forward to meeting up with another of these sexy felines."; [Female no-sex ending]
		else if Player is male:		[Yes = MALE Identified!]
			say "     she presses you down onto the mattress looks her client over with a predatory rumble. she lowers hirself onto the mattress atop you and rubbing her body against yours. her soft striped fur running along your [SkinName of Player] flesh, she moves to licking and nibbling along your neck. You can feel her sharp, feline fangs along your skin, but she is very careful and only gives you the lightest nips, which feel exquisite. You can feel the warm bulge of her sheath and the wet touch of her emerging cock as it bumps against yours. she moves a paw down to stroke her john's cock[smn] as she nibbles and nuzzles her way down your chest and belly.";
			say "     With her muzzle between your legs, she starts licking and kissing your cock[smn]. her raspy tongue slides along your sensitive [CockName of Player] penis and lavishes attention on it, eager to please her john[if Cock Count of Player > 1]. As you have multiple cocks for her to tend to, she sets to work on the lower one with her muzzle and the other(s) with her right paw[end if].";
			increase Libido of Player by 10; [Oral submission increases Libido]
			if Libido of Player > 100:
				now Libido of Player is 100;
			if Cock Length of Player < 5:						[Cock size check begins - small]
				say "     Your [cock size desc of Player] [Cock of Player] cock easily fills her muzzle and she works her broad tongue all over it at once. she licks and sucks on it with as much enthusiasm as she would any other, if not more to make you still feel strong and virile. Clearly having a lot of practice, she polishes your rod until your throbbing hard, ready to blow. she then eases off, pulling her muzzle back to lick and kiss your [Ball Size Adjective of Player] [Balls] for a while before moving to your shaft once again.";
				say "     her left paw is firmly wrapped around her cock, stroking and pumping it as she works your penis with practiced intent. her shaft looks to be about nine inches in length and dribbles pre as she works her paw along it. It is a dark red with a pointed glans and small bumps along it.";
				say "     she sucks firmly at your cock now, tongue not letting up for a moment as she does. Eventually, you can take no more and cum, pumping your hot load into her muzzle. Your load coats her tongue and flows down her throat as she drinks it down with a lustful moan.";
			else if Cock Length of Player < 9:				[Cock size check - medium]
				say "     Your [cock size desc of Player] [Cock of Player] cock fills her muzzle quite nicely, giving her a pleasant muzzleful to lick and suck lustfully. her tongue plays up and down it, teasing your glans and sliding along your shaft as her muzzle bobs up and down along your length. Clearly having a lot of practice, she polishes your rod until your throbbing hard, ready to blow. she then eases off, pulling her muzzle back to lick and kiss your [Ball Size Adjective of Player] [Balls] for a while before moving to your shaft once again.";
				say "     her left paw is firmly wrapped around her cock, stroking and pumping it as she works your penis with practiced intent. her shaft looks to be about nine inches in length and dribbles pre as she works her paw along it. It is a dark red with a pointed glans and small bumps along it.";
				say "     she sucks firmly at your cock now, tongue not letting up for a moment as she does. Eventually, you can take no more and cum, pumping your hot load into her muzzle. Your load coats her tongue and flows down her throat as she drinks it down with a lustful moan.";
			else if Cock Length of Player < 13:				[Cock size check - large]
				say "     Your [cock size desc of Player] [Cock of Player] cock fills her muzzle quite full, but she takes it in with practiced ease, moaning as it slides smoothly down her throat. her tongue plays up and down it, teasing your glans and sliding along your shaft as her muzzle bobs up and down along your length. Clearly having a lot of practice, she polishes your rod until your throbbing hard, ready to blow. she then eases off, pulling her muzzle back to lick and kiss your [Ball Size Adjective of Player] [Balls] for a while before moving to your shaft once again.";
				say "     her left paw is firmly wrapped around her cock, stroking and pumping it as she works your penis with practiced intent. her shaft looks to be about nine inches in length and dribbles pre as she works her paw along it. It is a dark red with a pointed glans and small bumps along it.";
				say "     she sucks firmly at your cock now, tongue not letting up for a moment as she does. Eventually, you can take no more and cum, pumping your hot load into her muzzle. Your load coats her tongue and flows down her throat as she drinks it down with a lustful moan.";
			else:									[Cock size check - fuggin' huge]
				say "     Finding your [cock size desc of Player] [Cock of Player] cock too big even for her practiced muzzle, she takes to licking and kissing all over it, paying particularly strong attention to the sensitive tip and leaking cumslit. her raspy tongue plays all over it as she presses her softly furred breasts against your shaft. Clearly having a lot of practice, she polishes your rod until your throbbing hard, ready to blow. she then eases off, pulling her muzzle back to lick and kiss your [Ball Size Adjective of Player] [Balls] for a while before moving to your shaft once again.";
				say "     her left paw is firmly wrapped around her cock, stroking and pumping it as she works your penis with practiced intent. her shaft looks to be about nine inches in length and dribbles pre as she works her paw along it. It is a dark red with a pointed glans and small bumps along it.";
				say "     Shi's giving your cock a thorough slathering with her rough tongue, which feels so good along your sensitive flesh. Eventually, the tigress's titfuck is too much for you and you cum hard, spraying your hot semen across her muzzle. After letting you paint her face with a few shots, she presses her muzzle over your cumslit and lets it flow into her muzzle and down her throat with a lustful moan.";
			if Cock Count of Player > 1:							[Yes = multi-cocked player]
				say "     As you fill her muzzle from the one, your other [if Cock Count of Player > 2]cocks send[else]cock sends[end if] spurts of hot cum across your body, leaving you with streaks of your own seed over you.";
			let diceroll be a random number from 1 to 125; [lust check vs 125]
			if diceroll < Libido of Player:
				say "[line break]     As the tigress finally moves her head back, she smiles up at you. You smile back at her dazedly, still woozy in the blissful haze of the afterglow, but still feeling quite horny. With a soft moan, you rub over your [CockName of Player] [if Cock Count of Player > 1]cocks, keeping them[else]cock, keeping it[end if] from growing fully soft and coaxing it back to erection. 'Now there, sexy kitty. I'm not done with you yet.' With a lustful smile back down at you, she licks her lips and moves to straddle your hips.";
				if Cock Length of Player < 16:				[Yes = not huge cock]
					if Cock Count of Player is 1:
						say "     she takes a hold of your [cock size desc of Player] cock and lines it up with her wet pussy, mrrowling in delight as she sinks down onto it. You can feel the wet grip of her inner walls as they squeeze down around your [CockName of Player] member. her breasts bounce as she rides in your lap and her cock slaps against your belly, drooling precum onto it. she kneads her paws over your chest and rumbles louder and louder as she rides you hard. You can feel her hot juices leaking down over your [Cock of Player] shaft as her pussy squeezes and milks at it.";
						say "     Having already blown your load once, you have a good long screw with the eager feline whore. her cock blasts hot feline seed across your chest twice, as if marking you as one of her clients. The quivering of her vaginal muscles around you as she climaxes the second time is enough to finally push you over the edge as you shoot your hot cum into her as well.";
						say "     Once you both are finally drained, she eases hirself off your cock with a soft, satisfied mew and helps you up, a little woozy hirself. she gives your rump a firm squeeze with one paw, rubs the other over your cock, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, she gives your rear a swat, telling you to come back soon.";
					if Cock Count of Player is 2:
						say "     she takes a hold of your twin [cock size desc of Player] cocks and lines them up with her wet pussy and tailhole, mrrowling in delight as she sinks down onto them slowly. She whimpurrrs a little as she pushes you into both her front and back passage as once, but her cock rises to full erection almost immediately. You can feel the tight grip of her inner walls as they squeeze down around your [CockName of Player] members. her breasts bounce as she rides in your lap and her cock slaps against your belly, drooling precum onto it. she kneads her paws over your chest and rumbles louder and louder as she rides you hard. You can feel her hot juices leaking down over your [Cock of Player] as her pussy and anus squeeze and milks at them.";
						say "     Having already blown your load once, you have a good long screw with the eager feline whore. her cock blasts hot feline seed across your chest twice to add to the mess of your own seed already there, as if marking you as one of her clients. The quivering of her vaginal and anal muscles around you as she climaxes the second time is enough to finally push you over the edge as you shoot your hot cum into her as well. she yowls lustfully as your hot seed flows into hir, filling both her womb and her bottom with your warmth.";
						say "     Once you both are finally drained, she eases hirself off your cocks with a soft, satisfied mew and helps you up, a little woozy hirself. she gives your rump a firm squeeze with one paw, rubs the other over your cocks, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, she gives your rear a swat, telling you to come back soon.";
					if Cock Count of Player > 2:
						say "     she takes a hold of two of your [cock size desc of Player] cocks and lines them up with her wet pussy and tailhole, mrrowling in delight as she sinks down onto them slowly. She whimpurrrs a little as she pushes you into both her front and back passage as once, but her cock rises to full erection almost immediately. she takes a hold of your third cock begins stroking alongside hirs. You can feel the tight grip of her inner walls as they squeeze down around your [CockName of Player] members. her breasts bounce as she rides in your lap and her cock slaps against your belly, drooling precum onto it. she kneads one paw over your chest and rumbles louder and louder as she rides you hard while the other strokes over your uppermost cock and hirs. You can feel her hot juices leaking down over your [Cock of Player] as her pussy and anus squeeze and milks at them.";
						say "     Having already blown your load once, you have a good long screw with the eager feline whore. her cock blasts hot feline seed across your chest twice to add to the mess of your own seed already there, as if marking you as one of her clients. The quivering of her vaginal and anal muscles around you as she climaxes the second time is enough to finally push you over the edge as your hot cum into her as well. she yowls lustfully as your hot seed flows into hir, filling both her womb and her bottom with your warmth. Your third cock shoots fresh cum across your chest, leaving you thoroughly soaked in a mix of the tigress's seed and your own.";
						say "     Once you both are finally drained, she eases hirself off your cocks with a soft, satisfied mew and helps you up, quite woozy hirself. she gives your rump a firm squeeze with one paw, rubs the other over your cocks, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, she gives your rear a swat, asking you to come back for more soon.";
				else:								[No = huge cock]
					say "     The tigress rubs her pussy against your penis, mewling in disappointment - shi'd never be able to fit such a monstrous [CockName of Player] cock into hir, as much as shi'd like to try. she grinds her wet folds and smaller cock against the base of your shaft[smn] and clutches your length[smn] to her chest, titfucking you once again. she licks and kisses at it as her soft, warm breasts rub against it. You can feel the throb of her hard cock and the wet touch of her dripping pussy against your balls as she works you steadily until you release again. As you leave streaks of white cum across her striped fur, she cums as well, spraying her hot seed across the base of your cock, which drools down to your balls, enveloping them in her scent.";
					say "     Once you both are finally drained, she eases hirself off of you with a soft, satisfied mew and helps you up, a little woozy hirself. she gives your rump a firm squeeze with one paw, rubs the other over your cock, and kisses you full on the lips, feline tongue filling your muzzle. After breaking the kiss, she gives your rear a swat, telling you to come back soon.";
				decrease Libido of Player by 20; [Somewhat satisfied by sex...]
				if Libido of Player < 0:
					now Libido of Player is 0;
				decrease humanity of Player by 3; [...but give in a little more]
			else:
				say "     As the tigress finally moves her head back, she smiles up at you. You smile back at her dazedly, still woozy in the blissful haze of the afterglow. she moves to sit atop your waist and grind her wet, dripping pussy lips along your spent shaft while pumping at her cock intently. Soon shi's pumping hot tigress cum all over your chest[if Cock Count of Player > 1] to add to the mess of your own seed already there[end if], as if marking you as one of her clients. Now spent hirself, she has you up and on your way with a kiss on the cheek and a squeeze on the bottom, asking you to come back again soon. You feel a touch of excitement in your loins, lustfully looking forward to meeting up with another of these sexy felines."; [Male no-sex ending]
		else:										[No to all = NEUTER Identified!]
			say "     Woo! Huh! Neuter?";
		now tigressclient is 1;
		now tigressfucked is 0;
		now tigresswinner is 0;
	else:											[PLAYER LOST THE FIGHT!]
		say "     Physically battered by the tigress's arousing assault, you sway dazedly over the corner of the nearby building, seeking support to stay upright. Before you can try resisting her assaults further, she grabs you firmly and shoves you into the alleyway. Stumbling, you fall onto a dirty mattress in the shadows of the buildings. With your face buried in it, you find yourself taking in the scent of sex all over it. It is rich with the aromas of various lovers, but most strongly is the scent of tigress. The musky mixture quickly fills you with arousal and you find yourself rubbing your face across the mattress, taking it all in with soft moans of desire.";
		increase Libido of Player by 12; [Default Libido increase of 12...]
		SanLoss 6; [...and give in a bit more]
		if Libido of Player > 100:
			now Libido of Player is 100;
		let diceroll be a random number from 1 to 125; [lust check vs 125]
		if diceroll < Libido of Player:						[scored under libido, too horny to wait]
			say "     This gives the tigress a moment to release the easy straps on her street clothes before pouncing atop you. she pulls your backpack off and tosses it aside, all thoughts of payment lost after watching your lustful writhing on the bed. As she grinds hirself against your [BodyName of Player] body, she helps you out of your remaining clothes, eager to get right to it. As the firm cheeks of your ass press around it, you can feel its pointed glans and small, stimulating bumps. You can tell it's a larger than average cock, but not massive like many you've seen since the outbreak. You can feel the tigress's pre leaking down between your cheeks and you find yourself longing for her to take you with it.";
		else:										[scored over libido, remembers to get paid]
			say "     she grins down at you as you writhe on the mattress, losing yourself in the rich scent of sex pervading it. she takes a moment to release the easy straps on her street clothes before helping you with yours. she sets your backpack aside, and then removes your remaining clothes. Once naked, she runs a paw down your back and between your legs to fondle and tease your equipment while her other paw rummages through your backpack for something to take as payment.";
			say "[paymentcheck]";
			if tempnum is 1:
				stop the action;
			say "     After searching through your belongs for a while, she decides to get to it as your moaning grows louder. she pounces atop you and grinds hirself against your [BodyName of Player] body, sliding her leaking cock against your ass. As your firm cheeks press around it, you can feel its pointed glans and small, stimulating bumps. You can tell it's a larger than average cock, but not massive like many you've seen since the outbreak. You can feel the tigress's pre leaking down between your cheeks and you find yourself longing for her to take you with it.";
		if Player is herm:				[Yes = HERM Identified!]
			say "     With one paw between your shoulders, she holds you down as the other grabs your hip firmly. After shifting her position a little, you can feel the tigress's hard cock at your [cunt size desc of Player] pussy before it sinks into you. You moan your pleasure as you feel the firm piece of meat pushing in, teasing you delightfully with those bumps. Your [cock size desc of Player] [Cock of Player] shaft[smn] dribble[smv] pre onto the mattress as she mounts you.";
			say "     her hips rock slowly at first, letting her unusually shaped penis stimulate your sensitive walls. You push your rear back against her thrusting, matching her pace. As you moan and press your face into the scent-filled mattress, you lose track of time, only knowing the joy of that softly-barbed cock inside you. Surely it was sculpted to please any lover and you love having it in you, as your own hard cock[smn] and leaking precum show.";
			say "     After a long session of slow, stimulating thrusting, the tigress rumbles deeply as her cock throbs in you. she takes the back of your neck in her jaws, holding you firmly, but carefully, and starts pounding into you hard and fast. With her elbows on the mattress, shi's puts a paw on your [breast size desc of Player] tits and fondles them while the other moves to stroke your [cock size desc of Player] shaft[smn]. As she drives hirself into you again and again, she pumps at your throbbing member.";
			say "     One final, hard thrust into you and shi's growling deeply as her shaft throbs inside you, pumping her hot, feline seed deep inside you, sending it flowing into your womb. This sends you into a powerful climax, hot feminine juices flowing from your pussy and thick cum from your cock[smn] as she fills you with her seed. Your hot seed sprays onto the mattress to join the multitude of others.[impregchance]";
			if Cunt Count of Player > 1 and gestation of Child is 0:		[Multi-pussy, not preg]
				say "     As she eases her cock from your cum-slick slit, she keeps her grip on your nape and moves her cock to your second slit, pushing into you again. she starts to pound away at you again, filling your second hole. she goes hard and fast from the very beginning this time, eager to fill you with more of her semen to breed you. You moan lustfully beneath hir, having another powerful orgasm as that barbed shaft throbs inside you and seeds you a second time, though with an albeit smaller load this time after such a fast turnaround.[if a random chance of 1 in 2 succeeds][impregchance][end if]"; [half as likely to impreg on 2nd try]
				increase Libido of Player by 6; [2nd hole filled - Libido increase of 6...]
				decrease humanity of Player by 3; [...and give in a little more]
				if Libido of Player > 100:
					now Libido of Player is 100;
				if Cunt Count of Player > 2 and gestation of Child is 0:	[triple-pussy and still not preg]
					say "     With still another pussy to go, she pushes her cock into you a third time and pounds you hard, mrrrowling as she does. she takes you very hard and ends up scooting you along the mattress from the force of her pounding, almost pushing your head off the edge before cumming a third and final time to try and breed you. her load this time is quite small, but maybe third time's the charm.[if a random chance of 1 in 3 succeeds][impregchance][end if]"; [third as likely to impreg on 3rd try]
					increase Libido of Player by 3; [3nd hole filled - Libido increase of 3...]
					decrease humanity of Player by 2; [...and give in a little more]
					if Libido of Player > 100:
						now Libido of Player is 100;
		else if Player is female:		[Yes = FEMALE Identified!]
			say "     With one paw between your shoulders, she holds you down as the other grabs your hip firmly. After shifting her position a little, you can feel the tigress's hard cock at your [cunt size desc of Player] cunt before it sinks into you. You moan your pleasure as you feel the firm piece of meat pushing in, teasing you delightfully with those bumps. her hips rock slowly at first, letting her unusually shaped penis stimulate your sensitive walls. You push your rear back against her thrusting, matching her pace. As you moan and press your face into the scent-filled mattress, you lose track of time, only knowing the joy of that softly-barbed cock inside you. Surely it was sculpted to please any lover and you love having it in you.";
			say "     After a long session of slow, stimulating thrusting, the tigress rumbles deeply as her cock throbs in you. she takes the back of your neck in her jaws, holding you firmly, but carefully, and starts pounding into you hard and fast. With her elbows on the mattress, shi's got her paws on your [character number Breast Size of Player in cupsize] cup tits and fondles them as she drives hirself into you again and again. One final, hard thrust into you and shi's growling deeply as her shaft throbs inside you, pumping her hot, feline seed deep inside you, sending it flowing into your womb. This sends you into a powerful climax, hot feminine juices flowing from your pussy as she fills you with her seed.[impregchance]";
			if a random chance of 1 in 3 succeeds:				[One in three chance of gender change now]
				follow the sex change rule; [I think this will work]
				if Player is male:						[New cock sex scene]
					say "     You groan loudly as a smaller version of the tigress's cock grows in, hard and throbbing with fresh need. Spent, the tigress releases you and you roll onto your back with a soft mewl of need. Looking down, she sees your new equipment and grins happily. she takes your small shaft in her paw and starts stroking you before leaning down and taking it into her muzzle. she licks and sucks at it, lavishing attention upon your newly-formed penis. Already sensitive after its growth, you quickly blow your load, giving her a taste of your fresh seed.";
					increase Libido of Player by 8; [New cock makes you horny...]
					SanLoss 6; [...and give in a bit more]
					if Libido of Player > 100:
						now Libido of Player is 100;
			if Cunt Count of Player > 1 and gestation of Child is 0:		[multi-pussy, not preg]
				if Player is not male:					[Did not do new-cock scene instead]
					say "     As she eases her cock from your cum-slick slit, she keeps her grip on your nape and moves her cock to your second slit, pushing into you again. she starts to pound away at you again, filling your second hole. she goes hard and fast from the very beginning this time, eager to fill you with more of her semen to breed you. You moan lustfully beneath hir, having another powerful orgasm as that barbed shaft throbs inside you and seeds you a second time, though with an albeit smaller load this time after such a fast turnaround.[if a random chance of 1 in 2 succeeds][impregchance][end if]"; [half as likely to impreg on 2nd try]
					increase Libido of Player by 6; [2nd hole filled Libido increase of 6...]
					decrease humanity of Player by 3; [...and give in a little more]
					if Libido of Player > 100:
						now Libido of Player is 100;
					if Cunt Count of Player > 2 and gestation of Child is 0:	[triple-pussy and still not preg]
						say "     With still one pussy to go, she pushes her cock into you a third time and pounds you hard, mrrrowling as she does. she takes you very hard and ends up scooting you along the mattress from the force of her pounding, almost pushing your head off the edge before cumming a third and final time to try and breed you. her load this time is quite small, but maybe third time's the charm.[if a random chance of 1 in 3 succeeds][impregchance][end if]"; [third as likely to impreg on 3rd try]
						increase Libido of Player by 3; [3nd hole filled Libido increase of 3...]
						decrease humanity of Player by 2; [...and give in a little more]
						if Libido of Player > 100:
							now Libido of Player is 100;
		else if Player is male:		[Yes = MALE Identified!]
			say "     With one paw between your shoulders, she holds you down as the other grabs your hip firmly. After shifting her position a little, you can feel the tigress's hard cock nudge at your anal ring before easing slowly into you. You groan softly and try to relax as you feel the firm piece of meat pushing in, its pointed tip and her flowing pre helping it push into you. As it sinks in further, you are teased by those delightful, soft barbs. her hips rock slowly at first, letting her unusually shaped penis stimulate your sensitive walls. You push your rear back against her thrusting, matching her pace. As you moan and press your face into the scent-filled mattress, you lose track of time, only knowing the joy of that softly-barbed cock inside you. Surely it was sculpted to please any lover and you love having it in you.";
			say "     After a long session of slow, stimulating thrusting, the tigress rumbles deeply as her cock throbs in you. she takes the back of your neck in her jaws, holding you firmly, but carefully, and starts pounding into you hard and fast. With her paws around your wrists, holds you pinned down, though by this point you're eager to have her violate you. One final, hard thrust into you and shi's growling deeply as her shaft throbs inside you, pumping her hot, feline seed deep inside you, sending it flowing into your bowels. This sends you into a powerful climax, shooting your cum onto the mattress to join the multitude of others as she fills you with her seed.[mimpregchance]";
			if a random chance of 1 in 3 succeeds:				[One in three chance of gender change now]
				follow the sex change rule; [I think this will work]
				if Player is female:						[New pussy sex scene]
					say "     You moan softly as a wet little snatch forms between your legs, dripping with fresh need. Even as she eases her cock out of your ass, she spots the new addition and mrrrowls in pleasure. her softening shaft grows hard again, eager to be the first to take your new, virgin hole. she eases her cum-slick shaft into your small pussy, finding it a tight fit. she takes it slow at first, but soon quickens her pace and takes you by the nape again, eager to breed you well. The stimulating barbs sliding along your vaginal walls feel so good, different from when she was in your ass. You're soon pushing back into her thrusts until finally she pushes her glans past your cervix and into your womb to unleash her hot seed. You climax as well, having your first orgasm from your new pussy as the tigress who just gave it to you cums inside your newly-grown womb.[impregchance]";
					increase Libido of Player by 8; [New pussy makes you horny...]
					SanLoss 6; [...and give in a bit more]
					if Libido of Player > 100:
						now Libido of Player is 100;
		else:										[No to all = NEUTER Identified!]
			say "     Uh oh! Huh! Neuter?"; [No cunt & no cock]
		say "     Finished with you now, she helps you up, shoves your stuff into your arms and sends you on your way with a firm squeeze of your bottom, digging her claws into you a little possessively. You feel a tingling in your loins and, while you feel satisfied for the moment, you yearn to meet up with another of these sexy felines soon.";
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
	say "     As you strike a final blow to the tigress, you drive her back into the shaded alley, sending her to collapse onto a dirty mattress in the shadows of the buildings. From the smell, shi's used it for her clients before. she mewls with lustful need, looking up at you with her feline eyes as she releases the easy straps of her street clothes. The slutty tigress bares her striped body for you, lost to her lustful desires but too weakened to pounce you to sate them.";
	say "     The tigress whore is available for your amusement.";
	say "     [bold type]Do you wish to give in and have some fun with hir?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:									[Decides to fuck tigress]
		LineBreak;
		if Player is herm:				[Yes = HERM Identified!]
			increase Libido of Player by 10; [Oral submission increases Libido]
			if Libido of Player > 100:
				now Libido of Player is 100;
			if Cock Length of Player < 13:					[Cock size check: small-large]
				say "     As the tigress mewls her need again, you decide to fill that lovely, striped muzzle and move overtop of hir. she smiles up at you, licking her lips even as you move into position. Catching a flash of her pointed teeth, you momentarily rethink your idea before she grabs your hips and pulls you closer so her raspy tongue can glide over your swollen member[smn].";
				say "     Lowering your hips, you push your [cock size desc of Player] [Cock of Player] cock into her eager muzzle. she wraps her warm lips around it and starts licking and sucking with considerable skill, clearly having had a lot of practice. You pump your cock into her muzzle steadily, sliding it along her palate.";
				say "     As the tigress works [if Cunt Depth of Player < 6]a finger[else]several fingers[end if] inside your vagina[sfn], you lean overtop her and start licking and sucking her dual equipment in return. her shaft looks to be about nine inches in length and dribbles pre as you tease it. It is a dark red with a pointed glans and small bumps along it. After sampling it for a while, you move your mouth to her pussy, licking and kissing it in return. After getting her pussy quivering and dripping with need, you move back to her cock again. As you plunge your [FaceName of Player] mouth down over it, you press two fingers into her dripping puss and fingerfuck her hard and fast.";
				say "     she laps up your pre eagerly, working her tongue over you with skillful intent, having your arousal build and build until you pound into her muzzle hard and fast. You blow your load down her throat and your [if Cunt Count of Player > 1]pussies soak her paws[else]pussy soaks her paw[end if] in your juices. This is enough to finally set her off, blasting tigercum down your throat. she swallows your cum down happily, even moaning in pleasure as she does. Clearly, this feline loves her job[if Cock Count of Player is 2]. With one cock in her muzzle, the other one ends up blowing its hot seed across her body, covering her striped fur in streaks of your white semen[else if Cock Count of Player > 2]. With one cock in her muzzle, the others end up blowing their hot seed across her body, covering her striped fur in streaks of your white semen[end if].";
			else:									[Cock size check: huge!]
				say "     As the tigress mewls her need again, you decide to fill that lovely, striped muzzle and move to straddle her chest. she smiles up at you, licking her lips even as you move into position. Catching a flash of her pointed teeth, you momentarily rethink your idea before she grabs your hips and pulls you closer so her raspy tongue can glide over your swollen member[smn].";
				say "     Given the size of your [cock size desc of Player] [Cock of Player] member[smn], you won't be able to take full advantage of the tigress's muzzle, so you go for something almost as good. Sitting across her hips, you lay your lengthy cock[smn] across her chest, nestling [itthemm] between her breasts. she starts rubbing her body against [itthemm], rumbling with desire. she licks and kisses at your tip[smn], lapping up your precum with a hunger for more. her raspy, feline tongue is very stimulating, as is the warm, soft feel of her bosom around your shaft[smn]. her well-trained paws stroke over the lower portion of your cock[smn] and fondle your balls, working to attend to as much of your as she can manage.";
				if Cock Length of Player > 23:				[Extra-huge for add-on]
					say "     You grind your hips down overtop of hirs, rubbing your wet pussy lips against hirs and pressing her smaller cock underneath your much more massive meat. she mewls and wiggles her hips, rocking her softly-barbed cock against the underside of your shaft, further stimulating you.";
				say "     Eventually, your excitement builds to the breaking point and you unload. Your hot seed shoots across her face and into her open muzzle. she has it open wide, tongue hanging out to catch as much as she can. Your seed paints white streaks across her orange, striped face. As she runs her tongue across her creamy muzzle, you can feel her shaft throb under you, followed by the hot rush of tigercum spraying onto you.";
			let diceroll be a random number from 1 to 125; [lust check vs 125]
			if diceroll < Libido of Player:
				say "     Having gotten good and wound up after that, you feel you're still ready for more. As you look over the tigress, you try to decide what you want to use her for next.";
				say "     [bold type]Eyeing her lustfully, your gaze flips back and forth between her penis and her vagina as you struggle to choose which you want most.[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Penis.";
				say "     ([link]N[as]n[end link]) - Vagina.";
				if Player consents:						[Yes = wants cock, get fucked]
					LineBreak;
					say "     Deciding you want to try riding that sexy feline cock, you shift yourself around, straddling the tigress's hips. You rub your puss[yfn] down onto her cock with a moan of desire. Never having given it a chance to get soft, you coax her cock back to full hardness quickly and slowly sink yourself down onto it. The tigress mrowls in pleasure as she feels you taking her feline member in. As it sinks into you, your cock[smn] throb[smv], rising back to full hardness.";
					say "     You run your hands over her body as you start riding up and down. With you on top, you set the pace and ride her nice and slow to begin, growing faster and faster as you go. Stroking through the soft white fur on her chest, you knead her breasts and tease her nipples. The tigress brings her paws to your cock[smn], stroking your meat in return.";
					if Cunt Count of Player > 1:					[Extra in middle if multi-pussy]
						say "     Having more than one hot hole to file, you switch from one pussy to next a few times. Doing this makes the tigress mewl in disappointment, then moan in pleasure as you slide off hir, then take her back in again. Enjoying her reaction, you keep doing it to tease her over and over again much more often than you would otherwise. You find her to be a delightful feline playtoy.";
						decrease Libido of Player by 5; [Extra satisfaction if multi-pussy sex]
						if Libido of Player < 0:			[Should never be needed due to earlier increase...]
							now Libido of Player is 0; [...but left for completeness.]
					say "     The barbed cock is in no way painful, only small bumps that tingle along your walls as you ride hir, building you towards climax again. her rumbling and purring grows louder and deeper until she climaxes, pumping her hot feline seed into you. As that warm rush flows into you, you grind down firmly onto her cock and you orgasm again. Your hot seed sprays across her striped body, leaving sticky streaks of white on her snowy tummyfur and breasts.[impregchance]";
					say "     Once shi's finally drained her balls into you and filled you with tigercum, you slide yourself off hir. she releases a soft, satisfied mew as her cock pops free with a gush of tigercum and your own juices flowing down onto hir. You lean forward and nuzzle hir, nibbling her ear before getting up. Having had your fun, you get off the mattress and gather your things. You leave the well-used tigress in her alley, covered in cum and juices. You smile, feeling quite satisfied for now.";
				else:								[No = wants pussy, does the fucking]
					LineBreak;
					say "     Deciding you want to pound her dripping puss with your throbbing cock, you feel you're still ready for a second go and nudge the tigress over. she rolls onto all fours eagerly, arching up her tail and wiggling her rear in anticipation. You eye her sexy rump, running your hands over it, looking at her hot, dripping pussy. That's more than enough to get you fully hard again and you move into position atop hir.";
					if Cock Length of Player < 16:			[Yes = not huge cock]
						say "     Lining up your [cock size desc of Player] [Cock of Player] shaft with her pussy, you ease forward, enjoying the feel of her wet folds wrapping around you. You sink in slowly until you're fully sheathed inside hir. her inner walls squeeze down around your cock, urging you to start fucking her - and you do with fast, hard strokes. Having already blown your load once, you have a good, long screw with the eager feline whore. While you pound into hir, she reaches back with a paw to finger your puss[yfn].";
						say "     her cock blasts hot feline seed across the mattress when you finally blast your hot load into hir. The quivering of her vaginal muscles around your throbbing [CockName of Player] cock ensures you have a good, long orgasm, draining your balls for all you'll give[if Cock Count of Player is 2]. With one cock stuffed inside of hir, the other one ends up shooting its hot seed across her shapely body, covering her striped fur in more streaks of your thick seed[else if Cock Count of Player > 2]. With one cock stuffed inside of hir, the others end up shooting their hot seed across her shapely body, covering her striped fur in more streaks of your thick seed[end if].";
					else:							[No = huge cock!]
						say "     While you're too large for her to take, you still need some extra relief. You grind your hefty shaft against her shapely bottom and along her back, pressing it between you both. her fur feels so nice against your sensitive flesh and your balls slap firmly against her pussy. she mewls and pushes back firmly each time you thrust particularly hard and your balls slap her wet folds. she kneads her paws at the mattress. Having already blown your load once, you stroke yourself against the feline whore's tight rear and strong, flexible back. While you rub your hard meat against hir, she reaches back with a paw to finger your puss[yfn].";
						say "     When you finally peak, you blast hot cum across her body and onto the back of her head with the first shot. Sitting back up, you shoot a few more onto her as you move back to spray onto that cute bubble-butt. You line up [if Cock Count of Player > 1]one of [end if]your spurting [CockName of Player] penis[esmn] with her pussy, pushing your glans against those wet folds and spraying your hot seed onto it, forcing as much in as you can. her cock blasts hot feline seed across the mattress when you finally blast your hot load into hir. The quivering of her pussy lips around your tip ensures you have a good, long orgasm, draining your balls for all you'll give.";
					say "     Having had your fun, you nibble her ear and fondle her breast before rising off the mattress. Gathering your things, you leave the well-used tigress in her alley, covered in cum and juices. You smile, feeling quite satisfied for now.";
				decrease Libido of Player by 25; [Satisfied by sex...]
				if Libido of Player < 0:
					now Libido of Player is 0;
			else:									[Herm no-sex ending]
				say "     Having had your fun, you get up slowly and stroke over her ears before you get off the mattress and leave the alley behind. Feeling somewhat satisfied for now, your loins warm with the thoughts of finding another of these sexy felines to play with as you see fit.";
		else if Player is female:		[Yes = FEMALE Identified!]
			LineBreak;
			say "     As the tigress mewls her need again, you decide to put that lovely, striped muzzle to use. You sit across her face, lowering your juicy pussy over her muzzle. she licks her lips, then runs her raspy tongue across your wet folds. You moan in pleasure as you feel it glide across you and you grind down firmly onto her muzzle, encouraging her to send that talented tongue deep inside you.";
			say "     As the tigress works her tongue inside your [cunt size desc of Player] vagina, you lean overtop her and start licking and sucking her dual equipment in return. her shaft looks to be about nine inches in length and dribbles pre as you tease it. It is a dark red with a pointed glans and small bumps along it. After sampling it for a while, you move your mouth to her pussy, licking and kissing it in return. After getting her pussy quivering and dripping with need, you move back to her cock again. As you plunge your [FaceName of Player] mouth down over it, you press two fingers into her dripping puss and fingerfuck her hard and fast.";
			say "     This is enough to finally set her off, blasting tigercum down your throat. Even as you gulp it down, your orgasm hits as well, further soaking her striped muzzle in your hot juices. You moan in ecstasy, grinding down onto her face as her well-practiced tongue continues to play inside you, sending you crashing through multiple orgasms until you collapse atop hir, panting for breath for several minutes.";
			increase Libido of Player by 10; [Worked up by oral]
			if Libido of Player > 100:
				now Libido of Player is 100;
			let diceroll be a random number from 1 to 125; [lust check vs 125]
			if diceroll < Libido of Player:
				say "[line break]     Having gotten good and wound up after that, you feel you're still ready for more and turn yourself around, straddling the tigress's hips. You rub your puss[yfn] down onto her cock with a moan of desire. Never having given it a chance to get soft, you coax her cock back to full hardness quickly and slowly sink yourself down onto it. The tigress mrowls in pleasure as she feels you taking her feline member in.";
				say "     You run your hands over her body as you start riding up and down. With you on top, you set the pace and ride her nice and slow to begin, growing faster and faster as you go. Stroking through the soft white fur on her chest, you knead her breasts and tease her nipples. The tigress brings her paws to your chest, stroking your breasts in return.";
				if Cunt Count of Player > 1:						[Extra in middle if multi-pussy]
					say "     Having more than one hot hole to file, you switch from one pussy to next a few times. Doing this makes the tigress mewl in disappointment, then moan in pleasure as you slide off hir, then take her back in again. Enjoying her reaction, you keep doing it to tease her over and over again much more often than you would otherwise. You find her to be a delightful feline playtoy.";
					decrease Libido of Player by 5; [Extra satisfaction if multi-pussy sex]
					if Libido of Player < 0:				[Should never be needed due to earlier increase...]
						now Libido of Player is 0; [...but left for completeness.]
				say "     The barbed cock is in no way painful, only small bumps that tingle along your walls as you ride hir, building you towards climax again. her rumbling and purring grows louder and deeper until she climaxes, pumping her hot feline seed into you. As that warm rush flows into you, you grind down firmly onto her cock and you orgasm again.[impregchance]";
				say "     Once shi's finally drained her balls into you and filled you with tigercum, you slide yourself off hir. she releases a soft, satisfied mew as her cock pops free with a gush of tigercum and your own juices flowing down onto hir. You lean forward and nuzzle hir, nibbling her ear before getting up. Having had your fun, you get off the mattress and gather your things. You leave the well-used tigress in her alley, covered in cum and juices. You smile, feeling quite satisfied for now.";
				decrease Libido of Player by 25; [Satisfied by sex...]
				if Libido of Player < 0:
					now Libido of Player is 0;
			else:
				say "     Having had your fun, you get up slowly and stroke over her ears before you get off the mattress and leave the alley behind. Feeling somewhat satisfied for now, your loins warm with the thoughts of finding another of these sexy felines to play with as you see fit."; [Female no-sex ending]
		else if Player is male:		[Yes = MALE Identified!]
			say "     As the tigress mewls her need again, you decide to fill that lovely, striped muzzle and move to straddle her chest. she smiles up at you, licking her lips even as you move into position. Catching a flash of her pointed teeth, you momentarily rethink your idea before she grabs your hips and pulls you closer so her raspy tongue can glide over your swollen member[smn].";
			increase Libido of Player by 10; [Oral submission increases Libido]
			if Libido of Player > 100:
				now Libido of Player is 100;
			if Cock Length of Player < 13:					[Cock size check: small-large]
				say "     Placing your hands on her head, you pull her forward, pushing your [cock size desc of Player] [Cock of Player] cock into her eager muzzle. she wraps her warm lips around it and starts licking and sucking with considerable skill, clearly having had a lot of practice. she presses her breasts against your cock and balls while her mouth bobs over the rest. You pump your [CockName of Player] penis into her muzzle steadily, sliding it along her palate. she laps up your pre eagerly, working her tongue over you with skillful intent, having your arousal build and build until you pound into her muzzle hard and fast, blowing your load down her throat.";
				say "     she swallows it down happily, even moaning in pleasure as she does. Clearly, this feline loves her job[if Cock Count of Player is 2]. With one cock in her muzzle, the other one ends up blowing its hot seed across her face, covering her striped fur in streaks of your white semen[else if Cock Count of Player > 2]. With one cock in her muzzle, the others end up blowing their hot seed across her face, covering her striped fur in streaks of your white semen[end if].";
			else:									[Cock size check: huge!]
				say "     Given the size of your massive member[smn], you won't be able to take full advantage of the tigress's muzzle, so you go for something almost as good. Sitting across her hips, you lay your lengthy cock[smn] across her chest, nestling [itthemm] between her breasts. she starts rubbing her body against [itthemm], rumbling with desire. she licks and kisses at your tip[smn], lapping up your precum with a hunger for more. her raspy, feline tongue is very stimulating, as is the warm, soft feel of her bosom around your meat. her paws stroke over the lower portion of your cock[smn] and fondle your balls, working to attend to as much of your as she can manage.";
				if Cock Length of Player > 23:				[Extra-huge for add-on]
					say "     You grind your hips down overtop of hirs, rubbing your balls against her and pressing her smaller cock underneath your much more massive meat. she mewls and wiggles her hips, rocking her softly-barbed cock against the underside of your shaft, further stimulating you.";
				say "     Eventually, your excitement builds to the breaking point and you unload. Your hot seed shoots across her face and into her open muzzle. she has it open wide, tongue hanging out to catch as much as she can. Your seed paints white streaks across her orange, striped face. As she runs her tongue across her creamy muzzle, you can feel her shaft throb under you, followed by the hot rush of tigercum spraying onto you.";
			let diceroll be a random number from 1 to 125; [lust check vs 125]
			if diceroll < Libido of Player:
				say "[line break]     Having gotten good and wound up after that, you feel you're still ready for a second go and nudge the tigress over. she rolls onto all fours eagerly, arching up her tail and wiggling her rear in anticipation. You eye her sexy rump, running your hands over it, looking at her hot, dripping pussy. That's more than enough to get you fully hard again and you move into position atop hir.";
				if Cock Length of Player < 16:				[Yes = not huge cock]
					say "     Lining up your [cock size desc of Player] [Cock of Player] shaft with her pussy, you ease forward, enjoying the feel of her wet folds wrapping around you. You sink in slowly until you're fully sheathed inside hir. her inner walls squeeze down around your cock, urging you to start fucking her - and you do with fast, hard strokes. Having already blown your load once, you have a good, long screw with the eager feline whore.";
					say "     her cock blasts hot feline seed across the mattress when you finally blast your hot load into hir. The quivering of her vaginal muscles around your throbbing [CockName of Player] cock ensures you have a good, long orgasm, draining your balls for all you'll give[if Cock Count of Player is 2]. With one cock stuffed inside of hir, the other one ends up shooting its hot seed across her shapely body, covering her striped fur in more streaks of your thick seed[else if Cock Count of Player > 2]. With one cock stuffed inside of hir, the others end up shooting their hot seed across her shapely body, covering her striped fur in more streaks of your thick seed[end if].";
				else:								[No = huge cock]
					say "     While you're too large for her to take, you still need some extra relief. You grind your hefty shaft against her shapely bottom and along her back, pressing it between you both. her fur feels so nice against your sensitive flesh and your balls slap firmly against her pussy. she mewls and pushes back firmly each time you thrust particularly hard and your balls slap her wet folds. she kneads her paws at the mattress. Having already blown your load once, you stroke yourself against the feline whore's tight rear and strong, flexible back.";
					say "     When you finally peak, you blast hot cum across her body and onto the back of her head with the first shot. Sitting back up, you shoot a few more onto her as you move back to spray onto that cute bubble-butt. You line up [if Cock Count of Player > 1]one of [end if]your spurting [CockName of Player] penis[esmn] with her pussy, pushing your glans against those wet folds and spraying your hot seed onto it, forcing as much in as you can. her cock blasts hot feline seed across the mattress when you finally blast your hot load into hir. The quivering of her pussy lips around your tip ensures you have a good, long orgasm, draining your balls for all you'll give.";
				decrease Libido of Player by 25; [Satisfied by sex...]
				if Libido of Player < 0:
					now Libido of Player is 0;
				say "     Having had your fun, you nibble her ear and fondle her breast before rising off the mattress. Gathering your things, you leave the well-used tigress in her alley, covered in cum and juices. You smile, feeling quite satisfied for now.";
			else:
				say "     Having had your fun, you get up slowly and stroke over her ears before you get off the mattress and leave the alley behind. Feeling somewhat satisfied for now, your loins warm with the thoughts of finding another of these sexy felines to play with as you see fit."; [Male no-sex ending]
		else:
			say "     Hurrah! Neuter! WTF! Can't have sex with no junk!";
	else:
		say "     You feel the pull of your arousal, but resist giving in, leaving her to her own devices. With a cursory glance for trouble, you head on your way, blocking out the mewling moans of the unsatisfied tigress.";
	now tigressclient is 0;
	now tigressfucked is 0;
	now tigresswinner is 1;
	stop the action;


to say paymentcheck:
	now tempnum is 0; [reset payment flag again, jic]
	if gryphon milk is owned:
		say "     Finding a container of gryphon milk, she smiles happily. 'Ooo! Cream for the kitty.' she opens it and sniffs. 'Birdy milk at that. That makes for a happy kitty!' Keeping her find as payment, she leans down and gives you a kiss on the cheek for bringing her such a tasty treat.";
		delete gryphon milk;
	else if dolphin milk is owned:
		say "     Finding a container of dolphin milk, she smiles happily. 'Ooo! Cream for the kitty.' she opens it and sniffs. 'Fishy milk at that. That makes for a happy kitty!' Keeping her find as payment, she leans down and gives you a kiss on the cheek for bringing her such a tasty treat.";
		delete dolphin milk;
	else if panther milk is owned:
		say "     Finding a container of panther milk, she smiles happily. 'Ooo! Cream for the kitty.' she opens it and sniffs. 'You brought kitty milk for the kitty. That makes for a happy kitty!' Keeping her find as payment, she leans down and gives you a kiss on the cheek for bringing her such a tasty treat.";
		delete panther milk;
	else if cheetah milk is owned:
		say "     Finding a container of cheetah milk, she smiles happily. 'Ooo! Cream for the kitty.' she opens it and sniffs. 'You brought kitty milk for the kitty. That makes for a happy kitty!' Keeping her find as payment, she leans down and gives you a kiss on the cheek for bringing her such a tasty treat.";
		delete cheetah milk;
	else if cow milk is owned:
		say "     Finding a container of cow milk, she smiles happily. 'Ooo! Cream for the kitty.' she opens it and sniffs. 'Good old cow milk, rich and creamy. That makes for a happy kitty!' Keeping her find as payment, she leans down and gives you a kiss on the cheek for bringing her such a tasty treat.";
		delete cow milk;
	else if chocolate milk is owned:
		say "     Finding a container of white chocolate milk, she smiles happily. 'Ooo! Cream for the kitty.' she opens it and sniffs. 'Oh my, creamy white chocolate milk! The matron will be so pleased with me!' Keeping her find as payment, she leans down and gives you a kiss on the cheek for bringing her such a tasty treat.";
		delete chocolate milk;
	else if vixen milk is owned:
		say "     Finding a container of vixen milk, she smiles happily. 'Ooo! Cream for the kitty.' she opens it and sniffs. 'Ugh! It smells like medicine and musky vixens. Maybe we can boil that fox smell out of it,' she muses. Keeping her find as payment, she sets your backpack aside.";
		delete vixen milk;
	else if dog milk is owned:
		say "     Finding a container of dog milk, she smiles happily. 'Ooo! Cream for the kitty.' she opens it and sniffs. 'Ugh, it smells of dog. Well, it's still milk, so I'll take it! Maybe we can boil that dog smell out of it,' she muses. Keeping her find as payment, she sets your backpack aside.";
		delete dog milk;
	else if Tasty Fish is owned:
		say "     Finding the fish you've wrapped in old newspaper, she smiles happily. 'Ooo! Tasty feesh! We'll be eating well back at the motel tonight,' she rumbles happily. Keeping her find as payment, she leans down and gives you a kiss on the cheek for bringing her such a tasty treat.";
		delete Tasty Fish;
	else if soda is owned:
		say "     Finding a can of soda, she smiles happily. 'Hey! This is my favorite flavor. I haven't been able to find one for days.' Keeping her find as payment, she sets your backpack aside.";
		delete soda;
	else if water bottle is owned:
		say "     Finding a water bottle, she pulls it out. 'Here we go. We always need more fresh water.' Keeping her find as payment, she sets your backpack aside.";
		delete water bottle;
	else if dirty water is owned:
		say "     Finding a bottle of dirty water, she pulls it out. 'Here we go. I was getting a little thirsty working out here.' Keeping her find as payment, she sets your backpack aside.";
		delete dirty water;
	else if chips is owned:
		say "     Finding a bag of chips, she smiles. 'Hey! This is my favorite flavor. I thought they'd discontinued it, but you found one.' Keeping her find as payment, she leans down and gives you a kiss on the cheek for bringing her such a tasty treat.";
		delete chips;
	else if food is owned:
		say "     Finding some food in your pack, she pulls it out. 'Things have been getting a little lean back at the motel. It'll be good to have a full meal.' Keeping her find as payment, she sets your backpack aside.";
		delete food;
	else if motel key is owned:
		say "     Digging all the way to the bottom of your pack in search of something of interest, she finds a motel key down there. 'Oh my! Where did you find this? We were worried it was lost. Thanks for finding and returning it, sweetie,' she purrrs, kissing your cheek and giving you a playful grope.";
		delete motel key;
	else:										[No payment. Smacked around, then raped.]
		say "     Having gone through your whole bag and having found nothing of interest to her, she growls and slams the bag into your face. As you yell out, she grabs your throat, silencing your cry. 'Trying to get a little fun with the kitty without paying the price? Well, I'll give you all the hot tigress you can take, you little fool.' she growls again, kneeing you in the gut before slamming you up against the brick face of one of the buildings. she seems even stronger in her anger and you are unable to stop her sudden assault.";
		say "     Before you have a chance to recover, her teeth are at the back of your neck and her throbbing cock grinds against your rear. You look for a means to escape, but those sharp teeth keep you in place. Then suddenly it's too late and the tigress's cock is pushing into your back door, spreading your tailhole open painfully fast. she gives you no time to adjust to the rapid intrusion, pounding you in quick, hard strokes. Despite yourself, you start to grow aroused from the assfuck you're receiving, but she holds your arms tightly to the wall, preventing you from tending to your growing arousal.";
		say "     Eventually, you feel the hot blast of her cum inside you and you moan in pleasure. You hope shi'll let you get off now, but she just holds you to the wall, growling softly. Growing fearful, you continue to wait, wiggling your rear over her cock for what little stimulation you can get without rubbing your tender flesh against the rough brick wall. Suddenly, your bowels are filled with a rush of stinging fluid, painful to your abused hole. As she withdraws, she continues to empty her bladder, pissing across your butt. she shoves you to the ground, then finishes draining hirself all over your battered body.";
		say "     Painfully grabbing you by the neck and ass, claws sinking into your flesh, she tosses you from the alley. she gives you a final kick to send you on your way. You are left a dirty mess, reeking of her scent and painfully aroused from the rough sex without relief.";
		decrease HP of Player by 20;
		increase Libido of Player by 15; [Increase libido because she doesn't let you get off...]
		if Libido of Player > 100:
			now Libido of Player is 100;
		SanLoss 12; [...and give in a lot more]
		infect; [Added infection as punishment]
		now tempnum is 1; [Temporarily marks lack of payment for use in losetotigress]
		now stiffedpayment is 1; [Permanenly marks failure to pay]


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Tiger"; [name of the overall species of the infection, used for children, ...]
	add "Malayan Tiger Herm" to infections of FelineList;
	add "Malayan Tiger Herm" to infections of FurryList;
	add "Malayan Tiger Herm" to infections of NatureList;
	add "Malayan Tiger Herm" to infections of HermList;
	add "Malayan Tiger Herm" to infections of BarbedCockList;
	add "Malayan Tiger Herm" to infections of SheathedCockList;
	add "Malayan Tiger Herm" to infections of BipedalList;
	add "Malayan Tiger Herm" to infections of TailList;
	now Name entry is "Malayan Tiger Herm"; [Name of the monster infection]
	now enemy title entry is "Tigress Hooker"; [name of the encountered creature at combat start - "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]Slamming her shoulder into you, she pushes you back against a nearby wall, grabbing your groin![or]Punched in the gut, you reflexively bend forward, allowing her to bury your face in her cleavage![or]The tigress grabs you in a reverse arm lock and grinds the hard bulge under her skirt against your rear until you can twist free![or]You have but a moment to awe at the tigress's flexibility before that kick strikes you upside the head! Dazed, you try to get up, only to have her press your face under her skirt and against her pink panties![or]After several quick slashes of her claws, she grabs your shoulders and pulls you forward into an equally fierce kiss![or]With a judo throw, she tosses you to the ground, then pounces atop you, nipping along your neck with a rumbling purr! As you roll away, she manages to grab your ass one last time![at random]";
	now defeated entry is "[beattigress]";
	now victory entry is "[losetotigress]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[tigress_desc]"; [ Description of the creature when you encounter it.]
	now face entry is "now a feminine tiger face and long, flowing hair. Your hair is raven black and curls lightly at the ends as it drapes across your shoulders, framing your pretty, blue eyes"; [ Face description, format as "Your face is (your text)."]
	now body entry is "curvaceous and desirable, moving with feline fluidity. Your body moves sensually with every step, drawing in the eye of all who see you. Your hands are human in shape, but with feline claws, paw pads and fur"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "ivory white fur streaked with tiger stripes that covers your"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "From your rear emerges a long, white tail with black stripes banding the fur. It flicks behind you with [one of]concealed nervousness[or]excitement[or]lustful playfulness[at random]."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "ebon feline"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it shifts and changes, forming a short muzzle. Your new nose and muzzle twitch as your whiskers grow in. Though you cannot see them yet, somehow you know your eyes have turned a pale, icy blue. Long, luscious black hair flows down, curling lightly to give you a full and sexy locks. You can feel your ears shifting, poking free as they become cute and tiger-like"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it shifts, growing tighter here, wider there. Your limbs and body stretch with feline flexibility as they move become those of a sexy tiger. Delicate, hand-like paws replace your current hands. They are nimble and you feel the urge to please someone with their touch. They also hide sheathed claws, waiting to sink into those who displease you. Your body starts giving off a subtle scent, like that of expensive perfume"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "soft fur spreads across your body. It is a white as pure as driven snow and sensually soft and silky to the touch. Even as you start to examine it, deep black stripes start to spread through it, leaving you covered in tiger-striped fur"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "shivers of delight run down your spine. You can feel it growing, extending out into a long, tiger-like tail. As it does, your bottom shifts and tightens into a cute, firm bubble-butt. As you rub your hand over it, you feel the urge to find a nice cock to fill it"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes dark, almost black in color. Shifting shape, it grows soft, stimulating barbs and a tapered glans. As you watch, your new shaft is bundled up in a softly-furred sheath which spreads down to cover your ballsack as well. You look forward to putting this new piece of meat to work"; [ cock change text. format as "Your cock feels funny as (your text)." ]
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
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 9; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 12;
	now Cunt Tightness entry is 4;
	now libido entry is 0; [ Set to zero in this monster to control elsewhere ]
	now loot entry is "motel key"; [ Dropped item. Key will be used later ]
	now lootchance entry is 75; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sultry[or]alluring[or]curvaceous[or]flexible[at random]";
	now type entry is "feline"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
