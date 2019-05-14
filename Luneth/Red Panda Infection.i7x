Version 1 of Red Panda Infection by Luneth begins here.

Section 1 - Creature Insertion [Red Panda]


Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is true;
	now Name entry is "Red Panda";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "that of a cute looking red panda"; [ Face. Format as Your face is [face of Player]. ]
	now body entry is "short in stature, with a bit of extra weight around your middle"; [ Body. Format as "Your body is [body of Player]." ]
	now skin entry is "russet colored fur with white patches around your face"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of Player] skin." ]
	now tail entry is "Your tail is long and covered in bushy fur."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "barbed ailurus"; [ Cock. Format as "You have a 'size' [cock of Player] cock." ]
	now face change entry is "your head shifts and pops and then finally melts down into a point giving you a Red Panda-like face while your ears stick out from the side and your eyes turn a golden hazel color"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your body starts to become much more pudgy and your hands and feet end going completely flat while hook like claws emerge from within"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "medium length, russet and white fur pushes out from the pores of your skin making you itch all over"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "your butt expands outwards and then suddenly pulls inwards as your spine lengths with the onset of your growing tail. All the while your ass has been become much thicker"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "the mass grows and then tapers off to a point while becoming crimson in color. At the base of your shaft you have sharp barbs going backwards"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 14; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 13; [ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 60; [ The monster's starting HP. ]
	now lev entry is 7; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 1; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	now libido entry is 50; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]chubby[or]pudgy[or]cute[at random]";
	now type entry is "ailurus"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is "Red Panda"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 3; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/trappish/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your ears are drawn to the sides of your head, forming wide, fan like ears. A short muzzle pushes forward to give you the head of a Red Panda"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a cute Red Panda"; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is "ailurus"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "furred"; [one word descriptive adjective]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 5; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Eye Color entry is "golden hazel"; [one word color descriptor]
	now Eye Adjective entry is "slitted"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 5; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 4;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "short"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is "russet colored fur sprouts all over it, giving you a shiny coat of medium length fur"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "covered in a coat of copper colored fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [torso description of Player]."]
	now Torso Adjective entry is "ailurus"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "furred"; [one word descriptive adjective (furry/scaled/...)]
	now Torso Color entry is "copper"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "bouncy"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "brown"; [one word color descriptor]
	now Nipple Shape entry is "round"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...)]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into sharp claws and dark copper fur spreads over your paw-hands. As it moves further up towards your shoulder, lighter tones of orange dominate in the fur"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in russet fur, ending in paw-hands with sharp claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...)]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the stubby legs of an athro red panda with medium length fur in a dark copper color, ending in a pair of paws"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro red panda, with short fur in dark brown and black covering them from your hips down to the clawed paws"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...)]
	now Ass Change entry is "it becomes fairly large and round, with dark russet fur sprouting over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered in medium length russet fur"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "furry";  [one word adjective (feathered/furred/scaly/...)]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a long ailurus tail sprouts from your tailbone, soon covered in bushy orange and black ringed fur"; [partial sentence that fits in: "Your tail [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is "long tail covered in bushy orange and black ringed fur"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...)]
	now Asshole Depth entry is 6; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
	now Asshole Color entry is "black"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 3; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 8; [length in inches]
	now Cock Change entry is "it takes on a reddish color and ailurus shape, sharp barbs sticking out backwards from the base"; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "has a pointy tip and sharp barbs at the base, as well as a sheath to protect it when not erect"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "ailurus"; [one word adjective: avian/canine/...]
	now Cock Color entry is "red"; [one word color descriptor]
	now Ball Count entry is 2;
	now Ball Size entry is 3; [size of balls 1-7: "acorn-sized", "coin-sized", "egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a furry, snug sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Length entry is 0; [length in inches]
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a ailurus appearance, complete with a clit at the top"; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "shaped like that of a red panda, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Adjective entry is "ailurus"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "black"; [one word color descriptor]
	now Clit Size entry is 2; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]

[Table of Game Objects (continued)
name	desc	weight	object
"Red Panda fur"	"A tuft of dark brown fur that looks like it has been pulled out of the coat of a red panda. It's nicely soft."	0	Red Panda fur

Red Panda fur is a grab object.
the usedesc of Red Panda fur is "[DobermanMaleFurUse]".
it is part of the player.
It is temporary.

to say DobermanMaleFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Red Panda";

instead of sniffing Red Panda fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";


Table of Game Objects (continued)
name	desc	weight	object
"Red Panda cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Doberman Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	Red Panda cum

Red Panda cum is a grab object. Red Panda cum is cum.
the usedesc of Red Panda cum is "[Red Panda cum use]";

to say Red Panda cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy fluid cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;
	if "Iron Stomach" is not listed in feats of player:
		infect "Doberman Bitch";

instead of sniffing Red Panda cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";]

Red Panda Infection ends here.
