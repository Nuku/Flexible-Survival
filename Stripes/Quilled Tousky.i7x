Version 1 of Quilled Tousky by Stripes begins here.
[Version 1.1 - Random chance of Player loss sex.]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]

"Adds Quilled Tousky to Flexible Survival."

when play begins:
	add { "Quilled Tousky" } to infections of guy;
	add { "Quilled Tousky" } to infections of furry;
	add { "Quilled Tousky" } to infections of humorous;
	add { "Quilled Tousky" } to infections of Tailweapon; [usable for Tail Strike feat]
	add { "Quilled Tousky" } to infections of Caninelist; [list of canine infections]
	add { "Quilled Tousky" } to infections of Knotlist; [list of cock infections with a knot]


to say quilledtouskydesc:
	setmongender 3; [creature is male]
	say "     Before you is a strange, mish-mash creature that seems to have been cobbled together by some exceptionally confused nanites. The quilled tousky's body is covered in feathery-quilled flesh. His head is large, mostly resembling that of a husky, with a long, broad, colorful beak instead of a muzzle, big enough to take up most of his face. His canine body is solidly-built, with just a bit of adorable chubbiness to him. A cute pair of black-feathered wings (which appear far too small to support him in flight) flutters upon his back. His arms are somewhat short and pudgy, with harmless-looking claws on the tips of his paws. His legs are digitigrade, puppy-like in proportion to the rest of his body, and ending in bird claws where paws might be on a more sensibly-assembled creature. He has what looks like a cheerfully-wagging canine tail, covered in an alarming blend of long quills and feathers instead of fur. At his crotch, he has a large perky canine maleness, measuring 8 inches and a small set of balls.";
	say "     He looks at you and tilts his head to the side. 'Marp?' it inquires before rushing towards you with a silly grin on its odd face.";


to say losetoquilledtousky:
	if Player is female and a random chance of 1 in 3 succeeds:
		say "     The quilled tousky bounds over to your prone form, and attempts to lick your face. His ungainly beak interferes, and he simply winds up affectionately clonking you upside the head with it. 'Marp!' he joyfully exclaims, as if clumsily smacking his beak into you is an event worthy of triumphant celebration. As he's doing this, he ends up grinding his sheath against you, coaxing his stiffening cock out. He starts to his feet, as if surprised to have this pulsing red rod of canine cock protruding from himself. He leans in and grinds against you further, tongue lolling out.";
		say "     When this confusing creature's cock bumps against your pussy, he ends up inadvertently sinking it into you. He gives a long, moaning 'marrrrpppp' and starts humping you in earnest. You moan and even marp back to him as he pounds into you. Pleased with this new game you're showing him, he tries to lick your face some more, resulting in several more bonks from his beak and splatters of drool from his canine tongue. Clearly not getting this kind of fun too often, the strange hybrid doesn't last long and pumps his hot load into your cunt. Panting, he pulls out, dribbling the last of his seed across your thigh.[ovichance]";
		say "     He bounces in a circle around you for a bit before hearing something in the distance and running off towards it, tripping over his own paws as he starts running while mid-bounce. What an odd creature.";
	else:
		say "     The quilled tousky bounds over to your prone form, and attempts to lick your face. His ungainly beak interferes, and he simply winds up affectionately clonking you upside the head with it. 'Marp!' he joyfully exclaims, as if clumsily smacking his beak into you is an event worthy of triumphant celebration. He gives you an inquisitive look, then abruptly bounds away, [one of]taking a running leap from the top of a nearby mound of junk. The creature's wings flutter frantically as he hangs suspended in the air for a brief second, and then with a dismayed and puzzled 'marp?' he drops like a rock. You wince at the heavy thump that follows... but a few moments later, you hear another determined 'marp' from below, some more frantic fluttering, and, inevitably, another thud from farther away in the junkyard[or]smacking right into a nearby mound of junk. 'Marp,' he says, giving the pile an annoyed look. The creature takes a deep breath, and with an expression of keen concentration leaps at the mound again, bouncing off with a confused and dismayed 'marp?' and collapsing in a heap on the ground. He looks over at you, as if asking you to explain to the junk that it's being entirely unreasonable here[or]toward a small boulder of rubble. With an excited 'marp!' he slaps the stone with his tail, its quills making a noisy clattering sound, and then scampers away a few yards. After a moment, he looks back toward it, exasperated, and repeats the process, with the same result. He shakes his head in disappointment, muttering 'marp,' and goes to find a less grumpy rock to play tag with[or]wandering off around a scrapped car. After coming back around it, he spots you and releases a 'Marp!' of surprise, apparently already having forgotten you were here. He runs over to you excitedly and pounces atop you. His quills are a little scratchy at your skin as he pushes his cock to your face. You [if HP of Player > 0]willingly[else]are too weak to resist and[end if] open your mouth, accepting his throbbing shaft into your mouth. He rubs his paws over your head and thrusts into your mouth, cumming rather quickly. His release isn't that large, but is surprisingly tasty and you swallow it all down and suck the last drops from his shaft. He gives another happy 'marp' and runs off, this time heading in the other direction[at random]. What an odd creature.";


