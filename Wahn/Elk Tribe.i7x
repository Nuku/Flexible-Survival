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
		if HP of Player > 0: [player submits]
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
		if Player consents:
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
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "DDD";
		now sortorder entry is 4;
		now description entry is "DDDD.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
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
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You just walk away after checking him over for loot.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
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
	else: [standard description]
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
		if "Elk Tribe Markings" is not listed in feats of Player: [not initiated into the tribe]
			say "     The elk bull looks you up and down with [one of]an unimpressed [or]a haughty [or]a challenging [or]a curious [or]a surprised [at random]look on his face. ";
			[comment]
			say "[one of]'Trespassing on our tribal lands... a sure sign of overconfidence and stupidity. There's a price to be paid for that, outlander. Do yourself a favor and just submit[or]'I'd been hoping for another outlander like you to appear while I am hunting. Time to pay for your trespass of your tribal lands. Do yourself a favor and just submit[or]'Another outlander intruding here? You'll lever learn, will you? This is tribal land and violating it comes with a price[or]'This land belongs to the elk tribe, outlander. In coming here, you have incurred a debt to my people. But do not worry, I know just the way you can pay us back[at random].' Rubbing his cock demonstratively, the elk steps forward to take his pleasure from you, if you want or not.";
		else:
			say "     ...";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Elk Tribe Bull";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The [one of]mighty elk[or]towering herbivore[or]muscular elk[or]powerful anthro cervine[or]elk tribesman[at random] [one of]slaps you around a bit[or]gives you a painful kick[or]lowers his head and hits you with a sweep of his horns[or]grabs you by the throat and throws you to the ground[or]grabs you with one of his hands and headbutts you[or]grabs you by the throat, choking you a bit before you can free yourself[at random]!";
	now defeated entry is "[ElkBullBeaten]";
	now victory entry is "[ElkBullVictorious]";
	now desc entry is "[ElkBullDesc]";
	now face entry is "that of an elk, with an elongated muzzle and broad, dark nose[if Player is male]. Atop your head is a small rack of antlers that have begun to form[else]. Your muzzle is slender and your features delicate, looking alluring and feminine[end if]";
	now body entry is "something between an elk and a human being [if Player is male]with a strong chest and broad shoulders. You are well over seven feet tall and your[else]with a slender, sexily curved body. While by no means petite, you are smaller than the males of your kind. Your[end if] limbs end in darkened, hoof-like hands and feet";
	now skin entry is "[one of]brown-furred[or]dark-furred[at random]";
	now tail entry is "You have a short, brown tail.";
	now cock entry is "cervine";
	now face change entry is "it starts to pulse and throb, bulging in some spots and tightening in others as your whole cranium changes shape. You grow a [if Player is male]broad[else]slender[end if] muzzle with a flat, dark nose. Your ears move to the top corners of your head and form cups, completing your head's transition into that of an elk[if Player is male]. A firm, grinding noise grows louder in your new ears as a small rack of antlers form atop your head[end if]";
	now body change entry is "it becomes difficult to control your limbs. Your hands and feet start changing first, fingers fusing to form three broad and strong digits tipped with hoof-like ends. The changes progresses up your limbs, changing shape and structure until the transition starts affecting your torso. There, your body becomes [if Player is male]broad-shouldered and muscular[else]slender and sexily curved[end if] with a definite cervine look overall";
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
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 15; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 15;
	now Cunt Tightness entry is 6;
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is "elk bull fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 25; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscled[or]powerful[or]buff[at random]";
	now type entry is "[one of]cervine[or]elk[at random]";
	now magic entry is false;
	now resbypass entry is false;
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
	now Species Name entry is "";
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


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
		if HP of Player > 0: [player submits]
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
		if Player consents:
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
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "DDD";
		now sortorder entry is 4;
		now description entry is "DDDD.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
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
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You just walk away after checking her over for loot.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
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
		say "The rest of her body is decorated in several places with tribal markings in reddish-brown paint, for example from halfway up her muzzle to the top of her head and with what you assume is a symbol of rank on her left thigh.";
		if "Elk Tribe Markings" is not listed in feats of Player: [not initiated into the tribe]
			say "     The elk cow looks you up and down with [one of]an unimpressed [or]a haughty [or]a challenging [or]a curious [or]a surprised [at random]look on her face. ";
			[comment]
			say "[one of]'Trespassing on our tribal lands... a sure sign of overconfidence and stupidity. There's a price to be paid for that, outlander. Do yourself a favor and just submit[or]'I'd been hoping for another outlander like you to appear while I am hunting. Time to pay for your trespass of your tribal lands. Do yourself a favor and just submit[or]'Another outlander intruding here? You'll lever learn, will you? This is tribal land and violating it comes with a price[or]'This land belongs to the elk tribe, outlander. In coming here, you have incurred a debt to my people. But do not worry, I know just the way you can pay us back[at random].' Cupping one of her breasts and giving its nipple a demonstrative pinch, the female elk steps forward to take her pleasure from you, if you want or not.";
		else:
			say "     ...";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Elk Tribe Cow";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The [one of]mighty elk[or]towering herbivore[or]muscular elk[or]powerful anthro cervine[or]elk tribeswoman[at random] [one of]slaps you around a bit[or]gives you a painful kick[or]grabs you by the throat and throws you to the ground[or]grabs you with one of her hands and headbutts you[or]grabs you by the throat, choking you a bit before you can free yourself[at random]!";
	now defeated entry is "[ElkCowBeaten]";
	now victory entry is "[ElkCowVictorious]";
	now desc entry is "[ElkCowDesc]";
	now face entry is "that of an elk, with an elongated muzzle and broad, dark nose[if Player is male]. Atop your head is a small rack of antlers that have begun to form[else]. Your muzzle is slender and your features delicate, looking alluring and feminine[end if]";
	now body entry is "something between an elk and a human being [if Player is male]with a strong chest and broad shoulders. You are well over seven feet tall and your[else]with a slender, sexily curved body. While by no means petite, you are smaller than the males of your kind. Your[end if] limbs end in darkened, hoof-like hands and feet";
	now skin entry is "[one of]brown-furred[or]dark-furred[at random]";
	now tail entry is "You have a short, brown tail.";
	now cock entry is "cervine";
	now face change entry is "it starts to pulse and throb, bulging in some spots and tightening in others as your whole cranium changes shape. You grow a [if Player is male]broad[else]slender[end if] muzzle with a flat, dark nose. Your ears move to the top corners of your head and form cups, completing your head's transition into that of an elk[if Player is male]. A firm, grinding noise grows louder in your new ears as a small rack of antlers form atop your head[end if]";
	now body change entry is "it becomes difficult to control your limbs. Your hands and feet start changing first, fingers fusing to form three broad and strong digits tipped with hoof-like ends. The changes progresses up your limbs, changing shape and structure until the transition starts affecting your torso. There, your body becomes [if Player is male]broad-shouldered and muscular[else]slender and sexily curved[end if] with a definite cervine look overall";
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
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 15;
	now Cunt Tightness entry is 6;
	now libido entry is 90; [ Target libido the infection will rise towards. ]
	now loot entry is "elk cow fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 25; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscled[or]powerful[or]buff[at random]";
	now type entry is "[one of]cervine[or]elk[at random]";
	now magic entry is false;
	now resbypass entry is false;
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
	now Species Name entry is "";
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


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
		if HP of Player > 0: [player submits]
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
		if Player consents:
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
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "DDD";
		now sortorder entry is 4;
		now description entry is "DDDD.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
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
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You just walk away after checking her over for loot.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
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
		say "[one of]wears just a simple leather loincloth and nothing more, leaving her shapely breasts bare. A noticeable bulge in the loincloth tells you that this isn't a regular female[or]wears not a stitch of clothing, with a male's weighty shaft between her legs as openly presented as her shapely breasts[or]wears a brown loincloth with red stripes and nothing more, leaving her shapely breasts bare. A noticeable bulge in the loincloth tells you that this isn't a regular female[or]wears a blue and white striped loincloth and nothing more, leaving her shapely breasts bare[or]wears a simple black loincloth and nothing more, leaving her shapely breasts bare. A noticeable bulge in the loincloth tells you that this isn't a regular female[at random]. ";
		say "The rest of her body is decorated in several places with tribal markings in reddish-brown paint, for example from halfway up her muzzle to the top of her head and with what you assume is a symbol of rank on her left thigh.";
		if "Elk Tribe Markings" is not listed in feats of Player: [not initiated into the tribe]
			say "     The elk herm looks you up and down with [one of]an unimpressed [or]a haughty [or]a challenging [or]a curious [or]a surprised [at random]look on her face. ";
			[comment]
			say "[one of]'Trespassing on our tribal lands... a sure sign of overconfidence and stupidity. There's a price to be paid for that, outlander. Do yourself a favor and just submit[or]'I'd been hoping for another outlander like you to appear while I am hunting. Time to pay for your trespass of your tribal lands. Do yourself a favor and just submit[or]'Another outlander intruding here? You'll lever learn, will you? This is tribal land and violating it comes with a price[or]'This land belongs to the elk tribe, outlander. In coming here, you have incurred a debt to my people. But do not worry, I know just the way you can pay us back[at random].' Rubbing her cock demonstratively, the hermaphrodite elk steps forward to take her pleasure from you, if you want or not.";
		else:
			say "     ...";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Elk Tribe Herm";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The [one of]mighty elk[or]towering herbivore[or]muscular elk[or]powerful anthro cervine[or]elk tribeswoman[at random] [one of]slaps you around a bit[or]gives you a painful kick[or]grabs you by the throat and throws you to the ground[or]grabs you with one of her hands and headbutts you[or]grabs you by the throat, choking you a bit before you can free yourself[at random]!";
	now defeated entry is "[ElkHermBeaten]";
	now victory entry is "[ElkHermVictorious]";
	now desc entry is "[ElkHermDesc]";
	now face entry is "that of an elk, with an elongated muzzle and broad, dark nose[if Player is male]. Atop your head is a small rack of antlers that have begun to form[else]. Your muzzle is slender and your features delicate, looking alluring and feminine[end if]";
	now body entry is "something between an elk and a human being [if Player is male]with a strong chest and broad shoulders. You are well over seven feet tall and your[else]with a slender, sexily curved body. While by no means petite, you are smaller than the males of your kind. Your[end if] limbs end in darkened, hoof-like hands and feet";
	now skin entry is "[one of]brown-furred[or]dark-furred[at random]";
	now tail entry is "You have a short, brown tail.";
	now cock entry is "cervine";
	now face change entry is "it starts to pulse and throb, bulging in some spots and tightening in others as your whole cranium changes shape. You grow a [if Player is male]broad[else]slender[end if] muzzle with a flat, dark nose. Your ears move to the top corners of your head and form cups, completing your head's transition into that of an elk[if Player is male]. A firm, grinding noise grows louder in your new ears as a small rack of antlers form atop your head[end if]";
	now body change entry is "it becomes difficult to control your limbs. Your hands and feet start changing first, fingers fusing to form three broad and strong digits tipped with hoof-like ends. The changes progresses up your limbs, changing shape and structure until the transition starts affecting your torso. There, your body becomes [if Player is male]broad-shouldered and muscular[else]slender and sexily curved[end if] with a definite cervine look overall";
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
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 15; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 4; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 4; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 15;
	now Cunt Tightness entry is 6;
	now libido entry is 90; [ Target libido the infection will rise towards. ]
	now loot entry is "elk herm fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 25; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscled[or]powerful[or]buff[at random]";
	now type entry is "[one of]cervine[or]elk[at random]";
	now magic entry is false;
	now resbypass entry is false;
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
	now Species Name entry is "";
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


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
		if HP of Player > 0: [player submits]
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
		if Player consents:
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
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "DDD";
		now sortorder entry is 4;
		now description entry is "DDDD.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
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
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You just walk away after checking him over for loot.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
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
		say "[one of]wears just a simple leather loincloth, which hangs strangely flat over his crotch[or]wears not a stitch of clothing, revealing a pussy between his legs[or]wears a brown loincloth with red stripes, which hangs strangely flat over his crotch[or]wears a blue and white striped loincloth, which hangs strangely flat over his crotch[or]wears a simple black loincloth, which hangs strangely flat over his crotch[at random]. This doesn't seem to be a regular male elk. ";
		say "The rest of his body is decorated in several places with tribal markings in reddish-brown paint, for example from halfway up his muzzle to the top of his head and with what you assume is a symbol of rank on his left thigh. ";
		[antlers]
		say "A pair of [one of]spike-like antlers on each side of his head marks him as a quite young male[or]spindly four-point antlers on each side of his head marks him as a young male[or]five-point antlers on each side of his head marks him as a young but maturing male[or]proud six-point antlers on each side of his head marks him as a mature male[or]proud seven-point antlers on each side of his head marks him as an experienced male[or]impressive eight-point antlers on each side of his head marks him as a mature male[at random].";
		if "Elk Tribe Markings" is not listed in feats of Player: [not initiated into the tribe]
			say "     The elk trans bull looks you up and down with [one of]an unimpressed [or]a haughty [or]a challenging [or]a curious [or]a surprised [at random]look on his face. ";
			[comment]
			say "[one of]'Trespassing on our tribal lands... a sure sign of overconfidence and stupidity. There's a price to be paid for that, outlander. Do yourself a favor and just submit[or]'I'd been hoping for another outlander like you to appear while I am hunting. Time to pay for your trespass of your tribal lands. Do yourself a favor and just submit[or]'Another outlander intruding here? You'll lever learn, will you? This is tribal land and violating it comes with a price[or]'This land belongs to the elk tribe, outlander. In coming here, you have incurred a debt to my people. But do not worry, I know just the way you can pay us back[at random].' Rubbing his crotch demonstratively, the elk steps forward to take his pleasure from you, if you want or not.";
		else:
			say "     ...";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Elk Tribe Trans Bull";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The [one of]mighty elk[or]towering herbivore[or]muscular elk[or]powerful anthro cervine[or]elk tribesman[at random] [one of]slaps you around a bit[or]gives you a painful kick[or]lowers his head and hits you with a sweep of his horns[or]grabs you by the throat and throws you to the ground[or]grabs you with one of his hands and headbutts you[or]grabs you by the throat, choking you a bit before you can free yourself[at random]!";
	now defeated entry is "[ElkTransBullBeaten]";
	now victory entry is "[ElkTransBullVictorious]";
	now desc entry is "[ElkTransBullDesc]";
	now face entry is "that of an elk, with an elongated muzzle and broad, dark nose[if Player is male]. Atop your head is a small rack of antlers that have begun to form[else]. Your muzzle is slender and your features delicate, looking alluring and feminine[end if]";
	now body entry is "something between an elk and a human being [if Player is male]with a strong chest and broad shoulders. You are well over seven feet tall and your[else]with a slender, sexily curved body. While by no means petite, you are smaller than the males of your kind. Your[end if] limbs end in darkened, hoof-like hands and feet";
	now skin entry is "[one of]brown-furred[or]dark-furred[at random]";
	now tail entry is "You have a short, brown tail.";
	now cock entry is "cervine";
	now face change entry is "it starts to pulse and throb, bulging in some spots and tightening in others as your whole cranium changes shape. You grow a [if Player is male]broad[else]slender[end if] muzzle with a flat, dark nose. Your ears move to the top corners of your head and form cups, completing your head's transition into that of an elk[if Player is male]. A firm, grinding noise grows louder in your new ears as a small rack of antlers form atop your head[end if]";
	now body change entry is "it becomes difficult to control your limbs. Your hands and feet start changing first, fingers fusing to form three broad and strong digits tipped with hoof-like ends. The changes progresses up your limbs, changing shape and structure until the transition starts affecting your torso. There, your body becomes [if Player is male]broad-shouldered and muscular[else]slender and sexily curved[end if] with a definite cervine look overall";
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
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 15;
	now Cunt Tightness entry is 6;
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is "elk trans bull fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 25; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscled[or]powerful[or]buff[at random]";
	now type entry is "[one of]cervine[or]elk[at random]";
	now magic entry is false;
	now resbypass entry is false;
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
	now Species Name entry is "";
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


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
		if HP of Player > 0: [player submits]
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
		if Player consents:
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
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "DDD";
		now sortorder entry is 4;
		now description entry is "DDDD.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
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
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You just walk away after checking her over for loot.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
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
		say "The rest of her body is decorated in several places with tribal markings in reddish-brown paint, for example from halfway up her muzzle to the top of her head and with what you assume is a symbol of rank on her left thigh.";
		if "Elk Tribe Markings" is not listed in feats of Player: [not initiated into the tribe]
			say "     The elk trans cow looks you up and down with [one of]an unimpressed [or]a haughty [or]a challenging [or]a curious [or]a surprised [at random]look on her face. ";
			[comment]
			say "[one of]'Trespassing on our tribal lands... a sure sign of overconfidence and stupidity. There's a price to be paid for that, outlander. Do yourself a favor and just submit[or]'I'd been hoping for another outlander like you to appear while I am hunting. Time to pay for your trespass of your tribal lands. Do yourself a favor and just submit[or]'Another outlander intruding here? You'll lever learn, will you? This is tribal land and violating it comes with a price[or]'This land belongs to the elk tribe, outlander. In coming here, you have incurred a debt to my people. But do not worry, I know just the way you can pay us back[at random].' Rubbing her cock demonstratively, the transgendered elk steps forward to take her pleasure from you, if you want or not.";
		else:
			say "     ...";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Elk Tribe Trans Cow";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The [one of]mighty elk[or]towering herbivore[or]muscular elk[or]powerful anthro cervine[or]elk tribeswoman[at random] [one of]slaps you around a bit[or]gives you a painful kick[or]grabs you by the throat and throws you to the ground[or]grabs you with one of her hands and headbutts you[or]grabs you by the throat, choking you a bit before you can free yourself[at random]!";
	now defeated entry is "[ElkTransCowBeaten]";
	now victory entry is "[ElkTransCowVictorious]";
	now desc entry is "[ElkTransCowDesc]";
	now face entry is "that of an elk, with an elongated muzzle and broad, dark nose. Your muzzle is slender and your features delicate, looking alluring and feminine";
	now body entry is "something between an elk and a human being [if Player is male]with a strong chest and broad shoulders. You are well over seven feet tall and your[else]with a slender, sexily curved body. While by no means petite, you are smaller than the males of your kind. Your[end if] limbs end in darkened, hoof-like hands and feet";
	now skin entry is "[one of]brown-furred[or]dark-furred[at random]";
	now tail entry is "You have a short, brown tail.";
	now cock entry is "cervine";
	now face change entry is "it starts to pulse and throb, bulging in some spots and tightening in others as your whole cranium changes shape. You grow a [if Player is male]broad[else]slender[end if] muzzle with a flat, dark nose. Your ears move to the top corners of your head and form cups, completing your head's transition into that of an elk";
	now body change entry is "it becomes difficult to control your limbs. Your hands and feet start changing first, fingers fusing to form three broad and strong digits tipped with hoof-like ends. The changes progresses up your limbs, changing shape and structure until the transition starts affecting your torso. There, your body becomes [if Player is male]broad-shouldered and muscular[else]slender and sexily curved[end if] with a definite cervine look overall";
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
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 15; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 3; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 90; [ Target libido the infection will rise towards. ]
	now loot entry is "elk trans cow fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 25; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscled[or]powerful[or]buff[at random]";
	now type entry is "[one of]cervine[or]elk[at random]";
	now magic entry is false;
	now resbypass entry is false;
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
	now Species Name entry is "";
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


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
	if BodyName of Player is "Elk Tribe Bull":
		if humanity of Player < 10:
			say "     ...";
		else:
			say "     ...";
	else if BodyName of Player is "Elk Tribe Cow":
		if humanity of Player < 10:
			say "     ...";
		else:
			say "     ...";
	else if BodyName of Player is "Elk Tribe Herm":
		if humanity of Player < 10:
			say "     ...";
		else:
			say "     ...";
	else if BodyName of Player is "Elk Tribe Trans Bull":
		if humanity of Player < 10:
			say "     ...";
		else:
			say "     ...";
	else if BodyName of Player is "Elk Tribe Trans Cow":
		if humanity of Player < 10:
			say "     ...";
		else:
			say "     ...";

Elk Tribe ends here.
