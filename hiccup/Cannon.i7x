Cannon by hiccup begins here.

[Description text for this Extension.]
"Adds a Cock Cannon to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
to say cannon desc:
	now cannonprep is 0;
	if "Female Preferred" is listed in feats of player:		
		say "A six foot tall, perverted abomination stands before you. The creature has perfectly normal looking human arms and legs, but that is where the similarities end. The creature's body is shaped like a giant cock! Its head is pale purple, shaped like a mushroom, and has a single slit at the top.[line break][line break]The creature moves its head until the slit on the top is pointed in your direction. You get the feeling that it is examining you. The creature must not like what it sees, because it immediately turns around and leaves. The creature won't fight you if you have the Female Preferred feat.[combat abort]";
	otherwise:	
		say "A six foot tall, perverted abomination stands before you. The creature has perfectly normal looking human arms and legs, but that is where the similarities end. The creature's body is shaped like a giant cock! Its head is pale purple, shaped like a mushroom, and has a single slit at the top.[line break][line break]The creature moves its head until the slit on the top is pointed in your direction. You get the feeling that it is examining you. The creature must like what it sees, because it immediately starts moving it your direction.";

[The Cock Cannon inflicts no damage, but the player has a limited number of turns to defeat the Cock Cannon before it fires. If it fires, the player automatically loses.]

to say cannon fire:		[outmoded, now uses alt-attack below]
	if cannonprep is 0:
		[Elevation]
		now cannonprep is 1;
		say "The Cock Cannon calculates the proper elevation, then lifts its mushroom shaped head up towards the sky.";
	otherwise if cannonprep is 1:
		[Wind direction]
		now cannonprep is 2;
		say "The Cock Cannon moves its mushroom shaped head to the [one of]right[or]left[at random] in order to adjust for wind direction.";
	otherwise if cannonprep is 2:
		[Masturbate]
		now cannonprep is 3;
		say "The Cock Cannon[apostrophe]s arms start to stroke its penis shaped body.";
	otherwise if cannonprep is 3:
		[Fire]
		now cannonprep is 0;
		say "The Cock Cannon reaches its peak and ejaculates with a loud BOOM!";
		now hp of player is 0;

