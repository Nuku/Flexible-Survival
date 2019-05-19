Version 1 of Albino Mouse by Stripes begins here.
[Version 1.1 - Hard Mode Variant added]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds Dr Mouse the Albino Mouse opponent to Flexible Survival's Monsters table"


Section 1 - Creature Responses

[ Use To say for overlong behaviors that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]

when play begins:
	add { "Albino Mouse" } to infections of furry;
	add { "Albino Mouse" } to infections of guy;
	add { "Albino Mouse" } to infections of Rodentlist;

to say drmouseattack:
	if hospfight is 1:
		say "[one of]Dr Mouse swings his fists in wild punches, managing a few glancing blows![or]The maddened mouse manages to bite your wrist with his sharp teeth.[or]The doctor starts tossing random glassware from his worktable at you![or]Dr Mouse shoves one of the stools into your path, causing you to stumble. He punches you in the jaw while you're off balance![or]The mad doctor manages to punch you in the groin with one of his wild punches. He's not very strong, but it still hurts![at random]";
	if hospfight is 2:
		say "[one of]The mouse monster punches your head with one of his bony fists, making the room spin for a moment![or]Dr Mouse's vicious claws slash across your body, opening bloody gashes![or]That twisted head manages to snap its fangorious jaws onto your shoulder![or]The transformed mouse jabs your arm with one of its horns as you try to swing at him. It stabs into your bicep and your blood flows down your arm![or]Dr Mouse grabs one of the wooden stools and proceeds to beat you with it, only stopping when it shatters against one of the worktables![or]The monstrous mouse hisses at you and releases a spray of stinging mist into your face, momentarily blinding you. As you try to stumble back while wiping your eyes, you get slammed by a powerful backhand and sent flying back several feet![or]Dr Mouse chuckles madly as he grabs your shoulder with one clawed hand and gets your arm in the other. He pulls and twists your arm, smiling as you scream in pain. Luckily, you manage to break free before he pulls it completely free of its socket, but your shoulder burns with pain![or]The monstrous creature charges, slamming his shoulder into you before sending you flying over one of the worktables![or]The transformed doctor clubs you several times with his powerful fists, laughing in mad delight as he does![at random]";

to say losetodrmouse:
	now fightstatus is 2;
	say "     Unable to continue fighting, you collapse to your knees. Dr Mouse chuckles and grabs a bottle from one of the tables. He splashes some of the liquid onto a cloth, then covers your mouth and nose with it. 'Does this smell like chloroform?' he asks with a mad titter. The room goes hazy and you pass out.";


to say beatdrmouse:
	now fightstatus is 1;
	if hospfight is 1:
		say "     Your blows leave the weak little mouse bruised and bloodied. He staggers and leans heavily against one of the work tables, panting for breath as he's no longer able to fight you.";
	if hospfight is 2:
		say "     Your final blow strikes and causes the monstrous creature to stumble back. He reaches for one of the stools to hurl at you, but you grab one and send it flying into his head first. He staggers back a few more steps, slips in a puddle and collapses at one side of the room.";


to say drmousedesc:
	choose row MonsterID from the Table of Random Critters;
	let debit be 0;
	setmongender 3;
	if hospfight is 1:
		say "     Dr Mouse, barely four feet tall, intends to fight you. With his white fur disheveled, his blood red eyes and sharp, rodent teeth, the albino lab mouse would be quite threatening were he not so small and weak. But the murine doctor snarls angrily and charges at you, tiny paws clenched into fists. You ready to strike, prepared to deal with the mad doctor once and for all.";
		if hardmode is true and level of Player > 4, let debit be level of Player - 4;
		now HP entry is 30 + ( debit * 2 );
		now monsterHP is 30 + ( debit * 2 );
		now wdam entry is 3 + ( debit / 8 );
		now lev entry is 4 + ( debit / 2 );
		now libido entry is 20;
		now str entry is 8;
		now dex entry is 12 + ( lev entry / 6 );
		now sta entry is 12;
		now scale entry is 1;
	if hospfight is 2:
		say "     The now monstrous mouse is attacking you. His altered body is huge, almost nine feet tall and bristling with sharp claws, teeth, horns and spikes. He has managed to give himself a powerful physique and seems to have retained his twisted mind. His hide is toughened, making it much harder to harm the mutated hybrid he's become.";
		let debit be 0;
		if hardmode is true and level of Player > 12, let debit be level of Player - 12;
		now HP entry is 150 + ( debit * 6 );
		now monsterHP is 150 + ( debit * 6 );
		now wdam entry is 10;
		if hardmode is true, now wdam entry is 12 + ( ( 2 * debit ) / 5 );
		now lev entry is 12 + debit;
		now libido entry is 100;
		now str entry is 20;
		now dex entry is 24 + ( ( debit + 2 ) / 5 );
		now sta entry is 20;
		now scale entry is 4;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Albino Mouse"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[drmouseattack]";
	now defeated entry is "[beatdrmouse]";
	now victory entry is "[losetodrmouse]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[drmousedesc]"; [ Description of the creature when you encounter it.]
	now face entry is "mouse-like head with large ears and cute whiskers on your muzzle"; [ Face description, format as "Your face is (your text)."]
	now body entry is "small and mouse-like, with pink paws for hands and feet"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "pure white fur over your"; [ skin Description, format as "your body is covered in (your text) skin."]
	now tail entry is "You have a long, murine tail."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "pink"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it deforms and reshapes itself into something more rodent-like. You gain large ears and whiskers around your muzzle. Your eyes turn a blood-red"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes that of an anthropomorphic mouse. At only about four feet tall, your stature matches your species. Your hands are replaced with pink paws with nimble digits"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "soft, white fur covers you"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "long, thin tail forms. It is rodent-like and has pale white fur covering it"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it turns a soft pink in color. It is nearly human in shape"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 8;
	now dex entry is 12;
	now sta entry is 12;
	now per entry is 16;
	now int entry is 24;
	now cha entry is 20;
	now sex entry is "Female";
	now HP entry is 30;
	now lev entry is 4; [ Level of the Monster, you get this much XP if you win, or this much XP halved if you loose ]
	now wdam entry is 3; [Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere"; [ Location of monster, in this case nowhere]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 3; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 12;
	now Cunt Tightness entry is 5;
	now libido entry is 20; [ Set to zero in this monster to control elsewhere ]
	now loot entry is ""; [ Dropped item. Key will be used later ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 1; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "slender"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender" Use [one of] to vary ]
	now type entry is "murine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
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


Albino Mouse ends here.
