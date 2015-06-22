Version 1 of Flesh Blob For FS by Stripes begins here.
[ Version 1.1 - Additional alternate player loss scene ]

"Adds a Flesh Blob creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Flesh Blob" } to infections of hermaphrodite;
	add { "Flesh Blob" } to infections of VoreExclusion;	[list of critters not to be vored]

to say losetofleshblob:
	choose row monster from the table of random critters;
	say "     You are grabbed by several hands growing from the blob of warm flesh and pulled down atop it.  Its skin undulates against your body, sending shivers through you.  You should be horrified, but you are no longer.  There's something about its touch, its scent, its movement that is arousing you such that you don't resist as your clothes are pulled away, leaving your [bodydesc of player] body rubbing against the breasts and genitals it forms.";
	if ( cunts of player > 0 or ( anallevel > 1 and cocks of player > 0 ) ) and a random chance of 1 in 3 succeeds:
		say "     You are rolled over onto your back by the undulating flesh beneath you.  You are held there by shifting limbs and elongating tongues, new ones appearing and disappearing while you're held down.  You can feel the warm, slick flesh beneath you rippling and rubbing against you, often with phallic bulges, juicy folds or cushioning breasts.  Transitory and ever-changing, this brings a myriad of sensations for your pacified mind to enjoy.";
		if cunts of player > 0:
			say "     During this bizarrely sensual massage, you feel a hard, throbbing cock grow out from the fleshy mound and into your juicy pussy[if cunts of player > 0].  Soon enough, it forms enough cocks to fill each of your needy pussies[end if].  The cock[sfn] shift[sfv] and change[sfv] frequently, sometimes perfectly sized for your [cunt size desc of player] cunt[sfn], other times feeling much thicker for a thorough stuffing or slender for a fast pounding[if anallevel is 3].  A penis is even formed to fill your crinkled back door to stuff your needy body further[end if][if cunts of player > 1 or anallevel is 3].  These sometimes even soften to the point of becoming wriggling tongues or become jointed to as probing fingers in your clenching holes before stiffening up again to resume thrusting[otherwise].  It softens occasionally to the point of becoming a wriggling tongue or become jointed to as probing fingers in your clenching hole before stiffening up again to resume thrusting[end if].";
			say "     While not lavished with as much attention as your back and booty, your front also feels the arousing touch of the blob creature.  Hands rise to briefly caress your [bodytype of player] chest[if breast size of player > 0] and fondle your tits[otherwise if breasts of player > 0] and tease your nipples[end if].  Licks and kisses from emerging mouths are also given to you[if cocks of player is 1].  Your cock is also groped, stroked, licked and fondled frequently, adding to your enjoyment of this strange molestation[otherwise if cocks of player > 1].  Your cocks are also groped, fondled, stroked and licked frequently, adding to your enjoyment of this strange molestation.  At any given time, at least one of them is being toyed with in some manner by that ever-shifting flesh[end if].  Your hands grope, stroke, pinch and finger whatever happens to be within reach from moment to moment.";
			say "     Over the course of this flowing fucking, you lose yourself in the rampant lust, eagerly getting screwed by the strange creature you would otherwise find disturbing.  Several moans and whimpers of ecstasy come from the flesh blob, joining with your own cries of delight until finally you can't take any more and you arch your back as you cum hard.  The cock[sfn] continue[sfv] to change shape and size, cumming over and over again until your belly is bloated and semen overflows from your overfull hole[sfn].  The throbbing penises and jiggling breasts that well up around you fountain sprays of semen and milk across your [scalevalue of player] body, adding to your delight.[impregchance]";
		otherwise:
			say "     During this bizarrely sensual massage, you feel a hard, throbbing cock grow out from the fleshy mound and into your ass.  It spreads open your anus with this pillar of firm, slick manhood and starts thrusting into you.  The cock[sfn] shift[sfv] and change[sfv] frequently, sometimes perfectly sized for your ass, other times feeling much thicker for a thorough stuffing or slender for a fast pounding.  It softens occasionally to the point of becoming a wriggling tongue in your clenching hole before stiffening up again to resume thrusting.  Your ass is thoroughly buggered in this way by cock after cock, much to your lust-addled delight.";
			say "     While not lavished with as much attention as your back and backside, your front also feels the arousing touch of the blob creature.  Hands rise to briefly caress your [bodytype of player] chest[if breast size of player > 0] and fondle your tits[otherwise if breasts of player > 0] and tease your nipples[end if].  Licks and kisses from emerging mouths are also given to you[if cocks of player is 1].  Your cock is also groped, stroked, licked and fondled frequently, adding to your enjoyment of this strange molestation[otherwise if cocks of player > 1].  Your cocks are also groped, fondled, stroked and licked frequently, adding to your enjoyment of this strange molestation.  At any given time, at least one of them is being toyed with in some manner by that ever-shifting flesh[end if].  Your hands grope, stroke, pinch and finger whatever happens to be within reach from moment to moment.";
			say "     Over the course of this flowing fucking, you lose yourself in the rampant lust, eagerly getting screwed by the strange creature you would otherwise find disturbing.  Several moans and whimpers of ecstasy come from the flesh blob, joining with your own cries of delight until finally you can't take any more and you arch your back as you cum hard.  The cock continues to change shape and size, cumming over and over again until your belly is bloated and semen overflows from your overfull hole.  The throbbing penises and jiggling breasts that well up around you fountain sprays of semen and milk across your [scalevalue of player] body, adding to your delight.[impregchance]";
	if cocks of player > 0:
		say "     A wet, juicy pussy grows where your throbbing cock is pressing and a ripple of the fleshy mass has you thrust into it[if cocks of player > 1].  Soon enough, it forms enough cunts to take each of your cocks into it[end if][if cockname of player is not listed in infections of internallist].  A hand grows nearby to grope your [ball size], fondling them as you start thrusting instinctively[otherwise].  A hand grows nearby to rub at your crotch, kneading over your internal balls[end if], though changing itself for a tongue from time to time as well.  The cunt[smn] around your cock[smn] shift[smv] and change[smv] frequently, sometimes perfectly sized for your [cock size desc of player] manhood[smn], other times delightfully tight for increased pleasure or wider for rapid pounding.  The addition of a licking tongue at times signals the occasional transition into a sucking mouth[if anallevel is 3].  Given how tight it becomes at times, you're quite certain it's a clenching anus you're stuffing on occasion as well[end if].";
		say "     As you fuck the mass of sexual delight beneath you, you lick at the cunts, suck on the cocks and nurse from the breasts that form within your reach.  Your hands grope, stroke, pinch and finger whatever they can find from moment to moment.  You lose yourself in the rampant lust, eagerly screwing the strange creature you would otherwise find disturbing[if cunts of player > 1].  A ripple of flesh rises up over your ass and thick, throbbing cocks are pressed into your quivering cunts so it can fuck you in return[otherwise if cunts of player is 1].  A ripple of flesh rises up over your ass and a thick, throbbing cock is pressed into your quivering cunt so it can fuck you in return[otherwise if anallevel is not 1].  A ripple of flesh rises up over your ass and a thick, throbbing cock is pressed into your back passage so it can fuck you in return[end if].  Several moans and whimpers of ecstasy come from the flesh blob, joining with your own cries of delight until finally you can't take any more and you drive deep into the juicy hole and cum hard.  The cunt[smn] continue[smv] to change shape, cumming over and over again until your balls are completely drained of your [cum load size of player] load[if cunts of player > 0].  Your puss[yfn] get pumped full to the point of overflowing by the throbbing, continuously changing and continuously cumming cock[sfn] inside you[otherwise if anallevel is not 1].  Your asshole gets pumped full to the point of overflowing by the throbbing, continuously changing and continuously cumming cock inside you[end if].[if cunts of player > 0 or anallevel > 1][impregchance][end if]";
	otherwise if cunts of player > 0:
		say "     A hard, throbbing cock grows outwards, pressing right to those juicy folds of your cunt and a ripple of the fleshy mass has it thrust into you[if cunts of player > 0].  Soon enough, it forms enough cocks to fill each of your needy pussies[end if].  The cock[sfn] shift[sfv] and change[sfv] frequently, sometimes perfectly sized for your [cunt size desc of player] cunt[sfn], other times feeling much thicker for a thorough stuffing or slender for a fast pounding[if anallevel is 3].  A penis is even formed to fill your crinkled back door to stuff your needy body further[end if].";
		say "     As you're fucked by the mass of sexual delight beneath you, you lick at the cunts, suck on the cocks and nurse from the breasts that form within your reach.  Your hands grope, stroke, pinch and finger whatever they can find from moment to moment.  You lose yourself in the rampant lust, eagerly getting screwed by the strange creature you would otherwise find disturbing.  Several moans and whimpers of ecstasy come from the flesh blob, joining with your own cries of delight until finally you can't take any more and you arch your back as you cum hard.  The cock[sfn] continue[sfv] to change shape and size, cumming over and over again until your belly is bloated and semen overflows from your overfull hole[sfn].[impregchance]";
	otherwise:
		say "     A hard, throbbing cock grows outwards, pressing against your crinkled hole and drooling sticky precum onto it.  With a ripple of the fleshy mass, it thrusts into you, driving the slender cock into your anus.  Once stuffed deep inside you, the cock shifts and grows thick, stuffing you so very full that you can't help by moan loudly in unexpected pleasure.  The penis shifts and changes frequently, sometimes perfectly sized for your ass, other times feeling much thicker for a thorough stuffing or slender for a fast pounding[if anallevel is 3].  At times, you'd swear it even becomes a long, undulating tongue slathering around inside your bowels before pulsing hard as a steel rod again[end if].";
		say "     As you're fucked by the mass of sexual delight beneath you, you lick at the cunts, suck on the cocks and nurse from the breasts that form within your reach.  Your hands grope, stroke, pinch and finger whatever they can find from moment to moment.  You lose yourself in the rampant lust, eagerly getting screwed by the strange creature you would otherwise find disturbing.  Several moans and whimpers of ecstasy come from the flesh blob, joining with your own cries of delight until finally it is driven to orgasm.  The cock stuffed inside you continues to change shape and size, cumming over and over again until your belly is bloated and semen overflows from your creamy asshole.[mimpregchance]";
	say "     Its pleasure done, the flesh blob withdraws, leaving you wet and sticky on the floor as it slides away.  You feel weak and drained after your encounter.  Watching it depart, you almost feels as if you've lost some part of yourself and you long to go off with the unusual creature.";
	decrease humanity of player by 5;
	infect;
	now lev entry is 6;
	now wdam entry is 5;

