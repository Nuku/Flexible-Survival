Version 2 of Salamander by Stripes begins here.
[Version 2.0 - Bound State added by Blue Bishop]
[Parts of this creature's appearance and transformation are based off the Salamander Femme creature from the multiplayer game]

"Adds a Salamander creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

when play begins:
	add { "Salamander" } to infections of FemaleList;
	add { "Salamander" } to infections of TailweaponList; [usable for Tail Strike feat]
	add { "Salamander" } to infections of ReptileList; [list of reptile infections]
	add { "Salamander" } to infections of InternalList; [list of infections w/internal male genitals]
	add { "Salamander" } to infections of FirebreathList; [List of fire breathing creatures]

to say salamanderdesc:
	setmongender 4; [creature is female]
	say "     The salamander creature before you is a mix of animal and human body, with a definitively female form. Her body is especially effeminate, with wide hips, thighs, and a thin waist that clamors for attention. Her breasts are quite modest, being pert B-cups. Her arms and legs look quite human, but flex a little more than normal, making her seem sinuous and agile. Her fingers and toes terminate in small, dark claws. She possesses a flat, wide head with a mouth full of diminutive teeth. She has a long, narrow, fleshy tail mounted atop her soft and squishy ass cheeks. Making no effort to hide it, you can also see her moderately large pussy between her legs, wet and waiting.";
	say "     Her smooth skin is a rich red color with yellow and black speckling, predominantly across her breasts and extremities. A shimmer of intense heat radiates from it intensely enough to make the air ripple around her. It seems the nanites have jumbled the old myths of salamanders with its amphibian nature, making this creature into one suitable for two environments, on land and in lava.";

to say losetosalamander:
	if vorelevel is 3 and scalevalue of Player < 4 and (a random chance of 1 in 4 succeeds or (player is kinky and a random chance of 1 in 3 succeeds)):
		if HP of Player > 0:
			say "     When you submit to the red amphibian she exploits the opening by lashing you from afar with her elongated tongue. The hot, sticky thing clinging against your [bodytype of Player] form, the creature reels you in close, wrapping the appendage around you, loop by loop, as it gets some slack from your approach.";
			say "     Limbs bound by her tongue, her wide maw savors your compliance by doting on you, kissing and nuzzling your face. It's quickly apparent that she seems to be sizing you up, hot breath washing over you as you're given a glimpse into her crimson abyss of a maw. If you don't try to break free, it looks like you'll end up as a meal for salamander!";
		else:
			say "     Starting to exhaust yourself, you're unable to defend yourself from being lashed by the red amphibian's elongated tongue. Briefly stunned, it takes a second to realize that the hot, sticky appendage clings to you, utterly refusing to let go!";
			say "     She's at least some distance from you, but it's a struggle to stop the salamander from starting to reel you in. Hungry, drooling maw agape for you to see it's apparent that your ultimate destination is down that crimson abyss, if you don't break free quickly!";
			now struggleatt is 1;
		wait for any key;
		salabind;
	else:
		if HP of Player > 0:
			say "     Rather than resist, you submit to the red amphibian. You allow her to push you to the ground, after which she moves atop you to have her way with you";
		else:
			say "     The red amphibian's latest blow leaves you weak and staggered. After that, she's easily able to knock you to the ground and moves atop you to have her way with you";
		say ". With you down, she reins in her heat and rubs her smooth body against yours. Her flesh is slick with a thin coating of slime that causes your own skin to tingle where it touches. This tingling blossoms into a blissful warmth that is arousing, but also mind-numbing. Your thoughts get jumbled and manage to focus on little past having sex with the increasingly alluring amphibian.";
		if Player is male and a random chance of 2 in 3 succeeds:		[usually opts for sex]
			say "     Taking your [cock size desc of Player] erection in hand, she runs her elongated tongue across her muzzle as she eyes it[if Cock Length of Player > 24]. With great effort[else if Cock Length of Player > 16]. With considerable effort[else]. With obvious eagerness[end if], she lowers herself down onto your pulsing rod. As she starts working her dripping[if Cock Length of Player > 16] and overstuffed[end if] cunt over your [Cock of Player] cock, she presses her lizard-like face to yours and wriggles her long tongue into your mouth for a tonsil-licking kiss that causes your addled head to spin. Soon you're cumming into that heated, vice-like cunt of hers as she drains your [Cum Load Size of Player] load into her womb. Once she's gotten what she wanted, you're left sticky with cum and slime until you can recover your senses.";
		else:
			say "     Pressing her shapely thighs around your head, she pushes her wet and heated cunny right in your face. With her hot juices dripping down onto your mouth, you can't help yourself and dive into licking her smooth-skinned snatch. Already muddleheaded and aroused by effects of her slime, the taste of her pussy overwhelms you. Your tongue plunges into her cunt and licks at her clit as you lap up every drop you can get of her delicious juices[if Player is herm]. While you're eating her out, her long, slick tongue slathers across your loins, licking your cock[smn] and diving into your cunt[sfn][else if Player is male]. While you're eating her out, her long, slick tongue slathers across your loins, licking your cock[smn][else if Player is female]. While you're eating her out, her long, slick tongue slathers across your loins, diving into your cunt[sfn][else]. While you're eating her out, her long, slick tongue slathers across your bare groin[end if]. You keep going at her non-stop until she cums with a messy gush of steaming-hot femcum. Once she's gotten what she wanted, you're left sticky with cum and slime until you can recover your senses.";

to say beatthesalamander:
	say "     Your final blow sends the slender creature stumbling back. The hot aura around her wavers as she's unable to maintain it any longer. She blows you a big, messy raspberry with her elongated tongue and runs off.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Salamander";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The [one of]salamander[or]salamander femme[or]female amphibian[or]red salamander[or]speckled salamander[at random] [one of]scratches at you with her claws[or]smacks you with her tail[or]bites you with her wide mouth[or]contorts in an unnatural manner to punch you in the side[or]grabs onto you and turns up her personal heat, cooking your flesh[in random order].";
	now defeated entry is "[beatthesalamander]";
	now victory entry is "[losetosalamander]";
	now desc entry is "[salamanderdesc]";
	now face entry is "now flatted down with a short muzzle. You have a widened mouth full of diminutive teeth";
	now body entry is "especially effeminate, with wide hips, thighs, and a thin waist that draws the eye. Your limbs are still human, though they flex a little more than could be considered normal. Your digits end in short, dark claws that are probably better suited for climbing than fighting";
	now skin entry is "[one of]smooth[or]sensitive[or]speckled[or]slimy[or]red[or]crimson[at random]";
	now tail entry is "You have a long, fleshy tail growing from your squishy ass cheeks. It starts thick and tapers down gradually along its length.";
	now cock entry is "[one of]red[or]speckled[or]glistening[or]retractable[as decreasingly likely outcomes]";
	now face change entry is "your jaw stretches and warps uncomfortably. Your skull aches as becomes flatter and broader. A short muzzle protrudes forwards and your mouth widens to suit your enlarged jaw. Your long, slimy tongue brushes across your teeth as they become small and numerous";
	now body change entry is "your hips and thighs become wide and rounded. Your waist narrows to a sultry, seductive thinness that further accentuates your effeminate appearance. Your limbs creak and twist as they bend in strange ways, your bones and joints becoming slightly flexible";
	now skin change entry is "it loses any and all hair and becomes smooth. It reddens over the course of the next minute, with small spots and speckles of yellow and black appearing soon after. Your hide has a slight sheen from the thin layer of slime that coats it";
	now ass change entry is "the base of your spine throbs. It creaks in protest as a long, smooth tail bursts from the bottom of your spine";
	now cock change entry is "its flesh turns red. It pulses and throbs as your balls are drawn right up into your body. Your transforming cock bubbles up a mix of precum and semen to coat its surface in a glistening layer of slime. A warm slit forms at your crotch and your altered manhood retracts into it until you next become aroused";
	now str entry is 15;
	now dex entry is 20;
	now sta entry is 13;
	now per entry is 14;
	now int entry is 9;
	now cha entry is 9;
	now sex entry is "Female";
	now HP entry is 66;
	now lev entry is 9;
	now wdam entry is 8;
	now area entry is "Capitol";
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 2; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 8;
	now Cunt Tightness entry is 5;
	now libido entry is 45; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]flexible[or]curvy[or]effeminate[in random order]";
	now type entry is "[one of]salamander[or]amphibian[in random order]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "firebreath"; [ Row used to designate any special combat features, "default" for standard combat. ]
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
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
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
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


