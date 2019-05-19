Version 5 of Anthro Rabbit by Rikaeus begins here.
[- Originally Authored By: Lago Moro -]
[ Version 3.1 - Updated to extended heat table - Stripes ]
[ Version 4.0 - Restructured the infection and mob so that they aren't split identities but rather an actual pack, changed the looks a tiny bit for the infection. Changed the name - by Rikaeus]
[ Version 5.0 - New Scenes with Female Rabbits and for Female Player - by CrimsonAsh ]

"Adds a Anthro Rabbit to Flexible Survival's Wandering Monsters table."

LastLuckyFootTurn is a number that varies.

Section 1 - Creature Responses

when play begins:
	add { "Anthro Rabbit" } to infections of girl;
	add { "Anthro Rabbit" } to infections of guy;
	add { "Anthro Rabbit" } to infections of furry;

to say AnthroRabbDesc:
	setmongender 9; [creatures are mixed/variable]
	if BodyName of Player is "Anthro Rabbit":
		now combat abort is 1; [stops the fight]
		say "     A small humanoid bunny appears in front of you! Less than four foot nine and completely naked, it could pass as a short adult human if it weren't for the rabbit-like qualities it had. [one of]He[or]She[at random] looks at you excitedly, obviously intrigued by the fact that you appear to share the same infection as them. Seconds later, more of them come out of various hiding places, all crowding around you, chittering about random things as they talk about you being a fellow pack member. The one that had appeared in front of you first walks closer to you, tilting its head at you. 'Does fellow rabbit want to join in some fun?' it asks curiously, gesturing to all of the rabbits present. You get the feeling that the small bunny is propositioning you so you have to think about what to do.";
		say "[DoubleRabbitSexMenu]";
	else if BodyName of Player is "Bunny Jock":
		now combat abort is 1; [stops the fight]
		say "     A small humanoid bunny appears in front of you! Less than four foot nine and completely naked, it could pass as a short adult human if it weren't for the rabbit-like qualities it had. [one of]He[or]She[at random] looks almost worshipingly at you, admiring, from where they're staring, your tall stature. 'You're such a huge rabbit!' they say in complete awe, probably wondering how you could be your height. Seconds later however, more of the same rabbit come out of various hiding places, all crowding around you and adoring you just like the first one is. Some of them are even reverently touching your hands. The original however steps forward and stutters out a question. 'C-can we help big rabbit somehow?' they say in a way that makes you feel like they're trying to proposition you.";
		say "[JockRabbitSexMenu]";
	else:
		say "     A small humanoid bunny appears in front of you! Less than four foot nine and completely naked, it could pass as a short adult human if it wasn't for the ears, the paws, and the short fur covering [one of]his body. He[or]her body. She[at random] is looking at you curiously, as if contemplating what to do next. However, before you can say anything, out of various hiding places come multiple similar looking creatures, all of them of varying genders. As they approach, you can hear some of them mutter in an excited voice, 'A new pack member!'";

to say AnthroRabbVictory:
	if HP of Player > 0: [submitted]
		say "     Dropping to the floor and holding your hands up as if to present yourself in a submissive stance. The rabbits however look at you rather oddly, not comprehending what the heck you're doing. 'Maybe soon-to-be pack-member needs a hug?' one of them suggests. They all perk up at this and walk up to you and start hugging you, rubbing themselves up against you in a lovingly-like fashion, clearly trying to cheer you up in a misperceived assumption that you're sad. After a few minutes, you feel them leave you alone on the ground with accomplished looks on their faces.";
		if lucky rabbit foot is not owned:
			say "     Before you get up and leave, you notice something on the ground though. Pushing yourself onto your feet, you move towards it and see that it's a rabbit's foot. You think to yourself and assume that the bunnies left this behind, perhaps for you? You shrug your shoulders and pick it up, feeling the velvety softness of the fur, such nicety probably would be a pleasure in such a chaotic time. So, you quickly decide to pocket it, perhaps it could help you in dark times.";
			increase carried of lucky rabbit foot by 1;
		infect "Anthro Rabbit";
	else: [beaten]
		say "     Falling back onto the ground as one of the rabbits give you one good punch, they all punch you. 'New pack member!' you hear some of them mutter again as they all move towards you and start rubbing their paws over you, massaging your wounds as if trying to make you feel better. It certainly does make you feel better, easing the aches and pains a little bit. Once they're done, all of the bunnies look over you and nod their heads before chittering amongst themselves and running off, giving you one last glance as they leave.";
		infect "Anthro Rabbit";

to say AnthroRabbBeaten:
	say "     Knocking the last bunny to the ground, you wipe an imaginary bead of sweat from your brow as you give them a gesture as if asking them to try again. This causes several of the rabbits to [']eep['] out loud as all of them start to scurry and panic as they scramble to their feet and dash away from you. Shrugging your shoulders, you figure that decides that and head on your way.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Anthro Rabbit";
	now enemy title entry is "Rabbit Pack";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]They give a coordinated attack, pushing you back one by one![or]One of them jumps onto your back and smacks you on the head. More than once.[or]You lose your balance and fall on the ground! They try to pin you down by piling on top of you![or]One of them manages to flank you and shoves you to the ground.[at random]";
	now defeated entry is "[AnthroRabbBeaten]";
	now victory entry is "[AnthroRabbVictory]";
	now desc entry is "[AnthroRabbDesc]";
	now face entry is "that of a rabbit, with distinctive ears sprouting from the top of your head and flopping downwards";
	now body entry is "far below average height but agile and your hands are human in quality, fingers and everything though they are lightly padded. The same goes for your feet, though they're a tad bit larger, possibly to help you with jumping.";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "short fur covering almost every inch of your body";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You have a [one of]short[or]fluffy[or]twitchy[at random] rabbit tail.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]sheathed[or]rabbit[at random]";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "floppy bunny ears sprout from the top of your head and hang on the sides of your face"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you feel your body pulse as it changes right in front of your eyes. [if ScaleValue of Player < 2]It suddenly grows, becoming larger than it was before, but not as large as you probably were prior to everything. [else if ScaleValue of Player > 2]It suddenly starts to shrink, becoming smaller and tinier until you are far below average height for what you were prior to the apocalypse. [end if]Your body is pretty fit for your size, matching the lithe and dexterous form that you've acquired"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "a fair coating of fur covers you from head to toe. Feels almost like velvet"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a small tail sprouts, waggling"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it shrinks into a furry sheath. A pair of soft balls descends as well"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 6;
	now dex entry is 15;
	now sta entry is 10;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Both";            [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 60;                 [ How many HP has the monster got? ]
	now lev entry is 4;                 [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 4;                [ Amount of Damage monster Does when attacking.]
	now area entry is "High";           [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;               [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 5;         [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 1;          [ Size of balls ]
	now Nipple Count entry is 6;             [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 2;         [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;               [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 5;         [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 3;          [ Width of female sex infection will try and give you ]
	now libido entry is 10;             [ Amount player Libido will go up if defeated ]
	now loot entry is "";               [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;          [ Chance of loot dropping 0-100 ]
	now scale entry is 2;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]fit[or]slender[or]cute[at random]";
	now type entry is "[one of]bunny[or]rabbit[at random]";
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;            [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only)]
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
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
    [ Row used to designate any special combat features, "default" for standard combat. ]


Table of Game Objects (continued)
name	desc	weight	object
"lucky rabbit foot"	"A trinket in the form of a rabbit's foot that usually brings good luck. The fur appears rather soft to touch."	0	lucky rabbit foot

instead of sniffing lucky rabbit foot:
	say "What are you expecting it to smell like? Okay, maybe a little bit of musk if anything, but that's it.";

lucky rabbit foot is a grab object.
the usedesc of lucky rabbit foot is "[lucky rabbit foot use]".
lucky rabbit foot is part of the player.
lucky rabbit foot is not temporary.

to say lucky rabbit foot use:
	if LastLuckyFootTurn - turns < 5:
		say "     Shooting a look towards the soft charm the rabbits gifted you, you shake your head and decide not to use it in fear of possibly ruining the novelty of the trinket. Perhaps you should wait a bit.";
	else:
		say "     Taking the soft furry trinket into your hands you rub it on your cheek, enjoying the velvety sensation that brushes your face, letting your worries fade away.";
		SanBoost 15;
		now LastLuckyFootTurn is turns;

lucky rabbit foot is infectious. The strain of lucky rabbit foot is "Anthro Rabbit".

Section 3 - Sex Menus for the rabbits

to say DoubleRabbitSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Take a rabbit up your ass";
		now sortorder entry is 1;
		now description entry is "Offer one of the rabbits your hole to ride";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck one of them off";
	now sortorder entry is 2;
	now description entry is "Offer your mouth to one of the rabbits";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Choose a cute rabbit girl";
		now sortorder entry is 3;
		now description entry is "Get sucked off by a rabbit girl";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Choose a cute rabbit girl while her friend joins in";
		now sortorder entry is 4;
		now description entry is "Ask to breed one of the pack girls, plus her friend";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take a rabbit girl for a spin";
		now sortorder entry is 5;
		now description entry is "Offer lesbian sex to a rabbit girl";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take a rabbit girl and her friend for a spin";
		now sortorder entry is 6;
		now description entry is "Offer lesbian sex to a rabbit girl, and her friend joins in";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Pick one of the rabbit boys";
		now sortorder entry is 7;
		now description entry is "Have a rabbit studs breed you";
	[]
	Sort the table of fucking options in sortorder order;
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
				if (nam is "Take a rabbit up your ass"):
					say "[RabbitSex1]";
				else if (nam is "Suck one of them off"):
					say "[RabbitSex2]";
				else if (nam is "Choose a cute rabbit girl"):
					say "[RabbitSex3]";
				else if (nam is "Choose a cute rabbit girl while her friend joins in"):
					say "[RabbitSex4]";
				else if (nam is "Take a rabbit girl for a spin"):
					say "[RabbitSex5]";
				else if (nam is "Take a rabbit girl and her friend for a spin"):
					say "[RabbitSex6]";
				else if (nam is "Pick one of the rabbit boys"):
					say "[RabbitSex7]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head tell the rabbit that you'd rather not. It gives you a little forlorn look before it quickly recovers, bounding over to its allies who it leads off to somewhere private you guess. No doubt to either find another person or act like the bunnies they are.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say RabbitSex1: [Fuck Rabbit up the ass]
	setmonster "Anthro Rabbit";
	say "     Thinking about it for a few seconds you nod your head as you voice your offer to the rabbit in front of you. It grows a happy look on its face before turning to the bunnies behind you two. They hum and point randomly at one who quickly runs forward, presenting itself to you. It's a male rabbit, looking just like the others with the exception of his furry sheath and balls. Not entirely sure how to do this, you are surprised when you are kissed and groped by the bunny. Of course you don't find it repulsive, as you did ask for this, so instead you return the kiss. While the two of you get further into the kiss the other rabbits distract themselves with each other. Your partner on the other hand begins to get more intimate with you, pulling off your clothes to get to the body under them.";
	say "     Once you're free of your clothes your fellow rabbit pushes you down onto all fours and starts groping around your ass. He manages to quickly find what he's looking for as you feel a finger shove its way into your hole. Your sex partner scissors and fingers you open, prepping you for his cock so that you don't get hurt, adding more digits the further time goes. It's not entirely an uncomfortable experience as he appears to rub against the right parts to make it a nice sensation. A few minutes later you feel the fingers leave you and something much larger take its place.";
	WaitLineBreak;
	say "     The rabbit gives a little push forward as the head of his cock pops into your hole, causing you to let out a groan. He eases forward as slowly as he can, clearly aware of how much you can take at the moment. Despite that however, it doesn't take him long before he is fully hilted in your ass, his furry balls resting against your cheeks. You look back at him and see that he's giving you a look that's practically asking if you're ready. So you nod at the bunny which prompts him to pull back and slam forward. This makes you gasp out loud in pleasure as he presses against the right nerves which sends wonderful sensations all over your body.";
	say "     Taking that as a cue to go all the way, the rabbit begins to fuck you vigorously, repeatedly pulling out and slamming back in, his balls slapping against your cheeks as he grips you close. As the both of you are in the throes of passion, you take a quick look around and see the other bunnies in rather intimate positions, clearly enjoying themselves. As time goes on you can feel the rabbit getting closer and nearer to climaxing with the tightening of his sack. You turn your head and pull the rabbit into a kiss which appears to set him off as he thrusts into you one last time with a grunt.";
	WaitLineBreak;
	say "     As soon as he thrusts into you one last time you feel his warm seed flow into you, filling you up. At the same time you hear many other gasps and look around, seeing the other bunnies all orgasming as well, shooting their loads over their partners or in them. When your rabbit's climax tapers off he pulls out and gives you another kiss before smiling happily at you, clearly having enjoyed your copulation. He helps you up and brushes off any dust that got on your body before assisting you in getting dressed, clearly a gentleman in your opinion. Once this is all done he gives you an expectant look.[mimpregchance]";
	say "     'Perhaps pack-mate can visit us again sometime?' he asks, looking at you with hopeful eyes. You give him a soft chuckle and a peck on the cheek which makes him light up with glee before telling him that you might just revisit them whenever you have free time. That causes the rabbit to happily bound over to his fellow bunnies who have already cleaned up rather good. They all wave at you, which prompts you to return it prior to them all leaving together, hopping or running away as they can. You smile and just walk away, continuing what you were doing before.";

to say RabbitSex2: [get a BJ from a rabbit dude]
	say "     You muse about what the bunnies are offering before nodding at them and suggesting something to the one in front of you. They grow a smile and turn to one of the many male rabbits in the group, gesturing for them to come over. He happily bounds on over and looks at you with an eager smile. Taking a glance over the bunny you can see that yes, it's clearly male from the anatomy that is visible. So, with that in mind you quite quickly get onto your knees and move your face towards his furry balls, inhaling his musky scent, the smell filling you with a horny need. Taking a quick look around before you continue you see that the others are getting into their own intimate scenarios.";
	say "     Right after you stick out your tongue and start to lick at his furry balls, tasting the sweat that gathered. Your partner clearly enjoying it from the moan that emits from his own mouth. As you roam his sack you reach a hand up and start massaging it along with your other ministrations to add onto the sensations that the rabbit is feeling. All of this causes the bunny's cock to start emerging from the sheath, revealing a hard red member. Interested in going further you start dragging your tongue upwards before it finally reaches his dick, causing a salty taste to explode into your mouth.";
	WaitLineBreak;
	say "     Once you reach the tip, you take it into your mouth and slowly descend onto it, going inch by inch. As you go your rabbit sex partner groans and grabs ahold of your ears, clearly trying to hold himself back from fucking your face. You pull off and chuckle at him, before giving him a nod to go ahead before getting back on his cock. The bunny then eagerly thrusts into your oral cavity, hilting himself fully so that his balls are resting against your chin. Seconds later he begins to piston in and out of your throat, his sack slapping against your chin. Thankfully you can take him all the way or you'd be gagging repeatedly, but all of this gets you an idea.";
	say "     You take your hand and move it to the bunny's hole where you poke a finger at it before you push said digit inwards. This causes your rabbit partner to [']eep['] loudly as he pushes deep into your mouth. You look at him and see that he has a hazy pleasured gaze on his face which prompts you to move your finger further into his rectum. He groans and with a renewed passion begins to face fuck you harder, causing you to move your finger in rhythm with his thrusts. You can tell he's getting close by the clenching of his anal muscles and it's quite obvious when he lets out a loud moan.";
	WaitLineBreak;
	say "     Seconds later you feel a salty liquid fill your mouth as your rabbit partner reaches his climax and releases his load. Shrugging your shoulders, you decide to happily gulp it down. Looking around after you pull off of the bunny's cock you see that the others have reached their own orgasms, if the looks on their faces and the liquid everywhere says anything. Standing up, you brush yourself off, though you're quickly surprised by a kiss from the male that you were having intercourse with. 'Hopefully pack mate can visit us again sometime,' he says, giving you a happy smile before bounding over to his friends. Looking at them with a grin you think about it before heading on your way.";

to say RabbitSex3: [get a BJ from a rabbit girl]
	say "     You eye a pretty bunny among the crowd, she looks down a bit sheepishly when you make eye contact. You stride over, past a few jealous looking pack mates. Pushing out a hip to look extra seductive you ask the cute, white-furred bunny if she's interested in some one-on-one action between you two. She smiles broadly at your proposal and nearly jumps into your arms. You catch the excited jumper and give her a warm kiss to start thing off. Your lips brush together, then interlock while tongues dance with each other in their own intimate way. Her larger front teeth nibble eagerly at your lips while her hands reach around to squeeze at your butt. You return her caresses and reach around her to fold an arm around her neck while another plays with her squeezable breasts.";
	say "     The rabbit dame moans into your mouth again as she brings her paws to hold your head to hers, deepening your kiss together. You move your own hand to cup the side of her head too moving your other to grab her by her fluffy ass. Moving across her poofy tail to grope her backside causing her to gasp into your mouth at the sensation. She breaks the elongated kiss first, dropping to her knees in front of you, fondling for your member. She holds your weighty meat before her, leaning in she nuzzles it gently and sprinkles little kisses over the tip. Her paw reaches to grasp your side, holding you in place as she begins to work her tongue up and down your member.";
	WaitLineBreak;
	say "     Your hands fall to her head, grabbing her ears gently and rubbing your fingers against them earning hums of delight from your bunny girl. She opens her mouth wide and takes in the tip of your cock, sliding her soft lips down your member till it hits the back of her throat. She doesn't gag at all, she's drooling over your exotic member and takes it as far back into her gullet as she can. She hilts you in her throat quickly, making low gurgling noises while her tongue laps around your breeding pole. You groan out loud bringing a few interested rabbits over as her throat grips down tightly around you.";
	say "     She withdrawals until just the tip remains and she suckles upon it. Bringing her paws up she strokes your shafts while her tongue works your shaft and she slides up and down your pole with eagerness. Your grip tightens on her and her groans and suckles increase as one of her paws fall to her crotch, fingering herself slowly as she sucks you off. You start to thrust your hips out with everyone of her movements, essentially hammering into her face as she drags you into her mouth. You give a grunt of warning and that seems to egg her on even further. You couldn't pull away if you wanted to, she's taking every drop of your seed and making sure not to waste any!";
	WaitLineBreak;
	say "     Exploding into her mouth your grip on her ears further tightens to the point you fear you might be hurting the rabbit girl. But she just moans in pleasure as she sucks down jet upon jet of your seed and finger bangs herself to her own groaning climax. Her tongue twirls around your length gathering any stray sperm that she may have missed and sucks it down with the rest. She finally releases your member, giving it a wet kiss and its underside a passionately long lick before she stands. She's smiling widely and licking her lips right before she jumps in close to grab your shoulder and plants a big kiss on your cheek. She then turns around without a word, giving you a nice view of her plush, furry ass and hopping off to her group, leaving you to yourself.";

to say RabbitSex4:
	say "     You eye a pretty bunny among the crowd, she looks down a bit sheepishly when you make eye contact. You stride over, past a few jealous looking pack mates. Pushing out a hip to look extra seductive you ask the cute, white-furred bunny if she's interested in some one-on-one action between you two. She smiles broadly at your proposal and nearly jumps into your arms. You catch the excited jumper and give her a warm kiss to start thing off. Your lips brush together, then interlock while tongues dance with each other in their own intimate way. Her larger front teeth nibble eagerly at your lips while her hands reach around to squeeze at your butt. You return her caresses and reach around her to fold an arm around her neck while another plays with her squeezable breasts.";
	say "     Embracing your newfound pack mate, you break your kiss and bury your face into her furry neck. Nibbling it with your front teeth, you give her a small hickey before you start trailing your kisses down her chest and breasts. Latching onto one of her nipples, your arms wrap around her back and hold her against you. She coos appreciatively, holding your head against her breasts with one paw while the other boldly reaches down to take out and fondle your growing member. It's then that you see slowly approaching from behind your current pack mate. She looks a bit nervous but all the same presses her furry front to your lover's furry back, bringing paws around to grip her pack member by her hips, drawing a gasp from the bunny's lips. 'You umm, don't mind, do you? Sorry, hard to resist.' She punctuates this by squeezing her apparent friend's other breast.";
	WaitLineBreak;
	say "     You smile and nod, and by the gasping and grinning of the bunny who your suckling from she agrees too. Delighted, the new rabbit girl replaces where your lips were on her neck with her own. She kisses and sucks at her pack mate's neck while her hands move to fondle lower, at your manhood, interlocking short furry fingers with her friend. You yourself continue to suckle and caress your kin's breasts, switch between the two and swirling your smooth rabbit tongue over her own nipples. And after minutes of kissing and fondling you break your three-way embrace with each other, gasping a bit for breath as you decide what to do next with your two fellow pack lovers.";
	say "     Deciding how to proceed to ask the first anthro rabbit dame to lay down, and the second girl to sit on her friend. They both blush heavily and the bunny ravishing her friend's breasts grins widely and nods quickly at your plan. She helps lay down her friend, exchanging eager kisses and giggling whenever they look to you as they do. After laying her friend down she straddles her face, not yet smothering her pack mate with pussy but just leaving it quivering above her head, teasingly close. After setting up positions the sitting bunny beckons you close, looking desperate to see your virility in action. Intending to give her the show she craves you scoot up in between your prone pack mate's legs, grabbing and spreading them wide. You jerk yourself to the sight, rubbing the tip of your rabbit cock against her wet lips gently, teasing your female kin with the dick she's moaning for.";
	WaitLineBreak;
	say "     You tease her for a minute longer, but after a particularly loud moan and spasm from her you thrust in, giving her the rabbit dick you and her want to breed with so badly. She throws her to the ground and shortly after the bunny kin above her drops her hips down, covering her furry pack mate's face with a wet, slick pussy. Her moans are then muffled by rabbit cunt but that doesn't slow you down. You push into her as deep as her cunt allows, bottoming out inside her and holding yourself there. The white-furred bunny sitting on her friend smiles widely at the sight of a rabbit stud like yourself breeding her pack member. She gyrates her hips against her friend's head before leaning down, settling between your legs while your hilted inside your current fuck-pal. She extends her smooth tongue and laps at the base of your abs and licks downward to the base of your shaft, the rest of which is buried in her friend.";
	say "     You groan at the sensitivity and begin to pull out, only to thrust right back into your sexy rabbit kinsmate. You hear muffled groans from below as the gagged bunny moans into the rabbit's crotch above her, causing a shiver in the girl who's riding her face. It doesn't slow her down luckily and she redoubles her efforts in licking your crotch, slathering it in spittle before she moves back some and latches onto her friends protruding clitty. That causes an almost instant orgasm from your fellow furry mate. You can tell as she clamps down around your member and squirts droplets of bunny juice over your thrusting crotch. Your hands gripping her plush hips, you can feel yourself growing close to finish, to breeding this good little pack member of yours, the same pack member who's cumming all over your virile cock.";
	WaitLineBreak;
	say "     You see the rabbit who's eating her mate out seize up and slam her hips down onto the fucked-out girl who's clenching around your member like a vice. She yells out in intense pleasure and you can see a torrent of girl cum cover the anthro female you'rer pistoning in and out of. That brings you over the edge. You move your head back and groan lowly as you climax. Pushing load after load of potent rabbit cum directly into the girl's clenching snatch. You cum for a good while, your breeder instincts taking over as you pack more cum into her stuffed pussy until its leaking out around your shaft. The three of you slowly come down from you various orgasms, slowing thrusts and licks all together. Eventually it's just you simply pressed halfway into your mate's packed cunt, and the bunny atop her licking at the excess cum leaking around your member.";
	say "     After a good long while of resting there, stuck in your positions, you all disentangle, unwrapping yourselves from each other and pulling apart. You pull free with a sensitive gasp from her pussy, leaving a large trail of cum that leaks steadily from her pussy. Globs of your rabbit cum spill out from her and you all let out a collective sigh before laughing together. You help each other up, exchanging kisses, embraces and promises of future sweet nothings as you do. Eventually you all stand and with a slightly hesitant goodbye they return to their group, who of which have all been peeking from around a corner, watching you mate their females with excitement. Smiling and quite satisfied with your rut you turn and walk off, ready to continue on your way.";

to say RabbitSex5:
	say "     You eye a pretty bunny among the crowd, she looks down a bit sheepishly when you make eye contact. You stride over, past a few jealous looking pack mates. Pushing out a hip to look extra seductive you ask the cute, white-furred bunny if she's interested in some one-on-one action between you two. She smiles broadly at your proposal and nearly jumps into your arms. You catch the excited jumper and give her a warm kiss to start thing off. Your lips brush together, then interlock while tongues dance with each other in their own intimate way. Her larger front teeth nibble eagerly at your lips while her hands reach around to squeeze at your butt. You return her caresses and reach around her to fold an arm around her neck while another plays with her squeezable breasts.";
	say "     Your sexy bunny breaks the kiss diving into the crease of your neck, peppering kisses down your throat and chest. Her mouth reaches your breasts and she bites down gently on your nipples, rolling it between teeth and causing you to gasp in delight. She suckles on your nipple eagerly, switching between the other while her arms wrap around your hips, holding you close while she worships your breasts. Your own hands cradle her head against your breasts, caressing the bunny's head appreciatively. Deciding to take the next step you grab the rabbit gal's paws folded around you, and gently push her to the ground.";
	WaitLineBreak;
	say "     She falls with a surprised, if not adorable gasp, before she can say anything you crawl atop the rabbit and resume your earlier kiss. She moans into your mouth, tangling her tongue against yours while her furry arms embrace you. Breaking off the kiss with a little regret you sit up, looking down to your rabbit-like lover. You ask her if she's up for both you having a little fun. Which brings a wide smile to her pretty lips while she nods excitedly. You grin back at her and turn around, stripping anything left off the two of you and re-straddling the bunny girl. Giving her a nice view of your ass when you plop it only a few inches away from her cute muzzle, leaving you face to face with her own engorged, soaked cunt.";
	say "     Now in a proper sixty-nine position you don't waste anytime, you dive tongue first into the bunny girl's musky quim. You lean over the rabbit, pressing your hot body to hers, molding the two of you in a passionate sex pose. Your nameless bunny follows your example, she reaches up, groping your ass while she plants her muzzle directly into your sex. You hear, and feel her inhale loudly, taking in your sexual scent. You hear her coo at what she smells and a moment later you too are enjoying a hot tongue moving about in your quim. You groan into her crotch and she into yours as the two of you go about eating the other out. Between fervent licks your bunny lover moans desperately. 'Hmph. You. Taste. So good.' You can feels her smile against your lips as she speaks, which only drives on your own motivation to eat this bun's pussy faster and better.";
	WaitLineBreak;
	say "     Enjoying the taste of tasty rabbit sex your suddenly bombarded by a wave of fem cum. The rabbit below you buries her face as far into your crotch as she can go and screams in pleasure. Taking your entire cunt in her mouth and lashing her tongue wildly as she climaxes all over your face. She tries her best to keep working her tongue but you redouble your efforts on her sweet climaxing cunt. Nibbling, munching and swiping at her exposed clit with your free hand you bring her to one climax after another. After her fourth you find yourself exploding into orgasm yourself, filling the bunny gal's eager muzzle with your own cum. Her fifth orgasm comes at nearly the same time, caking your face in more fem cum while the both of you moan and groan in pleasure and sensitivity.";
	say "     The bunny below you goes limp, apparently having fainted briefly from her overwhelming orgasm. You smile and pepper more kisses around her quivering pussy until she wakes with a sweet gasp. Once she does, you sit up and turn back around, still sitting atop but now facing her. She's breathing heavily and looking up at you with reverence. 'Tha-that was really good.' She smiles as her paws stroke your thighs affectionately. You smile back and ruffle her hair, taking a few more minutes to exchange more kisses and cuddles with your lover. But eventually you two part and she rejoins her pack, asking you to come back again soon before she molds back into the crowd of anthro rabbits. All of whom are watching from a distance, some looking quite jealous after your display.";

to say RabbitSex6:
	say "     You eye a pretty bunny among the crowd, she looks down a bit sheepishly when you make eye contact. You stride over, past a few jealous looking pack mates. Pushing out a hip to look extra seductive you ask the cute, white-furred bunny if she's interested in some one-on-one action between you two. She smiles broadly at your proposal and nearly jumps into your arms. You catch the excited jumper and give her a warm kiss to start thing off. Your lips brush together, then interlock while tongues dance with each other in their own intimate way. Her larger front teeth nibble eagerly at your lips while her hands reach around to squeeze at your butt. You return her caresses and reach around her to fold an arm around her neck while another plays with her squeezable breasts.";
	say "     You continue your embrace for a time, until you feel a whiskers brush and tickle at your thighs. Gasping rather cutely you break your embrace to look back. Between your naked ass cheeks and below your own puffy tail is the face of another of your new pack lovers. She smiles widely as you spot her, giving you a wink and saying, 'You're so hot, packmate! You don't mind, do you?' she asks, extending her smooth tongue and running it across your furry ass cheek. You smile and nod to her, wiggling your ass a little against her face as you turn back to your first pack mate. As you turn, her face dives down, pressing her muzzle against your furry midriff and running her tongue down it slowly. You gasp and hold your paws to her long rabbit ears, using them as love-bars to hold unto as her tongue reaches your sex.";
	WaitLineBreak;
	say "     The smooth, wet muscle glides down your lower lips before diving in. Around the same time, your pack mate, who's quite literally kissing your ass, takes it a step further, and she too dives in, tongue and furry muzzle first. Her wet tongue makes contact with your backdoor, drawing a low moan from you at the sensitivity. The bunny girls fervently eat out both of your holes, making low slurping and licking sounds and humming in delight as they delve deep into your sensitive depths. You grip at the back of both of their heads, caressing long, furry ears while the girls work your lower body over, sending jolts of pleasure through you and causing you to arch back and moan fervently.";
	say "     Tongues lap in and out of your quivering pussy and clenching ass, your entire crotch soon soaked in eager bunny saliva. Soft paws grip at your fur, slide up your thighs and squeeze your ass softly while your mates eat. You don't last much longer. You finally fully throw your head back, slapping your own rabbit ears behind you as your moan grows into a shriek of pleasure. Your bunny girls only grow more eager as you cum, humming into your crotch and struggling to keep up with the flow of fem cum pouring out of your spasming cunt. The rabbit eating your crotch out from the front is enjoying the majority of your sweet cum, while your mate from behind licks between your thighs, tasting your run-off cum that she savors against her tongue before delving back in your ass, bringing you to another quick orgasm near the end of your first.";
	WaitLineBreak;
	say "     Your pack mates grip at your limp body, a bit numb from your intense orgasm. They lead you down to the ground gently, laying you there and each giving your cheek a kiss before they curl up next to you. 'Wow... you taste amazing, easily the tastiest pack girl I've ever tried.' She finishes licking her lips. The other rabbit cuddled to your side nods hastily in agreement, a light flush appearing beneath her fur. You smile at them and hold them close to you in your arms. They giggle and excitedly kiss at your exposed fur as the three of you settle in for a cuddly nap.";

to say RabbitSex7:
	setmonster "Anthro Rabbit";
	say "     You look among the crowd of rabbits, spotting quite a few studs among the adorable rabbit-like faces. You call a particularly handsome one over, beckoning him with a hand and a wink. An eager smile greets you back and the rabbit boy hops over to you. You move seductively over to him, meeting halfway. Sliding up next to her you place a gentle palm on his furry shoulder, you smile knowingly at him asking if he's up for a little breeding. He gives you a wide smile, revealing his big front pearly whites. 'You betcha, stranger!' he chirps, moving in to grip your hips. Your hands fall to his shoulders and you give a wet smooch on his cheek before you pull away, tearing off yours and his gear, tossing it nearby.";
	say "     Turning around you drop to your hands and knees and wiggle your ass back at the rabbit boy, indicating just what you want. Surprisingly he doesn't immediately dive in, not with his manhood anyway. You feel a warm, wet muscle run down your ass cheek, grazing your ass before priding your cunt. The bunny's slick tongue presses into your pussy, lathering it with saliva and preparing it for the fucking your craving. His hands squeeze and massage your ass while his muzzle presses deep into your crotch. He spends a while between your legs, only stopping when you nearly cum. You can feel him smiling a bit smugly when one paw slaps down and bounces off your ass.";
	WaitLineBreak;
	say "     You turn to glare back at your bunny lover but just as you do he plunges in your cunt, shoving every inch in, in one go. You cry out, along with his groans you two moan out your sex melody as he holds himself fully embedded inside you. It's a bit hard to keep your balance on your hands and knees after that, more so when your rabbit stud starts to move inside you. He saws his length out of you before pushing back in, slowly repeating and gaining speed as he goes. His paws are all along your ass, holding on while his small furry fingers sink into your body. It's after his first few dozen thrusts that he starts to hammer into you proper, like the breeder the nanobots made him.";
	say "     You turn into a pile of moans and cries of pleasure, only able to thrust your hips back at him as his powerful breeding muscles propel him into you. Your fingers dig into the ground and your eyes roll back as a mini orgasm takes you. That brings a groan from your rabbit stud as you tighten around his member. And soon after an affectionate slap on the backside, followed up by your rabbit boy speeding up to a truly impressive pace. He jumps into you at a breakneck speed, his hips slap off your jiggling ass and his balls graze your clit with every collision. After a good few dozen times you finally fully climax, cumming around his member and starting to see stars.";
	WaitLineBreak;
	say "     You collapse to the ground fully now, only somewhat held up by your lover's soft paws. He joins you shortly, grunting and bringing you to another small orgasm as his virile rabbit seed splashed into your cunt. The torrent of cum floods your body and your womb, trying to make its mark on your eager body. He continues cumming until after the tenth jet of cum his thrusts at last slow. His paws squeeze your ass and he pushes in and out of you gently, teasing your overly sensitive body before fully pulling out. This leads a thick trail of seed to spill out of your gaped cunt, slowly closing up while the rabbit appreciates his handiwork. You hear him breathe heavily and sigh. 'Dang. Glad I could help, beautiful,' he finishes, patting your ass one last time and leaving you to yourself, properly bred now.[fimpregchance]";

to say JockRabbitSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck one of the rabbits anally";
		now sortorder entry is 1;
		now description entry is "Have one of the bunnies ride your cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get double-teamed anally and orally";
	now sortorder entry is 2;
	now description entry is "Offer your ass and your mouth to two of the rabbits";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Choose a rabbit girl to fuck";
		now sortorder entry is 3;
		now description entry is "Pick out the cutest rabbit you can find and fuck her pussy";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Get worshipped as a jock bunny by the girls";
		now sortorder entry is 4;
		now description entry is "The bunnies are already impressed by your size, now show them how impressive you really are";
	[]
	Sort the table of fucking options in sortorder order;
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
				if (nam is "Fuck one of the rabbits anally"):
					say "[JockRabbitSex1]";
				else if (nam is "Get double-teamed anally and orally"):
					say "[JockRabbitSex2]";
				else if (nam is "Choose a rabbit girl to fuck"):
					say "[JockRabbitSex3]";
				else if (nam is "Get worshipped as a jock bunny by the girls"):
					say "[JockRabbitSex4]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head tell the rabbit that you'd rather not. It gives a rather sad look in your direction but respects your decision before hurrying off with its fellow bunnies. No doubt to find someone else or to have private time with its friends.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JockRabbitSex1: [fuck rabbit dude in the ass]
	say "     With how eager these rabbits are to please, you get an idea of what you want, vocalizing it to the one in front of you. Their eyes widen and they nod excitedly before moving to one of the many rabbits available. They then drag said bunny who looks rather excited and clearly male. Shrugging your shoulders you shed your clothes and pick up the one foot shorter than you creature and start groping around at his ass, causing him to [']eep['] loudly. You chuckle at him and continue to move your hands around, trying to find his hole, which thankfully doesn't take long. Soon enough you locate it and press one of your padded fingers in.";
	say "     This action makes the bunny you're holding groan and squirm in pleasure as it tries to grip you closer so as to not fall. While you are slowly fingering the rabbit you take a look around at the others and notice that they're getting rather intimate with each other but still somehow managing to watch you. You quickly then decide to add another digit, starting to scissor him open, hoping that this will be enough for the bunny. Doing this for about a minute more you then remove your fingers and position yourself at the entrance of your sex partner, who appears to be holding their breath in anticipation.";
	WaitLineBreak;
	say "     With a swift thrust you push your cock into the rabbit's tight hole, causing the male to let out a loud moan as your length goes deeper and deeper into him. Once you're fully hilted you take a moment to appreciate how into your partner is before you quickly pull out and slam back in, making him yelp as you rub against all the right nerves. Taking that as a voice of consent, you begin to fuck him rapidly, driving your dick in and out as fast as you can, your balls slapping loudly against his cheeks. By now the bunny's own length is rock hard and leaking precum prominently, showing you how much he is enjoying it.";
	say "     Looking around once more, you see that the other rabbits are nearing their own orgasms, as told by the [']eeps['] and shouts as well as the cum everywhere. This spurs you on to finish, so you speed up your thrusts, practically bouncing the bunny up and down your cock, his head thrown back in complete pleasure. However, it appears before you can get to your climax your partner does as you feel his hole clench around your dick and see him spurt all over himself. The tightness of the rabbit's ass on your length ends up being the end for you as you let out a shout of pleasure and slam in one last time, spilling your seed into him.";
	WaitLineBreak;
	say "     As you help the rabbit off your cock and onto the ground he appears to change a bit. He grows a little bit taller and muscular, becoming more like you than his friends. This appears to set off his fellow bunnies who look really excited at this change and surround him in awe. You back away, lest you get swept up into it and start cleaning yourself up a bit. As you do this you notice they've appeared to have started another orgy, which prompts you to chuckle and simply walk away, not wanting to participate again.";

to say JockRabbitSex2: [spitroast anal/oral on the player]
	setmonster "Anthro Rabbit";
	say "     Having a few seconds to think about what you want to do, you quickly come to a conclusion. You tell the rabbit in front of you what you wish to do, causing their eyes to widen and then for them to dash over to the group of bunnies. A little bit later they drag over two males who are looking at you with excited looks on their faces, clearly happy about what they're about to get to do. Figuring you should get to it, you divest yourself of your clothes and kneel down on all fours, in front of one of them, bringing you face first with his furry balls and sheath. Inhaling, the musky smell causes you to groan a bit as you decide to get started.";
	say "     When you begin to lick at the sack of the male in front, you can feel the one behind you groping around at your back end, clearly searching for your hole. It doesn't take long for him to find it, promptly pushing a finger in and causing you to grunt. Taking one of the balls into your mouth you roll it around and swipe your tongue at it, making the rabbit above you moan. Your ministrations manage to make the bunny's length begin to peak out of the sheath, slowly emerging from it along with a heady aroma.";
	WaitLineBreak;
	say "     Deciding to go further, you remove your mouth from the rabbit's sack and start to trail your tongue up his hard cock, taking in the salty taste. As you do this, the bunny behind you adds another finger and begins to open you up a bit more, scissoring your hole with both digits. Once you reach the tip of the cock you take it into your mouth, slowly going down on it. Thankfully you don't gag when your nose ends up pressed up against the male's stomach, but you do pull back, dragging your tongue along the length as you bring your lips back to the tip. However, before you can deepthroat it again, you feel something much larger and blunter than fingers at your hole.";
	say "     It quite quickly pushes into you, making you groan on the cock in your mouth and moving you back down onto it. The rabbit whose length you're sucking decides to grab ahold of your ears and take control of the situation now that there's a dick in your hole. He promptly pulls out before slamming back in, balls deep, timing it with the other bunny fucking you so that it's a proper spitroast. To the others watching it's probably an interesting sight watching you basically get fucked into sucking a cock. Though to be honest you can't say that you aren't enjoying the experience yourself.";
	WaitLineBreak;
	say "     This method of sex continues for quite a bit, both bunnies practically fucking you into each other. With the one in front of you roughly slamming his cock into your mouth and the other into your hole you're pretty occupied for the time being. But you can tell that both of them are getting close, particularly the one that you're sucking as his dick is spilling copious amounts of precum into you, which you're having to swallow. With the other one you can tell vaguely by the tightening of his balls each time they slap against your ass, which is usually a sign someone is close to orgasm.";
	say "     Sure enough, seconds later you hear both rabbits yell as they slam into you one last time, both balls deep into you, ass and mouth. The amount of cum the one in front of you spills is so much that you have to continuously swallow so as to not choke on it, whereas you're sure that you are probably leaking seed out of your ass profusely. It takes them a bit to come down from their climaxes but when they do, they pull out of you and quickly help you clean up. It's something you didn't expect but are thankful for, nonetheless. Once you're dressed you thank the rabbits for their time and head on your way, a last glance noting that the other bunnies appear to be asking the two who fucked you many questions about how the sex was.[mimpregchance]";
	infect "Anthro Rabbit";

to say JockRabbitSex3: [fuck a rabbit girl]
	say "     You scan the crowd of cute bunnies, spotting a particularly sweet looking rabbit girl who gasps audibly when you walk over and loom over her smaller form. She and the others around seem fascinated and awed by you, pupils wide as they see you stride into their ranks. You ask your chosen bunny the obvious question, is she down for some one on one fun with each other? She stares a bit in awe of you and only nods her head, looking quite sheepish as she moves her thighs together in anticipation. You give her a broad smile and move forward to scoop her up in your arms, pulling her soft, furry body against yours. She gasps again, her face flushing and her powerful leaper legs wrapping around your hips while her hands travel to grab at your shoulders for support.";
	say "     A few other rabbits start to crowd around, most of them looking quite jealous of your chosen bun beauty. You shuck your gear quickly exposing your member to the rabbit girl, slapping it lightly down on her fluffy, taut tummy. She coos in delight and grabs your stiffening cock, stroking it to full mast while grinding against your body and breathing heavily in anticipation. Your hands play at her plush ass as you grind your hard member against her quim, thoroughly soaked at the prospect of such a virile rabbit taking her. The others see it too, a strong rabbit stud like yourself about to take one of their own. After some teasing she starts to squirm in your strong arms, practically begging you to take her, to breed her like the breeding stud you are!";
	WaitLineBreak;
	say "     You push forward, piercing the bunny girl's quivering body. She lets out a squeal of delight and the other bunnies watching 'aww' at the sight of you taking one of their pack. Keeping a firm grip on the bunny girl, you hilt yourself in her, only to then withdraw before slamming back into her sexy, furry form. You look over and a few of the other rabbits have begun kissing and humping at each other, clearly aroused by the mating in their midst. Grinding your hips into hers, you hit all of the little weak points in her gripping pussy. Turned into a puddle of moans and ecstasy your rabbit girl grips tightly around your furry neck, her legs lock behind your waist as her whole body tenses.";
	say "     Then, a loud moan erupts from her pretty lips. She clenches around your breed-machine, her large ears are thrown back along with her head. And for your part, your gripping her plush ass with both paws while you hammer yourself through her orgasm. Around you, you hear the sounds of muffled grunts and moans. Seems the other rabbits have all but dropped pretenses of foreplay and have just started screwing like only rabbits know how to screw. Brought to your own orgasm you hold yourself deep inside the cute rabbit girl on your jock and shoot your virile load into her clenching womb. Seeming to bring her to a second and consecutive third climax herself. She twists and turns in your strong arms as you hold tightly onto her form, slowly being filled out with jets of your bunny spunk.";
	WaitLineBreak;
	say "     When the orgasmic bliss fades your bunny girl slumps in your arms, her tongue lolled out a bit comically. You pull your member from her fucked-out quim, it's covered in both your mixed juices. And as you withdraw you take a moment to appreciate the sight of her ecstasy ridden body tremble in pleasure and ooze your seed from her stretched opening. You eventually set her gently down amongst a few of the other spent rabbits. The lot of them begin clambering around the pretty bunny, caressing her tender body and gently brushing against her sex, dripping with your seed. You then give a good stretch and move to sit down against a nearby tree to enjoy your afterglow as the rest of the rabbits enjoy their own sex. After a while you move on, horny rabbits brushing at your ankles as you leave.";

to say JockRabbitSex4: [harem fantasy with bunny girls]
	say "     You look over the group of rabbits surrounding you, many of which are simply staring up at you in awe. Clearly they haven't come across many bunnies of your size before. A few of the females have their mouths open in wonderment, showing off their cute, rabbit-like buck teeth to you. You slowly stride up to a particular cluster of rabbit girls. They are snickering quietly to each other and gently groping one another's breasts as they watch you. When you reach them, they look eagerly to you, quite pleased you've blessed them with your presence. You smile down at the cute bunnies, flashing them a clearly suggestive smile as you reveal your growing manhood to them. There's a collective 'awe' from the group of six or so bunnies, and a few more gasps from the others behind you, but for now your focus is on this group of horny rabbits.";
	say "     A few girl bunnies shuffle forward, looking a bit sheepish. Towering over them you smile down and push your crotch out forward for their appraisal. Multiple furry paws grab at your flaccid member, gently and cautiously touching it before grasping it in soft, short fingers. They start stroking your quickly hardening maleness and you push into their delicate digits. Eventually, two of the lovely rabbit girls lean closer. Rabbit tongues are out and quickly make contact with the tip of your member. One smooth tongue swirls around the tip while another slides down your shaft, only stopping to place gentle kisses on and around your crotch. Paws play around your hips and ass while oral muscles lather your lower half in bunny saliva.";
	WaitLineBreak;
	say "     After a minute of the girls worshiping your cock, the cute bunny who's suckling your tip grows bolder and shifts to take your whole member in her mouth. She slowly slides down, inch by inch of your length feeding into her mouth while her big front teeth push pleasantly down on top of your member. Once she reaches the back of her throat you can see her gagging and gurgling around your cock, desperate to take more. She pulls back to suckle your tip again only to then shove your length back into her sexy maw. She continues sucking while her sisters caress your body and kiss at your thighs, looking on in a bit jealousy at the one sucking you off. The stimulation is certainly effecting you, grunting and pushing your hips forward while your own paws rest on two nearby rabbits.";
	say "     Your brought to an intense climax from the girl sucking your jock, pushing as far back into her throat as you can and releasing your load into her heavenly mouth. A load of your bunny jock spunk slams into the back of her throat. The bunny around your member moans in pleasure and fingers herself as you fill her mouth out. Spilling seed around her lips as she struggles to keep it all down. You groan out in pleasure as the remainder of your seed is gingerly sucked out and played with on the tongue of the rabbit girl staring up at you. She withdrawal slowly, opening her mouth she shows her cum stained mouth proudly, swirling the jizz around her mouth before swallowing loudly and showing you her clean mouth after.";
	WaitLineBreak;
	say "     You pet your cute bunny cock sucker affectionately as thanks, she's breathing heavily with her tongue sticking out but coos when you stroke her head. Your flaccid, dripping member is then grabbed by another eager bunny who laps over the sticky pole, cleaning you with a spit polish. It's not long until your coaxed onto your back by soft bunny paws and straddled by another bunny girl. This one is a bit plumper in the hips than the others but no less adorable. She aligns her engorged and excited quim to your towering pillar and drops down. She lets out a loud moan of pleasure as her hands fall to your chest. You grip her plump, furry hips tightly as she begins to ride you. Your vision is soon crowded, as a furry, white butt and dripping womanhood blocks your sight.";
	say "     You move your hands up and grip the lady rabbit above you by her thighs and pull her down on your face. Diving muzzle first into her quim as your ridden and surrender by horny rabbit women. You play skillfully in the vagina above you with quick tongue flicks, quickly bringing it gushing into your mouth from climax. And the bunny riding you soon clamps down around your member in intense throws of orgasms. Both are soon replaced with other lovely lady bunnies, all very eager for your attention and more obviously, your cock. You cum when the third bunny girl climaxes, squealing and cooing on your member as you fill her with load after load of potent rabbit jism. Fem cum covers your face and you squeeze their furry bodies as anchors as you rut into your pack sluts, again and again.";
	WaitLineBreak;
	say "     You're not sure how many times you've came exactly, but you know it's at least been a dozen; every bunny needed at least one stuffing, after all. And as the last moaning rabbit falls from your exhausted flaccid member she collapses onto your chest, nuzzling into your furry abs adoringly. Others follow her, nuzzling up to your sides as you all cuddle in for a rest of the aftermath orgasmic bliss. And you of course enjoy the sight of your work, in the form of a dozen rabbit girls dripping your potent seed from their satisfied cunts. You sigh and relax back in satisfaction, pulling two bunnies close to you, to which they coo in delight. Laying back and resting your eyes you enjoy some personal rest with your mates, the smell of rabbit rutting fresh in the air as you all lay beneath the sky together.";

Section 5 - Heat Table

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "AnthroRabbit";
	now heat cycle entry is 3;
	now heat duration entry is 3;
	now trigger text entry is "[one of]You feel yourself grow weak at the knees and your crotch burns fire hot. You have to hold yourself against a nearby boulder to keep from falling. And keep your paws from shoving themselves into your cunt. Clearly your in some kind of rabbit induced heat.[or]There's a shudder in your cunt as you walk, everything grows sensitive and your mouth starts to water a bit, as if it craves something. You rub your furry thighs together attempting to snuff out the overwhelming need but only causing it to flare up further. You only start to crave more, you crave a lover, a mate, someone to fill you with their seed or finger you till you pass out.[or]As you round a corner you have to catch yourself from falling, your heat flares up with a passion all of a sudden. You eye every even vaguely creature shaped object as something to grind against, if only to relieve some of this intense warmth rising from you.[or]Your long ears perk up and your fur stands straight up. Your paws suddenly fly to your groin and you begin to rub and grab at your sex, desperate all of a sudden for touch. You could really use a breeding stud right now.[or]Your heat surges up your thighs and through your body, causing a brief lapse in your walking stride but your able to recover. Your ears twitch slightly and your button nose wiggles, sniffling in sensitivity from the intense throws of heat.[at random]";
	now description text entry is "";
	now heat start entry is "[AnthroRabbitHeatStart]";
	now heat end entry is "[AnthroRabbitHeatEnd]";
	now inheat entry is "[defaultheat]";
	now fheat entry is true;

to say AnthroRabbitHeatStart:
	if Libido of Player < 25:
		now Libido of Player is ( 50 + Libido of Player ) / 3;
	else:
		increase Libido of Player by 5;

to say AnthroRabbitHeatEnd:
	say "You go a bit light headed briefly, grabbing ahold of your throbbing cranium and after a moment the haze fades. You notice almost immediately your senses have cleared and the heat radiating through your body and groin dissipates.";
	now Libido of Player is ( Libido of Player * 9 ) / 10;

Anthro Rabbit ends here.
