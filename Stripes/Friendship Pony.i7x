Version 2 of Friendship Pony by Stripes begins here.
[Version 2.0 - decrease memory needs]

"Adds a Friendship Pony creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

rfponytype is a number that varies.[@Tag:NotSaved] rfponytype is normally 0.
rfponycolor1 is a text that varies.[@Tag:NotSaved] rfponycolor1 is normally "pink".
rfponycolor2 is a text that varies.[@Tag:NotSaved] rfponycolor2 is normally "lavender".
rfponybm is a text that varies.[@Tag:NotSaved] rfponybm is normally "a cock".
nofponysex is a number that varies.
rfpc1 is a number that varies.[@Tag:NotSaved]	[color 1]
rfpc2 is a number that varies.[@Tag:NotSaved]	[color 2]
rfpbm is a number that varies.[@Tag:NotSaved]	[booty mark]

pfpbmlist is a list of numbers that varies.[@Tag:NotSaved]

[	rfponytype	]
[ 1 = earth pony	]
[ 2 = pegasus	]
[ 3 = unicorn	]

[  - simplified to decrease strain on memory -
[ color list 1: body ]
rfpclist1 is a list of text that varies.[@Tag:NotSaved] rfpclist1 is usually { "sky blue", "sapphire blue", "powder blue", "periwinkle", "light yellow", "jasmine", "yellow", "citrine", "teal", "soft pink", "salmon", "fuchsia", "light green", "honeydew", "forest green", "grass green", "celadon", "orange", "pumpkin", "light brown", "tan", "brown", "lilac", "amethyst", "thistle", "red", "russet", "ruby red", "burgundy", "white", "gray", "cream" }.

[ color list 2: hair ]
rfpclist2 is a list of text that varies.[@Tag:NotSaved] rfpclist2 is usually { "blue", "cobalt blue", "cyan", "azure", "turquoise", "black", "golden yellow", "neon yellow", "sunglow", "maroon", "pink", "hot pink", "carnation", "cerise", "green", "emerald green", "neon green", "light orange", "apricot", "peach", "royal purple", "deep purple", "indigo", "carmine", "flame red", "candy apple red" }.

[ booty mark list ]
rfpbmlist is a list of text that varies.[@Tag:NotSaved] rfpbmlist is usually { "a dildo", "a vibrator", "an egg vibrator", "a horsecock", "a mare's pussy", "a horsecock being licked", "a pussy being licked", "a cum-slick cock", "an overflowing pussy", "an ejaculating cock", "a cock stuffing an anus", "two humping dogs", "a necklace of pearls", "a pair of tits", "a pair of cum-coated tits", "a pony head sucking cock", "a swallow", "a raised tail", "a leather whip", "a broken bed", "a set of furred handcuffs", "a pair of cocks rubbing together", "an extra-thick dildo", "a pair of nipple clamps", "a burst condom", "a strap-on", "a gimp mask", "the shocker handsign", "a finger-stuffed pussy", "a butt plug", "a ball gag", "a dripping candle", "a leather harness", "anal beads" }.
]


to say fponydesc:
	setmongender 4; [creature is female]
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else:
		now sex entry is "nochange";
	now rfponytype is a random number between 1 and 3;
	if a random chance of 1 in 4 succeeds, now rfponytype is 1; [basic pony is most common, 50% chance]
	setrfpdesc;
[	rotate rfpclist1;
	rotate rfpclist2;
	rotate rfpbmList;
	now rfponycolor1 is "[entry 1 in rfpclist1]";
	now rfponycolor2 is "[entry 1 in rfpclist2]";
	now rfponybm is "[entry 1 in rfpbmlist]";]
	say "     You find yourself facing off against a vaguely equine creature with a rather strange and toyetic appearance. Its short body is slender and has only a few curves to accentuate the creature's femininity[if rfponytype is 2] and has a pair of small, feathered wings at its back[end if]. The strange, smiling pony creature stands on four flat, featureless hooves that are little more than flat stumps at the end of its legs. Its overall look is quite smooth and plasticky, having a [rfponycolor1] color to its body. Its head is large and roundish with cartoonishly oversized eyes that look at you with a vacant, happy gaze. Despite lacking any hair or fur anywhere else on its body, the pony has a lush mane and fluffy tail of [rfponycolor2] hair [if a random chance of 1 in 5 succeeds]with brighter highlights [end if]that looks stylishly brushed[if rfponytype is 3]. There is a short horn poking out the front of her hair[end if].";
	say "     '[if Player is fponybodied and the player is fponyskinned]Oh! I loooove your booty mark! Let's be friends[else if Player is fponybodied]Come, cutie! Let's see if we can earn you a booty mark[else if Player is fponyskinned]Oh! I love your booty mark! Now let's see if we can get you looking like a proper little pony[else]Do you like my booty mark? Let's be friends[end if],' she says with a giggle before turning around to show off the design of [rfponybm] on her flanks and the dripping pussy under her raised tail. She gives her rear a shake before coming towards you at a trot. 'Oh, we'll have so much fun together, my new friend,' she says with a grin. Given how things are around here, you're pretty sure you know just what kind of a friend she's looking for and that she won't take no for an answer.";

