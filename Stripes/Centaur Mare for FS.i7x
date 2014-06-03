Version 1 of Centaur Mare for FS by Stripes begins here.
[Version 1.2 - F/F player loss]

[Adaptation of Centaur Mare for Flexible Survival by Stripes]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Stripes.  All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]

"Adds Centaur Mare to Flexible Survival."

Section 1 - Monster Responses

when play begins:
	add { "Centaur Mare" } to infections of girl;

to say losetocentaurmare:
	if cocks of player > 0:
		say "     Seeing exactly what she wants, the centaur mare turns around and flicks her tail aside, giving you a clear view of her dripping, winking, equine cunt.  Unable to help yourself, you dive forward and plunge your [cock of player] cock into the large centaur's equine body repeatedly.  She whinnies and moans in pleasure as you fuck her, [if cock length of player < 15]your shaft underwhelming in size compared to her equine cunt, but you make up for it with your wild enthusiasm[otherwise if cock length of player <= 30]your enlarged shaft a good fit for the needy mare's cunt[otherwise]your [cock size desc of player] shaft able to more than fill the needy mare's cunt[end if].  Lost in the excitement of the scent of her heat, it is only after a few wild thrusts that you cum inside her.  Snorting at the disappointingly short fuck, she gives a violent kick to your gut and she gallops off while you're stunned.";
	otherwise:
		say "     Not seeing what she wants, the centaur mare knocks you roughly to the ground and cuffs you hard on the side of the head, ordering you to get licking.  And with that, she turns around and flicks her tail aside, giving you a clear view of her dripping, winking, equine cunt.  Unable to help yourself, you dive forward and press your face to her juicy folds, lapping at them as her aroused juices flow down your face.  She whinnies and moans in pleasure as you eat her out, the scent of her heat driving you wild.  The scent is so strong that you can't help but pleasure yourself as well[if cunts of player > 0]stuffing several fingers into your cunt[sfn][otherwise]groping any sensitive or erogenous zone your neutered body still has[end if].  Eventually, you become so distracted by your arousal that you quickly neglect her pussy entirely in your lustful daze.  Snorting at the disappointingly short licking, she gives you a violent kick to your gut and gallops off while you're stunned.";
	decrease hp of player by 10;
	if "Male Preferred" is listed in feats of player and guy is not banned:		[change target to Stallion for infection]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Centaur Stallion":
				now monster is y;
				break;

to say beatthecentaurmare:
	if cocks of player > 0:
		say "     With the centaur mare beaten, your cock throbs from the excitement.  Spotting her wet, winking pussy, you leap onto her equine body and drive your cock into position.  Unable to resist, the mare moans and whinnies as you fuck her[if cock length of player < 15].  Her pussy is very large and, while pleasant for you, your cock does little for the needy mare you've caught.  Grunting, you hilt yourself fully into her and pound away at her.  Able to control your pace, you take the time to enjoy it as much as you can, and when you finally cum, you fill her equine cunt with your seed.  The poor mare, still unsatisfied, whinnies and moans, unable to reach back to finish satisfying her needs while you walk away[otherwise if cock length of player <= 30].  Her pussy is very large and able to take your large cock fully.  Feeling your big [cockname of player] meat inside her, she moans and stamps her hooves excitedly at the prospect of a satisfying mating.  Grunting, you hilt yourself fully into her and pound away at her.  Able to control your pace, you take the time to enjoy it as much as you can, and when you finally cum, you fill her equine cunt with your seed.  The needy mare whinnies and moans as you drive her to orgasm and her juices soak your spurting cock.  When you're done, you pull your cock free and give her ass a swat, making her giggle as she trots off[otherwise].  Her pussy is quite large, but even it can't take your [cock size desc of player] fully.  Still, having as much of your big [cock of player] meat inside her as she can take has her moaning and stamping her hooves excitedly at the prospect of a very satisfying mating.  Grunting, you bury as much of your rod as you can into her and pound away.  Able to control your pace, you take the time to enjoy it as much as you can, and when you finally cum, you fill her equine cunt with your seed.  The needy mare whinnies and moans as you drive her to orgasm and her juices soak your spurting cock.  When you're done, you pull your cock free and give her ass a swat, making her giggle as she trots off[end if].";
	otherwise:
		say "     With the centaur mare beaten, you give her equine ass a hard swat, sending her galloping off.";

