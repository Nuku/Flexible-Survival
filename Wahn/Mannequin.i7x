Version 2 of Mannequin by Wahn begins here.
[Version 2 - Meeting Event folded into the monster description]

"Adds a Neuter Mannequin to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

to say mannequin wins:
	say "     The living doll grips you tightly and a strange sensation washes over you, as if part of your being is drained away. Before your eyes, its features change, making it look a bit more like yourself. You take your chance while it's distracted with checking out its new body and run away.";

to say mannequin loses:
	say "     The mannequin silently collapses at your feet. Even though it's thoroughly beaten, it still weakly reaches for you, its face showing a desperate expression. You quickly get some road between it and you before it stands up again.";

to say mannequinDesc:
	setmongender 0;
	if "Mannequin" is not listed in EncounteredEnemies of Player: [first encounter]
		say "     Passing by a loading-dock in the warehouse district, you spot two humanoid dogs cutting a hole in the fence and slip through. Curious what the bulldog and German Shepherd are doing in there, you inconspicuously follow them between the long rows and stacks of shipping containers.";
		WaitLineBreak;
		say "     'Which one did the coyote say the food was in?' the shepherd asks gruffly, to which the bulldog replies 'A red one, with Transglobal on the side.' Looking up and down the lines of containers, the shepherd wails 'But almost all of them are red!' The bulldog shrugs and walks over to the nearest container and opens it up. 'Oh hey, seventy flatsceen TVs - how... useless, without electricity. Let's check the next one.'";
		say "     The two of them open up several more containers, but find nothing of use in this post-apocalyptic city. 'I'm beginning to think Diego sent us on a wild goose chase,' the shepherd growls. 'Ok, ok... let's just open up this last one, then go back to the park and have some words with that coyote...' his buddy replies, then pulls open another container and yelps in surprise. 'Now that's freaky - for a moment I thought this container was full of people.'";
		WaitLineBreak;
		say "     The German Shepherd steps in front of the door and looks in too. 'Nah, those are just those dress dummies they use in stores. Normal lifeless puppets, see...' and pokes the first mannequin in the container in the chest - which promptly grabs him by the arm. Within moments, dozens of mannequins pour out of the container and wrestle both dogs to the ground. They jostle against each other with a desperate tenacity, each trying to touch one of their captives. Then you see them change, taking on characteristics of the dogs - one growing out a muzzle, another suddenly sprouting fur, etc.";
		say "     After the changes stabilize, all of the mannequins lose interest in their captives and start to disperse, each striking out on its own. Left behind on the ground are two more mannequins - those must be the two former dogs, their essence drained away. As they start to get up too, you decide it's time to leave and make your way back to the hole in the fence. One of the mannequins got there before you, though. It might have absorbed the knowledge of its location from the dogs, or just have been lucky. Now it turns to you, eager to make your shape its own.";
	else:
		say "     You cross paths with an animated mannequin which looks like an idealized male in his mid-twenties, with muscled arms, legs and chest and a featureless crotch. It has a pale flesh-colored skin-tone and a chiseled-looking face including sculpted wavy hair. As the mannequin notices you, an almost desperate, needful look crosses its face and it rushes at you.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Mannequin";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]It hits you in the head, strong enough to daze, but not hurt you.[or]It grabs your arm for a moment with a strong grip before you can pull away. That'll leave quite a bruise.[or]It grabs your leg for a moment with a strong grip before you can pull away. That'll leave quite a bruise.[at random]";
	now defeated entry is "[mannequin loses]";
	now victory entry is "[mannequin wins]";
	now desc entry is "[mannequinDesc]";
	now face entry is "smooth, with striking angular features like a statue";
	now body entry is "that of an idealized male, with washboard abs and muscled arms and legs";
	now skin entry is "pale and flawless"; [ format as "You have (your text) skin"]
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
	now Breast Size entry is 0;            [ Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0;       [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;                  [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Length entry is 0;
	now Cunt Tightness entry is 0;
	now libido entry is 10;                [ Amount player Libido will go up if defeated ]
	now loot entry is "nullifying powder"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 35;            [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;                  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "idealized";      [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "human";             [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0;         [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Length	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight]
	now Body Definition entry is 5; [scale of 1-9 for body definition]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective: skinny/slender/lithe/average/fit/muscled/pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of male to female]
	[Gender Adjective is generated out of androginity]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [torso description of Player]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word descriptive adjective (furry/scaled/...)]
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
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...)]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your tail [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Asshole Length entry is 7; [inches deep for anal fucking;]
	[Asshole Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0;
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0;
	now Ball Size entry is 0; [size of balls 1-5: "acorn-sized", "coin-sized", "egg-sized" "goose-egg sized", "ostrich-egg sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Length entry is 0;
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [Size of Clit (1-5); very small/small/average/large/very large]


Section 3 - Endings

when play ends:
	if bodyname of Player is "Mannequin":
		if humanity of Player < 10:
			say "     As you succumb to the infection, you drift aimlessly through the city and go for anyone crossing your path, overpowering them and absorbing how they look. Being in the form for an unfortunate soldier whose shape you stole earlier almost gets you out of the city when the military finally moves in, but following your unrestrained urges you try assimilating a medic who wants to check you out. Tasered till you collapse, you end up in a small cell and later get shipped to a research lab, where scientists study how you constantly shift and change. As a quite valuable asset for espionage developments, you never leave that facility again...";
			stop the action; [no other endings - player removed from the city]
		else:
			say "     Remaining in control of the urges to acquire the shapes of others and become them, you experiment a bit and learn that with some concentration you can shift without leaving others as identity-less infected mannequins. When the military finally moves in, you're taken to a holding facility, where doctors poke and prod you for days on end. Overhearing two doctors talk, you catch '...ites active and in constant flux. The subject wasn't exposed to a one-time change, but something else. That makes [if Player is male]him[else if Player is female]her[else]it[end if] far too dangerous to be released. I recommend perm...' Since you don't think you'd get out of there alive - if at all, you use the next chance you get with an orderly and overpower him to flee the facility after absorbing his shape.";
			say "     There's quite a bit of panic when people realize you're gone and soldiers swarm out to create roadblocks and hunt for you. It's touch and go for a while, but you manage to avoid capture. A week later and several hundred miles distant, with you laying low in a small town, you think you're home free - until you walk into your motel room and find a man in a suit waiting for you. 'Quite impressive, your escape. We need people like you. A bit of training and you'd make a fine addition to the agency...'";
			say "     Recognizing a deal you can't decline, you let yourself be recruited and end up a spy, traveling all over the world. Your ability to become anyone you want to be creates a rumor, then a legend of the super-spy 'The Chameleon'. Eventually movie-directors get a hold of the story and bring out an award-winning series of films about you. You make a game out of appearing as a minor role in every last one of them - never in the same shape twice though.";

Section 4 - Item drop

Table of Game Objects (continued)
name	desc	weight	object
"nullifying powder"	"A small bag of strange, white powder. Your digits tingle when they touch it, but it's otherwise not infectious."	1	nullifying powder

nullifying powder is a grab object.
the scent of nullifying powder is "It has a very obvious, chalky scent about it.".
The usedesc of nullifying powder is "[nullpowderuse]";

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
			else if ball size of Player < 4:
				say "     At this point, the powder will have no effect on you. It seems you'll need to remove your cock[smn] or develop internal genitalia if you want to make them disappear.";
			else:
				if ball size of Player > 29:
					decrease ball size of Player by 6;
				else if ball size of Player > 18:
					decrease ball size of Player by 4;
				else:
					decrease ball size of Player by 2;
				follow the cock descr rule;
				say "     You apply the powder to [if Player is internal]where your sack might be[else]your sack[end if]. After a while, they[if Player is internal] seem to[end if] shrink down to the point where you[if Player is internal], presumably,[end if] have [ball size].";
			now Trixieexit is 1;
		else if calcnumber is 3:
			if Player is not female:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else if Cunt Count of Player is 1 and Cunt Length of Player < 4 and Cunt Tightness of Player < 5 and ("Female Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Single Sexed" is listed in feats of Player):
				say "     At this point, the powder will have no effect on you.";
			else:
				if Cunt Count of Player > 1 and Cunt Length of Player > 3:
					say "     Is the goal to remove a spare hole? Otherwise, you'll reduce the size of all of them.";
					if Player consents:
						decrease Cunt Count of Player by 1;
						follow the cunt descr rule;
						say "     You apply the powder to a single portal. [if Cunt Length of Player > 10 or Cunt Tightness of Player > 10]In spite of its size[else]After several applications[end if], it gradually diminishes into nothing, leaving your with [if Cunt Count of Player is 1]one cunt[else][Cunt Count of Player] cunts[end if].";
					else:
						if Cunt Length of Player > 29:
							decrease Cunt Length of Player by 6;
						else if Cunt Length of Player > 18:
							decrease Cunt Length of Player by 4;
						else if Cunt Length of Player > 3:
							decrease Cunt Length of Player by 2;
						if Cunt Tightness of Player > 29:
							decrease Cunt Tightness of Player by 6;
						else if Cunt Tightness of Player > 18:
							decrease Cunt Tightness of Player by 4;
						else if Cunt Tightness of Player > 3:
							decrease Cunt Tightness of Player by 2;
						follow the cunt descr rule;
						say "     You apply the powder to your portals. After a while, they shrink down to the point where they're now [cunt size desc of Player] in size.";
				else if Cunt Length of Player < 5 and Cunt Tightness of Player < 5:
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
							say "     You apply the powder to a single portal. [if Cunt Length of Player > 10 or Cunt Tightness of Player > 10]In spite of its size[else]After several applications[end if], it gradually diminishes into nothing, leaving your with [if Cunt Count of Player is 1]one cunt[else][Cunt Count of Player] cunts[end if].";
					else:
						now Cunt Count of Player is 0;
						follow the cunt descr rule;
						say "     You apply the powder to your portal. After a bit of work, it shrinks down to nothing.";
				else:
					if Cunt Length of Player > 18:
						decrease Cunt Length of Player by 4;
					else if Cunt Length of Player > 4:
						decrease Cunt Length of Player by 2;
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
			increase carried of nullifying powder by 1;

Mannequin ends here.
