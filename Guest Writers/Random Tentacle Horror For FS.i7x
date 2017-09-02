Version 10 of Random Tentacle Horror For FS by Guest Writers begins here.
[ Version 10.1 - Another variation for MPreg path by Stripes]
[- Originally Authored By: Kazard -]

"Adds a Tentacle Horror to Flexible Survival's Wandering Monsters table, With Impreg chance"

Section 1 - Monster Responses

tentsubmit is a number that varies.
tentaclerape is a number that varies.
lasttentaclebattleoutcome is a number that varies.
eggplanted is a number that varies.
cuntsmall is a number that varies.
hascunt is a number that varies.
multicunt is a number that varies.
thmpregdetect is a truth state that varies. thmpregdetect is usually false.


to say horror victory:
	if hp of player > 0:
		now tentsubmit is 1;
	otherwise:
		now tentsubmit is 0;
	if cunts of player is greater than 0:
		if cunts of player is greater than 1:
			now multicunt is 1;
		otherwise:
			now multicunt is 0;
		now hascunt is 1;
	otherwise:
		now multicunt is 0;
		now hascunt is 0;
	if cunt length of player is less than 15 or cunt width of player is less than 12:
		now cuntsmall is 1;
	otherwise:
		now cuntsmall is 0;
	let mpregpath be 0;
	if cunts of player is 0 and "MPreg" is listed in feats of player, now mpregpath is 1;
	if ( "Male Preferred" is listed in feats of player and mpregpath is 0) or "Sterile" is listed in feats of player:
		say "The many tentacles wrap around you, eager to abuse, when they seem to notice something. Being entirely useless for their needs, the creature hurls you to the ground in disgust, but then leaves you.";
	otherwise if gestation of child > 0:
		if tentsubmit is 1:
			say "As you lie down in a clear sign of submission the creature excitedly approaches you extending its many tentacles towards you as it does so.[line break][line break]The creature wraps you in its slime coated appendages and flips you over, handling you like a prized possession. Tentacles crawl over your body, and under your clothing, right before tearing away your clothes the creature stops. Apparently sensing the new life growing inside of you the creature sets you down and leaves.";
			now lasttentaclebattleoutcome is 4;
		otherwise:
			say "The many tentacles wrap around you, eager to abuse, when they seem to notice something. Being entirely useless for their needs, the creature hurls you to the ground in disgust, but then leaves you.";
			now lasttentaclebattleoutcome is 5;
	otherwise if cunts of player is 0 and "MPreg" is listed in feats of player:
		if tentaclerape is 0:
			if tentsubmit is 1:
				say "As you lie down in a clear sign of submission, the creature excitedly approaches you, extending its many tentacles towards you as it does so. The creature wraps you in its slime coated appendages and flips you over, handling you like a prized possession. Tentacles crawl over your body, and under your clothing, before pulling away, ripping the garments from your body. A slimy tentacle probes over your body as the creature draws you closer. As the tendril glides between your ass cheeks, the tentacled monstrosity releases a gurgle of surprised delight upon detecting the secret hidden within your derriere.";
			otherwise:
				say "You've lost the will to continue your struggle against the horror. Collapsing to your knees on the cold concrete floor, you start to tilt forward. The creature catches you in its slime coated appendages before you hit the ground. However you quickly realize this was not out of kindness. Tentacles crawl over your body, and under your clothing, before pulling away, ripping the garments from your body. A slimy tentacle probes roughly over your body as the creature draws you closer. As the tendril grinds between your ass cheeks, the tentacled monstrosity releases a gurgle of surprised delight upon detecting the secret hidden within your derriere.";
			now thmpregdetect is true;
			say "This tendril, having found a suitable target for the creature's desires in an unlikely location, switches from probing at your anus to pushing its way into it. Lubricated by its slimy coating, the squirming flesh wriggles into your backside. Finding the hidden back entrance to your womb, it smears a spurt of oily gunk across it. As the hormones cause that hidden passage to gradually relax, the tendril withdraws from you, only to be replaced by one twice its size [if tentsubmit is 1]presses[otherwise]forces[end if] its way inside of you. Filling [if player is twistcapped]your capacious rump with ease as your tight passage stretches and expands to provide a tight and enjoyable fit[otherwise if scalevalue of player > 4]your huge rump with ease as your tight passage is forced open by the determined tendril[otherwise if scalevalue of player > 2]your rump with some effort as your tight passage is forced to stretch uncomfortably wide by the determined tendril[otherwise]your rump with considerable effort as your [body size of player] passage is forced far beyond its capacity by the determined tendril[end if]. It pounds within you, battering at that secret passage to your hidden womb before finally gaining entrance.";
			if cocks of player is 1:
				say "A tentacle brings your cock to full arousal, and wraps around it, jerking your member relentlessly. You quickly climax launching seed across the floor below you.";
			otherwise if cocks of player > 1:
				say "The tentacles holding you quickly bring your multiple dicks to erection, wrapping all around them, and forcing them against each other. The creature's appendages quickly jerks around your members for a few moments, then swaps to rubbing your cocks against one another, then returns to jerking your members off again. The sensations from this, in addition to the feeling of the huge tentacle pounding into you, cause you to quickly explode, launching your seed against the floor. The tentacles continue to jerk against your members long after your balls are empty and a puddle of your seed has collected beneath you.";
			say "[line break]";
			say "After countless [if cocks of player is 0]unsatisfying [end if]orgasms, your body barely responds to the attentions of the tentacles, your mind lost in a haze of pleasure. However your eyes go wide as you feel a watermelon-sized bulge traveling up the large tentacle wrapped around your leg and buried in your [if player is not twistcapped and scalevalue of player < 5]abused [end if]rectum. The bulge reaches your already over-stretched anus and begins to stretch it even further beyond what should be possible[if player is not twistcapped], the secretions around the tentacle somehow helping your anal passage widen far more elastically than normal[end if]. There's a feeling of surrender as the bulge finally passes its widest point and slips inside of you, coming to rest inside your battered womb.";
			say "As the tentacle removes itself from your body, the creature seems to hesitate for a moment, then seems to come to a decision as a different tentacle finds your gaping anus and plunges inside of you. It is quickly joined by two others, and all three piston in and out of your ass for what feels like hours, hardly stretching your battered rectum. Musky slime and sexual fluids ooze from around the thrusting tentacles down your legs, making an ever growing slick puddle on the floor beneath you.";
			say "Much later, the puddle beneath you stretches out into the shadows. The tentacles inside of you shudder and paint your womb with fertility cream, an action that is sure to jump start the fertilization of the egg the beast placed within you earlier, and causes your belly to swell to the point that it looks 7 months pregnant...";
			now tentaclerape is 1;
			if tentsubmit is 1:
				now lasttentaclebattleoutcome is 3;
			otherwise:
				now lasttentaclebattleoutcome is 2;
			say "[horror impreg]";
		otherwise if eggplanted is 0:
			if thmpregdetect is false:
				if tentsubmit is 1:
					say "As you lie down in a clear sign of submission, the creature excitedly approaches you, extending its many tentacles towards you as it does so. The creature wraps you in its slime coated appendages and flips you over, handling you like a prized possession. Tentacles crawl over your body, and under your clothing, before pulling away, ripping the garments from your body. A slimy tentacle probes over your body as the creature draws you closer. As the tendril glides between your ass cheeks, the tentacled monstrosity releases a gurgle of surprised delight upon detecting the secret hidden within your derriere.";
				otherwise:
					say "You've lost the will to continue your struggle against the horror. Collapsing to your knees on the cold concrete floor, you start to tilt forward. The creature catches you in its slime coated appendages before you hit the ground. However you quickly realize this was not out of kindness. Tentacles crawl over your body, and under your clothing, before pulling away, ripping the garments from your body. A slimy tentacle probes roughly over your body as the creature draws you closer. As the tendril grinds between your ass cheeks, the tentacled monstrosity releases a gurgle of surprised delight upon detecting the secret hidden within your derriere.";
			otherwise:
				if tentsubmit is 1:
					say "As you lie down in a clear sign of submission, the creature excitedly approaches you, extending its many tentacles towards you as it does so. The creature wraps you in its slime coated appendages and flips you over, handling you like a prized possession. Tentacles crawl over your body, and under your clothing, before pulling away, ripping the garments from your body. A slimy tentacle probes over your body as the creature draws you closer. The tendril once again glides between your ass cheeks, the tentacled monstrosity seeking out that fecund asshole of yours once again.";
				otherwise:
					say "You've lost the will to continue your struggle against the horror. Collapsing to your knees on the cold concrete floor, you start to tilt forward. The creature catches you in its slime coated appendages before you hit the ground. However you quickly realize this was not out of kindness. Tentacles crawl over your body, and under your clothing, before pulling away, ripping the garments from your body. A slimy tentacle probes roughly over your body as the creature draws you closer. The tendril once again grinds between your ass cheeks, the tentacled monstrosity seeking out that fecund asshole of yours once again.";
			now thmpregdetect is true;
			if a random chance of 1 in 3 succeeds:
				say "This tendril, having found a suitable target for the creature's desires in an unlikely location, switches from probing at your anus to pushing its way into it. Lubricated by its slimy coating, the squirming flesh wriggles into your backside. Finding the hidden back entrance to your womb, it smears a spurt of oily gunk across it. As the hormones cause that hidden passage to gradually relax, the tendril presses onwards, exploring your unusual anatomy with playful curiosity. You can feel it sliding across your inner walls, sending strange shivers of delight through you.";
				say "Held with your limbs splayed, it raises you into the air and runs several more tentacles over your body[if cocks of player > 0]teasing your cock[smn][end if][if breast size of player > 0]. It wraps a pair of groping tentacles around your breasts, squeezing and groping them[end if]. Another slimy tendril pushes into your panting mouth and worms its way down your throat. While it does so, its tentacles become more active and you're coated in its lubricating goo. The one buried deep inside you cums, spraying its semen into your hidden chamber.";
				say "For a moment, you expect it to be done, but it only withdraws that tendril to replace it with another. Soon your ass is getting fucked all over again while your [if cocks of player > 1]cocks spray their load while tentacles jerk you off for the creature's amusement[otherwise if cocks of player is 1]cock sprays its load while a tentacles jerks you off for the creature's amusement[end if]. You're fucked repeatedly by the tentacles, its seed pouring directly into your hidden womb even as you're fed hot loads of it from the one stuffed down your throat. You lose track of how many times it cums inside you, only knowing that it's lots and feeling wet and full despite the volume of semen that's been leaking out your overfull ass.";
				say "As if wanting to ensure that you're well-seeded to make sure your ass is actually fertile, it only brings in that extra-large tentacle after your belly's been bloated with its monstrous cum[if scalevalue of player < 4 and player is not twistcapped]. Despite certainly being well-lubricated, the tentacle's passage into you is still difficult due to the size jump[otherwise]. Being certainly well-lubricated, the tentacle's passage into your stretched rump is smooth and easy even with the size jump[end if]. You can't help but groan as the entrance to your womb it forced to open uncomfortably wide to accommodate first it and then even wider still as the bulky egg is deposited into your cum-laden uterus.";
				say "Finished with you, the tentacled monster deposits you onto the cold ground. You are left to recover in the pool of liquids the assault has created awhile the creature slithers off into the dark. It is some time before you regain your strength enough to stand and crawl back out of the basement.";
				say "[horror impreg]";
			otherwise:
				say "This tendril, having found a suitable target for the creature's desires in an unlikely location, switches from probing at your anus to pushing its way into it. Lubricated by its slimy coating, the squirming flesh wriggles into your backside. Finding the hidden back entrance to your womb, it smears a spurt of oily gunk across it. As the hormones cause that hidden passage to gradually relax, the tendril withdraws from you, only to be replaced by one twice its size [if tentsubmit is 1]presses[otherwise]forces[end if] its way inside of you. Filling [if player is twistcapped]your capacious rump with ease as your tight passage stretches and expands to provide a tight and enjoyable fit[otherwise if scalevalue of player > 4]your huge rump with ease as your tight passage is forced open by the determined tendril[otherwise if scalevalue of player > 2]your rump with some effort as your tight passage is forced to stretch uncomfortably wide by the determined tendril[otherwise]your rump with considerable effort as your [body size of player] passage is forced far beyond its capacity by the determined tendril[end if]. It pounds within you, battering at that secret passage to your hidden womb before finally gaining entrance.";
				if cocks of player is 1:
					say "A tentacle brings your cock to full arousal, and wraps around it, jerking your member relentlessly. You quickly climax launching seed across the floor below you.";
				otherwise if cocks of player > 1:
					say "The tentacles holding you quickly bring your multiple dicks to erection, wrapping all around them, and forcing them against each other. The creature's appendages quickly jerks around your members for a few moments, then swaps to rubbing your cocks against one another, then returns to jerking your members off again. The sensations from this, in addition to the feeling of the huge tentacle pounding into you, cause you to quickly explode, launching your seed against the floor. The tentacles continue to jerk against your members long after your balls are empty and a puddle of your seed has collected beneath you.";
				say "[line break]";
				say "After countless [if cocks of player is 0]unsatisfying [end if]orgasms, your body barely responds to the attentions of the tentacles, your mind lost in a haze of pleasure. However your eyes go wide as you feel a watermelon-sized bulge traveling up the large tentacle wrapped around your leg and buried in your [if player is not twistcapped and scalevalue of player < 5]abused [end if]rectum. The bulge reaches your already over-stretched anus and begins to stretch it even further beyond what should be possible[if player is not twistcapped], the secretions around the tentacle somehow helping your anal passage widen far more elastically than normal[end if]. There's a feeling of surrender as the bulge finally passes its widest point and slips inside of you, coming to rest inside your battered womb.";
				if a random chance of 95 in 100 succeeds: [The tentacles in the other cunt(s) might just explode!]
					say "As the tentacle removes itself from your body the creature seems to [if tentsubmit is 1]hesitate for a moment, then seems to lose interest and sets you down on the ground[otherwise]lose interest and drops you to the ground, leaving you alone to recover[end if], the egg remaining unfertilized.";
					now eggplanted is 1;
				otherwise:
					say "As the creature starts removing the largest tentacle from you, you [if tentsubmit is 1]are saddened that the creature might not fertilize[otherwise]believe it might let you go without fertilizing[end if] the egg this time. But just as you think it's about to remove the other tentacles, you suddenly feel them shudder, widen, and paint your body with fertility cream while the large one inside you releases a torrent of its cum into your womb. This pushes your tired body to the point of yet another orgasm. Your belly swells to the point it looks about 4 months pregnant, a great deal of the cream flowing out of the pussy where the big tentacle was before";
					say "The creature drops you and slithers off, leaving you to recover in the pool of liquids the assault created, as you regain your strength you crawl back out of the basement.";
					say "[horror impreg]";
			if tentsubmit is 1:
				now lasttentaclebattleoutcome is 3;
			otherwise:
				now lasttentaclebattleoutcome is 2;
		otherwise:
			if thmpregdetect is false:
				if tentsubmit is 1:
					say "As you lie down in a clear sign of submission, the creature excitedly approaches you, extending its many tentacles towards you as it does so. The creature wraps you in its slime coated appendages and flips you over, handling you like a prized possession. Tentacles crawl over your body, and under your clothing, before pulling away, ripping the garments from your body. A slimy tentacle probes over your body as the creature draws you closer. As the tendril glides between your ass cheeks, the tentacled monstrosity releases a gurgle of surprised delight upon detecting the secret hidden within your derriere.";
				otherwise:
					say "You've lost the will to continue your struggle against the horror. Collapsing to your knees on the cold concrete floor, you start to tilt forward. The creature catches you in its slime coated appendages before you hit the ground. However you quickly realize this was not out of kindness. Tentacles crawl over your body, and under your clothing, before pulling away, ripping the garments from your body. A slimy tentacle probes roughly over your body as the creature draws you closer. As the tendril grinds between your ass cheeks, the tentacled monstrosity releases a gurgle of surprised delight upon detecting the secret hidden within your derriere.";
			otherwise:
				if tentsubmit is 1:
					say "As you lie down in a clear sign of submission, the creature excitedly approaches you, extending its many tentacles towards you as it does so. The creature wraps you in its slime coated appendages and flips you over, handling you like a prized possession. Tentacles crawl over your body, and under your clothing, before pulling away, ripping the garments from your body. A slimy tentacle probes over your body as the creature draws you closer. The tendril once again glides between your ass cheeks, the tentacled monstrosity seeking out that fecund asshole of yours once again.";
				otherwise:
					say "You've lost the will to continue your struggle against the horror. Collapsing to your knees on the cold concrete floor, you start to tilt forward. The creature catches you in its slime coated appendages before you hit the ground. However you quickly realize this was not out of kindness. Tentacles crawl over your body, and under your clothing, before pulling away, ripping the garments from your body. A slimy tentacle probes roughly over your body as the creature draws you closer. The tendril once again grinds between your ass cheeks, the tentacled monstrosity seeking out that fecund asshole of yours once again.";
			now thmpregdetect is true;
			say "A trio of tentacles push their way into your bowels, one after the other until all three are squirming and writhing inside you, sending shivers of pleasure through you[if cocks of player > 0]. Your male genitalia are ignored, the creature intent only on seeding the egg it planted in you earlier[end if]. Those slimy tendrils piston in and out of your ass for what feels like hours, stretching your [if player is twistcapped]unnaturally flexible anus with ease as your tight passage expands to provide a tight and enjoyable fit around those raping tentacles[otherwise if scalevalue of player > 4]huge rump with ease as your tight passage is forced to endure the overzealous tentacle raping[otherwise if scalevalue of player > 2]your rump with some effort as your tight passage is forced to uncomfortably wide to endure the overzealous tentacle raping[otherwise]your rump with considerable effort as your [body size of player] passage is forced far beyond its capacity to deal with the overzealous tentacle raping[end if]. Musky slime and sexual fluids ooze from around the thrusting tentacles down your legs, making an ever growing slick puddle on the floor beneath you.";
			say "Much later, the puddle beneath you stretches out into the shadows. The tentacles inside of you shudder and paint your womb with fertility cream, an action that is sure to jump start the fertilization of the egg the beast placed within you earlier, and causes your belly to swell to the point that it looks 7 months pregnant...";
			if tentsubmit is 1:
				now lasttentaclebattleoutcome is 3;
			otherwise:
				now lasttentaclebattleoutcome is 2;
			now eggplanted is 0;
			say "[horror impreg]";
	otherwise if tentaclerape is 0:
		if tentsubmit is 1:
			say "As you lie down in a clear sign of submission the creature excitedly approaches you extending its many tentacles towards you as it does so.[line break][line break]The creature wraps you in its slime coated appendages and flips you over, handling you like a prized possession. Tentacles crawl over your body, and under your clothing, before pulling away, ripping the garments from your body.[line break][line break]";
			if hascunt is 0:
				say "A slimy tentacle presses against your lips, pushing itself into your throat as you open your mouth to admit it, once deftly lodged down your throat it begins to pump chemicals directly into your stomach,";
		otherwise:
			say "You've lost the will to continue your struggle against the horror. Collapsing to your knees on the cold concrete floor, you start to tilt forward. The creature catches you in its slime coated appendages before you hit the ground. However you quickly realize this was not out of kindness. Tentacles crawl over your body, and under your clothing, before pulling away, ripping the garments from your body.[line break][line break]";
			if hascunt is 0:
				say "A slimy tentacle forces itself into your mouth, and begins to pump chemicals directly into your stomach,";
		if cunts of player is 0:
			say " causing your entire body to start tingling. The tingling focuses on your crotch, and a moist opening forms rapidly, a tentacle rubs against your forming lips encouraging the growth. You feel a strange pressure inside your abdomen as your womb forms growing to average size. Without even a chance to process the sudden growth of your new lady bits,";
		say "[if hascunt is 1]A[otherwise]a[end if] tentacle twice the size of the others forces its way inside of you. Filling you [if cuntsmall is 1]far beyond your orifice's capacity, and stretching you deeper and wider than your cunt could initially contain.[otherwise]to your limit.[end if] It pounds within you, battering your cervix, before finally gaining entrance.[if multicunt is 1] Other tentacles thrust relentlessly in and out of all of your cunts the extra large appendage isn't stuffed into.";
		if cocks of player is 1:
			say "A tentacle brings your cock to full arousal, and wraps around it, jerking your member relentlessly. You quickly climax launching seed across the floor below you.";
		if cocks of player is greater than 1:
			say "The tentacles holding you quickly bring your multiple dicks to erection, wrapping all around them, and forcing them against each other. The creature's appendages quickly jerks around your members for a few moments, then swaps to rubbing your cocks against one another, then returns to jerking your members off again. The sensations from this, in addition to the feeling of the huge tentacle pounding into you, cause you to quickly explode, launching your seed against the floor. The tentacles continue to jerk against your members long after your balls are empty and a puddle of your seed has collected beneath you.";
		say "[line break][line break]After countless orgasms your body barely responds to the attentions of the tentacles, your mind lost in a haze of pleasure. However your eyes go wide as you feel a watermelon sized bulge traveling up the large tentacle wrapped around your leg and  buried in your abused snatch. The bulge reaches your already over stimulated lips and begins to stretch them far beyond what should be possible, [if hascunt is 1]the secretions around the tentacle somehow[otherwise]the chemicals in your belly[end if] helping your female gender stretch far more elastically than normal. There's a feeling of surrender as the bulge finally passes its widest point and slips inside of you coming to rest inside your battered womb.[line break][line break]";
		say "As the tentacle removes itself from your body the creature seems to hesitate for a moment, then seems to come to a decision as [if multicunt is 1]different tentacles find your sexes and plunge inside of you. Each tentacle is quickly joined by two others, and all of the sets of three piston in and out of your pussies for hours, hardly stretching your battered pussies[otherwise]a different tentacle finds your sex and plunges inside of you. It's quickly joined by two others, and all three piston in and out of your pussy for hours, hardly stretching your battered pussy[end if]. Sexual juices are flowing from around the thrusting tentacles down your legs like a waterfall making an ever growing slick puddle on the floor beneath you.[line break][line break]";
		say "A few hours later the puddle beneath you stretches out into the shadows. The tentacles inside of you shudder and paint your womb with fertility cream, an action that is sure to jump start the fertilization of the egg the beast placed within you earlier, and causes your belly to swell to the point that it looks [if multicunt is 1]nine months pregnant with twins[otherwise]seven months pregnant[end if]...";
		if hascunt is 0:
			now cunts of player is 1;
			now thirst of player is 0; [all that liquid should quench your thirst ;) ]
		if cuntsmall is 1:
			now cunt length of player is 15;
			now cunt width of player is 12;
		now tentaclerape is 1;
		if tentsubmit is 1:
			now lasttentaclebattleoutcome is 3;
		otherwise:
			now lasttentaclebattleoutcome is 2;
		say "[horror impreg]";
	otherwise:
		if eggplanted is 0:
			if tentsubmit is 1:
				say "As you lie down in a clear sign of submission the creature excitedly approaches you extending its many tentacles towards you as it does so.[line break][line break]";
			otherwise:
				say "You've lost the will to continue your struggle against the horror. Collapsing to your knees on the cold concrete floor, you start to tilt forward. The creature catches you in its slime coated appendages before you hit the ground. ";
			if cunts of player is 0:
				say "It starts searching your body for certain characteristics... Rubbing across your groin and finding no useful genitals for its purpose it drops you unceremoniously and starts to drag itself away from you, back into the shadows. All alone, and sexually charged with no easy way of experiencing the release of orgasm, you whimper into the darkness. Hours later, you finally regain enough strength to stand and trudge your aching body out of the basement.";
				if tentsubmit is 1:
					now lasttentaclebattleoutcome is 4;
				otherwise:
					now lasttentaclebattleoutcome is 5;
				stop the action;
			if tentsubmit is 1:
				say "The creature wraps you in its slime coated appendages and flips you over, handling you like a prized possession. Tentacles crawl over your body, and under your clothing, before pulling away, ripping the garments from your body.[line break][line break]";
			otherwise:
				say "However you quickly realize this was not out of kindness. Tentacles crawl over your body, and under your clothing, before pulling away, ripping the garments from your body.[line break][line break]";
			say "A tentacle twice the size of the others forces its way inside of you. Filling you [if cuntsmall is 1]far beyond your orifice's capacity, and stretching you deeper and wider until it is once again the size it had after the last time the monster raped you[otherwise]to your limit[end if]. It pounds within you, battering your cervix, before finally gaining entrance.[if multicunt is 1] Other tentacles thrust relentlessly in and out of all of your cunts the extra large appendage isn't stuffed into.";
			if cocks of player is 1:
				say "A tentacle brings your cock to full arousal, and wraps around it, jerking your member relentlessly. You quickly climax launching seed across the floor below you.";
			if cocks of player is greater than 1:
				say "The tentacles holding you quickly bring your multiple dicks to erection, wrapping all around them, and forcing them against each other. The creature's appendages quickly jerks around your members for a few moments, then swaps to rubbing your cocks against one another, then returns to jerking your members off again. The sensations from this, in addition to the feeling of the huge tentacle pounding into you, cause you to quickly explode, launching your seed against the floor. The tentacles continue to jerk against your members long after your balls are empty and a puddle of your seed has collected beneath you.";
			say "[line break][line break]After countless orgasms your body barely responds to the attentions of the tentacles, your mind lost in a haze of pleasure. However your eyes go wide as you feel a watermelon sized bulge traveling up the large tentacle wrapped around your leg and  buried in your abused snatch. The bulge reaches your already over stimulated lips and begins to stretch them far beyond what should be possible, the secretions around the tentacle somehow helping your female gender stretch far more elastically than normal. There's a feeling of surrender as the bulge finally passes its widest point and slips inside of you coming to rest inside your battered womb.[line break][line break]";
			if a random chance of 95 in 100 succeeds or multicunt is 0: [The tentacles in the other cunt(s) might just explode!]
				say "As the tentacle removes itself from your body the creature seems to [if tentsubmit is 1]hesitate for a moment, then seems to lose interest and sets you down on the ground[otherwise]lose interest and drops you to the ground, leaving you alone to recover[end if], the egg remaining unfertilized.";
				now eggplanted is 1;
			otherwise:
				say "As the creature starts removing the largest tentacle from you, [if tentsubmit is 1]you are saddened that the creature might not fertilize [otherwise]you believe it might let you go without fertilizing [end if]the egg this time. But just as you think it's about to remove the other tentacles you suddenly feel them shudder, widen, and paint your womb with fertility cream and pushing your tired body to the point of yet another orgasm. Your belly swelling to the point it looks about 4 months pregnant, a great deal of the cream flowing out of the pussy where the big tentacle was before";
				say "The creature drops you and slithers off, leaving you to recover in the pool of liquids the assault created, as you regain your strength you crawl back out of the basement.";
				say "[horror impreg]";
			if cuntsmall is 1:
				now cunt length of player is 15;
				now cunt width of player is 12;
			if tentsubmit is 1:
				now lasttentaclebattleoutcome is 3;
			otherwise:
				now lasttentaclebattleoutcome is 2;
		otherwise:
			if cunts of player is 0 and cocks of player is 0: [implanted and genderless!? ZOMG!]
				if tentsubmit is 0: [did not submit]
					say "The tentacles sense that you can't continue the struggle any longer and surge forward around you, slithering in and through your clothing, searching your body for certain characteristics... Rubbing across your groin and finding it devoid of any sort of genitals it drops you unceremoniously and starts to drag itself away from you, back into the shadows. Having already attempted to lay its offspring inside of you once, it sees no reason why it should attempt to stimulate you to a climax that would never come... All alone, and sexually charged with no easy way of experiencing the release of orgasm, you whimper into the darkness. Hours later, you finally regain enough strength to stand and trudge your aching body out of the basement.";
					now lasttentaclebattleoutcome is 5;
				otherwise: [did submit, choice time]
					say "As you lie down in a clear sign of submission the creature excitedly approaches you extending its many tentacles towards you as it does so, searching your body for certain characteristics... Rubbing across your groin and finding it devoid of any sort of genitals it extends a tentacle to your mouth gently prodding your lips.";
					say "Do you let the tentacle in?";
					if the player consents:
						say "As you open your mouth the tentacle pushes itself into your throat, once deftly lodged down your throat it begins to pump chemicals directly into your stomach, causing your entire body to start tingling. The tingling focuses on your crotch, and a moist opening forms rapidly, a tentacle rubs against your forming lips encouraging the growth. You feel a strange pressure inside your abdomen as your womb forms growing to average size. Without even a chance to process the sudden growth of your new lady bits a tentacle finds your sex, the lips glistening with growing need, and plunges inside of you. It's quickly joined by two others, and all three piston in and out of your pussy for hours, filling you far beyond your new orifice's capacity, and stretching you deeper and wider than your new cunt could initially contain. Sexual juices are flowing from around the thrusting tentacles down your legs like a waterfall making an ever growing slick puddle on the floor beneath you.[line break][line break]A few hours later the puddle beneath you stretches out into the shadows. The tentacles inside of you shudder and paint your womb with fertility cream, an action that that is sure to jump start the fertilization of the egg the beast placed within you earlier, and causes your belly to swell to the point that it looks 7 months pregnant...";
						now cunts of player is 1;
						now cunt length of player is 15;
						now cunt width of player is 12;
						now lasttentaclebattleoutcome is 3;
						now eggplanted is 0;
						now thirst of player is 0; [all that liquid should quench your thirst ;) ]
						say "[horror impreg]";
					otherwise:
						say "The monster drops you unceremoniously and starts to drag itself away from you, back into the shadows. All alone, and sexually charged with no easy way of experiencing the release of orgasm, you whimper into the darkness. Hours later, you finally regain enough strength to stand and trudge your aching body out of the basement.";
						now lasttentaclebattleoutcome is 4;
						stop the action;
			otherwise:
				if tentsubmit is 1:
					say "As you lie down in a clear sign of submission the creature excitedly approaches you extending its many tentacles towards you as it does so.[line break][line break]The creature wraps you in its slime coated appendages and flips you over, handling you like a prized possession. Tentacles crawl over your body, and under your clothing, before pulling away, ripping the garments from your body.[line break][line break]";
					if hascunt is 0:
						say "The beast uses its tentacles to search for the pussy it laid the egg in. As the tentacles slide all over and around your pelvis, they can't seem to find what they're looking for, however, one of the tentacles brushes against the bud of your ass and decides that this is 'close enough'... Pain burns in your virgin asshole as the beast thrusts deep into your intestines without any sort of warning, the slimy coating of the appendage the only thing that allowed it to get so far in one go without ripping you in two.";
						say "As the tentacle starts an in and out thrusting rhythm another one wraps around your hardening [if cocks of player is greater than 1]cocks[otherwise]cock[end if] and starts to jerk you off. The slime being secreted by the tentacle inside you is starting to make your ass more elastic, and the pain is quickly receding, being replaced by pleasure...[line break][line break]";
						say "A few hours later you have three tentacles pumping in and out of your ass and there is a small puddle of your seed drying out on floor. The tentacles inside of you shudder and paint your intestines with fertility cream, an action that would have jump started the fertilization of the egg the beast placed within you earlier but now makes your stomach expand alarmingly as your intestines are filled to the brim with cream, great gobs of it flowing past the tentacles buried in you as they start to withdraw. As the monster pulls out the tentacles, covering you in the sticky substance, and puts you down you feel a sudden release as the cream floods out of your now gaping ass";
						now lasttentaclebattleoutcome is 3;
						now thirst of player is 0;
						stop the action;
					say "[if multicunt is 1]Tentacles find each of your female sexes, their lips glistening with your growing need, and plunge[otherwise]A tentacle finds your female sex, the lips glistening with growing need, and plunges[end if] inside of you.";
				otherwise:
					say "The tentacles swarm across your body reducing your clothing to a pile of slime soaked tatters and rubbing all over your now nude form.[line break][line break]";
					if hascunt is 0:
						say "Having already laid its egg within you, the beast uses its tentacles to search for the pussy it laid the egg in. As the tentacles slide all over and around your pelvis, they can't seem to find what they're looking for, however, one of the tentacles brushes against the bud of your ass and decides that this is 'close enough'... Pain burns in your virgin asshole as the beast thrusts deep into your intestines without any sort of warning, the slimy coating of the appendage the only thing that allowed it to get so far in one go without ripping you in two.";
						say "As the tentacle starts an in and out thrusting rhythm another one wraps around your hardening [if cocks of player is greater than 1]cocks[otherwise]cock[end if] and starts to jerk you off. The slime being secreted by the tentacle inside you is starting to make your ass more elastic, and the pain is quickly receding, being replaced by pleasure...[line break][line break]";
						say "A few hours later you have three tentacles pumping in and out of your ass and there is a small puddle of your seed drying out on floor. The tentacles inside of you shudder and paint your intestines with fertility cream, an action that would have jump started the fertilization of the egg the beast placed within you earlier but now makes your stomach expand painfully as your intestines are filled to the brim with cream. The creature, seeming intent to fill you with as much cream as it can (likely as punishment for your resistance earlier), pushes the tentacles even deeper into your ass; effectively plugging you up. Your eyes widen in fear as you feel your stomach swell to dangerous proportions, pain blotting out all other senses. Suddenly something gives way as you feel the thick substance traveling up your throat, flooding out of your mouth in great gobs. Unable to breathe you lose consciousness.[line break][line break]Hours later you wake up lying in a great puddle of cream as it still floods out of your now gaping ass, the taste of it still heavy in your mouth. The creature is nowhere to be seen.";
						now lasttentaclebattleoutcome is 2;
						now thirst of player is 0;
						stop the action;
					say "Ignoring your male genitalia [if multicunt is 1]tentacles find each of your female sexes, their lips glistening with your growing need, and plunge[otherwise]a tentacle finds your female sex, the lips glistening with growing need, and plunges[end if] inside of you.";
				say "[if multicunt is 1]Each tentacle is[otherwise]Its[end if] quickly joined by two others, and all [if multicunt is 1]of the sets of three piston in and out of your pussies[otherwise]three piston in and out of your pussy[end if] for hours, [if cuntsmall is 1]stretching your cunt back to the size it was the last time the horror raped you[otherwise]hardly stretching your [cunt size desc of player] pussy[end if]. Sexual juices are flowing from around the thrusting tentacles down your legs like a waterfall making an ever growing slick puddle on the floor beneath you.[line break][line break]";
				if a random chance of 40 in 100 succeeds: [random assrape! 40% chance]
					if tentsubmit is 1:
						say "Suddenly your eyes grow wide as one of the tentacles brushes against the bud of your ass, you squirm trying to move the tentacle away but... Pain burns in your virgin asshole as the beast thrusts deep into your intestines, the slimy coating of the appendage the only thing that allowed it to get so far in one go without ripping you in two.";
						say "The tentacle starts an in and out thrusting rhythm quickly building up speed to keep up with the other tentacles already in you. The slime being secreted by the tentacle inside you is starting to make your ass more elastic, and the pain is quickly receding, being replaced by pleasure...[line break][line break]";
						say "A few hours later you have three tentacles pumping in and out of your ass alongside with the ones in your [if multicunt is 1]cunts[otherwise]cunt[end if]. The tentacles inside of you shudder and paint your intestines and womb with fertility cream, an action that is sure to jump start the fertilization of the egg the beast placed within you earlier and makes your belly expand alarmingly as your insides are filled to the brim with cream, great gobs of it flowing past the tentacles buried in you as they start to withdraw. As the monster pulls out the tentacles, covering you in the sticky substance, and puts you down you feel a sudden release as the cream floods out of your now gaping ass and widely stretched [if multicunt is 1]pussies[otherwise]pussy[end if]. As you stand up you feel the thick cream move around your insides, looking down you see that the sheer volume still in your intestines makes you look 5 months pregnant.";
					otherwise:
						say "Suddenly your eyes grow wide as one of the tentacles brushes against the bud of your ass, you squirm trying to move the tentacle away but... Pain burns in your virgin asshole as the beast thrusts deep into your intestines, the slimy coating of the appendage the only thing that allowed it to get so far in one go without ripping you in two.";
						say "As the tentacle starts an in and out thrusting rhythm another one wraps around your hardening [if cocks of player is greater than 1]cocks[otherwise]cock[end if] and starts to jerk you off. The slime being secreted by the tentacle inside you is starting to make your ass more elastic, and the pain is quickly receding, being replaced by pleasure...[line break][line break]";
						say "A few hours later you have three tentacles pumping in and out of your ass alongside with the ones in your [if multicunt is 1]cunts[otherwise]cunt[end if]. The tentacles inside of you shudder and paint your intestines and womb with fertility cream, an action that is sure to jump start the fertilization of the egg the beast placed within you earlier and makes your stomach expand painfully as your insides are filled to the brim with cream.";
						say "The creature, seeming intent to fill you with as much cream as it can (likely as punishment for your resistance earlier), pushes the tentacles even deeper into your ass; effectively plugging you up. Your eyes widen in fear as you feel your stomach swell to dangerous proportions, pain blotting out all other senses. Suddenly something gives way as you feel the thick substance traveling up your throat, flooding out of your mouth in great gobs. Unable to breathe you lose consciousness.[line break][line break]Hours later you wake up lying in a great puddle of cream as it still floods out of your now gaping ass and widely stretched [if multicunt is 1]pussies[otherwise]pussy[end if], the taste of it still heavy in your mouth. Your belly still swollen so that you look nine months pregnant with triplets, the thick cream sloshing around your insides as you try to get up. The creature is nowhere to be seen.";
				otherwise:
					say "A few hours later the puddle beneath you stretches out into the shadows. The tentacles inside of you shudder and paint your womb with fertility cream, an action that that is sure to jump start the fertilization of the egg the beast placed within you earlier, and causes your belly to swell to the point that it looks [if multicunt is 1]nine months pregnant with twins[otherwise]seven months pregnant[end if]...";
				if cuntsmall is 1:
					now cunt length of player is 15;
					now cunt width of player is 12;
				if tentsubmit is 1:
					now lasttentaclebattleoutcome is 3;
				otherwise:
					now lasttentaclebattleoutcome is 2;
				now eggplanted is 0;
				say "[horror impreg]";


