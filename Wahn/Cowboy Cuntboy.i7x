Version 1 of Cowboy Cuntboy by Wahn begins here.
[Version 1 - Initial Setup]

"Adds a Cowboy Cuntboy to Flexible Survival's Wandering Monsters table."

Section 1 - Creature Responses

to say Cowboy_Wins:
	say "     As you go down, the cowboy gives you a hard kick in the side with his right hoof that drives the air out of your lungs. 'I don't want to see you out here again, do you hear me, fucker?' You can only groan, in answer to which he gives you another kick and walks off.";

to say Cowboy_Loses:
	say "     Pretty beat up, the cowboy raises his hands in a placating gesture. 'Okay okay - you win, you bastard. Let's get this over with.' With that, he sets his cowboy hat on the ground, then undoes his jeans and slides them down over his legs. As he does so, the true reason for the bulge in his pants comes into sight - there's a pair of small and perky breasts on his pubic mound, just a bit up and to the sides of a very nice pussy.";
	if Player is not neuter: [male/female/herm]
		say "     [bold type]So, do you want to have sex with him?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents: [fuck him]
			LineBreak;
			if Player is male: [males]
				say "     Telling the cowboy to lie down on the ground, you quickly strip off your own clothing, then take in hand your rapidly hardening cock. Kneeling between Corbin's legs, you rub it up and down over the scowling anthro horse's pussy, drawing an involuntary moan from him. 'You're no better than an - aaah!' he starts saying, then gives a breathless gasp as you spread his pussy lips with the tip of your shaft and thrust deep. Sinking your manhood into this equine cuntboy, you feel the tight walls of his passage around your cock start to get wet quickly as his body reacts to your entry. Starting to fuck him with rapid thrusts in and out, you make him pant and moan, helplessly in the grip of his body's arousal and only cussing at you from time to time in between.";
				say "     Putting your hands on the small breasts near his pussy, you fondle and hold them, pushing him even deeper into helpless arousal. Soon you've got Corbin writhing on the ground under you, ripping out bales of grass left and right as he tries to hold on to anything in a lust-filled haze. His pussy feels amazing around your manhood, warm and tight, plus really well lubed with the copious amounts of femcum he's leaking. You decide to switch to a different rhythm for a while, now pounding into him as deep as you can, grinding your hips against his each time to rub your cock against his insides before pulling back again. [if Cock Length of Player > 12]With the length of your shaft, you even reach his cervix with that, rubbing up against it and making Corbin moan breathlessly. [end if]Seems like that really hit the spot with the cuntboy - it doesn't take much longer until he suddenly tenses, his whole body stiffening as a breathtaking climax runs through him.";
				WaitLineBreak;
				say "     You continue thrusting into the anthro horse, satisfied at having made him come and now eager to join him in orgasm. With your movements speeding up and you getting closer and closer to the point of no return, you get so focused on it that you almost overhear the next thing Corbin says. In between deep breaths as he rides out the last of his orgasm, the cuntboy pants 'You've got your fun, but... at least don't cum in me, ok?'";
				say "     With your orgasm rapidly approaching, you've got to decide fast... where do you cum? In ([link]Y[as]y[end link]) or out ([link]N[as]n[end link])?";
				if Player consents: [just fill him up]
					LineBreak;
					say "     You just keep going, slamming forward one last time, your hard cock all the way in the equine cowboy's vagina as it starts pulsing with burst after burst of fertile seed being pumped into his body. A grin spreads on your face as you imagine it splashing against his cervix, passing through that and filling his womb. Corbin lets his head drop back to the ground, muttering 'Fucking feral bastard'. You stay on top of him for a while longer till the last spurt of your cum is inside him, then stand up and grab your gear, leaving the freshly bred cowboy lying there as you move on.";
				else: [pull out]
					LineBreak;
					say "     Feeling the familiar tingle rise in your balls, you decide not to be too much of an ass about this and quickly pull out, spraying long ropes of cum all over the equine cowboy's muscular chest. Looking down over himself as you come, Corbin lets out a relieved sigh, then lowers his head to rest against the ground. Having gotten what you wanted off him, you stand up and grab your gear, leaving the freshly fucked cowboy lying there as you move on.";
			else if Player is female: [females]
				say "     Telling the cowboy to kneel, you quickly strip off your own clothing, then come to stand closely in front of him. One hand stroking your pussy lips, you hold them spread apart as you pull Corbin's head against your crotch with the other hand. After only a seconds hesitation, he starts licking you out, showing a pretty good skill with his wide equine tongue. Putting both of your hands on his equine head, you let the pleasure of his oral attention wash over you, moaning in satisfaction. Then suddenly, he brings his fingers into the action too, pushing them in between your pussy lips and fondling your insides with a knowing touch.";
				say "     It doesn't take all that long until the equine cuntboy's tonguework and fingering pushes you over the edge, making you gasp as an intense orgasm floods your senses with pleasure. Panting, you sink to the ground as your knees get a bit weak, then lie back in the soft grass. Meanwhile, Corbin uses this opportunity to leave while you're distracted with yourself.";
		else: [don't fuck him]
			say "     With a shrug, you turn around and walk away.";
	else: [neuter]
		say "     With you not having any genitals, there isn't anything for you to do with him. With a shrug, you turn around and walk away.";

to say Cowboy_Desc:
	setmongender 8;
	say "     You run into Corbin, the anthro horse cowboy. He doesn't seem at all happy to see you, balling his fists and rushing forward...";

Section 2 - Creature Insertion, Drop Item

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Gypsy Horse";
	add "Gypsy Horse Transman" to infections of Equinelist;
	add "Gypsy Horse Transman" to infections of NatureList;
	add "Gypsy Horse Transman" to infections of TransList;
	add "Gypsy Horse Transman" to infections of BluntCockList;
	add "Gypsy Horse Transman" to infections of SheathedCockList;
	add "Gypsy Horse Transman" to infections of BipedalList;
	add "Gypsy Horse Transman" to infections of TailList;
	now Name entry is "Gypsy Horse Transman";
	now enemy title entry is "Equine Cowboy";
	now enemy Name entry is "Corbin";
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]He gives you a good kick.[or]The cowboy lands a blow to your stomach.[at random]";
	now defeated entry is "[Cowboy_Loses]";
	now victory entry is "[Cowboy_Wins]";
	now desc entry is "[Cowboy_Desc]";
	now face entry is "that of an anthro equine, with a broad muzzle, large round blue eyes and expressive horse-like ears, sitting pretty far up on your elongated head";
	now body entry is "large and muscular, with strong digitigrade equine legs ending in powerful hooves. Your hands seem to be slightly hoof-like as well, the ends of your fingers tipped with little hooflet like nails. Your crotch has a pair of small, perky breasts, slightly above the genitals";
	now skin entry is "[one of]cow-like[or]dappled[or]black and white patterned[or]softly furred[or]short fur covered[at random]";
	now tail entry is "You have a long, horse-like tail swaying behind you, almost reaching to the ground. Its long strands of coarse hair cover your ass completely as it flicks this way and that seemingly on its own.";
	now cock entry is "[one of]equine[or]horse-like[or]blunt[or]powerful[at random]";
	now face change entry is "your mouth stretches forward, your nose flattening as it merges with your equine muzzle. You find yourself groaning slightly as your forehead flattens and your eyes shift their position to the sides slightly. Meanwhile your ears lengthen into larger and pointed horse-like ears, which come to rest atop your equine face"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your muscles seem to shift around underneath your skin, making you stumble around while trying to keep your balance for a moment. Looking down, you see that you now have powerful digitigrade legs ending in a pair of hooves. The rest of your body finishes changing as well, your hands having acquired rather hoof-like nails, and your chest and torso pretty broad and more equine looking. Also, your crotch seems to have acquired a pair of small, perky breasts sitting a bit above and to the sides of your genitals"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "soft cow-fur begins to push its way out of your flesh, the black and white pattern forming into several rather interesting dappled shapes as it finishes covering your body completely"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it seems to tighten into a rather broader and flatter ass, long strands of thick equine hair beginning to sprout from the base of your spine, quickly growing out to form a long and handsome equine tail which hangs down past your knees and seems to flick from side to side as if it had a mind of its own"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it grows erect and aroused, before beginning to shift and change. Its tip becomes pretty broad and flattens into a rather blunt equine shape, while a proper sheath forms around the base, and a ribbed ring forms about halfway up your changed member"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 16;
	now dex entry is 14;
	now sta entry is 16;
	now per entry is 12;
	now int entry is 14;
	now cha entry is 14;
	now sex entry is "Female";          [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 35;                 [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 4;                 [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 6;                [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Nowhere";        [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 0;               [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0;         [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0;          [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2;             [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4;         [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 2; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;               [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 12;        [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 8;          [ Width of female sex infection will try and give you ]
	now libido entry is 40;             [ Amount player Libido will go up if defeated ]
	now loot entry is "cowboy milk";    [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 25;         [ Chance of loot dropping 0-100 ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscular[or]equine[at random]";
	now type entry is "equine";         [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hoofstomp"; [ Row used to designate any special combat features, "default" for standard combat. ]
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


Table of Game Objects (continued)
name	desc	weight	object
"cowboy milk"	"A plastic bottle full of milk of Corbin James, the cowboy cuntboy you met."	1	cowboy milk

instead of sniffing cowboy milk:
	say "Smells good, fresh milk...";

cowboy milk is a grab object.
the usedesc of cowboy milk is "[cowboy milk use]";

to say cowboy milk use:
	say "Screwing the cap of the plastic bottle, you put it to your lips and drink its contents with deep swallows of the fresh and tasty milk.";
	decrease thirst of Player by 10;

cowboy milk is infectious. The strain of cowboy milk is "Gypsy Horse Transman".

Section 3 - Endings

[
when play ends:
	if BodyName of Player is "Gypsy Horse Transman":
		if humanity of Player < 10:
			if level of Player > 10:
				say "     A";
			else:
				say "     B";
		else:
			say "     C";

]

Cowboy Cuntboy ends here.
