Version 1 of Easter Bunny by Stripes begins here.
[ Version 1.5 - Uncontrolled heat sex ]

"Adds the Easter Bunny infection to go with Micaela for Flexible Survival"

Section 0 - Setup

Section 1 - Description

to say easterbunnydesc:
	say "***unused***";


Section 2 - Monster Victory

to say losetoeasterbunny:
	say "***unused***";


Section 3 - Player Victory

to say beateasterbunny:
	say "***unused***";


Section 4 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Easter Bunny" to infections of LeporineList;
	add "Easter Bunny" to infections of FurryList;
	add "Easter Bunny" to infections of NatureList;
	add "Easter Bunny" to infections of HermList;
	add "Easter Bunny" to infections of BipedalList;
	add "Easter Bunny" to infections of TailList;
	now Name entry is "Easter Bunny";
	now enemy title entry is ""; [name of the encountered creature at combat start - "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "Something is very wrong here.";
	now defeated entry is "[beateasterbunny]";
	now victory entry is "[losetoeasterbunny]";
	now desc entry is "[easterbunnydesc]";
	now face entry is "that of a rabbit-like head with a short muzzle and large, floppy ears. Your eyes are of mismatched color, one blue and the other brown. Your long, flowing hair is a colorful [if Player is herm]blue[else if Player is male]purple[else if Player is female]pink[else]yellow[end if] and always seems to stay fashionably styled";
	now body entry is "slender and sexy, like a sexy [if Player is female]Playboy model[else]boytoy[end if]. Your thighs are strong and put a lot of bounce in your legs, helping to show off your assets. Your hands and feet are small and dainty, but a little paw-like as well, having fluff and pads, making them bunny-like as well";
	now skin entry is "soft fur of a [if Player is herm]pretty pink[else if Player is male]coral blue[else if Player is female]sunshine yellow[else]pastel orange[end if] color over your sensitive";
	now tail entry is "You have the cutest little bunny tail of [if Player is herm]pink[else if Player is male]blue[else if Player is female]yellow[else]orange[end if] and white fluff poking out just above your curvy ass.";
	now cock entry is "[one of]pink[or]smooth[or]idealized[or]bunny[at random]";
	now face change entry is "a sweet taste fills your mouth and your vision goes out of whack. Swirls of color tint everything you look at. Your nose twitches a few times and, with soft pops, whiskers appear as you gain a bunny nose and muzzle. You can feel your front teeth growing longer to match. As long, flowing hair starts to grow on your head, long bunny ears pop out from it. The swirling hues settle down as your color perception realigns such that everything you perceive seems just a little bit brighter and more colorful";
	now body change entry is "it becomes that of an anthropomorphic bunny with a very sexy [if Player is female]figure like that of a centerfold[else]boytoy figure[end if]. Your thighs become strong and springy as the changes progress down to your legs";
	now skin change entry is "soft fur starts to spread across your body. It is predominantly a [if Player is herm]pretty pink[else if Player is male]coral blue[else if Player is female]sunshine yellow[else]pastel orange[end if] color, though there's ivory white areas at around at your mouth, throat, chest and crotch";
	now ass change entry is "the cute fluff of a little bunny tail appears";
	now cock change entry is "it becomes smooth, pink and overall human-like, though smoother and more sensitive";
	now str entry is 10;
	now dex entry is 15;
	now sta entry is 15;
	now per entry is 18;
	now int entry is 10;
	now cha entry is 17;
	now sex entry is "Both";
	now HP entry is 29;
	now lev entry is 3; [ Level of the Monster, you get this much XP if you win, or this much XP halved if you loose ]
	now wdam entry is 4; [Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere"; [ Location of monster, in this case nowhere]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 9; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 8; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 15;
	now Cunt Tightness entry is 10;
	now libido entry is 75; [ Set to zero in this monster to control elsewhere ]
	now loot entry is ""; [ Dropped item. Key will be used later ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3;
	now body descriptor entry is "[one of]slender[or]alluring[or]sexy[at random]";
	now type entry is "[one of]rabbit[or]bunny[or]lapine[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;

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
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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



Section 8 - Heat

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
"Easter Bunny"	400	400	"[ebheat_trigger]"	"swollen and sweet-smelling bunny cunny"	"[ebheat_start]"	"[ebheat_end]"	"[ebheat]"	true	true	"[ebheat_mtrigger]"

ebheat_egg is a number that varies.
ebheat_msg is a truth state that varies.

to say ebheat_trigger:
	say "     A euphoric warmth in your lower belly makes you moan in pleasure and drop to your knees. You can feel a growing dampness to your pussy [if Cunt Depth of Player < 8 or Cunt Tightness of Player < 5]as it stretches and swells wider [end if]in preparation. Thoughts of romping bunnies[if ovipreglevel > 1] and colorful eggs[end if] fill your idle thoughts as you go into heat.";
	if Cunt Depth of Player < 8, increase Cunt Depth of Player by 1;
	if Cunt Tightness of Player < 5, increase Cunt Tightness of Player by 1;

to say ebheat_mtrigger:
	say "     A euphoric warmth in your lower belly makes you moan in pleasure and drop to your knees. You can feel an empty yearning in your ass. Your anus and rectum shifts and relaxes as it becomes more accommodating in preparation. Thoughts of romping bunnies[if ovipreglevel > 1] and colorful eggs[end if] fill your idle thoughts as you go into a strange male heat.";

to say ebheat_start:
	if Libido of Player < 75, now Libido of Player is ( 75 + ( Libido of Player * 3 ) ) / 4;
	if ovipreglevel > 1, now ebheat_egg is 0;
	if ebheat_egg > 0:
		now ebheat_egg is ebheat_egg / 2;
	if ebheat_egg > 4:
		now ebheat_egg is 4;
	now ebheat_msg is false;

to say ebheat_end:
	now ebheat_msg is false;
	if Libido of Player > 20:
		decrease Libido of Player by 10;
		if Libido of Player < 20, now Libido of Player is 20;

to say ebheat:
	increase Libido of Player by 3;
	if ovipreglevel > 1, increase ebheat_egg by 1;
	if ebheat_egg > 6 and ebheat_msg is false:
		LineBreak;
		say "     You feel a shifting in your lower belly as a small weight becomes noticeable inside you. It feels... pleasant... You rub your tummy, sighing happily.";
		now ebheat_msg is true;
	else if ebheat_egg > 9 and ebheat_msg is true and Micaela is visible and ( lastfuck of Micaela - turns ) >= 9 and a random chance of Libido of Player in 150 succeeds:
		setmonster "Easter Bunny";
		choose row MonsterID from the Table of Random Critters;
		LineBreak;
		say "     There's a small shifting of weight in your lower belly that feels so nice you have to stifle a moan. Looking over at Micaela, your [if Player is female]cunt grows wet and quivers with a need to be filled[else]asshole feels empty and in need of filling[end if]. The colorful bunny's nose twitches and she grins at you, as if able to smell your arousal. You also see a bulge forming under her skirt and, knowing what lies beneath, your insides flutter again with heated desire. Unable to resist, you head over to her, tossing aside your clothing and gear as you go.";
		say "     Seeing that lustful look in your eyes, Micaela flips up the front of her skirt, revealing her erection and plump balls. 'Mmm... come on, honeybunny. I know what you need,' she says, stroking her tantalizing manhood. 'Let's give that [if Player is female]heated bunny-cunny[else]heated boi-bunny butt[end if] of yours the fucking it deserves.' You climb eagerly into the sexy Easter bunny's lap, grinding down on that throbbing shaft[if Player is female]. Grabbing your hips, she lowers you down onto her cock. You moan long and with satisfaction as you feel that pulsing rod slide into your juicy cunt[else]. Spreading your cheeks, she lowers you down onto her cock. You moan long and with satisfaction as you feel that pulsing rod slide into your welcoming pucker[end if].";
		WaitLineBreak;
		say "     Micaela gives you a passionate kiss, her tongue playing in your mouth as she starts bouncing you in her lap. That weight you've been feeling in your belly shifts and rolls about in an oddly pleasant manner. And part of you know that feeling's only going to get better now that the bunny's going to pump her hot seed into you and breed you. Breaking the kiss, she moves to nuzzle [if Breast Size of Player > 0]at your breasts[else]and nibble along your neck[end if] while rubbing a hand-paw over your belly.";
		say "     'Don't worry, sweetie. I know that feeling all too well. Don't worry, Micaela's going to cream that egg of yours. Mmm... going knock you up and make that into a nice, big egg full of life for you[one of]. You'll be so cute with a big eggy-belly[or]. Laying an egg like that will feel wooonderful[or]. A proper bunny egg for my honeybunny[at random],' she says as she nuzzles you tenderly while fucking you wildly.";
		WaitLineBreak;
		say "     When Micaela's climax comes, it is a powerful and prolific, even for her. The gushes of cum seem to go on and on, filling your insides and more. The egg inside you is bathed in the virile bunny's semen as your womb is bloated and your belly rounds[if scalevalue of Player < 3] excessively[else if scalevalue of Player is 3] considerably[end if]. A gooey mess of the excess cum leaks out around her still-pulsing shaft and yet she continues cumming for several more blasts, guaranteeing you'll have an egg-filled belly in no time. In you heat-addled state, you can't help but sigh in satisfaction at the thought of that. Sliding you from her lap, she lets you rest on the floor, reaching out to rub her dainty footpaws over your cum-filled egg-belly.";
		now ovipregnant is true;
		impregnate with "Easter Bunny";
		now Libido of Player is Libido of Player / 2;
		now lastfuck of Micaela is turns;
	else if ebheat_egg >= 12 and a random chance of ebheat_egg in 24 succeeds:
		LineBreak;
		if Player is female:
			if ( "Litter Bearer" is listed in feats of Player and a random chance of 1 in 4 succeeds ) or a random chance of 1 in 8 succeeds:
				say "     That noticeable weight you've been feeling in your lower belly has grown, resting heavily in your womb. Your bunny cunny quivers and warm juices soak your thighs as the hard lumps inside you shift about with a series of clicks and clacks. You moan and stagger to someplace to sit. Your uterine walls push at the hard lumps inside you, guiding the one down into your vagina, which continues to push it out. Shivers of delight rock through you even as the candy-shelled egg crowns, building to an orgasmic climax as you manage to push it free.";
				say "     But that is only the first. You've already got the second pushing past your cervix and into your vaginal cavity. The second is easier to get out, your passage having already been stretched by the first. And another push of orgasmic effort forces this second colorful egg out.";
				say "     Left with the third and final, it is more difficult. While your vagina and pussy may be stretched and lubricated with your femme cum, your inner muscles are tired from the effort. You moan, pant and masturbate yourself furiously to another orgasm that gives the chocolate ovoid the final push out it needs. The colorful egg comes to rest beside its predecessors.";
				say "     You're left panting and thoroughly drained, yet erotically satisfied after the strange experience. Taking the colorful Easter eggs, you stow them away.";
				increase carried of Easter egg by 3;
				increase hunger of Player by 12;
			else if ( "Litter Bearer" is listed in feats of Player and a random chance of 2 in 3 succeeds ) or a random chance of 1 in 4 succeeds:
				say "     That pleasant weight you've been feeling in your lower belly has grown, resting heavily in your womb. Your bunny cunny quivers and warm juices soak your thighs as the hard lumps inside you shift about with a few clicks. You moan and stagger to someplace to sit. Your uterine walls push at the hard lumps inside you, guiding the first down into your vagina, which continues to push it out. Shivers of delight rock through you even as the candy-shelled egg crowns, building to an orgasmic climax as you manage to push it free.";
				say "     But that is only the first. You've already got the other one pushing past your cervix and into your vaginal cavity. The second is easier to get out, your passage having already been stretched by the first. And another push of orgasmic effort forces this second colorful egg out.";
				say "     You're left panting and quite drained, yet erotically satisfied after the strange experience. Taking the colorful Easter eggs, you stow them away.";
				increase carried of Easter egg by 2;
				increase hunger of Player by 8;
			else:
				say "     That small weight you've been feeling in your lower belly has grown, resting heavily in your womb. Your bunny cunny quivers and warm juices soak your thighs as it shifts inside you. You moan and stagger to someplace to sit. Your uterine walls push at the hard lump inside you, guiding it down into your vagina, which continues to push it out. Shivers of delight rock through you even as the candy-shelled egg crowns, building to an orgasmic climax as you manage to push it free. You're left panting and drained, yet erotically satisfied after the strange experience. Taking the colorful Easter egg, you stow it away.";
				increase carried of Easter egg by 1;
				increase hunger of Player by 4;
		else:
			if ( "Litter Bearer" is listed in feats of Player and a random chance of 1 in 4 succeeds ) or a random chance of 1 in 8 succeeds:
				say "     That small weight that you've been feeling in your lower belly has grown, resting heavily in your hidden womb. Your bunny womb trembles and your asshole starts to relax as the hard lumps inside you shift about with a series of clicks and clacks. You moan and stagger to someplace to sit. Your uterine walls push at the hard lumps inside you, guiding the one down into your bowels, which continue to push it out. Shivers of delight rock through you even as the candy-shelled egg crowns from your anus, building to an orgasmic climax as you manage to push it free.";
				say "     But that is only the first. You've already got the second pushing past your anal cervix and into your lower intestine. The second is easier to get out, your rectum having already been stretched by the first. And another push of orgasmic effort forces this second colorful egg out.";
				say "     Left with the third and final, it is more difficult. While your rectum and anus may be stretched and lubricated with egg juices, your inner muscles are tired from the effort. You moan, pant and masturbate yourself furiously to another orgasm that gives the chocolate ovoid the final push out it needs. The colorful egg comes to rest beside its predecessors.";
				say "     You're left panting and thoroughly drained, yet erotically satisfied after the strange experience. Taking the colorful Easter eggs, you stow them away.";
				increase carried of Easter egg by 3;
				increase hunger of Player by 12;
			else if ( "Litter Bearer" is listed in feats of Player and a random chance of 2 in 3 succeeds ) or a random chance of 1 in 4 succeeds:
				say "     That small weight that you've been feeling in your lower belly has grown, resting heavily in your hidden womb. Your bunny womb trembles and your asshole starts to relax as it shifts inside you with a series of clicks and clacks. You moan and stagger to someplace to sit. Your uterine walls push at the hard lumps inside you, guiding the first down into your bowels, which continues to push it out. Shivers of delight rock through you even as the candy-shelled egg crowns from your anus, building to an orgasmic climax as you manage to push it free.";
				say "     But that is only the first. You've already got the other one pushing past your anal cervix and into your lower intestine. The second is easier to get out, your passage having already been stretched by the first. And another push of orgasmic effort forces this second colorful egg out.";
				say "     You're left panting and quite drained, yet erotically satisfied after the strange experience. Taking the colorful Easter eggs, you stow them away.";
				increase carried of Easter egg by 2;
				increase hunger of Player by 8;
			else:
				say "     That small weight you've been feeling in your lower belly has grown, resting heavily in your hidden womb. Your bunny womb trembles and your asshole starts to relax as it shifts inside you. You moan and stagger to someplace to sit. Your uterine walls push at the hard lump inside you, guiding it down into your bowels, which continue to push it out. Shivers of delight rock through you even as the candy-shelled egg crowns from your anus, building to an orgasmic climax as you manage to push it free. You're left panting and drained, yet erotically satisfied after the strange experience. Taking the colorful Easter egg, you stow it away.";
				increase carried of Easter egg by 1;
				increase hunger of Player by 4;
		now ebheat_msg is false;
		now ebheat_egg is 0;
		now Libido of Player is ( 75 + ( Libido of Player * 3 ) ) / 4;

Section 5 - Endings

[
when play ends:
	if BodyName of Player is "Template":
		if humanity of Player < 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Easter Bunny ends here.
