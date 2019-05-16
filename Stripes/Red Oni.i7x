Version 2 of Red Oni by Stripes begins here.
[Version 2.2 - adapted for oni lair assault]

"Adds a Red Oni creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

when play begins:
	add { "Red Oni" } to infections of guy;
	add { "Red Oni" } to infections of hellspawn;

to say redonidesc:
	setmongender 3; [creature is male]
	if HP of Hayato is 99:
		now HP of Hayato is 100;
		say "     Before you is a hulking red creature not unlike the one you'd encountered before. Its face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs. Atop its head is a thick mane of scraggly black hair. The red oni wears only a crude [one of]tiger-skin[or]animal-skin[or]furry[or]leather[or]hide[at random] loincloth tied by a hemp rope that imperfectly covers its enlarged and stiffening manhood. Standing roughly ten feet tall and heavily muscled, the demon ogre carries a studded iron club nearly as tall as it. It has a snarling, menacing expression on its face as it glares at you and advances.";
	else if HP of Hayato is 16 or HP of Hayato is 17:
		increase HP of Hayato by 1;
		say "     Before you is a hulking red creature not unlike Hayato - another red oni. Its face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs. Atop its head is a thick mane of scraggly black hair. This oni wears only a crude [one of]tiger-skin[or]animal-skin[or]furry[or]leather[or]hide[at random] loincloth tied by a hemp rope that imperfectly covers its enlarged and stiffening manhood. Standing roughly ten feet tall and heavily muscled, the demon ogre carries a studded iron club nearly as tall as it. It has a snarling, menacing expression on its face as it glares at you and advances.";
	else:
		say "     Before you is another red-skinned oni. Its face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs. Atop its head is a thick mane of scraggly black hair. It wears only a crude [one of]tiger-skin[or]animal-skin[or]furry[or]leather[or]hide[at random] loincloth that imperfectly covers its enlarged and stiffening manhood. Standing roughly ten feet tall and heavily muscled, it carries a studded iron club nearly as tall as it. The red oni has a snarling, menacing expression on its face as it glares at you and advances.";


to say losetoredoni:
	if HP of Hayato is 97:		[doing Oni Lair challenges]
		say "     [if HP of Player > 0]You surrender to the oni, unwilling to continue fighting the powerful creature. Not simply accepting your surrender, the oni bashes you one last time with his club, knocking you to the ground hard[else]You are defeated by the powerful creature and knocked to the ground by its massive club[end if].";
	else:
		if Player is female and a random chance of 2 in 3 succeeds:
			say "     [if HP of Player > 0]You give up resisting and surrender to the oni, only to be struck by one last blow that leaves your ears ringing[else]You are grappled by the oni after its last blow leaves your ears ringing[end if]. Pushed to the ground beneath it, the creature spreads your legs wide and presses the dark glans of its crimson cock to your [cunt size desc of Player] pussy. With a growl, that pulsing pillar of meat is jammed into your cunt[if Cunt Depth of Player < 9], stuffing you painfully full with one harsh thrust[else if Cunt Depth of Player < 12], stretching your cunny a little to take the last few inches[else], jamming its full length into you with one harsh thrust[end if]. You cry out at the sudden intrusion, but [if HP of Player > 0]it is far too late to try to stop the monstrous ogre now, unable to do more than squirm weakly in the creature's powerful grip[else]are too weakened from the fight to do more than squirm weakly in the creature's powerful grip.";
			say "     Fucking you roughly, the demon ogre has no desire other than its own release. Responding to that thrusting pole within it, your vagina squeezes and tugs at the thrusting rod, trying to get the red giant to set up a better rhythm and to increase your own pleasure, but with minimal success. fueled by cruelty and lust, it callously disregards your needs in favor of its own. By the time the monster blasts its tainted seed inside you, you've gotten quite aroused, but aren't quite close enough for release, leaving you aching for more when it pulls out as soon as it's done. Your cunt [if Cunt Depth of Player < 12]aches and your cervix feels bruised[else]is aching and is messy with the creature's semen[end if], but your arousal leaves you frustrated and wanting to find some poor weak creature you can vent your lusts upon in a similar fashion.";
		else if a random chance of ( anallevel - 1 ) in 3 succeeds:
			say "     [if HP of Player > 0]You give up resisting and surrender to the oni, only to be struck by one last blow that leaves you dazed to the point that you almost pass out[else]Dazed by the oni's last blow, your head spins and you nearly pass out[end if]. As you start to regain your senses, you find yourself pinned beneath the large, red monster with the large, red monster between its legs pressed against your ass. Before you've recovered enough to do anything about this, you feel that pulsing pillar of meat jamming its way into your bowels, making your cry out at the sudden intrusion.";
			say "     Fucking you roughly, the demon ogre has no desire other than its own release. Trying to make the best of it, your bowels squeeze and tug at the thrusting rod, trying to get the red giant to set up a better rhythm and to increase your own pleasure, but with minimal success. fueled by cruelty and lust, it callously disregards your needs in favor of its own. By the time the monster blasts its tainted seed inside you, you've gotten quite aroused, but aren't quite close enough for release, leaving you aching for more when it pulls out as soon as it's done. Your ass aches and your prostate feels bruised from the rough treatment you've received, but your arousal leaves you frustrated and wanting to find some poor weak creature you can vent your lusts upon in a similar fashion.";
		else:
			say "     Sent tumbling by [if HP of Player > 0]a final blow from the oni[else]the oni's last blow[end if], your vision is blurry and you have trouble getting back up again. Getting onto your hands and knees has you inadvertently pressing your face against the oni's loincloth as it moves in to grab you. Your face is ground against that musky smelling fur, making you all the dizzier and aroused. When that cloth is pushed up by the demon ogre's red erection, you're forced to take it into your mouth.";
			say "     The creature grips your head tightly and pounds into your mouth. You try to lick and suck on it, but the monster's too rough and uncontrolled to let you give it a proper blow job. It treats your mouth like a cocksleeve instead of a cocksucker, just wanting to blast its load into you... which is what it does a few minutes later, nearly choking you with its sticky seed. The experience leaves your jaw and throat sore, but you're also aroused and unsatisfied. Your arousal leaves you frustrated and wanting to find some poor weak creature you can vent your lusts upon in a similar fashion.";
		if HP of Hayato is 16 or HP of Hayato is 17:
			now HP of Hayato is 18;
			say "     As you're recovering from its abusive lust, you remind yourself to inform Hayato about this new development.";
		increase Libido of Player by 15;
		if Libido of Player > 100, now Libido of Player is 100;


