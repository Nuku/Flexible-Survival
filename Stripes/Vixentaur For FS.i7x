Version 1 of Vixentaur For FS by Stripes begins here.
[Version 1.1 - Oral vixen victory for males, player victory scenes]
"Adds a Vixentaur creature to Flexible Survival's Wandering Monsters table to go along with Sam the Dual-Taur's content."

Section 1 - Monster Responses

vixentaurcatch is a number that varies.  vixentaurcatch is normally -35.

when play begins:
	add { "Vixentaur" } to infections of girl;
	add { "Vixentaur" } to infections of furry;
	add { "Vixentaur" } to infections of Vulpinelist;		[list of vulpine infections]
	add { "Vixentaur" } to infections of Taurlist;			[list of tauric infections]

to say losetovixentaur:
	if hp of Sam is 15:
		say "     Sam growls and charges, slamming her body into yours and [if scalevalue of player < 4]sends you tumbling back several yards[otherwise]knocks you over[end if].  You land half on and half off a cot, painfully injuring your back.";
	otherwise:
		if cocks of player > 0 and a random chance of 2 in 3 succeeds:
			say "     Having defeated you, the vixentaur giggles excitedly and presses you to the ground.  She murrs in your ear about how [if cocks of player > 0]she wants you to breed some kits in her[otherwise]much fun she's going to have with you[end if].  You are beyond resisting her advances at this point, wrapping your arms around her and burying your face in her bosom.  You kiss and licks at her many nipples, drawing excited yips from the vulpine.";
			say "     She gets your [cock size desc of player] [cock of player] shaft lined up and sinks down onto your throbbing rod with ease.  She giggles and yips as she rides up and down.  Her inner walls squeeze and ripple across your manmeat in so many delightful ways.  She presses your face to her breast, coaxing you to start suckling from her, drinking down her tasty, perfumy milk.  The vixen fucks you with wild, animalistic abandon, pounding her hips down onto yours until you're nearly insensate with lust and finally climax as her pussy clamps down around your shaft as she cums.  You blast your [if cock width of player > 20]large [end if]load into her, breeding the lustful vixen, possibly siring more of these alluring creatures.  Having got what she wanted, she giggles and heads off after flashing you her pussy with your cum [if cock width of player > 20]flowing[otherwise]leaking[end if] out of it.";
		otherwise:
			say "     Having defeated you, the vixentaur giggles excitedly and presses you to the ground.  She murrs in your ear about how [one of]much fun she's going to have with you[or]she's been looking for some fun[at random].  You are beyond resisting her advances at this point, wrapping your arms around her and burying your face in her bosom.  You kiss and licks at her many nipples, drawing excited yips from the vulpine.";
			say "     She grinds her hips down onto you, rubbing her wet, dripping pussy against your [skin of player] flesh.  Her paws rub and knead over you, [if cocks of player > 0 and cunts of player > 0]one of them wrapping around your [cock size desc of player] cock while the other goes for your juicy pussy[otherwise if cocks of player > 0]one of them wrapping around your [cock size desc of player] [cock of player] cock[otherwise if cunts of player > 0]one of them slipping between your legs to tease your [cunt size desc of player] pussy[otherwise]teasing every sensitive spot they can find[end if].  She presses your face to her breast, coaxing you to start suckling from her, drinking down her tasty, perfumy milk.  she continues to rub against you until she finally cums, soaking you in her juices.  Having had her fun, she gets up with a giggle, presses her sticky crotch into your face and trots off merrily.";


to say beatthevixentaur:
	if hp of Sam is 15:
		say "     You manage to knock Samantha down, having beaten the fight out of her.";
	otherwise if a random number between 1 and 100 < vixentaurcatch and ( cocks of player > 0 or cunts of player > 0):
		say "     The beaten vixentaur backs away from you, stumbling somewhat from her wounds.  Like the others, she prepares to shove you back, but you move in time to grab her and push her to the ground.  With her caught, you consider having some fun with her.  Shall you go ahead with that plan?";
		if the player consents:
			if cocks of player > 0:
				say "     Keeping the defeated vixen pinned beneath you, you move around so you're laying across her back.  Pushing her tail up, you get your cock into position and slide it across her wet folds.  She vixen moans and fidgets beneath you with growing excitement.  '[one of]Oh, you do want to play with me[or]Hurry up and give it to me[or]Come on!  Fuck that naughty vixen[or]Breed me, you [bodytype of player] stud[at random]!' she says excitedly.  Grabbing her sexy bottom, you drive your cock into her and start fucking, pounding the slutty fox's juicy hole.";
				say "     The vixentaur giggles, yips and moans as you fuck her.  Her cunt squeezes and rubs over your thrusting shaft in strange and delightful ways, the taur's vagina clearly made for pleasing any male that mounts her.  Reaching around, your grab her plump breasts and play with her nipples, getting her to dribble milk in a growing pool on the ground while enjoying the sounds of delight she makes at this.  When you finally cum, you drive hard into her and unleash your [if cock width of player > 40]huge [otherwise]large [end if] load while she cries out in ecstasy.  When you're through, you pull out, wipe your cock on her fluffy ass and give her a playful swat.  She bounds off, happily filled with your virile seed.";
			otherwise:
				say "     Keeping a grip on the vixen, you move around in front of her.  Grabbing her head, you push her face between your legs so her muzzle's squarely at your pussy.  Finding herself face to cunt with you, she stops resisting and giggles happily.  '[one of]Oh, you do want to play with me!' [or]Let me take care of that for you,' [or]I'm sorry for being such a naughty vixen earlier.  Let me make it up to you,' [or]Ooo!  This looks serious!  Lemme kiss it and make it aaallllll better,' [at random]she says excitedly.  And with that, the pink vulpine sets to work licking and lapping at your cunt.";
				say "     Her tongue is quite adept at the task, working hard to please you and able to reach so many delightfully sensitive spots inside you with ease.  Despite your attempts to remain quiet, you can't help but moan and cry out as she expertly eats you out.  She eagerly laps up your flowing juices as she works that flexible appendage around inside you.  You run your hands over her ears and through her hair.  After a few small orgasms, she works you up to a large, crashing one that leaves your head spinning as her tongue goes wild inside your spasming vagina.  When you finally manage to push the eager vixen's muzzle back, her tongue pops out with a wet slurp.  She grins at you, licks her muzzle and dashes off with a happy giggle.";
		otherwise:
			say "     Not in the mood to play with the pink vixentaur, you give her ass a hard swat and warn her not to get in your way again.  She pouts and dashes off with a soft whimper and a bit of a limp from her injuries.";
		decrease vixentaurcatch by 15;
	otherwise:
		say "     The beaten vixentaur backs away from you, stumbling somewhat from her wounds.  She gives you an angry shove, grumbling about how you're a big meanie for not wanting to play with her, before dashing off with a bit of a limp from her injuries.";
		increase vixentaurcatch by 33;
		if vixentaurcatch > 90, now vixentaurcatch is 90;


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
	now attack entry is "[one of]The vixentaur grinds her buxom breasts against your body![or]The vixentaur rears up and slashes you with her foreclaws![or]She snaps at you with her muzzle![or]The vixentaur slaps you soundly across the cheek![or]The vixen creature grabs you with her clawed hands and slams your face into her bosom.  The surprise motorboating leaves you momentarily dazed.[or]The vixen giggles and gives her breasts a tantalizing grope as she moves sexily around you.[at random]";
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
	now breasts entry is 8;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 6;		[ Size of breasts the infection will try to attain. ]
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