Version 2 of Otter by Nuku Valente begins here.
[Version 2.1 - no gender restrictions, adjusts target gender as needed]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Otter to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
Otterdefeat is a number that varies.
Otterconsent is a number that varies.

[Summary of the dancing around the flags:
If guy is banned, the male interplay scenes are removed from the sex.  Female scenes will instead be more likely (75% chance each).
If girl is banned, the female interplay scenes are removed from the sex.  Male scenes will instead be more likely (75% chance each).
A male otter may ride the player's cock if guy is not banned, but the female is more common (75%) unless female is banned.
If girl or guy is banned, direct reference to that gender is removed from combat.
If both guy and girl are banned, then they will show as normal during combat.
If both guy and girl is banned, a special case is reached, with a unique herm otter coming in for the sex.
If guy, girl and hermaphrodite are banned, the player will be punished.]

to say Otter attack:
	if hp of player is greater than 0:
		say "When you stop struggling, the otters squeal with joy, pressing in warmly from all directions and holding you in their loving, if lecherous, arms. You are passed from one otter to the next, sniffed at and licked across the face and chest along the way. Only when you[apostrophe]ve been passed to each in turn do they push you into the center, all smiling, and move to begin play in earnest.";
		now otterconsent is 1;
		wait for any key;
	if guy is banned and girl is banned and hermaphrodite is banned:		[HUH!  All banned!  Madness!]
		say "The otters, so confused that you're even here at all, collectively throw up their hands and leave.  Floating like a boneless jellyfish, you eventually wash up on shore.";
		wait for any key;
	otherwise if guy is banned and girl is banned:					[in herm only mode - special case]
		choose row monster from the table of random critters;
		now sex entry is "Both";
		say "As the otters swim around you excitedly, they seem to sense something about you and back off as a group, letting a lone member of the raft move up to you.  You notice immediately that this member is special, being both male and female in one.  Around hir neck is a short pendant with a pink and periwinkle coloured scallop shells.  Hir small bosom, dainty handfulls, seem perfect on hir swimmer's frame, letting hir move through the water with grace.  Shi moves up to you, running hir paws across your chest as hir smooth body swims around you, examining you intently.";
		if ( cocks of player > 0 and cunts of player is 0 ) or ( cocks of player > 0 and a random chance of 1 in 2 succeeds ):
			say "Shi runs hir paws down your body, taking your cock in hir webbed paws and starts deftly strokes your cock to get you hard.  Hir soft touch gets you hard faster than any vigorous stroking ever has, your body responding to hir immediately.  Shi seems to smile and cups your balls in one paw and you moan, feeling them grow heavy and churn with the need to release the seed you can feel filling them.";
			wait for any key;
			say "Sensing your readiness, shi presses hir chest to yours, rubbing her bosom and hard prick against you.  But it is not hir cock that needs attention, but hir pussy, which shi brings into position over your shaft before sinking down onto it.  Feeling hir pussy sliding over you, you can't help but moan loudly.  With hir arms around your chest, shi starts riding your cock slowly, letting you enjoy every sensual moment.";
			wait for any key;
			say "The other otters around you help support you in the water, but don't interfere in any way, leaving you for what must be their leader and priestess.  As you grow more in synch with the beautiful herm atop you, you become aware that must be watch shi is.  Your leader and holy figure.  Shi must be divine to make you feel this wonderful.";
			wait for any key;
			say "You both continue your mating, kissing and nuzzling at one another as you grow more and more enraptured with hir.  When your release finally comes, you blast your heavy load, emptying your overfilled balls into hir.  Shi clenches hir pussy down firmly around you, keeping all of your cum inside, letting it fill hir with your heat even as a strange heat grows in your loins in response.  When you are spent, shi eases hirself off of you and nibbles your ear lightly before swimming away.";
			wait for any key;
		otherwise:
			say "Shi runs hir paws down your body, moving to your thighs and then between them to caress your pussy, deftly playing with your folds.  Hir soft touch gets you wet and dripping juices into the water, your body responding to hir immediately.  Shi seems to smile and slips a pair of fingers into you, making your body shiver in delight, feeling so good you have a quick orgasm that sends tingles up into your belly, warmth filling your womb.";
			wait for any key;
			say "Sensing your readiness, shi presses hir chest to yours, rubbing hir bosom and hard prick against you.  You want to feel that cock in you so badly and shi happily obliges, bringing hir shaft into position before sinking it slowly into you.  Feeling hir hard member sliding into you, you can't help but moan loudly.  With hir arms around your chest, shi starts thrusting into you slowly, letting you enjoy every sensual moment.";
			wait for any key;
			say "The other otters around you help support you in the water, but don't interfere in any way, leaving you for what must be their leader and priestess.  As you grow more in synch with the beautiful herm atop you, you become aware that must be watch shi is.  Your leader and holy figure.  Shi must be divine to make you feel this wonderful.";
			wait for any key;
			say "You both continue your mating, kissing and nuzzling at one another as you grow more and more enraptured with hir.  When hir release finally comes, shi blasts hir heavy load into you, emptying hir potent seed into your womb.  You moan and tremble as the heat of hir cum fills you, flowing out to warm your whole body as you are wracked with a series of powerful orgasms.  The multiple orgasms leave you spent and panting in the water as shi eases hirself out of you.  Shi nibbles your ear lightly before swimming away.";
			say "[impregchance][impregchance]";		[twice as likely to impregnate]
		say "The other otters pull you to shore, leaving you to recover on the beach, still buzzing with a wicked afterglow.  Shi said nothing, but you can feel shi wants you to join them and part of you longs to do it so you can be with hir again.";
		[drop 2d6 humanity due to the otter herm's power]
		decrease humanity of player by a random number between 1 and 6;
		decrease humanity of player by a random number between 1 and 6;
		if "Pure" is listed in feats of player, increase humanity of player by 2;
		if "Corrupt" is listed in feats of player, decrease humanity of player by 2;
		wait for any key;
		infect "sea otter";		[powerful, extra infection]
	otherwise:
		if girl is banned:
			say "As the otters swim around you excitedly, the females move off, sensing something about you.  They instead swim on watch to prevent any interruption of your time with the males members of the raft.";
			wait for any key;
		if guy is banned:
			say "As the otters swim around you excitedly, the males move off, sensing something about you.  They instead swim on watch to prevent any interruption of your time with the females members of the raft.";
			wait for any key;
		if guy is not banned and ( a random chance of 1 in 2 succeeds or ( a random chance of 1 in 2 succeeds and girl is banned ) ):
			say "An otter swims up behind you and grabs you at the sides, pulling you back against a stiff shaft. He nuzzles into your left ear, then right, as he snuggles up against your back and works the pointed tip of his bestial member into your back door, slowly working it into your body as his friends bark and cheer their encouragement. He pulls you back firmly, sinking several inches more of himself into you, the pain giving way to nanite induced pleasure that echoes outwards from where he stretches you lustfully.";
			wait for any key;
		if guy is not banned and cunts of player is greater than 0 and ( a random chance of 1 in 2 succeeds or ( a random chance of 1 in 2 succeeds and girl is banned ) ):
			say "An otter nuzzles into your throat as he presses himself against your front a moment. He grabs for your hips, then leans back, pressing his eager pointed tool against your nethers, easing it into you with a few sharp thrusts. He begins to piston against you like a machine, eyes closed and chest heaving with heavy gulps of air as he makes wild love. The rough loving is painful only for the first moment, giving way to erotic waves of tingling pleasure that run up and down your belly, centered on your ecstatic cunt, trembling tightly around the penetrating pole of that eager creature.";
			say "The playful otter strokes his webbed paws across your hips as he thrusts into you before finally emptying his load into your trembling pussy.  Sated, he moves back, only to be replaced by another.  They continue to take turns with you, seeding you again and again.[impregchance]";
			wait for any key;
		if a random chance of 1 in 2 succeeds or ( a random chance of 1 in 2 succeeds and ( guy is banned or girl is banned ) ):
			if girl is not banned and ( a random chance of 3 in 4 succeeds or guy is banned ):
				say "An otter suddenly clambers up on top of you, somehow avoiding plunging you into the waves as it settles down on your head and perches. It turns out to be a she, the heated scent of her aroused cunt close to your nose as she curls to look down at you from above, grinning";
			otherwise if guy is not banned:
				say "Soft pricks are felt as otter paws grab you and pull you down. Narrowly avoiding plunging you, an otter scales you and perches on your head with a happy bark, his balls draping over your face to obscure your vision a moment before he laughs and moves a bit";
			say ".  The otter on your head leans back a little, balancing quite well as they begin to pleasure themselves with throaty groans and loud barks, sharing in the pleasure of the moment.";
			wait for any key;
		if cocks of player > 0 and girl is not banned and ( a random chance of 1 in 2 succeeds or ( a random chance of 1 in 2 succeeds and guy is banned ) ):
			if cock length of player is greater than 12:
				say "Too large for her to ride the traditional way, one of the females goes for the alternative, grabbing at your huge length and grinding her entire front along it, stroking it with her slender breasts and thick waterproofed hide. Her arms warp around it as she works you closer to climax.";
				if cocks of player is greater than 1:
					say "Not to let your other organs go to waste, her tail snags around another, loosely stroking at it in time with her energetic body massage against your primary dick, coaxing you towards a wild release.";
				wait for any key;
			otherwise:
				say "A sleek female otter moves up against you, grabbing for your [cock of player] dick and squeezing lightly as she looks into your eyes. She slips in closer, guiding your cock into her needy sex, sinking wetly into the snug passage as she presses her groin down to consume it entirely. She thrusts in rapid little motions that thrashes the water with bubbles swirling around you in the motions. Strange warmth builds in your cock as it plunges deeper and deeper into her willing passage, pleasure building in your body in the motions.";
				if cocks of player is greater than 1:
					say "Noticing you have extra male meat, another female swims up, one to a cock. It becomes quite crowded as they all press in tight to work your cocks deep into their sopping wet cunts, but they seem up for the challenge as they pile in together to work at you and bleed you of every drop of cum you can produce.";
				wait for any key;
		otherwise if cocks of player > 0 and guy is not banned and ( a random chance of 1 in 2 succeeds or ( a random chance of 1 in 2 succeeds and girl is banned ) ):
			say "You can feel the soft, webbed paws of one of the otter's on your cock and you glance down to see a slender, young male grabbing and stroking your cock.  He seems to almost grin as he nuzzles his softly-furred face against it";
			if cock length of player is greater than 12:
				say ".  Too large for him to take, he continues to work his paws over your big cock.  His digits move to fondle your balls as well as he worships your impressive member.  His brown eyes are locked on it, staring at it lustfully";
				if cocks of player is greater than 1:
					say ".  Not to let your other organs go to waste, his upper body rubs against them, sliding his waterproof fur across them while lavishing attention on the one in his paws.  This energetic body massage to your cocks gets you really worked up, coaxing you towards a wild release.";
				otherwise:
					say ".";
				wait for any key;
			otherwise:
				say ".  After worshipping your cock and gotten you quite hard and eager, the male slides his body across yours, running his waterproof fur across your chest.  The eager fellow slides his tail across your legs and presses down onto your shaft, taking it into his rear easily.  He grinds and wriggles atop it, making your cock throb with need.  A strange warmth builds in your cock as it plunges hard and fast into the otter male's rump, pleasure building in your body in the motion of the otters around you.";
				if cocks of player is greater than 1:
					if girl is not banned:
						say "Not to be left out, the females swim up, intent on your extra male meat.  The flexible otters wriggle into position, the females taking turns with your additional maleness.  The feel of their pussies around your cock is different from the male riding your cock, but both are equally enjoyable in their own ways.";
					otherwise:
						say "Noticing you have extra male meat, another male swims up, one to a cock. It becomes quite crowded as they all press in tight to work your cocks deep into their tight rears, but they seem up for the challenge as they pile in together to work at you and bleed you of every drop of cum you can produce.";
				wait for any key;
		say "Time is lost as the otters have their way with you. Frantic acts of filling and being filled eventually spill over to all members of the raft have their turn reaching their complete satisfaction, taking you along for the ride. By the time it is over, you are soaked in sweat and several other fluids, and are left on the sandy beach to recover, sore, but still buzzing with a wicked afterglow.";
		wait for any key;

[ [Otter loss] ]
To say Otter loss:
	say "Defeated, the group of otters backs away from you with sad expressions. '[one of]We just wanted to play.[or]Don[apostrophe]t be so stuck up. We could have so much fun together![or]Come back when you change your mind, we[apostrophe]ll save you some fish![at random]'";
	

to say otterstrike:
	if guy is banned and girl is banned and hermaphrodite is banned:
		say "The otters, shocked by your banning of all genders, join hands in a circle around you and yell 'WTF!'  This sonic attack is devastating, crushing your bones into jelly.";
		decrease the hp of player by 1000;
	if guy is banned and girl is not banned:
		say "[one of]An otter grabs you around the midsection, her pussy grinding against your hip as she hauls you underwater for a moment of panic.[or]An otter leaps from the water just to land on you, plunging you into the depths. You learn that it is as she as her slender breasts press against you even as you struggle for breath.[or]Two otters grab either of your hands and play tug o war with you, arguing over who gets to play first.[or]Even as you try to defend yourself, you feel something warm descend on your groin, lapping at you eagerly and unexpectedly. You squeak in surprise, but hands grab at you and pull you beneath the waves.[at random]";
	otherwise if girl is banned and guy is not banned:
		say "[one of]An otter grabs you around the midsection, his long cock poking between your cheeks as he hauls you underwater for a moment of panic.[or]An otter leaps from the water just to land on you, plunging you into the depths.  The eager male gropes and fondles your body even as you struggle for breath.[or]Two otters grab either of your hands and play tug o war with you, arguing over who gets to play first.[or]Even as you try to defend yourself, you feel something warm descend on your groin, lapping at you eagerly and unexpectedly. You squeak in surprise, but hands grab at you and pull you beneath the waves.[at random]";
	otherwise:
		say "[one of]An otter grabs you around the midsection, his long cock poking between your cheeks as he hauls you underwater for a moment of panic.[or]An otter leaps from the water just to land on you, plunging you into the depths. You learn that it is as she as her slender breasts press against you even as you struggle for breath.[or]Two otters grab either of your hands  and play tug o war with you, arguing over who gets to play first.[or]Even as you try to defend yourself, you feel something warm descend on your groin, lapping at you eagerly and unexpectedly. You squeak in surprise, but hands grab at you and pull you beneath the waves.[at random]";

to say otterdesc:
	choose row monster from table of random critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Male";
	say "Not one, but a group of playful looking otters. They spot you and move to intercept you swiftly, swimming all around you with their athletic forms rubbing amorously against your own. Your fingers can't help but brush against their aroused bodies in the rush before one grins at you, 'You want to play with us?'";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "sea otter"; [Name of your new Monster]
	now attack entry is "[otterstrike]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Otter loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Otter attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "[otterdesc]";[ Description of the creature when you encounter it.]
	now face entry is "blunt nose of an otter, with small round ears set over your cute face";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "sleek and athletic. Almost androgynous in a way, with the curves subsumed in the trim musculature of a born swimmer. Your hands and feet are webbed with flaps of skins between fingers and toes that are quite ticklish when touched by another.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]sleek pelted[or]smooth furred[or]waterproofed[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a thick rudder of a tail, [skin of player] and swaying lightly behind you. It could help a lot while swimming. ";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "otter";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your face reforms as you gain a short otterish snout and round [skin of player] ears."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is " you get the urge to stretch, reaching for the heavens as your body becomes slimmer and more streamlined. Your outspread fingers tickle fiercely as new flesh grows between each of them and short sharp claws sprout. Below, your feet become animal like paws, lifting partially from the ground even as your toes gain that same sensitive webbing."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "an oily sensation runs across your entire body, followed shortly by a dense layer of waterproof fur that coats your body perfectly."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a thick limb bursts from your back end, forcing you to lean back a moment as [skin of player] flesh covers it. You peek over your shoulder to see it slowly swaying, your sense of balance returning."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it tingles and quivers with renewed lust. The shaft turns a soft pink color as it develops bumps not seen on human members, oozing softly with excitement."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 16;					
	now per entry is 14;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 70;			[ How many HP has the monster got? ]
	now lev entry is 10;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 17;			[Amount of Damage monster Does when attacking.]
	now area entry is "Beach";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 6;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 2;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 6;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 60;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Fish";			[ Loot monster drops, ]
	now lootchance entry is 25;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname of player is "sea otter":
		if humanity of player is less than 10:
			if Otterconsent is 1:
				say "You return to the raft of otters that dominates your throats, throwing yourself into the water and swimming out into their eager grasps. Without further worry for the world, you live with them, fucking, being fucked, hunting for tasty fishes and clams. You find you have little complaint over your new, simple, life.";
			otherwise:
				say "You feel an overwhelming desire to enter water, but try to resist against it. You end up at the mall, shivering and cold. The rats take you inside, and feed you, but as soon as you spot their fountain, you dive in. You become something of a permanent fixture there, but they don't really seem to mind your presence. You become a sort of mascot for them, not to mention a desperation date whenever a rat is feeling particularly lonely.";
		otherwise:
			if Otterconsent is 1:
				say "As the rescue arrives, you direct the military back out to the beach. With eager waves, you coax your friends up and all get rescued together, despite some initial misgivings by your raft mates. In time, the otters grow accostomed to civilized living, mostly, working as life guards for a wide strip of beach. After hours, you fill the waves with the sounds of lust and love.";
			otherwise:
				say "You are taken back to civilization, but find that, as an otter, you have a base need to be around water. You secure a job working at a city pool, where your aquatic skills come in handy, for rescues and training. You become a swim instructor for the city and remain so for the rest of your days, eagerly pressing your smooth form through the water.";

			


[ Edit this to have the correct Name as wall]
Otter ends here.