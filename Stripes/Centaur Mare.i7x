Version 2 of Centaur Mare by Stripes begins here.
[ Version 1.2 - F/F player loss]
[ Version 2 - Add unbirth - Written by Rizzy, Coded by Kurainyx]
[Adaptation of Centaur Mare for Flexible Survival by Stripes]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Stripes. All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]

"Adds Centaur Mare to Flexible Survival."

Section 1 - Monster Responses

when play begins:
	add { "Centaur Mare" } to infections of girl;

to say centaurmaredesc:
	setmongender 4; [creature is female]
	say "     A centaur approaches you, galloping across the plains and unslinging her bow. Her body is covered in tan, human flesh from the waist up. From the waist down, everything is covered in the short, brown hairs of a horse. Her head is mostly that of a human female at first glance, but with a broad flaring nose and pointed ears. Her upper body is human and leanly athletic. Slender and tapered at the waist, it sensually evokes the female form. She has a pair of small breasts bound in a strip of clothe, probably to keep them in check while galloping. Her arms are slender but muscular, and very human in appearance. Being a centaur, her legs are replaced in their entirety from the waist down by the body of a horse. Her muscled, equine body has slender legs leading to a set of four shiny black hooves. A long flowing tail trails behind.";

to say losetocentaurmare:
	if ublevel is 3 and a random chance of 1 in 5 succeeds and scalevalue of player < 4:
		say "     As you lay there, knocked to your knees by the lusty centaur's kicks, she gets an almost twisted smile on her face as she turns around to show her sopping wet cunt. Her hind legs spread back, and it almost seems as if she wants your tongue in her. Her hips drop suddenly, and your face is slid into a warm, musky canal that echoes with her heartbeat, and it almost feels as if there is something tugging you along deeper in addition to the heated female sitting on you like a giant dildo. Despite the odd nature of your situation, you feel compelled to lick, only to get a shudder from your soon to be captor. Her walls reverberate with her moans as she reaches your crotch, and gravity feels as if it has no effect on you as she stands back up, your lower half dangling from the back end of a centaur's pussy. By now, the musky scent of the insides of this lustful mare are enough that you kick about, trying to burrow deeper as the walls tug on you, and the fleshy valve that normally remains closed tight opens when your face comes into contact with it.";
		say "     You slide into a slightly more roomy space as your feet soon leave the cold air of the Plains and sink into the hot, fem-scent ladened sex of the centaur who just used your whole body as a toy. With more tugs and pushes, you feel the rest of you spill into the womb, only for the walls to crush down all around you, and the echoing voice of the mare cries out for a bit. After a minute or two, her breathing slows back down, and her heartbeat goes back down to a normal rate, for a horse-human hybrid at least. Swaying side to side due to the weight, the gentle rocking motions of your [italic type]mother's[roman type] belly slowly cause you to drift into sleep...";
		WaitLineBreak;
		say "[CentaurMareWomb]";
	else if player is male:
		say "     Seeing exactly what she wants, the centaur mare turns around and flicks her tail aside, giving you a clear view of her dripping, winking, equine cunt. Unable to help yourself, you dive forward and plunge your [cock of player] cock into the large centaur's equine body repeatedly. She whinnies and moans in pleasure as you fuck her, [if cock length of player < 15]your shaft underwhelming in size compared to her equine cunt, but you make up for it with your wild enthusiasm[else if cock length of player <= 30]your enlarged shaft a good fit for the needy mare's cunt[else]your [cock size desc of player] shaft able to more than fill the needy mare's cunt[end if]. Lost in the excitement of the scent of her heat, it is only after a few wild thrusts that you cum inside her. Snorting at the disappointingly short fuck, she gives a violent kick to your gut and she gallops off while you're stunned.";
	else:
		say "     Not seeing what she wants, the centaur mare knocks you roughly to the ground and cuffs you hard on the side of the head, ordering you to get licking. And with that, she turns around and flicks her tail aside, giving you a clear view of her dripping, winking, equine cunt. Unable to help yourself, you dive forward and press your face to her juicy folds, lapping at them as her aroused juices flow down your face. She whinnies and moans in pleasure as you eat her out, the scent of her heat driving you wild. The scent is so strong that you can't help but pleasure yourself as well[if player is female]stuffing several fingers into your cunt[sfn][else]groping any sensitive or erogenous zone your neutered body still has[end if]. Eventually, you become so distracted by your arousal that you quickly neglect her pussy entirely in your lustful daze. Snorting at the disappointingly short licking, she gives you a violent kick to your gut and gallops off while you're stunned.";
	decrease HP of player by 10;
	if "Male Preferred" is listed in feats of player and guy is not banned:		[change target to Stallion for infection]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if name entry is "Centaur Stallion":
				now monster is y;
				break;

