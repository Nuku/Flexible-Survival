Version 1 of Prairie Dog by Stripes begins here.

"Adds a Prairie Dog creature to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Creature Responses

to say prairiedogdesc:
	setmongender 15; [creatures are herm]
	say "     You hear a squeaking, barking sound coming from behind you and turn around, but find nothing there. Soon there are others all around you as the call is answered. Still seeing nothing, you try to continue on only to have your legs sink into a hole in the ground. More holes open up around you as prairie dog creatures emerge from the earth. The sandy, brown rodents are larger than normal and are about three feet tall and walk on their hind legs. Some have found toy hard hats, bandanas or small shovels to use, but most are nude save for their fur. Their breasts seem quite large on their small bodies, as do their swollen sheaths and balls. As you are pulling yourself out of the hole, they charge to attack you!";

to say losetoprairiedog:
	say "     Beaten, the prairie dogs swarm over you, pulling you to the dusty ground. They grope, fondle and tease you all over, rubbing their furry bodies over yours. One pushes her human-sized cock into your mouth while others start stroking and pumping at theirs[if Cock Count of Player > 1]. The horny burrowers push and scuffle with one another over your multiple cocks, unable to consider riding one without making it too hard for the others to enjoy the other(s). In the end, they end up licking, kissing and nipping at them, making you moan and quiver[else if Cock Count of Player is 1 and Cock Length of Player < 7]. Another of the burrowers finds her way over to your erection and sinks her wet cunt down onto it with a barking moan[else if Cock Count of Player is 1 and Cock Length of Player < 10]. Another of the burrowers finds her way to your erection and struggles to take your proportionally huge cock into her wet cunt, eventually releasing a loud, barking moan as she manages to sink down onto it[else if Cock Count of Player is 1]. Your cock, incredibly huge to them is lavished attention on by a pair of the burrowers, who rub their furred breasts against your hard length as they lick, kiss and nip at it, making you moan and quiver[end if][if Player is female]. There is a bit of an argument over who will get to enjoy your cunt, but in the end, one emerges victorious and stabs her throbbing member into you. She pounds away at you roughly, quite worked up by his scuffle over breeding rights with the others[else if anallevel > 1]. There is another argument over who will get to enjoy your ass, but in the end, one emerges victorious and stabs her throbbing member into you[end if][if Nipple Count of Player > 2]. Having multiple sets of breasts, you are able to accommodate many of them, who each take one to fondle and grope while suckling from your hard nipple[else if Nipple Count of Player is 2]. A pair of them get lucky and are able to claim your breasts, groping and fondling one each while their suckle from your hard nipple[end if]. They continue this wild orgy, cumming onto and into you until you are sticky with their seed and cumming hard yourself. Satisfied, the rodents scurry back down into their holes, which close up behind them as if they had never been.[impregchance]";

to say beattheprairiedog:
	say "     After smacking around the prairie dog horde, they eventually have enough and retreat back underground, taking their wounded with them. The holes they came out of close up behind them quickly, as if they had never been.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Prairie Dog" to infections of RodentList;
	add "Prairie Dog" to infections of FurryList;
	add "Prairie Dog" to infections of NatureList;
	add "Prairie Dog" to infections of HermList;
	add "Prairie Dog" to infections of BipedalList;
	add "Prairie Dog" to infections of TailList;
	now Name entry is "Prairie Dog";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The prairie dogs bite and nip at your legs![or]The burrowing rodents swing at you with sticks and toy shovels from all sides![or]A team of the rodents charge at you, latching onto your legs and trying to pull you down![or]As you try to ward off the blows from those closest to you, four at the back take another by the arms and legs, swinging and launching her to land in your face. She pounds at your head while grinding her earthy-smelling ballsack in your face![or]One of the prairie dogs rides on the shoulders of another and climbs onto your back to nip and scratch at you while the others keep at you from all sides![or]Your legs and hips are scratched and clawed from the horde around you![at random]";
	now defeated entry is "[beattheprairiedog]";
	now victory entry is "[losetoprairiedog]";
	now desc entry is "[prairiedogdesc]";
	now face entry is "now that of a prairie dog, a burrowing rodent with small nose, sharp teeth and a sleek profile for sliding through tight tunnels";
	now body entry is "short and a little plump looking, though able to stretch and wriggle through tight spaces. You have short arms and legs ending in little paws with small, clawed fingers";
	now skin entry is "dirty brown fur";
	now tail entry is "Your tail is short and thin, covered in dusty, brown fur.";
	now cock entry is "pink";
	now face change entry is "it shifts and changes shape, growing a small, broad muzzle with a little nose. Your ears move up and back, turning into round little ears that are held flat to your rodent-like head";
	now body change entry is "you become shorter and a little stockier. Your arms and legs tingle and throb as they reshape themselves into short limbs ending in small paws with clawed digits. You have a growing urge to dig through some soft, sandy dirt";
	now skin change entry is "you gain a coat of sandy brown fur";
	now ass change entry is "ass shifts and grows into a plump bottom. Even as your ass is changing, a small tail extends from your behind";
	now cock change entry is "becomes pink and human-like";
	now str entry is 8;
	now dex entry is 16;
	now sta entry is 12;
	now per entry is 12;
	now int entry is 14;
	now cha entry is 12;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 52; [ The monster's starting HP. ]
	now lev entry is 5; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Plains"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 6; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 6; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 3; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 60; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 1; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]plump[or]chubby[or]flexible[at random]";
	now type entry is "rodent"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
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
]



