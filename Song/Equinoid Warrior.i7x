Version 2 of Equinoid Warrior by Song begins here.
[ Version 1.0 - Initial sex and transformation scenes - Stripes                 ]
[ Version 2.0 - Refactoring and additional sex scenes - Song                    ]
[ Version 2.1 - Liliana has become an NPC - Luneth                              ]
[ Version 2.2 - Extra sex scene and bugfix - Song                               ]

Section 1 - Establishing NPC, pet object, Conversation, and Combat

the linkaction of Liliana is "[LilianaLinkAction]".

to say LilianaLinkAction:
	say "Possible Actions: [link]talk[as]talk Liliana[end link], [link]smell[as]smell Liliana[end link], [link]fuck[as]fuck Liliana[end link][line break]";

equinoid warrior is a pet. equinoid warrior is a part of the player.
understand "Liliana" as equinoid warrior.
The description of equinoid warrior is "[LilianaDesc]".
The weapon damage of equinoid warrior is 7.
The level of equinoid warrior is 3.
The dexterity of equinoid warrior is 12.
The summondesc of equinoid warrior is "[SummonLiliana]".
The dismissdesc of equinoid warrior is "[DismissLiliana]".
The assault of equinoid warrior is "[LilianaAttack]".
The fuckscene of equinoid warrior is "[SexWithLiliana]".
lilianabathsex is a number that varies.

Liliana is a woman.
The description of Liliana is "[LilianaDesc]".

to say LilianaDesc:
	say "     This black equinoid may look a little younger than the others, but she's as much a warrior as the rest of her tribe. Liliana has a tall, imposing figure with strong muscles and a glossy coat of black hair. She has bright, hazel eyes and a pretty smile with white, flat teeth. She's dressed in a simple robe that covers but does not truly hide the shape of her muscled bosom or equine cock.";
	if player is in Courtyard:
		say "     At the moment, the equinoid warrior is relaxing and just enjoying the courtyard.";
	else:
		say "     At the moment, the proud warrior is looking around for any hint of trouble.";

instead of sniffing equinoid warrior:
	say "[LilianaScent]";

instead of sniffing Liliana:
	say "[LilianaScent]";

to say LilianaScent:
	say "     Liliana smells of the equinoids, reminding you of the herd.";

to say SummonLiliana:
	if player is in Courtyard and Liliana is in Courtyard: [summoning while standing next to her]
		say "     You inform Liliana that it's time to head out. She slams her fist into a hoofed hand, showing that she is ready for a fight.";
	else: [regular summoning]
		say "     Liliana strides up to your side with a determined look on her equine face.";
	remove Liliana from play;

to say DismissLiliana:
	move Liliana to Courtyard;
	if player is in Courtyard: [dismissing her in the abbey]
		say "     Rolling her shoulders, Liliana take a seat on the edge of the fountain and awaits your future orders.";
	else: [regular dismiss]
		say "     With a curt nod Liliana makes her way back to the library, although the look in her eyes says she would have preferred to stay by your side.";

to say LilianaAttack:
	say "[one of]The equinoid warrior slams your opponent with her fist.[or]Liliana throws out a fast, sharp kick with one of her hooves to your foe's midsection.[or]The equinoid warrior growls and unleashes a flurry of fast blows.[or]Liliana clocks your opponent with the shaft of her spear.[or]Your equinoid companion strikes with her spear.[at random]";

instead of conversing the Liliana:
	if player is in Courtyard and Liliana is in Courtyard:
		say "[LilianaTalkMenu]";
	else if companion of player is equinoid warrior:
		say "[LilianaTalkMenu]";
	else:
		say "     Liliana isn't here.";

instead of conversing equinoid warrior:
	if equinoid warrior is tamed:
		if player is in Courtyard and Liliana is in Courtyard:
			say "[LilianaTalkMenu]";
		else if companion of player is equinoid warrior:
			say "[LilianaTalkMenu]";
		else:
			say "     Liliana isn't here.";
	else:
		say "     Who?";

to say LilianaTalkMenu:
	say "     'Hmn? [one of]Anything on your mind[or]Something the matter[or]What's on your mind[at random]?' she asks.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk with her";
	now sortorder entry is 1;
	now description entry is "Just have some simple chat";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Talk with her"):
					say "[LilianaTalk1]";
		else if calcnumber is 100:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the equinoid warrior, shaking your head slightly as she gives a questioning look.";
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	wait for any key;
	clear the screen and hyperlink list;

