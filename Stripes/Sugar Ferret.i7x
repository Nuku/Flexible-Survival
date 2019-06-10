Version 1 of Sugar Ferret by Stripes begins here.
[Version 1.1 - Alt attack tweaked]
"Adds a caffeine-addicted Sugar Ferret creature to Flexible Survival's Wandering Monsters table"


Section 1 - Creature Responses

sugferretjoke is a truth state that varies. sugferretjoke is normally false.

to say losetosugarferret:
	if sugarferretfight is 3:
		now sugarferretfight is 2;
		if HP of Player > 0:
			say "     Unwilling to keep fighting, you give yourself over to the manic ferrets. Cheering, they bounce onto you, grabbing your limbs and body, pulling you down by sheer numbers. Even as you're going down, you're groped and fondled by the over-excited ferrets.";
		else:
			say "     As your strength wanes, you are tackled by several of the ferrets at once. They grab onto your arms, legs and body, pulling you down by sheer numbers. Even as you're going down, you're groped and fondled by the over-excited ferrets.";
	else:
		if HP of Player > 0:
			say "     Unwilling to keep fighting, you give yourself over to the manic ferrets. Cheering, they bounce onto you, grabbing your limbs and body, pulling you down by sheer numbers. Even as you're going down, you're groped and fondled by several of the over-excited ferrets while others pull off your backpack.";
		else:
			say "     As your strength wanes, you are tackled by several of the ferrets at once. They grab onto your arms, legs and body, pulling you down by sheer numbers. Even as you're going down, you're groped and fondled by several of the over-excited ferrets while others pull off your backpack.";
		if soda is owned:
			delete soda;
			decrease lastcaffeine of Sweet Tooth by 2;
			if BodyName of Player is "Sugar Ferret" and caffeinehigh of Player is 0:
				say "     The wild ferrets rummage through your pack, pulling out all the soda they can find, cheering happily as they do, passing it around as they lustfully tease you. You quickly grow more excited and long to play with them. When one presses some cola to your lips, you drink it down without thinking, your wild, over-caffeinated excitement returning as your Sugar Ferret body reacts. You can feel the caffeine rushing through your system and you grab the nearest ferret, pulling them into a sweet kiss.";
				decrease thirst of Player by 6;
				sfcaffeine;
				decrease caffeinehigh of Player by 2;
			else if BodyName of Player is "Sugar Ferret" and caffeinehigh of Player > 0:
				say "     The wild ferrets rummage through your pack, pulling out all the soda they can find, cheering happily as they do, passing it around as they lustfully tease you. You try to make a grab for your pop as you see them passing it around, at first just trying to get your stash back. But when one can is passed to you, you pop it open right away and start downing it. You can feel the sweet rush as it flows over your tongue and down your throat. You grab the nearest ferret, pulling them into a sweet kiss.";
				increase caffeinehigh of Player by 2;
				decrease thirst of Player by 3;
				SanLoss 5;
				increase Libido of Player by 5;
			else:
				say "     The wild ferrets rummage through your pack, pulling out all the soda they can find, cheering happily as they do, passing it around as they lustfully tease you. You quickly grow more excited and long to play with them. All around you, they drink down your supplies of soda while working to get you aroused.";
			while carried of soda is not 0:
				delete soda;
				decrease lastcaffeine of Sweet Tooth by 2;
				if caffeinehigh of Player > 0 and BodyName of Player is "Sugar Ferret":
					increase caffeinehigh of Player by 2;
					if a random chance of 2 in 5 succeeds, increase caffeinehigh of Player by 1;
					if a random chance of 2 in 5 succeeds, decrease caffeinehigh of Player by 1;
					decrease thirst of Player by 3;
					decrease humanity of Player by 3;
					increase Libido of Player by 3;
		else:
			if BodyName of Player is "Sugar Ferret" and caffeinehigh of Player is 0:
				say "     The wild ferrets rummage through your pack, but find it empty of soda. Not to let that get them down, they pull out some soda from their personal stashes to pass around while celebrating their victory. They cheer happily, passing the drinks around as they lustfully tease you. You quickly grow more excited and long to play with them. When one presses some cola to your lips, you drink it down without thinking, your wild, over-caffeinated excitement returning as your Sugar Ferret body reacts. You can feel the caffeine rushing through your system and you grab the nearest ferret, pulling them into a sweet kiss.";
				decrease thirst of Player by 6;
				sfcaffeine;
				decrease caffeinehigh of Player by 2;
			else if BodyName of Player is "Sugar Ferret" and caffeinehigh of Player > 0:
				say "     The wild ferrets rummage through your pack, but find it empty of soda. Not to let that get them down, they pull out some soda from their personal stashes to pass around while celebrating their victory. They cheer happily, passing the drinks around as they lustfully tease you. You quickly grow more excited and long to play with them. In your excitement, you try to make a grab for your pop as you see them passing it around and soon you're downing a can of pop that's been passed to you. You can feel the sweet rush as it flows over your tongue and down your throat. You grab the nearest ferret, pulling them into a sweet kiss.";
				increase caffeinehigh of Player by 2;
				decrease thirst of Player by 3;
				SanLoss 5;
				increase Libido of Player by 5;
			else:
				say "     The wild ferrets rummage through your pack, but find it empty of soda. Not to let that get them down, they pull out some soda from their personal stashes to pass around while celebrating their victory. They cheer happily, passing the drinks around as they lustfully tease you. You quickly grow more excited and long to play with them. All around you, they drink down your supplies of soda while working to get you aroused.";
		say "     What comes afterwards is largely a haze filled with bright colors, soft breasts, wet pussies, hard cocks and tight asses, all punctuated by sweet kisses. You lose yourself in the sex with the lustful, bouncy ferrets before the group decides to finally move on when they notice they've wiped out the drinks.[impregchance]";
		now Libido of Player is Libido of Player / 2;


