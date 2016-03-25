Version 1 of Gunbunny For FS by Stripes begins here.
[ Version 0.8 - Player victory sex - still no infection ]

"Adds a gun-toting Gunbunny creature to Flexible Survival's Wandering Monsters table"

Section 0 - Monster Variables, Flags and Markers

when play begins:
	add { "Gunbunny" } to infections of girl;
	add { "Gunbunny" } to infections of furry;

gb_hair is a number that varies.
gb_gun is a number that varies.
gb_gatling_counter is a number that varies.
gb_gatling_chance is a number that varies.
nogunbunnysex is a number that varies.


Section 1 - Monster Description

to say gunbunnydesc:
	now gb_hair is a random number from 1 to 8;
	now gb_gun is a random number from 1 to 5;
	now gb_gatling_counter is 0;
	say "     You find yourself confronted by an anime-style bunny girl.  She's got the typical human head and body and is dressed in [one of]a tight top, super-short skirt and striped knee-socks[or][if gb_gun is 6]a form-fitting space suit[otherwise]a camo jumpsuit[end if][or]a bikini[or]a navy-blue school outfit[or]a skin-tight black leotard[or]a cute t-shirt skirt[in random order] that shows off her sexy bust.  Her hair is [if gb_hair is 1]pink[otherwise if gb_hair is 2]yellow[otherwise if gb_hair is 3]green[otherwise if gb_hair is 4]blue[otherwise if gb_hair is 5]red[otherwise if gb_hair is 6]black[otherwise if gb_hair is 7]white[otherwise]teal[end if] with matching coloured rabbit ears sticking out of it.  She's wearing similarly coloured paw-like gloves.";
	say "     Her large, expressive eyes watch you carefully as one hand slips behind her back.  From somewhere around her fluffy [if gb_hair is 1]pink[otherwise if gb_hair is 2]yellow[otherwise if gb_hair is 3]green[otherwise if gb_hair is 4]blue[otherwise if gb_hair is 5]red[otherwise if gb_hair is 6]black[otherwise if gb_hair is 7]white[otherwise]teal[end if] bunny tail, she pulls out [if gb_gun is 1]a pair of heavy pistols[otherwise if gb_gun is 2]a pair of SMGs[otherwise if gb_gun is 3]twin six-shooters[otherwise if gb_gun is 4]a shotgun[otherwise if gb_gun is 5]a heavy rifle[otherwise]a sci-fi ray gun[end if].  Now armed and with a [one of]wild look in her eyes[or]crazy laugh[or]girlish giggle[or]untranslatable insult[or]final action pose[at random], she aims and opens fire in a spray of [if gb_gun is 5]laser fire[otherwise]bullets[end if].";

[   gb_hair   ]
[ 1 = pink    ]
[ 2 = yellow  ]
[ 3 = green   ]
[ 4 = blue    ]
[ 5 = red     ]
[ 6 = black   ]
[ 7 = white   ]
[ 8 = teal    ]

[       gb_gun        ]
[ 1 = pistols x2      ]
[ 2 = SMGs x2         ]
[ 3 = six-shooters x2 ]
[ 4 = shotgun         ]
[ 5 = heavy rifle     ]
[ 6 = sci-fi ray gun  ]


Section 2 - Monster Attacks

[Note: See Section 6 for her Alt-Attack]

to say gunbunnyattack:
	say "[one of]The bunny girl[or]The gunbunny[or]She[or]The gun-totting rabbit[or]The rabbit-eared girl[at random] [one of]fires a volley of wild shots[or]fires at you with her [if gb_gun > 3]gun[otherwise]guns[end if][or]giggles wildly as she chases after you with a stream of [if gb_gun < 6]bullets[otherwise]laser blasts[end if][or]performs an acrobatic leap that has her flip upside down while ten feet in the air, firing shots all around you before landing with a superfluous jiggle of her breasts[or]dashes from side to side while shooting nearly constantly[at random][one of].  Try as you might to avoid them, one of the shots does end up hitting[or].  You do your best to dive for cover, but end up getting hit[or].  The crazed rabbit girl[if gb_gun is 6]'s blaster shot leaves a searing scorchmark where it hits[otherwise] seems to shoot more bullets than her gun could possibly hold and you can only manage to dodge for so long before getting hit[end if][or].  She chases you from cover to cover before finally managing to hit you[at random].";


