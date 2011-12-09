strange slut by Zero begins here.


Section 1 - Monster Responses


slutprotection is a number that varies. slutprotection is usually 0.
slutty is a number that varies. slutty is usually 0.
slutname is a text that varies.  slutname is usually "hound dog".

to say slutdesc:
	now slutty is 0;
	say "[randomdesc]";
	say "Walking down the street, you find yourself staring at a naked male [one of]black[or]brown[or]multi-coloured[or]white[or]red[or]pink[or]yellow[or]light blue[at random] furry [slutname] with a [one of]black spiked[or]black studded white[at random] collar. Unfortunately, it's staring back at you!";

to say slutydesc:
	now slutty is 0;
	say "[randomdesc2]";
	say "Walking down the street, you find yourself staring at a naked female [one of]black[or]brown[or]multi-coloured[or]white[or]red[or]pink[or]yellow[or]light blue[at random] furry [slutname] with a [one of]black spiked[or]black studded white[at random] collar. Unfortunately, it's staring back at you!";

to say randomdesc: 
	let T be a random number between 1 and 15;
	if T is 1:
		now slutname is "husky";
	if T is 2:
		now slutname is "hawk";
	if T is 3:
		now slutname is "panther";
	if T is 4:
		now slutname is "rabbit";
	if T is 5:
		now slutname is "bear";
	if T is 6:
		now slutname is "stag";
	if T is 7:
		now slutname is "cheetah";
	if T is 8:
		now slutname is "kangaroo";
	if T is 9:
		now slutname is "skunk";
	if T is 10:
		now slutname is "bull";
	if T is 11:
		now slutname is "zebra";
	if T is 12:
		now slutname is "mouse";
	if T is 13:
		now slutname is "tiger";
	if T is 14:
		now slutname is "hyena";
	if T is 15:
		now slutname is "wolf";

to say randomdesc2: 
	let T be a random number between 1 and 15;
	if T is 1:
		now slutname is "husky";
	if T is 2:
		now slutname is "hawk";
	if T is 3:
		now slutname is "panther";
	if T is 4:
		now slutname is "bunny";
	if T is 5:
		now slutname is "bear";
	if T is 6:
		now slutname is "doe";
	if T is 7:
		now slutname is "cheetah";
	if T is 8:
		now slutname is "kangaroo";
	if T is 9:
		now slutname is "skunk";
	if T is 10:
		now slutname is "cow";
	if T is 11:
		now slutname is "zebra";
	if T is 12:
		now slutname is "mouse";
	if T is 13:
		now slutname is "tigress";
	if T is 14:
		now slutname is "hyena";
	if T is 15:
		now slutname is "wolf";

to say slutattack:
	say "[one of]The [slutname] hits you in the gut with his fist![or]The [slutname] rushes at you, knocking you off balance![at random][line break]";
	if slutprotection is 0,	say "[tempting]";

to say tempting:
	if slutty is 0:
		now slutty is 1;
		say "While still trying to fight you, the [slutname] begins to masturbate furiously, his hands becoming slick with cum![line break]";
	otherwise if slutty is 1:
		now slutty is 2;
		say "[one of]The [slutname] hits you in the face with his cum-covered hands.  On reflex, you lick the cum of you lips and relish just how good it tastes![or]The [slutname] gives a low moan of delight as his cock explodes with cum, hitting you in the face with delicious tasting cum![at random][line break]";
	otherwise if slutty is 2:
		now slutty is 3;
		say "The [slutname] bends over, giving you a lovely view of his tight ass and dripping cock![line break]";
	otherwise if slutty is 3:
		now slutty is 0;
		say "You are suddenly rushed by the slutty [slutname] and your mind becomes clouded in lust from the [slutname]'s cum![line break]";
		now hp of player is 0;

to say slutyattack:
	say "[one of]The [slutname] hits you in the gut with her fist![or]The [slutname] rushes at you, knocking you off balance![at random]";
	if slutprotection is 0,	say "[tempting2]";

to say tempting2:
	if slutty is 0:
		now slutty is 1;
		say "While still trying to fight you, the [slutname] begins to masturbate furiously, her hands becoming slick with her own juices![line break]";
	otherwise if slutty is 1:
		now slutty is 2;
		say "[one of]The [slutname] hits you in the face with her cum-covered hands.  On reflex, you lick the pussy juices of you lips and relish just how good it tastes![or]The [slutname] gives a low moan of delight as her pussy squirts her juices into her cup palm.  She splashes you in the face with delicious tasting cum![at random][line break]";
	otherwise if slutty is 2:
		now slutty is 3;
		say "The [slutname] bends over, giving you a lovely view of her tight ass and dripping cunt![line break]";
	otherwise if slutty is 3:
		now slutty is 0;
		say "You are suddenly rushed by the slutty [slutname] and your mind becomes clouded in lust from the [slutname]'s cum![line break]";
		now hp of player is 0;


