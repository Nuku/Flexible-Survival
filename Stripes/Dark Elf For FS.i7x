Version 1 of Dark Elf for FS by Stripes begins here.
[This monster is partially based off the Dark Elf Male and Dark Elf Female from the multiplayer game, incorporating content from both] 

"Adds a herm Dark Elf to Flexible Survival."

Section 1 - Monster Responses

when play begins:
	add { "Dark Elf" } to infections of hermaphrodite;


to say darkelfdesc:
	setmongender 5;		[creature is herm]
	say "     The dark skinned herm before you has an otherworldly quality to her. Her [one of]deep ebon[or]black[or]midnight black[at random] skin is smooth and supple, free of any flaw of blemish. She has beautiful, feminine features with an exotically beautiful face. She has wide, canted, vertically slit eyes. Her lips are plump and kissable and her long, elfin ears stick straight out from the sides of her head. She has long, silvery white hair. Her body is thin and curvy with a narrow waist leading to wider hips and a large rack beneath her skin-tight [one of]white[or]red[or]black[or]silver[at random] dress. Her every move exudes feminine sensuality that cries out for attention as well as confidence that speaks of her desire to take what she wants, from you or anyone else. Her arms and legs are long and slender despite her proportionally shorter stature. Her fingers are long and agile, ending in sharp, inch-long nails. Clearly visible as a bulge beneath her tight dress is a cock that's already quite large despite not being fully aroused.";


to say losetodarkelf:
	say "     After pulling off your clothes and gear, the ebon skinned elf looks you over and ";
	if cocks of player is 0 and cunts of player is 0 and breast size of player is 0:
		say "snarls. 'You are WORTHLESS to me. In every way.' As you lie defeated before her, she spits in your face, and then kicks you in your head, knocking you out.";
	else:
		say "smiles. It is not a nice smile. 'You'll do, pet.' She leans over and kisses you on the lips, and you feel and unwilling arousal flood through you.";
		if breast size of player > 0 and a random chance of 1 in 2 succeeds:
			say "     She wraps the long, elegant fingers of one of her nimble hands about your neck, and hauls you upright. Her other hand moves to your chest, and her eyes rake your breasts[if breast size of player < 3]. 'How... small...' she sniffs in disdain at your, comparably, tiny chest. Her smile grows even nastier. 'But it will do.'[else if breast size of player < 6]. 'Hmmm. Adequate.' She seems satisfied that she is your undisputed superior, at least as far as her tits are concerned.[else if breast size of player < 10]. Looking over your now exposed tits, her smile widens. 'How nice to finally find an outsider with adequate endowment.'[otherwise]. She gasps at the size of your gargantuan udders. 'Oh Goddess. These are divine. Perhaps I should take you back to the Conclave to share with my sisters... But first, I must touch them...'[end if]";
			if hp of player > 0:
				say "     Still holding your neck with one hand, she begins to massage your breasts, building an unwanted and terrifying arousal within you. Soon, however, you find the lust eating into your thoughts, causing you to lose your desire to resist, your desire to flee. Eventually, the Dark Elf releases your neck, and uses her other hand to fondle her own massive mammary. Soon, a massive orgasm, from only breast stimulation, floods through your mind, robbing your legs of strength, and you fall to the ground.";
			else:
				say "     Still holding your neck with one hand, she begins to massage your breasts, building your arousal to unexpected heights. Having submitted to the dark maiden's touch, you moan in pleasure at receiving such unbridled pleasure from her touch. Eventually, the Dark Elf releases your neck, and uses her other hand to fondle her own massive mammary. Soon, a massive orgasm, from only breast stimulation, floods through your mind, robbing your legs of strength, and you fall to the ground.";
		else:
			say "     Your blood runs cold as you see an evil grin spread over the face of the dark elf. You blanch as she slips out of her dress and reveals her huge, throbbing cock. ";
			if breast size of player > 2:
				say "     She kneels over you, stilling your struggles with his thighs, as she thrusts her forearm length cock between your [if Breast Size of player < 6]breasts, barely large enough to surround her massive cock[else if Breast Size of player < 9][breast size desc of player] breasts, mashing them together as she thrusts into the soft valley of your love pillows[otherwise][breast size desc of player] tits, her hands roving over their sides as she smiles with malicious delight[end if]. She begins to thrust, the head of her cock thrusting up over your chest and into your chin. Her strong hands rove over your breasts, bringing you to an [if hp of player > 0]unwilling[otherwise]overpowering[end if] arousal. The night skinned elf notices this, and seems to take great pleasure in your uncontrolled enjoyment of her pleasuring of herself. It's not long before she cums, splattering her fluids over your chest and face, with some of the bitter fluid landing in your nose and mouth, making you thrash and sputter on the ground.";
			else:
				say "     She grabs your head around the chin and forces your mouth open. She shoves your mouth over her massive cock and begins to thrust. You gag as she shoves her cock down your throat, and it's all you can do to get enough breath in through your nose. You struggle and gag as she fucks your face, until eventually, after what seems like hours, she reaches climax, her bitter fluid surging into your mouth, down your throat, and out of your overflowing mouth, making you gag and choke on the tidal wave of sticky fluid. You collapse, thrashing, as she releases your head, coughing up excess semen while she laughs.";
		if cunts of player > 0 and cocks of player > 0:		[herm]
			if a random chance of 2 in 3 succeeds:
				say "[darkelfM]";
			else:
				say "[darkelfF]";
		else if cocks of player > 0:				[male]
			if "Less Anal" is not listed in feats of player and ( a random chance of 1 in 4 succeeds or ( "More Anal" is listed in feats of player and a random chance of 1 in 4 succeeds ) ):
				say "[darkelfM]";
			else:
				say "[darkelfF]";
		else if cunts of player > 0:				[female]
			if a random chance of 3 in 4 succeeds:
				say "[darkelfM]";