to setrfpdesc:
	if rfpc1 is 0, now rfpc1 is a random number between 1 and 31;
	if rfpc2 is 0, now rfpc2 is a random number between 1 and 26;
	if rfpbm is 0, now rfpbm is a random number between 1 and 34;
	increase rfpc1 by a random number between 1 and 30;
	if rfpc1 > 31, decrease rfpc1 by 31;
	increase rfpc2 by a random number between 1 and 25;
	if rfpc2 > 26, decrease rfpc2 by 26;
	increase rfpbm by a random number between 1 and 33;
	if rfpbm > 34, decrease rfpbm by 34;
	if rfpc1 is:
		-- 1:
			now rfponycolor1 is "sky blue";
		-- 2:
			now rfponycolor1 is "sapphire blue";
		-- 3:
			now rfponycolor1 is "powder blue";
		-- 4:
			now rfponycolor1 is "periwinkle";
		-- 5:
			now rfponycolor1 is "light yellow";
		-- 6:
			now rfponycolor1 is "jasmine";
		-- 7:
			now rfponycolor1 is "citrine";
		-- 8:
			now rfponycolor1 is "teal";
		-- 9:
			now rfponycolor1 is "soft pink";
		-- 10:
			now rfponycolor1 is "salmon";
		-- 11:
			now rfponycolor1 is "fuchsia";
		-- 12:
			now rfponycolor1 is "light green";
		-- 13:
			now rfponycolor1 is "honeydew";
		-- 14:
			now rfponycolor1 is "forest green";
		-- 15:
			now rfponycolor1 is "grass green";
		-- 16:
			now rfponycolor1 is "celadon";
		-- 17:
			now rfponycolor1 is "orange";
		-- 18:
			now rfponycolor1 is "pumpkin";
		-- 19:
			now rfponycolor1 is "light brown";
		-- 20:
			now rfponycolor1 is "tan";
		-- 21:
			now rfponycolor1 is "brown";
		-- 22:
			now rfponycolor1 is "lilac";
		-- 23:
			now rfponycolor1 is "amethyst";
		-- 24:
			now rfponycolor1 is "thistle";
		-- 25:
			now rfponycolor1 is "red";
		-- 26:
			now rfponycolor1 is "russet";
		-- 27:
			now rfponycolor1 is "ruby red";
		-- 28:
			now rfponycolor1 is "burgundy";
		-- 29:
			now rfponycolor1 is "white";
		-- 30:
			now rfponycolor1 is "gray";
		-- 31:
			now rfponycolor1 is "cream";
	if rfpc2 is:
		-- 1:
			now rfponycolor2 is "blue";
		-- 2:
			now rfponycolor2 is "cobalt blue";
		-- 3:
			now rfponycolor2 is "cyan";
		-- 4:
			now rfponycolor2 is "azure";
		-- 5:
			now rfponycolor2 is "turquoise";
		-- 6:
			now rfponycolor2 is "black";
		-- 7:
			now rfponycolor2 is "golden yellow";
		-- 8:
			now rfponycolor2 is "neon yellow";
		-- 9:
			now rfponycolor2 is "sunglow";
		-- 10:
			now rfponycolor2 is "maroon";
		-- 11:
			now rfponycolor2 is "pink";
		-- 12:
			now rfponycolor2 is "hot pink";
		-- 13:
			now rfponycolor2 is "carnation";
		-- 14:
			now rfponycolor2 is "cerise";
		-- 15:
			now rfponycolor2 is "green";
		-- 16:
			now rfponycolor2 is "emerald green";
		-- 17:
			now rfponycolor2 is "light orange";
		-- 18:
			now rfponycolor2 is "apricot";
		-- 19:
			now rfponycolor2 is "peach";
		-- 20:
			now rfponycolor2 is "royal purple";
		-- 21:
			now rfponycolor2 is "deep purple";
		-- 22:
			now rfponycolor2 is "indigo";
		-- 23:
			now rfponycolor2 is "carmine";
		-- 24:
			now rfponycolor2 is "flame red";
		-- 25:
			now rfponycolor2 is "candy apple red";
		-- 26:
			now rfponycolor2 is "neon green";
	if rfpbm is:
		-- 1:
			now rfponybm is "a dildo";
		-- 2:
			now rfponybm is "a vibrator";
		-- 3:
			now rfponybm is "an egg vibrator";
		-- 4:
			now rfponybm is "a horsecock";
		-- 5:
			now rfponybm is "a mare's pussy";
		-- 6:
			now rfponybm is "a horsecock being licked";
		-- 7:
			now rfponybm is "a pussy being licked";
		-- 8:
			now rfponybm is "a cum-slick cock";
		-- 9:
			now rfponybm is "an overflowing pussy";
		-- 10:
			now rfponybm is "an ejaculating cock";
		-- 11:
			now rfponybm is "a cock stuffing an anus";
		-- 12:
			now rfponybm is "two dogs humping";
		-- 13:
			now rfponybm is "a necklace of pearls";
		-- 14:
			now rfponybm is "a pair of tits";
		-- 15:
			now rfponybm is "a pair of cum-coated tits";
		-- 16:
			now rfponybm is "a pony head sucking cock";
		-- 17:
			now rfponybm is "a swallow";
		-- 18:
			now rfponybm is "a raised tail";
		-- 19:
			now rfponybm is "a leather whip";
		-- 20:
			now rfponybm is "a broken bed";
		-- 21:
			now rfponybm is "a set of furred handcuffs";
		-- 22:
			now rfponybm is "a pair of cocks rubbing together";
		-- 23:
			now rfponybm is "an extra-thick dildo";
		-- 24:
			now rfponybm is "a pair of nipple clamps";
		-- 25:
			now rfponybm is "a burst condom";
		-- 26:
			now rfponybm is "a strap-on";
		-- 27:
			now rfponybm is "a gimp mask";
		-- 28:
			now rfponybm is "a leather harness";
		-- 29:
			now rfponybm is "anal beads";
		-- 30:
			now rfponybm is "the shocker handsign";
		-- 31:
			now rfponybm is "a finger-stuffed pussy";
		-- 32:
			now rfponybm is "a butt plug";
		-- 33:
			now rfponybm is "a ball gag";
		-- 34:
			now rfponybm is "a dripping candle";


