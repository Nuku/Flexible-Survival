Version 1 of Feral Gryphon by UrsaOmega begins here.
[Version 1.2 - Added M/M player victory - Stripes]
"Adds a Feral Gryphon creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Feral Gryphon" } to infections of guy;
	add { "Feral Gryphon" } to infections of furry;
	add { "Feral Gryphon" } to infections of Avianlist;		[list of avian/bird infections]
	add { "Feral Gryphon" } to infections of Avianpredlist;	[list of predatory avian/bird infections]
	add { "Feral Gryphon" } to infections of Knotlist;		[list of cock infections with a knot]

to say losetoGryphon:
	say "     The gryphon knocks you to the floor, pinning you under his feathery weight. With an angry growl-chirp, he begins picking intently at your gear; he's trying to undress you. Not wanting to get sliced by his sharp beak and claws, you put your hands up in a motion you hope he understands as surrender and begin slowly disrobing yourself.";
	say "      Finally, you're naked before the beast. He clearly enjoyed the show, as his cock is slipping out of his furry sheath as he looks your body over approvingly.";
	if waiterhater is 0, wait for any key;
	say "[line break]";
	if a random chance of 3 in 4 succeeds: [Mounted by gryphon]
		say "     The gryphon pushes you over onto your belly with a powerful swipe. You push yourself up on all fours to try to get away, but his bulk is over you in an instant. [if scalevalue of player is less than 4]He puts his forelegs on either side of you, trapping you beneath him,[otherwise]He mounts your [bodydesc of player] rear, wrapping his powerful forelegs around your hips[end if] and hunches his hips. You can feel something hot, wet, and rough probe your backside, looking for your [if cunts of player > 0]feminine cleft[otherwise]asshole[end if].";
		say "     Suddenly, you feel his pointed tip lodge between your [if cunts of player > 0]labia[otherwise]ass cheeks[end if] and you gasp as he thrusts inward, spreading you around the first few inches of his cock. What you suspect to be leonine barbs on the head of his penis add a strange, rough texture to his maleness. Your suspicion is confirmed as he pulls back a bit, and they drag against the walls of your [if cunts of player > 0]vagina[otherwise]rectum[end if] in a not-altogether-unpleasant scraping sensation. He quickly works his cock into your passage fully, his copious precum lubricating you thoroughly.";
		say "[line break]";
		if waiterhater is 0, wait for any key;
		if player is impreg_able:
			say "     The gryphon's barbs are having a strange effect on your body; an unusual warmth forms in your womb and you find yourself clenching down his cock and pushing back into his thrusts. Thoughts of your belly swelling with the male's clutch cross your mind unbidden; you moan as you imagine laying the eggs, stretching you as you push them out one by one.";
		if waiterhater is 0, wait for any key;
		say "[line break]";
		 say "     He breeds you roughly, his cock pistoning in and out of your [if cunts of player > 0]cunt[otherwise]back passage[end if] with an animalistic ferocity.[if cocks of player > 0] You can feel your own [cock of player] cock[smn] hardening in response to battering your prostate is receiving; it dribbles precum over the ground as the gryphon's huge ballsack smacks against your own on each thrust.[end if] The gryphon grips you tighter, giving you long, ferocious thrusts; you feel something else pushing at your [if cunts of player > 0]vagina[otherwise]asshole[end if]. The gryphon's swollen knot batters your rear, seeking entrance.[run paragraph on]";
		if (cunts of player > 0 and cunt width of player < 7) or scalevalue of player < 3:
			say " He grinds it against your [if cunts of player > 0]cuntlips[otherwise]anus[end if], but isn't able to fit it in. He settles for pounding your depths with the rest of his length, before finally pressing his cock deep within you, his knot sitting just outside your straining entrance.";
		otherwise:
			say "He grinds it against you with each thrust, and you can feel your entrance slowly give way to its incessant pressure. On one harsh thrust, the knot reaches its widest point, spreading your [if cunts of player > 0]nether-lips[otherwise]tailhole[end if] uncomfortably; one the next, it pops into you fully. After the initial shock of penetration wears off, you relish the feeling of warm fullness as the gryphon finishes himself with quick, rutting thrusts.";
		say "     He screeches in victory as you feel his cock twitch and the first hot rope of gryphon-cum splash inside you[if cocks of player > 0]. You reach your own climax, your [cock size desc of player] cock[smn] shooting your own cum over the ground[end if]. The gryphon comes for what feels like minutes; by the time he's finished, his seed is drooling from you, squelching around his cock. He dismounts you, his softening maleness slipping from you with a soft plopping sound. You feel his cum drip from your rear as he spreads his wings and leaves you to clean yourself up.[impregchance]";
	otherwise: [oral]
		say "     The gryphon moves his bulk over you until his cock moves in front of your [facename of player] face. You can see it has fully extended from his sheath now; it has a thick base that tapers dramatically to a pointy tip; the glans of his cock seems to be covered in rough barbs, betraying his leonine heritage. The gryphon presses his back half against your upper body, pinning you while his erection rubs against your cheeks, searching for your mouth.";
		if waiterhater is 0, wait for any key;
		say "[line break]";
		say "     Realizing there is only one way out of this situation, you reach up and grab the probing gryphon-hood, guiding it to your puckered lips. You slip your mouth over his length, but you can only fit the upper part of his length in your mouth; however, this seems to be satisfactory for the gryphon, who starts thrusting his cock in and out of you. It's obvious he wants to slip down your throat, but from this angle it's impossible. You settle for suckling on his length as he tries to face-fuck you, your mouth quickly filling with his precum. You swallow as much as you can, but some of it drips messily down your chin.";
		if waiterhater is 0, wait for any key;
		say "[line break]";
		say "     The gryphon is taking his sweet time in reaching his climax - perhaps he's not getting enough stimulation? Your eyes fix on the now-bulging knot at the base of his penis; eager to end this, you reach up and clamp your hand behind it. This simulated tie sends the gryphon over the edge almost immediately; you feel his cock twitch in your mouth as he unloads the first spurt of thick gryphon cum into your mouth. You try to swallow as much of his load as possible, but the copious volume causes you to choke at pull back off his maleness; this in turn causes his last few ropes of seed to paint your face white.";
		say "[line break]";
		say "     Pleased with your performance, the gryphon spreads his wings and takes off, leaving you to clean yourself up.";

