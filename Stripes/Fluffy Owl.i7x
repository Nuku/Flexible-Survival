Version 1 of Fluffy Owl by Stripes begins here.
[Version 1.1 - Additional M/F variation for player loss and player victory - Stripes]

"Adds a Fluffy Owl creature to Flexible Survival's Wandering Monsters table"


Section 1 - Creature Responses

when play begins:
	add { "Fluffy Owl" } to infections of girl;
	add { "Fluffy Owl" } to infections of furry;

to say fluffyowldesc:
	setmongender 4; [creature is female]
	say "     With a soft hoot, a fluffy owl creature comes swooping out at you from a dark corner. She has soft, fluffy looking feathers covering her body. Her arms are partially wings, but have taloned hands at the end. Her feet end in large, taloned bird's feet. Her piercing eyes seem to flash brightly in the dim corridors and her beak looks quite sharp. As she swoops in close, you can't ignore them any longer. On her chest are an enormous, simply titanic pair of boobs. Each the size of a large pumpkin, you have no idea how she can stand upright and walk, let alone fly with them. But somehow she does, moving with a strange lightness and grace despite her ample assets. She seems to smile at her beak as she notices your gaze and runs her taloned fingers over her huge breasts, jiggling them tantalizingly at you.";


to say losetofluffyowl:
	if HP of Player > 0:		[SUBMIT]
		say "     Unable to resist her alluring assets any longer, you surrender to the big-chested bird. She releases a happy hoot and snuggles you up in her wing arms, burying your face in her bosom. You moan softly and nuzzle at the soft feathers and warm breasts. You run your fingers through her down, stroking her breasts and teasing the hidden nipples. ";
		if Player is male:
			if a random chance of 1 in 2 succeeds:
				say "While you play with her giant tits, you can feel her taloned hand slip down to your cock and stroke it. She alternates between brushing her feathers over it and pumping at it until you're hard and leaking precum steadily.";
				say "     She pushes you back and takes a seat in your lap, sinking her wet hole down around your erection. Being part avian, her pussy feels different around your cock, having become more like a bird's cloaca. Lost in your arousal, you find this quite pleasurable and enjoy the different ways it seems to grip and slide over your penis. You fuck her with your face buried in her soft feathers, suckling at a nipple until you cum, pumping your hot seed into her until you're both satisfied and part ways.";
			else:
				say "She caresses your head and guides your mouth to one of those perky nipples, encouraging you to suckle it. She gives a hoot of delight when you do so and hugs you all the tighter.";
				say "     The fluffy owl slides a hand down between your legs, taking hold of your rising manhood. Once she's gotten you to full erection, she guides you both down onto the ground and lays out on her back, all while keeping your face pressed to her massive tits. Knowing what's needed of you, you suck down harder and drive your [Cock of Player] cock right into her juices folds as soon as she's gotten you lined up. Her avian pussy squeezes and quivers around your meat, milking at it as she hoots happily. You fuck the soft, pillowy bird with your hands and lips playing with those fluffy breasts and swollen nipples. Eventually you can hold out no longer and cum hard, pumping your hot seed right into her until you're drained and the big breasted bird is sated. After that, you part amicably, the busty owl satisfied after a good, hard fuck.";
		else:
			say "She takes one of your hands and guides it between her legs. Sliding over the very soft feathers there, you find her wet pussy and run your fingers over it.";
			say "     With a soft hoot, she prompts you to push a few fingers into her and she squirms in pleasure. Being part avian, her pussy feels different to your touch, having become more like a bird's cloaca. Lost in your arousal, you find this quite pleasurable and enjoy the different ways it seems to grip and slide over your pumping digits. You work three fingers into her faster and faster with your face buried in her soft feathers, sucking at a nipple until she cums over your hand and you soak your thighs with your cum as well. You nibble and suck at her breast as you both enjoy the afterglow before separating and parting ways.";
	else:				[LOSE]
		say "     Your fight with the fluffy bird comes to an end with her grabbing you and stuffing your face between her ample breasts, suffocating you in her soft scent and warm downy fluff. You try to push away, but you're too worn out and eventually pass out. When you come to, your crotch is soaked in sticky, feminine juices and the bird is nowhere to be found. Her soft, lingering scent is quite arousing, making you feel a little more willing to play with one of the lovely birds next time.";
		increase Libido of Player by 5;


