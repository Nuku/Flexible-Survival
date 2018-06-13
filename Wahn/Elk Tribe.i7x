Version 1 of Elk Tribe by Wahn begins here.
[Version 0.1 - New Content in development]

"Adds elk tribesmembers to Flexible Survival's Wandering Monsters table"

when play begins:
	add { "Elk Tribe Bull" } to infections of Guy;
	add { "Elk Tribe Cow" } to infections of Girl;
	add { "Elk Tribe Herm" } to infections of Hermaphrodite;
	add { "Elk Tribe Trans Bull"} to infections of Transgender;
	add { "Elk Tribe Trans Cow"} to infections of Transgender;


Section 1 - Elk Tribe Bull

to say ElkBullVictorious:
	if inasituation is true: [dealt with in the event]
		say "";
	else:
		if HP of player > 0: [player submits]
			say "     ...";
		else: [player beaten]
			say "     ...";

to say ElkBullBeaten:
	if inasituation is true: [dealt with in the event]
		say "";
	else:
		say "     After your last hit, the elk bull staggers a bit, his eyes unfocused - then he keels over with a groan and lands on his back with a loud thud. Seeing him lie on the ground, your eyes can't help but wander over his muscular form and down to his crotch.";
		say "     [bold type]What now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Have some fun with the elk.";
		say "     ([link]N[as]n[end link]) - Just leave.";
		if player consents:
			LineBreak;
			say "[BeatenElkBullSexMenu]";
		else:
			LineBreak;
			say "     You walk away after checking him over for loot.";

to say BeatenElkBullSexMenu:
	LineBreak;
	say "     What do you want to do with the male elk?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "AAA";
	now sortorder entry is 1;
	now description entry is "AAAA.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "BBB";
	now sortorder entry is 2;
	now description entry is "BBBB.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "CCC";
	now sortorder entry is 3;
	now description entry is "CCCC.";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "DDD";
		now sortorder entry is 4;
		now description entry is "DDDD.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "AAA"):
					say "[BeatenElkBullSex1]";
				if (nam is "BBB"):
					say "[BeatenElkBullSex2]";
				if (nam is "CCC"):
					say "[BeatenElkBullSex3]";
				if (nam is "DDD"):
					say "[BeatenElkBullSex4]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Just leave him?";
			if player consents:
				now sextablerun is 1;
				say "     You just walk away after checking him over for loot.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say BeatenElkBullSex1:
	say "     ...";

to say BeatenElkBullSex2:
	say "     ...";

to say BeatenElkBullSex3:
	say "     ...";

to say BeatenElkBullSex4:
	say "     ...";

