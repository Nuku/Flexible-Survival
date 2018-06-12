Version 1 of Fire Elemental by Stripes begins here.
[Version 1.2 - Updated to extended heat table - Stripes]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]

"Adds Fire Elemental to Flexible Survival."

Section 1 - Monster Responses

when play begins:
	add { "Fire Elemental" } to infections of girl;

to say fireelementaldesc:
	setmongender 4; [creature is female]
	say "     The fiery woman before you has a curvy and decidedly feminine body with wide, child-bearing hips and wiry muscle. She has a pair of average sized breasts. Her body is covered in supple, orange flesh with the heat and glow of fire shining through a multitude of cracks in it, encasing her in flames. Her head is rather human-like with soft features and deep, black eyes. Her hair has, however, been turned into bright and harmless flame. Her arms are wiry and slim, with the flicker of flame around them. Her legs are long, shapely human legs, flickering with fire and rippling with wiry muscle, and her footsteps singe the ground and leave black soot marks. She has a shapely rump and a wide, warm cunt, both similarly guarded by fire.";

to say losetofireelemental:
	if bodyname of player is "Reindeer":
		say "     The fiery woman stalks over to you, eyes burning with loathing, flames swirling and snapping around her form. 'Wretched creature! Snow spawner! Bringer of cold and death! There is no True Fire in you,' she hisses, voice sparking and crackling. The ground, scorched in her wake, is a path of black soot. She grabs you painfully by the shoulders, hands burning at your flesh so that her angry, hateful gaze can be fully directed at you. 'Your kind are not welcome here, ice demon.' Her voice resembles the hiss of a doused flame, unlike its normal cheerful crackle, words dripping with napalm. 'So leave this place and never return. When you recover.' She throws you to the ground once more, and beats her flaming fists against your form again and again and again, until you pass out from the pain, battered, burnt and scorched.";
		now HP of player is 0;
	else if bodyname of player is "Naiad":
		say "     The fiery woman grabs you with her flaming hands, great gouts of steam jutting from between her fingers as your flesh around her grip becomes clear and fluid, boiling like water. Surprised by this, she pushes you away and shakes her hands, fanning the flames back to full strength. 'There is more to you than there appears, o watery one. You surprised me. And I do not,' she says with a crackling, sparking hiss to her voice, 'take such surprises well.' With that, she waves her arms towards you, sending a wave of fire across your entire body. Your body bubbles as it all becomes water briefly, boiling and steaming. Severely weakened by this, you drop to your knees, barely becoming flesh again before you are soaked up by the dry ground. With a laugh like merry flames, she turns and leaves.";
		now HP of player is HP of player / 2;
	else if bodyname of player is "Fire Elemental" and the player is fireskinned:
		say "     The fiery woman moves up to you, smiling warmly now. She reaches down, offering you her hand and helping you to your feet. 'Come, [if player is female]sister[else if player is male]brother[else]my kin[end if], you are in no danger from me now. We are family for The True Fire is in both of us. Come, let us see you out of here - others make this a dangerous place.' The woman keeps to her word, helping you to the nearest safe spot. She places a loving kiss on your lips once you're there, wrapping her fiery arms around your hot body.";
		say "     'Yes, isn't it so much better not to fight? Fire is light and warmth, passion and love...' Her lips are deliciously hot as they press themselves to your cheeks and her flames flow and blend with yours. 'Let us enjoy that instead.'";
		if player is male and cock length of player > 15:
			say "     She gently pushes you to the ground, and her fingers begin deftly stroking your cock[if cocks of player > 1]s, her warm, cracked flesh oddly soothing as they work them over, sending hot waves of pleasure through them. She looks a little sad at their size, however. 'It's a pity they[else], her warm, cracked flesh oddly soothing as they work it over, sending hot waves of pleasure through it. She looks a little sad at its size, however. 'It's a pity it[end if] won't fit... But we can make do.' And no more words pass her lips, as she puts her mouth to work as well, warm tongue and lips applying themselves wildly and zealously to the task, until your world devolves into a mess of searing pleasure and warm bliss...";
		else if player is male:
			say "     She gently pushes you to the ground, and her fingers begin deftly stroking your cock[if cocks of player > 2]s, her warm, cracked flesh oddly soothing as they work them over, sending hot waves of pleasure through them. After a moment, she gives you a grin and a soft 'Enjoy this. I know I will' before she lifts herself up, straddling you with her cunt poised over one of your shafts, and her ass over another. She plunges herself down on them, the warm, supple folds of her cunt and the warmer, spongier flesh of her ass wrapping your cocks pleasurably[else if cocks of player is 2]s, her warm, cracked flesh oddly soothing as they work them over, sending hot waves of pleasure through them. After a moment, she gives you a grin and a soft 'Enjoy this. I know I will' before she lifts herself up, straddling you with her cunt poised over one of your shafts, and her ass over the other. She plunges herself down on them, the warm, supple folds of her cunt and the warmer, spongier flesh of her ass wrapping your cocks pleasurably[else], her warm, cracked flesh oddly soothing as they work it over, sending hot waves of pleasure through it. After a moment, she gives you a grin and a soft 'Enjoy this. I know I will.' before she lifts herself up, straddling you with her cunt poised over of your shaft. She plunges herself down on them, the warm, supple folds of her cunt wrapping your cock in blissful heat[end if]. Then she rides you hard, and your world descends into a fiery mess of pleasure...";
		else if player is female:
			say "     She gently pushes you to the ground and swings her cunt over your face, pressing it against your lips while her own buries itself in your crotch, her hot, deft tongue and supple lips working over your [if cunts of player is 2]pair of cunts[else if cunts of player > 2]many cunts[else]cunt[end if] with plenty of zeal, sending hot waves of pleasure through you. And, as you lick back, tongue working at the warm, spicy folds of her cleft, your world descends into a warm, fiery bliss...";
		else:
			say "     She gently pushes you to the ground and she lays herself atop you, grinding her cunt against one of your legs while she makes out with you, her warm, dexterous tongue working at yours with a passion. Your flames blend with hers as your passionate heat grows and grows. After a while, she leaves you there in your daze and heads off, continuing her wandering.";
	else if bodyname of player is "Flaming Lynx" and the player is fireskinned:
		say "     The fiery woman moves up to you, smiling warmly now. She reaches down, running her fiery hands over your flaming body as if petting you. 'Come, fiery beast, let us fight no longer. Instead, seek to satisfy the burning needs inside me,' she adds with a purr as her hand slides down between your legs.";
		if player is male and cock length of player > 15:
			say "     As you grow aroused at her touch, her fingers deftly stroking your cock[if cocks of player > 1]s, her warm, cracked flesh oddly soothing as they work them over, sending hot waves of pleasure through them. She looks a little sad at their size, however. 'It's a pity they[else], her warm, cracked flesh oddly soothing as they work it over, sending hot waves of pleasure through it. She looks a little sad at its size, however. 'It's a pity it[end if] won't fit... But we can make do, my pet.' And no more words pass her lips as she moves under you and brings her mouth to work as well, warm tongue and lips applying themselves wildly and zealously to the task, until your world devolves into a mess of searing pleasure and warm bliss...";
		else if player is male:
			say "     As you grow aroused at her touch, her fingers deftly stroking your [if cocks of player > 2]cocks, her warm, cracked flesh oddly soothing as they work them over, sending hot waves of pleasure through them. After a moment, she gives you a grin and a soft 'Come and mount me, you fiery beast. Come and share in my heat. I know you will enjoy it as much as I,' she says as the fiery woman lowers herself to all fours, waving her ass in the air. Aroused and unable to stop yourself, you mount her, driving a cock into her juicy pussy and another into her tight asshole. She is a delight around your [cock of player] shafts, the warm, supple folds of her cunt and the warmer, spongier flesh of her ass wrapping your cocks[else if cocks of player is 2]twin cocks, her warm, cracked flesh oddly soothing as they work them over, sending hot waves of pleasure through them. After a moment, she gives you a grin and a soft 'Come and mount me, you fiery beast. Come and share in my heat. I know you will enjoy it as much as I,' she says as the fiery woman lowers herself to all fours, waving her ass in the air. Aroused and unable to stop yourself, you mount her, driving a cock into her juicy pussy and the other into her tight asshole. She is a delight around your [cock of player] shafts, the warm, supple folds of her cunt and the warmer, spongier flesh of her ass wrapping your cocks[else]cock, her warm, cracked flesh oddly soothing as they work it over, sending hot waves of pleasure through it. After a moment, she gives you a grin and a soft 'Come and mount me, you fiery beast. Come and share in my heat. I know you will enjoy it as much as I,' she says as the fiery woman lowers herself to all fours, waving her ass in the air. Aroused and unable to stop yourself, you mount her, driving a cock into her juicy pussy. She is a delight around your [cock of player] shaft, the warm, supple folds of her cunt wrapping your cock[end if] in blissful heat. She cries out in ecstasy as you ride her hard, and your world descends into a fiery mess of pleasure...";
		else if player is female:
			say "     As you grow aroused, she moves beneath you, bringing her cunt beneath your face. Grabbing your head, she pulls your face to her cunt, pressing your lips against it while her own buries itself in your crotch, her hot, deft tongue and supple lips working over your [if cunts of player is 2]pair of cunts[else if cunts of player > 2]many cunts[else]cunt[end if] with plenty of zeal, sending hot waves of pleasure through you. 'Come, taste of me, you fiery beast,' she moans. And, as you lick back, tongue working at the warm, spicy folds of her cleft, your world descends into a warm, fiery bliss...";
		else:
			say "     A little disappointed to find you bare there, she kneels in front of you and takes a hold of your head. She gently pushes it between her thighs, pressing your lips to her cunt while her hands run over your body, spreading her flames with yours. 'Come, taste of me, you fiery beast,' she moans. And, as you lick back, tongue working at the warm, spicy folds of her cleft, your world descends into a warm, fiery bliss...";
	 else if bodyname of player is "Fire Sprite" and the player is fireskinned:
		say "     The fiery woman moves up to you, smiling warmly now. She kneels beside you, running a flaming hand down your back. 'Come, little spark, let me show you that there is more to the flame then mischief and destruction, let me show you the passion of the true fire.' As you begin to lean against the fiery woman, basking in the warmth of her flame, she scoops your smaller form into her arms, cradling you against her bosom as she carries you to the nearest safe place.";
		say "     Pressing your lips to her warm nipple, you feel a pleasant liquid heat leaking into your mouth, and she gives a sigh of contentment as you soon begin suckling for more. 'See? Isn't this so much nicer then all that needless destruction? You have the potential to be so much more, my little spark,' she says, idly stroking your head before her hands begin to drift down your body[if breast size of player > 2], pausing to tease your breasts momentarily before moving lower[end if]. Her deft fingers leave a trail of flame across your body which slowly spreads over you, wrapping you in her warmth as [if player is herm]she begins teasing your stiffing cock[smn] and drooling puss[yfn][else if player is male]she begins teasing your stiffing cock[smn][else if player is female]she begins teasing your drooling puss[yfn][else]stroking your barren groin[end if]. ";
		if player is herm:
			say "     Her warm deft hand is soon alternating between your cock[smn] and puss[yfn], her fiery, cracked flesh oddly soothing as she works them over, sending hot waves of pleasure through you, causing you to moan slightly around her nipple as your world descends into a warm, fiery bliss...";
		else if player is male:
			say "     Her warm deft hand is soon stroking your cock[smn], her fiery, cracked flesh oddly soothing as she works you over, sending hot waves of pleasure through them, causing you to moan slightly around her nipple as your world descends into a warm, fiery bliss...";
		else if player is female:
			say "     Her warm deft fingers are soon sinking into your quivering cunt, her fiery, cracked flesh oddly soothing as she gently fingers you, sending hot waves of pleasure through you, causing you to moan slightly around her nipple as your world descends into a warm, fiery bliss...";
		else:
			say "     As her warm deft hands continue to tease your body and her heat continues to engulf you hot waves of pleasure roll through you and your world descends into a warm, fiery bliss...";
	else if bodyname of player is "Fire Elemental" or bodyname of player is "Flaming Lynx " or skinname of player is "Fire Sprite":
		say "     The fiery woman moves up to you, smiling tenderly now. She reaches down, offering you her hand and helping you to your feet. 'You poor ember. You are ready to burn, but have not felt the heat of The True Fire that is in both of us. Let me help you,' she says, rubbing her fiery body sensually against yours as she places a loving kiss on your lips once you're there, wrapping her fiery arms around your [bodytype of player] body.";
		say "[fireelsex]";
	else if ( HP of player > HP of player / 4):
		say "     As you submit, she smiles warmly and steps up to you, wrapping you in a warm and welcoming hug. 'Yes, isn't it so much better not to fight? Fire is light and warmth, passion and love...' Her lips are a touch searing as they press themselves to your cheeks, but your flesh is unmarred. 'I'm glad that you've decided to accept that.'";
		say "[fireelsex]";
	else if HP of player > 0:
		say "     As you submit, she looks down at your burnt and battered form from having fought so long. She runs a hand gently across your cheek. 'It would be better for you not to fight. Fire is light and warmth, passion and love...' Her lips are a touch searing as they press themselves to your cheeks, but your flesh is unmarred. 'You would find me much more enjoyable if you were to accept that.'";
	else:
		say "     The fiery woman looks down at your burnt and battered form, clearly displeased that you would oppose her. She runs a hand gently across your cheek. 'It would be better for you not to fight. Fire is light and warmth, passion and love...' Her lips are a touch searing as they press themselves to your cheeks, but your flesh is unmarred. 'You would find me much more enjoyable if you were to accept that.'";