Section 3 - Bound State
[ - Blue Bishop]

to salabind:
	now lustatt is Libido of Player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if HP of Player > 0 or humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		if lustatt > 99:
			if boundsegment is 1:
				say "     Finding yourself overtaken by lust, you are given no choice but to furiously [if Player is male]jerk yourself off[else]fondle yourself[end if], writhing and twisting in these wet, smoldering confines until you finally find reprieve, [if Player is male]unloading your [Cum Load Size of Player] load against the supple flesh[else if Player is female]cunt throbbing firmly against the supple flesh[else]a particularly trying task given your lack of outlet[end if][if Player is male and Ball Size of Player > 5]. This wasn't a particularly wise task, as you're now made to swim in a pool of your own seed, though it thankfully diminishes over time[end if]. Panting to catch your breath, your mental faculties eventually return to you, leaving you to assess the matter at hand.[line break]";
			else:
				say "     Finding yourself overtaken by lust you cry out in ecstasy against the salamander's slick, writhing appendage, [if Player is male]unloading your [Cum Load Size of Player] load against the open air[else if Player is female]cunt throbbing firmly against the open air[else]a particularly trying task given your lack of outlet[end if]. Panting to catch your breath, ";
				if enduring is true and struggleatt > 0:
					say "you manage to fight her off from pulling you any closer, at least for now...";
				else:
					say "she immediately exploits you moment of weakness! Grabbing you between your shoulders, she firmly plunges your head[if tempnum2 is 1] back[end if] down her wide maw.";
					say "     [if tempnum2 is 1]She seems eager to return her victim back within her heated prison of flesh[else if scalevalue of Player is 3]She doesn't seem to care that you're around her size, apparently stretchy enough to accommodate you[else]It becomes quickly apparent that she's stretchy enough to engulf you within her depths without any difficulty[end if]. Though she seems to be reducing her body heat, she's still terribly hot enough to make you sweat, mixing with her saliva in slicking her motion as she shoves you down, foot by foot, gullet bulging considerably with its contents, until only your legs remain.";
					say "     Forced into the monster's tight, sticky stomach, it's alight with a[if tempnum2 is 1] familiar,[end if] molten glow, radiating an intense against your vulnerable form. As she forces down what little remains of you, you're forced to curl up to fit within these extremely tight confines. Even though she's apparently flexible enough to contain you, these walls nonetheless cling tightly against you, loudly churning as she [if tempnum2 is 1]teases her constantly-struggling meal[else]climbs back to her feet to take her new meal to a safe place[end if].";
					now struggleatt is 0;
					now tempnum2 is 0;
					now boundsegment is 1;
			if Libido of Player > 25, decrease Libido of Player by (Libido of Player / 10) + 1;
			now lustatt is Libido of Player;
			if enduring is true:
				decrease humanity of Player by 8 + (psycheadjust * 2);
			else:
				decrease humanity of Player by 15 + (psycheadjust * 5);
				if struggleatt > 0, decrease struggleatt by 1;
		now enduring is false;
		if boundsegment is 1:
			if (enduring is true and a random chance of 2 in 5 succeeds) or (enduring is false and a random chance of 4 in 5 succeeds):
				increase hunger of Player by 1;
				increase thirst of Player by 2;
			else if enduring is false or (enduring is true and a random chance of 2 in 3 succeeds):
				increase thirst of Player by 1;
			say "     You're trapped within the stomach of a slamander. [one of]The slick walls grind relentlessly against your vulnerable form[or]The heat of this prison causes you to groan[or]The soft glow of your confines is all you can see[at random]. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		else:
			say "     You're tethered to the salamander by her long, adhesive tongue, who doesn't seem intent on letting you go anytime soon! [if struggleatt is 0]She's practically kissing you, she so close to you right now. [else if struggleatt is 1]There's very little distance between you and her. [else if struggleatt is 2]There seems a reasonable amount of distance between you and her. [else]She's straining to keep a hold of you, you're nearly free! [end if]You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break]";
		say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of Player]	Thirst: [thirst of Player]	Struggle: [salastrugglebar]";
		if humanity of Player < 1:
			LineBreak;
			say "     Eventually you become so drained - both mentally and physically - that you wholly give in to your captor, ";
			if BodyName of Player is "Salamander" and player is pure:
				say "compelled by your strain to obey her every whim";
			else:
				say "completely transforming into one of her kin, this new strain compelling you to obey her every whim";
			say ". It's only then that you stop being siphoned off into the salamander, but you nonetheless succumb to a terrible, inevitable fate...";
			wait for any key;
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Salamander":
					now MonsterID is y;
					break;
			now BodyName of Player is "Salamander";
			now FaceName of Player is "Salamander";
			now TailName of Player is "Salamander";
			now SkinName of Player is "Salamander";
			now CockName of Player is "Salamander";
			now tail of Player is tail entry;
			now Face of Player is face entry;
			now Skin of Player is skin entry;
			now Body of Player is body entry;
			now Cock of Player is cock entry;
			now voreloss is true;
			now Trixieexit is 1;
			end the story saying "You lost your mind while bound!";
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				increase struggleatt by 1;
				if boundsegment is 0:
					if struggleatt < 4:
						say "     You strain to pull yourself away from the [one of]salamander[or]amphibian[at random], who tries to pull back. You manage to get [if struggleatt is 1]some[else if struggleatt is 2]more[else]a lot of[end if] distance from her.";
						increase lustatt by 7 + (lustadjust * 2);
						wait for any key;
					else:
						say "     Stretched to her absolute limit, all it takes is a little more effort to send the thing flying back in her face. Flung onto her back with an audible snap, she appears to be stunned, leaving you to turn and make a run for it!";
						cleanboundmemory;
						now pewtergenitalcap is 0;
						now Trixieexit is 1;
						follow the turnpass rule;
				else:
					if struggleatt < 2:
						say "     You struggle against this tight and hot prison, causing it to groan and churn against you.";
						increase lustatt by 7 + (lustadjust * 2);
						if BodyName of Player is "Salamander" and player is pure:
							if a random chance of 1 in 5 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						wyvhumanityroll;
						wait for any key;
					else:
						say "     Body churning loudly, finally unable to contain you any longer, your tight prison squeezes your body back up the hole you came before you're blinded by the bright light and dry air of the outside world. Regurgitated on the ground in a puddle of saliva, you weakly pull yourself to your feet, finding yourself someplace near where you were first captured.";
						say "     You make a dash to escape but the salamander - previously dazed by being forced to expel you - lashes you with her tongue, nearly sending you flat on your ass as she tries reeling you back in. You may've gotten a head start, but the amphibian has no intention of letting you go that easily...";
						now tempnum2 is 1;
						wait for any key;
						now boundsegment is 0;
						now struggleatt is 1;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					if boundsegment is 0:
						decrease struggleatt by 2;
						say "     You actively allow the [one of]salamander[or]amphibian[at random] to [if struggleatt is -2]finish you off[else]pull you in close[end if]";
						if struggleatt < 0:
							say ". Once[if struggleatt is not -2] you're in range and[end if] she's ready she grabs you between your shoulders and firmly plunges your head[if tempnum2 is 1] back[end if] down her wide maw.";
							say "     [if tempnum2 is 1]She seems eager to return her victim back within her heated prison of flesh[else if scalevalue of Player is 3]She doesn't seem to care that you're around her size, apparently stretchy enough to accommodate you[else]It becomes quickly apparent that she's stretchy enough to engulf you within her depths without any difficulty[end if]. Though she seems to be reducing her body heat, she's still terribly hot enough to make you sweat, mixing with her saliva in slicking her motion as she shoves you down, foot by foot, gullet bulging considerably with its contents, until only your legs remain.";
							say "     Forced into the monster's tight, sticky stomach, it's alight with a[if tempnum2 is 1] familiar,[end if] molten glow, radiating an intense against your vulnerable form. As she forces down what little remains of you, you're forced to curl up to fit within these extremely tight confines. Even though she's apparently flexible enough to contain you, these walls nonetheless cling tightly against you, loudly churning as she [if tempnum2 is 1]teases her constantly-struggling meal[else]climbs back to her feet to take her new meal to a safe place[end if].";
							now struggleatt is 0;
							now tempnum2 is 0;
							now boundsegment is 1;
						else:
							say ", [if struggleatt is 0]who's practically kissing you by this point[else]who's quickly closing the distance between the two of you[end if].";
					else:
						say "     You actively submit yourself to the salamander's will, [one of]fleshy[or]slick[at random] prison [one of]briefly tightening around[or]groaning against[at random] you.";
						if a random chance of 1 in 5 succeeds:
							infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						LineBreak;
						wyvhumanityroll;
					increase lustatt by 14 + (lustadjust * 4);
				else:
					if boundsegment is 0:
						decrease struggleatt by 1;
						say "     You submit to the [one of]salamander[or]amphibian[at random]'s pull";
						if struggleatt < 0:
							say ". Once[if struggleatt is not -1] you're in range and[end if] she's ready, she grabs you between your shoulders and firmly plunges your head[if tempnum2 is 1] back[end if] down her wide maw.";
							say "     [if tempnum2 is 1]She seems eager to return her victim back within her heated prison of flesh[else if scalevalue of Player is 3]She doesn't seem to care that you're around her size, apparently stretchy enough to accommodate you[else]It becomes quickly apparent that she's stretchy enough to engulf you within her depths without any difficulty[end if]. Though she seems to be reducing her body heat, she's still terribly hot enough to make you sweat, mixing with her saliva in slicking her motion as she shoves you down, foot by foot, gullet bulging considerably with its contents, until only your legs remain.";
							say "     Forced into the monster's tight, sticky stomach, it's alight with a[if tempnum2 is 1] familiar,[end if] molten glow, radiating an intense against your vulnerable form. As she forces down what little remains of you, you're forced to curl up to fit within these extremely tight confines. Even though she's apparently flexible enough to contain you, these walls nonetheless cling tightly against you, loudly churning as she [if tempnum2 is 1]teases her constantly-struggling meal[else]climbs back to her feet to take her new meal to a safe place[end if].";
							now struggleatt is 0;
							now tempnum2 is 0;
							now boundsegment is 1;
						else:
							say ", [if struggleatt is 0]who's practically kissing you by this point[else if struggleatt is 1]who's quickly closing the distance between the two of you[else]who's gradually closing the distance between the two of you[end if].";
					else:
						say "     You make an effort to tolerate your twisted fate, [one of]fleshy[or]slick[at random] prison [one of]briefly tightening around[or]groaning against[at random] you.";
						if BodyName of Player is "Salamander" and player is pure:
							if a random chance of 1 in 5 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						LineBreak;
						wyvhumanityroll;
					increase lustatt by 7 + (lustadjust * 2);
				wait for any key;
				next;
			else:
				LineBreak;
				let tempfixture be 0;
				now enduring is true;
				if boundsegment is 0 and a random chance of 1 in 2 succeeds:
					decrease struggleatt by 1;
					now tempfixture is 1;
				if boundrecover is true:
					if boundsegment is 0:
						say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within this bondage, recovering a small portion of your lost humanity";
						if struggleatt < 0:
							say ". However, this distraction allows her to [if struggleatt is -1]finish you off[else]pull you in close enough[end if], grabbing you between your shoulders and firmly plunging your head[if tempnum2 is 1] back[end if] down her wide maw.";
							say "     [if tempnum2 is 1]She seems eager to return her victim back within her heated prison of flesh[else if scalevalue of Player is 3]She doesn't seem to care that you're around her size, apparently stretchy enough to accommodate you[else]It becomes quickly apparent that she's stretchy enough to engulf you within her depths without any difficulty[end if]. Though she seems to be reducing her body heat, she's still terribly hot enough to make you sweat, mixing with her saliva in slicking her motion as she shoves you down, foot by foot, gullet bulging considerably with its contents, until only your legs remain.";
							say "     Forced into the monster's tight, sticky stomach, it's alight with a[if tempnum2 is 1] familiar,[end if] molten glow, radiating an intense against your vulnerable form. As she forces down what little remains of you, you're forced to curl up to fit within these extremely tight confines. Even though she's apparently flexible enough to contain you, these walls nonetheless cling tightly against you, loudly churning as she [if tempnum2 is 1]teases her constantly-struggling meal[else]climbs back to her feet to take her new meal to a safe place[end if].";
							now tempnum2 is 0;
							now struggleatt is 0;
							now boundsegment is 1;
						else:
							if tempfixture is 1:
								say ". It doesn't seem to stop the [one of]salamander[or]amphibian[at random] from pulling you closer, though, [if struggleatt is 0]who's practically kissing you by this point[else if struggleatt is 1]who's quickly closing the distance between the two of you[else]who's gradually closing the distance between the two of you[end if].";
							else:
								say ". The lizard tries to pull you in closer, but you manage to resist!";
					else:
						say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
						if a random chance of 2 in 3 succeeds:
							decrease thirst of Player by 2;
							decrease hunger of Player by 1;
						else:
							decrease thirst of Player by 1;
					now boundrecover is false;
					SanBoost 3;
				else:
					if boundsegment is 0:
						say "     You actively try to hold your ground and prevent the [one of]salamander[or]amphibian[at random] from pulling you in closer";
						if struggleatt < 0:
							say ". However, it's not enough to stop her from [if struggleatt is -1]finishing you off[else]pulling you in close enough[end if], grabbing you between your shoulders and firmly plunging your head[if tempnum2 is 1] back[end if] down her wide maw.";
							say "     [if tempnum2 is 1]She seems eager to return her victim back within her heated prison of flesh[else if scalevalue of Player is 3]She doesn't seem to care that you're around her size, apparently stretchy enough to accommodate you[else]It becomes quickly apparent that she's stretchy enough to engulf you within her depths without any difficulty[end if]. Though she seems to be reducing her body heat, she's still terribly hot enough to make you sweat, mixing with her saliva in slicking her motion as she shoves you down, foot by foot, gullet bulging considerably with its contents, until only your legs remain.";
							say "     Forced into the monster's tight, sticky stomach, it's alight with a[if tempnum2 is 1] familiar,[end if] molten glow, radiating an intense against your vulnerable form. As she forces down what little remains of you, you're forced to curl up to fit within these extremely tight confines. Even though she's apparently flexible enough to contain you, these walls nonetheless cling tightly against you, loudly churning as she [if tempnum2 is 1]teases her constantly-struggling meal[else]climbs back to her feet to take her new meal to a safe place[end if].";
							now tempnum2 is 0;
							now struggleatt is 0;
							now boundsegment is 1;
						else:
							if tempfixture is 1:
								say ". Sadly it does not seem to succeed as you're inched forward, [if struggleatt is 0]to the point that she's practically kissing you by this point[else if struggleatt is 1]quickly closing the distance between the two of you[else]who's gradually closing the distance between the two of you[end if].";
							else:
								say ". After a bit of struggling you manage to prevent yourself from losing any ground!";
					else:
						say "     You make a deliberate effort to resist this prison's influence, [one of]briefly tightening around[or]groaning against[at random] you.";
						wyvhumanityroll;
				LineBreak;
				increase lustatt by 3 + lustadjust;
				wait for any key;
				next;
			say "Invalid action.";

to say salastrugglebar:
	if boundsegment is 0:
		say "[if struggleatt is 3]<< X[end if][if struggleatt is 2]X[else if struggleatt > 2]~[end if][if struggleatt is 1]X[else if struggleatt > 1]~[end if][if struggleatt is 0]X[else if struggleatt > 0]~[end if] [italic type][bracket]--[close bracket][roman type]";
	else:
		say "< [bracket]-[if struggleatt > 0]X[else]-[end if][close bracket]";

Section 4 - Endings

when play ends:
	if BodyName of Player is "Salamander": [Needs to be corrected if standard endings are added]
		if voreloss is true and humanity of Player < 10:
			say "     Doomed to be a plaything for the Salamander, she often enjoys your company both inside and outside of her. Having completely lost your sanity you can only eagerly oblige your fiery new mistress and attend to her every need. You memory soon becomes nothing more than a blur of your seemingly eternal attendance and the warm feel of her soft, inner flesh...";
		[
		else:
			say "<sane ending>";
		]


Salamander ends here.
