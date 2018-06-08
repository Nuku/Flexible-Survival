Version 1 of Komodo Dragon for FS by Stripes begins here.

"Adds a Komodo Dragon to Flexible Survival."

Section 1 - Monster Responses

when play begins:
[These flags indicate which monster groups your creature belongs to, should someone want to remove any given type.]
[Delete the lines with unneeded flags and replace 'Komodo Dragon' with your creature's name entry. Case sensitive.]
	add { "Komodo Dragon" } to infections of guy;
	add { "Komodo Dragon" } to infections of furry;
	add { "Komodo Dragon" } to infections of Tailweapon; [usable for Tail Strike feat]
	add { "Komodo Dragon" } to infections of Reptilelist; [list of reptile infections]

to say komododragondesc:
	setmongender 3; [creature is male]
	choose row monster from table of random critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	else if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "nochange";
	say "     [one of]Emerging from the murky shadows of the tunnels[or]Rising from the murky waters of the sewers[at random] comes a [one of]large[or]scaly[or]frightening[at random] lizard creature. This creature, a mix of man and komodo dragon that is far more lizard than man, stands almost ten feet tall and has a powerful, stocky frame despite its increased height. It is covered in a hide of tough, brown-green scales all over its body. This armored skin hangs loose over its body in many places, though this is not from body fat.";
	say "     The Komodo Dragon looks at you with dark, beady eyes and flicks its long, forked tongue out at you. Its head is broad and somewhat flat with a blunted nose. Its eyes are spaced on the sides of its wedge-shaped head, giving it a wide field of vision most of the way around its head. More flaps of stretchable skin hang from its neck so it can accommodate large chunks of food after unhinging its jaw. Adding to the menace of its jaws are the hooked claws at the end of its muscled arms and legs. Those legs splay out to the side, making him look a little bowlegged, but you're sure that'd also allow him to switch between his current slouching stance and moving on all fours as needed. And between those legs, he has a pair of ridged and tapered manhoods, each roughly 20 inches long and fed by a pair of hand-filling balls.";


to say losetokomododragon:
	say "     Victorious, the savage beast knocks you to the ground and hisses loudly. It rips at your clothes and gear, adding new tears as it pulls them off roughly. As it does, its long, slender tongue flicks out, tasting your scent in the air and licking your cheek. ";
	if cunts of player > 0 and cunt length of player > 9:
		say "     With you naked beneath it, it grinds its throbbing cocks across your belly, dribbling sticky precum onto your flesh[if HP of player < 1]. You try to squirm away, but are too weak to continue resisting this powerful brute[end if]. You know full well what he wants and what he's going to take.";
		if ( cunts of player > 1 or the player is planttailed ) and a random chance of 3 in 5 succeeds:
			if cunts of player > 1:
				say "     With a juicy cunt for each of them, he thrusts his twin rods into your breeding holes and starts banging away at you. With those ridged lengths sliding in and out of you, the mating is rough and it is brutal, but it is also intense and increasingly pleasurable. As the double-mating continues, you can't help but get more and more into it, bracing yourself for every thrust and even pushing back for more. His hot, stinking breath washes over you as he pants with excitement while fucking you.";
				say "     When he finally drives hard into you one last time, you can't help but cry out in orgasm as he does. His hot seed floods into your womb from both cocks, filling it with more and more of his creamy load[if scalevalue of player < 3]. Your [body size of player] torso swells with the sheer amount of cum being pumped into you until you're left bloated and full by the time he pulls out[end if]. When he pulls out, he lets the last few spurts of his cum splatter across you. Before leaving, he leans in and licks across your cheek with his flicking tongue again.[fovichance][fovichance]";
			else:		[player is planttailed]
				say "Grabbing your hips with a clawed hand, the brutish lizard raises your ass and thrusts into you. You cry out in surprise and pleasure as one cock pushes into your juicy cunt and the other finds its home in your anal vagina. Your transformed anus, juicy and pussy-like from the plant infection, welcomes the thrusting rod and squeezed down on it with need. With those ridged lengths sliding in and out of you, the mating is rough and it is brutal, but it is also intense and increasingly pleasurable. As the double-mating continues, you can't help but get more and more into it, bracing yourself for every thrust and even pushing back for more. His hot, stinking breath washes over you as he pants with excitement while fucking you.";
				say "     When he finally drives hard into you one last time, you can't help but cry out in orgasm as he does. His hot seed floods into your womb and bowels from the two cocks stuffed into you, filling you with more and more of his creamy load[if scalevalue of player < 3]. Your [body size of player] torso swells with the sheer amount of cum being pumped into you until you're left bloated and full by the time he pulls out[end if]. When he pulls out, he lets the last few spurts of his cum splatter across you. Before leaving, he leans in and licks across your cheek with his flicking tongue again.[fovichance][movichance]";
		else if cunt width of player > 20 and a random chance of 3 in 5 succeeds:
			say "     Squeezing his twin rods together, he gets both their ridged, tapered heads lined up with your very wide pussy. With a hard thrust, he sinks them both into your breeding hole and starts banging away at you. With those ridged lengths sliding in and out of you, the mating is rough and it is brutal, but it is also intense and increasingly pleasurable. As the double-mating continues, you can't help but get more and more into it, bracing yourself for every thrust and even pushing back for more. His hot, stinking breath washes over you as he pants with excitement while fucking you.";
			say "     When he finally drives hard into you one last time, you can't help but cry out in orgasm as he does. His hot seed floods into your womb from both cocks, filling it with more and more of his creamy load[if scalevalue of player < 3]. Your [body size of player] torso swells with the sheer amount of cum being pumped into you until you're left bloated and full by the time he pulls out[end if]. When he pulls out, he lets the last few spurts of his cum splatter across you. Before leaving, he leans in and licks across your cheek with his flicking tongue again.[fovichance][fovichance]";
		else if scalevalue of player > 2 and anallevel > 1 and a random chance of 3 in 5 succeeds:
			say "     Grabbing your hips with a clawed hand, the brutish lizard raises your ass and thrusts into you. You cry out in a mix of pleasure and pain as one cock pushes into your juicy cunt, but the other finds its home in your anal passage. Once he's buried his meat into you as far as he can, he starts banging away at you. With those ridged lengths sliding in and out of you, the mating is rough and it is brutal, but it is also intense and increasingly pleasurable as the initial shock of the anal penetration wears off. As the double-mating continues, you can't help but get more and more into it, bracing yourself for every thrust and even pushing back for more. His hot, stinking breath washes over you as he pants with excitement while fucking you.";
			say "     When he finally drives hard into you one last time, you can't help but cry out in orgasm as he does. His hot seed floods into your womb and bowels from the two cocks stuffed into you, filling you with more and more of his creamy load[if scalevalue of player < 3]. Your [body size of player] torso swells with the sheer amount of cum being pumped into you until you're left bloated and full by the time he pulls out[end if]. When he pulls out, he lets the last few spurts of his cum splatter across you. Before leaving, he leans in and licks across your cheek with his flicking tongue again.[fovichance][movichance]";
		else:
			say "     Pinning you down with his weight, he thrusts the lower of his twin cocks into you, leaving the other to grind against your body as he starts banging away at you. With that ridged length sliding in and out of you, the mating is rough and it is brutal, but it is also intense and increasingly pleasurable. As the harsh mating continues, you can't help but get more and more into it, bracing yourself for every thrust and even pushing back for more. You take his exposed cock in hand and start stroking it, adding to his pleasure. His hot, stinking breath washes over you as he pants with excitement while fucking you.";
			say "     When he finally drives hard into you one last time, you can't help but cry out in orgasm as he does. His hot seed floods into your womb and sprays across your face. You open your mouth, catching as much of it as you can even as he pumps more of his semen into your womb. It has a strong, salty taste which tastes a little unpleasant, but you are so turned on that you don't care and gulp it down regardless before spreading your lips for one mouthful after another[if scalevalue of player < 3]. Receiving his thick, creamy load from both ends, your [body size of player] torso swells with the sheer amount of cum being sent into you until you're left bloated and full by the time he pulls out[end if]. When he pulls out, he lets the last few spurts of his cum splatter across you. Before leaving, he leans in and licks across your cheek with his flicking tongue again.[fovichance]";
	else if scalevalue of player > 2 and ( anallevel > 1 or the player is planttailed ) and a random chance of 3 in 5 succeeds:
		say "     With you naked beneath it, it roughly nudges you over with its wedge-shaped head and a hissing growl to ensure compliance. Grinding its throbbing cocks across your ass and lower back, his sticky precum dribbles out onto your flesh[if HP of player < 1]. You try to squirm away, but are too weak to continue resisting this powerful brute[end if]. You know full well what he wants and what he's going to take.";
		if the player is planttailed:
			say "     Grabbing your hips with a clawed hand, the brutish lizard holds you firmly in place as he pulls back and shifts his hips down a little, letting one of his throbbing cocks push into your back passage. You cry out in a surprising amount of pleasure as the ridged cock finds its home in your anal vagina. Your transformed anus, juicy and pussy-like from the plant infection, welcomes the thrusting rod and squeezed down on it with need. With that ridged length sliding in and out of you, the mating is rough and it is brutal, but it is also intense and increasingly pleasurable as the initial shock wears off. As the harsh mating continues, you can't help but get more and more into it, bracing yourself for every thrust and even pushing back for more. His hot, stinking breath washes over you as he pants with excitement while fucking you.";
			say "     When he finally drives hard into you one last time, you can't help but cry out[if cocks of player > 0] in orgasm as he does[end if]. His hot seed floods into transformed bowels and sprays across your back, filling you with more and more of his creamy load[if scalevalue of player < 3]. Your [body size of player] torso swells as it drips with the sheer amount of cum being pumped into you and over you until you're left bloated and full by the time he pulls out[end if]. When he pulls out, he lets the last few spurts of his cum splatter across your leaking, pussy-like asshole. Before leaving, he leans in and licks across your cheek with his flicking tongue again.[movichance]";
		else:
			say "     Grabbing your hips with a clawed hand, the brutish lizard holds you firmly in place as he pulls back and shifts his hips down a little, letting one of his throbbing cocks push into your back passage. You cry out in a mix of pleasure and pain as his cock finds its home in your anal passage. Once he's buried his meat into you as far as he can, he starts banging away at you. With that ridged length sliding in and out of you, the mating is rough and it is brutal, but it is also intense and increasingly pleasurable as the initial shock of the anal penetration wears off. As the harsh mating continues, you can't help but get more and more into it, bracing yourself for every thrust and even pushing back for more. His hot, stinking breath washes over you as he pants with excitement while fucking you.";
			say "     When he finally drives hard into you one last time, you can't help but cry out[if cocks of player > 0] in orgasm as he does[end if]. His hot seed floods into bowels and sprays across your back, filling you with more and more of his creamy load[if scalevalue of player < 3]. Your [body size of player] torso swells as it drips with the sheer amount of cum being pumped into you and over you until you're left bloated and full by the time he pulls out[end if]. When he pulls out, he lets the last few spurts of his cum splatter across your leaking asshole. Before leaving, he leans in and licks across your cheek with his flicking tongue again.[movichance]";
	else if cunts of player > 0:
		say "     With you naked beneath it, it growls in frustration at the small size of your cunt[sfn] compared to his mighty tools. He decides to instead grind those pulsing down atop you, dribbling sticky precum onto your flesh[if HP of player < 1]. You try to squirm away, but are too weak to continue resisting this powerful brute[end if]. His clawed paws pin you down while it seeks to relieve its twin lusts upon you.";
		say "     As the sight and scent of his dual rods drooling their copious precum across your body arouse you, you find yourself taking hold of them, one to a hand. You start to assist him by stroking them, running your fingers over their ridges and teasing their leaking glandes. His hot, stinking breath washes over you as he pants with excitement while you pleasure him. When he finally growls and cums, his hot seed sprays across your face from two directions. You open your mouth wide, trying to catch as much of it as you can. It has a strong, salty taste which tastes a little unpleasant, but you are so turned on that you don't care and gulp it down regardless before spreading your lips for one mouthful after another. By the time he's done, your face and upper body are left [if scalevalue of player > 3]streaked[else]soaked[end if] in reptilian cum from the sheer amount of cum splattered over you. Your belly is warm from all of it you managed to swallow down. Before leaving, he leans in and licks across your cheek with his flicking tongue again.";
	else:
		say "     With you naked beneath it, it [if scalevalue of player < 3]growls in frustration at your small size compared to his mighty tools[else]growls in frustration and slaps its mighty tools atop you[end if]. He decides to grind those pulsing dicks down atop you, dribbling sticky precum onto your flesh[if HP of player < 1]. You try to squirm away, but are too weak to continue resisting this powerful brute[end if]. His clawed paws pin you down while it seeks to relieve its twin lusts upon you.";
		say "     As the sight and scent of his dual rods drooling their copious precum across your body arouse you, you find yourself taking hold of them, one to a hand. You start to assist him by stroking them, running your fingers over their ridges and teasing their leaking glandes. His hot, stinking breath washes over you as he pants with excitement while you pleasure him. When he finally growls and cums, his hot seed sprays across your face from two directions. You open your mouth wide, trying to catch as much of it as you can. It has a strong, salty taste which tastes a little unpleasant, but you are so turned on that you don't care and gulp it down regardless before spreading your lips for one mouthful after another. By the time he's done, your face and upper body are left [if scalevalue of player > 3]streaked[else]soaked[end if] in reptilian cum from the sheer amount of cum splattered over you. Your belly is warm from all of it you managed to swallow down. Before leaving, he leans in and licks across your cheek with his flicking tongue again.";


to say beatthekomododragon:
	if cocks of player > 0:
		say "     Having defeated the reptilian brute, you knock him to the ground and leap onto him, keeping him pinned down while you decide what to do with him. He tries to struggle weakly, but you have worn him down enough that he can't push you off. Feeling [if libido of player < 33]a bit[else if libido of player < 67]rather[else]considerably[end if] aroused after the fight, you find yourself tempted to turn the tables on him and use him for some relief. Not wanting that poisonous mouth filled with serrated teeth anywhere near your junk, that leaves you considering fucking him.";
		say "     [bold type] Shall you mount him or just let him go?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Mount him.";
		say "     ([link]N[as]n[end link]) - Let him go.";
		if the player consents:
			LineBreak;
			say "     Feeling the big guy here deserves to be fucked for a change, you grab his thick tail and push it up. Realizing what's coming, he tries to scramble free, but you've worn him down too much and another knee to his side settles him down long enough to get your [cock size desc of player] [cock of player] lined up with his dark hole. Grabbing onto some of the loose skin at his sides, you thrust hard into him, spreading his asshole open with your glans as you thrust into the [if scalevalue of player < 3]much larger[else if scalevalue of player is 3]larger[else]large[end if] creature.";
			say "     Not used to this sort of treatment, his hole is delightfully tight around your cock, making for a very pleasant, if slow to start, fuck. But you keep at it, pounding away at the fallen reptile's ass with your [cock of player] shaft until it slides smoothly in and out of him[if cock length of player > 48]. Your titanic cock stuffs your reluctant lover so full that much of his sagging skin no longer sags and is instead just loose around his bulging body[end if]. As you keep thrusting, his struggles become less frequent and he's eventually pushing back into your thrusts as his lust becomes too much. You can see a growing pool of precum spreading out beneath the lizard, further proof that he's enjoying getting buggered[if scalevalue of player > 2]. Reaching around him, you take one of his ridged members in each hand and start stroking them, rewarding the creature for no longer resisting you[else]. Unable to reach around him due to your much smaller size, you stroke his leathery hide and keep thrusting[end if].";
			say "     As you feel your peak rapidly approaching, you pound your hips hard and fast against that sexy, muscled ass of his, fucking him wildly. The creature hisses and groans beneath you as you go at him all the harder and then finally cum in him[if cock width of player > 40]. As his belly starts to inflate rapidly with your huge output[else if cock width of player > 20]. As his belly starts to bulge a little with your large output[else]. As you start pumping your semen into him[end if], the large lizard growls and cums, splattering twin sprays of white seed across himself and the ground[if scalevalue of player > 2] while you help him empty his balls even as you drain your own into him[end if]. When you're finally done and pull out, [if cock width of player > 40]the komodo dragon is left full and bloated with your semen. It is a struggle for the defeated and humiliated lizard - who now looks like he just ate a huge, gooey meal that's left his belly distended - to drag himself slowly back into the dark on all fours[else if cock width of player > 20], the komodo dragon is left with a bulge in his belly like he just ate a large, gooey meal. Defeated and humiliated, he slowly slinks off in the dark on all fours[else]the komodo dragon has to slink off into the dark, defeated and humiliated[end if].";
		else:
			LineBreak;
			say "     Not in the mood for something like that, you knee him several times in the side while pressing his head down hard onto the grimy floor. After a few blows, you get off of him and send him scurrying off into the dark on all fours with another kick to the ribs.";
	else:
		say "     Having defeated the reptilian brute, you knock him to the ground and give him a few hard kicks to the side. The creature hisses in pain and backs away, scurrying off into the dark on all fours.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Komodo Dragon"; [Name of your new Monster]
	now attack entry is "The [one of]Komodo Dragon[or]great lizard[or]brutish reptile[or]powerful reptile[or]reptilian creature[at random] [one of]bashes you with a powerful blow from its fist[or]slashes at you with its large claws[or]rakes its claws across your [bodytype of player] body[or]slaps its heavy tail into your [bodydesc of player] body[or]charges and rams his large body into yours, knocking you back[at random]!";
	now defeated entry is "[beatthekomododragon]";
	now victory entry is "[losetokomododragon]";
	now desc entry is "[komododragondesc]";
	now face entry is "broad, somewhat flat, and blunted at the end. The snout extends about three feet, and the nostrils are mere slits at the tip with a slightly raised ridge to mark where they are. The eyes are rounded like a human's and rest on the sides of the head, allowing for a far superior range of vision than most other creatures. This gives you a field of vision that is roughly 270 degrees, but has a smaller window for binocular vision. Down at your neck hang folds of skin to allow you to swallow your large chunks of food after unhinging your jaw";
	now body entry is "very broad and extremely dense with muscle. Despite your ten-foot height, you have a very powerful, stocky frame. Your arms and legs are muscled, and end in hooked claws meant for slashing and grabbing at prey. Your bowlegged stance and altered hips let you move either on all fours or on two legs with a slouching posture.";
	now skin entry is "[one of]rough[or]leathery[or]loose[or]scaled[or]brown-green[at random]";
	now tail entry is "You have a strong tail that extends [if scalevalue of player is 5]eight[else if scalevalue of player is 4]six[else if scalevalue of player is 3]four[else if scalevalue of player is 2]three[else if scalevalue of player is 1]two[end if] feet from your body. Thick at the spine, it terminates to a blunted tip and seems to sway of its own accord from time to time.";
	now cock entry is "[one of]reptilian[or]ridged[or]tapered[or]dark[at random]";
	now face change entry is "your jaw stretches out a bit, the bones in your face stretching forward to form a broad snout three feet in length. Your teeth change to sharp and very serrated edges that are perfect for tearing meat apart. The flesh of your neck stretches and sags, forming folds that will help you for when you eat something larger than your mouth can normally take after dislocating your jaw";
	now body change entry is "power suffuses your body as the muscles bulge and throb erratically. Your chest takes on a very well-built appearance and your abdomen ripples with power as your body grows, raising you up to ten feet in height. Your arms suddenly ripple with power, taking on the strength that will be needed to help hold prey still. Deadly-looking claws form on your hands that will allow you to grip onto even the toughest of soft surfaces. Rock will sharpen them nicely. Your legs splay somewhat to the side as your hips reshape themselves, forcing you to lean forward in a notable slouch as the muscles on your thighs bulk up quite a bit to give you the power to move about either on all fours or upright as you choose";
	now skin change entry is "your skin changes to a layer of hard, leathery hide. It turns to a green-brown color and seems to sag over your body in places, as if waiting for you to stuff yourself, or be stuffed full";
	now ass change entry is "you suffer momentary paralysis at your hips and lower body. This is followed by a sudden burst of pain as a new appendage erupts from your spine. It is thick at the base and travels [if scalevalue of player is 5]eight[else if scalevalue of player is 4]six[else if scalevalue of player is 3]four[else if scalevalue of player is 2]three[else if scalevalue of player is 1]two[end if] feet behind you to a fairly blunted tip. It is partially prehensile, allowing you to curl it around things but not truly lift heavy objects";
	now cock change entry is "[if cocks of player > 1]your cocks pulse and throb, ejecting your old seed as they start to change. They become bulbous at the time, yet having a spear-like quality to them that has them becoming tapered. A series of ridges form along the trunk at regular intervals. They change color to a dark gray hue as the transformation is coming to a close, your balls quickly filling with a fresh load of reptilian semen[else]your cock pulses and throbs, ejecting your old seed as your manhood starts to change. It becomes bulbous at the time, yet having a spear-like quality to it that has it becoming tapered. A series of ridges form along the trunk at regular intervals. It changes color to a dark gray hue as the transformation is coming to a close, your balls quickly filling with a fresh load of reptilian semen[end if]";
	now str entry is 24;
	now dex entry is 16;
	now sta entry is 15;
	now per entry is 16;
	now int entry is 10;
	now cha entry is 7;
	now sex entry is "nochange"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 88; [ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 11; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Mall"; [ Current options are 'Outside' and 'Mall' Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 2; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 20; [ Length infection will make cock grow to if cocks]
	now cock width entry is 15; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 6; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 20;
	now cunt width entry is 12;
	now libido entry is 55; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]stocky[or]brutish[or]powerful[or]strong[at random]";
	now type entry is "reptilian"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "komodo"; [ Row used to designate any special combat features, "default" for standard combat. ]

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]


Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"komodo"	retaliation rule	komodoinc rule	--	komodotoxic rule	20	--	--	--	--	--

