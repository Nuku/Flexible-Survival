Version 1 of Fire Sprite by AGentlemanCalledB begins here.
[ Version 1.1
	- Added missing FireSpritemode checks
	- Added missing player impreg code
	- Fixed female players never receiving vaginal when losing to a male sprite
	- Fixed genital checks being in limbo at exactly 24 cock length
	- Simplified FireSpritemode checks to reduce embedded conditionals
	- Simplified sex checks to player is male / player is female
	- By: Song
]

"Adds a Fire Sprite creature to Flexible Survival's Wandering Monsters table"

Section 0 - Flags and Tags

when play begins:
	add { "Fire Sprite" } to infections of guy;
	add { "Fire Sprite" } to infections of girl;
	add { "Fire Sprite" } to infections of humanoid;

Section 1 - Monster Responses

FireSpritemode is a number that varies. FireSpritemode is usually 0.

to say losetoFireSprite:
	if FireSpritemode is 0: [female sprite]
		if player is male and cock length of player < 25:
			say "[FemaleFireSpriteVicVag]";
		else:
			say "[FemaleFireSpriteVicOral]";
	else: [male sprite]
		if ( player is female and anallevel is 2 and a random chance of 1 in 4 succeeds ) or ( player is female and anallevel is 3 and a random chance of 1 in 2 succeeds ) or ( player is not female and anallevel > 1 and a random chance of 1 in 2 succeeds ):
			say "[MaleFireSpriteVicAnal]";
		else if player is female and a random chance of 1 in 2 succeeds:
			say "[MaleFireSpriteVicVag]";
		else:
			say "[MaleFireSpriteVicOral]";

to say MaleFireSpriteVicVag:
	say "     Beaten by the fiery sprite, you fall to the ground as he prances around gleefully. Poking and prodding you with small wicks of flame to maneuver you into the position he wants, the sprite eventually has you on your back, legs spread before him. After some gentle teasing that borders between pleasure and pain with a fiery finger, the sprite finally gets on to the main event, aligning his already excited member with your dripping cunt before sinking the hot meat into you. As the small sprite pounds away at you, you feel the warmth of his cock and fiery pre sinking into your body, filling you with a pleasurable heat. With the sprite's pace quickening, the heat quickly begins to overwhelm you, pushing you to a fiery climax as the sprite fills you with his molten load. A chill runs through you as the sprite pulls out, leaving you there, his glowing, still-warm cum drooling from your cunt as he scampers off into the city.[fimpregchance]";

to say MaleFireSpriteVicOral:
	say "     Beaten by the fiery sprite, you fall to the ground as he prances around gleefully. Poking and prodding you with small wicks of flame to maneuver you into the position he wants, the sprite eventually has you slouched against [one of]a car[or]some rubble[or]a wall[at random], facing him. The excited sprite grins maniacally as he steps into your lap, pressing the tip of his warm cock between your lips as he reaches around to the back of your head, gripping you firmly. With his warm member filling your mouth, you feel the heat of his pre running down your throat as he pounds into you, fucking your face to a powerful climax, filling your belly with his molten load. A chill runs through you as the sprite pulls out, leaving you there, his warm, glowing cum dripping from the corner of your mouth as he scampers off into the city.";

to say MaleFireSpriteVicAnal:
	say "     Beaten by the fiery sprite, you fall to the ground as he prances around gleefully. Poking and prodding you with small wicks of flame to maneuver you into the position he wants, the sprite eventually has you on your belly with your ass propped up in the air before him. After some gentle teasing that borders between pleasure and pain with a fiery finger, the sprite finally gets on to the main event, aligning his already excited member with your ass before sinking the hot meat into you. As the small sprite pounds away at you, you feel the warmth of his cock and fiery pre sinking into your body, filling you with a pleasurable heat. With the sprite's pace quickening, the heat quickly begins to overwhelm you, pushing you to [if player is neuter]wail out in pleasure[else]a fiery climax[end if] as the sprite fills you with his molten load. A chill runs through you as the sprite pulls out, leaving you there, his warm, glowing cum still drooling from your ass as he scampers off into the city.[mimpregchance]";

