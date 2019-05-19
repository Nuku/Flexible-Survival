Version 1 of Herm Dolphin by Hellerhound begins here.
[Version 1.1 - Alt attack tweaked - Stripes]

"Adds a dolphin to Flexible Survival's Wandering Monsters table, with impreg chance"

when play begins:
	add {"Hermaphrodite Dolphin"} to infections of furry;
	add {"Hermaphrodite Dolphin"} to infections of hermaphrodite;

Section 1 - Creature Responses

dolphindefeat is a number that varies.
dolphinconsent is a number that varies.
dolphinwantmate is a number that varies.
dolphintricked is a number that varies.

to say Dolphin wins:
	say "'Weak little thing, how could you attempt to beat me?' she whispers, rolling your weakened body over and spreading your legs. You struggle but fail to free yourself from her grasp. ";
	if dolphinwantmate is 0 or dolphinwantmate is -1:
		say "[bold type]Though with a few little changes, you could be my mate?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Agree to be the dolphin's mate.";
		say "     ([link]N[as]n[end link]) - Reject the dolphin, even if it might make her angry.";
		if Player consents:
			now dolphinwantmate is 1;
		else:
			say "She seems put off by your denial and screams, 'You will be brought down'";
			decrease dolphinwantmate by 1;
	else if dolphinwantmate is -2:
		say "She grabs you harshly, fingers biting into your skin, drawing blood. She then flips you over so hard that your head spins. She then reaches into her top slit, dragging her cock out with her hand, and strokes it hard against your back. She then bends back and slams forward, ripping open your ass. You pass out from the pain.";
		say "When you are conscious again, it seems that the nanites have repaired the damage to your body, but there is still piss floating out of your ass, along with clumps of blood. You can't be her mate any longer. It looks like she is still too pissed to even think in that direction.";
		decrease HP of Player by 40;
	say "She strokes your entire body, beginning at your head, and moves slowly down your body. The changes begin in the wake of her flipper-like hands.";
	infect "Hermaphrodite Dolphin";
	LineBreak;
	now dolphinconsent is 0;
	say "[dolphin fuck]";

To say Dolphin loses:
	say "You hit the blue dolphinoid human over the head with a final blow, and she floats in the water, unmoving. From here, however, you can see that she has at least three slits, and it looks like she wants you to take her. ";
	if Libido of Player < 40 and "Dominant" is not listed in feats of Player:
		say "You do not have the desire to mate with her though, so you leave her there.";
	else if dolphintricked < 2:
		say "[bold type]Do you want to have your way with the creature?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Have some fun with the dolphin.";
		say "     ([link]N[as]n[end link]) - Leave the dolphin be.";
		if Player consents:
			now dolphinconsent is 1;
			say "You uncover yourself and swim closer.";
			WaitLineBreak;
			say "Closer";
			WaitLineBreak;
			say "[bold type] AND closer[roman type]";
			WaitLineBreak;
			say "She then whips her body up and sprays you with a different bunch of clicks, totally stunning your body. 'Now it is my turn to play with you...' she mutters.";
			say "[dolphin fuck]";
		else:
			say "You decide against exploiting this opportunity, leaving the creature as she is.";
		increase dolphintricked by 1;
	else:
		increase dolphintricked by 1;
		say "You are tempted by the sight of the prone dolphin, but you are wise to their tricks, so you manage to hold yourself back. Leaving it before it can make its final, sonic strike, you head off in search of another means to quell your raging hormones.";

