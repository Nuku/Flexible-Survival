Version 1 of Hippo Strongman by Stripes begins here.
[ Version 1.1 - Added vaginal/anal player loss scenes for Hippo players. ]

"Adds a Hippo Strongman creature to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Creature Responses

when play begins:
	add { "Hippo" } to infections of guy;
	add { "Hippo" } to infections of furry;

to say hippodesc:
	setmongender 3; [creature is male]
	say "     Traveling through the fairgrounds, your path is suddenly blocked by the appearance of a large, muscled figure. The hippo-headed man flexes his bare muscles. 'I am the Mighty [one of]Bruno[or]Maximus[or]Supremo[or]Atlas[or]Gigantus[or]Goliath[or]Granite[in random order]!' he exclaims. 'Strongest of the strong, mightiest of the mighty!' he cries out, flexing again. As this bizarre strongman continues his showman spiel, he flexes to display his impressive muscles. You spot his stall nearby and see that a crude hippo head has been painted onto the strongman poster and the name has been re-written a few times already. He's even given the crudely drawn face the same little moustache and chin beard. Aside from his hippo head and big muscles, he has gray skin and is wearing nothing but a few leather straps and an ill-fitting loincloth that cannot contain his infection-enhanced maleness. As his babbling comes to an end, you catch him saying something about fighting you to prove his strength before he charges.";

to say losetohippo:
	if bodyname of Player is "Hippo" and ( ( player is female and a random chance of 3 in 5 succeeds ) or ( Cunt Count of Player is 0 and a random chance of anallevel in 5 succeeds ) ):
		say "     The victorious strongman knocks you to the ground with a cheer. Raising his arms in the air in triumph, he brags about how he is the strongest of all. He then brushes aside his loincloth to release his throbbing cock. With his 16 inch member on display, you can't help but become aroused, your body starting to respond to the victor's urges. When he moves you onto all fours, you grind back against his thick, bulging member, moaning for him to prove his might again. Running his meaty hands along your muscled back and grabbing your strong shoulders, he [if Player is female]thrusts into your juicy cunt[else]ploughs into your tight asshole[end if] with a raucous laugh.";
		if Player is female:
			say "     He pumps his hips steadily, sliding that gray cock of his into your juicy hole while his huge balls slap against you. The feel of the strongman's pole ringing your bell has you moaning beneath him with ever-expanding desire. With thoughts of the big, strong children such a mighty stud could give you, you push back into his thrusts and work your inner muscles around his mighty rod. Eventually he gives you what you're craving, pumping his hot load into your needy cunt and flooding your womb with his virile, steroid-rich semen. After pulling out, he has you lick him clean before sending you on your way with a warm feeling filling your tummy.[impregchance]";
		else:
			say "     He pumps his hips vigorously, stuffing that gray cock of his into your tihgt hole while his huge balls slap against you. The feel of the strongman's pole driving into you has you moaning beneath him with ever-expanding desire. With growing lust and admiration for the mighty stud who's bested you, you push back into his thrusts and squeeze your anal muscles around his mighty rod. Eventually he gives you what you're craving, that final proof of his superior might, as he climaxes and pumps his hot load into your ass. His virile, steroid-rich semen floods your bowels. After pulling out, he has you lick him clean before sending you on your way with a warm feeling filling your belly.[mimpregchance]";
	else:
		say "     The victorious strongman cheers his own success and slams you to your knees. Holding you in place with one meaty hand, the other brushes aside his loincloth to release his throbbing cock. At about 16 inches, his gray cock is quite huge, as are the balls beneath it. The hippo's cock is quite thick as well and bulges with throbbing veins. As his precum dribbles out from that impressive cock, you find yourself longing for a taste and lick the dribbling tip. His pre is quite invigorating and you start licking and sucking at his cock for more. He pushes you to take more and more of his cock into your mouth until finally he's managed to stuff the full, monstrous thing into you. With it stuffed down your throat, you have trouble breathing, but that doesn't seem to matter now, only sucking at that muscled male's meat does. When he finally cums, you are quite lightheaded, but enjoy the feel of that ample load pumping into your belly so much that you cum as well. Still coming, he pulls his cock free and you gasp for breath even as he paints your face with the other half of his big load.";
		say "     Feeling quite satisfied from the ample load in your belly, you wander off without direction before finally ending back where you started. You feel a little better from the effects of his powerful, steroid-filled cum, but also hornier as well.";
		increase HP of Player by ( Stamina of Player / 2 ) + a random number between 2 and 4;
		if HP of Player > maxHP of Player, now HP of Player is maxHP of Player;
		increase Libido of Player by a random number between 6 and 12;
		if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 2;
		if "Cold Fish" is listed in feats of Player, decrease Libido of Player by a random number between 1 and 4;
		if Libido of Player > 100, now Libido of Player is 100;
		decrease humanity of Player by a random number from 1 to 3;
		if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 1;
		if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 1;

