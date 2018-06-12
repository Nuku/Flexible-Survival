Version 1 of Herm Dolphin by Hellerhound begins here.
[Version 1.1 - Alt attack tweaked - Stripes]

"Adds a dolphin to Flexible Survival's Wandering Monsters table, With Impreg chance"

when play begins:
	add {"Hermaphrodite Dolphin"} to infections of furry;
	add {"Hermaphrodite Dolphin"} to infections of hermaphrodite;

Section 1 - Monster Responses

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
		if the player consents:
			now dolphinwantmate is 1;
		else:
			say "She seems put off by your denial and screams, 'You will be brought down'";
			decrease dolphinwantmate by 1;
	else if dolphinwantmate is -2:
		say "She grabs you harshly, fingers biting into your skin, drawing blood. She then flips you over so hard that your head spins. She then reaches into her top slit, dragging her cock out with her hand, and strokes it hard against you back. She then bends back and slams forward, ripping open your ass. You pass out from the pain.";
		say "When you are conscious again, it seems that the nanites have repaired the damage to your body, but there is still piss floating out of your ass, along with clumps of blood. You can't be her mate any longer. It looks like she is still too pissed to even think in that direction.";
		decrease HP of player by 40;
	say "She strokes your entire body, beginning at your head, and moves slowly down your body. The changes begin in the wake of her flipper-like hands.";
	infect "Hermaphrodite Dolphin";
	LineBreak;
	now dolphinconsent is 0;
	say "[dolphin fuck]";

