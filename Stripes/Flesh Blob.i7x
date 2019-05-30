Version 1 of Flesh Blob by Stripes begins here.
[ Version 1.1 - Additional alternate player loss scene ]

"Adds a Flesh Blob creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

to say fleshblobdesc:
	setmongender 9; [creature is variable]
	choose row MonsterID from the Table of Random Critters;
	let qq be a random number between 5 and 8; [full range 5-10]
	if level of Player > 6 and a random chance of 2 in 3 succeeds, increase qq by 1;
	if level of Player > 8 and a random chance of 2 in 3 succeeds, increase qq by 1;
	if level of Player < qq and level of Player > 5, now qq is level of Player + 1;
	let zz be a random number between 1 and 12;
	if hardmode is true and level of Player > 8:		[Hard Mode Version!]
		increase qq by level of Player - 8;
		now HP entry is 18 + ( ( 4 * qq ) + zz + a random number between 0 and qq );
		now monsterHP is HP entry;
		now lev entry is qq;
		if lev entry > 9:
			now wdam entry is 8 + ( qq / 3 );
		else:
			now wdam entry is 1 + ( ( ( qq - 2 ) * 3 ) / 2 );
		now dex entry is 14 + ( qq / 6 ) + ( square root of ( qq + 8 ) ) + a random number between 0 and 2; [faster initial growth, but slows down more]
	else:								[Normal Play Version!]
		now HP entry is ( ( 5 times qq ) + zz + 5 );
		now monsterHP is HP entry;
		now wdam entry is 1 + ( ( ( qq - 2 ) * 3 ) / 2 );
		now lev entry is qq;
		now dex entry is ( ( ( ( qq - 1 ) * 4 ) / 3 ) + 10 );
	[testing values achieved]
[	say "Lvl is [qq]. Variable is [zz].";
	say "HP is [HP entry].";
	say "Dmg is [wdam entry]. Dex is [dex entry].[line break]";]
	say "     You find yourself being confronted by an oozing, undulating mass of flesh. It has near-white skin over its shifting mass, probably from its underground existence. It is a mound of pallid flesh roughly [if lev entry is 5]five[else if lev entry is 6]six[else if lev entry is 7]seven[else if lev entry is 8]eight[else if lev entry is 9]nine[else]ten[end if] feet in diameter that continuously forms disturbing bulges across its surface. Hands and arms, feet and legs, rise up at times, only to sink back into the mass of flesh. Eyes form in random places across itself, staring at you before closing and fading back into it. Transitory cocks, cunts and breasts are also quite common across the creature's body.";
	say "     Most disturbing of all though are the heads and faces that push out of the blob briefly. These are of both men and women and have varied expressions of horror, terror, delight and lust. Many of these do not even fully form and look more like someone's stretching the pale flesh across their face while others stare at you with mismatched eyes or grow an eye in their screaming mouth.";

