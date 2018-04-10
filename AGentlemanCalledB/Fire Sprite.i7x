Version 1 of Fire Sprite by AGentlemanCalledB begins here.
"Adds an Fire Sprite creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

FireSpritemode is a number that varies. FireSpritemode is usually 0.

to say losetoFireSprite:
	if FireSpritemode is 0: [girl]
		if cocks of player > 0 and cock length of player < 24:
			say "[FemaleFireSpriteVicVag]";
		else:
			say "[FemaleFireSpriteVicOral]";
	else:		[guy]
		if ( cunts of player is 0 and "Less Anal" is not listed in feats of player and a random chance of 3 in 5 succeeds ) or ( cunts of player > 0 and "Less Anal" is not listed in feats of player and a random chance of 1 in 8 succeeds ) or ( cunts of player > 0 and "More Anal" is listed in feats of player and a random chance of 3 in 5 succeeds):
			say "[MaleFireSpriteVicAnal]";
		else if cunts of player > 0 and a random chance of 4 in 5 succeeds:
			say "[MaleFireSpriteVicAnal]";
		else:
			say "[MaleFireSpriteVicOral]";

to say MaleFireSpriteVicVag:
	say "     Beaten by the fiery sprite, you fall to the ground as he prances around gleefully. Poking and prodding you with small wicks of flame to maneuver you into the position he wants, the sprite eventually has you on your back, legs spread before him. After some gentle teasing that borders between pleasure and pain with a fiery finger, the sprite finally gets on to the main event, aligning his already excited member with your dripping cunt before sinking the hot meat into you. As the small sprite pounds away at you, you feel the warmth of his cock and fiery pre sinking into your body, filling you with a pleasurable heat. With the sprite's pace quickening, the heat quickly begins to overwhelm you, pushing you to a fiery climax as the sprite fills you with his molten load. A chill runs through you as the sprite pulls out, leaving you there, his glowing, still-warm cum drooling from your cunt as he scampers off into the city.";

to say MaleFireSpriteVicOral:
	say "     Beaten by the fiery sprite, you fall to the ground as he prances around gleefully. Poking and prodding you with small wicks of flame to maneuver you into the position he wants, the sprite eventually has you slouched against [one of]a car[or]some rubble[or]a wall[at random], facing him. The excited sprite grins maniacally as he steps into your lap, pressing the tip of his warm cock between your lips as he reaches around to the back of your head, gripping you firmly. With his warm member filling your mouth, you feel the heat of his pre running down your throat as he pounds into you, fucking your face to a powerful climax, filling your belly with his molten load. A chill runs through you as the sprite pulls out, leaving you there, his warm, glowing cum dripping from the corner of your mouth as he scampers off into the city.";

to say MaleFireSpriteVicAnal:
	say "     Beaten by the fiery sprite, you fall to the ground as he prances around gleefully. Poking and prodding you with small wicks of flame to maneuver you into the position he wants, the sprite eventually has you on your belly with your ass propped up in the air before him. After some gentle teasing that borders between pleasure and pain with a fiery finger, the sprite finally gets on to the main event, aligning his already excited member with your ass before sinking the hot meat into you. As the small sprite pounds away at you, you feel the warmth of his cock and fiery pre sinking into your body, filling you with a pleasurable heat. With the sprite's pace quickening, the heat quickly begins to overwhelm you, pushing you [if cunts of player > 0 or cocks of player > 0]to a fiery climax[else]to wail out in pleasure[end if] as the sprite fills you with his molten load. A chill runs through you as the sprite pulls out, leaving you there, his warm, glowing cum still drooling from your ass as he scampers off into the city.";

to say FemaleFireSpriteVicOral:
	say "     Beaten by the fiery sprite, you fall to the ground as she prances around gleefully. Poking and prodding you with small wicks of flame to maneuver you into the position she wants, the sprite eventually has you slouched against [one of]a car[or]some rubble[or]a wall[at random], facing her. The excited sprite grins maniacally as she steps into your lap, pressing your face into her steaming cunt. As she grinds her lips against your own, you feel the sweet warmth of her feminine juices leaking into your mouth, compelling you to dig in for more. As you being to lick and tease at her folds, the sprite begins grinding against your face, stroking the back of your head as she rides your tongue to a powerful climax, soaking you in her steaming hot juices. A chill runs over you as the sprite steps away, leaving you there, coated in her warm honey as she scampers off into the city.";

