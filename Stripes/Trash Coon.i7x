Version 1 of Trash Coon by Stripes begins here.

"Adds a Trash Coon creature to Flexible Survival's Wandering Monsters table"


Section 1 - Monster Responses

when play begins:
	add { "Trash Coon" } to infections of girl;
	add { "Trash Coon" } to infections of furry;

notrashcoonsex is a number that varies.

to say trashcoondesc:
	setmongender 4; [creature is female]
	choose row monster from table of random critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	say "     As you wander along, a [one of]large dumpster opens up[or]mound of trash shifts[or]pile of garbage bags tumble over[at random], revealing a large, female raccoon underneath. Her nimble paws brush over one another as she stares at you with bright eyes within her dark mask. This large, scruffy raccoon woman has dirty fur and nothing else on to cover her heavy-set body. Her wide hips and ample breasts are plain to see, as is the wet pussy between her legs. She has a strong odor about her, a mix of arousal and trash from her recent dumpster diving.";

to say losetotrashcoon:
	now notrashcoonsex is 0;
	say "     The big coon laughs merrily as she grabs you and tosses you to the ground. She pulls out a bottle of dirty water from where she was rummaging around in the trash. As she strides back towards you, she fastidiously washes her paws with the water, then pushes you back down and brings her damp paws to your ";
	if player is male:
		say "[if cocks of player > 1]cocks, stroking and caressing them to get you hard[else]cock, stroking and caressing it to get you hard[end if]. Her nimble paws move back and forth from your throbbing maleness to your balls[if cunts of player is 1] and cunt[else if cunts of player > 1]and cunts[end if]. After a little teasing, she decides you're ready for the main course and climbs atop you, bringing her wide hips and lowering her wet pussy to your face. As she plunges her muzzle down over your cock, licking and sucking vigorously, you moan and take in her strong scent and the strength of her arousal overwhelms you. You push your face up into her folds, licking and kissing at her dripping slit, making her chirr happily and suck harder in return. She grinds down into your face, soaking you in her juices as she licks and sucks at your [if cocks of player > 1]cocks[else]cock[end if] while fondling [if cunts of player > 1]your pussies[else if cunts of player is 1]your pussy[else]you[end if]. Her hot juices flow into your mouth and down your face. Eventually, it all becomes too much and you buck beneath her, pumping your hot seed down her throat. After her tasty treat, she raises her heavy body off of you and sends you on your way with a kiss.";
	else:
		say "[if cunts of player > 1]pussies[else]pussy[end if], stroking over your sensitive folds to get you to moan. Her nimble fingers slip into you and begin to caress your [if cunts of player > 1]clits[else]clit[end if] and inner walls. After a little teasing, she decides you're ready for the main course and climbs atop you, bringing her wide hips and lowering her wet pussy to your face. As she plunges her muzzle between your legs and starts licking your wet lips, you moan and take in her strong scent and the strength of her arousal overwhelms you. You push your face up into her folds, licking and kissing at her dripping slit, making her chirr happily and dive her tongue deeper into you. She grinds down into your face, soaking you in her juices as she licks and laps at your [if cunts of player > 1]cunts[else]cunt[end if] while fingering you. Her hot juices flow into your mouth and down your face. Eventually, it all becomes too much and you buck beneath her, grinding your [if cunts of player > 1]pussies[else]pussy[end if] against her muzzle and cumming hard. After her tasty treat, she raises her heavy body off of you and sends you on your way with a kiss.";

