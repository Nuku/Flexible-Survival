Version 1 of Cum Girl by AGentlemanCalledB begins here.
[Version 1 - Basic monster, cum feeding/growth mechanic, temporary fission scene]

"Adds a Cum Girl creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

cumgirlfed is a number that varies. cumgirlfed is usually -1.

to say losetoCumGirl:
	let CGFC be 0;
	let CGFB be 0;
	let cumgrowth be cumgirlfed / 5;
	if cumgrowth > 10, now cumgrowth is 10;
	say "     Unable to resist the cum girl's attacks, you stumble back and fall to the ground. The cum girl strides over to your fallen form, quickly freeing your groin of any obstructions as she kneels before you.";
	if Player is male:
		if a random chance of 1 in 2 succeeds:
			say "     A smile creeps across her blank face as she strokes you to full erection before she sinks to the ground, her legs and lower torso melting into a shapeless mass as she leans forward, allowing her to bury your cock in her wet, slimy mouth. Her entire face undulates and pulses as her malleable flesh sucks and milks your member. You rapidly approach climax under her expert ministrations, your hands sinking into the back of her head as you try and grip her, causing her form to further deform into a pulsing mass of cum engulfing your groin. You climax powerfully, blowing your [Cum Load Size of Player] load into the shapeless mass as it continues milking you for all it can. Once you're finally spent, the creature pulls off your groin with a sickening slurp, reshaping itself into a feminine form once again. She licks her lips as she stands up, leaving your drained form without a second glance, wandering off in search of her next meal. As she leaves, you can't help but notice that her [one of]ass[or]bust[or]belly[or]form[at random] seems [if Ball Size of Player > 5]significantly [else if Ball Size of Player < 11]slightly [end if]larger thanks to your contribution.";
		else:
			say "     A faint smile creeps across her blank face as she strokes you to full erection, her hand beginning to lose definition as she strokes, soon nothing more than a pulsing tendril of cum milking your cock as her other hand begins engulfing your balls. Her face stares down at you, expressionless, as she continues to work your member and massage your balls, pushing you rapidly towards climax with her expert ministrations. With a groan you orgasm powerfully, blasting your [Cum Load Size of Player] load into the tendril milking your member. You watch the mass travel up her tendril-like arm and into the larger mass of her body as the licks her lips. Once you're finally spent, she pulls away from your groin, her hands returning to a mostly human shape as she stands up, leaving your drained form without a second glance, wandering off in search of her next meal. As she leaves, you can't help but notice that her [one of]ass seems[or]breasts seem[or]thighs seem[or]form seems[at random] [if Ball Size of Player > 5]significantly [else if Ball Size of Player < 11]slightly [end if]larger thanks to your contribution.";
		if Ball Size of Player > 5:
			increase CumGirlFed by 6;
		else:
			increase CumGirlFed by ( Ball Size of Player + 10 ) / 5;
		if "Modest Organs" is not listed in feats of Player and "Female Preferred" is not listed in feats of Player:
			if Cock Length of Player < ( 18 + cumgirlfed ):
				increase Cock Length of Player by a random number from 1 to 2;
				now CGFC is 1;
			if Ball Size of Player < ( 18 + cumgirlfed ):
				increase Ball Size of Player by 2;
				now CGFB is 1;
		Follow the cock descr rule;
		if CGFC is 1:
			say "     Your [if Cock Count of Player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random] [one of]engorges[or]swells[or]throbs[at random] as it gains[else][one of]cocks[or]penises[or]shafts[or]malenesses[at random] [one of]engorge[or]swell[or]throb[at random] as they gain[end if] in length, becoming [descr].";
		if CGFB is 1:
			say "     Your [one of]balls[or]orbs[or]cum factories[at random] [one of]tingle[or]churn audibly[or]throb[at random] as they grow larger, your flesh growing taught with the expansion, leaving you with [Ball Size Adjective of Player] [Balls].";
	else if Player is female:
		say "     A faint smile crosses the cum girl's usually expressionless face as she strokes a pair of fingers across your outer folds, sending shivers of delight through you. Without hesitation she slips a pair of fingers inside you, then a third, and soon her entire slick hand is pumping into your body. With each thrust her limb loses more and more definition, soon little more than a warm, gooey mass that continues to surge into your cunt, working its way deeper inside you until you feel her pooling in your womb.";
		say "     Eventually the stimulation from the warm, pulsating mass filling your body becomes too much and you are struck by a powerful orgasm. None of your feminine honey is allowed to escape, instead drawn into the mass of living cum filling your inner passages. The cum girl licks her lips contently as she pulls out of your body with a wet slurp. She stands up slowly before leaving your drained form without a second glance, wandering off in search of her next meal, the long, tendril-like appendage dragging behind her as it slowly shifts back to its original feminine form. As she leaves, you can't help but notice that her [one of]ass[or]bust[or]tummy[or]form[at random] seems slightly larger thanks to your contribution.";
		increase CumGirlFed by 2;
	else:
		say "     An expression of disappointment slowly creeps across the cum girl's usually emotionless face as she discovers your bare groin, and without a second glance she rises to her feet and sets off in search of a proper victim.";
	if cumgirlfed > 35: [Temporary fission scene, to be built as a pre-combat event in later versions.]
		WaitLineBreak;
		say "     You watch her take a few more steps before stumbling again and falling to the ground with an uncharacteristic moan. You observe with morbid fascination as the cum girl pants and groans, her shifting fluid form pulsating violently as she sinks to the ground, melting away into a large, shapeless mass.";
		say "     Suddenly a limb surges out of the gooey mass, rapidly taking on a human-like form as it pulls its way out of the sticky goop. Then another limb emerges, followed quickly by several more. Two distinct forms begin to take shape as the bodiless limbs work to drag themselves out of the mass from which they emerged. Soon you realize there are two smaller cum girls forming from the pile of bodily fluids. Pulling themselves apart with one final sickening slurp, the twin cum girls take a few moments to caress each other before they wander off in opposite directions with a parting kiss. While the prospect of more of the insatiable creatures wandering around down here is a troubling one, at least the giant cum creature you were facing a few short minutes ago is no longer a concern.";
		now cumgirlfed is 0;

