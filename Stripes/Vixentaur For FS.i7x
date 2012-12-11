Version 1 of Vixentaur For FS by Stripes begins here.
[Version 1]
"Adds a Vixentaur creature to Flexible Survivals Wandering Monsters table to go along with Sam the Dual-Taur's content."

Section 1 - Monster Responses

when play begins:
	add { "Vixentaur" } to infections of girl;
	add { "Vixentaur" } to infections of furry;
	add { "Vixentaur" } to infections of Vulpinelist;		[list of reptile infections]
	add { "Vixentaur" } to infections of Taurlist;			[list of tauric infections]


to say losetovixentaur:
	if hp of Sam is 15:
		say "     Sam growls and charges, slamming her body into yours and [if scalevalue of player < 4]sends you tumbling back several yards[otherwise]knocks you over[end if].  You land half on and half off a cot, painfully injuring your back.";
	otherwise:
		say "     Having defeated you, the vixentaur giggles excitedly and presses you to the ground.  She murrs in your ear about how [if cocks of player > 0]she wants you to breed some kits in her[otherwise]much fun she's going to have with you[end if].  You are beyond resisting her advances at this point, wrapping your arms around her and burying your face in her bosom.  You kiss and licks at her many nipples, drawing excited yips from the vulpine.";
		if cocks of player > 0:
			say "     She gets your [cock size desc of player] [cock of player] shaft lined up and sinks down onto your throbbing rod with ease.  She giggles and yips as she rides up and down.  Her inner walls squeeze and ripple across your manmeat in so many delightful ways.  She presses your face to her breast, coaxing you to start suckling from her, drinking down her tasty, perfumy milk.  The vixen fucks you with wild, animalistic abandon, pounding her hips down onto yours until you're nearly insensate with lust and finally climax as her pussy clamps down around your shaft as she cums.  You blast your [if cock width of player > 20]large [end if]load into her, breeding the lustful vixen, possibly siring more of these alluring creatures.  Having got what she wanted, she giggles and heads off after flashing you her pussy with your cum [if cock width of player > 20]flowing[otherwise]leaking[end if] out of it.";
		otherwise:
			say "     She grinds her hips down onto you, rubbing her wet, dripping pussy against your [skin of player] flesh[if cunts of player > 0].  Her paws rub and knead over you, one of them slipping between your legs to tease your [cunt size desc of player] pussy[otherwise].  Her paws rub and knead over you, teasing every sensitive spot they can find[end if].  She presses your face to her breast, coaxing you to start suckling from her, drinking down her tasty, perfumy milk.  she continues to rub against you until she finally cums, soaking you in her juices.  Having had her fun, she gets up with a giggle, presses her sticky crotch into your face and trots off merrily.";


to say beatthevixentaur:
	if hp of Sam is 15:
		say "     You manage to knock Samantha down, having beaten the fight out of her.";
	otherwise:
		say "     The beaten vixentaur backs away from you, stumbling somewhat from her wounds.  She gives you an angry shove, grumbling about how you're a big meanie for not wanting to play with her, before dashing off with a bit of a limp from her injuries.";