to say FemaleFireSpriteVicOral:
	say "     Beaten by the fiery sprite, you fall to the ground as she prances around gleefully. Poking and prodding you with small wicks of flame to maneuver you into the position she wants, the sprite eventually has you slouched against [one of]a car[or]some rubble[or]a wall[at random], facing her. The excited sprite grins maniacally as she steps into your lap, pressing your face into her steaming cunt. As she grinds her lips against your own, you feel the sweet warmth of her feminine juices leaking into your mouth, compelling you to dig in for more. As you being to lick and tease at her folds, the sprite begins grinding against your face, stroking the back of your head as she rides your tongue to a powerful climax, soaking you in her steaming hot juices. A chill runs over you as the sprite steps away, leaving you there, coated in her warm honey as she scampers off into the city.";

to say FemaleFireSpriteVicVag:
	say "     Beaten by the fiery sprite, you fall to the ground as she prances around gleefully. Poking and prodding you with small wicks of flame to maneuver you into the position she wants, the sprite eventually has you laying on your back with your throbbing maleness exposed. Teasing you to full erection with a fiery touch that borders between pleasure and pain, the small sprite is soon positioned above you, slowly sinking herself down onto your burning member. With a gleeful giggle she begins bouncing in your lap, riding your cock eagerly. With the heat of her drooling cunt wrapped around your glans, squeezing and clenching you as she bounces, the pleasure soon begins to overwhelm you, pushing you to a powerful climax as she soaks your crotch in her steaming juices with an orgasm of her own. A chill runs over you as she pulls herself off your exhausted member, leaving you soaked in her warm honey as she scampers off into the city.";

to say beattheFireSprite:
	if player is neuter:
		say "     With a final blow, you knock the sprite to the ground, pinning [if FireSpritemode is 0]her[else]him[end if] there with your foot. You consider having some fun with the sprite for a moment, but lacking any proper equipment to do so, you release [if FireSpritemode is 0]her[else]him[end if] and send [if FireSpritemode is 0]her[else]him[end if] scampering off into the city with a light kick in the ass.";
	else:
		say "     With a final blow, you knock the sprite to the ground, pinning [if FireSpritemode is 0]her[else]him[end if] there with your foot. You could have some fun with the sprite if you wanted to (Y/N).";
		if player consents:
			if FireSpritemode is 0:
				say "[beatFireSpritegirl]";
			else:
				say "[beatFireSpriteguy]";
		else:
			say "     Deciding against having some fun with the sprite, you release [if FireSpritemode is 0]her[else]him[end if] and send [if FireSpritemode is 0]her[else]him[end if] scampering off into the city with a light kick in the ass.";

to say beatFireSpriteguy:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if player is male and cock length of player > 24:
		choose a blank row in table of fucking options;
		now title entry is "Masturbation";
		now sortorder entry is 1;
		now description entry is "have the sprite stroke you off";
	if player is male and cock length of player < 25:
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 2;
		now description entry is "fuck the sprite's ass";
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Get fucked";
		now sortorder entry is 3;
		now description entry is "ride the sprite's cock";
	if player is female and cunt length of player > 24:
		choose a blank row in table of fucking options;
		now title entry is "Insertion";
		now sortorder entry is 4;
		now description entry is "use the sprite as a 'special' toy";
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now sortorder entry is 5;
		now description entry is "have the sprite eat you out";
	if player is male:
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
					say "[FireSpriteMasturbate]";
				else if title entry is "Anal":
					say "[FuckFireSprite]";
				else if title entry is "Get fucked":
					say "[RideFireSpriteCock]";
				else if title entry is "Insertion":
					say "[FireSpriteInsertion]";
				else if title entry is "Cunnilingus":
					say "[FireSpriteCunnilingus]";
				else if title entry is "Blow job":
					say "[FireSpriteBlowJob]";
				wait for any key;
		else:
			say "Invalid Option.";

