Version 1 of Cat Ninjas by Stripes begins here.
[Version 1.2 - Added player loss oral]

"Adds cat ninjas as a creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

to say ninjadesc:
	setmongender 3; [creature is male]
	choose row MonsterID from the Table of Random Critters;
	let bonus be ( perception of Player + dexterity of Player - 20 ) divided by 2;
	let featbonus be 0;
	if "Experienced Scout" is listed in feats of Player, increase featbonus by 1;
	if "Stealthy" is listed in feats of Player, increase featbonus by 1;
	if "Wary Watcher" is listed in feats of Player, increase featbonus by 3;
	let dice be a random number from 1 to 20;
	say "You roll 1d20: [dice]+[bonus]+[featbonus] = [dice + bonus + featbonus][line break]";
	if dice + bonus + featbonus > 12 + ( ( dex entry - 10 ) / 2 ):
		if HP of Hayato is 12:	[in Noh Mask fights]
			say "     As the ninja feline spins to face you, you catch sight of a glint of metal in his paws moments before they're thrown. Dodging swiftly, you are able to evade the trio of flying shuriken. They embed themselves into the wall behind you. When you turn to face the feline, he's already upon you, having pulled an oriental weapon from his black outfit and swinging to strike.";
		else:
			say "     As you move down the halls of the museum, you hear a faint sound from behind you and turn around quickly. You are narrowly missed by a triad of flying shuriken that embed themselves into the floor beside you. There is a soft thump as an agile figure in concealing clothes drops to the floor on all fours. Slitted eyes stare out at you from behind the dark mask and pointed, feline ears are trained on you. The ninja feline releases a soft growl and charges, pulling out an oriental weapon and attacking you.";
	else:
		let dammy be 8;
		if HardMode is true, increase dammy by ( square root of lev entry );
		decrease HP of Player by dammy;
		increase Libido of Player by 10;
		if Libido of Player > 110, now Libido of Player is 110;
		if HP of Hayato is 12:	[in Noh Mask fights]
			say "     When the ninja feline spins to face you, his paw makes a fast motion. Before you can realize what is happening, you are struck by a trio of flying shuriken, taking [dammy] damage. The pain is quickly replaced by a warm rush of lustful excitement. Even as you're pulling the poisoned ninja stars from your chest, the black garbed cat is rushing you. He pulls an oriental weapon from his black outfit and swings to strike.";
		else:
			say "     As you move down the halls of the museum, you hear the soft whizz of something flying through the air too late, as a pain fills your back, causing [dammy] damage. This is quickly replaced by a warm rush of lustful excitement. You turn quickly to face your attacker as you reach back to pull the trio of poisoned shuriken from your back. There is a soft thump as an agile figure in concealing clothes drops to the floor on all fours. Slitted eyes stare out at you from behind the dark mask and pointed, feline ears are trained on you. The ninja feline releases a soft growl and charges, pulling out an oriental weapon and attacking you.";


