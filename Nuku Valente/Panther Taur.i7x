Version 1 of Panther Taur by Nuku Valente begins here.
[ Version 1.1 - Promoted to level 4. ]
[ Commissioned by AsureaSkie. ]

"Adds a Panther Taur creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

to say defeated_panthertaur:
	if zephyrtask is 1, increase zephyrpests by 1;
	say "     The cat mewls sadly, backing away before she raises her hands to her heavy breasts, pressing them together as she gives you a smoldering look. Wouldn't it be nice to make love instead of war?[panthertaur tempt]";

To say panthertaur tempt: [player wins]
	choose row MonsterID from the Table of Random Critters;
	if Libido of Player - humanity of Player > 10:
		if Player is male:
			say "Overcome by your urges, you grin as you move to mount the inviting taur.";
			say "[mount panthertaur]";
		else if Player is female:
			say "Overcome by your urges, you eye the panthertaur's length, making your decision.";
			say "[panthertaur ride cowgirl]";
		else:
			say "Overcome by your urges, you eagerly move to service the inviting taur.";
			say "[suck panthertaur]";
	else:
		say "As the victor of your fight, you do have the chance to have some fun with the horny panther taur. And options of how to do so. [bold type]What would you like to do?[roman type][line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if Player is male [and BodyName of Player is not in infections of Taurlist]:
			choose a blank row in table of fucking options;
			now title entry is "Mount the taur";
			now sortorder entry is 1;
			now description entry is "Mount the herm taur and stuff her cunt";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Suck her off";
		now sortorder entry is 2;
		now description entry is "Suck a load from the herm's thick cock";
		[]
		if Player is female [and BodyName of Player is not in infections of Taurlist]:
			choose a blank row in table of fucking options;
			now title entry is "Ride her cock";
			now sortorder entry is 3;
			now description entry is "Get that thick feline shaft in your cunt on your terms";
		[
		if Player is male and BodyName of Player is in infections of Taurlist:
			choose a blank row in table of fucking options;
			now title entry is "Mount the other taur";
			now sortorder entry is 4;
			now description entry is "Mount the herm taur and stuff her cunt";
		][
		if Player is female and BodyName of Player is in infections of Taurlist:
			choose a blank row in table of fucking options;
			now title entry is "Get mounted by the other taur";
			now sortorder entry is 5;
			now description entry is "Offer to let the taur stuff your cunt";
		]
		choose a blank row in table of fucking options;
		now title entry is "Let her use you";
		now sortorder entry is 6;
		now description entry is "Let her stuff you with her cock in whatever way she wishes";
		[]
		Sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Turn her down[as]0[end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if Player consents:
					let nam be title entry;
					now sextablerun is 1;
					if (nam is "Mount the taur"):
						say "[mount panthertaur]";
					if (nam is "Suck her off"):
						say "[suck panthertaur]";
					if (nam is "Ride her cock"):
						say "[panthertaur ride cowgirl]";
					if (nam is "Let her use you"):
						say "[panthertaur rape]";
					[if (nam is "Mount the other taur"):
						say "[taur mount panthertaur]";
					if (nam is "Get mounted by the other taur"):
						say "[panthertaur mount taur]";]
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     As you turn her down, the cat gives a soft huff, almost a hiss, then flees on quick feline paws, her shapely rump the last thing seen.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		clear the screen and hyperlink list;

to say panthertaur rape: [panthertaur wins or player gets mounted]
	if Player is puremale and anallevel > 1: [checks that 1.male and 2.not less anal]
		if Player is submissive:
			say "     The large taur pushes you to your hands and knees before settling above you, her paws on the sides of your head and cock poking at your ass. She thrusts forward, trying to bury her dick inside your ass, missing her target and instead thrusting against your [Cock of Player] cock. You start wanting it as she tries to sheathe herself inside you. You reach back, spreading your cheeks to help her push that barbed cock inside you. Both of you moan out loud once she hits her target, filling your asshole with her thick cock and rubbing against your prostate. It takes a while, but eventually she manages to hilt inside you, her furred balls slapping against your behind.";
			say "     Once she has managed to embed herself inside your butt there is no stopping her. She keeps pounding your ass like it's her property, which it very much is right now. You moan as the barbs covering her member keep raking on the inside of your ass. If another survivor came across you two, they wouldn't be able to tell you apart from another mutant that has lost their senses, face down ass up, drooling on the ground while a panther taur fills their ass. With a yowl, she hilts herself before the feline erection inside your ass twitches and unloads the cargo of her nuts inside your colon. You moan in submissive pleasure as you finally cum, your cum slowly oozing out of the tip of your penis. With a soft purr, she pulls out of you, your pucker left gaped and leaking her cum as she pats your butt with a paw before leaving you there. You quickly get up and make your way to safer area.";
		else if "Dominant" is listed in feats of Player:
			say "     The large taur pushes you to your hands and knees before settling above you, her paws on the sides of your head and cock poking at your ass. She thrusts forward, trying to bury her dick inside your ass, missing her target and instead thrusting against your [Cock of Player] cock. Grunting, you try to avoid her thrusting cock as she tries to sheathe herself inside you. She presses her paw to the back of your head, her claws reminding you who is in control here. You grunt in pain when she hits her target, filling your asshole with her thick cock and rubbing against your prostate. It takes a while, but eventually she manages to hilt inside you, her furred balls slapping against your behind.";
			say "     Once she has managed to embed herself inside your butt there is no stopping her. She keeps pounding your ass like it's her property, which it very much is right now. You whimper as the barbs covering her member keep raking on the inside of your ass. If another survivor came across you two, they wouldn't be able to tell you apart from another mutant that has lost their senses, face down ass up, whimpering on the ground while a panther taur fills their ass. With a yowl, she hilts herself before the feline erection inside your ass twitches and unloads the cargo of her nuts inside your colon. You sigh as she finally finishes using your ass, your cock remaining limp despite the pressure on your prostate. With a soft purr, she pulls out of you, your pucker left gaped and leaking her cum as she pats your butt with a paw before leaving you there. You quickly get up and make your way to safer area.";
		else:
			say "     The large taur pushes you to your hands and knees before settling above you, her paws on the sides of your head and cock poking at your ass. She thrusts forward, trying to bury her dick inside your ass, missing her target and instead thrusting against your [Cock of Player] cock. Resigning yourself into being the panther's cocksleeve for a while, you prepare yourself for the inevitable penetration. She thrusts once, missing her target and hotdogging her feline member between your ass cheeks instead, twice, this time grinding against your [Cock of Player] cock, third time she manages to bury her cock inside your back passage. Once she pierces your pucker, you bite your lip while she yowls loudly. She shuffles her paws before thrusting as deep as she can, her furred balls slapping against your behind.";
			say "     Once she has managed to embed herself inside your butt there is no stopping her. She keeps pounding your ass like it's her property, which it very much is right now. You whimper as the barbs covering her member keep raking on the inside of your ass. If another survivor came across you two, they wouldn't be able to tell you apart from another mutant that has lost their senses, face down ass up while a panther taur fills their ass. With a yowl, she hilts herself before the feline erection inside your ass twitches and unloads the cargo of her nuts inside your colon. You moan from the feeling of her hot feline pudding filling your ass, your cock throbbing but unable to cum despite the pressure on your prostate. With a soft purr, she pulls out of you, your pucker left gaped and leaking her cum as she pats your butt with a paw before leaving you there. You quickly get up and make your way to safer area.";
	else if (player is female and anallevel is 3):
		if Player is submissive:
			say "     The large taur pushes you to your hands and knees before settling above you, her paws on the sides of your head and cock poking at your ass. She thrusts forward, trying to bury her dick inside your ass, missing her target and instead thrusting between the lips of your [cunt size desc of Player] [CockName of Player in lower case] pussy. You start wanting it as she tries to sheathe herself inside your colon. You reach back, spreading your cheeks to help her push that barbed cock inside you. Both of you moan out loud once she hits her target, filling your asshole with her thick cock. It takes a while, but eventually she manages to hilt inside you, her furred balls slapping against your behind.";
			say "     Once she has managed to embed herself inside your butt there is no stopping her. She keeps pounding your ass like it's her property, which it very much is right now. You moan as the barbs covering her member keep raking on the inside of your ass. If another survivor came across you two, they wouldn't be able to tell you apart from another mutant that has lost their senses, face down ass up, drooling on the ground while a panther taur fills their ass. With a yowl, she hilts herself before the feline erection inside your ass twitches and unloads the cargo of her nuts inside your colon. You moan in submissive pleasure as you finally cum, your pussy fluttering and clenching around the cock stuffing your ass. With a soft purr, she pulls out of you, your pucker left gaped and leaking her cum as she pats your butt with a paw before leaving you there. You quickly get up and make your way to safer area.";
		else if "Dominant" is listed in feats of Player:
			say "     The large taur pushes you to your hands and knees before settling above you, her paws on the sides of your head and cock poking at your ass. She thrusts forward, trying to bury her dick inside your ass, though she misses her target and instead thrusts between the lips of your [cunt size desc of Player] [CockName of Player in lower case] pussy. Grunting, you try to avoid her thrusting cock as she tries to sheathe herself inside you. She presses her paw to the back of your head, her claws reminding you who is in control here. You grunt in pain when she hits her target, filling your asshole with her thick cock. It takes a while, but eventually she manages to hilt inside you, her furred balls slapping against your behind.";
			say "     Once she has managed to embed herself inside your butt there is no stopping her. She keeps pounding your ass like it's her property, which it very much is right now. You moan as the barbs covering her member keep raking on the inside of your ass. If another survivor came across you two, they wouldn't be able to tell you apart from another mutant that has lost their senses, face down ass up, whimpering on the ground while a panther taur fills their ass. With a yowl, she hilts herself before the feline erection inside your ass twitches and unloads the cargo of her nuts inside your colon. You sigh as she finally finishes using your ass. With a soft purr, she pulls out of you, your pucker left gaped and leaking her cum as she pats your butt with a paw before leaving you there. You get up quickly and make your way to safer area.";
		else:
			say "     The large taur pushes you to your hands and knees before settling above you, her paws on the sides of your head and cock poking at your ass. She thrusts forward, trying to bury her dick inside your ass, though she misses her target and instead thrusts against your buttocks. Resigning yourself into being the panther's cocksleeve for a while, you prepare yourself for the inevitable penetration. She thrusts once, missing her target and hot dogging her feline member between your ass cheeks instead, twice, this time grinding between the lips of your [cunt size desc of Player] cunt, and the third time she manages to bury her cock inside your back passage. Once she pierces your pucker, you bite your lip while she yowls loudly. She shuffles her paws before thrusting as deep as she can, her furred balls slapping against your behind.";
			say "     Once she has managed to embed herself inside your butt there is no stopping her. She keeps pounding your ass like it's her property, which it very much is right now. You whimper as the barbs covering her member keep raking on the inside of your ass. If another survivor came across you two, they wouldn't be able tell you apart from another mutant that has lost their senses, face down ass up while a panther taur fills their ass. With a yowl, she hilts herself before the feline erection inside your ass twitches and unloads the cargo of her nuts inside your colon. You moan from the feeling of her hot feline pudding filling your ass, your pussy leaking but unable to cum without a cock stuffing it. With a soft purr, she pulls out of you, your pucker left gaped and leaking her cum as she pats your butt with a paw before leaving you there. You get up quickly and make your way to safer area.";
	else if Player is female:
		if Cunt Depth of Player < 10 or Cunt Tightness of Player < 8:
			say "     She moves up behind you, giving a soft purr of approval as she bowls you over onto your back. She clambers over you easily, many soft breasts along her belly rubbing against your [breast size desc of Player] chest. She thrusts her hips forward, and you can feel her thick, spined member rubbing along your left leg, then your right as she rocks, trying to find the target. Her powerful lower paws pin you in place as she gets the aim right, nudging the massive head to your [cunt size desc of Player] lips and shoving forward.";
			say "     Pain and pleasure alternate as she tries to wedge herself into your resisting passage. Though you are too small to take her, she gives it her best try despite, stretching you and rubbing your walls with her soft spines, sending flashes before your eyes at the overwhelming sensations radiating from your overfilled pussy. As she finds your bottom, she starts to rock as hard as she can, battering against your cervix, her large balls swaying potently with every thrust, her breasts mashing against you.";
			say "With a loud howl, she explodes thickly into you, feline cum spraying everywhere, splashing your thighs and messing up the ground as most of it washes back even as your womb swells with what does make it in. Satisfied, the feline uses a paw to gently rub your chest a moment, then slides free, spines tickling faintly along the way. With a happy sigh, she slips away, leaving you in the puddle.[impregchance]";
			increase Cunt Depth of Player by 2;
			increase Cunt Tightness of Player by 1;
		else:
			say "     The feline brushes her pawlike hands across your [Skin of Player] body, pressing to your front with her two heavy milk bags. Her hands reach for your sides, caressing as she bites at your ears gently, whispering, 'You will do just fine.'";
			say "     She prowls behind you, then hooks her forepaws around your torso, hefting you up as she eases herself forward. You can feel her firm spear press against your thick lips, then push smoothly into your trembling form. Despite its mass, the cat has no issue fucking your huge pussy, holding you firmly to her lower torso as she rocks against you powerfully, letting her heavy balls slap against you with potent thuds.";
			say "     The barbs of the shaft tickle and pull at your inner walls with every withdraw of the firm tool, sending ecstatic tingles along your spine and keeping your paralyzed form locked in one fitful release after another. Those barbs press harder suddenly, digging softly against your flesh as great floods of seed rush out into your body, rounding your belly with molten heat spreading through you, and pouring in a waterfall back down along the shaft and your thighs, dripping to the ground below. The cat, roaring her satisfaction, is slow to gently pull you free and set you to your shaking feet.[impregchance]";
	else: [Oral for players who failed cunt check]
		say "     The feline shoves you roughly to the ground, her lower forepaws on your shoulders as she inches up to you, thrusting her long, barbed shaft against your lips and growling with an obvious desire. Her powerful rear hips rock forward, nudging you until you open your mouth and permit the salty pole across your tongue. The barbs prove soft, caressing over your mouth as she begins to rock into you, purring all the louder with approval. Her paw hands caress over your head, stroking ears and running down over your cheek and [Skin of Player] skin. You can see her balls bouncing with each thrust, her many breasts jiggling just in front of you.";
		say "     She draws you forward, pressing the shaft as far into your mouth as she can, trying to wedge it down your throat as she goes tense, flooding you with great rushes of feline pudding. Most of it arrives in your belly, a direct injection of protein; some of it washes back, splattering across her own thick member and across your front. With a satisfied mew, she draws back, freeing herself from your lips with a pop before she settles. She looks at you a moment, then turns and leaves without word, tail swaying.";
		PlayerEat 5;

to say mount panthertaur:
	say "     As if bowing to her superior, the cat turns away from you, flipping up her tail to expose her large feral sex to your hungry eyes. You can feel your [cock size desc of Player] [Cock of Player] equipment rising to readiness as you approach, quickly shedding anything that would keep you from this graceful, claimed, being. Your hands seize at her powerful rear hips as you press up against her, running the tip of your [Cock of Player] tool up and down against her sex, covering it in the hot, wet dew that she is leaking for you. The smell of it makes your [Ball Size Adjective of Player] [Balls] ache with need. Her soft mewl snaps you back into focus. You give the majestic beast what she desires, pressing the firm head of your tool to her sex, then easing it in slowly.";
	say "     She looks over her back, almost frowning at your slowness. You pull her back and lunge forward. Her yowl echoes as she screams her approval, and there is nothing to hold either of you back. You rock against her, and she grinds against you, bodies meeting in violent passion. Her honey splatters against the ground as you slam home into her as if every movement were your last, [Ball Size Adjective of Player] [Balls] rocking under you as you plunge into that hot, tight channel";
	if Cock Length of Player > 15:
		say ". Her cunt is spread lewdly wide around your mammoth cock, but she appears to be in heaven; despite the girth, or perhaps because of it, every wet slap makes her mewl and tremble";
	say ".";
	say "     At last, you cannot hold back the tide any longer. Your cry mixes with hers, filling her with seed, making her wet cunt go into spasms around your shaft. She presses back into you powerfully, holding you tight as you release, looking at you over her shoulder as if daring you to not fill her all the way. ";
	if Ball Size of Player < 5:
		say "Your insufficient deposit angers the cat; she gives a displeased growl, then surges forward, leaving your cock glistening as she flees off, disappointed.";
	else if Ball Size of Player > 10:
		say "Your huge balls explode in an amazing torrent of seed. Her tongue extends as her lower belly begins to sag under the weight of your offering. When your orgasm tapers off, she slowly pulls free and begins to, on shaking feet, pad off, satisfied and dizzy.";
	else:
		say "You fire several powerful blasts into her waiting womb. She draws cleanly from you and turns, kissing your cheek, then prowls off.";
		now Libido of Player is (Libido of Player + Libido of Player + 40) / 3;

to say suck panthertaur:
	say "     Eyeing that heavy shaft below the feline's lower body and feeling your mouth watering slightly, you motion for her to get down and roll over onto her backs. She does so, albeit with a curious look... properly exposing that long barbed shaft for your viewing pleasure. Practically drinking in the sight of it, you lower yourself down to the ground next to her lower body, reaching out and stroking those soft barbs with your fingers. The soft fleshy nubs feel rather interesting to your touch, but thankfully should pose no issues to your current plan, just add a bit of interesting sensation.";
	say "     Once you're in position and ready you lean in, brushing your tongue over the tip of that member and making the taur shiver with a delight, a bead of warm pre instantly on your tongue. You lick it up, savoring the warm and pleasant taste of the herm for a moment before you move in for more, wrapping your lips around that thick tip and starting to suck. Your hands keep themselves busy as well, one wrapping around (or at least gripping) the lower part of that shaft and pumping it while the other moves lower, beneath the taur's balls to get at her cunt and busily fingering and pleasuring it as well.";
	WaitLineBreak;
	say "     At this point her whole body is trembling a bit and her hands are clutching at the ground, though she seems to be doing you the favor of restraining her instinct to thrust and shove her cock down your throat, letting you take it at your own pace. Which you do quite eagerly, stuffing as much of that softly-barbed feline cock into your mouth and doing your best to wedge it into your throat. ";
	if Player can vore:
		say "With the unnatural stretchiness of your altered body this happens with little difficulty at all, as you manage to get that thick cock to slide down your throat... and take it in all the way to the base as well. This quite surprises the panthertaur and sends a massive shudder through her body. No longer needing one hand on her cock, you're free to use both of your hands to work her cunt while you bob quickly on her length, swallowing around it in powerful motions...";
		say "     Your dual stimulations of her body soon cause her to roar out in bliss as you bring her to a powerful dual climax. Her heavy cock twitching in your throat as seed floods directly down and into your belly, quickly bloating and filling it with shot after shot of her plentiful seed. Her cunt isn't left out either, and your hands are left completely soaked and likely to smell of her feminine juices for a while. With your pleasurable task complete you pop off of her cock, allowing some of her remaining juices to pool between her many breasts as you stand up and clean yourself off a bit, leaving the now passed-out panthertaur lying there as you return to your adventure.";
		PlayerEat 15;
		PlayerDrink 15;
	else:
		say "You're sadly unable to do more than press the tip into your throat, but your swallowing against it certainly seems to please the panthertaur and she growls in approval, her hands busy fondling and squeezing her breasts as you work.";
		say "     Your dual stimulations of her cock and cunt soon cause her to roar out in bliss as you bring her to a strong dual climax. Her powerful cock twitching in your throat as seed floods into your mouth, most of it arriving in your belly; some of it washes back, splattering across her own thick member, your front, and her plentiful breasts. Her cunt isn't left out either, and that hand that was working it is left completely soaked and likely to smell of her feminine juices for a while. With your pleasurable task complete you pop off of her cock, allowing the last few shots of her cum to paint and pool between her many breasts as you stand up and do your best to clean yourself off, leaving the nearly passed-out panthertaur lying there to recover on her own as you return to your adventure.";
		PlayerEat 5;
		PlayerDrink 10;

to say panthertaur ride cowgirl:
	say "     Deciding you want to take the panther's herm cock into your cunt on your own terms you grin at her, ordering her to get down on her backs. She seems slightly reluctant to do so but complies as you insist, settling on her backs and watching you, displaying her many rows of breasts along with that proud spire and orbs of hers. Shedding any clothes in the way, you quickly move to straddle her underbelly, one hand hefting and guiding that tip to your [cunt size desc of Player] lips. Holding it in place, you push yourself back onto it, guiding that tapered tip inside of you with a shiver of excitement from both you and the taur.";
	if Cunt Depth of Player < 10 or Cunt Tightness of Player < 8:
		say "     You let out a grunt as that length proves a bit of a challenge to fit inside your [cunt size desc of Player] pussy. Undeterred however, you wiggle and brace yourself, slowly rocking and grinding yourself down on that length bit by bit. Gradually, you do manage to stretch yourself out more around that thick spire, but you're still not able to take it all. Once you've fit as much of that length as it seems you're going to be able to take for now, you grip onto her breasts for support and start riding that cock more properly, though you're forced to keep your riding of her somewhat slow for the time being. She still seems to be enjoying it however, and the soft flesh barbs slowly dragging along your walls are sending thrills of pleasure up your spine.";
		WaitLineBreak;
		say "     With the tightness of your [cunt size desc of Player] cunt and the thickness of her cock as well as those barbs teasing your walls and your clit, it doesn't look like either of you are going to be lasting long. So it's not too much longer until she shudders and arches under you, cock throbbing powerfully and blasting thick feline scene into your ready depths. Your belly feels slightly bloated for a second before much of it washes back out along her exposed length, splattering her breasts, balls, and your thighs. The sensations of it all is enough to set you off as well, your walls gripping and squeezing around her shaft while ";
		if Player is male:
			say "your own length[smn] twitch[esmv] and spray[smv] your seed across her plentiful breasts";
		else:
			say "you moan and tremble over her";
		say ". Once you've both recovered enough, you pull off of her with a small gush of those fluids that hadn't already spilled out, then get cleaned up before continuing on your way.[impregchance]";
		increase Cunt Depth of Player by 2;
		increase Cunt Tightness of Player by 1;
		now Libido of Player is (Libido of Player + Libido of Player + 40) / 3;
	else:
		say "     The two of you let out a load moan in sync as you easily manage to sink your way down onto that massive spire and you can feel the taur's body rumbling with a heavy purr beneath you. Flashing her a grin, you brace yourself by gripping a pair of her breasts as you push yourself up... before allowing yourself to sink right back down, coaxing another moan from you both. Rather enjoying the thickness of her shaft and the way those soft fleshy barbs drag along your walls, you quickly set a quick pace bouncing yourself up and down on her length, your [cunt size desc of Player] passage easily handling it all.";
		WaitLineBreak;
		say "     Your gyrating hips and your hands on her breasts have the taur moaning and squirming beneath you, her hips bucking slightly every now and then to meet your motions. You find you can't quite mind it though, as every thrust brings another thrill of pleasure for you as well. Your hands squeeze onto her breasts as you feel yourself getting closer, speeding up your motions while her forepaws suddenly grip and press down on your shoulders... Making you gasp as you're hilted fully on that cock and cry out, climax hitting you hard while she grinds up hard into you. Your walls squeeze and grip that thick cock, soaking her sheath and balls with your juices";
		if Player is male:
			say " while your own length[smn] twitch[esmv] and spray[smv] your seed across her plentiful breasts.";
		else:
			say " while you moan and tremble over her.";
		say "     The sensations of your rippling walls send her over the edge in that next moment, and her cock jerks powerfully inside of you as it unloads its potent load, feline cum surging deep inside of you and splattering out around her base as you both revel in your climaxes. You take a moment to gather your wits before giving her a smile and slowly lifting yourself off of her length, seed oozing onto her breasts and dripping onto the ground as you get cleaned up before continuing on your way.[impregchance]";
		now Libido of Player is (Libido of Player + Libido of Player + 40) / 3;



Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Panther Taur"; [name of the overall species of the infection, used for children, ...]
	add "Panther Taur" to infections of FelineList;
	add "Panther Taur" to infections of FurryList;
	add "Panther Taur" to infections of NatureList;
	add "Panther Taur" to infections of HermList;
	add "Panther Taur" to infections of BarbedCockList;
	add "Panther Taur" to infections of SheathedCockList;
	add "Panther Taur" to infections of TaurList;
	add "Panther Taur" to infections of TailList;
	now Name entry is "Panther Taur"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "She [one of]leaps at you and catches you between her heavy breasts, applying the softest crushing you've ever had[or]strikes at you with her clawed hands[or]lashes out with a powerful set of sharp claws[or]rushes right at you, forcing you to back against a wall[at random].";
	now defeated entry is "[defeated_panthertaur]";
	now victory entry is "[panthertaur rape]";
	now desc entry is "[mongendernum 5]An almost pure black panther creature, with a humanoid torso. Her face has some human features, like that snarl, and her slitted, pretty [one of]blue[or]brown[or]green[at random] eyes, but is, overall, feline in make. She has two large breasts on her upper chest, bouncing lightly with her steps. On her undercarriage rest six more heavy bumps, swaying with every powerful step of those large paws of hers. Behind her, tucked between her hindlegs, is a thick sheath, large as a can of chips, with large seed factories to match, all jostling as she moves. Despite her bulk, she moves with grace and agility, which is a shame, since she seems to think you'd be good prey.";
	now face entry is "feline, with a blunt snout, wet black nose and pointed ears above your head"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "bent into a whole new shape, with the body of a black panther attached at your midsection, extending out behind you with four powerful paws[if Nipple Count of Player > 2]. All your breasts except the first two rest on the chest of that lower torso, swaying with each step[end if]"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "[one of]furry[or]black furred[at random]"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "You have a long, black, feline tail that likes to curl and uncurl at its own whim."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]black sheathed[or]barbed[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "you feel warmth as your face begins to reshape into a muzzle, long teeth filling your new mouth, tongue becoming rougher. Your ears are tugged as if by an angry mother, soon perched at the top of your head, pointed and twitching"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "you stagger in place, almost toppling backwards as new legs sprout out, ruining your balance. Fortunately, those new legs dig into the ground, helping to restore your equilibrium as you rapidly grow the torso of a panther from the hips down. Your hands become somewhat pawlike, claws sliding free[if Nipple Count of Player > 2]. Your breasts quiver as all but the top two migrate downward, settling on the undercarriage of your new torso[end if]"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "soft ticklish sensation greets the arrival of a thick pelt of pure black fur across your [bodytype of Player] body"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "you shake it, a new limb extending from it, becoming a long tail, clearly feline in build"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "your cock draws up against your belly as a sheath wraps around it. It also grows soft barbs around the head, sure to stimulate any partner"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 12;
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 27;
	now lev entry is 4; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Outside"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 14; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 4; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 6; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 8; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 14; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 8; [ Width in inches of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 70; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "panther milk";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]animalistic[or]exotic[or]tauric[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]feline[or]panthertaur[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "ftaurpounce"; [ Row used to designate any special combat features, "default" for standard combat. ]
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
"Panther Taur Infection"	"Infection"	""	Panther Taur Infection rule	1000	false

This is the Panther Taur Infection rule:
	if Player has a body of "Panther Taur":
		trigger ending "Panther Taur Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     You get the sudden urge to prowl, and begin seeking an ideal mate. Something within you does not allow you to accept any but the strongest[if Cock Count of Player > 1]. Oddly enough, exposed and vulnerable females seem to always be acceptable. Just the thought of pinning a female down and shoving your [cock size desc of Player] [Cock of Player] rod into their depths is enough to give you a raging hard on[end if].";
		else:
			say "     Your feline body draws stares, mixed between envy and disgust. You eventually gather a bit of a following, all too eager to see to your needs as they worship you as some kind of strange new god - not that you mind much. It's nice to be waited on.";
			if Player is male:
				say "     Strangely enough, some women travel a distance to find you. It seems people are remembering that felines are ancient caretakers of mothers and ask for your blessings over their bellies, usually pregnant already, sometimes now. Those that are not often present themselves, begging to be filled with your [cock size desc of Player] [Cock of Player] shaft. You are only too pleased to comply, filling such supplicants to overflowing with thick seed, then life. They become priests to you, remaining faithfully at your side as they birth litters of healthy kittens.";
			if Player is female:
				say "     You have your fair share of male suitors, most filled with empty praise and grabbing hands. They are pleasing for satisfying itches but little else. It is not until one arrives with the strength to topple you that you feel the stirrings of something close to love. You welcome the man to your bosom, and at your side, for the rest of your lives, producing a large, healthy family of cats.";

Panther Taur ends here.