to say beatFireSpritegirl:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if player is male and cock length of player > 24:
		choose a blank row in table of fucking options;
		now title entry is "Masturbation";
		now sortorder entry is 1;
		now description entry is "have the sprite stroke you off";
	if player is male and cock length of player < 25:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her";
		now sortorder entry is 2;
		now description entry is "fuck the sprite's pussy";
	if player is female and cunt length of player > 24:
		choose a blank row in table of fucking options;
		now title entry is "Insertion";
		now sortorder entry is 3;
		now description entry is "use the sprite as a 'special' toy";
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now sortorder entry is 4;
		now description entry is "have the sprite eat you out";
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Blow job";
		now sortorder entry is 5;
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
					say "[FireSpriteMasturbate]";
				else if title entry is "Fuck her":
					say "[FuckFireSprite]";
				else if title entry is "Insertion":
					say "[FireSpriteInsertion]";
				else if title entry is "Cunnilingus":
					say "[FireSpriteCunnilingus]";
				else if title entry is "Blow job":
					say "[FireSpriteBlowJob]";
				wait for any key;
		else:
			say "Invalid Option.";

to say FuckFireSprite:
	if FireSpritemode is 0:
		say "     Deciding to make use of the beaten sprite, you remove your gear and prepare for some fun. Taking a seat, you lift the sprite into your lap, holding the squirming critter above your erect member. After aligning her with your member, you slowly push her form down onto your ready flesh, splitting her tight netherlips with a groan of relief. Once hilted inside her, you take hold of her waist and begin pistoning her up and down your length. Soon the warm, squeezing passage milking your cock becomes too much and you orgasm powerfully, filling the tiny sprite's womb with your load. Releasing the sprite as you slouch back into your seat, she slides limply off your member before climbing to her feet and stumbling away, your [cum load size of player] load still leaking from her cunt.";
	else:
		say "     Deciding to make use of the beaten sprite, you remove your gear and prepare for some fun. Taking a seat, you lift the sprite into your lap, holding the squirming critter above your erect member. After aligning him with your member, you slowly push his form down onto your ready flesh, splitting his ass with a groan of relief. Once hilted inside him, you take hold of his waist and begin pistoning him up and down your length. Soon the warm, squeezing passage milking your cock becomes too much and you orgasm powerfully, filling the tiny sprite's bowels with your load. Releasing the sprite as you slouch back into your seat, he slides limply off your member before climbing to his feet and stumbling away, your [cum load size of player] load still leaking from his ass.";

to say FireSpriteMasturbate:
	if FireSpritemode is 0:
		say "     Deciding to make use of the beaten sprite, you remove your gear and prepare for some fun. After sizing the little creature up, you decide your massive member is just too much for her tiny form. Endeavoring to make use of your little plaything, you press her entire body against your throbbing cock, stroking its entire length with her small, warm form. Soon the sprite has her arms wrapped around you, grinding her body against you as you use her to stroke yourself off. Through your combined efforts, your balls are soon tensing up in anticipation as you quickly approach climax, blowing your [cum load size of player] load into the air. As your cum showers down atop the sprite, you finally release her, basking in your afterglow as she scampers off while doing her best to shake off your sticky mess.";
	else:
		say "     Deciding to make use of the beaten sprite, you remove your gear and prepare for some fun. After sizing the little creature up, you decide your massive member is just too much for his tiny form. Endeavoring to make use of your little plaything, you press his entire body against your throbbing cock, stroking its entire length with his small, warm form. Soon the sprite has his arms wrapped around you, grinding his body against you as you use him to stroke yourself off. Through your combined efforts, your balls are soon tensing up in anticipation as you quickly approach climax, blowing your [cum load size of player] load into the air. As your cum showers down atop the sprite, you finally release him, basking in your afterglow as he scampers off while doing his best to shake off your sticky mess.";

