Version 2 of Bobcat For FS by Stripes begins here.

[ Version 2.0 - Heat w/random sex scenes ]
"Adds a living feline sextoy Bobcat creature to Flexible Survival's Wandering Monsters table."

Section 0 - Monster Variables, Flags and Markers

when play begins:
	add { "Bobcat" } to infections of guy;
	add { "Bobcat" } to infections of furry;
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
				otherwise if nam is "Blow job":
					say "[bobcat_pvsex02]";
				otherwise if nam is "Ride it":
					say "[bobcat_pvsex03]";
		otherwise if calcnumber is 0:
			say "     The bobcat creature seems disappointed that you don't want to make use of its many features.  It gets up and pads off in search of another potential playmate.";
			now sextablerun is 1;
		otherwise:
			say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";

to say bobcat_pvsex01:
	say "     Grabbing the feline sextoy by its back handles, you push it down onto all fours.  It accepts this demand without further struggle, raising its padded ass and offering you its latex fuckhole.  You line yourself up and thrust into that yielding hole[if cock length of player > 24]; it smoothly stretches to accept your [cock size desc of player] shaft[end if].  It grips and squeezes around your [cock of player] cock, lightly milking at it.  There's also a soft echo from the its rumbling dildo cock to add to your stimulation.";
	say "     You thrust into the pleasure-bot, pounding that deliciously squeezing hole of its.  With your hands on those handles on its back, it's easy and comfortable for you to fuck the latex feline.  This creature was obviously made for fucking and you feel no shame for using it; it's clearly loving it, too.  And that soft, rumbling purr of its motor and vibe-dick make it all the better.";
	attempttowait;
	say "     With such a fine hole to fuck, you hold out as long as you can, but eventually can't take any more and drive deep into the bobcat's ass.  You groan as you cum hard, firing shot after shot of hot semen into it.  You empty your balls, draining your [cum load size of player] load into the rumbling sextoy's quivering, squeezing, milking, hungry hole[if cock width of player > 20].  Your excessive seed causes the latex feline's belly to stretch and bulge from your load, much to its delight[end if].  After you pull out, it gets up and happily walks off, a trickle of your cum leaking down its brown, spotted thigh.";

to say bobcat_pvsex02:
	say "     Taking the feline sextoy by the head, you bring its muzzle to your prick.  It gives a rumbling purr and welcomes your [cock of player] cock into its open and accommodating muzzle[if cock length of player > 30].  Despite your considerable size, the opening stretches steadily as you thrust into it, accepting your [cock size desc of player] shaft even as it stretches out the feline's body to do so[otherwise if cock length of player > 15].  Despite your comparatively large size, the opening stretches steadily as you thrust into it, accepting your impressive shaft[otherwise if cock length of player > 7].  Perhaps given your above-average size, the feline eagerly accepts your impressive shaft into its soft muzzle[otherwise].  Your shaft slides easily into its soft muzzle[end if].  With a hand on either side of the latex kitty's head, your fingers slide comfortable into position.  Your fingers are so perfectly placed upon cheekruffs that are sized and shaped for your digits that you don't even notice how good the fit is - it just seems right.";
	say "     Thus, comfortably gripping the living sextoy's head, you start to thrust and bob the cat's muzzle over your cock.  The latex passage is slick and soft, snug but yielding, providing plenty of delightful stimulation.  There's also a short, but broad and textured tongue in there to further delight you.  Finding the creature's oral fuckhole very enjoyable indeed, you make the most of enjoying it.  This kitty's obviously made to be used and is clearly loving being used, so you have no problem doing so.  The rumble of the creature's excited dildo cock increases as it tweaks its nipples, sending faint sympathetic vibrations through its mouth and throat.";
	attempttowait;
	say "     You work that delightful muzzle back and forth over your [cock of player] shaft, sometimes turning its head a little one way or another to shift the points of greatest stimulation.  And while you'd love to play with this pleasure-bot much longer, you can only hold out so long being subjected to its expertly designed cocksucking muzzle.  As you reach your peak, you pull the bobcat's head forward, driving your full length into it and unleashing your hot, gooey load into the sextoy's [if cock width of player > 20]stretching [end if]belly.  After draining your balls, you push its head away and release the creature to walk off happily, molded paws rubbing its [if cock width of player > 24]overstuffed[otherwise if cock width of player > 12]stuffed[otherwise]well-fed[end if] tummy.";

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
	now libido entry is 65;			[ Target libido the infection will rise towards. ]
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