to say beatthefluffyowl:		[WIN]
	say "     With the fluffy bird knocked down, ";
	if Libido of Player > 29 or (BodyName of Player is listed in infections of AvianList and Libido of Player > 14) or "Dominant" is listed in feats of Player:
		say "you look over her shapely body, tempted by those huge breasts and that feather-padded bottom.";
		say "     [bold type]Shall you play with the captured birdy?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			say "     Grabbing the owl's big hooters, you run your fingers through the soft down and squeeze the warm, soft flesh beneath. She hoots softly in pleasure and gives into your manhandling readily. It seems her enlarged breasts are quite sensitive. Finding those hidden nipples, you start to squeeze and tease them, getting her all the more excited.";
			if Player is male:
				if a random chance of 1 in 2 succeeds:
					say "     Pulling her up, you find her surprisingly light and easily lift her over to a nearby bed. You sit her in your lap with her back to you as you guide her down onto your hard cock. Her cloacal vent spreads open for you easily and takes your cock in, gripping and twitching around it as you start fucking her while still playing with her large breasts. Her bird-like pussy feels slightly different around your cock, squeezing and pulling in ways that are different, but equally enjoyable. She hoots and moans in pleasure as you thrust into her again and again until you finally cum hard and shoot your hot seed into her, bathing her eggs in your semen. Once your balls are drained, you continue to hold the soft bird against you and play with her sensitive breasts and nipples until you can get her to cum again before you release her and part ways.";
				else:
					say "     Pushing the owl to the ground and rolling her onto her back, you find her surprisingly light and easy to move into position. Raising and spreading her legs wide, you guide your hard cock into her cloacal pussy. Holding her by her feathered legs, you pound away at the sexy bird. She moans and hoots in delight as you fuck her. Her hot cunny feels wonderful around your throbbing manhood and the sight of those oversized globes bouncing and rolling across her chest as you pound into her turns you on all the more. And when you cum, you drive deep inside her and unleash your [Cum Load Size of Player] load into her, claiming her womb and eggs with your seed.";
					say "     When you're finished, you slide your spent shaft from her dripping folds and wipe it across her tailfeathers. You're tempted to stop and play with those big breasts of hers, but perhaps next time, you tell yourself, already looking forward to finding another of these owls to breed.";
			else:
				LineBreak;
				say "     Pulling her up, you find her surprisingly light and easily lift her over to a nearby examination table. You sit her down on it, spreading her legs. You slide one hand down between her legs while the other continues to fondle her oversized bosom. Finding her wet slit under those soft feathers, you run your fingers over it before slipping them into her. Her cloaca-like pussy is wet and shaped a little different from a normal cunt, but quivers with delight all the same as you drive a pair of fingers into her. The way it feels and the way it grips around your fingers is a little different, but still quite enjoyable, especially as you watch the bird woman moan and squirm in ecstasy when she cums. Her hot juices soak your fingers and you brush them off onto her fluffy breast before you part ways.";
	else:
		say "you choose to part ways before she recovers.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Fluffy Owl"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The big-breasted owl grabs you and buries your face in her downy bosom, trying to smother you with them![or]The fluffy owl slashes at you with a taloned hand![or]The stacked avian emits a high-pitched shriek that hurts your ears and makes you wobble unsteadily as it scrambles your inner ear![or]The owl woman makes a gliding swoop around you, then comes in to slash at you with her taloned feet![or]The owl creature presses her soft, fluffy body against yours, rubbing those huge breasts against you, hooting softly with need![or]The bird woman angrily snaps at you with her sharp beak![or]The avian woman grabs her big breasts and shakes them enticingly at you![at random]";
	now defeated entry is "[beatthefluffyowl]"; [ Text when monster loses. ]
	now victory entry is "[losetofluffyowl]"; [ Text when monster wins. ]
	now desc entry is "[fluffyowldesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "now the head of a fluffy barn owl with sharp eyes and a sharp beak. You have a faint trace of lips as well, though they are hard to see at first glance";
	now body entry is "light and slender, but still having strong muscles. This fitness can mostly be felt in your chest and arms, running to the feathery wings that your arms have become. Your hands have reshaped themselves into bird-like talons, as have your feet";
	now skin entry is "fluffy, brown and cream feathers cover your";
	now tail entry is "You have a broad, flat tail of brown feathers over your pert bottom."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "slick, hidden";
	now face change entry is "it changes and reshapes itself into that of a barn owl. Your head has a very rounded face, with a lighter fluff of feathers making it soft and cute. Your eyes are sharp, as is your small beak";
	now body change entry is "your body becomes light and slender, but still strong and muscled. You can feel the muscles on your upper body reshaping and tightening around your shoulders before the changes spread to your arms. As you watch, your arms reshape themselves into wing-like structures covered in soft feathers. Your hands thankfully remain, though they do change form as well, reshaping into bird-like talons, as do your feet";
	now skin change entry is "you feel goosebumps all over your body which spread to feel like pinpricks all over. From these countless points, small feathers start to grow in, soon covering your body in soft, fluffy feathers. Your downy coat is mainly a mix of browns and cream colors, with lighter fluff on your chest";
	now ass change entry is "it reshapes itself into a pert, little bottom covered by a broad tail of long, light brown feathers";
	now cock change entry is "it slips away inside you, becoming hidden within a cloacal vent which forms to house your genitals";
	now str entry is 12; [ These are now the creature's stats... ]
	now dex entry is 16; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 14; [ These values may be used as part of alternate combat.]
	now per entry is 18;
	now int entry is 10;
	now cha entry is 14;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 30; [ The monster's starting HP. ]
	now lev entry is 3; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5; [ Monster's average damage when attacking. ]
	now area entry is "Hospital"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 15; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 10; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 6; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is "distilled milk"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 28; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]light[or]winged[as decreasingly likely outcomes]";
	now type entry is "[one of]avian[or]owl-like[at random]";
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


Section 3 - Endings

when play ends:
	if BodyName of Player is "Fluffy Owl":
		if humanity of Player < 10:
			say "     Losing yourself to your new instincts and a renewed wave of changes because of it, you head out into the city. You make your way to the roof of a small office building and with only a little trepidation, leap off into the air. You glide clumsily at first, but somehow manage to fly soon enough. You soar through the night air, drawn back to the hospital. There, you join the other fluffy owls in the nest that they have set up in one wing, ";
			if Player is herm:
				say "enjoying a life of mating with the many females and being mated to lay more eggs for the parliament.";
			else if Player is male:
				say "enjoying a life of mating with the many females so they may lay more eggs for the parliament.";
			else:
				say "enjoying a life of being mated by one of the group's few males so you may lay more eggs for the parliament.";
		else:
			say "     You manage to survive your time in the city, but not unchanged by the strange infection. With your bird-like body, you are quite an unusual sight and it makes your life back in society difficult. With avian infections being rarer and with your wing-like arms, you stand out all the more. You do manage to find a career that you can be satisfied with when ";
			if FaceName of Player is "Fluffy Owl" and SkinName of Player is "Fluffy Owl" and TailName of Player is "Fluffy Owl" and CockName of Player is "Fluffy Owl" and Breast Size of Player > 5:
				say "you become the mascot for a restaurant change. You get a rather cushy life of a minor celebrity with appearances and commercials. Despite your altered appearance, you are a welcome sight at the restaurants and the lovely, big-breasted girls who work there are always fun to see. And there's always at least one who's willing to sneak off to snuggle up to the cute, fluffy owl and her big, soft breasts.";
			else if FaceName of Player is "Fluffy Owl":
				say "you decide to become a prosecuting attorney. You are quite effective at questioning people on the stand, as many witnesses aren't prepared to deal with your appearance. And your habit, when the questioning is reaching its peak, of turning your back on them casually and then slowly twisting your head around backwards to stare at them makes many of the weak-willed criminals snap and make a fatal mistake under your steely, predatory gaze. In your later years, when you become a judge, you use this technique as well, throwing off witnesses and lawyers alike to get to the real truth of the matter so you can mete out harsh justice.";
				if lastfuck of Alex is not 255:
					say "     You remain the friend and occasional lover of Alex, the ferrety lawyer, throughout your life. He always squirms so cutely when you nip at him with your beak or brush your feathers across his cock. You do have to keep some distance from him, for professional reasons, and always take care against any conflict on your cases. But you are able to 'consult' with him from time to time, valuing both his advice and his company at those times. His more easy-going attitude and advice helps offset your sometimes harsh urges for swift and strong decisions, helping you to reach a more sound and balanced verdict on many cases.";
			else:
				say "you become a pilot, having an instinctual longing to fly, but aren't quite able to do it on your own. As the pilot, you can remain unseen by the passengers. The flight crew all soon grow used to your appearance and accept you readily enough. Your willingness to work the red-eye flights, which are better for your nocturnal body, helps quite a bit too. You become popular with several of the flight attendants as well[if Player is herm], both male and female[end if]. You enjoy many an opportunity to renew your membership in the Mile High Club.";

Fluffy Owl ends here.