to say centaurmaredesc:
	say "     A centaur approaches you, galloping across the plains and unslinging her bow.  Her body is covered in tan, human flesh from the waist up.  From the waist down, everything is covered in the short, brown hairs of a horse.  Her head is mostly that of a human female at first glance, but with a broad flaring nose and pointed ears.  Her upper body is human and leanly athletic.  Slender and tapered at the waist, it sensually evokes the female form.  She has a pair of small breasts bound in a strip of clothe, probably to keep them in check while galloping.  Her arms are slender but muscular, and very human in appearance.  Being a centaur, her legs are replaced in her entirety from the waist down by the body of a horse.  Her muscled, equine body has slender legs leading to a set of four shiny black hooves.  A long flowing tail trails behind.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Centaur Mare";
	now attack entry is "[one of]The centaur mare fires her bow at you, piercing your side with an arrow![or]The centaur mare charges at you, knocking you to the ground roughly![or]The centaur rears up and manages to land a heavy hoof on your shoulder![or]The centaur swings a punch at you, bashing you in the jaw![or]The mare turns around and whinnies, flicking her tail and winking her equine pussy at you tantalizingly![at random]";
	now defeated entry is "[beatthecentaurmare]";
	now victory entry is  "[losetocentaurmare]";
	now desc entry is "[centaurmaredesc]";
	now face entry is "mostly human at first glance, but with a broad flaring nose and pointed ears. It has a female cast to it";
	now body entry is "that of a centaur, with a human and leanly athletic upper torso.  Slender and tapered at the waist, it sensually evokes the female form.  Your arms are slender but muscular, and very human in appearance.  Your lower body is that of a horse, with a muscular equine form and slender legs leading to a set of shiny black hooves";
	now skin entry is "tanned human flesh from the waist up. From the waist down, everything is covered in the short brown hairs of horse over your";
	now tail entry is "You have a long, flowing tail like a horse coming from just above your behind.  It flicks and swishes from time to time.";
	now cock entry is "[one of]black, equine[or]flared, equine[or]sheathed, equine[or]horse-like[at random]";
	now face change entry is "it takes on a human appearance with soft, feminine features.  As the changes continue to progress, your nose flares wide and your ears taper up into points";
	now body change entry is "your torso becomes lean and athletic with female curves appearing in all the right places.  Your arms become slender and feminine, and very human.  But as the changes progress, your legs and hips become unsteady and you are no longer able to stand as they twitch uncontrollably.  Spots fill your eyes as the rush of this transformation overwhelms your senses.  When your vision finally clears, your lower body has become that of a horse";
	now skin change entry is "a sudden itching from below your waist brings to your attention the short brown hairs completely covering you from your waist down.  However, from the waist up your skin is tanned and smooth human skin.";
	now ass change entry is "a twitching quiver runs down your spine as it extends and grows a horse's tail";
	now cock change entry is "it twitches and throbs as it stiffens and reshapes itself.  The head flares like a horse's and releases several spurts of cum on the ground as it turns a glossy black.  As your member grows soft again, a sheath forms around the base to keep the swollen member safe and secure.";
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 16;
	now per entry is 12;
	now int entry is 14;
	now cha entry is 14;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 32;			[ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 4;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 5;			[Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Plains";	[ Current options are 'Outside' and 'Mall'  Case sensitive If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku  (big balls are underrated.)]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 3;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 30;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 21;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "centaur hair";			[ Loot monster drops, ]
	now lootchance entry is 33;		[ Chance of loot dropping 0-100 ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscular[or]centaur[at random]";
	now type entry is "centaur";			[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "hoofstomp";		[ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Endings

[See Centaur Stallion for endings]

Centaur Mare for FS ends here. 