to say darkelfM:
	if cunts of player > 0:
		say "     She looks at your wet cunt and her smile grows even more malicious. She grabs your hips and swiftly buries her massive cock in your [if cunt length of player < 15] overly tight cunt, causing you to moan in pain at the sudden intrusion. This seems to spur her on as she begins to thrust. You'd swear that the head of her cock is actually inside of your womb, as she thrusts into your over and over. Strangely, something about what she's doing, or perhaps the nanites themselves, twists things, and soon you find your arousal building, despite the excruciating pain[otherwise] cunt and begins to thrust. You grunt in violation as she screws you without mercy, fucking you with no regard for you, but somehow you seem to become aroused from the treatment, your pleasure building even as your degradation intensifies[end if].";
		say "     She penetrates you repeatedly, and your own unwilling climax builds, until you can no longer contain it and you scream out in unwanted pleasure. Your coal skinned tormentor laughs, not even stopping in her violation of you, and says, 'Let's see just how much you like it, eh?' She fucks you repeatedly, pounding into you. She gives you no time to recover between your orgasms, as she pounds you over and over, and your traitorous body thrashes in orgasm after orgasm. Eventually, she cums, flooding your snatch with her seed, filling your womb, and having it spill over onto your thighs. She pulls out, and lets you fall into a pool of your own fluids mixed with her spooge leaking out of your violated cunt.[impregchance]";
	else:
		say "     She grabs your ass and you feel a rising panic as she folds you over. You feel the warm end of her massive cock pressed against your ass. You scream in violation as she thrusts into your ass, spearing you on her cock harshly. She thrusts into your again and again, and you are horrified as your body begins to become aroused by the cruel abuse. You struggle helplessly in her grip as your member stiffens and engorges with your [if hp of player > 0]unchecked[otherwise]unwilling[end if] arousal.";
		say "     You cry out in negation as you cum, your spooge spattering the ground beneath you. 'So, the bitch likes it, eh?' the dark elf says mockingly as her thrusts increase in power and speed. You lose track of time as your violation spreads out into eternity, until after having cum who knows how many times, your torment finally ends as the dark elf finally reaches her own climax and fills your ass with her seed. She abruptly pulls out and releases you, causing your abused body to collapse into the pool of your own cum beneath you, broken and violated.[mimpregchance]";
	say "     The herm dark elf stands over your battered and cum-covered body, and smirks at your degradation. Her cold voice echo's through your ears as you lose consciousness from the pain of your violation. 'Now, you know your place, you wretched slut.'";


