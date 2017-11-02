Version 1 of Butterfly for FS by Guest Writers begins here.
[ Version 1.2 - Added 'sexy nightie' to Lingerie Store for Lance's request ]
[- Originally Authored By: Mirumu -]
[ WARNING: The Butterfly's mechanics are very complex. Only very experienced devs should try fiddling with this file for anything beyond minor text adjustments. ]

"Adds a Butterfly to Flexible Survival's Wandering Monsters table"


Section 1 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

Section 2 - Variable and constant definitions

ButterflyForeplay is a truth state that varies. ButterflyForeplay is usually False.
ButterflyRaped is a number that varies. ButterflyRaped is usually 0.
ButterflyPregnant is a truth state that varies. ButterflyPregnant is usually False.
ButterflyBreastDesc is a text that varies. ButterflyBreastDesc is usually "cute and buoyant B-cup".
ButterflyNegligeeTorn is a truth state that varies. ButterflyNegligeeTorn is usually False.
ButterflyLikesYou is a truth state that varies. ButterflyLikesYou is usually False.
ButterflyLove is a truth state that varies. ButterflyLove is usually False.
ButterflyRevenge is a truth state that varies. ButterflyRevenge is usually False.
ButterflyProcreated is a truth state that varies. ButterflyProcreated is usually False.
ButterflyPantiesFound is a truth state that varies. ButterflyPantiesFound is usually False.
ButterflyTummy is a text that varies. ButterflyTummy is usually "".
ButterflyEncounters is a number that varies. ButterflyEncounters is usually 0.
ButterflyHasNegligee is a truth state that varies. ButterflyHasNegligee is usually True.
ButterflyAttire is a text that varies. ButterflyAttire is usually "She is wearing a white negligee, but you can't help but notice the lack of undergarments through its sheer semi-translucency. [if ButterflyNegligeeTorn is True]The negligee is [one of]ripped[or]torn[at random] open at the chest, exposing her [ButterflyBreastDesc] breasts and the protruding [one of]ruby[or]scarlet[at random] red nipples that adorn them. Her chest jiggles[else]The negligee is held together at the bust with a white ribbon. Her build is slight and punctuated with a pair of [ButterflyBreastDesc] breasts jiggling slightly[end if] as her wings flap.".
ButterflyBaby is a person.
The butterflybaby has a text called bodyname. Bodyname is usually "human".
The butterflybaby has a text called facename. Facename is usually "human".
The butterflybaby has a text called skinname. Skinname is usually "human".
The butterflybaby has a text called cockname. cockname is usually "human".
The butterflybaby has a text called tailname. Tailname is usually "human".

ButterflyBaby has a number called Gestation.

Section 3 - Monster Responses

To say butterfly defeat:
	let ButterflyCanGetPregnant be False;
	let cocktext be "";
	if cock of player is not "":
		now cocktext is "[cock size desc of player] [cock of player] ";
	else:
		now cocktext is "[cock size desc of player] ";
	if "Sterile" is not listed in feats of player:
		if a random chance of 1 in 3 succeeds:
			let ButterflyCanGetPregnant be True;
		if a random chance of 1 in 3 succeeds and "Fertile" is listed in feats of the player:
			let ButterflyCanGetPregnant be True;
	if ButterflyPregnant is True:
		follow the ButterflyTummyDesc rule;
		let ButterflyCanGetPregnant be False;
	if ButterflyForeplay is False:
		if cocks of player > 0:
			if a random number from 1 to 100 < the libido of the player:
				Say "Unable to sustain her flight any longer she falls to her knees and you advance on her, pulling down your pants. She looks at your [cocktext]cock[if cocks of player > 1]s[end if] and blushes bashfully. Slowly her head moves closer, sniffing, and as her mouth opens you feel her long proboscis coil around [if cocks of player > 1]the largest of your shafts[else]your shaft[end if]. With the supply of blood to your member constrained it hardens even further. The butterfly plays with the head of your dick in her mouth as her prehensile tongue tightens its grip. She rubs and squeezes your [ball size] with her supple hands.[line break][line break]";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				say "As you feel yourself about to cum, she sniffs curiously at the head of [if cocks of player > 1]one of your cocks[else]your cock[end if] and then in a sudden movement thrusts her proboscis down the tiny opening at the tip. You feel like your cock is on fire as her thin feeding organ presses deep inside through the center of your shaft and down towards your balls. As your muscles spasm, you feel yourself begin to cum. Drained with the sensation, you fall to your knees, her head following, greedily slurping your seed directly from the source, sucking it out before it even has the chance to exit your body. As you lay on the ground, exhausted, but without the familiar puddle, you look at the butterfly's flushed face. She smiles at you as she cleans and licks at her lips in a satisfied manner. 'Tasty,' she says as she flaps up on top of your [skin of player] body. She passionately kisses you on the lips and then quickly lifts off, flying away.[line break]";
				now ButterflyForeplay is True;
		else if breast size of player > 0:
			if a random number from 1 to 100 < the libido of the player:
				Say "Unable to sustain her flight any longer she falls to her knees and you advance on her squeezing your [breast size desc of player] breasts. Kneeling down in front of her she hesitantly climbs on to your lap, exposes your [skin of player] chest and begins to suckle. [if ButterflyNegligeeTorn is False]You let slip the bow on her negligee and brush the strap off her shoulder[else]You brush aside the tattered remains of her negligee fully[end if] exposing one of her flawless breasts decorated with an erect tender red nipple. You want it for yourself and lift her light frame into the air, the suction of her mouth releasing from your boob with a pop.[line break][line break]";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				say "As you pull her in close, your arms wrapped around her midriff, you begin to suck at her breast, squeezing and tugging at her stiff nipple between your tongue and your lip. To your surprise, a thick, sugary liquid sprays into your mouth from her teat. You continue to feed as she moans, and flexes her large colorful wings at the sensation. Soon you begin to feel tired, but as you start to fall asleep she lays your head down gently on the ground. 'Is your thirst satisfied?' she asks, speaking up for the first time as she caresses your full belly. The butterfly smiles and leans in to give your lips a heartfelt kiss. She affectionately cups your cheek in her palm as you drift off. By the time you awake once again, she is nowhere to be seen.[line break]";
				now ButterflyForeplay is True;
				decrease hunger of player by 25;
				if hunger of player < 0, now hunger of player is 0;
				decrease thirst of player by 25;
				if thirst of player < 0, now thirst of player is 0;
		else:
			Say "Having taken one too many blows, the butterfly girl flaps her wings hysterically in dismay and flies off as fast as she can manage.[line break][line break]";
	else if ButterflyPregnant is True:
		say "Seeing you attempt to cut off her escape route, the [if gestation of ButterflyBaby is 3]heavily pregnant butterfly[else if gestation of ButterflyBaby is 2]visibly pregnant butterfly[else if gestation of ButterflyBaby is 1]butterfly, noticeably in the early stages of pregnancy,[end if] takes the initiative. Flapping her wings hysterically in dismay, she flies off as fast as she can, managing to avoid any harm coming to her developing baby.";
	else if heat enabled is true and inheat is true and ButterflyRaped is 0:
		say "The Butterfly girl blushes as she senses your feral lust. Knowing she has no chance to escape and preferring not to have her clothing shredded she quickly removes her negligee and sets it aside as you rapidly approach.[line break][line break]";
		if cocks of player > 0:
			say "She kneels down and offers to satiate your lust presenting you her rump. You lift her flexible stripy abdomen forward exposing her twat only to find her fingers tenderizing it in preparation for your entry. A moan escapes her lips as [if cocks of player > 1]the largest of your [cocktext]shafts[else]your [cocktext]shaft[end if] penetrates her sex. Her wings straining, and antennae stiffening as you pump, your [ball size] noisily slap against her wet velvet skin. As you orgasm, your seed pours deep into her chamber. [if cocks of player > 1]Not finished yet, you withdraw your depleted member and then insert the next with an audible squelch. The butterfly looks back at you, panting lustfully, knowing she's going to experience every cock multiple times. [end if]After much time and much fucking later, you leave the butterfly lying on the ground. Her ass and thighs are coated in layers of your cum as more drools out of her well-used pussy.[line break]";
			if ButterflyCanGetPregnant is True:
				impregnatebutterfly;
				now ButterflyLove is True;
				if ButterflyHasNegligee is True and ButterflyNegligeeTorn is False:
					say "As you go to leave, you notice the butterfly forgot her negligee.";
					say "[bold type]You gain 1 pristine negligee![roman type][line break]";
					now carried of pristine negligee is 1;
				else if ButterflyHasNegligee is True:
					say "As you go to leave, you notice the butterfly forgot her negligee.";
					say "[bold type]You gain 1 damaged negligee![roman type][line break]";
					now carried of damaged negligee is 1;
				now ButterflyHasNegligee is False;
				if butterfly grove is unknown:
					say "You find a note she left behind with a rough map leading to her home.";
					now butterfly grove is known;
				repeat with y running from 1 to number of filled rows in table of random critters:
					choose row y in table of random critters;
					if name entry is "Butterfly":
						now area entry is "Unknown";
						break;
			else:
				now ButterflyLikesYou is True;
		else if cunts of player > 0:
			say "She reaches into the black bag she was carrying and pulls out a strap-on dildo. As she hovers towards you fluttering her wings she attaches the strap-on to her groin. Eager for a deep fucking however it may present itself you bend over and offer your ass towards her. Her makeshift dong finds its target and plunges deep into [if cunts of player > 1]one of your [cunt size desc of player] cunts[else]your [cunt size desc of player] cunt[end if]. She rocks back and forth, energetically hammering your wetness. [if cunts of player > 1]When she's done with your first vagina, she moves on to the, next clearly intending to service every one of your breeding organs. [end if]After much time and much fucking later, you lie there in ecstasy with your hole[if cunts of player > 1]s[end if] aching in pleasure.[line break]";
		else if cocks of player is 0 and cunts of player is 0:
			say "Unable to sustain her flight any longer, she falls to her knees and you advance on her, pulling down your pants. She gazes upon your sexless groin, tilting her head in confusion. With a puzzled expression, she goes to leave, but before doing so takes your hand and places something in it. 'Eat this. Maybe we'll meet again sometime,' she says meekly before flying off.[line break]";
			say "[bold type]You gain 1 testosterone pill![roman type][line break]";
			increase carried of testosterone pill by 1;
		else:
			say "DEBUG: You should never get here.";
	else:
		if cocks of player > 0 and a random number from 1 to 100 < the libido of the player:
			let speech be "";
			if ButterflyRaped is 0:
				now speech is "'You didn't need to be so rough!' she protests with tears forming in her eyes. As you approach she fidgets anxiously, worried at what you may do. She ponders escape but still hopes that you may continue where you previously left off.";
			else:
				now speech is "'Not again!' she shouts in frustration sensing the mood of the moment. As you approach she fidgets anxiously, sure that a repeat of your previous encounter is about to occur. 'You brute,' she murmurs.";
			say "The butterfly girl falls to her knees defeated. [speech] As you kneel down between her legs she uneasily [if ButterflyHasNegligee is True]lifts her negligee up to her waist[else]pulls the leather straps aside[end if] exposing her [one of]beautiful[or]attractive[or]alluring[or]elegant[or]graceful[at random] pussy. The moisture of her [one of]pristine[or]perfect[or]flawless[at random] slit glistens in the light. [if ButterflyNegligeeTorn is False and ButterflyHasNegligee is True]You grab the straps of her negligee and roughly yank them aside tearing the ribbon holding it to her chest and[else if ButterflyHasNegligee is True]Fondling the [ButterflyBreastDesc] breasts protruding through her torn negligee you circle your finger over her textured areola and[else]You slip your hand down her top roughly fondling her [ButterflyBreastDesc] breasts. Dragging them up by the nipples her tits pop free of her leather top and bulge forward prominently as you[end if] plunge [if cocks of player > 1]one of your [cocktext]cock[else]your [cocktext]cock[end if] deep into her wet and [one of]eager[or]expectant[or]excited[or]willing[at random] vagina. Simultaneously your tongue slips into her mouth as her proboscis coils around it, locking your heads together as you exchange fluids. As you ramp up the pace, she pushes at your [skin of player] body in an attempt to pull away from your cock. You've reached the limits of her petite vagina and are banging hard at the end of her passage. Her eyes well up with tears in pain. What will you do?";
			wait for any key;
			let old menu depth be menu depth;
			let ButterflyRapedBefore be ButterflyRaped;
			change the current menu to table of Butterflytreatment choice;
			carry out the displaying activity;
			now menu depth is old menu depth;
			if ButterflyRaped > ButterflyRapedBefore:
				say "Locking her body in place with your strength, you keep pounding away with no respite. With a powerful thrust of your [cocktext]member, it bursts into her cervix.";
				if ButterflyRevenge is False and ButterflyRaped > 1:
					say "She screams at your deep penetration, but then tries to reign-in her outward emotions, determined not to give you the satisfaction. She bites her lip as she gyrates roughly on your cock in a dishonest show of strength. [if ButterflyHasNegligee is True]You tear the tattered remains of her negligee from her body[else]You grab her firmly by the zig zag of ties on her leather top[end if] and press her back down to the ground, stretching her arms out wide. You restrain her arms under your weight and her wings lie pinned underneath. As your piston hammers away at her pussy unabated, her vulnerable breasts bob around on her chest like lumps of jelly. Continuing to pummel her cunt, you sense her mind begin to break as she moans and groans, gasping for air. As you feel the tension build in your cock, you withdraw it from her cunt and explode in a torrent, spraying your cum across her crotch, [if ButterflyHasNegligee is True]tummy[else]leather top[end if], breasts and face. Dazed, the butterfly starts to crawl away. Attempting to lift off, she loses her sense of direction and orientation and descends back to the ground with a thud. Eventually, after a couple of attempts, she manages to get airborne and flies off.[line break]";
					say "[bold type]You gain 1 damaged negligee![roman type][line break]";
					now carried of damaged negligee is 1;
					now ButterflyHasNegligee is False;
					if butterfly grove is unknown:
						say "You find a note tucked into the negligee consisting of a rough map that you assume leads to her home.";
						now butterfly grove is known;
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Butterfly":
							now area entry is "Unknown";
							break;
				else:
					say "She screams and almost faints in shock as you orgasm and pump a seemingly never ending supply of cum directly into her womb. She lies there for a while, your spooge dribbling from her cunt as her antennas twitch. Soon the butterfly rises still dazed, unsteady on her legs and crying. 'You meanie!' she shouts just before flying off ungracefully in tears.[line break][line break]";
					now ButterflyLove is False;
			else:
				say "Reacting to her discomfort you ease back to her pace and avoid probing so deep. Appreciating your kindness she embraces your [skin of player] body to get even closer relishing your every thrust as it gently kisses at the opening of her cervix. You gaze lustfully into her [one of]brilliant[or]vibrant[or]vivid[at random] green eyes as one hand stimulates the red nipple on one of her breasts. In response her well-lubricated snatch tightens around your [cocktext]cock and she blushes at the thought of you[one of]r intimate copulation[or]r joined bodies[or]r interlocked reproductive organs[or]r linked genitalia[or]r bodies mating[or] breeding with her[at random]. As you both climax in unison you pump a seemingly never ending supply of cum into her womb. Her eyes letting you know that she welcomes every spurt[if ButterflyCanGetPregnant is True], and the inevitable pregnancy that follows[end if]. After spending some time in each other's arms you each rise to go your separate ways. She gives you a deep kiss in the way only a girl with a tongue like hers can, and then lifts off the ground happily flapping her wings she turns to depart. The last sight you see is your creamy semen oozing from her noticeably red cunt.[line break]";
				repeat with y running from 1 to number of filled rows in table of random critters:
					choose row y in table of random critters;
					if name entry is "Butterfly":
						let debit be 0;
						if hardmode is true and level of player > 3, let debit be level of player - 3;
						now lev entry is 3 + debit;
						now str entry is 16;
						now dex entry is 16 + ( lev entry / 5 );
						now HP entry is 30 + ( debit * 4 );
						now wdam entry is 7 + ( debit / 3 );
						now sex entry is "Male";
						break;
				if ButterflyCanGetPregnant is True:
					now the libido of the player is (the libido of the player) / 2;
					impregnatebutterfly;
					now ButterflyLove is True;
					if ButterflyHasNegligee is True and ButterflyNegligeeTorn is False:
						say "As you go to leave, you notice the butterfly forgot her negligee.";
						say "[bold type]You gain 1 pristine negligee![roman type][line break]";
						now carried of pristine negligee is 1;
					else if ButterflyHasNegligee is True:
						say "As you go to leave, you notice the butterfly forgot her negligee.";
						say "[bold type]You gain 1 damaged negligee![roman type][line break]";
						now carried of pristine negligee is 1;
					now ButterflyHasNegligee is False;
					if butterfly grove is unknown:
						say "You find a note she left behind with a rough map leading to her home.";
						now butterfly grove is known;
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Butterfly":
							now area entry is "Unknown";
							break;
				else:
					now ButterflyLikesYou is True;
			now ButterflyNegligeeTorn is True;
		else if cunts of player > 0 and a random number from 1 to 100 < the libido of the player:
			let speech be "";
			if ButterflyRaped is 0:
				now speech is "'You didn't need to be so rough!' she protests with tears forming in her eyes. As you approach she fidgets anxiously, worried at what you may do. She ponders escape but still hopes that you may continue where you previously left off.";
			else:
				now speech is "'Not again!' she shouts in frustration sensing the mood of the moment. As you approach she fidgets anxiously, sure that a repeat of your previous encounter is about to occur. 'You brute,' she murmurs.";
			say "The butterfly girl falls down on her back defeated. [speech] As you kneel your [skin of player] form down between her legs she uneasily [if ButterflyHasNegligee is True]lifts her negligee up to her waist[else]pulls the leather straps aside[end if] exposing her [one of]beautiful[or]attractive[or]alluring[or]elegant[or]graceful[at random] pussy. The moisture of her [one of]pristine[or]perfect[or]flawless[at random] slit glistens in the light. [if ButterflyNegligeeTorn is False and ButterflyHasNegligee is True]You grab the straps of her negligee and roughly yank them aside tearing the ribbon holding it to her chest and[else if ButterflyHasNegligee is True]Fondling the [ButterflyBreastDesc] breasts protruding through her torn negligee you circle your finger over her textured areola and[else]You slip your hand down her top roughly fondling her [ButterflyBreastDesc] breasts. Dragging them up by the nipples her tits pop free of her leather top and bulge forward prominently as you[end if] then without warning ram three of your fingers in her pussy. As she gasps at the unexpected attack you ramp up the pace and spread her wide. Her eyes well up with tears in pain and she rolls over and tries to pull away. What will you do?";
			now ButterflyNegligeeTorn is True;
			wait for any key;
			let old menu depth be menu depth;
			let ButterflyRapedBefore be ButterflyRaped;
			change the current menu to table of Butterflytreatment choice;
			carry out the displaying activity;
			now menu depth is old menu depth;
			if ButterflyRaped > ButterflyRapedBefore:
				if ButterflyRevenge is False and ButterflyRaped > 1:
					say "You restrain her by the leg as you insert a fourth and then a fifth finger. With her on all fours you fist away at the butterfly stretching her passage to its limits. She screams at your deep penetration, but then tries to reign-in her outward emotions determined not to give you the satisfaction. She bites her lip trying to distract her mind from the assault her body is receiving as [if ButterflyHasNegligee is True]you tear the tattered remains of her negligee from it[else]you let slip the tie on her leather skirt allowing it to fall off her and onto the ground[end if]. Spreading her legs further apart for better access you hammer away at her pussy unabated, her vulnerable breasts bobbing around on her chest like lumps of jelly. Continuing to pummel her cunt you sense her mind begin to break as she moans and groans gasping for air. Losing all sense of the difference between pleasure and pain the butterfly orgasms in spite of herself. Still dazed she starts to crawl away[if ButterflyHasNegligee is False], her skirt in her hand[end if]. Attempting to lift off she loses her sense of direction and orientation descending back to the ground with a thud. Eventually after a couple of attempts she manages to get airborne and flies off.[line break][line break]";
					say "[bold type]You gain 1 damaged negligee![roman type][line break]";
					now carried of damaged negligee is 1;
					now ButterflyHasNegligee is False;
					if butterfly grove is unknown:
						say "You find a note tucked into the negligee consisting of a rough map that you assume leads to her home.";
						now butterfly grove is known;
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Butterfly":
							now area entry is "Unknown";
							break;
				else:
					say "You restrain her by the leg as you insert a fourth and then a fifth finger. With her on all fours you fist away at the butterfly stretching her passage to its limits. Unable to take the punishment she screams and almost faints in shock as you push deep. She lies there for a while, her cunt red and distended as her antennas twitch. Soon the butterfly rises still dazed, unsteady on her legs and crying. 'You meanie!' she shouts just before flying off ungracefully in tears.[line break][line break]";
					now ButterflyLove is False;
			else:
				say "Reacting to her discomfort you withdraw your fingers and gently hold on to her legs. Softly you kiss her petals in apology. Appreciating your consideration she stops resisting as you gently caress her plump stripy abdomen and lower belly as you lap away at her rapidly moistening vagina with your tongue. The butterfly's moans increase as you service her cunt and toy with her erect clitoris, her [ButterflyBreastDesc] tits swinging freely beneath her. Arching her back in ecstasy, her wings flicking about wildly, she cums in a torrent and squirts her sweet and sticky juice over your face in a succession of powerful bursts. As you rub your cum-soaked eyes, she turns and looks at you, embarrassed at her transgression. 'I'm sorry! I'm sorry!' she exclaims, mortified as she attempts to clean your face with her hands and mouth, but is taken aback when you lick between her fingers and retrieve the cum on her lips using yours. Coming to the realization that you loved every moment of her liquid discharge, she accepts your embrace as your [skin of player] body entwines with hers. As her cum drips down and smears between your bodies, you whittle away time cleaning one another with your mouths.[line break]";
				increase ButterflyEncounters by 1;
				repeat with y running from 1 to number of filled rows in table of random critters:
					choose row y in table of random critters;
					if name entry is "Butterfly":
						let debit be 0;
						if hardmode is true and level of player > 3, let debit be level of player - 3;
						now lev entry is 3 + debit;
						now str entry is 16;
						now dex entry is 16 + ( lev entry / 5 );
						now HP entry is 30 + ( debit * 4 );
						now wdam entry is 7 + ( debit / 3 );
						now sex entry is "Male";
						break;
				if a random number from 1 to 10 < ButterflyEncounters:
					now ButterflyLove is True;
					if ButterflyHasNegligee is True and ButterflyNegligeeTorn is False:
						say "As you go to leave, you notice the butterfly forgot her negligee.";
						say "[bold type]You gain 1 pristine negligee![roman type][line break]";
						now carried of pristine negligee is 1;
					else if ButterflyHasNegligee is True:
						say "As you go to leave, you notice the butterfly forgot her negligee.";
						say "[bold type]You gain 1 damaged negligee![roman type][line break]";
						now carried of damaged negligee is 1;
					now ButterflyHasNegligee is False;
					if butterfly grove is unknown:
						say "You find a note tucked into the negligee consisting of a rough map that you assume leads to her home.";
						now butterfly grove is known;
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Butterfly":
							now area entry is "Unknown";
							break;
				else:
					now ButterflyLikesYou is True;
		else:
			say "Having taken one too many blows the butterfly girl flaps her wings hysterically in dismay and flies off as fast as she can manage.";
	if ButterflyPregnant is True:
		increase gestation of ButterflyBaby by 1;
		if gestation of ButterflyBaby > 3:
			now gestation of ButterflyBaby is 0;
			now ButterflyPregnant is False;
			say "You suddenly feel a strange feeling of achievement in your [ball size].";
		follow the ButterflyTummyDesc rule;
To say butterfly attack:
	let ButterflyCanGetPregnant be False;
	let cocktext be "";
	if cock of player is not "":
		now cocktext is "[cock size desc of player] [cock of player] ";
	else:
		now cocktext is "[cock size desc of player] ";
	if "Sterile" is not listed in feats of player:
		if a random chance of 1 in 3 succeeds:
			let ButterflyCanGetPregnant be True;
		if a random chance of 1 in 3 succeeds and "Fertile" is listed in feats of the player:
			let ButterflyCanGetPregnant be True;
	if ButterflyPregnant is True:
		follow the ButterflyTummyDesc rule;
		let ButterflyCanGetPregnant be False;
	if ButterflyRaped is 1 or ButterflyRaped is 2:
		say "The Butterfly girl glares at you and pushes you to the ground. 'Hmph!' she huffs, then scowls. 'My turn now.' She discards her negligee and roughly sits her striped rotund bum down on your face. 'Lick,' she commands, and as your eyes adjust to the light, you can make out the shape of her sphincter before you as she tears off your clothes.[line break][line break]";
		if "Sterile" is not listed in feats of player:
			add "Sterile" to feats of player;
		if cocks of player > 0:
			say "She grabs [if cocks of player > 1]one of[end if]your [cocktext]shaft[if cocks of player > 1]s[end if] in her hand and squeezes it painfully. 'If you don't want to lose this, start licking.' Possibly due to the nanites, you find yourself turned on by the butterfly's new-found assertiveness. You oblige and begin licking her asshole as commanded. Her proboscis shoots down the hole at the tip of [if cocks of player > 1]one of [end if]your [cocktext]cock[if cocks of player > 1]s[end if] but it's different from before as she penetrates deeper, all the way to your [ball size]. Her long tongue pierces through the valves and begins to suck the stored seed right out of your balls. You feel your cock[if cocks of player > 1]s[end if] soften and your balls shrink as your mojo is drawn out of them, leaving you sterile. As your groin convulses in pain, she recoils her tongue and chides, 'You're not licking.'[line break][line break]";
			if "One Way" is not listed in feats of player:
				decrease cock length of player by 1;
				decrease cock length of player by cock length of player divided by 3;
				decrease cock width of player by 1;
				decrease cock width of player by cock width of player divided by 4;
				if "Male Preferred" is listed in feats of player:
					if cock length of player < 5, now cock length of player is 5;
					if cock width of player < 3, now cock width of player is 3;
				follow the cock descr rule;
				say " Strange [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your [if cocks of player > 1][one of]cocks[or]lengths[or]shafts[or]poles[at random] as they begin to shrink. They dwindle[else][one of]cock[or]man meat[or]shaft[or]pole[at random] as it begins to shrink. It dwindles[end if] in size, becoming [descr]. ";
				if cock length of player < 1 or cock width of player < 1:
					say "You barely have time to give a whimper as you cease to be a male.";
					now the cocks of the player is 0;
				if cocks of the player > 1 and a random chance of 1 in 3 succeeds:
					say "Sudden pleasure runs through one of your doomed [cock of player] cocks as it sprays the last of its seed, dwindling down to nothing at all and vanishing, leaving only the powerful orgasm to remember it by.";
					decrease cocks of player by 1;
		else if cunts of player > 0:
			say "She reaches down and roughly pulls [if cunts of player > 1]the largest of your cunts[else]your cunt[end if] wide open with her hands. Her proboscis shoots down your passage, quickly bursting into your uterus. It then runs up each of your fallopian tubes in turn. Her long tongue pierces through and begins to suck the eggs right out of your ovaries. You feel your womb contract with the assault as her feeding renders you sterile. As your lower tummy convulses in pain, she recoils her tongue and chides, 'You're not licking.'[line break][line break]";
			if cunts of player is not 0 and "One Way" is not listed in feats of player:
				decrease cunt length of player by 1;
				decrease cunt length of player by cunt length of player divided by 3;
				decrease cunt width of player by 1;
				decrease cunt width of player by cunt width of player divided by 4;
				if "Female Preferred" is listed in feats of player:
					if cunt length of player < 5, now cunt length of player is 5;
					if cunt width of player < 3, now cunt width of player is 3;
				follow the cunt descr rule;
				say " Strange [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your [if cunts of player > 1][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] as they begin to shrink. They[else][one of]cunt[or]pussy[or]vagina[or]cleft[at random] as it begins to shrink. It[end if] dwindles in size, becoming [descr]. ";
				if cunt length of player < 1 or cunt width of player < 1:
					say "With a sickening noise, you cease to be female all together.";
					now the cunts of the player is 0;
				if cunts of the player > 1 and a random chance of 1 in 3 succeeds:
					say "An odd wet noise has you peeking in time to see one of your [one of]cunts[or]pussies[at random] have vanished!";
					decrease cunts of player by 1;
		else:
			say "She looks at your sexless groin and temporarily her anger subsides as she lapses into a fit of laughter. 'Looks like someone already beat me to it. Sucks to be you.' As her frown returns, she chides, 'Keep licking.'";
		say "The butterfly climbs off and rummages through the bag she was carrying emerging with a large strap-on. As she hovers towards you, she attaches the strap-on to her groin, and then with a surprising show of strength she grabs your leg and flips your body over. Knowing what's coming, you try to resist, but her makeshift dong finds its target and punctures your anus painfully. As she rides you like an animal, she slaps your behind hard. 'Hurt me, will you? You're my bitch now.' By the time she's done with you, you're lying naked and face down in the mud with a gaping and swollen rectum. You'd be cold if it wasn't for the heat of the nanites busily working away at your body.[line break]";
		now ButterflyRaped is 0;
		now ButterflyRevenge is True;
		if "Sterile" is not listed in feats of player:
			add "Sterile" to feats of player;
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Butterfly":
				let debit be 0;
				if hardmode is true and level of player > 3, let debit be level of player - 3;
				now lev entry is 3 + debit;
				now str entry is 16;
				now dex entry is 16 + ( lev entry / 5 );
				now HP entry is 30 + ( debit * 4 );
				now wdam entry is 7 + ( debit / 3 );
				now sex entry is "Male";
		stop the action;
	else if ButterflyForeplay is False:
		if cocks of player > 0:
			Say "As you lay defeated, the butterfly girl advances on, you pulling down your pants. She looks at your [cocktext]cock[if cocks of player > 1]s[end if] and blushes bashfully. Slowly her head moves closer, and as her mouth opens, you feel her long proboscis coil around [if cocks of player > 1]the largest of your shafts[else]your shaft[end if]. With the supply of blood to your member constrained, it hardens even further. The girl plays with the head of your dick in her mouth as her prehensile tongue tightens its grip. She rubs and squeezes your [ball size] with her supple hands. As you feel yourself about to cum, she sniffs curiously at the tip and then in a sudden movement thrusts her proboscis down the tiny opening at the head of your cock. You feel like your cock is on fire as her thin feeding organ presses deep inside through the center of your shaft and down towards your balls. As your muscles spasm, you feel yourself begin to cum. You watch the butterfly greedily slurps your seed directly from the source, sucking it out before it even has the chance to exit your body. As you lay on the ground, exhausted, but without the familiar puddle, you look at the butterfly's flushed face. She smiles at you as she cleans and licks at her lips in a satisfied manner. 'Tasty,' she says as she flaps up on top of you. Passionately she kisses you on the lips before quickly lifting off and flying away.[line break]";
			now ButterflyForeplay is True;
		else if breast size of the player > 0:
			Say "As you lay defeated, the butterfly girl advances on you, pulling open your top to expose your [breast size desc of player] breasts. She climbs on top of you and begins to suckle. [if ButterflyNegligeeTorn is False]You let slip the bow on her negligee and brush the strap off her shoulder,[else]You brush aside the tattered remains of her negligee, fully[end if] exposing one of her flawless breasts, decorated with an erect, tender red nipple. You want it for yourself and lift her light frame into the air, the suction of her mouth releasing from your boob with a pop. As you pull her in close, your arms wrapped around her midriff, you begin to suck at her breast, squeezing and tugging at her firm nipple between your tongue and your lip. To your surprise, a thick, sugary liquid sprays into your mouth from her teat. You continue to feed as she moans and flexes her wings at the sensation. Soon you begin to feel tired, but as you start to collapse, she catches you and lays your head down gently on the ground. The butterfly smiles and leans in to give your lips a heartfelt kiss. She affectionately cups your cheek in her palm as you drift off. By the time you awake once again, the butterfly is nowhere to be seen.[line break]";
			now ButterflyForeplay is True;
		else if cunts of player > 0:
			Say "As you lay defeated, the butterfly girl advances on you, stripping your lower body to expose your pubes. She dives between your legs and begins to work on [if cunts of player > 1]one of our vulvas[else]your vulva[end if] with her mouth. [if ButterflyNegligeeTorn is False]You reach down and brush the straps of her negligee aside, providing a[else]You peer down the front of her tattered negligee and enjoy the[end if] view of her flawless breasts dangling and swaying as she services you. From this angle, you can make out the erect, tender red nipples bouncing up and down. You want them for yourself, so you grab her arms and gently guide her light frame up and over you as a thin line of saliva extends between her mouth and your [if cunts of player > 1]luckiest [end if]cunt before breaking and dripping onto your tummy. As you pull her in close, your arms wrapped around her midriff, you begin to suck at her breast, squeezing and tugging at her firm nipple between your tongue and your lip. To your surprise, a thick, sugary liquid sprays into your mouth from her teat. You continue to feed as she moans and flexes her wings at the sensation. Soon you begin to feel tired, but as you start to collapse, she catches you and lays your head down gently on the ground. The butterfly smiles and leans in to give your lips a heartfelt kiss. She affectionately cups your cheek in her palm as you drift off. By the time you awake once again, the butterfly is nowhere to be seen.[line break]";
			now ButterflyForeplay is True;
		else if cocks of player is 0 and cunts of player is 0:
			say "As you lay defeated, the butterfly girl advances on you, pulling down your pants. She gazes upon your sexless groin, tilting her head in confusion. She decides you've suffered enough and goes to leave, but before doing so takes your hand and places something in it. 'Eat this. Maybe we'll meet again sometime,' she says meekly before flying off.[line break]";
			say "[bold type]You gain 1 testosterone pill![roman type][line break]";
			now carried of testosterone pill is 1;
		else:
			say "DEBUG: You should never get here.";
	else:
		if cocks of player > 0:
			say "The butterfly girl lowers herself to the ground on her knees and spreads her legs apart. She bites her lip, looking at you with a sultry gaze, and both her hands roughly drag her negligee up to her waist to expose her [one of]beautiful[or]attractive[or]alluring[or]elegant[or]graceful[at random] pussy. The moisture of her [one of]pristine[or]perfect[or]flawless[at random] slit glistens in the light, evidence to her state of arousal. As you watch, she reaches her arms around her stripy abdomen, and with a hand on either side, spreads her twat apart to expose her [one of]salmon-pink[or]wet[or]damp[or]moist[at random] interior to you. As you kneel down with her, [if ButterflyNegligeeTorn is False]you grab the straps of her negligee and roughly yank them aside, tearing the ribbon holding it to her chest[else]you fondle the [ButterflyBreastDesc] breasts protruding through her torn negligee, circling your finger over her textured areola[end if], and plunge [if cocks of player > 1]one of [end if]your [cocktext]cock[if cocks of player > 1]s[end if] deep into her wet and [one of]eager[or]expectant[or]excited[or]willing[at random] vagina.[line break][line break]";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "Simultaneously your tongue slips into her mouth as her proboscis coils around it locking your heads together as you exchange fluids. She grasps at your body to get even closer relishing your every thrust pounding at the limits of her petite vagina and kissing at the opening of her cervix. You gaze lustfully into her [one of]brilliant[or]vibrant[or]vivid[at random] green eyes as one hand stimulates the red nipple on one of her breasts. In response her well-lubricated snatch tightens around your [cocktext]cock as she blushes at the thought of you[one of]r intimate copulation[or]r joined bodies[or]r interlocked reproductive organs[or]r linked genitalia[or]r bodies mating[or] breeding with her[at random]. As you both climax in unison you pump a seemingly never ending supply of cum into her womb. Her eyes letting you know that she welcomes every spurt[if ButterflyCanGetPregnant is True], and the inevitable pregnancy that follows[end if]. After spending some time in each other's arms you each rise to go your separate ways. She gives you a deep kiss in the way only a girl with a tongue like hers can, and then lifts off the ground happily flapping her wings she turns to depart. The last sight you see is your creamy semen oozing from her noticeably red cunt.[line break][line break]";
			now ButterflyNegligeeTorn is True;
			if ButterflyCanGetPregnant is True:
				now ButterflyLove is True;
				if ButterflyHasNegligee is True and ButterflyNegligeeTorn is False:
					say "As you go to leave, you notice the butterfly forgot her negligee.";
					say "[bold type]You gain 1 pristine negligee![roman type][line break]";
					now carried of pristine negligee is 1;
				else if ButterflyHasNegligee is True:
					say "As you go to leave, you notice the butterfly forgot her negligee.";
					say "[bold type]You gain 1 damaged negligee![roman type][line break]";
					now carried of damaged negligee is 1;
				now ButterflyHasNegligee is False;
				now the libido of the player is (the libido of the player) / 2;
				impregnatebutterfly;
				if butterfly grove is unknown:
					say "You find a note she left behind with a rough map leading to her home.";
					now butterfly grove is known;
				repeat with y running from 1 to number of filled rows in table of random critters:
					choose row y in table of random critters;
					if name entry is "Butterfly":
						now area entry is "Unknown";
						break;
			else:
				now ButterflyLikesYou is True;
		else if cunts of player > 0:
			say "The butterfly lowers herself to the ground on her back and with her knees in the air spreads her legs apart. She bites her lip looking up at you with a sultry gaze, and both her hands roughly drag her negligee up to her waist exposing her [one of]beautiful[or]attractive[or]alluring[or]elegant[or]graceful[at random] pussy. The moisture of her [one of]pristine[or]perfect[or]flawless[at random] slit glistens in the light, evidence to her state of arousal. As you watch she reaches her arms around her stripy abdomen, and with a hand either side spreads her twat apart exposing her [one of]salmon-pink[or]wet[or]damp[or]moist[at random] interior to you. As you kneel down between her legs your tongue is drawn straight to her crotch as you service her eagerly. She reaches for your head and runs her fingers through your hair in ecstasy. She writhes at the sensation as you feel her body spasm at your touch. Momentarily you rise for air, but just as her scent is about to draw you back you find the butterfly is gently guiding your body to roll onto your back to which you oblige.[line break][line break]";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "A sudden gust of wind surprises you as the butterfly rises with a rapid flap of her wings. As she descends face first towards your groin you're treated to a close up of her pussy suspend just before your eyes. As she spreads your labia apart with her delicate fingers and kisses at the sticky tissue between, you drink the sweet and sugary nectar flowing from her cunt. Thirstily you search ever deeper for your new favorite sustenance while she begins to chart [if cunts of player > 1]one of [end if]your [cunt size desc of player] organ[if cunts of player > 1]s[end if] with her thin proboscis exploring first through your folds, then all the way into your uterus squirming in via the cervix. A sensation you've never experienced before hits you as the butterfly siphons out the minuscule traces of semen from your womb that had been deposited in you by your recent male admirers. Lost in the sensation your focus turns to her swollen clit. You pummel it with your tongue and lips as her juices continue to pour down your face. You climax together, your bodies dripping with both sweat and vaginal fluids. After spending some time in each other's arms you each rise to go your separate ways. She gives you a deep kiss in the way only a girl with a tongue like hers can, and then lifts off the ground happily flapping her wings she turns to depart. As she leaves you can't help but notice the contrast between her pale and flawless skin, and her inflamed bright pink cunt.[line break]";
			increase ButterflyEncounters by 1;
			if a random number from 1 to 10 < ButterflyEncounters:
				now ButterflyLove is True;
				if ButterflyHasNegligee is True and ButterflyNegligeeTorn is False:
					say "As you go to leave, you notice the butterfly forgot her negligee.";
					say "[bold type]You gain 1 pristine negligee![roman type][line break]";
					now carried of pristine negligee is 1;
					now ButterflyHasNegligee is False;
				else if ButterflyHasNegligee is True:
					say "As you go to leave, you notice the butterfly forgot her negligee.";
					say "[bold type]You gain 1 damaged negligee![roman type][line break]";
					now carried of damaged negligee is 1;
					now ButterflyHasNegligee is False;
				if butterfly grove is unknown:
					say "You find a note tucked into the negligee consisting of a rough map that you assume leads to her home.";
					now butterfly grove is known;
				repeat with y running from 1 to number of filled rows in table of random critters:
					choose row y in table of random critters;
					if name entry is "Butterfly":
						now area entry is "Unknown";
						break;
			else:
				now ButterflyLikesYou is True;
		else if cocks of player is 0 and cunts of player is 0:
			say "As you lay defeated the butterfly girl advances on you pulling down your pants. She gazes upon your sexless groin, tilting her head in confusion. Unsure how to proceed she backs away and goes to leave, but before doing so takes your hand and places something in it. 'Eat this. Maybe we'll meet again sometime,' she says meekly before flying off.";
			say "[bold type]You gain 1 testosterone pill![roman type][line break]";
			now carried of testosterone pill is 1;
		else:
			say "DEBUG: You should never get here.";
	if ButterflyPregnant is True:
		increase gestation of ButterflyBaby by 1;
		if gestation of ButterflyBaby > 3:
			now gestation of ButterflyBaby is 0;
			now ButterflyPregnant is False;
			say "You suddenly feel a strange feeling of achievement in your [ball size].";
		follow the ButterflyTummyDesc rule;

Section 4 - Monster Definition

When Play begins:
	add { "Butterfly" } to infections of girl;
	Choose a blank row from Table of random critters;
	now name entry is "Butterfly"; [Name of your new Monster]
	now attack entry is "[one of]She darts up suddenly, kicks at your head and painfully connects![or]The butterfly punches you in the midsection with her fist![or]She wraps her legs around your neck [or]Your colourful opponent emits a high pitched noise that hurts your head![at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[butterfly defeat]";
	 [ Text or say command used when Monster is defeated.]
	now victory entry is "[butterfly attack]";
	now desc entry is "[mongendernum 4]The one hovering before you is a female with richly colored translucent wings and pale velvet skin. Her attractive face is framed by wavy blonde hair down to her chin. Beneath her undulating fringe two large [one of]brilliant[or]vibrant[or]vivid[or]and rich[at random] lime green eyes follow your movements. Two long antennae poke out the top of her head. [ButterflyAttire][if gestation of ButterflyBaby is 3] Small droplets of milk twinkle on the ducts of her nipples.[end if][if ButterflyRaped is 1] One of her hands moves protectively to cover her vagina as she recognizes you.[end if][ButterflyTummy] For a moment her mouth opens and what appears to be a long wiry proboscis uncoils out and then retracts back in almost faster than your eyes can see. Her back blends into a plump yellow and black striped abdomen.[if ButterflyRaped > 0 or inheat is true] She is carrying an ominous looking little black bag in her hand.[end if][if ButterflyRaped is 1] She glares at you [one of]angrily[or]furiously[or]enraged[or]fuming[or]seething in anger[or]with contempt[at random] flapping her wings erratically[else if ButterflyLikesYou is True and ButterflyLove is False] She smiles and looks at you [one of]shyly[or]bashfully[or]sheepishly[or]blushing slightly[at random][else if ButterflyLove is True] She looks at you [one of]adoringly[or]lovingly[or]passionately[or]devotedly[at random][else if ButterflyRevenge is True] She looks at you remarkably calmly considering your previous encounter[else] She looks at you [one of]apprehensively[or]cautiously[or]anxiously[or]nervously[at random][end if][if ButterflyRaped greater than 0]. Something tells you that submitting to her would be bad for your health[end if]";[ Description of the creature when you encounter it.]
	now face entry is "a pair of [one of]brilliant[or]vibrant[or]vivid[at random] green eyes, two antennae on top of your head, and a streamlined";[ Face description, format as the text "Your face is (your text)"]
	now body entry is "delicate and fragile, streamlined for flight. Two thin, bright and colorful wings stick out of your back. They aren't strong enough to allow you to fly, but with some effort you find you are able to hover without needing to walk";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "velvet and silky";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You have a large, round abdomen covered in yellow and black stripes.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "ribbed";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it becomes more streamlined and two antennae poke out at top of your head. Your eyes brighten into a [one of]brilliant[or]vibrant[or]vivid[at random] green"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it becomes adapted for flight. Limbs narrow and become lean. Some large and colorful wings sprout out of your back. They aren't strong enough to allow you to fly, but with some effort you find you are able to hover without needing to walk"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "your skin softens becoming velvet textured"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it develops yellow and black stripes and pushes out into a large round abdomen"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it develops a ribbed texture"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 16;
	now dex entry is 16;
	now HP entry is 30;
	now wdam entry is 7;
	now sta entry is 14;
	now per entry is 10;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now lev entry is 3; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you lose ]
	now area entry is "High"; [ Current options are 'Outside' and 'Mall' Case sensitive]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 10; [ Length infection will make cock grow to if cocks]
	now cock width entry is 3; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 0; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 10; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 3; [ Width of female sex infection will try and give you ]
	now libido entry is 20; [ Amount player Libido will go up if defeated ]
	now loot entry is "testosterone pill";
	now lootchance entry is 5; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]delicate[or]streamlined[or]winged[at random]";
	now type entry is "[one of]butterfly[or]insectile[or]lepidopterous[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