to say FemaleFireSpriteVicVag:
	say "     Beaten by the fiery sprite, you fall to the ground as she prances around gleefully. Poking and prodding you with small wicks of flame to maneuver you into the position she wants, the sprite eventually has you laying on your back with your throbbing maleness exposed. Teasing you to full erection with a fiery touch that borders between pleasure and pain, the small sprite is soon positioned above you, slowly sinking herself down onto your burning member. With a gleeful giggle she begins bouncing in your lap, riding your cock eagerly. With the heat of her drooling cunt wrapped around your glans, squeezing and clenching you as she bounces, the pleasure soon begins to overwhelm you, pushing you to a powerful climax as she soaks your crotch in her steaming juices with an orgasm of her own. A chill runs over you as she pulls herself off your exhausted member, leaving you soaked in her warm honey as she scampers off into the city.";

to say beattheFireSprite:
	if cocks of player > 0 or cunts of player > 0:
		say "     With a final blow, you knock the sprite to the ground, pinning [if FireSpritemode is 0]her[else]him[end if] there with your foot. You could have some fun with the sprite if you wanted to (Y/N).";
		if the player consents:
			if FireSpritemode is 0:
				say "[beatFireSpritegirl]";
			else:
				say "[beatFireSpriteguy]";
		else:
			say "     Deciding against having some fun with the sprite, you release it and send it scampering off into the city with a light kick in the ass.";
	else:
		say "     With a final blow, you knock the sprite to the ground, pinning [if FireSpritemode is 0]her[else]him[end if] there with your foot. You consider having some fun with the sprite for a moment, but lacking any proper equipment to do so, you release it and send it scampering off into the city with a light kick in the ass.";

to say beatFireSpriteguy:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cocks of player > 0 and cock length of player > 24:
		choose a blank row in table of fucking options;
		now title entry is "Masturbation";
		now sortorder entry is 1;
		now description entry is "have the sprite stroke you off";
	if cocks of player > 0 and cock length of player < 24:
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 2;
		now description entry is "fuck the sprite's ass";
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "get fucked";
		now sortorder entry is 3;
		now description entry is "ride the sprite's cock";
	if cunts of player > 0 and cunt length of player > 24:
		choose a blank row in table of fucking options;
		now title entry is "Insertion";
		now sortorder entry is 4;
		now description entry is "use the sprite as a 'special' toy";
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now sortorder entry is 5;
		now description entry is "have the sprite eat you out";
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Blow job";
		now sortorder entry is 6;
		now description entry is "have the sprite suck you off";
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number (1-[number of filled rows in table of fucking options])> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			choose row calcnumber in table of fucking options;
			say "Confirmation: Would you like to [description entry]?";
			if player consents:
				now sextablerun is 1;
				if title entry is "Masturbation":
					say "[FireSpriteMasturebate]";
				else if title entry is "Anal":
					say "[FuckFireSprite]";
				else if title entry is "get fucked":
					say "[RideFireSpriteCock]";
				else if title entry is "Insertion":
					say "[FireSpriteInsertion]";
				else if title entry is "Cunnilingus":
					say "[FireSpriteCunnilingus]";
				else if title entry is "Blow job":
					say "[FireSpriteBlowJob]";
		else:
			say "Invalid Option.";

