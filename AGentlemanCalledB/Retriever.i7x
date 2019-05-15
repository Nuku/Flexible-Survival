Version 3 of Retriever by AGentlemanCalledB begins here.
"Adds a retriever creature to Flexible Survival's Wandering Monsters table"
[Version 3 - Updates for compatibility with Rex overhaul]

Section 1 - Creature Responses

when play begins:
	add { "Retriever" } to infections of girl;
	add { "Retriever" } to infections of furry;

to say losetoRetriever:
	if HP of Karen is 4:
		say "Struggling to stay upright after Rex's brutal assault, he plants his feet firmly with a low growl before charging towards you, planting his shoulder squarely in the middle of your chest and knocking you to the ground.";
	else:
		say "As you collapse, unable to resist the retriever girl's assault any longer, she approaches you with an expression somewhere between hunger and lust";
		if Player is male:
			say ". You find yourself becoming increasingly aroused as she strips your clothes and gear from your [bodydesc of Player] body, intent on reaching the prize underneath. As soon as she has access, the sexy canine starts licking at your [cock size desc of Player] [cock of Player] cock with her large canine tongue, quickly bringing it to full erection.";
			say "Once she's satisfied that you're as ready as she is, the retriever moves to bring her needy slit into position over your erect meat and slowly lowers herself onto you with a whimpering yip. As she raises and lowers herself against you, you find yourself slipping into a lust-filled haze, lost in the pleasure this sexy canine is forcing on you. Before long you feel yourself approaching your peak as the retriever quickens her pace, but just before you climax she reaches it first, howling in pleasure as she convulses above you, pushing you over the edge you fill her needy body with your seed.";
			WaitLineBreak;
			say "Afterwards, she collapses atop you, almost as exhausted as you are. The two of you lay there for some time, lost in the afterglow of your lovemaking, before she raises herself off you. She rubs her belly contently as she pads away, leaving you to recover on your own.";
		else:
			say ". As she strips you of your clothing and gear, you see her face overcome with disappointment as she discovers you lack the prize she's looking for. Her expression brightens again a moment later and she dives face-first into your crotch, clearly intent on making sure you're satisfied even if she quite doesn't get what she wanted.";
			say "As she drags her wet canine tongue across your feminine slit you can't help but shiver in delight. As her licking and nibbling continues you quickly find yourself approaching climax and as a final push to bring you over the edge the lustful canine drives her muzzle into you, licking at your depths as you scream in pleasure, soaking her muzzle and face in your juices.";
			WaitLineBreak;
			say "Before getting up to leave you canine playmate gives you one last long doggy kiss, giving you a taste of your own juices then leaves you to recover alone, you watch her tail wag happily behind her as she walks away still licking your juices from her muzzle.";

