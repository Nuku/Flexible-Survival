Version 1 of Dark Elf by Stripes begins here.
[This monster is partially based off the Dark Elf Male and Dark Elf Female from the multiplayer game, incorporating content from both]

"Adds a herm Dark Elf to Flexible Survival."

Section 1 - Creature Responses

when play begins:
	add { "Dark Elf" } to infections of hermaphrodite;


to say darkelfdesc:
	setmongender 5; [creature is herm]
	say "     The dark skinned herm before you has an otherworldly quality to her. Her [one of]deep ebony[or]black[or]midnight black[at random] skin is smooth and supple, free of any flaw of blemish. She has beautiful, feminine features with an exotically beautiful face. She has wide, canted, vertically slit eyes. Her lips are plump and kissable, and her long, elfin ears stick straight out from the sides of her head. She has long, silvery white hair. Her body is thin and curvy with a narrow waist leading to wider hips and a large rack beneath her skin-tight [one of]white[or]red[or]black[or]silver[at random] dress. Her every move exudes feminine sensuality that cries out for attention as well as confidence that speaks of her desire to take what she wants, from you or anyone else. Her arms and legs are long and slender despite her proportionally shorter stature. Her fingers are long and agile, ending in sharp, inch-long nails. Clearly visible as a bulge beneath her tight dress is a cock that's already quite large despite not being fully aroused.";


to say losetodarkelf:
	say "     After pulling off your clothes and gear, the ebon skinned elf looks you over and ";
	if Player is neuter and Breast Size of Player is 0:
		say "snarls. 'You are WORTHLESS to me. In every way.' As you lie defeated before her, she spits in your face, and then kicks you in your head, knocking you out.";
	else:
		say "smiles. It is not a nice smile. 'You'll do, pet.' She leans over and kisses you on the lips, and you feel and unwilling arousal flood through you.";
		if Breast Size of Player > 0 and a random chance of 1 in 2 succeeds:
			say "     She wraps the long, elegant fingers of one of her nimble hands about your neck, and hauls you upright. Her other hand moves to your chest, and her eyes rake your breasts. [if Breast Size of Player < 3]'How... small...' She sniffs in disdain at your comparably tiny chest. Her smile grows even nastier. 'But it will do.'[else if Breast Size of Player < 6]'Hmmm. Adequate.' She seems satisfied that she is your undisputed superior, at least as far as her tits are concerned.[else if Breast Size of Player < 10]Looking over your now exposed tits, her smile widens. 'How nice to finally find an outsider with adequate endowment.'[else]She gasps at the size of your gargantuan udders. 'Oh Goddess. These are divine. Perhaps I should take you back to the Conclave to share with my sisters... But first, I must touch them...'[end if]";
			if HP of Player > 0:
				say "     Still holding your neck with one hand, she begins to massage your breasts, building your arousal to unexpected heights. Having submitted to the dark maiden's touch, you moan in pleasure at receiving such unbridled pleasure from her touch. Eventually, the Dark Elf releases your neck, and uses her other hand to fondle her own massive mammary. Soon, a massive orgasm, from only breast stimulation, floods through your mind, robbing your legs of strength, and you fall to the ground.";
			else:
				say "     Still holding your neck with one hand, she begins to massage your breasts, building an unwanted and terrifying arousal within you. Soon, however, you find the lust eating into your thoughts, causing you to lose your desire to resist, your desire to flee. Eventually, the Dark Elf releases your neck, and uses her other hand to fondle her own massive mammary. Soon, a massive orgasm, from only breast stimulation, floods through your mind, robbing your legs of strength, and you fall to the ground.";
		else:
			say "     Your blood runs cold as you see an evil grin spread over the face of the dark elf. You blanch as she slips out of her dress and reveals her huge, throbbing cock.";
			if Breast Size of Player > 2:
				say "     She kneels over you, stilling your struggles with her thighs, and thrusts her forearm length cock between your [if Breast Size of Player < 6]breasts, barely large enough to surround her massive cock[else if Breast Size of Player < 9][breast size desc of Player] breasts, mashing them together as she thrusts into the soft valley of your love pillows[else][breast size desc of Player] tits, her hands roving over their sides as she smiles with malicious delight[end if]. She begins to thrust, the head of her cock thrusting up over your chest and into your chin. Her strong hands rove over your breasts, bringing you to [if HP of Player > 0]overpowering[else]unwilling[end if] arousal. The night skinned elf notices this, and seems to take great pleasure in your uncontrolled enjoyment of her pleasuring of herself. It's not long before she cums, splattering her fluids over your chest and face, with some of the bitter fluid landing in your nose and mouth, making you thrash and sputter on the ground.";
			else:
				say "     She grabs your head around the chin and forces your mouth open. She shoves your mouth over her massive cock and begins to thrust. You gag as she shoves her cock down your throat, and it's all you can do to get enough breath in through your nose. You struggle and gag as she fucks your face, until eventually, after what seems like hours, she reaches climax, her bitter fluid surging into your mouth, down your throat, and out of your overflowing mouth, making you gag and choke on the tidal wave of sticky fluid. You collapse, thrashing, as she releases your head, coughing up excess semen while she laughs.";
		if Player is herm:		[herm]
			if a random chance of 2 in 3 succeeds:
				say "[darkelfM]";
			else:
				say "[darkelfF]";
		else if Player is male:				[male]
			if ( anallevel > 1 and a random chance of 1 in 4 succeeds ) or ( anallevel is 3 and a random chance of 1 in 4 succeeds ): [Might seem redundant at first, but the second half of this conditional increases the chance of anal occurring at anallevel 3]
				say "[darkelfM]";
			else:
				say "[darkelfF]";
		else if Player is female:				[female]
			if a random chance of 3 in 4 succeeds:
				say "[darkelfM]";