to say beatFireSpritegirl:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cocks of player > 0 and cock length of player > 24:
		choose a blank row in table of fucking options;
		now title entry is "Masturbation";
		now sortorder entry is 1;
		now description entry is "Have the sprite stroke you off";
	if cocks of player > 0 and cock length of player < 24:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her";
		now sortorder entry is 2;
		now description entry is "fuck the sprite's pussy";
	if cunts of player > 0 and cunt length of player > 24:
		choose a blank row in table of fucking options;
		now title entry is "Insertion";
		now sortorder entry is 3;
		now description entry is "use the sprite as a 'special' toy";
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now sortorder entry is 4;
		now description entry is "have the sprite eat you out";
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Blow job";
		now sortorder entry is 5;
		now description entry is "have the suck you off";
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number (1-[number of filled rows in table of fucking options])> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			choose row calcnumber in table of fucking options;
			say "Confirmation: Would you like to [description entry]?";
			if player consents:
				now sextablerun is 1;
				if title entry is "Masturbation":
					say "[FireSpriteMasturebate]";
				else if title entry is "Fuck her":
					say "[FuckFireSprite]";
				else if title entry is "Insertion":
					say "[FireSpriteInsertion]";
				else if title entry is "Cunnilingus":
					say "[FireSpriteCunnilingus]";
				else if title entry is "Blow job":
					say "[FireSpriteBlowJob]";
		else:
			say "Invalid Option.";

to say FuckFireSprite:
	say "     Deciding to make use of the beaten sprite, you remove your gear and prepare for some fun. Taking a seat, you lift the sprite into your lap, holding the squirming critter above your erect member. After aligning [if FireSpritemode is 0]her[else]him[end if] with your member, you slowly push [if FireSpritemode is 0]her[else]his[end if] form down onto your ready flesh, splitting [if FireSpritemode is 0]her tight netherlips[else]his ass[end if] with a groan of relief. Once hilted inside [if FireSpritemode is 0]her[else]him[end if], you take hold of [if FireSpritemode is 0]her[else]his[end if] waist and begin pistoning [if FireSpritemode is 0]her[else]him[end if] up and down your length. Soon the warm, squeezing passage milking your cock becomes too much and you orgasm powerfully, filling the tiny sprite's [if FireSpritemode is 0]womb[else]bowels[end if] with your load. Releasing the sprite as you slouch back into your seat, [if FireSpritemode is 0]she[else]he[end if] slides limply off your member before climbing to [if FireSpritemode is 0]her[else]his[end if] feet and stumbling away, your [cum load size of player] load still leaking from [if FireSpritemode is 0]her cunt[else]his ass[end if].";

to say FireSpriteMasturebate:
	say "     Deciding to make use of the beaten sprite, you remove your gear and prepare for some fun. After sizing the little creature up, you decide your massive member is just too much for [if FireSpritemode is 0]her[else]his[end if] tiny form. Endeavoring to make use of your little plaything, you press [if FireSpritemode is 0]her[else]his[end if] entire body against your throbbing cock, stroking its entire length with [if FireSpritemode is 0]her[else]his[end if] small, warm form. Soon the sprite has [if FireSpritemode is 0]her[else]his[end if] arms wrapped around you, grinding [if FireSpritemode is 0]her[else]his[end if] body against you as you use [if FireSpritemode is 0]her[else]him[end if] to stroke yourself off. Through your combined efforts, your balls are soon tensing up in anticipation as you quickly approach climax, blowing your [cum load size of player] load into the air. As your cum showers down atop the sprite, you finally release [if FireSpritemode is 0]her[else]him[end if], basking in your afterglow as [if FireSpritemode is 0]she[else]he[end if] scampers off while doing [if FireSpritemode is 0]her[else]his[end if] best to shake off your sticky mess.";

to say RideFireSpriteCock:
	say "     Deciding to make use of the beaten sprite, you remove your gear and take a seat out on the ground. Pulling the little sprite towards your groin, you position his already firm prick in front of your hungry pussy and wrap your legs around his [if scalevalue of player > 1]small [end if]form, pulling his entire body against your crotch as you press his length into your slick slit. Your body fills with warmth as you envelope his orange flesh, and soon you begin rocking his entire body against your groin as you do your best to ride his [if scalevalue of player > 1]smaller [end if]form to climax, your spasming cunt gripping his warm member as his own climax sends powerful spurts of his warm seed deep within you. Releasing the sprite, you relax on the ground in the afterglow of your climax as he pulls out with a wet slurp, allowing some of his glowing orange semen and your own femcum to drool from your pussy as he scampers off.";

