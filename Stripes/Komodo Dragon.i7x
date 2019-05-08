Version 1 of Komodo Dragon by Stripes begins here.

"Adds a Komodo Dragon to Flexible Survival."

Section 1 - Creature Responses

when play begins:
[These flags indicate which monster groups your creature belongs to, should someone want to remove any given type.]
[Delete the lines with unneeded flags and replace 'Komodo Dragon' with your creature's Name entry. Case sensitive.]
	add { "Komodo Dragon" } to infections of guy;
	add { "Komodo Dragon" } to infections of furry;
	add { "Komodo Dragon" } to infections of Tailweapon; [usable for Tail Strike feat]
	add { "Komodo Dragon" } to infections of Reptilelist; [list of reptile infections]

to say komododragondesc:
	setmongender 3; [creature is male]
	choose row MonsterID from Table of Random Critters;
	if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "nochange";
	say "     [one of]Emerging from the murky shadows of the tunnels[or]Rising from the murky waters of the sewers[at random] comes a [one of]large[or]scaly[or]frightening[at random] lizard creature. This creature, a mix of man and komodo dragon that is far more lizard than man, stands almost ten feet tall and has a powerful, stocky frame despite its increased height. It is covered in a hide of tough, brown-green scales all over its body. This armored skin hangs loose over its body in many places, though this is not from body fat.";
	say "     The Komodo Dragon looks at you with dark, beady eyes and flicks its long, forked tongue out at you. Its head is broad and somewhat flat with a blunted nose. Its eyes are spaced on the sides of its wedge-shaped head, giving it a wide field of vision most of the way around its head. More flaps of stretchable skin hang from its neck so it can accommodate large chunks of food after unhinging its jaw. Adding to the menace of its jaws are the hooked claws at the end of its muscled arms and legs. Those legs splay out to the side, making him look a little bowlegged, but you're sure that'd also allow him to switch between his current slouching stance and moving on all fours as needed. And between those legs, he has a pair of ridged and tapered manhoods, each roughly 20 inches long and fed by a pair of hand-filling balls.";


to say losetokomododragon:
	say "     Victorious, the savage beast knocks you to the ground and hisses loudly. It rips at your clothes and gear, adding new tears as it pulls them off roughly. As it does, its long, slender tongue flicks out, tasting your scent in the air and licking your cheek. ";
	if Player is female and Cunt Length of Player > 9:
		say "With you naked beneath it, it grinds its throbbing cocks across your belly, dribbling sticky precum onto your flesh[if HP of Player < 1]. You try to squirm away, but are too weak to continue resisting this powerful brute[end if]. You know full well what he wants and what he's going to take.";
		if ( Cunt Count of Player > 1 or the player is planttailed ) and a random chance of 3 in 5 succeeds:
			if Cunt Count of Player > 1:
				say "     With a juicy cunt for each of them, he thrusts his twin rods into your breeding holes and starts banging away at you. With those ridged lengths sliding in and out of you, the mating is rough and it is brutal, but it is also intense and increasingly pleasurable. As the double-mating continues, you can't help but get more and more into it, bracing yourself for every thrust and even pushing back for more. His hot, stinking breath washes over you as he pants with excitement while fucking you.";
				say "     When he finally drives hard into you one last time, you can't help but cry out in orgasm as he does. His hot seed floods into your womb from both cocks, filling it with more and more of his creamy load[if scalevalue of Player < 3]. Your [Body Size Adjective of Player] torso swells with the sheer amount of cum being pumped into you until you're left bloated and full by the time he pulls out[end if]. When he pulls out, he lets the last few spurts of his cum splatter across you. Before leaving, he leans in and licks across your cheek with his flicking tongue again.[fovichance][fovichance]";
			else:		[player is planttailed]
				say "Grabbing your hips with a clawed hand, the brutish lizard raises your ass and thrusts into you. You cry out in surprise and pleasure as one cock pushes into your juicy cunt and the other finds its home in your anal vagina. Your transformed anus, juicy and pussy-like from the plant infection, welcomes the thrusting rod and squeezed down on it with need. With those ridged lengths sliding in and out of you, the mating is rough and it is brutal, but it is also intense and increasingly pleasurable. As the double-mating continues, you can't help but get more and more into it, bracing yourself for every thrust and even pushing back for more. His hot, stinking breath washes over you as he pants with excitement while fucking you.";
				say "     When he finally drives hard into you one last time, you can't help but cry out in orgasm as he does. His hot seed floods into your womb and bowels from the two cocks stuffed into you, filling you with more and more of his creamy load[if scalevalue of Player < 3]. Your [Body Size Adjective of Player] torso swells with the sheer amount of cum being pumped into you until you're left bloated and full by the time he pulls out[end if]. When he pulls out, he lets the last few spurts of his cum splatter across you. Before leaving, he leans in and licks across your cheek with his flicking tongue again.[fovichance][movichance]";
		else if Cunt Tightness of Player > 20 and a random chance of 3 in 5 succeeds:
			say "     Squeezing his twin rods together, he gets both their ridged, tapered heads lined up with your very wide pussy. With a hard thrust, he sinks them both into your breeding hole and starts banging away at you. With those ridged lengths sliding in and out of you, the mating is rough and it is brutal, but it is also intense and increasingly pleasurable. As the double-mating continues, you can't help but get more and more into it, bracing yourself for every thrust and even pushing back for more. His hot, stinking breath washes over you as he pants with excitement while fucking you.";
			say "     When he finally drives hard into you one last time, you can't help but cry out in orgasm as he does. His hot seed floods into your womb from both cocks, filling it with more and more of his creamy load[if scalevalue of Player < 3]. Your [Body Size Adjective of Player] torso swells with the sheer amount of cum being pumped into you until you're left bloated and full by the time he pulls out[end if]. When he pulls out, he lets the last few spurts of his cum splatter across you. Before leaving, he leans in and licks across your cheek with his flicking tongue again.[fovichance][fovichance]";
		else if scalevalue of Player > 2 and anallevel > 1 and a random chance of 3 in 5 succeeds:
			say "     Grabbing your hips with a clawed hand, the brutish lizard raises your ass and thrusts into you. You cry out in a mix of pleasure and pain as one cock pushes into your juicy cunt, but the other finds its home in your anal passage. Once he's buried his meat into you as far as he can, he starts banging away at you. With those ridged lengths sliding in and out of you, the mating is rough and it is brutal, but it is also intense and increasingly pleasurable as the initial shock of the anal penetration wears off. As the double-mating continues, you can't help but get more and more into it, bracing yourself for every thrust and even pushing back for more. His hot, stinking breath washes over you as he pants with excitement while fucking you.";
			say "     When he finally drives hard into you one last time, you can't help but cry out in orgasm as he does. His hot seed floods into your womb and bowels from the two cocks stuffed into you, filling you with more and more of his creamy load[if scalevalue of Player < 3]. Your [Body Size Adjective of Player] torso swells with the sheer amount of cum being pumped into you until you're left bloated and full by the time he pulls out[end if]. When he pulls out, he lets the last few spurts of his cum splatter across you. Before leaving, he leans in and licks across your cheek with his flicking tongue again.[fovichance][movichance]";
		else:
			say "     Pinning you down with his weight, he thrusts the lower of his twin cocks into you, leaving the other to grind against your body as he starts banging away at you. With that ridged length sliding in and out of you, the mating is rough and it is brutal, but it is also intense and increasingly pleasurable. As the harsh mating continues, you can't help but get more and more into it, bracing yourself for every thrust and even pushing back for more. You take his exposed cock in hand and start stroking it, adding to his pleasure. His hot, stinking breath washes over you as he pants with excitement while fucking you.";
			say "     When he finally drives hard into you one last time, you can't help but cry out in orgasm as he does. His hot seed floods into your womb and sprays across your face. You open your mouth, catching as much of it as you can even as he pumps more of his semen into your womb. It has a strong, salty taste which tastes a little unpleasant, but you are so turned on that you don't care and gulp it down regardless before spreading your lips for one mouthful after another[if scalevalue of Player < 3]. Receiving his thick, creamy load from both ends, your [Body Size Adjective of Player] torso swells with the sheer amount of cum being sent into you until you're left bloated and full by the time he pulls out[end if]. When he pulls out, he lets the last few spurts of his cum splatter across you. Before leaving, he leans in and licks across your cheek with his flicking tongue again.[fovichance]";
	else if scalevalue of Player > 2 and ( anallevel > 1 or the player is planttailed ) and a random chance of 3 in 5 succeeds:
		say "With you naked beneath it, it roughly nudges you over with its wedge-shaped head and a hissing growl to ensure compliance. Grinding its throbbing cocks across your ass and lower back, his sticky precum dribbles out onto your flesh[if HP of Player < 1]. You try to squirm away, but are too weak to continue resisting this powerful brute[end if]. You know full well what he wants and what he's going to take.";
		if the player is planttailed:
			say "     Grabbing your hips with a clawed hand, the brutish lizard holds you firmly in place as he pulls back and shifts his hips down a little, letting one of his throbbing cocks push into your back passage. You cry out in a surprising amount of pleasure as the ridged cock finds its home in your anal vagina. Your transformed anus, juicy and pussy-like from the plant infection, welcomes the thrusting rod and squeezed down on it with need. With that ridged length sliding in and out of you, the mating is rough and it is brutal, but it is also intense and increasingly pleasurable as the initial shock wears off. As the harsh mating continues, you can't help but get more and more into it, bracing yourself for every thrust and even pushing back for more. His hot, stinking breath washes over you as he pants with excitement while fucking you.";
			say "     When he finally drives hard into you one last time, you can't help but cry out[if Player is male] in orgasm as he does[end if]. His hot seed floods into transformed bowels and sprays across your back, filling you with more and more of his creamy load[if scalevalue of Player < 3]. Your [Body Size Adjective of Player] torso swells as it drips with the sheer amount of cum being pumped into you and over you until you're left bloated and full by the time he pulls out[end if]. When he pulls out, he lets the last few spurts of his cum splatter across your leaking, pussy-like asshole. Before leaving, he leans in and licks across your cheek with his flicking tongue again.[movichance]";
		else:
			say "     Grabbing your hips with a clawed hand, the brutish lizard holds you firmly in place as he pulls back and shifts his hips down a little, letting one of his throbbing cocks push into your back passage. You cry out in a mix of pleasure and pain as his cock finds its home in your anal passage. Once he's buried his meat into you as far as he can, he starts banging away at you. With that ridged length sliding in and out of you, the mating is rough and it is brutal, but it is also intense and increasingly pleasurable as the initial shock of the anal penetration wears off. As the harsh mating continues, you can't help but get more and more into it, bracing yourself for every thrust and even pushing back for more. His hot, stinking breath washes over you as he pants with excitement while fucking you.";
			say "     When he finally drives hard into you one last time, you can't help but cry out[if Player is male] in orgasm as he does[end if]. His hot seed floods into bowels and sprays across your back, filling you with more and more of his creamy load[if scalevalue of Player < 3]. Your [Body Size Adjective of Player] torso swells as it drips with the sheer amount of cum being pumped into you and over you until you're left bloated and full by the time he pulls out[end if]. When he pulls out, he lets the last few spurts of his cum splatter across your leaking asshole. Before leaving, he leans in and licks across your cheek with his flicking tongue again.[movichance]";
	else if Player is female:
		say "With you naked beneath it, it growls in frustration at the small size of your cunt[sfn] compared to his mighty tools. He decides to instead grind those pulsing down atop you, dribbling sticky precum onto your flesh[if HP of Player < 1]. You try to squirm away, but are too weak to continue resisting this powerful brute[end if]. His clawed paws pin you down while it seeks to relieve its twin lusts upon you.";
		say "     As the sight and scent of his dual rods drooling their copious precum across your body arouse you, you find yourself taking hold of them, one to a hand. You start to assist him by stroking them, running your fingers over their ridges and teasing their leaking glandes. His hot, stinking breath washes over you as he pants with excitement while you pleasure him. When he finally growls and cums, his hot seed sprays across your face from two directions. You open your mouth wide, trying to catch as much of it as you can. It has a strong, salty taste which tastes a little unpleasant, but you are so turned on that you don't care and gulp it down regardless before spreading your lips for one mouthful after another. By the time he's done, your face and upper body are left [if scalevalue of Player > 3]streaked[else]soaked[end if] in reptilian cum from the sheer amount of cum splattered over you. Your belly is warm from all of it you managed to swallow down. Before leaving, he leans in and licks across your cheek with his flicking tongue again.";
	else:
		say "With you naked beneath it, it [if scalevalue of Player < 3]growls in frustration at your small size compared to his mighty tools[else]growls in frustration and slaps its mighty tools atop you[end if]. He decides to grind those pulsing dicks down atop you, dribbling sticky precum onto your flesh[if HP of Player < 1]. You try to squirm away, but are too weak to continue resisting this powerful brute[end if]. His clawed paws pin you down while it seeks to relieve its twin lusts upon you.";
		say "     As the sight and scent of his dual rods drooling their copious precum across your body arouse you, you find yourself taking hold of them, one to a hand. You start to assist him by stroking them, running your fingers over their ridges and teasing their leaking glandes. His hot, stinking breath washes over you as he pants with excitement while you pleasure him. When he finally growls and cums, his hot seed sprays across your face from two directions. You open your mouth wide, trying to catch as much of it as you can. It has a strong, salty taste which tastes a little unpleasant, but you are so turned on that you don't care and gulp it down regardless before spreading your lips for one mouthful after another. By the time he's done, your face and upper body are left [if scalevalue of Player > 3]streaked[else]soaked[end if] in reptilian cum from the sheer amount of cum splattered over you. Your belly is warm from all of it you managed to swallow down. Before leaving, he leans in and licks across your cheek with his flicking tongue again.";


to say beatthekomododragon:
	if Player is male:
		say "     Having defeated the reptilian brute, you knock him to the ground and leap onto him, keeping him pinned down while you decide what to do with him. He tries to struggle weakly, but you have worn him down enough that he can't push you off. Feeling [if Libido of Player < 33]a bit[else if Libido of Player < 67]rather[else]considerably[end if] aroused after the fight, you find yourself tempted to turn the tables on him and use him for some relief. Not wanting that poisonous mouth filled with serrated teeth anywhere near your junk, that leaves you considering fucking him.";
		say "     [bold type]Shall you mount him or just let him go?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Mount him.";
		say "     ([link]N[as]n[end link]) - Let him go.";
		if Player consents:
			LineBreak;
			say "     Feeling the big guy here deserves to be fucked for a change, you grab his thick tail and push it up. Realizing what's coming, he tries to scramble free, but you've worn him down too much and another knee to his side settles him down long enough to get your [cock size desc of Player] [cock of Player] lined up with his dark hole. Grabbing onto some of the loose skin at his sides, you thrust hard into him, spreading his asshole open with your glans as you thrust into the [if scalevalue of Player < 3]much larger[else if scalevalue of Player is 3]larger[else]large[end if] creature.";
			say "     Not used to this sort of treatment, his hole is delightfully tight around your cock, making for a very pleasant, if slow to start, fuck. But you keep at it, pounding away at the fallen reptile's ass with your [cock of Player] shaft until it slides smoothly in and out of him[if Cock Length of Player > 48]. Your titanic cock stuffs your reluctant lover so full that much of his sagging skin no longer sags and is instead just loose around his bulging body[end if]. As you keep thrusting, his struggles become less frequent and he's eventually pushing back into your thrusts as his lust becomes too much. You can see a growing pool of precum spreading out beneath the lizard, further proof that he's enjoying getting buggered[if scalevalue of Player > 2]. Reaching around him, you take one of his ridged members in each hand and start stroking them, rewarding the creature for no longer resisting you[else]. Unable to reach around him due to your much smaller size, you stroke his leathery hide and keep thrusting[end if].";
			say "     As you feel your peak rapidly approaching, you pound your hips hard and fast against that sexy, muscled ass of his, fucking him wildly. The creature hisses and groans beneath you as you go at him all the harder and then finally cum in him[if ball size of Player > 40]. As his belly starts to inflate rapidly with your huge output[else if ball size of Player > 20]. As his belly starts to bulge a little with your large output[else]. As you start pumping your semen into him[end if], the large lizard growls and cums, splattering twin sprays of white seed across himself and the ground[if scalevalue of Player > 2] while you help him empty his balls even as you drain your own into him[end if]. When you're finally done and pull out, [if ball size of Player > 40]the komodo dragon is left full and bloated with your semen. It is a struggle for the defeated and humiliated lizard - who now looks like he just ate a huge, gooey meal that's left his belly distended - to drag himself slowly back into the dark on all fours[else if ball size of Player > 20], the komodo dragon is left with a bulge in his belly like he just ate a large, gooey meal. Defeated and humiliated, he slowly slinks off in the dark on all fours[else]the komodo dragon has to slink off into the dark, defeated and humiliated[end if].";
		else:
			LineBreak;
			say "     Not in the mood for something like that, you knee him several times in the side while pressing his head down hard onto the grimy floor. After a few blows, you get off of him and send him scurrying off into the dark on all fours with another kick to the ribs.";
	else:
		say "     Having defeated the reptilian brute, you knock him to the ground and give him a few hard kicks to the side. The creature hisses in pain and backs away, scurrying off into the dark on all fours.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Komodo Dragon"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The [one of]Komodo Dragon[or]great lizard[or]brutish reptile[or]powerful reptile[or]reptilian creature[at random] [one of]bashes you with a powerful blow from its fist[or]slashes at you with its large claws[or]rakes its claws across your [bodytype of Player] body[or]slaps its heavy tail into your [bodydesc of Player] body[or]charges and rams his large body into yours, knocking you back[at random]!";
	now defeated entry is "[beatthekomododragon]";
	now victory entry is "[losetokomododragon]";
	now desc entry is "[komododragondesc]";
	now face entry is "broad, somewhat flat, and blunted at the end. The snout extends about three feet, and the nostrils are mere slits at the tip with a slightly raised ridge to mark where they are. The eyes are rounded like a human's and rest on the sides of the head, allowing for a far superior range of vision than most other creatures. This gives you a field of vision that is roughly 270 degrees, but has a smaller window for binocular vision. Down at your neck hang folds of skin to allow you to swallow your large chunks of food after unhinging your jaw";
	now body entry is "very broad and extremely dense with muscle. Despite your ten-foot height, you have a very powerful, stocky frame. Your arms and legs are muscled, and end in hooked claws meant for slashing and grabbing at prey. Your bowlegged stance and altered hips let you move either on all fours or on two legs with a slouching posture";
	now skin entry is "[one of]rough[or]leathery[or]loose[or]scaled[or]brown-green[at random]";
	now tail entry is "You have a strong tail that extends [if scalevalue of Player is 5]eight[else if scalevalue of Player is 4]six[else if scalevalue of Player is 3]four[else if scalevalue of Player is 2]three[else if scalevalue of Player is 1]two[end if] feet from your body. Thick at the spine, it terminates to a blunted tip and seems to sway of its own accord from time to time.";
	now cock entry is "[one of]reptilian[or]ridged[or]tapered[or]dark[at random]";
	now face change entry is "your jaw stretches out a bit, the bones in your face stretching forward to form a broad snout three feet in length. Your teeth change to sharp and very serrated edges that are perfect for tearing meat apart. The flesh of your neck stretches and sags, forming folds that will help you for when you eat something larger than your mouth can normally take after dislocating your jaw";
	now body change entry is "power suffuses your body as the muscles bulge and throb erratically. Your chest takes on a very well-built appearance and your abdomen ripples with power as your body grows, raising you up to ten feet in height. Your arms suddenly ripple with power, taking on the strength that will be needed to help hold prey still. Deadly-looking claws form on your hands that will allow you to grip onto even the toughest of soft surfaces. Rock will sharpen them nicely. Your legs splay somewhat to the side as your hips reshape themselves, forcing you to lean forward in a notable slouch as the muscles on your thighs bulk up quite a bit to give you the power to move about either on all fours or upright as you choose";
	now skin change entry is "your skin changes to a layer of hard, leathery hide. It turns to a green-brown color and seems to sag over your body in places, as if waiting for you to stuff yourself, or be stuffed full";
	now ass change entry is "you suffer momentary paralysis at your hips and lower body. This is followed by a sudden burst of pain as a new appendage erupts from your spine. It is thick at the base and travels [if scalevalue of Player is 5]eight[else if scalevalue of Player is 4]six[else if scalevalue of Player is 3]four[else if scalevalue of Player is 2]three[else if scalevalue of Player is 1]two[end if] feet behind you to a fairly blunted tip. It is partially prehensile, allowing you to curl it around things but not truly lift heavy objects";
	now cock change entry is "[if Cock Count of Player > 1]your cocks pulse and throb, ejecting your old seed as they start to change. They become bulbous at the time, yet having a spear-like quality to them that has them becoming tapered. A series of ridges form along the trunk at regular intervals. They change color to a dark gray hue as the transformation is coming to a close, your balls quickly filling with a fresh load of reptilian semen[else]your cock pulses and throbs, ejecting your old seed as your manhood starts to change. It becomes bulbous at the time, yet having a spear-like quality to it that has it becoming tapered. A series of ridges form along the trunk at regular intervals. It changes color to a dark gray hue as the transformation is coming to a close, your balls quickly filling with a fresh load of reptilian semen[end if]";
	now str entry is 24;
	now dex entry is 16;
	now sta entry is 15;
	now per entry is 16;
	now int entry is 10;
	now cha entry is 7;
	now sex entry is "nochange"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 88; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 11; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Mall"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 2; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 20; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 15; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of Breasts infection will give you. ]
	now Breast Size entry is 6; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 20;
	now Cunt Tightness entry is 12;
	now libido entry is 55; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]stocky[or]brutish[or]powerful[or]strong[at random]";
	now type entry is "reptilian"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "komodo"; [ Row used to designate any special combat features, "default" for standard combat. ]
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
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [Size of Clit (1-5); very small/small/average/large/very large]