Section 5 - Monster Endings

when play ends:
	if bodyname of player is "Butterfly":
		let player_sterile be False;
		if "Sterile" is listed in feats of player:
			now player_sterile is True;
		if humanity of player < 10:
			if ButterflyLove is True:
				say "You settle down with that Butterfly, your mind under the spell of her pheromones and bewitched by the colorful patterns on her wings. She welcomes you with open arms and cherishes your every moment together. ";
				if cocks of player > 0:
					say "You have a very passionate and active sex life[if player_sterile is true], but are unable to have children[else] resulting in regular pregnancies, but your children no longer show any signs of sentience and rapidly fly off following their instincts[end if].";
				else if cunts of player > 0:
					say "You are unable to have children, but the two of you are inseparable all the same living as a happy lesbian couple with a very passionate and active sex life.[line break]";
			else:
				say "As you lose the last fragment of your humanity you fall back on your instincts resorting to extracting nectar from plants. You generally keep away from humans and other creatures. They always seem to be out to catch you. For some reason you have visions of being pinned in a display cabinet and want to avoid that at all costs. There was one human though so enchanted by the colorful patterns on your wings who slowly gained your trust. In due time you became inseparable.[line break]";
		else:
			if ButterflyLove is True:
				say "You rush back to your lover's welcoming arms. She worries about re-entering human society, but your confidence eases her fears. Together you are rescued and rejoin society.[line break][line break]A media frenzy erupts as you rapidly become the poster couple for the infection. ";
				if cocks of player > 0:
					say "Finding she enjoys being in front of the camera your lover takes up fashion modeling, but she's only really comfortable as long as it's you taking the pictures. Together you make a successful team as fashion houses and cosmetics firms worldwide keep you in work and help fund your comfortable lifestyle. You have a very passionate and active sex life, [if player_sterile is true]but are unable to have children[else]resulting in a handful of children. They all follow their own path just like normal human children, although their exotic looks make them a magnet for many[end if].";
				else if cunts of player > 0:
					say "You are unable to have children, but the two of you are inseparable all the same living as a happy lesbian couple with a very active and passionate sex life. Finding you both enjoy being in front of the camera you take up fashion modeling together. You make a successful team as fashion houses and cosmetics firms worldwide keep you in work, and help fund your comfortable lifestyle. ";
				say "Even in your later years you look back fondly on the infection as a blessing. Every morning as you wake and see your lover's familiar face you're reminded of how even if you had to do it all again you wouldn't change a thing.[line break]";
			else:
				say "You are rescued and rejoin society.[line break][line break]A media frenzy erupts as you become the poster child for the infection. Finding you enjoy being in front of the camera you take up fashion modeling, but retire quickly finding the life lonely. At that time you find yourself inspired by your memories of Doctor Matt and finish your education. After graduation you enter the scientific community studying the infection. Your first-hand insight proves invaluable, and you rapidly rise through the ranks as your discoveries mount. One day while on the job you meet an intern who catches your fancy. A short time later you're living together as lovers. It's a happy life, [if ButterflyRaped is 0]leaving you with no regrets[else]but no matter how it seems on the surface, you still find yourself uncomfortable over your treatment of the butterfly back during the infection. As a way to atone, you donate large sums of money to charities looking after the infected[end if].[line break]";

