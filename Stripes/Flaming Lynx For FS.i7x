Version 1 of Flaming Lynx For FS by Stripes begins here.
[Version 1.4 - Fire Breath alt attack]

"Adds a Flaming Lynx creature to Flexible Survival's Wandering Monsters table"

[NOTE: This was a commissioned creature with the specific request that it only be available for M/M type fun, so this characteristic should not be changed.]

Section 1 - Monster Responses

when play begins:
	add { "Flaming Lynx" } to infections of guy;
	add { "Flaming Lynx" } to infections of furry;
	add { "Flaming Lynx" } to infections of Felinelist;		[list of feline infections]

to say losetoflaminglynx:
	choose row monster from the table of random critters;
	say "     The fiery feline growls sends the surging flames from its body across the ground, scorching the slimy tunnel floor into soot.  As the flames subside to a faint glow across his fur like lamplight, he gives you a final cuff with one large paw, knocking you down onto the blackened patch.  He sniffs at you and nuzzles along your body.  For a moment, you think those flames will burn, but they are only pleasantly warm now - a warmth that you begin to find strangely soothing and you run a hand across his side, cautiously petting the wild feline.  His fur doesn't quite feel like normal fur, though you'd be hard pressed to express what makes it different, as it is still soft and yielding.";
	let lynxfun be 0;
	if cunts of player > 0 and cocks of player is 0:			[Female - unwanted]
		say "     The flaming lynx sniffs down your [bodydesc of player] body before growling in disdain upon noticing your cunt moments later.  He gives you a final, heavy smack with his paw before his flames surge up again, washing all over you.  The fire seems to sink into your [bodytype of player] body, seeking to burn away that which is unwanted.";
		decrease hp of player by wdam entry;
		decrease humanity of player by a random number between 2 and 4;
		if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
		if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
	otherwise if cocks of player > 0 and cunts of player > 0:		[Herm - fellatio/unwanted]
		say "     The flaming lynx sniffs down your [bodydesc of player] body [if cocks of player > 0]and gives a faint rumble of pleasure as he finds your cock [end if]before growling in disdain upon noticing your cunt moments later";
		let fllynxanal be 0;
		if "More Anal" is listed in feats of player, increase fllynxanal by 2;
		if "MPreg" is listed in feats of player, increase fllynxanal by 2;
		if a random chance of fllynxanal in 7 succeeds:
			let lynxfun be 1;
		otherwise if a random chance of 2 in 5 succeeds:	[40% force oral]
			let lynxfun be 2;
		otherwise if a random chance of 2 in 3 succeeds:	[40% take oral]
			let lynxfun be 3;
		otherwise:								[20% dismissed]
			say ".  He gives you a final, heavy smack with his paw before his flames surge up again, washing all over you.  The fire seems to sink into your [bodytype of player] body, seeking to burn away that which is unwanted.";
			decrease hp of player by wdam entry;
			decrease humanity of player by a random number between 2 and 4;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
	otherwise if cocks of player > 0:						[Male]
		say "     The flaming lynx sniffs down your [bodydesc of player] body and purrs in pleasure as he finds your cock.  Another wave of colours washing across his fiery back";
		let fllynxanal be 3;
		if "More Anal" is listed in feats of player, increase fllynxanal by 1;
		if "MPreg" is listed in feats of player, increase fllynxanal by 1;
		if "Less Anal" is listed in feats of player, decrease fllynxanal by 2;
		if a random chance of fllynxanal in 7 succeeds:
			let lynxfun be 1;
		otherwise if a random chance of 1 in 2 succeeds:
			let lynxfun be 2;
		otherwise:
			let lynxfun be 3;
	otherwise:										[Neuter - confused]
		say "     The flaming lynx sniffs down your [bodydesc of player] body and mewls in confusion upon reaching your bare groin";
		let fllynxanal be 3;
		if "More Anal" is listed in feats of player, increase fllynxanal by 1;
		if "MPreg" is listed in feats of player, increase fllynxanal by 1;
		if "Less Anal" is listed in feats of player, decrease fllynxanal by 2;
		if a random chance of fllynxanal in 7 succeeds:
			let lynxfun be 1;
		otherwise if a random chance of 3 in 5 succeeds:
			let lynxfun be 2;
		otherwise:
			say ".  He gives you a final, heavy smack with his paw before his flames surge up again, washing all over you.  The fire seems to sink into your [bodytype of player] body, seeking to fill the void and make you more amenable to his tastes.";
			decrease hp of player by wdam entry;
			decrease humanity of player by a random number between 2 and 4;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
	if lynxfun is 1:				[anal selected]
		say ".  He paws at your clothes and gear, forcing you to divest yourself of them lest they be damaged by his claws.  The large feline then pounces atop you, grinding his stiff cock against you ass and leaking hot slick precum between your cheeks.  [if cunts of player > 0]Ignoring your available pussy, he[otherwise]He[end if] shifts his weight and presses his shaft against your anal sphinter before pushing the slick rod into your tight bottom.  You moan as the pleasant warmth of his body that you've been enjoying atop you can now be felt warming your insides as well, filling you with greater pleasure and arousing you greatly.";
		say "     The feline purrs and rumbles as he buggers you with obvious delight and your body can't help but respond in kind, finding the perverse animal mating to be extremely pleasant.  His feline shaft with its stimulating barbs feel delightful along your sensitive anal passage[if cocks of player > 0] and the press of his thrusts against your prostate make your cock twitch[end if].  The feline keeps a large paw on your shoulders, keeping your front end presses to the ground as he rides your tight ass until he cums.  As his deliciously hot seed surges into you, a rush of sexual excitement fills you as well[if cocks of player > 0] and you cum hard, blasting your load across the ground beneath you[end if].  Once he's finished, he pulls out carefully from your freshly creamed bottom and pads around to nuzzle you with a purr before padding off.  Still awash in pleasure from your encounter, it takes you a moment to realize you're still kneeling there with your ass in the air.[mimpregchance]";
	otherwise if lynxfun is 2:		[forces oral]
		say ".  He pushes you down again and moves to grind his firm sheath and hot balls against your face.  His loins are even warmer than the rest of him and their heat makes you more excited.  Even as his penis starts to slide from its sheath, you lick at that red, pointed cock.";
		say "     He rumbles and purrs in pleasure as you accept his advances and are soon sucking on his cock.  You moan around his shaft as the pleasant warmth you've been feeling from his body can now be felt flowing into your belly as his precum flows throat.  The taste of the lynx's pre is delicious and makes you hunger for more.  You rub and caress the feral cat's ballsac while he thrusts into your willing mouth until he cums.  His cum, even warmer and more delicious than his pre, fills your mouth and flows down your throat to pool in your belly, filling you with this fabulous feline's heat[if cocks of player > 0].  Feeling greatly aroused, you can't help but grab hold of your own cock and pump yourself to a powerful climax, spraying your load across yourself[end if].  The feline, finished with you, slides his spent shaft from your mouth and nuzzles you with a purr before padding off.  Still awash in pleasure, you lie there for a while and enjoy the hot and full feeling coming from your bellyful of semen.";
	otherwise if lynxfun is 3:		[gives oral]
		say ".  He paws at your clothes and geaf, forcing you to divest yourself of them lest they be damaged by his claws.  Once he's gotten any obstructions away from your loins, he nuzzles at your cock and starts licking over it with his rough, warm tongue.  You moan in response, the heat from his breath and sliding tongue exciting you further until you're fully hard and the feline is licking and sucking on your cock eagerly[if cunts of player > 0].  He pays your pussy no mind, his attention clearly focused on your maleness[end if].";
		say "     Bringing your hands to the lustful feline's head, you run your carefully over his fiery head, which happily doesn't burn you.  You can feel the gentle flickering of the flames against your fingers and the warmth from the fire, but it only feels warm and not burning hot.  You start thursting up into the feline's muzzle while stroking its ears and running your fingers through its fur.  It purrs all the more, which adds a pleasant rumbling sensation through your loins that soon has you cumming hard down the lynx's throat as you feed him your creamy load until your balls are drained.  His tasty meal over, the flaming lynx licks his muzzle and nuzzles you before padding away, his flames brighter and more vibrant than when he arrived.  You flop back onto the ground, panting softly as you feel the delightful warmth from your encounter slowly fading from you.";