to say dolphin fuck:
	if Player is female: [prefer male action]
		say "The dolphin places her large, pink cock at your waiting entrance and rubs it back and forth, without touching it. You are horrified and fascinated by it. ";
		if scalevalue of Player > 3:
			say "She eagerly slams her cock into your cunt. In spite of her larger girth, your higher body size is more than enough to take her on, and she seems pleased by this. At least, at first. She continues to ram your eager hole. You can feel her prehensile member worming around in the depths of your cunt, but even this impressive rod can only barely fill your expansive hole. Up to her hilt, she can only just barely tickle your cervix. She seems a little surprised by this, suggesting that she might not be used to handling a beast of your magnitude. 'I should be - unf - enjoying this. It's - urgh - rare for someone - Ah! - to handle me so well...' she trails off. You get the impression that while she is certainly enjoying the ride, she's likely used to the 'challenge' of far less accommodating females.";
			say "Regardless, her assault on your hole reaches a fever pitch, and it's not long before she lets out a chittering scream in climax, unloading her cum into your womb[impregchance]. You feel her passionate fluids flood the depths of your cunt, though her equally expansive load only manages to distend your belly ever slightly. Even her afterglow seems ruined by how well you can handle her release. She's quick to yank her rod from your snatch and tends to you and her potential offspring only briefly before departing.";
			continue the action;
		if Cunt Tightness of Player < 6:
			say "She shoves her cock into you, more coming out of her top slit, but it is unable to go further than the tapered head. She looks at you with horror. 'Your cunt can't be that tight. Let's fix it.' She starts slamming her pointed cock into your small pussy, widening it by a bunch every smash, at the expense of your pleasure. Your mind is so full of pain that you are having trouble staying conscious, and as she finally manages to slam inside of you, you feel a twinge as the nanites 'fix' your cunt. ";
			now Cunt Tightness of Player is 6;
		else if Cunt Tightness of Player < 8:
			say "She shoves her cock head into you, but it is rough going, giving you much pleasure as she moans and groans. She continues to shove, turn, and wriggle the beginning of her large member inside of you. ";
			increase Cunt Tightness of Player by 1;
		else:
			say "Her cock head slides into your lubricated tunnel with ease, and she prepares to pump the rest into you. ";
		if Cunt Depth of Player < 10:[won't go in far, must extend you]
			say "She slams her cock into you with a cry of success, but it is cut off as she realizes that she can't go halfway inside. She thinks for a moment, her member stimulating your pussy as it wriggles. 'I am going to have to lengthen your cunt, small one. It may hurt.' She begins to slam her cock into you and grunts when it smashes open your cervix. ";
			if the humanity of Player < 60:
				say "You wince and hope that your infected body can repair the damage she, no, it, is doing so that you may have children.";
			else:
				say "You wince and hope that the damage can be fixed if you wish not to miscarry.";
			increase Cunt Depth of Player by 3;
		if Cunt Depth of Player < 10:[god, still too small]
			say "She pulls out of you, looking saddened. You are too small still. You will have to come back again later.";
		else if Cunt Depth of Player < 24:[won't go in far enough, will pry open womb for more space]
			say "She then slams her overly long member into the wall of your womb, stretching your womb and pussy as deep as they can go, and further. The pain mixes with the pleasure of her inside of you, bringing you to climax as she keeps fucking. ";
			increase Cunt Depth of Player by 2;
			if Cunt Depth of Player < 14:
				say "She then pulls out of you, and you look at her, disappointed. You were halfway to another orgasm. She tells you, 'You are still too small. I will have to 'fix' you later as well. Anymore stretching, and you will rip. Since I need to do more, you can't have my child. She then blows her load all over your front, the thick cum spraying through the water as if in slow motion, landing and sticking to you.";
			else:
				say "She then moans and slams extra hard, as she manages to fit the rest of her member inside by doubling back and forming a ring in your womb. Her gargantuan cock seems to be making a huge, ring-shaped bulge in your belly, visible from the outside, as she begins to orgasm. She lets out a chittering scream as she cums hard inside of you, stunning you and leaving you floating in the water. You can only watch, unreasoningly, as your belly gets bigger and bigger until you look positively bloated. A little while and expansion later, she begins to remove her cock with much wriggling and squirming to watch the cum inside of you get forced out into a cloud in the water once your entrance is clear.";
				say "[impregchance]";
		else:[cunt is finally big enough]
			say "She shrieks with joy, 'Your pussy is finally big enough for me. I bet that took a lot of doing.' She then proceeds to push deeper, slowly wriggling and twisting her prehensile member into your wet cunt. She bottoms out before she can get to your cervix, and looks relieved. 'I am so big, none of the others in my pod can totally cover me without assistance, but you...' she says, awed and relieved. She begins to wriggle her cock, pulling in and out and forming rings inside of you, causing immense pleasure. As you start humping back, she screams in climax, the sound carrying you to yours. After what seems like hours of her filling you, she begins to pull out, cum flowing around her now-shrinking cock out of your cunt and into the water.[impregchance]";
	else if "Male Preferred" is not listed in feats of Player:[do female next]
		say "She looks at your male genitals, surprised. 'Why not a girl?' she mutters, and kisses the base of your cock. Maybe next time you will be ready for me. Make sure to be nice and large!";
		if "Microwaved" is listed in feats of Player:
			say "WARNING: Sex shifting nanites detected! Allow?";
			if Player consents:
				say "Ok.";
				say "Your genitals feel odd as a cunt grows out of the base of your body, growing deeper and wider by the second.";
				increase Cunt Count of Player by 1;
				increase Cunt Depth of Player by 6;
				increase Cunt Tightness of Player by 4;
			else:
				say "You wave a tiny microwave transmitter over the affected area. Ahhh, all clean!";
		else:
			say "Your genitals feel odd as a cunt grows out of the base of your body, growing deeper and wider by the second.";
			increase Cunt Count of Player by 1;
			increase Cunt Depth of Player by 6;
			increase Cunt Tightness of Player by 4;
	else:
		say "The dolphin places her large, pink cock at your waiting entrance and rubs it back and forth, without touching it. You are horrified and fascinated by it. ";
		if scalevalue of Player is 1:
			say "She shoves her cock into your ass, more coming out of her top slit, but it is unable to go further than the tapered head. She briefly looks at you with horror before realizing the obvious. You're way too small! 'I think we should wait until you're in a form suited for a lady of my... [']needs.[']' And with that, she departs, dejected and disappointed.";
		else if scalevalue of Player is 2:
			say "She slams her cock into your ass rather carelessly, but her endeavors are cut off when she realizes that she can't go any more than halfway inside. She, rather rashly, continues to ram you in vain as it just won't go any deeper. She thinks for a moment, but it doesn't take her long to figure out what the problem is. She tells you, 'I'm afraid that you need to a much larger form to be able to take me, small one.' She then disengages from you, leaving you to your own devices for the time being.";
		else if scalevalue of Player is 3:
			say "She slams her cock into your ass rather carelessly, her overlarge tool squeezing through your tight confines. It's clearly much too large for you, but that doesn't stop her from making a mess of your intestines. Her prehensile member worms its way into the depths of your bowels. A victim of this creature's ungodly length, you soon feel her malehood's intrusion invade your stomach where it relents, and you fear that if she were any longer, she could rightly impale you with her dick. She continues to thoroughly fuck you brains out, slamming your ass with dogged determination. You can visibly see the length of her rod bulge from your belly as she soon begins to orgasm.";
			say "She lets out a chittering scream as she cums hard inside of you, stunning you and leaving you floating in the water. You can only watch, unreasoningly, as your belly gets bigger and bigger until you look positively bloated. A little while and expansion later, she begins to remove her cock with much wriggling and squirming to watch the cum inside of you get forced out into a cloud in the water once your entrance is clear.[impregchance] She then departs from you, clearly satisfied with her work on your poor soul, leaving you to float in the water, a mess of a person.";
		else:
			say "She eagerly slams her cock into your ass. In spite of her larger girth, your higher body size is more than enough to take her on, and she seems pleased by this. At least, at first. Her prehensile member worms its way into the depths of your bowels, but even this sizeable intruder can only wander so far into your labyrinth of flesh. She seems a little surprised by this, suggesting that she might not be used to handling a beast of your magnitude. You get the impression that she might be a little disappointed by this as well, perhaps used to the 'challenge' of contending with much smaller victims. Regardless, she continues fervently ramming you with her impressive dick. It's not long before she lets out a chittering scream in climax, unloading her cum into you. You feel her passionate fluids flood your inner depths, though her equally impressive load only manages to distend your belly ever slightly. Even her afterglow seems ruined by how well you can handle her release, and rather unceremoniously, she pulls her length from you in brisk departure.[impregchance]";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Hermaphrodite Dolphin"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The dolphin takes her fist and punches you with her immense strength."; [Text used when the monster makes an Attack]
	now defeated entry is "[Dolphin loses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[Dolphin wins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[mongendernum 5]As you [if the location of the player is not Public Beach]swim along[else]walk on the beach[end if], you see a dark shadow following your progress. You move towards it, and a dolphin-like human shoots out of the gloom, saying 'Another for my pod! Yes!'"; [ Description of the creature when you encounter it.]
	now face entry is "long dolphin snout";
	now body entry is "silvery with a blue back. A dorsal fin sits on top, and strong muscles contract underneath the surface"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]wet, glistening[or]smooth, silver[or]thick, blubbered[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a tail that fattens out horizontally at the end, much like a dolphin's. However, it is only half as thick, and the ends are not rounded. It is covered in [Skin of Player] flesh and sways behind you with every step."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]tentacle-like[or]prehensile[or]pink[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "blubber forms. It twists and reforms into the snout of a dolphin. Your hair retracts and disappears, leaving a hole in its place"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you swell with the appearance of muscles under your flesh, and a nice-looking dorsal fin sprouts out of your back"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "your flesh becomes tougher and thicker, yet somehow still supple and soft as blubber forms, and it turns gray and silver"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your legs feel odd as they seem to change in shape. Your ass pinches with pain as it extends into what looks like the top-half of a dolphin tail. The rest appears to be your legs. You could place all three of your appendages together to make what looks to be a dolphin's tail"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it twists and writhes in a strange dance, growing longer and pinker as the top tapers off. Your balls grow as they are absorbed into your body, and a slit forms as your cock withdraws as well. Your anus also moves forward as your ass cheeks disappear, forming a second slit below the first"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 23;
	now dex entry is 26;
	now sta entry is 24;
	now per entry is 22;
	now int entry is 20;
	now cha entry is 19;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 100;
	now lev entry is 10; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12; [Amount of Damage monster Does when attacking.][altered for dolphin so that it does different dmg for each attack]
	now area entry is "Beach"; [ Current options are 'Outside' and 'Mall', "High", "Beach", "Red", "Labs"  Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 24; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 2; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 28; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 10; [ Width of female sex infection will try and give you ]
	now libido entry is 40; [ Amount player Libido will go up if defeated ]
	now loot entry is "dolphin milk";
	now lootchance entry is 75; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]aquatic[or]strong[at random]";
	now type entry is "[one of]cetacean[or]dolphin-like[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hdol"; [ Alternate critter combat row to follow, "default" or "" for standard ]
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



Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"hdol"	retaliation rule	dolattack rule	--	--	--	--	--	--	--	--

this is the dolattack rule:		[possible sonic attack and sets upcoming strike]
	choose row MonsterID from Table of Random Critters;
	if a random chance of 1 in 6 succeeds:
		say "The dolphin lets off a really loud pulse of high-pitched clicks which weakens you ([ ( 6 + lev entry ) / 2 ] dmg) and stuns you just long enough for her to attack again.";
		decrease HP of Player by ( ( 6 + lev entry ) / 2 );
	now tempnum is a random number between 1 and 5; [picks one of the attacks]
	if tempnum is 1:
		now attack entry is "The dolphin bites your hand with her sharp, little teeth. It hurts!";
		now wdam entry is 8;
	else if tempnum is 2:
		now attack entry is "The dolphin puts her feet together into what resembles a dolphin's tail and whacks you over the head.";
		now wdam entry is 18;
	else if tempnum is 3:
		now attack entry is "The dolphin headbutts you in the stomach, causing bubbles to rise from your mouth.";
		now wdam entry is 6;
	else if tempnum is 4:
		now attack entry is "The dolphin takes her fist and punches you with her immense strength.";
		now wdam entry is 12;
	else if tempnum is 5:
		now attack entry is "The dolphin takes her small breasts and shoves your face into them roughly. You struggle, and she slams you harder before you manage to escape.";
		now wdam entry is 14;
	else if tempnum is 6:		[was closed in the original version, left closed]
		if Player is male:
			now attack entry is "The dolphin darts down to your nethers, grabs your cock, and TWISTS IT OMG THAT HURT!";
			now wdam entry is 18;
		else if Player is female:
			now attack entry is "The dolphin darts down to your nethers and chomps on your clit. YOWCH.";
			now wdam entry is 10;
		else:
			now attack entry is "The dolphin darts down to your nethers and is shocked to see nothing there. She bites you anyway.";
			now wdam entry is 4;


when play ends:
	if BodyName of Player is "Hermaphrodite Dolphin":
		if humanity of Player < 10:
			say "Your mind snaps with the pressure of the idea of joining the pod. You go feral and join the pod of dolphinoids that lives near your city, occasionally venturing to the southern waters to mate with other pods.";
		else:
			say "You find yourself visiting the beach more often over the days, swimming in the waves with your changed form.";
			if dolphinwantmate is -1:
				say "One day, the pod of dolphins surfaces around you, and being uncleaned by the nanite masters in the human network, they proceed to change you into one of them and maim you intensely.";
				dolphinify;
				dolphinify;
				dolphinify;
				dolphinify;
				say "You spend a long time in the hospital, but eventually you emerge, scarred, but alive.";
			else:
				say "You spend some time at the end of each swim looking for the one that changed you, eager to bring her back as your mate. One day, you find her and entice her to remain with you. She becomes your lifelong mate, and you bear each other many dolphinoid children.";


to dolphinify:
	repeat with y running from 1 to number of rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Hermaphrodite Dolphin":
			now MonsterID is y;
			break;
	infect;

Table of Game Objects (continued)
name	desc	weight	object
"dolphin milk"	"Thick and nutritious milk from a dolphinoid."	1	dolphin milk


dolphin milk is a grab object. It is a part of the player. It is milky. Understand "milk" as dolphin milk. dolphin milk is infectious. The strain of dolphin milk is "Hermaphrodite Dolphin". The purified of dolphin milk is "distilled milk".

the scent of dolphin milk is "The dolphin milk smells like milk with an odd, fishy scent mixed in.".

Herm Dolphin ends here.