to say horror impreg:
	impregnate with "Tentacle Horror";	

[
	let x be "Tentacle Horror";
	let infection be "";
	if a random number from 1 to 100 is greater than 50:
		now infection is x;
	otherwise:
		now infection is skinname of player;
	now skinname of child is infection;
	if a random number from 1 to 100 is greater than 50:
		now infection is x;
	otherwise:
		now infection is bodyname of player;
	now bodyname of child is infection;
	if a random number from 1 to 100 is greater than 50:
		now infection is x;
	otherwise:
		now infection is tailname of player;
	now tailname of child is infection;
	if a random number from 1 to 100 is greater than 50:
		now infection is x;
	otherwise:
		now infection is facename of player;
	now facename of child is infection;
]

to say horror description:
	setmongender 3;		[creature is male]
	if lasttentaclebattleoutcome is 0:
		say "While stumbling around in the basement of horrors, you hear the sound of something sliding across the ground. It's far too dark to see through the shadows that crowd all around you, and this unseen foe is taking advantage of the cover. Suddenly a slitted orb winks into being directly ahead of you. The eye is joined by 12 more in various places, winking into existence from the shadows directly ahead of you. All the eyes swivel and focus on you, and slime coated appendages slither in and out of view, defying all attempts to try and count them. The monster is inhuman, you can't imagine anything mutating to this extent in such a brief period of time. Your thoughts are cut short as the creature makes its move...";
	otherwise:
		if lasttentaclebattleoutcome is 1:
			say "You boldly stride through the pitch black basement, memories of your triumph over the horror here last time making you more than a little cocky. You see the eyes of the beast loom out of the darkness and hear the sound of the slime covered tentacles slithering around, hidden by the deep shadows. You're shocked to see another beast down here in the dark, the idea that there might be more than one of these horrors lurking in the shadows sends a shiver down your spine. However you ready yourself for the battle hoping that this horror isn't tougher than the first...";
		otherwise if eggplanted is 0:
			if lasttentaclebattleoutcome is 2:
				say "You don't know what you were thinking, coming back down here after what that horror in the dark did to you the last time you faced it. However here you are, looking at 13 inhuman glowing eyes, listening to the sound of the beasts slime covered appendages slithering in the shadows. You can only pray you fare better this round...";
			otherwise if lasttentaclebattleoutcome is 3:
				say "You don't know what you were thinking, coming back down here after what that horror in the dark did to you the last time you submitted to it. However here you are, looking at 13 inhuman glowing eyes, listening to the sound of the beasts slime covered appendages slithering in the shadows. You somehow feel excited at the prospect of what the creature might do to you this round...";
			otherwise if lasttentaclebattleoutcome is 4:
				say "You don't know what you were thinking, coming back down here after the creature ignored your obvious wantonness the last time you submitted to it. However here you are, looking at 13 inhuman glowing eyes, listening to the sound of the beasts slime covered appendages slithering in the shadows. You somehow feel excited at the prospect of what the creature might do to you this round...";
			otherwise if lasttentaclebattleoutcome is 5:
				say "You don't know what you were thinking, coming back down here after that horror in the dark somehow let you go the last time you faced it. However here you are, looking at 13 inhuman glowing eyes, listening to the sound of the beasts slime covered appendages slithering in the shadows. You can only pray you fare better this round...";
		otherwise:
			if lasttentaclebattleoutcome is 2:
				say "You don't know what you were thinking, coming back down here after what that horror in the dark did to you the last time you faced it. However here you are, looking at 13 inhuman glowing eyes, listening to the sound of the beasts slime covered appendages slithering in the shadows. Still feeling the slight bulge where the creatures egg nestled inside you, you can only pray you fare better this round...";
			otherwise if lasttentaclebattleoutcome is 3:
				say "You don't know what you were thinking, coming back down here after what that horror in the dark did to you the last time you submitted to it. However here you are, looking at 13 inhuman glowing eyes, listening to the sound of the beasts slime covered appendages slithering in the shadows. Still feeling the slight bulge where the creatures egg nestled inside you, you somehow feel excited at the prospect of what the creature might do to you this round...";
			otherwise if lasttentaclebattleoutcome is 4:
				say "You don't know what you were thinking, coming back down here after the creature ignored your obvious wantonness the last time you submitted to it. However here you are, looking at 13 inhuman glowing eyes, listening to the sound of the beasts slime covered appendages slithering in the shadows. Still feeling the slight bulge where the creatures egg nestled inside you, you somehow feel excited at the prospect of what the creature might do to you this round...";
			otherwise if lasttentaclebattleoutcome is 5:
				say "You don't know what you were thinking, coming back down here after that horror in the dark somehow let you go the last time you faced it. However here you are, looking at 13 inhuman glowing eyes, listening to the sound of the beasts slime covered appendages slithering in the shadows. Still feeling the slight bulge where the creatures egg nestled inside you, you can only pray you fare better this round...";
	if bodyname of player is "Anime Babe":
		say "Your anime girl body, particularly vulnerable to tentacle attack, has trouble resisting the horror's tendrils. You moan and squeal in barely suppressed pleasure as those tentacles squirm around you, quickly draining your resistance.";
		decrease plfleebonus by 3;
		decrease pldodgebonus by 3;
		decrease plmindbonus by 3;
		now hp of player is ( 2 * hp of player ) / 3;
		now libido of player is ( 100 + libido of player + libido of player ) / 3;