Section 5 - Heat Table

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Bobcat";
	now heat cycle entry is 4;
	now heat duration entry is 2;
	now trigger text entry is "You feel a quiver in your loins [if cocks of player > 0]as your sextoy cock starts to rumble faintly.  Your cunny clenches and grows increasingly slick, becoming ready for use at any moment as well[otherwise]as your cunny clenches and grows increasingly slick, becoming ready for use at any moment[end if][if player is mpreg_able or anallevel is 3].  Your mouth and asshole also feel... disappointingly empty[otherwise].  Your mouth also feels... disappointingly empty[end if].  You can't help but ponder the wide array of people and creatures you've seen out in the city.  Wouldn't it be fun to go out and find one to play with for a while?";
	now description text entry is "";
	now heat start entry is "[bobcatheatstart]";
	now heat end entry is "[bobcatheatend]";
	now inheat entry is "[bobcatinheat]";
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "You feel a quiver in your loins [if cocks of player > 0]as your sextoy cock starts to rumble faintly.  Your mouth and asshole feel... disappointingly empty[otherwise]as your mouth and asshole feel... disappointingly empty[end if].  You can't help but ponder the wide array of people and creatures you've seen out in the city.  Wouldn't it be fun to go out and find one to play with for a while?";

to say bobcatheatstart:
	if libido of player < 25:
		now libido of player is ( 50 + libido of player ) / 3;
	otherwise:
		increase libido of player by 5;

to say bobcatheatend:
	say "You release a soft mrowl as your heat passes, the empty ache in your [if cunts of player > 0]loins[otherwise]anus[end if] subsiding somewhat and you feel able to hold back your desires for random sex.";
	now libido of player is ( libido of player * 9 ) / 10;
	decrease slutfucked by 2;
	if slutfucked < 0, now slutfucked is 0;
	if slutfucked > 6, now slutfucked is 6;

to say bobcatinheat:
	increase libido of player by 5;
	if libido of player > 99, now libido of player is 99;
	if libido of player > 80 and slutfucked > 8 and ( location of player is not sleepsafe or location of player is fasttravel ):
		say "[line break]     A passerby catches your eye and you approach them before you realize what you're doing.  Soon you're offering yourself up for sex to them, an offer they accept.";
		let randombobcatfun be { 1 };		[blow job]
		if cocks of player > 0 and ( girl is not banned or hermaphrodite is not banned ):
			add { 2 } to randombobcatfun;	[give vag]
			if anallevel > 2, add { 3 } to randombobcatfun;		[give anal]
		if cunts of player > 0:
			add { 4, 4 } to randombobcatfun;	[rec vag]
		if player is mpreg_able:
			add { 5, 5 } to randombobcatfun;	[rec anal]
		otherwise if anallevel > 1:
			add { 5 } to  randombobcatfun;	[rec anal]
		sort randombobcatfun in random order;
		if entry 1 of randombobcatfun is 1, say "[bobcatheatsex1]";
		if entry 1 of randombobcatfun is 2, say "[bobcatheatsex2]";
		if entry 1 of randombobcatfun is 3, say "[bobcatheatsex3]";
		if entry 1 of randombobcatfun is 4, say "[bobcatheatsex4]";
		if entry 1 of randombobcatfun is 5, say "[bobcatheatsex5]";
		now libido of player is 65;
		now slutfucked is slutfucked / 2;
		if slutfucked > 6, now slutfucked is 6;
	otherwise if libido of player > 80:
		increase slutfucked by 1;
		if a random chance of 1 in 3 succeeds:
			say "[line break][one of]You moan softly as you feel a strong, compelling urge to be played with[or]Your orifices feel empty and unused; you're tempted to find someone to satisfy your craving[or]You pant and moan as a wave of need passes through your [if cunts of player > 0 and anallevel > 1]cunny and asshole[otherwise if cunts of player > 0]cunny[otherwise]asshole[end if], making you long for someone to fuck you[or]You feel a rush of heat to your sextoy loins and you long to find someone to use them[or]Thoughts of bending over for the next horny mutant you see become increasingly tempting[purely at random].";


