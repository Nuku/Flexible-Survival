Version 3 of Snake For FS by Stripes begins here.
[ Version 3 - Addition of sex scene, a Touched by Madness scene set, and various anatomy tweaks via Blue Bishop]

"Adds a Snake creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Snake" } to infections of tailweapon;

snakedomm is a number that varies. snakedomm is usually 0. [Snake Dom Memory. 0 = Nothing, 1 = lost once, 2 = TBM scene has fired at least once]
snakesubm is a number that varies. snakesubm is usually 0. [Snake Sub Memory. 0 = Nothing, 1 = Player has made a choice after beating one]
snakehijack is a number that varies. [Snake TBM Hijacking check, Causes the snake to interfere with player pregnancy. 0 = none, 1 = cunt, 2 = ass]
snakecap is a number that varies. snakecap is usually 0.
snakeocc is a number that varies. snakeocc is usually 0.
snakehijacktimer is a number that varies. snakehijacktimer is usually 300.
fsnakevalid is a truth state that varies. fsnakevalid is usually false.
msnakevalid is a truth state that varies. msnakevalid is usually false.

to say snakedesc:
	setmongender 0; [creature is neuter-X]
	if showlocale is true:
		say "     As you travel across the plains, there is a rustle in the grass beside you. Turning quickly, you spot";
	else:
		say "     Suddenly, you're assailed by";
	say " what would be a common ring-necked snake, were it not for its great size. This serpent has grown to the size of a boa and is almost two meters in length. This one has silvery scales across its body with bright yellow-orange along the underbelly. Its dark gray head has an orange band at its neck and a pale yellow jaw, which blends into the brighter underside. The enlarged snake hisses at you and attacks.";
	choose row monster from the table of random critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	else if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else if cocks of player > 0 and cunts of player is 0:
		now sex entry is "Male";
	else if cocks of player is 0 and cunts of player > 0:
		now sex entry is "Female";
	else if cocks of player > 0 and cunts of player > 0:
		now sex entry is "Both";
	else:
		now sex entry is "nochange";
	[set all size values to match existing so only number of cocks/cunts may change]
	now cock length entry is cock length of player;
	now cock width entry is cock width of player;
	now cunt length entry is cunt length of player;
	now cunt width entry is cunt width of player;


