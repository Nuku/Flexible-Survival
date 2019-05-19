Version 2 of Squid by Stripes begins here.
[Version 2.2 - Tweaked Anime Babe vulnerability]

[Adaptation of Squid Girl for Flexible Survival by Stripes]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Stripes. All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]

"Adds a female Squid creature to Flexible Survival."

Section 1 - Creature Responses

squidcolor is a number that varies.

when play begins:
	add { "Squid" } to infections of girl;
	add { "Squid" } to infections of tailweapon;

to say squiddesc:
	setmongender 4; [creature is female]
	if a random chance of 1 in 2 succeeds:
		say "     Rising from the waters is a female squid creature. Her sleek and smooth body, made for gliding through the water with ease, is covered in wet-looking yellow flesh. Her head is almost human, except for having an elongated crown and large, dark eyes. The squid girl's chest is a slightly lighter color than the rest of her body and has a pair of small, flat breasts. Her arms are long tentacles lined with rows of suckers and ending in pad-like hands. Her legs are a collection of tentacles, eight in number, that twist and roll as she moves around. Her ass is small and compact, barely disturbing the silhouette of her body. Beneath the shifting tentacles, you spot her wet pussy, quivering with need.";
	else:
		say "     You are suddenly accosted by what looks to be a strange squid-girl. Sleek and smooth in form, her streamlined build gives an almost fey appearance. Seemingly gliding towards you, she exposes her glistening yellow flesh. Head human-like, it is exaggerated by an elongated crown and large, dark eyes. Further informing you of her lithe body, the creature's chest is a slightly paler facet, adorned with a pair of small, flat breasts. Her arms long tentacle-like appendages, they are lined with rows of suckers and ending in pad-like hands. Pretty much everything below the waist is obscured by a writhing mass of tentacles, twisting and rolling as she moves to attack you, strangely determined in spite of her seemingly frail appearance.";
	if BodyName of Player is "Anime Babe":
		say "     Your anime girl body, particularly vulnerable to tentacle attack, has trouble resisting the squid's swaying tentacles. You moan and squeal in barely suppressed pleasure as those tentacles squirm around you, quickly draining your resistance.";
		decrease plfleebonus by 3;
		decrease pldodgebonus by 3;
		decrease plmindbonus by 3;
		now HP of Player is ( 2 * HP of Player ) / 3;
		now Libido of Player is ( 100 + Libido of Player + Libido of Player ) / 3;