to say beattheflaminglynx:
	let lynxfun be 0;
	if cocks of player > 0:
		say "     Beaten, the fiery feline's flames die down, going low as the lynx mewls in pain.  He turns around and raises his hindquarters and flags his short tail, exposing his rump and tight tailhole to you, submitting to the victor.  He releases a soft mewl, this time with more longing to it as a ripple of rainbow-coloured flames run across his body as he lowers his forequarters to further display his waiting hole.  You find yourself momentarily considering taking this strange feline up on his offer";
		if cunts of player > 0:
			say ".  Would you like to [link]mount the flaming cat (1)[as]1[end link], get him to [link]suck your cock (2)[as]2[end link], relieve your [link]female needs (3)[as]3[end link] with the vibrant kitty, have him [link]fuck your ass (4)[as]4[end link] or [link]let him go (0)[as]0[end link]?";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 4:
				say "Choice? (0-4)>[run paragraph on]";
				get a number;
			if calcnumber is 1:
				now lynxfun is 1;
			otherwise if calcnumber is 2:
				now lynxfun is 2;
			otherwise if calcnumber is 3:
				say "     As you reach for the feline with one hand and slide your other to tease as your wet pussy in anticipation of getting him to scratch your female itch, he hisses and leaps away.  His flames surge in a burst as he runs, leaving a streak of flames behind as he rockets off at surprising speed down the dark tunnels.  The flames fade quickly, thankfully doing no more damage than a scorchmark.";
			otherwise if calcnumber is 4:
				now lynxfun is 4;
			otherwise:
				now lynxfun is 3;
		otherwise:
			say ".  Would you like to [link]mount the flaming cat (1)[as]1[end link], get him to [link]suck your cock (2)[as]2[end link], have him [link]fuck your ass (3)[as]3[end link] or [link]let him go (0)[as]0[end link]?";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 3:
				say "Choice? (0-3)>[run paragraph on]";
				get a number;
			if calcnumber is 1:
				now lynxfun is 1;
			otherwise if calcnumber is 2:
				now lynxfun is 2;
			otherwise if calcnumber is 3:
				now lynxfun is 4;
			otherwise:
				now lynxfun is 3;
	otherwise:
		say "     Beaten, the fiery feline slinks back a few steps before turning around and running.  His flames surge in a burst as he runs, leaving a streak of flames behind as he rockets off at surprising speed down the dark tunnels.  The flames fade quickly, thankfully doing no more damage than a scorchmark.";
	if lynxfun is 1:
		say "     Deciding to take the exotic feline up on its offer, you grab his firm rear in your hands and knead it.  His fur is merely warm and his flames are no longer scorching.  He gives a needy mewl as you tease your thumb at his tailhole, finding it easily spreading open for you.  With the kitty ready and willing to be mounted, you don't waste any more time and press your cock to his pucker, easing yourself into his feline body.  His tight hole is delightfully warm, making your hard rod pulse with eagerness[if cock length of player > 24].  He seems particularly pleased with your massive endowment and yowls lustfully and eagerly[otherwise if cock length of player > 12].  Your large cock fills the feline's tight bottom, making him yowl lustfully[end if].  You start thrusting into him, watching the lustful animal pant and mewl in pleasure with every thrust you make into him.  Given the feline's disposition, it's clear he's done this before and is more than happy to do it again.  His inner muscles squeeze around your cock, rubbing his silky smooth walls against you and milking at your shaft almost as if a hand were stroking you off.";
		say "     Clearly built for this kind of fun, the lustful lynx digs his claws into the floor and pushes back harder, which you happily oblige by pounding into him harder.  When he cums and his inner walls clamp down around you in a flurry of motion, you are set off as well, blasting your seed into him in heavy bursts.  He rumbles and purrs as you fill his bowels with your cum[if cock width of player > 40], loading the flaming feline's belly down with your ample sperm[otherwise if cock width of player > 20], stuffing the flaming feline's belly with your sizeable load[end if]