to say FireSpriteCunnilingus:
	say "     Deciding to make use of the beaten sprite, you remove your gear and stretch out on the ground. You press the little sprite's face to your groin, pressing [if FireSpritemode is 0]her[else]his[end if] lips to your own damp netherlips. Having little other option, the sprite begins working [if FireSpritemode is 0]her[else]his[end if] tongue into your moist passage, reaching deeper and deeper as you press harder against the back of [if FireSpritemode is 0]her[else]his[end if] head, partially forcing their face inside you. With the top of [if FireSpritemode is 0]her[else]his[end if] nose rubbing against your clit, you begin pistoning your hips against the sprite's head, shaking [if FireSpritemode is 0]her[else]his[end if] small body roughly as you ride [if FireSpritemode is 0]her[else]his[end if] face to a powerful orgasm. Releasing the sprite's head, you lay back on the ground to bask in the afterglow of your climax, allowing [if FireSpritemode is 0]her[else]him[end if] to pull away from your cunt with a wet slurp and scamper off.";

to say FireSpriteBlowJob:
	say "     Deciding to make use of the beaten sprite, you remove your gear and stretch out on the ground. You press the little sprite's face to your groin, pressing [if FireSpritemode is 0]her[else]his[end if] lips to your member. Having little other option, the sprite parts [if FireSpritemode is 0]her[else]his[end if] lips, taking your [cock size desc of player] [cock of player] cock into [if FireSpritemode is 0]her[else]his[end if] warm, wet mouth. Gripping the back of [if FireSpritemode is 0]her[else]his[end if] head, you begin humping the small creature's face, spurts of your pre running down [if FireSpritemode is 0]her[else]his[end if] throat as you pound into [if FireSpritemode is 0]her[else]his[end if] mouth. Soon the sprite is eagerly sucking and licking at your cock, further pushing you towards a powerful orgasm. You fill the tiny sprite's mouth with your [cum load size of player] load, most of it forced down [if FireSpritemode is 0]her[else]his[end if] throat into [if FireSpritemode is 0]her[else]his[end if] belly. Sated, you release the sprite's head, allowing the sprite to scamper off into the city as you recover.";

to say FireSpriteInsertion:
	say "     Deciding to make use of the beaten sprite, you remove your gear and stretch out on the ground. After sizing the little creature up, you decide [if FireSpritemode is 0]she[else]he[end if] is just the right size for some...special fun. [if FireSpritemode is 0]Her[else]His[end if] eyes go wide as you push [if FireSpritemode is 0]her[else]his[end if] head towards your gaping pussy, pressing [if FireSpritemode is 0]her[else]his[end if] face against you wanton folds. Pinning the squirming sprite's arms against their waist, you grab hold of [if FireSpritemode is 0]her[else]his[end if] body and press [if FireSpritemode is 0]her[else]him[end if] deeper into your drooling cunt. With an audible slurp, the sprite's entire head slips inside you, sending waves of pleasure through you as you climax powerfully, soaking your little plaything's body in your feminine juices. With the afterglow of your first climax still rolling through you, you begin working the warm sprite deeper into your cunt, fresh waves of pleasure rolling through you with every inch of the little creature that disappears inside you. When you feel the squirming sprite's head pressing against your cervix, you finally stop pushing, and begin pulling the creature's tiny form back out, working [if FireSpritemode is 0]her[else]him[end if] back and forth inside your quivering tunnel like a living dildo. After using the poor creature to pleasure yourself to several more powerful climaxes you finally pull them out with a long wet slurp. Laying back on the ground to recover from your multiple orgasms, you watch the little [if FireSpritemode is 0]gal[else]guy[end if] stumble away, coughing and sputtering up your feminine juices as [if FireSpritemode is 0]she[else]he[end if] goes.";