to say losetosnake:
	theserpentchecks;
	if HP of player > 0:
		say "     You choose to surrender to the large serpent, lowering yourself in submission to its will. It slithers around you cautiously, not fully trusting this gesture, [if snakedomm is 0]and not rightly sure what it has in store for you[else]though no doubt nonetheless eager to have its hunger sated[end if].";
	else:
		say "     Overtaken by the large serpent, you feel its fangs sink into your [bodytype of player] form time and time again, its blight-twisted venom flooding your body. You crumble to the floor, too weakened to contend it any further and leaving you at its mercy.";
	if fsnakevalid is true: [Touched by Madness Female scene]
		say "     Forcibly exposed before it, the snake's forked tongue inquisitively tastes your [cunt size desc of player] cunt[sfn], [if HP of player > 0]quickly made dripping and eager by the beast's affection[else]the beast's tainted infection leaving you dripping and eager[end if]... However, it seems to yield, stricken by a[if snakedomm > 1]n all too familiar[end if] thought which causes it to stop dead in its tracks. A few seconds pass before it continues its affection, this time substantially more insistent. ";
		if snakeocc > 0:
			say "     Clearly, this snake believes that it can tag along even though you're already carrying [snakeocc] occupant[if snakeocc > 1]s[end if]. ";
		say "     With no restraint or further preparation, it soon thereafter thrusts its slender head past your supple folds, pushing itself deeper and deeper[if cunt width of player < 13], its substantial girth stretching you to your limits[end if]. It doesn't relent in its descent, coiled grip on you tightening as it assails your cervix, its persistent endeavors eventually forcing it through that, as well. [if scalevalue of player < 4]Your body visibly bulges almost instantly[else]You feel increasingly heavy and bloated[end if], flooded with the contents of the snake's lengthy body, inch after successive inch forced into you. Soon enough the final, remnant measure is pulled from inside until naught of the creature remains exposed any longer.";
		say "     Body trembling in the wake of abiding such a[if scalevalue of player < 4] sizeable[else]n[end if] occupant, it doesn't seem inclined to depart or torment your further. Twisted powers that be, the snake is gradually integrated into you as it would a normal pregnancy, your bloated form slowly shrinking to something more manageable[if snakeocc > 0]. From what you can guess, the additional 'passenger' has also set back your pregnancy by a little bit[end if]. [if snakedomm < 2]The cheeky serpent seems to have got[else]This cheeky serpent also managed to get[end if] it in its head that it could sap your vitality by hijacking your womb, [if snakedomm < 2]regardless of the repercussions[else]even though such a deranged endeavor will doubtlessly rewrite its mind to assume it's your offspring[end if]!";
		say "     Eventually, [if HP of player > 0]you recover enough from the ordeal[else]the venom wears off[end if], allowing you to slowly get back to your feet, [if scalevalue of player < 4]overly bloated body making this a particularly difficult task[else if snakeocc > 0]forced to contend with your further exacerbated pregnancy[else]forced to contend with your new and significantly progressed pregnancy[end if], to say nothing of the your unsated lust in the wake of such treatment.";
		if snakeocc is 0:
			now snakehijack is 1;
			now preghijack is true;
			choose row monster from the table of random critters;
			now name entry is "Snake";
			impregnate with name entry;
			now gestation of child is 5;
			now snakeocc is 1;
		else:
			now gestation of child is 5;
			increase snakeocc by 1;
		now snakedomm is 2;
		increase libido of player by 5;
		if libido of player > 100, now libido of player is 100;
	else if msnakevalid is true: [Touched by Madness MPreg scene]
		say "     Forcibly exposed before it, the snake is suddenly stops in its tracks for a second, stricken by a[if snakedomm > 1]n all too familiar[end if] thought... A few seconds pass before it begins its affection, forked tongue's caress across your anal ring, very much insistent on this twisted preparation. ";
		if snakeocc > 0:
			say "     Clearly, this snake believes that it can tag along even though you're already carrying [snakeocc] occupant[if snakeocc > 1]s[end if]. ";
		say "     With no restraint or further preparation, it soon thereafter thrusts its slender head past your anal ring, forcing itself deeper and deeper[if scalevalue of player < 4], its substantial girth stretching you to your limits[end if]. It doesn't relent in its descent, coiled grip on you tightening as it assails a peculiar barrier, its persistent endeavors eventually forcing it through that, as well. [if scalevalue of player < 4]Your body visibly bulges almost instantly[else]You feel increasingly heavy and bloated[end if], flooded with the contents of the snake's lengthy body, inch after successive inch forced into you. Soon enough the final, remnant measure is pulled from inside until naught of the creature remains exposed any longer.";
		say "     Body trembling in the wake of abiding such a[if scalevalue of player < 4] substantial[else]n[end if] occupant, it doesn't seem inclined to depart or torment your further. Twisted powers that be, the snake is gradually integrated into you as it would a normal pregnancy, your bloated belly slowly shrinking to something more manageable[if snakeocc > 0]. From what you can guess, the additional 'passenger' has also set back your pregnancy by a little bit[end if]. [if snakedomm < 2]The cheeky serpent seems to have got[else]This cheeky serpent also managed to get[end if] it in its head that it could sap your vitality by hijacking your male womb, [if snakedomm < 2]regardless of the repercussions[else]even though such a deranged endeavor will doubtlessly rewrite its mind to assume it's your offspring[end if]!";
		say "     Eventually, [if HP of player > 0]you recover enough from the ordeal[else]the venom wears off[end if], allowing you to slowly get back to your feet, [if scalevalue of player < 4]overly bloated body making this a particularly difficult task[else if snakeocc > 0]forced to contend with your further exacerbated pregnancy[else]forced to contend with your new and significantly progressed pregnancy[end if], to say nothing of the your unsated lust in the wake of such treatment.";
		if snakeocc is 0:
			now snakehijack is 2;
			now mpreghijack is true;
			choose row monster from the table of random critters;
			impregnate with name entry;
			now gestation of child is 5;
			now snakeocc is 1;
		else:
			now gestation of child is 5;
			increase snakeocc by 1;
		now snakedomm is 2;
		increase libido of player by 5;
		if libido of player > 100, now libido of player is 100;
	else if (a random chance of 2 in 5 succeeds or (player is kinky and a random chance of 1 in 5 succeeds)) and inasituation is false:
		say "     Determining its prey as now defenseless, the serpent quickly winds its body around you, squeezing you with its coils. As it constricts you, it weakens you further by nipping and biting at you, seeping venom into your wounds. You grow warm and woozy, and strangely aroused. You start to moan as the snake's squeezing starts to feel more enjoyable and pleasing, so much so that you don't notice at first its mouth unhinging to open unnaturally wide as it prepares to satisfy a more literal hunger.";
		if scalevalue of player < 4: [man-sized or less]
			say "     It is not until the snake's head is down over yours, its tongue sliding across your cheek as it tastes its prey, that you realize your true predicament. But it feels so good, so warm and tingly, that you find it hard to focus on struggling at all. With your arms pinned to your sides and its coils crushing down on your limbs, there's little you can do to fight the inevitable.";
			say "     Its throat slides over your head, gulping down around you as it starts to pull you inwards. Those strong muscles slide over your shoulders as its mouth closes around your body, fangs biting into your rear, causing you to moan [if cocks of player > 1]as your cocks throb against the snake's palate[else if cocks of player is 1]as your cock throbs against the snake's palate[end if][if cocks of player > 0 and cunts of player > 0] [end if][if cunts of player > 0]while its tongue dives into your cunt, lapping up your juices[end if]. As the snake's esophagus continues its inexorable work of pulling you inwards, the squeezing and the warmth grow more intense until you finally cum before passing out. Full and well fed, the snake [if daytimer is day]stretches out in the warm sun[else]curls up under the night sky[end if] to rest and digest its meal.";
		else if scalevalue of player > 3: [large]
			say "     It is not until the snake's head is down over yours, mouth stretching wide to try and consume a creature larger than itself, that you realize your true predicament. But it feels so good, so warm and tingly, that you find it hard to focus on struggling at all. With your arms pinned to your sides and its coils crushing down on your limbs, you try to squirm, but the snake's got you too tightly and you are too weak from the venom to put up much more of a fight. Even with your added size, it has you as its prey and won't let you go.";
			say "     Its throat slides over your head, gulping down around you as it starts to pull you inwards. With a pop of its jaw dislocating entirely, those strong muscles slide over your shoulders as its mouth closes around your body, fangs biting into your rear, causing you to moan [if cocks of player > 1]as your cocks throb against the snake's palate[else if cocks of player is 1]as your cock throbs against the snake's palate[end if][if cocks of player > 0 and cunts of player > 0] [end if][if cunts of player > 0]while its tongue dives into your cunt, lapping up your juices[end if]. As the snake's esophagus continues its inexorable work of pulling your large mass inwards, the squeezing and the warmth grow more intense until you finally cum before passing out. Full and very well fed, the snake [if daytimer is day]stretches out in the warm sun[else]curls up under the night sky[end if] to rest and digest its oversized meal.";
		say "     You wake up some time later covered in clear, sticky goo. You are weak, emaciated and unsure how you ended up here or if you even want to know how you did. You stagger weakly to your feet, feeling very hungry and thirsty after your very draining experience as your nanites in your body try to speed your recovery.";
		increase thirst of player by 15;
		increase hunger of player by 10;
	else if cocks of player > 0 or cunts of player > 0:
		if breast size of player > 0: [Breast-particular Prelude]
			say "     Forked tongue meeting with your [if HP of player > 0]offered[else]vulnerable[end if], [bodydesc of player] form, its inquisitive caress teases one of your exposed, [breast size desc of player] breasts. Satisfied with what you might offer it, the serpent [if scalevalue of player > 4]partially [end if]entwines itself around you, [if scalevalue of player < 4]its heavy weight keeping you pinned to dissuade protest[else]it ensuring that you can't struggle against its endeavors[end if] -- not that you [if HP of player > 0]are of any immediate desire to do so[else]could even if you wanted to, given the venom's effect[end if] -- before its scaled lips meet your supple teat.";
			say "     Tainted body feeding the snake as it forcibly nurses from you, its grip on you tightens, inch by inch, as though it thinks it can do this to squeeze every last drop of your cream from you. Once finished with the first, he moves onto the second[if breasts of player > 2], repeating this ritual for all the others[end if], until there is naught you might offer it.";
			if (breast size of player / 2) * breasts of player > 10:
				say "     Given the sheer, substantive measure of milk you provision it with, the bloated creature eventually slumps off you, no doubt a fair bit dizzy with its contents. Having reaped its share, it slowly slithers off into the distance, content and off to find some rest. [if HP of player > 0]You eventually recover from the whole ordeal[else]The venom eventually wears off[end if], allowing you to get back to your feet and go about your business freely, a fair bit aroused and addled by the whole affair.";
				increase libido of player by 5;
				if libido of player > 100, now libido of player is 99;
			else:
				say "     Satisfied thought it might be from this particular offering, it doesn't seem quite finished with its[if HP of player > 0] willing[end if] victim just yet. Head shifting around you, its coils following suit, before you're met with that same forked tongue against your";
				snakecoresex;
		else:
			say "     Eyeing its [if HP of player > 0]potential offering[else]new victim[end if] up for a moment, the serpent [if scalevalue of player > 4]partially [end if]wraps around you, [if scalevalue of player < 4]its heavy weight keeping you pinned to dissuade protest[else]it ensuring that you can't struggle against its endeavors[end if] -- not that you [if HP of player > 0]are of any immediate desire to do so[else]could even if you wanted to, given the venom's effect[end if] -- before its curious, forked tongue tastes your ";
			snakecoresex;