to say bobcatheatsex1:		[blow job]
	say "[randombodypart]";		[yields 'bodyselector' - see Stripes/Mismatched Chimera.i7x]
	setmongender 3;	[male]
	if hermaphrodite is not banned:
		if a random chance of 1 in 5 succeeds, setmongender 5;		[herm]
		if a random chance of 1 in 10 succeeds, setmongender 6;		[shemale]
		if a random chance of 1 in 10 succeeds, setmongender 7;		[maleherm]
	let colourpick be "";		[See Stripes/Andrew.i7x for randomcolourlist]
	if a random chance of 1 in 5 succeeds:
		now colourpick is entry 1 of randomcolourlist;
		rotate randomcolourlist;
	if a random chance of 1 in 10 succeeds, sort randomcolourlist in random order;	[10% chance to re-randomize each time]
	say "     Your lover of the moment is a [if mongender of currentmonster is 3]male[otherwise if mongender of currentmonster is 5]herm[otherwise if mongender of currentmonster is 6]shemale[otherwise if mongender is 7]maleherm[end if] [bodyselector][run paragraph on]";
	if colourpick is not "":
		say " with a [colourpick] coat[run paragraph on]";
	say ".  [gche] decides to have a go at your mouth, sliding his cock past your lips.  You moan softly and start sucking on it happily.  You lick and suck on it as [ghe] grips your head and thrust into your mouth until [ghe] finally cums.  You gulp down shot after shot of the hot semen satisfaction at having pleased the [bodyselector] like the horny plaything you feel yourself to happily be right now.  The sated [if mongender of currentmonster is 3]male[otherwise if mongender of currentmonster is 5]herm[otherwise if mongender of currentmonster is 6]shemale[otherwise if mongender of currentmonster is 7]maleherm[end if] thanks you for the blow job and continues on [ghis] way.";

to say bobcatheatsex2:		[give vaginal]
	say "[randombodypart]";		[yields 'bodyselector' - see Stripes/Mismatched Chimera.i7x]
	if girl is not banned:
		setmongender 4;	[female]
	otherwise:
		setmongender 5;	[herm]
	if hermaphrodite is not banned:
		if a random chance of 1 in 5 succeeds, setmongender 5;		[herm]
		if a random chance of 1 in 10 succeeds, setmongender 7;		[maleherm]
		if a random chance of 1 in 10 succeeds, setmongender 8;		[cuntboy]
	let colourpick be "";		[see Stripes/Andrew.i7x]
	if a random chance of 1 in 5 succeeds:
		now colourpick is entry 1 of randomcolourlist;
		rotate randomcolourlist;
	if a random chance of 1 in 10 succeeds, sort randomcolourlist in random order;	[10% chance to re-randomize each time]
	say "     Your lover of the moment is a [if mongender of currentmonster is 4]female[otherwise if mongender of currentmonster is 5]herm[otherwise if mongender of currentmonster is 7]maleherm[otherwise]cuntboy[end if] [bodyselector][run paragraph on]";
	if colourpick is not "":
		say " with a [colourpick] coat[run paragraph on]";
	say ".  Looking you over, [ghe] decides to enjoy your dildo-like cock.  You end up straddled and ridden by [ghim], your penis vibrating and rumbling like the sextoy it is, much to [ghis] delight.  [gchis] cunt squeezes and quivers around your [cock size desc of player] rod as the [bodyselector] works [ghis] hips up and down.  You're ridden until [ghe] has a long and satisfying orgasm [if currentmonster is cocked]that soaks your crotch and splatters your body with [ghis] semen[otherwise]that leaves your crotch soaked with [ghis] juices[end if].  You cum as well, feeding your hot load to [ghis] hungry cunt as [ghe] rides out [ghis] orgasm before finally pulling off.  You're thanked for the ride and left there to recover, feeling like a well-used sex toy and loving it.";