to say beattheRetriever:
	if HP of Karen is 4:
		say "     Still reeling from your last blow, Rex stumbles back and falls to one knee. He glances over at Karen, huddled in the corner of the room before looking up at you with his pleading eyes awaiting your final decisive strike which knocks the beaten canine to the floor.";
	else:
		if Libido of Player > 60:
			say "As you land the final blow on the retriever girl she stumbles and falls backwards, giving you a clear view of her dripping cunt. You realize this is your opportunity to have some fun with the puppy if you wanted to (Y/N).";
			if Player consents:
				say "You decide to have some fun with the lusty canine and she realizes your intent as you approach and begin stripping off your gear. The retriever begins to pant happily and spreads her legs before you.";
				if Player is male:
					say "Already fully erect by the time you reach her you waste no time in jumping on the supine canine. As you tease her outer folds with your [cock size desc of Player] [cock of Player] cock she begins to whimper needfully, already begins to buck against you, trying to force you inside her. You begin thrusting into her slowly, soon easily matching her own pace, each push eliciting another whimper or small bark from your retriever lover.";
					say "As the pace quickens you rapidly approach climax, and based on her rising pitch and increasingly forceful bucking you can tell she is as well. With one final thrust you drive your entire length into her, pushing you both over the edge. You fill her womb with your seed even as her own female juices are awash around you.";
					WaitLineBreak;
					say "You both lay there for some time, basking in the afterglow before you finally pull out of her. You quickly gather your things and head on your way, leaving the retriever girl to recover alone, rubbing her belly happily with a vapid smile across her muzzle.";
				else:
					say "Within moments you are on all fours in front of her taking several long licks of her already moist cunt, savoring her flavor for a moment before you change to a position that allows her to make use of that long canine tongue as well.";
					say "Before long, her expert ministrations have you approaching climax, and eager to return the favor, you find yourself driving deeper and deeper into your lover's sopping cunt.";
					say "Without warning she suddenly drives muzzle into you, teasing your innermost folds with her tongue as your world explodes, soaking her muzzle and face.";
					WaitLineBreak;
					say "As you begin to recover from your intense climax you realize your lover hasn't had hers. Hoping to catch her off guard like she did to you make a surprise assault on her dripping slit while she is busy licking your juices from her muzzle. You drive your tongue as deep into her as you can reach. The retriever gives a sharp yelp as she climaxes, soaking your face in her juices.";
					say "As she pants happily you slowly get up and collect your things, leaving her to recover on her own as you leave.";
			else:
				say "You decide it's best to leave the defeated retriever be. As you turn to leave you see her climbing to her feet again, you brace yourself for another attack, but it never comes. She seems content to follow behind you and whine needfully, apparently trying to change your mind about playing with her. Eventually you manage to shake the lusty canine and continue on your way.";
		else:
			say "After you land the final blow on the poor golden furred canine you feel a wave of remorse overcome you as she turns and scampers away, tail between her legs, crying out that she had only wanted to play with you. You consider chasing after her to apologize for a moment but decide it's probably best to leave her be and continue on your way.";

to say Retrieverdesc:
	choose row MonsterID from the Table of Random Critters;
	let debit be 0;
	if HP of Karen is 4:			[Fight against Rex]
		setmongender 3;      [creature is male]
		say "     Standing before you is Rex, a large male golden retriever. His long, thickly furred tail whips about in irritation behind him as he assumes an aggressive fighting stance. Clearly he isn't pleased with your little escape plan.";
		if hardmode is true and level of Player > 10, let debit be level of Player - 10;
		now HP entry is 95 + ( debit * 4 );
		now monsterHP is 95 + ( debit * 4 );
		now wdam entry is 11 + ( debit / 4 );
		now lev entry is 10 + debit;
		now libido entry is 70;
		now str entry is 19;
		now dex entry is 20 + (debit / 5);
		now sta entry is 15;
		now per entry is 15;
		now int entry is 14;
		now cha entry is 18;
	else:				[Fight Against Normal Retriever girl]
		setmongender 4;      [creature is female]
		say "     As you walk down the street you suddenly hear the sound of paws on pavement approaching you from behind. You turn towards the source just in time to avoid the golden furred canine rushing towards you from behind.";
		say "     When the retriever circles around you get a clearer look at your assailant, she is a curvaceous female golden retriever with digitigrade legs and paw-like hand and feet as well as four firm breasts. Her canine tail wags happily behind her, obviously looking forward to playing with you.";
		if hardmode is true and level of Player > 5, let debit be level of Player - 5;
		now HP entry is 45 + ( debit * 4 );
		now monsterHP is 45 + ( debit * 4 );
		now wdam entry is 7 + ( debit / 4 );
		now lev entry is 5 + debit;
		now libido entry is 70;
		now str entry is 15;
		now dex entry is 18 + (debit / 5);
		now sta entry is 15;
		now per entry is 15;
		now int entry is 12;
		now cha entry is 18;

