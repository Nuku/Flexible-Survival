Version 2 of Impala by UrsaOmega begins here.
[Version 2.1 - Male oral and second female impala sex scenes added - Stripes]

"Adds an Impala creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Impala" } to infections of furry;

impalamode is a number that varies. impalamode is usually 0.

to say losetoimpala:
	if impalamode is 0:
		say "[losetoimpalagirl]";
	else:
		say "[losetoimpalaguy]";

to say losetoimpalagirl:
	say "     You collapse before the impala woman, overwhelmed by her swift strikes. She looks down at you with pure disdain.";
	if cocks of player > 0:		[male+herm]
		say "     'Hrmph. Not a worthy male after all. Looks like I'm going to have to find someone else to father a strong child for me. Still, you could be of some use to me...' she says while advancing on you.";
	else:								[female+neuter]
		say "     'Yeah! That'll teach you to come around my territory!' she says, before a smug look crosses her face. 'However, you could still help me out...'";
	say "     She moves over to your bruised form, pushing you down on your back. Before you can react, she kneels over your face, grinding her swollen sex into it. Realizing you aren't going to leave until she gets what you want, you put your [facename of player] mouth to work pleasing her. You start by teasing the edges of her folds with your tongue, making sure to pay special attention to her clit every few strokes. You listen for her moans to become more impassioned before penetrating her with deep licks, tongue-fucking her. Eventually your mouth gets the better of her and she's crying out in orgasm as she grinds against your face, covering you in her juices. Panting, she gets off you and staggers off.";

