Version 1 of Cannon by Guest Writers begins here.
[Original by Hiccup]
[Version 1.3 - Bounty for Bradford - Stripes]
[Version 1.4 - Moved to Guest Writers]

"Adds a Cock Cannon to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

cclosscount is a number that varies.

to say cannon desc:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		setmongender 3; [creature is male]
		now cclosttarget is false;
		now ccmiss is 0;
		now cannonprep is 0;
		if "Female Preferred" is listed in feats of Player:
			say "     A six foot tall, perverted abomination stands before you. The creature has perfectly normal looking human arms and legs, but that is where the similarities end. The creature's body is shaped like a giant cock! Its head is pale purple, shaped like a mushroom, and has a single slit at the top.";
			say "     The creature moves its head until the slit on the top is pointed in your direction. You get the feeling that it is examining you. The creature must not like what it sees, because it immediately turns around and leaves.";
			say "     The creature won't fight you if you have the Female Preferred feat.[combat abort]";
		else:
			say "     A six foot tall, perverted abomination stands before you. The creature has perfectly normal looking human arms and legs, but that is where the similarities end. The creature's body is shaped like a giant cock! Its head is pale purple, shaped like a mushroom, and has a single slit at the top.";
			say "     The creature moves its head until the slit on the top is pointed in your direction. You get the feeling that it is examining you. The creature must like what it sees, because it immediately starts moving it your direction.";

[The Cock Cannon inflicts no damage, but the player has a limited number of turns to defeat the Cock Cannon before it fires. If it fires, the player automatically loses.]

to say cannon wins:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		increase cclosscount by 1;
		if "Female Preferred" is listed in feats of Player:
			say "ERROR - The Cock Cannon should not fight a player with the Female Preferred feat.";
		else:
			if cclosscount < 3 or cclosscount is even or scalevalue of Player > 4 or vorelevel is 1:
				say "     You hear a strange whistling noise in the air, before a huge glob of sticky white cum falls out of the sky and soaks your [bodytype of Player] body from head to foot. The blast is so large it knocks you to the ground, leaving you dazed and soaked in semen. Its job completed, the Cock Cannon leaves.";
			else:
				say "     Tilting itself forward, the penile creature aims the crown of its head at you and unloads with a powerful blast. The torrent of sticky white cum soaks your [bodytype of Player] body from head to foot. The blast is so large it even as it knocks you to the ground, leaving you dazed and soaked in semen. The over-excited creature continues to ejaculate on you, firing several more blasts that batter you, dousing you in its load. It only stops once fully drained, wobbling unsteadily now that its ballast-filled balls are empty.";
				say "     Staggering up to you, it grabs you with its hands and leans forward. As the yawning cumslit is aimed at you once again, you can do little to resist, only half aware of what's going on and too stunned by the repeated shelling. But rather than fire again, it instead pulls your head into its, stuffing you into its wide cum slit. You squirm and struggle feebly, but this seems to only encourage the strange beast as it pushes first your head and then your shoulders down into its cock-like body. It is a slow process[if scalevalue of Player > 2], especially at first,[end if] but the slick load clinging to you all over helps lubricate your passage. Once your shoulders are going down, it has an easier time of it, standing back up and sliding your [bodydesc of Player] form down into itself.";
				say "     The way its cum tunnel squeezes around you and the pervasive scent and taste of semen become increasingly enjoyable for you and soon you're swallowing down as much of it as you can get even as you're consumed by the walking penis monster[if Player is not neuter]. Wriggling now with pleasure as you're pulled in, you cum hard, overcome by the oddly arousing experience[end if]. Sliding further in has you deposited in its warm, heavy ballsack where you are bundled up in a gooey chamber filled with its seed. The thick, musky air makes you woozy even as you continue shoveling handfuls of its load into your mouth until you finally pass out in its testicle.";
				say "     Awareness only starts to return in the form of a throbbing around you and the heavy squeezing of the sac enclosing you. Just as you're realizing your current situation, the pressure around you builds up quickly and you are ejected along with a gooey wad of the mutant's semen, launched as a cum-soaked missile at its next victim. You crash into some [one of]canine[or]feline[or]reptile[or]equine[or]bunny[or]rodent[or]humanoid[as decreasingly likely outcomes] creature, bowling it over. By the time you recover from the crash, your target has already started to change, becoming increasingly phallic and making it hard to identify who or what he or she once was. You get up quickly and make your messy escape before you have to deal with another of those penile cannons.";
				infect;
				infect;