to say fpattack:
	if rfponytype is 1:
		say "[one of]The pony[or]She[or]The happy pony[or]The eager equine[or]The overly-friendly pony[at random] [one of]turns around and kicks you hard with her hind legs[or]bashes herself against you, trying to knock you over[or]grinds her body against yours[or]turns around and rubs her wet pussy against you excitedly[at random].";
	else if rfponytype is 2:
		say "[one of]The pony[or]The pegasus[or]She[or]The flying pony[or]The overly-friendly pegasus[at random] [one of]pushes a cartoonishly puffy cloud over you and gives it a hard kick, sending a lightning bolt down onto you[or]gives you a hard kick[or]zips behind you and knocks you with one of her front legs[or]zooms into you hard, trying to push you over[or]flies quickly around you, making a brief whirlwind that batters you with rubble until she's too dizzy to maintain it any longer[or]grinds her body against yours[at random].";
	else if rfponytype is 3:
		say "[one of]The pony[or]The unicorn[or]She[or]The horned pony[or]The overly-friendly unicorn[at random] [one of]shoots a beam of sparkles at your chest[or]levitates some rubble to throw at you[or]stomps on your foot with a hoof[or]uses her magic to make the ground slippery, dropping you on your ass[or]gives you a hard kick[or]jabs you in the belly with her horn, making you cough up some flowers[at random].";

to say losetofpony:
	now nofponysex is 0;
	if HP of Player > 0:
		say "     Giving in to the pony's demands for friendship, you stop resisting and let her approach you";
	else:
		say "     Unable to continue resisting the pony's demands for friendship, you drop to your knees as she approaches you";
	say ". The [if rfponytype is 1]cute equine[else if rfponytype is 2]pegasus[else]unicorn[end if] giggles happily as she bounds up to you putting her forelegs around you and cuddling so tightly it feels like your eyes are going to pop out of your head. After this crushing hug, she fall back on the ground when she releases you.";
	if Player is male:
		say "     Spotting your cock, quite hard after that hug left nowhere else for your blood to go, she giggles all the more and licks her lips. 'Oh, we are going to be such great friends. I can tell,' the [rfponycolor1] pony says[if rfponytype is 2 and Cock Length of Player > 10] as her wings stiffen outwards at the sight of it[end if], hopping atop you. She grinds her wet mare's pussy down atop your throbbing rod, stiffening it right back up before it has a chance to get soft. After a little playful grinding between friends, she shifts her hips and pushes herself down onto your shaft, moaning as she takes your [Cock of Player] penis into her juicy folds[if Cock Length of Player > 20]. Despite your considerable size, she's able to stretch to take you, her plasticky booty stretching wider as your cock plows into her[end if]. Her flanks, marked as they are with [rfponybm], rise and fall over your pulsing member.";
		say "     She rides you eagerly, her hooves rubbing over your [bodytype of Player] body[if rfponytype is 2], her wings aflutter with excitement[else if rfponytype is 3] while glowing magic from her horn lets her grope your balls[end if]. You can feel her hot juices running down your shaft and across your balls as she rides your rod faster and faster. As the happy [if rfponytype is 1]pony[else if rfponytype is 2]pegasus[else]unicorn[end if] squeezes and grinds down hard onto your cock, she smiles and swishes her flowing [rfponycolor2] hair. With your excitement and lust growing, your confused mind is happy to have met such a pretty, lovely and oh so friendly pony. Giggling merrily along with her, you cum hard, pumping your hot load into the pleased pony as a fresh rush of hot juices from her soaks your crotch. Once you're drained, she nuzzles your cheek and pulls off[if Cock Length of Player > 20] with a groan[end if].";
	else:
		say "     Grinning down at you, she giggles all the more as she looks over your prone form. 'Oh, we are going to be such great friends. I can tell,' the [rfponycolor1] pony says, hopping atop you. She raises her [rfponycolor2] tail and grinds her wet mare's pussy down into your face, the scent and sweetness of her juices overpowering your senses. You lick your lips, getting your first sample of her juices before diving your tongue into her juicy, mare's pussy. She moans and nickers happily[if rfponytype is 2] as her wings flutter[end if], giggling about what a good friend you are and to lick her faster.";
		say "     Grabbing onto her ass right on those designs of [rfponybm] on each flank, you squeeze tightly and pull her delicious pussy to your face. You lap away eagerly, finding the [if rfponytype is 1]pony[else if rfponytype is 2]pegasus[else]unicorn[end if]'s taste delightful. It is sugary, saccharine, almost tooth-rottingly sweet, but it seems wonderful to you and you lick for more and more[if rfponytype is 3 and player is female]. She uses glowing magic from her horn to tease your pussy before forming a phallic force to thrust and pound into you while you eat her out[else if rfponytype is 3]. She uses glowing magic from her horn to tease your tight pucker before forming a phallic force to thrust and pound into you while you eat her out[end if]. With your excitement and lust growing, your confused mind is happy to have met such a pretty, lovely and oh so friendly pony. Giggling merrily along with her as she climaxes, your face is covered in her sweet, sticky juices and you lap up as much of it as you can get. After a few more climaxes like that, she's finally satisfied and stands back up.";
	say "     'I hope to see you again, my new friend. It's been magic.' That said, she [if rfponytype is 2]flies[else]trots[end if] off, probably in search of another new friends. It's some time before your head clears enough for you to get up and head on your way.";


[
rfponytype - type (earth/pegasus/unicorn)
rfponycolor1 - body color
rfponycolor2 - hair color
rfponybm - booty mark
]