to say cannon attack:
	if "Female Preferred" is not listed in feats of player:
		say " You hear a strange whistling noise in the air, before a huge glob of sticky white cum falls out of the sky and soaks your [bodytype of player] body from head to foot.  The blast is so large it knocks you to the ground, leaving you dazed and soaked in semen. Its job completed, the Cock Cannon leaves.";
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Cock Cannon"; [Name of your new Monster]
	now attack entry is "[cannon fire]"; [Text used when the monster makes an Attack]
	now defeated entry is "The Cock Cannon goes flaccid and collapses to the ground."; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[cannon attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "[cannon desc]";[ Description of the creature when you encounter it.]
	now face entry is "purple colored, mushroom shaped head with no neck. It is devoid of any features except for a large slit at the top. You[apostrophe]re able to see and breathe through the slit despite the lack of a mouth or eyes on your";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "thick with no curves at all. It looks like the shaft of a penis";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "vein covered";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "Your ass has several long and curly hairs on it. The skin on your rear is also very wrinkly. The wrinkles and the hairs make your butt cheeks look like a giant ballsack.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "body length";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "it turns purple. Your head swells out until it is shaped like the head of a mushroom. Your eyes, nose, and mouth disappear, leaving you momentarily blind and unable to breathe. A moment later, a large slit opens up on the top of your head and you[apostrophe]re able to see and breathe through it."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it thickens and loses all of its curves and features until it looks like the shaft of a penis."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "it becomes more sensitive to the slightest touch and large veins become visible beneath the skin."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it plumps up and sags down a little, while long and curly pubic hairs grow over it. It makes your butt cheeks look like a giant ballsack"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it gets absorbed into and replaced by your body."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 14;
	now dex entry is 10;
	now sta entry is 14;					
	now per entry is 14;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Male"; 		[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 20;				[ How many HP has the monster got? ]
	now lev entry is 3;				[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 0;			[Amount of Damage monster Does when attacking.]
	now area entry is "Red";		[ Current options are 'Outside' and 'Mall' and 'Park' and 'Red'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 50;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 35;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]sexualized[or]phallic[or]twisted[at random]";
	now type entry is "mutant";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "cockcannon";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - The Table of Critter Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"cockcannon"	cockcannon rule	--	--	--	--	--	--	--	--	--


cannonprep is a number that varies. cannonprep is usually 0.

this is the cockcannon rule:
	choose row monster from table of Random Critters;
	let playernum be 10;
	let ccnum be 10;
	now monsterhit is false;
	now avoidance is 0;
	say "[avoidancecheck]";
	if gascloud > 0, decrease gascloud by 1;
	if avoidance is 1:
		now monsterhit is false;
	otherwise:
		if cannonprep is 0:			[Elevation - int]
			let playernum be dexterity of player + level of player;
			let ccnum be int entry + lev entry + 5;
		otherwise if cannonprep is 1:		[Wind direction - perc]
			let playernum be dexterity of player + level of player;
			let ccnum be per entry + lev entry + 5;
		otherwise if cannonprep is 2:		[Masturbate - dex]
			let playernum be 12;
			let ccnum be dex entry + lev entry + 5;
		otherwise if cannonprep is 3:		[Fire - stam]
			let playernum be 12;
			let ccnum be sta entry + lev entry + 5;
		if "Flash" is listed in feats of player and a random chance of 3 in 20 succeeds:
			say "Calling upon your hidden power, you flash brightly with light, [one of]filling the phallic creature's eyes with spots[or]startling the Cock Cannon[or]making it harder for the Cock Cannon to focus on its [if cannonprep is 0 or cannonprep is 1]aiming[otherwise]self-pleasure[purely at random].";
			increase playernum by 5;
[		say "TEST: player = [playernum] vs cock cannon = [ccnum]:[line break]";		]
		let playernum be a random number between 1 and playernum;
		let ccnum be a random number between 1 and ccnum;
		say "[special-style-1][playernum][roman type] vs [special-style-2][ccnum][roman type]: ";
		if playernum < ccnum:
			now monsterhit is true;
		otherwise:
			now monsterhit is false;
	if cannonprep is 0:
		if monsterhit is true:
			now cannonprep is 1;
			say "[special-style-2]Hit[roman type]: The Cock Cannon pauses and seems to focus on you as it calculates the proper elevation, then lifts its mushroom shaped head up towards the sky.";
		otherwise:
			say "[special-style-1]Miss[roman type]: The Cock Cannon tries to focus on you, but you manage to keep evading and it has trouble targetting you.";
	otherwise if cannonprep is 1:
		if monsterhit is true:
			now cannonprep is 2;
			say "[special-style-2]Hit[roman type]: The Cock Cannon moves its mushroom shaped head to the [one of]right[or]left[at random] in order to adjust for wind direction and is now locked onto you.";
		otherwise:
			say "[special-style-1]Miss[roman type]: The Cock Cannon tries to make adjustements for the wind conditions, but your constant harassment and evasion slows it down.";
	otherwise if cannonprep is 2:
		if monsterhit is true:
			now cannonprep is 3;
			say "[special-style-2]Hit[roman type]: The Cock Cannon's arms start to stroke its penis-shaped body, increasing its visible size and arousal.  Precum starts to flow steadily from the top of its phallic head.";
		otherwise:
			say "[special-style-1]Miss[roman type]: The Cock Cannon attempts to pleasure itself, running its hands over its body, but with little success for now.";
	otherwise if cannonprep is 3:
		if monsterhit is true:
			now cannonprep is 0;
			say "[special-style-2]Hit[roman type]: The Cock Cannon reaches its peak and ejaculates with a loud BOOM!";
			now libido of player is 110;
		otherwise:
			say "[special-style-1]Miss[roman type]: The Cock Cannon continues to stroke and rub itself, trying unsuccessfully to get itself off.";
	now peppereyes is 0;
	if hp of the player is greater than 0 and libido of player < 110:
		[wait for any key;]
		AttemptToWaitBeforeClear;
	otherwise:
		now fightoutcome is 20;
		Lose;
	rule succeeds;


when play ends:
	if bodyname is "Cock Cannon":
		if humanity of player is less than 10:
			say "Lost to your new instincts, you spend the next several days looking for victims to transform. Then the military arrives. Following a compulsion, you climb onto the roof of the nearest building and start stroking your penis shaped body as fast as you can... The military soldiers don't notice the blobs of cum falling out of the sky until it is too late.";
		otherwise:
			say "After being rescued by the military, you have trouble fitting in with the rest of society due to the fact that your body is shaped like a giant penis. But then you discover that the infection left many women with pussies so large that nobody could fill them but you...";
		
Cannon ends here.