to say RideFireSpriteCock:
	say "     Deciding to make use of the beaten sprite, you remove your gear and take a seat out on the ground. Pulling the little sprite towards your groin, you position his already firm prick in front of your hungry pussy and wrap your legs around his [if scalevalue of player > 1]small [end if]form, pulling his entire body against your crotch as you press his length into your slick slit. Your body fills with warmth as you envelop his orange flesh, and soon you begin rocking his entire body against your groin as you do your best to ride his [if scalevalue of player > 1]smaller [end if]form to climax, your spasming cunt gripping his warm member as his own climax sends powerful spurts of his warm seed deep within you. Releasing the sprite, you relax on the ground in the afterglow of your climax as he pulls out with a wet slurp, allowing some of his glowing orange semen and your own femcum to drool from your pussy as he scampers off.";

to say FireSpriteCunnilingus:
	if FireSpritemode is 0:
		say "     Deciding to make use of the beaten sprite, you remove your gear and stretch out on the ground. You press the little sprite's face to your groin, pressing her lips to your own damp netherlips. Having little other option, the sprite begins working her tongue into your moist passage, reaching deeper and deeper as you press harder against the back of her head, partially forcing her face inside you. With the top of her nose rubbing against your clit, you begin pistoning your hips against the sprite's head, shaking her small body roughly as you ride her face to a powerful orgasm. Releasing the sprite's head, you lay back on the ground to bask in the afterglow of your climax, allowing her to pull away from your cunt with a wet slurp and scamper off.";
	else:
		say "     Deciding to make use of the beaten sprite, you remove your gear and stretch out on the ground. You press the little sprite's face to your groin, pressing his lips to your own damp netherlips. Having little other option, the sprite begins working his tongue into your moist passage, reaching deeper and deeper as you press harder against the back of his head, partially forcing his face inside you. With the top of his nose rubbing against your clit, you begin pistoning your hips against the sprite's head, shaking his small body roughly as you ride his face to a powerful orgasm. Releasing the sprite's head, you lay back on the ground to bask in the afterglow of your climax, allowing him to pull away from your cunt with a wet slurp and scamper off.";

to say FireSpriteBlowJob:
	if FireSpritemode is 0:
		say "     Deciding to make use of the beaten sprite, you remove your gear and stretch out on the ground. You press the little sprite's face to your groin, pressing her lips to your member. Having little other option, the sprite parts her lips, taking your [cock size desc of player] [cock of player] cock into her warm, wet mouth. Gripping the back of her head, you begin humping the small creature's face, spurts of your pre running down her throat as you pound into her mouth. Soon the sprite is eagerly sucking and licking at your cock, further pushing you towards a powerful orgasm. You fill the tiny sprite's mouth with your [cum load size of player] load, most of it forced down her throat into her belly. Sated, you release the sprite's head, allowing her to scamper off into the city as you recover.";
	else:
		say "     Deciding to make use of the beaten sprite, you remove your gear and stretch out on the ground. You press the little sprite's face to your groin, pressing his lips to your member. Having little other option, the sprite parts his lips, taking your [cock size desc of player] [cock of player] cock into his warm, wet mouth. Gripping the back of his head, you begin humping the small creature's face, spurts of your pre running down his throat as you pound into his mouth. Soon the sprite is eagerly sucking and licking at your cock, further pushing you towards a powerful orgasm. You fill the tiny sprite's mouth with your [cum load size of player] load, most of it forced down his throat into his belly. Sated, you release the sprite's head, allowing him to scamper off into the city as you recover.";