to say beattheGryphon:	[Player victory scenes to come]
	if cocks of player > 0 and anallevel > 1:
		say "     The beaten gryphon gives an angry cry, clearly disappointed you were not easier prey.  Feeling that he deserves to have the tables turned on him, there's a brief moment when you might catch the beast before he makes his escape.  Shall you take it... and take that leonine ass of his?";
		if the player consents:
			say "     Leaping atop the wounded creature before he can take to the air, you force him to the ground.  He screeches angrily and tries to snap at you with his beak, but you press his face to the ground.  This has the added benefit of leaving his ass raised - and thereby open for you.  Bringing your [cock of player] cock into position, you push it into the reluctant creature's asshole.  It is hot and tight, squeezing firmly around the unexpected intruder [if cock length of player > 40]forcing it open incredibly wide[otherwise if cock length of player > 20]forcing it open uncomfortably wide[otherwise]now buried inside it[end if].";
			say "     As the victor in your conflict, you lustfully claim your prize, pounding away at the hybrid's [if cock length of player > 20]overstuffed [end if]ass with considerable zeal.  Whether the creature simply becomes resigned to his fate or starts to enjoy it is unclear, but the gryphon soon stops resisting.  You let your hands roam across his body, enjoying the soft feathers and warm fur of this mythological beast's.  And of course, your hands do end up at the gryphon's throbbing cock.  It's emerged from its sheath and is largely leonine in form, but also possesses a swelling knot.";
			say "     Stroking the monster's erection makes him even more compliant and soon he's pushing back into your thrusts and cooing softly with pleasure.  At that point, it only takes a few more thrusts before you're cumming, painting the gryphon's bowels with a [cum load size of player] dose of your semen.  With his foot-long rod pulsing in your hand, your once-reluctant foe cries out as he cums, staining the ground with his virile load.  You pump your hips into him even as you pump his cock, making sure you're both drained before you release him and pull out.  Trying to preserve at least a little dignity, the gryphon gives a snarl and lowers his tail to hide the sticky mess you've left leaking out of him before taking to the air.";
		otherwise:
			say "     Deciding against it, the moment passes and the gryphon takes off, limping his way into the air to nurse his wounds.";
	otherwise:
		say "     Standing up to the gryphon, you are able to force this mythological beast to retreat.";

