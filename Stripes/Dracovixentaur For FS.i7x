Version 1 of Dracovixentaur For FS by Stripes begins here.
[Version 1]
"Adds a Dracovixentaur creature to Flexible Survival's Wandering Monsters table to go along with Sam the Dual-Taur's content."

Section 1 - Monster Responses

DVtaurcatch is a number that varies.  DVtaurcatch is normally -40.

when play begins:
	add { "Dracovixentaur" } to infections of hermaphrodite;
	add { "Dracovixentaur" } to infections of furry;
	add { "Dracovixentaur" } to infections of Tailweapon;		[usable for Tail Strike feat]
	add { "Dracovixentaur" } to infections of Reptilelist;	[list of reptile infections]
	add { "Dracovixentaur" } to infections of Vulpinelist;	[list of vulpine infections]
	add { "Dracovixentaur" } to infections of Taurlist;		[list of tauric infections]


to say losetoDVtaur0:
	if cocks of player > 0 and cunts of player > 0:		[HERM]
		let T be a random number between 1 and 6;
		if T is 1 or T is 2:
			say "[losetoDVtaur1]";
		otherwise if T is 3 or T is 4:
			say "[losetoDVtaur2]";
		otherwise if T is 5:
			say "[losetoDVtaur3]";
		otherwise if T is 6:
			say "[losetoDVtaur4]";
	otherwise if cocks of player > 0:				[MALE]
		let range be 4;
		increase range by anallevel;
		let T be a random number between 1 and range;
		if T is 1 or T is 2 or T is 3:
			say "[losetoDVtaur2]";
		otherwise if T is 4:
			say "[losetoDVtaur3]";
		otherwise if T is 5:
			say "[losetoDVtaur4]";
		otherwise if T is 6 or T is 7:
			say "[losetoDVtaur1]";
	otherwise if cunts of player > 0:				[FEMALE]
		let T be a random number between 1 and 6;
		if T is 1 or T is 2 or T is 3:
			say "[losetoDVtaur2]";
		otherwise if T is 4:
			say "[losetoDVtaur3]";
		otherwise if T is 5:
			say "[losetoDVtaur4]";
	otherwise:								[NEUTER]
		let T be a random number between 1 and 2;
		if T is 1:
			say "[losetoDVtaur3]";
		otherwise if T is 2:
			say "[losetoDVtaur4]";


to say losetoDVtaur1:	[DV fucks]
	say "     Having defeated you, the dracovixentaur roars trimphantly and presses you to the ground.  She rumbles in your ear as she moves to mount you about how [if cunts of player > 0]she's going to breed you full of whelps and kits[otherwise][one of]she will pound you until you're overflowing with cum[or]she's been looking for some fun[at random][end if] and thrusts into you with little preamble.  Her tapered tip is designed for prying open reluctant holes and pushes its way into your [if cunts of player > 0][cunt size desc of player] pussy with ease[otherwise]tight anus[end if].  The draconic cock thickens as it pushes further into you, each of those ridges on it acting as delightfully pleasurable markers of just how much meat the powerful taur is stuffing inside you.";
	say "     The dracovixen fucks you with lustful zeal, pounding you until you're nearly insensate with lust before finally pushing her knot into you and tying with you.  She releases a triumphant growl as she finally climaxes.  She blasts shot after shot of her creamy load into your wanton hole, bloating your [if cunts of player > 0]womb[otherwise]belly[end if] with her prodigious output.  Finished and tied together, she has an enjoyable time groping and fondling you until the knot has finally shrunk down enough to pop out.  After she pulls out, she leaves you on the ground, leaking her cum from your overstuffed and gaping [if cunts of player > 0]pussy[otherwise]asshole[end if].[DVimpregchance]";