To say Dolphin loses:
	say "You hit the blue dolphinoid human over the head with a final blow, and she floats in the water, unmoving. From here, however, you can see that she has at least three slits, and it looks like she wants you to take her. ";
	if libido of player < 40 and "Dominant" is not listed in feats of player:
		say "You do not have the desire to mate with her though, so you leave her there.";
	else if dolphintricked < 2:
		say "[bold type]Do you want to have your way with the creature?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Have some fun with the dolphin.";
		say "     ([link]N[as]n[end link]) - Leave the dolphin be.";
		if player consents:
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
	if player is female: [prefer male action]
		say "The dolphin places her large, pink cock at your waiting entrance and rubs it back and forth, without touching it. You are horrified and fascinated by it. ";
		if scalevalue of player > 3:
			say "She eagerly slams her cock into your cunt. In spite of her larger girth, your higher body size is more than enough to take her on, and she seems pleased by this. At least, at first. She continues to ram your eager hole. You can feel her prehensile member worming around in the depths of your cunt, but even this impressive rod can only barely fill your expansive hole. Up to her hilt, she can only just barely tickle your cervix. She seems a little surprised by this, suggesting that she might not be used to handling a beast of your magnitude. 'I should be - unf - enjoying this. It's - urgh - rare for someone - Ah! - to handle me so well...' she trails off. You get the impression that while she is certainly enjoying the ride, she's likely used to the 'challenge' of far less accommodating females.";
			say "Regardless, her assault on your hole reaches a fever pitch, and it's not long before she lets out a chittering scream in climax, unloading her cum into your womb[impregchance]. You feel her passionate fluids flood the depths of your cunt, though her equally expansive load only manages to distend your belly ever slightly. Even her afterglow seems ruined by how well you can handle her release. She's quick to yank her rod from your snatch and tends to you and her potential offspring only briefly before departing.";
			continue the action;
		if cunt width of player < 6:
			say "She shoves her cock into you, more coming out of her top slit, but it is unable to go further than the tapered head. She looks at you with horror. 'Your cunt can't be that tight. Let's fix it.' She starts slamming her pointed cock into your small pussy, widening it by a bunch every smash, at the expense of your pleasure. Your mind is so full of pain that you are having trouble staying conscious, and as she finally manages to slam inside of you, you feel a twinge as the nanites 'fix' your cunt. ";
			now cunt width of player is 6;
		else if cunt width of player < 8:
			say "She shoves her cock head into you, but it is rough going, giving you much pleasure as she moans and groans. She continues to shove, turn, and wriggle the beginning of her large member inside of you. ";
			increase cunt width of player by 1;
		else:
			say "Her cock head slides into your lubricated tunnel with ease, and she prepares to pump the rest into you. ";
		if cunt length of player < 10:[won't go in far, must extend you]
			say "She slams her cock into you with a cry of success, but it is cut off as she realizes that she can't go halfway inside. She thinks for a moment, her member stimulating your pussy as it wriggles. 'I am going to have to lengthen your cunt, small one. It may hurt.' She begins to slam her cock into you and grunts when it smashes open your cervix. ";
			if the humanity of player < 60:
				say "You wince and hope that your infected body can repair the damage she, no, it, is doing so that you may have children.";
			else:
				say "You wince and hope that the damage can be fixed if you wish not to miscarry.";
			increase cunt length of player by 3;
		if cunt length of player < 10:[god, still too small]
			say "She pulls out of you, looking saddened. You are too small still. You will have to come back again later.";
		else if cunt length of player < 24:[won't go in far enough, will pry open womb for more space]
			say "She then slams her overly long member into the wall of your womb, stretching your womb and pussy as deep as they can go, and further. The pain mixes with the pleasure of her inside of you, bringing you to climax as she keeps fucking. ";
			increase cunt length of player by 2;
			if cunt length of player < 14:
				say "She then pulls out of you, and you look at her, disappointed. You were halfway to another orgasm. She tells you, 'You are still too small. I will have to 'fix' you later as well. Anymore stretching, and you will rip. Since I need to do more, you can't have my child. She then blows her load all over your front, the thick cum spraying through the water as if in slow motion, landing and sticking to you.";
			else:
				say "She then moans and slams extra hard, as she manages to fit the rest of her member inside by doubling back and forming a ring in your womb. Her gargantuan cock seems to be making a huge, ring-shaped bulge in your belly, visible from the outside, as she begins to orgasm. She lets out a chittering scream as she cums hard inside of you, stunning you and leaving you floating in the water. You can only watch, unreasoningly, as your belly gets bigger and bigger until you look positively bloated. A little while and expansion later, she begins to remove her cock with much wriggling and squirming to watch the cum inside of you get forced out into a cloud in the water once your entrance is clear.";
				say "[impregchance]";
		else:[cunt is finally big enough]
			say "She shrieks with joy, 'Your pussy is finally big enough for me. I bet that took a lot of doing.' She then proceeds to push deeper, slowly wriggling and twisting her prehensile member into your wet cunt. She bottoms out before she can get to your cervix, and looks relieved. 'I am so big, none of the others in my pod can totally cover me without assistance, but you...' she says, awed and relieved. She begins to wriggle her cock, pulling in and out and forming rings inside of you, causing immense pleasure. As you start humping back, she screams in climax, the sound carrying you to yours. After what seems like hours of her filling you, she begins to pull out, cum flowing around her now-shrinking cock out of your cunt and into the water.[impregchance]";
	else if "Male Preferred" is not listed in feats of player:[do female next]
		say "She looks at your male genitals, surprised. 'Why not a girl?' she mutters, and kisses the base of your cock. Maybe next time you will be ready for me. Make sure to be nice and large!";
		if "Microwaved" is listed in feats of player:
			say "WARNING: Sex shifting nanites detected! Allow?";
			if the player consents:
				say "Ok.";
				say "Your genitals feel odd as a cunt grows out of the base of your body, growing deeper and wider by the second.";
				increase cunts of player by 1;
				increase cunt length of player by 6;
				increase cunt width of player by 4;
			else:
				say "You wave a tiny microwave transmitter over the affected area. Ahhh, all clean!";
		else:
			say "Your genitals feel odd as a cunt grows out of the base of your body, growing deeper and wider by the second.";
			increase cunts of player by 1;
			increase cunt length of player by 6;
			increase cunt width of player by 4;
	else:
		say "The dolphin places her large, pink cock at your waiting entrance and rubs it back and forth, without touching it. You are horrified and fascinated by it. ";
		if scalevalue of player is 1:
			say "She shoves her cock into your ass, more coming out of her top slit, but it is unable to go further than the tapered head. She briefly looks at you with horror before realizing the obvious. You're way too small! 'I think we should wait until you're in a form suited for a lady of my... [']needs.[']' And with that, she departs, dejected and disappointed.";
		else if scalevalue of player is 2:
			say "She slams her cock into your ass rather carelessly, but her endeavors are cut off when she realizes that she can't go any more than halfway inside. She, rather rashly, continues to ram you in vain as it just won't go any deeper. She thinks for a moment, but it doesn't take her long to figure out what the problem is. She tells you, 'I'm afraid that you need to a much larger form to be able to take me, small one.' She then disengages from you, leaving you to your own devices for the time being.";
		else if scalevalue of player is 3:
			say "She slams her cock into your ass rather carelessly, her overlarge tool squeezing through your tight confines. It's clearly much too large for you, but that doesn't stop her from making a mess of your intestines. Her prehensile member worms its way into the depths of your bowels. A victim of this creature's ungodly length, you soon feel her malehood's intrusion invade your stomach where it relents, and you fear that if she were any longer, she could rightly impale you with her dick. She continues to thoroughly fuck you brains out, slamming your ass with dogged determination. You can visibly see the length of her rod bulge from your belly as she soon begins to orgasm.";
			say "She lets out a chittering scream as she cums hard inside of you, stunning you and leaving you floating in the water. You can only watch, unreasoningly, as your belly gets bigger and bigger until you look positively bloated. A little while and expansion later, she begins to remove her cock with much wriggling and squirming to watch the cum inside of you get forced out into a cloud in the water once your entrance is clear.[impregchance] She then departs from you, clearly satisfied with her work on your poor soul, leaving you to float in the water, a mess of a person.";
		else:
			say "She eagerly slams her cock into your ass. In spite of her larger girth, your higher body size is more than enough to take her on, and she seems pleased by this. At least, at first. Her prehensile member worms its way into the depths of your bowels, but even this sizeable intruder can only wander so far into your labyrinth of flesh. She seems a little surprised by this, suggesting that she might not be used to handling a beast of your magnitude. You get the impression that she might be a little disappointed by this as well, perhaps used to the 'challenge' of contending with much smaller victims. Regardless, she continues fervently ramming you with her impressive dick. It's not long before she lets out a chittering scream in climax, unloading her cum into you. You feel her passionate fluids flood your inner depths, though her equally impressive load only manages to distend your belly ever slightly. Even her afterglow seems ruined by how well you can handle her release, and rather unceremoniously, she pulls her length from you in brisk departure.[impregchance]";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Hermaphrodite Dolphin"; [Name of your new Monster]
	now attack entry is "The dolphin takes her fist and punches you with her immense strength."; [Text used when the monster makes an Attack]
	now defeated entry is "[Dolphin loses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[Dolphin wins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[mongendernum 5]As you [if the location of the player is not Public Beach]swim along[else]walk on the beach[end if], you see a dark shadow following your progress. You move towards it, and a dolphin-like human shoots out of the gloom, saying 'Another for my pod! Yes!'"; [ Description of the creature when you encounter it.]
	now face entry is "long dolphin snout";
	now body entry is "silvery with a blue back. A dorsal fin sits on top, and strong muscles contract underneath the surface"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]wet, glistening[or]smooth, silver[or]thick, blubbered[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a tail that fattens out horizontally at the end, much like a dolphin's. However, it is only half as thick, and the ends are not rounded. It is covered in [skin of player] flesh and sways behind you with every step."; [ Tail description, write a whole Sentence or leave blank. ]
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
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 24; [ Length infection will make cock grow to if cocks]
	now cock width entry is 8; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 2; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 28; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 10; [ Width of female sex infection will try and give you ]
	now libido entry is 40; [ Amount player Libido will go up if defeated ]
	now loot entry is "dolphin milk";
	now lootchance entry is 75; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]aquatic[or]strong[at random]";
	now type entry is "[one of]cetacean[or]dolphin-like[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "hdol"; [ Alternate critter combat row to follow, "default" or "" for standard ]


Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"hdol"	retaliation rule	dolattack rule	--	--	--	--	--	--	--	--

this is the dolattack rule:		[possible sonic attack and sets upcoming strike]
	choose row monster from table of random critters;
	if a random chance of 1 in 6 succeeds:
		say "The dolphin lets off a really loud pulse of high pitched clicks which weakens you ([ ( 6 + lev entry ) / 2 ] dmg) and stuns you just long enough for her to attack again.";
		decrease HP of player by ( ( 6 + lev entry ) / 2 );
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
		if player is male:
			now attack entry is "The dolphin darts down to your nethers, grabs your cock, and TWISTS IT OMG THAT HURT!";
			now wdam entry is 18;
		else if player is female:
			now attack entry is "The dolphin darts down to your nethers and chomps on your clit. YOWCH.";
			now wdam entry is 10;
		else:
			now attack entry is "The dolphin darts down to your nethers and is shocked to see nothing there. She bites you anyway.";
			now wdam entry is 4;


when play ends:
	if bodyname of player is "Hermaphrodite Dolphin":
		if humanity of player < 10:
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
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Hermaphrodite Dolphin":
			now monster is y;
			break;
	infect;

Table of Game Objects (continued)
name	desc	weight	object
"dolphin milk"	"Thick and nutritious milk from a dolphinoid."	1	dolphin milk


dolphin milk is a grab object. It is a part of the player. it is milky. Understand "milk" as dolphin milk. dolphin milk is infectious. The strain of dolphin milk is "Hermaphrodite Dolphin". The purified of dolphin milk is "distilled milk".

the scent of dolphin milk is "The dolphin milk smells like milk with an odd, fishy scent mixed in.".

Herm Dolphin ends here.