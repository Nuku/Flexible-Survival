Version 1 of Mismatched Chimera for FS by Stripes begins here.
[Version 1]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds a Mismatched Chimera creature to Flexible Survivals Wandering Monsters table with impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ]

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


to say losetomischim:
	[reset creature stats for next encounter]
	choose row monster from the table of random critters;
	now dex entry is 15;		[ reset dexterity for random infection ]
	now lev entry is 6;		[ reset level for random encounter availability ]
	if cunts of player > 0:
		say "     The hybrid creature pushes you down onto a nearby hospital bed, bending you over it.  With a little fumbling with your remaining clothes, it gets itself lined up with your pussy and mounts you with a throaty purr.  The creature's [headdata] muzzle nips along your neck as it thrusts its [cockdata] cock into you again and again with increasing vigour.  The chimera's heavy ballsac feels strange as it slaps against you again and again, quite full and heavy.";
		say "     You soon realize that it has at least four balls in there of various size, probably from a variety of creatures like the rest of its body.  This leads you to the realization that the creature could contain almost any seed or strain of infection to alter you.  You struggle for a moment, but the creature keeps you pinned with its clawed hand and [larmdata] paw.  The pleasure of its mating starts to get to you and you find yourself growing less concerned about that and even more and more turned on by it as the strange creature's myriad scents excite you.  The idea of it changing you in random ways or siring almost anything inside you arouses you greatly.  As you push back into its final thrusts, you both moan in pleasure as you feel its hot seed, thick and plentiful from its many balls being shot deep into your womb.";
		[purely random impregnation]
		sort table of random critters in random order;
		now monster is 1;
		say "     [Impregchance]";
	otherwise:
		say "     The hybrid creature, quite aroused by its workout and victory, pushes you to your knees before it.  It presses its [name entry] cock to your face and into your mouth.  It moans softly and strokes your head, coaxing you to lick and suck it.  It's arousing scent, such a strong and virile mix, excites you and you comply willingly enough.  It starts to thrust into you, holding your head steady with its clawed hand and [larmdata] paw while pumping its 8 inch cock into your eager mouth.  Its precum leaks onto your tongue, thick with an array of arousing flavours.";
		say "     You slide a hand up to fondle its large, sewn-together ballsac and find it very full and heavy.  As you fondle it, you come to realize that the heavy sac contains at least four different balls of various sizes, probably from a variety of creatures like the rest of its body.  You soon realize as well that this means it could carry almost any strain of the infection and change you in unpredictable ways.  You struggle for a moment, but the creature keeps you pinned with its strong grip and soon its mix of precum has done its job, filling you with lust and hunger for the chimera's mix of seed.  The idea starts to fill you with excitement even.  You start to picture yourself changing in random ways while these creatures have their way with you again and again.";
		say "     You moan in delight at the creature growls in climax, pumping a hot, thick medley of cum into your mouth and down your throat.  You swallow down as much as you can of its impressive load, then sag to the ground as it releases you.  Sated for now, the mismatched hybrid wanders off, leaving you to the infection's changes.";
	[purely random infection]
	sort table of random critters in random order;
	now monster is 1;
	infect;
	sort table of random critters in random order;
	now monster is 1;


to say beatthemischim:
	[reset creature stats for next encounter]
	choose row monster from the table of random critters;
	now dex entry is 15;		[ reset dexterity for random infection ]
	now lev entry is 6;		[ reset level for random encounter availability ]
	say "     You manage to defeat the strange, hybrid creature, driving it off.";


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