to say losetoimpalaguy:
	if a random chance of 1 in 4 succeeds and inheat is false:	[occasional oral if player is not in heat]
		say "     [if HP of player > 0]When you give in to the impala's advances, the successful male chuckles and pushes you down onto your knees[else]Worn out from your fight, you cannot resist as the impala man pushes you to your knees[end if]. 'I'm going to have a little fun with you, little [if cunts of player > 0]ewe[else]ram[end if],' he says lustily. He strokes his above-average cock against your cheek, the musky scent filling your nose and making [if player is submissive]your submissive urges well up[else if cunts of player > 0]your pussy wet with its virility[else]your mouth water a little[end if][if HP of player > 0] despite yourself[end if]. Feeling a little light-headed, you part your lips as he brushes his dribbling glans across them. After a lick to sample his taste, your mouth welcomes it in.";
		say "     The victorious stud chuckles and grabs your head, thrusting into your mouth as you do your best to lick and suck as he does. Each time he pulls back, he leaves just his tapered glans in your mouth, allowing you a moment to suck on it firmly while your tongue plays across it. His throbbing manhood drools richly musky pre into your mouth and his crotch fur is heavy with his scent as well. You're reduced to an eager, cocksucking slut as you lose yourself in the moment. And when his climax comes, you're fed a gooey load of impala cum that you swallow down with a thirst for more. But done with you for now, the impala stud pushes you back, leaving you to land on your ass. 'That's enough for now, little [if cunts of player > 0]ewe[else]ram[end if][if player is impreg_ok]. Maybe next time I'll give you the breeding you deserve and put a fawn in your belly[else]. I might not be so generous next time you stray into my territory[end if].'  And with that said, he drives you off with a firm swat on your ass.";
	else if player is impreg_able or (player is submissive and cunts of player is 0): [male and female, can be impregnated or submissive]
		say "     [if HP of player > 0]Giving in to the impala's advances, the successful male grabs you in his slender arms[else]Exhausted from your fight, you nearly fall over, but the impala man rushes forward to catch you with his slender arms[end if]. 'You're mine now, little ewe...' he says lustily. The presence of the strong male triggers [run paragraph on]";
		if player is submissive and player is not impreg_able:
			say "your submissive nature";
		if player is impreg_able:
			say "a need to have your womb filled and your belly swell with child[run paragraph on]";
		say " and you feel a little light headed. 'You'd make a fine addition to my herd...' he says huskily into your ear, before leaning in for a kiss. Lost in his musk, you eagerly return the kiss, mashing your own [facename of player] face against his sleek muzzle. He reaches one cloven hand behind you to squeeze and grope your [bodydesc of player] body. You allow yourself to be guided into all fours, with the impala behind you on his knees, rubbing his growing slender erection against your rear.[run paragraph on]";
		if cunts of player is 0 and player is mpreg_able:
			say " He stops for a moment and brings his nose down to your fertile rear end. He smells deeply for a second, then says, 'Hrm... Smells like you have a womb in there. Just need a big ram to come and fill you up. You're going to feel so much better when you have my fawn in your belly.'[run paragraph on]";
		if cunts of player > 0 and player is impreg_able:
			say "  He sticks his muzzle between your legs, breathing in your fertile scent. 'Mmm... I love the scent of needy ewes. Don't worry, you're going to feel so good when your belly swells with my fawn...'[run paragraph on]";
		if player is submissive and cocks of player > 0 and player is not impreg_able:
			say " 'You just want a big, strong male to dominate you, don't you? You're just a submissive little ewe. That's alright, I'm gonna take care of you. You'll feel so much better when I fill you up.'[run paragraph on]";
		say " You shudder with need as you feel his erection press against your entrance. He rubs the tip against your[if cunts of player is 0] pucker[end if][if cunts of player > 0] labia[end if], letting his precum lube it. Consumed by your lust for this strong, lithe impala, you push back on his rod, his narrow glans breaching you with a slight pop. The impala rolls his hips, gently working more of his length into your [if cunts of player is 0]back passage[end if][if cunts of player > 0]vagina[end if][if cocks of player > 0]. You let out a soft moan as his tapered tip brushes past your prostate, making your own painfully hard cock dribble a bit of your own pre. Soon he's fully hilted his slender breeding tool inside you, his balls coming to rest on your own[end if][if cunts of player > 0]. He angles his thrusts to maximize the stimulation to your clit, making you moan under him. Soon he's hilted his slender breeding tool inside you, his tapered tip pushing at your cervix[end if].";
		if waiterhater is 0, wait for any key;
		LineBreak;
		say "     He nibbles on the back of your neck as he begins long, slow strokes in an out of you; each thrust feels like it fills you to your very core. You clench down on his outward strokes, feeling an intense need to feel your [if cunts of player is 0]ass[else]womb[end if] fill with his seed. You gasp as he reaches [if cocks of player > 0]under your [bodydesc of player] body to wrap a hand around your rock-hard [cock of player] erection[else]around your chest to caress and stroke your breasts, no doubt imagining them swelling with milk for his child[end if]. Soon he's leaning over you, rutting you hard with short, fast strokes that rub your [if cunts of player is 0]prostate[else]clit[end if] just right[if cocks of player > 0], stroking your cock in time with his thrusts[end if]. The all-out assault on your pleasure button and his [if cocks of player > 0]hand around your own cock[else]soft caressing[end if] is too much to handle for long, and in the blink of an eye you're crying out in orgasm[if cocks of player > 0], spurting cum over the ground[end if] while your muscles milk the impala's dick for all it has; now he's grunting and you feel the blissful sensation of your [if cunts of player is 0]ass[else]womb[end if] being filled with impala cum. The impala rolls you onto your side, caressing your belly and kissing your cheek while keeping his softening cock in you, plugging you up while his seed does its work. Finally, he gives you one last kiss before getting up. 'Mmm, next time just start by bending over. It's much more fun that way...' he says before bounding off, leaving you to clean yourself up and get dressed.[impregchance]";
	else:
		if cocks of player > 0 and player is not impreg_now: [Can't be impregnated, is not currently pregnant, and male]
			say "The impala man gives you a violent kick to the ground before saying, 'Next time, don't come around a stronger male's territory!'";
		else if cunts of player > 0 and player is not impreg_now: [can't be impregnated, is not currently pregnant and female]
			say "The impala man smells you and frowns, then gives you a violent kick to the ground. 'Hrmph. You're no use to me if I can't put my fawn in you. Come back when you're ready for breeding.'";
		else if player is impreg_now: [male and female, already pregnant]
			say "The impala man moves on you with intent, but then notices your full belly. 'Come back when you're ready for breeding again, little ewe, so I can put a strong fawn in you...' he says with a pat on your rear and a wink.";

to say beattheimpala:
	if impalamode is 0:
		say "[beatimpalagirl]";
	else:
		say "[beatimpalaguy]";

to say beatimpalagirl:
	say "     The impala woman slumps to the ground, submitting to your superior strength.";
	if libido of player > 20:
		say "     Your libido gets the better of you and you find yourself considering having some fun with her. Do you want to?";
		if the player consents:
			if cocks of player > 0:							[male+herm]
				if a random chance of 1 in 2 succeeds:
					say "     The impala woman collapses before you. 'Oooh, you're so...' - she stops to pant, then swoon - '...Strong! You'd make a worthy mate!'. Well, if she wants it so bad... Taking off your gear, you lie back, stroking your hardening cock with one hand and beckoning her over with the other. She's on top of you in a flash, positioning her needy entrance over your [cock size desc of player] erection. Putting your hands on her hips, you guide her down your cock, relishing the exquisite feeling of her tight, hot passage wrapped around you. She uses her powerful legs to propel her slender body up and down your shaft, moaning as your organ fills her completely. After what feels like an hour of riding you, the impala cries out as she orgasms, the resulting vaginal muscle contractions milking your cock and driving you to a powerful orgasm yourself. With her womb filled with your cum, the impala collapses on top of you. When the afterglow fades, she leans down to give your cheek a peck before getting up. 'Next time you're in rut, come and find me, stud!' she says with a coy smile before heading off. When you manage to gather your strength, you get up and dressed.";
				else:
					say "     With the impala woman collapsed to her knees in front of you, she pants heavily and looks up at you with desire. 'You... you're so strong. A stud like you would make a worthy mate,' she moans, moving to sit back, spreading her legs. Knowing she wants it badly, you set aside your gear and stroke your stiffening cock with one hand. After bringing it to her muzzle so she can suck and lick your [cock size desc of player] [cock of player] length fully hard, you move into position.";
					say "     Parting her legs and holding them up, you drive your [cock of player] manhood into her juicy pussy. She moans as she's penetrated and her hoof-like hands move to her bosom. She makes a big show of playing with her breasts, rubbing and licking her nipples as you fuck her. And that show of hers does its job, making you all the randier and driving you to fuck her harder and faster. You go at it for a long time, her tight passage milking around your cock the whole time, before finally reaching your climax and blasting your [cum load size of player] load into the impala ewe. Fucked and bred, the lustful female arches her back and cries out in orgasmic release before finally sagging back onto the ground.";
					say "     She pants and moans softly, her hands idly playing with herself. 'Next time you're ready to rut, come and find me, stud!' she says dreamily. She staggers to her feet and heads off across the plains, your seed leaking down her slender legs as proof of your victory over her.";
			else if cunts of player > 0:		[female]
				say "     The impala woman collapses before you. You, feeling every inch the dominant female, undress and lie back, commanding the impala over to you. She gets the hint and drops her muzzle between your legs, seeking out your pussy. She nuzzles and teases it with her lips, kissing up and down your slit before sucking on your clit for a while. Finally, she slips her tongue into you. True to her ungulate nature, her tongue is thick and dexterous, and she uses it to great effect, darting it in and out of your entrance and teasing the walls of your pussy with it. You lose track of time as your world becomes the muzzle between your legs. Finally, you feel your orgasm break upon you and you cry out in pleasure, your vaginal muscles spasming around the impala's tongue. You both collapse, panting as if you had been sprinting. Leaving the impala woman where she lies, you get dressed and leave.";
			else:						[neuters get the best victory scene - victory massage+cuddles!]
				say "     You lie down with her, your fingers finding her slit as hers roam up and down your genderless body. You enjoy hearing her pants and moans as you work your fingers in and out of her snatch, working her passage and her clit. Likewise, her slender hands feel amazing as they roam your body, working out knots of tension in your shoulders and back. You work each other with your fingers for what feels like an hour, until finally your ministrations launch her into a writhing, moaning orgasm as she clings to you. You hold each other for a while, too relaxed to get up. Finally, you extricate yourself from her and leave.";
		else:
			say "     You leave her lying on the ground.";
	else:
		say "     Looking over her body, you feel a slight twinge of interest, but aren't aroused enough to do anything with her. Since the impala is completely naked, there isn't even anything worthwhile to take as a reward for your victory, so you just go, leaving her lying on the ground.";

to say beatimpalaguy:
	say "The impala falls to the ground before you, defeated.";
	if libido of player > 20 and (cocks of player > 0 or cunts of player > 0): [non-genderless victory scenes]
		say "Your libido gets the better of you, and you consider showing the impala his place by [if cocks of player > 0]taking his tailhole[else]having him eat your pussy[end if]. Do you want to?";
		if player consents:
			if cocks of player > 0: [male victory]
				say "     'Oof. Looks like I was the weaker male after all...' he says dejectedly. You feel a rush of testosterone as you stand over the subordinate male; now it's time to show the once dominant impala his place. You circle behind the prostrate male, eyeing his tight rear end, covered by his striped impala tail. The impala man's ears perk up as he hears you take your clothes off; tenses up as you kneel behind him; and finally goes stiff as wood when you rub your hardening [cock of player] cock between his pert buttcheeks as you guide him onto all fours. 'W-wait! I've never had anything... down there,' he whimpers. You caress his slender body, telling him it'll feel better if he relaxes as you rub the tip of your cock against his virginal tailhole. He resists the idea for a moment, but eventually succumbs to your ministrations and lets his body go slack. When you feel like he's ready, you press your cockhead into his pucker; the entrance resists you at first, but you're insistent, and finally you breach his defenses with a groan and shudder on both your parts. His virgin asshole feels heavenly wrapped around the tip of your [cock of player] cock, and you forge onward into his guts, listening for his hisses and cries of displeasure and pleasure. Soon you're balls deep in the once-dominant impala; while you let his ass adjust to your [cock size desc of player] meat, you lean down to nibble and lick at one of his ears, whispering in his ear about how much he's going to love being a cock-slut. He moans softly and clenches down on the cock invading his rear; he's starting to enjoy it! Finally, he cries out: 'Fuck me!'";
				if waiterhater is 0, wait for any key;
				LineBreak;
				say "     You smile as you start to work your [cock of player] cock in and out of his now-accommodating back passage, relishing the feeling of him clenching on your cock. You reach under him with one hand to find his own cock is iron-stiff and dripping precum like a faucet. Wrapping your hand around his tapered erection, you stroke him in time with your thrusts. You want to draw this feeling out forever, but the impala man's gripping insides have other plans for you; feeling your climax coming, you lean over him and rut him with short, fast strokes, speeding up your jerking of his cock as well. As you pass the finish line you hilt yourself deep inside him, shooting your cum deep his guts while your hand brings him to a simultaneous orgasm. You roll him onto his side and lay with him for a bit, stroking each other's sensitive bodies and exchanging a few kisses as you come down from your afterglow. The impala man gets up and says, 'Mmm, thanks for that. I never knew bending over for other males was so much fun!'. He turns and gives you a seductive wag of his tail before bounding off, leaving you to get dressed again.";
			else if cunts of player > 0: [female victory]
				say "     'Beaten... by a female?!' he says dejectedly. Feeling like the alpha female you are, you undress and lie back, commanding the impala over to pleasure you with his. He gets the hint and drops his muzzle between your legs, seeking out your pussy. He nuzzles and teases it with her lips, kissing up and down your slit before sucking on your clit for a while. Finally, he slips his tongue into you. True to his ungulate nature, his tongue is thick and dexterous, and he uses it to great effect, darting it in and out of your entrance and teasing the walls of your pussy with it. You lose track of time as your world becomes the muzzle between your legs. Finally, you feel your orgasm break upon you and you cry out in pleasure, your vaginal muscles spasming around the impala's tongue. You both collapse, panting as if you had been sprinting. Leaving the impala man where he lies, you get dressed and leave.";
		else:
			say "You choose not to dominate the impala, instead leaving him to his humiliation.";
	else: [genderless + low libido]
		say "You leave the impala to his humiliation.";

to say impaladesc:
	choose row monster from the table of random critters;
	now impalamode is a random number between 0 and 1;
	if guy is banned and girl is banned:		[if both types are banned, the fight is aborted and removed from critter table]
		say "     You come across the impala-morph wandering the plains, but instead of engaging you the impala flees; something about you seems to be scaring them off.";
		blank out the whole row;
		now fightoutcome is 19;
		now combat abort is 1;
		now impalamode is 2;
	else if guy is banned:
		now impalamode is 0;
	else if girl is banned:
		now impalamode is 1;
	else if guy is warded and girl is warded:
		now impalamode is a random number between 0 and 1;
	else if ishunting is true:	[hunting results in 2/3rds chance to get unwarded option]
		if guy is warded and a random chance of 1 in 3 succeeds:
			now impalamode is 0;
		else if girl is warded and a random chance of 1 in 3 succeeds:
			now impalamode is 1;
	else if ishunting is false:
		if guy is warded:
			now impalamode is 0;
		else if girl is warded:
			now impalamode is 1;
	if impalamode is 0:
		setmongender 4; [creature is female]
		say "     You hear the sound of swift footsteps and you turn to see a female figure approaching you in a sort of half prance, half run. She has a thin, lithe body covered in reddish brown fur, with a white patch on her belly. She has perky breasts and her female sex is engorged with need. Her long muzzle is pointed at you, ";
		if cocks of player > 0:
			say "and her large doe eyes are filled with lust. 'Finally, a male to satisfy me! But are you worthy?'";
		else if cunts of player > 0:
			say "locking eyes confrontationally with yours. 'A female in my territory? I'll teach you to not take my males from me!'";
		else:
			say "and her eyes are filled with confusion as she tries to figure out which gender you are. 'What kind of creature are you?'";
		say " the impala woman exclaims. She rubs a perky breast with one hoof-like hand while the other reaches down between her legs to play with her engorged sex a bit before charging you!";
		now sex entry is "Male";
		if "Female Preferred" is listed in the feats of the player, now sex entry is "Female";
		if "Herm Preferred" is listed in the feats of the player, now sex entry is "Both";
	if impalamode is 1:
		setmongender 3; [creature is male]
		say "     You hear the sound of swift footsteps and you turn to see a male figure approaching you in a sort of half prance, half run. He has a slender, lithe body covered in reddish brown fur, with a white patch on his belly. Twin twisting horns curve impressively from his head and between his legs hangs a substantial sheath and pendulous balls. His long muzzle is pointed at you, ";
		if cocks of player > 0:
			say "and his eyes are locked confrontationally with yours. 'Ah, a challenger for my territory!'[run paragraph on]";
		else if cunts of player > 0:
			say "and his eyes are filled with lust at the sight of your feminine form. 'Ah, another female for my harem!'[run paragraph on]";
		else:
			say "and his eyes are filled with confusion as he tries to figure out which gender you are. 'What kind of creature are you?'[run paragraph on]";
		say " the impala man exclaims. He charges you!";
		now sex entry is "Female";
		if "Male Preferred" is listed in the feats of the player, now sex entry is "Male";
		if "Herm Preferred" is listed in the feats of the player, now sex entry is "Both";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Impala";
	now attack entry is "[one of]The impala dashes at you, landing a well placed punch![or]The impala rushes you, hitting you with a full-bore headbutt![or]The impala lands a nasty kick from one of its powerful legs![at random]";
	now defeated entry is "[beattheimpala]";
	now victory entry is "[losetoimpala]";
	now desc entry is "[impaladesc]";
	now face entry is "that of an impala, with a long graceful neck and deerlike muzzle, and topped with large alert ears[if cocks of player > 0]; large, twisty horns jut out of your forehead, displaying your virility[end if]"; [ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "slender and deerlike";
	now skin entry is "reddish-brown furred"; [ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "Your furry, impala-like tail hangs behind you."; [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "tapered";
	now face change entry is "your face pushes out into the deerlike muzzle of an impala, with your nose moving down to the end of it and your ears enlarging and moving to the top of your head to better hear incoming predators[if cocks of player > 0]. Your forehead feels strange as two twisty horns grow from your skull, curving outward to display your new impala virility[end if]"; [ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes slender and graceful, ideal for outrunning predators";
	now skin change entry is "it becomes covered in short reddish brown fur, with a white patch covering your belly";
	now ass change entry is "it becomes tight and pert, with a fuzzy impala tail growing over it"; [ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes more slender and tapered, retreating into its new fuzzy sheath"; [ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 12;
	now dex entry is 18;
	now sta entry is 12;
	now per entry is 16;
	now int entry is 14;
	now cha entry is 16;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 45;
	now lev entry is 7; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 9; [ Monster's average damage when attacking. ]
	now area entry is "Plains"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 4; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of breasts the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 8; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 30; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]lithe[or]graceful[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "deerlike"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Endings

when play ends:
	if bodyname of player is "Impala":
		if humanity of player < 10:
			say "     You succumb fully to your impala instincts, joining up with a herd of other impalas roaming the plains.";
			if cunts of player is 0 and player is submissive:
				say "     Your submissive nature gets the better of you, and when the lead male moves to drive you out of his territory, you instead offer yourself up him. He's wary of you at first, but after he spends some time with you he realizes you're no more a threat to him than a doe. He spends almost as much time with you as he does with the females, you come to love the feeling of his cock filling you.";
			else if cunts of player is 0 and "MPreg" is listed in the feats of the player:
				say "     When the lead male of the herd moves to drive you out, you instead offer yourself up him. He's wary of you at first, but after he spends some time with you he realizes you're no more a threat to him than a doe. Driven by a strange scent emanating from your rear, he mounts you right there, filling your ass up with his seed. He's surprised when he finds out you're pregnant with his fawn, but happy that you can be a productive member of his herd. In time, you become his favorite doe, bearing him many strong breeder-males like yourself.";
			else if cocks of player > 0:
				say "You eventually fight your way to the lead male position, fathering many fawns with your plentiful harem of slender impala women.";
			else if cunts of player > 0:
				say "You enjoy the company of your lead male and harem-mates as you bear the herd many strong fawns.";
		else:
			say "     When the military releases you from quarantine, you find yourself drawn to two things: large, open spaces, and running. You spend all your free time running sprints and marathons, and before long you're a world class track and field athlete. You settle down with a fellow gazelle-morph runner and have many swift children together.";

Impala ends here.
