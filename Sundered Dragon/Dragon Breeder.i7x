Dragon Breeder by Sundered Dragon begins here.
[Version .01 Dragon Breeder TF test phase]
"Adds an evolving draconic infection to the Flexible Survival game."
[Author's note: To any future writers, do not use this as a template for future creatures or stats. If you do, I hope Wahn yells at you and not me! Dovah Daddy out!]


Section 1 - Creature Responses

to say losetoDragonBreeder:
	say "Error 404: yiff not found.";

to say beattheDragonBreeder:
	say "Error 404: yiff not found.";

to say DragonBreederdesc:
	say "Error 404: yiff not found.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Dragon Breeder"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Dragon Breeder" to infections of OtherworldlyList;
	add "Dragon Breeder" to infections of TaurList;
	add "Dragon Breeder" to infections of FlightList;
	add "Dragon Breeder" to infections of FemaleList;
	add "Dragon Breeder" to infections of HermList;
	Add "Dragon Breeder" to infections of KnottedCockList;
	add "Dragon Breeder" to infections of TailList;
	add "Dragon Breeder" to infections of TailWeaponList;
	add "Dragon Breeder" to infections of ReptileList;
	add "Dragon Breeder" to infections of MythologicalList;
	add "Dragon Breeder" to infections of InternalCockList;
	add "Dragon Breeder" to infections of OviImpregnatorList;
	add "Dragon Breeder" to infections of FirebreathList;
	add "Dragon Breeder" to infections of SwimList;
	add "Dragon Breeder" to infections of AquaticList;
	now Name entry is "Dragon Breeder";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "";
	now defeated entry is "[beattheDragonBreeder]";
	now victory entry is "[losetoDragonBreeder]";
	now desc entry is "[DragonBreederdesc]";
	now face entry is "sleek and imposing. Your draconic visage has a distinct hydrodynamic bend, and is graced with four piercing, slitted, and glowing golden eyes. Your predatory jawline hosts rows of wickedly barbed alabaster fangs, a ponderously long bifurcated tongue, and is ringed by thick glossy scales. A set of black swept-back horns grows from the side of your head with a long sail growing down the length of your spine. In place of hair, a pair of long prehensile tendrils dangle from your scalp[if Energy of Galaxite >= 3] whose undersides are covered in powerful suction cups[end if]"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "a proud amphibious tauric build, seamlessly adapted to thrive in almost any environment. Your toned serpentine lower body is graced by long, shapely, digitigrade legs ending in webbed paws tipped by lengthy reflective talons and plush silky pads. Exotic and regal, your leviathan form imparts a sensuous slithering sway to your step that naturally draws the eye to your fecund hips [if player is herm]and the verdant slits of your hybrid sex[else if player is female]and puffy folds your reptilian slit[else if player is male]and your well-lubed tail pipe[else if player is Neuter]and your cloacal vent[end if]. Your upper body, though rather humanoid in build, still hosts a set of retractable membranes between your clawed digit and tight yet elastic midriff[if Energy of Galaxite >= 2]. Sprouting just below your waist are a pair of massive bat-like wings. Highly articulate, the many jointed appendages are just as dexterous as, if not more so in some regards, than your hands as their flexible ball-and socket joints can bend into any shape you desire. When not in use, you often tuck them tightly to your sides where they blend almost seamlessly with your lower half[end if]"; [ Body Description, format as "Your Body is [Body of Player]." ]
	now skin entry is "a two-toned pattern of [one of]azure[or]sapphire[or]cobalt[or]royal-navy-blue[or]aquamarine[at random] teardrop-shaped scales on your extremities with a rich patch of [one of]alabaster[or]nacre[or]creamy white[or]platinum white[at random] limina running down the length of your neck and lower half. Coated in a lustrous sheen of natural lubricants, [if Energy of Galaxite < 3]that serves to highlight your nascent[else if energy of Galaxite >= 3]that serve as the perfect amplifiers to the potent[end if] chromatophores lining your"; [ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have gorgeous egg-laying hips and tight, toned glutes. Growing from your tailbone is a [if intelligence of Galaxite is 0]girthy, dexterous, finned tail [else if intelligence of Galaxite is 1]exotic and malleable ovi slit [else if intelligence of Galaxite is 2]vivacious tail maw [end if]clad in lustrous [one of]azure[or]sapphire[or]cobalt[or]royal-navy-blue[or]aquamarine[at random] scales with an aesthetically pleasing streak of [one of]alabaster[or]nacre[or]creamy white[or]platinum white[at random] running along its underside."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "draconic cock ridged with enticing rows of supple bumps along your thick cum vein with a fat aquatic knot nestled at its base. During those rare moments of flaccidity, your [Cock size desc of Player] [one of]cock[or]dick[or]rod[or]tool[or]spire[at random] is kept perpetually wet and ready in the warm fold of your reptilian slit. Were it not for the lovely quartet of evenly-sized [one of]balls[or]nuts[or]cum tanks[or]baby batter banks[at random] coddled in the glossy scales of your sack, people might confuse you for a female. A notion you sometime take great joy in disabusing of once they catch sight of your"; [ Cock Description, format as "You have a 'size' (your text) cock."]
	now face change entry is "a proud rumble issues from your lips, as fathomless pressure blossoms along your jawline. Bones crackle and cartilage twists as your flesh is drawn out like supple clay as your face lengthens into a predatory draconic maw lined with rows of hardened, barbed, saber-like fangs swirling into existence. The pressure shifts to the edges of your skull as a set of tender lumps swell, pulling the changing flesh tight. Experimentally touching one, you can already feel the tissue part, heralding the reemergence of your horns and tendril hair. Strangely pleased, you idly run your tongue along your fangs['] predatory edges, delighted on some bestial level at the sensation of their serrated contour as your tongue bifurcates and lengthens, forming sharp fleshy forks. Your vision starts to crack, as your awareness is split between four skewed angles, but only briefly, as the seams soon melds, expanding your peripheral vision substantially."; [ Face change text, format as "Your face feels funny as [face change entry]." ]
	now body change entry is "verdant pulses of umbral lightning flicker across your growing form as your being twists and bends at the waist. Your body almost seems to writhe with the essence of change as two large powerful paws burst forth from your hips. Unbalanced, you start to fall only to have these new limbs catch you. Meanwhile, your lower half expands behind you as the lancets of shadowy energy crackle along your chaotic contouring figure like lights on a runway. Your spine lengths and takes on a vaguely serpentine build, as your legs reshape themselves into a proper digitigrade stance. You lovingly run your hands along the sleek toned curves of your lower half in abject delight. You watch as your arms begin to shift as well, seamlessly flowing into proper webbed, well-padded paws, tipped with scything reflective talons."; [ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "thick, glossy, teardrop-shaped scales flow across your being, bejeweling your body in a tough lamina of [one of]azure[or]sapphire[or]cobalt[or]royal-navy-blue[or]aquamarine[at random] plates coating your extremities, broken only by a supple patch of [one of]alabaster[or]nacre[or]creamy white[or]platinum white[at random] along your throat and underbelly. Enthralled by the spectacle of sleek interlocking plates gracing your [bodydesc of player] form, you languidly trace your fingers along the exotic surface of your dense toughened hide, only to have them come back slightly damp as a thin layer of sensuous, glistening, odorless oil spreads along your smooth silken body."; [ Skin change text, format as "Your skin feels funny as [skin change entry]." ]
	now ass change entry is "blissful heat roils about your waist as your hips flare and your pelvis widens by the moment. Staggered by the sudden shift in your center of gravity, you almost trip over yourself, only to right yourself at the last second as a strange weight blossoms along the tip of your tailbone. Hurriedly glancing back at your rear, you eyes are greeted by a violent eruption from a misshapen mass growing on your ass. Pressure just on the edge of agony streaks across your sensitive liminal nerves as the tissue rapidly unfurls like vitae-soaked rose petals as your [if intelligence of Galaxite is 0]finned tail unfurls out behind you[else if intelligence of Galaxite is 1]tail cunt reemerges in a rush of sensual delight[else if intelligence of Galaxite is 2]voracious tail maw flares into being[end if]. Rather than feeling any discomfort though, relief floods your mind as the newly forged limb fully coalesces. Chuffed at the sight and the extra balance it affords, you can't resist giving it a playful shake, delighting in both the [if intelligence of Galaxite is 0]utility of your aquatic tail[else if intelligence of Galaxite is 1]fertile potential of your ovi passage[else if intelligence of Galaxite is 2]predatory possibilities of your alien accent[end if] and the pleasant bounce of your dense breedable flanks."; [ Ass/tail change text, format as "Your ass feels funny as [ass change entry]." ]
	now cock change entry is "your [one of]cock[or]dick[or]rod[or]tool[or]spire[at random] sinks into a subtle slit forming on your crotch. Alarm flashes through your mind, though only briefly as the warm well-lubed walls of your cock cave gently caressing your shifting [Cock Size desc of Player] [one of]cock[or]dick[or]rod[or]tool[or]spire[at random] stills any worried thoughts. The tight welcoming touch of your slit pairs like the finest of intoxicants as you dip your fingers between the tight lips of your reptilian vent and diligently caress your changing [one of]cock[or]dick[or]rod[or]tool[or]spire[at random] as the respective tissue swells in its succulent housing. A pleased predatory growl fetters from your lips as tender ridges bloom along your shaft as the delectable taut swollen base of your [one of]cock[or]dick[or]rod[or]tool[or]spire[at random] forms a plump knot. Overjoyed at the raw tactile pleasure of your changes, you hardly notice your balls creak with virile excess as the doughy orbs swell and divide into four evenly sized balls nestled neatly in velvety embraces of your scalie sack"; [ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 25;
	now dex entry is 25;
	now sta entry is 25;
	now per entry is 15;
	now int entry is 15;
	now cha entry is 15;
	now sex entry is "Both"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 1; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 1; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 1; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 24; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 7; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 6; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 6; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 20;
	now Cunt Tightness entry is 20;
	now SeductionImmune entry is true;
	now libido entry is 60; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "Dragon Breeder milk";
	now CumItem entry is "Dragon Breeder cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is ""; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]alluring[or]athletic[or]predatory[or]powerful[or]curvaceous[or]Tauric[or]dominant[or]reptilian[or]draconic[or]regal[at random]";
	now type entry is "Draconic"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true;
	now resbypass entry is true;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;



Dragon Breeder ends here.