to say beatthetrashcoon:
	let skipx be 0;
	if bodyname of player is "Trash Coon" or facename of player is "Trash Coon":
		now notrashcoonsex is 0;
		say "     The bulky coon stumbles back from the final blow and collapses atop the pile of trash she was rummaging through. Laying back against it, this gives you a lovely view of her pudgy raccoon body, awakening a lustful urge in you. Her aroused scent mixes with that of the trash, which also seems strangely enticing and you cannot help yourself. Tossing aside your gear, you pounce onto her bulky body and kiss her passionately. A little surprised by the kiss after the fight, she wraps her arms around you and welcomes the affection.";
	else if notrashcoonsex > 2:
		say "     The bulky coon stumbles back from the final blow and collapses atop the pile of trash she was rummaging through. As with the others of her kind, you take this opportunity to turn and head off, leaving her behind.";
	else if libido of player > a random number between 30 and 130:
		say "     The bulky coon stumbles back from the final blow and collapses atop the pile of trash she was rummaging through. Laying back against it, this gives you a lovely view of her pudgy raccoon body, awakening a lustful urge in you. Her aroused scent is heavy in the air, enticing you above the smell of the trash.";
		say "     [bold type]She is there for the taking, if you want her.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if the player consents:
			LineBreak;
			now notrashcoonsex is 0;
			say "     Eying the horny coon, you decide to give in to your urges. Tossing aside your gear, you pounce onto her bulky body and kiss her passionately. A little surprised by the kiss after the fight, she wraps her arms around you and welcomes the affection.";
		else:
			LineBreak;
			say "     Resisting the urge to roll around in the trash with the lusty raccoon, you turn and head off, leaving her behind.";
			increase notrashcoonsex by 1;
			let skipx be 1;
	else:
		say "     The bulky coon stumbles back from the final blow and collapses atop the pile of trash she was rummaging through. Deciding to make use of this opportunity, you turn and head off, leaving her behind.";
		let skipx be 1;
	if cocks of player > 0 and skipx is 0:
		say "     Your cock grows quite hard and throbs, soon slipping between her wet folds to dive into her needy pussy. She chirrs in pleasure as you penetrate her and start thrusting. With the cushion of her fat and the soft trash beneath her, you pound away vigorously, enjoying the soft sway of her body as you mate with her. You kiss one another repeatedly and your paws wander up to her bosom to grope her big breasts [if breast size of player > 0]while she does the same to you[else]while her paws squeeze and pull at your ass with each thrust[end if]. Your tongues slide around inside each other's mouths as the pace quickens until finally you drive hard into her, pumping your hot [cockname of player] semen into her and she orgasms powerfully in response. Her quivering pussy milks and squeezes at your cock, drawing out you cum until you collapse panting atop her. Spent now, you give her a final kiss before climbing off and heading on your way, leaving her to rest in the trash after the lustful mating.";
	else if cunts of player > 0 and skipx is 0:
		say "     Your [if cunts of player > 1]pussies[else]pussy[end if] grows drippingly wet and your clit throbs. You bring a hand between her thighs, stroking and teasing her wet snatch. She chirrs in pleasure as you dive a trio of fingers into her start pumping, and she quickly returns the favor by rubbing your sensitive folds and slipping a few fingers into you. You kiss one another repeatedly while fingering one another. Your tongues slide around inside each other's mouths as the pace quickens until finally you are each pumping vigorously into the other as you orgasm powerfully in response. Your groins and hands are soaked in female cum as your pussies quiver and squeeze at the digits filling them until finally you collapse panting atop her softly padded body. Satisfied now, you give her a final kiss before climbing off and heading on your way, leaving her to rest in the trash after the lustful encounter.";
	else if skipx is 0:
		say "     Lacking much of a gender of your own, but still excited by the rotund female, you dive between her legs and start licking at her juicy cunt. Her strong scent and the taste of her juices is very exciting. You dive your tongue into her and rub her clit with your thumb, enjoying the chirring sounds of pleasure she's emitting. You work her to an eventual climax that is quite powerful and leaves your face soaked in her cum. You move atop her and give her a sticky kiss before climbing off and heading on your way, leaving her to rest in the trash after the lustful encounter.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Trash Coon"; [The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The large coon punches you![or]The female raccoon twists your arm painfully![or]The horny raccoon woman takes you into a strong hug, burying your face in her bosom. Her strong smell makes you a little woozy![or]The big coon heaves you up and tosses you into a pile of junk![or]The female raccoon socks you one in the jaw![at random]"; [Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthetrashcoon]"; [ Text when monster loses. Change 'template' as above. ]
	now victory entry is "[losetotrashcoon]"; [ Text when monster wins. Change 'template' as above. ]
	now desc entry is "[trashcoondesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of a scruffy looking raccoon. You have a raccoon's dark mask around your eyes and a perpetually dirty face. Your cute ears move and flick around, twitching at every sound";
	now body entry is "bulky and well-padded. Your hands have darker, nimble fingers ending in little, black claws";
	now skin entry is "scruffy gray fur which is darker across your back";
	now tail entry is "You have a fluffy raccoon tail growing from atop your wide hips. It is always a little dirty and the fur poorly groomed.";
	now cock entry is "[one of]raccoon[or]coon[at random]";
	now face change entry is "your mouth and nose elongate into a narrow, whiskered muzzle with a black nose at the end. A raccoon's dark mask forms around your eyes as your ears move up and reform into cute little cups";
	now body change entry is "you grow heavy, becoming soft and pudgy. This spreads down your arms and legs, terminating as your hands and feet become dark, nimble paws with little black claws at the end of your digits";
	now skin change entry is "scruffy gray fur spreads across your body";
	now ass change entry is "your hips grow wide and your ass becomes and plump and padded booty. There is an pulsing throb from your tailbone as it reshapes itself, growing out into an unkempt raccoon tail"; [ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it pulses and throbs. The air is filled with a strong, musky scent as your excitement grows until finally you moan loudly and cum hard, spurting your semen as your cock reshapes itself into that of a raccoon";
	now str entry is 15;
	now dex entry is 16;
	now sta entry is 13;
	now per entry is 12;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 40; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Junkyard"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 10; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 6; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of breasts the infection will give a player. ]
	now breast size entry is 5; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 10; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is "dirty water"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 13; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]fat[or]pudgy[or]hefty[or]bulky[at random]";
	now type entry is "[one of]raccoon[or]coon-like[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname of player is "Trash Coon":
		if humanity of player < 10:
			say "     As your human mind falters, it is filled with a longing for trash and scavenging. You find your way to the city mall and set up your home among the many dumpsters behind the food court. Several of the rats who live there become friends with you, though only a few are willing to have a romp with you in the messy trash, much preferring their clean stores and mall. They try to encourage you to come in and live with them, but you much prefer your messy home, though you'll go through the trouble of cleaning up (a little) to visit on occasion.";
		else:
			say "     You manage to maintain your sanity during your time in the city until rescue from the military arrives. You join the others in their holding area and have to wait through testing and processing. [if coonstatus > 0]While the pink raccoon is distracting the guards at night[else]During this time[end if], you do manage to slip away at night on occasion, drawn to the dumpsters behind the mess hall. You rummage around in them happily, unable to stop yourself. When you get caught one night by one of the mess officers, you are able to convince him to not call the MPs in exchange for a blow job. After that, he stops by every night during your nocturnal visits to enjoy another blow job. You are happy to see his balls and cock swelling and gaining gray fur after a few quickies with you. [if player is female]And after a few nights, it's on to him fucking you roughly in the dumpster and his changes progress further[else]His changes continue to progress over the next week or so until finally there no hiding them[end if]. After that, there's another messy coon in the waiting area with you. He's not at all upset with this, enjoying the pleasures of his new form and joining you in sneaking off to the dumpsters at night.";
			if player is female:
				say "     The cook remains with you and you get a house together, having rough, messy sex all over your home whenever you can. Soon enough, your belly grows full with kits and you have lots of scruffy coons running around the place. You are happy to stay home and raise them while your mate runs a greasy diner.";
			else:
				say "     You and the cook remain friends, roommates and occasional lovers to satisfy your lusts. That is, until you meet a big, sexy coon woman. After a few dates, she moves in with you and you have wild, messy sex with her all over your home. When you come home from work at the recycling facility one day, you find your roommate fucking your girlfriend. A loud fistfight ensues that reminds you of your fights back in the city, the three of you collapse into a heap and it devolves into a lustful threesome. From that point on, you have a messy [italic type]menage a trois[roman type], filling her with litters of kits from both of you.";

Trash Coon ends here.