to say FireSpritedesc:
	choose row monster from the table of random critters;
	now FireSpritemode is a random number between 0 and 1;
	if guy is banned and girl is banned:		[if both types are banned, the fight is aborted and removed from critter table]
		say "     Meet a fire sprite, but it runs away.";
		blank out the whole row;
		now fightoutcome is 19;
		now combat abort is 1;
		now FireSpritemode is 2;
	else if guy is banned:
		now FireSpritemode is 0;
	else if girl is banned:
		now FireSpritemode is 1;
	else if guy is warded and girl is warded:
		now FireSpritemode is a random number between 0 and 1;
	else if ishunting is true:	[hunting results in 2/3rds chance to get unwarded option]
		if guy is warded and a random chance of 1 in 3 succeeds:
			now FireSpritemode is 0;
		else if girl is warded and a random chance of 1 in 3 succeeds:
			now FireSpritemode is 1;
	else if ishunting is false:
		if guy is warded:
			now FireSpritemode is 0;
		else if girl is warded:
			now FireSpritemode is 1;
	say "     As you're working your way through the difficult terrain of the ruined capital, [one of]you hear a maniacal giggle behind you. You turn slowly[or]a fireball zips past you, narrowly missing your head. You spin around quickly[or]you turn a corner[at random] and find yourself face to face with a small elfin creature.";
	if FireSpritemode is 0: [Female]
		setmongender 4;      [creature is female]
		say "     The sprite before you is not much more than two feet tall, with bright orange flesh and slim feminine features. While decidedly small compared to many of the creatures you've seen around, her perky C cup breasts seem quite large compared to her lithe body, and her long orange and [one of]red[or]white[at random] hair seems to shimmer as she moves, flickering like a fire.";
		say "     Small wisps of flame occasionally flare from her exposed flesh, increasing in frequency as they seem to run down her arm, pooling in her palm as a ball of flame, which she raises threateningly as she approaches you with a maniacal grin.";
	if FireSpritemode is 1: [Male]
		setmongender 3;      [creature is male]
		project the figure of FireSpriteMale_icon;
		say "     The sprite before you is not much more than two feet tall, with bright orange flesh and slim features. While his exposed 6 inch cock is decidedly small compared to many of the creatures around, it seems quite large compared to his lithe form. His short orange and [one of]red[or]white[at random] hair seems to shimmer as he moves, flickering like a fire.";
		say "     Small wisps of flame occasionally flare from his exposed flesh, increasing in frequency as they seem to run down his arm, pooling in his palm as a ball of flame, which he raises threateningly as he approaches you with a manical grin.";
	now sex entry is "Female";
	if "Male Preferred" is listed in the feats of the player, now sex entry is "Male";
	if "Herm Preferred" is listed in the feats of the player, now sex entry is "Both";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Fire Sprite";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "The fire sprite [one of]prances about wildly, distracting you long enough to sneak in a quick strike[or]strikes you with a fiery fist[or]kicks you in the shin with a flaming foot[or]weaves under your defenses, landing a sharp blow[at random]!";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beattheFireSprite]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetoFireSprite]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[FireSpritedesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "mostly human with slim features and pointed elven ears. You have long locks of orange and red hair that seem to shimmer and flicker like fire.";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a small, energetic sprite";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "warm, smooth orange flesh. Occasionally small wisps of flame flare from your exposed";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "";	[ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "glowing orange human-like";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "slim elfin features overtake it, framed by long orange and red hair"; [ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "it fills with a strange, unnatural heat. [if scalevalue of player > 1]The world seems to grow around you and y[else]Y[end if]ou take on a slim, human-like shape";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "you begin sweating, heat seeming to radiate off you as your flesh takes on a smooth orange appearance";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it becomes tight and firm";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it begins to radiate with warmth, taking on a warm orange hue";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 10;					[ These are now the creature's stats... ]
	now dex entry is 17;					[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12;					[ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 10;
	now cha entry is 15;
	now sex entry is "Female";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now HP entry is 30;						[ The monster's starting HP. ]
	now lev entry is 3;					[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 5;					[ Monster's average damage when attacking. ]
	now area entry is "Capitol";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;					[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 6;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 3;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;				[ Number of breasts the infection will give a player. ]
	now breast size entry is 3;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;					[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 9;	[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 50;				[ Target libido the infection will rise towards. ]
	now loot entry is "glowing ember";					[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 30;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 1;					[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slim[or]lithe[or]small[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "elfin";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "FireSprite";		[ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"FireSprite"	retaliation rule	--	--	FireBallBarrage rule	15	--	--	--	--	--

this is the FireBallBarrage rule:		[Multiple low damage hits]
	let N be 0;
	let M be 1;
	let P be 0;
	say "     The sprite winds up, preparing to launch a barrage of fireballs!";
	while N is 0:
		choose row monster from the table of random critters;
		let dam be ( wdam entry * a random number between ( 45 - ( peppereyes * 4 ) ) and 85 ) / 100;
		if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
			now dam is (dam * 150) divided by 100;
			say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
		if P is 0:
			say "     The first fireball strikes you [one of]in the shoulder[or]squarely in the chest[or]in the leg[at random], causing a searing pain as you try and shake the embers off! You take [special-style-2][dam][roman type] damage!";
		else if P is 1:
			say "     The sprite winds up and launches another fireball! You take [special-style-2][dam][roman type] damage!";
		now damagein is dam;
		say "[normalabsorbancy]";
		if absorb > dam:
			now absorb is dam;
		if absorb > 0:
			say "You prevent [special-style-1][absorb][roman type] damage!";
		decrease HP of the player by dam;
		increase HP of player by absorb;
		if M is 5:
			now N is 1;
		else if a random chance of 1 in M succeeds:
			increase M by 1;
		else:
			now N is 1;
		now P is 1;
		follow the player injury rule;
		say "You are [descr].";
		attempttowait;

Section 4 - Glowing Ember

Table of Game Objects (continued)
name	desc	weight	object
"glowing ember"	"A small glowing ember, which seems to stay warm regardless of how you store it."	0	glowing ember

glowing ember is a grab object. It is a part of the player. glowing ember is infectious. The strain of glowing ember is "Fire Sprite".

The usedesc of glowing ember is "[glowingemberuse]";

to say glowingemberuse:
	say "     Rolling the small, warm ember between your fingers you begin to find it difficult to focus on anything but its warm light. You hear the crackling of flame in the distance as you slip further and further out of focus, your vision filling with nothing but the pleasant light and flickering of flames...";
	attempttowait;
	say "     You come to your senses some time later. Glancing around, you find the small ember missing. It is hard to shake the strange desire to light something on fire.";

the scent of glowing ember is "The small ember smells faintly smoky.".

Section 5 - Endings

when play ends:
	if bodyname of player is "Fire Sprite":
		if humanity of player < 10:
			say "     As your fire sprite infection spreads through your mind like wildfire, you soon desire little more than to share the gift of the flame inside you with the world, delighting in the havoc and destruction wrought by the beautiful cleansing flames.";
			if cocks of player > 0:
				say "     Occasionally your fiery dreamscape is broken by another like you, a female sprite who you share your flame with, filling her body with the warmth of life to further aid in the spread of your mischief.";
			if ( cunts of player > 0 and "Sterile" is not listed in the feats of the player ) or "MPreg" is listed in the feats of the player:
				say "     Eventually you happen upon an excited male sprite who is diligently working to set a large structure aflame. After a short time the structure is ablaze around you, and he is atop you, filling your needy body with his hot seed, his thrusts imbued with a burning passion that easily matches the inferno around you.";
		else:
			say "     After being evacuated from the city by military forces, you have a hard time finding a place for yourself in the outside world; your small form and affinity for fire both prove to be challenges to overcome. Eventually, however, you find yourself falling in with a small group of other infected citizens, working as mercs for the various factions that slowly begin to pop up in the days to come, engaging in everything from daring rescues to simple exterminations. While you don't provide the team much in the way of raw power, your small, agile body and resistance to extreme heat prove to be useful on more than one occasion, and a well-placed fire is often just as effective in chasing off a feral as an unnecessary beating.";

Fire Sprite ends here.
