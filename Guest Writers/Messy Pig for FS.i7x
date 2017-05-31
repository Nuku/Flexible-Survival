Version 9 of Messy Pig For FS by Guest Writers begins here.
[ Version 9.1 - WS loss add-on - Stripes]
[- Originally Authored By:  Anonymous -]

"Adds a Messy Pig to Flexible Survival's Wandering Monsters table"
[Description text for this Extension.]

messypigaltorgasm is a truth state that varies. messypigaltorgasm is usually false.

Section 1 - Monster Responses

to say messypigdesc:
	setmongender 4;		[creature is female]
	now messypigaltorgasm is false;
	follow the monster combat mode rule;		[select the combat mode for first-strike]
	choose row monstercom from the table of critter combat;
	now alt1chance entry is 12;					[reset likelihood of alt attack]
	say "You hear a strange snorting sound, and looking around you see a bizarre creature. It rests on all fours, but its body seems human enough to stand on two legs. It appears to be a large, pinkish humanoid. She's quite fat, and has a large pig snout for a face. Floppy pig ears also adorn her head, and peak through her oddly human hair. Six breasts in two rows line her underside, and over her large bottom there is a cute and curly pig's tail. Her hands end in cloven hooves, as do her feet. She spots you and looks up at you with hungry eyes! Uh oh!";

to say messypigattack:
	if cunts of player > 0:
		Say "The pig girl charges at you one last time, and in your weakened state you fall backwards landing painfully on your butt. The pig quickly pins you down with her heavy body. She turns, and your vision is filled with large, fat, pig butt. Perhaps due to being lazy, she lies down, drowning your face in her behind, as she hungrily goes about eating you out! Clearly this creature has an appetite for your sex! She digs her snout deep as she laps at it greedily. You can do nothing but struggle weakly as she pins your head with her huge butt, grinding her ass down onto your face. Her strong scent makes you dizzy and strangely aroused, but you are too heavily pinned under her plump behind to get at that enticing pussy smell. After some time, the pleasure of the pig girl's meal becomes impossible to ignore, and you find your body quivering as you cum";
	otherwise if cocks of player > 0:
		Say "The pig girl charges at you one last time, and in your weakened state you fall backwards landing painfully on your butt. The pig quickly pins you down with her heavy body. She turns, and your vision is filled with large, fat, pig butt. Perhaps due to being lazy, she lies down, drowning your face in her behind, as she hungrily goes about sucking your [cock of player] cock! Clearly this creature has an appetite for your sex! She bobs her snout over your throbbing meat as she laps at it greedily. You can do nothing but struggle weakly as she pins your head with her huge butt, grinding her ass down onto your face. Her strong scent makes you dizzy and strangely aroused, but you are too heavily pinned under her plump behind to get at that enticing pussy smell. After some time, the pleasure of the pig girl's meal becomes impossible to ignore, and you find your body quivering as you cum";
	otherwise:
		say "The pig girl looks you over and huffs angrily at your bare groin. She gives you a hard bite on the hip and a kick with one of her cloven hooves. Apparently you're not quite what she wanted! She turns around, giving you a large view of her large behind before she kicks some dirt and mud into your face. You cough and sneeze, only to be body-slammed by the hefty sow, crushing the air from your lungs and filling your vision with spots";
	if wslevel is 3 and a random chance of 2 in 5 succeeds:
		say ".";
		say "     By the time the big porker's rising off of you, you've been badly flattened by her weight. Left sore and weak after the pleasurable abuse, you can only squirm feebly as she starts pissing with a sigh. You can't help but taste it as a stream of her urine sprays onto your face and more drips down from her crotch. When she's done and has waddled off, you're left very messy by the dirty sow.";
		infect;
	otherwise:
		say ". The pig finally stands up and waddles off. You cough, finally having fresh air as you climb to your knees shakily.";