Section 6 - Monster Rules

To impregnatebutterfly:
	let infection be "";
	if a random number from 1 to 100 > 50 and "They Have Your Eyes" is not listed in feats of player:
		now infection is "Butterfly";
	else:
		now infection is skinname of player;
	now skinname of ButterflyBaby is infection;
	if a random number from 1 to 100 > 50 and "They Have Your Eyes" is not listed in feats of player:
		now infection is "Butterfly";
	else:
		now infection is bodyname of player;
	now bodyname of ButterflyBaby is infection;
	if a random number from 1 to 100 > 50 and "They Have Your Eyes" is not listed in feats of player:
		now infection is "Butterfly";
	else:
		now infection is tailname of player;
	now tailname of ButterflyBaby is infection;
	if a random number from 1 to 100 > 50 and "They Have Your Eyes" is not listed in feats of player:
		now infection is "Butterfly";
	else:
		now infection is facename of player;
	now facename of ButterflyBaby is infection;
	now gestation of ButterflyBaby is 0; [1;]
	follow the ButterflyTummyDesc rule;
	now ButterflyPregnant is True;
	if ButterflyBreastDesc is "cute and buoyant B-cup":
		now ButterflyBreastDesc is "full and firm C-cup";

Table of butterflytreatment choice
title	subtable	description	toggle
"Force her"	--	--	butterflytreatment choice rule
"Don't force her"	--	--	butterflytreatment choice rule

