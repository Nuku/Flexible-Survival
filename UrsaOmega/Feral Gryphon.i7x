Version 1 of Feral Gryphon by UrsaOmega begins here.
[Version 1.5 - Sex menu victory and Garrett's milk options - Stripes]
[Version 1.6 - Garrett Endings - Stripes]
"Adds a Feral Gryphon creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

fgryphon_TFcount is a number that varies.
lastfgryphon_TF is a number that varies.  lastfgryphon_TF is usually 255.

when play begins:
	add { "Feral Gryphon" } to infections of guy;
	add { "Feral Gryphon" } to infections of furry;
	add { "Feral Gryphon" } to infections of Avianlist;		[list of avian/bird infections]
	add { "Feral Gryphon" } to infections of Avianpredlist;	[list of predatory avian/bird infections]
	add { "Feral Gryphon" } to infections of Knotlist;		[list of cock infections with a knot]

to say Gryphondesc:
	say "     Suddenly, a winged form drops down in front of you.  It has the feathered head of an eagle, but the golden-furred body of a lion; a mythical gryphon!  It stalks toward you predatorily and you prepare to fight.";

to say losetoGryphon:
	say "     The gryphon knocks you to the floor, pinning you under his feathery weight. With an angry growl-chirp, he begins picking intently at your gear; he's trying to undress you. Not wanting to get sliced by his sharp beak and claws, you put your hands up in a motion you hope he understands as surrender and begin slowly disrobing yourself.";
	say "      Finally, you're naked before the beast. He clearly enjoyed the show, as his cock is slipping out of his furry sheath as he looks your body over approvingly.";
	if waiterhater is 0, wait for any key;
	say "[line break]";
	if a random chance of 3 in 4 succeeds: [Mounted by gryphon]
		say "     The gryphon pushes you over onto your belly with a powerful swipe. You push yourself up on all fours to try to get away, but his bulk is over you in an instant. [if scalevalue of player is less than 4]He puts his forelegs on either side of you, trapping you beneath him,[otherwise]He mounts your [bodydesc of player] rear, wrapping his powerful forelegs around your hips[end if] and hunches his hips. You can feel something hot, wet, and rough probe your backside, looking for your [if cunts of player > 0]feminine cleft[otherwise]asshole[end if].";
		say "     Suddenly, you feel his pointed tip lodge between your [if cunts of player > 0]labia[otherwise]ass cheeks[end if] and you gasp as he thrusts inward, spreading you around the first few inches of his cock. What you suspect to be leonine barbs on the head of his penis add a strange, rough texture to his maleness. Your suspicion is confirmed as he pulls back a bit, and they drag against the walls of your [if cunts of player > 0]vagina[otherwise]rectum[end if] in a not-altogether-unpleasant scraping sensation. He quickly works his cock into your passage fully, his copious precum lubricating you thoroughly.";
		say "[line break]";
		if waiterhater is 0, wait for any key;
		if player is impreg_able:
			say "     The gryphon's barbs are having a strange effect on your body; an unusual warmth forms in your womb and you find yourself clenching down his cock and pushing back into his thrusts. Thoughts of your belly swelling with the male's clutch cross your mind unbidden; you moan as you imagine laying the eggs, stretching you as you push them out one by one.";
		if waiterhater is 0, wait for any key;
		say "[line break]";
		say "     He breeds you roughly, his cock pistoning in and out of your [if cunts of player > 0]cunt[otherwise]back passage[end if] with an animalistic ferocity.[if cocks of player > 0] You can feel your own [cock of player] cock[smn] hardening in response to battering your prostate is receiving; it dribbles precum over the ground as the gryphon's huge ball-sack smacks against your own on each thrust.[end if] The gryphon grips you tighter, giving you long, ferocious thrusts; you feel something else pushing at your [if cunts of player > 0]vagina[otherwise]asshole[end if]. The gryphon's swollen knot batters your rear, seeking entrance.[run paragraph on]";
		if ( cunts of player > 0 and cunt width of player < 7 ) or ( cunts of player is 0 and scalevalue of player < 3 and player is not twistcapped ):
			say " He grinds it against your [if cunts of player > 0]cunt-lips[otherwise]anus[end if], but isn't able to fit it in. He settles for pounding your depths with the rest of his length, before finally pressing his cock deep within you, his knot sitting just outside your straining entrance.";
		otherwise:
			say "He grinds it against you with each thrust, and you can feel your entrance slowly give way to its incessant pressure. On one harsh thrust, the knot reaches its widest point, spreading your [if cunts of player > 0]nether-lips[otherwise]asshole[end if] uncomfortably; on the next, it pops into you fully. After the initial shock of penetration wears off, you relish the feeling of warm fullness as the gryphon finishes himself with quick, rutting thrusts.";
		say "     He screeches in victory as you feel his cock twitch and the first hot rope of gryphon-cum splash inside you[if cocks of player > 0]. You reach your own climax, your [cock size desc of player] cock[smn] shooting your own cum over the ground[end if]. The gryphon comes for what feels like minutes; by the time he's finished, his seed is drooling from you, squelching around his cock. He dismounts you, his softening maleness slipping from you with a soft plopping sound. You feel his cum drip from your rear as he spreads his wings and leaves you to clean yourself up.[impregchance]";
	otherwise: [oral]
		say "     The gryphon moves his bulk over you until his cock moves in front of your [facename of player] face. You can see it has fully extended from his sheath now; it has a thick base that tapers dramatically to a pointy tip; the glans of his cock seems to be covered in rough barbs, betraying his leonine heritage. The gryphon presses his back half against your upper body, pinning you while his erection rubs against your cheeks, searching for your mouth.";
		if waiterhater is 0, wait for any key;
		say "[line break]";
		say "     Realizing there is only one way out of this situation, you reach up and grab the probing gryphon-hood, guiding it to your puckered lips. You slip your mouth over his length, but you can only fit the upper part of his length in your mouth; however, this seems to be satisfactory for the gryphon, who starts thrusting his cock in and out of you. It's obvious he wants to slip down your throat, but from this angle it's impossible. You settle for suckling on his length as he tries to face-fuck you, your mouth quickly filling with his precum. You swallow as much as you can, but some of it drips messily down your chin.";
		if waiterhater is 0, wait for any key;
		say "[line break]";
		say "     The gryphon is taking his sweet time in reaching his climax - perhaps he's not getting enough stimulation? Your eyes fix on the now-bulging knot at the base of his penis; eager to end this, you reach up and clamp your hand behind it. This simulated tie sends the gryphon over the edge almost immediately; you feel his cock twitch in your mouth as he unloads the first spurt of thick gryphon cum into your mouth. You try to swallow as much of his load as possible, but the copious volume causes you to choke at pull back off his maleness; this in turn causes his last few ropes of seed to paint your face white.";
		say "[line break]";
		say "     Pleased with your performance, the gryphon spreads his wings and takes off, leaving you to clean yourself up.";

to say beattheGryphon:
	say "     The beaten gryphon gives an angry cry, clearly disappointed you were not easier prey.  Feeling that he deserves to have the tables turned on him, there's a brief moment when you might catch the beast before he makes his escape[if carried of gryphon cum > 0 and hp of Garrett >= 5].  You're also reminded that you have a bottle of Garrett's special gryphon cum milk.  This might be a fun opportunity to get the creature to drink some[end if].  Shall you take it?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Mount him";
		now sortorder entry is 1;
		now description entry is "drive your cock home in his oh-so-conveniently raised rear end";
	choose a blank row in table of fucking options;
	now title entry is "Get fucked";
	now sortorder entry is 2;
	now description entry is "roll him over and mount that knotted cock swinging between his legs";
	if carried of gryphon cum > 0 and hp of Garrett >= 5 and inasituation is false:
		if cocks of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Garrett's special milk - Give anal";
			now sortorder entry is 98;
			now description entry is "offer the manly drink to it and fuck it";
		choose a blank row in table of fucking options;
		now title entry is "Garrett's special milk - Receive anal";
		now sortorder entry is 99;
		now description entry is "offer the manly drink to it and get fucked";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Let it go[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: Shall you [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Mount him":
					say "[feralgryphsex01]";
				otherwise if nam is "Get fucked":
					say "[feralgryphsex02]";
				otherwise if nam is "Garrett's special milk - Give anal":
					say "[feralgryph_milk01]";
				otherwise if nam is "Garrett's special milk - Receive anal":
					say "[feralgryph_milk02]";
		otherwise if calcnumber is 0:
			say "Confirm: Will you let the creature leave unmolested?";
			if the player consents:
				say "     Deciding against it, the moment passes and the gryphon takes off, limping his way into the air to nurse his wounds.";
				now sextablerun is 1;
		otherwise:
			say "Invalid Option.  Pick between 0 and [the number of filled rows in the table of fucking options].";
	

to say feralgryphsex01:
	say "     Leaping atop the wounded creature before he can take to the air, you force him to the ground.  He screeches angrily and tries to snap at you with his beak, but you get a good handle on his neck and press his face to the ground.  It struggles weakly as you pin it in place, but is too worn to break free or effectively resist your advances.";
	say "     Deciding to bang some sweet feral ass, your erection throbs in anticipation.  You bring your [cock of player] cock into position and push it into the reluctant creature's asshole.  It is hot and tight, squeezing firmly around the unexpected intruder [if cock length of player > 40]forcing it open incredibly wide[otherwise if cock length of player > 20]forcing it open uncomfortably wide[otherwise]now buried inside it[end if].  As the victor in your conflict, you lustfully claim your prize, pounding away at the hybrid's [if cock length of player > 20]overstuffed [end if]ass with considerable zeal.  Whether the creature simply becomes resigned to his fate or starts to enjoy it is unclear, but the gryphon soon stops resisting.";
	say "     You let your hands roam across his body, enjoying the soft feathers and warm fur of this mythological beast.  And of course, your hands do end up at the gryphon's throbbing cock, feeling the folds of a sheath around the base and that it is largely leonine in form, but also possesses a swelling knot.  Stroking the monster's erection makes him even more compliant and soon he's pushing back into your thrusts and cooing softly with pleasure.  At that point, it only takes a few more thrusts before you're cumming, painting the gryphon's bowels with a [cum load size of player] dose of your semen.  With his foot-long rod pulsing in your hand, your once-reluctant foe cries out as he joins you in orgasm, staining the ground with his virile load.  You pump your hips into him even as you pump his cock, making sure you're both drained before you release him and pull out.  Trying to preserve at least a little dignity, the gryphon gives a snarl and lowers his tail to hide the sticky mess you've left leaking out of him before taking to the air.";

to say feralgryphsex02:
	say "     Leaping atop the wounded creature before he can take to the air, you force him to the ground.  He screeches angrily and tries to snap at you with his beak, but you get a good handle on his neck and press his face to the ground.  It struggles weakly as you pin it in place, but is too worn to break free or effectively resist your advances.";
	say "     Deciding that you want to feel this virile beast's maleness fucking your [if cunts of player > 0]pussy[otherwise]asshole[end if], you keep a tight grip on him with one hand, then reach under the gryphon's quadrupedal form with the other.  Fingers brushing over the mythical beast's chest as it haves in quick pants and protesting screeches, you feel his mixture of soft fur and feathers, then soon reach what you really want - the hot spear of his manhood.  The gryphon's throbbing cock clearly is leonine in form, but also possesses a swelling knot, promising some great fun for the person to ride it.  Gripping the swollen organ, you stroke it in a gentle and steady pace, which calms the feral down and makes him give surprised and pleased chirps.  A few moments later, you decide it is time to get what you really want - and push against him with both hands, slowly rolling him over to lie on his back.";
	say "     The gryphon's eyes search you out with a suspicious gaze, but that quickly vanishes as you strip as fast as you can, then straddle his hips.  It is quite pleasant to sit over him, with his soft fur and even softer feathers pressing against your naked form, and you just stroke him in contentment for a moment before reaching behind and take hold of his precum-drooling erection.  Then you raise your hips far enough so you can bend his cock up a bit, placing it right at your [if cunts of player > 0]nether lips[otherwise]quivering pucker[end if], and sink down on his manhood.  There is a satisfied roar from the feral beast as he feels the tight embrace of your [if cunts of player > 0]pussy[otherwise]back passage[end if] sliding over his prick and he starts bucking into you with some force, eager to fill your belly with his [if cunts of player > 0]offspring[otherwise]seed[end if].";
	say "     [WaitLineBreak]";
	say "     It is quite a bit of fun to play bucking bronco with the horny beast, grinding down against his crotch as he thrusts up and feeling the swell of his knock pop in and out of you - but as your once-reluctant foe's cries start getting more and more intense, you reach down to wrap your hand around his maleness, making sure that he doesn't penetrate with his knot anymore, not this close to orgasm.  Being tied to a wild beast when he's got his rocks off and... other matters might come up - like for example a growling stomach - just seems like a thing to avoid. It doesn't appear that your feral mate minds all that much - he just keeps humping you and before much longer, a first long spurt of gryphon cum splashes your insides, then a second, and third, ...";
	if cunts of player > 0:
		say "     As the nice warm feeling of getting a creamy filling spreads in you, your hand flies to your own clit, rubbing it in frenzied haste as you are eager to join your mate in orgasm.  Of course, with how wound-up you already are after the whole hot fuck, it takes barely a moment before you gasp out in completion, trembling all over as femcum starts to leak from your stretched pussy, together with the gryphon's creamy seed.  You pump your hips into him even as you ride out the orgasm, making sure he's fully drained himself into you before you pull off.  Rolling back over and standing up on his strong legs, the gryphon raises his head high and gives a screech, satisfied at having gotten pussy even though you bested him in combat.  Then he simply swings himself into the air with a flap of strong wings, proving that his kind isn't much for cuddling after sex.";
	otherwise if cocks of player > 0:
		say "     As the nice warm feeling of getting a creamy filling spreads in you, your hand flies to your own cock, stroking it in frenzied haste as you are eager to join your mate in orgasm.  Of course, with how wound-up you already are after the whole hot fuck, it takes barely a moment before you gasp out in completion, trembling all over as blasts of cum shoot from your manhood and splat down over the gryphon's chest, splattering his fur with creamy seed.  You pump your hips against him even as you ride out the orgasm, making sure he's fully drained himself into you before you pull off.  Rolling back over and standing up on his strong legs, the gryphon raises his head high and gives a screech, satisfied at having gotten to fuck someone even though you bested him in combat.  Then he simply swings himself into the air with a flap of strong wings, proving that his kind isn't much for cuddling after sex.";
	otherwise:
		say "     As the nice warm feeling of getting a creamy filling spreads in you, your hand flies to your own crotch, stroking its sexless but still sensitive skin in frenzied haste as you are eager to join your mate in orgasm.  Of course, with how wound-up you already are after the whole hot fuck, it takes barely a moment before you gasp out in completion, trembling all over as your world is rocked hard.  You pump your hips against him even as you ride out the orgasm, making sure he's fully drained himself into you before you pull off.  Rolling back over and standing up on his strong legs, the gryphon raises his head high and gives a screech, satisfied at having gotten to fuck someone even though you bested him in combat.  Then he simply swings himself into the air with a flap of strong wings, proving that his kind isn't much for cuddling after sex.";	
	say "[impregchance]";								

to say feralgryph_milk01:
	decrease carried of gryphon cum by 1;
	increase fgryphon_TFcount by 1;
	now lastfgryphon_TF is turns;
	increase xp of Garrett by 1;
	let gryphtype be 0;
	if bodyname of player is "Feral Gryphon" or facename of player is "Feral Gryphon":
		now gryphtype is 2;
	otherwise if bodyname of player is "Hermaphrodite Gryphon" or facename of player is "Hermaphrodite Gryphon":
		now gryphtype is 1;
	say "     The feral gryphon, though weakened, remains aggressive and eyes you with its eagle stare.  Bringing out the bottle of milk you have, you pop the top[if gryphtype > 0].  Its musky gryphon scent is enticing and you have to resist drinking it before you can even offer it to the creature[otherwise if cocks of player > 0].  Its musky scent is enticing, making you hard[end if].  He is suspicious at first, but the alluring scent of gryphon sex draws him in.  After getting a sample taste, he eagerly accepts the rest.";
	say "     Once finished his drink, the gryphon sniffs the air around you.  Catching the scent of your aroused manhood, he nuzzles at your crotch.  His erection, which had been waning after his loss, returns in force.  Giving him some head scritches, you smile at how eager the cum-filled milk is making him.  He's soon wiggling his rear with his tail raised, ready and eager to be mounted, which is exactly what you want.";
	attempttowait;
	say "     Moving around behind the creature, you smear your fingers with the remaining creamy milk in the bottle and press them into his tight pucker.  The increasingly lustful gryphon gives a moaning call of delight and pushes back onto your digits.  You wriggle them around in his asshole, getting him lubed up and all the more aroused.  The sight of this powerful mythological beast grinding back onto your slick fingers like a butt-slut makes you all the harder.";
	say "     Rather than wait any longer, you get you erection lined up and swap your fingers for it in the slick embrace of the gryphon's ass.  It is hot and tight, squeezing firmly around the welcome intruder [if cock length of player > 40]forcing it open incredibly wide[otherwise if cock length of player > 20]forcing it open much wider[otherwise]now buried inside it[end if].  You lustfully fuck the feral creature, pounding away at the hybrid's [if cock length of player > 20]overstuffed [end if]ass with considerable zeal, much to his delight.  The gryphon is clearly enjoying his newfound lust for gay sex, riding back on your cock as you fuck him.";
	attempttowait;
	say "     As you pound into him, you reach around to take hold of his throbbing manhood.  At this point, it's rock hard and dribbling precum steadily.  Running your fingers along it, you can feel its leonine form, but further enhanced with a swollen knot just above its fuzzy sheath.  Stroking its erection causes the gryphon to coo softly in pleasure and makes his penis throb in your hand.  The foot-long cock pulses between your fingers and the lustful gay gryphon cries out in orgasmic release.  Hot blasts of his sticky load splatter onto the ground in a growing puddle of musky white goo.";
	say "     Feeling his asshole squeezing and milking around you as he climaxes has you groan and pound him all the harder.  You make several powerful thrusts into his rear before finally crying out in lustful release.  Your balls empty their [cum load size of player] load into the gryphon's bowels, painting them with your semen.  Feeling your semen inside him, his shaft throbs in your grip and his waning orgasm surges with a few final large blasts as the beast pants heavily.  Only once you're fully drained do you withdraw from that well-fucked hole, smiling at the [if cock width of player > 20]gooey mess[otherwise if cock width of player > 10]gooey flow[otherwise]slick dribble[end if] of white that leaks out of it.  The gryphon turns around to nuzzle you with a chirping purr and [one of]panting a soft 'Thanks, stud.'  [or]asking 'Is there more?' while licking his beak.  [or]moaning 'So hot!'  [at random]A little shocked to hear the creature speak, you direct it to Qytat and Garrett for more hot gryphon stud action before it departs in that direction.";

to say feralgryph_milk02:
	decrease carried of gryphon cum by 1;
	increase fgryphon_TFcount by 1;
	now lastfgryphon_TF is turns;
	increase xp of Garrett by 1;
	let gryphtype be 0;
	if bodyname of player is "Feral Gryphon" or facename of player is "Feral Gryphon":
		now gryphtype is 2;
	otherwise if bodyname of player is "Hermaphrodite Gryphon" or facename of player is "Hermaphrodite Gryphon":
		now gryphtype is 1;
	say "     The feral gryphon, though weakened, remains aggressive and eyes you with its eagle stare.  Bringing out the bottle of milk you have, you pop the top[if gryphtype > 0].  Its musky gryphon scent is enticing and you have to resist drinking it before you can even offer it to the creature[otherwise if cocks of player > 0].  Its musky scent is enticing, making you hard[end if].  He is suspicious at first, but the alluring scent of gryphon sex draws him in.  After getting a sample taste, he eagerly accepts the rest.";
	say "     Once finished his drink, the gryphon [if cocks of player > 0]sniffs the air around you.  Catching the scent of your aroused manhood, he nuzzles at your crotch[otherwise]seems more relaxed and nuzzles against your rear[end if].  His erection, which had been waning after his loss, returns in force.  Giving him some head scritches, you smile at how eager the cum-filled milk is making him.  Feeling eager as well, you toss aside your gear and get onto all fours, offering up your ass to him.";
	attempttowait;
	say "     As an added incentive, you pour the last dregs of the he-gryphon cum from the bottle onto your pucker and smear it around.  The gryphon licks his beak and presses it between your cheeks.  His tongue wriggles between them to get at that tasty white cream, slathering your asshole with licks that get you moaning[if anallevel is 3].  After taking several deep licks into your back door[otherwise].  After a few sloppy licks[end if], he moves his head back before climbing atop you and driving his foot-long cock into your readied ass.  His pointed, feline shaft sinks into you with a firm, steady thrust that only ends when his knot bumps against your stretched anal ring.  And when he pulls back, shivers run through you as the feline barbs on his shaft stimulate your sensitive passage.";
	if player is mpreg_able:
		say "     The gryphon's barbs are particularly effective at arousing you.  An unusual warmth forms in your [if cunts of player > 0]anally-connected[otherwise]hidden[end if] womb and you find yourself clenching down onto his cock and pushing back into his thrusts.  Thoughts of your belly swelling with the male's hot load turn unbidden to thoughts of being swollen with his clutch.  You moan as you imagine laying the eggs, stretching you as you push them out one by one.";
	say "     He breeds you roughly, his cock pistoning in and out of your back passage with an animalistic zeal[if cocks of player > 0].  You can feel your own [cock of player] cock[smn] throbbing in response to the battering your prostate is receiving.  It dribbles precum over the ground as the gryphon's huge ball-sack smacks against your own on each thrust[end if].  The gryphon isn't rough with you, giving you soft nips and nuzzles on the shoulders as it pounds into you lustfully.  Each push presses the swollen bulge of the gryphon's knot against your pucker, adding to the myriad wonderful sensations the feral ass-fucking brings you.";
	attempttowait;
	if scalevalue of player < 3 and player is not twistcapped:
		say "     He grinds it against your [if cunts of player > 0]cunt-lips[otherwise]anus[end if], but isn't able to fit it in.  He settles for pounding your depths with the rest of his length, before finally pressing his cock deep within you, his knot sitting just outside your straining entrance.";
	otherwise:
		say "     He grinds it against you with each thrust, and you can feel your entrance stretch open a little further each time under the incessant pressure.  On one particularly firm thrust, the knot reaches its widest point, spreading your asshole that last little bit needed; on the next, it pops into you fully.  The sudden surge of fullness this brings causes you to moan and your back door to squeeze back tightly around the base of the knot, tying the two of you together to finish your hot gay rut.";
	say "     He screeches in lustful release as you feel his cock twitch and the first hot rope of gryphon-cum splash inside you[if cocks of player > 0]. You reach your own climax, your [cock size desc of player] cock[smn] shooting your own cum over the ground[end if].  The gryphon comes for what feels like minutes; by the time he's finished, his seed is drooling from you, squelching around his softening cock.  He dismounts you once his knot's gone down so it can pop out with a wet, slurping sound as a gush of gryphon cum follows it out your well-fucked hole.  The gryphon turns around to nuzzle you with a chirping purr and [one of]panting a soft 'Thanks.'  [or]asking 'Is there more?' while licking his beak.  [or]moaning 'So hot!'  [at random]A little shocked to hear the creature speak, you direct it to Qytat and Garrett for more hot gryphon stud action before it departs in that direction.[mimpregchance]";
	

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Feral Gryphon";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The gryphon slashes at you with a sharp talon![or]The gryphon pecks you relentlessly![or]The gryphon batters you with its wings![or]The gryphon gives a shrill screech![at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beattheGryphon]";				[ Text when monster loses.  Change 'Gryphon' as above. ]
	now victory entry is "[losetoGryphon]";					[ Text when monster wins.  Change 'Gryphon' as above. ]
	now desc entry is "[Gryphondesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "the visage of a majestic eagle, feathered and beaked";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a lion, fully quadrupedal, with powerful muscles rippling under your skin that speak to your predatory nature";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "golden-furred and feathered";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a long, leonine tail hanging over your rear.";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "[one of]knotted[or]leonine[or]tapered[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "it pushes outwards, hardening into a predatory beak. Your ears retreat into your body, becoming simple openings as your head becomes that of an eagle";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "it twists and shifts into your new leonine form, bones cracking as they reform into a quadrupedal stance";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "golden lion fur covers your body, while avian feathers sprout from your head and neck";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "A golden lion tail sprouts from above your ass";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes tapered, with a slight bulge appearing at the base of it. Your cockhead feels strange as it grows barbs, giving it a rough texture";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 24;           [ These are now the creature's stats... ]
	now dex entry is 18;           [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20;           [ These values may be used as part of alternate combat.]
	now per entry is 18;
	now int entry is 14;
	now cha entry is 12;
	now sex entry is "Male";           [ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 90;                [ The monster's starting hit points. ]
	now lev entry is 10;               [ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 13;              [ Monster's average damage when attacking. ]
	now area entry is "Museum";        [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;              [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;       [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 8;         [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;            [ Number of breasts the infection will give a player. ]
	now breast size entry is 0;        [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;              [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;        [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;         [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 40;            [ Target libido the infection will rise towards. ]
	now loot entry is "";              [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;         [ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]leonine[or]strong[or]predatory[or]powerful[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "hybrid";        [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;          [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;      [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;     [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";  [ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Endings

when play ends:
	if bodyname of player is "Feral Gryphon":
		if humanity of player is less than 10:
			if player is pure and hp of Garrett >= 7 and cocks of player > 0 and cunts of player is 0:
				say "     As you succumb to your gryphon infection, you can feel your mind descending to bestial urges.  Before you completely lose yourself, you make your way back to Qytat and Garrett's milking operation.  The milkman greets you happily and makes a special place for you among his prized milkers.  The doses of processed he-gryphon milk you receive do help keep more of your intellect intact even as they fuel your gay lusts and gryphon desires.";
				say "     Garrett keeps you apprised of his success in arranging a deal with the military, as the two of you had planned.  With his gryphon milkmen providing reconnaissance on the city, they in turn are left unharassed by the incoming soldiers.  This leaves them free to continue to spread the male milk to others, further bolstering your numbers.  To the soldiers just trying to get out of the city, one gryphon in a milk company hat is the same as another, so the swelling numbers go unremarked.  And if the occasional stray squaddie gets snatched up for the milking facility - well, who's going to miss one here or there?";
				say "     As for yourself, you are quite happy with your position managing the milking facility.  There, you are able to spend your time with the other sexy male gryphons, both anthro and feral, being used to produce the potent cream.  In the early days, your semen is collected multiple times a day by sexy assistants eager for the task.  Later on, once the commercial product is released on the market, milking machines are obtained to further increase production - though everyone gets plenty of [']hands-on['] assistance as well.";
				say "     While the commercial product has to be rendered non-infectious first with a quick microwaving, some full-potency bottles are occasionally slipped out to special clients.  This often results in a new client for the product or in a new recruit being brought to the milking facility.  You take particular pleasure in seeing to the training of these new recruits on their role as semen-producing milkers.  It usually doesn't take long for these recruits to accept their new role in life and even the more obstinate ones only requiring a few disciplinary fucks and extra rations of the unprocessed he-gryphon milk to bring about a change of heart.";
				if gryphoness is tamed and xp of Timothy > 2:
					say "     With you stabled and working in the milking facility, you have no interest in Denise anymore.  For a while, you are pestered by visits from her, but those soon stop.  You hear from others that she's been taken as a pet by Timothy's mistress and turned into another breeder pet by her.  The news doesn't affect you, your life focused on milking facility in which you live almost constantly now.  There's plenty enough for you with being milked, monitoring the other milkers, seeing to the training of new recruits and fucking or being fucked by any cute milker who happens to catch your eye.";
				otherwise if gryphoness is tamed:
					say "     With you stabled and working in the milking facility, you have no interest in Denise anymore.  For a while, you are pestered by visits from her, but those eventually stop.  When you think to ask, you hear from others that she'd been taken as a breeder pet by one of the returning herm gryphons.  The news doesn't affect you, your life focused on milking facility in which you live almost constantly now.  There's plenty enough for you with being milked, monitoring the other milkers, seeing to the training of new recruits and fucking or being fucked by any cute milker who happens to catch your eye.";
			otherwise if level of Timothy > 2 and player is pure and (cocks of player > 0 or cunts of player > 0):
				say "     You succumb to your gryphon infection, your mind descending to bestial urges, though some cunning intelligence remains.  You strike out into the city in search of a mate and your mind recalls fragmented images of [if cocks of player > 0]a breeder[otherwise]another[end if] gryphon you'd encountered once in a past life.  Thoughts of her[if cocks of player is 0] and her words[end if] draw you back to her as you take to the air.  You soar to the hidden floating city and return to Timothy's nesting spot.";
				if cocks of player > 0:
					say "     There you find your intended mate about to be mounted by another while others watch.  You swoop in with a shriek to confront Timothy's mistress.  And while she is skilled, she cannot stand up to your feral might and victory is yours after a brief battle.  The others join in to defend their aerie, but you are able to snatch up the egg-laden breeder and fly off with her.  They give chase briefly, more to ensure you've been driven off to protect their own breeders than to recover a single one.";
					say "     You choose an abandoned apartment as your roost, turning the bed and sheets into a nest for your breeding slut.  She seems upset at first to be taken from her mistress, but all it takes is a few fuckings for her to forget and become yours instead";
					if gryphoness is tamed:
						say ".  Having her and Denise as your gryphon breeders, you sire many clutches of eggs.  They are affectionate with each other and willingly share you, your wild desires more than enough for both herms.  Their eggs hatch and grow into feral gryphons like yourself and spread out across the city and surrounding areas.";
					otherwise:
						say ".  You sire several clutches of eggs in your gryphon breeder.  These hatch and grow into feral gryphons like yourself and spread out across the city and surrounding areas.";
				otherwise:
					say "     There you find the gryphon breeder about to be mounted by another while others watch.  You swoop in with a needy cry, landing beside the nest, presenting yourself to the bystanders.  They are nervous to approach you at first, but one brave stud comes forth when you and Timothy exchange a beak kiss while she's getting fucked by her mistress.  The stud lays claim to you with his cock, fucking you hard and deep, just like you need it.  You're then shared among several of the others, though it is first of them who leads you off into a blue stone building to be stabled.";
					if gryphoness is tamed:
						say "     You are parted from Denise at this time, as she's been claimed by Timothy's mistress as another breeder of her own.  You see her from time to time, your animal mind only recognizing her as someone who's particularly nice and affectionate to you.  She and her nest-mate always seem quite happy, being perpetually full of eggs, as is the role of the breeders.";
					say "     Your stud mistress becomes your lover owner and rider, training you to be her mount as well as a breeder.  You lay many a clutch of tame gryphon beasts, which are then trained as mounts as well.  They take to it readily, in part because the training involves getting fucked by their riders often.  Soon, there are gryphon mounts for all anthro gryphon studs living here.  And while they can fly, having mounts allows them to fly farther afield and confront larger threats, ensuring that these gryphon-riding gryphons will claim many more breeder sluts and spread their numbers across the area and beyond.";
			otherwise:
				say "     You succumb to your gryphon infection, roaming the streets and hunting prey to sate both your hunger and your lusts. You establish a nest at the top of an abandoned apartment building, adorning it with shiny baubles in hopes of attracting a mate.";
				if cocks of player > 0 and "MPreg" is not listed in the feats of the player:
					say "     Much to your surprise, you come across a beautiful female gryphon while out hunting one day.  Luring her back to your nest with a fresh kill, you begin your courtship ritual; it concludes with you mounted on top of her, filling her cunt with your thick knot and her eager womb with your seed.  You cuddle with your new mate in your nest, looking forward to seeing her lay your clutch... Then putting another in her.";
					if gryphoness is tamed:
						say "     Your female mate is somewhat perturbed at first that you're also keeping another gryphoness as your pet and mate.  At first, she bullies the smaller Denise, but she eventually comes to accept the anthro gryphon as a nest-mate when she sees how lovingly she cares for the eggs you sire.  While she can't produce as large of clutches as your mate does, Denise still ends up carrying your eggs in her womb.  And while the anthro herm shows no interest in mounting your mate, she does enjoy the blow jobs she receives from her while for waiting her turn to be mounted.";
				otherwise if cunts of player > 0:
					say "     Much to your surprise, you come across a handsome male gryphon while out hunting one day.  Luring him back to your nest with a fresh kill, you begin your courtship ritual; it concludes with him on top of you, filling your cunt with thick gryphon knot and your womb with warm seed.  You cuddle with your new mate in your nest, looking forward to laying your clutch of eggs... Then getting filled with another.";
					if gryphoness is tamed:
						say "     After you've had your turn and your mate's recovered enough, he turns his attention to the smaller gryphoness who's accompanied you.  Faced with the big, feral stud before her, Denise cannot control her needs for long and is soon on all fours beneath your mate, getting fucked as you were.  She becomes a plaything and pet for your mate as well as the caretaker for his eggs.  And while she can't produce as large of clutches as you do, she still ends up carrying his eggs in her as well.";
				otherwise if "MPreg" is listed in the feats of the player:
					say "     Much to your surprise, you come across a handsome male gryphon while out hunting one day. It takes some convincing, but with some fresh meat and a display of your tight, fertile tailhole you're able to lure him back to your nest; where you begin a very awkward courtship ritual. It concludes with him on top of you, filling your ass with thick gryphon knot and your egg chamber with warm seed. You cuddle with your new mate in your nest, looking forward to laying your clutch of eggs... Then getting filled with another.";
					if gryphoness is tamed:
						say "     After you've had your turn and your mate's recovered enough, he finds an additional prize waiting from him in your nest and turns his attention to the smaller gryphoness who's accompanied you.  Faced with the big, feral stud before her, Denise cannot control her needs for long and is soon on all fours beneath your mate, getting fucked as you were.  She becomes a plaything and pet for your mate as well as the caretaker for his eggs.  And while she can't produce as large of clutches as you do, she still ends up carrying his eggs in her as well.";
		otherwise:
			if player is pure and hp of Garrett >= 7 and cocks of player > 0 and cunts of player is 0:
				say "     When the military finds you, they aren't sure what to do with a seemingly intelligent feral gryphon.  You're held in a facility for a while, where scientists poke and test you for some time, even taking humiliating samples of 'genetic material' a few times.  You put up with their ministrations for now; luckily, they deem you noninfectious before you lose your patience.  They offer to release you into a nature preserve, but you have other plans and turn them down.";
				say "     At first, you have some difficulty making a life for yourself given your altered form, but you only need to hold out for a few months.  Once things settle down, you make contact with Garrett and move ahead with the plans you've made together.  Having expanded his milking operation and built up a stockpile, he's finally ready to go to market.  Your part in this is to act as the impressive (and exotically sexy) spokesman for the product.  Ads are run, public appearances are made, private parties (orgies) are put on - all to promote the exotic and erotic new drink.";
				say "     Of course, the commercial product has to be rendered non-infectious first with a quick microwaving.  And while your it isn't infectious, it does make for a fine erotic stimulant, fuelling male-on-male lusts, ensuring you'll always have a steady pool of clients in this new, sex-centric world.  You can always count on new clients coming when an existing one convinces, tempts or tricks a friend into sampling some for a hot gay romp.";
				if gryphoness is tamed:
					say "     Denise, surprisingly, becomes quite eager at spreading your product around as well.  Being busy with the company (and its many hot gryphon studs), you can't always provide her with the attention she desires.  While never taking it herself, she provides an untreated sample to many a would-be suitor.  And while the milk does promote homosexual desires, she's found that if she gets to their cock soon enough, they'll end up bi- and more than willing to provide the hearty banging she desires.  Often you get a new client and Denise gets a new playmate to keep her company.";
				say "     And then there's the contraband bottles of unmicrowaved milk - still active with nanites and thus infectious - that get snuck out of the facility.  These are provided to preferred clients or used by yourself as a means to turn some cute male or obstructive functionary into a horny gryphon man-slut.  Many of your best clients and new studs for the milking facility are made in this manner.  Bringing a few of these to the private parties some of your best clients throw always makes for great fun.  It's always a highlight to see a half-hearted guest turn into a lustful gay gryphon eager to be showered with attention at these events.";
			otherwise:
				say "     When the military finds you, they aren't sure what to do with a seemingly intelligent feral gryphon.  You're held in a facility for a while, where scientists poke and test you for some time, even taking humiliating samples of 'genetic material' a few times.  You put up with their ministrations for now; luckily, they deem you noninfectious before you lose your patience.  You are fitted with a tracking bracelet and released into a nature preserve with other gryphons, with whom you form a healthy colony[if gryphoness is tamed].  Settling down with Denise as your life-mate[otherwise].  Settling down with a life-mate[end if], you spend of your time making little gryphlets and playing with enterprising hikers.";

Feral Gryphon ends here.