to say beatthefpony:
	say "     After your last blow, you slam yourself against the staggering pony's side, knocking her over. The [rfponycolor1] [if rfponytype is 1]equine[else if rfponytype is 2]pegasus[else if rfponytype is 3]unicorn[end if] lands in the dirt with a groan. '[one of]Why are you being such a meany?' [or]That's not how friends should act!' [or]I think you need to learn a lesson about friendship,' [at random]she whines. ";
	if nofponysex > 2:
		say "As with the others of your kind, you [if rfponytype is 2]send her flying away[else]drive her off[end if] with a hard swat to her flank, right on her mark of [rfponybm].";
	else if Player is male:
		say "As you look over her, your eyes wander back to that rear of her and the juicy pussy under her [rfponycolor2] tail. You find yourself tempted to get [']friendly['] with the pony, but on your own terms.";
		say "     [bold type]Shall you grab those flanks and mount her?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			now nofponysex is 0;
			LineBreak;
			say "     Moving around behind the [rfponycolor1] pony, you grab her by the ass and knead her flanks right over her booty mark of [rfponybm]. This makes her moan and raise her [rfponycolor2] tail reflexively, putting that juicy mare's pussy of hers on display. As you grope her ass, drops of her cum trickle across those smooth lips and down her thighs. The sight of this gets you hard and, not wanting to wait any longer, you plow your pulsing rod into her. The pretty pony moans and pushes back, her body urging you to thrust fully into her[if Cock Length of Player > 20] despite your considerable size, her plasticky booty stretching wider as your cock plows into it[end if].";
			say "     Keeping a tight grip on her marked flanks, you pound away at her hard and fast, delighting in her soft moans and giggles of pleasure as her cunt squeezes and clutches at your [cock size desc of Player] [Cock of Player] cock with obvious need. The mare's hot hole is delightfully slick, her plasticky pussy turning out to be a very enjoyable fuck[if rfponytype is 1]. The pretty pony moans like a little slut, begging for you to fuck her like a manly stallion[else if rfponytype is 2]. The pretty pegasus moans like a little slut while her wings flutter excitedly[else if rfponytype is 3]. The pretty unicorn moans like a little slut while her glowing horn forms a magical hand to grope your balls[end if]. With a few last, hard thrusts, you drive hard into her and groan, unleashing your hot seed and draining your [Cum Load Size of Player] load into her. Finished, you pull out and wipe your sticky cock across her flank, swat her on her booty mark and send her [if rfponytype is 2]flying[else]trotting[end if] off with a giggling whinny.";
		else:
			LineBreak;
			say "     Resisting the impulse, you decide to instead [if rfponytype is 2]send her flying away[else]drive her off[end if] with a hard swat to her flank, right on her mark of [rfponybm].";
			increase nofponysex by 1;
	else if Player is female:
		say "As you look over her, your eyes wander back to that cute face of her. You find yourself tempted to get [']friendly['] with the pony, but on your own terms.";
		say "     [bold type]Shall you grab that pretty [rfponycolor2] hair of hers and make her eat you out?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			now nofponysex is 0;
			LineBreak;
			say "     Moving around to the front of the [rfponycolor1] pony, you grab her by the rounded head by her [rfponycolor2] hair, pulling her petite muzzle to your crotch. This makes her give a little whimper, but her also sets herself to task without reservation. Her soft, smooth muzzle rubs against your wet folds before her tongue slides out and gets to licking your pussy. As she continues eating you out, you find yourself stroking and brushing her long, plastic hair with your hand. But you don't let up though, keeping her at it until you've had several orgasms from her licking before you're satisfied. When you push her back, her face and muzzle is soaked in your juices, which she eagerly tries to lick away. Finished with her, you give her a swat her on her [rfponybm] booty mark and send her [if rfponytype is 2]flying[else]trotting[end if] off with a giggling whinny.";
		else:
			LineBreak;
			say "     Resisting the impulse, you decide to instead [if rfponytype is 2]send her flying away[else]drive her off[end if] with a hard swat to her flank, right on her mark of [rfponybm].";
			increase nofponysex by 1;
	else:
		say "With no gender of your own, you don't really feel like taking advantage of this opportunity. You decide to instead [if rfponytype is 2]send her flying away[else]drive her off[end if] with a hard swat to her flank, right on her mark of [rfponybm].";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Friendship Pony" to infections of EquineList;
	add "Friendship Pony" to infections of FurryList;
	add "Friendship Pony" to infections of HumorousList;
	add "Friendship Pony" to infections of LatexList;
	add "Friendship Pony" to infections of FemaleList;
	add "Friendship Pony" to infections of BluntCockList;
	add "Friendship Pony" to infections of SheathedCockList;
	add "Friendship Pony" to infections of QuadrupedalList;
	add "Friendship Pony" to infections of TailList;
[	sort rfpclist1 in random order;
	sort rfpclist2 in random order;]
	sort pfpclist in random order;
