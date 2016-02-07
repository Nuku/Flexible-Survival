Version 2 of Mismatched Chimera for FS by Stripes begins here.
[Version 2.4 - Player loss scene tree tweaked]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds a Mismatched Chimera creature to Flexible Survival's Wandering Monsters table with impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]

bodyselector is a text that varies.
headdata is a text that varies.
larmdata is a text that varies.
rarmdata is a text that varies.
torsodata is a text that varies.
cockdata is a text that varies.
llegdata is a text that varies.
rlegdata is a text that varies.
breastdata is a number that varies.

when play begins:
	add { "Mismatched Chimera" } to infections of furry;
	add { "Mismatched Chimera" } to infections of hermaphrodite;


to say mischimdesc:
	setmongender 5;		[creature is herm]
	say "[mixnmatch]     You have seen a variety of strange creatures and hominids in the city, but this is definitely one of the strangest.  Somehow, it is a strange, cobbled-together mish-mash of other creatures.  The body parts don't match and you can see stitchmarks in several places where they were grafted together.  Several other spots have scars from what may have been medical procedures or experiments.";
	say "     This unfortunate creature has the head of a [headdata] sewn onto its [torsodata] body.  Its body has several smaller mismatched patches and scars.  The strange chimera's right arm and shoulder are that of a [rarmdata], ending in a clawed human hand while its left forearm has that of a [larmdata] grafted on.  Its left leg is fully that of a [llegdata] attached on at the hip while its right leg is that of a [rlegdata] from the knee down.  Stitched to its chest are [breastdata] mismatched breasts while a [cockdata] dick hangs between its legs over a large, stitched-up scrotum.  It looks at you with its mismatched, animal eyes and growls lustfully before attacking.";
	choose row monster from the table of random critters;
	if hardmode is false and ( lev entry is 8 or lev entry is 9 ) and level of player < 10:
		say "     This particular hybrid seems especially powerful and dangerous.  Best be careful.";

to say mixnmatch:
	now bodyselector is "ready";
	say "[randombodypart]";
	now headdata is bodyselector;
	say "[randombodypart]";
	now larmdata is bodyselector;
	say "[randombodypart]";
	now rarmdata is bodyselector;
	say "[randombodypart]";
	now torsodata is bodyselector;
	say "[randombodypart]";
	now cockdata is bodyselector;
	say "[randombodypart]";
	now llegdata is bodyselector;
	say "[randombodypart]";
	now rlegdata is bodyselector;
	let T be a random number between one and three;
	now breastdata is ( T times 2 );
	choose row monster from the table of random critters;
	let qq be a random number between 5 and 9;
	let zz be a random number between 1 and 15;
	if hardmode is true and level of player > 7:		[Hard Mode Version!]
		increase qq by level of player - 7;
		now hp entry is 27 + ( ( 5 * qq ) + zz + a random number between 0 and qq );
		now monsterhp is hp entry;
		now lev entry is qq;
		if lev entry > 9:
			now wdam entry is 9 + ( ( qq * 2 ) / 7 );
		otherwise:
			now wdam entry is ( ( ( qq - 1 ) * 3 ) / 2 );
		now dex entry is 15 + ( qq / 6 ) + ( square root of ( qq + 8 ) );		[faster initial growth, but slows down more]
	otherwise:								[Normal Play Version!]
		now hp entry is ( ( 8 times qq ) plus zz );
		now monsterhp is hp entry;
		now wdam entry is ( ( ( qq minus 1 ) times 3 ) divided by 2 );
		now lev entry is qq;
		now dex entry is ( ( ( ( qq minus 1 ) times 4 ) divided by 3 ) plus 10 );
	[testing values achieved]
[	say "Lvl is [qq].  Variable is [zz].";
	say "HP is [hp entry].";
	say "Dmg is [wdam entry].  Dex is [dex entry].[line break]";		]