to say LilianaTalk1:
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1:
			say "     'We still have a long way before the painted wolf threat is eliminated...'";
		-- 2:
			say "     'I'm glad you decided to join the herd. Together we shall show this new world our power!";

instead of fucking Liliana:
	say "[SexWithLiliana]";

Section 2 - Sex scene mechanics

to say LilianaSexRandomizer:
	setmonster "Black Equinoid";
	[ Meeting the subsequent conditionals appends values to the end of the qq list. Afterwards, the list is shuffled and a random number is selected. Values and meanings:
		1 = player giving oral
		2 = player receiving oral
		3 = player fucking vaginally
		4 = player being fucked vaginally
		5 = player fucking anally
		6 = player being fucked anally
		7 = player is led to the bath to have intimate sex
	]
	say "     During a free moment, Liliana sidles up to you and runs her hoofed hands over your body. She gives a sexy sigh as she looks over your impressive, equinoid form before kissing you, inflaming your passions further.";
	let qq be { 1 };
	if player is male:
		add 2 to qq;
		add 3 to qq;
	if player is female, add 4 to qq;
	if player is male and anallevel is 3, add 5 to qq;
	if (player is neuter and anallevel > 1) or (player is female and anallevel is 3 and (player is not male or player is submissive)) or (player is not female and anallevel > 1 and (player is submissive or player is mpreg_able)), add 6 to qq;
	if location of player is Equinoid Camp, add 7 to qq;
	sort qq in random order;
	if entry 1 of qq is 1, say "[eqwarsex1]";
	if entry 1 of qq is 2, say "[eqwarsex2]";
	if entry 1 of qq is 3, say "[eqwarsex3]";
	if entry 1 of qq is 4, say "[eqwarsex4]";
	if entry 1 of qq is 5, say "[eqwarsex5]";
	if entry 1 of qq is 6, say "[eqwarsex6]";
	if entry 1 of qq is 7, say "[eqwarsex7]";
	now libido of equinoid warrior is 0;
	if libido of player < 30, now libido of player is 30;
	infect "Black Equinoid";
	now lastfuck of equinoid warrior is turns;


to say LilianaInfectiousFuck: [Runs whenever Liliana is the active pet and the player is not a full Black Equinoid]
	say "     During a free moment, Liliana sidles up to you and runs her hoofed hands over your [bodytype of player] body. 'We need to get you looking like a proper equinoid again.' She nickers softly as she takes her cock in hand and starts stroking it, rubbing it against you. Precum leaves slick trails across your body as she does this.";
	if a random chance of 1 in 3 succeeds:
		say "     You find yourself growing excited and take over stroking her, leaving her free to run her hands over your [bodydesc of player] body";
		if breast size of player > 0:
			say ". She starts by rubbing over your bosom, playing with your breasts and teasing your nipples";
		if cocks of player > 1:
			say ". Her hands drift down to your cocks, taking one in each and stroking them";
		else if cocks of player is 1:
			say ". A hand drifts down to your cock and strokes it";
			if player is female:
				say ". Her free hand moves a little lower before slipping [if cunts of player > 1]her fingers into your pussies[else]a finger into your pussy[end if], causing you to moan in response";
		else if player is female:
			say ". She rubs a hand between your legs and over your wet folds before slipping [if cunts of player > 1]her fingers into your pussies[else]a finger into your pussy[end if], causing you to moan in response";
		say ". You continue stroking her as you enjoy this attention from her until she cums, blasting her seed across your body. As the semen soaks into you, you feel more equinoid.";
	else:
		say "     You find yourself growing excited and lower yourself so you can take her cock in hand and guide it to your mouth. She moans softly and runs her hands over your [facename of player] head. You work the throbbing, dribbling meat with your tongue and mouth until she cums, feeding you her thick load. As your body absorbs the tasty treat, you feel more equinoid.";
	infect "Black Equinoid";
	now lastfuck of equinoid warrior is turns;


to say SexWithLiliana:
	if lastfuck of equinoid warrior - turns < 4:
		say "     You just had some fun with her recently. Try checking back with her a little later.";
	else if player is blequinoidbodied:
		say "[LilianaSexRandomizer]";
	else:
		say "[LilianaInfectiousFuck]";


an everyturn rule:
	if companion of player is equinoid warrior and skipturnblocker is 0:
		if player is blequinoidbodied:
			increase libido of equinoid warrior by 20;
			if libido of equinoid warrior + libido of player > 200 and lastfuck of equinoid warrior - turns >= 4:
				say "[LilianaSexRandomizer]";
		else if lastfuck of equinoid warrior - turns >= 4 and a random chance of 1 in 5 succeeds:
			say "[LilianaInfectiousFuck]";