Section 3 - Monster Victory

to say losetogunbunny:
	now nogunbunnysex is 0;
	if hp of player > 0:
		say "     The gun-toting bunny seems quite upset when you give up.  She clubs you in the side of the head with her gun, knocking you to the ground in a daze.  She says something having wanted more target practice before popping several more shots into you and then kicking you in the guts for good measure.  You're left to slowly, painfully recover.";
		now hp of player is 0;
	otherwise:
		say "     The gun-toting bunny mocks you while bragging about her shooting skills before leaving you to slowly, painfully recover.";


Section 4 - Player Victory

to say beatthegunbunny:
	if ( nogunbunnysex > 2 and ( the remainder after dividing nogunbunnysex by 5 is not 0 ) ) or ( cocks of player is 0 and cunts of player is 0 ):
		say "     Your last blow knocks her [if gb_gun > 3]gun[otherwise]guns[end if] skittering away and sends the bunny girl to the ground.  She struggles once or twice to get up, but is too weakened.  Tired from the near-constant [if gb_gun is 6]blaster fire[otherwise]gunfire[end if] you were trying to avoid, you are just happy it's over and just leave the exhausted girl behind.  Before you go, you look around for [if gb_gun > 3]it, but you cannot find her weapon[otherwise]them, but you cannot find her guns[end if].";
	otherwise if cocks of player > 0:
		say "     Your last blow knocks her [if gb_gun > 3]gun[otherwise]guns[end if] skittering away and sends the bunny girl to the ground.  She struggles once or twice to get up, but is too weakened.  You're tired from the near-constant [if gb_gun is 6]blaster fire[otherwise]gunfire[end if] you were trying to avoid, but looking at her makes you want to get a little payback on her sexy bunny butt.  Shall you take advantage of the situation and fuck the gunbunny senseless?";
		if the player consents:
			say "     You push the bunny girl over onto all fours and push aside her clothes, giving you access to her juicy cunt.  Her pussy is human-like in shape and has a neatly trimmed bush of [gb_hair] that matches her hair.  You finger her folds, finding her pussy hot and wet from the earlier excitement.  She gives a little whimper as you tease her, but doesn't pull away, if anything she does her best to get onto all fours when you push her into position.  Her cute bunny tail gives an enticing twitch.";
			say "     Lining your [cock of player] cock up under that [gb_hair] puff, you thrust forward and sink your shaft into her juicy cunny.  She pants and moans as you start fucking her, enjoying the feel of the bunny babe's vaginal walls squeezing and quivering around your meat.  You pound her hard and fast in return for attacking you, even pushing her face down to the ground as you press heavily on her shoulders.  From this position, you can drive even harder into her sopping cunt, drawing a mix of whimpers and moans from the rough fucking until you finally cum.  You spray your [cum load size of player] load into the rabbit girl[if cock width of player > 30], bloating her previously slender tummy with a bellyful of virile semen[otherwise if cock width of player > 20], resulting in a visible bulge in her previously slender tummy[end if].";
			say "     After pulling out, you grab her by the ears and make her suck your cock clean[if libido of player > 50].  You end up feeding her another hot load of your cum before you're satisfied[end if].  Once finished, you pull her head back and push the exhausted bunny back to the ground with your foot, warning her to leave you alone in the future or she'll get more of the same.  Done with her now, you are content to leave the exhausted girl behind.  Before you go, you look around for [if gb_gun > 3]it, but you cannot find her weapon[otherwise]them, but you cannot find her guns[end if].";
			now nogunbunnysex is 0;
		otherwise:
			say "     Resisting the impulse, you push the weakened bunny back down with your foot, ending her attempts to rise.  At this point, you're done with her and just leave the exhausted girl behind.  Before you go, you look around for [if gb_gun > 3]it, but you cannot find her weapon[otherwise]them, but you cannot find her guns[end if].";
			increase nogunbunnysex by 1;
	otherwise:
		say "     Your last blow knocks her [if gb_gun > 3]gun[otherwise]guns[end if] skittering away and sends the bunny girl to the ground.  She struggles once or twice to get up, but is too weakened.  You're tired from the near-constant [if gb_gun is 6]blaster fire[otherwise]gunfire[end if] you were trying to avoid, but looking at her gives you the idea to have her make it up to you a little.  Shall you take advantage of the situation and get the gunbunny to eat you out?";
		if the player consents:
			say "     Grabbing the bunny girl by the ears, you pull her head to your crotch.  She whimpers at this rough treatment, but accepts her punishment and sets to licking your crotch.  You keep a tight grip on those long ears of hers, making sure she remains pressed between your thighs.  And while she may be a little reluctant at first, a few ear tugs and the scent of your snatch are enough to bring her around.";
			say "     Her tongue licks and laps across your sensitive folds and you can feel the press of her buck teeth against your clit whenever her tongue delves extra-deep into you.  As your pleasure builds, you grind your crotch into her face.  Achieving orgasm, your cunny quivers and squeezes at the bunny's tongue while your excess juices run down her chin to drip onto her buxom breasts.  You make sure to maintain your grip, forcing her to lick and lap up your femmecum through your climax until the oversensitivity of the afterglow becomes too much and you push her away.";
			say "     She falls back onto her butt with a whimper and rubs a gloved handpaw at her crotch, but you're not interested in playing with the bunny further.  You instead push her back down to the ground with your foot.  At this point, you are just happy it's over and just leave the exhausted girl behind.  Before you go, you look around for [if gb_gun > 3]it, but you cannot find her weapon[otherwise]them, but you cannot find her guns[end if].";
			now nogunbunnysex is 0;
		otherwise:
			say "     Resisting the impulse, you push the weakened bunny back down with your foot, ending her attempts to rise.  At this point, you've had your fun and just leave the exhausted girl behind.  Before you go, you look around for [if gb_gun > 3]it, but you cannot find her weapon[otherwise]them, but you cannot find her guns[end if].";
			increase nogunbunnysex by 1;