to say beatthecentaurmare:
	if player is male:
		say "     With the centaur mare beaten, your cock throbs from the excitement. Spotting her wet, winking pussy, you leap onto her equine body and drive your cock into position. Unable to resist, the mare moans and whinnies as you fuck her[if cock length of player < 15]. Her pussy is very large and, while pleasant for you, your cock does little for the needy mare you've caught. Grunting, you hilt yourself fully into her and pound away at her. Able to control your pace, you take the time to enjoy it as much as you can, and when you finally cum, you fill her equine cunt with your seed. The poor mare, still unsatisfied, whinnies and moans, unable to reach back to finish satisfying her needs while you walk away[else if cock length of player <= 30]. Her pussy is very large and able to take your large cock fully. Feeling your big [cockname of player] meat inside her, she moans and stamps her hooves excitedly at the prospect of a satisfying mating. Grunting, you hilt yourself fully into her and pound away at her. Able to control your pace, you take the time to enjoy it as much as you can, and when you finally cum, you fill her equine cunt with your seed. The needy mare whinnies and moans as you drive her to orgasm and her juices soak your spurting cock. When you're done, you pull your cock free and give her ass a swat, making her giggle as she trots off[else]. Her pussy is quite large, but even it can't take your [cock size desc of player] fully. Still, having as much of your big [cock of player] meat inside her as she can take has her moaning and stamping her hooves excitedly at the prospect of a very satisfying mating. Grunting, you bury as much of your rod as you can into her and pound away. Able to control your pace, you take the time to enjoy it as much as you can, and when you finally cum, you fill her equine cunt with your seed. The needy mare whinnies and moans as you drive her to orgasm and her juices soak your spurting cock. When you're done, you pull your cock free and give her ass a swat, making her giggle as she trots off[end if].";
	else:
		say "     With the centaur mare beaten, you give her equine ass a hard swat, sending her galloping off.";

to say CentaurMareWomb:
	say "     You wake up later to the sound of grunting and the annoyed voice of the mare. Muffled as it is, you think that she's trying to get you out of her now, but... it is comfy in here.";
	say "     [bold type]Should you stay inside of the centaur a little longer?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Relax in the womb.";
	say "     ([link]N[as]n[end link]) - Get out of the mare.";
	if player consents:			[Loops until player chooses to get out. Infects each loop]
		LineBreak;
		say "     Seeing no reason to help her out, you remain still and comfy in the womb of your... mother. Yeah, mother sounds right. After a while, she stops straining herself, and your fleshy chamber compresses a little as she sits down, the ground below pressing you upwards. You start to nuzzle at the walls and get a few clenches and moans for your efforts, only to slowly nod off again.";
		infect;
		say "[CentaurMareWomb]";
	else:
		LineBreak;
		say "     Deciding that this odd situation has gone on long enough, you fumble in the wet, dark pit of the centaur's womb before finally finding the exit, and you push gently to help ease it open, trying not to tear the centaur apart. With time, she slowly dilates, and you can feel yourself sliding down the lubricated channel inch by inch once it has a hold of you. Eventually, your face pokes out into the cold outside air, and with an outburst of fluids, you slide onto the grass of the Plains, the centaur panting. 'I-I don't know what that was... b-but...' She looks understandably embarrassed and shakily canters away, leaving you to lay there and recover from the experience. A small part of you wonders what would have happened if you'd stayed longer. Pushing the thoughts aside, you find that the centaur hadn't gone too far from where you had dropped stuff, and you head out after drying off.";

Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Centaur Mare";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The centaur mare fires her bow at you, piercing your side with an arrow![or]The centaur mare charges at you, knocking you to the ground roughly![or]The centaur rears up and manages to land a heavy hoof on your shoulder![or]The centaur swings a punch at you, bashing you in the jaw![or]The mare turns around and whinnies, flicking her tail and winking her equine pussy at you tantalizingly![at random]";
	now defeated entry is "[beatthecentaurmare]";
	now victory entry is "[losetocentaurmare]";
	now desc entry is "[centaurmaredesc]";
	now face entry is "mostly human at first glance, but with a broad flaring nose and pointed ears. It has a female cast to it";
	now body entry is "that of a centaur, with a human and leanly athletic upper torso. Slender and tapered at the waist, it sensually evokes the female form. Your arms are slender but muscular, and very human in appearance. Your lower body is that of a horse, with a muscular equine form and slender legs leading to a set of shiny black hooves";
	now skin entry is "tanned human flesh from the waist up. From the waist down, everything is covered in the short brown hairs of horse over your";
	now tail entry is "You have a long, flowing tail like a horse coming from just above your behind. It flicks and swishes from time to time.";
	now cock entry is "[one of]black, equine[or]flared, equine[or]sheathed, equine[or]horse-like[at random]";
	now face change entry is "it takes on a human appearance with soft, feminine features. As the changes continue to progress, your nose flares wide and your ears taper up into points";
	now body change entry is "your torso becomes lean and athletic with female curves appearing in all the right places. Your arms become slender and feminine, and very human. But as the changes progress, your legs and hips become unsteady and you are no longer able to stand as they twitch uncontrollably. Spots fill your eyes as the rush of this transformation overwhelms your senses. When your vision finally clears, your lower body has become that of a horse";
	now skin change entry is "a sudden itching from below your waist brings to your attention the short brown hairs completely covering you from your waist down. However, from the waist up your skin is tanned and smooth human skin.";
	now ass change entry is "a twitching quiver runs down your spine as it extends and grows a horse's tail";
	now cock change entry is "it twitches and throbs as it stiffens and reshapes itself. The head flares like a horse's and releases several spurts of cum on the ground as it turns a glossy black. As your member grows soft again, a sheath forms around the base to keep the swollen member safe and secure.";
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 16;
	now per entry is 12;
	now int entry is 14;
	now cha entry is 14;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 32; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 4; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 5; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Plains"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0; [ Length infection will make cock grow to if cocks]
	now cock width entry is 0; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 3; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 30;
	now cunt width entry is 21;
	now libido entry is 30; [ Amount player Libido will go up if defeated ]
	now loot entry is "centaur hair";
	now lootchance entry is 33; [ Chance of loot dropping 0-100 ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscular[or]centaur[at random]";
	now type entry is "centaur"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hoofstomp"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Section 3 - Endings

[See Centaur Stallion for endings]

Centaur Mare ends here.