to say beatthequilledtousky:
	say "     The strange creature, as if the idea of playing with you has been knocked out of its head, staggers off in search of a new source of amusement.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Quilled Tousky"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The quilled tousky smacks you with its quilled tail. After the initial pain, you feel oddly euphoric.[or]The quilled tousky headbutts you with a happy 'Marp!'[or]The odd creature grabs you with its taloned feet and climbs all over you, marping happily as it sits on your head like an odd, pointy hat.[or]The hybrid creature flails its paws at you, slapping at you wildly.[at random]";
	now defeated entry is "[beatthequilledtousky]";
	now victory entry is "[losetoquilledtousky]";
	now desc entry is "[quilledtouskydesc]";
	now face entry is "large, mostly resembling that of a husky, with a long, broad, colorful beak instead of a muzzle, big enough to take up most of your face";
	now body entry is "[qtbodydesc]";
	now skin entry is "feathery-quilled-fur";
	now tail entry is "You have what looks like a cheerfully-wagging canine tail, covered in an alarming blend of long quills and feathers instead of fur.";
	now cock entry is "[one of]perky[or]canine[at random]";
	now face change entry is "your head changes shape rapidly, as if your nanites are rummaging through a bin of spare mutations. Once things mostly settle down, you find yourself with a happy husky head, a long, broad toucan beak, and an array of vividly-colored hedgehog quills spanning from your forehead to the back of your neck. You feel good about this change! You announce this fact to the world with an odd noise that sounds like 'Marp!'";
	now body change entry is "your torso changes, becoming a bit fuller and more dense with just a bit of puppy-pudge. An exuberant, gleeful energy wells up within you. Let's go do something! Dunno what. Something! It'll be fun! Your arms cycle through a few different shapes and textures, eventually settling on something mostly dog-like. You scratch yourself behind the ears. Good [if Player is herm]boygirl[else if Player is male]boy[else if Player is female]girl[else]... thing[end if]! Your legs do something weird, and you lose your balance. Hrmm, the ground's not great. You'd rather find something to perch on. Maybe a stick. Ooh, a stick! Is someone going to throw it for you?";
	now skin change entry is "a strange, frantic tingle ripples over your body as sharp quills, colorful feathers, and soft fur all vie for control of your hide. Eventually, you settle into a bizarre equilibrium between the three.";
	now ass change entry is "there is a sudden 'Poof!' A fluffy husky tail sprouts from your rear, wagging happily. Another poof, as colorful feathers pop out over its surface! Poof, ow! Long, sharp porcupine quills the size of knitting needles sprout from your tail! Better be careful where you wag that thing...";
	now cock change entry is "your cock throbs and pulses. You curl yourself down and lick at it a bit. Happy little doggy cock. Nope, looks and tastes just fine. What were you doing again?";
	now str entry is 14;
	now dex entry is 14;
	now sta entry is 18;
	now per entry is 14;
	now int entry is 5;
	now cha entry is 8;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 40; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 5; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 6; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Junkyard"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 1; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 0; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 10; [ Amount player Libido will go up if defeated ]
	now loot entry is "tousky quill";
	now lootchance entry is 25; [ Chance of loot dropping 0-100 ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]chubby[or]mish-mashed[or]short[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"  Use [one of] to vary ]
	now type entry is "[one of]hybrid[or]canine[or]puppy[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
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
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


to say qtbodydesc:
	say "solidly-built, with just a bit of adorable chubbiness to it. A cute pair of black-feathered wings (which appear far too small to support you in flight) flutters upon your back";
	if SkinName of Player is "Quilled Tousky":
		say ", seeming to have trouble coming to rest comfortably against your sharp-quilled hide";
	say ". Your arms are somewhat short and pudgy, with harmless-looking claws on the tips of your paws. Your legs are digitigrade, puppy-like in proportion to the rest of your body, and ending in bird claws where paws might be on a more sensibly-assembled creature";

Table of Game Objects (continued)
name	desc	weight	object
"tousky quill"	"Exactly what it sounds like."	0	tousky quill

tousky quill is a grab object. It is a part of the player. tousky quill is infectious. The strain of tousky quill is "Quilled Tousky".

The usedesc of tousky quill is "[usetouskyquill]";

to say usetouskyquill:
	say "     You fiddle briefly with the large tousky quill and end up pricking yourself with it. Ouch! Dropping it, you suck on your poked finger. Your mind becomes clouded, making you muddle-headed and giddy about everything.";
	increase morale of Player by 1;

the scent of tousky quill is "The colorful quill's scent muddles your mind, making you feel stupid and giddy.".

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


Quilled Tousky ends here.
