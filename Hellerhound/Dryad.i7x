Version 1 of Dryad by Hellerhound begins here.
[ Version 1.2 - Minor revision to player victory. Now offers player choice. ]
[renamed from Tree Nymph]

"Adds a Dryad to Flexible Survival's Wandering Monsters table"

Section 1 - Cum Vial

Table of Game Objects (continued)
name	desc	weight	object
"dryad cum"	"A bottle of dryad cum? Man, you will scavenge anything."	3	dryad cum

dryad cum is a grab object. It is a part of the player. dryad cum is infectious. The strain of dryad cum is "Dryad". The purified of dryad cum is "distilled cum". dryad cum is cum.

the scent of dryad cum is "The dryad cum smells like a mix of semen and tree sap.".

Section 2 - Creature Insertion

when play begins:
	add { "Dryad" } to infections of hermaphrodite;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;


To say dryad defeat:
	if Libido of Player > 25 and player is male:
		say "     The dryad staggers back and stumbles into a tree. Trapped between you and it, she moans weakly. With her nude form on display, you can't help but run your eyes over her slender body, going from her lovely bosom and down to her syrupy pussy. You find her quite tantalizing to look at, and you're tempted to do much more than look. [bold type]Shall you try to have your way with her?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Have some fun with the dryad.";
		say "     ([link]N[as]n[end link]) - No, not right now.";
		if Player consents:
			LineBreak;
			say "     You move closer to the dryad and thrust your [cock of Player] cock into her. To your surprise, you are able to push yourself balls deep inside of the dryad without any effort, and you begin to suspect something is wrong when you start to feel vines creeping along her inner walls. You try to pull out, but they grab hold and draw you all the way in. The dryad murmurs, 'Silly mortal, thinking you could rape me. Well, let me teach you a thing or two.' She leans into you, the vines along her internal walls stroking and milking at your cock insistently.";
			let bonus be (( Strength of Player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Strength Check):[line break]";
			if diceroll + bonus >= 10:
				say "     Due to your high level of strength, you are certain you could regain control again over the situation. Only if you truly wanted too, of course.";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Turn the tables back in your favor, and dominate the dryad";
				say "     ([link]N[as]n[end link]) - Don't resist the dryad, letting her dominate you";
				if Player consents:
					say "     Straining your muscles against the vines with the use of a tight flex, you are able to break free from their hold. The dryad, sits in shock and fear beneath you, offering little resistance on her part as you place your hands upon her slender hips. Turning her around, so her ass faces towards you, you line your cock up with the syrupy folds of her now leaking snatch. It is obvious, that despite that fact that the dryad is not used to defeat, she seems to be enjoying it. With a pleased smirk, you fully reinstate your dominance over the woman, thrusting your cock balls deep inside of her. Half expecting another vine like assault, your muscles tense in preparation. But another assault doesn't come. Instead, the dryad moans whorishly in pleasure beneath you. 'Oh yes!' she shouts at the top of her lungs. 'Who knew morals could... umph!' You smirk as a soul-crushing orgasm leaves the dryad unable to finish her previous sentence. Her pussy clenching your shaft tightly, her eyes roll to the back of her head, becoming lidded with a powerful, submissive lust. Responding to that lust, you fuck the dryad with an eager, and undeniable but animalistic vigor. Between the tightness of the dryads cunt, and the sheer sexiness that comes from that fact that you have dominated such a powerful woman, it isn't long before you find yourself burying your load deep inside of her. Feeling you shoot powerful spurts of cum into her pussy, the dryad orgasms once more, before falling exhausted to the ground before you. Tired yourself, you make sure all you items are in order, before taking out an empty bottle from your pack, and filling it to the brink with some of the dryad's cum. After all, who knows when something like that may ever come in handy...";
					increase carried of dryad cum by 1;
					infect "Dryad";
				else:
					say "     Deciding to give the dryad the dominance over you she so obviously wants to exercise, you relax your previously tense muscles, falling limp within her grasp. Feeling confident you can regain control of the situation, if anything bad were to occur, you eagerly look forward to taking whatever she has in store for you. The dryad, just as eager as you, sees to it that every inch of your [cock of Player] cock is played with, and it doesn't take long before you are spraying your load inside of her. When you finish, she places the nipple of one of her large breasts at your mouth, and with a dulled mind, you begin to suckle as she says, 'That's good, have a drink.'";
					say "     The warm milk soothes some of the pain from the rough session, and you are almost disappointed when the dryad pushes you away. As you collapse onto the ground, the dryad walks away, the tree disguise forming once more. As you clean yourself off, you manage to collect some of the dryad's cum, placing it in an empty water bottle.";
					increase carried of dryad cum by 1;
					infect "Dryad";
			else:
				say "     The dryad's vines rendering you unmovable in their grasp, you are forced to sit and helplessly take whatever she has in store for you. The dryad, eagerly making use of her recently caught 'Prize', sees to it, that every inch of your [cock of Player] cock is played with, and it doesn't take long before you are spraying your load inside of her. When you finish, she places the nipple of one of her large breasts at your mouth, and with a dulled mind, you begin to suckle as she says, 'That's good, have a drink.'";
				say "     The warm milk soothes some of the pain from the rough session, and you are almost disappointed when the dryad pushes you away. As you collapse onto the ground, the dryad walks away, the tree disguise forming once more. As you clean yourself off, you manage to collect some of the dryad's cum, placing it in an empty water bottle.";
				increase carried of dryad cum by 1;
				infect "Dryad";
		else:
			say "     Shaking your head to clear your mind, you grab the wood nymph by the shoulders and shove her roughly to the side. She gives an angry hiss like cracking bark and slips away into the trees.";
	else if Libido of Player < 25:
		say "     The dryad stumbles back from the fight, and rather than give her a chance to recover, you throw a final blow. This manages to break off [one of]an arm[or]a leg[or]a limb[at random] with a sharp snap, like a tree limb with ragged splinters of wood. The skin around it goes rough and turns brown as it morphs into bark. She shouts at you that she will return, her unbroken remains setting down roots into the ground as she transforms back into a tree, and a visibly damaged one at that.";
	else:
		say "     The dryad screams in rage and her skin turns bark-like. In an instant, she becomes a true tree, unmoving and covered in vines.";


To say dryad attack:
	if Player is female:
		say "     As you go limp from the beating, greenish vines wrap around your [bodydesc of Player] body, spreading your legs and lifting you off of the ground. The dryad steps forward and rubs her clit, grinning evilly. You watch in horror, it turns a wooden-brown with a bark-like texture and grows longer and thicker, becoming a small, six inch cock.";
		say "     The vines bend, and your entire body tilts backward, placing your [cunt size desc of Player] cunt right in front of her cock. 'Sweet carryings.' She smirks as she pushes inside, causing you to scream in pain from the rough bark. The dryad pumps in and out of you, and you soon realize that her cock is absorbing the lubrication. Despite that, you eventually get used to the rough treatment, and pleasure starts to mix in with the pain. You are eventually brought to a climax, but as you descend from your orgasm, you quickly notice that the dryad has not slowed down at all. She keeps using your weary body, and soon, the overwhelming sensations make you lose consciousness.";
		WaitLineBreak;
		say "     You wake to find thick, steaming cum mixed with blood running from your cunt, and a feeling of weakness all over. It must be the blood loss, you realize, as the size of the puddle under you becomes apparent. As you clean yourself off, you manage to collect some of the dryad's cum, placing it in an empty water bottle.[impregchance]";
		increase carried of dryad cum by 1;
		infect "Dryad";
	else if Player is male:
		say "     You collapse under the pain of your beating, and the dryad approaches. Suddenly, many green tendrils grow out of a hole above her clit that you had missed, twining around your cock and body, immobilizing you. You watch as she strokes her clit, which slowly turns into a 6 inch long wooden cock. Her hands move toward her cock, and you watch with growing lust and horror as it spasms, and white, thick, reeking spunk sprays all over your [bodydesc of Player] body and face. She breathes out in a long sigh, and the tendrils bring you closer as she waits for the changes.";
		repeat with n running from one to three:
			infect "Dryad";
		say "     After you finish, she shoves one of her breasts into your face. 'Still not had a drink, eh?' she quips as one of the green tendrils twining around her body squeezes the tit, milk spraying into your face and down your throat.";
		infect "Dryad";
		say "     The dryad unceremoniously drops your cum-and-milk-covered form to the ground and leaves. As you clean yourself off, you collect the cum on you and place it into an empty water bottle. Maybe there is a use for it?";
		increase carried of dryad cum by 1;
	else:
		say "     She looks at you with horror. 'Nothing? Nothing for me to play with?' she exclaims. Well, you will just have to fix that and come back later. She turns toward the trees with a huff, leaving you to pick yourself up.";
		infect "Dryad";



When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Dryad"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The dryad [one of]punches your face solidly with a fist that feels like bark[or]kicks your face, exposing her cute pussy[or]whips the tree's branches at you[or]causes tentacle-like vines to rise out of the ground and slap you[at random]."; [Text used when the monster makes an Attack]
	now defeated entry is "[dryad defeat]";
	[ Text or say command used when Monster is defeated.]
	now victory entry is "[dryad attack]";
	now desc entry is "[mongendernum 5]Walking through the urban forest, you pass along a road filled with trees. You can see the signs of many having had sex nearby. One tree seems normal enough, despite the enormous amounts of cum around its base, but you note the twisted shape of its branches and the pinkish tinge to its bark. As you walk closer, the tree fades, and a dryad jumps in front of you."; [ Description of the creature when you encounter it.]
	now face entry is "cute, with green hair and branches growing behind your ears"; [ Face description, format as "Your face is (your text)"]
	now body entry is "vine-wrapped and very feminine, milk leaking from shapely breasts"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "unblemished"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is ""; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "wooden, cum-reeking"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it becomes cuter, more feminine. Your hair turns green, and branches begin to grow from behind your ears"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes cuter. Green, tentacle-like vines grow from a new hole forming above your clit as they wrap around your body"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "blemishes disappear, and vines fully wrap around your figure, forming a green cloak that opens at will"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it becomes human-like"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it shrinks and slides down into your clit. You appear female, but by concentrating, your clit can turn into full-sized, wooden-looking cock, with reeking cum leaking from it"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 16;
	now dex entry is 22;
	now sta entry is 20;
	now per entry is 15;
	now int entry is 16;
	now cha entry is 20;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 45;
	now lev entry is 5; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you lose ]
	now wdam entry is 13; [Amount of Damage monster Does when attacking.]
	now area entry is "Forest"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 6; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 10; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 4; [ Width of female sex infection will try and give you ]
	now libido entry is 60; [ Amount player Libido will go up if defeated ]
	now loot entry is "dryad cum";
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]feminine[or]sultry[or]slender[at random]";
	now type entry is "[one of]dryad[or]plant[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
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
	if bodyname of Player is "Dryad":
		say "     Life as a dryad is hard. Your naked stature and vines, not to mention fear of clothes, keep you separate from the normal humans. They also constantly get you in trouble with the law, who are still trying to cope with your kind's breach of public nudity. ";
		if the humanity of Player < 10:
			say "The revival of the city does you no good, and you are soon behind bars for several acts of misconduct. You end up with a life sentence and spend the rest of your time attempting to control the impulses the nanites wired into you.";
		else if the humanity of Player < 50:
			say "A few days into the revival of the city, you decide to become another one of the trees on the road where you found the original. Growing bark and leaves, you form a new tree, and a new puzzle for the city council, who had not authorized the planting of new trees in their budget. You and your fellow trees take payments from those who wish your services and return to your lot at night. Altogether, it isn't a boring life, with all the odd clients that come around and the food they bring.";
		else:
			say "You eventually overcome your fear of clothing and become relatively normal to those who don't see you without it or your hat. You are able to resume life as normal.";
			[but you do have to get a different lover as your old one is unhappy with the changes.]

Dryad ends here.