to say vixentaurdesc:
	if hp of Sam is 15:	[Fight w/Sam]
		say "     Drawn into a fight with Samantha, you find yourself facing off against the alluring vixentaur.  She has a vulpine head with a shapely muzzle filled with sharp teeth and keen eyes looking for her first opening.  Her hands and feet have small claws.  Her bushy tail swishes, spreading her perfumed scent.  You notice it starting to make you aroused and docile, but you shake it off just as the vixentaur charges.  Both tough and sexy, the vixentaur will be a dangerous enemy.";
	otherwise:			[Random Vixentaur]
		say "     Before you is a vulpine taur creature, definitely one of Sam's many descendents.  The creature's vulpine head has a sexy smile on its long, slender muzzle and fox ears.  It has long lashes, pretty coral eyes and long, flowing cerise hair.  Its upper body is generally human in form, but covered in pink fur and with a painted claws on its fingertips.  It's quite curvaceous, with a lovely bosom, slender waist and round hips blending into its tauric lower half.";
		say "     Its lower body is fully vulpine, a slender creature with shapely legs and cute paws.  Its pink fur becomes a very light shade at its chest and underbelly, as does the tip of its tail.  What would normally be the black of its socks is a deep pink.  Beneath its lower body hang several more breasts and under its tail waits its wet, pink pussy.  It drips with her juices as her fluffy tail spreads the arousing scent coming from it.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Vixentaur";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The vixentaur grinds buxom breasts against your body![or]The vixentaur rears up and slashes you with her foreclaws![or]She snaps at you with her muzzle![or]The vixentaur slaps you soundly across the cheek![or]The vixen creature grabs you with her clawed hands and slams your face into her bosom.  The surprise motorboating leaves you momentarily dazed.[or]The vixen giggles and gives her breasts a tantalizing grope as she moves sexily around you.[at random]";
	now defeated entry is "[beatthevixentaur]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetovixentaur]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[vixentaurdesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "vulpine with a long, slender muzzle with a sexy smile always on it.  You have long lashes, pretty coral eyes and long, flowing cerise hair";
	now body entry is "considerably transformed, having gained a tauric lower half that is vulpine in appearance.  While your upper body largely resembles that of a sexy woman, your lower body is that of a sleek fox";
	now skin entry is "pink fur";
	now tail entry is "You have a fluffy fox tail that threatens to raise itself at every passing creature if you don't consciously keep it down.";
	now cock entry is "[one of]knotted[or]vulpine[or]sheathed[or]fox-like[as decreasingly likely outcomes]";
	now face change entry is "you start to titter involuntarily.  As this grows worse into girlish giggling, your face pushes outward and changes with several snaps and pops.  A vulpine muzzle forms as the giggling subsides suddenly, leaving a sexy smile on your face";
	now body change entry is "your body shifts and bends unnaturally into two sections.  The upper half reforms into an alluring and feminine body with sexy curves.  The lower section becomes that of a four-legged fox with a sleek frame and soft paws for feet.  Your hands are a cross between these and normal hands.  Finding yourself with a vixentaur body like Sam's, your mind quickly adjusts to compensate for your new quadrupedal form";
	now skin change entry is "your skin prickles as thick and fluffy pink fur spreads across your entire body";
	now ass change entry is "strange twinges run up and down your spine.  Each time these tingles run down, they seem to travel further and further down until the growth of your new, vulpine tail is complete";
	now cock change entry is "pulses and throbs with need.  As you watch, it changes shape and becomes more vulpine in shape and forms a fluffy sheath to house it when not in use.  A knot forms at the base of your cock to tie with your lovers until you're done.  You find yourself looking forward to putting your new tool to use";
	now str entry is 14;			[ These are now the creature's stats... ]
	now dex entry is 21;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 13;			[ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 12;
	now cha entry is 17;
	now sex entry is "Female";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 69;			[ The monster's starting hit points. ]
	now lev entry is 10;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 8;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 0;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 24;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 15;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 90;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sexy[or]alluring[or]shapely[or]tauric[at random]";
	now type entry is "[one of]vulpine[or]vixentaur[or]vixen[as decreasingly likely outcomes]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "vixentaur";	[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"vixentaur"	retaliation rule	--	--	vxntaurpounce rule	20	--	--	--	vixentaurscent rule	--

this is the vxntaurpounce rule:		[damage+arousing pounce]
	choose row monster from the table of random critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 66 );	[+50% damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "The [one of][name entry][of]vulpine[or]vixentaur[or]fox creature[or]vixen[purely at random] growls and pounces atop you, [one of]knocking[or]pushing[or]shoving[purely at random] you down briefly.  Her many talons claw at you while she giggles and presses her many breasts down atop you while giggling happily.  This [one of]painfully[or]viciously[or]devastatingly[purely at random] [one of]arousing[or]sexy[purely at random] assault does [special-style-2][dam][roman type] damage and aroused you further!";
	now damagein is dam;
	say "[noshieldabsorbancy]";		[unable to use shield while pinned]
	if absorb is greater than dam:
		now absorb is dam;
	if absorb is greater than 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease hp of the player by dam;
	increase hp of player by absorb;
	follow the player injury rule;
	increase libido of player by a random number from 3 to 8;
	if "Horny Bastard" is listed in feats of player, increase libido of player by 1;
	if "Cold Fish" is listed in feats of player, decrease libido of player by 1;
	say "You are [descr].";

this is the vixentaurscent rule:
	choose row monster from the table of random critters;
	let playernum be Stamina of player + level of player;
	if face mask is equipped, increase playernum by 4;
	let vixennum be cha entry + ( lev entry / 2 );
	let playernum be a random number between 0 and playernum;
	let vixennum be a random number between 0 and vixennum;
	if vixennum > playernum:
		let dam be ( wdam entry + lev entry ) / 6;
		let mod be a random number between -2 and 2;
		let mod be mod / 2;
		let dam be dam + mod;
		say "[one of]The vixentaur's scent continues to turn you on[or]The perfumy scent coming from the vixentaur further arouses you[or]You find yourself thinking of just dropping your hands and letting the vixentaur have her fun[or]The vixen's wonderful scent arouses your lusts[or]The sexy motion of alluring vulpine draws your eyes to her beautiful body and buxom breasts[at random][one of], making you less willing to keep fighting her[or] as sexy images of you and the vixentaur fill your thoughts[or], turning you on[or][at random].  You take [special-style-2][dam][roman type] damage!";
		decrease hp of player by dam;
		increase libido of player by a random number from 1 to 4;
		if "Horny Bastard" is listed in feats of player, increase libido of player by a random number between 0 and 1;
		if "Cold Fish" is listed in feats of player, decrease libido of player by a random number between 0 and 1;
		say "[line break]";
		if hp of player < 1:
			if hp of player <= 0, now fightoutcome is 20;
			if libido of player >= 110, now fightoutcome is 21;
			lose;


Section 4 - Endings

[
when play ends:
	if bodyname of player is "Vixentaur":
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

[ Edit this to have the correct creature name as well]
Vixentaur For FS ends here.