to snakecoresex:
	if cocks of player > 0: [Always goes for male genitalia first]
		say "[cock size desc of player] dick[smn], [if breast size of player > 0]already quite hard after its prior ritual[else if HP of player > 0]inclined to oblige the beast's affection with your arousal[else]the beast's tainted infection having aroused you[end if]. Satisfied, and with almost no restraint, its abyssal maw envelopes ";
		if cock length of player < 21:
			say "[if cocks of player > 2]two of them[else if cocks of player is 2]both of them[else]the tool[end if] with little restraint or difficulty";
		else:
			say "[if cocks of player > 1]one of them[else]the tool[end if] with little restraint or difficulty";
		if (cocks of player is 2 and cock length of player > 14) or cock length of player > 18:
			say ", its elongated body visibly bulging to contain such a sizeable measure of flesh";
		say ".";
		say "     Tight, slick confines massaging your engulfed cock[if cock length of player < 21 and cocks of player > 1]s[end if], the serpent's grip tightens more and more around you, as if to try and squeeze you into bliss. Its prolonged, audibly wet endeavors [if libido of player > 20]quickly[else]eventually[end if] forces you to cry out, constrained tool[if cock length of player < 21 and cocks of player > 1]s[end if] spurting gouts of [if cock length of player < 21 and cocks of player > 1]their[else]its[end if] [cum load size of player] load into its slick, voracious maw";
		if (cocks of player > 1 and cock length of player > 20) or cocks of player > 2:
			say ", scaled frame stained with the seed of ";
			if cocks of player > 1 and cock length of player > 20:
				say "its exposed brother[if cocks of player > 2]s[end if]";
			else:
				 say "their exposed brother[if cocks of player > 3]s[end if]";
		if cock width of player > 19:
			say ". Very quickly, the beast visibly bloats to contain your load, each successive jism flooding its depths more and more, until it can abide not a drop more.";
		else:
			say ". The beast seems to have no issue contending with your offering, greedily milking you of every last drop offered.";
		if cock width of player < 12 and breast size of player is 0:
			WaitLineBreak;
			say "     However, it doesn't seem inclined to relent, and in mere seconds following your climax its elastic gullet begins to massage your beleaguered dick[if cock length of player < 20 and cocks of player > 1]s[end if] once more. Clearly, the snake wasn't satisfied with your offering, and after several long minutes of being subjected to its[if HP of player < 1] imposed[end if] influence you're forced to orgasm a second time.";
		say "     Satisfied, the serpent [if cock width of player < 12 and breast size of player is 0] finally[end if] frees itself of you, leaving you an exhausted and[if cock width of player < 12 and breast size of player is 0] significantly[end if] spent mess";
		if cock width of player > 19:
			say ". Given the way the creature dizzily departs, substantially bloated, it's clear its hunger will be sated for a good while";
		say ". Eventually, [if HP of player > 0]you recover from the whole ordeal[else]the venom wears off[end if], allowing you to get back to your feet and go about your business freely[if HP of player < 1], no doubt a bit addled by the whole ordeal[end if].";
	else if cunts of player > 0:
		say "[cunt size desc of player] cunt[sfn], [if breast size of player > 0]already quite aroused after its prior ritual[else if HP of player > 0]quickly made dripping and eager by the beast's affection[else]the beast's tainted infection leaving you dripping and eager[end if]. Satisfied, and with almost no restrain, it forces its slender head past the supple folds of [if cunts of player > 1]one of your pussies[else]your pussy[end if][if cunt length of player < 13], its substantial girth stretching you to your limits[end if]. Coiling slightly around you, [if scalevalue of player < 4]its heavy weight keeps you pinned to prevent you from struggling[else]it ensures that you can't struggle against its endeavor[end if][if HP of player > 0], not that you have presented yourself in such a manner to give that sort of impression[end if].";
		say "     Its relentless, writhing endeavor to thrust its thick, scaled body in and out of your depths, the serpent's grip tightens more and more around you, as if to try and squeeze you into bliss. Its prolonged endeavors [if libido of player > 20]quickly[else]eventually[end if] forcing you cry out. As your stuffed portal tightens around the creature, its movements become quicker and more erratic, the sensation of its tongue felt flicking along your beleaguered passage as it feeds on your emergent sexual fluids.";
		if breast size of player is 0:
			WaitLineBreak;
			say "     However, it doesn't seem inclined to relent, and in mere seconds following your release its slender frame assails your beleaguered cunt once more. Clearly, the snake wasn't satisfied with your offering, and after several long minutes of being subjected to its[if HP of player < 1] imposed[end if] influence you're forced to orgasm a second time.";
		say "     Satisfied, the serpent [if breast size of player is 0] finally[end if] frees itself of you, leaving you an exhausted and[if breast size of player is 0] significantly[end if] spent mess. [if HP of player > 0]You eventually recover from the whole ordeal[else]The venom eventually wears off[end if], allowing you to get back to your feet and go about your business freely[if HP of player < 1], no doubt a bit addled by the whole ordeal[end if].";
	else: [Note, this fallback is for neuters; if we implement a Vore Adjustment System and we need something to give neuters when they receive no vore content.]
		say "     The two-tone snake winds its body around yours, squeezing and constricting. It nips and bites at you, seeping venom into your wounds. You grow warm and woozy, and strangely aroused. You start to moan as the snake's squeezing starts to feel more enjoyable and pleasing, though it's hard to say if it is squeezing you less or your perception of those clenching coils has changed. As the venom continues to excite you, you cum hard before the serpent releases you and slithers away.";
		increase libido of player by 5;
		if libido of player > 100, now libido of player is 99;
	if snakedomm is 0, now snakedomm is 1;

