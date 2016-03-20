Version 1 of Bobcat For FS by Stripes begins here.

[ Version 1.0 - Basic critter w/win and loss scenes ]
"Adds a living feline sextoy Bobcat creature to Flexible Survival's Wandering Monsters table."

Section 0 - Monster Variables, Flags and Markers

when play begins:
	add { "Bobcat" } to infections of guy;
	add { "Bobcat" } to infections of furry;
	add { "Bobcat" } to infections of Tailweapon;		[usable for Tail Strike feat]
	add { "Bobcat" } to infections of Felinelist;		[list of feline infections]
	add { "Bobcat" } to infections of Latexlist;		[list of latex/rubber/PVC skin infections]
	add { "Bobcat" } to infections of Internallist;		[list of infections w/internal male genitals]


Section 1 - Monster Description

to say bobcatdesc:
	setmongender 3;		[creature is male]
	say "     You hear an odd sound coming from nearby, kind of a low buzzing rumble.  Looking around warily, you soon spot its source - a strange creature that is now approaching you.  The thing is feline in shape, but coated in a layer of light brown latex with speckled markings.  The five-and-a-half foot tall creature has limbs with seams and joints that slide over one another, yet it moves in a smooth manner.  Between its legs is a very dildo-like erection that buzzes softly, mixing with the living sextoy kitty's purring motor to make the sound you heard.  On its back are a pair of rubber-padded handles, likely for use when enjoying its shapely bubble-butt.";
	say "     The living sex toy's head is reminiscent of a bobcat's, but with several features that catch your eye.  Like the rest of him, the cheekruffs and ears are also cast in latex, with the former shaped for comfortable gripping while one is using its suggestively rounded open muzzle.  Meanwhile, the kitty toy's ears are pointed and hold metal grills inside them over what must be audio receptors.  Its eyes are plastic shells like one would find on plush toys with cat-slit pupils painted on, though they do look around and blink as normal.";
	say "     '[one of]I come with variable speed settings to meet your every need,' it states[or]Do you need relief?  Scanning[if libido of player > 75].  Relief required[otherwise if libido of player > 25].  Relief recommended[otherwise].  Relief unnecessary.  Administering regardless[end if],' it announces[or]My batteries are fully charged.  Increase power,' it states[or]Subject located.  Beginning arousal protocol,' it announces[at random].  The creature moves its paw-like hands to its nipples and turns them like knobs, adjusting the speed and intensity of its buzzing dildo cock.  And while the living sextoy has no visible balls, lubricated precum starts to dribble from its tip in preparation of fulfilling your needs, whether you want it to or not.";


Section 2 - Monster Victory