to say fireelsex:
	if player is male and cock length of player > 15:
		say "     She gently pushes you to the ground, and her fingers begin deftly stroking your cock[if cocks of player > 1]s, her warm, cracked flesh oddly soothing as they work them over. She looks a little sad at their size, however. 'It's a pity they[else], her warm, cracked flesh oddly soothing as they work it over. She looks a little sad at its size, however. 'It's a pity it[end if] won't fit... But we can make do.' And no more words pass her lips, as she puts her mouth to work as well, warm tongue and lips applying themselves wildly and zealously to the task, until your world devolves into a mess of searing pleasure and warm bliss...";
	else if player is male:
		say "     She gently pushes you to the ground, and her fingers begin deftly stroking your cock[if cocks of player > 2]s, her warm, cracked flesh oddly soothing as they work them over. After a moment, she gives you a grin and a soft 'Enjoy this. I know I will' before she lifts herself up, straddling you with her cunt poised over one of your shafts, and her ass over another. She plunges herself down on them, the warm, supple folds of her cunt and the warmer, spongier flesh of her ass wrapping your cocks pleasurably[else if cocks of player is 2]s, her warm, cracked flesh oddly soothing as they work them over. After a moment, she gives you a grin and a soft 'Enjoy this. I know I will' before she lifts herself up, straddling you with her cunt poised over one of your shafts, and her ass over the other. She plunges herself down on them, the warm, supple folds of her cunt and the warmer, spongier flesh of her ass wrapping your cocks pleasurably[else], her warm, cracked flesh oddly soothing as they work it over. After a moment, she gives you a grin and a soft 'Enjoy this. I know I will.' before she lifts herself up, straddling you with her cunt poised over of your shaft. She plunges herself down on them, the warm, supple folds of her cunt wrapping your cock in blissful heat[end if]. Then she rides you hard, and your world descends into a fiery mess of pleasure...";
	else if player is female:
		say "     She gently pushes you to the ground and swings her cunt over your face, pressing it against your lips while her own buries itself in your crotch, her hot, deft tongue and supple lips working over your [if cunts of player is 2]pair of cunts[else if cunts of player > 2]many cunts[else]cunt[end if] with plenty of zeal. And, as you lick back, tongue working at the warm, spicy folds of her cleft, your world descends into a warm, fiery bliss...";
	else:
		say "     She gently pushes you to the ground and she lays herself atop you, grinding her cunt against one of your legs while she makes out with you, her warm, dexterous tongue working at yours with a passion. After a while, she leaves you there in your daze and heads off, continuing her wandering.";