to say darkelfM:
	if Player is female:
		say "     She looks at your wet cunt and her smile grows even more malicious. She grabs your hips and swiftly buries her massive cock in your [if Cunt Depth of Player < 15] overly tight cunt, causing you to moan in pain at the sudden intrusion. This seems to spur her on as she begins to thrust. You'd swear that the head of her cock is actually inside of your womb, as she thrusts into your over and over. Strangely, something about what she's doing, or perhaps the nanites themselves, twists things, and soon you find your arousal building, despite the excruciating pain[else] cunt and begins to thrust. You grunt in violation as she screws you without mercy, fucking you with no regard for you, but somehow you seem to become aroused from the treatment, your pleasure building even as your degradation intensifies[end if].";
		say "     She penetrates you repeatedly, and your own unwilling climax builds, until you can no longer contain it and you scream out in unwanted pleasure. Your coal skinned tormentor laughs, not even stopping in her violation of you, and says, 'Let's see just how much you like it, eh?' She fucks you repeatedly, pounding into you. She gives you no time to recover between your orgasms, as she pounds you over and over, and your traitorous body thrashes in orgasm after orgasm. Eventually, she cums, flooding your snatch with her seed, filling your womb, and having it spill over onto your thighs. She pulls out, and lets you fall into a pool of your own fluids mixed with her spooge leaking out of your violated cunt.[impregchance]";
	else:
		say "     She grabs your ass and you feel a rising panic as she folds you over. You feel the warm end of her massive cock pressed against your ass. You scream in violation as she thrusts into your ass, spearing you on her cock harshly. She thrusts into your again and again, and you are horrified as your body begins to become aroused by the cruel abuse. You struggle helplessly in her grip as your member stiffens and engorges with your [if HP of Player > 0]unchecked[else]unwilling[end if] arousal.";
		say "     You cry out in negation as you cum, your spooge spattering the ground beneath you. 'So, the bitch likes it, eh?' the dark elf says mockingly as her thrusts increase in power and speed. You lose track of time as your violation spreads out into eternity, until after having cum who knows how many times, your torment finally ends as the dark elf finally reaches her own climax and fills your ass with her seed. She abruptly pulls out and releases you, causing your abused body to collapse into the pool of your own cum beneath you, broken and violated.[mimpregchance]";
	say "     The herm dark elf stands over your battered and cum-covered body, and smirks at your degradation. Her cold voice echo's through your ears as you lose consciousness from the pain of your violation. 'Now, you know your place, you wretched slut.'";