to say losetobobcat:
	say "     [if hp of player > 0]Rather than keep fighting, you allow the latex-covered feline to push you to the ground beneath it[otherwise]Unable to keep fighting, the latex-covered feline manages to push you to the ground beneath it[end if].  It's motor gives a happy, purr-like rumble as it runs its smoothly padded paws over your body.  After shedding your gear, it looks you over one last time before ";
	if cunts of player > 0 and ( anallevel is not 3 or a random chance of 3 in 4 succeeds ):
		say "getting you on your back and moving atop you.  The vibrating dildo at its crotch slides across your pussy, the sensation getting you wet[if hp of player <= 0] despite yourself[end if] and a small moan escapes your lips.";
		say "     Your moan only grows louder as the bobcat pushes that rumbling shaft into your cunt.  Your hips raise up and tremble a little at the delight his manhood gives[if cunt length of player > 15] despite its comparatively small size[end if][if hp of player > 0].  You grab onto the sexbot's hips, urging to fuck you, which it readily responds by doing[otherwise].  You try to push the sexbot's hips away, but it has no trouble continuing in its task to fuck you[end if].  As the sextoy creature picks up the pace and intensifies its vibrator functions, your [if hp of player > 0]attempts to think are[otherwise]desire to resist is[end if] driven from your mind as the delight the sex toy provides overwhelms you.";
		attempttowait;
		say "     The sextoy creature seems like an ideal lover, adjusting the pace, depth and strength of its thrusts to suit your needs through a long and eventually satisfying lovemaking session.  It also tweaks the speed and intensity of its rumbling dildo often, raising or lowering them as needed to provide you with the most delight and to build you up to a powerful orgasm.  And when you do climax, it is a powerful one that has you crying out while your hips grind up onto that thrusting vibe.  Only when you cum does it trigger its own, pumping a hot rush of latex semen into your quivering cunt.  And once you're sated, the creature quietly pulls out and sanitizes itself while you bask in the blissful haze of the afterglow.[fimpregchance]";
	otherwise:
		say "moving you onto all fours and getting behind you.  The vibrating dildo at his crotch slides between your cheeks as the more lube leaks from its tip.  Knowing [if hp of player > 0]what's desired of you, you[otherwise]what's coming, you reluctantly[end if] raise your hips further.";
		say "     The bobcat starts slowly, easing its rumbling shaft into your tight asshole.  The lube and the vibration certainly help, but the sextoy creature seems to know just how much to move and when.  The process is largely a pleasant one as your body rapidly adjusts to the intruder.  As it goes on, it starts to feel better and better, your body responding to getting butt-fucked with increasing arousal[if hp of player <= 0] despite your attempts to resist at first[end if].  Soon you're moaning and panting as the sexbot's latex cock buggers your increasingly needy ass.  As the bobcat picks up the pace and intensifies its vibrator functions, your [if hp of player > 0]attempts to think are[otherwise]desire to resist is[end if] driven from your mind as the delight this walking sex toy provides overwhelms you.";
		attempttowait;
		say "     The sextoy creature seems like an ideal lover, adjusting the pace, depth and strength of its thrusts to suit your needs through a long and eventually satisfying ass-fucking session.  It also tweaks the speed and intensity of its rumbling dildo often, raising or lowering them as needed to provide you with the most delight and to build you up to a powerful orgasm.  And when you do climax, it is a powerful one that has you crying out while you push your ass back onto that thrusting vibe.  Only when you cum does it trigger its own, pumping a hot rush of latex semen into your clenching asshole.  And once you're sated, the creature quietly pulls out and sanitizes itself while you bask in the blissful haze of the afterglow.[mimpregchance]";


Section 3 - Player Victory