to say losetofleshblob:
	choose row MonsterID from the Table of Random Critters;
	say "     You are grabbed by several hands growing from the blob of warm flesh and pulled down atop it. Its skin undulates against your body, sending shivers through you. You should be horrified, but you are no longer. There's something about its touch, its scent, its movement that is arousing you such that you don't resist as your clothes are pulled away, leaving your [bodydesc of Player] body rubbing against the breasts and genitals it forms.";
	if ( player is female or ( anallevel > 1 and player is male ) ) and a random chance of 1 in 3 succeeds:
		say "     You are rolled over onto your back by the undulating flesh beneath you. You are held there by shifting limbs and elongating tongues, new ones appearing and disappearing while you're held down. You can feel the warm, slick flesh beneath you rippling and rubbing against you, often with phallic bulges, juicy folds or cushioning breasts. Transitory and ever-changing, this brings a myriad of sensations for your pacified mind to enjoy.";
		if Player is female:
			say "     During this bizarrely sensual massage, you feel a hard, throbbing cock grow out from the fleshy mound and into your juicy pussy[if Player is female]. Soon enough, it forms enough cocks to fill each of your needy pussies[end if]. The cock[sfn] shift[sfv] and change[sfv] frequently, sometimes perfectly sized for your [cunt size desc of Player] cunt[sfn], other times feeling much thicker for a thorough stuffing or slender for a fast pounding[if anallevel is 3]. A penis is even formed to fill your crinkled back door to stuff your needy body further[end if][if Cunt Count of Player > 1 or anallevel is 3]. These sometimes even soften to the point of becoming wriggling tongues or become jointed to as probing fingers in your clenching holes before stiffening up again to resume thrusting[else]. It softens occasionally to the point of becoming a wriggling tongue or become jointed to as probing fingers in your clenching hole before stiffening up again to resume thrusting[end if].";
			say "     While not lavished with as much attention as your back and booty, your front also feels the arousing touch of the blob creature. Hands rise to briefly caress your [bodytype of Player] chest[if Breast Size of Player > 0] and fondle your tits[else if Nipple Count of Player > 0] and tease your nipples[end if]. Licks and kisses from emerging mouths are also given to you[if Cock Count of Player is 1]. Your cock is also groped, stroked, licked and fondled frequently, adding to your enjoyment of this strange molestation[else if Cock Count of Player > 1]. Your cocks are also groped, fondled, stroked and licked frequently, adding to your enjoyment of this strange molestation. At any given time, at least one of them is being toyed within some manner by that ever-shifting flesh[end if]. Your hands grope, stroke, pinch and finger whatever happens to be within reach from moment to moment.";
			say "     Over the course of this flowing fucking, you lose yourself in the rampant lust, eagerly getting screwed by the strange creature you would otherwise find disturbing. Several moans and whimpers of ecstasy come from the flesh blob, joining with your own cries of delight until finally you can't take any more and you arch your back as you cum hard. The cock[sfn] continue[sfv] to change shape and size, cumming over and over again until your belly is bloated and semen overflows from your overfull hole[sfn]. The throbbing penises and jiggling breasts that well up around you fountain sprays of semen and milk across your [scalevalue of Player] body, adding to your delight.[impregchance]";
		else:
			say "     During this bizarrely sensual massage, you feel a hard, throbbing cock grow out from the fleshy mound and into your ass. It spreads open your anus with this pillar of firm, slick manhood and starts thrusting into you. The cock[sfn] shift[sfv] and change[sfv] frequently, sometimes perfectly sized for your ass, other times feeling much thicker for a thorough stuffing or slender for a fast pounding. It softens occasionally to the point of becoming a wriggling tongue in your clenching hole before stiffening up again to resume thrusting. Your ass is thoroughly buggered in this way by cock after cock, much to your lust-addled delight.";
			say "     While not lavished with as much attention as your back and backside, your front also feels the arousing touch of the blob creature. Hands rise to briefly caress your [bodytype of Player] chest[if Breast Size of Player > 0] and fondle your tits[else if Nipple Count of Player > 0] and tease your nipples[end if]. Licks and kisses from emerging mouths are also given to you[if Cock Count of Player is 1]. Your cock is also groped, stroked, licked and fondled frequently, adding to your enjoyment of this strange molestation[else if Cock Count of Player > 1]. Your cocks are also groped, fondled, stroked and licked frequently, adding to your enjoyment of this strange molestation. At any given time, at least one of them is being toyed within some manner by that ever-shifting flesh[end if]. Your hands grope, stroke, pinch and finger whatever happens to be within reach from moment to moment.";
			say "     Over the course of this flowing fucking, you lose yourself in the rampant lust, eagerly getting screwed by the strange creature you would otherwise find disturbing. Several moans and whimpers of ecstasy come from the flesh blob, joining with your own cries of delight until finally you can't take any more and you arch your back as you cum hard. The cock continues to change shape and size, cumming over and over again until your belly is bloated and semen overflows from your overfull hole. The throbbing penises and jiggling breasts that well up around you fountain sprays of semen and milk across your [scalevalue of Player] body, adding to your delight.[impregchance]";
	if Player is male:
		say "     A wet, juicy pussy grows where your throbbing cock is pressing and a ripple of the fleshy mass has you thrust into it[if Cock Count of Player > 1]. Soon enough, it forms enough cunts to take each of your cocks into it[end if][if CockName of Player is not listed in infections of InternalCockList]. A hand grows nearby to grope your [Ball Size Adjective of Player] [Balls], fondling them as you start thrusting instinctively[else]. A hand grows nearby to rub at your crotch, kneading over your internal balls[end if], though changing itself for a tongue from time to time as well. The cunt[smn] around your cock[smn] shift[smv] and change[smv] frequently, sometimes perfectly sized for your [cock size desc of Player] manhood[smn], other times delightfully tight for increased pleasure or wider for rapid pounding. The addition of a licking tongue at times signals the occasional transition into a sucking mouth[if anallevel is 3]. Given how tight it becomes at times, you're quite certain it's a clenching anus you're stuffing on occasion as well[end if].";
		say "     As you fuck the mass of sexual delight beneath you, you lick at the cunts, suck on the cocks and nurse from the breasts that form within your reach. Your hands grope, stroke, pinch and finger whatever they can find from moment to moment. You lose yourself in the rampant lust, eagerly screwing the strange creature you would otherwise find disturbing[if Cunt Count of Player > 1]. A ripple of flesh rises up over your ass and thick, throbbing cocks are pressed into your quivering cunts so it can fuck you in return[else if Cunt Count of Player is 1]. A ripple of flesh rises up over your ass and a thick, throbbing cock is pressed into your quivering cunt so it can fuck you in return[else if anallevel > 1]. A ripple of flesh rises up over your ass and a thick, throbbing cock is pressed into your back passage so it can fuck you in return[end if]. Several moans and whimpers of ecstasy come from the flesh blob, joining with your own cries of delight until finally you can't take any more and you drive deep into the juicy hole and cum hard. The cunt[smn] continue[smv] to change shape, cumming over and over again until your balls are completely drained of your [Cum Load Size of Player] load[if Player is female]. Your puss[yfn] get pumped full to the point of overflowing by the throbbing, continuously changing and continuously cumming cock[sfn] inside you[else if anallevel > 1]. Your asshole gets pumped full to the point of overflowing by the throbbing, continuously changing and continuously cumming cock inside you[end if].[if Player is female or anallevel > 1][impregchance][end if]";
	else if Player is female:
		say "     A hard, throbbing cock grows outwards, pressing right to those juicy folds of your cunt and a ripple of the fleshy mass has it thrust into you[if Player is female]. Soon enough, it forms enough cocks to fill each of your needy pussies[end if]. The cock[sfn] shift[sfv] and change[sfv] frequently, sometimes perfectly sized for your [cunt size desc of Player] cunt[sfn], other times feeling much thicker for a thorough stuffing or slender for a fast pounding[if anallevel is 3]. A penis is even formed to fill your crinkled back door to stuff your needy body further[end if].";
		say "     As you're fucked by the mass of sexual delight beneath you, you lick at the cunts, suck on the cocks and nurse from the breasts that form within your reach. Your hands grope, stroke, pinch and finger whatever they can find from moment to moment. You lose yourself in the rampant lust, eagerly getting screwed by the strange creature you would otherwise find disturbing. Several moans and whimpers of ecstasy come from the flesh blob, joining with your own cries of delight until finally you can't take any more and you arch your back as you cum hard. The cock[sfn] continue[sfv] to change shape and size, cumming over and over again until your belly is bloated and semen overflows from your overfull hole[sfn].[impregchance]";
	else:
		say "     A hard, throbbing cock grows outwards, pressing against your crinkled hole and drooling sticky precum onto it. With a ripple of the fleshy mass, it thrusts into you, driving the slender cock into your anus. Once stuffed deep inside you, the cock shifts and grows thick, stuffing you so very full that you can't help by moan loudly in unexpected pleasure. The penis shifts and changes frequently, sometimes perfectly sized for your ass, other times feeling much thicker for a thorough stuffing or slender for a fast pounding[if anallevel is 3]. At times, you'd swear it even becomes a long, undulating tongue slathering around inside your bowels before pulsing hard as a steel rod again[end if].";
		say "     As you're fucked by the mass of sexual delight beneath you, you lick at the cunts, suck on the cocks and nurse from the breasts that form within your reach. Your hands grope, stroke, pinch and finger whatever they can find from moment to moment. You lose yourself in the rampant lust, eagerly getting screwed by the strange creature you would otherwise find disturbing. Several moans and whimpers of ecstasy come from the flesh blob, joining with your own cries of delight until finally it is driven to orgasm. The cock stuffed inside you continues to change shape and size, cumming over and over again until your belly is bloated and semen overflows from your creamy asshole.[mimpregchance]";
	say "     Its pleasure done, the flesh blob withdraws, leaving you wet and sticky on the floor as it slides away. You feel weak and drained after your encounter. Watching it depart, you almost feels as if you've lost some part of yourself and you long to go off with the unusual creature.";
	SanLoss 5;
	infect;
	now lev entry is 6;
	now wdam entry is 5;