to say ElkBullDesc:
	setmongender 3;
	if inasituation is true:
		say ""; [dealt with in the origin event]
	else:
		say "     As you move through the snowy forest, ";
		[appearance of the tribesman]
		if a random chance of 1 in 3 succeeds: [spotted the elk]
			say "[one of]the sudden sound of a twig snapping makes you stop and look around. With his element of surprise gone thanks to your keen senses, [or]the sudden crunch of someone else's step into the deep snow makes you stop and look around. With his element of surprise gone thanks to your keen senses, [at random]";
			[physical details]
			say "[one of]a towering[or]a muscular[or]a powerful[or]an impressive[or]a seven foot tall[at random] ";
			say "elk tribesman steps out from behind one of the thick tree trunks. The large anthro cervine ";
		else: [player was surprised by the elk]
			say "[one of]you do not even notice that someone is watching you until [or]you find yourself surprised by the sudden appearance of [at random]";
			[physical details]
			say "[one of]a towering[or]a muscular[or]a powerful[or]an impressive[or]a seven foot tall[at random] ";
			say "elk tribesman, who steps out from behind one of the thick tree trunks. The large anthro cervine ";
		[clothing]
		say "[one of]wears just a simple leather loincloth barely hiding the bulge of his mighty shaft[or]wears not a stitch of clothing, his mighty shaft swinging proudly between his legs[or]wears a brown loincloth with red stripes barely hiding the bulge of his mighty shaft[or]wears a blue and white striped loincloth barely hiding the bulge of his mighty shaft[or]wears a simple black loincloth barely hiding the bulge of his mighty shaft[at random]. ";
		say "The rest of his body is decorated in several places with tribal markings in reddish-brown paint, for example from halfway up his muzzle to the top of his head and with what you assume is a symbol of rank on his left thigh. ";
		[antlers]
		say "A pair of [one of]spike-like antlers on each side of his head marks him as a quite young male[or]spindly four-point antlers on each side of his head marks him as a young male[or]five-point antlers on each side of his head marks him as a young but maturing male[or]proud six-point antlers on each side of his head marks him as a mature male[or]proud seven-point antlers on each side of his head marks him as an experienced male[or]impressive eight-point antlers on each side of his head marks him as a mature male[at random].";
		if "Elk Tribe Markings" is not listed in feats of player: [not initiated into the tribe]
			say "     The elk bull looks you up and down with [one of]an unimpressed [or]a haughty [or]a challenging [or]a curious [or]a surprised [at random]look on his face. ";
			[comment]
			say "[one of]'Trespassing on our tribal lands... a sure sign of overconfidence and stupidity. There's a price to be paid for that, outlander. Do yourself a favor and just submit[or]'I'd been hoping for another outlander like you to appear while I am hunting. Time to pay for your trespass of your tribal lands. Do yourself a favor and just submit[or]'Another outlander intruding here? You'll lever learn, will you? This is tribal land and violating it comes with a price[or]'This land belongs to the elk tribe, outlander. In coming here, you have occured a debt to my people. But do not worry, I know just the way you can pay us back[at random].' Rubbing his cock demonstratively, the elk steps forward to take his pleasure from you, if you want or not.";
		else:
			say "     ...";

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Elk Tribe Bull";
	now attack entry is "The [one of]mighty elk[or]towering herbivore[or]muscular elk[or]powerful anthro cervine[or]elk tribesman[at random] [one of]slaps you around a bit[or]gives you a painful kick[or]lowers his head and hits you with a sweep of his horns[or]grabs you by the throat and throws you to the ground[or]grabs you with one of his hands and headbutts you[or]grabs you by the throat, choking you a bit before you can free yourself[at random]!";
	now defeated entry is "[ElkBullBeaten]";
	now victory entry is "[ElkBullVictorious]";
	now desc entry is "[ElkBullDesc]";
	now face entry is "that of an elk, with an elongated muzzle and broad, dark nose[if player is male]. Atop your head is a small rack of antlers that have begun to form[else]. Your muzzle is slender and your features delicate, looking alluring and feminine[end if]";
	now body entry is "something between an elk and a human being [if player is male]with a strong chest and broad shoulders. You are well over seven feet tall and your[else]with a slender, sexily curved body. While by no means petite, you are smaller than the males of your kind. Your[end if] limbs end in darkened, hoof-like hands and feet";
	now skin entry is "[one of]brown-furred[or]dark-furred[at random]";
	now tail entry is "You have a short, brown tail.";
	now cock entry is "cervine";
	now face change entry is "it starts to pulse and throb, bulging in some spots and tightening in others as your whole cranium changes shape. You grow a [if player is male]broad[else]slender[end if] muzzle with a flat, dark nose. Your ears move to the top corners of your head and form cups, completing your head's transition into that of an elk[if player is male]. A firm, grinding noise grows louder in your new ears as a small rack of antlers form atop your head[end if]";
	now body change entry is "it becomes difficult to control your limbs. Your hands and feet start changing first, fingers fusing to form three broad and strong digits tipped with hoof-like ends. The changes progresses up your limbs, changing shape and structure until the transition starts affecting your torso. There, your body becomes [if player is male]broad-shouldered and muscular[else]slender and sexily curved[end if] with a definite cervine look overall";
	now skin change entry is "random tufts of brown fur start to sprout all over you. These start as just a few hairs, but expand continuously until the whole of you is covered in it";
	now ass change entry is "twinges of transformation focus in on the base of your spine, soon forming a short tuft of a tail";
	now cock change entry is "a rush of arousal fills you. Your manhood pulses and throbs, dribbling precum as it changes shape, becoming quite cervine in form. When the transformation ends, the excitement remains as you long to put your new cock to use";
	now str entry is 18; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 110; [ The monster's starting HP. ]
	now lev entry is 12; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10; [ Monster's average damage when attacking. ]
	now area entry is "Snowy Forest"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 15; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 9; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 15;
	now cunt width entry is 6;
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is "elk bull fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 25; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscled[or]powerful[or]buff[at random]";
	now type entry is "[one of]cervine[or]elk[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

Table of Game Objects (continued)
name	desc	weight	object
"elk bull fur"	"A tuft of fur from one of the powerful elk tribe bulls."	0	elk bull fur

instead of sniffing elk bull fur:
	say "The tuft of fur smells a bit musky.";

elk bull fur is a grab object.
the usedesc of elk bull fur is "[elk bull fur use]";

to say elk bull fur use:
	say "     Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Elk Tribe Bull";


Section 2 - Elk Tribe Cow

to say ElkCowVictorious:
	if inasituation is true: [dealt with in the event]
		say "";
	else:
		if HP of player > 0: [player submits]
			say "     ...";
		else: [player beaten]
			say "     ...";

to say ElkCowBeaten:
	if inasituation is true: [dealt with in the event]
		say "";
	else:
		say "     After your last hit, the elk cow staggers a bit, her eyes unfocused - then she keels over with a groan and lands on her back with a loud thud. Seeing her lie on the ground, your eyes can't help but wander over her shapely form and down to her crotch.";
		say "     [bold type]What now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Have some fun with the elk.";
		say "     ([link]N[as]n[end link]) - Just leave.";
		if player consents:
			LineBreak;
			say "[BeatenElkCowSexMenu]";
		else:
			LineBreak;
			say "     You walk away after checking her over for loot.";


to say BeatenElkCowSexMenu:
	LineBreak;
	say "     What do you want to do with the female elk?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "AAA";
	now sortorder entry is 1;
	now description entry is "AAAA.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "BBB";
	now sortorder entry is 2;
	now description entry is "BBBB.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "CCC";
	now sortorder entry is 3;
	now description entry is "CCCC.";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "DDD";
		now sortorder entry is 4;
		now description entry is "DDDD.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "AAA"):
					say "[BeatenElkCowSex1]";
				if (nam is "BBB"):
					say "[BeatenElkCowSex2]";
				if (nam is "CCC"):
					say "[BeatenElkCowSex3]";
				if (nam is "DDD"):
					say "[BeatenElkCowSex4]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Just leave him?";
			if player consents:
				now sextablerun is 1;
				say "     You just walk away after checking her over for loot.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say BeatenElkCowSex1:
	say "     ...";

to say BeatenElkCowSex2:
	say "     ...";

to say BeatenElkCowSex3:
	say "     ...";

to say BeatenElkCowSex4:
	say "     ...";

to say ElkCowDesc:
	setmongender 4;
	if inasituation is true:
		say ""; [dealt with in the origin event]
	else:
		say "     As you move through the snowy forest, ";
		[appearance of the tribesman]
		if a random chance of 1 in 3 succeeds: [spotted the elk]
			say "[one of]the sudden sound of a twig snapping makes you stop and look around. With her element of surprise gone thanks to your keen senses, [or]the sudden crunch of someone else's step into the deep snow makes you stop and look around. With her element of surprise gone thanks to your keen senses, [at random]";
			[physical details]
			say "[one of]a towering[or]a muscular[or]a powerful[or]an impressive[or]a seven foot tall[at random] ";
			say "elk tribeswoman steps out from behind one of the thick tree trunks. The large anthro cervine ";
		else: [player was surprised by the elk]
			say "[one of]you do not even notice that someone is watching you until [or]you find yourself surprised by the sudden appearance of [at random]";
			[physical details]
			say "[one of]a towering[or]a muscular[or]a powerful[or]an impressive[or]a seven foot tall[at random] ";
			say "elk tribeswoman, who steps out from behind one of the thick tree trunks. The large anthro cervine ";
		[clothing]
		say "[one of]wears just a simple leather loincloth and nothing more, leaving her shapely breasts bare[or]wears not a stitch of clothing, her female sex as openly presented as her shapely breasts[or]wears a brown loincloth with red stripes and nothing more, leaving her shapely breasts bare[or]wears a blue and white striped loincloth and nothing more, leaving her shapely breasts bare[or]wears a simple black loincloth and nothing more, leaving her shapely breasts bare[at random]. ";
		say "The rest of her body is decorated in several places with tribal markings in reddish-brown paint, for example from halfway up her muzzle to the top of her head and with what you assume is a symbol of rank on her left thigh. ";
		if "Elk Tribe Markings" is not listed in feats of player: [not initiated into the tribe]
			say "     The elk cow looks you up and down with [one of]an unimpressed [or]a haughty [or]a challenging [or]a curious [or]a surprised [at random]look on her face. ";
			[comment]
			say "[one of]'Trespassing on our tribal lands... a sure sign of overconfidence and stupidity. There's a price to be paid for that, outlander. Do yourself a favor and just submit[or]'I'd been hoping for another outlander like you to appear while I am hunting. Time to pay for your trespass of your tribal lands. Do yourself a favor and just submit[or]'Another outlander intruding here? You'll lever learn, will you? This is tribal land and violating it comes with a price[or]'This land belongs to the elk tribe, outlander. In coming here, you have occured a debt to my people. But do not worry, I know just the way you can pay us back[at random].' Cupping one of her breasts and giving its nipple a demonstrative pinch, the female elk steps forward to take her pleasure from you, if you want or not.";
		else:
			say "     ...";

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Elk Tribe Cow";
	now attack entry is "The [one of]mighty elk[or]towering herbivore[or]muscular elk[or]powerful anthro cervine[or]elk tribeswoman[at random] [one of]slaps you around a bit[or]gives you a painful kick[or]grabs you by the throat and throws you to the ground[or]grabs you with one of her hands and headbutts you[or]grabs you by the throat, choking you a bit before you can free yourself[at random]!";
	now defeated entry is "[ElkCowBeaten]";
	now victory entry is "[ElkCowVictorious]";
	now desc entry is "[ElkCowDesc]";
	now face entry is "that of an elk, with an elongated muzzle and broad, dark nose[if player is male]. Atop your head is a small rack of antlers that have begun to form[else]. Your muzzle is slender and your features delicate, looking alluring and feminine[end if]";
	now body entry is "something between an elk and a human being [if player is male]with a strong chest and broad shoulders. You are well over seven feet tall and your[else]with a slender, sexily curved body. While by no means petite, you are smaller than the males of your kind. Your[end if] limbs end in darkened, hoof-like hands and feet";
	now skin entry is "[one of]brown-furred[or]dark-furred[at random]";
	now tail entry is "You have a short, brown tail.";
	now cock entry is "cervine";
	now face change entry is "it starts to pulse and throb, bulging in some spots and tightening in others as your whole cranium changes shape. You grow a [if player is male]broad[else]slender[end if] muzzle with a flat, dark nose. Your ears move to the top corners of your head and form cups, completing your head's transition into that of an elk[if player is male]. A firm, grinding noise grows louder in your new ears as a small rack of antlers form atop your head[end if]";
	now body change entry is "it becomes difficult to control your limbs. Your hands and feet start changing first, fingers fusing to form three broad and strong digits tipped with hoof-like ends. The changes progresses up your limbs, changing shape and structure until the transition starts affecting your torso. There, your body becomes [if player is male]broad-shouldered and muscular[else]slender and sexily curved[end if] with a definite cervine look overall";
	now skin change entry is "random tufts of brown fur start to sprout all over you. These start as just a few hairs, but expand continuously until the whole of you is covered in it";
	now ass change entry is "twinges of transformation focus in on the base of your spine, soon forming a short tuft of a tail";
	now cock change entry is "a rush of arousal fills you. Your manhood pulses and throbs, dribbling precum as it changes shape, becoming quite cervine in form. When the transformation ends, the excitement remains as you long to put your new cock to use";
	now str entry is 16; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 18; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 18;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 90; [ The monster's starting HP. ]
	now lev entry is 10; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 8; [ Monster's average damage when attacking. ]
	now area entry is "Snowy Forest"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 0; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 15;
	now cunt width entry is 6;
	now libido entry is 90; [ Target libido the infection will rise towards. ]
	now loot entry is "elk cow fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 25; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscled[or]powerful[or]buff[at random]";
	now type entry is "[one of]cervine[or]elk[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

Table of Game Objects (continued)
name	desc	weight	object
"elk cow fur"	"A tuft of fur from one of the powerful elk tribe cows."	0	elk cow fur

instead of sniffing elk cow fur:
	say "The tuft of fur smells a bit musky.";

elk cow fur is a grab object.
the usedesc of elk cow fur is "[elk cow fur use]";

to say elk cow fur use:
	say "     Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Elk Tribe Cow";


Section 3 - Elk Tribe Herm

to say ElkHermVictorious:
	if inasituation is true: [dealt with in the event]
		say "";
	else:
		if HP of player > 0: [player submits]
			say "     ...";
		else: [player beaten]
			say "     ...";

to say ElkHermBeaten:
	if inasituation is true: [dealt with in the event]
		say "";
	else:
		say "     After your last hit, the elk cow staggers a bit, her eyes unfocused - then she keels over with a groan and lands on her back with a loud thud. Seeing her lie on the ground, your eyes can't help but wander over her shapely form and down to her crotch.";
		say "     [bold type]What now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Have some fun with the elk.";
		say "     ([link]N[as]n[end link]) - Just leave.";
		if player consents:
			LineBreak;
			say "[BeatenElkHermSexMenu]";
		else:
			LineBreak;
			say "     You walk away after checking her over for loot.";


to say BeatenElkHermSexMenu:
	LineBreak;
	say "     What do you want to do with the hermaphrodite elk?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "AAA";
	now sortorder entry is 1;
	now description entry is "AAAA.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "BBB";
	now sortorder entry is 2;
	now description entry is "BBBB.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "CCC";
	now sortorder entry is 3;
	now description entry is "CCCC.";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "DDD";
		now sortorder entry is 4;
		now description entry is "DDDD.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "AAA"):
					say "[BeatenElkHermSex1]";
				if (nam is "BBB"):
					say "[BeatenElkHermSex2]";
				if (nam is "CCC"):
					say "[BeatenElkHermSex3]";
				if (nam is "DDD"):
					say "[BeatenElkHermSex4]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Just leave him?";
			if player consents:
				now sextablerun is 1;
				say "     You just walk away after checking her over for loot.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say BeatenElkHermSex1:
	say "     ...";

to say BeatenElkHermSex2:
	say "     ...";

to say BeatenElkHermSex3:
	say "     ...";

to say BeatenElkHermSex4:
	say "     ...";

to say ElkHermDesc:
	setmongender 5;
	if inasituation is true:
		say ""; [dealt with in the origin event]
	else:
		say "     As you move through the snowy forest, ";
		[appearance of the tribesman]
		if a random chance of 1 in 3 succeeds: [spotted the elk]
			say "[one of]the sudden sound of a twig snapping makes you stop and look around. With her element of surprise gone thanks to your keen senses, [or]the sudden crunch of someone else's step into the deep snow makes you stop and look around. With her element of surprise gone thanks to your keen senses, [at random]";
			[physical details]
			say "[one of]a towering[or]a muscular[or]a powerful[or]an impressive[or]a seven foot tall[at random] ";
			say "elk tribeswoman steps out from behind one of the thick tree trunks. The large anthro cervine ";
		else: [player was surprised by the elk]
			say "[one of]you do not even notice that someone is watching you until [or]you find yourself surprised by the sudden appearance of [at random]";
			[physical details]
			say "[one of]a towering[or]a muscular[or]a powerful[or]an impressive[or]a seven foot tall[at random] ";
			say "elk tribeswoman, who steps out from behind one of the thick tree trunks. The large anthro cervine ";
		[clothing]
		say "[one of]wears just a simple leather loincloth and nothing more, leaving her shapely breasts bare. A noticable bulge in the loincloth tells you that this isn't a regular female[or]wears not a stitch of clothing, with a male's weighty shaft between her legs as openly presented as her shapely breasts[or]wears a brown loincloth with red stripes and nothing more, leaving her shapely breasts bare. A noticable bulge in the loincloth tells you that this isn't a regular female[or]wears a blue and white striped loincloth and nothing more, leaving her shapely breasts bare[or]wears a simple black loincloth and nothing more, leaving her shapely breasts bare. A noticable bulge in the loincloth tells you that this isn't a regular female[at random]. ";
		say "The rest of her body is decorated in several places with tribal markings in reddish-brown paint, for example from halfway up her muzzle to the top of her head and with what you assume is a symbol of rank on her left thigh. ";
		if "Elk Tribe Markings" is not listed in feats of player: [not initiated into the tribe]
			say "     The elk herm looks you up and down with [one of]an unimpressed [or]a haughty [or]a challenging [or]a curious [or]a surprised [at random]look on her face. ";
			[comment]
			say "[one of]'Trespassing on our tribal lands... a sure sign of overconfidence and stupidity. There's a price to be paid for that, outlander. Do yourself a favor and just submit[or]'I'd been hoping for another outlander like you to appear while I am hunting. Time to pay for your trespass of your tribal lands. Do yourself a favor and just submit[or]'Another outlander intruding here? You'll lever learn, will you? This is tribal land and violating it comes with a price[or]'This land belongs to the elk tribe, outlander. In coming here, you have occured a debt to my people. But do not worry, I know just the way you can pay us back[at random].' Rubbing her cock demonstratively, the hermaphrodite elk steps forward to take her pleasure from you, if you want or not.";
		else:
			say "     ...";

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Elk Tribe Herm";
	now attack entry is "The [one of]mighty elk[or]towering herbivore[or]muscular elk[or]powerful anthro cervine[or]elk tribeswoman[at random] [one of]slaps you around a bit[or]gives you a painful kick[or]grabs you by the throat and throws you to the ground[or]grabs you with one of her hands and headbutts you[or]grabs you by the throat, choking you a bit before you can free yourself[at random]!";
	now defeated entry is "[ElkHermBeaten]";
	now victory entry is "[ElkHermVictorious]";
	now desc entry is "[ElkHermDesc]";
	now face entry is "that of an elk, with an elongated muzzle and broad, dark nose[if player is male]. Atop your head is a small rack of antlers that have begun to form[else]. Your muzzle is slender and your features delicate, looking alluring and feminine[end if]";
	now body entry is "something between an elk and a human being [if player is male]with a strong chest and broad shoulders. You are well over seven feet tall and your[else]with a slender, sexily curved body. While by no means petite, you are smaller than the males of your kind. Your[end if] limbs end in darkened, hoof-like hands and feet";
	now skin entry is "[one of]brown-furred[or]dark-furred[at random]";
	now tail entry is "You have a short, brown tail.";
	now cock entry is "cervine";
	now face change entry is "it starts to pulse and throb, bulging in some spots and tightening in others as your whole cranium changes shape. You grow a [if player is male]broad[else]slender[end if] muzzle with a flat, dark nose. Your ears move to the top corners of your head and form cups, completing your head's transition into that of an elk[if player is male]. A firm, grinding noise grows louder in your new ears as a small rack of antlers form atop your head[end if]";
	now body change entry is "it becomes difficult to control your limbs. Your hands and feet start changing first, fingers fusing to form three broad and strong digits tipped with hoof-like ends. The changes progresses up your limbs, changing shape and structure until the transition starts affecting your torso. There, your body becomes [if player is male]broad-shouldered and muscular[else]slender and sexily curved[end if] with a definite cervine look overall";
	now skin change entry is "random tufts of brown fur start to sprout all over you. These start as just a few hairs, but expand continuously until the whole of you is covered in it";
	now ass change entry is "twinges of transformation focus in on the base of your spine, soon forming a short tuft of a tail";
	now cock change entry is "a rush of arousal fills you. Your manhood pulses and throbs, dribbling precum as it changes shape, becoming quite cervine in form. When the transformation ends, the excitement remains as you long to put your new cock to use";
	now str entry is 16; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 18; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 18;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 100; [ The monster's starting HP. ]
	now lev entry is 11; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 9; [ Monster's average damage when attacking. ]
	now area entry is "Snowy Forest"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 15; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 9; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 4; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 4; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 15;
	now cunt width entry is 6;
	now libido entry is 90; [ Target libido the infection will rise towards. ]
	now loot entry is "elk herm fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 25; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscled[or]powerful[or]buff[at random]";
	now type entry is "[one of]cervine[or]elk[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

Table of Game Objects (continued)
name	desc	weight	object
"elk herm fur"	"A tuft of fur from one of the powerful elk tribe herms."	0	elk herm fur

instead of sniffing elk herm fur:
	say "The tuft of fur smells a bit musky.";

elk herm fur is a grab object.
the usedesc of elk herm fur is "[elk herm fur use]";

to say elk herm fur use:
	say "     Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Elk Tribe Herm";


Section 4 - Elk Tribe Trans Bull [cuntboy]

to say ElkTransBullVictorious:
	if inasituation is true: [dealt with in the event]
		say "";
	else:
		if HP of player > 0: [player submits]
			say "     ...";
		else: [player beaten]
			say "     ...";

to say ElkTransBullBeaten:
	if inasituation is true: [dealt with in the event]
		say "";
	else:
		say "     After your last hit, the elk bull staggers a bit, his eyes unfocused - then he keels over with a groan and lands on his back with a loud thud. Seeing him lie on the ground, your eyes can't help but wander over his muscular form and down to his crotch.";
		say "     [bold type]What now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Have some fun with the elk.";
		say "     ([link]N[as]n[end link]) - Just leave.";
		if player consents:
			LineBreak;
			say "[BeatenElkTransBullSexMenu]";
		else:
			LineBreak;
			say "     You walk away after checking him over for loot.";

to say BeatenElkTransBullSexMenu:
	LineBreak;
	say "     What do you want to do with the transgendered elk?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "AAA";
	now sortorder entry is 1;
	now description entry is "AAAA.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "BBB";
	now sortorder entry is 2;
	now description entry is "BBBB.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "CCC";
	now sortorder entry is 3;
	now description entry is "CCCC.";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "DDD";
		now sortorder entry is 4;
		now description entry is "DDDD.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "AAA"):
					say "[BeatenElkTransBullSex1]";
				if (nam is "BBB"):
					say "[BeatenElkTransBullSex2]";
				if (nam is "CCC"):
					say "[BeatenElkTransBullSex3]";
				if (nam is "DDD"):
					say "[BeatenElkTransBullSex4]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Just leave him?";
			if player consents:
				now sextablerun is 1;
				say "     You just walk away after checking him over for loot.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say BeatenElkTransBullSex1:
	say "     ...";

to say BeatenElkTransBullSex2:
	say "     ...";

to say BeatenElkTransBullSex3:
	say "     ...";

to say BeatenElkTransBullSex4:
	say "     ...";

to say ElkTransBullDesc:
	setmongender 8;
	if inasituation is true:
		say ""; [dealt with in the origin event]
	else:
		say "     As you move through the snowy forest, ";
		[appearance of the tribesman]
		if a random chance of 1 in 3 succeeds: [spotted the elk]
			say "[one of]the sudden sound of a twig snapping makes you stop and look around. With his element of surprise gone thanks to your keen senses, [or]the sudden crunch of someone else's step into the deep snow makes you stop and look around. With his element of surprise gone thanks to your keen senses, [at random]";
			[physical details]
			say "[one of]a towering[or]a muscular[or]a powerful[or]an impressive[or]a seven foot tall[at random] ";
			say "elk tribesman steps out from behind one of the thick tree trunks. The large anthro cervine ";
		else: [player was surprised by the elk]
			say "[one of]you do not even notice that someone is watching you until [or]you find yourself surprised by the sudden appearance of [at random]";
			[physical details]
			say "[one of]a towering[or]a muscular[or]a powerful[or]an impressive[or]a seven foot tall[at random] ";
			say "elk tribesman, who steps out from behind one of the thick tree trunks. The large anthro cervine ";
		[clothing]
		say "[one of]wears just a simple leather loincloth, which hangs strangely flat over his crotch[or]wears not a stitch of clothing, revealing a pussy between his legs[or]wears a brown loincloth with red stripes, which hangs strangely flat over his crotch[or]wears a blue and white striped loincloth, which hangs strangely flat over his crotch[or]wears a simple black loincloth, which hangs strangely flat over his crotch[at random]. This cowsn't seem to be a regular male elk. ";
		say "The rest of his body is decorated in several places with tribal markings in reddish-brown paint, for example from halfway up his muzzle to the top of his head and with what you assume is a symbol of rank on his left thigh. ";
		[antlers]
		say "A pair of [one of]spike-like antlers on each side of his head marks him as a quite young male[or]spindly four-point antlers on each side of his head marks him as a young male[or]five-point antlers on each side of his head marks him as a young but maturing male[or]proud six-point antlers on each side of his head marks him as a mature male[or]proud seven-point antlers on each side of his head marks him as an experienced male[or]impressive eight-point antlers on each side of his head marks him as a mature male[at random].";
		if "Elk Tribe Markings" is not listed in feats of player: [not initiated into the tribe]
			say "     The elk trans bull looks you up and down with [one of]an unimpressed [or]a haughty [or]a challenging [or]a curious [or]a surprised [at random]look on his face. ";
			[comment]
			say "[one of]'Trespassing on our tribal lands... a sure sign of overconfidence and stupidity. There's a price to be paid for that, outlander. Do yourself a favor and just submit[or]'I'd been hoping for another outlander like you to appear while I am hunting. Time to pay for your trespass of your tribal lands. Do yourself a favor and just submit[or]'Another outlander intruding here? You'll lever learn, will you? This is tribal land and violating it comes with a price[or]'This land belongs to the elk tribe, outlander. In coming here, you have occured a debt to my people. But do not worry, I know just the way you can pay us back[at random].' Rubbing his crotch demonstratively, the elk steps forward to take his pleasure from you, if you want or not.";
		else:
			say "     ...";

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Elk Tribe Trans Bull";
	now attack entry is "The [one of]mighty elk[or]towering herbivore[or]muscular elk[or]powerful anthro cervine[or]elk tribesman[at random] [one of]slaps you around a bit[or]gives you a painful kick[or]lowers his head and hits you with a sweep of his horns[or]grabs you by the throat and throws you to the ground[or]grabs you with one of his hands and headbutts you[or]grabs you by the throat, choking you a bit before you can free yourself[at random]!";
	now defeated entry is "[ElkTransBullBeaten]";
	now victory entry is "[ElkTransBullVictorious]";
	now desc entry is "[ElkTransBullDesc]";
	now face entry is "that of an elk, with an elongated muzzle and broad, dark nose[if player is male]. Atop your head is a small rack of antlers that have begun to form[else]. Your muzzle is slender and your features delicate, looking alluring and feminine[end if]";
	now body entry is "something between an elk and a human being [if player is male]with a strong chest and broad shoulders. You are well over seven feet tall and your[else]with a slender, sexily curved body. While by no means petite, you are smaller than the males of your kind. Your[end if] limbs end in darkened, hoof-like hands and feet";
	now skin entry is "[one of]brown-furred[or]dark-furred[at random]";
	now tail entry is "You have a short, brown tail.";
	now cock entry is "cervine";
	now face change entry is "it starts to pulse and throb, bulging in some spots and tightening in others as your whole cranium changes shape. You grow a [if player is male]broad[else]slender[end if] muzzle with a flat, dark nose. Your ears move to the top corners of your head and form cups, completing your head's transition into that of an elk[if player is male]. A firm, grinding noise grows louder in your new ears as a small rack of antlers form atop your head[end if]";
	now body change entry is "it becomes difficult to control your limbs. Your hands and feet start changing first, fingers fusing to form three broad and strong digits tipped with hoof-like ends. The changes progresses up your limbs, changing shape and structure until the transition starts affecting your torso. There, your body becomes [if player is male]broad-shouldered and muscular[else]slender and sexily curved[end if] with a definite cervine look overall";
	now skin change entry is "random tufts of brown fur start to sprout all over you. These start as just a few hairs, but expand continuously until the whole of you is covered in it";
	now ass change entry is "twinges of transformation focus in on the base of your spine, soon forming a short tuft of a tail";
	now cock change entry is "a rush of arousal fills you. Your manhood pulses and throbs, dribbling precum as it changes shape, becoming quite cervine in form. When the transformation ends, the excitement remains as you long to put your new cock to use";
	now str entry is 16; [ These are now the creature's stats... ]
	now dex entry is 20; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 18; [ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 10;
	now cha entry is 18;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 90; [ The monster's starting HP. ]
	now lev entry is 10; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 9; [ Monster's average damage when attacking. ]
	now area entry is "Snowy Forest"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 0; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 15;
	now cunt width entry is 6;
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is "elk trans bull fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 25; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscled[or]powerful[or]buff[at random]";
	now type entry is "[one of]cervine[or]elk[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

Table of Game Objects (continued)
name	desc	weight	object
"elk trans bull fur"	"A tuft of fur from one of the powerful elk tribe trans bulls."	0	elk trans bull fur

instead of sniffing elk trans bull fur:
	say "The tuft of fur smells a bit musky.";

elk trans bull fur is a grab object.
the usedesc of elk trans bull fur is "[elk trans bull fur use]";

to say elk trans bull fur use:
	say "     Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Elk Tribe Trans Bull";


Section 5 - Elk Tribe Trans Cow

to say ElkTransCowVictorious:
	if inasituation is true: [dealt with in the event]
		say "";
	else:
		if HP of player > 0: [player submits]
			say "     ...";
		else: [player beaten]
			say "     ...";

to say ElkTransCowBeaten:
	if inasituation is true: [dealt with in the event]
		say "";
	else:
		say "     After your last hit, the elk cow staggers a bit, her eyes unfocused - then she keels over with a groan and lands on her back with a loud thud. Seeing her lie on the ground, your eyes can't help but wander over her shapely form and down to her crotch.";
		say "     [bold type]What now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Have some fun with the elk.";
		say "     ([link]N[as]n[end link]) - Just leave.";
		if player consents:
			LineBreak;
			say "[BeatenElkTransCowSexMenu]";
		else:
			LineBreak;
			say "     You walk away after checking her over for loot.";


to say BeatenElkTransCowSexMenu:
	LineBreak;
	say "     What do you want to do with the transgendered elk?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "AAA";
	now sortorder entry is 1;
	now description entry is "AAAA.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "BBB";
	now sortorder entry is 2;
	now description entry is "BBBB.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "CCC";
	now sortorder entry is 3;
	now description entry is "CCCC.";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "DDD";
		now sortorder entry is 4;
		now description entry is "DDDD.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "AAA"):
					say "[BeatenElkTransCowSex1]";
				if (nam is "BBB"):
					say "[BeatenElkTransCowSex2]";
				if (nam is "CCC"):
					say "[BeatenElkTransCowSex3]";
				if (nam is "DDD"):
					say "[BeatenElkTransCowSex4]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Just leave him?";
			if player consents:
				now sextablerun is 1;
				say "     You just walk away after checking her over for loot.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say BeatenElkTransCowSex1:
	say "     ...";

to say BeatenElkTransCowSex2:
	say "     ...";

to say BeatenElkTransCowSex3:
	say "     ...";

to say BeatenElkTransCowSex4:
	say "     ...";

to say ElkTransCowDesc:
	setmongender 6;
	if inasituation is true:
		say ""; [dealt with in the origin event]
	else:
		say "     As you move through the snowy forest, ";
		[appearance of the tribesman]
		if a random chance of 1 in 3 succeeds: [spotted the elk]
			say "[one of]the sudden sound of a twig snapping makes you stop and look around. With her element of surprise gone thanks to your keen senses, [or]the sudden crunch of someone else's step into the deep snow makes you stop and look around. With her element of surprise gone thanks to your keen senses, [at random]";
			[physical details]
			say "[one of]a towering[or]a muscular[or]a powerful[or]an impressive[or]a seven foot tall[at random] ";
			say "elk tribeswoman steps out from behind one of the thick tree trunks. The large anthro cervine ";
		else: [player was surprised by the elk]
			say "[one of]you do not even notice that someone is watching you until [or]you find yourself surprised by the sudden appearance of [at random]";
			[physical details]
			say "[one of]a towering[or]a muscular[or]a powerful[or]an impressive[or]a seven foot tall[at random] ";
			say "elk tribeswoman, who steps out from behind one of the thick tree trunks. The large anthro cervine ";
		[clothing]
		say "[one of]wears just a simple leather loincloth and nothing more, leaving her shapely breasts bare and showing the bulge of a large cock under the fabric[or]wears not a stitch of clothing, revealing a thick cock hanging between her legs as openly as her shapely breasts[or]wears a brown loincloth with red stripes and nothing more, leaving her shapely breasts bare and showing the bulge of a large cock under the fabric[or]wears a blue and white striped loincloth and nothing more, leaving her shapely breasts bare and showing the bulge of a large cock under the fabric[or]wears a simple black loincloth and nothing more, leaving her shapely breasts bare and showing the bulge of a large cock under the fabric[at random]. This is not a regular female elk it seems. ";
		say "The rest of her body is decorated in several places with tribal markings in reddish-brown paint, for example from halfway up her muzzle to the top of her head and with what you assume is a symbol of rank on her left thigh. ";
		if "Elk Tribe Markings" is not listed in feats of player: [not initiated into the tribe]
			say "     The elk trans cow looks you up and down with [one of]an unimpressed [or]a haughty [or]a challenging [or]a curious [or]a surprised [at random]look on her face. ";
			[comment]
			say "[one of]'Trespassing on our tribal lands... a sure sign of overconfidence and stupidity. There's a price to be paid for that, outlander. Do yourself a favor and just submit[or]'I'd been hoping for another outlander like you to appear while I am hunting. Time to pay for your trespass of your tribal lands. Do yourself a favor and just submit[or]'Another outlander intruding here? You'll lever learn, will you? This is tribal land and violating it comes with a price[or]'This land belongs to the elk tribe, outlander. In coming here, you have occured a debt to my people. But do not worry, I know just the way you can pay us back[at random].' Rubbing her cock demonstratively, the transgendered elk steps forward to take her pleasure from you, if you want or not.";
		else:
			say "     ...";

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Elk Tribe Trans Cow";
	now attack entry is "The [one of]mighty elk[or]towering herbivore[or]muscular elk[or]powerful anthro cervine[or]elk tribeswoman[at random] [one of]slaps you around a bit[or]gives you a painful kick[or]grabs you by the throat and throws you to the ground[or]grabs you with one of her hands and headbutts you[or]grabs you by the throat, choking you a bit before you can free yourself[at random]!";
	now defeated entry is "[ElkTransCowBeaten]";
	now victory entry is "[ElkTransCowVictorious]";
	now desc entry is "[ElkTransCowDesc]";
	now face entry is "that of an elk, with an elongated muzzle and broad, dark nose. Your muzzle is slender and your features delicate, looking alluring and feminine";
	now body entry is "something between an elk and a human being [if player is male]with a strong chest and broad shoulders. You are well over seven feet tall and your[else]with a slender, sexily curved body. While by no means petite, you are smaller than the males of your kind. Your[end if] limbs end in darkened, hoof-like hands and feet";
	now skin entry is "[one of]brown-furred[or]dark-furred[at random]";
	now tail entry is "You have a short, brown tail.";
	now cock entry is "cervine";
	now face change entry is "it starts to pulse and throb, bulging in some spots and tightening in others as your whole cranium changes shape. You grow a [if player is male]broad[else]slender[end if] muzzle with a flat, dark nose. Your ears move to the top corners of your head and form cups, completing your head's transition into that of an elk";
	now body change entry is "it becomes difficult to control your limbs. Your hands and feet start changing first, fingers fusing to form three broad and strong digits tipped with hoof-like ends. The changes progresses up your limbs, changing shape and structure until the transition starts affecting your torso. There, your body becomes [if player is male]broad-shouldered and muscular[else]slender and sexily curved[end if] with a definite cervine look overall";
	now skin change entry is "random tufts of brown fur start to sprout all over you. These start as just a few hairs, but expand continuously until the whole of you is covered in it";
	now ass change entry is "twinges of transformation focus in on the base of your spine, soon forming a short tuft of a tail";
	now cock change entry is "a rush of arousal fills you. Your manhood pulses and throbs, dribbling precum as it changes shape, becoming quite cervine in form. When the transformation ends, the excitement remains as you long to put your new cock to use";
	now str entry is 16; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 18; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 18;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 90; [ The monster's starting HP. ]
	now lev entry is 10; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 8; [ Monster's average damage when attacking. ]
	now area entry is "Snowy Forest"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 15; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 9; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 3; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 90; [ Target libido the infection will rise towards. ]
	now loot entry is "elk trans cow fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 25; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscled[or]powerful[or]buff[at random]";
	now type entry is "[one of]cervine[or]elk[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

Table of Game Objects (continued)
name	desc	weight	object
"elk trans cow fur"	"A tuft of fur from one of the powerful elk tribe trans cows."	0	elk trans cow fur

instead of sniffing elk trans cow fur:
	say "The tuft of fur smells a bit musky.";

elk trans cow fur is a grab object.
the usedesc of elk trans cow fur is "[elk trans cow fur use]";

to say elk trans cow fur use:
	say "     Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Elk Tribe Trans Cow";


Section 4 - Endings

when play ends:
	if bodyname of player is "Elk Tribe Bull":
		if humanity of player < 10:
			say "     ...";
		else:
			say "     ...";
	else if bodyname of player is "Elk Tribe Cow":
		if humanity of player < 10:
			say "     ...";
		else:
			say "     ...";
	else if bodyname of player is "Elk Tribe Herm":
		if humanity of player < 10:
			say "     ...";
		else:
			say "     ...";
	else if bodyname of player is "Elk Tribe Trans Bull":
		if humanity of player < 10:
			say "     ...";
		else:
			say "     ...";
	else if bodyname of player is "Elk Tribe Trans Cow":
		if humanity of player < 10:
			say "     ...";
		else:
			say "     ...";

Elk Tribe ends here.