to say FireSpriteInsertion:
	if FireSpritemode is 0:
		say "     Deciding to make use of the beaten sprite, you remove your gear and stretch out on the ground. After sizing the little creature up, you decide she is just the right size for some... special fun. Her eyes go wide as you push her head towards your gaping pussy, pressing her face against you wanton folds. Pinning the squirming sprite's arms against her waist, you grab hold of her body and press her deeper into your drooling cunt. With an audible slurp, the sprite's entire head slips inside you, sending waves of pleasure through you as you climax powerfully, soaking your little plaything's body in your feminine juices. With the afterglow of your first climax still rolling through you, you begin working the warm sprite deeper into your cunt, fresh waves of pleasure rolling through you with every inch of the little creature that disappears inside you. When you feel the squirming sprite's head pressing against your cervix, you finally stop pushing and begin pulling the creature's tiny form back out, working her back and forth inside your quivering tunnel like a living dildo. After using the poor creature to pleasure yourself to several more powerful climaxes, you finally pull her out with a long, wet slurp. Laying back on the ground to recover from your multiple orgasms, you watch the little gal stumble away, coughing and sputtering up your feminine juices as she goes.";
	else:
		say "     Deciding to make use of the beaten sprite, you remove your gear and stretch out on the ground. After sizing the little creature up, you decide he is just the right size for some... special fun. His eyes go wide as you push his head towards your gaping pussy, pressing his face against you wanton folds. Pinning the squirming sprite's arms against his waist, you grab hold of his body and press his deeper into your drooling cunt. With an audible slurp, the sprite's entire head slips inside you, sending waves of pleasure through you as you climax powerfully, soaking your little plaything's body in your feminine juices. With the afterglow of your first climax still rolling through you, you begin working the warm sprite deeper into your cunt, fresh waves of pleasure rolling through you with every inch of the little creature that disappears inside you. When you feel the squirming sprite's head pressing against your cervix, you finally stop pushing and begin pulling the creature's tiny form back out, working him back and forth inside your quivering tunnel like a living dildo. After using the poor creature to pleasure yourself to several more powerful climaxes, you finally pull him out with a long, wet slurp. Laying back on the ground to recover from your multiple orgasms, you watch the little guy stumble away, coughing and sputtering up your feminine juices as he goes.";

