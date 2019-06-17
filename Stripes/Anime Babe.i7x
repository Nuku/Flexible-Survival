Version 1 of Anime Babe by Stripes begins here.
[Version 1.3 - Added Anime Babe vulnerability]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]

"Adds Anime Babe to Flexible Survival."


noanimebabesex is a number that varies.

Definition: a person is animebabebodied:
	if BodyName of Player is "Anime Babe", yes;
	no;

to say animebabedesc:
	setmongender 4;
	say "     You find yourself facing off with a cartoonishly proportioned woman. Her body is covered in shiny, perfectly smooth, pink skin, looking exactly the same in any light. Her head is fairly large in proportion to her body and has long, blue hair. Her face has a small, near invisible nose and gargantuan, shining eyes that are very expressive. Her body is rail thin without any visible body fat or apparent room for most of her vital organs. When at rest, no part of her seems to move at all. Her arms are exceptionally scrawny, almost skeletal. Her elbows are extremely angular, and her hands are quite dainty. Her legs are disproportionately lengthy, making up a full two thirds of her height. Each is extremely slender, tapering down to feet so small it's a wonder she can stand.";
	say "     The girl is dressed in a small shirt and short skirt, much like a Japanese school girl outfit. This [one of]pink[or]white[or]blue[at random] shirt does little to cover her plump breasts. To go with her large bosom, she has a tight little ass, and constantly seem to be bending over to give you a clear view of either those lovely jugs or her pert bottom.";
	say "     She giggles and says something which sounds Japanese, full of 'Desu', 'Kawaii' and 'Keki'. She runs towards you, breasts swaying as holds her arms up at her sides";
	if ( player is male and ( CockName of Player is "Tentacle Horror" or CockName of Player is "Parasitic Plant" or CockName of Player is "Squid" or TailName of Player is "Cerberus" ) ) or BodyName of Player is "Squid":
		say ". She seems particularly excited and attacks you with wild abandon";
		increase monhitbonus by 2;
		decrease mondodgebonus by 2;
		decrease monmindbonus by 2;
	say ".";

to say losetoanimebabe:
	now noanimebabesex is 0;
	if HP of Player > 0:
		say "     Unwilling to continue to fight the cute girl, you let her push you to the ground at her feet. ";
	else:
		say "     Beaten by the anime babe, she giggles happily and pushes you to the ground. ";