to theserpentchecks: [Invocation of validation for TBM scene]
	if cunts of player > 0 or (scalevalue of player > 2 or player is twistcapped): [Quantify Capacity]
		now snakecap is 1;
		if scalevalue of player > 2:
			increase snakecap by 1;
		if scalevalue of player > 3:
			increase snakecap by 1;
		if scalevalue of player > 4:
			increase snakecap by 1;
	else:
		now snakecap is 0;
	if snakecap > snakeocc: [Quantify Roll Chance]
		now tempnum is 3;
		if player is kinky, increase tempnum by 1;
		increase tempnum by snakeocc;
	else:
		now tempnum is 0;
	if "Touched by Madness" is listed in feats of player and (player is fem_vacant or snakeocc > 0) and cunts of player > 0 and a random chance of tempnum in 10 succeeds and snakehijacktimer - turns >= 16:
		now fsnakevalid is true;
		now msnakevalid is false;
	else if "Touched by Madness" is listed in feats of player and (player is male_vacant or snakeocc > 0) and cunts of player is 0 and "MPreg" is listed in feats of player and a random chance of tempnum in 10 succeeds and snakehijacktimer - turns >= 16:
		now msnakevalid is true;
		now fsnakevalid is false;
	else:
		now fsnakevalid is false;
		now msnakevalid is false;