to say slutvictory: [male]
	say "Exhausted from the waves of physical and sexual attacks, you collapse, surrendering yourself to the male [slutname] who quickly strips you of any and all clothing.";
	if cocks of player is greater than 0:
		if cock length of player is less than 4:
			if cunts of player is greater than 0:	[small cock + cunt]
				if a random chance of 1 in 6 succeeds:
					say "The [slutname] mutters 'must... make... more... sluts... for... mas-... ter...' before he flips you over onto all fours and begins rubbing his dripping cock against your cunt.  You barely have time the think as the handsome [slutname] thrusts his shaft into your hole, sending burning waves of lust through your body.  Your mind drifts off as you surrender yourself completely to the [slutname].[impregchance][cuntinc]";
				otherwise:
					say "Eyeing your [cock size desc of player] cock, the [slutname] gives you a pitying look while patting you on the head.  'Don't... worry... I... make... better...' [one of]the [slutname] whispers into your ear.  The [slutname] directs his muzzle over your [cunt size desc of player] cunt as it quickly grows wet.  He begins to lick and play with it while stroking your small cock.  In no time at all, you are lost in a haze of pleasure.[or]the [slutname] whispers into your ear.  The [slutname] directs his muzzle over your rapidly hardening [cock size desc of player] cock and begins to lick and suck at it.  In no time at all, you are lost in a haze of pleasure.[or]the [slutname] whispers into your ear.  The [slutname] thrusts his cock in to your mouth sending burning waves of lust through your body.  Your mind drifts off as you surrender yourself completely to the hot [slutname].[or] The [slutname] flips you over onto all fours and begins rubbing his dripping cock over your asshole.  You barely have time the think as the handsome [slutname] thrusts his shaft into your ass, sending burning waves of lust through your body.  Your mind drifts off as you surrender yourself completely to the [slutname].[or] The [slutname] rams his mouth into yours, giving you the most passionate kiss of your life.  His dripping cock rubs against your [cock size desc of player] one, sending burning waves of lust pulsing through your body.  Your mind drifts off as you surrender yourself completely to the handsome [slutname].[at random][cockinc]";
				say "By the time you regain control of your body and mind, the hot [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum-covered body to remember the [slutname] by.";
			otherwise:						[small cock]
				say "Eyeing your [cock size desc of player] cock, the [slutname] gives you a pitying look while patting you on the head.  'Don't... worry... I... make... better...' [one of]the [slutname] whispers into your ear.  The [slutname] directs his muzzle over your rapidly hardening [cock size desc of player] cock and begins to lick and suck at it.  In no time at all, you are lost in a haze of pleasure.[or]the [slutname] whispers into your ear.  The [slutname] thrusts his cock in to your mouth sending burning waves of lust through your body.  Your mind drifts off as you surrender yourself completely to the hot [slutname].[or] The [slutname] flips you over onto all fours and begins rubbing his dripping cock over your asshole.  You barely have time the think as the handsome [slutname] thrusts his shaft into your ass, sending burning waves of lust through your body.  Your mind drifts off as you surrender yourself completely to the [slutname].[or] The [slutname] rams his mouth into yours, giving you the most passionate kiss of your life.  His dripping cock rubs against your [cock size desc of player] one, sending burning waves of lust pulsing through your body.  Your mind drifts off as you surrender yourself completely to the handsome [slutname].[at random][line break]By the time you regain control of your body and mind, the hot [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum-covered body to remember the [slutname] by.[cockinc]";
		otherwise:
			if cunts of player is greater than 0: [cock and cunt]
				say "[one of]the [slutname] mutters 'must....make.....more....sluts....for...mas..ter' before he flips you over onto all fours and begins rubing its dripping cock over your cunt, [line break] you bearly have time the think as the handsome [slutname] thrusts its cock into your hole, sending burnign waves of lust through your body, your mind drifts off as you surrender yourself completely to the [slutname] [line break][impregchance][cuntinc] [line break] [or] Eyeing you, the [slutname] directs his mussil over your rapidly hardening [cock size desc of player] cock and begins to lick and suck at it and in no time at all you are lost in a haze of pleasure[line break][cockinc] [or]Eyeing you, The [slutname] directs his mussil over your rapidly hardening [cunt size desc of player] cunt and begins to lick and play with it and in no time at all you are lost in a haze of pleasure[line break][cuntinc][or]Eyeing you, the [slutname] hugs your tightly, while wispering 'you...look...so....hot' into your ear,[line break]The [slutname] thrusts its cock in to your mouth sending burnign waves of lust through your body, your mind drifts off as you surrender yourself completely to the hot [slutname] [or] Eyeing you, the [slutname] hugs your tightly, while wispering 'you...look...so....hot' into your ear,[line break] The [slutname] flips you over onto all fours and begins rubing its dripping cock over your asshole, [line break] you bearly have time the think as the handsome [slutname] thrusts its cock into your ass, sending burnign waves of lust through your body, your mind drifts off as you surrender yourself completely to the [slutname] [or]Eyeing you, the [slutname] hugs your tightly, while wispering 'you...look...so....hot' into your ear,[line break] The [slutname] rams its mouth into yours giving you the most passonate kiss of your life, its dripping cock rubbing agenst both you cock and cunt, sending burnign waves of lust pulsing through your body, your mind drifts off as you surrender yourself completely to the handsome [slutname] [at random] [line break] by the time you regain controle of your body and mind the hot [slutname] is patting you on the head and departing leavign with the promice of returning soon and your cum covered body to remember the [slutname] by. [line break]";
			otherwise: [cock]
				say "Eyeing you, the [slutname] hugs your tightly, while wispering 'you...look...so....hot' into your ear [line break] [one of]The [slutname] thrusts its cock in to your mouth sending burnign waves of lust through your body, your mind drifts off as you surrender yourself completely to the hot [slutname] [or] The [slutname] directs his mussil over your rapidly hardening [cock size desc of player] cock and begins to lick and suck at it and in no time at all you are lost in a haze of pleasure[line break][cockinc][or] The [slutname] flips you over onto all fours and begins rubing its dripping cock over your asshole, [line break] you bearly have time the think as the handsome [slutname] thrusts its cock into your ass, sending burnign waves of lust through your body, your mind drifts off as you surrender yourself completely to the [slutname] [or] the [slutname] rams its mouth into yours giving you the most passonate kiss of your life, its dripping cock rubbing agenst your's, sending burnign waves of lust pulsing through your body, your mind drifts off as you surrender yourself completely to the handsome [slutname] [or] The [slutname] starts to pound its ass onto your rapidly hardening cock, sending drops of the [slutname]'s cum all over your face, [line break] as you tast the [slutname]'s cum your mind begins to drift away from the waves of pleasure that are spreading through your body [at random] [line break] by the time you regain controle of your body and mind the hot [slutname] is patting you on the head and departing leavign with the promice of returning soon and your cum covered body to remember the [slutname] by[line break].";
	otherwise: [cunt]
		if cunts of player is greater than 0:
			say " the [slutname] mutters 'must....make.....more....sluts....for...mas..ter' before [one of]The [slutname] directs his mussil over your rapidly hardening [cunt size desc of player] cunt and begins to lick and play with it and in no time at all you are lost in a haze of pleasure[line break][cuntinc] [or]he flips you over onto all fours and begins rubing its dripping cock over you'r cunt, [line break]you bearly have time the think as the handsome [slutname] thrusts its cock into your hole, sending burnign waves of lust through your body, your mind drifts off as you surrender yourself completely to the [slutname] [line break][impregchance][cuntinc] [line break][at random]by the time you regain controle of your body and mind the hot [slutname] is patting you on the head and departing leavign with the promice of returning soon and your cum covered body to remember the [slutname] by.[line break]";
		otherwise: [none]
			say "the [slutname] looks at your genderless form and gives you a pittying look while patting you on the head, [line break] [one of]The [slutname] suddenly thrusts its cock in to your mouth sending burnign waves of lust through your body, your mind drifts off as you surrender yourself completely to the hot [slutname] [or] The [slutname] flips you over onto all fours and begins rubing its dripping cock over your asshole, [line break] you bearly have time the think as the handsome [slutname] thrusts its cock into your ass, sending burnign waves of lust through your body, your mind drifts off as you surrender yourself completely to the [slutname] [or] the [slutname] rams its mouth into yours giving you the most passonate kiss of your life, its dripping cock rubbing agenst your genderless groin, sending burnign waves of lust pulsing through your body, your mind drifts off as you surrender yourself completely to the handsome [slutname] [or] The [slutname] starts to pound its ass onto your rapidly hardening cock, sending drops of the [slutname]'s cum all over your face, [line break] as you tast the [slutname]'s cum your mind begins to drift away from the waves of pleasure that are spreading through your body [at random] [one of] [line break][cuntinc] [or] [cockinc][at random][line break]";
		