to say losetoDVtaur2:	[DV rides]
	say "     Having defeated you, the dracovixentaur rumbles excitedly and presses you to the ground.  She murrs in your ear about how [one of]she wants you to breed some kits in her[or]much fun she's going to have with you[or]she's been looking for some fun[at random].  You are beyond resisting her advances at this point, wrapping your arms around her and burying your face in her bosom.  You kiss and licks at her many nipples, drawing excited yips from the vulpine.";
	say "     She gets your [cock size desc of player] [cock of player] shaft lined up and sinks down onto your throbbing rod with ease.  She rumbles and yips as she rides up and down.  Her inner walls squeeze and ripple across your manmeat in so many delightful ways.  She presses your face to her breast, coaxing you to start suckling from her, drinking down her spicy, perfumy milk.  Her large, pulsing cock is pressed between you both as she rides your rod.  The dracovixen fucks you with wild, animalistic abandon, pounding her hips down onto yours until you're nearly insensate with lust and finally climax as her pussy clamps down around your shaft as she cums.  You blast your [if cock width of player > 20]large [end if]load into her, breeding the lustful vixen, possibly siring more of these hybrid creatures.  Having got what she wanted, she giggles and heads off after flashing you her pussy with your cum [if cock width of player > 20]flowing[otherwise]leaking[end if] out of it.";


to say losetoDVtaur3:	[DV nursing]
	say "     Having defeated you, the dracovixentaur rumbles excitedly and presses you to the ground.  She murrs in your ear about how [one of]much fun she's going to have with you[or]she's been looking for some fun[at random].  You are beyond resisting her advances at this point, wrapping your arms around her and burying your face in her bosom.  You kiss and licks at her many nipples, drawing excited yips from the vulpine.";
	say "     She grinds her hips down onto you, rubbing her wet, dripping pussy and ridged, dragon cock against your [skin of player] flesh.  Her paws rub and knead over you, [if cocks of player > 0 and cunts of player > 0]one of them wrapping around your [cock size desc of player] cock while the other goes for your juicy pussy[otherwise if cocks of player > 0]one of them wrapping around your [cock size desc of player] [cock of player] cock[otherwise if cunts of player > 0]one of them slipping between your legs to tease your [cunt size desc of player] pussy[otherwise]teasing every sensitive spot they can find[end if].  She presses your face to her breast, coaxing you to start suckling from her, drinking down her tasty, perfumy milk.  She continues to rub against you until she finally cums, soaking you in her cum and juices.  Having had her fun, she gets up with a giggle, presses her sticky crotch into your face and trots off merrily.";


to say losetoDVtaur4:	[DV blow job]
	say "     Having defeated you, the dracovixentaur rumbles excitedly and presses you to the ground.  She murrs in your ear about how [one of]much fun she's going to have with you[or]she's been looking for some fun[at random].  You are beyond resisting her advances at this point, wrapping your arms around her and burying your face in her bosom.  You kiss and licks at her many nipples, drawing excited yips from the vulpine.";
	say "     Stepping over you, she presses her throbbing cock to your face, precum spurting from it across your lips.  The musky fluid tastes of spices and perfume and is quite exciting.  You find yourself wanting more and lick at her dribbling glans before welcoming her cock into your mouth.  You moan in pleasure as that ridged length slides past your lips and over your tongue before pressing its tapered glans down your throat.  She presses one of her forepaws at the back of your head, encouraging you to bob your head over her meat as she fucks your face while her rearmost pair of breasts rub against the top of your head.  You reach up and knead her hefty balls and finger her dripping pussy until she finally cums, feeding you a heavy load of her exotically tasting semen.  Once she's done, you're left feeling full from her large load.";