to say RetrieverAttack:
	if HP of Karen is 4:
		say "[one of]Swinging wildly[or]Lashing out[or]Striking forward[at random] [one of]With his short claws[or]with a balled fist[or]in anger[at random] Rex [one of]lands a powerful blow[or]connects painfully, nearly knocking you to the floor[or]lands a sharp strike which sends you reeling[at random].";
	else:
		say "[one of]The female retriever rushes you, clipping your side as you try and dive out of her way.[or]The female retriever rushes you, bowling you over as she catches you off guard, assaulting you with licks and small nibbles before you are able to push her off.[or]You find yourself awe struck by the sexy female canine's body momentarily, long enough for her to close in and plant a wet doggy kiss on your cheek.[or]The retriever bitch moves in quickly, raking across your shoulder and arm with her short claws before you can react.[at random]";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Retriever";
	now enemy title entry is "Female Retriever";
	now enemy Name entry is "Karen";
	now enemy type entry is 1; [unique enemy]
	now attack entry is "[RetrieverAttack]";
	now defeated entry is "[beattheRetriever]";
	now victory entry is "[losetoRetriever]";
	now desc entry is "[Retrieverdesc]";
	now face entry is "that of an attractive female retriever, with large folded ears atop your head and a delicate canine muzzle[if HP of Rex > 9]. Fastened around your neck, you have a thin blue leather studded collar, declaring your status as Rex's pet to the world. There's even a small, silver, bone-shaped tag with your name engraved on it[end if]";
	now body entry is "that of a clearly female canine, with a beautiful hourglass figure leading into shapely digitigrade legs and large paws. Your hands have also become somewhat paw-like, while they have maintained some dexterity, it is clear they have become very canine, with short but slender digits topped with small claws";
	now skin entry is "a thick, shiny coat of golden fur over your";
	now tail entry is "Your tail is that of a golden retriever, long and covered with soft golden fur. It wags happily constantly without your input unless you make a conscious effort to stop it.";
	now cock entry is "[one of]canine[or]knotted[or]sheathed[or]pointed doggy[at random]";
	now face change entry is "you feel an immense pressure build in your head, only to have it release moments later as your face pushes out into a canine muzzle. You are distracted from your changing head when your ears begin to ring painfully, you realize why when you feel them shifting to the top of your head while the rest of your face changes to match the female retriever almost exactly";
	now body change entry is "you stumble and fall to all fours, your legs twisting to a digitigrade configuration with canine paws. The changes continue up your body like a wave, leaving your with a stunning hourglass figure and paw-like hands, much like that retriever bitch";
	now skin change entry is "as a thick coat of golden fur covers your entire body";
	now ass change entry is "feminine curves overtake it leaving it an attractive cross between a woman and a canine. Meanwhile you feel nearby muscles working without your input, looking backwards you find they are wagging your growing retriever tail happily, regardless of your opinion";
	now cock change entry is "your entire manhood is consumed by a growing golden furred sheath, once covered you feel an unusual pressure while it changes into that of a male retriever";
	now str entry is 15; [ The player's stats will move towards these values through infection. ]
	now dex entry is 18; [ Only the monster's dexterity has any effect in combat. ]
	now sta entry is 15; [ These numbers should reflect a fully infected player's stats, not the attacking monster's. ]
	now per entry is 15;
	now int entry is 12;
	now cha entry is 18;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 45; [ The monster's starting HP. ]
	now lev entry is 5; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 7; [ Monster's average damage when attacking. ]
	now area entry is "High"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 4; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 4; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Length entry is 9; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 5; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 70; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]shapely[or]slender[or]delicate[or]curvy[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
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
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


when play ends:
	if bodyname of Player is "Retriever":
		if humanity of Player < 10:
			if HP of Rex is 49:
				say "     Eventually Rex emerges from the back room, grinning happily as his newest retriever pet pads along behind him on all fours. The extended 'training' session having reduced your mind to little more than a sex crazed animal you eagerly follow your master into his life beyond the city, not caring where his life leads you or how you get there, so long as his wonderful cock is never far from your [if Player is female]dripping pussy[else]needy body[end if].";
			else if HP of Rex is 10:
				say "     Your life as Rex's happy sexpet is a simple but strangely fulfilling one. Rex proves to be a kind owner, always ensuring you and Karen are both well cared for, with a safe home, plenty of food and water, the lustful needs instilled in you by the infection and Rex's training never go unattended.";
				say "     Eventually when the military moves through the city they are greeted at the door by Rex, who manages to convince them none of you are dangerous. After a short stay at their camp you are allowed to leave and you move to a small, quiet home outside the city where you continue your peaceful existence for many years.";
				if Player is female:
					if "Sterile" is not listed in feats of Player:
						say "     You frequently find your belly round with Rex's retriever pups, thanks to your regular fun with your master, and each litter is well trained to be perfect sexpets like Karen and yourself. It almost breaks your heart each time your pups are sent away to live with families of their own, but you are comforted knowing Rex personally ensures each and every home is just as loving and caring as your own.";
					else:
						say "     Frequently Karen's belly becomes round with Rex's pups, leaving you somewhat disappointed that you cannot share that special bond with your master. You do however enjoy the time you get to spend with the pups as they are trained properly to be perfect pets like Karen and yourself and you are always sad to see them go when the time comes to send them off to new families of their own, despite Karen's reassurances that Rex ensures each pup find a home as loving and caring as your own.";
				else:
					say "     Frequently Karen's belly becomes round with Rex's pups, leaving you somewhat disappointed that you cannot share that special bond with your master. You do however enjoy the time you get to spend with the pups as they are trained properly to be perfect pets like Karen and yourself and you are always sad to see them go when the time comes to send them off to new families of their own, despite Karen's reassurances that Rex ensures each pup find a home as loving and caring as your own.";
			else if Retriever Girl is Tamed:
				say "     As the last of your resistance fades and the bestial needs of the retriever bitch take full control you bound off happily into the city and Karen quickly follows suite. The two of you eventually catch a familiar male scent, and your bodies, eager for an alpha's touch, soon lead you to him. With your minds gone none of you are ever entirely aware of your previous relationships, but somehow you know you belong together. And so your small retriever pack sets off into the city, eager to bolster your numbers and enjoy your carefree lives as lusty canines.";
			else if HP of Rex > 5:
				say "     As your mental resistance begins to slip away you find yourself becoming more and more the retriever bitch your body is urging you to be. Soon you end up back at Rex's home and noting your failing struggle to maintain control he takes advantage of your weakened state of mind, offering you the collar and a place in his home once again";
				say "     This turns out to be the final push your mind needed, and as you reach to accept the collar the last of your resistance fades away, finally surrendering yourself t a simple life as one of Rex's happy pets.";
				if Player is female:
					if "Sterile" is not listed in feats of Player:
						say "     You frequently find your belly round with Rex's retriever pups, thanks to your regular fun with your master, and each litter is well trained to be perfect sexpets like Karen and yourself. It almost breaks your heart each time your pups are sent away to live with families of their own, but you are comforted knowing Rex personally ensures each and every home is just as loving and caring as your own.";
					else:
						say "     Frequently Karen's belly becomes round with Rex's pups, leaving you somewhat disappointed that you cannot share that special bond with your master. You do however enjoy the time you get to spend with the pups as they are trained properly to be perfect pets like Karen and yourself and you are always sad to see them go when the time comes to send them off to new families of their own, despite Karen's reassurances that Rex ensures each pup find a home as loving and caring as your own.";
				else:
					say "     Frequently Karen's belly becomes round with Rex's pups, leaving you somewhat disappointed that you cannot share that special bond with your master. You do however enjoy the time you get to spend with the pups as they are trained properly to be perfect pets like Karen and yourself and you are always sad to see them go when the time comes to send them off to new families of their own, despite Karen's reassurances that Rex ensures each pup find a home as loving and caring as your own.";
			else:
				say "     As the last of your resistance fades and the bestial needs of the retriever bitch take full control you bound off happily into the city is search of new playmates to sate your canine lusts with.";
				if HP of Rex is 4:
					say "     You enjoy your time in the city with the other various infected creatures, particularly the other canines, but even they are unable to relive the burning need in your body the way your wonderful sextoy does.";
					say "     Occasionally you share the pleasure of the wonderful bone with your lovers, but you never allow it to leave your possession, bringing it with you everywhere you go in your new life as a carefree retriever bitch.";
				else:
					say "     You enjoy your time with the other various creatures in the city, particularly the huskies and their handsome alphas, yet you always feel something is missing. Deep down you know you will never be truly satisfied until you find a strong alpha of your own breed, to take you in and fill you with his pups like those lucky huskies.";
		else:
			if Retriever Girl is tamed:
				say "     Once the military moves into the city, you and Karen are quickly processed through their refugee camp and declared safe so they can move on the more dangerous creatures in the city. The two of you stick together in your lives outside the city, eventually opening a small diner together, which ends up being quite popular with other infected survivors";
				say ". Thanks to the success of your business and the friendly and upbeat demeanor provided by your retriever infection, neither of you ever have difficulty finding company to follow home for the night.";
				if Player is male:
					say "     However, the nights you spend in each other's company prove to be just as enjoyable, and before long Karen is happily carrying your pups as a result.";
			else if HP of Rex > 9:
				say "     Despite having submitted yourself to a life as Rex's pet, you manage to maintain some part of your mind, and because of this your relationship with your master eventually develops beyond him simply being your owner. Before long you are much more akin to lovers than master and pet. However, Rex makes certain you always remember how your relationship started, expecting you to continue wearing your collar and occasionally giving you a refresher 'lesson' to ensure your training hasn't been forgotten.";
			else:
				say "     Once the military moves into the city, you are quickly processed through their refugee camp and declared safe so they can move on the more dangerous creatures in the city.";
				if HP of Rex > 5:
					say "     Much to your surprise you spot Rex in your group, with Karen under his arm. He greets you warmly as you approach and you chat merrily with him for some time while you wait to be allowed to leave.";
					say "     Even though it's apparent that he still hopes to make another pet of you one day you maintain contact with Rex in the outside world, forging an unusual friendship with benefits with him, as he seems to be the only one who can sate the burning need in your body instilled by that unusual doggy sextoy, and he's more than happy to help you keep your needs in check.";
					if humanity of Player < 50:
						say "     Each time you visit you notice he has left that same blue collar out where you can see it, and each time you do you find yourself wondering about the way things could have been... the way things could still be.";
				else if HP of Rex is 4:
					say "     You manage to smuggle your dog-cock-shaped sex toy out of the city with you, frequently needing it to satisfy your body's strange new needs.";
				say "     You lead [if HP of Rex is 4]an otherwise normal[else]a relatively normal[end if] life outside the city, ending up working as a [if Player is female]waitress[else]waiter[end if] in an upscale restaurant catering mostly to other infected survivors. The friendly and upbeat demeanor provided by your retriever infection proves to be a valuable asset in this line of work, and your attractive canine body ensures you never have trouble finding someone who will let you follow them home for a night of lustful fun.";
	else:
		if HP of Rex > 9 and HP of Rex < 50:
			if humanity of Player < 10:
				say "     With your mind lost to another infection out in the city, you quickly forget your submission to Rex, and your place as his pet. He and Karen search the city for you for some time, even enlisting the aid any other survivor they can find in exchange for a share of Rex's stockpiled supplies. Despite their titanic effort the pair is never able to find you among the horde of mindless mutants in the city, eventually leaving you and it behind to find a new home outside once the military moves in.";
			else:
				say "     When the military finally moves into the city and the retriever infection still hasn't taken hold Rex takes you aside for a private moment, realizing that, despite convincing you to submit to him and accept a place as his pet, his 'training' still hasn't managed to take hold of you. With tears welling up in his puppydog eyes Rex reaches behind your neck and unfastens the blue collar, he tenderly places it in your palms, and closes your hands tightly around it. Finally he informs you that you are free to leave and do what you wish in this new world, but you will always have a place in his home should you every truly desire it.";
		else if HP of Rex is 4:
			say "     As the last of the retriever infection is worked out of your system you find the powerful urges caused by that strange bone seem to diminish as well.";
		if Retriever Girl is tamed:
			if humanity of Player < 10:
				say "     With your mind lost to another infection you quickly forget your commitment to Karen, and as you settle into your new life Karen leaves you. Having lost yet another master to the infection she returns to her home in the high rise district to await military rescue.";
			else:
				say "     When the military finally arrives and begins evacuating people from the city Karen happily comes with you, following you wherever your life takes you. She spends most of her time at your home, cooking, cleaning and generally being a good companion. You frequently take the time to show her how thankful you are for all her help, both with innocent play, trips to the [one of]park[or]beach[or]city[at random], as well as more lustful playtime.";
				if Player is male:
					say "     Eventually one of these romps results in Karen's belly swelling round with life, and her litter of retriever/[bodyname of Player] hybrid pups prove to be wonderful companions, just like their mother.";

Retriever ends here.
