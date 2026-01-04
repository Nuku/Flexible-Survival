Version 2 of Latex Bobcat by Stripes begins here.

[ Version 2.0 - Heat w/random sex scenes ]
"Adds a living feline sextoy Bobcat creature to Flexible Survival's Wandering Monsters table."

Section 0 - Monster Variables, Flags and Markers

Section 1 - Monster Description

Section 2 - Monster Victory

to say LoseToLatexBobcat:
	say "     [if HP of Player > 0]Rather than keep fighting, you allow the latex-covered feline to push you to the ground beneath it[else]Unable to keep fighting, the latex-covered feline manages to push you to the ground beneath it[end if]. It's motor gives a happy, purr-like rumble as it runs its smoothly padded paws over your body. After shedding your gear, it looks you over one last time before ";
	if Player is female and ( anallevel < 3 or a random chance of 3 in 4 succeeds ):
		say "getting you on your back and moving atop you. The vibrating dildo at its crotch slides across your pussy, the sensation getting you wet[if HP of Player <= 0] despite yourself[end if] and a small moan escapes your lips.";
		say "     Your moan only grows louder as the bobcat pushes that rumbling shaft into your cunt. Your hips raise up and tremble a little at the delight his manhood gives[if Cunt Depth of Player > 15] despite its comparatively small size[end if][if HP of Player > 0]. You grab onto the sexbot's hips, urging to fuck you, which it readily responds by doing[else]. You try to push the sexbot's hips away, but it has no trouble continuing in its task to fuck you[end if]. As the sextoy creature picks up the pace and intensifies its vibrator functions, your [if HP of Player > 0]attempts to think are[else]desire to resist is[end if] driven from your mind as the delight the sex toy provides overwhelms you.";
		WaitLineBreak;
		say "     The sextoy creature seems like an ideal lover, adjusting the pace, depth and strength of its thrusts to suit your needs through a long and eventually satisfying lovemaking session. It also tweaks the speed and intensity of its rumbling dildo often, raising or lowering them as needed to provide you with the most delight and to build you up to a powerful orgasm. And when you do climax, it is a powerful one that has you crying out while your hips grind up onto that thrusting vibe. Only when you cum does it trigger its own, pumping a hot rush of latex semen into your quivering cunt. And once you're sated, the creature quietly pulls out and sanitizes itself while you bask in the blissful haze of the afterglow.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Latex Bobcat";
	else:
		say "moving you onto all fours and getting behind you. The vibrating dildo at his crotch slides between your cheeks as the more lube leaks from its tip. Knowing [if HP of Player > 0]what's desired of you, you[else]what's coming, you reluctantly[end if] raise your hips further.";
		say "     The bobcat starts slowly, easing its rumbling shaft into your tight asshole. The lube and the vibration certainly help, but the sextoy creature seems to know just how much to move and when. The process is largely a pleasant one as your body rapidly adjusts to the intruder. As it goes on, it starts to feel better and better, your body responding to getting butt-fucked with increasing arousal[if HP of Player <= 0] despite your attempts to resist at first[end if]. Soon you're moaning and panting as the sexbot's latex cock buggers your increasingly needy ass. As the bobcat picks up the pace and intensifies its vibrator functions, your [if HP of Player > 0]attempts to think are[else]desire to resist is[end if] driven from your mind as the delight this walking sex toy provides overwhelms you.";
		WaitLineBreak;
		say "     The sextoy creature seems like an ideal lover, adjusting the pace, depth and strength of its thrusts to suit your needs through a long and eventually satisfying ass-fucking session. It also tweaks the speed and intensity of its rumbling dildo often, raising or lowering them as needed to provide you with the most delight and to build you up to a powerful orgasm. And when you do climax, it is a powerful one that has you crying out while you push your ass back onto that thrusting vibe. Only when you cum does it trigger its own, pumping a hot rush of latex semen into your clenching asshole. And once you're sated, the creature quietly pulls out and sanitizes itself while you bask in the blissful haze of the afterglow.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Latex Bobcat";


Section 3 - Player Victory