to say beatthefleshblob:
	choose row monster from the table of random critters;
	say "     Driven back by your blows, it emits moans and whimpers.  It backs off, clearly not wanting to continue to confront you at this time.  The blob of changing flesh withdraws, oozing down the shadowy halls until it's out of sight.";
	now lev entry is 6;
	now wdam entry is 5;

to say fleshblobdesc:
	choose row monster from the table of random critters;
	let qq be a random number between 5 and 8;		[full range 5-10]
	if level of player > 6 and a random chance of 2 in 3 succeeds, increase qq by 1;
	if level of player > 8 and a random chance of 2 in 3 succeeds, increase qq by 1;
	if level of player < qq and level of player > 5, now qq is level of player + 1;
	let zz be a random number between 1 and 12;
	if hardmode is true and level of player > 8:		[Hard Mode Version!]
		increase qq by level of player - 8;
		now hp entry is 18 + ( ( 4 * qq ) + zz + a random number between 0 and qq );
		now monsterhp is hp entry;
		now lev entry is qq;
		if lev entry > 9:
			now wdam entry is 8 + ( qq / 3 );
		otherwise:
			now wdam entry is 1 + ( ( ( qq - 2 ) * 3 ) / 2 );
		now dex entry is 14 + ( qq / 6 ) + ( square root of ( qq + 8 ) ) + a random number between 0 and 2;		[faster initial growth, but slows down more]
	otherwise:								[Normal Play Version!]
		now hp entry is ( ( 5 times qq ) + zz + 5 );
		now monsterhp is hp entry;
		now wdam entry is 1 + ( ( ( qq - 2 ) * 3 ) / 2 );
		now lev entry is qq;
		now dex entry is ( ( ( ( qq - 1 ) * 4 ) / 3 ) + 10 );
	[testing values achieved]