to say beattheDVtaur:
	if hp of Sam is 15:
		say "     You manage to knock Sam down, having beaten the fight out of him.";
	otherwise if a random number between 1 and 100 < DVtaurcatch and ( cocks of player > 0 or cunts of player > 0):
		say "     The beaten dracovixentaur backs away from you, stumbling somewhat from her injuries.  Like the others, she prepares to release a blast of flame to allow her escape, but you rush forward and clamp her muzzle shut in an arm lock.  She thrashes briefly before exhaling a cloud of smoke as the flames fail.  You press her to the ground and pin down her wings.  With her caught, you consider having some fun with her";
		if cocks of player > 0:
			say ".  You could [link]fuck her (1)[as]1[end link], [link]ride her (2}[as]2[end link], get a [link]blow job (3)[as]3[end link] or just [link]let her go (0)[as]0[end link].";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 3:
				say "Choice? (0-3)>[run paragraph on]";
				get a number;
			if calcnumber is 1:
				say "[beatDVtaur1]";
			otherwise if calcnumber is 2:
				say "[beatDVtaur2]";
			otherwise if calcnumber is 3:
				say "[beatDVtaur3]";
			otherwise:
				say "[beatDVtaur0]";
		otherwise:
			say ".  You could [link]ride her (1}[as]1[end link], get [link]eaten out (2)[as]2[end link] or just [link]let her go (0)[as]0[end link].";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 2:
				say "Choice? (0-2)>[run paragraph on]";
				get a number;
			if calcnumber is 1:
				say "[beatDVtaur2]";
			otherwise if calcnumber is 2:
				say "[beatDVtaur4]";
			otherwise if calcnumber is 3:
				say "[beatDVtaur0]";
	otherwise:
		say "     The beaten dracovixentaur backs away from you, stumbling somewhat from its injuries.  It opens its maw wide and releases its fire in a wide wave, forcing you back.  It takes this opportunity to make its retreat and take to the air.  It does not fly steadily, but is able to stay airborne and make its escape.";
		increase DVtaurcatch by 33;
		if DVtaurcatch > 90, now DVtaurcatch is 90;

to say beatDVtaur0:
	say "     Keeping the defeated hybrid pinned beneath you, you move around so you're laying across her back.  Pushing her tail up, you get your cock into position and slide it across her wet folds.  She dracovixen moans and fidgets beneath you with growing excitement.  '[one of]Mmm... to the victor go the spoils[or]Hurry up and give it to me[or]Come on!  Let's see what you can do[or]Breed me, you [bodytype of player] stud[at random]!' she rumbles.  Grabbing her sexy bottom, you drive your cock into her and start fucking, pounding the slutty fox's juicy hole.";
	say "     The dracovixentaur releases a mix of yips, growls and rumbling purring as you fuck her.  Her cunt squeezes and rubs over your thrusting shaft in strange and delightful ways, the taur's vagina clearly made for pleasing any male that mounts her.  Reaching around, your grab her plump breasts and play with her nipples, getting her to dribble milk in a growing pool on the ground while enjoying the sounds of delight she makes at this.  When you finally cum, you drive hard into her and unleash your [if cock width of player > 40]huge [otherwise]large [end if] load while she cries out in ecstasy and sprays her own seed into the milky mess beneath her.  When you're through, you pull out, wipe your cock on her fluffy tail and give her a playful swat.  She bounds off, happily filled with the virile seed of a powerful lover.";