to say BeatTheLatexBobcat:
	say "     With only a few blows, you're able to defeat the strange creature. It stumbles back and drops to the ground. It doesn't seem particularly injured, but relents and offers its body to you[if Libido of Player > 66]. Feeling very aroused, the opportunity to sate your urges is quite strong[else if Libido of Player > 33]. Feeling pretty aroused, [else]. While not feeling particularly aroused, the opportunity is there should you want to take it[end if]. Shall you make use of this living sextoy for some quick relief?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck its ass";
		now sortorder entry is 1;
		now description entry is "Screw its padded sphincter";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Blowjob";
		now sortorder entry is 2;
		now description entry is "Use its cock-sucking muzzle";
	[]
	if Player is purefemale:
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now sortorder entry is 3;
		now description entry is "Make it lap your pussy";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride it";
	now sortorder entry is 4;
	now description entry is "Ride its vibrating dick";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Milk it for cum";
	now sortorder entry is 5;
	now description entry is "Milk the vibrating dick into a bottle";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link][0] - Let it go[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> ";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "Shall you [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fuck its ass":
					say "[LatexBobcat_pvsex01]";
				else if nam is "Blowjob":
					say "[LatexBobcat_pvsex02]";
				else if nam is "Cunnilingus":
					say "[LatexBobcat_Cunni]";
				else if nam is "Ride it":
					say "[LatexBobcat_pvsex03]";
				else if nam is "Milk it for cum":
					say "[LatexBobcat_Milking]";
		else if calcnumber is 0:
			say "     The bobcat creature seems disappointed that you don't want to make use of its many features. It gets up and pads off in search of another potential playmate.";
			now sextablerun is 1;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";

to say LatexBobcat_pvsex01:
	say "     Grabbing the feline sextoy by its back handles, you push it down onto all fours. It accepts this demand without further struggle, raising its padded ass and offering you its latex fuckhole. You line yourself up and thrust into that yielding hole[if Cock Length of Player > 24]; it smoothly stretches to accept your [cock size desc of Player] shaft[end if]. It grips and squeezes around your [Cock of Player] cock, lightly milking at it. There's also a soft echo from the its rumbling dildo cock to add to your stimulation.";
	say "     You thrust into the pleasure-bot, pounding that deliciously squeezing hole of its. With your hands on those handles on its back, it's easy and comfortable for you to fuck the latex feline. This creature was obviously made for fucking and you feel no shame for using it; it's clearly loving it, too. And that soft, rumbling purr of its motor and vibe-dick make it all the better.";
	WaitLineBreak;
	say "     With such a fine hole to fuck, you hold out as long as you can, but eventually can't take any more and drive deep into the bobcat's ass. You groan as you cum hard, firing shot after shot of hot semen into it. You empty your balls, draining your [Cum Load Size of Player] load into the rumbling sextoy's quivering, squeezing, milking, hungry hole[if Ball Size of Player > 5]. Your excessive seed causes the latex feline's belly to stretch and bulge from your load, much to its delight[end if]. After you pull out, it gets up and happily walks off, a trickle of your cum leaking down its brown, spotted thigh.";
	CreatureSexAftermath "Latex Bobcat" receives "AssFuck" from "Player";

to say LatexBobcat_pvsex02:
	say "     Taking the feline sextoy by the head, you bring its muzzle to your prick. It gives a rumbling purr and welcomes your [Cock of Player] cock into its open and accommodating muzzle[if Cock Length of Player > 30]. Despite your considerable size, the opening stretches steadily as you thrust into it, accepting your [cock size desc of Player] shaft even as it stretches out the feline's body to do so[else if Cock Length of Player > 15]. Despite your comparatively large size, the opening stretches steadily as you thrust into it, accepting your impressive shaft[else if Cock Length of Player > 7]. Perhaps given your above-average size, the feline eagerly accepts your impressive shaft into its soft muzzle[else]. Your shaft slides easily into its soft muzzle[end if]. With a hand on either side of the latex kitty's head, your fingers slide comfortable into position. Your fingers are so perfectly placed upon cheekruffs that are sized and shaped for your digits that you don't even notice how good the fit is - it just seems right.";
	say "     Thus, comfortably gripping the living sextoy's head, you start to thrust and bob the cat's muzzle over your cock. The latex passage is slick and soft, snug but yielding, providing plenty of delightful stimulation. There's also a short, but broad and textured tongue in there to further delight you. Finding the creature's oral fuckhole very enjoyable indeed, you make the most of enjoying it. This kitty's obviously made to be used and is clearly loving being used, so you have no problem doing so. The rumble of the creature's excited dildo cock increases as it tweaks its nipples, sending faint sympathetic vibrations through its mouth and throat.";
	WaitLineBreak;
	say "     You work that delightful muzzle back and forth over your [Cock of Player] shaft, sometimes turning its head a little one way or another to shift the points of greatest stimulation. And while you'd love to play with this pleasure-bot much longer, you can only hold out so long being subjected to its expertly designed cocksucking muzzle. As you reach your peak, you pull the bobcat's head forward, driving your full length into it and unleashing your hot, gooey load into the sextoy's [if Ball Size of Player > 5]stretching [end if]belly. After draining your balls, you push its head away and release the creature to walk off happily, molded paws rubbing its [if Ball Size of Player > 5]overstuffed[else if Ball Size of Player > 4]stuffed[else]well-fed[end if] tummy.";
	CreatureSexAftermath "Latex Bobcat" receives "OralCock" from "Player";

to say LatexBobcat_Cunni:
	say "     Having relented after the brief confrontation, the strange feline toy stands still for a moment, the low, rhythmic purr of its internal motor a steady counterpoint to the soft hum emanating from the thick, pink erection between its legs. Its plastic eyes blink slowly, tracking your movement. A synthesized voice announces from a speaker grill near its neck, 'Submission protocols engaged.' Without hesitation, the creature drops to all fours, its segmented latex limbs clicking slightly at the joints, presenting itself to you. The rubber handles on its back beckon for your touch.";
	say "     You approach the creature, the hum of its internal mechanisms growing slightly more noticeable. You stand before it, taking hold of its bobcat-like muzzle, coated in smooth, cool latex, and gently guide it towards your [if Player is not barecrotch]quickly bared and [end if]waiting crotch. The creature remains pliant, its plastic eyes focused forward, its programmed responses now yours to command. The warmth of your skin meets the cool, slightly yielding texture of the latex muzzle as you position it, directing its attention to the source of your own building anticipation, the soft sounds of its motors a strange lullaby.";
	WaitLineBreak;
	say "     The creature begins to lap at you, its textured latex tongue, surprisingly soft despite its material, moving over your pussy lips. It explores the delicate folds, a rough yet gentle pressure, its internal purr resonating against your skin. When its tongue finds your clit, a different motor engages, a distinct buzzing adding to the sensory overload. The vibration against your sensitive flesh is intense, almost overwhelming, but a thrilling kind of pressure builds. Its tongue slides lower, occasionally probing and slipping inside your vagina for brief, vibrating moments before returning to tease and torment your clit with focused, buzzing attention.";
	say "     With each vibrating press and flick of its tongue, a wave of heat spreads through your core. The bizarre combination of the machine-like precision and the surprising intensity of the sensation leaves you breathless. The rhythmic buzzing against your clit is relentless, building the tension higher and higher. Your hips begin to tilt involuntarily, pressing yourself harder against the creature's face, seeking more of that vibrating pleasure. Your fingers tangle in the latex ruff around its cheeks, holding it firmly in place, guiding its insistent tongue exactly where you need it most, lost in the compelling intimacy of the moment.";
	WaitLineBreak;
	say "     The rhythmic buzzing against your clit intensifies, a relentless assault that drives all other thoughts from your mind. Your body tightens, muscles clenching almost painfully. A low moan escapes your throat, the sound catching as you gasp for air between the waves of escalating sensation. Heat pools deep inside you, spreading outward through your limbs, making them tremble uncontrollably. Your hips instinctively thrust upward, seeking more of that focused, vibrating pleasure from the creature's latex tongue pressed firmly against you. The world narrows to this point of intense, building pressure, the purring motor and the buzzing tongue the only sounds that register, pushing you closer and closer to the edge.";
	say "     And then it breaks. A sharp gasp tears from your lips as the climax washes over you, a wave of pure, unadulterated pleasure that makes your back arch and your body convulse. The vibration from the creature's tongue feels electric, perfectly timed with the pulsing release. Your legs tremble, your muscles ache from the intensity, and a soft, spent whimper follows the initial gasp. The toy continues its work for a moment, its tongue vibrating against your sensitive flesh, before you subtly shift your weight, indicating the climax has passed and cleanup is desired. Its tongue, now softer, moves to lap gently at the wetness coating your skin, a strange, alien texture against the raw sensitivity left by the orgasm.";
	WaitLineBreak;
	say "     Once the area feels clean, the strange, slightly sweet lubricant from the toy's tongue now coating you, you take a deep, steadying breath and slowly rise to your feet, the creature still kneeling obediently. The feeling of spent satisfaction settles over you, mingling with the odd strangeness of the encounter. You look down at the compliant latex form, its plastic eyes waiting for direction.";
	say "     With a sense of finality, you step away from the creature. You lean down and give its smooth, latex-covered rump a firm, resonant slap. The sound is a distinct thwack against the synthetic material, a clear signal of dismissal. The creature's internal motors shift pitch slightly, and it scrambles to its feet, turning and moving off as directed, its segmented limbs carrying it away, leaving you alone in the quiet space, the memory of the vibrating tongue and the slick, sweet cleanup lingering on your skin.";
	CreatureSexAftermath "Latex Bobcat" receives "OralPussy" from "Player";

to say LatexBobcat_pvsex03:
	say "     You roll the defeated feline onto its back and straddle the latex creature. It makes no attempt to oppose you, moving as your hands direct it. With its vibrating dildo cock pointed upwards, you line yourself up and let it tease your waiting hole. ";
	if Player is female:
		say "The soft buzz against your wet petals and clit have you moan and excite you all the more. You ease yourself down slowly, letting the rumbling shaft slide into your welcoming cunny.";
		say "     You bounce yourself on the feline sextoy's pole, enjoying the warm pleasure it spreads through your entire crotch thanks to its vibrations. As you settle into a good rhythm, your hands slide over its smooth latex chest. Brushing over its nipples turns them slightly, changing the speed and tempo. You moan in surprise and soon you're tweaking the nip-like knobs this way and that. You adjust the settings up and down as you desire while adjusting your position to suit your shifting needs for stimulation.";
		WaitLineBreak;
		say "     Being in control, you're able to take as much time as you feel you can safely spare, drawing out your enjoyment of the pleasure-bot. Eventually though, you're bouncing on its pole hard and fast while revving the speed and intensity of the vibe up and down quickly as you push yourself to a powerful climax. You wriggle your hips as you ride it, making sure you get that delicious buzz right on your g-spot. Your hot juices soak the sextoy's shaft and crotch as you cry out in orgasmic release[if Player is male] and fire thick volleys of cum across the latex feline's body[end if]. Only when you cum does it trigger the bobcat's own release, its motor rumbling and purring loudly as several spurts of latex semen into your quivering cunt. You ease the vibrators controls down as you ride out the last moments of your orgasm and the warm bliss of the afterglow of your powerful orgasm sets in. You flop onto the ground beside the sexbot, which sanitizes itself and departs quietly now that its role is complete.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Latex Bobcat";
	else:
		say "The soft buzz against your crinkled hole excites you all the more even as it helps your anus relax. There comes a spurt of lubricating fluid as you ease yourself down slowly, gliding the rumbling shaft into your spreading ring.";
		say "     You slide yourself up and down on the feline sextoy's pole slowly, enjoying the warm pleasure it spreads through your entire crotch thanks to its vibrations. Over time, you adjust and pick up the pace, soon settling into a good rhythm. As you do, your hands slide over its smooth latex chest and brush over its nipples. Turning them slightly causes a change in the speed and tempo of the vibrations, sending a shiver of delight through your ass[if Player is male] and upon your prostate[end if]. You moan in surprise and soon you're tweaking the nip-like knobs this way and that. You adjust the settings up and down as you desire while adjusting your position to suit your shifting needs for stimulation.";
		WaitLineBreak;
		say "     Being in control, you're able to take as much time as you feel you can safely spare, drawing out your enjoyment of the pleasure-bot. Eventually though, you're bouncing on its pole hard and fast while revving the speed and intensity of the vibe up and down quickly as you push yourself to a powerful climax[if Player is male]. You grind down hard every time you lower yourself down to feel that intense buzz against your prostate[end if]. Your asshole clenches hard around the sextoy's shaft as you cry out in orgasmic release[if Player is male]. You fire thick volleys of cum across the latex feline's body[end if]. Only when you cum does it trigger the bobcat's own release, its motor rumbling and purring loudly as several spurts of latex semen into your squeezing rear. You ease the vibrators controls down as you ride out the last moments of your orgasm and the warm bliss of the afterglow of your powerful orgasm sets in. You flop onto the ground beside the sexbot, which sanitizes itself and departs quietly now that its role is complete.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Latex Bobcat";

to say LatexBobcat_Milking:
	say "     Having relented after the brief confrontation, the strange feline toy stands still for a moment, the low, rhythmic purr of its internal motor a steady counterpoint to the soft hum emanating from the thick, pink erection between its legs. Its plastic eyes blink slowly, tracking your movement. A different synthesized voice announces from a speaker grill near its neck, 'Submission protocols engaged.' Without hesitation, the creature drops to all fours, its segmented latex limbs clicking slightly at the joints, positioning its bubble-butt higher, presenting the source of the soft buzzing vibration directly towards you. The rubber handles on its back beckon for your touch.";
	say "     You crouch down next to the compliant toy, the strange, sweet scent of its lubricant mixing with the faint smell of warm rubber. Your hand finds the rubber-padded handle on its left flank, firm and designed for purpose. You grip it, using it to subtly adjust the creature's position, bringing its lower body into a more comfortable angle for access. The latex skin feels smooth and slightly yielding under your touch, cool against your skin except where the internal motors generate warmth. Its rear is perfectly positioned now, the vibrating erection jutting forward just beneath its abdomen, pulsing with readiness, a soft, inviting hum intensifying slightly as you move closer.";
	WaitLineBreak;
	say "     Your fingers wrap around the base of the latex cock, stroking along its length. The surface is smooth, slick with the premade lubricant that has been steadily dripping, coating your hand instantly. The vibration intensifies with each stroke, the buzzing growing louder, merging with the purr of the internal motor into a single, hypnotic thrum. You feel the erection swell slightly under your touch, becoming harder, more rigid beneath the supple latex coating. Its head lolls slightly to the side, the plastic eyes half-closed, a silent acknowledgment of the pleasure protocol you are now dictating. The precum is now flowing freely, thick and cloudy against your palm.";
	say "     Reaching into your pack, you pull out a wide-rimmed plastic bottle, the kind meant for easy drinking on the go. You position the mouth of the bottle beneath the tip of the vibrating cock, continuing the rhythmic strokes. With a final, intense surge, the toy ejaculates, a hot, thick stream of cum pulsing from the head of the latex shaft, splashing against the inside of the bottle with a wet, resonant sound. The vibration sputters for a second, then returns to a low hum as the creature relaxes its stance slightly. With the bottle filled, you cap and label it, then rise to your feet. You give the compliant latex rump a firm, resonant slap that echoes in the quiet, sending it to run along.";
	CreatureSexAftermath "Latex Bobcat" receives "Stroking" from "Player";
	ItemGain latex bobcat cum by 1;

Section 4 - Monster Stats and Infection Data

to say LatexBobcatDesc:
	say "     You hear an odd sound coming from nearby, kind of a low buzzing rumble. Looking around warily, you soon spot its source - a strange creature that is now approaching you. The thing is feline in shape, but coated in a layer of light brown latex with speckled markings. The five-and-a-half foot tall creature has limbs with seams and joints that slide over one another, yet it moves in a smooth manner. Between its legs is a very dildo-like erection that buzzes softly, mixing with the living sextoy kitty's purring motor to make the sound you heard. On its back are a pair of rubber-padded handles, likely for use when enjoying its shapely bubble-butt.";
	say "     The living sex toy's head is reminiscent of a bobcat's, but with several features that catch your eye. Like the rest of him, the cheekruffs and ears are also cast in latex, with the former shaped for comfortable gripping while one is using its suggestively rounded open muzzle. Meanwhile, the kitty toy's ears are pointed and hold metal grills inside them over what must be audio receptors. Its eyes are plastic shells like one would find on plush toys with cat-slit pupils painted on, though they do look around and blink as normal.";
	say "     '[one of]I come with variable speed settings to meet your every need,' it states[or]Do you need relief? Scanning[if Libido of Player > 75]. Relief required[else if Libido of Player > 25]. Relief recommended[else]. Relief unnecessary. Administering regardless[end if],' it announces[or]My batteries are fully charged. Increase power,' it states[or]Subject located. Beginning arousal protocol,' it announces[at random]. The creature moves its paw-like hands to its nipples and turns them like knobs, adjusting the speed and intensity of its buzzing dildo cock. And while the living sextoy has no visible balls, lubricated precum starts to dribble from its tip in preparation of fulfilling your needs, whether you want it to or not.";

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Latex Bobcat"	"[PrepCombat_Latex Bobcat]"

to say PrepCombat_Latex Bobcat:
	setmongender 3; [creature is male]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Latex Bobcat"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Latex Bobcat" to infections of FelineList;
	add "Latex Bobcat" to infections of FurryList;
	add "Latex Bobcat" to infections of LatexList;
	add "Latex Bobcat" to infections of MaleList;
	add "Latex Bobcat" to infections of QuadrupedalList;
	add "Latex Bobcat" to infections of TailList;
	now Name entry is "Latex Bobcat"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The bobcat[or]The feline sextoy[or]The dildonic kitty[or]The kitty sexbot[or]It[as decreasingly likely outcomes] [one of]ends up grinding its vibrating cock against you as it tries to restrain you.[or]strikes you with mechanically-enhanced strength![or]tosses you to the ground in an attempt to pin you beneath it![or]puts on a tantalizing display while showing off [if Player is male and a random chance of 1 in 3 succeeds]its molded, cocksucking muzzle[else if Player is male and a random chance of 1 in 3 succeeds]its cock-ready back door[else if a random chance of 1 in 2 succeeds]some tricks with its vibro-dick[else]the variable speed settings for its dildo-cock[end if][or]pounces at you, trying to bear you down with remarkable strength for such a little guy.[at random]";
	now defeated entry is "[BeatTheLatexBobcat]"; [ Text when monster loses. ]
	now victory entry is "[LoseToLatexBobcat]"; [ Text when monster wins. ]
	now desc entry is "[LatexBobcatDesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "altered to have the muzzle, ears and cheekruffs of a bobcat[if SkinName of Player is listed in infections of LatexList]. The latter are formed of latex and are shaped for comfortable gripping when someone is holding your head[end if]. Unless talking or consciously trying to hold it shut, your muzzle is normally open in a rounded shape. Your tongue and the inside of your mouth are firm yet pliant[if SkinName of Player is listed in infections of LatexList] latex[end if] and lightly textured, making your mouth enjoyably suitable for providing blowjobs";
	now body entry is "altered inside and out. You're now only about five and a half feet tall and have a decidedly feline build with paws instead of hands and feet. But the greater changes are the internal ones, with your insides feeling more like they're artificial and now made of latex and mechanical parts rather than living flesh. Rather than having a normal heartbeat, your heart sounds more like a motor softly purring away. Upon your back at the shoulders, you have a set of handle loops made of padded rubber, perfect for holding onto you from behind";
	now skin entry is "a layer of spotted brown latex that has replaced your";
	now tail entry is "You have a short, stubby tail make of semi-firm latex at the base of your spine. Under this tail, you've got a bubble butt with a latex fuckhole between your cheeks.";
	now cock entry is "[one of]latex[or]smooth[or]dildo-like[or]vibrating[or]vibe[as decreasingly likely outcomes]";
	now face change entry is "it becomes decidedly feline in form. As your head turns into that of a bobcat, you gain pointed ears and cheek ruffs[if SkinName of Player is listed in infections of LatexList] made of latex textured for comfortable gripping[end if]. Your tongue and the inside of your mouth feel funny as they become lightly textured and your muzzle opens in a rounded, welcoming manner. Your sense of hearing is momentarily thrown off as your inner ears are replaced with audio receptors behind metal grills";
	now body change entry is "strange alternations occur both inside and out. Your body changes shape, gaining rounded paws instead of hands and feet. Your size changes as well, [if scalevalue of Player < 3]growing to about five and a half feet tall[else if scalevalue of Player is 3]adjusting to about five and a half feet tall[else]shrinking down to about five and a half feet tall[end if]. Your insides shift and change as you become more latex and mechanical parts instead of flesh and bones under your skin. Everything still seems to work roughly the same, though your heartbeat sounds more like motor softly purring now. Uncomfortable bumps form at your shoulders, growing larger until they push up into handle loops made of padded rubber";
	now skin change entry is "light brown latex replaces your skin. You can't help but watch as it spreads until you're left with a smooth coating of it that is lightly speckled with dime-sized darker markings. Your new skin has seams at your joints that smoothly slide over one another";
	now ass change entry is "short, stubby tail made of latex sticks from the base of your spine. Your ass gets round, firm and fuckable even as your tailhole alters as well, becoming a snug, padded latex hole that's clearly designed for others to fill";
	now cock change entry is "its flesh alters into smooth latex. It rumbles briefly like a vibrator before settling down for the moment";
	now str entry is 17; [ These are now the creature's stats... ]
	now dex entry is 16; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 14; [ These values may be used as part of alternate combat. ]
	now per entry is 10;
	now int entry is 8;
	now cha entry is 14;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 32; [ The monster's starting HP. ]
	now lev entry is 3; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 7; [ Monster's average damage when attacking. ]
	now area entry is "Red"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 7; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 65; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "latex bobcat milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is "latex bobcat cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]altered[or]transformed[at random]";
	now type entry is "[one of]feline[or]sextoy[or]bobcat[or]robotic[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
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
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
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
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
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
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]



Section 5 - Heat Table

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "Latex Bobcat";
	now heat cycle entry is 4;
	now heat duration entry is 2;
	now trigger text entry is "You feel a quiver in your loins [if Player is male]as your sextoy cock starts to rumble faintly. Your cunny clenches and grows increasingly slick, becoming ready for use at any moment as well[else]as your cunny clenches and grows increasingly slick, becoming ready for use at any moment[end if][if Player is mpreg_able or anallevel is 3]. Your mouth and asshole also feel... disappointingly empty[else]. Your mouth also feels... disappointingly empty[end if]. You can't help but ponder the wide array of people and creatures you've seen out in the city. Wouldn't it be fun to go out and find one to play with for a while?";
	now description text entry is "";
	now heat start entry is "[bobcatheatstart]";
	now heat end entry is "[bobcatheatend]";
	now inheat entry is "[bobcatinheat]";
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "You feel a quiver in your loins [if Player is male]as your sextoy cock starts to rumble faintly. Your mouth and asshole feel... disappointingly empty[else]as your mouth and asshole feel... disappointingly empty[end if]. You can't help but ponder the wide array of people and creatures you've seen out in the city. Wouldn't it be fun to go out and find one to play with for a while?";

to say bobcatheatstart:
	if Libido of Player < 25:
		now Libido of Player is ( 50 + Libido of Player ) / 3;
	else:
		increase Libido of Player by 5;

to say bobcatheatend:
	say "You release a soft mrowl as your heat passes, the empty ache in your [if Player is female]loins[else]anus[end if] subsiding somewhat and you feel able to hold back your desires for random sex.";
	now Libido of Player is ( Libido of Player * 9 ) / 10;
	decrease slutfucked by 2;
	if slutfucked < 0, now slutfucked is 0;
	if slutfucked > 6, now slutfucked is 6;

to say bobcatinheat:
	increase Libido of Player by 5;
	if Libido of Player > 99, now Libido of Player is 99;
	if Libido of Player > 80 and slutfucked > 8 and ( location of Player is not sleepsafe or location of Player is fasttravel ):
		say "[line break]     A passerby catches your eye and you approach them before you realize what you're doing. Soon you're offering yourself up for sex to them, an offer they accept.";
		let randombobcatfun be { 1 }; [blowjob]
		if Player is male and ( FemaleList is not banned or HermList is not banned ):
			add { 2 } to randombobcatfun; [give vag]
			if anallevel > 2, add { 3 } to randombobcatfun; [give anal]
		if Player is female:
			add { 4, 4 } to randombobcatfun; [rec vag]
		if Player is mpreg_able:
			add { 5, 5 } to randombobcatfun; [rec anal]
		else if anallevel > 1:
			add { 5 } to randombobcatfun; [rec anal]
		sort randombobcatfun in random order;
		if entry 1 of randombobcatfun is 1, say "[bobcatheatsex1]";
		if entry 1 of randombobcatfun is 2, say "[bobcatheatsex2]";
		if entry 1 of randombobcatfun is 3, say "[bobcatheatsex3]";
		if entry 1 of randombobcatfun is 4, say "[bobcatheatsex4]";
		if entry 1 of randombobcatfun is 5, say "[bobcatheatsex5]";
		now Libido of Player is 65;
		now slutfucked is slutfucked / 2;
		if slutfucked > 6, now slutfucked is 6;
	else if Libido of Player > 80:
		increase slutfucked by 1;
		if a random chance of 1 in 3 succeeds:
			say "[line break][one of]You moan softly as you feel a strong, compelling urge to be played with[or]Your orifices feel empty and unused; you're tempted to find someone to satisfy your craving[or]You pant and moan as a wave of need passes through your [if Player is female and anallevel > 1]cunny and asshole[else if Player is female]cunny[else]asshole[end if], making you long for someone to fuck you[or]You feel a rush of heat to your sextoy loins and you long to find someone to use them[or]Thoughts of bending over for the next horny mutant you see become increasingly tempting[purely at random].";


to say bobcatheatsex1:		[blowjob]
	say "[randombodypart]"; [yields 'bodyselector' - see Stripes/Mismatched Chimera.i7x]
	setmongender 3; [male]
	if HermList is not banned:
		if a random chance of 1 in 5 succeeds, setmongender 5; [herm]
		if a random chance of 1 in 10 succeeds, setmongender 6; [shemale]
		if a random chance of 1 in 10 succeeds, setmongender 7; [maleherm]
	let colorpick be ""; [See Stripes/Andrew.i7x for randomcolorlist]
	if a random chance of 1 in 5 succeeds:
		now colorpick is entry 1 of randomcolorList;
		rotate randomcolorList;
	if a random chance of 1 in 10 succeeds, sort randomcolorlist in random order; [10% chance to re-randomize each time]
	say "     Your lover of the moment is a [if mongender of currentmonster is 3]male[else if mongender of currentmonster is 5]herm[else if mongender of currentmonster is 6]shemale[else if mongender is 7]maleherm[end if] [bodyselector]";
	if colorpick is not "":
		say " with a [colorpick] coat";
	say ". [gche] decides to have a go at your mouth, sliding his cock past your lips. You moan softly and start sucking on it happily. You lick and suck on it as [ghe] grips your head and thrust into your mouth until [ghe] finally cums. You gulp down shot after shot of the hot semen satisfaction at having pleased the [bodyselector] like the horny plaything you feel yourself to happily be right now. The sated [if mongender of currentmonster is 3]male[else if mongender of currentmonster is 5]herm[else if mongender of currentmonster is 6]shemale[else if mongender of currentmonster is 7]maleherm[end if] thanks you for the blowjob and continues on [ghis] way.";

to say bobcatheatsex2:		[give vaginal]
	say "[randombodypart]"; [yields 'bodyselector' - see Stripes/Mismatched Chimera.i7x]
	if FemaleList is not banned:
		setmongender 4; [female]
	else:
		setmongender 5; [herm]
	if HermList is not banned:
		if a random chance of 1 in 5 succeeds, setmongender 5; [herm]
		if a random chance of 1 in 10 succeeds, setmongender 7; [maleherm]
		if a random chance of 1 in 10 succeeds, setmongender 8; [cuntboy]
	let colorpick be ""; [see Stripes/Andrew.i7x]
	if a random chance of 1 in 5 succeeds:
		now colorpick is entry 1 of randomcolorList;
		rotate randomcolorList;
	if a random chance of 1 in 10 succeeds, sort randomcolorlist in random order; [10% chance to re-randomize each time]
	say "     Your lover of the moment is a [if mongender of currentmonster is 4]female[else if mongender of currentmonster is 5]herm[else if mongender of currentmonster is 7]maleherm[else]cuntboy[end if] [bodyselector]";
	if colorpick is not "":
		say " with a [colorpick] coat";
	say ". Looking you over, [ghe] decides to enjoy your dildo-like cock. You end up straddled and ridden by [ghim], your penis vibrating and rumbling like the sextoy it is, much to [ghis] delight. [gchis] cunt squeezes and quivers around your [cock size desc of Player] rod as the [bodyselector] works [ghis] hips up and down. You're ridden until [ghe] has a long and satisfying orgasm [if currentmonster is cocked]that soaks your crotch and splatters your body with [ghis] semen[else]that leaves your crotch soaked with [ghis] juices[end if]. You cum as well, feeding your hot load to [ghis] hungry cunt as [ghe] rides out [ghis] orgasm before finally pulling off. You're thanked for the ride and left there to recover, feeling like a well-used sex toy and loving it.";

to say bobcatheatsex3:		[give anal]
	say "[randombodypart]"; [yields 'bodyselector' - see Stripes/Mismatched Chimera.i7x]
	setmongender 3; [male]
	if FemaleList is not banned and a random chance of 1 in 6 succeeds:
		setmongender 4; [female]
	else if HermList is not banned:
		if a random chance of 1 in 5 succeeds, setmongender 6; [shemale]
		if a random chance of 1 in 12 succeeds, setmongender 5; [herm]
		if a random chance of 1 in 12 succeeds, setmongender 7; [maleherm]
		if a random chance of 1 in 12 succeeds, setmongender 8; [cuntboy]
	let colorpick be ""; [See Stripes/Andrew.i7x]
	if a random chance of 1 in 5 succeeds:
		now colorpick is entry 1 of randomcolorList;
		rotate randomcolorList;
	if a random chance of 1 in 10 succeeds, sort randomcolorlist in random order; [10% chance to re-randomize each time]
	say "     Your lover of the moment is a [if mongender of currentmonster is 3]male[else if mongender of currentmonster is 4]female[else if mongender of currentmonster is 5]herm[else if mongender of currentmonster is 6]shemale[else if mongender of currentmonster is 7]maleherm[else]cuntboy[end if] [bodyselector]";
	if colorpick is not "":
		say " with a [colorpick] coat";
	say ". Looking you over, [ghe] decides to enjoy your dildo-like cock[if currentmonster is cunted], but opts to take it in the butt rather than in [ghis] cunt[end if]. You end up straddled and ridden by [ghim], your penis vibrating and rumbling like the sextoy it is, much to [ghis] delight. [gchis] hot, tight asshole clenches and squeezes upon your [cock size desc of Player] rod as the [bodyselector] relishes the anal fucking [ghe][']s getting. You're ridden until [ghe] has a powerful orgasm that has [ghis] back passage clamp down tightly around you while [ghe] [if currentmonster is cocked]splatters your chest with [ghis] semen[else]soaks your crotch with [ghis] hot vaginal juices as they run down [ghis] crotch onto yours[end if]. You cum as well, pumping your hot load into [ghis] well-fucked hole as [ghe] rides out [ghis] orgasm before finally pulling off. You're thanked for the ride and left there to recover, feeling like a well-used sex toy and loving it.";

to say bobcatheatsex4:		[receive vag]
	say "[randombodypart]"; [yields 'bodyselector' - see Stripes/Mismatched Chimera.i7x]
	setmongender 3; [male]
	if HermList is not banned:
		if a random chance of 1 in 5 succeeds, setmongender 5; [herm]
		if a random chance of 1 in 10 succeeds, setmongender 6; [shemale]
		if a random chance of 1 in 10 succeeds, setmongender 7; [maleherm]
	let colorpick be ""; [See Stripes/Andrew.i7x]
	if a random chance of 1 in 5 succeeds:
		now colorpick is entry 1 of randomcolorList;
		rotate randomcolorList;
	if a random chance of 1 in 10 succeeds, sort randomcolorlist in random order; [10% chance to re-randomize each time]
	let baby be 0;
	if child is born or gestation of Child is not 0, now baby is 1;
	say "     Your lover of the moment is a [if mongender of currentmonster is 3]male[else if mongender of currentmonster is 5]herm[else if mongender of currentmonster is 6]shemale[else]maleherm[end if] [bodyselector]";
	if colorpick is not "":
		say " with a [colorpick] coat";
	say ". Intent on your slick cunt, you're moved onto all fours and mounted";
	if BodyName of Player is "Latex Bobcat":
		say ". It feels good to gripped by your back handles and pounded by a horny stud";
	say ". The [bodyselector] drills [ghis] cock into you over and over again, stuffing your needy cunny with throbbing meat. Your hot tunnel squeezes and milks at the thrusting shaft as you strive to please [ghim] with your body. You're pounded until [ghe] has a strong orgasm, pushing deep into you and unloading shot after shot of hot, gooey seed into your vagina to flow into your heat-stricken womb. You cum as well, adding to the sticky mess being made as you're seeded by the horny [if mongender of currentmonster is 3]male[else if mongender of currentmonster is 5]herm[else if mongender of currentmonster is 6]shemale[else]maleherm[end if]. Once spent, [ghe] pulls out and wipes [ghis] cock across one cheek while giving the other a light slap, thanking you for the fuck. The feeling of the stranger's [bodyselector] semen pooled inside you makes you feel so delightfully used.[impregchance]";
	if baby is 0 and gestation of Child is not 0:
		now FaceName of Child is "[bodyselector]";
		now BodyName of Child is "[bodyselector]";
		now SkinName of Child is "[bodyselector]";

to say bobcatheatsex5:		[receive anal]
	say "[randombodypart]"; [yields 'bodyselector' - see Stripes/Mismatched Chimera.i7x]
	setmongender 3; [male]
	if HermList is not banned:
		if a random chance of 1 in 5 succeeds, setmongender 5; [herm]
		if a random chance of 1 in 10 succeeds, setmongender 6; [shemale]
		if a random chance of 1 in 10 succeeds, setmongender 7; [maleherm]
	let colorpick be ""; [See Stripes/Andrew.i7x]
	if a random chance of 1 in 5 succeeds:
		now colorpick is entry 1 of randomcolorList;
		rotate randomcolorList;
	if a random chance of 1 in 10 succeeds, sort randomcolorlist in random order; [10% chance to re-randomize each time]
	let baby be 0;
	if child is born or gestation of Child is not 0, now baby is 1;
	say "     Your lover of the moment is a [if mongender of currentmonster is 3]male[else if mongender of currentmonster is 5]herm[else if mongender of currentmonster is 6]shemale[else]maleherm[end if] [bodyselector]";
	if colorpick is not "":
		say " with a [colorpick] coat";
	say ". Intent on your sexy ass[if Player is female] over your heat-stricken cunt[end if], you're moved onto all fours and mounted";
	if BodyName of Player is "Latex Bobcat":
		say ". It feels good to gripped by your back handles and pounded by a horny stud";
	say ". The [bodyselector] sinks [ghis] cock into your rectum over and over again, stuffing welcoming ass with throbbing meat. Your hot tunnel squeezes and clenches around the thrusting shaft as you strive to please [ghim] with your body. You're pounded until [ghe] has a strong orgasm, pushing deep into you and unloading shot after shot of hot, gooey seed into your bowels. You cum as well, adding to the sticky mess being made as you're seeded by the horny [if mongender of currentmonster is 3]male[else if mongender of currentmonster is 5]herm[else if mongender of currentmonster is 6]shemale[else]maleherm[end if]. Once spent, [ghe] slides [ghis] sticky shaft from your creamy ass and wipes it across your buttcheeks and thanking you for the fuck. The feeling of the stranger's [bodyselector] semen pooled inside you makes you feel so delightfully used.[mimpregchance]";
	if baby is 0 and gestation of Child is not 0:
		now FaceName of Child is "[bodyselector]";
		now BodyName of Child is "[bodyselector]";
		now SkinName of Child is "[bodyselector]";


Section 6 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Latex Bobcat Infection"	"Infection"	""	Latex Bobcat Infection rule	1000	false

This is the Latex Bobcat Infection rule:
	if Player has a body of "Latex Bobcat":
		trigger ending "Latex Bobcat Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			if Player is pure:
				project Figure of Bobcat2_icon;
			say "     After the last vestiges of your humanity fade away, your altered mind comes to a realization - this body of yours is built for sex and pleasure and you should enjoy it. And let others enjoy it as well. You wander, a bit aimlessly at first, but end up drifting to the red light district of town. There you roam, at first offering the services of your body to random creatures to sate their lusts, and then later to the incoming soldiers scouting the city.";
			say "     One of these soldiers finds you particularly enjoyable and is unscrupulous enough to get you smuggled out of the city. At first, you're his private plaything and kept secretly hidden in his basement. In time though, you're upgraded to servicing a few of his friends as well. As morals grow more lax as the world changes around you, you go from being a guilty pleasure to a rare and valued prize that the soldier uses to impress his friends, neighbors and superiors. This all means little to you though, you're simply happy to have so many eager people willing to use your pleasure-giving body for its intended purpose.";
		else:
			say "     You manage to survive your time in the city, but don't make it out unchanged. The sextoy nature of your transformation is obvious and a point of your snickering from the soldiers who happen to rescue you. And while some of the scientists are intrigued by your unusual nature, they are more interested in other cases than yours. Their report is brief and mainly consists of a few conjectures and a prognosis that you'll likely become a sexual addict, sex worker or sex slave. That is, provided you don't succumb entirely.";
			if humanity of Player > 75 and Libido of Player < 25 and Player is pure:
				say "     Upset by their mentally resigning you to such a fate, you resolve to not give in. You do your best to find work away from potential temptations, finding a job as part of a re-construction crew. At least there, your handles can be used to suspend you while working at heights or in tunnels. And while your coworkers do tease you from time to time, they're a tough lot and they respect your ability to resist your infection's base urges.";
				say "     This does not mean you're not sexually active though. You enjoy sex greatly and have flings with several of your friends and co-workers, but you always keep it to manageable situations and special occasions. Giving your boss a hummer at the company Christmas party is as close as you get to spontaneous sex while on the job, for example. It's tough at times, but you live satisfied knowing you've maintained control and have dealt with your condition on your own terms instead of letting it dictate your future.";
			else:
				say "     Their words end up becoming true, you can only resist your new body's sexual needs for so long before the desire for sex overwhelms your reason. You make poor decisions ruled by your libido. You pick jobs based on how attractive the people there are or how much they seem interested in your sexualized body. You frequent clubs at night and let yourself get picked up by horny partners looking for a quick fuck. As it gets worse, you even end up a giving blowjobs to some stranger in an alley when he offers you some quick cash after you'd forgotten your [if Player is female]purse[else]wallet[end if].";
				if Player is pure:
					say "     You end up getting picked up by a well-to-do exec during one of these flings. And while you only expect it to be a one-time fuck at first, you're surprised to find him at your workplace about a week later. Seeing how you're working at a café where you're known to an increasing number of regulars to give head in the washroom for a big enough tip, he's soon getting some [']special service['] from you after slipping you the biggest tip you've ever gotten. After a few such visits, he offers to let you move in with him, promising you a life of luxury and sex at his private estate - an offer you readily accept.";
					say "     At your new home, you're a mix of lover, playmate and sextoy for the rich executive. And while you're not his only plaything there, you are clearly one of his favorites. While not a slave and free to come and go as you please, the pampered life of living as one of his fucktoys appeals to the new you. You stay in contact with several of your friends and continue to enjoy their company, but you have little reason to go out otherwise. There's plenty of sex to be had with your lover's other guests when he's not around. And when your lover has his business friends over, the fact that you're implicitly expected to help [']entertain['] them never upsets you - if anything, it's another of the many perks of living in your luxurious and hedonistic abode.";
				else:
					say "     A few months after that incident, you're scouted by one of the local sex parlors after giving a recruiter a blowjob at the café you work at. He talks it up while fucking your face, telling you about how much sex you could have and be making better money for it, too. While you'd normally know it's a bad decision, you're too lost in the pleasure of having a cock in your mouth to think straight. And with your shift for the night about to end, you leave there for the last time with him.";
					say "     While little seedy place is little more than a brothel, it seems wonderful to you. All you see is the opportunities for sex and can only think of the wide variety of partners you'll have. After a job interview that's more an extended orgy with the recruiter, the owner and several other employees, you barely look at the contract presented to you before signing it. You become little more than another sex slave for the sex parlor, fulfilling the lustful and occasionally deviant desires of their patrons. And while you still get paid and keep your home, you hardly ever leave. You work long hours for only a small share of the payments, but you hardly care - your true payment is all the sex you end up receiving.";

Latex Bobcat ends here.