to say beatthefireelemental:
	say "     Beaten, the fiery woman draws back with a hiss of a bonfire doused with water. She steps back a few steps and wraps her arms tightly around herself. Surging her flames as she does this, she rockets upwards, launching herself recklessly quite some distance away. You hear a thump in the distance and a burst of smoke from her crash landing. You beat out the remaining flames here to prevent a brushfire, hoping that she hasn't started one elsewhere just now.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Fire Elemental"; [Name of your new Monster]
	now attack entry is "[one of]The fire elemental[or]The fiery woman[or]The flaming woman[or]She[at random] [one of]sends a burst of flame at you[or]exhales a cone of heat[or]sends a fiery kick at you[or]strikes you with a flaming fist[at random]!";
	now defeated entry is "[beatthefireelemental]";
	now victory entry is "[losetofireelemental]";
	now desc entry is "[fireelementaldesc]";
	now face entry is "rather human-like, with soft features. Your hair has, however, been turned into bright and harmless flame";
	now body entry is "curvy and distinctly feminine, with wide, child-bearing hips and wiry muscle. Your arms are wiry and slim[if the player is fireskinned], with the flicker of flame around them[end if]. Your legs are long, shapely human legs[if the player is fireskinned], flickering with fire and rippling with wiry muscle, and your footsteps singe the ground[else] rippling with wiry muscles[end if]";
	now skin entry is "[one of]glowing and cracked[or]rippling with flames[at random]";
	now tail entry is "";
	now cock entry is "hot, barbed";
	now face change entry is "your hair burns away in a swirl of flames and your shape reforms along feminine lines. Though it still feels like there's something on your scalp... and as you reach up, your hand meets a harmless flame that's taken the place of normal hair";
	now body change entry is "it feels suddenly like an incendiary grenade has gone off in your chest. Your breath rushes from you with a spark of flame, your organs burning inside of you... and when you can look down, your form is more shapely, and you still feel unnaturally warm. In a flash of heat and flame, any imperfections of your arms burn away, leaving wiry muscles behind... and warmth, plenty of warmth. Your legs rapidly heat up until they to burn away any imperfections, leaving wiry, toned legs behind - and you have a sudden urge to dance on them in celebration[if the player is fireskinned] as your flames dance over your transformed body[end if]";
	now skin change entry is "your skin smoothes out in a shimmer of heat, any hair on it falling away... right before it cracks, and the glow of fire exudes from within your body. You seem able to control the intensity of these flames so you might enjoy the sensual touch of others, though they'll also grow weak and ineffectual if you are too injured to sustain them, leaving you still vulnerable to the other creatures of the city";
	now ass change entry is "your ass melts and reforms in a flash of heat into something human, shapely and decidedly sexy";
	now cock change entry is "your cock heats up, and seems to ignite for a moment, leaving it covered in flame-shaped barbs.";
	now str entry is 15;
	now dex entry is 22;
	now sta entry is 12;
	now per entry is 12;
	now int entry is 10;
	now cha entry is 17;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 95; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 15; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 15; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Plains"; [ Current options are 'Outside' and 'Mall' Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0; [ Length infection will make cock grow to if cocks]
	now cock width entry is 0; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 3; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 12;
	now cunt width entry is 8;
	now libido entry is 80; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
 	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]feminine[or]sensual[or]lithe[at random]";
	now type entry is "[one of]elemental[or]humanoid[at random]";
	now magic entry is true;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "firebreath"; [ Row used to designate any special combat features, "default" for standard combat. ]