to say beatthesugarferret:
	if sugarferretfight is 3:
		now sugarferretfight is 1;
		say "     Over the course of your fight with them, you manage to temporarily daze several of the crazed ferrets attacking you and toss several others over to the others having lustful sex, where they're grabbed and pulled into playing with those couples. Once the last of them is dealt with, you have a brief moment to take in what's happening.";
	else:
		say "     Managing to daze several of the ferrets, the others retreat with their fallen comrades, yelling '[one of]Meanie[or]Stingy[or]Come on, let's try over here[or][if Player is female]She[else]He[end if] plays too rough[at random]!' as they leave. Victorious over the manic tube-rats, you are free to get on with your plans.";


to say sugarferretdesc:
	setmongender 19; [creatures are mixed/variable]
	choose row MonsterID from Table of Random Critters;
	if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	if sugarferretfight is 3:
		say "     Once cute and cuddly little ferrets, the pastel mustelids have become vibrantly colored. Their cute paws-like hands have gained large, sharp claws and their too-wide grins are filled with pointed teeth. They look at you with sinister intent in their bright, red eyes as they move in to surround you.";
	else:
		say "     You find yourself encountering a small group of the sugar ferrets all hepped up on caffeine again, probably still rampaging in search of more cola or candy. Their once pastel colors are now bright and vibrant. Their paws have elongated claws and their wide, manic grins show their saw-like teeth. While only four of five feet tall, there are several of the little bundles of energy here. Overcharged on caffeine and sugar, they have boundless energy and a wild thirst for more. Spotting you, they poing over, intent on ransacking your pack for any soda they can find";
		if BodyName of Player is "Sugar Ferret" and caffeinehigh of Player > 0:
			say ". Still in the throes of your own caffeine high, you clutch your pack possessively, wanting to protect your stash from them.";
		else:
			if sugferretjoke is false:
				say ".";
				say "     'Give us the cola and we'll hurt you!' one says.";
				say "     'No, _or_ we'll hurt you!' another says, bonking the first on the head.";
				say "     'Well, maybe it'll hurt a bit, but it'll be fun!' another pipes in.";
				say "     'Hey, don't tell [']em that. They won't give up the goods,' the second says, slapping the third. The trio are reduced to a slapping fight before coming to their senses, yelling 'Cola!' together and charging, trying to catch up with the rest of the ferrets already advancing on you.";
				now sugferretjoke is true;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Sugar Ferret" to infections of MustelidList;
	add "Sugar Ferret" to infections of FurryList;
	add "Sugar Ferret" to infections of NatureList;
	add "Sugar Ferret" to infections of MaleList;
	add "Sugar Ferret" to infections of FemaleList;
	add "Sugar Ferret" to infections of BarbedCockList;
	add "Sugar Ferret" to infections of SheathedCockList;
	add "Sugar Ferret" to infections of BipedalList;
	add "Sugar Ferret" to infections of TailList;
	now Name entry is "Sugar Ferret"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The crazed ferrets try to tackle you down en masse![or]One of the ferrets manages to bite your ankle with his sharp teeth! 'That's for being a meanie and not playing with us,' she says.[or]The colorful ferrets pelt debris at you while making demands for soda![or]The ferrets claw at you, leaving several deep gashes![or]One of the manic mustelids weaves in and around your legs at high speed, scratching and pinching you mercilessly![or]The multicolor mob tries to rush you as a hyperactive wave of fur, teeth and claws![or]One of the ferrets grabs your arm, pulling you towards it. 'Play with me!' 'No, me first!' another calls out, grabbing your other arm and pulling you in the other direction![or][if scalevalue of Player > 3]Being carried piggy-backed by another to reach your height, a[else]A[end if] ferret comes at you, swinging his arms in wild punches as he laughs maniacally.[at random]"; [ Successful attack message ]
	now defeated entry is "[beatthesugarferret]"; [ Text when monster loses. ]
	now victory entry is "[losetosugarferret]"; [ Text when monster wins. ]
	now desc entry is "[sugarferretdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "[if caffeinehigh of Player > 0]that of a wild ferret creature with bright red eyes. You have a wild, manic expression on your face, showing your pointy, saw-like grin[else]that of a cute ferret creature with a happy smile[end if]";
	now body entry is "[if caffeinehigh of Player > 0]short, slender and elongated. You are filled with excitement and energy barely controlled at times. You have short arms and legs that end in little paws with large, sharp claws. Your ferret-like body is always in motion, twitching from the caffeine-high[else]short, slender, elongated and filled with bouncy energy. You have short arms that end in cute, nimble paws with small claws at their tips. You have short legs that make your flexible body bound and sway whenever you run[end if]"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "[if caffeinehigh of Player > 0]brightly colored purple fur that is scraggly and ill-groomed[else]soft fur that is a soft, pastel purple in tone[end if] covers your";
	now tail entry is "You have the long, slender tail of a [if caffeinehigh of Player > 0]frantic[else]cute[end if] ferret attached to your backside."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "ferret"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "it warps and pulses, bulging and shifting in odd places as a sweet taste fills your mouth. Soon you are left with a head much like a ferret's, but with a [if caffeinehigh of Player > 0]wild grin full of pointy teeth and bright red eyes[else]friendly smile[end if]";
	now body change entry is "it stretches and grows more tube-like while becoming under five feet in height [if caffeinehigh of Player > 0]. Your limbs reshape themselves into short arms and legs ending in paws with sharp claws on each digit. You are filled with a wild, rambunctious energy that makes it difficult for you to keep still[else]. Your limbs reshape themselves into short arms and legs ending in cute, soft paws[end if]";
	now skin change entry is "prickles spread across it as [if caffeinehigh of Player > 0]bright purple[else]pastel purple[end if] fur spreads all over you";
	now ass change entry is "you gain the long, slender tail of a twitchy ferret";
	now cock change entry is "it changes shape, becoming elongated and tapered, much like that of a ferret";
	now str entry is 10; [ These are now the creature's stats... ]
	now dex entry is 16; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 18; [ These values may be used as part of alternate combat.]
	now per entry is 10;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 90; [ The monster's starting HP. ]
	now lev entry is 9; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 7; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 7; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 4; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 66; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]flexible[at random]";
	now type entry is "[one of]mustelid[or]ferrety[at random]";
	now magic entry is false;
	now resbypass entry is true;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "sugferret"; [ Row used to designate any special combat features, "default" for standard combat. ]
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


Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"sugferret"	retaliation rule	--	--	--	--	--	--	--	sugferret rule	--


this is the sugferret rule:		[continuous temptation]
	choose row MonsterID from Table of Random Critters;
	if BodyName of Player is "Sugar Ferret":
		say "     [one of]Just looking at the other cute, bouncy ferrets around you is a considerable temptation. If you give in, you could have more soda with them and have some fun[or]The sight of those energetic ferrets makes you want to give in and join them in their wild romp[or]'Yay! Playtime!' one of the ferrets calls out[or]'Weeee! PopPopPopPopPop!' they babble frantically, lost in their caffeine high and you find yourself tempted to give in to the manic energy filling you as well[or]'Join us for some fun! Come! We've got sugar!' one of them says in a tempting manner. 'Yeah,' another pipes up, 'we'll share!' Your ferrety impulses do find the offer alluring[at random]...";
		let targetnum be 200 + humanity of Player + ( plmindbonus * 3 ) - Libido of Player - ( caffeinehigh of Player * 2 );
		let tempnum be a random number between 1 and ( 200 + ( monmindbonus * 3 ) );
		say "1-200: [tempnum] vs [targetnum]: ";
		if tempnum > targetnum:
			let dam be ( ( square root of ( lev entry + wdam entry ) ) * ( a random number between 80 and 120 ) ) / 100;
			say "The impulse to give in and join them eats away at your resolve. You take [special-style-2][dam][roman type] damage and grow a little more aroused!";
			increase Libido of Player by 3;
			if HP of Player < 1 or Libido of Player >= 110:
				lose;
		else:
			say "You manage to fight down the impulse to give in and play with them... for now.";
		LineBreak;
	else if a random chance of 1 in 2 succeeds:
		say "     [one of]The bouncy ferrets poing around you. It'd be cute if it weren't for their demonic eyes and saw-toothed grins.[or]Hepped up on caffeine and sugar, the manic ferrets seem to have boundless energy.[or]'Yay! Playtime!' one of them calls out.[or]'Weeee! PopPopPopPopPop!' they babble frantically, lost in their caffeine-high.[or]'Soda! Give us soda!' a [one of]hob[or]jill[at random] yells.[or]'Woooo! Sugarrrrr!' one of the ferrets cries out.[or]'Let's play!' one of the ferrets says.[or]'Spoon!' a blue ferret yells, charging.[or]'Fork over the cola!' one of them yells.[or]'GimmeGimmeGimme!' one says, making grabby paws for your backpack.[or]'This is fun!' one of the brightly colored ferrets laughs as poings in place.[at random]";


when play ends:
	if BodyName of Player is "Sugar Ferret":
		if humanity of Player < 10:
			say "     As your humanity fades, you are overcome by an increasing longing for sugary treats. You roam around for a while, scavenging what candy you can find and guzzling down any soda you gather immediately, thirsty or not. After a few days of this, you remember another spot with lots of sweet treats and make your way back to the Sweet Tooth CandyShop where you are met by the other sugar ferrets. They happily greet you and welcome you to their group with another orgy of carbonated, over-caffeinated lust.";
		else:
			say "     You manage to survive your time in the city and are brought out to the military's holding facility. There you impatiently await your release, always tempted by the soda you see around the camp. You resist, knowing that your transformation into a wild, over-caffeinated creature of unbridled lustful energy would not improve your chances of getting out of there. It is very hard on you, but you manage to hold back your cravings.";
			if alexbrunch >= 4:
				say "     Once you're released, you manage to meet up with Alex, the ferrety lawyer, and move into his new place, becoming his lover and mate. You have a fun life with him, able to enjoy wild romps on cola whenever you like, playing with Lorenda and Lee in their guises as paid housekeepers while really being just well-paid lovers and permanent houseguests. Alex continues his career as a very successful lawyer and thankfully doesn't pick up your caffeine hyperness, though he does develop quite the sweet tooth.";
			else:
				say "     Once you're released, you do your best to settle down into a new life. Luckily, you meet a cute [if Player is male]jill[else]hob[end if] among your release group and soon become their lover. In time, you move in together and have wild, over-caffeinated romps nearly every week-end. While your lover doesn't gain your reaction to cola and pop, they do develop quite the sweet tooth.";

Sugar Ferret ends here.