to say darkelfF:
	if Player is female:
		say "     Stooping over your prone form, the shadowy elf examines your [if Cunt Count of Player > 1]multiple cunts[else]cunt[end if] and smiles lewdly. With a practiced motion, she swiftly runs one of her hands into your depths and begins thrusting her [if Cunt Depth of Player < 6]fingers[else if Cunt Depth of Player < 12]hand[else]entire forearm[end if] inside of you, expertly hitting both your clit and your internal G-spot. Dimly, you are aware that the dark elf is also fingering her own breasts and seems to be on the verge of orgasm. Then you crash over into an incredible orgasm.";
	if Player is male:
		say "     The dark elf looks at your [if Cock Count of Player > 1]multiple cocks[else]cock[end if] and [if Cock Length of Player < 10]says '...pitiful.' She sniffs in disdain at your apparently inadequate endowment. Her smile grows wicked. 'But it will have to do.' She mounts your inadequate manhood, your insignificant prick drowning in the vastness of her gaping snatch[else if Cock Length of Player < 16]says, 'Acceptable.' She seems satisfied with the size of your endowment, but is obviously used to larger tools. She mounts your cock, her slick wetness seeming loose inside of her hungry slit[else if Cock Length of Player < 21]smiles in a way that seems to bode you no good. 'How nice to finally find an outsider with adequate endowment.' She slips herself upon your manhood, the tight confines of her pussy gripping and clenching at your erect tool[else]smile in a way that seems to bode you no good. 'Ohhh. A challenge. How nice.' She slides her wet, tight pussy over your cock, and you feel the head of your tool stretch her to her limits. She gasps in pleasure as you bottom out, her cervix tight against the head of your cock.";
		say "     Then she begins to buck, and ride you like your were a sex toy. Her powerful downward thrusts smash your hips against the ground, and she grasps her breasts and pulsing cock. This sends her into a powerful, screaming, female orgasm that has her cunt squeeze and quiver around your tool. She continues this, cumming many more times before you cannot resist the involuntary pleasure of what she is doing to you, and cum yourself, sending your ejaculate up into her waiting womb while she splatters her hot, bitter seed across your face and body. Spent, you collapse as she rises from your softening member.";
	else:
		say "     Before you can recover, she has moved to straddle you and begins to scissor her legs with yours. She grinds her pussy against yours, sending waves and waves of pleasure through you, and rocking you into orgasm after orgasm, till it seems you might go mad from the pleasure. You lose count of the number of times you cum, and you cannot even begin to tell how many times she takes her pleasure from you. Eventually she is satisfied and sprays her hot cum across your body even as you're collapsing into exhaustion.";
	say "     As blackness descends upon you from the vicious fucking you just received, you see your violator sauntering away. Her juices [if Player is male]mixed with your cum [end if]drip down her thighs as she strides with a satisfied sway to her hips. You hear her call back to you over her shoulder as you lose consciousness. 'That was fun. Come back again sometime and we'll try it again. My sisters and I would be more than happy to play with you again,' she cackles.";


