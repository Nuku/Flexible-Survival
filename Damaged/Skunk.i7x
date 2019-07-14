Version 10 of Skunk by Damaged begins here.
[ Version 10.3 - Relocated to Urban Forest area ]

"Adds male and female Skunks to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

skunkready is a number that varies.
Skunk_type is a number that varies. [if it is 0 it means to pick a new creature type. if it is a 1 it is a skunk girl, if it's a 2 it's a skunkbeast...]
skunkfight is a number that varies.

to say skunk_desc:
	choose row MonsterID from the Table of Random Critters;
	let debit be 0;
	if hardmode is true and level of Player > 5, let debit be level of Player - 5;
	if a random number from 1 to 10 > 3 or skunkfight is 3 or skunkbeaststatus is 1: [female skunk]
		setmongender 4; [creature is female]
		say "A very female anthropomorphic skunk with hints of animal, its curves and breasts leave you wanting, without any reservations, to fuck it senseless.";
		now Skunk_type is 1;
		now HP entry is 28 + ( debit * 4 ); [- How many HP has the monster got? -]
		now monsterHP is 28 + ( debit * 4 );
		now wdam entry is 6 + ( debit / 3 ); [-Amount of Damage monster Does when attacking.-]
	else: [male skunk]
		setmongender 3; [creature is male]
		say "This skunkbeast would easily pass for a normal animal, if it weren't for two things. One, the creature is the size of a small horse, and two, it's sporting the biggest erection you've ever seen as it waddles around on all fours. Which is a bit less than comforting, with the way it looks into your eyes.";
		now Skunk_type is 2;
		now HP entry is 64 + ( debit * 5 ); [- How many HP has the monster got? -]
		now monsterHP is 64 + ( debit * 5 );
		now wdam entry is 10 + ( ( 4 * debit ) / 11 ); [-Amount of Damage monster Does when attacking.-]
	if BodyName of Player is "Skunkbeast Lord":	[skunkbeast player auto-loses]
		now wdam entry is 0;
		now combat abort is 1;
		say "[line break][skunkg vict]";


to say skunk_attack:
	choose row MonsterID from Table of Random Critters;
	if skunkbeaststatus is 1 and BodyName of Player is "Skunkbeast Lord":
		say "The skunk girl runs up to you, throwing herself upon you as she seeks her skunkbeast lord's affections.";
		now wdam entry is 0;
		now Libido of Player is 110;
	else if Skunk_type is 1:
		say "     The [one of]sexy skunk[or]buxom female[or]black and white babe[or]horny skunk[or]skunk girl[at random] [one of]charges at you, bringing her feet forward in a flying kick[or]leaps in and bites at your arm[or]claws at you with her slender paws[or]presses her sexy body to yours with a lustful moan[at random].";
	else:
		say "     The [one of]giant skunk[or]black and white beast[or]bestial skunk[or]skunkbeast[at random] [one of]lunges forward, batting you aside[or]rushes in and bites at your arm[or]claws at you viciously[at random].";


to say skunk vict:
	if skunkready > 2:
		if Cunt Depth of Player > 5:
			say "     The large skunk snuffles at the air for something, deciding you're what he's looking for it seems. A huge, heavy paw knocks you down onto your hands and knees, and before you can get back up, the heavy weight pins you down. The large skunkbeast climbs over your [bodydesc of Player] body and makes a few attempts to line up his throbbing cock with your hot hole. The thick shaft parts your new black-furred slit, and pounds you wildly!";
			say "     The wild beast uses you for his own pleasure. As your body betrays you, a low groan rising in your throat and you submit to his animalistic mating. You find yourself pushing back and panting, lusting to be taken by this wild creature. You wriggle your rear and ride his cock, but the thick, messy cum that floods your body comes just before you can release, leaving you almost desperate and begging for more. Your womb is plump and warm with his ample load.[impregchance]";
			increase skunkready by 1;
		else if Player is female:
			say "     The large skunk snuffles at the air for something and nuzzles at your crotch. As if deciding you're not quite ready yet, he lets his black, gooey tongue slide over your pussy, then push into it, making you moan in pleasure. The powerful beast dives his tongue into you repeatedly, lapping up your juices and sliding his thick, gooey drool into your pussy until you cum hard. You grip his head and stroke his ears, loving the attention this beast is giving you despite yourself and find yourself longing to be ready for him someday soon.";
			follow the sex change rule;
		else:
			say "     The massive skunk sprays thick, oily musk everywhere! Sticky as it is, it doesn't remain on your skin for long as it smooths out in places, leaving behind a soft almost rubbery-textured fur, even as you feel a tingle at your groin.";
		increase skunkready by 1;
	else:
		say "     The massive skunk sprays thick, oily musk everywhere! Sticky as it is, it doesn't remain on your skin for long as it smooths out in places, leaving behind a soft almost rubbery-textured fur, even as you feel a tingle at your groin.";
		infect;
		increase skunkready by 1;

