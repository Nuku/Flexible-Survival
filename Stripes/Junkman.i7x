Version 1 of Junkman by Stripes begins here.

"Adds a Junkman creature to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Creature Responses

when play begins:
	add { "Junkman" } to infections of guy;

to say junkmandesc:
	setmongender 3; [creature is male]
	choose row MonsterID from the Table of Random Critters;
	let qq be a random number between 4 and 8;
	let zz be ( a random number between 1 and 6 ) + ( a random number between 1 and 6 );
	if hardmode is true and level of Player > 6:		[Heavy Duty Model!]
		increase qq by level of Player - 7;
		now HP entry is ( ( ( 13 times qq ) divided by 2 ) + zz + a random number between 0 and qq );
		now monsterHP is HP entry;
		now wdam entry is 4 + ( qq / 3 );
		now lev entry is qq;
		now dex entry is 12 + ( qq / 6 ) + ( square root of qq + 5 ); [faster initial growth, but slows down more]
	else:								[Standard Model]
		now HP entry is ( ( ( 13 times qq ) divided by 2 ) plus zz );
		if HP entry > 60, now HP entry is 60;
		now monsterHP is HP entry;
		now wdam entry is qq;
		now lev entry is qq;
		now dex entry is ( qq + 10 + a random number between 0 and 2 );
	if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
		now libido entry is 50;
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
		now libido entry is 60;
	else:
		now sex entry is "Male";
		now libido entry is 40;
	say "     As you round a corner, you catch sight of a strange figure. Looking vaguely human, it has several chunks of junk that have grown from or fused with its body. There are metal pipes, plates of metal, unidentifiable chunks and other assorted bits to replace parts of his skin or body. There is a [one of]plastic guard[or]metal panel[or]steel plate[or]brass globe[at random] placed over his groin to protect his junk. Despite looking like a strange cyborg made of scrap, it moves quite organically. Spotting you, he releases a groan like grinding metal and charges to attack.";
	if hardmode is false and ( lev entry is 7 or lev entry is 8 ):
		say "     This particular junkman seems especially powerful and dangerous. Best be careful.";

to say losetojunkman:
	[reset creature stats for next encounter]
	choose row MonsterID from the Table of Random Critters;
	now lev entry is 6; [ reset level for random encounter availability ]
	say "     Victorious, the scrapyard cyborg raises its arms in the air and emits another grinding groan. After this cry, he grabs you and pushes you down across a [one of]stray car seat[or]old washer[or]rusty engine block[in random order] and moves in behind you.";
	say "     As you hear an odd whirring sound, you manage to glance back for a moment before you're pushed back down. You catch a glimpse of the panel over his groin folding up, uncovering his blessedly human dick made of pure flesh and blood. As he lines it up with your [if Player is female]wet pussy[else]tight pucker[end if], you [if HP of Player > 0]moan softly in anticipation[else]struggle a little in vain[end if] before he sinks it into you. You grip your improvised seat as he starts thrusting into you repeatedly, quickly making you grow excited and lustful. The feel of his seemingly human penis thrusting into you feels quite enjoyable, making your [if Player is female]pussy[else]asshole[end if] squeeze and tug at it as you long more and more for his hot seed in you.";
	say "     Thinking of his seed makes you notice that his balls feel strange against [if Player is male]yours[else]you[end if] as they bump into you with each thrust. Reaching back, you grab his sac to fondle him and find [one of]his balls have a plastic cover[or]it protected by what feels like a brass shell[or]it reinforced by several metal plates[or]some hard, rubber tubes leading into it[at random]. The creature atop you releases a grinding moan as you rub over his ballsack, clearly enjoying your touch despite their strange form. You can feel his balls start to throb warmly inside his odd scrotum and you are rewarded moments later by a steady stream of thick, oily cum. His slick seed pumps into you as some internal pump chugs away inside him, sending large amounts of his semen into you. Much of it flows up into your [if Player is female]waiting womb[else]sexy ass[end if] while the rest overflows around his cock to run down your thighs, with more gushing out as he withdraws and paints your ass with his last few spurts. Finished, he gives your sticky rear end a pat and wanders off.[impregchance]";