to say losetosquid:
	if HP of Player > 0:
		say "     You stand down and throw your hands up in submission against the tentacled lady. Cautiously, she advances upon you, and once sufficiently satisfied with your compliance she starts to gently relinquish you of your attire before having her fun.";
	else:
		say "     Quickly moving, you find you're too weak to react before her suctioned tendrils grab hold of you and throw you to the ground, getting a faceful of sand. She then roughly exonerates your clothing from its beleaguered owner, its lewd intent made transparent to your vulnerable form.";
	if Player is male:
		say "     Partially engulfed in a writhing mass of tentacles, the girl descends her torso upon your crotch, the soft and affection caress of these appendages quickly influencing you into arousal, and though you cannot see past the mess of flesh you doubtlessly feel your [cock size desc of Player] rod engulfed in the folds of the slinky creature's tight cunt[if Cock Count of Player > 2]. In addition to the assault on your single organ, she's not one to let your additional equipment go neglected, and proceeds to let a couple tentacles attend to these tools, her proceeding kneads and strokes exasperated by the suctioned surface of such dexterous limbs[else if Cock Count of Player is 2]. In addition to the assault on your single organ, she's not one to let your second rod go neglected, and proceeds to let a tentacle wrap around its length, her proceeding kneads and strokes exasperated by the suctioned surface of such a dexterous limb[end if].";
	if Player is female:
		say "     [if Cunt Count of Player > 2]Subject to her tentacle's irreverent embrace, her deceptively gentle appearance exasperates the abrupt feeling of one of her appendages as it invades one of your exposed cunts, more tentacles invading your additional feminine holes one by one. The wriggling organ illustrates the creature's aptitude for pleasure as it attends to your inner confines with amazing precision[else if Cunt Count of Player is 2]Subject to her tentacle's irreverent embrace, her deceptively gentle appearance exasperates the abrupt feeling of one of her appendages as it invades one of your exposed cunts, followed by another in your second female passage. The wriggling organ illustrates the creature's aptitude for pleasure as it attends to your inner confines with amazing precision[else]Subject to her tentacle's irreverent embrace, her deceptively gentle appearance exasperates the abrupt feeling of one of her appendages as it invades your exposed cunt. The wriggling organ illustrates the creature's aptitude for pleasure as it attends to your inner confines with amazing precision[end if].";
	if Nipple Count of Player > 1 and Breast Size of Player > 0:
		say "[if Nipple Count of Player > 4]She bears down upon you, her suctioned 'hands' affectionately kneading your [breast size desc of Player] breasts, occasionally switching between the numerous sets. The audible noise of her suckers as they a pulled from your vulnerable flesh makes you twitch and jerk about, much to her amusement[else if Nipple Count of Player is 4]She bears down upon you, her suctioned 'hands' affectionately kneading your [breast size desc of Player] breasts, switching between the main set and the second on occasion. The audible noise of her suckers as they a pulled from your vulnerable flesh makes you twitch and jerk about, much to her amusement[else]She bears down upon you, her suctioned 'hands' affectionately kneading your [breast size desc of Player] breasts, the audible noise of her suckers as they a pulled from your vulnerable flesh making you twitch and jerk about, much to her amusement[end if][if scalevalue of Player > 3]. It's a little awkward for her to overpower a creature substantially larger than herself, but it's transparent that she enjoys the unique challenge of abusing such a sizeable beast[end if].";
	else:
		say "     She bears down upon you, her suctioned 'hands' affectionately kneading your [bodydesc of Player] chest, the audible noise of her suckers as they a pulled from your vulnerable flesh making you twitch and jerk about, much to her amusement[if scalevalue of Player > 3]. It's a little awkward for her to overpower a creature substantially larger than her, but it's transparent that she enjoys the unique challenge of abusing such a sizeable beast[end if].";
	if anallevel is 3:
		say "     Her pleasurable amusement certainly lacking in restraint, you're jolted with the immediate sensation of one of her numerous tendrils teasing at your exposed ass. The slick and smooth organ slowly worms its way into these confines, causing you to moan. She giggles merrily, your subsequent protests a source of mirthful amusement to the diminutive creature, her tentacle wriggling its way deeper into your bowels, forcing you to contend with its irreverent stimulation.";
	if Player is male:
		say "     With such extensive perversion imposed upon you, it's not long before you orgasm against the creature's ministrations, her own climax matching yours as your ejaculate into her hidden depths[if Cock Count of Player > 2]. Your additional organs aimed at you, they too explode against her tendril's affection, dousing you with your own fluids[else if Cock Count of Player is 2]. Your second organ aimed at you, it too explodes against her tendril's affection, dousing you with your own fluids[end if][if Cunt Count of Player > 1]. Further exacerbating your release, your abused cunts tighten against the small creature's intrusions[else if Player is female]. Further exacerbating your release, your abused cunt tightens against the small creature's intrusion[end if]. Satisfied, she slowly pries her limbs from your beleaguered form, departing with a merry giggle and a gentle kiss.";
	else if Player is female:
		say "     With such extensive perversion imposed upon you, it's not long before you orgasm against the creature's ministrations, [if Cunt Count of Player > 1]your abused cunts tightening against the small creature's intrusions[else if Player is female]your abused cunt tightening against the small creature's intrusion[end if]. Satisfied, she slowly pries her limbs from your beleaguered form, departing with a merry giggle and a gentle kiss.";
	else:
		say "     She watched you as you writhe against her perverse affections, very much amused by your protests as she arouses you, lacking any sexual outlet to sate her relentless assault. You're about to pass out from exhaustion before she finally relents, slowly prying her limbs from your beleaguered form, and departing with a merry giggle and a gentle kiss.";
	say "     'Come back soon,' she whispers to you, 'I'll be waiting,' before she descends back into the depths of the coast. Regardless of how you feel about the circumstances which unfurled before you, you have to admit that it's a little embarrassing to be covered in all these welts from the abuse of the squid girl's suckers.";


to say beatthesquid:
	say "     You strike the aquatic creature down, and - seeing this as a losing fight - she quickly tumbles back into the depths of the waters from whence she came, releasing a cloud of ink to hide her escape.";


