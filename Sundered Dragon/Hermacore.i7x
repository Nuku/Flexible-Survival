Hermacore by Sundered Dragon begins here.
[Version .01 Hermacore TF test phase]
"Adds a truly monstrous infection to the Flexible Survival game."
[Author's note: To any future writers, do not use this as template for future creatures or stats. If you do, I hope Wahn yells at you and not me! Big Derg out!]
[Lore for the Lore Throne, and Fluff for the Fluff god! The Hermacore and by extension the Tainted Blade is essential a curse (the jujutsu kaisen and Chainsaw Man kind not the western kind) created by bathing blade in death and human suffering during WWI. Drake's family were trench clearers, named hell-fighter or Black-rattlers by the central power and the Men-of-Bronze by the allies. After the outbreak, Drake took up the blade, purifying dozen of creatures, most of them demons or fantasy monster.]
[By the time the PC gets to it, the Blade's kill count is sitting around 99 human and 99 monsters. After eating Mx, who was at this point an unstable amalgam of human, monster, and Void energies, the blade's curse full metastasize as drank in Mx's suffering and PC own dark urges. The result is fledgling Daemon that feeds on the Player voracious tendencies. In theory, the PC can nourish and bound with the blade to gain more predatory content and boons. However, should they choose sever themselves from it will come a huge cost of stats, the lives of two NPCs they can recruit.]

Section 1 - Creature Responses

to say losetoHermacore:
	say "Error 404: yiff not found.";

to say beattheHermacore:
	say "Error 404: yiff not found.";

to say Hermacoredesc:
	say "Error 404: yiff not found.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Hermacore"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Hermacore" to infections of FelineList;
	add "Hermacore" to infections of FurryList;
	add "Hermacore" to infections of AvianList;
	add "Hermacore" to infections of AvianpredList;
	add "Hermacore" to infections of hybridList;
	add "Hermacore" to infections of DemonList;
	add "Hermacore" to infections of OtherworldlyList;
	add "Hermacore" to infections of BipedalList;
	add "Hermacore" to infections of FlightList;
	add "Hermacore" to infections of FemaleList;
	add "Hermacore" to infections of HermList;
	add "Hermacore" to infections of BarbedCockList;
	add "Hermacore" to infections of SheathedCockList;
	Add "Hermacore" to infections of KnottedCockList;
	Add "Hermacore" to infections of TaperedCockList;
	add "Hermacore" to infections of TailList;
	add "Hermacore" to infections of TailWeaponList;
	now Name entry is "Hermacore";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "";
	now defeated entry is "[beattheHermacore]";
	now victory entry is "[losetoHermacore]";
	now desc entry is "[Hermacoredesc]";
	now face entry is "proud and haughty with a noble leonine muzzle. Atop of your head are a pair of beautiful saucer-shaped ears, ringed by a set of [one of]glossy[or]glassy smooth[or]polished[at random] jet-black ram horns tipped with sharp golden points. Coiling about your neck is a rich dense back mane that terminates in cute tuft of fur nestled on your collar bone"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "possessive of a distinct imposing Amazonian build, perfect for catching and subduing prey. Your toned arms are a peerless blend of sapien and feline, wielding long [one of]opalescent[or]pearlescent[or]luminescent[at random] sickled-claws and supple black pads. While your digitigrade legs are host to large powerful paws and capped with a single bone spike on your heels that imparts an [one of]enticing[or]enthralling[or]alluring[at random] sashay to your every step. Sprouting from shoulder blades are a pair of large feathery alabaster wings, rather pleasing to the touch, you find yourself wrapping them about yourself like a [one of]cloak[or]robe[at random]";
	now skin entry is "a regal silky pelt of [one of]vermilion[or]sanguine[or]ruby-red[or]blood-red[or]crimson[at random] fur that covers your pale elastic"; [ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a pair of wide [one of]gropable[or]breedable[or]birthing[at random] hips and an impressively thicc ass. Growing from your tailbone is a lengthy prehensile scorpion tail clad in sleek [one of]ebony[or]jet[or]black[or]umbral[at random] chitin. Much like the creature you inherited it from, your stinger drips with a potent lust inducing toxins.";
	now cock entry is "barbed feline cock with a plump bitch-breaking knot at that base. When not in use, your [Cock size desc of Player] [one of]cock[or]dick[or]rod[or]tool[or]spire[at random] rests comfortably in a lushy meaty sheath. Beneath which is a quartet of four evenly sized balls wrapping in supple pillowy sack that neatly compliments your beastly";
	now face change entry is "reality ripples and distorts about you. A sudden pressure builds along your jawline as your face seems to flow outwards like it were made of impossibly malleable clay. As your face is rapidly reshaped into a predatory boxy leonine muzzle, ringed by an imperial mane of thick downy black fur. Your ears shift to the top of your head where they grow into round saucer-shapes that seem to twitch with a curious otherworldly energy. They are swiftly joined by a set of large bumps blossoming into being along the roof of your skull that quickly split open, revealing a sizeable pair of glossy boney black horns bejeweled with lustrous golden points that coil under your ears";
	now body change entry is "your being thrums with raw untamed power as your form grows larger and more beastly Amazonian bend by the second. You can't help but lose a deep catty purr as any traces of excess fat or extraneous tissue melts away revealing a tempestuous imposing core with svelte washboard abs and graceful hourglass waist. Your arms almost sizzle with the essence of change coursing through them as they reshape themselves into an efficient blend of human and felidae traits, that end in wicked sickled ivory talons. While your leg shifts into proper muscular digitigrade stance as your feet swell and coalesce into large powerful paws, neatly balanced by a lone bone stiletto-like spur on your heel that imbues your every step with graceful eye-catching sashay. The skin on your back folds out into a pair of large feathery white alabaster wings"; [ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "a sea of [one of]silky smooth[or]softer-than-satin[or]velvety[at random] [one of]vermilion[or]sanguine[or]ruby-red[or]blood-red[or]crimson[at random] fur spreads across your core, slowly coating you in its warm armored tactile embrace";
	now ass change entry is "lancets of chaotic energy roil about your hips as they widen outwards, gaining shapely fecund curves and tender layer of maternal padding. It then begins to pool about your tailbone, as a thick yet unerringly smooth patch of [one of]ebony[or]jet[or]black[or]umbral[at random] chitin bulges out like some strange alien cyst, as your backside shifts and contorts to better accommodate the new exotic muscle and glands forming within you. Pressure builds along some imperceptible seam as the thing splits open with an audible pop, as an insectoid stinger bursts forth. Though it initial feels cold and deaden to the touch, with each passing moment, you can sense light flickers of sensation fluttering across is sizeable length as your altered neurons slowly harmonizes with this new limb";
	now cock change entry is "it appears to retract into itself as warm dense sheath swirls about your elated [one of]cock[or]dick[or]rod[or]tool[or]spire[at random]. Your [one of]cock[or]dick[or]rod[or]tool[or]spire[at random] thins ever-so-slightly as the coddled tissue takes on a subtle artful taper, and series of sensitive tender barbs rifle along your pillowy cock-wrapper. Nearly cooing with delight, you can't help but give your supple dick-sleeve a light squeeze, just to feel the heady interplay of your fleshy spines strain against the moist virgin tissue. A lovely heat builds at the base of your shifting anatomy as a dense fat knot forms along the hilt of your [Cock Size desc of Player][one of]cock[or]dick[or]rod[or]tool[or]spire[at random]. While your balls groan with activity as the lush orbs swell and divide into four evenly sized balls"; [ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 21;
	now dex entry is 19;
	now sta entry is 20;
	now per entry is 20;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Both"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 1; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 1; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 1; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 24; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 7; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 6; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 6; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 6; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 20;
	now Cunt Tightness entry is 20;
	now SeductionImmune entry is false;
	now libido entry is 60; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "Hermacore Cream";
	now CumItem entry is "Hermacore Cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is ""; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]alluring[or]athletic[or]predatory[or]powerful[or]curvaceous[or]hybrid[or]dominant[at random]";
	now type entry is "hybrid"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is true;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;


Section 3 - Heat Table

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "Hermacore";
	now heat cycle entry is 7;
	now heat duration entry is 3;
	now trigger text entry is "Mewling needily, [one of]your cunt suddenly grows hot to the touch as your plush pussy lips throb with sensual pulses of fecund desire, becoming wetter by the second. A strange coiling almost catty scent nips at your nose, as your body's hybrid pheromones fill the air around you, signaling your receptive state to the wider world. Guess you've gone into heat, you muse, placing a hand on your poor empty tummy, you have to stifle a desperate yowl as your belly puffs out ever-so-slightly in preparation for its latest litter[or]you feel a sudden decadent heat simmering along the flush petals of your [Cunt Size desc of Player] muff. A toasty trickle of feminine juices drips along the toned curves of the shapely calves of your body, and with it wisps of a vaguely feline aroma bait the area around you. Your body must be going into heat, you dreamily think to yourself, as you lovingly stroke the soft fur cradling your vacant womb. You can already feel a tender little bulge forming as the ripening tissue prepares itself for your newest litter, or adopted child[at random].";
	now description text entry is "";
	now heat start entry is "[Hermacoreheatstart]"; [Events that trigger at the start of the Heat, in the GSD case it increases the cunt tightness]
	now heat end entry is "[Hermacoreheatend]"; [Events that trigger at the end of the Heat, in the GSD case it reduces cunt tightness]
	now inheat entry is "[Hermacoreinheat]"; [This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "";

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "Hermacore";
	now heat cycle entry is 7;
	now heat duration entry is 3;
	now trigger text entry is "Mewling needily, [one of]your cunt suddenly grows hot to the touch as your plush pussy lips throb with sensual pulses of fecund desire, becoming wetter by the second. A strange coiling almost catty scent nips at your nose, as your body's hybrid pheromones fill the air around you, signaling your receptive state to the wider world. Guess you've gone into heat, you muse, placing a hand on your poor empty tummy, you have to stifle a desperate yowl as your belly puffs out ever-so-slightly in preparation for its latest litter[or]you feel a sudden decadent heat simmering along the flush petals of your [Cunt Size desc of Player] muff. A toasty trickle of feminine juices drips along the toned curves of the shapely calves of your body, and with it wisps of a vaguely feline aroma bait the area around you. Your body must be going into heat, you dreamily think to yourself, as you lovingly stroke the soft fur cradling your vacant womb. You can already feel a tender little bulge forming as the ripening tissue prepares itself for your newest litter, or adopted child[at random].";
	now description text entry is "";
	now heat start entry is "[Hermacoreheatstart]"; [Events that trigger at the start of the Heat, in the GSD case it increases the cunt tightness]
	now heat end entry is "[Hermacoreheatend]"; [Events that trigger at the end of the Heat, in the GSD case it reduces cunt tightness]
	now inheat entry is "[Hermacoreinheat]"; [This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "";


to say Hermacoreheatstart:
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Hermacore":
			now MonsterID is y;
			break;
	increase Cunt Tightness of Player by 1;
	increase Cunt Depth of Player by 1;
	if Cunt Tightness of Player < Cunt Tightness entry, increase Cunt Tightness of Player by 1;
	if Cunt Depth of Player < Cunt Depth entry, increase Cunt Depth of Player by 1;
	increase Libido of Player by 10;
	if Libido of Player > 100, now Libido of Player is 100;


to say Hermacoreheatend:
	say "Despite this, you can't seems to shake a lingering sense of profound emptiness emanating from your vacant womb.";
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Hermacore":
			now MonsterID is y;
			break;
	if Cunt Tightness of Player > Cunt Tightness entry, decrease Cunt Tightness of Player by 1;
	if Cunt Depth of Player > Cunt Depth entry, decrease Cunt Depth of Player by 1;

to say Hermacoreinheat:
	increase Libido of Player by 4;
	if heatturnskipper is true:
		now heatturnskipper is false;
	else if Libido of Player >= 80:
		let Hermacorechance be ( 100 + Libido of Player - humanity of Player );
		if a random chance of Hermacorechance in 250 succeeds:
			if Cunt Count of Player >= 1 and Cock Count of Player is 0 and Level of Augustus Drake is 0:
				say "     Going about your day, you're caught off guard by a vibrant throbbing sensation roiling through your [Cunt Size desc of player] sex, as a light trickle of warm feminine juices leaks from your pleasantly puffy nether lips as the fertile tissue glows a hot bright red as if to better advertise your condition. Your mind is inundated with lewd fantasies of yourself claiming some of the more virile felines patrolling the city. You can't resist the urge to paw at your tummy at the thought of it swelling round and taut with new life as you fall deeper into animalistic heat.";
				increase Cunt Depth of Player by 1;
				increase Level of Augustus Drake by 1;
				if "Fertile" is not listed in feats of player:
					FeatGain "Fertile";
			else if Cunt Count of Player >= 1 and Cock Count of Player is 0 and Level of Augustus Drake is 1:
				say "     As your twisted heat wears on, it's getting harder for you ignore the enthralling scent of your body's hybrid pheromones wafting on the breeze, and the effect it's having on you. More than once, you found yourself growling angrily at the sorry state of your empty tummy. Though a part of you takes some solace in the knowledge that your scent will eventually attract some hapless prey, they can't come soon enough. Your hybrid form feels so empty and rudderless without a litter to care for, or the comforting sensation of your maternal hormones, the whole affair is starting to drive you mad. If you don't find a mate or worthwhile morsel soon, you fear you might snap at any moment.";
				increase Cunt Depth of Player by 1;
				increase Level of Augustus Drake by 1;
				if "Fertile" is not listed in feats of player:
					FeatGain "Fertile";
			else if Cunt Count of Player >= 1 and Cock Count of Player is 0 and Level of Augustus Drake is 2:
				say "     The breeze shifts, and with it comes the scent of fresh prey. Sniffing the air, you can tell they're not too far off, but little beyond that. The lingering chemical tangs of the old world are too heavily interwoven with the scent of carnal need left by the city's remaining residents, creating a chaotic tapestry of decay and desire. Hidden amongst these conflicting aromas, you detect the vibrant yet familiar pulse of your prey scent still manages to cut through these cold dead scents. You can't get a clear picture of your quarry at this distance, yet you know they are nearby. It would be a trivial matter to seek them out, but perhaps, you'll let them come to you instead. The heady aroma of bestial heat is the perfect bait, few mutant can ignore it for long. Yes, come closer little moth, you purr, licking your fangs as the burning scent of your aberrant desire roils upon the breeze. You massage at your toned furry core as if you could assuage the growing pit within you as you sense the other coming nearer by the moment.";
				increase Cunt Depth of Player by 1;
				increase Level of Augustus Drake by 1;
				if "Fertile" is not listed in feats of player:
					FeatGain "Fertile";
			else if Cunt Count of Player >= 1 and Cock Count of Player is 0 and Level of Augustus Drake is 3:
				say "     Navigating the immediate area, the still stagnant silence of the city is broken by a sudden loud clang. Your interest peaks, you unsheath your talons, and ready your stinger as you scour the immediate area for the source, but find nothing. Whatever it was is long gone, though the teasing scent of another hangs in the air. Clever prey, you snicker under your breath, in admiration of your quarry's skill in avoiding you. Next time though, you'll make sure to give them a proper chase.";
				increase Cunt Depth of Player by 1;
				increase Level of Augustus Drake by 1;
				if "Fertile" is not listed in feats of player:
					FeatGain "Fertile";
			else if Cunt Count of Player >= 1 and Cock Count of Player is 0 and Level of Augustus Drake is 4:
				say "     An angry rumble passes though your alluring midriff as the ravenous empty Void within you gnaws at the edges of your psyche, filling you with a strange manic energy. Far from disquieting though, the invigorating chaotic lancets of hunger and maternal desire only serve to sharpen your senses as you strain your enhanced hearing to its limits, searching for signs of a worthwhile meal. Your needy body would take almost anything at this point, even the lowliest Husky could make a fine snack, or maybe even an adorable child. You ruminate, while you paw at the lush crimson tummy fur, imagining yourself getting knotted by a nice well-hung alpha. Perhaps, you might even find yourself a cute little Husky Bitch worth adopting.";
				increase Cunt Depth of Player by 1;
				increase Level of Augustus Drake by 1;
				if "Fertile" is not listed in feats of player:
					FeatGain "Fertile";
			else if Cunt Count of Player >= 1 and Cock Count of Player is 0 and Level of Augustus Drake is 5:
				say "     Loosing a low lustful catty rumble, you're hit by a sudden rush of enticing maternal hormones as your body's tainted cycle makes its presence known. Delectable heat floods your eager sex, as the area around you is saturated with your receptive scent while a gentle trickle of natural lubricants beads from your hungry cunny in preparation for your latest conquest. You ruminate, brazenly fondling your plush nether lips, as your twisted mind waxes between fantasies of you dominating some of more virile creatures; along with that wonderful feeling of their corrupt seed filling your needy holes. To thoughts of claiming a deserving potential child, and remaking them in your [bodydesc of player] image.";
				increase Cunt Depth of Player by 1;
				now Level of Augustus Drake is 0;
				if "Fertile" is not listed in feats of player:
					FeatGain "Fertile";
			else if Cunt Count of Player >= 1 and Cock Count of Player >= 1 and Humanity of Augustus Drake is 0:
				say "     Trekking about the area, your senses are abruptly greeted by the sweet intoxicating scent of some needy feline entering heat. Intrigued and just a tad aroused by the fecund aroma, you can feel the tender barbs of your cock straining ever-so-slightly against your plush sheath at the thought of claiming this poor kitten for yourself. You begin sniffing the air in search of them, only to realize the heady pheromones aren't coming from some base prey, but from you! It seems you must have gone into heat, you muse, as a delightful rush of fertile heat simmers about your needy nether lips. You can't help purr at sensation of raw bestial desire welling in your core as your tender tum swells just hair out in preparation for next litter, or to better house its latest captive.";
				increase Cunt Depth of Player by 1;
				increase Humanity of Augustus Drake by 1;
				if "Fertile" is not listed in feats of player:
					FeatGain "Fertile";
			else if Cunt Count of Player >= 1 and Cock Count of Player >= 1 and Humanity of Augustus Drake is 1:
				say "     Maneuvering through the city, you are hit by the dual pangs of your voracious hungry and tainted estrus cycle racking your brood starved body as your neglected tummy cries out for attention.You can feel your [Cunt Size desc of Player] cunny blush with unvarnished need as a delectable heat flashes along the fecund tissue. Unable to resist the raw rush of maternal desire roiling through you, you openly slip one of your paws beneath your [Cock Size desc of Player] masculine endowment, not caring in the slightest who, or what, sees you lewdly stroke your engorged nether lips. While your other paw is drawn like an organic magnet to your plump sheath as you lovingly rub and squeeze your dense fuzzy cock wrapper in a vain attempt assuage the growing desire to breed gnawing at your core.";
				increase Cunt Depth of Player by 1;
				increase Humanity of Augustus Drake by 1;
				if "Fertile" is not listed in feats of player:
					FeatGain "Fertile";
			else if Cunt Count of Player >= 1 and Cock Count of Player >= 1 and Humanity of Augustus Drake is 2:
				say "     The breeze shifts, and with it comes the scent of fresh prey. Sniffing the air, you can tell they're not too far off, but little beyond that. The lingering chemical tangs of the old world are too heavily interwoven with the scent of carnal need left by the city's remaining residents, creating a chaotic tapestry of decay and desire. Hidden amongst these conflicting aromas, you detect the vibrant yet familiar pulse of your prey's scent cutting though the other cold lifeless scents like a sour note in a symphony run amok. You can't get a clear picture of your quarry at this distance, yet you know they are nearby. Yes, come closer little mouse, you purr, licking your fangs as the burning scent of your aberrant desire roils upon the breeze. You massage at your toned furry core as if you could assuage the growing pit within you as you sense the other coming nearer by the moment.";
				increase Cunt Depth of Player by 1;
				increase Humanity of Augustus Drake by 1;
				if "Fertile" is not listed in feats of player:
					FeatGain "Fertile";
			else if Cunt Count of Player >= 1 and Cock Count of Player >= 1 and Humanity of Augustus Drake is 3:
				say "     Your [Cunt Size desc of Player] cunny blushes with unvarnished need as a delectable heat flashes along the fecund tissue. Unable to resist the raw rush of maternal desire roiling through you, you openly slip one of your paws beneath your [Cock Size desc of Player] masculine endowment, not caring in the slightest who, or what, sees you lewdly stroke your engorged nether lips. While your other paw is drawn like an organic magnet to your plump sheath as you lovingly rub and squeeze your dense fuzzy cock wrapper in a vain attempt assuage the growing desire to breed gnawing at your core.";
				increase Cunt Depth of Player by 1;
				increase Humanity of Augustus Drake by 1;
				if "Fertile" is not listed in feats of player:
					FeatGain "Fertile";
			else if Cunt Count of Player >= 1 and Cock Count of Player >= 1 and Humanity of Augustus Drake is 4:
				say "     Navigating the immediate area, the still stagnant silence of the city is broken by a sudden loud clang. Your interest peaks, you unsheath your talons, and ready your stinger as you scour the immediate area for the source, but find nothing. Whatever it was is long gone, though the teasing scent of another hangs in the air. Clever prey, you snicker under your breath, in admiration of your quarry's skill in avoiding you. Next time though, you'll make sure to give them a proper chase.";
				increase Cunt Depth of Player by 1;
				increase Humanity of Augustus Drake by 1;
				if "Fertile" is not listed in feats of player:
					FeatGain "Fertile";
			else if Cunt Count of Player >= 1 and Cock Count of Player >= 1 and Humanity of Augustus Drake is 5:
				say "     An angry rumble passes though your alluring midriff as the ravenous empty Void within you gnaws at the edges of your psyche, filling you with a strange manic energy. Far from disquieting though, the invigorating chaotic lancets of hunger and maternal desire only serve to sharpen your senses as you strain your enhanced hearing to its limits, searching for signs of a worthwhile meal. Your needy body would take almost anything at this point, even the lowliest Blue Gryphon could make a fine snack, or maybe even a serviceable mate. You ruminate, tracing a talon along the beautiful hills and valley of your tight furry abs, picturing yourself mutually knotted with one of those cute little herms.";
				increase Cunt Depth of Player by 1;
				now Humanity of Augustus Drake is 0;
				if "Fertile" is not listed in feats of player:
					FeatGain "Fertile";


Hermacore ends here.