Section 3 - Endings

when play ends:
	if BodyName of Player is "Prairie Dog":
		if humanity of Player < 10:
			say "     As your new instincts take over, your body shrinks down further, becoming smaller and end up about three feet tall, though your sexual organs remain unchanged in size. You head back to the dry plains and wander them. As you go, you can see the dry grasses continuing to slowly spread over the ruined buildings, making it much more beautiful, you feel. Coming to what appears to be a grassy spot like all others, you can read the subtle signs now and start to dig. You burrow through the soft earth with ease, enjoying the feel of it against your paws as you tunnel down. You only have to go a few feet to find the underground tunnels of the other prairie dogs and scurry through along them to find the warren.";
			say "     Joining the others, you have a wonderful romp to welcome you among them before its back to work. You and the others continue your tunnels and the demolition of the last few buildings. As some soldiers are sent to investigate the plains, they are quickly surrounded by burrowing rodents emerging all around them. They are pounced and mated by the coterie until they are prairie dogs themselves and pulled down into the tunnels.";
			if centaurmate is 1 or centaurmate is 2:
				say "     In an effort to seal off the plains area, the military starts with electric fences, then moving on to a wide ditch and high concrete wall to keep the mutated centaurs contained. This barrier proves to be of little consequence to your people, who simply dig a long, secret tunnel past it, emerging far from their lines. Most are happy to stay in the great grasslands that have been created, but some long to spread out, escaping and traveling out to other prairies and farmlands at the heart of the continent to create new warrens there.";
			else:
				say "     The military's containment efforts, while sufficient for dealing with the centaurs and other creatures of the plains, are easily ignored by your people. For those few who wish to leave this beautiful, dry grassland that has been created, they need only take a secret escape tunnel dug by the coterie. Those who leave make their way to other prairies and farmlands at the heart of the continent to create new warrens there.";
		else:
			say "     You survive your experience in the infected city, but don't escape unscathed. With your stature reduced and your body much like that of an overgrown prairie dog, you don't fit in well with humanity at large. After some odd jobs, you buy yourself an empty plot of land in the country and build a small home for yourself above ground with a much more extensive burrow underneath. This work comes to you quite easily, having an affinity for the earth and tunnelling. The burrow you create is quite modern, with pipes and electrical sent down from the small entryway building, allowing you modern conveniences in a warm, dry den.";
			say "     Word of your ingenious construction spreads and your home is bought by a mole man for a sizeable sum. With the funds, you build yourself a new place and set up a construction firm to create other. You specialize in building and digging modern burrows for underground dwelling infected people. After only a few years, you are quite successful and make a final, grand burrow for yourself. This one is larger both above and below ground, being on a much larger plot of land. The upper rooms are mainly for your guests, friends and lovers who prefer such living quarters while the ultra-modern burrow below with its throw rugs, pillows and HDTV is cozier for you.";

Prairie Dog ends here.
