Version 1 of Impala by UrsaOmega begins here.
[Version 1 - new creature, loss+victory sex, endings]

"Adds an Impala creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Impala" } to infections of girl;
	add { "Impala" } to infections of furry;

to say losetoimpala:
	say "     You collapse before the impala woman, overwhelmed by her swift strikes. She looks down at you with pure disdain.";
	if cocks of player > 0:		[male+herm]
		say "     'Hrmph. Not a worthy male after all. Looks like I'm going to have to find someone else to father a strong child for me. Still, you could be of some use to me...', she says while advancing on you.";
	otherwise:								[female+neuter]
		say "     'Yeah! That'll teach you to come around my territory!', she says, before a smug look crosses her face. 'However, you could still help me out...'";
	say "     She moves over to your bruised form, pushing you down on your back. Before you can react, she kneels over your face, grinding her swollen sex into it. Realizing you aren't going to leave until she gets what you want, you put your [facename of player] mouth to work pleasing her. You start by teasing the edges of her folds with your tongue, making sure to pay special attention to her clit every few strokes. You listen for her moans to become more impassioned before penetrating her with deep licks, tongue-fucking her. Eventually your mouth gets the better of her and she's crying out in orgasm as she grinds against your face, covering you in her juices. Panting, she gets off you and staggers off.";

to say beattheimpala:
	say "     The impala woman slumps to the ground, submitting to your superior strength.";
	if libido of player > 40:
		say "     Your libido gets the better of you and you find yourself considering having some fun with her. Do you want to?";
		if the player consents:
			if cocks of player > 0:							[male+herm]
				say "     The impala woman collapses before you. 'Oooh, you're so...' - she stops to pant, then swoon - '...Strong! You'd make a worthy mate!'. Well, if she wants it so bad... Taking off your gear, you lie back, stroking your hardening cock with one hand and beckoning her over with the other. She's on top of you in a flash, positioning her needy entrance over your [cock size desc of player] erection. Putting your hands on her hips, you guide her down your cock, relishing the exquisite feeling of her tight, hot passage wrapped around you. She uses her powerful legs to propel her slender body up and down your shaft, moaning as your organ fills her completely. After what feels like an hour of riding you, the impala cries out as she orgasms, the resulting vaginal muscle contractions milking your cock and driving you to a powerful orgasm yourself. With her womb filled with your cum, the impala collapses on top of you. When the afterglow fades, she leans down to give your cheek a peck before getting up. 'Next time you're in rut, come and find me, stud!', she says with a coy smile before heading off. When you manage to gather your strength, you get up and dressed.";
			otherwise if cunts of player > 0:		[female]
				say "     The impala woman collapses before you. You, feeling every inch the dominant female, you undress and lie back, commanding the impala over to you. She gets the hint and drops her muzzle between your legs, seeking out your pussy. She nuzzles and teases it with her lips, kissing up and down your slit before sucking on your clit for a while. Finally, she slips her tongue into you. True to her ungulate nature, her tongue is thick and dexterous, and she uses it to great effect, darting it in and out of your entrance and teasing the walls of your pussy with it. You lose track of time as your world becomes the muzzle between your legs. Finally, you feel your orgasm break upon you and you cry out in pleasure, your vaginal muscles spasming around the impala's tongue. You both collapse, panting as if you had been sprinting. Leaving the impala woman where she lies, you get dressed and leave.";
			otherwise:													[neuters need love too]
				say "     You lie down with her, your fingers finding her slit as hers roam up and down your genderless body. You enjoy hearing her pants and moans as you work your fingers in and out of her snatch, working her passage and her clit. Likewise, her slender hands feel amazing as they roam your body, working out knots of tension in your shoulders and back. You work each other with your fingers for what feels like an hour, until finally your ministrations launch her into a writhing, moaning orgasm as she clings to you. You hold each other for a while, too relaxed to get up. Finally, you extricate yourself from her and leave.";
		otherwise:
			say "     You leave her lying on the ground.";
	otherwise:
		say "     Looking over her body, you feel a slight twinge of interest, but aren't aroused enough to do anything with her. Since the impala is completely naked, there isn't even anything worthwhile to take as a reward for your victory, so you just go, leaving her lying on the ground.";