to say beattheCumGirl:
	say "     With your final blow, the cum girl's mass begins to collapse into itself, sinking to the ground and forming a sticky white puddle. Deciding not to stick around and see what happens next, you quickly move on.";
	decrease cumgirlfed by 3;
	if cumgirlfed < 0, now cumgirlfed is 0;

to say CumGirldesc:
	setmongender 4;      [creature is female]
	choose row MonsterID from the Table of Random Critters;
	let cumgrowth be cumgirlfed / 5;
	if cumgrowth > 10, now cumgrowth is 10;
	let debit be 0;
	if hardmode is true:
		if level of Player > 4:
			let debit be level of Player - 4;
			now lev entry is level of Player;
	else:
		now lev entry is 4 + cumgrowth;
	now HP entry is 40 + ( debit * 4 );
	now wdam entry is 5 + ( ( debit + 1 ) / 3 );
	now dex entry is 12 + ( ( debit + 4 ) / 5 );
	if cumgrowth > 0:
		increase HP entry by ( 2 * cumgrowth * lev entry ) / 3;
		increase dex entry by cumgrowth;
		increase wdam entry by ( ( cumgrowth + 1 ) / 2 );
	now monsterHP is HP entry;
	say "     Before you is a creature that appears, at a glance, to be a pale-looking female human, but as she steps out of the shadows you quickly realize something is very wrong. Her entire form is slick and white, her flesh seeming to run slightly as she moves, as if reshaping itself with each motion. However, the most disturbing feature is the creature's face. While vaguely human in shape, it is almost mannequin like, devoid of any features other than her expressionless mouth and the flat, empty depressions where her eyes should be.";
	if cumgirlfed is -1:
		say "     The overwhelming smell of sex hits you as the creature gets within striking distance, and you realize this sickening creature appears to be made entirely of animate cum and other bodily fluids.";
		now cumgirlfed is 0;
	else if cumgrowth > 5:
		say "     Having fed off you many times, the disturbing creature before you is now frighteningly large, her large, slimy mass seeming to have trouble supporting itself as the hungry cum girl shuffles forward.";
	else if cumgrowth > 3:
		say "     Having fed off you several times before, the cum girl is now slightly larger than the first time you encountered her, with added bulk in her [one of]breast[or]thigh[at random]s and [one of]ass[or]belly[or]hips[at random] that jiggles enticingly as she moves forward.";
	else:
		say "     The overwhelming smell of sex hits you again as the cum girl steps forward, licking her lips slowly as she approaches.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Cum Girl" to infections of SlimeList;
	add "Cum Girl" to infections of FemaleList;
	add "Cum Girl" to infections of SlidingList;
	now Name entry is "Cum Girl"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The cum girl's arm quickly elongates as she strikes at you with a whip-like motion[or]The cum girl pulls you into a warm, sticky hug, planting several kisses on your face before you manage to push her away[or]The cum girl's arousing aroma of sex distracts you momentarily, allowing her to strike you quickly[or]The cum girl lashes out with both arms, quickly forming long gooey tendrils that wrap themselves around your legs, tripping you[at random]!"; [ Successful attack message ]
	now defeated entry is "[beattheCumGirl]"; [ Text when monster loses. Change 'Cum Girl' as above. ]
	now victory entry is "[losetoCumGirl]"; [ Text when monster wins. Change 'Cum Girl' as above. ]
	now desc entry is "[CumGirldesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "N/A - Non-infectious"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "N/A - Non-infectious"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "N/A - Non-infectious"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "N/A - Non-infectious"; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "N/A - Non-infectious"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "N/A - Non-infectious"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "N/A - Non-infectious"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "N/A - Non-infectious"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "N/A - Non-infectious"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "N/A - Non-infectious"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 12; [ These are now the creature's stats... ]
	now dex entry is 12; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "No change"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 24; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Sealed"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 4; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 12; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 8; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "erudite"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "conceptual"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
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
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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

[N/A - Non-Infectious!]
[
when play ends:
	if BodyName of Player is "Cum Girl":
		if humanity of Player < 10:
			say "     You succumb to your Cum Girl infection.";
		else:
			say "     You survive, but were infected by the Cum Girl.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Cum Girl ends here.