to say FireSpritedesc:
	choose row monster from the Table of Random Critters;
	now FireSpritemode is a random number between 0 and 1;
	if guy is banned and girl is banned:		[if both types are banned, the fight is aborted and removed from critter table]
		say "     You meet a fire sprite, but it runs away.";
		now BannedStatus entry is true;
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
	if FireSpritemode is 0: [female sprite]
		setmongender 4; [creature is female]
		say "     The sprite before you is not much more than two feet tall, with bright orange flesh and slim feminine features. While decidedly small compared to many of the creatures you've seen around, her perky C cup breasts seem quite large compared to her lithe body, and her long orange and [one of]red[or]white[at random] hair seems to shimmer as she moves, flickering like a fire.";
		say "     Small wisps of flame occasionally flare from her exposed flesh, increasing in frequency as they seem to run down her arm, pooling in her palm as a ball of flame, which she raises threateningly as she approaches you with a maniacal grin.";
	if FireSpritemode is 1: [male sprite]
		setmongender 3; [creature is male]
		project the figure of FireSpriteMale_icon;
		say "     The sprite before you is not much more than two feet tall, with bright orange flesh and slim features. While his exposed six inch cock is decidedly small compared to many of the creatures around, it seems quite large compared to his lithe form. His short orange and [one of]red[or]white[at random] hair seems to shimmer as he moves, flickering like a fire.";
		say "     Small wisps of flame occasionally flare from his exposed flesh, increasing in frequency as they seem to run down his arm, pooling in his palm as a ball of flame, which he raises threateningly as he approaches you with a maniacal grin.";
	now sex entry is "Female";
	if "Male Preferred" is listed in the feats of player, now sex entry is "Male";
	if "Herm Preferred" is listed in the feats of player, now sex entry is "Both";

Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Fire Sprite"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The fire sprite [one of]prances about wildly, distracting you long enough to sneak in a quick strike[or]strikes you with a fiery fist[or]kicks you in the shin with a flaming foot[or]weaves under your defenses, landing a sharp blow[at random]!"; [ Successful attack message ]
	now defeated entry is "[beattheFireSprite]"; [ Text when monster loses. ]
	now victory entry is "[losetoFireSprite]"; [ Text when monster wins. ]
	now desc entry is "[FireSpritedesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "mostly human with slim features and pointed elven ears. You have long locks of orange and red hair that seem to shimmer and flicker like fire"; [ Face. Format as Your face is [face of player]. ]
	now body entry is "that of a small, energetic sprite"; [ Body. Format as "Your body is [body of player]." ]
	now skin entry is "warm, smooth orange flesh. Occasionally small wisps of flame flare from your exposed"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of player] skin." ]
	now tail entry is ""; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "glowing orange human-like"; [ Cock. Format as "You have a 'size' [cock of player] cock." ]
	now face change entry is "slim elfin features overtake it, framed by long orange and red hair"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "it fills with a strange, unnatural heat. [if scalevalue of player > 1]The world seems to grow around you and you[else]You[end if] take on a slim, human-like shape"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "you begin sweating, heat seeming to radiate off you as your flesh takes on a smooth orange appearance"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "it becomes tight and firm"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it begins to radiate with warmth, taking on a warm orange hue"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 10; [ These are now the creature's stats... ]
	now dex entry is 17; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12; [ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 10;
	now cha entry is 15;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 30; [ The monster's starting HP. ]
	now lev entry is 3; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5; [ Monster's average damage when attacking. ]
	now area entry is "Capitol"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 6; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 3; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 9; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 50; [ Target libido the infection will rise towards. ]
	now loot entry is "glowing ember"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 30; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 1; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slim[or]lithe[or]small[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "elfin"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "FireSprite"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;


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
		choose row monster from the Table of Random Critters;
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
		WaitLineBreak;

Section 4 - Glowing Ember

Table of Game Objects (continued)
name	desc	weight	object
"glowing ember"	"A small glowing ember, which seems to stay warm regardless of how you store it."	0	glowing ember

glowing ember is a grab object. It is a part of the player. glowing ember is infectious. The strain of glowing ember is "Fire Sprite".

The usedesc of glowing ember is "[glowingemberuse]";

to say glowingemberuse:
	say "     Rolling the small, warm ember between your fingers you begin to find it difficult to focus on anything but its warm light. You hear the crackling of flame in the distance as you slip further and further out of focus, your vision filling with nothing but the pleasant light and flickering of flames...";
	WaitLineBreak;
	say "     You come to your senses some time later. Glancing around, you find the small ember missing. It is hard to shake the strange desire to light something on fire.";

the scent of glowing ember is "The small ember smells faintly smoky.".

Section 5 - Endings

when play ends:
	if bodyname of player is "Fire Sprite":
		if humanity of player < 10:
			say "     As your fire sprite infection spreads through your mind like wildfire, you soon desire little more than to share the gift of the flame inside you with the world, delighting in the havoc and destruction wrought by the beautiful cleansing flames.";
			if player is male:
				say "     Occasionally your fiery dreamscape is broken by another like you, a female sprite who you share your flame with, filling her body with the warmth of life to further aid in the spread of your mischief.";
			if ( player is female and "Sterile" is not listed in feats of player ) or player is mpreg_ok:
				say "     Eventually you happen upon an excited male sprite who is diligently working to set a large structure aflame. After a short time the structure is ablaze around you, and he is atop you, filling your needy body with his hot seed, his thrusts imbued with a burning passion that easily matches the inferno around you.";
		else:
			say "     After being evacuated from the city by military forces, you have a hard time finding a place for yourself in the outside world; your small form and affinity for fire both prove to be challenges to overcome. Eventually, however, you find yourself falling in with a small group of other infected citizens, working as mercs for the various factions that slowly begin to pop up in the days to come, engaging in everything from daring rescues to simple exterminations. While you don't provide the team much in the way of raw power, your small, agile body and resistance to extreme heat prove to be useful on more than one occasion, and a well-placed fire is often just as effective in chasing off a feral as an unnecessary beating.";

Fire Sprite ends here.