to say impaladesc:
	say "     You hear the sound of swift footsteps and you turn to see a figure approaching you in a sort of half prance, half run. She has a thin, lithe body covered in reddish brown fur, with a white patch on her belly. She has perky breasts and her female sex is engorged with need. Her long muzzle is pointed at you, ";
	if cocks of player > 0:
		say "and her large doe eyes are filled with lust. 'Finally, a male to satisfy me! But are you worthy?',";
	otherwise:
		say "locking eyes confrontationally with yours. 'A female in my territory? I'll teach you to not take my males from me!',";
	say " the impala woman exclaims. She rubs a perky breast with one hoof-like hand while the other reaches down between her legs to play with her engorged sex a bit before charging you!";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Impala";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The impala dashes at you, landing a well placed punch![or]The impala rushes you, hitting you with a full-bore headbutt![or]The impala lands a nasty kick from one of her powerful legs![at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beattheimpala]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetoimpala]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[impaladesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "that of an impala, with a long graceful neck and deerlike muzzle, and topped with large alert ears";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "slender and deerlike";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "reddish-brown furred";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "Your furry impala-like tail hangs behind you.";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "tapered";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your face pushes out into the deerlike muzzle of an impala, with your nose moving down to the end of it and your ears enlarging and moving to the top of your head to better hear incoming predators";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes slender and graceful, ideal for outrunning predators";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "it becomes covered in short reddish brown fur, with a white patch covering your belly";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it becomes tight and pert, with a fuzzy impala tail growing over it";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes more slender and tapered, retreating into its new fuzzy sheath";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 16;					[ These are now the creature's stats... ]
	now dex entry is 22;					[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16;					[ These values may be used as part of alternate combat.]
	now per entry is 20;
	now int entry is 14;
	now cha entry is 18;
	now sex entry is "Female";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 60;						[ The monster's starting hit points. ]
	now lev entry is 11;					[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 15;					[ Monster's average damage when attacking. ]
	now area entry is "Plains";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;					[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 4;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;				[ Number of breasts the infection will give a player. ]
	now breast size entry is 3;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 2;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;					[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12;	[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 8;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 30;				[ Target libido the infection will rise towards. ]
	now loot entry is "";					[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;					[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]lithe[or]graceful[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "deerlike";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Endings

when play ends:
	if bodyname of player is "Impala":
		if humanity of player is less than 10:
			say "     You succumb fully to your impala instincts, joining up with a herd of other impalas roaming the plains.";
			if cunts of player is 0 and "Submissive" is listed in the feats of the player:
				say "     Your submissive nature gets the better of you, and when the lead male moves to drive you out of his territory, you instead offer yourself up him. He's wary of you at first, but after he spends some time with you he realizes you're no more a threat to him than a doe. He spends almost as much time with you as he does with the females, you come to love the feeling of his cock filling you.";
			otherwise if cunts of player is 0 and "MPreg" is listed in the feats of the player:
				say "    When the lead male of the herd moves to drive you out, you instead offer yourself up him. He's wary of you at first, but after he spends some time with you he realizes you're no more a threat to him than a doe. Driven by a strange scent emanating from your rear, he mounts you right there, filling your ass up with his seed. He's surprised when he finds out you're pregnant with his fawn, but happy that you can be a productive member of his herd. In time, you become his favorite doe, bearing him many strong breeder-males like yourself.";
			otherwise if cocks of player > 0:
				say "You eventually fight your way to the lead male position, fathering many fawns with your plentiful harem of slender impala women.";
			otherwise if cunts of player > 0:
				say "You enjoy the company of your lead male and harem-mates as you bear the herd many strong fawns.";
		otherwise:
			say "     When the military releases you from quarantine, you find yourself drawn to two things: large, open spaces, and running. You spend all your free time running sprints and marathons, and before long you're a world class track and field athlete. You settle down with a fellow gazelle-morph runner and have many swift children together.";

Impala ends here.