to say darkelfF:
	if cunts of player > 0:
		say "     Stooping over your prone form, the shadowy elf examines your [if cunts of player > 1]multiple cunts[otherwise]cunt[end if] and smiles lewdly. With a practised motion, she swiftly runs one of her hands into your depths and begins thrusting her [if cunt length of player < 6]fingers[else if cunt length of player < 12]hand[otherwise]entire forearm[end if] inside of you, expertly hitting both your clit and your internal G-spot. Dimly, you are aware that the dark elf is also fingering her own breasts and seems to be on the verge of orgasm. Then you crash over into an incredible orgasm.";
	if cocks of player > 0:	
		say "     The dark elf looks at your [if cocks of player > 1]multiple cocks[otherwise]cock[end if] and [if cock length of player < 10]says '...pitiful.' She sniffs in disdain at your apparently inadequate endowment. Her smile grows wicked. 'But it will have to do.' She mounts your inadequate manhood, your insignificant prick drowning in the vastness of her gaping snatch[else if cock length of player < 16]says, 'Acceptable.' She seems satisfied with the size of your endowment, but is obviously used to larger tools. She mounts your cock, her slick wetness seeming loose inside of her hungry slit[else if cock length of player < 21]smiles in a way that seems to bode you no good. 'How nice to finally find an outsider with adequate endowment.' She slips herself upon your manhood, the tight confines of her pussy gripping and clenching at your erect tool[otherwise]smile in a way that seems to bode you no good. 'Ohhh. A challenge. How nice.' She slides her wet, tight pussy over your cock, and you feel the head of your tool stretch her to her limits. She gasps in pleasure as you bottom out, her cervix tight against the head of your cock.";
		say "     Then she begins to buck, and ride you like your were a sex toy. Her powerful downward thrusts smash your hips against the ground, and she grasps her breasts and pulsing cock. This sends her into a powerful, screaming, female orgasm that has her cunt squeeze and quiver around your tool. She continues this, cumming many more times before you cannot resist the involuntary pleasure of what she is doing to you, and cum yourself, sending your ejaculate up into her waiting womb while she splatters her hot, bitter seed across your face and body. Spent, you collapse as she rises from your softening member.";
	else:
		say "     Before you can recover, she has moved to straddle you and begins to scissor her legs with yours. She grinds her pussy against yours, sending waves and waves of pleasure through you, and rocking you into orgasm after orgasm, till it seems you might go mad from the pleasure. You lose count of the number of times you cum, and you cannot even begin to tell how many times she takes her pleasure from you. Eventually she is satisfied and sprays her hot cum across your body even as you're collapsing into exhaustion.";
	say "     As blackness descends upon you from the vicious fucking you just received, you see your violator sauntering away. Her juices [If cocks of player > 0]mixed with your cum [end if]drip down her thighs as she strides with a satisfied sway to her hips. You hear her call back to you over her shoulder as you lose consciousness. 'That was fun. Come back again sometime and we'll try it again. My sisters and I would be more than happy to play with you again,' she cackles.";