to say eqwarsex1: [Player gives fellatio]
	say "     You lower yourself so you can take her cock in hand and guide it to your mouth. She moans softly and runs her hands over your equine head, rubbing your ears and nickering softly. You work the throbbing, dribbling meat with your tongue and mouth, working the throbbing length in your long throat until she cums, feeding you her thick load, which you swallow down eagerly, pleased to have pleasured your tribal companion.";

to say eqwarsex2: [Player receives fellatio]
	say "     With a sultry look in her eyes, the equinoid lowers herself to her knees and rubs the side of her muzzle against your cock. You release a pleasured nicker as her mouth wraps around your pulsing flare, her tongue gliding along the spongy flesh of your cockhead. You wrap your hands around her head to guide her further down your mottled pillar, and you shudder to yourself as that smooth, flat muscle caresses your meat, smearing warm, scintillating wetness over every inch of your pre-dribbling dick. Her throat massages your length while her head draws back and forth to simulate slow thrusting, intent on milking you of your essence.";
	say "     All too soon, her lustful attention drives you over the edge. You cum hard into her waiting gullet, muscles drawing tense as she continues to lick and suck with ravenous zeal. Your precious equine seed is drained until you neigh weakly, your lust slaked and companion fed. Once spent, you bundle the youthful equinoid up in your arms and share a hungry, spunk-rich kiss that has you both moan and whinny happily. You have a hard time pulling away from Liliana as you prepare to continue your journey together.";
	now libido of player is libido of player / 2;

to say eqwarsex3: [Player fucks Liliana vaginally]
	say "     Her hoofed hands slide over your body and downwards. As they wrap around your cock, you know what she wants and you have her lie down. Moving atop her, you slide your equine shaft into her lovely body and fuck her. You kiss and nip at the youthful equinoid as you thrust into her, cumming hard as she cries out in release. After some snuggling, you both get back up and prepare to continue your journey together.";
	now libido of player is libido of player / 2;

to say eqwarsex4: [Liliana fucks player vaginally]
	[puts black equinoid as lead monster in case of impregnation]
	setmonster "Black Equinoid";
	say "     Her hoofed hands slide over your body and soon guide you to lie down. She moves atop you, sliding her equine shaft into your juicy cunt so she may fuck you. You kiss and caress one another as she youthful equinoid pounds into you with energetic zeal, cumming hard and sending her hot seed flowing into your womb. After some snuggling, you both get back up and prepare to continue your journey together.[impregchance]";
	now libido of player is libido of player / 2;

to say eqwarsex5: [Player fucks Liliana anally]
	say "     Her hoofed hands slide over your body and downwards. As they wrap around your cock, you know what she wants and you have her lie down. Moving atop her, you tease her equine sex for a moment before aligning your flare with her puckered hole. Liliana whickers as you push inside of her, thick length spearing open the warm, tight channel of her ass. You kiss and nip at the youthful equinoid as you thrust into her, and it's not long until you both cum hard, her spurting length marring her fur as you paint her bowels with your seed. After some snuggling, you both get back up and prepare to continue your journey together.";

to say eqwarsex6: [Liliana fucks player anally]
	[puts black equinoid as lead monster in case of impregnation]
	setmonster "Black Equinoid";
	say "     Her hoofed hands slide over your body and grab your rear, giving it a firm squeeze. Knowing what she needs of you, you move onto all fours and raise your tail. She presses her cock to your tight pucker and pushes it into you with a soft nicker. The youthful equinoid pounds into you with energetic zeal, cumming hard and sending her hot seed flowing into your bowels[if player is male]. You cannot help but cum in response, spraying your submissive seed onto the ground[end if]. After some snuggling, you both get back up and prepare to continue your journey together.[mimpregchance]";
	now libido of player is libido of player / 2;