to say skunk defeat:
	if skunkready > 3: [been sprayed or mated a lot]
		let tempnum be a random number between 1 and 10;
		if Cunt Depth of Player > 5 and skunkready > tempnum: [ready to take him, chance for final fuck]
			say "     With one last feat of strength, the beast grabs you, lifting itself onto your rear, thrusting madly. You whimper as you find yourself unable to resist as his final rutting brings you to your limit. As your world turns fuzzy, gripped in a rushing orgasm you feel the beast's heated seed spray your inner most parts one last time.[impregchance]"; [rawr final mating]
			increase skunkready by 1;
			infect;
		else:
			say "     The beast reaches out a paw one last time, but before it reaches you the light fades from its eyes.";
	else:
		say "     The beast reaches out a paw one last time, but before it reaches you the light fades from its eyes.";

to say skunk bodyshift:
	if Cunt Count of Player > 1:
		say "your body becomes even more feminine, waist slimming, hips widening leaving you with curves that would make anyone, male or female, drool in lust";
	else:
		say "your body becomes more feminine, curves building that make it impossible to define you as anything but female despite what equipment you might have";

to say skunkg vict:
	now skunkfight is 2;
	if skunkbeaststatus is 1:	[skunkbeast lord]
		say "[sblvictorysex]";
	else if Player is male and skunkready > 2:
		say "     Victorious, the female skunk grabs your [cock size desc of Player] cock and starts pumping at it vigorously. With your [Cock of Player] meat hard in her paw, she sinks her muzzle down overtop of it. She licks and sucks at your shaft, drooling black goo onto it as you blast your hot load into her muzzle. She licks her lips and swallows your semen down. She grins as the stick, black goo doesn't remain on your skin for long as it smooths out in places and starts to sink into you, leaving behind a soft, almost rubbery-textured fur even as you feel a tingle in your groin.";
		follow the sex change rule;
	else:
		say "The female skunk turns, spraying thick, oily musk everywhere! Sticky as it is, it doesn't remain on your skin for long as it smooths out in places, leaving behind a soft almost rubbery-textured fur, even as you feel a tingle at your groin.";
	increase skunkready by 1;

to say skunkg defeat:
	now skunkfight is 1;
	if skunkbeaststatus is 1:	[skunkbeast lord]
		say "[sblvictorysex]";
	else if a random number from 1 to 100 > 2:
		say "     The skunk girl looks up at you, smiling even as her body seems to turn to liquid, 'I may be gone, but you can still carry His kittens...' she mutters cryptically as she collapses, dissolving completely.";
	else:
		say "     The skunk girl turns to run from you and you relax thinking the fight over, suddenly you realize your error as one last gob of oily musk hits you. Sticky as it is, it doesn't remain on your skin for long as it smooths out in places, leaving behind a soft almost rubbery-textured fur, even as you feel a tingle at your groin.";
		infect "Skunk";

to say skunk_defeat:
	if Skunk_type is 1 or skunkbeaststatus is 1:
		say "[skunkg defeat]";
	else:
		say "[skunk defeat]";
	now Skunk_type is 0;

to say skunk_vict:
	if Skunk_type is 1 or skunkbeaststatus is 1:
		say "[skunkg vict]";
	else:
		say "[skunk vict]";
	now Skunk_type is 0;

to say sblvictorysex:
	now fightoutcome is 11;
	say "     Feeling the instinctual urges of your skunkbeast side, you cannot resist and growl lustfully, welcoming the advances of the buxom skunk. Her beautiful body presses against yours and she runs her paws across your bestial form. Her nimble paws roam around, lavishing attention upon every sensitive spot they can find as she seeks to please her skunkbeast [if Player is purefemale]lady[else]lord[end if][if skrp is 1]. Your lower head is given several kisses as well, the two skunk girls diving their tongues into each other's muzzle[end if][if Player is neuter]. The skunk girl snuggles with you, grooming your body, running her paws all over it and grinding her dripping crotch against your bare groin[end if].";
	if Player is not neuter:		[not neuter]
		let randomskunksex be a list of numbers;
		if Player is male, add 1 to randomskunksex;
		if Player is male, add 1 to randomskunksex; [double-likelihood]
		if Player is male, add 2 to randomskunksex;
		if Player is female, add 3 to randomskunksex;
		if Player is purefemale, add 4 to randomskunksex;
		if Player is purefemale, add 4 to randomskunksex; [double-likelihood]
		sort randomskunksex in random order;
		if entry 1 of randomskunksex is 1, say "[sblsex1]";
		if entry 1 of randomskunksex is 2, say "[sblsex2]";
		if entry 1 of randomskunksex is 3, say "[sblsex3]";
		if entry 1 of randomskunksex is 4, say "[sblsex4]";
	sblinfect;