to say beatthepig:
	if ( cockname of player is "Messy Pig" or cockname of player is "Piggy" ) and libido of player > 33 and cocks of player > 0:
		say "     The pig, when realizing that the encounter is not going well, turns to make a run for it. But as you catch a glimpse of her wet pussy as she turns away, your porcine cock throbs with need. Before you have a chance to think about it, you leap atop her, making her squeal loudly. She struggles to pull away, but you manage to keep a grip on the sow and pull out your throbbing pig sticker. With a loud, piggish oink, you thrust your stiff penis into her cunt. She continues to squirm and struggle, but it soon becomes less a matter of her trying to get away as more part of the game of fucking the sow. She squeals and paws at the ground with her hoof-like hands as you thrust into her again and again with your [bodytype of player] form atop her. Your cock throbs inside her as you drive it in one last time, [if cock length of player > 19]making her belly bulge with your overgrown meat, [end if]pumping your hot cum deep inside her as your porcine cock seeks to breed this plump sow. When you're finished with her, you give her ass a swat, sending her squealing again as she waddles away quickly, dripping your semen from her well-used pussy as she goes.";
	otherwise:
		say "     The pig, when realizing that the encounter is not going well, turns tail and waddles away faster than you thought possible. You hear its squeals of terror die down as it leaves your range of hearing. Looks like you win!";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	add "Messy Pig" to infections of girl;
	add "Messy Pig" to infections of furry;
	Choose a blank row from Table of random critters;
	now name entry is "Messy Pig"; [Name of your new Monster]
	now attack entry is "[one of]The Pig creature charges at you, slamming forcefully into your stomach and knocking the wind out of you![or]Chomp! The Pig bites your arm. Perhaps disappointed in your taste, she backs off and prepares for another attack.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[beatthepig]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[messypigattack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[messypigdesc]";[ Description of the creature when you encounter it.]
	now face entry is "a pudgy face with a large pig's snout and two floppy ears";[ Face description, format as the text "Your face is (your text)."]
	now body entry is "large, with copious amounts of heavy fat. Some would probably like your rotund figure, if it weren't for the wretched stentch it emits";[ Body Description, format as the text "Your Body is (your text)."]
	now skin entry is "a pink-ish hue, more like that of a Pig then a human";[ skin Description, format as the text "You have (your text) skin."]
	now tail entry is "Your ass has reshaped to a ridiculous degree, with each plush cheek rivaling your own head. Last time you checked you did have a tail, but with your now titanic tush, its not such an easy task to get even a glimps of your cork screw piggy tail";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "you feel an odd feeling against your nose, as if invisible hands are molding and shaping it. As well as stretching it. Right before your eyes you see your nose deform, become large and snout-like, perfectly matching that of a pig. Your ears can also be felt changing into large and floppy versions of their former selves"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your stomach gurgles, and your body quickly start to put on fat! Your small frame billows with sudden and heavy fat completely ruining your figure. There is a mildly unpleasant smell in the air after the change as well, and it does not take long to realize it's you"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it tingles all over, its colour shifting mildly. The change isn't too obvious at first, but you quickly realize you're much pinker then you used to be"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it starts to rumble, and grow. Become comically large and fat. As if that weren't bad enough, a pinch of your tail bone signifies the growth of a curly pig tail to call your own"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "becomes pink and human-like"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 12;
	now dex entry is 12;
	now sta entry is 17;
	now per entry is 12;
	now int entry is 8;
	now cha entry is 8;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 50;			[ How many HP has the monster got? ]
	now lev entry is 3;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 3;			[Amount of Damage monster Does when attacking.]
	now area entry is "Mall";	[ Current options are 'Outside' and 'Mall' Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 4;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 6;			[ Number of Breasts infection will give you. ]
	now breast size entry is 4;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 6;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 4;		[ Width of female sex  infection will try and give you ]
	now libido entry is 45;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]fat[or]chubby[or]plump[or]hefty[or]overweight[at random]";
	now type entry is "[one of]porcine[or]piggish[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "messypig";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"messypig"	retaliation rule	pigpussyinc rule	--	pigpussy rule	12	--	--	--	--	--