to say beatDVtaur1:
	say "     Deciding that you might indeed want to have some fun with the hybrid, but on your own terms, you push the fallen taur over onto her side and grab her cock.  While it had been softening and receeding after her defeat, it quickly rises back to its full glory as you stroke it.  She tries to rise so she can mount you, but you push her back down firmly and instead straddle her.  With her rear turned over and the rest of her on her side you're able to position yourself overtop of her cock and guide it into your [if cunts of player > 0]wet cunt[otherwise]tight pucker[end if].  Her tapered glans slips easily into you, spreading you open for her thickening length below it.";
	say "     You run your hands through her soft fur and play with her many breasts as you sink more and more of his ridged shaft into you.  Each of those ridges provide delightful pleasure to you as they slide across your [if cunts of player > 0]pussy lips[otherwise]anal ring[end if] and inner walls.  Her hips try to buck and thrust into you, but to little avail.  You're the one setting the pace this time and, having gotten very aroused by this point, intent to make the most of it.  You vary your pace and position several times[if cunts of player > 0], riding through several small orgasms[otherwise], working the pulsing, textured rod against your prostate[end if] while always building yourself higher and not letting the dracovixen get off.  And when your massive orgasm finally comes crashing over your in waves of ecstasy, you quickly slam down onto her knot.  Forcing that meaty bulge into your [if cunts of player > 0]stuffed pussy[otherwise]streched anus[end if] pushes the hybrid over the edge as well.  She roars loudly and cums hard, blasting thick dracovixencum deep inside you, filling your [if cunts of player > 0]womb[otherwise]belly[end if] with her virile seed[if cocks of player > 0] while you spray your own load across her furry chest[end if].[DVimpregchance]";
	say "     As you wait for her balls to drain into you and her knot to go down, you turn your attention back to her numerous breasts.  You stroke over the large and lovely melons, enjoying their soft, lilac fur and perky, lavender nipples.  As you tease and pinch those purple nips, the hybrid's milk starts to flow while yips and rumbles of pleasure come from her.  Feeling her knot having shrunk enough to free yourself, you pop off of her with a wet, sticky sound and a flow of cum down your thighs.  Once she's gotten up, you give her rear a playful swat and send her on her way.";

to say beatDVtaur2:
	say "     Deciding that you might indeed want to have some fun with the hybrid, but on your own terms, you keep a grip on the dracovixen and move around in front of her.  Grabbing her horns, you pull her face between your legs so her muzzle's squarely at your cock.  Finding herself face to penis with you, she becomes more accommodating and gives your cock a few slow licks.  Eager for more, you pull her head forward and order her to get sucking.  The powerful herm accepts her punishment for being beaten with little reluctance, opening her draconic muzzle and accepting your [cock of player] cock into its warm embrace.";
	say "     Her tongue slides along your shaft and out of her sucking mouth to play across your balls[if cunts of player > 0].  It delves further back to lap across your pussy a few times before returning to the task at hand[end if].  Soon enough she's lapping over your erection and balls, growing more eager to service the victor.  She fellates you with considerable skill, her talented muzzle is silky smooth.  Her agile tongue, soft palate and gripping throat feel wonderful as well.  The whole of her muzzle feels like a hot cunt around your cock with the added pleasure of her delightful tongue.  Clearly designed for it by the nanites, these sexy dracovixens give a wonderful blowjob and you eagerly take advantage of the opportunity to enjoy it.  And from the wet moans and muffled yips of pleasure from the taur's stuffed muzzle, she's certainly savouring it as well.  You thrust into her muzzle, driving your [cock size desc of player] [cock of player] cock into her mouth harder and faster until you finally cum, feeding the horny hybrid taur your cum[if cock width of player > 40] until she's stuffed full and bloated with it[otherwise] and leaving her tummy a little rounded from it all[end if].  The dracovixentaur eagerly licks you clean before releasing your spent shaft.  You give her rear a playful swat and send her on her way.";

to say beatDVtaur3:
	say "     Keeping a grip on the hybrid, you move around in front of her.  Grabbing her head by the horns, you push her face between your legs so her muzzle's squarely at your pussy.  Finding herself face to cunt with you, she stops resisting and rumbles happily.  '[one of]Mmm... to the victor go the spoils!' [or]Let me take care of that for you,' [or]I'm sorry for being such a naughty girl earlier.  Let me make it up to you,' [or]Ooo!  This looks serious!  Lemme kiss it and make it aaallllll better,' [at random]she says excitedly.  And with that, the purple hybrid sets to work licking and lapping at your cunt.";
	say "     Her tongue is quite adept at the task, working hard to please you and able to reach so many delightfully sensitive spots inside you with ease.  Despite your attempts to remain quiet, you can't help but moan and cry out as she expertly eats you out.  She eagerly laps up your flowing juices as she works that flexible appendage around inside you.  Feeling no need to keep holding her in place, you release her horns and run your hands over her ears and through her hair.  After a few small orgasms, she works you up to a large, crashing one that leaves your head spinning as her tongue goes wild inside your spasming vagina.  When you finally manage to push the eager dracovixen's muzzle back, her tongue pops out with a wet slurp.  She grins at you, licks her muzzle and flies off with a happy giggle.";