This is the butterflytreatment choice rule:
	choose row current menu selection in the current menu;
	if title entry is "Force her":
		let the_player_consets be False;
		if ButterflyRaped is 0:
			say "You sense this decision may have consequences. Are you sure you want to force her?";
			if the player consents:
				say "You shrug off your moment of doubt and decide to force her anyway.[line break]";
				now the_player_consets is True;
			else:
				say "You decide not to force her.[line break]";
				now the_player_consets is False;
		else:	 [You've confirmed once, no need to re-ask]
			now the_player_consets is True;
		if the_player_consets is True:
			increase ButterflyRaped by 1;
			if ButterflyRaped > 1:
				now ButterflyAttire is "She is wearing a long-sleeved, strapless, skin-tight black leather top with a split down the middle reaching to her navel. The split is pulled together by a zig-zag of lacing as the inner-side of each [ButterflyBreastDesc] breast bulges out around the strands. Her rigid nipples deform the otherwise smooth surface of the leather. Colorful wings extend through sizable openings at the back allowing them complete freedom. A tie around her waist dangles dozens of strips of black leather down below her crotch in the style of a grass skirt, but the gaps in coverage let you see she's completely bare underneath. Her stripy yellow and black abdomen pokes out through the strands at the back. She sports a pair of shiny black PVC stockings up to her thighs and a svelte pair of black high-heeled leather boots on her feet.";
			if ButterflyRaped is 1:		[She's going to be seriously pissed with you and twice as strong]
				repeat with y running from 1 to number of filled rows in table of random critters:
					choose row y in table of random critters;
					if name entry is "Butterfly":
						let debit be 0;
						if hardmode is true and level of player > 4, let debit be level of player - 4;
						now lev entry is 4 + debit;
						now str entry is 32;
						now dex entry is 32 + ( lev entry / 5 );
						now HP entry is 45 + ( debit * 5 );
						now wdam entry is 14 + ( 4 * debit / 11 ); [Strong dmg growth rate]
						now sex entry is "Female";
						break;
			now ButterflyLove is False;
	else:
		now ButterflyRaped is 0;
	decrease the menu depth by 1;

This is the ButterflyTummyDesc rule:
	if gestation of ButterflyBaby is 3:
		now ButterflyTummy is " She is heavily pregnant, and looks ready to give birth at any time.";
	else if gestation of ButterflyBaby is 2:
		now ButterflyTummy is " Her belly bulges showing the signs of early pregnancy.";
	else if gestation of ButterflyBaby is 1:
		now ButterflyTummy is " Her skin gives off a radiant glow.";
	else:
		now ButterflyTummy is "";

Does the player mean examining the damaged negligee when the damaged negligee is owned: it is very likely.
Does the player mean examining the pristine negligee when the pristine negligee is owned: it is likely.
Does the player mean littering the damaged negligee when the damaged negligee is owned: it is very likely.
Does the player mean littering the pristine negligee when the pristine negligee is owned: it is likely.
Does the player mean littering the testosterone pill when the testosterone pill is owned: it is likely.
Does the player mean grabbing the pristine negligee: it is very likely.

Section 7 - Monster Items

Table of Game Objects(continued)
name	desc	weight	object
"testosterone pill"	"This small potent looking object has a flower with a cross symbol over it."	1	testosterone pill
"pristine negligee"	"[pristine negligee desc]"	2	pristine negligee
"damaged negligee"	"[damaged negligee desc]"	2	damaged negligee
"cute panties"	"They're dainty low-cut white panties with a colored butterfly pattern, and a butterfly emblem embroidered at the top."	1	cute panties
"sexy nightie"	"The nightie you've picked out for Lance's boyfriend is a sexy number made of silk and lace."	2	sexy nightie
"racy lingerie"	"This set of crimson red lingerie is very racy. It includes a bustier, bra, panties and stockings with garters."	2	racy lingerie

rlingfound is a truth state that varies. rlingfound is usually false.
racy lingerie is a grab object. racy lingerie is equipment. It is not temporary.
The placement of racy lingerie is "body".
The descmod of racy lingerie is "Over your [bodyname of player] body, you're wearing a very racy set of red lingerie.".
The slot of racy lingerie is "body".
the scent of racy lingerie is "While always smelling clean and fresh at first, smelling a little longer picks up a faint perfume and the scent of [if player is herm]male and female [else if player is female]female [else if player is male]male [end if]arousal.".

to say pristine negligee desc:
	say "A long and silky garment made of sheer and semi-translucent fabric.[if lingerie store is unknown] Upon closer inspection you recognize a logo printed on the label to be that of a store you've passed on your travels. You wonder if you should pay the store a visit sometime?[end if]";
	if lingerie store is unknown:
		now lingerie store is known;

to say damaged negligee desc:
	say "A long and silky garment made of sheer and semi-translucent fabric. This one is damaged.[if lingerie store is unknown] Upon closer inspection you recognize a logo printed on the label to be that of a store you've passed on your travels. You wonder if you should pay the store a visit sometime?[end if]";
	if lingerie store is unknown:
		now lingerie store is known;

testosterone pill is a grab object. It is temporary. It is a part of the player.
pristine negligee is a grab object. It is not temporary. It is a part of the player.
damaged negligee is a grab object. It is not temporary. It is a part of the player.
cute panties is a grab object. It is not temporary. It is a part of the player.
sexy nightie is a grab object. It is part of the player. It is not temporary.

the scent of testosterone pill is "The testosterone pill is largely odourless, but a very faint scent conjures images of motor-oil, sawdust and duct tape.".
the scent of pristine negligee is "The pristine negligee smells fresh airy just like the day it was made.".
the scent of damaged negligee is "The damaged negligee smells of sex. You take a whiff and almost collapse as a wave of the butterfly's scent, pheromones and sexual fluids fills you.".
the scent of cute panties is "The cute panties smell like freshly aired linen with a slight hint of perfume.".
the scent of sexy nightie is "The sexy nightie smell like freshly aired linen with a slight hint of perfume.".

the usedesc of testosterone pill is "[testosterone pill use]".
the usedesc of pristine negligee is "You cannot use that here.".
the usedesc of damaged negligee is "You cannot use that here.".
the usedesc of cute panties is "You cannot use that here.".
the usedesc of sexy nightie is "You picked that up for Lance's boyfriend. Hmmm... what was his name again?".

before using a grab object(called x):
	if x is testosterone pill:
		LineBreak;
		if cunts of player > 0:
			say "As you move to slip the pill in your mouth you feel an uneasy shiver run through your cunt[if cunts of player > 1]s[end if]. [if gestation of child > 0]Your lower belly quivers causing you to feel ill. [end if]Are you sure to still want to use it?";
			if the player consents:
				if "Female Preferred" is listed in feats of player or "Always A Pussy" is listed in feats of player:
					say "Your feat will not allow this to work.";
					stop the action;
				continue the action;
			else:
				say "You decide against using the pill and pop it back into your backpack.";
				stop the action;

to say testosterone pill use:
	let cocktext be "";
	if cock of player is not "":
		now cocktext is "[cock size desc of player] [cock of player] ";
	else:
		now cocktext is "[cock size desc of player] ";
	if cunts of player > 0 and cocks of player > 0:		[HERM]
		now cunts of player is 0;
		now cunt width of player is 0;
		now cunt length of player is 0;
		say "With a burst of intense pain the lips of your cunts[if cunts of player > 1]s[end if] fuse together and flatten. Within seconds nothing remains of your former femininity. ";
		increase cock length of player by 2;
		increase cock width of player by 2;
		follow the cock descr rule;
		say "You can see your [if cocks of player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][else][one of]cocks[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random] as [if cocks of player > 1]they gain[else]it gains[end if] in length, becoming [descr]! ";
		say "Your [one of]sac[or]balls[or]orbs[or]cum factories[at random] [one of]tingle[or]churn audibly[or]throb[at random] as they grow larger, [skin of player] flesh growing taught with the expansion, leaving you with [ball size]! ";
	else if cunts of player > 0:				[FEMALE]
		now cunts of player is 0;
		now cunt width of player is 0;
		now cunt length of player is 0;
		now cocks of player is 1;
		now cock length of player is 6;
		now cock width of player is 4;
		follow the cock descr rule;
		say "With your body in shock, you feel your cunt[if cunts of player > 1]s[end if] tighten, push out of your body and form into a [cocktext]cock, pulsing in excitement. As your vaginal passage closes, some new [ball size] [if cockname of player is listed in infections of internallist]forming inside you[else]then pop out underneath your new manhood[end if]. ";
	else if cocks of player > 0:				[MALE]
		now cunts of player is 0;
		now cunt width of player is 0;
		now cunt length of player is 0;
		increase cock length of player by 2;
		increase cock width of player by 2;
		follow the cock descr rule;
		say "You can see your [if cocks of player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][else][one of]cocks[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random] as [if cocks of player > 1]they gain[else]it gains[end if] in length, becoming [descr]! ";
		say "Your [one of]sac[or]balls[or]orbs[or]cum factories[at random] [one of]tingle[or]churn audibly[or]throb[at random] as they grow larger, [skin of player] flesh growing taught with the expansion, leaving you with [ball size]! ";
	else:								[NEUTER]
		now cunts of player is 0;
		now cunt width of player is 0;
		now cunt length of player is 0;
		now cocks of player is 1;
		now cock length of player is 6;
		now cock width of player is 4;
		say "With your body in shock, you feel your bare groin clench as internal changes begin and soon push out of your body to form into a [cocktext]cock, pulsing in excitement. Some new [ball size] [if cockname of player is listed in infections of internallist]form inside you[else]then pop out underneath your new manhood[end if]. ";
	if "Breasts" is not listed in feats of player:
		if breast size of player > 0:
			now breast size of player is 0;
			say "With the feel of a popping balloon, your breasts deflate leaving you with a flat yet muscular chest. ";
	if gestation of child > 0 and the player is not mpreg_ok:
		let infection be "";
		now the child is not born;
		now the gestation of child is 0;
		say "The odd feeling in your lower belly ceases. ";
	LineBreak;


Section 8 - Monster Locations

Butterfly Grove is a room. "[butterfly grove scene]". It is unknown. It is fasttravel. It is private.

to say butterfly grove scene:
	let cocktext be "";
	if cock of player is not "":
		now cocktext is "[cock size desc of player] [cock of player] ";
	else:
		now cocktext is "[cock size desc of player] ";
	let ButterflyCanGetPregnant be False;
	if "Sterile" is not listed in feats of player:
		[odds of pregnancy are higher here given the amount of sex]
		if a random chance of 1 in 2 succeeds:
			let ButterflyCanGetPregnant be True;
		if a random chance of 1 in 2 succeeds and "Fertile" is listed in feats of the player:
			let ButterflyCanGetPregnant be True;
	if ButterflyPregnant is True:
		let ButterflyCanGetPregnant be False;
	follow the ButterflyTummyDesc rule;
	say "You enter the grove of trees and look around. You never knew this place even existed hidden away surrounded by buildings with no access to the street. Around you are a variety of tall trees, both evergreen and deciduous all inhabiting a lush grassy area rich and verdant green.[line break][line break]";
	if ButterflyPregnant is True and cocks of player is 0: [How'd you manage that?]
		say "You sense someone is watching you, but no matter where you look you can't find anyone. As you look around you spot a small item resting in the grass.";
		say "[bold type]You gain 1 testosterone pill![roman type][line break]";
		now carried of testosterone pill is 1;
	else if ButterflyRaped > 1 and ButterflyPregnant is True and gestation of ButterflyBaby is 3:
		say "You stumble upon the butterfly who appears to have recently given birth and is nursing a child on her breast. At first she's unsure how you'll react, but as you show interest in the in the child she develops a cautious trust. The nanites rapidly transfer personality and knowledge from you and your partner's genes to the newborn, who is not newborn for long, soon a young adult. They pop free and stand, smiling. With a slow turn, they show off their [facename of ButterflyBaby] face and [bodyname of ButterflyBaby] body, covered in [skinname of ButterflyBaby] skin. Your child, hungry for knowledge and experience of the world decides to stay with you.";
		add facename of ButterflyBaby to childrenfaces;
		add bodyname of ButterflyBaby to childrenbodies;
		add skinname of ButterflyBaby to childrenskins;
		[now ButterflyProcreated is True;]
		now gestation of ButterflyBaby is 0;
		now ButterflyPregnant is False;
		follow the ButterflyTummyDesc rule;
		increase perception of player by 2;
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "You decide to head back to the library.";
		move the player to grey abbey library;
		follow the turnpass rule;
		stop the action;
	else if ButterflyRaped > 1 and ButterflyPregnant is False:
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Butterfly":
				let debit be 0;
				if hardmode is true and level of player > 3, let debit be level of player - 3;
				now lev entry is 3 + debit;
				now str entry is 16;
				now dex entry is 16 + ( lev entry / 5 );
				now HP entry is 30 + ( debit * 4 );
				now wdam entry is 7 + ( debit / 3 );
				now sex entry is "Male";
				break;
		say "The butterfly girl is hovering before you. [ButterflyAttire][ButterflyTummy][line break][line break]";
		wait for any key;
		let player_sterile be False;
		let player_returned_negligee be False;
		if "Sterile" is listed in feats of player:
			now player_sterile is True;
		if pristine negligee is owned:
			say "You have an item she might like. Do you want to give it to her?";
			if the player consents:
				now player_returned_negligee is True;
				delete pristine negligee;
				say "You hand over the pristine negligee. Surprised by your kind gesture the butterfly hugs you warmly.[line break][line break]";
				now ButterflyRaped is 0;
				if cocks of player > 0:
					say "The butterfly girl lowers herself to the ground on her knees and spreads her legs apart. She bites her lip looking at you with a sultry gaze, and both her hands roughly drag the dangling leather straps aside exposing her [one of]beautiful[or]attractive[or]alluring[or]elegant[or]graceful[at random] pussy. The moisture of her [one of]pristine[or]perfect[or]flawless[at random] slit glistens in the light evidence to her state of arousal. As you watch she reaches her arms around her stripy abdomen, and with a hand either side spreads her twat apart exposing her [one of]salmon-pink[or]wet[or]damp[or]moist[at random] interior to you. As you kneel down to her you release the ties on her top, her breasts spilling free of the leather. You fondle her [ButterflyBreastDesc] breasts circling your finger over her textured areola, and smoothly insert [if cocks of player > 1]one of [end if]your [cocktext]cock[if cocks of player > 1]s[end if] deep into her wet and [one of]eager[or]expectant[or]excited[or]willing[at random] vagina.[line break][line break]";
					if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
					say "Simultaneously your tongue slips into her mouth as her proboscis coils around it locking your heads together as you exchange fluids. She grasps at your body to get even closer relishing your every thrust pounding at the limits of her petite vagina and kissing at the opening of her cervix. You gaze lustfully into her [one of]brilliant[or]vibrant[or]vivid[at random] green eyes as one hand stimulates the red nipple on one of her breasts. In response her well-lubricated snatch tightens around your [cocktext]cock as she blushes at the thought of you[one of]r intimate copulation[or]r joined bodies[or]r interlocked reproductive organs[or]r linked genitalia[or]r bodies mating[or] breeding with her[at random]. As you both climax in unison you pump a seemingly never ending supply of cum into her womb. Her eyes letting you know that she welcomes every spurt[if player_sterile is False], and the inevitable pregnancy that follows[end if]. After spending some time in each other's arms you rise to head home. As you're walking away you glance back to see the butterfly's naked form happily slipping into the negligee you gave her.";
					now ButterflyNegligeeTorn is False;
					now ButterflyAttire is "She is wearing a white negligee, but you can't help but notice the lack of undergarments through its sheer semi-translucency. [if ButterflyNegligeeTorn is True]The negligee is [one of]ripped[or]torn[at random] open at the chest exposing her [ButterflyBreastDesc] breasts and the protruding [one of]ruby[or]scarlet[at random] red nipples that adorn them. Her chest jiggles as her wings flap. [else]The negligee is held together at the bust with a white ribbon. Her build is slight and punctuated with a pair of [ButterflyBreastDesc] breasts jiggling slightly as her wings flap. [end if]";
					now ButterflyHasNegligee is True;
					now ButterflyLove is True;
					infect "Butterfly";
					wait for any key;
					if player_sterile is False: [If at all possible she will get pregnant here otherwise this path is a dead end and is difficult to re-trigger]
						now the libido of the player is (the libido of the player) / 2;
						impregnatebutterfly;
					else: [No other option but to re-enable her as a random spawn]
						repeat with y running from 1 to number of filled rows in table of random critters:
							choose row y in table of random critters;
							if name entry is "Butterfly":
								now area entry is "High";
								break;
				else if cunts of player > 0:
					say "The butterfly lowers herself to the ground on her back and with her knees in the air spreads her legs apart. She bites her lip looking up at you with a sultry gaze, and both her hands roughly drag the dangling leather straps aside exposing her [one of]beautiful[or]attractive[or]alluring[or]elegant[or]graceful[at random] pussy. The moisture of her pristine slit glistens in the light, evidence to her state of arousal. As you watch she reaches her arms around her stripy abdomen, and with a hand either side spreads her twat apart exposing her [one of]salmon-pink[or]wet[or]damp[or]moist[at random] interior to you. As you kneel down between her legs your tongue is drawn straight to her crotch as you service her eagerly. She reaches for your head and runs her fingers through your hair in ecstasy. She writhes at the sensation as you feel her body spasm at your touch. Momentarily you rise for air, but just as her scent is about to draw you back you find the butterfly is gently guiding your body to roll onto your back to which you oblige.[line break][line break]";
					if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
					say "A sudden gust of wind surprises you as the butterfly rises with a rapid flap of her wings. As she descends face first towards your groin you're treated to a close up of her pussy suspend just before your eyes. As she spreads your labia apart with her delicate fingers and kisses at the sticky tissue between, you drink the sweet and sugary nectar flowing from her cunt. Thirstily you search ever deeper for your new favorite sustenance while she begins to chart [if cunts of player > 1]one of [end if]your [cunt size desc of player] organ[if cunts of player > 1]s[end if] with her thin proboscis exploring first through your folds, then all the way into your uterus squirming in via the cervix. A sensation you've never experienced before hits you as the butterfly siphons out the minuscule traces of semen from your womb that had been deposited in you by your recent male admirers. Lost in the sensation your focus turns to her swollen clit. You pummel it with your tongue and lips as her juices continue to pour down your face. You climax together, your bodies dripping with both sweat and vaginal fluids. After spending some time in each other's arms you rise to head home. As you're walking away you glance back to see the butterfly's naked form happily slipping into the negligee you gave her.";
					now ButterflyNegligeeTorn is False;
					now ButterflyAttire is "She is wearing a white negligee, but you can't help but notice the lack of undergarments through its sheer semi-translucency. [if ButterflyNegligeeTorn is True]The negligee is [one of]ripped[or]torn[at random] open at the chest exposing her [ButterflyBreastDesc] breasts and the protruding [one of]ruby[or]scarlet[at random] red nipples that adorn them. Her chest jiggles as her wings flap. [else]The negligee is held together at the bust with a white ribbon. Her build is slight and punctuated with a pair of [ButterflyBreastDesc] breasts jiggling slightly as her wings flap. [end if]";
					now ButterflyHasNegligee is True;
					now ButterflyLove is True;
					infect "Butterfly";
					wait for any key;
				else:
					say "As you pull down your pants she gazes upon your sexless groin, tilting her head in confusion. She goes to leave, but before doing so takes your hand and places something in it. 'Eat this. Maybe we'll meet again sometime,' she says meekly before flying off.[line break][line break]";
					say "[bold type]You gain 1 testosterone pill![roman type][line break]";
					now carried of testosterone pill is 1;
					infect "Butterfly";
					wait for any key;
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Butterfly":
							now area entry is "High";
							break;
		if player_returned_negligee is False and cocks of player > 0 and ButterflyPregnant is False:
			say "You fight at first, but you sense her heart isn't in it as she quickly submits, but instead of tears or anger she lies down on her left side and lifts her leg into the air giving you a clear view of the juices drooling out of her cunt and down her leg. 'Fuck me master,' she says. 'I'm master's toy. Use me. Break me.' Seizing the leg held in front of you, you unzip and remove the boot and then remove her stocking peeling it off the smooth skin of her leg. Still holding her raised right leg in your hands you sit down and straddle her left leg on the ground. Caressing the athletic limb before you, pulling it to your chest you begin to kiss her foot and lick between her toes. You're surprised by her electric reaction as both her antennae straighten out and she moans in ecstasy. Then you remember reading about butterflies having the ability to taste using their feet, and as you examine her closely you notice pores you assume to be for this purpose. Reaching between her widely-spread legs you fondle around her vagina and thigh smearing your fingers with the sweet honey she's been secreting the entire time. Groaning at the sensation you know she wants it. You reach forward and drag down on side of her top as a [ButterflyBreastDesc] breast bursts free from the leather with a pop. A chain reaction starting the garb covering her other breast slips free as a rosy nipple projects itself between the criss-crossed cords. 'Don't tease me master,' she begs, kneading her clit with one hand and trying to reach your pants with the other.[line break][line break]";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "Unimpressed at the interruption you take both her arms and tie them together behind her back with the stocking you removed. With no intention of satisfying her desire so quickly you stick a finger up her anus and begin to probe around. Feeling her back passage open involuntarily as your touch she momentarily loses control of muscles and erupts in a fountain of pee arching on to the ground as you hold her legs spread apart. She blushes intensely at her transgression as you release your [cocktext]cock[if cocks of player > 1]s[end if] from your pants and slap [if cocks of player > 1]the largest[else]it[end if] noisily on her drenched pussy lips. Pushing in the butterfly moans, your penis spreading her wide. Pumping hard, your [cocktext]piston runs the length of her passage filling her strained vaginal tissue.[line break][line break]";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "Rifling through the contents of the black bag she was carrying you stumble upon a large vibrator. Hearing the noise as you switch it on for a test, the butterfly looks back uneasily. Living up to her expectations you slowly insert the vibrator up her asshole and press it forward inch by inch as she moans loudly. Initially she squeals at the sensation of double penetration, but as you continue to pump at both holes she loses her mind and drooling from the corner of her mouth and onto the ground. Pressing deep, you push into her cervix once again as the butterfly relaxes as best she can in an attempt to minimize the pain. Within moments your cock erupts sending a torrent of your seed gushing in to her womb. Once you're happy she's had her fill you liberate her arms and head home.";
			if ButterflyCanGetPregnant is True:
				now the libido of the player is (the libido of the player) / 2;
				impregnatebutterfly;
			wait for any key;
		else if player_returned_negligee is False and cunts of player > 0:
			say "You fight at first, but you sense her heart isn't in it as she quickly submits, but instead of tears or anger she lies down on her left side and lifts her leg into the air giving you a clear view of the juices drooling out of her cunt and down her leg. 'Fuck me master,' she says. 'I'm master's toy. Use me. Break me.' Seizing the leg held in front of you, you unzip and remove the boot and then remove her stocking peeling it off the smooth skin of her leg. Rolling her on to her tummy you take both her arms and tie them together behind her back with the stocking you removed. As she lifts her face off the ground her eyes find your naked crotch, legs spread either side, sitting right in front of her. You reach down a hand and spread your lips apart as you survey the surroundings nonchalantly. As she hobbles forward without the use of her arms she plants her face into your groin and begins to service you, her antennae bouncing all the while. You grip deep in her blonde tresses and pull her head in firmly as you grind your [if cunts of player > 1]multiple [end if]damp cunt[if cunts of player > 1]s[end if] against her face. Her prehensile tongue explores your insides reaching to places no cock has ever been. You feel yourself cum as she attempts to feed on your juices, but the volume is too great and you squirt your cum over her face. She splutters as some goes up her nose, but you're too preoccupied rifling through the contents of the black bag she'd been carrying.[line break][line break]";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "Still attempting to expel the remains your jizz from her nasal cavity she fails to notice as you reach around to her exposed rear end. As you stuff the large vibrator that you discovered in her bag deep into her wet pussy she loses her balance and falls the short distance to the ground face-first with her wings twitching. You flick the switch stimulating her vagina as she moans. Making full use of her bag's contents you set about attaching the strap-on you discovered inside it to your own crotch. You lift her stripy abdomen and spear her ass hole with your artificial dick. Initially she squeals at the sensations of both anal sex and double penetration, but as you pump at both her holes she loses her mind drooling from the corner of her mouth and onto the ground. Pulling her top half up by her restrained arms you reach around and drag down the ties on her leather top allowing her breasts to spill free. You continue to ram at her behind as her breasts cavort freely in the air.[line break][line break]";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "You detach the fake member from your crotch, but leave it lodged up to the hilt in her anus. You roll the butterfly over and as she watches, her wet face gasping for breath, you pull the still-buzzing vibrator from her cunt and clean it with your lips and tongue savoring the taste of her sweet nectar. Once you've sucked it clean you slowly push it up your own back passage throbbing as it fills you. From the bag you pull the only remaining treasure, a double-ended rubber dildo, which you rapidly lodge deep in your muse's cunt. Climbing on top of her incapacitated body you skewer [if cunts of player > 1]the most eager of [end if]your own vagina[if cunts of player > 1]s[end if] down on the rubber toy that connects you and begin to gyrate. Her body squirms as you move your hips instinctively and she begins to do the same. Her moans increase as your hands pinch and pull at her nipples roughly stretching and twisting them. After climaxing together you extract the dildo linking your vaginas and force the sodden toy into her mouth as your mixed juices trickle down her throat. Once you're happy she's had her fill you liberate her arms and head home.";
			infect "Butterfly";
			wait for any key;
		else if player_returned_negligee is False and cunts of player is 0 and cocks of player is 0 and ButterflyPregnant is False:
			say "You fight at first, but you sense her heart isn't in it as she quickly submits, but instead of tears or anger she lies down on her left side and lifts her leg into the air giving you a clear view of the juices drooling out of her cunt and down her leg. 'Fuck me master,' she says. 'I'm master's toy. Use me. Break me.' Seizing the leg held in front of you, you unzip and remove the boot and then remove her stocking peeling it off the smooth skin of her leg. Rolling her on to her tummy you take both her arms and tie them together behind her back with the stocking you removed. With little equipment of your own to work with you fumble around in the suspicious looking bag she was carrying emerging with a large vibrator. Propping her up on her knees you spread her wide with the toy as you lap at her clit with your tongue. As her juices pour into your mouth you feel your body go warm as the nanites begin to do their thing. ";
			infect "Butterfly";
			[re-enable her as a random spawn and reset the scenario since we can't really go too far with this]
			now ButterflyRaped is 1;
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Butterfly":
					now area entry is "High";
					break;
	else if ButterflyPregnant is True and ButterflyLove is True and gestation of ButterflyBaby is 1 and ButterflyRaped is 0:
		now ButterflyAttire is "She is completely naked and makes no attempt to hide any part of her body from the golden tuft of hair above her pubes to the stiff [one of]ruby[or]scarlet[at random] red nipples decorating her jiggling [ButterflyBreastDesc] breasts like small cherries.";
		now ButterflyHasNegligee is False;
		say "The butterfly girl is hovering before you. [ButterflyAttire][ButterflyTummy][line break][line break]";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "You decide to follow the butterfly girl's example and remove your clothes, unable to hide your raging boner[if cocks of player > 1]s[end if]. She approaches you affectionately while looking quietly pleased with herself. She flies hovering in front of you, kissing you enthusiastically and holding your face in her hands as you lift your hands up to her waist and abdomen. She lowers to the ground allowing your hands to wrap around her. Slowly she spins her body in your grip, her large wing brushing across your hands and chest. Your hands come to rest on her belly and she holds them there for a moment as she entwines her fingers with yours. Letting out an excited giggle she turns her head back for a quick kiss. She then turns to face you once again brushing you softly with her other colorful wing and reaches behind your neck. After kissing each other for a moment she tries to lift her body using your shoulders as leverage, but your dick[if cocks of player > 1]s[end if] get[if cocks of player is 1]s[end if] in the way. With both her legs and wings flailing you stoop and pull her up by her thighs.[line break][line break]";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "As her [ButterflyBreastDesc] breasts press against your [skin of player] body she wraps her legs around your midsection kissing you obsessively. With one hand firmly on her abdomen you position [if cocks of player > 1]the largest of [end if]your cock[if cocks of player > 1]s[end if] against her moist labia. Noticing your member draw near she slides back on both arms around your neck to get a good view of you inserting into her. As she peers down, her antennae bob before your eyes. You press your face into her golden tresses and take in her sweet scent. The moans begin as your cock slips into her cunt and you both begin to rock your hips. Her wings spasming in pulses she begins a kissing assault once again, and you return the favor. As her hindquarters fuck you relentlessly you feel the tension build in your cock. Quickly pulling it out of her you press it between your bodies as it explodes in a torrent spraying cum up over her tummy and splattering it on the underside of her breasts. With her legs still wrapped around your waist, she grinds her clit against your cock[if cocks of player > 1]s[end if] as she holds on to you from a single arm around your neck. With her free hand she scoops the cum off her body and feeds it into her mouth.";
		wait for any key;
	else if ButterflyPregnant is True and ButterflyLove is True and gestation of ButterflyBaby is 2 and ButterflyRaped is 0:
		say "The butterfly girl is hovering before you. [ButterflyAttire][ButterflyTummy][line break][line break]";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "The butterfly girl approaches you affectionately, looking more full figured than when you last met. She greets you with a caring hug and a tender kiss. Looking into your eyes, she purrs, 'You're going to be a daddy,' flapping her wings proudly. She draws your hands towards her protruding belly, and you sense the living form inside as you feel a little kick. Your lover notices your eyes on her engorged [ButterflyBreastDesc] breast and smiles, offering it to you. 'Daddy can have the first taste if he wants.' You begin to suckle at her swollen nipple as her thick and sweet milk froths in your mouth. As you enjoy her tasty liquid your thirst and hunger is quenched. Continuing to suck away you feel her hand stroking your throbbing [cocktext]shaft[if cocks of player > 1]s[end if].[line break][line break]";
		decrease hunger of player by 25;
		if hunger of player < 0, now hunger of player is 0;
		decrease thirst of player by 25;
		if thirst of player < 0, now thirst of player is 0;
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say " 'Let me...' she offers as she carefully descends to her knees, the milky residue from the teat you just surrendered trickling down the curve of her breast. She releases your cock[if cocks of player > 1]s[end if] from your pants massaging your [ball size] with her hands. She starts to suck you off, her antennae bouncing cheerfully and her wings mesmerizing you with their flutter. Looking down at your lactating mate, pregnant with your baby, her warm and oily mouth slobbering over your dick makes you stiffen like a rock. As your balls begin to spasm you close your eyes only to once again feel the sensation of her proboscis racing down the opening in the tip of your penis. Strength faltering you stumble forward and catch your lover's head for balance, your fingers entwining in her blonde locks as she guzzles your seed. Careful not to spill a drop she positions her open mouth directly below your drooping member delighting in every drip she finds. 'Delicious!' she exclaims, smacking her lips as she savors and swallows the left-overs.[line break][line break]After spending many enjoyable hours together you go to head home. Just as you're about to leave you find your face squeezed between her [ButterflyBreastDesc] tits and covered in kisses as she bids you farewell.";
		now ButterflyBreastDesc is "plump and bouncy D-cup";
		wait for any key;
	else if ButterflyLove is True and gestation of ButterflyBaby is 3 and ButterflyRaped is 0:
		say "The butterfly girl is hovering before you. [ButterflyAttire][ButterflyTummy][line break][line break]";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "Your butterfly lover embraces you clearly in discomfort. 'I-it's time,' she moans as fluids vacate beneath her bulging tummy. You sit her down on the cleanest spot you can find and spread her knees as her breathing becomes erratic. As she begins to exert and sweat you do what you can to ease the process even if it's only offering her your hand, the hand of her mate, to squeeze. Slowly the top of the baby's head emerges from her birthing canal. You offer encouragement as she heaves and slowly the head emerges, and once past the shoulders the child slips free. Moments later the infant is suckling at one of its mother's [ButterflyBreastDesc] breasts enjoying its first proper meal. You comfort your lover as she tends to the newborn's needs. The nanites rapidly transfer personality and knowledge from you and your partner's genes to the newborn, who is not newborn for long, soon a young adult. They pop free and stand, smiling. With a slow turn, they show off their [facename of ButterflyBaby] face and [bodyname of ButterflyBaby] body, covered in [skinname of ButterflyBaby] skin. You and your lover decide together that your child needs knowledge of the world and will stay with you.";
		add facename of ButterflyBaby to childrenfaces;
		add bodyname of ButterflyBaby to childrenbodies;
		add skinname of ButterflyBaby to childrenskins;
		now ButterflyProcreated is True;
		now gestation of ButterflyBaby is 0;
		now ButterflyPregnant is False;
		follow the ButterflyTummyDesc rule;
		increase perception of player by 2;
		wait for any key;
	else if ButterflyProcreated is True and ButterflyLove is True and ButterflyRaped is 0 and cocks of player > 0:
		say "The butterfly girl is hovering before you. [ButterflyAttire][ButterflyTummy][line break][line break]";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "Your Butterfly lover is very pleased to see both you, and the offspring you created together greeting you lovingly. After talking for a while she tries to pull you off alone to an isolated corner of the grove.[line break][line break]";
		say "Do you follow?";
		if the player consents:
			if cute panties is owned:
				say "Your naked lover spots something sticking out of your pocket and looks at you with a curious expression. You pull the pair of cute panties out and show them to her. She stretches them out examining them closely, her antennae twitching quizzically, but she remains perplexed. You offer to show her their purpose, and taking the panties back you stoop down and lift one of her legs through the appropriate hole, and then move on to the other leg as she reacts in surprise. Pulling them up her velvet thighs and in to place you realize how lucky it is that they're low-cut since they don't get in the way of her large abdomen. She twists around with her arms in the air to view them from various angles. Still curious she tugs at them clearly not used to the feeling. Your [cocktext]cock[if cocks of player > 1]s were[else] was[end if] already standing to attention, but to your surprise the sight of her camel toe takes it up a notch further. With your arm moving instinctually you reach for it, and fondle her through the fabric as she continues to show more interest in the panties than what you're doing.[line break][line break]";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				say "As you put an arm around her midriff and suck at her earlobe she awakens to your advance and starts stroking your [skin of player] [if breast size of player > 0][breast size desc of player] boobs[else]chest[end if]. You kneel down on the ground as the butterfly follows pausing a moment first to give you a good close-up of the panties. She sits on your lap, her panties pressed against your throbbing cock[if cocks of player > 1]s[end if] as you both kiss passionately and hold each other close. As you grope her [ButterflyBreastDesc] breasts you wonder quietly how she'd react to a bra. You reach down and pull the crotch of her panties aside exposing her cunt as she peers down still intrigued at this mysterious piece of cloth. She maneuvers for penetration and a moment later you're in the heat of sex as she rides [if cocks of player > 1]one of your rods[else]your rod[end if] fervently. Sensing your member harden she lets it slip out as you cum expelling a sizable load of sperm over her new panties. She climbs off and tries to examine them as best she can before starting to take them off. You enjoy her usual [']au naturale['] look returning from behind as she strips. As she continues to examine the sodden panties curiously you offer to take them back, but she immediately moves them out of your reach. Stepping away she holds them up to her face, and breathes in your scent. Delirious with excitement she speeds off still clutching the panties to her face.[line break]";
				say "[bold type]You lose 1 cute panties![roman type][line break]";
				decrease carried of cute panties by 1;
			else:
				say "If there was any doubt as to her intentions the pheromones wafting from your lover make them clear. With moisture already streaming down her thighs she begins to strip you. 'I need you inside me,' she says, yearning for your cock[if cocks of player > 1]s[end if]. She leans against a nearby tree and bends over awaiting penetration. Reaching an arm under her body she uses two fingers to spread her pussy apart welcomingly. Your mate bites her lip as she feels the head of [if cocks of player > 1]one of your [cocktext]rods[else]your [cocktext]rod[end if] finding its bearings and rubbing against her lips, her abdomen resting against your [skin of player] tummy. As your pole presses in you sense how her passage has adapted to the shape of your cock[if cocks of player > 1]s[end if] from your various encounters. You pump away, your hands on her hips and it's not long until you're pouring your cum inside.[line break][line break]";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				say "Not finished yet though you lift her leg and carefully spin her around to face you as she suspends her upper body on a branch of the tree, her wings placed carefully out of harms way, and her [ButterflyBreastDesc] breasts heaving with each breath. 'Let me have all your babies,' she says, drunk on the sex. With one hand supporting her abdomen while you thrust, and the other fondling her soft tits and squeezing her nipples you kiss. Your tongue explores her mouth as her proboscis entwines with it. As you exchange saliva without a care, your cum mixes with her juices foaming along your shaft like whipped cream as it constantly plumbs the depths of her pussy. Hoping this moment will last forever you orgasm in unison, your seed once again spurting into her womb as her nectar sprays out at you in pulses trickling down your [ball size].[line break][line break]";
				infect "Butterfly";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				say "As you decouple, the butterfly eases you down to the ground on your back and begins to play with your cock[if cocks of player > 1]s[end if] and balls. She begins to clean the foamy white lather of the intermixed cum from your shaft[if cocks of player > 1]s[end if] using her mouth, never losing your gaze with her own. Soon enough your dick[if cocks of player > 1]s are[else] is[end if] fully hard once again and coated in a thick layer of her clear saliva. She lifts into the air, hovering above you with her wings, then slowly impales her vagina down upon [if cocks of player > 1]the largest of your shafts[else]your shaft[end if], riding you cowgirl style. With her hands resting on your [skin of player] chest, her antennae bounce in time with her [ButterflyBreastDesc] boobs bulging out between her arms. As her ruby red nipples cavort freely, you look into your lover's beautiful green eyes, her blonde hair billowing around her face, and you readily grasp the deep love she feels for you. Sensing the unspoken understanding between you, she tightens around your rod as her lower-half prances upon it. Reaching for each other's hands, you intertwine your fingers as you both climax once again. Her wings jerk with each spasm as a fountain of cum erupts into her uterus and her sticky fluids cascade over your groin. Still connected, your mate leans forward collapsing onto your chest, [if breast size of player > 0]your [breast size desc of player][else]her[end if] breasts cushioning her fall. Your bodies steaming and dripping with both sweat and cum, she nuzzles into your neck as you see her antennae bobbing around contentedly. Enjoying each other's warmth, you drift off to sleep.[line break]";
			infect "Butterfly";
			if ButterflyCanGetPregnant is True:
				now the libido of the player is (the libido of the player) / 2;
				impregnatebutterfly;
			wait for any key;
			decrease the humanity of the player by 5;
			if the humanity of the player < 10:
				end the story saying "You decide against leaving after all.";
		else:
			say "You decide you don't really want to spend time with her.";
	else if cocks of player is 0 and cunts of player > 0 and ButterflyRaped is 0 and ButterflyLove is True:
		say "The butterfly girl is hovering before you. [ButterflyAttire][ButterflyTummy][line break][line break]";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "Your Butterfly lover is very pleased to see you and greets you lovingly. After talking for a while she tries to pull you off alone to an isolated corner of the grove.[line break][line break]";
		say "Do you follow?";
		if the player consents:
			if cute panties is owned:
				say "Your naked lover spots something sticking out of your pocket and looks at you with a curious expression. You pull the pair of cute panties out and show them to her. She stretches them out examining them closely, her antennae twitching quizzically, but she remains perplexed. You offer to show her their purpose, and taking the panties back you stoop down and lift one of her legs through the appropriate hole, and then move on to the other leg as she reacts in surprise. Pulling them up her velvet thighs and in to place, you realize how lucky it is that they're low-cut since they don't get in the way of her large abdomen. She twists around with her arms in the air to view them from various angles. Still curious, she tugs at them, clearly not used to the feeling. Your [cunt size desc of player] vagina[if cunts of player > 1]s were[else] was[end if] already becoming damp, but to your surprise, the sight of her camel toe takes it up a notch further. With your arm moving instinctually you reach for it, and fondle her through the fabric as she continues to show more interest in the panties than what you're doing.[line break][line break]";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				say "As you put an arm around her midriff and suck at her earlobe she awakens to your advance stroking your [skin of player] [if breast size of player > 0][breast size desc of player] boobs[else]chest[end if]. You kneel down on the ground as the butterfly follows pausing a moment first to give you a good close-up of the panties. She sits on your lap as you both kiss passionately and hold each other close. As you fondle her [ButterflyBreastDesc] breasts you wonder quietly how she'd react to a bra. You reach down and pull the crotch of her panties aside exposing her cunt as she peers down still intrigued at this mysterious piece of cloth. You both begin to finger each other's cunts and soon are in the heat of sex as she kneads your [if cunts of player > 1]many pussies[else]pussy[end if] fervently. In a moment of pure ecstasy you both cum as her liquid pours over your lap and you spray a sizable load of fluid over her new panties. She climbs off and tries to examine them as best she can before starting to take them off. You enjoy her usual [']au naturale['] look returning from behind as she strips. As she continues to examine the sodden panties curiously you offer to take them back, but she immediately moves them out of your reach. Stepping away she holds them up to her face, and breathes in your scent. Delirious with excitement she speeds off still clutching the panties to her face.[line break]";
				say "[bold type]You lose 1 cute panties![roman type][line break]";
				decrease carried of cute panties by 1;
			else:
				say "If there was any doubt as to her intentions the pheromones wafting from your lover make them clear. With moisture already streaming down her thighs she begins to strip you. 'I need you,' she says, yearning for your love. She leans against a nearby tree and bends over awaiting your attention. Reaching an arm under her body she uses two fingers to spread her pussy apart welcomingly. Your mate bites her lip as she feels your mouth rubbing along her lips. As your tongue presses into her hole you sense her body spasm in pleasure. You lick away, your hands on her hips and it's not long until she cums in a flurry of moans.[line break][line break]";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				say "Not finished yet though you lift her leg and carefully spin her around to face you as she suspends her upper body on a branch of the tree, her wings placed carefully out of harms way, and her [ButterflyBreastDesc] breasts heaving with each breath. 'Let me look after you now,' she says giddily, but you pay little attention. With one of your hands fingering her pussy, and the other fondling her soft tits, you kiss. Your tongue explores her mouth as her proboscis entwines with it. As you exchange saliva without a care, her juices flow over your hand. Soon you prod into her cunt with a finger as you move your head down to lick and tease her clitoris. Unable to resist any longer you masturbate your own wet slit[if cunts of player > 1]s[end if]. Hoping this moment will last forever you both orgasm together as her nectar sprays out at you in pulses trickling down your face.[line break][line break]";
				infect "Butterfly";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				say "The butterfly eases you down to the ground on your back and begins to play with your vagina[if cunts of player > 1]s[end if]. She tastes the stray moisture using her mouth, never losing your gaze with her own. With your clitoris erect and covered in a layer of her clear saliva she lifts into the air hovering above you with her wings. Slowly she rotates her body lowering her rear down upon your face as she resumes pleasuring your [if cunts of player > 1]many [end if]cunt[if cunts of player > 1]s[end if]. With her hands parting your [skin of player] thighs, her breasts bounce lively on your tummy as you suck at her petals. Feeling your lover's warm breath as she takes in your scent, you readily grasp the deep love she feels for you. Sensing the unspoken understanding her cunt quivers and tightens around your fingers once again probing her insides. Spreading and rubbing your vagina[if cunts of player > 1]s[end if] with her fingers she explores your insides with her proboscis reaching deep into places no cock has ever seen. You climax in unison, her wings jerking with each spasm as her sticky fluids cascade over your face and she buries hers in your equally wet orifice[if cunts of player > 1]s[end if]. Your mate lifts off, once again rotating her body, and descends down. [if breast size of player > 0]Your [breast size desc of player] breasts cushion her fall. [else]Her breasts cushion her fall. [end if]Your bodies steaming and dripping with both sweat and cum she nuzzles into your neck as you see her antennae bobbing around contentedly. Enjoying each other's warmth you drift off to sleep.[line break]";
			infect "Butterfly";
			wait for any key;
			decrease the humanity of the player by 5;
			if the humanity of the player < 10:
				end the story saying "You decide against leaving after all.";
		else:
			say "You decide you don't really want to spend time with her right now.";
	else:
		say "You sense someone is watching you, but no matter where you look you can't find anyone.";
		wait for any key;
	if ButterflyPregnant is True:
		increase gestation of ButterflyBaby by 1;
		if gestation of ButterflyBaby > 3:
			now gestation of ButterflyBaby is 0;
			now ButterflyPregnant is False;
			say "You suddenly feel a strange feeling of achievement in your [ball size].";
		follow the ButterflyTummyDesc rule;
	say "You decide to head back to the library.";
	move the player to grey abbey library;
	follow the turnpass rule;

After examining butterfly grove:
	say "You head home.";
	move the player to Grey Abbey Library;


Lingerie Store is a room. "[lingerie store scene]". It is unknown. It is fasttravel. It is private.

to say lingerie store scene:
	say "     Displayed on the various racks and rails you see bras, panties and many other types of undergarment covering the room. Every style of underwear you could imagine can be found here including many you couldn't.[line break]";
	if damaged negligee is owned and pristine negligee is not owned and "pristine negligee" is not listed in invent of lingerie store:
		say "[line break]     You take out the damaged negligee and look around the store for a match. After a few minutes you find a rack carrying various negligees of the same style. Looking at the sizes you find some that are a perfect match for the one left behind by the butterfly. Deciding you no longer need the damaged negligee you set it down on the counter.[line break]";
		try littering damaged negligee;
		now carried of pristine negligee is 1;
	if perception of player > 15 and butterfly grove is known:
		if ButterflyPantiesFound is False or a random chance of 1 in 3 succeeds:
			say "[line break]     Out of the corner of your eye you notice something small sticking out from under one of the display racks. You crouch down to take a look, but accidentally bump into one of the racks knocking it's contents to the floor.[line break]";
			now carried of cute panties is 1;
			now ButterflyPantiesFound is True;
	if HP of Lance is 2:	[Lance's request]
		say "[line break]     Taking the note Lance gave you about his lover's dimensions, you look around for something suitable for a gift[if cunts of player is 0]. It all gets rather confusing to you, but eventually you pick a rather hot looking number that you hope will fit right[else]. You get a little distracted while searching through all the pretty undergarments, but eventually you pick a rather hot number that should fit him quite nicely with only a little adjustment[end if]. Putting it in a box, you put a few shopping bags around it to keep it safe and store the sexy nightie in your pack.[line break]";
		now carried of sexy nightie is 1;
		now HP of Lance is 3;
	if rlingfound is false:
		say "[line break]     While looking around, you also happen to spot a racy red set of lingerie that you find very appealing. It includes a bustier, bra, panties and stockings. As you look it over, you find yourself wearing as much (or as little) of it as you like[if cunts of player is 0]. Before you even realize what you're doing[else]. With that appealing thought in mind[end if], you put it into a clothing box and store it in your pack.";
		now carried of racy lingerie is 1;
		increase score by 5;
		now rlingfound is true;


the scent of lingerie store is "The store has a somewhat musty smell as the air conditioning hasn't been turned on for some time. The product however smells fresh and newly manufactured.".

Section 9 - Trixie support

bmagic is an indexed text that varies.
bcupsize is an indexed text that varies.

to say butterflymagic:
	let bbdesc be indexed text;
	now bbdesc is "[ButterflyBreastDesc]";
	let bcupindex be the number of characters in bbdesc minus 4;
	now bcupsize is character number bcupindex in bbdesc;
	now bmagic is "000000X";
	if ButterflyLove is True:
		replace character number 1 in bmagic with "1";
	if ButterflyRevenge is True:
		replace character number 2 in bmagic with "1";
	if ButterflyProcreated is True:
		replace character number 3 in bmagic with "1";
	if ButterflyAttire matches the regular expression "She is wearing a long-sleeved .*":
		replace character number 4 in bmagic with "2";
	else if ButterflyAttire matches the regular expression "She is completely naked .*":
		replace character number 4 in bmagic with "3";
	else:
		replace character number 4 in bmagic with "1";
	if ButterflyRaped > 9:
		replace character number 5 in bmagic with "9";
	else:
		replace character number 5 in bmagic with "[ButterflyRaped]";
	replace character number 6 in bmagic with "[Gestation of ButterflyBaby]";
	replace character number 7 in bmagic with "[bcupsize]";
	say "[bmagic]";

To recite butterflymagic(x - text):
	now bmagic is "[x in upper case]";
	now ButterflyForeplay is False;
	now ButterflyPregnant is False;
	now ButterflyBreastDesc is "cute and buoyant B-cup";
	now ButterflyNegligeeTorn is False;
	now ButterflyLove is False;
	now ButterflyRevenge is False;
	now ButterflyProcreated is False;
	now ButterflyHasNegligee is True;
	now butterfly grove is not known;
	now lingerie store is not known;
	if character number 1 in bmagic is "1":
		now ButterflyLove is True;
		now butterfly grove is known;
	if character number 2 in bmagic is "1":
		now ButterflyRevenge is True;
	if character number 3 in bmagic is "1":
		now ButterflyProcreated is True;
		now butterfly grove is known;
	if character number 4 in bmagic is "1":
		now ButterflyAttire is "She is wearing a white negligee, but you can't help but notice the lack of undergarments through its sheer semi-translucency. [if ButterflyNegligeeTorn is True]The negligee is [one of]ripped[or]torn[at random] open at the chest exposing her [ButterflyBreastDesc] breasts and the protruding [one of]ruby[or]scarlet[at random] red nipples that adorn them. Her chest jiggles as her wings flap. [else]The negligee is held together at the bust with a white ribbon. Her build is slight and punctuated with a pair of [ButterflyBreastDesc] breasts jiggling slightly as her wings flap.[end if]";
		now ButterflyHasNegligee is True;
	else if character number 4 in bmagic is "2":
		now ButterflyAttire is "She is wearing a long-sleeved, strapless, skin-tight black leather top with a split down the middle reaching to her navel. The split is pulled together by a zig-zag of lacing as the inner-side of each [ButterflyBreastDesc] breast bulges out around the strands. Her rigid nipples deform the otherwise smooth surface of the leather. Colorful wings extend through sizable openings at the back allowing them complete freedom. A tie around her waist dangles dozens of strips of black leather down below her crotch in the style of a grass skirt, but the gaps in coverage let you see she's completely bare underneath. Her stripy yellow and black abdomen pokes out through the strands at the back. She sports a pair of shiny black PVC stockings up to her thighs and a svelte pair of black high-heeled leather boots on her feet.";
		now ButterflyHasNegligee is False;
		now carried of damaged negligee is 1;
		now lingerie store is known;
	else if character number 4 in bmagic is "3":
		now ButterflyAttire is "She is completely naked and makes no attempt to hide any part of her body from the golden tuft of hair above her pubes to the stiff [one of]ruby[or]scarlet[at random] red nipples decorating her jiggling [ButterflyBreastDesc] breasts like small cherries.";
		now ButterflyHasNegligee is False;
		now carried of pristine negligee is 1;
		now lingerie store is known;
	change the text of the player's command to character number 5 in bmagic;
	if the player's command matches "[number]":
		now ButterflyRaped is the number understood;
	change the text of the player's command to character number 6 in bmagic;
	if the player's command matches "[number]":
		now Gestation of ButterflyBaby is the number understood;
		if Gestation of ButterflyBaby > 0:
			now ButterflyPregnant is True;
			now butterfly grove is known;
	if character number 7 in bmagic is "C":
		now ButterflyBreastDesc is "full and firm C-cup";
	else if character number 7 in bmagic is "D":
		now ButterflyBreastDesc is "plump and bouncy D-cup";
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Butterfly":
			if the butterfly grove is known:
				now area entry is "Unknown";
			else:
				now area entry is "High";
	follow the ButterflyTummyDesc rule;

Section 10 - Debugging - Not for release

ButterflyDebug is an action applying to nothing.
Understand "bdebug" as ButterflyDebug.

carry out ButterflyDebug:
	say "Butterfly debug information:[line break]";
	say "	gestation of ButterflyBaby: [gestation of ButterflyBaby][line break]";
	say "	ButterflyPregnant: [ButterflyPregnant][line break]";
	say "	ButterflyRaped: [ButterflyRaped][line break]";
	say "	ButterflyTummy: [ButterflyTummy][line break]";
	say "	ButterflyForeplay: [ButterflyForeplay][line break]";
	say "	ButterflyNegligeeTorn: [ButterflyNegligeeTorn][line break]";
	say "	ButterflyLikesYou: [ButterflyLikesYou][line break]";
	say "	ButterflyLove: [ButterflyLove][line break]";
	say "	ButterflyRevenge: [ButterflyRevenge][line break]";
	say "	ButterflyProcreated: [ButterflyProcreated][line break]";
	say "	ButterflyHasNegligee: [ButterflyHasNegligee][line break]";
	say "	ButterflyEncounters: [ButterflyEncounters][line break]";
	say "	ButterflyPantiesFound: [ButterflyPantiesFound][line break]";
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Butterfly":
			if area entry is not "Unknown":
				say "	The butteryfly is currently out roaming around '[area entry]'.";
			else:
				say "	The butterfly is currently in her grove.";
			break;

givebpill is an action applying to one topic.
understand "bpill" as givebpill.

carry out givebpill:
	say "[bold type]You gain 1 testosterone pill![roman type][line break]";
	now carried of testosterone pill is 1;

butterflyprocreated is an action applying to one topic.
understand "bproc" as butterflyprocreated.

carry out butterflyprocreated:
	say "In years to come religions will form based around this momentous event.[line break]";
	now ButterflyProcreated is True;
	now ButterflyLove is True;
	now ButterflyRaped is 0;
	now gestation of ButterflyBaby is 0;
	now ButterflyPregnant is False;
	follow the ButterflyTummyDesc rule;
	increase perception of player by 2;
	now butterfly grove is known;
	now lingerie store is known;

spawnbutterfly is an action applying to one topic.
understand "bspawn" as spawnbutterfly.

carry out spawnbutterfly:
	repeat with X running from 1 to number of filled rows in table of random critters:
		choose row X from the table of random critters;
		if name entry is "Butterfly":
			now monster is X;
			now monsterHP is HP entry;
			challenge;
			break;

impregbutterfly is an action applying to one topic.
understand "bimpreg" as impregbutterfly.

carry out impregbutterfly:
	say "In years to come, religions will form based around this momentous event.[line break]";
	impregnatebutterfly;
	now ButterflyLove is True;
	now ButterflyForeplay is True;
	say "[bold type]You gain 1 damaged negligee![roman type][line break]";
	now carried of damaged negligee is 1;
	say "[bold type]You gain 1 pristine negligee![roman type][line break]";
	now carried of pristine negligee is 1;
	now ButterflyHasNegligee is False;
	say "You find a note she left behind with a rough map leading to her home.";
	now butterfly grove is known;
	now gestation of ButterflyBaby is 1;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Butterfly":
			now area entry is "Unknown";
			break;

movetobstore is an action applying to nothing.
understand "bstore" as movetobstore;

carry out movetobstore:
	now lingerie store is known;
	move player to lingerie store;

resetbutterfly is an action applying to one topic.
understand "breset" as resetbutterfly.

carry out resetbutterfly:
	say "The butterfly bumps her head on a tree and loses her memory.";
	now ButterflyForeplay is False;
	now ButterflyRaped is 0;
	now ButterflyPregnant is False;
	now ButterflyBreastDesc is "cute and buoyant B-cup";
	now ButterflyNegligeeTorn is False;
	now ButterflyLove is False;
	now ButterflyRevenge is False;
	now ButterflyProcreated is False;
	now ButterflyTummy is "";
	now ButterflyAttire is "She is wearing a white negligee, but you can't help but notice the lack of undergarments through its sheer semi-translucency. [if ButterflyNegligeeTorn is True]The negligee is [one of]ripped[or]torn[at random] open at the chest, exposing her [ButterflyBreastDesc] breasts and the protruding [one of]ruby[or]scarlet[at random] red nipples that adorn them. Her chest jiggles[else]The negligee is held together at the bust with a white ribbon. Her build is slight and punctuated with a pair of [ButterflyBreastDesc] breasts jiggling slightly[end if] as her wings flap.";
	now ButterflyHasNegligee is True;
	now ButterflyEncounters is 0;
	now Gestation of ButterflyBaby is 0;

bsave is an action applying to nothing.
understand "bsave" as bsave.

carry out bsave:
	say "[butterflymagic]";

brestoring is an action applying to one topic.
understand "brestore [text]" as brestoring.

carry out brestoring:
	let x be indexed text;
	let x be the topic understood;
	change the text of the player's command to x;
	recite butterflymagic "[the player's command]";


Butterfly for FS ends here.