this is the komodoinc rule:
	choose row monstercom from the table of critter combat;
	if playerpoison is 0 or a random chance of 2 in 3 succeeds:		[slower increase if already bitten]
		increase alt1chance entry by a random number between 1 and 6;
	if alt1chance entry > 40, now alt1chance entry is 40;

this is the komodotoxic rule:
	choose row monster from the table of random critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 66 ); [+50% damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
	if playerpoison is 0:
		increase playerpoison by 4 + ( lev entry / 5 );
		decrease plhitbonus by 2;
	else:
		increase playerpoison by 2 + ( lev entry / 10 );
		if playerpoison < ( 2 + ( lev entry / 5 ) ), now playerpoison is 2 + ( lev entry / 5 );
	say "The [one of]Komodo Dragon[or]powerful lizard[or]reptilian horror[as decreasingly likely outcomes] [one of]clamps its jaws onto you[or]bites down onto you[or]grabs you with its powerful jaws[at random], sinking its fangs into you. Venom and toxic saliva flood into your wound, sending burning pain and weakness running through your body as the poison spreads. You'll need to finish this fight quickly so you can treat and clean it properly or hold out until your nanites can purge it from your system. You take [special-style-2][dam][roman type] damage!";
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
	now alt1chance entry is 15;


Section 4 - Endings

when play ends:
	if bodyname of player is "Komodo Dragon":
		if humanity of player < 10:
			say "     As your human mind falls apart, the nanites rebuild it with primitive instincts for lust and hunger. Becoming a brutish creature, you descend below the surface to live in the sewers and tunnels beneath the city. You roam those depths in search of others creatures who live there or those foolish enough to descend into your domain. There they become your prey, to be used to satisfy one or both of your hungers. On occasion, you encounter another of your kind and, after a vicious battle, a victor is decided and wild sex follows[if player is impreg_ok]. You are impregnated after several of these territorial battles and later leave a clutch of komodo dragon eggs behind to add to your numbers beneath the city[end if][if cocks of player > 0]. You sire clutches of eggs in several of the female prey you capture and choose to release, ensure more of your kind will spread and continue to haunt the dark places of the world[end if].";
		else:
			say "     You manage to keep a control of your mind until the military rescue is able to come. And while the soldiers who pick you up are fearful of your large and powerful form, you raise considerable interest from the military scientists. They perform a battery of tests and a few people you realize are military recruiters come to talk to you. At first, they're subtle, trying to play on your thanks for being rescued, but in time they're more openly trying to recruit you. You turn them down, though hang onto the contact card for Zephyr one of the scientists slipped you.";
			say "     After the holding period is finally over and you're released into the world, you make contact with Zephyr. Their recruitment pitch, geared much more towards their growing strength and the money they can provide you, seems much more appealing to you. You get hired on as a powerful ground trooper for situations where things get out of hand. At first, things aren't quite as good as you'd expected it to be (and certainly less than it was pitched to you) and you consider quitting. But when you get dropped into an out-of-control operation and manage to lead most of your team and many of the other employees out of that mess thanks to your considerable experience in the city, things start to turn around for you. Recognized for the valuable asset you are, you become more valuable to the organization and are rewarded as such. While by no means rich, you have plenty of money to satisfy the considerable hungers of your large body[if cocks of player > 0 and cunts of player > 0], both its hunger and its lustful needs[end if][if player is impreg_ok]. You even get a juicy bonus whenever you turn over a clutch of your eggs to Zephyr for them to be trained and recruited from hatching as foot soldiers. As your lizard body feels no particular attachment to your offspring, doing this does not bother you at all and is a good way to leave you free to have the pleasure of getting another clutch growing in you much sooner[end if].";

Komodo Dragon for FS ends here.
