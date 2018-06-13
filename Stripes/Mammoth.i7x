Version 1 of Mammoth by Stripes begins here.
[Version 1.1 - added CV monster victory - Stripes]
[Version 1.2 - added Unbirth loss scene - Kernog]
"Adds a Mammoth creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

mammoth_cv_count is a number that varies.	[number of times CV'd]

when play begins:
	add { "Mammoth" } to infections of hermaphrodite;
	add { "Mammoth" } to infections of furry;

to say mammothdesc:
	setmongender 5; [creature is herm]
	say "     Before you is a large, stocky herm creature. Her infection clearly having been affected by the woolly mammoths on display at the museum, she's become a very heavy set individual. At roughly 6 1/2 feet tall, she's also about four feet wide. She's got a head not-unlike that of an elephant, with a long, flexing trunk and a pair of large, ivory tusks. But unlike an elephant, her head and body is covered in a thick pelt of brown fur. She's got big, meaty hands with short, stubby fingers. Her feet are round, flat and have barely noticeable toes.";
	say "     But what is clearly the most noticeable on her is her massive endowments. This mammoth is truly mammoth, with breasts, balls and cock of massive proportions. Her breasts have a shorter coat of fur on them, but even a lengthy coat wouldn't hide those beachball-sized knockers. Her balls, nearly as big, are as big as medicine balls and seem nearly as heavy to look at them. And those balls are huge to feed her enormous cock. Dragging to the floor, her member is nearly four feet long when flaccid. You gulp audibly as you notice it start to stir and swell as she looks you over with a lustful twinkle in her wild eyes.";


to say losetomammoth:
	let antiscale be 8 - scalevalue of player;
	if mammoth_cv_count > 2:
		increase antiscale by 2;
	else if mammoth_cv_count > 0:
		increase antiscale by 1;
	if vorelevel > 1 and a random chance of vorelevel in 4 succeeds and a random chance of antiscale in 8 succeeds:
		increase mammoth_cv_count by 1;
		if graphics is true:
			if the remainder after dividing mammoth_cv_count by 5 is 1:
				project the figure of Mammoth_CV1_icon;
			else if the remainder after dividing mammoth_cv_count by 5 is 2:
				project the figure of Mammoth_CV2_icon;
			else if the remainder after dividing mammoth_cv_count by 5 is 3:
				project the figure of Mammoth_CV3_icon;
			else if the remainder after dividing mammoth_cv_count by 5 is 4:
				project the figure of Mammoth_CV4_icon;
			else:
				project the figure of Mammoth_CV5_icon;
			WaitLineBreak;
		say "     The mammoth creature laughs at her victory and pushes you down to the floor. She drops her massive cock down atop you, making you release an [']Oof!['] as it slams atop you. She starts rubbing her large hands overtop of it and her balls while grinding her growing erection down atop you[if scalevalue of player is 5]. Once erect, her cock is nearly as large as you are and drools a constant stream of her precum over you[else if scalevalue of player > 2]. Once erect, her cock is larger than you are and drools a constant flow of precum over you[else]. Even before the fight ended, her cock was probably bigger than you and now it's utterly massive, burying you under its enormous weight and drooling what seems like mouthfuls of precum by the second all over you[end if]. The scent of this starts to cloud your mind, making you rub yourself against it as best you can, working to pleasure the hyper-endowed mammoth, only to be frustrated as she pulls it away and stomps back several steps.";
		say "     Slapping her massive meat onto the floor, she moves forward again, charging her yawning cock towards your feet. They pop right into her cumslit as you're taken in up to you [if scalevalue of player > 3]ankles[else]knees[end if]. With that start, her muscular inner walls squeeze and pull at your legs, drawing you steadily further into her. The floor, already slick with her precum, provides little purchase for you as you slide across the tiles and steadily deeper into the mighty phallus. As more of you is consumed by the pulsating rod, your hips are engulfed[if cocks of player is 1], pressing your shaft firmly against your belly, massaging it until you cry out in orgasm[else if cocks of player > 1], pressing your shafts firmly against your belly, massaging them until you cry out in orgasm[else if player is female], squeezing your thighs tightly against your aching puss[yfn] until you cry out in orgasm[end if].";
		say "     You are pulled in further and further, her giant cock bulging around your [body size of player] body as more and more of you is pulled in until only your head remains outside. She pauses here brief to catch her breath before wrapping both meaty hands around her enormous phallus, raising it upwards and stroking down it, helping to push you the rest of the way in. With a scream that turns to a wet gurgle before being muffled entirely, you are pulled fully into her shaft and slide your way even deeper. Pushed and pulled down, you are eventually deposited in one of her massive balls. Exhausted and surrounded by the hot, musky air, you pass out as her semen soaks into you.";
		say "     A churning around you awakens you to a semi-conscious state much later. This builds quickly with a trumpeting cry from beyond the fleshy walls surrounding you. You move quickly back through her titanic cock as she ejaculates, pushed along by the torrent of semen that comes out with you. You land in a big, sticky mess that stains the floor and wall all around you. You lay there for quite some time, overcome by your strange, yet oddly arousing, experience.";
	else if ublevel > 1 and a random chance of ublevel in 4 succeeds and a random chance of antiscale in 8 succeeds:
		say "     The mammoth creature laughs at her victory and picks you up on the floor. She forces you to stand upright, before dropping her massive cleft atop you. Your head pops inside her tight slit with a wet sound, and the pinkish flesh muffles your gasp of surprise. Little by little, she lowers her hips towards the ground, pressing you in like a living dildo. [if scalevalue of player is 5]Your size makes your insertion a tight feat, but it seems that the pachyderm loves it this way, and more lubrication flows on your body, allowing you to slip in, little by little.[else if scalevalue of player > 2]. Despite your normal size, the pachyderm's pussy takes you in without any difficulty, and your entire body is effortlessly pushed down her hole.[else]Although, compared to the size of her love tunnel, a simple vibrating bullet would be more comparable, as you are literally squished by the internal pressure against the pachyderm's cervix[end if]. The warmth and the moistness cloud your mind, making you rub yourself against the inner wall as best you can, working to pleasure the hyper-endowed mammoth from the inside, until you feel a large finger push you against her cervix.";
		say "     You cry out as the large fingers spread your [if player is female]pussy[else]ass[end if] apart. [if scalevalue of player > 3]It takes several minutes for your head to pass the tight barrier, not helped in the least by the muscles squeezing you as the mammoth goes through an orgasm.[else]your head passes through, followed by your body; midway, your advance is stopped as the inner walls squeeze you while the mammoth orgasms[end if]. Eventually, you fall into her womb. The pouch stretches to accommodate your size, but even then it is a tight fit. The moistness and the heat reaches new levels, and your arousal peaks as well. Unable to hold out any longer, you hump against the tight space, and masturbate yourself. You feel something press on the outside, and pet your flesh shelter: it seems than the hermaphrodite appreciates your wriggling. You cry out in orgasm. Afterwards, drowsiness overtakes you; assuming a fetal position, your eyes close, and you pass out.";
		say "     A churning around you awakens you to a semi-conscious state much later. This builds quickly with a trumpeting cry from beyond the fleshy walls surrounding you. You move quickly back through her deep cunt as she gives [']birth['] to you once again, pushed along by the contractions and the torrents of femcum that comes out with you. You land in a big, sticky mess that stains the floor and wall all around you. You lay there for quite some time, overcome by your strange, yet oddly arousing, experience.";
	else:
		say "     The mammoth creature laughs at her victory and pushes you down to the floor. She drops her massive cock down atop you, making you release an [']Oof!['] as it slams atop you. She starts rubbing her large hands overtop of it and her balls while grinding her growing erection down atop you[if scalevalue of player is 5]. Once erect, her cock is nearly as large as you are and drools a constant stream of her precum over you[else if scalevalue of player > 2]. Once erect, her cock is larger than you are and drools a constant flow of precum over you[else]. Even before the fight ended, her cock was probably bigger than you and now it's utterly massive, burying you under its enormous weight and drooling what seems like mouthfuls of precum by the second all over you[end if]. The scent of this starts to cloud your mind, making you rub yourself against it as best you can, working to pleasure the hyper-endowed mammoth. Eventually, she trumpets in ecstasy and presses her cock down onto you hard before blasting a huge load that paints your upper body (and a large chunk of the floor and wall behind you) white with her semen.";
	infect;

to say beatthemammoth:
	if libido of player > 33:
		say "     Having beaten the mammoth herm, you knock her onto her back and she moans in disappointment. Weighed down by her own endowments, she's too tired to get up and continue fighting. She pulls her cock into her arms to get some relief on her own.";
		say "     [bold type]You find yourself wondering if perhaps you could help her along a little while having some fun as well.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			if player is male:
				say "     Heaving up her balls, you catch a glimpse of her large, dripping cunt and grin. Feeling you playing with her there, she removes a meaty paw from her cock to help hold up her giant testes while you bring your penis into position. Thrusting into her juicy hole, you slide in easily. Her huge cunt, while loose, it still delightfully warm, wet and juicy, and grips around your shaft quite well. You bring your hands back up to keep her balls boosted up, letting her bring her paw back to her massive cock. By this point, it seems nearly twice her height and most of her width as well. As you fuck her, you can feel her balls churn with semen, signaling her approaching peak. You pick up the pace, fucking her as hard as you can until she trumpets happily and blasts her load across the floor and wall behind her. Finding the massive display of virility arousing, you cum as well, pumping your load into her, [if cock width of player < 10]invoking some small tremors in response[else if cock width of player < 20]making her moan softly as her cunt ripples over your spurting shaft[else if cock width of player < 30]making her moan loudly as her cunt squeezes down onto your spurting shaft[else]causing her to trumpet again as she cums a second time as you fill her with your huge load, making even her large body bloat noticeably to contain it all[end if]. Once you're finished, you pull out and leave her on the floor, dazed after her massive orgasm.";
			else:
				say "     You climb on her cock and straggle the thick, hard shaft. You move your hips, grinding your crotch against the warm skin. The mammoth does not mind at all, and keep stroking herself, while you get along for the ride. You progressively get faster and faster, emboldened by the sensation of the blood flowing under your legs, eventually grabbing the massive rod in your arms for additional leverage. The pachyderm cums eventually, around the same time as you, the soft rumble of the cum rushing in her urethra accompanying the quivers of your puss[if cunts of player > 1]ies[else]y[end if]. Once you're finished, you leave your comfortable and slowly softening seat and leave her on the floor, dazed after her massive orgasm.";
		else:
			LineBreak;
			say "     You choose to leave her to her own devices, certain that she'll be able to take care of herself.";
	else:
		say "     Having beaten the mammoth herm, you knock her onto her back and she moans in disappointment. Weighed down by her own endowments, she's too tired to get up and continue fighting. She pulls her cock into her arms to get some relief on her own and you leave her to it.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Mammoth"; [ Infection/Creature name. Capitalized. ]
	now attack entry is "[one of]The mammoth slams into you, trying to smother you with her hairy bosom![or]The mammoth herm swings her semi-hard cock at you like a meat club. THWACK![or]The mastadon knocks you over and drops her hefty ballsack onto your face, teabagging you with the heavy orbs![or]The mammoth herm grabs you with her trunk, trying to choke the fight out of you![or]The mastadon punches you violently with its powerful fists![or]The mastadon herm jabs at you with her ivory tusks![at random]"; [ Successful attack message ]
	now defeated entry is "[beatthemammoth]"; [ Text when monster loses. ]
	now victory entry is "[losetomammoth]"; [ Text when monster wins. ]
	now desc entry is "[mammothdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "elephantine, with a trunk and big tusks";
	now body entry is "large and stocky, like a big block of meat. Your hands are large, but only possess small, meaty fingers. Your feet are round, flat and have barely noticeable toes";
	now skin entry is "shaggy brown fur";
	now tail entry is "You have a short, thin tail covered in brown hairs.";
	now cock entry is "human";
	now face change entry is "your vision blurs and there's a painful stabbing at your jaw that seems to build and build. This almost keeps you from noticing the odd swelling you feel at your nose. By the time your sight becomes clear again, you have large tusks of ivory in the way and a long, flexible trunk between them";
	now body change entry is "it begins to bulge outwards, taking on an overall stocky build, but you are over six feet tall as well. Your hands and feet swell, becoming large and rounded, with stubby fingers and toes on them";
	now skin change entry is "shaggy, brown hair starts to cover you all over";
	now ass change entry is "as your lower spine changes, growing to form a short, thin tail. It twitches a few times before being covered in a thick coat of brown fur";
	now cock change entry is "it throbs and spurts, spraying copious amounts of semen as it takes on a predominantly human form, uncut and dripping";
	now str entry is 18; [ These are now the creature's stats... ]
	now dex entry is 16; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20; [ These values may be used as part of alternate combat.]
	now per entry is 8;
	now int entry is 12;
	now cha entry is 6;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 125; [ The monster's starting HP. ]
	now lev entry is 12; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15; [ Monster's average damage when attacking. ]
	now area entry is "Museum"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 60; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 40; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 15; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 25; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 25; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]stocky[or]large[or]big[as decreasingly likely outcomes]";
	now type entry is "[one of]elephantine[or]mammoth[purely at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

when play ends:
	if bodyname of player is "Mammoth":
		if humanity of player < 10:
			if player is pure:
				project the figure of Mammoth_CVF_icon;
			say "     You succumb to your strange, new instincts and wander the museum and its environs. There you have fun playing with the other massively-endowed mammoths living there. Over time, you become fully grown like them. ";
			if player is herm:
				say "     Your cock[smn], balls and breasts all swell to sizes comparable to theirs[if player is not pure] and your body completes its change to be like them[end if] from the over-exposure to their excessive cum. Your cunt also becomes wide and deep, big enough to accept their enormous cocks. You, like all the mammoths, can't fit much more than the giant glans and the first few feet, but it's plenty. After mating, a mammoth is left adorably rounded, bloated like a balloon filled with cum, unable to move for hours.";
			else if player is male:
				say "     Your cock[smn] and balls swell to sizes comparable to theirs[if player is not pure] and your body completes its change to be like them[end if] from the over-exposure to their excessive cum. You enjoy mating with the lovely mammoths. Given your huge size, they can't fit much more than the giant glans and the first few feet, but it's plenty. After mating, a mammoth is left adorably rounded, bloated like a balloon filled with cum, unable to move for hours. And being purely male, you experience doing that to the sexy herms often.";
			else if player is female:
				say "     Your breasts all swell to sizes comparable to theirs[if player is not pure] and your body completes its change to be like them[end if] from the over-exposure to their excessive cum. Your cunt also becomes wide and deep, big enough to accept their enormous cocks. You, like all the mammoths, can't fit much more than the giant glans and the first few feet, but it's plenty. After mating, a mammoth is left adorably rounded, bloated like a balloon filled with cum, unable to move for hours. And being purely female, you experience that wonderfully full feeling often.";
			else:
				say "[if player is not pure]     Your body completes its change to be like a mammoth like them from the over-exposure to their excessive cum[end if]. Despite many eager attempts by the horny herms, they can't cure you of your lack of genitalia. But that doesn't bother you much in the end as you are always a welcome playmate with the others, helping them guide their massive cocks into giant cunts. While they can't fit much more than the giant glans and the first few feet, that's plenty and leaves a lot for you to rub, lick and caress with your trunk while the coupled pair fuck. After mating, a mammoth is left adorably rounded, bloated like a balloon filled with cum, unable to move for hours. That's a sight you never tire of seeing.";
			say "     To add to the excitement, the sabertooths also take considerable interest in the large, lumbering mountains of mammoth meat. Following their instincts, the felines will stalk and attack the mammoths in packs. But instead of eating them, they instead use them for a more pleasurable source of food. The sexy smilodons will take turns nursing milk from those massive breasts while others rub and paw at a mammoth's cock and balls, getting them to cum a massive flood of cream for the kitties to lick up.";
		else:
			say "     You survive, but have been significantly changed by your experience in the city. Your mammoth form draws some interest from the scientists, apparently being a rarer infection - at least among the survivors. During your time there, you are subject to several tests before finally released back into the world.";
			if the player is pure:
				say "     You get a job working at another museum, talking to patrons about life during the Ice Age. It's boring at times and punctuated by a lot of children eager to play with you and overly cautious parents keeping them back. But a lot of the time, you have a good time at work, especially when you get a moment to slip away with a visitor into a back area for some private fun. These are more common than you would have expected at first. It seems that word's spread about you from your other happy liaisons and repeat business for the museum goes up as well, making everyone happy.";
			else:
				let mammothskintemp be "";
				if skinname of player is "Mammoth":
					now mammothskintemp is "northern ";
				say "     You get a job working dockside at a coastal city, your big, strong body an asset in your line of work. While your hands aren't the best for delicate work, they're more than able to grip and heave around the crates and boxes while loading and unloading ships. It's largely a peaceful job, which satisfies you. The only excitement comes on the rare occasion you spot an infected stowaway trying to smuggle themselves into the country. Feeling sympathy for them, you always play with the pent-up transformee before helping them get off the ship and past the security checks. It always brings a smile to your face when you see a few others in town having gained the new infection in the area.";

Mammoth ends here.