to say beatthebobcat:
	say "     With only a few blows, you're able to defeat the strange creature.  It stumbles back and drops to the ground.  It doesn't seem particularly injured, but relents and offers its body to you[if libido of player > 66].  Feeling very aroused, the opportunity to sate your urges is quite strong[otherwise if libido of player > 33].  Feeling pretty aroused, [otherwise].  While not feeling particularly aroused, the opportunity is there should you want to take it[end if].  Shall you make use of this living sextoy for some quick relief?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck its ass";
		now sortorder entry is 1;
		now description entry is "screw its padded sphincter";
		choose a blank row in table of fucking options;
		now title entry is "Blow job";
		now sortorder entry is 2;
		now description entry is "use its cock-sucking muzzle";
	choose a blank row in table of fucking options;
	now title entry is "Ride it";
	now sortorder entry is 3;
	now description entry is "ride its vibrating dick";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link][0] - Let it go[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "Shall you [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fuck its ass":
					say "[bobcat_pvsex01]";
[				otherwise if nam is "Blow job":
					say "[bobcat_pvsex02]";	]
				otherwise if nam is "Ride it":
					say "[bobcat_pvsex03]";
		otherwise if calcnumber is 0:
			say "***let it go.";
			now sextablerun is 1;
		otherwise:
			say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";

to say bobcat_pvsex01:
	say "     Grabbing the feline sextoy by its back handles, you push it down onto all fours.  It accepts this demand without further struggle, raising its padded ass and offering you its latex fuckhole.  You line yourself up and thrust into that yielding hole[if cock length of player > 24]; it smoothly stretches to accept your [cock size desc of player] shaft[end if].  It grips and squeezes around your [cock of player] cock, lightly milking at it.  There's also a soft echo from the its rumbling dildo cock to add to your stimulation.";
	say "     You thrust into the pleasure-bot, pounding that deliciously squeezing hole of its.  With your hands on those handles on its back, it's easy and comfortable for you to fuck the latex feline.  This creature was obviously made for fucking and you feel no shame for using it; it's clearly loving it, too.  And that soft, rumbling purr of its motor and vibe-dick make it all the better.";
	attempttowait;
	say "     With such a fine hole to fuck, you hold out as long as you can, but eventually can't take any more and drive deep into the bobcat's ass.  You groan as you cum hard, firing shot after shot of hot semen into it.  You empty your balls, draining your [cum load size of player] load into the rumbling sextoy's quivering, squeezing, milking, hungry hole[if cock width of player > 20].  Your excessive seed causes the latex feline's belly to stretch and bulge from your load, much to its delight[end if].  After you pull out, it gets up and happily walks off, a trickle of your cum leaking down its brown, spotted thigh.";

to say bobcat_pvsex02:
	say "***";

to say bobcat_pvsex03:
	say "     You roll the defeated feline onto its back and straddle the latex creature.  It makes no attempt to oppose you, moving as your hands direct it.  With its vibrating dildo cock pointed upwards, you line yourself up and let it tease your waiting hole[run paragraph on]";
	if cunts of player > 0:
		say ".  The soft buzz against your wet petals and clit have you moan and excite you all the more.  You ease yourself down slowly, letting the rumbling shaft slide into your welcoming cunny.";
		say "     You bounce yourself on the feline sextoy's pole, enjoying the warm pleasure it spreads through your entire crotch thanks to its vibrations.  As you settle into a good rhythm, your hands slide over its smooth latex chest.  Brushing over its nipples turns them slightly, changing the speed and tempo.  You moan in surprise and soon you're tweaking the nip-like knobs this way and that.  You adjust the settings up and down as you desire while adjusting your position to suit your shifting needs for stimulation.";
		attempttowait;
		say "     Being in control, you're able to take as much time as you feel you can safely spare, drawing out your enjoyment of the pleasure-bot.  Eventually though, you're bouncing on its pole hard and fast while revving the speed and intensity of the vibe up and down quickly as you push yourself to a powerful climax.  You wriggle your hips as you ride it, making sure you get that delicious buzz right on your g-spot.  Your hot juices soak the sextoy's shaft and crotch as you cry out in orgasmic release[if cocks of player > 0]and fire thick volleys of cum across the latex feline's body[end if].  Only when you cum does it trigger the bobcat's own release, its motor rumbling and purring loudly as several spurts of latex semen into your quivering cunt.  You ease the vibrators controls down as you ride out the last moments of your orgasm and the warm bliss of the afterglow of your powerful orgasm sets in.  You flop onto the ground beside the sexbot, which sanitizes itself and departs quietly now that its role is complete.[fimpregchance]";
	otherwise:
		say ".  The soft buzz against your crinkled hole excites you all the more even as it helps your anus relax.  There comes a spurt of lubricating fluid as ease yourself down slowly, gliding the rumbling shaft into your spreading ring.";
		say "     You slide yourself up and down on the feline sextoy's pole slowly, enjoying the warm pleasure it spreads through your entire crotch thanks to its vibrations.  Over time, you adjust and pick up the pace, soon settling into a good rhythm.  As you do, your hands slide over its smooth latex chest and brush over its nipples.  Turning them slightly causes a change in the speed and tempo of the vibrations, sending a shiver of delight through your ass[if cocks of player > 0] and upon your prostate[end if].  You moan in surprise and soon you're tweaking the nip-like knobs this way and that.  You adjust the settings up and down as you desire while adjusting your position to suit your shifting needs for stimulation.";
		attempttowait;
		say "     Being in control, you're able to take as much time as you feel you can safely spare, drawing out your enjoyment of the pleasure-bot.  Eventually though, you're bouncing on its pole hard and fast while revving the speed and intensity of the vibe up and down quickly as you push yourself to a powerful climax[if cocks of player > 0].  You grind down hard every time you lower yourself down to feel that intense buzz against your prostate[end if].  Your asshole clenches hard around the sextoy's shaft as you cry out in orgasmic release[if cocks of player > 0].  You fire thick volleys of cum across the latex feline's body[end if].  Only when you cum does it trigger the bobcat's own release, its motor rumbling and purring loudly as several spurts of latex semen into your squeezing rear.  You ease the vibrators controls down as you ride out the last moments of your orgasm and the warm bliss of the afterglow of your powerful orgasm sets in.  You flop onto the ground beside the sexbot, which sanitizes itself and departs quietly now that its role is complete.[mimpregchance]";

Section 4 - Monster Stats and Infection Data

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Bobcat";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The bobcat[or]The feline sextoy[or]The dildonic kitty[or]The kitty sexbot[or]It[as decreasingly likely outcomes] [one of]ends up grinding its vibrating cock against you as it tries to restrain you.[or]strikes you with mechanically-enhanced strength![or]tosses you to the ground in an attempt to pin you beneath it![or]puts on a tantalizing display while showing off [if cocks of player > 0 and a random chance of 1 in 3 succeeds]its molded, cocksucking muzzle[otherwise if cocks of player > 0 and a random chance of 1 in 3 succeeds]its cock-ready back door[otherwise if a random chance of 1 in 2 succeeds]some tricks with its vibro-dick[otherwise]the variable speed settings for its dildo-cock[end if][or]pounces at you, trying to bear you down with remarkable strength for such a little guy.[at random]";
	now defeated entry is "[beatthebobcat]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetobobcat]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[bobcatdesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "altered to have the muzzle, ears and cheekruffs of a bobcat[if skinname of player is listed in infections of latexlist].  The latter are formed of latex and are shaped for comfortable gripping when someone is holding your head[end if].  Unless talking or consciously trying to hold it shut, your muzzle is normally open in a rounded shape.  Your tongue and the inside of your mouth are firm yet pliant[if skinname of player is listed in infections of LatexList] latex[end if] and lightly textured, making your mouth enjoyably suitable for providing blow jobs";
	now body entry is "altered inside and out.  You're now only about five and a half feet tall and have a decidedly feline build with paws instead of hands and feet.  But the greater changes are the internal ones, with your insides feeling more like they're artificial and now made of latex and mechanical parts rather than living flesh.  Rather than having a normal heartbeat, your heart sounds more like a motor softly purring away.  Upon your back at the shoulders, you have a set of handle loops made of padded rubber, perfect for holding onto you from behind";
	now skin entry is "a layer of spotted brown latex that has replaced your";
	now tail entry is "You have a short, stubby tail make of semi-firm latex at the base of your spine.  Under this tail, you've got a bubble butt with a latex fuckhole between your cheeks.";
	now cock entry is "[one of]latex[or]smooth[or]dildo-like[or]vibrating[or]vibe[as decreasingly likely outcomes]";
	now face change entry is "it becomes decidedly feline in form.  As your head turns into that of a bobcat, you gain pointed ears and cheek ruffs[if skinname of player is listed in infections of LatexList] made of latex textured for comfortable gripping[end if].  Your tongue and the inside of your mouth feel funny as they become lightly textured and your muzzle opens in a rounded, welcoming manner.  Your sense of hearing is momentarily thrown off as your inner ears are replaced with audio receptors behind metal grills";
	now body change entry is "strange alternations occur both inside and out.  Your body changes shape, gaining rounded paws instead of hands and feet.  Your size changes as well, [if scalevalue of player < 3]growing to about five and a half feet tall[otherwise if scalevalue of player is 3]adjusting to about five and a half feet tall[otherwise]shrinking down to about five and a half feet tall[end if].  Your insides shift and change as you become more latex and mechanical parts instead of flesh and bones under your skin.  Everything still seems to work roughly the same, though your heartbeat sounds more like motor softly purring now.  Uncomfortable bumps form at your shoulders, growing larger until they push up into handle loops made of padded rubber";
	now skin change entry is "light brown latex replaces your skin.  You can't help but watch as it spreads until you're left with a smooth coating of it that is lightly speckled with dime-sized darker markings.  Your new skin has seams at your joints that smoothly slide over one another";
	now ass change entry is "short, stubby tail made of latex sticks from the base of your spine.  Your ass gets round, firm and fuckable even as your tailhole alters as well, becoming a snug, padded latex hole that's clearly designed for others to fill";
	now cock change entry is "its flesh alters into smooth latex.  It rumbles briefly like a vibrator before settling down for the moment";
	now str entry is 17;			[ These are now the creature's stats... ]
	now dex entry is 16;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 14;			[ These values may be used as part of alternate combat. ]
	now per entry is 10;
	now int entry is 8;
	now cha entry is 14;
	now sex entry is "nochange";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 32;			[ The monster's starting hit points. ]
	now lev entry is 3;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 7;			[ Monster's average damage when attacking. ]
	now area entry is "Red";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 7;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 5;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 45;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]altered[or]transformed[at random]";
	now type entry is "[one of]feline[or]sextoy[or]bobcat[or]robotic[as decreasingly likely outcomes]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

[
when play ends:
	if bodyname of player is "Bobcat":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		otherwise:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Bobcat For FS ends here.