to say beatthesnake:
	if snakesubm is 0:
		say "     The snake's down for the count, too weak to contend your will.";
		say "     [bold type] It's a curious thing, should you inspect it more closely?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			say "     Curiously fondling around it, the serpent can only hiss in impotent protest. After a fair bit of examination, it would appear that the creature is completely genderless! Strange that you encounter a beast such as this... You imagine it can only satisfy you orally, but given the way it regards you -- even after it's apparent to it that you're the stronger one here -- it's clear that it won't oblige such a task. Satisfied with your little investigation, you choose to depart, since there's nothing more the serpent can offer you.";
		else:
			LineBreak;
			say "     You choose against such an act. Clearly, even if the serpent had anything to offer you, its persisting protests dissuade from such an endeavor.";
		now snakesubm is 1;
	else:
		say "     Beaten, the snake pulls away, tail twisting into a corkscrew so that its rich orange underside might mesh together as a warning sign, not that it's in a position to be of any further threat to you. Leaving it at that, the snake retreats fully, hissing in departure.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Snake";
	now attack entry is "The [one of]snake winds itself around your leg, squeezing as it tries to scale your body[or]ring-necked snake snaps at your arm as you try to attack it[or]ringneck hisses and snaps at your leg![or]As you attack, the snake whips its tail around your arms and latches on, squeezing them powerfully[at random]!";
	now defeated entry is "[beatthesnake]";
	now victory entry is "[losetosnake]";
	now desc entry is "[snakedesc]";
	now face entry is "now a snake's head, with beady eyes and a forked tongue slipping from your jaws to sniff the air";
	now body entry is "a strange mix of man and serpent, having a slender, flexible body capable of slithering across the ground, but you still retain your arms and legs. They are slender and flexible as well, ending in clawed digits. You have a slit which automatically conceals your genitals when you begin to slither, but leaves them out and exposed otherwise";
	now skin entry is "smooth, silver-gray scales across your back and sides. Your chest and inner thighs are a bright, caution-yellow with droplets of black bleeding into the colorful, scaly";
	now tail entry is "You have a long, snake's tail extending from your hips. It has silvery scales with a bright orange underside. When you are frightened or aggressive, it curls tightly and flashes the bright underside in warning.";
	now cock entry is "[one of]hemipenis[or]serpentine[at random]";
	now face change entry is "your head flattens and gains an extended jaw. Your ears disappear down to small holes and your eyes move to the sides of your serpent head to form beady, black orbs. There is a band of bright color around your neck and on the underside of your jaw";
	now body change entry is "your spine pops repeatedly, extending and growing at it becomes more flexible. As your body becomes more serpentine, you retain your limbs, but they become slender and flexible as well. You are able to tuck against your sides to allow your snake body to slither across the ground or walk, as you prefer at any moment. Your hands and feet gain sharp claws at the end of their digits";
	now skin change entry is "it is shed from your body, sliding off of you like a snake's skin, revealing scaly hide underneath. Your new skin is silver in color, with a bright patch of yellow from your jaw down to your inner thighs"; [ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your hips shift and pop, your ass almost disappearing away as a long snake tail extends in its place";
	now cock change entry is "your shaft becomes slick and pointed, much akin to that of a snake or lizard";
	now str entry is 8;
	now dex entry is 18;
	now sta entry is 10;
	now per entry is 15;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "nochange"; [ Invalid sex entry value, resulting in no changes to gender ]
	now HP entry is 20; [ The monster's starting HP. ]
	now lev entry is 2; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5; [ Monster's average damage when attacking. ]
	now area entry is "Plains"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 2; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 6; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 4; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 0; [ Number of breasts the infection will give a player. ]
	now breast size entry is 0; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 6; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 4; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]flexible[or]slender[or]serpentine[at random]";
	now type entry is "[one of]reptilian[or]serpentine[or]snake-like[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "snakenaga"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"snakenaga"	retaliation rule	snakebiteinc rule	--	snakebite rule	20	bearhug rule	20	--	--	--

this is the snakebiteinc rule:
	choose row monstercom from the table of critter combat;
	if playerpoison is 0 or a random chance of 2 in 3 succeeds:		[slower increase if already bitten]
		increase alt1chance entry by a random number between 1 and 4;
	if alt1chance entry > 40, now alt1chance entry is 40;

this is the snakebite rule:
	choose row monster from the table of random critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 75 ); [+33% damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
	if playerpoison is 0:
		increase playerpoison by 3 + ( lev entry / 5 );
		decrease plhitbonus by 2;
	else:
		increase playerpoison by 1 + ( lev entry / 10 );
		if playerpoison < ( 2 + ( lev entry / 5 ) ), now playerpoison is 2 + ( lev entry / 5 );
	say "The [one of][name entry][or]serpent[or]snake creature[or]monstrous snake[or]reptilian creature[as decreasingly likely outcomes] manages a solid bite on your [one of]arm[or]leg[or]side[or]thigh[or]hip[at random], sinking its fangs deeply into your flesh. The wound burns with pain and your vision blurs, warning you of the venom coursing through your system. You'll need to hope your nanites can purge the poison from your system or you're able to defeat your foe so you can treat the wound properly. You take [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[bodyabsorbancy]"; [attack directed to body of player]
	if absorb > dam:
		now absorb is dam;
	if absorb > 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease HP of the player by dam;
	increase HP of player by absorb;
	follow the player injury rule;
	say "You are [descr].";
	choose row monstercom from the table of critter combat;
	now alt1chance entry is 12;


Section 4 - Endings

when play ends:
	if bodyname of player is "Snake":
		if humanity of player < 10:
			say "     As your serpent instincts take over as your humanity fades away, you travel back to the grassy plains at the edge of the city. There you set up a nest in a burrow you made among the cluster of trees. There a many of the enlarged snakes around and they make fine lovers when you cannot capture larger prey to sate your lusts before sating your hunger";
			if facename of player is "Snake":
				say ". Your venom is quite powerful and arousing, getting your victims so aroused they cannot help but mate you vigorously before you finish them off";
			if cocks of player > 0:
				say ". You do release a few of the females and herms after properly fucking them, somehow knowing they'll grow full of large eggs which will hatch into new snakes";
			if cunts of player > 0 and "Sterile" is not listed in feats of player:
				say ". Your temporary lovers fill you with their seed, filling you with clutches of eggs which will hatch and grow into more enlarged serpents";
			say ".";
		else:
			if facename of player is "Snake" and skinname of player is "Snake" and tailname of player is "Snake" and cockname of player is "Snake":
				say "     The military rescue gets you out of the infected city and back to civilization. But you don't suit civilization very well anymore. You manage to get a job at large firm which specializes at buying out smaller companies and selling them off. You particularly enjoy the idea of you capturing and then crushing each like smaller prey. While this makes you quite successful at your job, you make few friends.";
				say "     Outside of work, your predatory nature makes you lustful and aggressive. You often travel the night streets in search of prey to slake your wild lusts upon. Your arousing venom quickly gets them so horny that they willingly mate with you lustfully before you finally leave them there in a daze from your venom and the afterglow. Your bite is very effective and your lovemaking so effective that you never hear word of any of them ever reporting the event or considering pressing charges at all[if cocks of player > 0], even those who grow full with eggs[end if], as a shady detective you hire informs you";
				if cunts of player > 0 and "Sterile" is not listed in feats of player:
					say ". You gain a few clutches of eggs from these nocturnal lovers you pick. Much like snakes in the wild, you feel no affection for these young serpents and ship them off to boarding schools at a very young age";
				say ".";
			else:
				say "     The military rescue gets you out of the infected city, but not unchanged. Having partially become a snake, you don't fit in well and have trouble finding a place for yourself. Buying out a small pawn shop, you do fairly well. Your strange appearance is helpful when dealing with some of your shadier customers, for you are not at all above fencing their [']found['] items for a small cut. As well, being infected, you are a natural person for other infected people to deal with, and with raided items from the infected city providing a good source of cheap wares, you are able to make a good living.";

Snake For FS ends here.