[	if animeclubfight is true:
		say "     Grabbing you by the shoulder, she pulls you fully into the room forces you down in front of the television set.";
	else if Player is male and CockName of Player is "Parasitic Plant":		]
	if Player is male and CockName of Player is "Parasitic Plant":
		say "As she stands over you, you are given a good view of her [one of]pink[or]white[or]blue[or]kitty[at random]panties. This causes your plant-like cock to stir to life. Compelled by the great, universal attraction between anime babes and tentacles, your vine-like cock extends in length and lunges up into her, tearing her panties and thrusting into her, causing her giggles to turn to a surprised moan. Her hips tremble as she squirms in mid-air as your tentacle cock thrusts and pounds at her.";
		say "     Getting weak in the knees, she falls atop you, making it all the easier for you to fuck your would-be assailant[if anallevel > 1 and Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth while a third pushes past her tight pucker to fuck her ass[else if Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth and down her throat as you fuck her[else if anallevel > 1 and Cock Count of Player is 2 and a random chance of 2 in 5 succeeds]. Your other tentacle cock wriggles around to her asshole and thrusts into her tight pucker, fucking her pink little hole[else if Cock Count of Player is 2]. Your other tentacle cock extends itself and dives into her mouth and down her throat as you fuck her[end if]. Your body, lost in the lust of fucking such a prize catch so suitable for your altered penis, grips her close and fondles her [one of]ass, making her moan[or]breasts, playing with her nipples[at random][if Cock Count of Player > 1]. Your twisting shafts, as if craving the anime girl's sexy body, pound away at her until you finally cum, pumping her full of your semen[else]. Your twisting shafts, as if craving the anime girl's sexy body, pounds away at her until you finally cum, pumping her full of your semen[end if]. Finished with her, you push her aside and get up, staggering off in a lust-filled daze and leaving her lying there leaking your plant-like cum from her well-used body.";
		decrease humanity of Player by 2;
		increase Libido of Player by 5;
		if Libido of Player > 100, now Libido of Player is 100;
		infect "Parasitic Plant";
	else if Player is male and CockName of Player is "Tentacle Horror":
		say "As she stands over you, you are given a good view of her [one of]pink[or]white[or]blue[or]kitty[at random]panties. This causes your prehensile cock to stir to life. Compelled by the great, universal attraction between anime babes and tentacles, your slimy cock extends in length and lunges up into her, tearing her panties and thrusting into her, causing her giggles to turn to a surprised moan. Her hips tremble as she squirms in mid-air as your tentacle cock thrusts and pounds at her.";
		say "     Getting weak in the knees, she falls atop you, making it all the easier for you to fuck your would-be assailant[if anallevel > 1 and Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth while a third pushes past her tight pucker to fuck her ass[else if Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth and down her throat as you fuck her[else if anallevel > 1 and Cock Count of Player is 2 and a random chance of 2 in 5 succeeds]. Your other tentacle cock wriggles around to her asshole and thrusts into her tight pucker, fucking her pink little hole[else if Cock Count of Player is 2]. Your other tentacle cock extends itself and dives into her mouth and down her throat as you fuck her[end if]. Your body, lost in the lust of fucking such a prize catch so suitable for your altered penis, grips her close and fondles her [one of]ass, making her moan[or]breasts, playing with her nipples[at random][if Cock Count of Player > 1]. Your twisting shafts, as if craving the anime girl's sexy body, pound away at her until you finally cum, pumping her full of your semen[else]. Your twisting shafts, as if craving the anime girl's sexy body, pounds away at her until you finally cum, pumping her full of your semen[end if]. Finished with her, you push her aside and get up, staggering off in a lust-filled daze and leaving her lying there leaking your slimy cum from her well-used body.";
		decrease humanity of Player by 2;
		increase Libido of Player by 5;
		if Libido of Player > 100, now Libido of Player is 100;
		infect "Tentacle Horror";
	else if Player is male and TailName of Player is "Cerberus":
		say "As she stands over you, you are given a good view of her [one of]pink[or]white[or]blue[or]kitty[at random]panties. This causes your tailcock to stir to life. Compelled by the great, universal attraction between anime babes and tentacles, your hidden cock extends in length and lunges up into her, tearing her panties and thrusting into her, causing her giggles to turn to a surprised moan. Her hips tremble as she squirms in mid-air as your tentacle cock thrusts and pounds at her.";
		say "     Getting weak in the knees, she falls atop you, making it all the easier for you to fuck your would-be assailant[if anallevel > 1 and Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth while a third pushes past her tight pucker to fuck her ass[else if Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth and down her throat as you fuck her[else if anallevel > 1 and Cock Count of Player is 2 and a random chance of 2 in 5 succeeds]. Your other tentacle cock wriggles around to her asshole and thrusts into her tight pucker, fucking her pink little hole[else if Cock Count of Player is 2]. Your other tentacle cock extends itself and dives into her mouth and down her throat as you fuck her[end if]. Your body, lost in the lust of fucking such a prize catch so suitable for your altered penis, grips her close and fondles her [one of]ass, making her moan[or]breasts, playing with her nipples[at random][if Cock Count of Player > 1]. Your twisting shafts, as if craving the anime girl's sexy body, pound away at her until you finally cum, pumping her full of your semen[else]. Your twisting shafts, as if craving the anime girl's sexy body, pounds away at her until you finally cum, pumping her full of your semen[end if]. Finished with her, you push her aside and get up, staggering off in a lust-filled daze and leaving her lying there leaking your infernal cum from her well-used body.";
		decrease humanity of Player by 2;
		increase Libido of Player by 5;
		if Libido of Player > 100, now Libido of Player is 100;
		infect "Cerberus";
	else if BodyName of Player is "Squid":
		say "As she stands over you, you are given a good view of her [one of]pink[or]white[or]blue[or]kitty[at random]panties. This causes your tentacle limbs to stir to life. Compelled by the great, universal attraction between anime babes and tentacles, your tentacles reach up and lunges up into her, tearing her panties and thrusting into her, causing her giggles to turn to a surprised moan. Her hips tremble as she squirms in mid-air as your tentacles thrusts and pounds at her.";
		if Player is male and CockName of Player is "Squid":
			say "     Getting weak in the knees, she falls atop you, making it all the easier for you to fuck your would-be assailant[if anallevel > 1 and Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth while a third pushes past her tight pucker to fuck her ass[else if Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth and down her throat as you fuck her[else if anallevel > 1 and Cock Count of Player is 2 and a random chance of 2 in 5 succeeds]. Your other tentacle cock wriggles around to her asshole and thrusts into her tight pucker, fucking her pink little hole while one of your tentacle limbs finds its way into her mouth and down her throat[else if Cock Count of Player is 2]. Your other tentacle cock extends itself and dives into her mouth and down her throat as you fuck her[else if anallevel > 1]. Your other tentacle limbs find their way to her ass and mouth, pushing into her other orifices[else]. One of your tentacle limbs finds its way to her mouth and pushes down her throat as you fuck her[end if]. Your body, lost in the lust of fucking such a prize catch so suitable for your altered form, grips her close and fondles her [one of]ass, making her moan[or]breasts, playing with her nipples[at random][if Cock Count of Player > 1]. Your twisting shafts, as if craving the anime girl's sexy body, pound away at her until you finally cum, pumping her full of your semen[else]. Your twisting shafts, as if craving the anime girl's sexy body, pounds away at her until you finally cum, pumping her full of your semen[end if][if Player is female]. Lost in your waves of lust, you drive a tentacle into your own juicy cunt, fucking yourself as well[end if]. Finished with her, you push her aside and get up, staggering off in a lust-filled daze and leaving her lying there leaking your sticky cum from her well-used body.";
		else if Player is male:
			say "     Getting weak in the knees, she falls atop you, making it all the easier for you to assault your would-be assailant. Swapping the tentacle at her pussy for your cock, you start fucking her while your tentacle limbs hold her down[if anallevel > 1]. Another of your tentacle limbs extends itself and dives into her mouth while a third pushes past her tight pucker to fuck her ass[else]. Another of your tentacle limbs extends itself and dives into her mouth and down her throat as you fuck her[end if]. Your body, lost in the lust of playing with such a prize catch so suitable for your altered form, grips her close and fondles her [one of]ass, making her moan[or]breasts, playing with her nipples[at random]. Your twisting tendrils, as if craving the anime girl's sexy body, pound away at her until you finally cum, pumping her full of your semen[if Player is female]. Lost in your waves of lust, you drive a tentacle into your own juicy cunt, fucking yourself as well. You don't stop until you've gotten off several times, giggling happily as you do[end if]. Finished with her, you push her aside and get up, staggering off in a lust-filled daze and leaving her lying there, her holes gaping from your fun with her.";
		else:
			say "     Getting weak in the knees, she falls atop you, making it all the easier for you to assault your would-be assailant[if anallevel > 1]. Another of your tentacle limbs extends itself and dives into her mouth while a third pushes past her tight pucker to fuck her ass[else]. Another of your tentacle limbs extends itself and dives into her mouth and down her throat as you fuck her[end if]. Your body, lost in the lust of playing with such a prize catch so suitable for your altered form, grips her close and fondles her [one of]ass, making her moan[or]breasts, playing with her nipples[at random]. Your twisting tendrils, as if craving the anime girl's sexy body, pound away at her until she's cum several times[if Player is female]. Lost in your waves of lust, you drive a tentacle into your own juicy cunt, fucking yourself as well. You don't stop until you've gotten off several times, giggling happily as you do[end if]. Finished with her, you push her aside and get up, staggering off in a lust-filled daze and leaving her lying there, her holes gaping from your tentacular fun with her.";
		decrease humanity of Player by 2;
		increase Libido of Player by 5;
		if Libido of Player > 100, now Libido of Player is 100;
		infect "Squid";
	else if Player is male and CockName of Player is "Squid":
		say "As she stands over you, you are given a good view of her [one of]pink[or]white[or]blue[or]kitty[at random]panties. This causes your tailcock to stir to life. Compelled by the great, universal attraction between anime babes and tentacles, your squid cock extends in length and lunges up into her, tearing her panties and thrusting into her, causing her giggles to turn to a surprised moan. Her hips tremble as she squirms in mid-air as your tentacle cock thrusts and pounds at her.";
		say "     Getting weak in the knees, she falls atop you, making it all the easier for you to fuck your would-be assailant[if anallevel > 1 and Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth while a third pushes past her tight pucker to fuck her ass[else if Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth and down her throat as you fuck her[else if anallevel > 1 and Cock Count of Player is 2 and a random chance of 2 in 5 succeeds]. Your other tentacle cock wriggles around to her asshole and thrusts into her tight pucker, fucking her pink little hole[else if Cock Count of Player is 2]. Your other tentacle cock extends itself and dives into her mouth and down her throat as you fuck her[end if]. Your body, lost in the lust of fucking such a prize catch so suitable for your altered penis, grips her close and fondles her [one of]ass, making her moan[or]breasts, playing with her nipples[at random][if Cock Count of Player > 1]. Your twisting shafts, as if craving the anime girl's sexy body, pound away at her until you finally cum, pumping her full of your semen[else]. Your twisting shafts, as if craving the anime girl's sexy body, pounds away at her until you finally cum, pumping her full of your semen[end if]. Finished with her, you push her aside and get up, staggering off in a lust-filled daze and leaving her lying there leaking your sticky cum from her well-used body.";
		decrease humanity of Player by 2;
		increase Libido of Player by 5;
		if Libido of Player > 100, now Libido of Player is 100;
		infect "Squid";
	else if Player is male:
		say "Looking you over, she pulls out your [cock size desc of Player] [Cock of Player] shaft and strokes it to full hardness. Straddling your lap, she plunges her body down onto your cock[if Cock Length of Player > 20], taking it all in with apparent ease[end if] and riding you hard. She presses your face to her bosom. Your lips wrap around her nipple and suckles on it, causing additional moans from the sexy girl riding you. She works your cock hard with her cunt, driving you into herself until you cum loudly, pumping your hot load into her. Once she's gotten what she wants, she swats you with her paper fan, calling you a pervert and driving you off with several angry bashes.";
	else:
		say "Looking you over, she grabs your hand and presses it to her pussy, urging you to finger her dripping cunt. As you do this, she presses your face to her bosom. Your lips wrap around her nipple and suckles on it, causing additional moans from the sexy girl riding you. She grinds down onto your hand and has several quick climaxes that leave your hand and lap soaked in her juices by the time she's done with you and satisfied. Once she's gotten what she wants, she swats you with her paper fan, calling you a pervert and driving you off with several angry bashes.";