to say eqwarsex7: [Bath sex scene when standing in Equinoid Camp]
	[puts black equinoid as lead monster in case of impregnation]
	setmonster "Black Equinoid";
	say "     Your companion takes your hand and leads you back to the large hall where you were initiated into the tribe. The bath near the center has been cleaned since [if lilianabathsex is 1]your last romp together[else]the ceremony[end if], now as clear as a pristine mountain lake. With a pleased little sigh, the herm lowers herself into the warm, soothing water, sinking to her shoulders beneath its subtly rippling surface. 'Come, don't be shy. The water's perfect,' Liliana teases, the sultry look in her eyes inviting you closer. [if player is herm]Your stiffening length[smn] and a trickle of wetness between your thighs urge[else if player is male]Your stiffening length[smn] urge[smv][else if player is female]A trickle of wetness between your thighs urges[else]A tingle in your rear urges[end if] you to abide the horse's offer, and you follow after her unthinkingly.";
	say "     Sinking into the pool, your thoughts are numbed by the rich, heady scents that fill your every breath, an arousing yet disarming aroma that you can't quite place. Smiling placidly, you sink against your mate's curvaceous figure, wrapping your arms around her waist as she casts you a soft and loving look. 'Mmh. Allow me,' she all but whispers in your ear, and the commanding kiss that follows makes you shiver and moan into her maw. Her long, flat tongue curls around your own, leading a dance of spit-slick palates while her breath fills your lungs in intoxicating waves. Her softly furred hands roam over your back, exploring every subtle contour with shiver-inducing deliberation. Her stiffening cock grinds against your belly, mottled flesh sliding back and forth across your soft, thin coat.";
	WaitLineBreak;
	if player is neuter or (player is purefemale and anallevel is 3 and a random number from 1 to 2 is 1) or (player is male and player is submissive and anallevel is 3 and a random number from 1 to 2 is 1): [Receiving anal: 100% chance for neuters - 50% chance for pure females with anallevel 3 - 50% chance for bedicked submissives with anallevel 3]
		say "     Distracted as you are, you're in no position to complain when your lover grinds the smooth of her shaft between the buns of your rear. Her fingers dig into your ass as she lifts you up to tease the flare against your passage, the pulsing crown smearing precum across your ring. Eager to [if player is mpreg_ok]breed[else]fuck[end if] you, Liliana begins to lower you down on her equine length, her soft hands caressing your body to help you relax and loosen your reflexively clenching anus. After a moment, your puffy band yields to allow her entrance of your snugly gripping pucker. This is followed by the gentle pluck of her medial ring, then the relief of her lap letting you know that she's fully hilted inside you. Your lover nickers and pulls you tight against her body, letting her breath beat hotly against your neck as she savors the feeling of your asshole wrapped around her maleness. The immense fullness makes you moan in hazy delight, idly caressing the impression of her horsecock in your furry, well-filled belly.";
		say "     Liliana suddenly shifts beneath you, turning around and pressing your back against the wall. Her strong arms thread under your legs, keeping you spread and presented for use as her hands find purchase on the edge of the pool. This new position leaves you completely at her mercy, and she's soon sawing back and forth in your sordid depths, her bestial noises of pleasure resonating through the chamber. The equinoid increases the pace of her thrusting until she's bucking roughly and rapidly into your squeezing colon. The infectious enthusiasm with which Liliana fucks you is met soon with your own exultations of bliss, swept up in the lustful fun of being split apart by that imposing ramrod of flesh.";
		WaitLineBreak;
		say "     Eventually, your lover can't hold back any longer and pushes firm to your form. Her flare engorges to seal the coming tide, and she releases a triumphant whinny as a maelstrom of equine seed pours into your rear, spurting into your bowels in powerful, pressurized blasts. [if player is male]Her length's rhythmic pulsing pushes you right over the edge, spraying thick ropes of seed into the bathwater. The fluids of your lovemaking quickly diffuse through the water, tainting it with mixed cum[else]Whatever seed leaks out quickly diffuse through the water[end if], which tingles as it clings to your own fully infected form. The feeling is invigorating and slightly arousing, making you spasm around your lover's length before her flow begins to taper.";
		say "     Sated, Liliana pulls out of your hungry rear, a cloud of spent seed dispersing from your quickly sealing ring. 'Mmh. We should do that again sometime,' Liliana offers with a rapacious smile. She then leans in to kiss you again, far more tender this time, while her soft hands play over your body in adoration. After soaking in the cloudy water for a while, you and Liliana climb out of the pool and towel each other off. You feel like the experience has strengthened your bond as you step back out into the center of the camp, relaxed and rejuvenated.[mimpregchance]";
	else if (player is puremale) or (player is male and player is dominant) or (player is herm and a random number from 1 to 2 is 1): [Giving vaginal: 100% chance for pure males - 100% chance for dominant bedicked players - 50% chance for herms]
		say "     Distracted as you are, you're in no position to complain when your lover guides your length to her folds, urging you to claim her. You tease the flare of against her passage, her nectar smearing over your cockflesh while you fondle her heavy breasts. Wasting little time with teasing, you align yourself with her entrance and drive deep into Liliana's thick-lipped cunt, pushing all the way to the hilt within that smooth, gripping passage. Your lover moans and digs her hoof-like fingers into your rear, pulling you tight against her body. Nickering softly, you ease your hips back, savoring the feeling of her slick inner walls squeezing around your cock, then push deep into her welcoming folds again, drawing a bestial whinny and a thick spurt of pre from your pleasure-addled partner. You gradually increase the pace of your thrusts until you're bucking roughly and rapidly into the herm's squeezing sex, the clap of joining hips muted beneath the water. Her blissful exultations resonate through the chamber, and the cavalcade of equine noises only excites you further.";
		say "     Soon, you can't hold back any longer and push firm to your faithful companion's form. Your flare engorges to seal the coming tide, and you release a triumphant whinny as a maelstrom of equine seed pours into your partner's sweltering sex, spurting into her womb in powerful, pressurized blasts. Your length's rhythmic pulsing pushes Liliana right over the edge, the equinoid spraying thick ropes of seed into the bathwater, its surface bubbling from the force of her milky white jets. Her output quickly diffuses trough the water, tainting it with her cum, which tingles as it clings to your own fully infected form. The feeling is invigorating and slightly arousing, making you twitch in your lover's depths with a final strained spurt before the flow begins to taper.";
		WaitLineBreak;
		say "     Sated, you pull out of your lover's hungry sex, a cloud of spent seed dispersing from her quickly sealing slit. 'Mmh. We should do that again sometime,' Liliana offers with a rapacious smile. She then leans in to kiss you again, far more tender this time, while her soft hands play over your body in adoration. After soaking in the cloudy water for a while, you and Liliana climb out of the pool and towel each other off. You feel like the experience has strengthened your bond as you step back out into the center of the camp, relaxed and rejuvenated.";
	else:
		say "     Distracted as you are, you're in no position to complain when your lover grinds the smooth of her shaft against your yearning folds. Her fingers dig into your rear as she lifts you up to tease the flare against your passage, the pulsing crown smearing precum across your folds. Eager to breed you, Liliana begins to lower you down on her equine length, her soft hands caressing your body to help you relax and allow her entrance. The soft flesh of her cockhead pushes deep into your jealously squeezing cunt, followed by the gentle pluck of her medial ring, then the relief of her lap letting you know that she's fully hilted inside you. Your lover nickers and pulls you tight against her body, letting her breath beat hotly against your neck as she savors the feeling of your depths wrapped around her maleness. The immense fullness makes you moan in hazy delight, idly caressing the impression of her horsecock in your furry, well-filled belly.";
		say "     Liliana suddenly shifts beneath you, turning around and pressing your back against the wall. Her strong arms thread under your legs, keeping you spread and presented for use as her hands find purchase on the edge of the pool. This new position leaves you completely at her mercy, and she's soon sawing back and forth in your [cunt size desc of player] depths, her bestial noises of pleasure resonating through the chamber. The equinoid increases the pace of her thrusting until she's bucking roughly and rapidly into your squeezing sex. The infectious enthusiasm with which Liliana fucks you is met soon with your own exultations of bliss, swept up in the lustful fun of being split apart by that imposing ramrod of flesh.";
		WaitLineBreak;
		say "     Eventually, your lover can't hold back any longer and pushes firm to your form. Her flare engorges to seal the coming tide, and she releases a triumphant whinny as a maelstrom of equine seed pours into your sweltering sex, spurting into your womb in powerful, pressurized blasts. Her length's rhythmic pulsing pushes you right over the edge, orgasming wetly around her still-twitching dick[if player is male] and spraying thick ropes of seed into the bathwater[end if]. The fluids of your lovemaking quickly diffuse through the water, tainting it with mixed cum, which tingles as it clings to your own fully infected form. The feeling is invigorating and slightly arousing, making you spasm around your lover's length before her flow begins to taper.";
		say "     Sated, Liliana pulls out of your hungry sex, a cloud of spent seed dispersing from your quickly sealing slit. 'Mmh. We should do that again sometime,' Liliana offers with a rapacious smile. She then leans in to kiss you again, far more tender this time, while her soft hands play over your body in adoration. After soaking in the cloudy water for a while, you and Liliana climb out of the pool and towel each other off. You feel like the experience has strengthened your bond as you step back out into the center of the camp, relaxed and rejuvenated.[fimpregchance]";
	if lilianabathsex is 0, now lilianabathsex is 1;

Equinoid Warrior ends here.