to say bobcatheatsex3:		[give anal]
	say "[randombodypart]";		[yields 'bodyselector' - see Stripes/Mismatched Chimera.i7x]
	setmongender 3;	[male]
	if girl is not banned and a random chance of 1 in 6 succeeds:
		setmongender 4;	[female]
	otherwise if hermaphrodite is not banned:
		if a random chance of 1 in 5 succeeds, setmongender 6;		[shemale]
		if a random chance of 1 in 12 succeeds, setmongender 5;		[herm]
		if a random chance of 1 in 12 succeeds, setmongender 7;		[maleherm]
		if a random chance of 1 in 12 succeeds, setmongender 8;		[cuntboy]
	let colourpick be "";		[See Stripes/Andrew.i7x]
	if a random chance of 1 in 5 succeeds:
		now colourpick is entry 1 of randomcolourlist;
		rotate randomcolourlist;
	if a random chance of 1 in 10 succeeds, sort randomcolourlist in random order;	[10% chance to re-randomize each time]
	say "     Your lover of the moment is a [if mongender of currentmonster is 3]male[otherwise if mongender of currentmonster is 4]female[otherwise if mongender of currentmonster is 5]herm[otherwise if mongender of currentmonster is 6]shemale[otherwise if mongender of currentmonster is 7]maleherm[otherwise]cuntboy[end if] [bodyselector][run paragraph on]";
	if colourpick is not "":
		say " with a [colourpick] coat[run paragraph on]";
	say ".  Looking you over, [ghe] decides to enjoy your dildo-like cock[if currentmonster is cunted], but opts to take it in the butt rather than in [ghis] cunt[end if].  You end up straddled and ridden by [ghim], your penis vibrating and rumbling like the sextoy it is, much to [ghis] delight.  [gchis] hot, tight asshole clenches and squeezes upon your [cock size desc of player] rod as the [bodyselector] relishes the anal fucking [ghe][']s getting.  You're ridden until [ghe] has a powerful orgasm that has [ghis] back passage clamp down tightly around you while [ghe] [if currentmonster is cocked]splatters your chest with [ghis] semen[otherwise]soaks your crotch with [ghis] hot vaginal juices as they run down [ghis] crotch onto yours[end if].  You cum as well, pumping your hot load into [ghis] well-fucked hole as [ghe] rides out [ghis] orgasm before finally pulling off.  You're thanked for the ride and left there to recover, feeling like a well-used sex toy and loving it.";

to say bobcatheatsex4:		[receive vag]
	say "[randombodypart]";		[yields 'bodyselector' - see Stripes/Mismatched Chimera.i7x]
	setmongender 3;	[male]
	if hermaphrodite is not banned:
		if a random chance of 1 in 5 succeeds, setmongender 5;		[herm]
		if a random chance of 1 in 10 succeeds, setmongender 6;		[shemale]
		if a random chance of 1 in 10 succeeds, setmongender 7;		[maleherm]
	let colourpick be "";		[See Stripes/Andrew.i7x]
	if a random chance of 1 in 5 succeeds:
		now colourpick is entry 1 of randomcolourlist;
		rotate randomcolourlist;
	if a random chance of 1 in 10 succeeds, sort randomcolourlist in random order;	[10% chance to re-randomize each time]
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;
	say "     Your lover of the moment is a [if mongender of currentmonster is 3]male[otherwise if mongender of currentmonster is 5]herm[otherwise if mongender of currentmonster is 6]shemale[otherwise]maleherm[end if] [bodyselector][run paragraph on]";
	if colourpick is not "":
		say " with a [colourpick] coat[run paragraph on]";
	say ".  Intent on your slick cunt, you're moved onto all fours and mounted[run paragraph on]";
	if bodyname of player is "Bobcat":
		say ".  It feels good to gripped by you back handles and pounded by a horny stud[run paragraph on]";
	say ".  The [bodyselector] drills [ghis] cock into you over and over again, stuffing your needy cunny with throbbing meat.  Your hot tunnel squeezes and milks at the thrusting shaft as you strive to please [ghim] with your body.  You're pounded until [ghe] has a strong orgasm, pushing deep into you and unloading shot after shot of hot, gooey seed into your vagina to flow into your heat-stricken womb.  You cum as well, adding to the sticky mess being made as you're seeded by the horny [if mongender of currentmonster is 3]male[otherwise if mongender of currentmonster is 5]herm[otherwise if mongender of currentmonster is 6]shemale[otherwise]maleherm[end if].  Once spent, [ghe] pulls out and wipes [ghis] cock across one cheek while giving the other a light slap, thanking you for the fuck.  The feeling of the stranger's [bodyselector] semen pooled inside you makes you feel so delightfully used.[impregchance]";
	if baby is 0 and gestation of child is not 0:
		now facename of child is "[bodyselector]";
		now bodyname of child is "[bodyselector]";
		now skinname of child is "[bodyselector]";