to say cannon loses:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "     The Cock Cannon goes flaccid and collapses to the ground.";
		if HP of Bradford is 2:
			LineBreak;
			if bradfordbounty > 0:
				decrease bradfordbounty by 1;
				say "     You hear a soft [if bradfordbounty is 0]double-[end if]ding from your pack. Reminded of your deal with the bounty hunter, Bradford, you pull out the contract he's splitting with you. Looking at it, you can see that the printed value denoting the number remaining has gone down to [bold type][bradfordbounty][roman type]. You can't discern how this was accomplished; the paper and the printing on it seem entirely ordinary[if bradfordbounty is 0]. Seeing how that's completed it, you should be able to see him about getting your cut of the reward[end if].";
			else:
				say "     This encounter reminds you of your deal with bounty hunter, Bradford. You should go see him about getting your share of the reward.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Cock Cannon"; [name of the overall species of the infection, used for children, ...]
	add "Cock Cannon" to infections of BodyHorrorList;
	add "Cock Cannon" to infections of HumorousList;
	add "Cock Cannon" to infections of MaleList;
	add "Cock Cannon" to infections of BipedalList;
	now Name entry is "Cock Cannon"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "ERROR! Cock Cannon: Attack"; [Text used when the monster makes an Attack]
	now defeated entry is "[cannon loses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[cannon wins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[cannon desc]"; [ Description of the creature when you encounter it.]
	now face entry is "purple colored, mushroom-shaped head with no neck. It is devoid of any features except for a large slit at the top. You're able to see and breathe through the slit despite the lack of a mouth or eyes"; [ Face description, format as "You have a (your text) face."]
	now body entry is "thick with no curves at all. It looks like the shaft of a penis"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "vein covered"; [ skin Description, format as "Looking at yourself, your body is covered in (your text) skin"]
	now tail entry is "Your ass has several long and curly hairs on it. The skin on your rear is also very wrinkly. The wrinkles and the hairs make your butt cheeks look like a giant ballsack."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "body length"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it turns purple. Your head swells out until it is shaped like the head of a mushroom. Your eyes, nose, and mouth disappear, leaving you momentarily blind and unable to breathe. A moment later, a large slit opens up on the top of your head and you're able to see and breathe through it"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it thickens and loses all of its curves and features until it looks like the shaft of a penis"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it becomes more sensitive to the slightest touch and large veins become visible beneath the skin"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it plumps up and sags down a little, while long and curly pubic hairs grow over it. It makes your butt cheeks look like a giant ballsack"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it gets absorbed into and replaced by your body"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 10;
	now sta entry is 14;
	now per entry is 14;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Male"; 		[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 20;
	now lev entry is 3; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 0; [Amount of Damage monster Does when attacking.]
	now area entry is "Red"; [ Current options are 'Outside' and 'Mall' and 'Park' and 'Red' Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 50; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 6; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 0; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity] [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ] [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is true;
	now libido entry is 0; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]sexualized[or]phallic[or]twisted[at random]";
	now type entry is "mutant"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "cockcannon"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;





Section 3 - The Table of Critter Combat

[
to say cannon fire:		[outmoded, now uses alt-attack below]
	if cannonprep is 0:
		[Elevation]
		now cannonprep is 1;
		say "The Cock Cannon calculates the proper elevation, then lifts its mushroom-shaped head up towards the sky.";
	else if cannonprep is 1:
		[Wind direction]
		now cannonprep is 2;
		say "The Cock Cannon moves its mushroom-shaped head to the [one of]right[or]left[at random] in order to adjust for wind direction.";
	else if cannonprep is 2:
		[Masturbate]
		now cannonprep is 3;
		say "The Cock Cannon's arms start to stroke its penis-shaped body.";
	else if cannonprep is 3:
		[Fire]
		now cannonprep is 0;
		say "The Cock Cannon reaches its peak and ejaculates with a loud BOOM!";
		now HP of Player is 0;
]

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"cockcannon"	cockcannon rule	--	--	--	--	--	--	--	--	--


cannonprep is a number that varies. cannonprep is usually 0.
ccmiss is a number that varies.
cclosttarget is a truth state that varies. cclosttarget is usually false.