[	say "Lvl is [qq].  Variable is [zz].";
	say "HP is [hp entry].";
	say "Dmg is [wdam entry].  Dex is [dex entry].[line break]";		]
	say "     You find yourself being confronted by an oozing, undulating mass of flesh.  It has near-white skin over its shifting mass, probably from its underground existence.  It is a mound of pallid flesh roughly [if lev entry is 5]five[otherwise if lev entry is 6]six[otherwise if lev entry is 7]seven[otherwise if lev entry is 8]eight[otherwise if lev entry is 9]nine[otherwise]ten[end if] feet in diameter that continuously forms disturbing bulges across its surface.  Hands and arms, feet and legs, rise up at times, only to sink back into the mass of flesh.  Eyes form in random places across itself, staring at you before closing and fading back into it.  Transitory cocks, cunts and breasts are also quite common across the creature's body.";
	say "     Most disturbing of all though are the heads and faces that push out of the blob briefly.  These are of both men and women and have varied expressions of horror, terror, delight and lust.  Many of these do not even fully form and look more like someone's stretching the pale flesh across their face while others stare at you with mismatched eyes or grow an eye in their screaming mouth.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Flesh Blob";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "The [one of]fleshy blob[or]strange creature[or]undulating mass[or]flesh monster[at random] [one of]claws at you with grabby hands rising from its pallid skin[or]pushes out a foot to kick your groin[or]latches onto you with one of its emerging hands, pulling you against its warm, fleshy body.  [if a random chance of 1 in 4 succeeds]Throbbing, leaking cocks form on its surface, rubbing firmly against you[otherwise if a random chance of 1 in 3 succeeds]Wet, juicy cunts form on its surface, quivering with need against you[otherwise if a random chance of 1 in 2 succeeds]Breasts form in various sizes on its surface, jiggling against you as they leak milk onto your skin[otherwise]A mix of breasts, cocks and cunts form on its surface to rub against your body as long as you're held[end if].  You find yourself excited despite yourself[or]punches you with a fist that pushes forth from its pale hide[or]grows forth a face and armless torso, pushing it swiftly to your lips and kissing you.  You can feel an rippling, fleshy tongue of cock throb in your mouth before you're able to push away, disturbed and aroused all at once[or]reaches out for you with a [if a random chance of 1 in 2 succeeds]manly[otherwise]feminine[end if] hand with [if a random chance of 1 in 3 succeeds]an eye on its palm, staring at you balefully[otherwise if a random chance of 1 in 3 succeeds]a dribbling cock on its palm, spurting musky precum onto you[otherwise if a random chance of 1 in 2 succeeds]a drooling pussy at its palm, leaking femcum onto you[otherwise]a slathering tongue emerging from its palm.  It licks along your cheek even as it tries to pull you down into it[end if][or]forms numerous eyes all over its body, staring at you.  Their gaze causes you to falter, allowing the creature to grab at your legs with groping hands[as decreasingly likely outcomes].";
	now defeated entry is "[beatthefleshblob]";
	now victory entry is "[losetofleshblob]";
	now desc entry is "[fleshblobdesc]";
	now face entry is "vaguely human, but lacking any strong definition and having a smoothed out appearance";
	now body entry is "mostly human, but it feels softer and shifts its build continuously";
	now skin entry is "pale";
	now tail entry is "";
	now cock entry is "human";
	now face change entry is "it grows soft and malleable, your skull turning to cartilage.  You groan as your head shifts and restructures itself.  You are momentarily relieved when you feel it returning to a human shape, but it doesn't quite seem to finish.  While all the main features are there, they're also indistinct and malleable.  It is as if your face were made of wax or plastic that's been melted a little and is still soft";
	now body change entry is "the flesh ripples across your body.  As each wave runs through you, you can feel your insides turning softer and reshaping themselves in some strange manner.  Eventually it starts to settle down, leaving you once again in a human-like form.  But you are by no means restored to your old self, as your body feels mushy and soft inside.  Your build shifts and changes continually, as if this body is not quite able to hold itself in human form";
	now skin change entry is "it becomes pale and slightly slick with sweat.  It doesn't feel quite as firm as normal skin and lacks any hair or distinguishing marks to it";
	now ass change entry is "it becomes soft, padded flesh throughout";
	now cock change entry is "it shifts and changes, finally settling down back into a thankfully human-like form";
	now str entry is 16;			[ These are now the creature's stats... ]
	now dex entry is 16;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16;			[ These values may be used as part of alternate combat.]
	now per entry is 16;
	now int entry is 16;
	now cha entry is 16;
	now sex entry is "Both";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 38;			[ The monster's starting hit points. ]
	now lev entry is 5;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 6;			[ Monster's average damage when attacking. ]
	now area entry is "Sealed";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 3;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 7;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 5;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 4;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 3;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 3;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 8;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 75;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]shifting[or]malleable[or]ever-changing[at random]";
	now type entry is "humanoid";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now nocturnal entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Endings

when play ends:
	if bodyname of player is "Flesh Blob":
		if humanity of player is less than 10:
			if level of player > 10:
				say "     As your mind becomes increasingly lost in the strange new instincts taking over, you wander off into the city.  After assaulting and taking sexual pleasure from some of the creatures you find, you can't quite seem to find complete satisfaction.  After a few attempts, you catch a fresh victim, but don't let them go this time, keeping it up while pressing your malleable body against theirs.  As you keep going at it, your body loses more of its consistency, turning into an undulating, rippling blob of flesh and lust that engulfs your prey whole.";
				say "     Over time, as you continue to fuck them, they start to become gooey, flowing flesh like you.  Hiding in a dark basement during the day with your prey, you keep going until they are melded and absorbed into your body with only traces of their mind remaining mixed with yours.  You go on like this, resting and hiding during the day and coming out at night to find other victims, sometimes keeping them and absorbing them into your growing blob of shifting flesh.";
			otherwise:
				say "     Over time, your thoughts become confused and you feel a longing inside your malleable body.  Following it, you end up descending into the depths beneath Trevor Labs.  There you encounter a blob creature made of shifting flesh.  You press yourself to it and rub your sensitive flesh against its.  Over time as you continue having sex with it, your body grows softer and eventually starts to flow into the creature, joining your flesh to its until you're absorbed away.  All that remains of you are faint traces of your mind, having been consumed by its great hunger and lust for the pleasures of the flesh.";
		otherwise:
			say "     Managing to survive your time in the city, you are eventually rescued by the military forces.  Your semi-solid body is viewed with some suspicion by the soldiers and is given added scrutiny by their scientists.  While they can't really yield much in the way of answers for you, at least they have no objections to your eventual release.  You are considered an anomaly, your changes too random and brief to be of much use to the military or to represent any kind of serious security risk.";
			if cocks of player > 0 or cunts of player > 0:
				say "     And while your changing appearance is generally viewed with suspicion by strangers, you are able to make a place for yourself in the new world.  Preferring dark places and having quite the sexual appetite, you get a job working in a sex parlour, manning the gloryhole room where you service the cocks presented to you by the patrons while keeping yourself out of sight.  Over time, you get to know some of the other sex workers employed there and some of them are even willing to fool around with you after hours.  You learn, with practice, how to use your infected body's talents to partially meld with your lovers, sharing in their pleasure and making them a part of you in orgasmic bliss for a time.  You can feel an urge to keep them, but always manage to release them, wary of what could happen if you started to consume others and were unable to return to even the vaguely human form you have.";
			otherwise:
				say "     As your changing appearance is generally viewed with suspicion by strangers, you have trouble finding a place to fit in.  You eventually get part-time work running the projectors at a sex parlour, staying out of sight of the patrons.  Being genderless, you have less interest in the films being shown, keeping you from being distracted by them.  It doesn't pay that much, but it's enough to get by on.  Over time, you get to know some of the other sex workers employed there and some of them are even willing to fool around with you after hours.  You learn, with practice, how to use your infected body's talents to partially meld with your lovers, allowing you to share in their pleasure and thereby a receive sexual release of your own as you feel orgasmic bliss while making them a part of you.  You can feel an urge to keep them, but always manage to release them, wary of what could happen if you started to consume others and were unable to return to even the vaguely human form you have.";

Flesh Blob For FS ends here.