to say bobcatheatsex5:		[receive anal]
	say "[randombodypart]";		[yields 'bodyselector' - see Stripes/Mismatched Chimera.i7x]
	setmongender 3;	[male]
	if hermaphrodite is not banned:
		if a random chance of 1 in 5 succeeds, setmongender 5;		[herm]
		if a random chance of 1 in 10 succeeds, setmongender 6;		[shemale]
		if a random chance of 1 in 10 succeeds, setmongender 7;		[maleherm]
	let colourpick be "";		[See Stripes/Andrew.i7x]
	if a random chance of 1 in 5 succeeds:
		now colourpick is entry 1 of randomcolourlist;
		rotate randomcolourlist;
	if a random chance of 1 in 10 succeeds, sort randomcolourlist in random order;	[10% chance to re-randomize each time]
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;
	say "     Your lover of the moment is a [if mongender of currentmonster is 3]male[otherwise if mongender of currentmonster is 5]herm[otherwise if mongender of currentmonster is 6]shemale[otherwise]maleherm[end if] [bodyselector][run paragraph on]";
	if colourpick is not "":
		say " with a [colourpick] coat[run paragraph on]";
	say ".  Intent on your sexy ass[if cunts of player > 0] over your heat-stricken cunt[end if], you're moved onto all fours and mounted[run paragraph on]";
	if bodyname of player is "Bobcat":
		say ".  It feels good to gripped by you back handles and pounded by a horny stud[run paragraph on]";
	say ".  The [bodyselector] sinks [ghis] cock into your rectum over and over again, stuffing welcoming ass with throbbing meat.  Your hot tunnel squeezes and clenches around the thrusting shaft as you strive to please [ghim] with your body.  You're pounded until [ghe] has a strong orgasm, pushing deep into you and unloading shot after shot of hot, gooey seed into your bowels.  You cum as well, adding to the sticky mess being made as you're seeded by the horny [if mongender of currentmonster is 3]male[otherwise if mongender of currentmonster is 5]herm[otherwise if mongender of currentmonster is 6]shemale[otherwise]maleherm[end if].  Once spent, [ghe] slides [ghis] sticky shaft from your creamy ass and wipes it across your buttcheeks and thanking you for the fuck.  The feeling of the stranger's [bodyselector] semen pooled inside you makes you feel so delightfully used.[mimpregchance]";
	if baby is 0 and gestation of child is not 0:
		now facename of child is "[bodyselector]";
		now bodyname of child is "[bodyselector]";
		now skinname of child is "[bodyselector]";


Section 6 - Endings