Section 5 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Gunbunny";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[gunbunnyattack]";
	now defeated entry is "[beatthegunbunny]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetogunbunny]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[gunbunnydesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "now a head described by this text";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a well-described new form put here";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "fur/scales/patterns that now cover your";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "Your tail gets a full sentence ending in a period.";	[ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "thesaurian";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your head changes in some descriptive manner";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your body takes on a newly described form";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "you gain fur/scales/skin/patterns described herein";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your tail or ass changes in the manner described by this text";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it takes on a new, kinky form";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 10;			[ These are now the creature's stats... ]
	now dex entry is 19;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10;			[ These values may be used as part of alternate combat. ]
	now per entry is 16;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Female";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 65;			[ The monster's starting hit points. ]
	now lev entry is 10;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 12;			[ Monster's average damage when attacking. ]
	now area entry is "High";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 0;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 5;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 7;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 5;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 30;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]effeminate[or]girly[or]slender[at random]";
	now type entry is "[one of]lapine[or]bunny-[if cunts of player > 0]girl[otherwise]boy[end if][as decreasingly likely outcomes]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]	[***temporary]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "gunbunny";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 6 - Gunbunny Alt-Attack

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"gunbunny"	gb_retaliation rule	gb_gat_count rule	gb_gat_down rule	--	--	--	--	gb_gat_up rule	--	--

this is the gb_retaliation rule:
	if a random chance of gb_gatling_chance in 100 succeeds:
		gb_gatling_attack;
	otherwise:
		retaliate;

this is the gb_gat_count rule:		[manages odds of gatling attack each round]
	choose row monstercom from the table of Critter Combat;
	if gb_gatling_counter is 0:		[first round - reset to 0]
		now gb_gatling_chance is 0;
	otherwise if gb_gatling_counter is 1:
		increase gb_gatling_chance by 30;
	otherwise if gb_gatling_chance < 10:
		now gb_gatling_chance is 10;
	increase gb_gatling_counter by 1;
[	say "DEBUG: Gatling chance = [gb_gatling_chance].";	[***]		]
[	say "DEBUG: Gatling counter = [gb_gatling_counter].";	[***]	]

this is the gb_gat_down rule:		[odds go down if she hits normally]
	if hp of player > 0:
		say "[one of]The bunny girl[or]The gunbunny[or]She[or]The gun-totting rabbit[or]The rabbit-eared girl[at random] [one of]cheers at her own success[or]gives a happy 'Yatta!' at having hit you[or]sticks out her tongue and makes a face at you[or]makes the [']V-for-Victory['] sign at her success[or]giggles and taunts you[or]calls you 'Baka!['] for getting hit[at random].  But now that she's got to take a moment to [if gb_gun is 6]recharge her ray gun[otherwise]reload[end if], you've got an opportunity to respond to this assault.";
		decrease gb_gatling_chance by 3;
	otherwise:
		say "[one of]The bunny girl[or]The gunbunny[or]Her[or]The gun-totting rabbit[or]The rabbit-eared girl[at random] [one of]cheers at her own success[or]gives a happy 'Yatta!' at having hit you[or]sticks out her tongue and makes a face at you[or]makes the [']V-for-Victory['] sign at her success[or]giggles and taunts you[or]calls you 'Baka!['] for getting hit[at random].  By this point, you're too weak to keep going and collapse to ground.";

this is the gb_gat_up rule:			[miss message and gatling odds go up]
	say "[one of]The bunny girl[or]The gunbunny[or]She[or]The gun-totting rabbit[or]The rabbit-eared girl[at random] [one of]fires a volley of wild shots[or]fires at you with her [if gb_gun > 3]gun[otherwise]guns[end if][or]giggles wildly as she chases after you with a stream of [if gb_gun < 6]bullets[otherwise]laser blasts[end if][or]performs an acrobatic leap that has her flip upside down while ten feet in the air, firing shots all around you before landing with a superfluous jiggle of her breasts[or]dashes from side to side while shooting nearly constantly[at random].  [one of]You barely manage to avoid getting shot by diving to the ground and rolling into cover[or]You narrowly escape getting hit[or]You run in and out of cover as the gun-crazy creatures chases you to avoid getting hit[or]You crouch behind some cover as everything around you is filled with [if gb_gun is 6]scorched by her blaster[otherwise]filled with bullet holes[end if][or]You weave and dodge ahead of her shots, [if gb_gun is 6]black burns on the ground from laser fire[otherwise]bullet holes[end if] chasing after you, but never quite catching you[at random].";
	increase gb_gatling_chance by a random number between 4 and 7;
[	say "DEBUG: Gatling chance = [gb_gatling_chance].";	[***]		]
[	say "DEBUG: Gatling counter = [gb_gatling_counter].";	[***]	]
	if gb_gatling_chance >= 50:
		say "The gunslinger seems really upset by this point that she's having such a hard time hitting you.  It's particularly worrisome when she's doesn't bother [if gb_gun is 6]recharging[otherwise]reloading[end if] this time.  You've got a quick chance to react before she does probably something rash.";
		now gb_gatling_chance is 100;
	otherwise:
		say "[one of]The bunny girl[or]The gunbunny[or]She[or]The gun-totting rabbit[or]The rabbit-eared girl[at random] eventually has to stop shooting long enough to [if gb_gun is 6]give her space gun a chance to recharge[otherwise]reload[end if], giving you a chance to do something.";

to gb_gatling_attack:
	choose row monster from the table of random critters;
	say "From behind her back, the gunbunny whips out a [if gb_gun is 6]large [bold type]blaster cannon[roman type] with multiple barrels[otherwise][bold type]gatling gun[roman type][end if].  The thing is bigger than her whole torso (tits included), but you don't have time to wonder where she could have been hiding it.  Giggling maniacally, she opens fire, sending a hail of [if gb_gun is 6]plasma pellets[otherwise]bullets[end if] in at you.  You make a run for it, but she uses her bunny-powered legs to run and leap quickly as she gives chase.";
	now monsterhit is false;
	let gatling_hit be false;
	let damagetotal be 0;
	attempttowait;
	standardstrike;
	if monsterhit is true:
		let rangenum be ( 80 - ( peppereyes * 4 ) );
		let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 100 );
		if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
			now dam is (dam * 150) divided by 100;
			say "A shot strikes a particular vulnerable spot - Critical Hit![line break]";
		increase damagetotal by dam;
		say "Hit: You try to avoid the deadly strafing, but are too slow and get hit by some [if gb_gun is 6]pellets of hot plasma[otherwise]bullets[end if] during one sweeping pass.";
		now gatling_hit is true;
	otherwise:
		say "Missed: You managed to stay out of harm's way... for now.";
	standardstrike;
	if monsterhit is true:
		let rangenum be ( 80 - ( peppereyes * 4 ) );
		let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 100 );
		if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
			now dam is (dam * 150) divided by 100;
			say "A shot strikes a particular vulnerable spot - Critical Hit![line break]";
		increase damagetotal by dam;
		say "Hit: You try to scramble to some temporary cover, but the gunbunny's anticipated your plan and ends up hopping past it just as you dive behind it.  You get shot by a volley of [if gb_gun is 6]plasma fire[otherwise]bullets[end if] even as the shots that miss tear your would-be cover apart.";
		now gatling_hit is true;
	otherwise:
		say "Missed: You get to some temporary cover... until the [if gb_gun is 6]plasma fire blasts[otherwise]bullets tear[end if] it apart.";
	standardstrike;
	if monsterhit is true:
		let rangenum be ( 80 - ( peppereyes * 4 ) );
		let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 100 );
		if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
			now dam is (dam * 150) divided by 100;
			say "A shot strikes a particular vulnerable spot - Critical Hit![line break]";
		increase damagetotal by dam;
		say "Hit: Getting up, you scramble away even the wild bunny continues to give chase.  You are unable to stay ahead of the [if gb_gun is 6]searing blasts of energy pursuing you[otherwise]flurry of bullets tearing holes into everything around you[end if], eventually getting hit[if gatling_hit is true] again[end if].";
		now gatling_hit is true;
	otherwise:
		say "Missed: Getting up, you run from the crumbling cover even as the wild bunny continues to give chase[if gb_gun is 6].  Blasts of energy scorch[otherwise].  Bullet holes mar[end if] the ground and the walls behind you as you weave this way and that, barely staying ahead of them.";
	attempttowait;
	if gatling_hit is true:		[hit at least once]
		say "The gun-toting bunny girl empties the last of weapon's clip while laughing happily at your attempts to avoid her fire.  Finally, you hear the [if gb_gun is 6][otherwise]whirring and clicking of the gatling having run out of ammo[end if].  She tosses it aside casually and pulls her [if gb_gun is 1]pistols[otherwise if gb_gun is 2]sub-machine guns[otherwise if gb_gun is 3]six-shooters[otherwise if gb_gun is 4]shotgun[otherwise if gb_gun is 5]rifle[otherwise]laser pistol[end if] and [if gb_gun is 6]recharges it[otherwise]reloads[end if].";
		say "Meanwhile, you're left leaning against a [if gb_gun is 6]scorched[otherwise]bullet-riddled[end if] wall, trying to catch your breath and recover from your wounds.  You've taken [special-style-2][damagetotal][roman type] damage during the firefight!";
		now damagein is damagetotal;
		say "[areaabsorbancy]";
		if absorb is greater than damagetotal:
			now absorb is damagetotal;
		if absorb is greater than 0:
			say "You prevent [special-style-1][absorb][roman type] damage!";
		decrease hp of the player by damagetotal;
		increase hp of player by absorb;
		follow the player injury rule;
		say "You are [descr].";
	otherwise:	[missed every time]
		say "The gun-toting bunny girl screams in frustration as she [if gb_gun is 6]drains the blaster completely[otherwise]empties the last of the weapon's clip[end if] and still hasn't managed to hit you.  She tosses the heavy weapon and kicks it angrily before pulling her [if gb_gun is 1]pistols[otherwise if gb_gun is 2]sub-machine guns[otherwise if gb_gun is 3]six-shooters[otherwise if gb_gun is 4]shotgun[otherwise if gb_gun is 5]rifle[otherwise]laser pistol[end if] back out and [if gb_gun is 6]recharging it[otherwise]reloading[end if].";
	now gb_gatling_chance is 0;
	now gb_gatling_counter is 0;
	attempttowait;


Section 7 - Endings

[
when play ends:
	if bodyname of player is "Gunbunny":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		otherwise:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Gunbunny For FS ends here.