to say randombodypart:
	let T be a random number between 1 and 20;
	if T is 1:
		now bodyselector is "husky";
	if T is 2:
		now bodyselector is "hawk";
	if T is 3:
		now bodyselector is "panther";
	if T is 4:
		now bodyselector is "horse";
	if T is 5:
		now bodyselector is "doberman";
	if T is 6:
		now bodyselector is "gazelle";
	if T is 7:
		now bodyselector is "cheetah";
	if T is 8:
		now bodyselector is "kangaroo";
	if T is 9:
		now bodyselector is "skunk";
	if T is 10:
		now bodyselector is "bull";
	if T is 11:
		now bodyselector is "zebra";
	if T is 12:
		now bodyselector is "seal";
	if T is 13:
		now bodyselector is "tiger";
	if T is 14:
		now bodyselector is "hyena";
	if T is 15:
		now bodyselector is "wolf";
	if T is 16:
		now bodyselector is "rabbit";
	if T is 17:
		now bodyselector is "mouse";
	if T is 18:
		now bodyselector is "pig";
	if T is 19:
		now bodyselector is "lizard";
	if T is 20:
		now bodyselector is "bat";


to say losetomischim:
	[reset creature stats for next encounter]
	choose row monster from the table of random critters;
	now dex entry is 15;		[ reset dexterity for random infection ]
	now lev entry is 6;		[ reset level for random encounter availability ]
	if cunts of player > 0 and a random chance of 1 in 2 succeeds:
		say "     The hybrid creature pushes you down onto a nearby hospital bed, bending you over it.  With a little fumbling with your remaining clothes, it gets itself lined up with your pussy and mounts you with a throaty purr.  The creature's [headdata] muzzle nips along your neck as it thrusts its [cockdata] cock into you again and again with increasing vigour.  The chimera's heavy ballsac feels strange as it slaps against you again and again, quite full and heavy.";
		say "     You soon realize that it has at least four balls in there of various size, probably from a variety of creatures like the rest of its body.  This leads you to the realization that the creature could contain almost any seed or strain of infection to alter you.  You struggle for a moment, but the creature keeps you pinned with its clawed hand and [larmdata] paw.  The pleasure of its mating starts to get to you and you find yourself growing less concerned about that and even more and more turned on by it as the strange creature's myriad scents excite you.  The idea of it changing you in random ways or siring almost anything inside you arouses you greatly.  As you push back into its final thrusts, you both moan in pleasure as you feel its hot seed, thick and plentiful from its many balls being shot deep into your womb.";
		say "[randomimpreg]";
	otherwise if anallevel is not 1 and ( cunts of player is 0 or anallevel is 3 ) and a random chance of anallevel in 5 succeeds:
		say "     The hybrid creature pushes you down onto a nearby hospital bed, bending you over it.  With a little fumbling with your remaining clothes, it gets itself lined up with your anal ring and mounts you with a throaty purr.  The creature's [headdata] muzzle nips along your neck as it thrusts its [cockdata] cock into you again and again with increasing vigour.  The chimera's heavy ballsac feels strange as it slaps against you again and again, quite full and heavy.";
		say "     You soon realize that it has at least four balls in there of various size, probably from a variety of creatures like the rest of its body.  This leads you to the realization that the creature could contain almost any seed or strain of infection to alter you.  You struggle for a moment, but the creature keeps you pinned with its clawed hand and [larmdata] paw.  The pleasure of its mating starts to get to you and you find yourself growing less concerned about that and even more and more turned on by it as the strange creature's myriad scents excite you.  The idea of it changing you in random ways ";
		if "MPreg" is listed in feats of player:
			say "or siring almost anything inside you ";
		say "arouses you greatly.  As you push back into its final thrusts, you both moan in pleasure as you feel its hot seed, thick and plentiful from its many balls being shot deep into your bowels.";
		if "MPreg" is listed in feats of player, say "[randomimpreg]";
	otherwise:
		say "     The hybrid creature, quite aroused by its workout and victory, pushes you to your knees before it.  It presses its [name entry] cock to your face and into your mouth.  It moans softly and strokes your head, coaxing you to lick and suck it.  Its arousing scent, such a strong and virile mix, excites you and you comply willingly enough.  It starts to thrust into you, holding your head steady with its clawed hand and [larmdata] paw while pumping its 8 inch cock into your eager mouth.  Its precum leaks onto your tongue, thick with an array of arousing flavours.";
		say "     You slide a hand up to fondle its large, sewn-together ballsac and find it very full and heavy.  As you fondle it, you come to realize that the heavy sac contains at least four different balls of various sizes, probably from a variety of creatures like the rest of its body.  You soon realize as well that this means it could carry almost any strain of the infection and change you in unpredictable ways.  You struggle for a moment, but the creature keeps you pinned with its strong grip and soon its mix of precum has done its job, filling you with lust and hunger for the chimera's mix of seed.  The idea starts to fill you with excitement even.  You start to picture yourself changing in random ways while these creatures have their way with you again and again.";
		say "     You moan in delight at the creature growls in climax, pumping a hot, thick medley of cum into your mouth and down your throat.  You swallow down as much as you can of its impressive load, then sag to the ground as it releases you.  Sated for now, the mismatched hybrid wanders off, leaving you to the infection's changes.";
	weakrandominfect;
	increase monster by 1;
	choose row monster from table of random critters;
	while there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from table of random critters;