to say beatthejunkman:
	say "     You manage to drive off the junk creature, forcing it to flee back into the scrapyard.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Junkman"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The junkman bashes you with a fist covered in metal bits![or]The junkman kicks you with a heavy, metal foot![or]The scrapyard cyborg grabs you and tosses you roughly to the ground![or]The junk cyborg headbutts you with his metal-plated skull![at random]";
	now defeated entry is "[beatthejunkman]"; [ Text when monster loses. ]
	now victory entry is "[losetojunkman]"; [ Text when monster wins. ]
	now desc entry is "[junkmandesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "mostly human, but with a stainless steel panel across one side and under your chin. From the shape of it, you'd guess it belongs on some kind of kitchen appliance. You have three rows of mismatched bolts running over it, almost like a strange mohawk of metal";
	now body entry is "human, but with numerous pieces of scrap protruding from or replacing body parts. There are some metal and plastic vanes attached to your shoulders, various external wires and cords, the handle to an old iron at your hip and metal pipes which sounds hollow replacing your left forearm, to name just a few. Your hands are thankfully normal save for a few wires embedded in the skin, allowing you full use of them. One foot has been replaced with the lower half of an iron and seems to match the handle at your hip[if Player is male]. A quartet of brass tubes run across the surface of your skin and flex with it. These lead from a valve which has replaced your navel to your balls[end if][if Player is female]. A trio of pink, plastic tubes run from your sides, starting just above the hip and across the surface of your skin. These lead down to your groin and link into your cunt, which is wet and slick with the oily lubricant flowing into it constantly[end if]";
	now skin entry is "human skin covered in a mish-mash of metal and plastic plates, many of them old and dented. Random bits of junk protrude from your skin at odd places as well";
	now tail entry is "From the end of your spine there dangles an electrical cord ending in a standard plug, but somehow it is able to move on its own at times, twitching and swaying when your emotions run high.";
	now cock entry is "[one of]human[or]pink[or]human-like[at random]";
	now face change entry is "your ears ring with the sounds of clangs and bashes. Your head echoes with the whirring of power tools as it reshapes into a mostly human form. You can feel an off cool sensation as a stainless steel plate forms at your cheek and under your chin, an approximate fit at best. The whirring only gets worse as you can feel several hard protuberances growing out from the top of your head";
	now body change entry is "the sounds of banging on metal and plastic comes from it. These even feel like dull thumps across your body as your changes come sporadically. Your body becomes human in form, at its basic level, but several parts are replaced with assorted junk. Stray wires grow out from your skin, only to curl around and sink back in elsewhere. One of your feet grow hard and heavy, reforming into the lower half of an iron. It is difficult to focus on all the changes happening to you as your body becomes a strange cyborg made of junk[if Player is male]. Brass tubes form against your skin near your groin, attached at one end to your balls[end if][if Player is female]. Pink plastic tubes form against your skin near your groin, running to your cunt. You can feel your pussy grow wet as the clear, oily lubricant keeps you slick and ready for mating[end if]";
	now skin change entry is "your skin becomes smooth and human, lightly tanned. But before you can appreciate this change towards normalcy, the sensation of change intensifies in random locations as a mish-mash of metal and plastic plates start to appear. Many of these are old and dented and don't quite fit the spots they're replacing. Some protrude out too far while others flex and shift as you bend. Other small chunks of junk and scrap protrude almost at random from your";
	now ass change entry is "the base of your tailbone opens a small panel and an electrical cord snakes out";
	now cock change entry is "it throbs and pulses, reshaping into a thankfully human form. As the pleasure of transformation is coming to an end, you cum, spraying out a spurt of thick seed that is a little oily to the touch";
	now str entry is 14;
	now dex entry is 14;
	now sta entry is 14;
	now per entry is 14;
	now int entry is 14;
	now cha entry is 14;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 42; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Junkyard"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 8; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 5; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]mish-mashed[or]junk-riddled[or]haphazard[at random]";
	now type entry is "cyborg"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
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



when play ends:
	if bodyname of Player is "Junkman":
		if humanity of Player < 10:
			say "     Drawn back to the scrapyard by your corrupted instincts, you join the other junkmen in wandering around the piles of junk, satisfying your lusts on each other and others you find. Your people have little ambition or organization, only existing in the moment, enjoying short lives corrupting a handful of creatures and siring a few offspring before eventually breaking down and rejoining their scrapyard home.";
		else:
			say "     Your body is upsetting to several of the soldiers who find you during the rescue operation, but you are able to convince them that you are still sane. Taken from the outbreak city, you are scrutinized by several of the military scientists, intrigued by your haphazard cybernetics. They are unfortunately able to learn little from you, as what they discover about your anatomy makes no sense and they conclude that it is purely cosmetic.";
			say "     But you can sense that there is more to it and that somehow the junk is a part of you. You obtain old books on appliance repair and electronics from garage sales and study your odd body, spending several hours a week tinkering with yourself";
			if tailname of Player is "Junkman":
				say ". You discover early on that plugging yourself in feels very good and provides you with more energy. While you seem able to survive on just food or power, you operate at your best running on some of both. As an extra bonus, after a good, long charge, you are a randy lover with very long endurance, pleasing your partners greatly";
			say ".";
			say "     You open what panels you can and replace any frayed wires or corroded tubes you can find with replacements you scavenge from old appliances you collected during your yard sale hunting. While you can't really tell what most of these do, you do start to feel better over time as you make these repairs. While your new form is rather off-putting, you do manage to make some new friends and meet new lovers, who also seem pleased with your body's improved function. By keeping proper maintenance on yourself, you manage to live a long and pleasurable life, surviving several generations of other species. ";
			if Player is herm and "Sterile" is not listed in feats of Player:
				say "Over your long life, you give birth to and sire numerous offspring which are junk-cybernetic versions of their other parent. ";
			else if Player is male:
				say "Over your long life, you sire numerous offspring which are junk-cybernetic versions of their other parent. ";
			else:
				say "Over your long life, you give birth to numerous offspring which are junk-cybernetic versions of their other parent. ";
			say "You make sure to have as many children as you can with different lovers, ensuring there is a wide variety of them around add a little home-repair flair to their species.";

Junkman ends here.