to say squidskinchange:
	let tempnum be squidcolor;
	now squidcolor is a random number between 0 and 3;
	if squidcolor is tempnum, increase squidcolor by 1;
	if squidcolor is 4, now squidcolor is 0;
	say "a sensation like cold, rushing water flooding through your veins as your skin sheds away revealing slick smooth red flesh below. As you admire your new skin with wonder, it suddenly shifts to blue. Your surprise brings on a yellow hue. With a bit of practice, you settle on a color that suits you";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Squid";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The squid girl whips her tentacles at you, slapping you around with her numerous tentacles![or]The female cephalopod turns and squids ink at you, temporarily blinding you and letting her strike at you with her tentacles![or]The squid girl wraps her tentacles around you and squeezes, trying to crush the fight out of you![or]The squid's tentacle arms manage to latch onto you, pulling you into her embrace for a cold, wet kiss![or]The squid girls tentacles grab you, groping you all over![at random]";
	now defeated entry is "[beatthesquid]";
	now victory entry is "[losetosquid]";
	now desc entry is "[squiddesc]";
	now face entry is "almost human-like, except for the soft-fleshed, elongated crown and large dark eyes";
	now body entry is "sleek and smooth, made for gliding through the water with ease. Your chest is a slightly lighter color than the rest of your body. Your arms are long tentacles, lined with rows of suckers and ending in pad-like hands. Your legs are a collection of tentacles, eight in number, that twist and roll as you move around";
	now skin entry is "wet-looking [if squidcolor is 1]red[else if squidcolor is 2]blue[else if squidcolor is 3]yellow[else if squidcolor is 0]purple[end if]";
	now tail entry is "Your ass is small and compact, barely disturbing the silhouette of your body.";
	now cock entry is "bulb-headed tentacle";
	now face change entry is "your previous features seem to melt away as your face returns to your normal, human shape. Your elation (or disappointment) is soon interrupted as you feel a strange pull at the top of your head. Your skull lengthens and tapers to a gentle point of soft flesh. The world shimmers, like you're looking through a pool of water, as your eyes swell and grow. You look around and see the world in a new clarity";
	now body change entry is "your body swells and then suddenly contracts into a smooth streamlined shape. You feel a second and third heartbeat grow in your chest, your new hearts flooding your body with strength and energy. Arms! Like! Noodles! Your arms fall uselessly to your sides and your hands droop as your bones dissolve into your flesh. A trail of small suckers run down your floppy limbs and spread over your flat paddle-shaped hands. As your arms swell with fluid, you're slowly able to regain control. After a few fumbles, you're able to adapt to using them and being able to pick up items with ease, and maybe even play the piano. Your legs quiver, ripple, and give way as everything from your femurs on down are reabsorbed into your body. You collapse to the ground with a heavy thud and fight to stay calm as your each legs split into a quartet of tentacles that fuse into your hips. After a bit of stumbling and unceremonious flopping about, you're able to right yourself. Once you get the hang of it, it's not that bad";
	now skin change entry is "[squidskinchange]";
	now ass change entry is "your ass shrinks and tightens, almost disappearing into the natural contours of your body";
	now cock change entry is "your cock starts to wiggle and squirm almost like it has a mind of its own. A large tapered bulb grows at the end while your shaft gains a rough, ridged texture. It wiggles around, almost like it's waving hello. Not wanting to be rude, you wave back";
	now str entry is 12;
	now dex entry is 15;
	now sta entry is 12;
	now per entry is 15;
	now int entry is 16;
	now cha entry is 10;
	now sex entry is "Female"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 32; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 4; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 6; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Beach"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 1; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 8;
	now Cunt Tightness entry is 5;
	now libido entry is 33; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]soft[or]flexible[or]boneless[at random]";
	now type entry is "[one of]cephalopod[or]squid-like[at random]";
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
	if BodyName of Player is "Squid":
		if humanity of Player < 10:
			say "     With thoughts of the cool waters of the ocean, you head back to the beach area as your infection starts rewriting your mind. Discarding you pack, you slide your sleek body into the water and swim out to find the other squids. You join their underwater school, frolicking and fondling one another happily under the waves[if Player is male]. Having a cock, you are quite popular with the cute girls[end if].";
		else:
			say "     Being partially aquatic now, the military keep you in a special holding facility for those with aquatic transformations. There is some interest in you and the others and they get several marine biologists to study your group. Several members of the military speak to you as well. While several of the others are swayed and recruited by the military, you have little interests in their offers and are happy just to swim around and enjoy your sensitive, new form. You do make friends with one of the marine biologists though, and she helps you make contact to join a marine park's staff after your release. Given your extensive transformation, you are given work as part of the cleaning staff. Able to clean the tanks and scrub the walls from within while filled, that is your primary task. You don't mind though, as it lets you [']make friends['] with all the lovely whales and dolphins after hours.";

Squid ends here.