to say beatthemischim:
	[reset creature stats for next encounter]
	choose row monster from the table of random critters;
	now dex entry is 15;		[ reset dexterity for random infection ]
	now lev entry is 6;		[ reset level for random encounter availability ]
	say "     You manage to defeat the strange, hybrid creature, driving it off.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
   Choose a blank row from Table of random critters;
   now name entry is "Mismatched Chimera"; [Name of your new Monster]
   now attack entry is "[one of]The mismatched hybrid strikes you with its [larmdata] fist![or]The strange chimera wraps its mismatched arms around you and squeezes you with a powerful bearhug![or]The disturbing creature manages to bite your arm with its [headdata] head![or]The vicious creature slashes at you with its clawed right hand, leaving bloody gashes![or]The beast charges at you, swinging a volley of wild punches and slashes![or]The angry creature grabs your arm bites your shoulder with its [headdata] mouth![or]The fractured beast growls and kicks you with its [llegdata]![at random]"; [Text used when the monster makes an Attack]
   now defeated entry is "[beatthemischim]"; [ Text or say command used when Monster is defeated.]
   now victory entry is "[losetomischim]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
   now desc entry is "[mischimdesc]"; [ Description of the creature when you encounter it.]
   now face entry is "canine, rabbit-eared head"; [ Face description, format as the text "Your face is (your text)."]
   now body entry is "feline in form with bony spines protruding from your back"; [ Body Description, format as the text "Your Body is (your text)."]
   now skin entry is "scales over your body and white fur over your arms and legs to cover your"; [ skin Description, format as the text "your body is covered in (your text) skin."]
   now tail entry is "You have a slimy, suckered, octopus tentacle for a tail."; [ Tail description, write a whole Sentence or leave blank. ] 
   now cock entry is "equine member with a knot at the base of your"; [ Cock Description, format as you have a 'size' (your text) cock]
   now face change entry is "it becomes that of a dog, but with long rabbit ears"; [ face change text. format as "Your face feels funny as (your text)." ]
   now body change entry is "it becomes that of a humanoid feline with saurian back spines"; [ body change text. format as "Your body feels funny as (your text)." ]
   now skin change entry is "it is covered in green scales over your body, but long white fur over your limbs"; [ skin change text. format as "Your skin feels funny as (your text)." ]
   now ass change entry is "a wet appendage starts to grow from it, shaping itself into a octopod's tentacle.  It wiggles around behind you, largely beyond your control"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
   now cock change entry is "it becomes equine in shape, but with a vulpine knot at its base"; [ cock change text. format as "Your cock feels funny as (your text)." ]
   now str entry is 15;
   now dex entry is 15;
   now sta entry is 15;
   now per entry is 15;
   now int entry is 15;
   now cha entry is 15;
   now sex entry is "Both";		[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
   now hp entry is 60;			[ How many HP has the monster got? ]
   now lev entry is 6;			[ Level of the Monster, you get this much xp if you win, or this much xp halved if you loose ]
   now wdam entry is 8;			[Amount of Damage monster Does when attacking.]
   now area entry is "Hospital";	[ Location of monster, in this case the City Hospital]
   now cocks entry is 1;		[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
   now cock length entry is 12;		[ Length infection will make cock grow to if cocks]
   now cock width entry is 5;		[ Size of balls apparently ;) sneaky Nuku]
   now breasts entry is 6;		[ Number of Breasts infection will give you. ]
   now breast size entry is 3;		[Size of breasts infection will try to attain ]
   now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
   now cunts entry is 1;		[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
   now cunt length entry is 12;		[ Length of female sex  infection will attempt to give you. ]
   now cunt width entry is 5;		[ Width of female sex  infection will try and give you ]
   now libido entry is 60;		[ Set to zero in this monster to control elsewhere ]
   now loot entry is "";		[ Dropped item.  Key will be used later ]
   now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
   [ These represent the new additions to the table of random critters ]
   now scale entry is 3;		[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
   now body descriptor entry is "[one of]mismatched[or]patchwork[at random]";
   now type entry is "mutant";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
   now magic entry is false;		[ Is this a magic creature? true/false (normally false) ]
   now resbypass entry is false;	[ Bypasses Researcher bonus? true/false (almost invariably false) ]
   now non-infectious entry is true;	[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
   blank out the nocturnal entry;	[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
   now altcombat entry is "default";	[ Row used to designate any special combat features, "default" for standard combat. ]


when play ends:
	if bodyname of player is "Mismatched Chimera":
		if humanity of player is less than 10:
			say "     As your identity collapses, you are left with your fractured mind and instincts.  Lacking any true focus to your instincts, you wander the city in a haze.  You pass from one territory group to another, mating with the creatures there, but never transforming further, remaining a mismatched hodgepodge of creatures.  Several try to keep you as a mate or prisoner, but you always escape eventually and move on.  Your existence is aimless and with little conscious thought, but filled with sex of endless variety from all those you meet.";
			if "Sterile" is not listed in feats of player and cunts of player > 0:
				say "     Your womb gives birth of a wide array of hybrid children over the years.  Some are taken and assimilated into other groups, but some go on to form new species in their own right, adding to the variety of lovers for you to mate with over the centuries of your strangely unending life.  You are one of the few constants in this ever-changing world and exist as an eternal source for much of this new life which you bear witness to until the end of time.";
			otherwise if cocks of player > 0:
				say "     You sire a wide array of hybrid children over the years.  Some are taken and assimilated into other groups, but some go on to form new species in their own right, adding to the variety of lovers for you to mate with over the centuries of your strangely unending life.  You are one of the few constants in this ever-changing world and exist as an eternal source for much of this new life which you bear witness to until the end of time.";
			otherwise:
				say "     You watch time march on over the centuries, taking lovers from the various new species and races that continually form from the intermingling of the infected groups.  They rise and fall around you, adding to the variety of lovers for you to mate with over the centuries of your strangely unending life.  You are one of the few constants in this ever-changing world and exist as an eternal witness to the variety of life until the end of time.";
		otherwise:
			say "     After your rescue from the city, you are left aimless and take frequently to wandering the world for extended periods.  Your altered, hybrid body makes you stand out always, but you can always seem to find companionship for a time, perhaps drawn in by the medley of pheromones you emit.  You take on temporary dalliances of all kinds on these journeys, loving to experience the endless variety of lovers this world can provide to you.  You are never changed by these lovers, no matter how infected or mindless these may be.";
			if "Sterile" is not listed in feats of player and cunts of player > 0:
				say "     Your womb gives birth to a wide array of hybrid children over the years.  Some, you are pleased to see, give rise to new species in their own right, adding to the variety of lovers for you to mate with over the centuries of your strangely unending life.  Even as your old friends and allies pass on, you continue your eternal drifting across the globe.  You are always drifting discretely through the world in your search to experience the ever-changing array of life rising and falling on this planet.  You are one of the few constants in this ever-changing world and exist as an eternal source for much of this new life which you bear witness to until the end of time.";
			otherwise if cocks of player > 0:
				say "     You sire a wide array of hybrid children over the years.  Some, you are pleased to see, give rise to new species in their own right, adding to the variety of lovers for you to mate with over the centuries of your strangely unending life.  Even as your old friends and allies pass on, you continue your eternal drifting across the globe.  You are always drifting discretely through the world in your search to experience the ever-changing array of life rising and falling on this planet.  You are one of the few constants in this ever-changing world and exist as an eternal source for much of this new life which you bear witness to until the end of time.";
			otherwise:
				say "     You watch time march on over the centuries, taking on new lovers wherever you go, enjoying their company for a time before leaving and continuing on.  The various species and races of the infected groups rise and fall over time, adding to the variety of lovers for you to mate with over the centuries of your strangely unending life.  Even as your old friends and allies pass on, you continue your eternal drifting across the globe.  You are always drifting discretely through the world in your search to experience the ever-changing array of life rising and falling on this planet.  You are one of the few constants in this ever-changing world and exist as an eternal source for much of this new life which you bear witness to until the end of time.";


[ Edit this to have the correct Name as well]
Mismatched Chimera for FS ends here.