to say losetoninja:
	if Player is female and a random chance of 3 in 4 succeeds:
		say "     The ninja grabs you by the arm as you stop fighting him. With a purring rumble, he presses you against one of the walls with one paw while the other gropes your rear. His paw moves the intervening clothes and grinds his stiff rod against your ass. You moan softly in pleasure as the feline slides his cock into your pussy slowly. As your excitement starts to build and you find yourself growing ever excited by the prospect of having this mysterious feline fuck you, his paws relax their grip and instead move across your body to tease your ass and breasts.";
		say "     You press your hands to the wall and push your hips back into each thrust the feline makes. It seems he's quite adept at the art of lovemaking as well as the art of ninjutsu. Your pussy quivers around his cock as he moves and thrusts to stimulate you to greater and greater heights while saving your orgasm for the highest point of all. As you come to the point that you're moaning and mewling beneath him for his seed, he pushes his cock deep inside you and unleashes a hot blast of feline cum. It is at this point that he stimulates you far past your peak, sending you into multiple orgasms that finally end with you stretched out on the floor with your thighs soaked in your own juices and feline cum leaking from your overfilled pussy[if Player is male]. In your powerful orgasm, you left a large splatter of cum on the wall. Your balls ache a little, but wonderfully so, from being so thoroughly drained[end if].[impregchance]";
		say "     As silently as he came, the feline ninja disappears back into the shadows and is gone.";
	else if Player is not female and a random chance of anallevel in 5 succeeds and anallevel > 1:
		say "     The ninja grabs you by the arm as you stop fighting him. With a purring rumble, he presses you against one of the walls with one paw while the other gropes your rear. His paw moves the intervening clothes and grinds his stiff rod against your ass. You groan softly as the feline probes his leaking cock into your tight asshole. As your sphincter relaxes to accommodate the feline's penis thrusting into you, you find yourself growing ever excited by the prospect of having this mysterious feline fuck you. His paws relax their grip and instead move across your body to tease across your body and fondle your maleness.";
		say "     You press your hands to the wall and push your hips back into each thrust the feline makes. It seems he's quite adept at the art of lovemaking as well as the art of ninjutsu. Your back passage quivers around his cock as he moves and thrusts to stimulate you to greater and greater heights while saving your orgasm for the highest point of all. As you come to the point that you're moaning and mewling beneath him for his seed, he pushes his cock deep inside you and unleashes a hot blast of feline cum. The press of his glans against your prostate as his semen blasts against it is when he chooses to stimulate you far past your peak, sending you into a powerful orgasm that splatters the wall with your seed. It finally ends with you stretched out on the floor with your balls drained and feline cum leaking from your overfilled ass.[impregchance]";
		say "     As silently as he came, the feline ninja disappears back into the shadows and is gone.";
	else if a random chance of 1 in 2 succeeds:
		say "     The ninja grabs you by the arm as you stop fighting him. With a quick motion, he pulls a cord from his robe and binds your wrists behind your back while pressing you against the wall. He gropes your ass with an excited purr before getting you on your knees, facing him. He slips his stiff member from his robes and presses it to your face. With little choice in the matter, you open your mouth and accept the feline's rod past your lips and over your tongue.";
		say "     You lick and suck at the mysterious cat's throbbing rod. Growing more excited as you pleasure the ninja, you become more enthusiastic in your efforts. Your lover of the moment remains largely silent save for his soft purring. When his climax arrives, he holds your head in place while spraying shot after shot of gooey semen onto your lapping tongue.";
		say "     Once spent, he slips behind you, releases the cord just as quickly as it went on and disappears back into the shadows as silently as he appeared.";
	else:
		say "     The ninja grabs you by the arm as you stop fighting him. He pulls you in close and blows across his palm, sending a cloud of dust into your face. Panting from the fight, you cannot help breathing in the dust and collapse to the floor. When you regain consciousness, the feline ninja is gone and your face is covered in a sticky mess of feline cum.";


to say beattheninja:
	say "     Your blow causes the ninja to stumble back. He hisses angrily at you and pulls something from his robes. When the smoke bomb goes off at his feet, you lunge forward to grab him before he can escape, but you find yourself clutching a wooden log. You toss it aside in frustration and continue on your way.";