to say beatthefleshblob:
	choose row MonsterID from the Table of Random Critters;
	say "     Driven back by your blows, it emits moans and whimpers. It backs off, clearly not wanting to continue to confront you at this time. The blob of changing flesh withdraws, oozing down the shadowy halls until it's out of sight.";
	now lev entry is 6;
	now wdam entry is 5;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Flesh Blob" to infections of BodyHorrorList;
	add "Flesh Blob" to infections of SlimeList;
	add "Flesh Blob" to infections of HermList;
	add "Flesh Blob" to infections of SlidingList;
	now Name entry is "Flesh Blob"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The [one of]fleshy blob[or]strange creature[or]undulating mass[or]flesh monster[at random] [one of]claws at you with grabby hands rising from its pallid skin[or]pushes out a foot to kick your groin[or]latches onto you with one of its emerging hands, pulling you against its warm, fleshy body. [if a random chance of 1 in 4 succeeds]Throbbing, leaking cocks form on its surface, rubbing firmly against you[else if a random chance of 1 in 3 succeeds]Wet, juicy cunts form on its surface, quivering with need against you[else if a random chance of 1 in 2 succeeds]Breasts form in various sizes on its surface, jiggling against you as they leak milk onto your skin[else]A mix of breasts, cocks and cunts form on its surface to rub against your body as long as you're held[end if]. You find yourself excited despite yourself[or]punches you with a fist that pushes forth from its pale hide[or]grows forth a face and armless torso, pushing it swiftly to your lips and kissing you. You can feel a rippling, fleshy tongue of cock throb in your mouth before you're able to push away, disturbed and aroused all at once[or]reaches out for you with a [if a random chance of 1 in 2 succeeds]manly[else]feminine[end if] hand with [if a random chance of 1 in 3 succeeds]an eye on its palm, staring at you balefully[else if a random chance of 1 in 3 succeeds]a dribbling cock on its palm, spurting musky precum onto you[else if a random chance of 1 in 2 succeeds]a drooling pussy at its palm, leaking femcum onto you[else]a slathering tongue emerging from its palm. It licks along your cheek even as it tries to pull you down into it[end if][or]forms numerous eyes all over its body, staring at you. Their gaze causes you to falter, allowing the creature to grab at your legs with groping hands[as decreasingly likely outcomes].";
	now defeated entry is "[beatthefleshblob]";
	now victory entry is "[losetofleshblob]";
	now desc entry is "[fleshblobdesc]";
	now face entry is "vaguely human, but lacking any strong definition and having a smoothed out appearance";
	now body entry is "mostly human, but it feels softer and shifts its build continuously";
	now skin entry is "pale";
	now tail entry is "";
	now cock entry is "human";
	now face change entry is "it grows soft and malleable, your skull turning to cartilage. You groan as your head shifts and restructures itself. You are momentarily relieved when you feel it returning to a human shape, but it doesn't quite seem to finish. While all the main features are there, they're also indistinct and malleable. It is as if your face were made of wax or plastic that's been melted a little and is still soft";
	now body change entry is "the flesh ripples across your body. As each wave runs through you, you can feel your insides turning softer and reshaping themselves in some strange manner. Eventually it starts to settle down, leaving you once again in a human-like form. But you are by no means restored to your old self, as your body feels mushy and soft inside. Your build shifts and changes continually, as if this body is not quite able to hold itself in human form";
	now skin change entry is "it becomes pale and slightly slick with sweat. It doesn't feel quite as firm as normal skin and lacks any hair or distinguishing marks to it";
	now ass change entry is "it becomes soft, padded flesh throughout";
	now cock change entry is "it shifts and changes, finally settling down back into a thankfully human-like form";
	now str entry is 16; [ These are now the creature's stats... ]
	now dex entry is 16; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16; [ These values may be used as part of alternate combat.]
	now per entry is 16;
	now int entry is 16;
	now cha entry is 16;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 38; [ The monster's starting HP. ]
	now lev entry is 5; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Sealed"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 3; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 7; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 4; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 3; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 12;
	now Cunt Tightness entry is 8;
	now libido entry is 75; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]shifting[or]malleable[or]ever-changing[at random]";
	now type entry is "humanoid";
	now magic entry is false;
	now resbypass entry is false;
	now DayCycle entry is 2;
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


Section 3 - Endings

when play ends:
	if BodyName of Player is "Flesh Blob":
		if humanity of Player < 10:
			if level of Player > 10:
				say "     As your mind becomes increasingly lost in the strange new instincts taking over, you wander off into the city. After assaulting and taking sexual pleasure from some of the creatures you find, you can't quite seem to find complete satisfaction. After a few attempts, you catch a fresh victim, but don't let them go this time, keeping it up while pressing your malleable body against theirs. As you keep going at it, your body loses more of its consistency, turning into an undulating, rippling blob of flesh and lust that engulfs your prey whole.";
				say "     Over time, as you continue to fuck them, they start to become gooey, flowing flesh like you. Hiding in a dark basement during the day with your prey, you keep going until they are melded and absorbed into your body with only traces of their mind remaining mixed with yours. You go on like this, resting and hiding during the day and coming out at night to find other victims, sometimes keeping them and absorbing them into your growing blob of shifting flesh.";
			else:
				say "     Over time, your thoughts become confused and you feel a longing inside your malleable body. Following it, you end up descending into the depths beneath Trevor Labs. There you encounter a blob creature made of shifting flesh. You press yourself to it and rub your sensitive flesh against its. Over time as you continue having sex with it, your body grows softer and eventually starts to flow into the creature, joining your flesh to its until you're absorbed away. All that remains of you are faint traces of your mind, having been consumed by its great hunger and lust for the pleasures of the flesh.";
		else:
			say "     Managing to survive your time in the city, you are eventually rescued by the military forces. Your semi-solid body is viewed with some suspicion by the soldiers and is given added scrutiny by their scientists. While they can't really yield much in the way of answers for you, at least they have no objections to your eventual release. You are considered an anomaly, your changes too random and brief to be of much use to the military or to represent any kind of serious security risk.";
			if Player is not neuter:
				say "     And while your changing appearance is generally viewed with suspicion by strangers, you are able to make a place for yourself in the new world. Preferring dark places and having quite the sexual appetite, you get a job working in a sex parlor, manning the gloryhole room where you service the cocks presented to you by the patrons while keeping yourself out of sight. Over time, you get to know some of the other sex workers employed there and some of them are even willing to fool around with you after hours. You learn, with practice, how to use your infected body's talents to partially meld with your lovers, sharing in their pleasure and making them a part of you in orgasmic bliss for a time. You can feel an urge to keep them, but always manage to release them, wary of what could happen if you started to consume others and were unable to return to even the vaguely human form you have.";
			else:
				say "     As your changing appearance is generally viewed with suspicion by strangers, you have trouble finding a place to fit in. You eventually get part-time work running the projectors at a sex parlor, staying out of sight of the patrons. Being genderless, you have less interest in the films being shown, keeping you from being distracted by them. It doesn't pay that much, but it's enough to get by on. Over time, you get to know some of the other sex workers employed there and some of them are even willing to fool around with you after hours. You learn, with practice, how to use your infected body's talents to partially meld with your lovers, allowing you to share in their pleasure and thereby a receive sexual release of your own as you feel orgasmic bliss while making them a part of you. You can feel an urge to keep them, but always manage to release them, wary of what could happen if you started to consume others and were unable to return to even the vaguely human form you have.";

Flesh Blob ends here.