to say beattheanimebabe:
	say "     Having defeated the anime babe, you knock her to the ground and consider your next course of action. ";
	if animeclubfight is true:
		say "You turn your attention towards the tentacled young man in the video room.";
	else if Player is male and CockName of Player is "Parasitic Plant":
		now noanimebabesex is 0;
		say "The choice is taken out of your hands as your plant cock reacts to the anime girl's presence, rising and squirming with building arousal. Unable to control yourself, you flip up her skirt and pull down her [one of]pink[or]white[or]blue[or]kitty[at random] panties, uncovering her juicy little cunt. Clean and hairless, it seems to call to your tentacle cock as if she was made to be fucked by tentacles.";
		say "     She squeals and squirms as your vine-like cock pushes into her juicy cunt, moaning loudly in obvious pleasure despite her struggles. Pinning her down by her shoulders, you let your tentacle cock do its thing, sliding in and out of her, pounding into the horny girl beneath you[if anallevel > 1 and Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth while a third pushes past her tight pucker to fuck her ass[else if Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth and down her throat as you fuck her[else if anallevel > 1 and Cock Count of Player is 2 and a random chance of 2 in 5 succeeds]. Your other tentacle cock wriggles around to her asshole and thrusts into her tight pucker, fucking her pink little hole[else if Cock Count of Player is 2]. Your other tentacle cock extends itself and dives into her mouth and down her throat as you fuck her[end if][if Cock Count of Player > 1]. Your twisting shafts, as if craving the anime girl's sexy body, pound away at her until you finally cum, pumping her full of your semen[else]. Your twisting shafts, as if craving the anime girl's sexy body, pounds away at her until you finally cum, pumping her full of your semen[end if]. You leave her lying there, sticky with your plant cum as she lies there moaning in delight.";
		decrease humanity of Player by 2;
		increase Libido of Player by 5;
		if Libido of Player > 100, now Libido of Player is 100;
		infect "Parasitic Plant";
	else if Player is male and CockName of Player is "Tentacle Horror":
		now noanimebabesex is 0;
		say "The choice is taken out of your hands as your slimy cock reacts to the anime girl's presence, rising and squirming with building arousal. Unable to control yourself, you flip up her skirt and pull down her [one of]pink[or]white[or]blue[or]kitty[at random] panties, uncovering her juicy little cunt. Clean and hairless, it seems to call to your tentacle cock as if she was made to be fucked by tentacles.";
		say "     She squeals and squirms as your twisting cock pushes into her juicy cunt, moaning loudly in obvious pleasure despite her struggles. Pinning her down by her shoulders, you let your tentacle cock do its thing, sliding in and out of her, pounding into the horny girl beneath you[if anallevel > 1 and Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth while a third pushes past her tight pucker to fuck her ass[else if Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth and down her throat as you fuck her[else if anallevel > 1 and Cock Count of Player is 2 and a random chance of 2 in 5 succeeds]. Your other tentacle cock wriggles around to her asshole and thrusts into her tight pucker, fucking her pink little hole[else if Cock Count of Player is 2]. Your other tentacle cock extends itself and dives into her mouth and down her throat as you fuck her[end if][if Cock Count of Player > 1]. Your twisting shafts, as if craving the anime girl's sexy body, pound away at her until you finally cum, pumping her full of your semen[else]. Your twisting shafts, as if craving the anime girl's sexy body, pounds away at her until you finally cum, pumping her full of your semen[end if]. You leave her lying there, sticky with your slimy cum as she lies there moaning in delight.";
		decrease humanity of Player by 2;
		increase Libido of Player by 5;
		if Libido of Player > 100, now Libido of Player is 100;
		infect "Tentacle Horror";
	else if Player is male and TailName of Player is "Cerberus":
		now noanimebabesex is 0;
		say "The choice is taken out of your hands as your tailcock reacts to the anime girl's presence, rising and squirming with building arousal. Unable to control yourself, you flip up her skirt and pull down her [one of]pink[or]white[or]blue[or]kitty[at random] panties, uncovering her juicy little cunt. Clean and hairless, it seems to call to your tentacle cock as if she was made to be fucked by tentacles.";
		say "     She squeals and squirms as your twisting cock pushes into her juicy cunt, moaning loudly in obvious pleasure despite her struggles. Pinning her down by her shoulders, you let your tailcock do its thing, sliding in and out of her, pounding into the horny girl beneath you[if anallevel > 1 and Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth while a third pushes past her tight pucker to fuck her ass[else if Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth and down her throat as you fuck her[else if anallevel > 1 and Cock Count of Player is 2 and a random chance of 2 in 5 succeeds]. Your other tentacle cock wriggles around to her asshole and thrusts into her tight pucker, fucking her pink little hole[else if Cock Count of Player is 2]. Your other tentacle cock extends itself and dives into her mouth and down her throat as you fuck her[end if][if Cock Count of Player > 1]. Your twisting shafts, as if craving the anime girl's sexy body, pound away at her until you finally cum, pumping her full of your semen[else]. Your twisting shafts, as if craving the anime girl's sexy body, pounds away at her until you finally cum, pumping her full of your semen[end if]. You leave her lying there, sticky with your infernal cum as she lies there moaning in delight.";
		decrease humanity of Player by 2;
		increase Libido of Player by 5;
		if Libido of Player > 100, now Libido of Player is 100;
		infect "Cerberus";
	else if BodyName of Player is "Squid":
		now noanimebabesex is 0;
		say "The choice is taken out of your hands as your squid limbs reacts to the anime girl's presence, rising and squirming with building excitement. Unable to control yourself, you flip up her skirt and pull down her [one of]pink[or]white[or]blue[or]kitty[at random] panties, uncovering her juicy little cunt. Clean and hairless, it seems to call to your limbs as if she was made to be fucked by tentacles.";
		if Player is male and CockName of Player is "Squid":
			say "     She squeals and squirms as your twisting cock pushes into her juicy cunt, moaning loudly in obvious pleasure despite her struggles. Pinning her down by her shoulders, you let your prehensile cock do its thing, sliding in and out of her, pounding into the horny girl beneath you[if anallevel > 1 and Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth while a third pushes past her tight pucker to fuck her ass[else if Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth and down her throat as you fuck her[else if anallevel > 1 and Cock Count of Player is 2 and a random chance of 2 in 5 succeeds]. Your other tentacle cock wriggles around to her asshole and thrusts into her tight pucker, fucking her pink little hole while one of your tentacle limbs finds its way into her mouth and down her throat[else if Cock Count of Player is 2]. Your other tentacle cock extends itself and dives into her mouth and down her throat as you fuck her[else if anallevel > 1]. Your other tentacle limbs find their way to her ass and mouth, pushing into her other orifices[else]. One of your tentacle limbs finds its way to her mouth and pushes down her throat as you fuck her[end if][if Player is female]. Lost in your waves of lust, you drive a tentacle into your own juicy cunt, fucking yourself as well[end if][if Cock Count of Player > 1]. Your twisting shafts, as if craving the anime girl's sexy body, pound away at her until you finally cum, pumping her full of your semen[else]. Your twisting shafts, as if craving the anime girl's sexy body, pounds away at her until you finally cum, pumping her full of your semen[end if]. You leave her lying there, sticky with your cephalopod cum as she lies there moaning in delight.";
		else if Player is male:
			say "     She squeals and squirms as you swap your tentacle for your cock and start fucking her properly. Pinning her down by her shoulders, you pound into the horny girl beneath you[if anallevel > 1]. Another of your tentacle limbs extends itself and dives into her mouth while a third pushes past her tight pucker to fuck her ass[else]. Another of your tentacle limbs extends itself and dives into her mouth and down her throat as you fuck her[end if][if Player is female]. Lost in your waves of lust, you drive a tentacle into your own juicy cunt, fucking yourself as well[end if][if Cock Count of Player > 1]. Your twisting shafts, as if craving the anime girl's sexy body, pound away at her until you finally cum, pumping her full of your semen[else]. Your twisting shafts, as if craving the anime girl's sexy body, pounds away at her until you finally cum, pumping her full of your semen[end if]. You leave her lying there, sticky with your cephalopod cum as she lies there moaning in delight.";
		else:
			say "     She squeals and squirms as your twisting tentacle pushes into her juicy cunt, moaning loudly in obvious pleasure despite her struggles. Pinning her down by her shoulders, you let your prehensile limb do its thing, sliding in and out of her, pounding into the horny girl beneath you[if anallevel > 1]. Another of your tentacle limbs extends itself and dives into her mouth while a third pushes past her tight pucker to fuck her ass[else]. Another of your tentacle limbs extends itself and dives into her mouth and down her throat as you fuck her[end if]. Your twisting tendrils, as if craving the anime girl's sexy body, pound away at her until she's cum several times[if Player is female]. Lost in your waves of lust, you drive a tentacle into your own juicy cunt, fucking yourself as well. You don't stop until you've gotten off several times, giggling happily as you do[end if]. Finished with her, you leave her lying there, her holes gaping from your tentacular fun with her.";
		decrease humanity of Player by 2;
		increase Libido of Player by 5;
		if Libido of Player > 100, now Libido of Player is 100;
		infect "Squid";
	else if Player is male and CockName of Player is "Squid":
		now noanimebabesex is 0;
		say "The choice is taken out of your hands as your squid cock reacts to the anime girl's presence, rising and squirming with building arousal. Unable to control yourself, you flip up her skirt and pull down her [one of]pink[or]white[or]blue[or]kitty[at random] panties, uncovering her juicy little cunt. Clean and hairless, it seems to call to your prehensile cock as if she was made to be fucked by tentacles.";
		say "     She squeals and squirms as your twisting cock pushes into her juicy cunt, moaning loudly in obvious pleasure despite her struggles. Pinning her down by her shoulders, you let your prehensile cock do its thing, sliding in and out of her, pounding into the horny girl beneath you[if anallevel > 1 and Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth while a third pushes past her tight pucker to fuck her ass[else if Cock Count of Player > 2]. Another of your tentacle cocks extends itself and dives into her mouth and down her throat as you fuck her[else if anallevel > 1 and Cock Count of Player is 2 and a random chance of 2 in 5 succeeds]. Your other tentacle cock wriggles around to her asshole and thrusts into her tight pucker, fucking her pink little hole[else if Cock Count of Player is 2]. Your other tentacle cock extends itself and dives into her mouth and down her throat as you fuck her[end if][if Cock Count of Player > 1]. Your twisting shafts, as if craving the anime girl's sexy body, pound away at her until you finally cum, pumping her full of your semen[else]. Your twisting shafts, as if craving the anime girl's sexy body, pounds away at her until you finally cum, pumping her full of your semen[end if]. You leave her lying there, sticky with your infernal cum as she lies there moaning in delight.";
		decrease humanity of Player by 2;
		increase Libido of Player by 5;
		if Libido of Player > 100, now Libido of Player is 100;
		infect "Squid";
	else if noanimebabesex > 2:
		say "Despite the temptation to use the girl for some sexual relief, you are able to restrain yourself as you have with the others of her kind. You instead let the beaten girl run away crying.";
	else if Player is male:
		say "You look over the youthful anime babe, feeling quite tempted to go all hentai on her.";
		say "     [bold type]Shall you do so?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			now noanimebabesex is 0;
			say "     Following your baser instincts, you leap onto the sexy girl and pull up her skirt. She squirms and gives a squeal of 'Ecchi', but also giggles and [']accidentally['] pops open her shirt, exposing her shapely melons and perky pink nipples. With such an invitation, you grin and grab her breasts, squeezing them and lean down, licking at her nipples. She bites her lip, trying to hold back a moan, but eventually failing and crying out as you suck hard on one of them.";
			if a random chance of 2 in 5 succeeds:
				say "     Your hand dives under her skirt, flipping it up again and yanking down her [one of]pink[or]white[or]blue[or]kitty[at random] panties this time, exposing her tight, hairless little cunt. Already very wet, your fingers slip easily into her, making her moan and squeal delightfully. You continue these lecherous actions, driving her through several climaxes as you occasionally pause in one to stroke your [if Cock Count of Player > 1]cocks[else]own cock[end if]. Eventually, you cum across the sexy girl's [one of]breasts, coating them in your semen. She seems particularly delighted by this and rubs your cum across her tits and continues to play with herself even after you get up to leave[or]crotch, coating her cute pussy in your semen. She squirms as each shot splatters across her and moans happily as you pull her panties back up over the mess. She continues to play with herself, rubbing over her messy panties and squeezing her bosom even after you get up to leave[at random].";
			else:
				say "     Your hand dives under her skirt, flipping it up again and yanking down her [one of]pink[or]white[or]blue[or]kitty[at random] panties this time, exposing her tight, hairless little cunt. Already very wet, your fingers slip easily into her, making her moan and squeal delightfully. Satisfied that you've gotten her nice and ready, you move atop her and thrust your [cock size desc of Player] [Cock of Player] cock into her, making her arch her back and squeeze her tits. She moans as you pound away at her[if Cock Length of Player > 30], even your [cock size desc of Player] shaft able to push its way into her with some effort and much pleasure for the sexy female[else if Cock Length of Player > 20], your [cock size desc of Player] taking a little work to get into the sexy female, but bringing considerable pleasure to the both of you as you do[end if][if Cock Count of Player > 2 and anallevel > 1]. After a few thrusts, you pull out and move your slick cock to her little x pucker, pushing it into her ass as you sink another cock into her pussy, double-penetrating her[else if Cock Count of Player is 2 and anallevel > 1]. After a few thrusts, you pull out and move your slick cock to her little x pucker, pushing it into her ass as you sink another cock into her pussy, double-penetrating her[end if]. You bring your hands back up to her bosom, playing with her tits and licking her nipples as you fuck her. Eventually, it all becomes too much and you cum into the horny anime babe, filling her with your creamy seed. Done, you pull out and get up, leaving her there panting and leaking your seed from her recently stuffed hole[if Cock Count of Player > 1 and anallevel > 1]s[end if].";
		else:
			say "     Able to restrain yourself, you let the beaten girl run away crying.";
			increase noanimebabesex by 1;
	else if Player is female:
		say "You look over the youthful anime babe, feeling quite tempted to go all yuri on her. Shall you do so?";
		if Player consents:
			now noanimebabesex is 0;
			say "     Following your baser instincts, you leap onto the sexy girl and pull up her skirt. She squirms and gives a squeal of 'Ecchi', but also giggles and [']accidentally['] pops open her shirt, exposing her shapely melons and perky pink nipples. With such an invitation, you grin and grab her breasts, squeezing them and lean down, licking at her nipples. She bites her lip, trying to hold back a moan, but eventually failing and crying out as you suck hard on one of them.";
			say "     Your hand dives under her skirt, flipping it up again and yanking down her [one of]pink[or]white[or]blue[or]kitty[at random] panties this time, exposing her tight, hairless little cunt. Already very wet, your fingers slip easily into her, making her moan and squeal delightfully. You continue these lecherous actions while grinding your pussy down across her smooth, glossy leg before grabbing one of her hands and guiding it to your pussy so she can finger you as you play with her. She does so eagerly and you both enjoy several wet, sticky climaxes that leave you satisfied, at least for the moment. When you get up, she continues to play with herself, licking your juices from her fingers while rubbing her clit.";
		else:
			say "     Able to restrain yourself, you let the beaten girl run away crying.";
			increase noanimebabesex by 1;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Anime Babe" to infections of FemaleList;
	add "Anime Babe" to infections of BipedalList;
	now Name entry is "Anime Babe"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The anime babe giggles as she punches you soundly, sending you flying![or]The anime babe whips out a paper fan and smacks you repeatedly until you're dizzy![or]The anime babe kicks you in the gut![or]The anime babe bends over, flashing her panties at you![or]The anime babe lunges at you, burying your face in her bosom![at random]";
	now defeated entry is "[beattheanimebabe]";
	now victory entry is "[losetoanimebabe]";
	now desc entry is "[animebabedesc]";
	now face entry is "fairly large in proportion to your body, with long, bright blue hair, a near invisibly small nose, and gargantuan shining eyes"; [ Face description, format as "Your face is (your text)."]
	now body entry is "rail thin, without any visible body fat or apparent room for most of your vital organs. When at rest, no part of you seems to move at all, saving on animation. Your arms are exceptionally scrawny, almost skeletal. Your elbows are extremely angular, and your hands are quite dainty. Your legs are disproportionately lengthy, making up a full two thirds of your height. Each is extremely slender, tapering down to feet so small it's a wonder they can stand. Your body has grown a school girl's outfit to tantalizingly cover your overly sexualized body";
	now skin entry is "smooth, pink"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a tight little ass covered in cute panties that you can't help but flash at every opportunity.";
	now cock entry is "[one of]idealized[or]smooth[or]veinless[or]hairless[at random]";
	now face change entry is "your head swells as blue hair drifts down in front of your enlarged eyes. Blinking suddenly seems to take far more effort";
	now body change entry is "your body thins out, becoming extremely thin and androgynous. You suddenly feel as if you should be wearing a midriff-baring schoolgirl outfit. Your arms lose all trace of hair, fat, and muscle tone. In shock, you grab the back of your neck and start to sweat. Your legs begin to stretch and thin, each becoming twice the length of your torso. Even as your legs stretch, the rest of your body seems to shrink, leaving you a few inches shorter than you began when all is said and done";
	now skin change entry is "your skin becomes uniformly pink and hairless with gleaming white glares in bright light and oddly flat shadows in dim conditions";
	now ass change entry is "your ass firms and tightens, forming a pair of cute panties that you feel compelled to show off to others";
	now cock change entry is "you feel a tightening in your groin as your erection becomes unnaturally smooth and idealized. Your balls lose all hair, becoming smooth like your cock";
	now str entry is 12;
	now dex entry is 17;
	now sta entry is 12;
	now per entry is 14;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Female";
	now HP entry is 63; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 9; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 8; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Campus"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 5; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 9;
	now Cunt Tightness entry is 6;
	now libido entry is 60; [ Amount player Libido will go up if defeated ]
	now loot entry is "sticky sushi";
	now lootchance entry is 25; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]thin[or]slim[at random]";
	now type entry is "human"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "animebabe"; [ Row used to designate any special combat features, "default" for standard combat. ]
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


Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"animebabe"	retaliation rule	--	--	animehammer rule	25	--	--	--	--	--