to say sblsex1:		[fuck skunkgirl]
	say "     The skunk girl positions herself on all fours, moaning in need as she raises her fluffy tail as wiggles her round bottom[if skrp is 1]. Your skunkhead body companion grins and licks her lips at the sight of that dripping muff. '[one of]Awwww yeah[or]That's what I'm talkin['] about[or]Let's go[at random]!' she says excitedly[end if]. You are atop the skunk right away, bringing you throbbing prick to her juicy cunt and pressing it deep inside her. She moans loudly and claws at the ground [if Cock Length of Player > 16]as your massive [Cock of Player] cock pushes into her, stuffing so much her tight belly is stretched out by it[else]as your cock is stuffed into her[end if]. You growl lustfully, pounding into her hard and fast before finally driving deep inside and pumping her full of your hot load.";


to say sblsex2:		[fellatio]
	say "     The skunk runs her paws over your stiff cock, licking and kissing at it before opening her muzzle wide and giving you a blow job[if skrp is 1]. Your lower head moans in pleasure. '[one of]Mmmm... open wide[or]Take it all, slut[or]Suck us good, girl[at random],' she says excitedly[end if]. The skunk's talented muzzle works over your dripping shaft, lavishing attention upon it[if Cock Length of Player > 12] and eventually managing to get the whole big thing stuffed down her throat[end if]. You moan and growl in pleasure at her expert work, eventually cumming hard and blasting your hot seed down her throat, feeding your buxom servant a heavy load of skunk cum.";