to say beatthehippo:
	say "     Your last blow sends the big hippo staggering back. 'Impossible! None is stronger than the Great [one of]Crusher[or]Giganticus[or]Monstro[or]Ultro[or]Steelfist[or]Ivan[or]Samson[in random order]!' he yells, grabbing up his show items with ease and running off with them. 'You've not seen the last of me!' he yells. Wait... didn't he have a different name earlier?";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Hippo"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The hippo strongman crushes you with his muscly arms![or]The strongman delivers a pair of powerful blows with his meaty fists![or]The hippo strongman grabs you roughly and slams you down so hard onto his strength test that he rings the bell... or maybe that's just the ringing in your head![or]The big hippo bashes you with the large mallet for his strength test![or]Grabbing one of his heavy barbells, he heaves it at you. You manage to get partially out of the way, but are still struck hard by one of the metal ends![or]The strongman lobs several of his dumbbells at you, painfully slamming the weights into you![or]The muscled hippoman strikes your jaw with a fist as hard as stone![at random]"; [ Successful attack message ]
	now defeated entry is "[beatthehippo]"; [ Text when monster loses. ]
	now victory entry is "[losetohippo]"; [ Text when monster wins. ]
	now desc entry is "[hippodesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "the broad head and large mouth of a hippo";
	now body entry is "big and muscled, with oversized definition and impressive muscle tone. Your fingers have become short and meaty, making it a little harder for you to do delicate work with them";
	now skin entry is "a thick, gray hide and glistens as if some body oil has been spread across your";
	now tail entry is "You have a short, thick tail ending in a clump of ragged hair.";
	now cock entry is "[one of]gray[or]purplish-gray[at random]";
	now face change entry is "your head distorts and a giant maw forms. Your jaw aches from this transition as it progresses, spreading up over the rest of your head until you have a big hippo head on your shoulders";
	now body change entry is "becomes large and hugely muscled, swelling with strength. Your hands change as your fingers become short and thick, giving you strong, but clumsy fists";
	now skin change entry is "it turns rough and gray in color";
	now ass change entry is "a small tail forms behind you. It is short and thick, with a clump of ragged hair at its tip";
	now cock change entry is "becomes a dark, purplish-gray in color but is mostly human in shape";
	now str entry is 24; [ These are now the creature's stats... ]
	now dex entry is 12; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 8;
	now cha entry is 14;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 52; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15; [ Monster's average damage when attacking. ]
	now area entry is "Fair"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 16; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping] [ Width of female sex the infection will try to give a player. ]
	now libido entry is 33; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]big[or]strong[at random]";
	now type entry is "hippo"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
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
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
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
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, well-used, open, gaping"]
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
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 3 - Endings

when play ends:
	if bodyname of Player is "Hippo":
		if humanity of Player < 10:
			say "     Unable to resist your new instincts any longer, your humanity leaves you as your new body's urges take over. You make your way back to the State Fair and come across another hippo strongman. You team up with him, proving your might together in your successful two-man show. That is, if you measure success by how often you manage to beat the other creatures you encounter and sate your lusts on them. When the soldiers come in, their guns are a problem, but a sly coyote pops up and gives you an idea on how to deal with them. Laying out one of the safety nets from the acrobatic show and covering it with dirt, you make a huge trap for them. A couple of fast fairground creatures zip around, luring in the separate teams to reach the central square together. With the combined strength of two mighty hippos (and maybe a little help from others at the fairgrounds... but just a little), you manage to catch yourselves a whole squad of soldiers in your net. You and the other creatures divvy up your prize, taking several soldiers to fuck and convert each.";
		else:
			say "     Upon the arrival of the soldiers, you are brought back to their holding facility before finally being cleared. You get a job at a professional gym as a trainer and bodybuilding coach, helping others work to get a muscled body like yours. Some of the patrons are a little edgy about you at first, but they warm up to you in time and you become part of the group. It certainly helps that they're seeing results from working with you, never suspecting that [if Player is male]you've been adding a little [']personal something['] to their protein shakes[else]the milk in their protein shakes is your own[end if] to help them along. While non-infectious, it is a strong muscle booster and undetectable to testing due to its rather unique source. As another added perk, the gym also provides you with many well-muscled lovers to satisfy your animal lusts.";

Hippo Strongman ends here.