to say Gryphondesc:
	say "     Suddenly, a winged form drops down in front of you. It has the feathered head of an eagle, but the golden-furred body of a lion; a mythical gryphon! It stalks toward you predatorily and you prepare to fight.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Feral Gryphon";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The gryphon slashes at you with a sharp talon![or]The gryphon pecks you relentlessly![or]The gryphon batters you with its wings![or]The gryphon gives a shrill screech![at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beattheGryphon]";				[ Text when monster loses.  Change 'Gryphon' as above. ]
	now victory entry is "[losetoGryphon]";					[ Text when monster wins.  Change 'Gryphon' as above. ]
	now desc entry is "[Gryphondesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "the visage of a majestic eagle, feathered and beaked";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a lion, fully quadrupedal, with powerful muscles rippling under your skin that speak to your predatory nature";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "golden-furred and feathered";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a long, leonine tail hanging over your rear.";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "[one of]knotted[or]leonine[or]tapered[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "it pushes outwards, hardening into a predatory beak. Your ears retreat into your body, becoming simple openings as your head becomes that of an eagle";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "it twists and shifts into your new leonine form, bones cracking as they reform into a quadrupedal stance";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "golden lion fur covers your body, while avian feathers sprout from your head and neck";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "A golden lion tail sprouts from above your ass";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes tapered, with a slight bulge appearing at the base of it. Your cockhead feels strange as it grows barbs, giving it a rough texture";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 24;           [ These are now the creature's stats... ]
	now dex entry is 18;           [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20;           [ These values may be used as part of alternate combat.]
	now per entry is 18;
	now int entry is 14;
	now cha entry is 12;
	now sex entry is "Male";           [ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 90;                [ The monster's starting hit points. ]
	now lev entry is 10;               [ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 13;              [ Monster's average damage when attacking. ]
	now area entry is "Museum";        [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;              [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;       [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 8;         [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;            [ Number of breasts the infection will give a player. ]
	now breast size entry is 0;        [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;              [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;        [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;         [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 40;            [ Target libido the infection will rise towards. ]
	now loot entry is "";              [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;         [ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]leonine[or]strong[or]predatory[or]powerful[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "hybrid";        [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;          [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;      [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;     [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";  [ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Endings

when play ends:
	if bodyname of player is "Feral Gryphon":
		if humanity of player is less than 10:
			say "     You succumb to your gryphon infection, roaming the streets and hunting prey to sate both your hunger and your lusts. You establish a nest at the top of an abandoned apartment building, adorning it with shiny baubles in hopes of attracting a mate.";
			if cocks of player > 0 and "MPreg" is not listed in the feats of the player:
				say "     Much to your surprise, you come across a beautiful female gryphon while out hunting one day. Luring her back to your nest with a fresh kill, you begin your courtship ritual; it concludes with you mounted on top of her, filling her cunt with your thick knot and her eager womb with your seed. You cuddle with your new mate in your nest, looking forward to seeing her lay your clutch... Then putting another in her.";
			otherwise if cunts of player > 0:
				say "     Much to your surprise, you come across a handsome male gryphon while out hunting one day. Luring him back to your nest with a fresh kill, you begin your courtship ritual; it concludes with him on top of you, filling your cunt with thick gryphon knot and your womb with warm seed. You cuddle with your new mate in your nest, looking forward to laying your clutch of eggs... Then getting filled with another.";
			otherwise if "MPreg" is listed in the feats of the player:
				say "     Much to your surprise, you come across a handsome male gryphon while out hunting one day. It takes some convincing, but with some fresh meat and a display of your tight, fertile tailhole you're able to lure him back to your nest; where you begin a very awkward courtship ritual. It concludes with him on top of you, filling your ass with thick gryphon knot and your egg chamber with warm seed. You cuddle with your new mate in your nest, looking forward to laying your clutch of eggs... Then getting filled with another.";
		otherwise:
			say "     When the military finds you, they aren't sure what to do with a seemingly intelligent feral gryphon. You're held in a facility for a while, where scientists poke and test you for some time, even taking humiliating samples of 'genetic material' a few times. You put up with their ministrations for now; luckily, they deem you noninfectious before you lose your patience. You are fitted with a tracking bracelet and released into a nature preserve with other gryphons, with whom you form a healthy colony. Settling down with a life-mate, you spend of your time making little gryphlets and playing with enterprising hikers.";

Feral Gryphon ends here.