to say sblsex3:		[skunkbeast tops player]
	[puts Skunkbeast Lord as lead monster for possible impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Skunkbeast Lord":
			now MonsterID is y;
			break;
	say "     As the skunk is running her paws over your body in tribute to her [if Player is purefemale]mistress[else]master[end if], you notice the scent of another in the air. A skunkbeast snuffles towards you, having been drawn by your scent[if skrp is 1]. The skunk face at your groin smiles at the sight of him. '[one of]Oh, look at how hung he is[or]Just what we need[or]Oh baby[at random]!' she moans excitedly, your shared cunt getting wet at the sight of him[end if]. You rumble happily and shift around and present your rump to him, offering your dripping cunt to the sexy beast. He growls and climbs atop your [bodydesc of Player] form, sinking his large cock into your skunkbeast body and stuffing you oh so wonderfully. As he pounds away at you, the skunk girl [if Player is male]licks and sucks at your cock until you cum down her throat[else]latches onto one of your nipples, nursing for your milk[end if]. When the skunkbeast atop you finally cums, you both growl loudly, loving the sensation of his ample load being blasted into your needy womb as he seeks to breed you.[impregchance]";


to say sblsex4:		[cunnilingus]
	say "     The skunk runs her paws back towards your hind legs and runs her fingers across your pussy, making it quiver and drip musky fluids. There are a few tentative licks before her muzzle is buried in your muff and her tongue is lavishing attention upon your hot cunt. You [if skrp is 1]and your extra head [end if]moan in pleasure, telling the sexy girl what a fine job she's doing for her mistress. Her tongue darts all over and even into your pussy as far as it can reach. There's the occasional nibble from those sharp teeth that send shivers along your spine while her fingers tease and pinch your clit. She eats you out through several climaxes until you're fully satisfied.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Skunk"; [name of the overall species of the infection, used for children, ...]
	add "Skunk" to infections of FurryList;
	add "Skunk" to infections of NatureList;
	add "Skunk" to infections of MaleList;
	add "Skunk" to infections of SheathedCockList;
	add "Skunk" to infections of BipedalList;
	add "Skunk" to infections of TailList;
	now Name entry is "Skunk"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[skunk_attack]";
	now defeated entry is "[skunk_defeat]";
	now victory entry is "[skunk_vict]";
	now desc entry is "[skunk_desc]"; [ Description of the creature when you encounter it.]
	now face entry is "that of a large-muzzled female skunk's"; [ Face description, format as "Your face is (your text)."]
	now body entry is "curvaceous and screams 'female and NEEDS it'. Men want to fuck you, women want to be you... and fuck you"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "[if looknow is 1]dark black fur contrasting with pure white down your front and a matching stripe down your back, completely covering your[else]black and white furred[end if]"; [ skin Description, format as "You have (your text) skin."]
	now tail entry is "A thick, black mass of fur blossoms from your rear, growing in size until it's reached just above your head and then bending gracefully near the tip. A pair of white stripes travel up its length, completing the effect."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "human-shaped"; [- Cock Description, format as you have a "size" (your text) cock-]
	now face change entry is "black fur moves over your head like a hood, leaving a muzzle that's white on the bottom with a head that's all black, all completed by the pair of rounded ears sitting atop it and a white stripe from the tip of your nose to your back"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "[skunk bodyshift]"; [body change text. format as "Your body feels funny as (your text)."]
	now skin change entry is "a sea of black moves over your back and a sea of white over your chest, while a matching stripe forms down the middle of the black"; [- skin change text. format as "Your skin feels funny as (your text)." -]
	now ass change entry is "the black fur shifts over your ass, squeezing it until it's tight and sexy"; [- ass/tail change text. format as "Your ass feels funny as (your text)." -]
	now cock change entry is "it seems unneeded"; [- cock change text. format as "Your cock feels funny as (your text)." -]
	now str entry is 12;
	now dex entry is 18;
	now sta entry is 14;
	now per entry is 14;
	now int entry is 8;
	now cha entry is 19;
	now sex entry is "Female";       [- Defines which sex the infection will try and make you. current options are "Male" "Female" "Both"-]
	now HP entry is 64;              [- How many HP has the monster got? -]
	now lev entry is 5;              [- Level of the Monster, you get this much HP if you win, or this much HP halved if you loose -]
	now wdam entry is 10;            [-Amount of Damage monster Does when attacking.-]
	now area entry is "Forest";      [- Current options are "Outside" and "Mall". Case sensitive-]
	now Cock Count entry is 0;            [- How many cocks will the infection try and cause if sex is "Male" or "Both"-]
	now Cock Length entry is 0;      [- Length infection will make cock grow to if cocks-]
	now Ball Size entry is 0;       [- Size of balls apparently ;) sneaky Nuku-]
	now Nipple Count entry is 2;          [- Number of Breasts infection will give you. -]
	now Breast Size entry is 3;      [-Size of breasts infection will try to attain -]
	now Male Breast Size entry is 0; [- Breast size for if Sex="Male", usually zero. -]
	now Cunt Count entry is 1;            [- if sex = "Female or both", indicates the number of female sexes infection will grant you.-]
	now Cunt Depth entry is 14;     [- Length of female sex infection will attempt to give you. -]
	now Cunt Tightness entry is 5;       [- Width of female sex infection will try and give you -]
	now libido entry is 10;          [- Amount player Libido will go up if defeated -]
	now loot entry is "skunk goo";   [- Loot monster drops, -]
	now lootchance entry is 70;      [- Chance of loot dropping 0-100 -]
	now scale entry is 3;            [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sultry[or]slender[or]sensual[or]curvaceous[at random]";
	now type entry is "[one of]skunk[or]mephit[at random]";
	now magic entry is false;        [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;    [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "forestskunk";  [ Row used to designate any special combat features, "default" for standard combat. ]
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


Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"forestskunk"	skunkspray rule	--	--	--	--	--	--	--	--	--

this is the skunkspray rule:
	if a random chance of 1 in 10 succeeds and BodyName of Player is not "Skunkbeast Lord":
		skspray;
	else:
		retaliate; [follows the advanced model if alternate]

to skspray:						[ignores defenses, requires no hit, hum/lib check instead to resist]
	choose row MonsterID from Table of Random Critters;
	let checknum be ( humanity of Player + ( level of Player * 2 ) + ( plmindbonus * 2 ) - Libido of Player ) * 2;
	if checknum > 180, now checknum is 180;
	let rangenum be 200 + ( monhitbonus + monmindbonus );
	if a random chance of checknum in rangenum succeeds:
		say "The skunk turns around and flashes its tail moments before releasing its spray at you. You move out of the way of the thick, oily musk and cover your mouth and nose, blocking out the strangely tempting scent.";
	else:
		now tempnum is 0;
		if BodyName of Player is "Skunk" or BodyName of Player is "Skunk Taur", increase tempnum by 1;
		if FaceName of Player is "Skunk" or FaceName of Player is "Skunk Taur", increase tempnum by 1;
		if SkinName of Player is "Skunk" or SkinName of Player is "Skunk Taur", increase tempnum by 1;
		if CockName of Player is "Skunk" or CockName of Player is "Skunk Taur", increase tempnum by 1;
		if TailName of Player is "Skunk" or TailName of Player is "Skunk Taur", increase tempnum by 1;
		if skunk kit is tamed, increase tempnum by 1;
		if companion of Player is skunk kit, increase tempnum by 1;
		let randomizer be ( a random number from 67 to 80 ) + ( tempnum * tempnum * 2 ) + lev entry;
		let dam be ( wdam entry times randomizer ) / 100;
		let libdam be 3 + lev entry + tempnum;
		if libdam > 16, now libdam is 16;
		if face mask is equipped:
			let dam be ( dam * 3 ) / 4;
			let libdam be libdam / 2;
		say "The skunk turns around and flashes its tail moments before releasing its spray at you. You move away from the thick, oily musk, but end up breathing in the rich scent[if face mask is equipped]. Your mask helps block some of it, dampening the effects, though you still find[else], finding[end if] it very arousing. You find yourself tempted by the creature's alluring body and consider just stopping fighting. Your will to keep fighting drops ( [special-style-2][dam][roman type] ) and your lustful, instinctual urges become more powerful.";
		decrease HP of Player by dam;
		increase Libido of Player by a random number between 3 and libdam;
		decrease humanity of Player by a random number between 2 and ( ( libdam + 1 ) / 2 );
		if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 2;
		if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 2;
	now peppereyes is 0; [pepperspray wears off]
	if Libido of Player >= 110 or HP of Player <= 0 or humanity of Player < 10:
		if HP of Player <= 0, now fightoutcome is 20;
		if Libido of Player >= 110, now fightoutcome is 21;
		if humanity of Player < 10, now fightoutcome is 21;
		lose;
	else:
		wait for any key;
	rule succeeds;

Section 3 - Skunk heat and Skunk goo

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "Skunk"; [ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 5; [ This is the number of days a heat "cycle" lasts, usually 7 ]
	now heat duration entry is 2; [ This is how many days of the cycle you are actually in heat. default is 1, set it to the same as cycle for permanently in heat.]
	now trigger text entry is "Your need seems to swell suddenly, an ache between your legs causing you to fall down to all fours at its intensity. As you stand there, propped, rear in the air, drooling, only one thought consumes your mind, find a skunk and let fuck it you until you can't move."; [ This is the text that is written to the screen when the player comes into heat]
	now heat start entry is "[skunk heat start]"; [this is a to say block that causes things to happen when the player enters heat. for example the GSD sex grows wider. Delete entire line if you wish nothing to happen.]
	now heat end entry is "[skunk heat end]"; [this is the same as heat start only it's for ending the cycle. GSSD her sex is reduced back to its previous size. Delete entire line if you wish nothing to happen. ]
	now inheat entry is "[skunk in heat]"; [this final say block is triggered every 3 hours the player is in heat. you can use defaultheat or write your own. defaultheat raises libido value by 5 every 3 hours. ]
	now fheat entry is true;
	now mpregheat entry is false;

to say skunk heat start:
	increase Cunt Tightness of Player by 3;
	increase Cunt Depth of Player by 2;

to say skunk heat end:
	decrease Cunt Depth of Player by 2;
	decrease Cunt Tightness of Player by 3;
	if Cunt Depth of Player < 1, now Cunt Depth of Player is 1;
	if Cunt Tightness of Player < 1, now Cunt Tightness of Player is 1;


to say skunk in heat:
	say "[one of]You ache constantly for a male, preferably skunk, but as you think about a large rod pushing into you, you realize that any would do.[or]You need to fuck, again and again and again and again.[or]You need to be filled by a skunk's breeding tool.[or]Thinking becomes harder as the need to mate pushes everything else from your mind.[or]You NEED to fill your cunt NOW![or]'Skunk kittens...' your mind tells you, 'Skunk kittens would be fun to have.'[at random]";
	increase skunkready by 1;
	increase Libido of Player by a random number between 5 and 10;


Table of Game Objects (continued)
name	desc	weight	object
"skunk goo"	"Black skunk goo on a stick."	1	skunk goo

skunk goo is a grab object.

skunk goo is infectious. The strain of skunk goo is "Skunk".

The scent of skunk goo is "The gooey black gunk smells strongly of skunk.".


Section 4 - Endings

[For endings, see the 'Skunkbeast Lord' file by Stripes.]

[ Edit this to have the correct name as well]
Skunk ends here.