to say slutyvictory: [female]
	say "Exhausted from the waves of physical and sexual attacks, you collapse, surrendering yourself to the female [slutname] who quickly strips you of any and all clothing.";
	if cocks of player is greater than 0:
		if cock length of player is less than 4:
			if cunts of player is greater than 0:
				say " [one of]Eyeing your [cock size desc of player] cock, the [slutname] gives you a pittying look while patting you on the head, [line break] 'dont... worry... i....make...better' the [slutname] wispers into your ear,[line break] The [slutname] directs his mussil over your rapidly hardening [cunt size desc of player] cunt and begins to lick and play with it and in no time at all you are lost in a haze of pleasure[line break][cuntinc][or]Eyeing your [cock size desc of player] cock, the [slutname] gives you a pittying look while patting you on the head, [line break] 'dont... worry... i....make...better' the [slutname] wispers into your ear,[line break] The [slutname] directs his mussil over your rapidly hardening [cock size desc of player] cock and begins to lick and suck at it and in no time at all you are lost in a haze of pleasure[line break][cockinc] [or]Eyeing your [cock size desc of player] cock, the [slutname] gives you a pittying look while patting you on the head, [line break] 'dont... worry... i....make...better'  the [slutname] rams its mouth into yours giving you the most passonate kiss of your life, its dripping cunt  rubbing agenst your [cock size desc of player] cock, sending burnign waves of lust pulsing through your body, your mind drifts off as you surrender yourself completely to the beautiful [slutname] [at random] [line break] by the time you regain controle of your body and mind the hot [slutname] is patting you on the head and departing leavign with the promice of returning soon and your cum covered body to remember the [slutname] by. [line break]"; [small cock and cunt]
			otherwise: 
				say "Eyeing your [cock size desc of player] cock, the [slutname] gives you a pittying look while patting you on the head, [line break] 'dont... worry... i....make...better' the [slutname] wispers into your ear,[line break] [one of]The [slutname] directs his mussil over your rapidly hardening [cock size desc of player] cock and begins to lick and suck at it and in no time at all you are lost in a haze of pleasure[line break][cockinc][or] The [slutname] rams its mouth into yours giving you the most passonate kiss of your life, its dripping cunt rubbing agenst your [cock size desc of player] cock, sending burnign waves of lust pulsing through your body, your mind drifts off as you surrender yourself completely to the beautiful [slutname] [at random] [line break] by the time you regain controle of your body and mind the hot [slutname] is patting you on the head and departing leavign with the promice of returning soon and your cum covered body to remember the [slutname] by.[line break] "; [small cock]
			increase cock length of player by 1;
		otherwise:
			if cunts of player is greater than 0: [cock and cunt]
				say "[one of]Eyeing you, the [slutname] directs her mussil over your rapidly hardening [cock size desc of player] cock and begins to lick and suck at it and in no time at all you are lost in a haze of pleasure[line break][cockinc] [or]Eyeing you ,The [slutname] starts to pound its cunt onto your rapidly hardening cock, sending drops of the [slutname]'s cum all over your body, [line break] your mind soon begins to drift away from the waves of pleasure that are spreading through your body [or]Eyeing you, The [slutname] directs his mussil over your rapidly hardening [cunt size desc of player] cunt and begins to lick and play with it and in no time at all you are lost in a haze of pleasure[line break][cuntinc][or]Eyeing you, the [slutname] hugs your tightly, while wispering 'you...look...so....hot' into your ear,[line break] The [slutname] rams its mouth into yours giving you the most passonate kiss of your life, its dripping cunt rubbing agenst  you cock, sending burnign waves of lust pulsing through your body, your mind drifts off as you surrender yourself completely to the beautiful [slutname] [at random] [line break] by the time you regain controle of your body and mind the hot [slutname] is patting you on the head and departing leavign with the promice of returning soon and your cum covered body to remember the [slutname] by.[line break] ";
			otherwise: [cock]
				say "Eyeing you, the [slutname] hugs your tightly, while wispering 'you...look...so....hot' into your ear [line break] [one of] The [slutname] directs his mussil over your rapidly hardening [cock size desc of player] cock and begins to lick and suck at it and in no time at all you are lost in a haze of pleasure[line break][cockinc][or] the [slutname] rams its mouth into yours giving you the most passonate kiss of your life, its dripping cock rubbing agenst your's, sending burnign waves of lust pulsing through your body, your mind drifts off as you surrender yourself completely to the beautiful [slutname] [or] The [slutname] starts to pound its cunt onto your rapidly hardening cock, sending drops of the [slutname]'s cum all over your face, [line break] as you tast the [slutname]'s cum your mind begins to drift away from the waves of pleasure that are spreading through your body [at random] [line break] by the time you regain controle of your body and mind the hot [slutname] is patting you on the head and departing leavign with the promice of returning soon and your cum covered body to remember the [slutname] by.[line break]";
	otherwise: [cunt]
		if cunts of player is greater than 0:
			say " the [slutname] mutters 'must....make.....more....sluts....for...mas..ter' before ,The [slutname] directs her mussil over your rapidly hardening [cunt size desc of player] cunt and begins to lick and play with it and in no time at all you are lost in a haze of pleasure[line break][cuntinc]by the time you regain controle of your body and mind the hot [slutname] is patting you on the head and departing leavign with the promice of returning soon and your cum covered body to remember the [slutname] by.[line break]";
		otherwise: [none]
			say "the [slutname] looks at your genderless form and gives you a pittying look while patting you on the head, [line break]The [slutname] rams its mouth into yours giving you the most passonate kiss of your life, its dripping cunt rubbing agenst your genderless groin, sending burnign waves of lust pulsing through your body, your mind drifts off as you surrender yourself completely to the beautiful [slutname] [line break][one of] [cuntinc] [or] [cockinc][at random][line break]";





		