.  His flames ripple with another shimmer of colours and grow brighter.  Once he's been fueled up with your semen, you release him and let him head off, his flames brighter and more colourful than they were when he arrived.";
	otherwise if lynxfun is 2:
		say "     Not interested in mounting the kitty, but still wanting some fun, you give his rear a swat and take him by the scruff of the neck.  His fur is merely warm and his flames are no longer scorching.  You drag the flaming feline's head around, pressing his muzzle to your [if cocks of player > 1]cocks[otherwise]cock[end if], which he starts licking at without hesitation.  You scritch the kitty's ears and press his muzzle forward, sinking your cock into his mouth.  His maw is delightfully warm, making your hard rod pulse with eagerness.  You start thrusting into him with his rough, feline tongue slides across your sensitive flesh.  Given the feline's disposition, it's clear he's done this before and is more than happy to do it again[if cock length of player > 12], working the full length of your [cock size desc of player] cock into his muzzle and down his throat.  His slick muzzle and eager tongue massage at your manmeat, [end if], giving you a wonderful blow job that has you cum with a loud groan in the end.  He swallows down all you can give, rumbling and purring as he does[if cock width of player > 40], loading the flaming feline's belly down with your ample sperm[otherwise if cock width of player > 20], stuffing the flaming feline's belly with your sizeable load[end if].  His flames ripple with another shimmer of colours and grow brighter.  Once he's been fueled up with your semen, you release him and let him head off, his flames brighter and more colourful than they were when he arrived.";
	otherwise if lynxfun is 3:
		say "     You shake your head at the eager kitty and give his rear a swat to send him on his way.  He gives a disappointed mewl and pads off down the tunnels.  The light from his presence gradually fades as he heads off down tunnels until he's out of sight completely, leaving you once more in the dark save for your own light source.";
	otherwise if lynxfun is 4:
		say "     Still wanting to get the flaming lynx's cock in your ass, but just on your own terms, you grab the horny kitty and push him over.  His fur is merely warm and his flames are no longer scorching.  Taking a hold of his stiff member, you stroke it to full erection and spread his pre along it as it dribbles down over your fingers.  Once you've gotten him nice and slick, you straddle the oversized feline and bring you hips into position[if cunts of player > 0].  He seems briefly worried and eyes your cunt warily, but is relieved when it is your asshole you press against his pulsing shaft[otherwise].  He mrowls and ripples with colour as you press his pulsing shaft to your asshole[end if].";
		say "     You moan softly as you push down onto him, his slick shaft sliding into your tight bottom and filling you nicely.  His fur gives another ripple of colour as you stroke his tummy and scritch his ears while riding him.  Warmth begins to suffuse into you from your stuffed ass, increasing your pleasure and arousing you greatly.  The feline's paws twitch in the air, trying in vain to find purchase to fuck you harder, but you're setting the pace and work to ensure your own enjoyment foremost.  Regardless of his instincts wanting him to be mounting you, he's still quite happy being ridden like this, if his rumbling purr is to be an accurate sign.";
		say "     You have a very enjoyable time riding the animalistic mutant, squeeze down on his feline shaft and working it to rub at all your most sensitive spots just the way you like it.  When you finally cum and splatter your seed across his fur, his flames seem to surge and ripple with a rainbow excitement.  His shaft pulses and throbs in you as this rush of energy sends him over the edge, the heat filling you as he cums, sending shot after shot of deliciously hot semen into your bowels.  You wait until you're both done before easing off of the flaming lynx and letting him up.  His flames seem more vibrant and colourful after your fun and he dashes off while purring loudly.[mimpregchance]";


