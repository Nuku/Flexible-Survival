Version 1 of Queen Bee by Stripes begins here.

"Adds a Queen Bee creature to Flexible Survival's Wandering Monsters table."

Section 1 - Creature Responses

when play begins:
	add { "Queen Bee" } to infections of girl;
	add { "Queen Bee" } to infections of Tailweapon; [usable for Tail Strike feat]
	add { "Queen Bee" } to infections of Insectlist; [list of insectile infections]
	add { "Queen Bee" } to infections of Internallist; [list of infections w/internal male genitals]

to say losetoqueenbee:
	say "     You were beaten by the creature.";
	if Player is male:
		say "     Additional paragraph for a male/herm player.";
	else:
		say "     Additional paragraph for a female player.";

to say beatthequeenbee:
	say "     You were victorious over the creature.";
	if Libido of Player > 40:
		say "     Additional paragraph for a player with a libido greater than 40. Do they want sex?";
		if Player consents:
			say "     The player agreed to sex. Fun times begin.";
			if Player is female:
				say "     The player is female/herm, so sex goes like this for her.";
			else:
				say "     The player must be male, so sex goes like this for him.";
		else:
			say "     Awww! The player refused the sex. Party pooper.";


to say queenbeedesc:
	say "     Monster description paragraph 1.";
	say "     Monster description paragraph 2.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Queen Bee"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "No fighting"; [ Successful attack message ]
	now defeated entry is "[beatthequeenbee]"; [ Text when monster loses. ]
	now victory entry is "[losetoqueenbee]"; [ Text when monster wins. ]
	now desc entry is "[queenbeedesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "mostly human, beautiful and regal in appearance, with large, dark eyes and lips as sweet and golden as honey. Your flowing hair is yellow and black and has a pair of long antennae rising from them";
	now body entry is "slender and [if Player is female]feminine with its slender waist and curving hips, making you a striking figure of womanly beauty. At your side are a pair of smaller, insectile arms suitable for holding small items and caressing tightly held lovers. Around your neck is a collared puff of golden-orange fur. Along with the pair of gossamer wings, glimmering like crystal, that rest against your back, it looks very much like a regal cloak[else]effeminate with its slender waist and curving hips. At your side are a pair of smaller, insectile arms suitable for holding small items and caressing tightly held lovers. Around your neck is a collared puff of golden-orange fur. Along with the pair of gossamer wings, glimmering like crystal, that rest against your back, it looks very much like a regal cloak. All in all, you look very much the sexy [']queen['] bee[end if]";
	now skin entry is "a mixture of chitin plates and golden-bronze tanned";
	now tail entry is "Resting lightly against your rear is a large, striped bee abdomen, complete with a stinger.";
	now cock entry is "[one of]armor-protected[or]honeyed[or]golden[at random]";
	now face change entry is "your vision blurs. Something in your eyes change and colors seem more vibrant, standing out against the duller browns and grays of the city. As you're marveling at what you see, your face shifts form, becoming beautiful and feminine. Long, thick flowing hair of bright yellow and deep black sprouts from your head and washes down to your shoulders in seconds. A tingle runs through your mind as insectile antennae are added";
	now body change entry is "you are transformed to once-again become the sexy [if Player is not female][']queen['][else]queen[end if] bee. Your figure is tall and [if Player is female]womanly[else]effeminate[end if], with a slender waist and curved hips that draw the eye to your beautiful form. As the transformation spreads up, you form a furred collar and your shimmering wings to be your regal cloak";
	now skin change entry is "your skin becomes at first quite human with a golden-bronze tan. But as the transformation continues, chitinous plates form over your forearms and lower legs as well as your midriff and groin";
	now ass change entry is "a bulge forms at the base of your spine. You are filled with pleasure and a strange sense of promise for the future as it grows and becomes a bee abdomen. There is an orgasmic joy as its stinger grows out";
	now cock change entry is "it turns a golden yellow and smells richly of sweet honeyed cum. Your genitals change and move inwards behind protective plates of chitin, emerging when aroused";
	now str entry is 14; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 15;
	now cha entry is 20;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 40; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 8; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 6; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Length entry is 8;
	now Cunt Tightness entry is 5;
	now libido entry is 35; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of][if Player is female]feminine[else]effeminate[end if][or]slender[or]idealized[or]elegant[or][if Player is female]womanly[else]effeminate[end if][or]sexy[or]beautiful[or]regal[cycling]";
	now type entry is "[one of]apian[or]bee-like[or]insectile[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [torso description of Player]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word descriptive adjective (furry/scaled/...)]
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
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...)]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
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
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 3 - Definitions

Definition: a person is queenbeecocked:
	if cockname of Player is "Queen Bee", yes;
	no;


Section 4 - Endings

when play ends:
	if bodyname of Player is "Queen Bee":
		if Player is pure:
			project the figure of QueenBee_icon;
		if humanity of Player < 10:
			say "     With your mind losing itself to the buzz of the nanites in your mind, you slip further and further into your role as the queen bee. Together you and Honey set up a new hive together[if HP of Joanna > 0 and HP of Joanna < 90] in one of the buildings beside Joanna's flower garden[else]in an abandoned building at the edge of the park[end if], filling it with a honeycombed hive full of cute and hardworking bee girl drones and boytoy warriors to serve you. Honey becomes a second queen for the hive by consuming the remaining royal jelly, sharing in the royal duties and the breeding required to fill the new hive.";
		else:
			say "     When the military comes to rescue you and the other survivors they can find, your sexy body helps to charm the soldiers into letting Honey come along. Her small, girlish looks and her cute offer of honey from her precious bag further help to win over the gruff soldiers. As you're heading off, she grins and winks playfully to you, acting like an innocent little girl in front of the soldiers while you keep them distracted with your regal form. A sample of the honey is tested just to be safe, but it is clean and non-infectious, as you already know. Honey keeps up her little girl act, claiming to be orphaned and that you'd become infected while rescuing her (which is true enough), and is released into your custody.";
			say "     Together, you and Honey look for the perfect place to set up your new hive. Eventually you find it in the form of a large factory next to a field of flowers. The flowers, enlarged and sexualized by the nanites, bloom all year round and are a delicious and fun source of pollen for the growing hive. Most of the factory is converted into the honeycomb hive, but the bottling section is left intact. When you start adding more and more drones (through breeding and the occasional [']volunteer[']), there is no shortage of hard work to get it up and running again so you can start bottling the hive's honey for sale. While not infectious, it is a mild aphrodisiac and tempts the occasional visitor to the factory hive to become another hardworking bee girl drone or boytoy warrior. For her loyalty and devotion, you have Honey eat the remaining royal jelly, becoming a sexy female queen to rule by your side and help with breeding workers.";


Queen Bee ends here.