to say cockinc:
	if cock length of player < 4 and "Female Preferred" is not listed in feats of player:
		increase cock length of player by 1;	
	
to say cuntinc:
	if cunt length of player < 4 and "Male Preferred" is not listed in feats of player:
		increase cunt length of player by 1;		
		
to say slutdef:
	if slutprotection is greater than 0:
		say "The [slutname]'s eyes go blank and says in a monitone voice, 'Congratulations on beating my slut, but the prize isn't up yet.'  With that, the [slutname] laughs and falls unconscious.";
	otherwise:	
		say "The [slutname]'s eyes go blank and says in a monitone voice, 'Congratulations on beating my slut.  Too bad they already infected you.'  With that, the [slutname] laughs and falls unconscious.";
	infect "Male Slut";
		
to say slutydef:
	if slutprotection is greater than 0:
		say "The [slutname]'s eyes go blank and says in a monitone voice, 'Congratulations on beating my slut, but the prize isn't up yet.'  With that, the [slutname] laughs and falls unconscious.";
	otherwise:	
		say "The [slutname]'s eyes go blank and says in a monitone voice, 'Congratulations on beating my slut.  Too bad they already infected you.'  With that, the [slutname] laughs and falls unconscious.";
	infect "Female Slut";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--


When Play begins:
	add "Male Slut" to infections of guy;
	add "Male Slut" to infections of furry;
	Choose a blank row from Table of random critters;
	now name entry is "Male Slut";  [rabbit]
	now attack entry is "[slutattack]";
	now defeated entry is "[one of] [slutdef][or][slutydef][at random]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[slutvictory]";
	now desc entry is "[slutdesc]";
	now face entry is "is that of a wolf's with a pair of pointed wolf ears covered in [skin of player], a slut's collar has also formed around your neck ";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "that of a sexy wolf's and covered in [skin of player]";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "short, [one of]velverty, [or]soft, [or]shiny, [at random]light black fur";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a long wolf's tail.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "constently dribbing canine";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "it stretches out into a wolf's muzzle, two pointed wolf's ears sprouting from the top of your head a second later, a sluts collar forming around your neck"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you rapidly loses fat your body becoming that of a sexy wolf"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "soft and shiny black fur covers your body. "; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a long wolfs tail grows and begins waggling happily."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it becomes canine, uncontrolibly dribbling cum."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 3;
	now dex entry is 12;
	now sta entry is 15;					
	now per entry is 3;
	now int entry is 5;
	now cha entry is 4;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 60;			[ How many HP has the monster got? ]
	now lev entry is 4;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 5;			[Amount of Damage monster Does when attacking.]
	now area entry is "Outside";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 7;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 8;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 7;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 8;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 100;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Slut tag";			[ Loot monster drops, ]
	now lootchance entry is 45;		[ Chance of loot dropping 0-100 ]
	
Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	add "Female Slut" to infections of girl;
	add "Female Slut" to infections of furry;
	Choose a blank row from Table of random critters;
	now name entry is "Female Slut";  [husky]
	now attack entry is "[slutyattack]";
	now defeated entry is "[one of] [slutdef][or][slutydef][at random]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[slutyvictory]";
	now desc entry is "[slutydesc]";
        now face entry is "is that a rabbits, compleate with a pair of long ears and twitching nose, a slut's collar has also formed around your neck";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "that of a sexy rabbits and covered in [skin of player]";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "short, [one of]velverty, [or]soft, [or]shiny, [at random]white fur";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a short and fluffy rabbit tail";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "constently dribbing bunny";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "it stretches out into a rabbits muzzle, two long rabbit ears sprouting from the top of your head a second later, a sluts collar forming around your neck"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you rapidly loses fat your body becoming that of a sexy bunny"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "soft and silky, white fur covers your body. "; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a soft and fluffy rabbits tail sprouts."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it becomes that of a rabbits, uncontrolibly dribbling cum."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 3;
	now dex entry is 15;
	now sta entry is 5;					
	now per entry is 3;
	now int entry is 5;
	now cha entry is 4;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 60;			[ How many HP has the monster got? ]
	now lev entry is 4;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 5;			[Amount of Damage monster Does when attacking.]
	now area entry is "Outside";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 7;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 8;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 6;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 7;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 8;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 100;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Slut tag";			[ Loot monster drops, ]
	now lootchance entry is 46;		[ Chance of loot dropping 0-100 ]	


