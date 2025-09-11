Sitatunga by Voidsnaps begins here.

Section 1 - Creatures

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Sitatunga Buck"	"[PrepCombat_Sitatunga Buck]"

to say PrepCombat_Sitatunga Buck:
	setmongender 3;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Sitatunga Buck"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Sitatunga Buck" to infections of FurryList;
	add "Sitatunga Buck" to infections of MaleList;
	add "Sitatunga Buck" to infections of BipedalList;
	add "Sitatunga Buck" to infections of CervineList;
	add "Sitatunga Buck" to infections of NatureList;
	now Name entry is "Sitatunga Buck"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]Lowering his head, the sitatunga charges you, moving with ease through the swamp water and goring you with his horns.[or]With an angry bleat, the sitatunga rushes you, nearly throwing you into the water.[or]Grabbing your arm, the deer-man tries to yank you into the water with him, aiming for your face with his other hand balled into a fist.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[SitatungaBuckLoss]";
	now victory entry is "[SitatungaBuckWin]";
	now desc entry is "[SitatungaMaleDesc]";
	now face entry is "a reddish brown coloration with white markings almost like halloween makeup highlighting your cheekbones. Horns grow from your forehead, curving upward and outward";
	now body entry is "long-legged and lithe, but masculine, with wiry muscles. Your body doesn't seem to be built for walking on land, and your footing is unsure, but you think you can manage";
	now skin entry is "auburn fur with pure white markings accentuating some of your features";
	now tail entry is "You have a short tail much like a deer's, fluffy and just long enough to cover your ass.";
	now cock entry is "A long cervine cock that comes to a point. Quite thin despite its length";
	now face change entry is "it reshapes itself, giving you masculine features and a long, pointed cervine muzzle. Your teeth reshape themselves into blunter, herbivorous ones perfect for aquatic plants";
	now body change entry is "you fall to the ground, your chest and limbs reforming into a shape more suited for walking in aquatic environments, with long digitigrade legs and a compact torso";
	now ass change entry is "a fluffy tail sprouts above your ass, wiggling indignantly as you stare at it, before settling against your cheeks"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it takes on a thinner, tapered appearance as a sheath grows in at its base, above your fuzzy balls";
	now str entry is 25; [ These are now the creature's stats... ]
	now dex entry is 14; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 25; [ These values may be used as part of alternate combat.]
	now per entry is 16;
	now int entry is 15;
	now cha entry is 14;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 90; [ The monster's starting HP. ]
	now lev entry is 8; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 12; [ Monster's average damage when attacking. ]
	now area entry is "Sinking Swamps"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 9; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 2; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 25; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "Sitatunga milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is "Sitatunga Cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "[GenerateTrophyList_SitatungaBuck]"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "";
	now type entry is "antelope";
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;
	now Cross-Infection entry is "Sitatunga Doe"; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

to say SitatungaMaleDesc:
	say "     An aquatic antelope stands before you with his head slightly tilted, pointing a pair of wicked horns in your direction. He has the body of a swimmer- lithe and streamlined, and his fur pattern looks similar to white bodypaint on auburn fur. Between his legs, a long, thin cock bounces, dripping and ready to breed you. He grins when he notices your eyes roaming over his body, huffing and preparing to charge.";

to say GenerateTrophyList_SitatungaBuck:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "sitatunga horn fragment" to CombatTrophyList;
	if a random chance of (50 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if a random chance of (10 + LootBonus) in 100 succeeds: [rare drop]
		add "clean bandages" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Sitatunga Doe"	"[PrepCombat_Sitatunga Doe]"

to say PrepCombat_Sitatunga Doe:
	setmongender 4; [female]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Sitatunga Doe"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Sitatunga Doe" to infections of FurryList;
	add "Sitatunga Doe" to infections of FemaleList;
	add "Sitatunga Doe" to infections of BipedalList;
	add "Sitatunga Doe" to infections of CervineList;
	add "Sitatunga Doe" to infections of NatureList;
	now Name entry is "Sitatunga Doe"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]Lowering her head, the sitatunga charges you, moving with ease through the swamp water and headbutting your stomach.[or]With an angry bleat, the sitatunga rushes you, nearly throwing you into the water.[or]Grabbing your arm, the deer-woman tries to yank you into the water with her, aiming for your face with her other hand balled into a fist.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[SitatungaDoeLoss]";
	now victory entry is "[SitatungaDoeWin]";
	now desc entry is "[SitatungaDoeDesc]";
	now face entry is "slim, feminine antelope muzzle. At the top of your head sit little horn-nubs that add to the charm of your antelope-like face";
	now body entry is "that of a feminine sitatunga doe, with a soft swimmer's body and slight features";
	now skin entry is "soft light red-brown fur streaked with white marks that resemble body paint over your";
	now tail entry is "You have a short, fluffy tail that sits between your ass cheeks, wiggling when you're excited and soft to the touch.";
	now cock entry is "";
	now face change entry is "it draws forward into an antelope-like long, slender muzzle as little horn nubs break through your forehead";
	now body change entry is "your arms and legs grow more slender, longer and feminine, with a deceptive amount of strength for swimming";
	now ass change entry is "a fluffy, short tail grows out of it, dusting your butt cheeks with soft fur before settling over your hole"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "rather than the feminine sex you'd expect, a slender cervine cock sits between your legs, hidden by a plush sheath and flanked by two balls covered in the same water-proof fluff";
	now str entry is 15; [ These are now the creature's stats... ]
	now dex entry is 25; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 22; [ These values may be used as part of alternate combat.]
	now per entry is 13;
	now int entry is 15;
	now cha entry is 14;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 50; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10; [ Monster's average damage when attacking. ]
	now area entry is "Sinking Swamps"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 7; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 5; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 2; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 5; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 6; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 3; [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 25; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "Sitatunga Milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is "Sitatunga Cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "[GenerateTrophyList_SitatungaDoe]"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "";
	now type entry is "";
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;
	now Cross-Infection entry is "Sitatunga Buck"; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

to say GenerateTrophyList_SitatungaDoe:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "sitatunga fur" to CombatTrophyList;
	if a random chance of (50 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if a random chance of (10 + LootBonus) in 100 succeeds: [rare drop]
		add "clean bandages" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

to say SitatungaDoeDesc:
	say "     An aquatic antelope stands before you. She's got average breasts streaked with white fur contrasting the soft auburn covering the rest of her, and her features are delicate and deer-like, down to her trim pussy between athletic swimmer's thighs. Despite not having horns, she looks ready to charge you, and you're sure a headbutt will still hurt.";

Section 2 - Items

Table of Game Objects (continued)
name	desc	weight	object
"sitatunga horn fragment"	"A smooth horn fragment from a sitatunga. It shows the twisting pattern of the swamp antelope's horns."	0	sitatunga horn fragment

sitatunga horn fragment is a grab object.
It is temporary.
Usedesc of sitatunga horn fragment is "[SitatungaHornUse]";

to say SitatungaHornUse:
	say "Rolling the smooth horn fragment around in your fingers, you marvel at the elegant twist of the ivory. To your surprise, it starts to disintegrate, soaking into your fingers like water melting away into the desert.";
	infect "Sitatunga Buck";

Table of Game Objects (continued)
name	desc	weight	object
"sitatunga fur"	"A silky patch of fur from a sitatunga doe. You can barely see the white pattern on the auburn fur."	0	sitatunga fur

sitatunga fur is a grab object.
It is temporary.
Usedesc of sitatunga fur is "[SitatungaFurUse]";

to say SitatungaFurUse:
	say "Rolling the silky fur through your finger tips, you marvel at how well-kept it seems to be, despite the aquatic origins of its owner. To your surprise, it starts to disintegrate, soaking into your fingers like water melting away into the desert.";
	infect "Sitatunga Doe";

Table of Game Objects (continued)
name	desc	weight	object
"sitatunga cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Sitatunga Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	sitatunga cum

sitatunga cum is a grab object.
sitatunga cum is cum.
sitatunga cum is infectious.
Strain of sitatunga cum is "Sitatunga Doe".
Usedesc of sitatunga cum is "[sitatunga cum use]";

to say sitatunga cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing sitatunga cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Table of Game Objects (continued)
name	desc	weight	object
"sitatunga man-milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Sitatunga Man-Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	sitatunga man-milk

sitatunga man-milk is a grab object.
sitatunga man-milk is milky.
Purified of sitatunga man-milk is "distilled milk".
sitatunga man-milk is infectious.
Strain of sitatunga man-milk is "Sitatunga Buck".
Usedesc of sitatunga man-milk is "[sitatunga man-milk use]";

to say sitatunga man-milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

instead of sniffing sitatunga man-milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

Table of Game Objects (continued)
name	desc	weight	object
"sitatunga milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Sitatunga Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	sitatunga milk

sitatunga milk is a grab object.
sitatunga milk is milky.
Purified of sitatunga milk is "distilled milk".
sitatunga milk is infectious.
Strain of sitatunga milk is "Sitatunga Doe".
Usedesc of sitatunga milk is "[sitatunga milk use]";

to say sitatunga milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

instead of sniffing sitatunga milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

Section 3 - Scenes

Chapter 1 - Male

to say SitatungaBuckWin:
	say "     'That's a good doe.' The sitatunga says as you fall to your knees, winded and defeated. Triumphantly, he stands over you, cock still at the ready, inches from your face. To add insult to injury, he slaps the offending member against your face, marking the space between your eyes with a glob of pre. 'You know, this would be much easier if you'd give in. I can tell by looking at you that you want deep breeding.' Taking that long cervine member away from your muzzle just as you get used to the strong musk permeating the fur around it, the deer circles you, pushing you to the ground. [if player is not barecrotch]'I don't know why a doe like you bothers covering up. We all know you'll drop your pants for me.' [else]'See? Why would you walk around without something to cover your ass if you didn't want me to notice? Tease.' [end if]The sitatunga gloats, contemplating your rump.";
	if Player is female: [vaginal]
		LineBreak;
		say "     With a grin and little regard for your comfort, the swamp buck grabs your hips, lining his cock up with your pussy and nearly jabbing into your urethra in his carelessness. You grit your teeth as he slips in. You're not all that wet, but thankfully, your body stretches easily, flooding his cock with reactionary juices to ease the way. 'See? You're such a slutty doe that I don't need to prepare you. It just slides right in.' The buck slaps your ass to add insult to injury, his hips moving in a rough rhythm that jams his tapered tip against your cervix. 'Maybe you'll learn your place if I fuck you hard enough. Wonder if you'll make any cute fawns for me.' Unable to answer as unwanted pleasure floods your body from his carelessly rough and deep thrusts, you try to protest, but all that comes out is a weak grunt as his balls slap against your clit hard enough that you see stars. Why does it feel so good? You want to deny it, but you're so wet that every thrust sounds like stirring freshly boiled pasta, and the steadily growing orgasm welling in your stomach demands release.";
		say "     You cream the buck's shaft, hiding your face in shame as you drip your release down his balls. Humiliating as it is, that makes it better. This dime-store dominant manhandling your cunt as if it belongs to him. Fuck. The only thing that would be worse is- Before you can finish the thought, the worst happens. That cervine cock bucks against your cervix, spraying fertile batter against your deepest reaches and nearly guaranteeing you'll carry sitatunga seed. The bleating sitatunga takes a surprisingly long while to finish, stirring your increasingly creamy insides with greedy thrusts, and you can feel it dripping down your thighs.";
		WaitLineBreak;
		say "     'Thanks, baby. Come back when you feel the craving.' Your rapist chuckles as he spanks your upturned ass, scratching his stomach and wandering off in the waist-deep water. It's several minutes before you regain enough feeling in your legs to stagger to your feet, and as you gather your gear, you try your best to keep your sore pussy from brushing anything. Thankfully, as you shoulder your pack, you can feel the soreness fading, though the warmth spreading through your body can't be a good sign.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Sitatunga Buck";
	else: [anal]
		LineBreak;
		say "     'Hm. Suppose you're not a doe.' The sitatunga says as he spreads your ass cheeks, contemplating your exposed hole. 'Not that it matters. You'll be one soon enough.' A wet splat tells you his intentions, and you feel something warm and throbbing follow his dollop of spit pressing insistently at your hole. 'You're probably tighter this way, anyway!' Gritting your teeth, you dig your fingers into the muck below, trying desperately to wriggle away from the buck's grip. Unfortunately, you're too tired to escape, so all you manage to do is massage your rapist's cock, unwittingly encouraging his pounding thrusts. Worse still, he's found your prostate, mashing it with the underside of his tapered cock.";
		say "     'Fuck, I should do this more often. Even tighter than the herd slut's ass.' The buck beats his balls off your ass, deep-dicking you and squirting heavy, sticky strings of pre to violate your innards and mark them as his. Any hesitance is gone, and he's more than happy to destroy your inner depths, focusing on getting off instead of your comfort. Unfortunately, your ass doesn't know the difference between your rapist and a lover, clamping and welcoming him[if Player is male]even as your cock drips to the ground below, reminding you that he's working you toward orgasm against your will[end if]. Thankfully, he saves you the embarrassment of cumming to his rough rutting, falling forward as his full weight rams into your ass, and he explodes deep inside you, strings of virile seed exploring deeper into you than anything should.";
		WaitLineBreak;
		say "     'Maybe next time I'll give you a reach around.' The buck teases as he slurps his cock from your hole, wiping it clean on your upturned ass and slapping your left ass cheek. 'But I got places to be and girls to fuck. Clean yourself up. Come back when you're ready to be a good little doe.' You try to prepare a snappy comeback, but your sore ass and the sitatunga's back disappearing into the distance prevent your ire from going anywhere, and you're left to clean yourself off and gather your belongings. The spreading warmth in your body worries you, but you can only hope you're not becoming the doe the sitatunga buck wants you to be.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Sitatunga Buck";

to say SitatungaBuckLoss:
	say "     As you deal the final blow, the sitatunga buck falls to his knees in the mud, holding himself up with his hands and barely stopping a freefall into the muck below. He pants and looks up at you with defiance in his grey eyes, and you get the idea that he'd gore you if he weren't so exhausted. The idea of a slim swamp antelope like him defeating you in the first place is laughable! You look over that swimmer's body, clicking your tongue idly as you avoid the reach of his horns, then grip one, yanking his head upward and drawing a wince from the defiant man. He's not so tough now. Idly, you wonder if you should take him down even further. After all, he attacked you! He should pay for that.";
	say "     [bold type]How should you put the pesky antelope-man in his place?[roman type][line break]";
	let Sitatunga_Buck_Fuck_Choices be a list of text;
	if Player is male:
		add "Make him suck your cock." to Sitatunga_Buck_Fuck_Choices;
		add "Show him who's boss! Fuck his ass!" to Sitatunga_Buck_Fuck_Choices;
	if Player is female:
		add "Make him worship your pussy." to Sitatunga_Buck_Fuck_Choices;
		add "Use his cock." to Sitatunga_Buck_Fuck_Choices;
	add "Walk away. He's not worth your time." to Sitatunga_Buck_Fuck_Choices;
	let Sitatunga_Buck_Fuck_Choice be what the player chooses from Sitatunga_Buck_Fuck_Choices;
	if Sitatunga_Buck_Fuck_Choice is:
		-- "Make him suck your cock.": [friendly]
			LineBreak;
			say "     Now that you look closer, the sitatunga's mouth seems nice enough. The blunt teeth showing as the swamp antelope struggles weakly against your hold don't seem like much of a threat. Shrugging, you drag the struggling man into place in front of your crotch. If he's going to harass you, he deserves to make up for it! The antelope's eyes widen as you [if Player is barecrotch]tap your exposed cock on his nose[else]free your cock from its cloth prison[end if], but one stern look and a yank at his horn set him to work. Tentatively, his tongue trails from the base of your cock to the tip, cupping the underside as his nose crinkles at your taste, his lips shined by the ooze of pre the warm sensation teases out. He swallows hard, his eyes flitting from side to side as he tries to figure out a way out of it, but to no avail.";
			say "     Impatient, you buck your hips, stopping the man from speaking just as he opens his mouth. He thrashes in your grip, his throat tightening around your tip, but you hold him there, relishing the wet, gooey ribbons of drool you tease from his overworked muzzle, dripping down your shaft with every gag. You decide to be merciful when his eyes roll up and his body slumps, but one moment to breathe is more than enough. It's time to show the buck who the real boss is! With a grunt, you settle into a heavy rhythm, coring out his throat with every shove of your hard cock and coating his senses in the dripping evidence of how good it feels. With nowhere to go in your firm grip, all the sitatunga does is screw his eyes closed, his displeased bleats gurgling around your cock and adding to the intense sensation rolling over your shaft.";
			WaitLineBreak;
			say "     Soon enough, you feel your orgasm bubbling up your shaft, and as you look down at that helpless face, you announce that he'd better swallow every drop, taking his tentative self-stroking as an affirmation. With a groan, you slide home, pinning him in place as a firehose of cum gushes down his throat, pouring out of his nose and dripping down his chin. A weak splatter against your ankle tells you your fucktoy came too, and when you pull back, he kneels on all fours, coughing uncontrollably and still stroking his fountaining dick. Wiping your dick off between his eyes, you tell the sitatunga he'd better not attack you again, or else you'll do something far worse. Though you wonder as he nods and fixes you with a cryptic gaze- if he's angry at what happened or ready to try his luck again.";
			CreatureSexAftermath "Sitatunga Buck" receives "OralCock" from "Player";
			[]
		-- "Show him who's boss! Fuck his ass!":
			LineBreak;
			say "     'Unhand me!' The buck sneers as you twist and pull at his horns, dragging him onto all fours. 'You're nothing more than a doe that doesn't know her place yet!' It's big talk for someone that can barely remain upright, and he only becomes more animated when you probe his muscular ass, separating his cheeks to find the pink hole between them. Telling him to shut up, you tug his horns backward until his back arches, using your free hand to [if Player is barecrotch]grab your exposed cock [else]free your cock from its cloth prison [end if]and flop it between those wet cheeks, still moist from the swamp's water. With a chuckle, you tell the buck you're no one's doe, but he will be!";
			say "     The buck's eyes widen as he realizes what you mean, and his hole clenches fearfully against your cock's tip as he tries to move his hips away from you, only succeeding in wiping a thin sheen of pre over his most vulnerable place. 'Hey, listen, dude. I don't go that way. I'll walk away. You'll never see me again, just don't-' Gritting his teeth, he stops as you push forward, a high-pitched bleat leaving his open muzzle. Surging forward, you pry open the buck's virgin-tight hole, cutting him off before he can continue to plead. It's rough going at first, and your cock feels like it's in a silk vice, but you cram inch after inch into him, invading his hot, meltingly soft innermost sanctum with impunity. Panting with exertion, you pause to slap that muscular ass, letting him feel your cock bounce against his prostate, and taunt him, telling him that for a buck, he's got a great pussy.";
			WaitLineBreak;
			say "     The sitatunga barely answers you, gasping aloud as you force a new sensation on him. Each thrust drags a bleat from his throat, and his breath comes in short, desperate bursts while his cock slaps against his stomach, wholeheartedly expressing its need for more with gooey strings of desire. It seems you've broken him in, so it's time for the main event! Without a care for the muck beneath, you bear your whole weight down on the slim, athletic man's back, sending him crashing into it and following him down. Brutalizing his ass with long, deep thrusts, you slam into him, basking in the symphony of confused, overwhelmed sounds you drag from him. He's so out of it that when you twist his head to the side to observe his expression, tightly closed eyes that open whenever you pull back and an open mouth dripping with drool are the only indicators that he hasn't fainted. Since there's no need to restrain him, you hook two fingers into his mouth, finger fucking it in time with your cock's lightning-quick assault and enjoying the soft nursing suckle his overwhelmed maw treats them to.";
			say "     Finally, too soon, you need to spill yourself into him, so you speed your hips, hilting just as the dam breaks and filling the poor buck to the brim. Every drop paints his innards white, and you're not surprised to see that none has seeped out around your dick, swallowed up by his tightness. You withdraw your cock once the final dregs drain, admiring the creamy, slightly dripping, gaped hole you've left and slapping his ass. Proudly declaring that he's a world-class doe, you gather your things, leaving him ass up and face down, with muck and cum dripping from his unused cock. From the expression he gives you as you walk away, you're unsure if he's angry or if he'll be back for more.";
			CreatureSexAftermath "Sitatunga Buck" receives "AssFuck" from "Player";
			[]
		-- "Make him worship your pussy.":
			LineBreak;
			say "     Annoyed by the sitatunga's attack, you pull his head to the side until he's looking up at you. As he winces, you can't help but notice a decent length of tongue behind his teeth. Smirking as you realize the perfect way to get the man to atone for attacking you, you hold him there, spreading your legs and [if Player is barecrotch]rubbing a finger over your exposed sex. [else]freeing your pussy from your pants and kicking them off onto the dryest spot you can find- an old petrified log- then rubbing a finger over your exposed sex. [end if]'Hey baby, I don't mind giving you what you need. Just join my herd, and we can-' The buck says, greedy eyes fixating on the sight. His cock is standing at attention, slapping his belly as you stuff your finger past his lips, forcing a taste of your juices.";
			say "     Telling the buck to shut up, you straddle his face, forcing his nose against your clit and grabbing both horns. His herd can get fucked, and if he wants to get out of here without an ass-beating, he'd better start licking! You don't even give him the option to complain, grinding your pussy lips against his face until you feel a meek lap taste you. Grumbling, the antelope samples your pussy, stroking his erect cock as you force his tongue as far as it'll go. His oral appendage is excellent, despite its amateur messiness, and before long, you're riding his face, smearing his lips with wetness and marking him with your scent. Sandwiching his face between your thighs, you grind long and hard, only letting him breathe when he latches onto your clit, suckling it and earning himself a break with a whirlwind of tonguesmanship.";
			WaitLineBreak;
			say "     You're not sure how long you drown the poor buck in pussy juice, but you can feel your orgasm creeping up with each greedy slurp, mimicking the increasingly wet stroking below. There's no need to hold back, so you practically fuck that muzzle, jamming the buck's lips against your hole and panting your pleasure until a flood of fem-cum messes his face, dripping down his chest and forcing him to swallow to keep his nose clear of pussy juice. Tossing the buck aside, you gather your gear, cleaning yourself off with a cloth from your pack and watching him helplessly masturbate, nose flaring to draw in breaths laden with your finish. Just as you turn to leave, ropes of cum paint his fur, and he bleats helplessly, showing his submission. You're not sure if he's learned his lesson, but you don't think you care. You'll gladly do it again.";
			CreatureSexAftermath "Sitatunga Buck" receives "OralPussy" from "Player";
		-- "Use his cock.":
			say "     Tossing the sitatunga backward on the muddy banks, you click your tongue, looking him over. The cock proudly sticking up from his crotch, bouncing in time with his heartbeat, provides an idea. You'll give him exactly what he wanted, on YOUR terms! Telling him it's his lucky day, you [if Player is barecrotch]move to straddle him, letting the pulsing underside of his cock trail along your pussy until the pointed tip kisses your clit[else]shrug out of your pants, then pounce on him, mashing his cock against your increasingly slippery sex and pinning him[end if]. The sitatunga buck seems to forget his situation when breeding is on the table, attempting to grab your ass. 'I knew you'd come around, baby. Let me just fuck some fawns into you, and you'll be ready-' With a confused bleat, the sitatunga looks up at you, staring down at the hand on his chest that shoved him back.";
			say "     You're not his baby, and if he wants to fuck you, he'd better behave. With a sneer, you tell him so, grabbing his chin in your hand as you sandwich his cock against his belly, grinding with authority. Lips inches from his, you demand that he beg to fuck you. Admit he's not in charge, and he's nothing but a toy for you to use and throw away. 'I-' Swallowing hard, the confused buck fights against his instinct for dominance, looking down at the enticing sight of your wet cunt smearing along his cock's underbelly. 'Y-Yes. Please. Let me fuck you.' Ears flicking back as he's unable to meet your eyes, he gives you what you want, bleating as you let him pop into your slippery entrance.";
			WaitLineBreak;
			say "     Telling him he's a good boy, you roll your hips, riding his long, tapered shaft with wild abandon and marking his balls with the scent of your arousal. Trying to remain aloof but failing as the size and shape of his cock is perfection, and each kiss of his tip against your womb causes a melting sensation in your midsection, you use him like a living dildo, prioritizing your pleasure without a care for how your ass slaps against his balls and how heavily you sit down. The buck cums before you do, seizing up without warning and gripping the muck beneath him with both fingers, but you're not far behind, groaning your finish as you add to the mess dripping down his balls. Slow pumps fill your greedy pussy, and you ride that oversensitive shaft until he gasps and begs you to stop, only pulling off once he starts to go soft. Blowing him a kiss as you gather your things, you express your hope that the buck doesn't have a jealous herd now that he's fucked someone that knows what they're doing. Judging by the expression on his face, this won't be the last time you see the buck, and oddly, you look forward to beating him down and using him again. Maybe next time, you should let the poor thing win- Nah.";
			CreatureSexAftermath "Player" receives "PussyFuck" from "Sitatunga Buck";
		-- "Walk away. He's not worth your time.":
			say "     Shaking your head, you toss the sitatunga to the ground, pushing his face into the mud with your heel. You let him up after a moment, telling him to fuck off and leave you alone, then continue on your way, leaving him to sputter and wipe away the muck. It's a small price to pay, you think, after what he did!";

Chapter 2 - Female

to say SitatungaDoeWin:
	say "     'I-I won?' The sitatunga doe blinks as you fall before her. She seems confused by this turn of events, circling you cautiously. 'I guess that means I get to do whatever I want.' She says, looking you over with shy desire. 'Do you have an um-' She trails off, seemingly embarrassed by her thoughts, rubbing her thighs together. With a conspiratorial expression, she mimics stroking a dick in thin air.";
	if Player is male:
		say "     Knowing where this is going, you weakly nod, showing off your manhood with some adjusting. Even if you don't want to fuck, you doubt you have a choice, and it's better to stay on the doe's good side. That bubbly personality could change at any time! Swallowing hard at the sight, the doe kneels, straddling your lap and nuzzling your awakening dick against her lower lips. With a nervous giggle, she hangs from your shoulders, grinding slowly and watching your cock grow along her lips until the tip kisses her clit. 'I'm not sure how to do this sort of thing. The bucks always take the lead.' Still, that doesn't stop her from guiding you in, pressing her breasts against you as your cock slips deep into intense, wet heat. 'Can you, um- Can you get rough?' The innocent-sounding doe begs, bringing your hands to her ass. Her breath is coming in soft pants, intermingled with gentle bleats, and she already looks overwhelmed, but there's a hunger in her eyes.";
		say "     Nodding, you take the offered hold, shoving upward to a symphony of moans and encouraging, muttered half-words. It's starting to feel like you won your fight, but you're not complaining! If all this slutty doe wants is a deep dicking, you'll give it to her! Bowling the doe over, you hike her legs up, fulfilling her wish for a rough fuck with driving thrusts that bounce her tits. She clings to you, begging for more, wrapping her legs around your waist, pinning you deep inside her cunt, and forcing you to thrust more shallowly. Before long, you feel the telltale gush around your cock, pounding the doe through her first orgasm. 'More!' Her breathless voice comes in your ear, dispelling any illusions of a break. She's insatiable! You lose track of how many times she cums under your ceaseless humping, firing off your finish that simply melds into the mess, creaming your union and filling the air with mixed musk. Even when your shaft softens, she still works you, forcing one last pitiful few dribbles into her sodden, overstuffed cunt and pulling your face to her breast as she squirms through one final orgasm. Sated and blissed out, the girl lays in the mess you made, rubbing her ruined pussy with two fingers as she drifts in horny daydreams. You don't stick around to find out if she's TRULY finished with you, limping your way away with a sore, overused cock to continue your day. If you don't want your cock to fall off from overuse, you should be more careful!";
		CreatureSexAftermath "Sitatunga Doe" receives "PussyFuck" from "Player";
	else:
		say "     Shaking your head, you tell the doe she's out of luck. You don't have a cock for her, or at all, for that matter! Patting your smooth crotch to drive the point home, you hope that doesn't cause any problems. 'Aw. It doesn't feel as good without one.' The doe says, her ears flitting downward and lower lip pouting. 'Hmm. I guess I'll go, then! S-Sorry for the trouble.' Before you can process her strange behavior, she's disappeared into the swamps, moving with long strides through the water you'd struggle to navigate. Dusting yourself off, you watch her go, wondering if things might have gone differently if you had her preferred appendage.";

to say SitatungaDoeLoss:
	say "     Falling to her knees, breasts heaving as she pants with exertion, the sitatunga doe looks up at you, pleading with her eyes. 'Please don't hurt me!' she wails, tears gathering at the edges of her vision. You can't help but feel bad for her. Did she even want to attack you? Come to think of it- she looked like she wanted to run away while you tussled. Still, perhaps there's a way for you to settle things without hurting the poor creature. She's pretty enough, with perky tits topped with ebony nipples and framed by white markings, and those soft grey eyes staring up at you add to her allure, swimming with tears as they are.";
	say "     [bold type]What do you want to do with her?[roman type][line break]";
	let Sitatunga_Doe_Fuck_Choices be a list of text;
	if Player is male:
		add "Fuck her pussy." to Sitatunga_Doe_Fuck_Choices;
	if Player is female:
		add "Make her eat you out." to Sitatunga_Doe_Fuck_Choices;
	add "Eat her pussy." to Sitatunga_Doe_Fuck_Choices;
	add "Walk away. She's not your type." to Sitatunga_Doe_Fuck_Choices;
	let Sitatunga_Doe_Fuck_Choice be what the player chooses from Sitatunga_Doe_Fuck_Choices;
	if Sitatunga_Doe_Fuck_Choice is:
		-- "Fuck her pussy.":
			LineBreak;
			say "     Catching the woman's attention, you [if Player is not barecrotch]rub your growing bulge through your pants and tug down your pants to free its growing length. [else]take hold of your bare cock, waggling it in front of her nose to show its hardened state. [end if]Promising that you won't hurt her if she lets you fuck her, you stroke yourself, your cock inches from her nose. 'Really?!' The woman says, her personality doing a one-eighty. 'That's all you want from me? I can do that!' Beaming, she dives forward, licking your cock like an expert and blatantly playing with her bare pussy. Every inch of your cock receives the same soft treatment, teased by her tongue and lips, before she kisses its crown and lays back, spreading her legs and showing off her wet, needy-looking cunt.";
			say "     You gladly kneel, lining yourself up and taking the doe's hips in your hands. The doe is well-experienced, taking your dick like a champ to the base, and the second your dick slides inside her, she rubs her clit, her other hand touching her breasts and playing with her hardened nipples. Settling into a heavy rhythm, you fuck the slutty cervine, watching the mesmerizing bounce of her perky tits and trying your best to hold back a growing need to baste her cunt. There's something so alluring about the wanton way she's touching herself, arching into your touch and demanding every inch of your cock. The expression on her face begs for you to breed her, and you don't plan to disappoint.";
			WaitLineBreak;
			say "      Wet gushes coat your crotch as you reach the edge of orgasm, followed by high-pitched bleats and the doe's writhing body beneath you, making your thrusts ragged enough you worry you'll slip out. Fuck, the doe wants it so much. You can't hold it. Shoving to the hilt, you baste the entrance to that greedy womb in virile seed, pressing your balls against that plush ass, feeling the slut frantically masturbating, peppering your neck with breathless kisses and clamping eager legs around your waist. 'You'd make a good buck.' The doe breathlessly moans as you disengage from her, shamelessly fingering her drooling pussy and churning your cum. Watching your cock bounce with unabashed lust, she gives you a show while you gather your things, making you second guess walking away. Shaking your head, you leave her to finish herself off. If you get caught up here, you may never walk away!";
			CreatureSexAftermath "Sitatunga Doe" receives "PussyFuck" from "Player";
			[]
		-- "Make her eat you out.":
			say "     Sighing as the girl in front of you seems on the verge of bawling her eyes out, you catch her attention with a snap of your fingers. Catching her chin between your fingers, you tell her you won't hurt her. You want to have some fun. If she does as you ask, you'll let her go. Guiding her nose toward your crotch, you show her what you mean, [if Player is not barecrotch]tugging your pants down until she's face-to-face with your vulva, getting a noseful of feminine musk[else]drawing her mouth toward your mound until her lips nearly touch your bare clit, letting her sniff your feminine musk[end if]. 'Oh. I can do that!' The girl wipes her eyes and beams up at you, tits jiggling as she settles into position. Staring up at you as if seeking approval, she steadies herself on your hips, clutching at them with one hand while the other drifts between her legs to tend to herself. She's surprisingly bold when she darts her head forward, capturing your clit between her lips and licking at it until you see stars.";
			say "     Barely able to keep your composure, you bite your lower lip, straddling the eagerly lapping doe's face and encouraging her deeper. She must have a lot of practice because what you'd expected to be an awkward tonguing has turned into some of the sloppiest eating you've ever received! Not even a vibrator could stimulate you like this, and soon you're grabbing her dainty ears, forcing her muzzle up against your mound in a desperate attempt to demand more. The girl's tongue brings you closer to orgasm by the second, and you chase that high, all but humping her face and sending gooey strings of pussy juice down her chin. When it finally crests, you seize up, holding her between your thighs as her cute little moans tease your fountaining sex. Minutes later, when that talented tongue has cleaned your cunt of dripping juices, you let the doe up for air, sagging backward. Your orgasm has taken a lot out of you, but she seems more interested in playing with herself, adding to a growing puddle on the ground beneath her and cleaning the juices sprayed on her tits with slow fingers, bringing them to her mouth. Fuck, that's hot. As you leave her to her own devices, you can't help but hope you're attacked again by the skittish thing.";
			CreatureSexAftermath "Sitatunga Doe" receives "OralPussy" from "Player";
			[]
		-- "Eat her pussy.":
			say "     Sighing as the skittish doe sniffles up at you, you drop to your knees, catching her attention with a grope of one modest breast. You don't want to hurt her, and you tell her so, offering to prove it by licking the trim cunt you can barely see between clamped thighs. After all, she can't cry if she's cumming. 'You want to?' The doe asks, her crying stopping almost immediately and her thighs rubbing together in excitement. With unexpectedly whorish haste, she spreads her legs, showing off that glistening cunt and tilting her head as you slip between her legs, her voice bubbling with excitement. 'The bucks never want to taste me. It's been so long.' Assuring her it's a shame, you spread those thighs apart and bury your face, wasting no time on pomp and ceremony. She's wet enough that you worry you'll get a taste of something less feminine, but your fears disappear as a flood of juices tickles your tongue with something that tastes like fresh-cut grass and a vague hint of citrus mixed with feminine musk. Intrigued by the taste, you lap deeply, rolling your tongue over her entrance and tickling her clit until she forces you to pin her down to keep her in place.";
			say "     Like a wanton slut, the doe plays with her breasts, pinching her nipples and letting her pleasure show on her face. Her eyes are tightly closed, and her breath comes in ragged gasps while urgent bleats grow more desperate by the second. 'Right there!' She all but screams as your tongue twists around her clit, her thighs clamping around your face as a flood of pussy juice threatens to drown you. You ride out the sitatunga doe's orgasm, ignoring your lungs['] screaming for air in favor of swallowing every drop she gives you. It's a lot, but eventually, she's spent, after what you assume is multiple orgasms, aided by your now-numb tongue. When you surface for air, released from that vice grip, she squeezes her breasts, looking at you with something akin to worship and playing with her still sensitive cunt.";
			WaitLineBreak;
			if Player is male:
				say "     'You're so good at it.' The doe gushes as you wipe your mouth clean on your arm, all but pouncing on you. It seems that sex has made her far more bold. 'I need more.' Her meaning soon becomes crystal-clear as she pushes you backward, trailing her muzzle down your body until she reaches your [if player is not barecrotch]bulge. [else]bare cock. [end if]You tense as the doe [if player is not barecrotch]frees your cock, [else]kisses your length from the base to the tip, [end if]shoving it into her mouth with wild abandon and throating its entire length, bobbing her head as a woman possessed. There's nothing but raw need in her actions, and you're already so turned on by her taste and the display put on by the desperate doe that you don't last long. As you warn the doe about your impending orgasm, she doubles her efforts, tugging off your shaft and stroking you to completion, letting your sizable contribution cover her chest and face like a perverted version of her fur's white patterns. Licking her fingers clean, she uses her free hand to transfer your cum into her pussy, openly playing with herself using your seed as lube.";
			say "     Exhausted from your efforts, you step away from the still-horny sitatunga, staggering to your gear and starting in the opposite direction. The slut's still going at it until you're out of earshot, and you doubt the reckless self-pleasure will stop. Shaking your head, you let your mind wander to other things. You've got places to be and people to see!";
			CreatureSexAftermath "Player" receives "OralPussy" from "Sitatunga Doe";
			[]
		-- "Walk away. She's not your type.":
			say "     Leaving the crying doe to her own devices, you tell her that you're not interested in her. You simply defeated her because she was attacking you. She seems almost disappointed when you walk away, but doesn't try to follow you, and soon enough you return to the path, accompanied only by the ever-present cicadasong.";

Sitatunga ends here.