Definition: a person is fireskinned:
	if skinname of player is "Fire Elemental" or skinname of player is "Flaming Lynx" or skinname of player is "Fire Sprite", yes;
	no;

Section 3 - Heat Table

to say fireelheatstart:
	if heatform is 0:
		if cunt length of player < 12, increase cunt length of player by 1;
		if cunt width of player < 8, increase cunt width of player by 1;
	if libido of player < 80, now libido of player is ( 80 + ( libido of player * 3 ) ) / 4;

to say fireelheatend:
	if libido of player > 20:
		decrease libido of player by 20;
		if libido of player < 20, now libido of player is 20;

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Fire Elemental";
	now heat cycle entry is 7;
	now heat duration entry is 2;
	now trigger text entry is "     There is a sudden, pulsing heat inside you centered at your loins. This heat builds, growing to an inferno of lust and desire[if cunt width of player < 8 or cunt length of player < 12]. As this fire burns away at you, your pussy deepens, aching for something to fill it and stoke its fires[end if]. You are in heat with an primal, elemental need.";
	now description text entry is "pulsing, elemental furnace of lust ";
	now heat start entry is "[fireelheatstart]"; [Events that trigger at the start of the Heat, in the GSD case it increases the cunt width]
	now heat end entry is "[fireelheatend]"; [Events that trigger at the end of the Heat, in the GSD case it reduces cunt width]
	now inheat entry is "[defaultheat]"; [This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "     There is a sudden, pulsing heat inside you centered at your lower belly. This heat builds, growing to an inferno of lust and desire. As this fire burns away at you, your rectum grow heated as well, aching for something to fill it and to stoke its fires. You are in heat with an primal, elemental need.";


Section 4 - Endings

[
when play ends:
	if bodyname of player is "Template":
		if humanity of player < 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Fire Elemental ends here.
