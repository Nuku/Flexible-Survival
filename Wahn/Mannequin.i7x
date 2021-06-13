Version 2 of Mannequin by Wahn begins here.
[Version 2 - Meeting Event folded into the monster description]

"Adds a Neuter Mannequin to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

to say mannequin wins:
	if inasituation is true:
		say "";
	else:
		say "     The living doll grips you tightly and a strange sensation washes over you, as if part of your being is drained away. Before your eyes, its features change, making it look a bit more like yourself. You take your chance while it's distracted with checking out its new body and run away.";

to say mannequin loses:
	if inasituation is true:
		say "";
	else:
		say "     The mannequin silently collapses at your feet. Even though it's thoroughly beaten, it still weakly reaches for you, its face showing a desperate expression. You quickly get some road between it and you before it stands up again.";

to say mannequinDesc:
	setmongender 0;
	if inasituation is true:
		say "";
	else:
		if "Mannequin" is not listed in EncounteredEnemies of Player: [first encounter]
			say "     Passing by a loading-dock in the warehouse district, you spot two humanoid dogs cutting a hole in the fence and slip through. Curious what the bulldog and German shepherd are doing in there, you inconspicuously follow them between the long rows and stacks of shipping containers. 'Which one did the coyote say the food was in?' the shepherd asks gruffly, to which the bulldog replies 'A red one, with Transglobal on the side.' Looking up and down the lines of containers, the shepherd wails 'But almost all of them are red!' The bulldog shrugs and walks over to the nearest container and opens it up. 'Oh hey, seventy flatsceen TVs - how... useless, without electricity. Let's check the next one.' The two of them open up several more containers, but find nothing of use in this post-apocalyptic city.";
			say "     'I'm beginning to think Diego sent us on a wild goose chase,' the shepherd growls. 'OK, OK... let's just open up this last one, then go back to the park and have some words with that coyote...' his buddy replies, then pulls open another container and yelps in surprise. 'Now that's freaky - for a moment I thought this container was full of people.' The German shepherd steps in front of the door and looks in too. 'Nah, those are just those dress dummies they use in stores. Normal lifeless puppets, see...' and pokes the first mannequin in the container in the chest - which promptly grabs him by the arm. Within moments, dozens of mannequins pour out of the container and wrestle both dogs to the ground. They jostle against each other with a desperate tenacity, each trying to touch one of their captives. Then you see them change, taking on characteristics of the dogs - one growing out a muzzle, another suddenly sprouting fur, with all of them jostling against each other, in a frantic way.";
			WaitLineBreak;
			say "     After the changes stabilize, all of the mannequins lose interest in their captives and start to disperse, each striking out on its own. Left behind on the ground are two more mannequins - those must be the two former dogs, their essence drained away. As they start to get up too, you decide it's time to leave and make your way back to the hole in the fence. One of the mannequins got there before you, though. It might have absorbed the knowledge of its location from the dogs, or just have been lucky. Now it turns to you, eager to make your shape its own.";
		else:
			say "     You cross paths with an animated mannequin which looks like an idealized male in his mid-twenties, with muscled arms, legs and chest and a featureless crotch. It has a pale flesh-colored skin-tone and a chiseled-looking face including sculpted wavy hair. As the mannequin notices you, an almost desperate, needful look crosses its face and it rushes at you.";
		if Stolen Lives is not resolved:
			now Stolen Lives is active;

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Mannequin";
	add "Mannequin" to infections of NonOrganicList;
	add "Mannequin" to infections of BipedalList;
	now Name entry is "Mannequin";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]It hits you in the head, strong enough to daze, but not hurt you.[or]It grabs your arm for a moment with a strong grip before you can pull away. That'll leave quite a bruise.[or]It grabs your leg for a moment with a strong grip before you can pull away. That'll leave quite a bruise.[at random]";
	now defeated entry is "[mannequin loses]";
	now victory entry is "[mannequin wins]";
	now desc entry is "[mannequinDesc]";
	now face entry is "smooth, with striking angular features like a statue";
	now body entry is "that of an idealized male, with washboard abs and muscled arms and legs";
	now skin entry is "pale and flawless"; [ format as "Your body is covered in (your text) skin"]
	now tail entry is ""; [ write a whole Sentence or leave blank. ]
	now cock entry is "human"; [ format as "You have a 'size' (your text) cock ]
	now face change entry is "it shapes itself into a chiseled male visage"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "your limbs are reshaped into a muscled male form and your chest takes an idealized shape with washboard abs"; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "all blemishes and hairs vanish, leaving you with flawless pale skin"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it takes the well-rounded shape of an idealized bubble butt"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your manhood becomes human-shaped and covered in pale skin"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 16;
	now dex entry is 22;
	now sta entry is 13;
	now per entry is 16;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Neuter";
	now HP entry is 75;
	now lev entry is 10;
	now wdam entry is 10;
	now area entry is "Warehouse";         [ Case sensitive]
	now Cock Count entry is 0;                  [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 0;
	now Ball Size entry is 0;             [ Size of balls ]
	now Nipple Count entry is 2;                [ Number of nipples. ]
	now Breast Size entry is 0;            [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;       [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;                  [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is true;
	now libido entry is 0;                [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "nullifying powder"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 35;            [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;                  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "idealized";      [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "human";             [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;         [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
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
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Mannequin Infection"	"Infection"	""	Mannequin Infection rule	1000	false

This is the Mannequin Infection rule:
	if Player has a body of "Mannequin":
		trigger ending "Mannequin Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     As you succumb to the infection, the feeling of being empty inside overwhelms you. Being a nondescript, almost faceless husk, without even a heartbeat or needing to breathe, desperation grips your mind. You hunger to be someone - anyone really, and start drifting aimlessly through the city, searching for others. The first few people and creatures you encounter run away or fight you off, but eventually you manage to overpower someone, wrestling them down. Hands tightly grasping your victim, you steal what makes them someone, makes them real. For a few fleeting moments, you feel hope as your skin ripples and shifts, taking on the lifelike guise of your captive while the poor soul you caught becomes more and more nondescript. By the end, you look alive, look real, yet as the drained shape of your victim stumbles away, the realization strikes that you are still empty, on the inside. All you did was pass this cursed existence to someone else, and your attempts to act naturally in your stolen shape fail again and again. Eventually, you give up completely, becoming numb to the world and acting the part of a mannequin. Just standing around, enduring your fate. Forever.";
			stop the action; [no other endings - player removed from the city]
		else:
			say "     Remaining in control of the urges to acquire the shapes of others and become them, you experiment a bit and perfect this ability by taking some parts of creatures you need, without leaving them completely drained. When the military finally moves in, you're taken to a holding facility, where doctors poke and prod you for days on end. Overhearing two doctors talk, you catch '...ites active and in constant flux. The subject wasn't exposed to a one-time change, but something else. That makes [if Player is male]him[else if Player is female]her[else]it[end if] far too dangerous to be released. I recommend perm...' Since you don't think you'd get out of there alive - if at all, you use the next chance you get with an orderly and overpower him to flee the facility after absorbing his shape. There's quite a bit of panic when people find the mindless mannequin this leaves behind, which instantly attacks the next person opening the door to the storeroom you locked it in. By the time the chaos is quelled and they realize that you're gone, it's far too late to stop you with roadblocks, as you have already gained a new identity, mixed and matched from people you encounter and partially drain. It's touch and go for a while, but you manage to avoid capture.";
			say "     A week later and several hundred miles distant, having switched shapes several times along the way, you're lying low in a small town. You think you're home free - until you walk into your motel room and find a man in a suit waiting for you. 'Quite impressive, your escape. You should not have left a trail of witnesses though - those you drained were quite noticeable, since you did not dispose of them.' A shrug follows, with him taking a drag from a cigarette, then blowing out the smoke. 'Guess you'll learn. We need people with abilities like yours...' Recognizing a deal you can't decline, you let yourself be recruited and end up a spy, traveling all over the world. Your ability to become anyone you want to be creates a rumor, then a legend of the super-spy 'The Chameleon'. Eventually movie-directors get a hold of the story and bring out an award-winning series of films about you. You make a game out of appearing as a minor role in every last one of them - never in the same shape twice though, draining criminals and pimps that no one will miss to go to auditions. Rumors abound years later, as fans spot that someone winks at the camera in a specific way, in every single movie.";

Section 4 - Item drop

Table of Game Objects (continued)
name	desc	weight	object
"nullifying powder"	"A small bag of strange, white powder. Your digits tingle when they touch it, but it's otherwise not infectious."	1	nullifying powder

nullifying powder is a grab object.
the scent of nullifying powder is "It has a very obvious, chalky scent about it.".
Usedesc of nullifying powder is "[nullpowderuse]";

to say nullpowderuse:
	say "     [one of]Upon inspection, it's not particularly infectious and most certainly inedible[or]You briefly inspect the powder[stopping]. You [one of]deduce[or]recall[stopping] that you can apply it to certain parts of your anatomy to reduce their size or remove them outright.";
	let Trixieexit be 0;
	while Trixieexit is 0:
		say "[bold type]Diminish Anatomy:[roman type][line break]";
		say "(1) [if Player is male][link]Cock[as]1[end link][else][italic type]Cock-specific interaction[roman type][end if][line break]";
		say "(2) [if Player is male][link]Balls[as]2[end link][else][italic type]Balls-specific interaction[roman type][end if][line break]";
		say "(3) [if Player is female][link]Cunt[as]3[end link][else][italic type]Cunt-specific interaction[roman type][end if][line break]";
		say "(4) [if Breast Size of Player > 0][link]Breasts[as]4[end link][else if Nipple Count of Player > 0][link]Nipples[as]4[end link][else][italic type]Chest-specific interaction[roman type][end if][line break]";
		LineBreak;
		say "(0) [link]Abort[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-4)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 4:
				break;
			else:
				say "Invalid entry.";
		if calcnumber is 1:
			if Player is not male:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else if Cock Count of Player is 1 and Cock Length of Player < 4 and ("Male Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Single Sexed" is listed in feats of Player):
				say "     At this point, the powder will have no effect on you.";
			else:
				if Cock Count of Player > 1 and Cock Length of Player > 3:
					say "     Is the goal to remove a spare cock? Otherwise, you'll reduce their size.";
					if Player consents:
						decrease Cock Count of Player by 1;
						follow the cock descr rule;
						say "     You apply the powder to a single rod. [if Cock Length of Player > 10]In spite of its size[else]After several applications[end if], it gradually diminishes into nothing, leaving you with [if Cock Count of Player is 1]one cock[else][Cock Count of Player] cocks[end if].";
					else:
						if Cock Length of Player > 29:
							decrease Cock Length of Player by 6;
						else if Cock Length of Player > 18:
							decrease Cock Length of Player by 4;
						else:
							decrease Cock Length of Player by 2;
						follow the cock descr rule;
						say "     You apply the powder to your rods. After a while, they shrink down to the point where they're now [cock size desc of Player] in size.";
				else if Cock Length of Player < 4:
					if Cock Count of Player > 1:
						say "     Given how small they are, you could probably remove ALL of them. Shall you? Otherwise, you'll only remove one.";
						if Player consents:
							if "Male Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Single Sexed" is listed in feats of Player:
								now Cock Count of Player is 1;
								follow the cock descr rule;
								say "     You apply the powder to all of your rods. All except one shrink down to nothing. [italic type]It seems that something prevents you from having less than one cock[roman type].";
							else:
								now Cock Count of Player is 0;
								follow the cock descr rule;
								say "     You apply the powder to all your rods. After a bit of work, they all shrink down to nothing. With no companion, your balls also disappear[if Player is internal], though it doesn't really make any visual difference[end if]";
						else:
							decrease Cock Count of Player by 1;
							follow the cock descr rule;
							say "     You apply the powder to a single rod. [if Cock Length of Player > 10]In spite of its size[else]After several applications[end if], it gradually diminishes into nothing, leaving you with [if Cock Count of Player is 1]one cock[else][Cock Count of Player] cocks[end if].";
					else:
						now Cock Count of Player is 0;
						follow the cock descr rule;
						say "     You apply the powder to your rod. After a bit of work, it shrinks down to nothing. With no companion, your balls also disappear[if Player is internal], though it doesn't really make any visual difference[end if]";
				else:
					if Cock Length of Player > 29:
						decrease Cock Length of Player by 6;
					else if Cock Length of Player > 18:
						decrease Cock Length of Player by 4;
					else:
						decrease Cock Length of Player by 2;
					follow the cock descr rule;
					say "     You apply the powder to your rod. After a while, it shrinks down to the point where it's now [cock size desc of Player] in size.";
				now Trixieexit is 1;
		else if calcnumber is 2:
			if Player is not male:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else if Ball Size of Player < 4:
				say "     At this point, the powder will have no effect on you. It seems you'll need to remove your cock[smn] or develop internal genitalia if you want to make them disappear.";
			else:
				if Ball Size of Player > 5:
					decrease Ball Size of Player by 3;
				else if Ball Size of Player > 4:
					decrease Ball Size of Player by 2;
				else:
					decrease Ball Size of Player by 1;
				follow the cock descr rule;
				say "     You apply the powder to [if Player is internal]where your sack might be[else]your sack[end if]. After a while, they[if Player is internal] seem to[end if] shrink down to the point where you[if Player is internal], presumably,[end if] have [Ball Size Adjective of Player] [Balls].";
			now Trixieexit is 1;
		else if calcnumber is 3:
			if Player is not female:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else if Cunt Count of Player is 1 and Cunt Depth of Player < 4 and Cunt Tightness of Player < 5 and ("Female Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Single Sexed" is listed in feats of Player):
				say "     At this point, the powder will have no effect on you.";
			else:
				if Cunt Count of Player > 1 and Cunt Depth of Player > 3:
					say "     Is the goal to remove a spare hole? Otherwise, you'll reduce the size of all of them.";
					if Player consents:
						decrease Cunt Count of Player by 1;
						follow the cunt descr rule;
						say "     You apply the powder to a single portal. [if Cunt Depth of Player > 10 or Cunt Tightness of Player > 10]In spite of its size[else]After several applications[end if], it gradually diminishes into nothing, leaving your with [if Cunt Count of Player is 1]one cunt[else][Cunt Count of Player] cunts[end if].";
					else:
						if Cunt Depth of Player > 29:
							decrease Cunt Depth of Player by 6;
						else if Cunt Depth of Player > 18:
							decrease Cunt Depth of Player by 4;
						else if Cunt Depth of Player > 3:
							decrease Cunt Depth of Player by 2;
						if Cunt Tightness of Player > 29:
							decrease Cunt Tightness of Player by 6;
						else if Cunt Tightness of Player > 18:
							decrease Cunt Tightness of Player by 4;
						else if Cunt Tightness of Player > 3:
							decrease Cunt Tightness of Player by 2;
						follow the cunt descr rule;
						say "     You apply the powder to your portals. After a while, they shrink down to the point where they're now [cunt size desc of Player] in size.";
				else if Cunt Depth of Player < 5 and Cunt Tightness of Player < 5:
					if Cunt Count of Player > 1:
						say "     Given how small they are, you could probably remove ALL of them. Shall you? Otherwise, you'll only remove one.";
						if Player consents:
							if "Female Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Single Sexed" is listed in feats of Player:
								now Cunt Count of Player is 1;
								follow the cunt descr rule;
								say "     You apply the powder to all of your portals. All except one shrink down to nothing. [italic type]It seems that something prevents you from having less than one cunt[roman type].";
							else:
								now Cunt Count of Player is 0;
								follow the cunt descr rule;
								say "     You apply the powder to all your portals. After a bit of work, they all shrink down to nothing.";
						else:
							decrease Cunt Count of Player by 1;
							follow the cunt descr rule;
							say "     You apply the powder to a single portal. [if Cunt Depth of Player > 10 or Cunt Tightness of Player > 10]In spite of its size[else]After several applications[end if], it gradually diminishes into nothing, leaving your with [if Cunt Count of Player is 1]one cunt[else][Cunt Count of Player] cunts[end if].";
					else:
						now Cunt Count of Player is 0;
						follow the cunt descr rule;
						say "     You apply the powder to your portal. After a bit of work, it shrinks down to nothing.";
				else:
					if Cunt Depth of Player > 18:
						decrease Cunt Depth of Player by 4;
					else if Cunt Depth of Player > 4:
						decrease Cunt Depth of Player by 2;
					if Cunt Tightness of Player > 18:
						decrease Cunt Tightness of Player by 4;
					else if Cunt Tightness of Player > 4:
						decrease Cunt Tightness of Player by 2;
					follow the cunt descr rule;
					say "     You apply the powder to your portal. After a while, it shrinks down to the point where it's now [cunt size desc of Player] in size.";
				now Trixieexit is 1;
		else if calcnumber is 4:
			if Breast Size of Player is 0 and Nipple Count of Player is 0:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else if Breast Size of Player > 0:
				if Nipple Count of Player > 2:
					say "     You have multiple pairs. Is your aim to remove a set, nipples and all? Otherwise you'll reduce the size of all of them.";
					if Player consents:
						decrease Nipple Count of Player by 2;
						follow the breast descr rule;
						say "     You apply the powder to a single rack. [if Breast Size of Player > 12]In spite of their size[else]After several applications[end if], it gradually diminishes into nothing, leaving you with [if Nipple Count of Player < 3]one set of knockers[else][Nipple Count of Player] sets of knockers[end if].";
					else:
						if Breast Size of Player > 29:
							decrease Breast Size of Player by 6;
						else if Breast Size of Player > 18:
							decrease Breast Size of Player by 4;
						else:
							decrease Breast Size of Player by 2;
						follow the breast descr rule;
						say "     You apply the powder to your racks. After a while, they shrink down to the point where they're now [breast size desc of Player] in size.";
				else if Breast Size of Player < 4:
					if Nipple Count of Player > 2:
						say "     Given how small they are, you could probably flatten ALL of them. Shall you? Otherwise, you'll remove one entirely, nipples and all.";
						if Player consents:
							now Breast Size of Player is 0;
							follow the breast descr rule;
							say "     You apply the powder to all your racks. After a bit of work, they all shrink down until they're completely flat.";
						else:
							decrease Nipple Count of Player by 2;
							follow the breast descr rule;
							say "     After a bit of work you manage to remove a set, leaving you with [if Nipple Count of Player < 3]a single pair[else][Nipple Count of Player] pairs[end if].";
					else:
						now Breast Size of Player is 0;
						follow the breast descr rule;
						say "     You apply the powder to your rack. After a bit of work, they shrinks down until they're completely flat.";
				else:
					if Breast Size of Player > 29:
						decrease Breast Size of Player by 6;
					else if Breast Size of Player > 18:
						decrease Breast Size of Player by 4;
					else:
						decrease Breast Size of Player by 2;
					follow the breast descr rule;
					say "     You apply the powder to your rack. After a while, it shrinks down to the point where it's now [breast size desc of Player] in size.";
				now Trixieexit is 1;
			else:
				if Nipple Count of Player > 2:
					say "     Your chest is completely flat. You could, however, remove your nipples. Shall you remove one set? Otherwise, you'll remove all of them.";
					if Player consents:
						decrease Nipple Count of Player by 2;
						say "     After a bit of work you manage to remove a set, leaving you with [if Nipple Count of Player < 3]a single pair[else][Nipple Count of Player] pairs[end if].";
					else:
						now Nipple Count of Player is 0;
						say "     After a bit of work you manage to remove all pairs of nipples, leaving your chest completely barren.";
				else:
					now Nipple Count of Player is 0;
					say "     Your chest is completely flat, so you decide to remove your nipples instead. After a bit of work you manage to remove the pair, leaving your chest completely barren.";
				now Trixieexit is 1;
		else:
			say "     You decide against using the item right now and stow it away.";
			now Trixieexit is 1;
			ItemGain nullifying powder by 1;

Section 5 - Events


Table of GameEventIDs (continued)
Object	Name
Stolen Lives	"Stolen Lives"

Stolen Lives is a situation.
Stolen Lives is inactive.
ResolveFunction of Stolen Lives is "[ResolveEvent Stolen Lives]".
Sarea of Stolen Lives is "Warehouse".

to say ResolveEvent Stolen Lives:
	say "     Wandering through the streets at the very edge of the warehouse district, you explore an area with long rows of smaller brick buildings instead of the massive metal warehouses further in. Looks like it's mostly small commercial enterprises and production places, judging by the fairly utilitarian signs some buildings bear. The whole area seems pretty empty, with few beings visible in the grid-patterned streets. Not too surprising, as it's far from any residential area, and few people would pick their workplace to weather the nanite apocalypse in. Some places look vandalized, one or two even burned out, but most of them are simply locked tight and abandoned. Doesn't even seem worth the effort to break in anywhere, as it's quite unlikely that you'd find anything of worth in these kinds of places. You glance up at the last building in the current row you're checking, seeing a sign that proclaims them to be the maker of custom car hubcaps. A few examples of various types are fanned out, high on the wall - shiny chrome, varied colors, even a bedazzled one.";
	say "     In short, this is [italic type]absolutely[roman type] what you need to survive in a city with aggressive infected roaming the streets. Blowing out your breath in disappointment over another bust, you decide to continue on into the next row, ducking into the alleyway next to the building. It's grimy and dark, complete with an overflowing dumpster whose aroma tells you it was filled and ready for collection, so you hurry, not wanting to spend much time here. That is when you hear a pain-filled scream from somewhere ahead, followed by the rapid clopping of hooves on pavement. A second later, the shape of a black anthro Clydesdale in full, desperate flight dashes past the open end of the alley, very closely followed by a chasing mannequin that is clawing for the horseman and trying to bring him down. They're out of sight in a heartbeat, but you can hear the hoof-clops falter suddenly, followed by sounds of a struggle.";
	LineBreak;
	say "     [bold type]What do you want to do?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Run after them at full speed to catch up!";
	say "     [link](2)[as]2[end link] - Hurry after them, but be cautious about it.";
	say "     [link](3)[as]3[end link] - Turn around and run. Don't get involved.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to join the fight, [link]2[end link] to watch what happens, or [link]3[end link] to leave.";
	if calcnumber is 1:
		LineBreak;
		say "     Sprinting as fast as you can, you reach the end of the alley quickly, barreling onto the other street and seeing what goes on there. About twenty feet away from you, two humanoid shapes are wrestling with one another. The left-hand one shouts, 'Get your hands off me, you freak! I'll stomp your head between my hoof and the pavement!' With that, he gut-punches the other one, without much effect though. You know there was a Clydesdale horseman and a mannequin, but seeing them as they are right now, you're having serious difficulty differentiating between the two. They seem to be in some sort of flux, both half-horseman, half-mannequin and the only article of clothing the horseman had, a pair of shorts, appears to have gotten ripped off in the fight, so that doesn't provide any help either. As you approach them, one of the two becomes more and more complete in equine shape, while the other melts into the vague shape of a mannequin, with even the shock and horror on his face losing definition as a neutral, mannequin-face takes shape on his head.";
		say "     Letting go of the empty husk, the newly formed [']horseman['] pats his new body, almost as if wanting to make sure it's all there, followed by some hesitant steps on unfamiliar hooves. Meanwhile, the mannequin stumbles around, seemingly shell-shocked about its new state. It looks at the one who took its shape, but seems to recognize that they are the same and there is no way back. Then its gaze falls upon you, and the creature rushes at you, to steal someone else's self to replace what it lost.";
		now inasituation is true;
		challenge "Mannequin";
		now inasituation is false;
		if fightoutcome < 20: [player won]
			say "     After beating down the mannequin, you realize that the [']horseman['] has just been standing a little distance away all this time, quietly observing with a neutral expression on his face. Feeling your attention rest upon itself, the anthro equine is startled into movement, raising one arm to... you don't know what exactly he wants to do. Seems like some mix of reaching for you, or waving, maybe part salute? You get the feeling that the horseman-shaped creature before you doesn't really know himself, and that maybe just gaining a shape doesn't fix something more fundamental that it is missing. What happens next only strengthens that impression, as the Clydesdale opens his muzzle to speak, with literally nothing coming out. Looking down in confusion, he touches his chest and feels around over it. Then realization strikes you: It isn't moving, not rising and falling in breathing, so this former mannequin wouldn't have air to talk with.";
			say "     Moving on to opening his mouth and hooking a finger inside, the [']horseman['] feels around to see if anything is wrong with it, then tries to speak again, with similarly underwhelming results. Something akin to panic flickers over his face, followed by throwing his head back in a hopeless scream - which also does not materialize. Seeing its attempts at being someone, or something, more than just an empty husk fail, the creature seems struck by utter despair. He shies away from you, almost appearing ashamed that you watched what happened, then whirls around and runs, fleeing as far as his hooves can carry him. Left behind in the street, you see the Clydesdale's ripped shorts lying on the ground a few feet away and walk over to check it out. Just a normal piece of clothing, but there's a piece of paper hanging out of the pocket. You pick it up, but before you can read it, there is a sound behind you.";
			WaitLineBreak;
			say "     Looking over your shoulder, you see the original horseman turned mannequin getting up, no doubt to doubt attack you again. Not interested in another round of fighting against the creature, you run away before it can reach you, making sure you've shaken the tail before you pause and look at the crumpled piece of paper in your grasp. It has a crudely drawn map with the warehouse district circled, and beneath that the words, 'Get me one of those mannequin things. I need it in prime condition, so DO NOT FUCK AROUND WITH IT! Delivery will get you half a pound of Bliss.' Interesting, seems like the horseman was kind of a bounty hunter, or slave catcher. Filing that fact away, you eventually circle back to where you started your exploration from.";
			now Resolution of Stolen Lives is 1; [saw the horseman's despair]
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "     The living doll grips you tightly and a strange sensation washes over you, as if part of your being is drained away. Before your eyes, its features change, making it look a bit more like yourself. You take your chance while it's distracted with checking out its new body and run away.";
			infect "Mannequin";
			now Resolution of Stolen Lives is 99; [fled, not watched]
		else if fightoutcome is 30: [fled]
			say "     Abandoning the fight, you run and do not stop until you are far away, with no sign of the mannequin behind you.";
			now Resolution of Stolen Lives is 99; [fled, not watched]
	else if calcnumber is 2:
		LineBreak;
		say "     Hastening your steps, you reach the end of the alley quickly, where you slow down and cautiously peek around the corner. About twenty feet away from you, two humanoid shapes are wrestling with one another. The left-hand one shouts, 'Get your hands off me, you freak! I'll stomp your head between my hoof and the pavement!' With that, he gut-punches the other one, without much effect though. You know there was a horseman and a mannequin, but seeing them right now, you're having serious difficulty differentiating between the two. They seem to be in some sort of flux, both half-horseman, half-mannequin and the only article of clothing the horseman had, a pair of shorts, appears to have gotten ripped off in the fight, so that doesn't provide any help either. As some more time progresses, one of the two becomes more and more complete in equine shape, while the other melts into the vague shape of a mannequin, with even the shock and horror on his face losing definition as a neutral, mannequin-face takes shape on his head. Letting go of the empty husk, the newly formed [']horseman['] pats his new body, almost as if wanting to make sure it is all there, followed by some hesitant steps on unfamiliar hooves.";
		say "     Meanwhile, the mannequin stumbles around, seemingly shell-shocked about its new state. It looks at the one who took its shape, but seems to recognize that they are the same and there is no way back, even if it could overwhelm the one who just beat it. Looking forlorn, the human-sized doll then stumbles off down the street, seeking someone it might steal a form from to replace what it lost. Before long, it has walked out of sight. Looking back to the [']horseman['], you see him standing still, completely motionless, then seemingly pushing himself to try something, walking a few steps and attempting to be less... stiff and puppet-like. The anthro equine raises one arm to... you don't know what exactly he wants to do. Seems like some mix of reaching for someone, or waving, maybe part salute? You get the feeling that the horseman-shaped creature before you doesn't really know himself, and that maybe just gaining a shape doesn't fix something more fundamental that it is missing.";
		WaitLineBreak;
		say "     What happens next only strengthens the impression of an unfinished, empty being, as the Clydesdale opens his muzzle to speak, with literally nothing coming out. Looking down in confusion, he touches his chest and feels around over it. Then realization strikes you: It isn't moving, not rising and falling in breathing, so this former mannequin wouldn't have air to talk with. Moving on to opening his mouth and hooking a finger inside, the [']horseman['] feels around to see if anything is wrong with it, then tries to speak again, with similarly underwhelming results. Something akin to panic flickers over his face, followed by throwing his head back in a hopeless scream - which also does not materialize. Seeing its attempts at being someone, or something, more than just an empty husk fail, the creature seems struck by utter despair. He looks around suddenly, as if frightened that anyone witnessed his failure, and catches sight of you.";
		say "     Shame is written large on the horseman-shaped creature's face as it then whirls around and runs, fleeing as far as his hooves can carry him. Left behind at the mouth of the alley, you wonder where the transformed mannequin will go, and how it will fare if it tries again. A few steps to the side, you see the Clydesdale's ripped shorts lying on the ground and walk over to check it out. Just a normal piece of clothing, but there's a piece of paper hanging out of the pocket. You pick it up, and see a crudely drawn map with the warehouse district circled, and beneath that the words, 'Get me one of those mannequin things. I need it in prime condition, so DO NOT FUCK AROUND WITH IT! Delivery will get you half a pound of Bliss.' Interesting, seems like the horseman was kind of a bounty hunter, or slave catcher. Filing that fact away, you eventually circle back to where you started your exploration from.";
		now Resolution of Stolen Lives is 1; [saw the horseman's despair]
	else if calcnumber is 3:
		LineBreak;
		say "     Making the decision not to get involved, you turn around and hurry back the way you came. You don't need this, right now. By the time you're at the front of the alley again, you don't hear noises from them anymore either, so whatever happened is most likely over. Still, you continue walking the other way for a while, eventually circling back to where you started your exploration from.";
		now Resolution of Stolen Lives is 99; [fled, not watched]
	now Stolen Lives is resolved;

[
Table of GameEventIDs (continued)
Object	Name
Lost Souls	"Lost Souls"

Lost Souls is a situation.
ResolveFunction of Lost Souls is "[ResolveEvent Lost Souls]".
Sarea of Lost Souls is "Warehouse".
Prereq1 of Lost Souls is Stolen Lives.
PrereqTime of Lost Souls is "Night".
The Prereq1Resolution of Lost Souls is { 1 }.

to say ResolveEvent Lost Souls:
	if Resolution of Lost Souls is not 98: [first encounter]
		say "     Exploring the warehouse district at night is really creepy, [if CityPowerOn is false]especially since there is no power [else]even with the few and far in-between light poles [end if]to illuminate the long, empty streets, and the bands of windows higher up on the buildings seem to stare down upon you like black, square eyes. [if CityPowerOn is false]Individual buildings don't seem to have gotten their power back either. [end if]The area you're in is further away from the waterline in the harbor than most, but even so, it's oddly empty. Usually there are at least some people and creatures around, even at night, but this place seems abandoned and deathly quiet. Maybe there's some reason that everyone avoids it, you wonder, only to suddenly hear a clattering thud, from somewhere ahead behind the warehouse to your right. Steeling your nerves, you slowly walk that way and glance around the corner, seeing that a side door of the warehouse is standing open a crack. Did a gust of wind make it swing and cause that noise? You sure didn't feel any up till now, but that might just be because you were in the shadow of the buildings.";
		say "     Waiting for a moment, watching the door, you see no indication of movement, making things appear safe enough to approach. Moving along the side of the building, you reach the door and pull it open slowly, doing your best to avoid making the rusty hinge creak too loudly. Then you peer inside the dark interior of the warehouse, seeing dozens of headless, impaled shapes lined up close by. Your heart skips a beat, followed by a rapid flutter as fight or flight instincts prepare to kick in, then... you blink, and recognize that you did not just find a charnel-house full of mutilated corpses. Those are a mannequins, headless ones, and without hands and feet, set on display poles! Peering into the further darkness beyond, you can see there are more, many more, and not just of this type. Judging by the size of the building, there could be thousands inside! [if CityPowerOn is true]You reach inside and try to flip the light switch next to the door, but nothing seems to happen. [end if][line break]";
		Mannequin_Warehouse_ChoicePoint;
	else: [returning once again]
		say "     You find your way back through the empty streets, arriving once more at the side door of that creepy mannequin warehouse you found before. Even knowing that what is waiting behind its side door are just display mannequins, you still have an ice-cold feeling running down your spine as you pull the door open with a creak and see the row of headless, impaled shapes bunched up beyond. Judging by the size of the building, there could be thousands of mannequins inside too!";
		Mannequin_Warehouse_ChoicePoint;

to Mannequin_Warehouse_ChoicePoint:
	LineBreak;
	say "     [bold type]Do you want to explore the warehouse?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Sure, you might find something interesting.";
	say "     [link](2)[as]2[end link] - Not right now. Maybe later.";
	say "     [link](3)[as]3[end link] - Nope. No. Definitively not! You're out of here";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to enter the building, [link]2[end link] to leave (for now), or [link]3[end link] to leave (for good).";
	if calcnumber is 1:
		LineBreak;
		say "     Of course you will explore a large warehouse filled with mannequins, in the middle of the night. With a snort, you roll your eyes at worrying about nothing. It's not like any of them will come alive and attack you, right!? Oh, wait... You shake your head to dispel the thought and just step inside, passing the first bunch of mannequins, standing in a closely packed bunch near the side door. Gazing at the next one beyond that, you jump as it seems to move its head, only to you realize you're staring at your own distorted face reflected back at you. This thing has a golden-metallic oval for a head, polished up to mirror shine! The arms are also mirrored and golden, fading to black plastic halfway up to the elbow. Creepy! The mannequin doesn't move as you step past it, into the midst of the hundreds of silent shapes standing throughout the part of the warehouse you can make out right now. Whoever sorted this place must have had an odd way of organization, as the humanoid dolls in here are sometimes standing in straight lines, others bunched up, and others again as singletons. Before coming here, you don't think you ever knew just how many different types of mannequins there are. So many different poses, materials, apparent ages, head shapes or absences thereof.";
		say "     Losing track of time a little bit as you explore, checking out the various mannequins that you encounter, you take in their poses, mentally cataloging the different design choices and rating them by how realistic they look. Somehow, concentrating on the individuals makes you feel a little bit better about being in this large, dark place, surrounded by thousands of these things. You even try out moving articulated arms if they have them, getting the relieved confirmation that they're inanimate objects. Exploring further, you weave in and out between the silent rows. Then suddenly, a realization strikes you and you freeze mid-motion. That over there, in the edge of your vision, that's not a mannequin, is it?! Slowly turning your head, you see that there is a slender anthro deer standing in the mass of puppets, unmoving and silent, wearing a tight white tank-top that seems almost painted onto his flat chest. He looks like a young buck, with somewhat unruly brown hair out of which two-pointed antlers stick up.";
		WaitLineBreak;
		say "     Stepping closer, you catch a glimpse of skinny jeans covering his digitigrade legs, and at the same time see that the deer is [italic type]completely[roman type] motionless. He isn't breathing, or blinking, just stands there on his slender hooves and looks neutrally into the distance. In fact, you've seen his exact pose and posture countless times during your exploration of the warehouse - standing man #4, by your own count of the various mannequin shapes. Driven by curiosity, you hesitantly reach out and touch the buck's upper arm, then brush your fingers up to the edge of the shirt on his chest, feeling soft fur and actual warmth to him, but no other signs of life. His eyes don't focus on you when you look into them, yet the anthro isn't stiff like the mannequins all around. His arms move when you pull on them, even hold a position, but there doesn't seem to be any will that drives the buck to do anything on his own. Experimenting some more, you take the deer by the hand and walk a few steps, finding him walking along silently as you look over your shoulder.";
		say "     Perhaps you let yourself get a bit too distracted by this odd being you found, because while still looking back the next thing that happens is that you bump into someone ahead of you. Someone tall, with firm muscle covered in short fur. Whipping your head around, you are shocked to see a horseman, and one you recognize. Standing amidst the mannequins in what you registered as herculean pose #2, one arm lifted and flexing, is a naked and impressively built Clydesdale. Remembering the last time you saw this being, you recall [']his['] original being hunted down by a mannequin, absorbing the shape and appearance of an anthro equine who was sent to capture it. Yet when the transformed mannequin then tried to act the part, be more than a hollow puppet, it failed spectacularly. As a newly formed horseman, it was unfamiliar to normal movements and apparently not even realized that he'd need to breathe to speak. Now he's standing here, motionless and posed, not reacting to being touched or spoken to any more than the young buck.";
		WaitLineBreak;
		say "     Looking over your shoulder, you see the deer standing just a step or two behind you, arm outstretched as it was when you were pulling him. Given their similarities, and just where you found these two, you are fairly certain that the deer is another mannequin that must have absorbed this shape. If you had to guess, they both likely tried to fit in and become their new selves, yet despaired after however many tries. Maybe they then gave up and returned to 'their people' in this warehouse? Or did someone bring them here? Arrange these two like this? Who would do this, and why? Whatever may be the truth, here they are now, as incredibly lifelike dolls with apparently no will of their own. Wondering if there might be more of these transformed mannequins, you glance around and let your gaze sweep over the mass of shapes. There are so many of them in the darkness, yet you don't spot anything but the plastic-y, wooden or metallic shapes of normal mannequins. Who knows, more might arrive or be brought here in the future and be found through a more thorough search. Best not to step away from your two current finds right now, as you might lose your way in the crowd and not find them again.";
		say "     Turning back to the deer and horseman, you contemplate what to do now. While doing so, are struck by the thought that the buck's skinny jeans seem a little [italic type]too[roman type] skinny in the crotch area. Stepping closer, you say more to yourself than him that you got to check for his wallet, maybe find out his name, and slip your hand into the tight pockets of the jeans. There is still no reaction from the buck, so you feel comfortable enough to go ahead and opening the jeans up at the front, allowing you to find out that this deer has one single part that is more doe than buck, as he has a pussy between his legs. Raising your eyebrows at that revelation, you zip him back up and push the lower edge of the tank top back down. While you're exploring, you find yourself pulling open his mouth, and look inside, seeing it perfectly realistic shape, down to a throat going down at the back, and having a moist, soft tongue. The thought of if they need to eat arises in you, and if these beings might just starve if they continue standing here all on their own. Finally, you gently pull down an eyelid, which stays as you place it, then push it up again.";
		say "     [bold type]On a whim, you give the two of them the names Bucky and Hercules, then prepare yourself to make a decision of your next step.[roman type][line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Grab Bucky's hand and bring him to the library";
		now sortorder entry is 1;
		now description entry is "He might learn to be a person, over time";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Pick Bucky to be a sex doll and take him to the library";
		now sortorder entry is 2;
		now description entry is "Grab the deer as a readily available fucktoy";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Grab Hercules's hand and bring him to the library";
		now sortorder entry is 1;
		now description entry is "He might learn to be a person, over time";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Pick Hercules to be a sex doll and take him to the library";
		now sortorder entry is 2;
		now description entry is "Grab the horseman as a readily available fucktoy";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Leave them both here";
		now sortorder entry is 5;
		now description entry is "It's where they belong";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if Player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is "Grab Bucky's hand and bring him to the library":
						say "[Bucky_Person]";
					else if nam is "Pick Bucky to be a sex doll and take him to the library":
						say "[Bucky_Toy]";
					else if nam is "Grab Hercules's hand and bring him to the library":
						say "[Hercules_Person]";
					else if nam is "Pick Hercules to be a sex doll and take him to the library":
						say "[Hercules_Toy]";
					else if nam is "Leave them both here":
						say "[Leaving Limbo]";
					wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;
		now Lost Souls is resolved;
	else if calcnumber is 2:
		LineBreak;
		say "     ";
		now Resolution of Lost Souls is 98;
	else: [leave]
		LineBreak;
		say "     This doesn't look like a place you want to be in, much less at night! You're out of here, now!";
		now Resolution of Lost Souls is 99;
		now Lost Souls is resolved;

to say Bucky_Person:
	say "...";
	if Alexandra is booked or Alexandra is bunkered:
		say "     <snarky comment about the player having odd projects - beating her down and taking her as their bitch, and having this one coddled>";
		TraitGain "Bucky - Seen him" for Alexandra;
		WaitBreakReactions;
	if Amy is booked or Amy is bunkered:
		say "     <initially scared, player says he'd like having her talk to Bucky>";
		TraitGain "Bucky - Seen him" for Amy;
		WaitBreakReactions;
	[--------------]
	if Brutus is booked or Brutus is bunkered:
		if DBCaptureQuestVar is 5: [controlled]
			[
			if "Master's Bite" is listed in Traits of demon brute:
				say "     <ask Luneth>";
			else
			]
			if Resolution of Demonic Redemption is 7: [somewhat pacified]
				say "     <should'a just make it rape-bait - let me have a turn, even the quietest ones start screaming at some point>";
			else: [standard hateful captive]
				say "     <should'a just make it rape-bait - let me have a turn, even the quietest ones start screaming at some point>";
			TraitGain "Bucky - Seen him" for Brutus;
		else if DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99: [cleansed]
			say "     <I can talk to him if you want me to? (socializing sessions)>";
			TraitGain "Bucky - Seen him" for Brutus;
		WaitBreakReactions;
	if Candy is booked or Candy is bunkered:
		say "     <got some experience from the hospital, would talk to him, maybe dress up>";
		TraitGain "Bucky - Seen him" for Candy;
		WaitBreakReactions;
	if Pink Raccoon is booked or Pink Raccoon is bunkered: [mindless Candy]
		say "     <paws at Bucky, has to be batted away>";
		TraitGain "Bucky - Seen him" for Candy;
		WaitBreakReactions;
	if Carl is booked or Carl is bunkered:
		if HP of Carl is 30: [beta carl]
			say "     <I'll watch over him for you>";
		else:
			say "     <reminds of Davies, would keep safe, come to sit and talk>";
		TraitGain "Bucky - Seen him" for Carl;
		WaitBreakReactions;
	if Chris is booked or Chris is bunkered: [TODO: add special stuff if they're brothers]
		if Libido of Chris is 0: [half-orc]
			say "     <would help chat>";
			TraitGain "Bucky - Seen him" for Chris;
		else if Libido of Chris is 1: [orc breeder]
			if "Breeder_Slut" is listed in Traits of Chris: [slut breeder]
				say "     <sad, would help out talk to him>";
				TraitGain "Bucky - Seen him" for Chris;
			else: [happy breeder]
				say "     <would help out talk to him, make him better, teach life as a big bro!>";
				TraitGain "Bucky - Seen him" for Chris;
		else if Libido of Chris is 2: [orc warrior]
			if "Bro" is listed in Traits of Chris or "Bro with Benefits" is listed in Traits of Chris or "Dad with Benefits" is listed in Traits of Chris:
				say "     <would help out talk to him, make him better, teach life as a big bro!>";
				TraitGain "Bucky - Seen him" for Chris;
			else: [dominant warrior Chris]
				say "     <not interested>";
				TraitGain "Bucky - Seen him" for Chris;
		WaitBreakReactions;
	if Colleen is booked or Colleen is bunkered:
		if SarahSlut < 2: [not transformed, or only a little]
			say "     <that poor little guy, creepy, but she gets herself to do it (talking)>";
			TraitGain "Bucky - Seen him" for Colleen;
		else if ColleenAlpha is 0:
			say "     <if you fail, can we fuck it?>";
		[
		else if ColleenAlpha > 0:
			say "..."; [TODO: write this]
		]
		WaitBreakReactions;
	if David is booked or David is bunkered:
		say "     <ready to help>";
		TraitGain "Bucky - Seen him" for David;
		WaitBreakReactions;
	if Denise is booked or Denise is bunkered:
		say "     <will sing to him>";
		TraitGain "Bucky - Seen him" for Denise;
		WaitBreakReactions;
	if (Elijah is booked or Elijah is bunkered) and HP of Elijah > 3:
		if HP of Elijah is 99: [evil] [TODO: add manipulation?]
			say "     <let's fuck it instead>";
			TraitGain "Bucky - Seen him" for Elijah;
		else: [good]
			say "     <will hang out and talk, god's work>";
			TraitGain "Bucky - Seen him" for Elijah;
		WaitBreakReactions;
	if Eric is booked or Eric is bunkered:
		if HP of Eric > 0 and HP of Eric < 21:
			say "     <talk to him, sharing>";
			TraitGain "Bucky - Seen him" for Eric;
		else if HP of Eric > 20 and HP of Eric < 50: [horsecock/satyrcock/orccock]
			say "     <talk to him>";
			TraitGain "Bucky - Seen him" for Eric;
		else if HP of Eric is 99:
			say "     <unburden himself to the doll, crying>";
			TraitGain "Bucky - Seen him" for Eric;
		WaitBreakReactions;
	if Fang is booked or Fang is bunkered:
		say "     <stick nose between the legs, dickhead sticking out of sheath, tail wags>";
		TraitGain "Bucky - Seen him" for Fang;
		WaitBreakReactions;
	if HP of Fiona > 4:
		say "     <tries to get reaction, claws, still no reaction, pissed>";
		TraitGain "Bucky - Seen him" for Fiona;
		WaitBreakReactions;
	if Gabriel is booked or Gabriel is bunkered:
		say "     <would care for, talk about obeying the master>";
		TraitGain "Bucky - Seen him" for Gabriel;
		WaitBreakReactions;
	if Hayato is booked or Hayato is bunkered:
		say "     <poor guy, I'll keep him company>";
		TraitGain "Bucky - Seen him" for Hayato;
		WaitBreakReactions;
	if Helen is booked or Helen is bunkered:
		say "     <comes up, sniffs crotch, licks, wags butt, barks, disappointed in no reaction>";
		TraitGain "Bucky - Seen him" for Helen;
		WaitBreakReactions;
	if Hobo is booked or Hobo is bunkered:
		say "     <comes up, sniffs, sits down as if to keep company>";
		TraitGain "Bucky - Seen him" for Hobo;
		WaitBreakReactions;
	if Honey is booked or Honey is bunkered:
		say "     <likes the fur - can I pet it? would talk to him, hopes he gets better>";
		TraitGain "Bucky - Seen him" for Honey;
		WaitBreakReactions;
	if Korvin is booked or Korvin is bunkered:
		if gsd_pet >= 20 and gsd_pet < 60:	[Subby Korvin]
			say "     <would talk, therapy session, would grope>";
			TraitGain "Bucky - Seen him" for Korvin;
		else:
			say "     <would talk, would say 'you can pay me back with a fuck if you get fixed through this' (jokingly)>";
			TraitGain "Bucky - Seen him" for Korvin;
		WaitBreakReactions;
	if Klauz is booked or Klauz is bunkered:
		say "     <rubs up, no reaction? confused>";
		TraitGain "Bucky - Seen him" for Klauz;
		WaitBreakReactions;
	if Malik is booked or Malik is bunkered:
		say "     <not his scene>";
		TraitGain "Bucky - Seen him" for Malik;
		WaitBreakReactions;
	if Nadia is booked or Nadia is bunkered:
		say "     <would care for him, bringing her kids to see him>";
		TraitGain "Bucky - Seen him" for Nadia;
		WaitBreakReactions;
	if Rane is booked or Rane is bunkered:
		say "     <a bit helpless, not really his scene>";
		TraitGain "Bucky - Seen him" for Rane;
		WaitBreakReactions;
	if Ryousei is booked or Ryousei is bunkered:
		say "     <centering the mind can help - recount some mention of victims of a nightmare monster>";
		TraitGain "Bucky - Seen him" for Ryousei;
		WaitBreakReactions;
	if Tehuantl is booked or Tehuantl is bunkered:
		if Tehuantl is male:
			say "     <must protect, would indoctrinate>";
			TraitGain "Bucky - Seen him" for Tehuantl;
		else:
			say "     <must protect, would indoctrinate>";
			TraitGain "Bucky - Seen him" for Tehuantl;
		WaitBreakReactions;
	if (Sarah is booked or Sarah is bunkered) and SarahCured > 3:
		say "     <she'd try therapy>";
		TraitGain "Bucky - Seen him" for Sarah;
		WaitBreakReactions;
	if Sven is booked or Sven is bunkered:
		if HP of Sven >= 30 and HP of Sven < 50:	[self-confident Sven]
			say "     <would talk to him>";
			TraitGain "Bucky - Seen him" for Sven;
		else if HP of Sven > 7 and HP of Sven < 11: [collared sex pet]
			say "     <would talk, would grope>";
			TraitGain "Bucky - Seen him" for Sven;
		else:
			say "     <would talk>";
			TraitGain "Bucky - Seen him" for Sven;
		WaitBreakReactions;
	if Urik is booked or Urik is bunkered:
		say "     <reminds him of a friend who had shrapnel in his head, will come and talk>";
		TraitGain "Bucky - Seen him" for Urik;
		WaitBreakReactions;
	if Xerxes is booked or Xerxes is bunkered:
		say "     <sniffs crotch, interested in humping>";
		WaitBreakReactions;
		TraitGain "Bucky - Seen him" for Xerxes;
	now IntroReactionCounter is 0; [reset]

to say Bucky_Toy:
	say "     Taking hold of the slender buck's hand, you guide him through the crowd of mannequins, making sure he doesn't bump against any of them on the way out. Stepping through the side door you came in through, back into the silent and empty streets of this part of the warehouse district, you then start along the route back to the Grey Abbey Library. This time of night, there's thankfully somewhat less creatures around, even in the more fully inhabited parts of the city, so you have little issue to bring your new fucktoy all the way home. When you eventually arrive, the question poses itself of where you want to place the anthro deer.";
	say "     ([link]Y[as]y[end link]) - Your bedroom, down in the bunker, for private use."; [TODO: add a potential 'reserved' sticker if he's moved out later]
	say "     ([link]N[as]n[end link]) - Why not put him in the back of the library, available for everyone.";
	if Player consents: [private use]
		LineBreak;
		say "     Deciding that this is [bold type]your[roman type] cuntboy buck sex toy, you guide him down the stairs and into the bunker, placing Bucky in a corner next to your bed.";
		move Bucky to Maintenance Storeroom;
		move Player to Maintenance Storeroom;
	else:
		LineBreak;
		move Bucky to Back of the Library;
		move Player to Back of the Library;
		say "     Deciding that a publicly available cuntboy sex doll might be a good idea, you guide Bucky towards the back of the library, placing him next to the sofa there. ";
	if (number of bunkered people + number of booked people > 2):
		say "After that, you announce publicly that Bucky is not actually a person, but just a really realistic cuntboy doll.";
	LineBreak;
	if Alexandra is booked or Alexandra is bunkered: [70/30]
		say "     Alexandra saunters closer, letting her gaze drift up and down over Bucky. 'Sure this isn't some poor twink that hit his head? Seems pretty fucking life-like to me.' With a snort, she then comments, 'You really are one kinky fucker, boss!' After that, the doberwoman walks away.";
		TraitGain "Bucky - Seen him" for Alexandra;
		WaitBreakReactions;
	if Amy is booked or Amy is bunkered:
		say "     Amy shily approaches the buck, then hesitantly says, 'Hello there.' As he doesn't reply, the young woman looks at you in slight confusion. 'Why isn't he saying anything?' You explain again that Bucky really isn't a person, and she can make use of him sexually if she wants, but the husky is already stepping back from him, looking skittish. 'I - didn't you say he's got no, you know, down there? I don't think I could do anything with him, or really want to. It's so eerie, that he just stares like that.' With that said, she retreats from the sex doll, glancing back at it a few times before moving out of sight.";
		TraitGain "Bucky - Seen him" for Amy;
		WaitBreakReactions;
	if Brutus is booked or Brutus is bunkered:
		if DBCaptureQuestVar is 5: [controlled]
			[
			if "Master's Bite" is listed in Traits of demon brute:
				say "     <ask Luneth>";
			else
			]
			if Resolution of Demonic Redemption is 7: [somewhat pacified]
				say "     Brutus steps up to Bucky, a broad grin filled with dangerous teeth on his face. 'Just a toy, eh master?' he grunts. Then the demon's hand suddenly shoots forward, grabbing the deer by one of the antlers and lifting him off the ground. He seems a little disappointed that there is no sign of struggle from Bucky, even as Brutus shakes him a bit. Grabbing Bucky's crotch, he seems ready to rip away the jeans right away, his cock throbbing in anticipation. 'I'm going to fuck the shit out of this thing!' he says in an amused tone. You hastily add that the cuntboy is supposed to stay in one piece, so while he can be used sexually, Brutus should take at least some care with him. You're not going to get a new one if he breaks Bucky. 'Mh - fine,' Brutus grunts and sets him back down, then walks off.";
			else: [standard hateful captive]
				say "     Brutus steps up to Bucky, a broad grin filled with dangerous teeth on his face. 'Just a toy, eh... master?' he grunts. Then the demon's hand suddenly shoots forward, grabbing the deer by the neck and lifting him off the ground. He seems disappointed that there is no sign of struggle from Bucky, even as claws start drawing some blood. Grabbing Bucky's crotch, he seems ready to rip away the jeans right away, his cock throbbing in anticipation. 'I'm going to rape the shit out of this thing!' he says in an amused tone. You hastily add that the cuntboy is supposed to stay in one piece, so while he can be used sexually, Brutus can't unleash his bloodlust on top of that. 'Ride a lamppost and die, you-' Brutus growls before you cut him off with a sharp gesture, then sets Bucky back down after you order it and walks off.";
			TraitGain "Bucky - Seen him" for Brutus;
		else if DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99: [cleansed]
			say "     Brutus steps up to Bucky, eyeing him up and down, then reaching out to grab an antler and bending his head back, using a clawed finger to open the anthro's mouth. Grinning, you remind him that Bucky also has a pussy for him to fuck as hard as he wants to. 'I want to ram my shaft hard into a sweet hole again!' the purple demon says with a smile full of needle-sharp teeth spreading over his face. Then he pauses and his expression falls a little, followed by the words, 'Might break him by accident though.' Brutus lets out a weary sigh, then shrugs, at which point you pat his arm in a comforting way. As one of the affected by the nanites, the little deer will surely be more resilient than Brutus thinks. And even if he gets a little stretched, that'll surely be back to being virgin tight in no time. Relieved from getting your okay to try Bucky, there is a visible throb of Brutus's dick. The enormous demon has a libido to match his size, after all. [if Libido of David > 56 and Libido of David < 99]'Could share him with David...' you hear Brutus say almost dreamily as he walks off afterwards. [end if][line break]";
			TraitGain "Bucky - Seen him" for Brutus;
		WaitBreakReactions;
	if Candy is booked or Candy is bunkered:
		say "     Candy saunters up to Bucky and looks the anthro deer up and down, then proclaims, 'Aww, what a cutie! Hmm... you said every one can use him, and he's effectively a big doll. Can I dress him up a bit? He'd look amazing with some hoof-polish, and... if I doll him up as a flat-chested girl, that might just serve to warm up some straight guys to play around with me too afterwards.' Chuckling, you nod to the raccoon, who walks off with an eager smirk on his muzzle.";
		TraitGain "Bucky - Seen him" for Candy;
		WaitBreakReactions;
	if Pink Raccoon is booked or Pink Raccoon is bunkered: [mindless Candy]
		say "     The pink raccoon comes up to Bucky and straight away starts to paw and touch his body. Seems like he took your invitation of free use literally and is ready to have a go, right now. Chuckling, you shoo him away, saying that he'll have plenty of time later. Might just be fun to get something going with both of your toys stacked on top of each other sometime.";
		TraitGain "Bucky - Seen him" for Candy;
		WaitBreakReactions;
	if Carl is booked or Carl is bunkered:
		if HP of Carl is 30: [beta carl]
			say "     Carl comes up to you, glancing aside at Bucky with interest but keeping most of his attention on yourself. 'Thank you for this fun toy, Alpha!' the husky soldier says happily, tail wagging behind his back. He brushes a hand over the deer's chest, feeling him through the tank top. 'Bit flat on top, but...' You can almost see the thoughts of what he wants to do with the sex doll in the broadness of his smile as he wanders off afterwards. You can hear him say to himself, 'Wonder if it'd work to knock him up...'";
		else:
			say "     Carl comes up to you, mostly staring straight ahead, but not quite managing his eyes from flicking aside at Bucky several times. 'A sex doll? I, uhm... I don't think I could, you know. He's cute and all, and having a pussy would give something familiar if I was with a guy, you know. But... I always thought just sexual deviants get something like th- err, oh, sorry - no offense meant!' You wave his worried expression away casually, then shrug and say he shouldn't discount something he hasn't tried so quickly. Carl raises his eyebrows, hesitates, then finally says, 'Uhm... I should get back to the observation post.' With that said, he walks off. You notice that he pauses for a second before moving completely out of sight, throwing a furtive glance at Bucky and slowly wagging the tail behind his back. Maybe the husky isn't quite as down on the sex doll as he says openly.";
		TraitGain "Bucky - Seen him" for Carl;
		WaitBreakReactions;
	if Chris is booked or Chris is bunkered: [TODO: add special stuff if they're brothers]
		if Libido of Chris is 0: [half-orc]
			say "     Chris strolls right up to Bucky, checking him out openly. '[if Thirst of Val is 2]Wow, dad! [end if]Looks like a fun toy. That's so neat!' the young orc says, then hooks a finger over the rim of the anthro deer's pants and pulling them forward over his crotch a bit, peeking down the gap between Bucky's fur and the jeans. 'And you say he's got an extra front hole to fuck? I wanna try that too!' Grinning eagerly, he gives you a [if Thirst of Val is 2]hug[else]fist-bump[end if], then wanders off. Seems like Chris is less set in his ways than the other orcs, even though he sees the ass as the first place to go sexually.";
			TraitGain "Bucky - Seen him" for Chris;
		else if Libido of Chris is 1: [orc breeder]
			if "Breeder_Slut" is listed in Traits of Chris: [slut breeder]
				say "     Chris saunters up to Bucky, checking him out with interest. Then he asks shily, 'So, [if Thirst of Val is 2]daddy, [end if]uhm... with this being a toy, could I - could I be on top? Be the one fucking his ass, you know. But... is it okay if I only use the back? Not sure about that front hole...' Chuckling and nodding, you make the young orc's day, but remind him that he needs to keep himself ready for [if Thirst of Val is 2]daddy [else]you [end if]  still. 'Of course!' Chris says with an obedient and eager nod, then walks off with a big smile on his face.";
				TraitGain "Bucky - Seen him" for Chris;
			else: [happy breeder]
				say "     Chris saunters up to Bucky, checking him out with interest and even touching the deer a little. '[if Thirst of Val is 2]Wow, daddy! [end if]He looks like he should be fun. And with him being a toy, I could be on top too, right?! Be the one fucking his ass! But... is it okay if I only use the back? Not sure about that front hole...' Chuckling and nodding, you make the young orc's day. Ruffling [if Thirst of Val is 2]your son's [else]his [end if] hair, you tell him to have fun and enjoy himself. Breeders can play around with being the dominant partner too, why not! Chris looks happy at your encouragement, walking off with a big smile on his face.";
				TraitGain "Bucky - Seen him" for Chris;
		else if Libido of Chris is 2: [orc warrior]
			if "Bro" is listed in Traits of Chris or "Bro with Benefits" is listed in Traits of Chris or "Dad with Benefits" is listed in Traits of Chris:
				say "     Chris struts up to the anthro deer, immediately sliding an arm around Bucky to feel his rear end and giving it a squeeze. '[if Thirst of Val is 2]Wow, pops! [end if]Oh yeah, this'll be fun! Nice toy you brought us here! Hope he's got a nice tight rear end! Gonna breed that thing so hard, hah! But, you know, I might be down for someone pounding the front hole as I do, eh?' Grinning eagerly, he gives you a [if Thirst of Val is 2]hug[else]fist-bump[end if], then wanders off.";
				TraitGain "Bucky - Seen him" for Chris;
			else: [dominant warrior Chris]
				say "     Chris struts up to the anthro deer, looking Bucky up and down, then giving him a shove in the chest, causing the anthro to stumble back before catching himself and keeping an awkward pose. Shaking your head, you pull Bucky straight again. '[if Thirst of Val is 2]Hmm pops, [else]Hmm,  [end if]I don't know. There's no fight in this thing, that's pretty boring. I'd rather grab a nice dude from the streets. Who needs a thing like this? Only a breeder playing pretend, I guess. [if Thirst of Val is 2 and Stamina of Chris > 0]I got my dad-slut for that[else]I want the real deal[end if]!' With a disinterested shrug, the orc warrior then wanders off.";
				TraitGain "Bucky - Seen him" for Chris;
		WaitBreakReactions;
	if Colleen is booked or Colleen is bunkered:
		if SarahSlut < 2: [not transformed, or only a little]
			say "     Keeping her distance as she stares at Bucky and shakes her head, Colleen then looks over to you. 'What the fuck? What's wrong with your priorities?! Everyone is fighting for their lives and you take the time to drag [italic type]that[bold type] through the city? You should've kept things in your pants, pretty much anything else could have been more useful!' Shaking her head in frustration, the soldier then turns around and walks away.";
			TraitGain "Bucky - Seen him" for Colleen;
		else if ColleenAlpha is 0:
			say "     Walking right up, Colleen looks at Bucky with her tail wagging behind her back. 'You brought us something new, boss? Awesome, looks like a neat toy!' True to the sexy dog she's become, the transformed soldier seems pretty eager to make use of the anthro deer. With a chuckle, you wave her off for now, saying that she'll have plenty of time later.";
		[
		else if ColleenAlpha > 0:
			say "..."; [TODO: write this]
		]
		WaitBreakReactions;
	if David is booked or David is bunkered:
		say "     Coming up, David looks Bucky up and down, then blushes when you smile at his interest. 'I - uhm, he looks to lifelike!' the young man says, reaching out to feel the fur on Bucky's arm. 'And you say he's got a pussy? Seems like an odd combination. Why wouldn't they have put boobs on there too? But anyways, I don't even know if I should, uhm... you know.' Smiling a little, you give an understanding nod, then add that there's no rush, Bucky will stay right here and be available. David takes a deep breath, letting his eyes wander a bit more again, then shakes himself out of it. 'Uh, I should go,' he says somewhat embarrassedly[if Libido of David > 56 and Libido of David < 99]. As he walks away afterwards, you hear him mumble to himself, 'Maybe together with Brutus...' [else]and walks away. [end if][line break]";
		TraitGain "Bucky - Seen him" for David;
		WaitBreakReactions;
	if Denise is booked or Denise is bunkered:
		say "     In a flutter of wings, Denise lands a little distance away, then approaches shily. 'He's cute!' she says with a smile, then looks at you somewhat hesitantly. 'And it's really no problem if I... try some things out with him?' She half-hides her face behind one of her wings, showing embarrassment clearly even though any blush will be hidden under her feathers. You smile and nod to her, which the gryphoness accepts happily. She lets her gaze drop to his crotch, then giggles, before jumping back in the air, gliding away on outstretched wings.";
		TraitGain "Bucky - Seen him" for Denise;
		WaitBreakReactions;
	if (Elijah is booked or Elijah is bunkered) and HP of Elijah > 3:
		if HP of Elijah is 99: [evil] [TODO: add manipulation?]
			say "     Elijah saunters up to Bucky, feeling his fur, then reaches up to open the anthro's mouth to slide two fingers inside. 'Not bad, I guess, for when I don't feel like hunting down someone out in the streets.' He then goes on to slide his hand down the front of Bucky's jeans, no doubt dipping a finger into his pussy. A moment later, the dark angel demonstratively licks his finger and raises his eyebrows at you. 'Had better, but it'll do,' he adds in an arrogant tone, then wanders off with a smirk on his face.";
			TraitGain "Bucky - Seen him" for Elijah;
		else: [good]
			say "     Elijah comes up to you, looking at Bucky only for a short moment then shaking his head. 'I don't think I could ever, uhm - you know what I want to say. Being intimate with someone is a special gift from our creator. Doing that with nothing but a puppet almost seems like throwing that back in his face.' Shaking his head, the angel wanders off.";
			TraitGain "Bucky - Seen him" for Elijah;
		WaitBreakReactions;
	if Eric is booked or Eric is bunkered:
		if HP of Eric > 0 and HP of Eric < 20:
			say "     Eric comes up to you and looks with interest at Bucky. 'So, is he really... like me, down there?' Chuckling, you nod to him, which prompts the young man to say, 'I - I think, uhm... would it be alright if I experimented a little with him?' As you tell him he's fine to do whatever, Eric beams at you in relief and anticipation, then makes his goodbyes and walks away.";
		else if HP of Eric is 20: [hoping for a cure]
			say "     Eric comes up to you and looks with interest at Bucky. 'So, is he really... like me, down there? Maybe we could test a 'cure' on him, or something?' Raising your eyebrows at that suggestion, you say that that'd be an option. At the same time, he could still have some fun with the sex doll until the time comes. Eric perks up a little, hope blossoming in him, then makes his goodbyes and walks away.";
		else if HP of Eric > 20 and HP of Eric < 30: [horsecock]
			say "     Eric comes up to you and looks with interest at Bucky. 'Wow, you really went all out in getting him, eh? Do you think he can take a full-on horsecock?' Chuckling, you tell him that the nanites should make the cuntboy buck quite stretchy, and able to bounce back from being hard-used. 'Guess I know what I'm looking forward to then!' the young athlete tells you, then wanders off after a friendly wave.";
		else if HP of Eric > 30 and HP of Eric < 40: [satyrcock]
			say "     Eric comes up to you and looks with interest at Bucky. 'Oh yeah! Got us an awesome party treat here! I can just imagine showing up at a place, guiding this sexpot by the hand. That should really get everyone going!' He's clearly enthusiastic about getting it on with the cuntboy. Slapping the side of your arm in a friendly way, the student then wanders off.";
		else if HP of Eric > 40 and HP of Eric < 50: [orccock]
			say "     Eric comes up to you and looks with interest at Bucky. 'Oh yeah! You know, the balls that I got together with this cock are kinda churning out cum all the time. It'll be nice to have your toy here available to drain some loads in every day!' He's clearly enthusiastic about getting it on with the cuntboy. Slapping the side of your arm in a friendly way, the student then wanders off.";
		else if HP of Eric is 99:
			say "     Eric keeps his distance, throwing looks with scrunched-together eyebrows at you and Bucky. There is disapproval in his gaze, but at the same time, you think you can make out almost grudging interest as he studies the anthro deer. Noticing your attention to him watching, the abused young man then steps out of sight to hide from you. His expression seemed somewhat conflicted, as if at the same time glad to see another here that might be used to keep your lusts sated, but also almost envious of being the one to be taken as he simply can't help himself but remembering the sensations of being fucked.";
		TraitGain "Bucky - Seen him" for Eric;
		WaitBreakReactions;
	if Fang is booked or Fang is bunkered:
		say "     Fang pads closer, then [if HP of Fang is 3 or HP of Fang is 4]lowers his chest and [end if]sticks his muzzle between Bucky's legs in a fairly straightforward way, sniffing him. A casual glance between the wolf's legs tells you he's getting hard, with the dickhead already emerging from his sheath. Still,  it seems like the wolf doesn't feel like mounting him right now, so he trots off soon after, tail wagging behind his back.";
		TraitGain "Bucky - Seen him" for Fang;
		WaitBreakReactions;
	if HP of Fiona > 4:
		say "     Sitting on the ground nearby, Fiona glances over at Bucky, then licks her paw and rubs it behind her ear. She seems fairly oblivious to the sex doll, as if he isn't worth looking at even.";
		TraitGain "Bucky - Seen him" for Fiona;
		WaitBreakReactions;
	if Gabriel is booked or Gabriel is bunkered:
		say "     Gabriel comes up to you and Bucky, looking the anthro deer up and down. 'I can train with this to serve you better, [master]!' the sexy angel you've tamed for yourself says in an eager tone. He's fully focused on being the best sex slave he can be, prompting you to give his ass a playful slap as you send him back to where he came from.";
		TraitGain "Bucky - Seen him" for Gabriel;
		WaitBreakReactions;
	if Hayato is booked or Hayato is bunkered:
		say "     Hayato walks up and comes to tower over Bucky, looking down at him with interest. He half raises a large red hand to touch the buck, then hesitates, 'Looks so very real. I - er, can he feel pain? I'm pretty big, and don't want to injure him, you know.' Chuckling, you pat the oni's arm and tell him that the nanites should make the cuntboy buck quite stretchy, and able to bounce back from being hard-used. Hayato looks at you with raised eyebrows, then says thoughtfully, 'I'd be nice to... let loose fully once in a while.' Then he makes his goodbyes and wanders off, stopping to glance back at Bucky before moving out of sight.";
		TraitGain "Bucky - Seen him" for Hayato;
		WaitBreakReactions;
	if Helen is booked or Helen is bunkered:
		say "     Helen rushes up to Bucky on all fours, barking and smiling at him. [if Lust of Helen > 3]'New friend?' she suddenly asks, and [else]She [end if]seems confused when there is no reaction, even as she barks again and uses a hand to pat the anthro's leg. Finally, she wanders off and lies down on the ground a little distance away.";
		TraitGain "Bucky - Seen him" for Helen;
		WaitBreakReactions;
	if Hobo is booked or Hobo is bunkered:
		say "     Hobo pads up to Bucky, sniffing him and looking up at the anthro deer. He gives a quiet whine that almost sounds like a question, then sits down on the ground right next to the buck, having decided that he needs someone to keep him company. You let the devoted dog stay there for a little while before shooing him away gently.";
		TraitGain "Bucky - Seen him" for Hobo;
		WaitBreakReactions;
	if Honey is booked or Honey is bunkered:
		say "     With the hum of her wings, Honey flies up and circles Bucky once before coming to a hover besides the anthro deer. 'Ooh, his fur looks so soft! Can I pet it?' Chuckling, you nod to her, and the small bee girl gleefully rubs her hands through Bucky's fur. 'I'll be back for more of that! Such lovely fur!' she says somewhat giggly and flies away.";
		TraitGain "Bucky - Seen him" for Honey;
		WaitBreakReactions;
	if Korvin is booked or Korvin is bunkered:
		if gsd_pet >= 20 and gsd_pet < 60:	[Subby Korvin]
			say "     Walking up, Korvin looks Bucky up and down with interest, grabbing his hip and giving it a little squeeze. 'It'll be awesome to pound something again!' the German shepherd says, seeming eager to feel a bit of his old, wild self again with the sex doll. He glances over at you, pausing to see what you make of his desire, and seems relieved when you give a generous nod. With his tail wagging behind his back, the anthro then walks off.";
			TraitGain "Bucky - Seen him" for Korvin;
		else:
			say "     Walking up with a swagger in his step, Korvin looks Bucky up and down. 'Nice toy you got us there,' he says with an eager grin, then grabs the anthro deer's chest and gives his flat pecs a squeeze. Too bad you didn't get one that's a bit more top-heavy, but as long as he's got a juicy pussy, I'm not gonna kick him out of bed, hah!' Grabbing his crotch and adjusting himself, the horny dog then walks off. Before he's fully out of earshot, you can hear him muse to himself, 'I wonder if these things can be knocked up...'";
			TraitGain "Bucky - Seen him" for Korvin;
		WaitBreakReactions;
	if Klauz is booked or Klauz is bunkered:
		say "     Klauz prowls closer and closer, circling Bucky two full times at a distance before finally making his move. He rubs his side against the anthro deer's legs and then waits, purring like an idling motor. When Bucky isn't drawn in to pet him, the felinoid tries again on the sex doll's other side, looking up expectantly. Something like confusion crosses his face, followed by the feline stalking away, tail making jerking movements as he is in a bit of a sulk.";
		TraitGain "Bucky - Seen him" for Klauz;
		WaitBreakReactions;
	if Malik is booked or Malik is bunkered:
		say "     Malik comes up to the anthro deer with swaggering steps, then looks Bucky up and down. 'Not much action to be had with this thing, eh? Any dude I drag in from the street is more fun, so I'll pass. [if Loyalty of Malik > 0]How about we go out and hunt some guy that's more fun, eh dad?' [else]Braindead toys are more your speed, I guess.' [end if] With that said, the orc warrior then wanders off.";
		TraitGain "Bucky - Seen him" for Malik;
		WaitBreakReactions;
	if Nadia is booked or Nadia is bunkered:
		say "     Nadia comes up and looks at Bucky, more out of curiosity than any actual interest. 'It's good of you to provide this relief, for those who need it. That'll allow people to take the edge off[if NadiaChickCounter > 0]. Just please keep it somewhat out of the way, not used just anywhere. I don't want my chicks to see it like that[end if].' With a smile, she then walks away.";
		TraitGain "Bucky - Seen him" for Nadia;
		WaitBreakReactions;
	if Rane is booked or Rane is bunkered:
		say "     Rane smirks as he strolls up and looks Bucky up and down. Then he reaches out and gives your shoulder a light punch. 'Kinky, kinky, bringing something like that here. Hope you have fun with... er, him.' Nodding to the deer, he shrugs. 'Can't say I'd go for it myself - I for one like the chase that real people provide, you know?'";
		TraitGain "Bucky - Seen him" for Rane;
		WaitBreakReactions;
	if Ryousei is booked or Ryousei is bunkered:
		say "     Ryousei walks up to Bucky, looking at the deer with a curious expression. Then he reaches out to grasp the buck's hand and pulls it up before letting go, watching it be held just where he moved it. With a slightly amused snort, the tiger pushes Bucky's arm back down. 'Your world does have odd customs. I would have preferred a geisha to this simple thing, but as the saying goes: [']When visiting an uwabami, drink the sake, or add to its flavor.['] You certainly provided a handsome poll for companionship.' With a little bow, the anthro feline then walks away.";
		TraitGain "Bucky - Seen him" for Ryousei;
		WaitBreakReactions;
	if Tehuantl is booked or Tehuantl is bunkered:
		if Tehuantl is male:
			say "     Tehuantl comes up to you, laying a hand on his chest and giving a deep nod to you. 'Thank you [master] for this gift. With an outlet for my libido, I will be able to focus more on tasks for you.' He gives Bucky a very interested look, letting out a purr before he walks off again.";
			TraitGain "Bucky - Seen him" for Tehuantl;
		else:
			say "     Tehuantl comes up to you, laying a hand on her chest and giving a deep nod to you. 'Thank you [master] for this gift. With an outlet for my libido, I will be able to focus more on tasks for you.' She gives Bucky a very interested look, letting out a purr before she walks off again.";
			TraitGain "Bucky - Seen him" for Tehuantl;
		WaitBreakReactions;
	if (Sarah is booked or Sarah is bunkered) and SarahCured > 3:
		say "     Sarah walks up to Bucky with a grim expression on her face, then takes the anthro's arm to feel for a pulse. After a moment, she nods to herself and takes out a little pen-light to shine in his eyes. 'This makes absolutely no sense! He isn't breathing, but has a pulse, and is standing despite having no response at all to my light! You can tell yourself what you want, but this must have been a person at some point! He needs help, not to be abused as a sex toy!' Throwing her hands in the air as you give a noncommittal shrug, the husky doctor then storms off.";
		TraitGain "Bucky - Seen him" for Sarah;
		WaitBreakReactions;
	if Sven is booked or Sven is bunkered:
		if HP of Sven >= 30 and HP of Sven < 50:	[self-confident Sven]
			say "     Sven walks up to Bucky, looking him up and down, then reaches out and touches the anthro deer's arm. 'Wow, he even feels real! Always thought a sex doll would be... hm, how do you say it. Forfalskning, you know. Uhm... ah! Fake, I mean! But this is neat! Thank you for putting him here.' The exchange student feels Bucky up for another moment or two, then pulls himself back and makes his goodbyes.";
		else if HP of Sven > 7 and HP of Sven < 11: [collared sex pet]
			say "     Sven shyly approaches Bucky, looking him up and down, then over to you as if to ask permission. As you smile and nod, he reaches out and touches the anthro deer's arm. 'Wow, he even feels real! Always thought a sex doll would be... hm, how do you say it. Forfalskning, you know. Uhm... ah! Fake, I mean! And I'd never have dared to get one. Thank you for putting him here.' The exchange student feels Bucky up for another moment or two, then pulls himself back and makes his goodbyes.";
		else:
			say "     Sven shyly approaches Bucky, looking him up and down, then reaches out and touches the anthro deer's arm. 'Wow, he even feels real! Always thought a sex doll would be... hm, how do you say it. Forfalskning, you know. Uhm... ah! Fake, I mean! But this is kinda neat. Thank you for putting him here, but still... I don't know if I - if I'd dare use him.' The exchange student pulls his hand back, then makes his goodbyes and wanders off. As he goes, you see him stop once or twice to throw the buck another glance or two.";
		TraitGain "Bucky - Seen him" for Sven;
		WaitBreakReactions;
	if Urik is booked or Urik is bunkered:
		say "     Urik walks up to Bucky, crossing his arms as he towers over the anthro deer and looks down at him. 'He's pretty, I can give you that. Not really my thing, though. I prefer guys to have a bit more fire in them. Ones that fight back, until they're nice and broken in.' With a shrug, he wanders off afterwards.";
		TraitGain "Bucky - Seen him" for Urik;
		WaitBreakReactions;
	if Xerxes is booked or Xerxes is bunkered:
		say "     Xerxes rushes up to Bucky on all fours, barking and smiling at him. [if Lust of Helen > 3]'New friend?' he suddenly asks, and [else]He [end if]seems confused when there is no reaction, even as he barks again and uses a hand to pat the anthro's leg. Finally, he wanders off and lies down on the ground a little distance away.";
		TraitGain "Bucky - Seen him" for Xerxes;
		WaitBreakReactions;
	now IntroReactionCounter is 0; [reset]


to say Hercules_Person:
	say "...";

to say Hercules_Toy:
	say "...";
	if Alexandra is booked or Alexandra is bunkered:
		say "     <interest>";
		TraitGain "Bucky - Seen him" for Alexandra;
		WaitBreakReactions;
	if Amy is booked or Amy is bunkered:
		say "     <scared, massive and muscular, not a person>";
		TraitGain "Bucky - Seen him" for Amy;
		WaitBreakReactions;
	[--------------]
	if Brutus is booked or Brutus is bunkered:
		if DBCaptureQuestVar is 5: [controlled]
			[
			if "Master's Bite" is listed in Traits of demon brute:
				say "     <ask Luneth>";
			else
			]
			if Resolution of Demonic Redemption is 7: [somewhat pacified]
				say "     <not a person? rules don't apply? player says not to break him completely>";
			else: [standard hateful captive]
				say "     <not a person? rules don't apply? player says not to break him completely>";
			TraitGain "Bucky - Seen him" for Brutus;
		else if DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99: [cleansed]
			say "     <relief without having to worry? if in relationship with David: alright to share?>";
			TraitGain "Bucky - Seen him" for Brutus;
		WaitBreakReactions;
	if Candy is booked or Candy is bunkered:
		say "     <ride him! can I play dressup too?>";
		TraitGain "Bucky - Seen him" for Candy;
		WaitBreakReactions;
	if Pink Raccoon is booked or Pink Raccoon is bunkered: [mindless Candy]
		say "     <paws at Bucky, seems ready to use him>";
		TraitGain "Bucky - Seen him" for Candy;
		WaitBreakReactions;
	if Carl is booked or Carl is bunkered:
		if HP of Carl is 30: [beta carl]
			say "     <fun toy, gift from the Alpha!>";
		else:
			say "     <I would never! secretly uses (fucks)>";
		TraitGain "Bucky - Seen him" for Carl;
		WaitBreakReactions;
	if Chris is booked or Chris is bunkered: [TODO: add special stuff if they're brothers]
		if Libido of Chris is 0: [half-orc]
			say "     <fun toy>";
			TraitGain "Bucky - Seen him" for Chris;
		else if Libido of Chris is 1: [orc breeder]
			if "Breeder_Slut" is listed in Traits of Chris: [slut breeder]
				say "     <fun toy - I can be on top with such a big guy?!>";
				TraitGain "Bucky - Seen him" for Chris;
			else: [happy breeder]
				say "     <fun toy - I can be on top with such a big guy?!>";
				TraitGain "Bucky - Seen him" for Chris;
		else if Libido of Chris is 2: [orc warrior]
			if "Bro" is listed in Traits of Chris or "Bro with Benefits" is listed in Traits of Chris or "Dad with Benefits" is listed in Traits of Chris:
				say "     <fun toy>";
				TraitGain "Bucky - Seen him" for Chris;
			else: [dominant warrior Chris]
				say "     <boring, doesn't struggle (at least he's big)>";
				TraitGain "Bucky - Seen him" for Chris;
		WaitBreakReactions;
	if Colleen is booked or Colleen is bunkered:
		if SarahSlut < 2: [not transformed, or only a little]
			say "     <wtf is wrong with you?! creepy!>";
			TraitGain "Bucky - Seen him" for Colleen;
		else if ColleenAlpha is 0:
			say "     <fun male toy!>";
		[
		else if ColleenAlpha > 0:
			say "..."; [TODO: write this]
		]
		WaitBreakReactions;
	if David is booked or David is bunkered:
		say "     <embarrassed, secretly uses - might think of using with Brutus>";
		TraitGain "Bucky - Seen him" for David;
		WaitBreakReactions;
	if Denise is booked or Denise is bunkered:
		say "     <too big and dangerous for her to want to use>";
		TraitGain "Bucky - Seen him" for Denise;
		WaitBreakReactions;
	if (Elijah is booked or Elijah is bunkered) and HP of Elijah > 3:
		if HP of Elijah is 99: [evil] [TODO: add manipulation?]
			say "     <pound it all day, casually, when he doesn't want to hunt, fun to bend a big guy without a fight>";
			TraitGain "Bucky - Seen him" for Elijah;
		else: [good]
			say "     <not interested, having sex must be special>";
			TraitGain "Bucky - Seen him" for Elijah;
		WaitBreakReactions;
	if Eric is booked or Eric is bunkered:
		if HP of Eric > 0 and HP of Eric < 21:
			say "     <loves big guys, shy about using him>";
			TraitGain "Bucky - Seen him" for Eric;
		else if HP of Eric > 20 and HP of Eric < 50: [horsecock/satyrcock/orccock]
			say "     <horse: yeah, horse toy fun! satyr: party on! orc: get some relief, love the bigness>";
			TraitGain "Bucky - Seen him" for Eric;
		else if HP of Eric is 99:
			say "     <scared, might use it secretly, stretch himself to be prepared for others>";
			TraitGain "Bucky - Seen him" for Eric;
		WaitBreakReactions;
	if Fang is booked or Fang is bunkered:
		say "     <stick nose between the legs, licks balls, dickhead sticking out of sheath, tail wags>";
		TraitGain "Bucky - Seen him" for Fang;
		WaitBreakReactions;
	if HP of Fiona > 4:
		say "     <tries to get reaction, claws, still no reaction, pissed>";
		TraitGain "Bucky - Seen him" for Fiona;
		WaitBreakReactions;
	if Gabriel is booked or Gabriel is bunkered:
		say "     <train with it>";
		TraitGain "Bucky - Seen him" for Gabriel;
		WaitBreakReactions;
	if Hayato is booked or Hayato is bunkered:
		say "     <confident he doesn't break it - happy to let loose>";
		TraitGain "Bucky - Seen him" for Hayato;
		WaitBreakReactions;
	if Helen is booked or Helen is bunkered:
		say "     <comes up, sniffs crotch, licks, wags butt, barks, disappointed in no reaction>";
		TraitGain "Bucky - Seen him" for Helen;
		WaitBreakReactions;
	if Hobo is booked or Hobo is bunkered:
		say "     <comes up, sniffs, sits down as if to keep company>";
		TraitGain "Bucky - Seen him" for Hobo;
		WaitBreakReactions;
	if Honey is booked or Honey is bunkered:
		say "     <likes the fur - can I pet it? and oooh, that dick is so big! feels balls and comments about shooting a lot>";
		TraitGain "Bucky - Seen him" for Honey;
		WaitBreakReactions;
	if Korvin is booked or Korvin is bunkered:
		if gsd_pet >= 20 and gsd_pet < 60:	[Subby Korvin]
			say "     <yay, I can pound something! can be on top of a big guy, like in the old times, or powerbottom>";
			TraitGain "Bucky - Seen him" for Korvin;
		else:
			say "     <nice toy>";
			TraitGain "Bucky - Seen him" for Korvin;
		WaitBreakReactions;
	if Klauz is booked or Klauz is bunkered:
		say "     <rubs up, no reaction? confused>";
		TraitGain "Bucky - Seen him" for Klauz;
		WaitBreakReactions;
	if Malik is booked or Malik is bunkered:
		say "     <wants to hunt instead, at least the player got a proper orc sized one, gets the sluts used to that>";
		TraitGain "Bucky - Seen him" for Malik;
		WaitBreakReactions;
	if Nadia is booked or Nadia is bunkered:
		say "     <likes a sex toy for everyone, wouldn't personally want to use>";
		TraitGain "Bucky - Seen him" for Nadia;
		WaitBreakReactions;
	if Rane is booked or Rane is bunkered:
		say "     <you kinky guy - I for one like the chase, you know?>";
		TraitGain "Bucky - Seen him" for Rane;
		WaitBreakReactions;
	if Ryousei is booked or Ryousei is bunkered:
		say "     <weird customs you have. but when in Rome, I guess...>";
		TraitGain "Bucky - Seen him" for Ryousei;
		WaitBreakReactions;
	if Tehuantl is booked or Tehuantl is bunkered:
		if Tehuantl is male:
			say "     <thank you master for this gift, this will allow me to focus more>";
			TraitGain "Bucky - Seen him" for Tehuantl;
		else:
			say "     <wants cock! yeah!>";
			TraitGain "Bucky - Seen him" for Tehuantl;
		WaitBreakReactions;
	if (Sarah is booked or Sarah is bunkered) and SarahCured > 3:
		say "     <horrified - this must have been a person!>";
		TraitGain "Bucky - Seen him" for Sarah;
		WaitBreakReactions;
	if Sven is booked or Sven is bunkered:
		if HP of Sven >= 30 and HP of Sven < 50:	[self-confident Sven]
			say "     <neat toy, cool!>";
			TraitGain "Bucky - Seen him" for Sven;
		else if HP of Sven > 7 and HP of Sven < 11: [collared sex pet]
			say "     <soo big! shyly open to use it>";
			TraitGain "Bucky - Seen him" for Sven;
		else:
			say "     <I wouldn't do that, later secretly plays around>";
			TraitGain "Bucky - Seen him" for Sven;
		WaitBreakReactions;
	if Urik is booked or Urik is bunkered:
		say "     <how boring, no hunt - excited if he can breed it>";
		TraitGain "Bucky - Seen him" for Urik;
		WaitBreakReactions;
	if Xerxes is booked or Xerxes is bunkered:
		say "     <sniffs crotch, interested in humping>";
		WaitBreakReactions;
		TraitGain "Bucky - Seen him" for Xerxes;
	now IntroReactionCounter is 0; [reset]

to say Leaving Limbo:
	say "...";

]

Mannequin ends here.