to say beattheredoni:
	if HP of Hayato is 97:		[doing Oni Lair challenges]
		say "     After a hard-fought battle, you defeat your oni foe.";
	else:
		say "     With your final blow, the demon ogre growls angrily and stumbles back several steps. It smashes its club heavily to the earth, cracking the ground with a mighty crash. '[one of]I shall have my vengeance[or]Your kind will suffer soon[or]I shall crush you next time, [if scalevalue of Player < 4]gnat[else]wretch[end if][or]My brothers shall avenge me[or]The Oni Lord will crush you and all your kind[at random],' he snarls before storming off.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Red Oni"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The [one of]red oni[or]demon ogre[or]red brute[or]muscular oni[at random] [one of]bashes you with its enormous club[or]strikes you with its spiked club[or]pounds you with a big fist[or]kicks you hard enough to knock you back a few feet[or]grabs you with one of its clawed hands and headbutts you[at random]!";
	now defeated entry is "[beattheredoni]";
	now victory entry is "[losetoredoni]";
	now desc entry is "[redonidesc]";
	now face entry is "quite frightening in appearance, having gained an exaggerated brow, yellow eyes and protruding fangs. Sticking straight up from your scraggly dark hair is a pair of horns, giving you the appearance of an oni from Japanese folklore";
	now body entry is "overall human-like, but grown to ten feet tall and heavily muscled. Your proportions are slightly off and your feet and hands have large, claw-like nails[if Player is redonicocked]. Around your waist, a dirty loincloth of tigerskin loosely covers your crotch[end if]";
	now skin entry is "[one of]bright red[or]blood-red[at random]";
	now tail entry is "";
	now cock entry is "[one of]meaty[or]veined[or]red[or]crimson[at random]";
	now face change entry is "your skull pounds angrily. As the changes overtake you, your brow enlarges and your jaw stretches into an angry snarl. Soon your nose swells and your chin protrudes even as your incisors grow into large fangs that stick past your lips. As the pounding fades, a pair of horns grow onto the top of your head";
	now body change entry is "your body shifts and changes, becoming larger than normal. You gain powerful muscles and a bit of a gut to go with it. Your hands and feet snap and grind as they become slightly misshapen and gain dark, clawed nails";
	now skin change entry is "a wash of red spreads across it. The red deepens until it's as rich and crimson as blood across your entire body";
	now ass change entry is "your glutes become firm and meaty";
	now cock change entry is "it becomes a deep red in color, darkening to near black at the glans. From your skin around your waist grows a tigerskin loincloth, somehow already dirty and frayed";
	now str entry is 22; [ These are now the creature's stats... ]
	now dex entry is 17; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 9;
	now cha entry is 6;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 95; [ The monster's starting HP. ]
	now lev entry is 12; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 13; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	now libido entry is 70; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]meaty[or]powerful[at random]";
	now type entry is "[one of]oni[or]demonic[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
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
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
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
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 3 - Definitions

Definition: a person is redonicocked:
	if cockname of Player is "Red Oni", yes;
	no;

Definition: a person is redonibodied:
	if bodyname of Player is "Red Oni", yes;
	no;


Section 4 - Endings

when play ends:
	if bodyname of Player is "Red Oni" and HP of Hayato is 96:
		say "     You and Hayato are added to the ranks of the Great Oni's clan. Your lusts for sex, destruction and flesh are almost all-encompassing. Like your brethren, you revel in performing any evil that amuses you. The oni of the clan often fight with one another, the victor claiming the other's body for sex. There is little animosity to this, it is all done for the fun of battle and of sex. As most of the clan aren't allowed to roam freely while the Great Oni marshals his forces, this allows you all to vent some steam and become stronger fighters. The Great Oni watches many of these matches from atop his throne of bones and hides while the latest slave prize his minions have brought him services the fearsome red giant.";
		say "     After much waiting, the Great Oni unleashes you all when the chaos in the city reaches its peak with the military cordon starting to collapse. The surprise onslaught of a horde of battle-eager, sex-hungry oni pouring out all at once causes huge devastation. Caught unawares, your clan rips through military and mutant forces alike, infecting many, but often just crushing your foes and moving on. When the oni rampage finally stops several days later, much of the city has become the domain of the Great Oni. Those defeated are either transformed, enslaved, killed or consumed. Others of your kind have spread out of the city to either become solitary oni or form clans of their own.";

[
when play ends:
	if bodyname of Player is "Red Oni":
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

Red Oni ends here.