when play ends:
	if bodyname of player is "Bobcat":
		if humanity of player is less than 10:
			say "     After the last vestiges of your humanity fade away, your altered mind comes to a realization - this body of yours is built for sex and pleasure and you should enjoy it.  And let others enjoy it as well.  You wander, a bit aimlessly at first, but end up drifting to the red light district of town.  There you roam, at first offering the services of your body to random creatures to sate their lusts, and then later to the incoming soldiers scouting the city.";
			say "     One of these soldiers finds you particularly enjoyable and is unscrupulous enough to get you smuggled out of the city.  At first, you're his private plaything and kept secretly hidden in his basement.  In time though, you're upgraded to servicing a few of his friends as well.  As morals grow more lax as the world changes around you, you go from being a guilty pleasure to a rare and valued prize that the soldier uses to impress his friends, neighbours and superiors.  This all means little to you though, you're simply happy to have so many eager people willing to use your pleasure-giving body for its intended purpose.";
		otherwise:
			say "     You manage to survive your time in the city, but don't make it out unchanged.  The sextoy nature of your transformation is obvious and a point of your snickering from the soldiers who happen to rescue you.  And while some of the scientists are intrigued by your unusual nature, they are more interested in other cases than yours.  Their report is brief and mainly consists of a few conjectures and a prognosis that you'll likely become a sexual addict, sex worker or sex slave.  That is, provided you don't succumb entirely.";
			if humanity of player > 75 and libido of player < 25 and player is pure:
				say "     Upset by their mentally resigning you to such a fate, you resolve to not give in.  You do your best to find work away from potential temptations, finding a job as part of a re-construction crew.  At least there, your handles can be used to suspend you while working at heights or in tunnels.  And while your coworkers do tease you from time to time, they're a tough lot and they respect your ability to resist your infection's base urges.";
				say "     This does not mean you're not sexually active though.  You enjoy sex greatly and have flings with several of your friends and co-workers, but you always keep it to manageable situations and special occasions.  Giving your boss a hummer at the company Christmas party is as close as you get to spontaneous sex while on the job, for example.  It's tough at times, but you live satisfied knowing you've maintained control and have dealt with your condition on your own terms instead of letting it dictate your future.";
			otherwise:
				say "     Their words end up becoming true, you can only resist your new body's sexual needs for so long before the desire for sex overwhelms your reason.  You make poor decisions ruled by your libido.  You pick jobs based on how attractive the people there are or how much they seem interested in your sexualized body.  You frequent clubs at night and let yourself get picked up by horny partners looking for a quick fuck.  As it gets worse, you even end up a giving blow jobs to some stranger in an alley when he offers you some quick cash after you'd forgotten your [if cunts of player > 0]purse[otherwise]wallet[end if].";
				if player is pure:
					say "     You end up getting picked up by a well-to-do exec during one of these flings.  And while you only expect it to be a one-time fuck at first, you're surprised to find him at your workplace about a week later.  Seeing how you're working at a café where you're known to an increasing number of regulars to give head in the washroom for a big enough tip, he's soon getting some [']special service['] from you after slipping you the biggest tip you've ever gotten.  After a few such visits, he offers to let you move in with him, promising you a life of luxury and sex at his private estate - an offer you readily accept.";
					say "     At your new home, you're a mix of lover, playmate and sextoy for the rich executive.  And while you're not his only plaything there, you are clearly one of his favourites.  While not a slave and free to come and go as you please, the pampered life of living as one of his fucktoys appeals to the new you.  You stay in contact with several of your friends and continue to enjoy their company, but you have little reason to go out otherwise.  There's plenty of sex to be had with your lover's other guests when he's not around.  And when your lover has his business friends over, the fact that you're implicitly expected to help [']entertain['] them never upsets you - if anything, it's another of the many perks of living in your luxurious and hedonistic abode.";
				otherwise:
					say "     A few months after that incident, you're scouted by one of the local sex parlours after giving a recruiter a blow job at the café you work at.  He talks it up while fucking your face, telling you about how much sex you could have and be making better money for it, too.  While you'd normally know it's a bad decision, you're too lost in the pleasure of having a cock in your mouth to think straight.  And with your shift for the night about to end, you leave there for the last time with him.";
					say "     While little seedy place is little more than a brothel, it seems wonderful to you.  All you see is the opportunities for sex and can only think of the wide variety of partners you'll have.  After an job interview that's more an extended orgy with the recruiter, the owner and several other employees, you barely look at the contract presented to you before signing it.  You become little more than another sex slave for the sex parlour, fulfilling the lustful and occasionally deviant desires of their patrons.  And while you still get paid and keep your home, you hardly ever leave.  You work long hours for only a small share of the payments, but you hardly care - your true payment is all the sex you end up receiving.";

Bobcat For FS ends here.