this is the animehammer rule:		[double-damage]
	choose row MonsterID from the Table of Random Critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 50 ); [+100% damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "The anime babe pulls a huge hammer out of nowhere, slamming it into your head and [one of]pummeling you into the ground[or]sending you flying[at random]. This powerful blow does [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[headabsorbancy]"; [blow to the head]
	if absorb > dam:
		now absorb is dam;
	if absorb > 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease HP of the player by dam;
	increase HP of Player by absorb;
	follow the player injury rule;
	say "You are [descr].";


Section 4 - Drop Item - Sticky Sushi

Table of Game Objects (continued)
name	desc	weight	object
"sticky sushi"	"A small tray of rather suspect sushi."	1	sticky sushi

sticky sushi is a grab object. It is a part of the player. sticky sushi is infectious. The strain of sticky sushi is "Anime Babe".

The usedesc of sticky sushi is "[eatstickysushi]";

to say eatstickysushi:
	say "     Deciding to risk eating the sushi despite how old it probably is, you tentatively pop a piece into your mouth. Finding it quite tasty, if having a somewhat odd flavor, you rapidly consume the rest of the tray. It feels good to eat something, though there's an odd rumbling noise in your tummy that makes you giggle cutely.";
	PlayerEat 8;


Section 5 - Endings

when play ends:
	if BodyName of Player is "Anime Babe":
		if humanity of Player < 10:
			if Player is pure:
				if Player is female:
					say "     As your old life slips further and further away, you end up wandering off into the city in search of adventure and kawaii cuteness. You stumble around for a while, having many a misadventure - often seeming to involve tentacles - but always seem to come out of it okay in the end - though often with a sore end. Eventually, you wander onto campus and settle in there. You make friends with several of the other girls like you around, have sexy sleepovers and attend some of the intermittent (and often somehow erotic) classes that still go on[if Player is male]. Hiding something a little extra under your short dress, you make for a particularly popular student[end if].";
					say "     Life is happy and kawaii, but something seems to be missing. That is, until a giant tentacle monster, some eldritch horror bursts out from under one of the buildings. Having grown in power and escaped its imprisonment, the thirteen-eyed monstrosity lashes out with its many tentacles. And while all others run and flee in terror, you and your friends know that you must stand and fight together against this beast which would seek to destroy the world. That is what you were all meant to do.";
					say "     With this collective realization, you all get a flashy (and revealing) transformation sequence where you magically don a skimpy outfit, each in your favorite color. After giggling happily, you rush into battle in your girly outfits while waving sparkly wands and spouting meaningless Japanese catch phrases. And you are leading the charge as the cutest of the anime babes, flush with the protection of your main character field and the bonus power that always seems to come right after a new transformation sequence.";
					say "     It turns out to be a messy, sticky and tentacular battle that often has you moaning and crying in pleasure before you and your new team of anime babe defenders of love, happiness and all things kawaii manage to seal away the dark creature once again. At least for a while, that is. It, and others like it, always seem to come back, so you can all have more sexy, tentacle-rich battles (and sex) again and again.";
					say "     All in all, it is a very fun, if often sticky, life.";
				else if Player is male:
					say "     As your old life slips further and further away, you end up wandering off into the city in search of your place in the world. You stumble around for a while, generally moping around as an uninteresting young man with no particular character traits except that you're a nice guy and look good. That is, until you stumble across a small, fuzzy, kawaii little critter of indeterminate species. Barely a foot tall, but wonderfully kawaii, you feed it and pet it and before you know it, it's following you around.";
					say "     And moments later, that's when things really start to pick up for you. A cute babe runs into you and actually talks to you and you mumble and bumble around and even accidentally touch her breast and even after she's smacked you and sent you flying, she seems to like you and want to be your friend. And things cascade from there, as you meet her similarly cute and sexy friends in quick succession (all of whom are different archetypes, but always pretty), and despite your always seeming to screw up or accidentally groping them or walking in on them undressing and thereby upsetting them, they all seem to be really into you as well despite your blandness and lack of character. And while you can never quite seem to decide on which one should be your girlfriend, they always enjoy sneaking into your room and having a wild romp with you. There's the occasionally argument when one comes to find you in the throes of passion with another of her friends - you always seem to get hurt during those mishaps - but it's all back to normal the next morning.";
					say "     Despite the occasional punch that sends you flying, it's a good life.";
				else:
					say "     As your old life slips further and further away, you end up wandering off into the city in search of... something. You stumble around for a while with little direction until you stumble across a small, fuzzy, kawaii creature of indeterminate species. As you're befriending it, some other guy comes in with a few little critters of his own, demanding that you turn over your new friend to him and a battle between your Pet Critters (tm) ensues, which yours winds soundly.";
					say "     And with this, your purpose is found, collecting, training and battling your ever-growing collection of little Pet Critters (tm) against other handlers. You make friends, allies and enemies as you seek to become the best of them all. All in all, it is a fun and adventurous time with lots of G-rated fun (with loads of outtakes cut by the censors).";
			else:
				say "     As your old life slips further and further away, you end up wandering off into the city in search of some purpose to your mixed-up existence. You stumble around for a while, having many a misadventure - often seeming to involve tentacles. Eventually, you wander onto campus and, before you know it, you're pulled into a classroom with a bunch of other misfit anime people and critters like yourself. There are nerds, weird girls, yankees, stuck-up bitches (that are actually part dog), sports chicks and many others. It is a wild and raucous place where little actual learning seems to happen despite having a stern, lion-headed teacher who roars at you all when you get too far out of line.";
				if Player is not neuter:
					say "     Despite the disorganized and often frustratingly nonsensical nature of the place, you keep going back, possibly because of all the sexual escapades you and your classmates get into[if Player is female]. You even manage to get held back after class and have a very fulfilling cram session with your leonine teacher one time[else]. You are even pulled into a closet for sexy fun with a super-hot substitute teacher one time[end if]. You even get lucky enough to find a new student one day and drag them into the classroom to take the desk next to yours. After their initial confusion wears off and they realize that this mad place is where they belong, they become your best friend and favorite lover[if Player is female]. They've even got some hidden tentacles to make it all extra fun[end if]. The teacher will often yell at you both or throw chalk at you as you fuck wildly on the desks while he's trying to teach.";
					say "     All in all, it's a fun, if slightly surreal, life.";
				else:
					say "     Despite the disorganized and often frustratingly nonsensical nature of the place, you keep going back, possibly because of all the wacky fun escapades you and your classmates get into. And while you can't get to participate in many of the sexual antics that go on in there, several of the couples becomes friends with you and are always happy to accept your mouth [if anallevel > 1]or ass [end if]joining in. And you do your best to help the teacher mellow out a little, spending a lot of your time under his desk, sucking him off during class to cool his temper. And while you get teased about being the teacher's pet, it's all in good fun and you know a lot of them wish they could be so lucky.";
					say "     All in all, it's a fun, if slightly surreal, life.";
		else:
			if Player is pure:
				say "     Managing to keep it together while in the city, the military rescue eventually comes and extracts you and as many other (mostly) sane people they can from the fallen metropolis. While at the processing center, their confused scientists mull over the differences between you and a normal human. Unable to come to any definitive conclusions, they are forced to accept your explanation that you just have a different art style. Still retaining some of your humanity, your animation budget and art design (as you can't help but think about it) is still quite high and you are a sexy and smoothly moving piece of art. You can't help but draw the attention of many around you as your sleek and sensual body strides into a room.";
				say "     Craving adventure and rich with experience from learning to cope in the fallen city, you sign up with RSX and become one of their top operatives. Dressed in a slinky black outfit full of pouches and futuristic gear, you are sent in where others have failed. You have exciting, pulse-pounding adventures that only rarely recycle frames or animation sequences, though there's a lot of talking bits between those to help keep you within budget. But still, you have a high-action life of fighting mutants, sexing up lovers and saving the day again and again[if Player is female] (often from tentacled foes, it seems)[end if].";
				say "     Despite the occasional dark episode or nail-biting cliffhanger, it is a fun and exciting life.";
			else:
				say "     Managing to keep it together while in the city, the military rescue eventually comes and extracts you and as many other (mostly) sane people they can from the fallen metropolis. While at the processing center, their confused scientists mull over the differences between you and most of the other mutants they've found. Unable to come to any definitive conclusions, they are forced to accept your explanation that you just have a different art style.";
				say "     As your art style (as you can't help thinking about your infection at times) isn't quite held throughout your whole body, you have some trouble finding some focus to your life at first. You manage to settle into a workable routine after a little while, getting some work and making some friends. Everything's going along well until ";
				if Player is herm:
					say "a busty herm in big glasses stumbles into you. After a quick exchange, she has to dash off before you can even get her name... and that's when you realize that she ended up dropping her book.";
					say "     And so begins a heartwarming slice-of-life story where you try to find this person whose name you don't know and, in doing so, you also discover yourself. Along the way, you meet (and meat) many colorful characters, find your true calling as a sexy librarian and even discover some secrets about the world around you, culminating in a meeting with one of the executives at Zephyr. It is only then that you learn the person you sought was his daughter, who became infected despite his attempts to protect her. Returning her book with a bow, you talk briefly before leaving. She turns up at your library the next day, and every day after that, becoming your friend. This soon blossoms into love and you become a very happy couple.";
					say "     All in all, it is a fun and heartwarming life.";
				else if Player is male:
					say "an anime catgirl with kawaii ears and a sexy bottom crashes into you. Being chased by guys in masks and suits, she grabs your hand and drags you along on a comedic (and sex-filled) adventure full across the city. On this adventure, you meet (and meat) many colorful characters, fall in love with the catgirl and save her from the evil scientist out to get her for ill-defined reasons. Over the course of this, you make friends with your future boss, getting a job as a [one of]short order cook[or]waiter[or]bartender[at random] by pure accident while hiding out one day. It turns out you're actually quite good and it, too.";
					say "     Once you've managed to defeat the evil scientist, things settle down briefly before some new threat appears, coming after your sexy lover (again for ill-defined and contrived reasons) and it's off on another wacky adventure. It's a little hard balancing your work and these chase sequences, but your boss just seems to laugh it off, so it's all good.";
					say "     All in all, it's a fun, energetic life loaded with laughs and excitement.";
				else if Player is female:
					say "a wolf-headed boy slips and falls from the rooftops onto you one night. With another big and burly wolf-demon in hot pursuit of him, you are forced to flee together. He reveals to you he's off in search of the mystical wolf totems which will help him gain the full wolf-demon powers left for him by his father, the Wolf-Demon God. And so begins an epic adventure where you run off to wild, dangerous and exotic locations, trying to collect all the totems so the wolf-boy can absorb them and earn the powers they grant. Many of these are guarded by tentacled guardians that you must 'distract' while he gets the totem. Meanwhile the wolf-demon, his uncle, seeks to gain the very same for himself and steal the throne. Some you manage to find, others are taken away by his evil uncle at the last minute, making him stronger instead.";
					say "     In then end, the wolfman manages to steal away the powers the wolfboy's gained. In a final, desperate move, you let the victorious wolfman fuck your brains out, buying the wolfboy the time he needs to complete the ritual, gain all the powers and become the new Wolf-Demon God. Now fully mature in his inherited powers, he is able to dispatch the upstart in a blast of magical fury. Now a fully-fledged wolf-demon and the greatest of them, he takes you as his mate, siring many wolf-demon pups in you as he pounds you with his knotted phallus.";
					say "     All in all, it's a fun life of adventure and wild, animal sex.";
				else:
					say "you come across a strange robot girl in the alley. Broken and unworking, you drag her back to your home. Over the course of several days, you manage to get her working again. But some men in black suits and sunglasses seem to be watching as well, and so you're pulled into a strange adventure to keep her safe and find out where she came from and why she seems to be able to control the nanites sometimes. It is amusing at times and frightening at others, but you come out of it all the stronger as you witness your robotic friend transcend and disappear in a swell of light and music. And while you don't get all the answers in the end, it makes you question the nature of existence, humanity and the permanence of life and the soul.";
					say "     Altered by this experience, you are left with a touch of her powers, letting you ease the suffering of those deeply afflicted by infection and point them towards the light. You wander the world, guiding lost minds and souls by helping them recover a little of what they've lost, setting them on the path to a new life. While many don't make it, some do and the world is a better place for it.";
					say "     All in all, it is a long, long life that touches many.";


Anime Babe ends here.