[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]


Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"komodo"	retaliation rule	komodoinc rule	--	komodotoxic rule	20	--	--	--	--	--

this is the komodoinc rule:
	choose row monstercom from the table of critter combat;
	if Playerpoison is 0 or a random chance of 2 in 3 succeeds:		[slower increase if already bitten]
		increase alt1chance entry by a random number between 1 and 6;
	if alt1chance entry > 40, now alt1chance entry is 40;

this is the komodotoxic rule:
	choose row MonsterID from the Table of Random Critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 66 ); [+50% damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
	if Playerpoison is 0:
		increase playerpoison by 4 + ( lev entry / 5 );
		decrease plhitbonus by 2;
	else:
		increase playerpoison by 2 + ( lev entry / 10 );
		if Playerpoison < ( 2 + ( lev entry / 5 ) ), now playerpoison is 2 + ( lev entry / 5 );
	say "The [one of]Komodo Dragon[or]powerful lizard[or]reptilian horror[as decreasingly likely outcomes] [one of]clamps its jaws onto you[or]bites down onto you[or]grabs you with its powerful jaws[at random], sinking its fangs into you. Venom and toxic saliva flood into your wound, sending burning pain and weakness running through your body as the poison spreads. You'll need to finish this fight quickly so you can treat and clean it properly or hold out until your nanites can purge it from your system. You take [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[bodyabsorbancy]"; [attack directed to body of Player]
	if absorb > dam:
		now absorb is dam;
	if absorb > 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease HP of the player by dam;
	increase HP of Player by absorb;
	follow the player injury rule;
	say "You are [descr].";
	choose row monstercom from the table of critter combat;
	now alt1chance entry is 15;


Section 4 - Endings

when play ends:
	if bodyname of Player is "Komodo Dragon":
		if humanity of Player < 10:
			say "     As your human mind falls apart, the nanites rebuild it with primitive instincts for lust and hunger. Becoming a brutish creature, you descend below the surface to live in the sewers and tunnels beneath the city. You roam those depths in search of others creatures who live there or those foolish enough to descend into your domain. There they become your prey, to be used to satisfy one or both of your hungers. On occasion, you encounter another of your kind and, after a vicious battle, a victor is decided and wild sex follows[if Player is impreg_ok]. You are impregnated after several of these territorial battles and later leave a clutch of komodo dragon eggs behind to add to your numbers beneath the city[end if][if Player is male]. You sire clutches of eggs in several of the female prey you capture and choose to release, ensure more of your kind will spread and continue to haunt the dark places of the world[end if].";
		else:
			say "     You manage to keep a control of your mind until the military rescue is able to come. And while the soldiers who pick you up are fearful of your large and powerful form, you raise considerable interest from the military scientists. They perform a battery of tests and a few people you realize are military recruiters come to talk to you. At first, they're subtle, trying to play on your thanks for being rescued, but in time they're more openly trying to recruit you. You turn them down, though hang onto the contact card for Zephyr one of the scientists slipped you.";
			say "     After the holding period is finally over and you're released into the world, you make contact with Zephyr. Their recruitment pitch, geared much more towards their growing strength and the money they can provide you, seems much more appealing to you. You get hired on as a powerful ground trooper for situations where things get out of hand. At first, things aren't quite as good as you'd expected it to be (and certainly less than it was pitched to you) and you consider quitting. But when you get dropped into an out-of-control operation and manage to lead most of your team and many of the other employees out of that mess thanks to your considerable experience in the city, things start to turn around for you. Recognized for the valuable asset you are, you become more valuable to the organization and are rewarded as such. While by no means rich, you have plenty of money to satisfy the considerable hungers of your large body[if Player is herm], both its hunger and its lustful needs[end if][if Player is impreg_ok]. You even get a juicy bonus whenever you turn over a clutch of your eggs to Zephyr for them to be trained and recruited from hatching as foot soldiers. As your lizard body feels no particular attachment to your offspring, doing this does not bother you at all and is a good way to leave you free to have the pleasure of getting another clutch growing in you much sooner[end if].";

Komodo Dragon ends here.