to say beatthedarkelf:
	if Player is male and Libido of Player > 20:
		say "     Defeated, the dark elf collapses to the ground. She struggles to rise, but is unable to do so and can only glare up at you angrily. Her dress is torn and you can see her large bosom, hefty cock and oversized cunt. Looking her over, you find yourself tempted to celebrate your victory and fuck the dark elf.";
		say "     [bold type]Shall you give in to this impulse?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			say "     Deciding the elf might need attention to put her in her place, you grab her roughly and lay her overtop of [one of]some rubble[or]a car hood[at random]. Grabbing her plump ass, you give her booty a squeeze and grind your cock against those beautiful cheeks. She moans and squirms, but you keep her pinned down, perhaps a little more roughly than is strictly necessary. This gets her to moan all the more and actually push her ass back against your cock. Clearly she likes to take it rough just as much as she likes to give it rough. With that in mind, you drive your [cock size desc of Player] [cock of Player] shaft into her large, deep cunt.";
			say "     [if Cock Length of Player > 21]She digs her nails in and pushes back into your thrust even as she releases a cry of pain at the sudden penetration by your [cock size desc of Player] cock[else if Cock Length of Player < 10]She laughs derisively at the comparatively small size of your cock, making you slap her ass painfully. She cries out in pain and delight at his and you can feel her pussy quiver around you at the blow[else if Cock Length of Player < 16]Your [cock size desc of Player] cock slides into her huge pussy with ease, but it is still big enough to make for an enjoyable fuck[else]Your [cock size desc of Player] cock fits nicely into her huge cunt and you're quite pleased to find a juicy hole suitable for your enlarged member[end if][if Cock Length of Player > 30]. Your enormous cock spreads her hips wide and causes a phallic belly bulge in the dark elf as you fuck her[end if]. You pound into her, fucking her wildly, having trouble distinguishing her cries of pain from those of pleasure and knowing that she's finding both aspects enjoyable. Leaning over her, you grab her swollen melons and pinch her nipples, soon driving the dark elf to orgasm. As her large pussy quivers around you, soaking you in her juices, you cum hard, pumping your hot seed into her womb. Once your balls are drained, you pull out, slap her ass with your cock and leave her there with your cum running down her legs.";
		else:
			say "     Managing to resist the urge, you give dismissive snort and head off, satisfied that you've put her in her place.";
	else:
		say "     Defeated, the dark elf collapses to the ground. She struggles to rise, but is unable to do so and can only glare up at you angrily. Satisfied that you've put her in her place, you leave her behind.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Dark Elf"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The dark elf[or]The ebon-skinned elf[or]The dark-skinned herm[or]She[at random] [one of]moves with speed and grace as she weaves in close and punches you in the side[or]grabs you roughly with those sharp-nailed hands and knees you in the gut[or]twists your arm roughly as she tries to force you to the ground[or]bends her exotic body a swift motion that quickly brings her leg up and around, striking you hard[at random]!"; [ Successful attack message ]
	now defeated entry is "[beatthedarkelf]"; [ Text when monster loses. ]
	now victory entry is "[losetodarkelf]"; [ Text when monster wins. ]
	now desc entry is "[darkelfdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "feminine and exotically beautiful with wide, canted and vertically slit eyes. Your lips are plump and kissable and your ears are pointed and elven";
	now body entry is "slender and agile with a very feminine set of curves. While a little below average in height, your arms and legs seem long and lithesome, giving you a slightly otherworldly appearance that isn't quite human. Your hands have long, slender fingers ending in sharp, inch-long nails";
	now skin entry is "[one of]dark[or]smooth and flawless[or]midnight black[or]ebon[at random]";
	now tail entry is "";
	now cock entry is "[one of]ebon[or]midnight black[or]charcoal[or]inky dark[at random]";
	now face change entry is "the world around you takes on greater clarity as bones in your face ache. You becomes something close to human, but not quite. You can feel your eyes shift, your lips grow plump and your ears extend up into points";
	now body change entry is "you feel a pinch, as your waist narrows. Your body becoming thin and curvy, and your instincts shift your posture, flaunting a very female sensuality. Your arms thin and you watch as your fingers grow longer with a long, pointed nail sprouting out of the end of each. Your feel light on your feet as your legs smooth and strengthen";
	now skin change entry is "it darkens and charcoal colored smoothness spreads to cover your body. Strength and energy floods into you as youthful vitality floods your system";
	now ass change entry is "it becomes a plump and very grabbable booty";
	now cock change entry is "becomes smooth and uncircumcised flesh. It takes on a very dark skin tone, but it looks quite human in shape";
	now str entry is 12; [ These are now the creature's stats... ]
	now dex entry is 19; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12; [ These values may be used as part of alternate combat.]
	now per entry is 10;
	now int entry is 14;
	now cha entry is 16;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 48; [ The monster's starting HP. ]
	now lev entry is 7; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10; [ Monster's average damage when attacking. ]
	now area entry is "Capitol"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 18; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 7; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 18; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 12; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 75; [ Target libido the infection will rise towards. ]
	now loot entry is "estosterogen pill"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 5; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]alluring[or]sultry[or]sexy[or]effeminate[or]slender[at random]";
	now type entry is "[one of]elven[or]fae[at random]";
	now magic entry is true;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 2; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
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
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, well-used, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
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
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 3 - Endings

[
when play ends:
	if bodyname of Player is "Dark Elf":
		if humanity of Player < 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Dark Elf ends here.
