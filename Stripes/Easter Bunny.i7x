Version 1 of Easter Bunny by Stripes begins here.
[ Version 1.5 - Uncontrolled heat sex ]

"Adds the Easter Bunny infection to go with Micaela for Flexible Survival"

Section 0 - Setup

when play begins:
	add { "Easter Bunny" } to infections of hermaphrodite;
	add { "Easter Bunny" } to infections of furry;


Section 1 - Description

to say easterbunnydesc:
	say "***unused***";


Section 2 - Monster Victory

to say losetoeasterbunny:
	say "***unused***";


Section 3 - Player Victory

to say beateasterbunny:
	say "***unused***";


Section 4 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Easter Bunny";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "Something is very wrong here.";
	now defeated entry is "[beateasterbunny]";
	now victory entry is "[losetoeasterbunny]";
	now desc entry is "[easterbunnydesc]";
	now face entry is "that of a rabbit-like head with a short muzzle and large, floppy ears. Your eyes are of mismatched color, one blue and the other brown. Your long, flowing hair is a colorful [if player is herm]blue[else if player is male]purple[else if player is female]pink[else]yellow[end if] and always seems to stay fashionably styled";
	now body entry is "slender and sexy, like a sexy [if player is female]Playboy model[else]boytoy[end if]. Your thighs are strong and put a lot of bounce in your legs, helping to show off your assets. Your hands and feet are small and dainty, but a little paw-like as well, having fluff and pads, making them bunny-like as well";
	now skin entry is "soft fur of a [if player is herm]pretty pink[else if player is male]coral blue[else if player is female]sunshine yellow[else]pastel orange[end if] color over your sensitive";
	now tail entry is "You have the cutest little bunny tail of [if player is herm]pink[else if player is male]blue[else if player is female]yellow[else]orange[end if] and white fluff poking out just above your curvy ass.";
	now cock entry is "[one of]pink[or]smooth[or]idealized[or]bunny[at random]";
	now face change entry is "a sweet taste fills your mouth and your vision goes out of whack. Swirls of color tint everything you look at. Your nose twitches a few times and, with soft pops, whiskers appear as you gain a bunny nose and muzzle. You can feel your front teeth growing longer to match. As long, flowing hair starts to grow on your head, long bunny ears pop out from it. The swirling hues settle down as your color perception realigns such that everything you perceive seems just a little bit brighter and more colorful";
	now body change entry is "it becomes that of an anthropomorphic bunny with a very sexy [if player is female]figure like that of a centerfold[else]boytoy figure[end if]. Your thighs become strong and springy as the changes progress down to your legs";
	now skin change entry is "soft fur starts to spread across your body. It is predominantly a [if player is herm]pretty pink[else if player is male]coral blue[else if player is female]sunshine yellow[else]pastel orange[end if] color, though there's ivory white areas at around at your mouth, throat, chest and crotch";
	now ass change entry is "the cute fluff of a little bunny tail appears";
	now cock change entry is "it becomes smooth, pink and overall human-like, though smoother and more sensitive";
	now str entry is 10;
	now dex entry is 15;
	now sta entry is 15;
	now per entry is 18;
	now int entry is 10;
	now cha entry is 17;
	now sex entry is "Both";
	now HP entry is 29;
	now lev entry is 3; [ Level of the Monster, you get this much XP if you win, or this much XP halved if you loose ]
	now wdam entry is 4; [Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere"; [ Location of monster, in this case nowhere]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 9; [ Length infection will make cock grow to if cocks]
	now cock width entry is 10; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 8; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 15;
	now cunt width entry is 10;
	now libido entry is 75; [ Set to zero in this monster to control elsewhere ]
	now loot entry is ""; [ Dropped item. Key will be used later ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3;
	now body descriptor entry is "[one of]slender[or]alluring[or]sexy[at random]";
	now type entry is "[one of]rabbit[or]bunny[or]lapine[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;


Section 8 - Heat

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
"Easter Bunny"	400	400	"[ebheat_trigger]"	"swollen and sweet-smelling bunny cunny"	"[ebheat_start]"	"[ebheat_end]"	"[ebheat]"	true	true	"[ebheat_mtrigger]"

ebheat_egg is a number that varies.
ebheat_msg is a truth state that varies.

to say ebheat_trigger:
	say "     A euphoric warmth in your lower belly makes you moan in pleasure and drop to your knees. You can feel a growing dampness to your pussy [if cunt length of player < 8 or cunt width of player < 5]as it stretches and swells wider [end if]in preparation. Thoughts of romping bunnies[if ovipreglevel > 1] and colorful eggs[end if] fill your idle thoughts as you go into heat.";
	if cunt length of player < 8, increase cunt length of player by 1;
	if cunt width of player < 5, increase cunt width of player by 1;

to say ebheat_mtrigger:
	say "     A euphoric warmth in your lower belly makes you moan in pleasure and drop to your knees. You can feel an empty yearning in your ass. Your anus and rectum shifts and relaxes as it becomes more accommodating in preparation. Thoughts of romping bunnies[if ovipreglevel > 1] and colorful eggs[end if] fill your idle thoughts as you go into a strange male heat.";

to say ebheat_start:
	if libido of player < 75, now libido of player is ( 75 + ( libido of player * 3 ) ) / 4;
	if ovipreglevel > 1, now ebheat_egg is 0;
	if ebheat_egg > 0:
		now ebheat_egg is ebheat_egg / 2;
	if ebheat_egg > 4:
		now ebheat_egg is 4;
	now ebheat_msg is false;

to say ebheat_end:
	now ebheat_msg is false;
	if libido of player > 20:
		decrease libido of player by 10;
		if libido of player < 20, now libido of player is 20;

to say ebheat:
	increase libido of player by 3;
	if ovipreglevel > 1, increase ebheat_egg by 1;
	if ebheat_egg > 6 and ebheat_msg is false:
		LineBreak;
		say "     You feel a shifting in your lower belly as a small weight becomes noticeable inside you. It feels... pleasant... You rub your tummy, sighing happily.";
		now ebheat_msg is true;
	else if ebheat_egg > 9 and ebheat_msg is true and Micaela is visible and ( lastfuck of Micaela - turns ) >= 9 and a random chance of libido of player in 150 succeeds:
		setmonster "Easter Bunny";
		choose row monster from the Table of Random Critters;
		LineBreak;
		say "     There's a small shifting of weight in your lower belly that feels so nice you have to stifle a moan. Looking over at Micaela, your [if player is female]cunt grows wet and quivers with a need to be filled[else]asshole feels empty and in need of filling[end if]. The colorful bunny's nose twitches and she grins at you, as if able to smell your arousal. You also see a bulge forming under her skirt and, knowing what lies beneath, your insides flutter again with heated desire. Unable to resist, you head over to her, tossing aside your clothing and gear as you go.";
		say "     Seeing that lustful look in your eyes, Micaela flips up the front of her skirt, revealing her erection and plump balls. 'Mmm... come on, honeybunny. I know what you need,' she says, stroking her tantalizing manhood. 'Let's give that [if player is female]heated bunny-cunny[else]heated boi-bunny butt[end if] of yours the fucking it deserves.' You climb eagerly into the sexy Easter bunny's lap, grinding down on that throbbing shaft[if player is female]. Grabbing your hips, she lowers you down onto her cock. You moan long and with satisfaction as you feel that pulsing rod slide into your juicy cunt[else]. Spreading your cheeks, she lowers you down onto her cock. You moan long and with satisfaction as you feel that pulsing rod slide into your welcoming pucker[end if].";
		WaitLineBreak;
		say "     Micaela gives you a passionate kiss, her tongue playing in your mouth as she starts bouncing you in her lap. That weight you've been feeling in your belly shifts and rolls about in an oddly pleasant manner. And part of you know that feeling's only going to get better now that the bunny's going to pump her hot seed into you and breed you. Breaking the kiss, she moves to nuzzle [if breast size of player > 0]at your breasts[else]and nibble along your neck[end if] while rubbing a hand-paw over your belly.";
		say "     'Don't worry, sweetie. I know that feeling all too well. Don't worry, Micaela's going to cream that egg of yours. Mmm... going knock you up and make that into a nice, big egg full of life for you[one of]. You'll be so cute with a big eggy-belly[or]. Laying an egg like that will feel wooonderful[or]. A proper bunny egg for my honeybunny[at random],' she says as she nuzzles you tenderly while fucking you wildly.";
		WaitLineBreak;
		say "     When Micaela's climax comes, it is a powerful and prolific, even for her. The gushes of cum seem to go on and on, filling your insides and more. The egg inside you is bathed in the virile bunny's semen as your womb is bloated and your belly rounds[if scalevalue of player < 3] excessively[else if scalevalue of player is 3] considerably[end if]. A gooey mess of the excess cum leaks out around her still-pulsing shaft and yet she continues cumming for several more blasts, guaranteeing you'll have an egg-filled belly in no time. In you heat-addled state, you can't help but sigh in satisfaction at the thought of that. Sliding you from her lap, she lets you rest on the floor, reaching out to rub her dainty footpaws over your cum-filled egg-belly.";
		now ovipregnant is true;
		impregnate with "Easter Bunny";
		now libido of player is libido of player / 2;
		now lastfuck of Micaela is turns;
	else if ebheat_egg >= 12 and a random chance of ebheat_egg in 24 succeeds:
		LineBreak;
		if player is female:
			if ( "Litter Bearer" is listed in feats of player and a random chance of 1 in 4 succeeds ) or a random chance of 1 in 8 succeeds:
				say "     That noticeable weight you've been feeling in your lower belly has grown, resting heavily in your womb. Your bunny cunny quivers and warm juices soak your thighs as the hard lumps inside you shift about with a series of clicks and clacks. You moan and stagger to someplace to sit. Your uterine walls push at the hard lumps inside you, guiding the one down into your vagina, which continues to push it out. Shivers of delight rock through you even as the candy-shelled egg crowns, building to an orgasmic climax as you manage to push it free.";
				say "     But that is only the first. You've already got the second pushing past your cervix and into your vaginal cavity. The second is easier to get out, your passage having already been stretched by the first. And another push of orgasmic effort forces this second colorful egg out.";
				say "     Left with the third and final, it is more difficult. While your vagina and pussy may be stretched and lubricated with your femme cum, your inner muscles are tired from the effort. You moan, pant and masturbate yourself furiously to another orgasm that gives the chocolate ovoid the final push out it needs. The colorful egg comes to rest beside its predecessors.";
				say "     You're left panting and thoroughly drained, yet erotically satisfied after the strange experience. Taking the colorful Easter eggs, you stow them away.";
				increase carried of Easter egg by 3;
				increase hunger of player by 12;
			else if ( "Litter Bearer" is listed in feats of player and a random chance of 2 in 3 succeeds ) or a random chance of 1 in 4 succeeds:
				say "     That pleasant weight you've been feeling in your lower belly has grown, resting heavily in your womb. Your bunny cunny quivers and warm juices soak your thighs as the hard lumps inside you shift about with a few clicks. You moan and stagger to someplace to sit. Your uterine walls push at the hard lumps inside you, guiding the first down into your vagina, which continues to push it out. Shivers of delight rock through you even as the candy-shelled egg crowns, building to an orgasmic climax as you manage to push it free.";
				say "     But that is only the first. You've already got the other one pushing past your cervix and into your vaginal cavity. The second is easier to get out, your passage having already been stretched by the first. And another push of orgasmic effort forces this second colorful egg out.";
				say "     You're left panting and quite drained, yet erotically satisfied after the strange experience. Taking the colorful Easter eggs, you stow them away.";
				increase carried of Easter egg by 2;
				increase hunger of player by 8;
			else:
				say "     That small weight you've been feeling in your lower belly has grown, resting heavily in your womb. Your bunny cunny quivers and warm juices soak your thighs as it shifts inside you. You moan and stagger to someplace to sit. Your uterine walls push at the hard lump inside you, guiding it down into your vagina, which continues to push it out. Shivers of delight rock through you even as the candy-shelled egg crowns, building to an orgasmic climax as you manage to push it free. You're left panting and drained, yet erotically satisfied after the strange experience. Taking the colorful Easter egg, you stow it away.";
				increase carried of Easter egg by 1;
				increase hunger of player by 4;
		else:
			if ( "Litter Bearer" is listed in feats of player and a random chance of 1 in 4 succeeds ) or a random chance of 1 in 8 succeeds:
				say "     That small weight that you've been feeling in your lower belly has grown, resting heavily in your hidden womb. Your bunny womb trembles and your asshole starts to relax as the hard lumps inside you shift about with a series of clicks and clacks. You moan and stagger to someplace to sit. Your uterine walls push at the hard lumps inside you, guiding the one down into your bowels, which continue to push it out. Shivers of delight rock through you even as the candy-shelled egg crowns from your anus, building to an orgasmic climax as you manage to push it free.";
				say "     But that is only the first. You've already got the second pushing past your anal cervix and into your lower intestine. The second is easier to get out, your rectum having already been stretched by the first. And another push of orgasmic effort forces this second colorful egg out.";
				say "     Left with the third and final, it is more difficult. While your rectum and anus may be stretched and lubricated with egg juices, your inner muscles are tired from the effort. You moan, pant and masturbate yourself furiously to another orgasm that gives the chocolate ovoid the final push out it needs. The colorful egg comes to rest beside its predecessors.";
				say "     You're left panting and thoroughly drained, yet erotically satisfied after the strange experience. Taking the colorful Easter eggs, you stow them away.";
				increase carried of Easter egg by 3;
				increase hunger of player by 12;
			else if ( "Litter Bearer" is listed in feats of player and a random chance of 2 in 3 succeeds ) or a random chance of 1 in 4 succeeds:
				say "     That small weight that you've been feeling in your lower belly has grown, resting heavily in your hidden womb. Your bunny womb trembles and your asshole starts to relax as it shifts inside you with a series of clicks and clacks. You moan and stagger to someplace to sit. Your uterine walls push at the hard lumps inside you, guiding the first down into your bowels, which continues to push it out. Shivers of delight rock through you even as the candy-shelled egg crowns from your anus, building to an orgasmic climax as you manage to push it free.";
				say "     But that is only the first. You've already got the other one pushing past your anal cervix and into your lower intestine. The second is easier to get out, your passage having already been stretched by the first. And another push of orgasmic effort forces this second colorful egg out.";
				say "     You're left panting and quite drained, yet erotically satisfied after the strange experience. Taking the colorful Easter eggs, you stow them away.";
				increase carried of Easter egg by 2;
				increase hunger of player by 8;
			else:
				say "     That small weight you've been feeling in your lower belly has grown, resting heavily in your hidden womb. Your bunny womb trembles and your asshole starts to relax as it shifts inside you. You moan and stagger to someplace to sit. Your uterine walls push at the hard lump inside you, guiding it down into your bowels, which continue to push it out. Shivers of delight rock through you even as the candy-shelled egg crowns from your anus, building to an orgasmic climax as you manage to push it free. You're left panting and drained, yet erotically satisfied after the strange experience. Taking the colorful Easter egg, you stow it away.";
				increase carried of Easter egg by 1;
				increase hunger of player by 4;
		now ebheat_msg is false;
		now ebheat_egg is 0;
		now libido of player is ( 75 + ( libido of player * 3 ) ) / 4;

Section 5 - Endings

[
when play ends:
	if bodyname of player is "Template":
		if humanity of player < 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Easter Bunny ends here.