to say mischimdesc:
	say "[line break][mixnmatch]     You have seen a variety of strange creatures and hominids in the city, but this is definitely one of the strangest.  Somehow, it is a strange, cobbled-together mish-mash of other creatures.  The body parts don't match and you can see stitchmarks in several places where they were grafted together.  Several other spots have scars from what may have been medical procedures or experiments.";
	say "     This unfortunate creature has the head of a [headdata] sewn onto its [torsodata] body.  Its body has several smaller mismatched patches and scars.  The strange chimera's right arm and shoulder are that of a [rarmdata], ending in a clawed human hand while its left forearm has that of a [larmdata] grafted on.  Its left leg is fully that of a [llegdata] attached on at the hip while its right leg is that of a [rlegdata] from the knee down.  Stitched to its chest are [breastdata] mismatched breasts while a [cockdata] dick hangs between its legs over a large, stitched-up scrotum.  It looks at you with its mismatched, animal eyes and growls lustfully before attacking.";
	choose row monster from the table of random critters;
	if lev entry is 8 or lev entry is 9:
		say "     This particular hybrid seems especially powerful and dangerous.  Best be careful.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
   Choose a blank row from Table of random critters;
   now name entry is "Mismatched Chimera"; [Name of your new Monster]
   now attack entry is "[one of]The mismatched hybrid strikes you with its [larmdata] fist![or]The strange chimera wraps its mismatched arms around you and squeezes you with a powerful bearhug![or]The disturbing creature manages to bite your arm with its [headdata] head![or]The vicious creature slashes at you with its clawed right hand, leaving bloody gashes![or]Charges at you, swinging a volley of wild punches and slashes![or]The angry creature grabs your arm bites your shoulder with its [headdata] mouth![or]The fractured beast growls and kicks you with its [llegdata]![at random]"; [Text used when the monster makes an Attack]
   now defeated entry is "[beatthemischim]"; [ Text or say command used when Monster is defeated.]
   now victory entry is "[losetomischim]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
   now desc entry is "[mischimdesc]"; [ Description of the creature when you encounter it.]
   now face entry is "canine"; [ Face description, format as the text "You have a (your text) face."]
   now body entry is "feline"; [ Body Description, format as the text "Your Body is (your text)"]
   now skin entry is "scaled"; [ skin Description, format as the text "You have (your text) skin"]
   now tail entry is "You have a slimy, suckered, octopus tentacle for a tail."; [ Tail description, write a whole Sentence or leave blank. ] 
   now cock entry is "vulpine"; [ Cock Description, format as you have a 'size' (your text) cock]
   now face change entry is "it becomes that of a dog."; [ face change text. format as "Your face feels funny as (your text)" ]
   now body change entry is "it becomes that of a humanoid feline."; [ body change text. format as "Your body feels funny as (your text)." ]
   now skin change entry is "it is covered in green scales."; [ skin change text. format as "Your skin feels funny as (your text)." ]
   now ass change entry is "a wet appendage starts to grow from it, shaping itself into a octopod's tentacle.  It wiggles around behind you, largely beyond your control."; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
   now cock change entry is "it becomes vulpine in shape"; [ cock change text. format as "Your cock feels funny as (your text)." ]
   now str entry is 15;
   now dex entry is 15;
   now sta entry is 15;
   now per entry is 15;
   now int entry is 15;
   now cha entry is 15;
   now sex entry is "Both";     [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
   now hp entry is 60;            [ How many HP has the monster got? ]
   now lev entry is 6;            [ Level of the Monster, you get this much xp if you win, or this much xp halved if you loose ]
   now wdam entry is 8;            [Amount of Damage monster Does when attacking.]
   now area entry is "Hospital";    [ Location of monster, in this case the City Hospital]
   now cocks entry is 1;            [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
   now cock length entry is 12;        [ Length infection will make cock grow to if cocks]
   now cock width entry is 5;        [ Size of balls apparently ;) sneaky Nuku]
   now breasts entry is 6;            [ Number of Breasts infection will give you. ]
   now breast size entry is 3;        [Size of breasts infection will try to attain ]
   now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
   now cunts entry is 1;            [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
   now cunt length entry is 12;        [ Length of female sex  infection will attempt to give you. ]
   now cunt width entry is 5;        [ Width of female sex  infection will try and give you ]
   now libido entry is 75;            [ Set to zero in this monster to control elsewhere ]
   now loot entry is "";            [ Dropped item.  Key will be used later ]
   now lootchance entry is 0;        [ Chance of loot dropping 0-100 ]


when play ends:
	if bodyname of player is "Mismatched Chimera":
		if humanity of player is less than 10:
			say "     Succumbed as mismatched chimera.";
		otherwise:
			say "     Survive as mismatched chimera.";



[ Edit this to have the correct Name as well]
Mismatched Chimera for FS ends here.