this is the pigpussyinc rule:			[increasing likelihood of alt attack]
	choose row monstercom from the table of critter combat;
	if messypigaltorgasm is false or a random chance of 2 in 3 succeeds:		[slower increase if she's already cum]
		increase alt1chance entry by a random number between 1 and 5;
	if alt1chance entry > 40, now alt1chance entry is 40;


this is the pigpussy rule:
	choose row monstercom from the table of critter combat;
	now alt1chance entry is 6;
	choose row monster from table of random critters;
	let playernum be 150 + humanity of player - libido of player + ( level of player * 2 ) + charisma of player;
	say "[piggycheck]";
	if tempnum is 1, decrease playernum by 30;
	let messypigcaught be 1;
	let messypignum be 200 + ( lev entry * 2 ) + cha entry;
	let dam be ( wdam entry times a random number from 80 to 120 ) divided by 125;	[80% dmg this round]
	say "The pig creature makes a grab at you and manages to knock you over briefly. Before you can get back up, she's atop you, grinding her wet, messy pussy down onto your face. Her juices run across your face and her heavy scent is strong and strangely alluring. You take [special-style-2][dam][roman type] damage as those juices arouse you further and weaken your efforts to keep fighting!";
	decrease hp of player by dam;
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	increase libido of player by a random number between 3 and 5;
	if "Cold Fish" is listed in feats of player, decrease libido of player by a random number between 0 and 1;
	if "Horny Bastard" is listed in feats of player, increase libido of player by a random number between 0 and 1;
	if messypigcaught is 1 and hp of player > 0 and libido of player < 110:							[caught and fighting]
[		say "TEST: [playernum] vs [messypignum]:[line break]";	]
		let playernum be a random number between 50 and playernum;
		let messypignum be a random number between 50 and messypignum;
		say "[special-style-1][playernum][roman type] vs [special-style-2][messypignum][roman type]: ";
	if messypigcaught is 1 and playernum >= messypignum and hp of player > 0 and libido of player < 110:		[caught / escape attempt]
		say "As enticing as her pussy may be, you manage to come to your senses and push the porcine female off of you before it is too late.";
		now messypigcaught is 0;
	otherwise if messypigcaught is 1:													[still caught]
		say "Enticed by her dripping juices, you bury your face in her cunt and start licking away, making her squeal in pleasure. You fade further, your resistance continuing to wane. ";
	if messypigcaught is 1 and hp of player > 0 and libido of player < 110:							[still fighting, damaged]
		let dam be ( wdam entry times a random number from 80 to 120 ) divided by 125;	[80% dmg this round]
		say "You take [special-style-2][dam][roman type] damage and grow more aroused!";
		decrease hp of player by dam;
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	if messypigcaught is 1:															[still caught, aroused]
		increase libido of player by a random number between 4 and 6;
		if "Cold Fish" is listed in feats of player, decrease libido of player by a random number between 0 and 1;
		if "Horny Bastard" is listed in feats of player, increase libido of player by a random number between 0 and 1;
	if messypigcaught is 1 and hp of player > 0 and libido of player < 110:							[caught and fighting]
[		say "TEST: [playernum] vs [messypignum]:[line break]";	]
		let playernum be a random number between 25 and playernum;
		let messypignum be a random number between 25 and messypignum;
		say "[special-style-1][playernum][roman type] vs [special-style-2][messypignum][roman type]: ";
	if messypigcaught is 1 and playernum >= messypignum and hp of player > 0 and libido of player < 110:		[caught / escape attempt]
		say "As enticing as her pussy may be, you manage to come to your senses and push the porcine female off of you before it is too late.";
		now messypigcaught is 0;
	otherwise if messypigcaught is 1:													[still caught]
		say "You continue to lick the pig woman's wonderful pussy, growing more and more excited as you continue to do so. You happily work your tongue inside her, growing more and more pleased by her squeals of pleasure. ";
	if messypigcaught is 1 and hp of player > 0 and libido of player < 110:							[still fighting, damaged]
		let dam be ( wdam entry times a random number from 80 to 120 ) divided by 100;	[100% dmg this round]
		say "You take another [special-style-2][dam][roman type] damage as your lustful longing for her grows higher!";
		decrease hp of player by dam;
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	if messypigcaught is 1:															[still caught, aroused]
		increase libido of player by a random number between 5 and 8;
		if "Cold Fish" is listed in feats of player, decrease libido of player by a random number between 1 and 2;
		if "Horny Bastard" is listed in feats of player, increase libido of player by 1;
	if messypigcaught is 1 and hp of player > 0 and libido of player < 110:							[caught and fighting]
[		say "TEST: [playernum] vs [messypignum]:[line break]";	]
		let playernum be a random number between 10 and playernum;
		let messypignum be a random number between 10 and messypignum;
		say "[special-style-1][playernum][roman type] vs [special-style-2][messypignum][roman type]: ";
	if messypigcaught is 1 and playernum >= messypignum and hp of player > 0 and libido of player < 110:		[caught / escape attempt]
		say "As enticing as her pussy may be, you manage to come to your senses and push the porcine female off of you before it is too late.";
		now messypigcaught is 0;
	otherwise if messypigcaught is 1:													[still caught]
		say "You dive your tongue in and out of her while rubbing her sticky folds and messy bottom with your hands. Her scent is leaving you reeling, starting to oink and grunt in pleasure as well. ";
	if messypigcaught is 1 and hp of player > 0 and libido of player < 110:							[still fighting, damaged]
		let dam be ( wdam entry times a random number from 80 to 120 ) divided by 90;	[111% dmg this round]
		say "You take another [special-style-2][dam][roman type] damage as your arousal continues to climb as does hers!";
		decrease hp of player by dam;
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	if messypigcaught is 1:															[still caught, aroused]
		decrease humanity of player by a random number between 1 and 3;
		if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
		if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
		increase libido of player by a random number between 6 and 9;
		if "Cold Fish" is listed in feats of player, decrease libido of player by a random number between 1 and 3;
		if "Horny Bastard" is listed in feats of player, increase libido of player by a random number between 1 and 2;
	if messypigcaught is 1 and hp of player > 0 and libido of player < 110:							[caught and fighting]
[		say "TEST: [playernum] vs [messypignum]:[line break]";	]
		let playernum be a random number between 1 and playernum;
		let messypignum be a random number between 1 and messypignum;
		say "[special-style-1][playernum][roman type] vs [special-style-2][messypignum][roman type]: ";
	if messypigcaught is 1 and playernum >= messypignum and hp of player > 0 and libido of player < 110:		[caught / escape attempt]
		say "As enticing as her pussy may be, you manage to come to your senses and push the porcine female off of you before it is too late. She grunts in frustration, you having managed to stop just before her climax.";
		now messypigcaught is 0;
	otherwise if messypigcaught is 1:													[still caught]
		say "Your efforts finally pay off as you drive the porcine beauty to climax, spraying a fresh wave of her juices across your face and down your throat. You oink and squeal happily, lapping it all up even as it starts to seep into your skin and start changing you";
	if messypigcaught is 1 and hp of player > 0 and libido of player < 110:							[still fighting, damaged]
		let dam be ( wdam entry times a random number from 80 to 120 ) divided by 67;	[150% dmg this round]
		say ". You take [special-style-2][dam][roman type] damage and are left sexually lustful yourself.";
		decrease hp of player by dam;
	otherwise if messypigcaught is 1:													[still caught]
		say ".";
	if messypigcaught is 1:															[completely caught, infected]
		decrease humanity of player by a random number between 2 and 5;
		if "Strong Psyche" is listed in feats of player, increase humanity of player by 1;
		if "Weak Psyche" is listed in feats of player, decrease humanity of player by 1;
		increase libido of player by a random number between 8 and 12;
		if "Cold Fish" is listed in feats of player, decrease libido of player by 3;
		if "Horny Bastard" is listed in feats of player, increase libido of player by 2;
		say "[line break]";
		infect "Messy Pig";
		choose row monstercom from the table of critter combat;
		now alt1chance entry is 0;
		now messypigaltorgasm is true;
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']


Section 4 - Endings

[See Philip: 'Hungry Boar Man' by hiccup for endings]

[ Edit this to have the correct name as well]
Messy Pig For FS ends here.