to say beatDVtaur4:
	say "     Not in the mood to play with the purple dracovixentaur, you give her ass a hard swat and warn her not to get in your way again.  She yips at the swat and slinks a few feet away before taking to the air and flying off.";


to say DVtaurdesc:
	say "     Before you is a hybrid taur creature, definitely one of Sam's many descendents.  The creature's draconic head has a slender, pointed muzzle with a foxish look on it.  Its lavender scales change to lilac fur at the back of its head as they approach the base of the ivory horns which jut from the back of its head.  Aside from the pair at the top, there are three smaller horns on each side.  Behind those are a pair of vulpine ears and flowing hair, both lilac in colour.  Its upper body is generally human in shape, but covered in more lilac fur over the shoulders and the front and in lavender scales protecting the rest.  It is quite curvaceous, with an ample bosom, slender waist and round hips blending into its tauric lower half.  But you can also see hidden strength in it as well, toned muscles and abs under those scales and fur.";
	say "     Its lower body is a similar mix of dragon and fox, a sleek but powerful beast with shapely limbs and a powerful frame to support its weight.  Similarly covered in a mix of scales and fur, most of its body is armoured in scales with fur at its underside and covering its taloned, vulpine paws.  Atop the back of its tauric body are a pair of draconic wings that are folded alongside its sides at the moment.  It's fluffy fox tail ends in a spaded tip, warning you there's a powerful, draconic tail lurking beneath that fluff.  Beneath that tail is her damp pussy and plump sheath and balls, the arousing scent of which is being wafted around by her fluffy tail.  Its ridged cock has started to emerge from that furry sheath, growing hard in anticipation of some lustful fun with its current prey.  Along her underbelly, she has three pairs of smaller breasts with perky, lavender nipples.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Dracovixentaur";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The dracovixentaur slams its tail into you, bashing you aside![or]The dracovixen rears up and slashes you with its foreclaws![or]It snaps and tears at you with its fangorious maw![or]The dracovixentaur punches you soundly in the jaw![or]The hybrid creature grabs you with its clawed hands and slams its armoured head into yours.  The head butt leaves you seeing stars for a moment.[or]The dracovixentaur slaps you soundly across the cheek![or]The hybrid creature grabs you with her clawed hands and slams your face into her bosom.  The surprise motorboating leaves you momentarily dazed.[or]The dracovixen giggles and gives her breasts a tantalizing grope as she moves sexily around you.[at random]";
	now defeated entry is "[beattheDVtaur]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetoDVtaur0]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[DVtaurdesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "a mix of draconic and vulpine features blending into a sexy combination.  You have a long, slender muzzle with a foxish grin.  There are a pair of ivory horns which jut from the back of your head along with three smaller pairs below that.  Tucked behind those are a pair of vulpine ears and long, flowing, lilac hair";
	now body entry is "considerably transformed, having gained a tauric lower half that is part dragon and part vixen in appearance.  While your upper body largely resembles that of a sexy and fit human woman, your lower body is that of a hybridized dragon-fox";
	now skin entry is "lavender scales and lilac fur";
	now tail entry is "You have a fluffy fox tail that hides a powerfully draconic tail under its thick fur, with only the spaded tip poking out to reveal its hidden nature.";
	now cock entry is "[one of]ridged[or]draconic[or]pointed[or]tapered[or]knotted[or]sheathed[as decreasingly likely outcomes]";
	now face change entry is "you feel a powerful pounding at the top of your skull as your face grows flush with heat.  As this grows worse, your face pushes outward and changes with several snaps and pops.  A draconic muzzle forms as the pain in your skull suddenly fades as large horns push forth from the back of your head.  Fox ears and long, lilac hair form behind those";
	now body change entry is "your body shifts and bends unnaturally into two sections.  The upper half reforms into an feminine body with sexy curves and a fit physique.  The lower section becomes that of a four-legged creature with a powerful frame and taloned paws for feet.  Your hands are a cross between these and normal hands.  Finding yourself with a dracovixentaur body like Sam's, your mind quickly adjusts to compensate for your new quadrupedal form";
	now skin change entry is "your skin grows thick and hard in places, forming heavy blue scales across limbs, back and sides.  Across your chest[if bodyname of player is listed in infections of Taurlist], underbelly[end if], shoulders, hands and feet";
	now ass change entry is "strange twinges run up and down your spine.  Each time these tingles run down, they seem to travel further and further down until the growth of your new, dracovulpine tail is complete";
	now cock change entry is "pulses and throbs with need.  As you watch, it changes shape and becomes more tapered and gains a pointed, conical glans for pushing into its prey.  Ridges form along the length of your cock for added stimulation as a knot swells at its base.  Below your knot, your flesh reshapes itself to form a furry sheath to house your maleness.  You find yourself looking forward to putting your new tool to use";
	now str entry is 16;			[ These are now the creature's stats... ]
	now dex entry is 20;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 14;			[ These values may be used as part of alternate combat.]
	now per entry is 13;
	now int entry is 13;
	now cha entry is 15;
	now sex entry is "Both";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 84;			[ The monster's starting hit points. ]
	now lev entry is 10;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 9;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 16;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 8;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 8;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 5;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 24;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 15;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]athletic[or]sexy[or]alluring[or]sleek[or]shapely[or]tauric[at random]";
	now type entry is "[one of]dracovixentaur[or]dracovixen[or]hybrid[as decreasingly likely outcomes]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "DVtaur";	[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"DVtaur"	firebreath rule	--	--	DVtaurpounce rule	20	--	--	--	DVtaurscent rule	--

this is the DVtaurpounce rule:		[double-damage pouncing]
	choose row monster from the table of random critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 57 );	[+75% damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "The [one of]dracovixen[or]dracovixentaur[or]hybrid creature[purely at random] growls and pounces atop you, [one of]knocking[or]pushing[or]shoving[purely at random] you down briefly.  It's many talons claw at you while she giggles and presses her many breasts down atop you while roaring playfully.  This [one of]painfully[or]viciously[or]devastatingly[purely at random] [one of]arousing[or]sexy[purely at random] assault does [special-style-2][dam][roman type] damage and aroused you further!";
	now damagein is dam;
	say "[noshieldabsorbancy]";		[unable to use shield while pinned]
	if absorb is greater than dam:
		now absorb is dam;
	if absorb is greater than 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease hp of the player by dam;
	increase hp of player by absorb;
	follow the player injury rule;
	increase libido of player by a random number from 2 to 6;
	if "Horny Bastard" is listed in feats of player, increase libido of player by 1;
	if "Cold Fish" is listed in feats of player, decrease libido of player by 1;
	say "You are [descr].";


this is the DVtaurscent rule:
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
		say "[one of]The dracovixentaur's scent continues to turn you on[or]The scent of spices and perfume coming from the dracovixentaur further arouses you[or]You find yourself thinking of just dropping your hands and letting the dracovixentaur have her fun[or]The dracovixen's wonderful scent arouses your lusts[or]The sexy motion of alluring, vulpine dragon draws your eyes to her beautiful body and buxom breasts[at random][one of], making you less willing to keep fighting her[or] as sexy images of you and the dracovixentaur fill your thoughts[or], turning you on[or][at random].  You take [special-style-2][dam][roman type] damage!";
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
	if bodyname of player is "Dracovixentaur":
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
Dracovixentaur For FS ends here.