to say ninjaattack:
[	choose row MonsterID from the Table of Random Critters;
	if a random chance of 3 in 10 succeeds:
		say "While making another acrobatic set of leaps and dodges, the ninja slips a shuriken from his robe and tosses it at you. The bladed star stabs into your [one of]shoulder[or]hip[or]side[or]thigh[or]leg[at random]. There is a stab of pain from the strike, followed from a warm heat that flows into you from the wound, causing a surge of lustful desires in you. As these thoughts momentarily distract you, the feline ninja moves in to make his attack.";
		increase Libido of Player by a random number between 2 and 5;
		if Libido of Player > 110, now Libido of Player is 110;
		let dammy be a random number between 2 and 3;
		if HardMode is true, increase dammy by ( square root of lev entry );
		decrease HP of Player by dammy;
		say "You take [dammy] damage from the ninja star.";]
	let T be a random number between 1 and 6;
	if T is 1:
		say "The feline ninja strikes at you with his antique weapon!";
	if T is 2:
		say "Growling menacingly, the feline rakes his claws across your chest!";
	if T is 3:
		say "With a whirl of his body, the shinobi strikes you with a kick to the side!";
	if T is 4:
		say "The cat swings at you with his weapon, but slips a dagger from his robes. The feint succeeds and you are struck in the [one of]thigh[or]arm[or]shoulder[or]side[or]hip[at random] by the small blade. The strike tingles with heat that causes your loins to stir with excitement!";
		increase Libido of Player by a random number between 2 and 5;
		if Libido of Player > 110, now Libido of Player is 110;
	if T is 5:
		say "The agile cat slips behind you and sinks his claws into your chest while grinding the hard bulge between his legs against your rear. His other paw gropes your groin, making you moan. When you shove him off, he rolls and grabs his dropped weapon, readying it again if you continue to resist him!";
	if T is 6:
		say "The ninja leaps from the various items on display and gets behind you. Even as you whirl to face him, his tabi boot strikes you in the side of the head!";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Ninja Cat" to infections of FelineList;
	add "Ninja Cat" to infections of FurryList;
	add "Ninja Cat" to infections of HistoricalList;
	add "Ninja Cat" to infections of NatureList;
	add "Ninja Cat" to infections of FemaleList;
	add "Ninja Cat" to infections of BarbedCockList;
	add "Ninja Cat" to infections of SheathedCockList;
	add "Ninja Cat" to infections of BipedalList;
	add "Ninja Cat" to infections of TailList;
	now Name entry is "Ninja Cat"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[ninjaattack]";
	now defeated entry is "[beattheninja]";
	now victory entry is "[losetoninja]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[ninjadesc]"; [ Description of the creature when you encounter it.]
	now face entry is "that of a normal cat, with a small muzzle, green eyes and pointed ears"; [ Face description, format as "Your face is (your text)."]
	now body entry is "slender and flexible, with a feline form. You have sharp, retractable claws on your paw-like hands and footpaws"; [ Body Description, format as "Your body is (your text)."]
	now skin entry is "orange tabby fur with brown stripes and lighter patches at your muzzle, chest and inner thighs. The fur is quite soft and feels good against your"; [ skin Description, format as "Looking at yourself, your body is covered in (your text) skin"]
	now tail entry is "You have a long, slender cat's tail covered in orange fur with brown stripes."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "softly barbed cock"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it shifts into a feline muzzle. Your ears become pointed and cat-like and your eyes become green with slit pupils for seeing in the dark"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes flexible and feline in form. Your arms end in dexterous paws with sharp, retractable claws and your feet are silent cat paws"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it grows a coat of tabby cat fur. This fur is orange in color, with lighter areas at your chest and muzzle with brown stripes all over"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a slender, feline tail with orange tabby markings extends from your spine"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it gains small, soft spines, but is otherwise quite human in form"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 18;
	now sta entry is 10;
	now per entry is 14;
	now int entry is 10;
	now cha entry is 12;
	now sex entry is "Female"; [ Starting target gender is Female]
	now HP entry is 25;
	now lev entry is 3; [ Level of the Monster, you get this much XP if you win, or this much XP halved if you loose ]
	now wdam entry is 6; [ Avg damage the monster does when attacking.]
	now area entry is "Museum"; [ Location of monster, in this case the Museum ]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 6; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 1; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 4; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 3; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex=male, usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 7;
	now Cunt Tightness entry is 3;
	now SeductionImmune entry is false;
	now libido entry is 30; [ Will raise the player's libido towards this amount]
	now loot entry is ""; [ Dropped item, if any ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]flexible[or]agile[as decreasingly likely outcomes]";
	now type entry is "feline"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "ninjastar"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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



Section 3 - Ninja Star Alt-Attack		[Pre-attack 30% of the time]

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"ninjastar"	retaliation rule	ninjastar rule	--	--	--	--	--	--	--	--

this is the ninjastar rule:
	if a random chance of 3 in 10 succeeds and inafight is 1:
		choose row MonsterID from the Table of Random Critters;
		now monsterhit is false;
		increase dex entry by 4;
		standardstrike;
		decrease dex entry by 4;
		if monsterhit is true:
			increase Libido of Player by a random number between 2 and 5;
			if Libido of Player > 110, now Libido of Player is 110;
			let dammy be a random number between 2 and 3;
			if HardMode is true, increase dammy by ( square root of lev entry );
			now damagein is dammy;
			say "[normalabsorbancy]";
			if absorb > dammy:
				now absorb is dammy;
			say "While making another acrobatic set of leaps and dodges, the ninja slips a shuriken from his robe and tosses it at you. The bladed star stabs into your [one of]shoulder[or]hip[or]side[or]thigh[or]leg[at random] for [special-style-2][dammy][roman type] damage[if absorb > 0]. Your defenses manage to prevent [special-style-1][absorb][roman type] HP of this damage[end if]. There is a stab of pain from the strike, followed from a warm heat that flows into you from the wound, causing a surge of lustful desires in you. As these thoughts momentarily distract you, the feline ninja moves in to make his attack.";
			decrease HP of Player by dammy;
			increase HP of Player by absorb;
		else:
			say "The [one of]feline ninja[or]cat ninja[or]ninja[as decreasingly likely outcomes] [one of]flicks a shuriken at you that narrowly misses[or]pulls a ninja star from his dark robes, but you manage to evade it[or]tries to hit you with a surprise shuriken strike, but you catch the motion of his hand and are ready to dodge[or]throws a ninja star he pulls from his robes, but misses[purely at random]!";


Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Ninja Cat Infection"	"Infection"	""	Ninja Cat Infection rule	1000	false

This is the Ninja Cat Infection rule:
	if Player has a body of "Ninja Cat":
		trigger ending "Ninja Cat Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			if Player is pure:
				if Breast Size of Player > 0:
					project the figure of NinjaCat_F_icon;
				else:
					project the figure of NinjaCat_M_icon;
			say "     Corrupted by the infection, your mind falters and fails, losing itself in dreams of feudal Japan. You are drawn back to the museum, cloaking yourself in some dark fabric you find along the way. There you silently wander the halls until a feline ninja drops from the ceiling right in front of you. Several others leap from the shadows and surround you.";
			say "     You and the other ninja begin to spar, trading blows and tricks while the others watch. Eventually the battle becomes less of a fight and more of a practiced routine of blows, blocks, gropes and grinds. The blows become fewer and the gropes become fondles until finally, without any signal, it ends. The group backs off and disappears into the shadows and you join them, following them back to their hidden lair.";
			say "     There, you join their ranks in a night of lustful passion with several of the agile felines in your new clan. You partake in the enjoyment of [if Player is herm]several of the males and a few of the rare females[else if Player is male]several of the rare females[else]several of the males[end if] in their midst. After rest and the food, the whole of the next day is spent in the company of the kachira, the ninja chief. She is a tan-colored female with green, passionate eyes and long, black hair. Her face is stern, but her paws are soft and able to bring so much pleasure. With her talent outstripping her many subordinates, your day is filled with such pleasures that you would follow her orders and face death for her without hesitation at any moment. For that is what it means to be ninja.";
			if Player is female and "Sterile" is not listed in feats of Player:
				say "     In time, you grow round with kittens and bear your young into the clan. They are raised to be ninja, protecting the museum from the shadows from any who would strike at it.";
		else:
			say "     When the military comes in, you manage to resist the urge to hide from them and instead allow yourself to be taken along with the others they rescue from the fallen city. You wait patiently for your inevitable release, though you do take to slipping into the shadows and exploring the base. You find several containment areas holding more exotic and powerful beings, but are careful not to get too close. You also locate the records room and make a few adjustments to them. The next day, the group you were being held with is cleared with no further processing. They, like yourself, aren't rendered non-infectious, though the records state their group was done the day before. You feel only the briefest concern over having done this, for they were all marked as low-risk species and infection levels.";
		if humanity of Player > 30:
			if Player is male:
				say "     While those in your group are still confused and wondering what to do next after being released and dropped off unprepared, you keep your eyes on one in particular. Among them is a woman with pure-white fur and cat ears whom you find very enticing. Leading her off, your skilled paws soon coax her into sex. As you make love to her with increasing passion, she is converted more fully into a graceful feline. She gains a cat's face and tail";
				if "One Pair" is not listed in feats of Player, say ", and a second pair of breasts,";
				say " to complete her conversion.";
				say "     As your lover and mate, she is wonderful and fills your nights with excitement. On the nights when you don't feel like wild sex, you both instead disappear into the night to beat up those who would prey on others within your territory. Your foes are dealt with swiftly and silently with a variety of ninjutsu tricks. And when you get home after a night's prowl, then you both are always in the mood for a wild, feline romp. Once she becomes too advanced in her pregnancy, she can't join you, but you're happy to know that in a few years you'll have your kittens joining you in your nightly excursions.";
			else:
				say "     While those in your group are still confused and wondering what to do next after being released and dropped off unprepared, you keep your eyes on one in particular. Among them is a man with black fur, a gray muzzle and a feline tail whom you find very handsome. Leading him off, your skilled paws soon have him hard and filling you. As you make love to him with increasing passion, he is converted more fully into a graceful feline. He gains feline ears and his black fur spreads down over the rest of his body, leaving only his muzzle gray.";
				say "     As your lover and mate, he is wonderful and fills your nights with excitement. On the nights when you don't feel like wild sex, you both instead disappear into the night to beat up those who would prey on others within your territory. Your foes are dealt with swiftly and silently with a variety of ninjutsu tricks. And when you get home after a night's prowl, then you both are always in the mood for a wild, feline romp.";
				if "Sterile" is not listed in feats of Player:
					say "     Once you become too advanced in your pregnancy, you can't join him out on the town, but you're happy to know that in a few years you'll have your kittens along for your nightly excursions.";
				else:
					if HermList is banned:
						say "     While on a patrol alone a few years later, you spot a feline cat burglar while on your own. Unable to leave such a cliché alone, you test your skill against him, stalking him for a short time before he notices. After a brief fight, you pounce the gray tabby and pin him down on the jewelry store floor. When your mate rejoins you, seeking you after you didn't make your usual rendezvous with him, you are already well on your way to converting the would-be thief into a sexy female ninja by your still-active nanites. Your mate smiles and mounts the gender-shifted male, filling her with his seed and breeding her. After a few nights of sex, she is made into a loyal member of your family and is kept at home to breed more ninja kittens to add to family.";
					else:
						say "     While on a patrol alone a few years later, you spot a feline cat burglar while on your own. Unable to leave such a cliché alone, you test your skill against him, stalking him for a short time before he notices. After a brief fight, you pounce the gray tabby and pin him down on the jewelry store floor. When your mate rejoins you, seeking you after you didn't make your usual rendezvous with him, you are already well on your way to converting the would-be thief into a sexy herm ninja by your still-active nanites. Your mate smiles and mounts the gender-shifted male, filling her with his seed and breeding her. After a few nights of sex, she is made into a loyal member of your family and is kept at home to breed more ninja kittens to add to family as well as for your own amusement.";
		else:
			say "     While those in your group are still confused and wondering what to do next after being released and dropped off unprepared, you take advantage of the situation and convince several of the felines and those with minimal infection to go off with you. With a few ninja tricks and skilled paws, you coax them one by one into being lovers, converting them into feline ninjas like yourself. The females are bred and filled with kittens while the males add to your growing forces. Soon you have a small clan of your own that lurks in the darkness, doing tasks for organizations willing to pay for your shadowy services.";



Cat Ninjas ends here.