to say horror defeated:
	say "The fearsome horror struggles to subdue and rape your comparatively vulnerable body, its dripping tentacle appendages reaching towards you before slamming to the ground twitching briefly before laying still. By some miracle, you've managed to slay the horror the professor endeavored to contain. You've done the world a huge service. Hidden from view, further in the chamber, are countless victims who wandered down into the depths of the lab's basement, most 'in the name of science'. Each victim sports massively pregnant looking bellies. One of them shudders as a new beast emerges growing quickly, and moves off into the dark depths of the basement...";
	now lasttentaclebattleoutcome is 1;

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Tentacle Horror"; [Name of your new Monster]
	now attack entry is "[one of]A bit of gloop detaches from the ceiling and splatters on your shoulder. Taking advantage of the distraction, the beast launches its moist appendages towards you from three different directions, wrapping around your arms and legs and lifting you into the air. New tentacles quickly squirm their way inside of your clothing. The tentacles rub all across your body, leaving damp patches wherever they've touched you, and driving your arousal up a notch. You struggle back to your senses and then out of the creatures grasp... Too bad you were 20 feet in the air when you broke free... [or]You feel something tap your on your left shoulder, whipping your head around wildly to the left you see nothing. A second set of taps is felt coming from your right shoulder, and you yank your head around to the right, only to find nothing there again. Turning back towards the creature, you are just in time to receive what feels like a boxer's punch, as four tentacles wrapped around each other slam into your unsuspecting, and unprotected face.[or]The creatures appendages erupt with sticky fluids, coating you from all angles. At first you're not concerned in the least, however you quickly realize that the goop is cutting of your air. Struggling to wipe the gunk from your mouth, you slip and fall, slamming into the unforgiving concrete floor. Thankfully this dislodges enough goo for you to get a breath, but afterwords, you stand up shakily, your head feeling fuzzy. You can't decide if the lightheaded feeling you're fighting is due to your recent deprivation of oxygen, or the mild concussion your good pal the concrete floor gave you... You tell the voices in your head to shut up, and prepare to continue your struggle against the monster.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[horror defeated]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[horror victory]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[horror description]";[ Description of the creature when you encounter it.]
	now face entry is "largely human, well... except for the glowing red eyes and slimy prehensile hair...";[ Face description, format as the text "Your face is (your text)"]
	now body entry is "studded with random phallic, prehensile appendages that drip slime and make most movements awkward";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "pale and slime covered";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "slime covered, prehensile";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "everything seems to get brighter, your eyes beginning to glow red and adjusting for much dimmer environments, while your hair falls out and is replaced by a hundreds of slimy, prehensile tendrils."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "as random portions all over feel an indescribable pressure build beneath your skin. Finally something gives way and you sprout at least 20 prehensile phallic, slime covered tentacle appendages, all of which are foot longer than your cock."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "you grow paler and your pores begin to leak slime that doubles as a potent aphrodisiac"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "something thick and heavy shifts inside you"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it grows erect. You reach for it, and before your hand reaches it, your cock moves up into your hand. You wipe your hand on your sleeve as your cock has now started a slow, constant leak of unidentifiable goo. Your arm underneath your sleeve tingles and you make a mental note not to wipe the goo on your clothing again..."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 20;
	now dex entry is 20;
	now sta entry is 20;
	now per entry is 30;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Both"; 		[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 200;		[ How many HP has the monster got? ]
	now lev entry is 8;		[ Level of the Monster ]
	now wdam entry is 12;		[Amount of Damage monster Does when attacking.]
	now area entry is "Sealed";	[ Current options are 'Outside' and 'Mall' Case sensitive]
	now cocks entry is 0;		[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 6;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 5;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 4;		[ Number of Breasts infection will give you. ]
	now breast size entry is 7;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;		[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 15;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 12;		[ Width of female sex  infection will try and give you ]
	now libido entry is 60;		[ Amount player Libido will go up if defeated ]
	now loot entry is "dirty water";	[ Loot monster drops, ]
	now lootchance entry is 50;		[ Chance of loot dropping 0-100 ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]hyper-sexualized[or]phallic[or]twisted[or]deformed[or]cock-riddled[at random]";
	now type entry is "mutant";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

basement portal is a door. basement portal is dangerous.
Down of Trevor Labs Lobby is basement portal.
Down of basement portal is dark basement.
The marea of basement portal is "Sealed". The basement portal is open. The description of Basement Portal is "A foot-thick steel door that looks like it was designed more to keep something in, than anything else... ". understand "basement" and "portal" as the basement portal.


[Edit this to have the correct name as well]
Random Tentacle Horror For FS ends here.
