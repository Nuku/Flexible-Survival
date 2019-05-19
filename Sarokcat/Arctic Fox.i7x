Arctic Fox by Sarokcat begins here.

"Adds a Arctic fox to Flexible Survival's Wandering Monsters table"


Section 1 - Creature Responses


to say Arctic fox attack:
	if Player is female:
		say "tease-.[line break]";
		say ".'";
		infect "Arctic fox";
	else:
		say ".[line break]";
		say "ment...";
		infect "Arctic fox";


To say Arctic fox loss:
	say "she loses! The horror!.'";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Arctic fox";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]She darts forward quickly, sideswiping you with her body.[or]Swiftly racing forward and to the side, she slashes at you as she passes.[or]Her front paw flashes out faster than the eye can follow, leaving a painful set of claw marks on you.[or]Lashing her tail in anticipation, the arctic fox purrs as she stares deep into your eyes, her sinuous movements almost hypnotically appealing.[or]Charging forward with no warning whatsoever, she pounces and knocks you to the ground![or]She bunches her powerful hind legs up, and leaps directly at you, painfully knocking you back![or]She grins at you, baring her sharp canid teeth, before leaping forward and biting you.[at random]";
	now defeated entry is "[Arctic fox loss]";
	now victory entry is "[Arctic fox attack]";
	now desc entry is "As you wander around the deserted paths of the zoo, you spot a blur for a second. Turning towards it, you find yourself staring straight into the eyes of an almost feral-like arctic fox, her long, lean body resting on her narrow paws, and her long tail lashing behind her as she focuses her gaze directly on you. [one of]'Why don't you run? I love the chase,' [or]'Hmmm, not a gazelle, but you look almost as fun,' [or]'Ooh, something to chase!' [or]'Oh good, I was feeling bored,' [or]'I was feeling kind of lonely here. Maybe you can help?' [or]'Finally, someone to pounce!' [at random]she says with a soft grin. Her pert breasts stand out from her body as she takes a deep breath in anticipation and slips into a runner's stance, her eyes locked on her newest prey... you.";
	now face entry is "sexy vulpine face. Your slim, narrow muzzle and bright eyes look perfectly suited to your body, and your pointed canid ears twitch idly at every sound, even as you find yourself grinning happily, enjoying the feeling of your new sexy self"; [ Face description, format as "Your face is (your text)."]
	now body entry is "sexy and lithe, with small paws and rather dainty claw-tipped hands. Your new vulpine form seems to burn with energy and arousal"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]pure, white fur that covers your[or]white fur that covers your[or]arctic fox fur that covers your[or]soft fur that covers your[or]thick, white fur that covers your[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a beautiful, white vulpine tail that stretches out behind you, its soft fur rubbing against your body pleasantly as you swish it from side to side with amusement."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]canid[or]vulpine[or]knotted[or]pointed[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your mouth pushes out into a slim muzzle. Your ears taper to points and seem to stretch out above your head as your face begins to reshape itself into the narrow, sexy visage of a fox, your slim, new muzzle full of sharp teeth and your bright, shining eyes seeing the world around you in an entirely new and more sexual light"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you find yourself falling to the floor, your muscles twitching as your body reshapes into a slimmer and more streamlined form. Your feet shift and compress into small, dainty vulpine paws, even as your hands seem to narrow, and your fingers grow closer together as soft claws push their way out of your new, slightly paw-like hands"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "a strange warmth begins to spread across your body, and a soft, downy layer of pure, white fur begins to push out of your skin. Longer, thicker fur begins to grow in, even as you begin to stroke your soft, white undercoat, until you have a full pelt of arctic fox fur"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your rear seems to tighten, and a soft tail begins to push its way out of your body. You find yourself moaning with pleasure as your new appendage stretches out behind you, and you swish it experimentally as soft, puffy, white fur covers your new vulpine brushtail"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it tapers to a soft point, your skin distending slightly at the base as a sheath begins to form around your increasingly canid cock, and you find yourself groaning slightly as the base of your cock bulges out as a knot forms, then slips into its new waiting sheath"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 12;
	now dex entry is 19;
	now sta entry is 12;
	now per entry is 15;
	now int entry is 15;
	now cha entry is 25;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 40;
	now lev entry is 3;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 4;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "None";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 8;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2;  [ Size of balls ]
	now Nipple Count entry is 0;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 50;  [ Amount player Libido will go up if defeated ]
	now loot entry is "";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;  [ Chance of loot dropping 0-100 ]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lithe[or]alluring[or]sultry[at random]";
	now type entry is "vulpine";  [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
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





when play ends:
	if BodyName of Player is "Arctic fox":
		if humanity of Player < 10:
			if Player is male:
				say "Giving in to your more feral instincts, you return to the Palomino and your sexy vixen mate. Janice seems rather surprised at first by your intensity, but soon is moaning just as wantonly as you sheathe yourself in her body again and again until she is as lost to the pleasure of her new body as you are. After you have recovered, you find that you enjoy spending time at the club, the two of you occasionally teasing other club goers to give in and join you as slutty arctic foxes. When the military arrives, you find that you have even more opportunity for fun as they prove particularly susceptible to your sexy mate's teasing looks, although you are always the one to mate them and make them proper vixens. Before long, there are several vixens on stage at any time, though you settle in and make one of the private rooms into your fox den. The other club goers seem only slightly interested in your actions, perhaps because many of them have started adapting similar habits. Eventually though, the club comes under attack from the military, and you and your mates are forced out into the streets to help deal with the problem, the hunt proving surprisingly fun as you, Janice, and your other vulpine converts enjoy tricking and trapping the military. Before long, you have broken out of the military containment area as a large group, and you only pause for a minute to get your bearings, before you all split up and begin to head north. You grin ferally as you imagine the military trying to chase all of your nice, pregnant vixen mates down, and you snicker, knowing that there is no way that they can catch even a quarter of your clever foxy mates before you all escape to the north. Though, you certainly hope that they come looking for you and your fellow arctic foxes up in the snowy north once you get there... you could always use some new converts after all...";
			else:
				say "Giving in to your more feral instincts, you return to the Palomino and your sexy vixen sister. Janice seems rather surprised at first by your intense changes, but after a while, she comes to embrace and enjoy her new instincts just as fully, having already fallen in love with her new form. Before long, you and Janice are often found up on stage. As she shows you how to move your body to your best advantage, the cheers of the crowd as you tease them all with your sexy vixen body makes you hot, and you often invite several of them back to your private nook for you and Janice to play with together. The eventual military arrival is a big deal, however, as you and Janice finally manage to get a male fox to play with as one of the soldiers joins you on a more permanent basis in the club, and several new vixen sisters end up joining soon afterwards as well. You find yourself smiling happily as you feel your mate's young begin to grow in your belly, enjoying the feeling as much as you know Janice is. You just can't wait for your next breeding season together!";
		else:
			if Player is male:
				say "When the military finally arrive at the club, they find that you and Janice are more than happy to return to their base with them, although many other club members decide to stay behind in their newly found home. At the military camp, it is easy enough for the two of you to manipulate manners in your favor, and soon, with a few phone calls to some old acquaintances in the modeling community, the two of you are released from military custody. You find yourself grinning with amusement at how eager people are not to piss your lovely mate off, her contacts proving exceptionally useful as she reestablishes her identity and reclaims her bank accounts. Soon, you are settling in to a nice, comfy den, which you celebrate by enjoying each other on every surface possible. Before long, you find yourself feeling mildly restless as your mate's heat begins to fade, and you take to wandering around your new property a bit. You are thus surprised one day to return to find your mate with a sexy twinkle in her eye as several of her female contacts wait nervously nearby. It doesn't take long to figure out Janice's plan, and before long, you have seduced them all, and sent them off to transfer their money and get their affairs in order so that they can become vixens as well. The thought of have a nice little harem of your own warms your heart, and before long, you have a nice house full of vixens, many of them with connections to movie or modeling industries. It seems almost inevitable that you would find yourself on screen soon enough, your lithe form and cavalier attitude capturing the imagination and making you rather popular, and your sexy mates acquire more than a bit of a following as well. Though, you find yourself staying at home with your mates as much as possible as they slowly swell with your virile seed, and you can't wait to have a bunch of little fox kits running around the house. The thought makes you smile, even as you relax in a warm pile of fur and hold your first, and favorite, mate close, looking forward to a long and eventful foxy life.";
			else:
				say "When the military finally arrive at the club, they find that you and Janice are more than happy to return to their base with them, although many other club members decide to stay behind in their newly found home. At the military camp, it is easy enough for the two of you to manipulate manners in your favor, and soon, with a few phone calls to some old acquaintances in the modeling community, the two of you are released from military custody. You find yourself grinning with amusement at how eager people are not to piss your lovely sister off, her contacts proving exceptionally useful as she reestablishes her identity and reclaims her bank accounts. Before long, you are both living quite comfortably together, and you enjoy exploring your bodies together as often as possible. Still, Janice has that mischievous twinkle in her eye again soon enough, and before long, she is talking about taking up modeling and showmanship again, though with an entirely new twist this time.";
				say "Listening to her plan, you find yourself grinning with amusement as you nod eagerly, and soon, the two of you are carefully recruiting a-not-so small group of women who are interested in foxes, fur, and modeling. Soon, your den is full of recently changed foxy women, all of them happy and enthusiastic about their new condition, and you and Janice begin spending some time in training them in how to move and act properly, and even more time having fun with your new denmates. When you are finally ready, Janice contacts several of her old friends again, and you take the fashion world by storm as you model several of the hottest outfits and strut your stuff both on the catwalk and off. The money rolls in, though you find the cheers and adoration of the crowds and their rapt attention to your new sexy body to be almost more of a reward than any amount of money could be. Soon, however, the movie offers and advertising contracts start rolling in for you and your fellow foxes, though from the mischievous look in Janice's eye again, you can tell that she is planning something. When you notice her watching the handsome male star of your first movie with that look, you find yourself grinning with anticipation as well. It will be nice to have a sexy male fox around the den after all, and you just can't wait to see how he turns out...";


Arctic Fox ends here.