this is the cockcannon rule:
	choose row MonsterID from Table of Random Critters;
	let playernum be 10;
	let ccnum be 10;
	now monsterhit is false;
	now avoidance is 0;
	say "[avoidancecheck]";
	if gascloud > 0, decrease gascloud by 1;
	if avoidance is 1:
		now monsterhit is false;
	else:
		if cannonprep is 0:			[Elevation - int]
			let playernum be dexterity of Player + level of Player + pldodgebonus;
			let ccnum be int entry + lev entry + monhitbonus + 5;
		else if cannonprep is 1:		[Wind direction - perc]
			let playernum be dexterity of Player + level of Player + pldodgebonus;
			let ccnum be per entry + lev entry + monhitbonus + 5;
		else if cannonprep is 2:		[Masturbate - dex]
			let playernum be 12;
			if HardMode is true, increase playernum by ( level of Player / 2 );
			let ccnum be dex entry + lev entry + monmindbonus + 5;
		else if cannonprep is 3:		[Fire - stam]
			let playernum be 12;
			if HardMode is true, increase playernum by ( level of Player / 2 );
			let ccnum be sta entry + lev entry + monmindbonus + 5;
		if "Flash" is listed in feats of Player and a random chance of 3 in 20 succeeds:
			say "Calling upon your hidden power, you flash brightly with light, [one of]filling the phallic creature's eyes with spots[or]startling the Cock Cannon[or]making it harder for the Cock Cannon to focus on its [if cannonprep is 0 or cannonprep is 1]aiming[else]self-pleasure[end if][purely at random].";
			increase playernum by 5;
[		say "TEST: player = [playernum] vs cock cannon = [ccnum]:[line break]"; ]
		let playernum be a random number between 1 and playernum;
		let ccnum be a random number between 1 and ccnum;
		say "[special-style-1][playernum][roman type] vs [special-style-2][ccnum][roman type]: ";
		if Playernum < ccnum:
			now monsterhit is true;
		else:
			now monsterhit is false;
	if cannonprep is 0:
		if monsterhit is true:
			now cannonprep is 1;
			say "[special-style-2]Hit[roman type]: The Cock Cannon pauses and seems to focus on you as it calculates the proper elevation, then lifts its mushroom-shaped head up towards the sky.";
		else:
			say "[special-style-1]Miss[roman type]: The Cock Cannon tries to focus on you, but you manage to keep evading and it has trouble targeting you.";
	else if cannonprep is 1:
		if monsterhit is true:
			now cannonprep is 2;
			say "[special-style-2]Hit[roman type]: The Cock Cannon moves its mushroom-shaped head to the [one of]right[or]left[at random] in order to adjust for wind direction and is now locked onto you.";
		else:
			say "[special-style-1]Miss[roman type]: The Cock Cannon tries to make adjustments for the wind conditions, but your constant harassment and evasion slows it down.";
			increase ccmiss by 1;
			if ccmiss > 2 and cclosttarget is false:
				say "Your continued resistance frustrates it, forcing it to reposition and reacquire targeting.";
				now cclosttarget is true;
				decrease cannonprep by 1;
	else if cannonprep is 2:
		if monsterhit is true:
			now cannonprep is 3;
			say "[special-style-2]Hit[roman type]: The Cock Cannon's arms start to stroke its penis-shaped body, increasing its visible size and arousal. Precum starts to flow steadily from the top of its phallic head.";
		else:
			say "[special-style-1]Miss[roman type]: The Cock Cannon attempts to pleasure itself, running its hands over its body, but with little success for now.";
			increase ccmiss by 1;
			if ccmiss > 4 and cclosttarget is false:
				say "One of your continued swings bumps it, forcing it to recalculate its aim.";
				now cclosttarget is true;
				decrease cannonprep by 1;
	else if cannonprep is 3:
		if monsterhit is true:
			now cannonprep is 0;
			say "[special-style-2]Hit[roman type]: The Cock Cannon reaches its peak and ejaculates with a loud BOOM!";
			now Libido of Player is 110;
		else:
			say "[special-style-1]Miss[roman type]: The Cock Cannon continues to stroke and rub itself, trying unsuccessfully to get itself off.";
			increase ccmiss by 1;
			if ccmiss > 5 and cclosttarget is false:
				say "Your continued evasion frustrates it, making its full-body erection wane a little as it tries to remain on target.";
				now cclosttarget is true;
				decrease cannonprep by 1;
	now peppereyes is 0;
	if HP of Player > 0 and Libido of Player < 110:
		[wait for any key;]
		AttemptToWaitBeforeClear;
	else:
		now fightoutcome is 20;
		Lose;
	rule succeeds;


Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Cock Cannon Infection"	"Infection"	""	Cock Cannon Infection rule	1000	false

This is the Cock Cannon Infection rule:
	if Player has a body of "Cock Cannon":
		trigger ending "Cock Cannon Infection";
		if humanity of Player < 10:
			say "Lost to your new instincts, you spend the next several days looking for victims to transform. Then the military arrives. Following a compulsion, you climb onto the roof of the nearest building and start stroking your penis-shaped body as fast as you can. The military soldiers don't notice the blobs of cum falling out of the sky from you and the rest of the penile artillery until it is too late.";
		else:
			say "After being rescued by the military, you have trouble fitting in with the rest of society due to the fact that your body is shaped like a giant penis. But then you discover that the infection left many women with pussies so large that nobody could fill them but you...";

Cannon ends here.