to say flaminglynxattack:
	let randomtarget be "[one of]ankle[or]leg[or]thigh[or]rear[or]forearm[or]wrist[or]arm[or]side[or]belly[at random]";
	say "[one of]The fiery creature strikes at you with one of his paws![or]The large lynx growls and bites your [randomtarget]![or]The flaming lynx tries to tackle you with his body as his flames surge higher![or]The feral feline slashes at you with its claws, digging them into your [randomtarget]![or]The flames across the creature's back rise higher moments before a wave of fire blasts into you![at random]";

to say flaminglynxdesc:
	say "     Before you is an oversized lynx-like creature that is vibrantly visible even in these dark, underground tunnels.  This strange animal is roughly the size of a large dog or wolf and covered in rippling flames.  These short flames flicker across its furred body with an occasional rainbow sheen to them without harm to the large feline.  The coat itself is a blend of reds, yellows and oranges with charcoal black markings mixed in.  The flames are stronger at the lynx's characteristic cheek ruffs and across the tufts atop its ears as well as the tip of its short tail.  Beneath the creature's belly you can see the hanging bulge of his sheath and balls.  He growls softly and pads closer to you, the lamplight fire around its body swelling to full flames.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Flaming Lynx";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[flaminglynxattack]";
	now defeated entry is "[beattheflaminglynx]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetoflaminglynx]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[flaminglynxdesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "that of a lynx with tufted ears and a sizeable cheekruff of fluffy fur";
	now body entry is "transformed into that of a quadrupedal feline.  You have the stocky build of a lynx, but expanded to roughly the size of a wolf or large dog.  Your hands and feet have become large, padded paws hiding sharp claws";
	now skin entry is "[one of]flaming fur[or]fiery fur[or]flame-coloured fur[at random]";
	now tail entry is "You have short lynx-like tail with a flaming tip.";
	now cock entry is "[one of]red[or]feline[at random]";
	now face change entry is "a feline muzzle and whiskers form on your face.  You can't help but yowl as your head reshapes itself into that of a lynx";
	now body change entry is "your posture changes to one that prefers walking on all fours, though you manage to retain the ability to walk upright with some effort for now.  Your body reshapes itself to become one of a strong, stocky feline with large, padded paws";
	now skin change entry is "you heat seems to pour from your body, making the air around you ripple.  A coat of fluffy fur spreads across your body in a mix of reds, oranges and yellows marked by charcoal black in the pattern of a lynx.  As the last of this fur grows in the heat grows further and small flames begin to flicker across your furry coat";
	now ass change entry is "you gain a short lynx tail with red fur and a flaming tip";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it gains a sheath and takes on a redder hue with a feline shape to it";
	now str entry is 12;			[ These are now the creature's stats... ]
	now dex entry is 20;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12;			[ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 60;			[ The monster's starting hit points. ]
	now lev entry is 9;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 10;			[ Monster's average damage when attacking. ]
	now area entry is "Mall";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 5;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 45;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]stocky[purely at random]";
	now type entry is "[one of]feline[or]lynx[purely at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "firebreath";	[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

when play ends:
	if bodyname of player is "Flaming Lynx":
		if humanity of player is less than 10:
			if cocks of player > 0:
				say "     As your mind falls into a constant cycle of depravity, you find yourself eagerly returning to the sewers where you faintly recall another flaming kitty waiting for you.  Happily pouncing on the other fiery feline, once you find the beacon of his shimmering form glowing hot within the darkness of the underground passageways, you spend the next several hours reacquainting yourself with the flaming feline - nuzzling, licking, grooming and passionately fucking the other, allowing yourself to be mounted in turn once your low hanging orbs have become empty, before settling down to take a pleasant catnap next to your new companion[if cunts of player > 0].  In the days to come you find yourself ignoring your feline twat, as your new companion seems to almost completely disregard that part of you[end if].";
				say "     You and your companion subsist on the lingering natural gas in the city's pipes for your flames, though your passions for male sex also fuels your fiery pelts.  When the soldiers comes in to clean up the city, you and your companion use the sewer system to circumvent most of them.  Once at the edge of the city, you blaze through the military's blockades, literally setting many of the barriers on fire, before you and your new friend head out into the bright unknown world together.";
			otherwise if cunts of player > 0:
				say "     As your mind falls into a constant cycle of depravity, you find yourself unsure of where to go next.  With your feline twat nestled deep between your legs, you instinctively know that you would not be welcomed among your new flaming feline family.  Lacking any proper direction of your own, you find yourself settling into hiding out at a gas station with a few motorized mutants.  In trade for your companionship, you share in their supply of gasoline to [if player is fireskinned]fuel your fiery hide[otherwise]stoke your inner fires[end if].  By the time the military forces come through the city, you've descended fully into your role as the animal pet for the others living there - going around on all fours, guarding their territory around the gas station and getting fucked by their pistoning rods.";
			otherwise:
				say "***Neuter ending needed.";
		otherwise:
			if the player is fireskinned:
				say "     Having retained your sense of identity until the military arrives, you find yourself being quarantined by your rescuers.  As scientist from all over try to figure out how you're able to constantly retain the flames along your body within being burned or burning everything around you, you are subjected to a battery of tests.  Finding yourself bored with being poked and prodded, you spend your time teasing some of the military men who have been giving you several questioning looks.";
				say "     The most eager of the soldiers on duty find a way to 'help' you relieve some of the stress of being confined inside of the quarantine facility by showing you to the staff room when no one is on duty.  Least to say, military boys definitely know how to throw a good fuck around[if cunts of player > 0 and cocks of player > 0].  Your dual gendered body seems draws forth a lot of excitement from the military men, and women, as both sexes find pleasure in your flaming feline form[end if].";
				say "     Once you're been given an anti-infection injection, you are cleared to leave and happily make your way out of the stuffy facility, but not before being given several numbers to call for work in the military's R&D program.  It seems that RSX is quite eager to try and find a new, reusable form of energy to help society get back on its feet.  You debate with yourself for a while before you decide what to do with the numbers.";
			otherwise:
				say "     Having retained your sense of identity until the military arrives, you find yourself detained like so many others while the survivors are processed.  It seems your form is unique among those rescued from the city and so is subject to additional testing.  You are questioned about the creature that infected you, though you can give little in the way of answers.  Eventually, you are released and left to find a place for yourself in this new world.  Able to endure heat better than most, you get employment in a foundry which works to recycle the large amounts of metal trash left behind into fresh materials for reconstruction.";
				if cocks of player > 0 or cunts of player > 0 and charisma of player > 14:
					say "     You become quite popular among the staff, taking on the unofficial role of company mascot.  Breaktime often involves one or more of your fellow employees slaking their fiery lusts upon you after several hours working the smelters and forges[if the player is impreg_ok].  You bear many offspring from your coworkers, often having no idea whose child you're having at any given time.  Many of your children grow up to join the company, working alongside you - both at the job and in the break room, further expanding the company's workforce as they become pregnant as well[end if].";


Flaming Lynx For FS ends here.