[	sort rfpbmlist in random order;]
	now Name entry is "Friendship Pony"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[fpattack]";
	now defeated entry is "[beatthefpony]"; [ Text when monster loses. Change 'fpony' as above. ]
	now victory entry is "[losetofpony]"; [ Text when monster wins. Change 'fpony' as above. ]
	now desc entry is "[fponydesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "vaguely equine in shape with large, [pfpcock] eyes and a friendly smile. You have a [if Player is female]pretty little muzzle[else]blocky, square-jawed muzzle[end if] at the end of your pony face. Atop your head you have [if Player is female]long, flowing hair of [pfphair] in color and made of long, glossy, plastic strands. It always seems to be properly styled[else]a crop of short, [pfphair] made of glossy, plastic strands[end if][if pfptype is 3]. Poking out from your hair is a short, magical horn - though the best you can manage with it is a couple of sparks[end if]";
	now body entry is "that of a [if Player is female]slender female[else]stocky male[end if] pony creature with a smooth body and tubular limbs ending in flat and featureless hooves. And while you are still able to stand upright when you try, your normal posture is to be on all fours. Your front hooves strangely seem to be able to still pick up or hold things as if they were hands, though only if you don't think about it too much[if pfptype is 3]. Resting against your back are a small pair of feathered wings that seem far too small to lift you. Your attempts to use them only raise your back up a little[end if]";
	now skin entry is "[fpskindesc]";
	now tail entry is "You have a long and lush tail of [pfphair] hair emerging from a round hole at the base of your spine. Despite being nothing but long strands of glossy plastic, it swishes and moves on its own, drawing attention to your [if Player is fponyskinned][one of]equine bottom[or]sexy ass[or]hot flanks[or]booty mark[at random][else][one of]equine bottom[or]sexy ass[or]hot flanks[at random].";
	now cock entry is "[one of]equine[or]pony[or]horsey[or][pfpcock][at random]";
	now face change entry is "[fponyfacechange]"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "[fponybodychange]"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "[fpskinchange]"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "[fptailchange]"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it becomes equine in shape with a medial ring and a flared glans. But despite its somewhat plasticky look, it seems quite functional with fresh precum dribbling from it in anticipation of being used"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 12; [ These are now the creature's stats... ]
	now dex entry is 15; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12; [ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 26; [ The monster's starting HP. ]
	now lev entry is 3; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5; [ Monster's average damage when attacking. ]
	now area entry is "Fair"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 8; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 10;
	now Cunt Tightness entry is 6;
	now libido entry is 55; [ Target libido the infection will rise towards. ]
	now loot entry is "pony cider"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 22; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]smooth[or][if Player is puremale]stocky[else]slender[end if][or]toyetic[at random]";
	now type entry is "[one of]equine[or]pony[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "fpony"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
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
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
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
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
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
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"fpony"	retaliation rule	--	fpony rule	--	--	--	--	--	--	--

this is the fpony rule:
	choose row MonsterID from Table of Random Critters;
	if a random chance of 2 in 5 succeeds:
		decrease HP of Player by wdam entry / 2;
		let libgrowth be wdam entry / 2;
		if FaceName of Player is listed in infections of equinelist, increase libgrowth by 1;
		if "Cold Fish" is listed in feats of Player, decrease libgrowth by a random number between 1 and 2;
		if "Horny Bastard" is listed in feats of Player, increase libgrowth by a random number between 0 and 2;
		if libgrowth > 10, now libgrowth is 10;
		increase Libido of Player by libgrowth;
		say "[one of]'We shouldn't fight over this. Let's be friends!' [or]'I'm sorry. Let's just snuggle, friend!' [or]'How about we just kiss and make up?' [or]'Let's get to know each other,' [or]'Stop being so grumpy and gimme a kiss,' [or]'I know! A kiss will cheer you up,' [at random]the pony says, putting her forelegs around you in a hug while you're still recovering from her recent assault. She pulls you into a kiss for [special-style-2][wdam entry / 2][roman type] damage and [if libgrowth < 5]slightly [end if]increased libido[if HP of Player > 0 and lust of Player < 110]. You moan softly and reach to grab that ass of hers, but recover your reason and push her back[else]. You moan softly into the kiss and reach back, grabbing that ass of hers right on that design of [rfponybm] on her flank[end if].";

Section 4 - TF mechanics

to say fpskindesc:
	if looknow is 1:
		say "smooth, plasticky flesh without marks of blemishes. Save for the design of [pfpbootymark] on your [if the player is fponybodied]flanks[else]ass cheeks[end if], you have an even [pfpskin] color to your";
	else:
		say "[one of][pfpskin][or]plasticky[as decreasingly likely outcomes]";

to say fponybodychange:
	ponystatuscheck;
	say "changes rapidly spread through your body, rendering your body into a smooth and equine shape with tube-like limbs ending in flat, featureless hooves[if pfptype is 3]. There is a stretching at your back as a small pair of feathered wings push their way out[end if]";

to say fponyfacechange:
	ponystatuscheck;
	say "a rush of giddy happiness overtakes you. Your vision goes blurry and - with a pop and pop - your eyes grows much larger than normal. As you're adjusting to this, your head changes as well, becoming vaguely equine in shape, in a very simplistic and stylized sort of way[if Player is female]. A mane of long, [pfphair] hair grows in atop your transformed head[else]. A crop of short, [pfphair] hair grows in atop your transformed head[end if][if pfptype is 3]. There is a final pop as a short horn suddenly pushes out of your forehead with a few sparkles of color[end if]";

to say fpskinchange:
	ponystatuscheck;
	selectbootymark;
	say "your skin loses any marks or blemishes, becoming as smooth as plastic and turning [pfpskin] in color. There's a strange tingling at your hips followed by a strange flash of light. Looking down at it, you can see that the design of [pfpbootymark] has been emblazoned upon your [if the player is fponybodied]flanks[else]ass cheeks[end if] - your new booty mark";

to say fptailchange:
	ponystatuscheck;
	say "a strange sensation vibrates through it. Your spine twitches and, with a sudden push and a burst of color, a lush tail of long, vibrant hair pops out of a hole formed for it. Your tail is [pfphair] in color and made of plastic hair";


pfpclist is a list of numbers that varies. pfpclist is usually { 1, 2, 3, 4, 5, 6, 7, 8 }.
pfptype is a number that varies. pfptype is usually 1.
pfpskin is a text that varies. pfpskin is usually "baby blue".
pfpcock is a text that varies. pfpcock is usually "blue".
pfphair is a text that varies. pfphair is usually "turquoise".
pfpbootymark is a text that varies. pfpbootymark is usually "a jar of cum".

to ponystatuscheck:
	if Player is not fponybodied and player is not fponyfaced:
		if pfptype is 0:
			now pfptype is a random number between 1 and 4;
		else if pfptype is 1 or pfptype is 2:	[earth]
			now pfptype is a random number between 2 and 4;
		else if pfptype is 3:				[pegasus]
			now pfptype is a random number between 2 and 4;
			if pfptype is 3, now pfptype is 2; [unicorn]
		else if pfptype is 4:
			now pfptype is a random number between 1 and 3;
	if Player is not fponytailed and player is not fponyfaced and player is not fponyskinned and player is not fponycocked:
		rotate pfpcList;
		let pfpc be entry 1 in pfpcList;
		if pfpc is 1:
			now pfpskin is "baby blue";
			now pfpcock is "blue";
			now pfphair is "turquoise";
		else if pfpc is 2:
			now pfpskin is "amber";
			now pfpcock is "golden";
			now pfphair is "chartreuse";
		else if pfpc is 3:
			now pfpskin is "pastel green";
			now pfpcock is "mint green";
			now pfphair is "tangerine";
		else if pfpc is 4:
			now pfpskin is "coral";
			now pfpcock is "cerise";
			now pfphair is "magenta";
		else if pfpc is 5:
			now pfpskin is "pale orange";
			now pfpcock is "orange";
			now pfphair is "straw";
		else if pfpc is 6:
			now pfpskin is "raspberry red";
			now pfpcock is "maroon";
			now pfphair is "violet";
		else if pfpc is 7:
			now pfpskin is "lavender";
			now pfpcock is "teal";
			now pfphair is "navy blue";
		else if pfpc is 8:
			now pfpskin is "ivory";
			now pfpcock is "green";
			now pfphair is "lime green";

to selectbootymark:
	now pfpbmlist is {};
	add {1, 2, 3, 4} to pfpbmList;
	if "Junk Food Junky" is listed in feats of Player, add 5 to pfpbmList;
	if "Male Preferred" is listed in feats of Player, add 6 to pfpbmList;
	if "Female Preferred" is listed in feats of Player, add 7 to pfpbmList;
	if "Herm Preferred" is listed in feats of Player, add 8 to pfpbmList;
	if Player is submissive, add 9 to pfpbmList;
	if "Cold Fish" is listed in feats of Player, add 10 to pfpbmList;
	if "Physical Booster" is listed in feats of Player, add 11 to pfpbmList;
	if "Mental Booster" is listed in feats of Player, add 12 to pfpbmList;
	if "Cuckold" is listed in feats of Player, add 13 to pfpbmList;
	if "Top Dog" is listed in feats of Player, add 14 to pfpbmList;
	if "Proud Parent" is listed in feats of Player, add 15 to pfpbmList;
	if "Black Belt" is listed in feats of Player, add 16 to pfpbmList;
	if "One Way" is listed in feats of Player, add 17 to pfpbmList;
	if anallevel is 3, add 18 to pfpbmList;
	if Player is kinky, add 19 to pfpbmList;
	if "Wary Watcher" is listed in feats of Player, add 20 to pfpbmList;
	if Player is mpreg_ok, add 21 to pfpbmList;
	if "Sterile" is not listed in feats of Player:
		if "Litter Bearer" is listed in feats of Player:
			add 22 to pfpbmList;
		else if "Fertile" is listed in feats of Player:
			add 23 to pfpbmList;
	if "Roughing It" is listed in feats of Player, add 24 to pfpbmList;
	if "Breasts" is listed in feats of Player, add 25 to pfpbmList;
	if "Bad Luck" is listed in feats of Player, add 26 to pfpbmList;
	if "Curious" is listed in feats of Player, add 27 to pfpbmList;
	if "City Map" is listed in feats of Player or "Open World" is listed in feats of Player, add 28 to pfpbmList;
	if "Sterile" is listed in feats of Player, add 29 to pfpbmList;
	if "Expert Medic" is listed in feats of Player, add 30 to pfpbmList;
	if "Cock Slap" is listed in feats of Player, add 31 to pfpbmList;
	if "Ball Crush" is listed in feats of Player, add 32 to pfpbmList;
	if "Boob Smother" is listed in feats of Player, add 33 to pfpbmList;
	if "Microwaved" is listed in feats of Player, add 34 to pfpbmList;
	if lust of Sven is 2 or FangWS is 1 or WSlevel is 3, add 35 to pfpbmList;
	add 36 to pfpbmList;
	sort pfpbmlist in random order;
	if entry 1 in pfpbmlist is:
		-- 1:
			now pfpbootymark is "a black dildo";
		-- 2:
			now pfpbootymark is "a red vibrator";
		-- 3:
			now pfpbootymark is "a slice of cream pie";
		-- 4:
			now pfpbootymark is "a jar of cum";
		-- 5:
			now pfpbootymark is "a soda can";
		-- 6:
			now pfpbootymark is "a blue male symbol";
		-- 7:
			now pfpbootymark is "a pink female symbol";
		-- 8:
			now pfpbootymark is "a purple herm symbol";
		-- 9:
			now pfpbootymark is "a leather collar";
		-- 10:
			now pfpbootymark is "a fish packed in ice";
		-- 11:
			now pfpbootymark is "a muscly arm";
		-- 12:
			now pfpbootymark is "a throbbing brain";
		-- 13:
			now pfpbootymark is "a cuckoo chick in a nest";
		-- 14:
			now pfpbootymark is "an alert doberman with a blue ribbon";
		-- 15:
			now pfpbootymark is "a collection of puppies";
		-- 16:
			now pfpbootymark is "a gi and black belt";
		-- 17:
			now pfpbootymark is "a one-way street sign";
		-- 18:
			now pfpbootymark is "a bottle of lube";
		-- 19:
			now pfpbootymark is "a whip and chains";
		-- 20:
			now pfpbootymark is "the all-seeing eye";
		-- 21:
			now pfpbootymark is "an egg stamped with the male symbol";
		-- 22:
			now pfpbootymark is "several egg cells surrounded by sperm";
		-- 23:
			now pfpbootymark is "an egg cell surrounded by sperm";
		-- 24:
			now pfpbootymark is "a bedroll";
		-- 25:
			now pfpbootymark is "a pair of coconuts";
		-- 26:
			now pfpbootymark is "a broken mirror";
		-- 27:
			now pfpbootymark is "a magnifying glass examining a sticky cumstain";
		-- 28:
			now pfpbootymark is "a map with pushpins in it";
		-- 29:
			now pfpbootymark is "a tied-off used condom";
		-- 30:
			now pfpbootymark is "a caduceus";
		-- 31:
			now pfpbootymark is "a meaty cock hitting something";
		-- 32:
			now pfpbootymark is "a hefty set of balls cracking the ground";
		-- 33:
			now pfpbootymark is "a giant set of tits around the silhouette of a head";
		-- 34:
			now pfpbootymark is "a microwave oven";
		-- 35:
			now pfpbootymark is "a pissing horsecock";
		-- 36:
			now pfpbootymark is "a slice of cherry cheesecake";

[
	now pfpbmlist is {};
	add { "a black dildo", "a red vibrator", "a slice of cream pie", "a jar of cum" } to pfpbmList;
	if "Junk Food Junky" is listed in feats of Player, add "a soda can" to pfpbmList;
	if "Male Preferred" is listed in feats of Player, add "a blue male symbol" to pfpbmList;
	if "Female Preferred" is listed in feats of Player, add "a pink female symbol" to pfpbmList;
	if "Herm Preferred" is listed in feats of Player, add "a purple herm symbol" to pfpbmList;
	if Player is submissive, add "a leather collar" to pfpbmList;
	if "Cold Fish" is listed in feats of Player, add "a fish packed in ice" to pfpbmList;
	if "Physical Booster" is listed in feats of Player, add "a muscly arm" to pfpbmList;
	if "Mental Booster" is listed in feats of Player, add "a throbbing brain" to pfpbmList;
	if "Cuckold" is listed in feats of Player, add "a cuckoo chick in a nest" to pfpbmList;
	if "Top Dog" is listed in feats of Player, add "an alert doberman with a blue ribbon" to pfpbmList;
	if "Proud Parent" is listed in feats of Player, add "a collection of puppies" to pfpbmList;
	if "Black Belt" is listed in feats of Player, add "a gi and black belt" to pfpbmList;
	if "One Way" is listed in feats of Player, add "a one-way street sign" to pfpbmList;
	if anallevel is 3, add "a bottle of lube" to pfpbmList;
	if Player is kinky, add "a whip and chains" to pfpbmList;
	if "Wary Watcher" is listed in feats of Player, add "the all-seeing eye" to pfpbmList;
	if Player is mpreg_ok, add "an egg stamped with the male symbol" to pfpbmList;
	if "Sterile" is not listed in feats of Player:
		if "Litter Bearer" is listed in feats of Player:
			add "several egg cells surrounded by sperm" to pfpbmList;
		else if "Fertile" is listed in feats of Player:
			add "an egg cell surrounded by sperm" to pfpbmList;
	if "Roughing It" is listed in feats of Player, add "a bedroll" to pfpbmList;
	if "Breasts" is listed in feats of Player, add "a pair of coconuts" to pfpbmList;
	if "Bad Luck" is listed in feats of Player, add "a broken mirror" to pfpbmList;
	if "Curious" is listed in feats of Player, add "a magnifying glass examining a sticky cumstain" to pfpbmList;
	if "City Map" is listed in feats of Player or "Open World" is listed in feats of Player, add "a map with pushpins in it" to pfpbmList;
	if "Sterile" is listed in feats of Player, add "a tied-off used condom" to pfpbmList;
	if "Expert Medic" is listed in feats of Player, add "a caduceus" to pfpbmList;
	if "Cock Slap" is listed in feats of Player, add "a meaty cock hitting something" to pfpbmList;
	if "Ball Crush" is listed in feats of Player, add "a hefty set of balls cracking the ground" to pfpbmList;
	if "Boob Smother" is listed in feats of Player, add "a giant set of tits around the silhouette of a head" to pfpbmList;
	if "Microwaved" is listed in feats of Player, add "a microwave oven" to pfpbmList;
	if lust of Sven is 2 or FangWS is 1 or WSlevel is 3, add "a pissing horsecock" to pfpbmList;
	sort pfpbmlist in random order;
	now pfpbootymark is entry 1 in pfpbmList;
]

Section 5 - Pony Cider

Table of Game Objects (continued)
name	desc	weight	object
"pony cider"	"A bottle of golden liquid labeled as [']cider[']."	1	pony cider

pony cider is a grab object. It is a part of the player. pony cider is infectious. The strain of pony cider is "Friendship Pony".

The usedesc of pony cider is "[drinkponycider]";

to say drinkponycider:
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		setmonster "Friendship Pony";
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of Player:
		setmonster "Friendship Pony";
		now sex entry is "Both";
	else:
		setmonster "Friendship Pony";
		now sex entry is "Female";
	say "     Deciding to drink down the cider, you pop the top off and start downing it. It has a strong, sharp taste to it, heavy with apple and equine flavor. As well, there is a faint plastic taste despite being stored in a glass bottle.";
	increase Libido of Player by 5;
	PlayerDrink 8;

the scent of pony cider is "The cider smells strongly of apples and equines.".


Section 6 - Definitions

Definition: a person is unpony:
	if BodyName of Player is "Friendship Pony", no;
	if FaceName of Player is "Friendship Pony", no;
	if SkinName of Player is "Friendship Pony", no;
	if TailName of Player is "Friendship Pony", no;
	if CockName of Player is "Friendship Pony", no;
	yes;

Definition: a person is fponyfaced:
	if FaceName of Player is "Friendship Pony", yes;
	no;

Definition: a person is fponyskinned:
	if SkinName of Player is "Friendship Pony", yes;
	no;

Definition: a person is fponybodied:
	if BodyName of Player is "Friendship Pony", yes;
	no;

Definition: a person is fponycocked:
	if CockName of Player is "Friendship Pony", yes;
	no;

Definition: a person is fponytailed:
	if TailName of Player is "Friendship Pony", yes;
	no;


Section 7 - Endings

when play ends:
	if BodyName of Player is "Friendship Pony":
		if humanity of Player < 10:
			say "     Having your old identity slip away from you, the new instincts of your infection take over. Your mind is rewritten, filled with thoughts of friendship, kindness and simplistic moral lessons[if pfptype is 4 and the player is fponyfaced]. You also figure out what you were doing wrong and are able to unlock your horn's magic. After taking a few minutes to enjoy it on yourself, you remember how fun it is to share with friends and trot off to make some[else if pfptype is 3]. Realizing you have wings, you flap them and fly with ease now. Taking to the air, you go off in search of some friends to play with[else]. Excited at the prospect of making some new friends, you head off to find some[end if].";
			say "     Over the course of your wandering, you inexorably make your way to the fairgrounds. There you meet up with five other pretty ponies, representing a diverse set of character archetypes who all want to be your friend. Life with your new friends is wonderful, magical even, because there's nothing better than friends, especially when it's friends with benefits.";
		else:
			say "     When the military comes to pick you up, a few of the tough soldiers can't help but chuckle and crack jokes between themselves at your strange, pony-like body[if Player is fponyskinned]. Your booty mark of [pfpbootymark] is a particular source of amusement for them[end if]. You bear with it though, feeling friendly and good-natured about it, probably due to your imminent departure from the infected city. It's a small price to pay for getting out of there safely even if not unchanged for your experience.";
			say "     Your unusual form draws a different kind of attention from the military's scientists. They are rather perplexed by some of your body's unusual abilities, such as how you can bend your forelimbs like arms at some times but also use them to trot at others as well as your ability to manipulate objects despite having a flat, featureless hooves instead of hands at the end of your forelimbs[if pfptype is 4 and the player is fponyfaced]. You also start to get the hang of using your horn's magic during this time, but you take care not to show that off, lest you be subject to another battery of tests. You instead save it for some discreet fun when you're alone and in need of a little telekinetic [']relief['][else if pfptype is 3]. You also start to get the hang of using your tiny wings to fly. You're not really sure how you're doing it, since they're clearly too small to support you, but as long as you don't think about it too hard, you manage to stay aloft[end if]. You get little in the way of answers to satisfy you, but you remain as pleasant as can be expected until some new surprise from the city distracts them and you're released.";
			if pfptype is 4 and the player is fponyfaced:
				say "     After your release, you put more work into perfecting your talent at using your horn to levitate and manipulate objects, eventually becoming quite talented at it. As part of your practice, you try manipulating and carving clay, which you find an enjoyable pastime. As your skill improves, so does your sculpted creations and they start to draw the attention of others. While there's little demand for art in this new, chaotic world, you do well enough to make a living. Sexual pieces and renditions of transformed models are certainly the most popular items, with the latter being particularly enjoyable for you as you do so enjoy making friends with your clients. This keeps them coming back for more in more ways than one.";
			else if pfptype is 3:
				say "     After your release, you put more work into perfecting your flying skills. At first, you have a few close calls where you think about what you're doing too hard or remember that it's physically impossible and almost crash. With this in mind, you mainly stick low to the ground over fields until you eventually are able to retain a proper mindset to sustain flight.";
				say "     It is during one of your test flights to higher altitudes that you discover your flight comes with another unusual ability. You'd decided to fly through a cloud but were surprised to find that it seemed poofy and fluffy in your presence. Despite being only airborne water vapor, it can be even walked on. With a little practice you learn how to push the clouds around, kick them to stimulate precipitation or to even prompt a lightning strike from a storm cloud. As word starts to get around about your ability, you're hired by Zephyr to keep the skies around their helipad clear whenever they need it. And working with the pilots, you make plenty of friends, many of whom are happy to get extra-friendly with their personal weatherman.";
			else:
				say "     After your release, you wander in search of a new place to call your home. Eventually you come across a small pear orchard that's been abandoned. At first, you're a little wary of just moving in, but after a while you figure the residents aren't coming back one way or another and start sprucing it up more to your liking. Despite your strange form, you take to the work of maintaining the orchard and working the farmland on the property. And when others infected with barnyard creature forms come around, you make friends with them and soon have a motley collection of hired hands to help work the land for you. Your farm produces food for the nearby communities struggling to function in the midst of the fall of society, helping them be just a little more safe and stable. You and your new friends live well, if hardworking, lives on this land that you've made yours by your own two hands - er, hooves. And it's not all work, as there always seems to be time to take a break for a sexy snuggle under a shady pear tree or a romp in the hay.";
			say "     Life with your new friends is wonderful, magical even, because there's nothing better than friends, especially when it's friends with benefits.";

Friendship Pony ends here.