to say beatthedarkelf:
	if cocks of player > 0 and libido of player > 20:
		say "     Defeated, the dark elf collapses to the ground. She struggles to rise, but is unable to do so and can only glare up at you angrily. Her dress is torn and you can see her large bosom, hefty cock and oversized cunt. Looking her over, you find yourself tempted to celebrate your victory and fuck the dark elf.";
		say "     [bold type]Shall you give into this impulse?[roman type][line break]";	
		Line Break;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if the player consents:
			say "     Deciding the elf might need attention to put her in her place, you grab her roughly and lay her overtop of [one of]some rubble[or]a car hood[at random]. Grabbing her plump ass, you give her booty a squeeze and grind your cock against those beautiful cheeks. She moans and squirms, but you keep her pinned down, perhaps a little more roughly than is strictly necessary. This gets her to moan all the more and actually push her ass back against your cock. Clearly she likes to take it rough just as much as she likes to give it rough. With that in mind, you drive your [cock size desc of player] [cock of player] shaft into her large, deep cunt.";
			say "      [if cock length of player > 21]She digs her nails in and pushes back into your thrust even as she releases a cry of pain at the sudden penetration by your [cock size desc of player] cock[else if cock length of player < 10]She laughs derisively at the comparatively small size of your cock, making you slap her ass painfully. She cries out in pain and delight at his and you can feel her pussy quiver around you at the blow[else if cock length of player < 16]Your [cock size desc of player] cock slides into her huge pussy with ease, but it is still big enough to make for an enjoyable fuck[otherwise]Your [cock size desc of player] cock fits nicely into her huge cunt and you're quite pleased to find a juicy hole suitable for your enlarged member[end if][if cock length of player > 30]. Your enormous cock spreads her hips wide and causes a phallic belly bulge in the dark elf as you fuck her[end if]. You pound into her, fucking her wildly, having trouble distinguishing her cries of pain from those of pleasure and knowing that she's finding both aspects enjoyable. Leaning over her, you grab her swollen melons and pinch her nipples, soon driving the dark elf to orgasm. As her large pussy quivers around you, soaking you in her juices, you cum hard, pumping your hot seed into her womb. Once your balls are drained, you pull out, slap her ass with your cock and leave her there with your cum running down her legs.";
		else:
			say "     Managing to resist the urge, you give dismissive snort and head off, satisfied that you've put her in her place.";
	else:
		say "     Defeated, the dark elf collapses to the ground. She struggles to rise, but is unable to do so and can only glare up at you angrily. Satisfied that you've put her in her place, you leave her behind.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Dark Elf";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The dark elf[or]The ebon-skinned elf[or]The dark-skinned herm[or]She[at random] [one of]moves with speed and grace as she weaves in close and punches you in the side[or]grabs you roughly with those sharp-nailed hands and knees you in the gut[or]twists your arm roughly as she tries to force you to the ground[or]bends her exotic body a swift motion that quickly brings her leg up and around, striking you hard[at random]!";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthedarkelf]";				[ Text when monster loses. Change 'template' as above. ]
	now victory entry is "[losetodarkelf]";					[ Text when monster wins. Change 'template' as above. ]
	now desc entry is "[darkelfdesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "feminine and exotically beautiful with wide, canted and vertically slit eyes. Your lips are plump and kissable and your ears are pointed and elven";
	now body entry is "slender and agile with a very feminine set of curves. While a little below average in height, your arms and legs seem long and lithesome, giving you a slightly otherworldly appearance that isn't quite human. Your hands have long, slender fingers ending in sharp, inch-long nails";
	now skin entry is "[one of]dark[or]smooth and flawless[or]midnight black[or]ebon[at random]";
	now tail entry is "";
	now cock entry is "[one of]ebon[or]midnight black[or]charcoal[or]inky dark[at random]";
	now face change entry is "the world around you takes on greater clarity as bones in your face ache. You becomes something close to human, but not quite. You can feel your eyes shift, your lips grow plump and your ears extend up into points";
	now body change entry is "you feel a pinch, as your waist narrows. Your body becoming thin and curvy, and your instincts shift your posture, flaunting a very female sensuality. Your arms thin and you watch as your fingers grow longer with a long, pointed nail sprouting out of the end of each. Your feel light on your feet as your legs smooth and strengthen";
	now skin change entry is "it darkens and charcoal coloured smoothness spreads to cover your body. Strength and energy floods into you as youthful vitality floods your system";
	now ass change entry is "it becomes a plump and very grabbable booty";
	now cock change entry is "becomes smooth and uncircumcised flesh. It takes on a very dark skin tone, but it looks quite human in shape";
	now str entry is 12;			[ These are now the creature's stats... ]
	now dex entry is 19;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12;			[ These values may be used as part of alternate combat.]
	now per entry is 10;
	now int entry is 14;
	now cha entry is 16;
	now sex entry is "Both";		[ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 48;			[ The monster's starting hit points. ]
	now lev entry is 7;			[ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10;			[ Monster's average damage when attacking. ]
	now area entry is "Capitol";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 18;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 10;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 7;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 18;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 12;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 75;			[ Target libido the infection will rise towards. ]
	now loot entry is "estosterogen pill";			[ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 5;		[ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]alluring[or]sultry[or]sexy[or]effeminate[or]slender[at random]";
	now type entry is "[one of]elven[or]fae[at random]";
	now magic entry is true;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now nocturnal entry is true;			[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

[
when play ends:
	if bodyname of player is "Dark Elf":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Dark Elf For FS ends here.