[ +++++ ]

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat
--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--

When Play begins:
Choose a blank row from Table of infection heat;
now infect name entry is "Male Slut"; [ This should be exactly the same as your monster name in the main table]
now heat cycle entry is 1; [ This is the number of days a heat "cycle" lasts, usualy 7 ]
now heat duration entry is 1; [ This is how many days of the cycle you are actualy in heat. default is 1, set it to the same as cycle for permanently in heat.]
now trigger text entry is "your body becomes overcome with desire, to suck, to submit, to please your master"; [ This is the text that is written to the screen when the player comes into heat]
now inheat entry is "[MaleSlutheat]"; [this final say block is triggered every 3 hours the player is in heat. you can use defaultheat or write your own. defaultheat riaises libido value by 5 every 3 hours. ]

When Play begins:
Choose a blank row from Table of infection heat;
now infect name entry is "Female Slut"; [ This should be exactly the same as your monster name in the main table]
now heat cycle entry is 7; [ This is the number of days a heat "cycle" lasts, usualy 7 ]
now heat duration entry is 7; [ This is how many days of the cycle you are actualy in heat. default is 1, set it to the same as cycle for permanently in heat.]
now trigger text entry is "your body becomes overcome with desire, to suck, to submit, to please your master"; [ This is the text that is written to the screen when the player comes into heat]
now inheat entry is "[FemaleSlutheat]"; [this final say block is triggered every 3 hours the player is in heat. you can use defaultheat or write your own. defaultheat riaises libido value by 5 every 3 hours. ]

to say MaleSlutheat:
	say "[Slutyheat]";

to say FemaleSlutheat:
	say "[Slutyheat]";
	
to say Slutyheat:  
	if libido of player is less than 96, increase libido of player by 5;
	if (libido of player is greater than 90) and (location of player is fasttravel ) and (slutfucked is greater than 8):
		say "the desire to sumbit grows to strong to fro you to control and you begine searching for anything that can fuck you and immediately upon on finding one, you immediately submit, offering yourself up to your temporary master.";
		now slutfucked is 0;
		let hmonlist be a list of numbers;
		repeat with X running from 1 to number of filled rows in table of random critters:	[ Loop through and select all monsters that appear "outside" ] 
			choose row X from the table of random critters;
			if there is no area entry, next;
			if area entry is "Outside":
				add X to hmonlist;
		sort hmonlist in random order;
		repeat with Z running through hmonlist:		[Pick one of the monsters at random]
			now monster is Z;
			break;
		choose row monster from the table of random critters;
		follow the cock descr rule;
		follow the breast descr rule;
		say "[victory entry]";
		infect;
		decrease the score by 5;
		decrease the morale of the player by 3;
	else if libido of player is greater than 90:
		increase slutfucked by 1;	



strange slut ends here.
