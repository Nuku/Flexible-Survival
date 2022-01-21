Version 3 of Painted Wolf Herm by Guest Writers begins here.
[ Version 3 - Added to Victory Sex ]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Kyvi Stormbreaker. All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]
[- Originally Authored By: Kyvi Stormbreaker -]
"Adds Painted Wolf Herm to Flexible Survival."


Section 1 - Creature Responses


wolfhermvictory is a number that varies.
wolfhermdefeat is a number that varies.

to say wolfherm wins:
	if Player is neuter:
		say "     She looks you over, and upon seeing nothing that peaks her interest she walks away and leaves you lying on the ground.";
	else:
		if wolfhermdefeat is 0: [first time losing to wolf herm]
			if Player is herm:
				say "     The Painted Wolf Herm chuckles, the creature rolling her hips as she strolls forward, showing the graceful curves of her figure and the huge throbbing dick between her legs. With a pleasant chuckle, her hands tear into your clothing, stripping you nude before holding you upside down. After looking at your [bodydesc of Player] form over, she spins around over you and gets onto all fours, taking your full length into her mouth and fellating you quite skillfully. Her nose crushed to your groin, she drags her tongue along your thick, meaty length and nibbles at your plump testicles until a cry of pleasure opens your mouth wide. The motion presents the Painted Wolf Herm with an undeniable opportunity. The creature thrusts her cock forward and into your open maw. With a loud, lewd moan, the Painted Wolf Herm thrusts over and over again, penetrating your now widely stretched mouth as she cries out in her own pleasure, slowly locking her knot behind your lips as her own mouth suckles on your [Cock of Player] cock like a blowjob queen.";
				say "     You feel her dip a furred paw down lower and brush across your clit. Her paw begins to quickly slide a digit across your little button and you feel her cock begin to bulge in your mouth. A massive load of wolf seed begins squirting directly down your throat, deep into your [bodytype of Player] belly. Her ministrations on your own body push you over the edge and she brings you to orgasm, your cock spatters your virile spunk against the back of her throat as your cunt gushes sweet nectar out across the ground. She stands up and turns around, licking you once on the cheek before walking away licking her paws clean of your juices.";
				CreatureSexAftermath "Painted Wolf Herm" receives "OralCock" from "Player";
			else if Player is male:
				say "     The Painted Wolf Herm chuckles, the creature rolling her hips as she strolls forward, showing the graceful curves of her figure and the huge throbbing dick between her legs. With a pleasant chuckle, her hands tear into your clothing, stripping you nude before holding you upside down. After looking at your [bodydesc of Player] form over, she spins around over you and gets onto all fours, taking your full length into her mouth and fellating you quite skillfully.";
				say "     Her nose crushed to your groin, she drags her tongue along your thick, meaty length and nibbles at your plump testicles until a cry of pleasure opens your mouth wide. The motion presents the Painted Wolf Herm with an undeniable opportunity, the creature thrusts her cock forward and into your open maw. With a loud, lewd moan, the Painted Wolf Herm thrusts over and over again, penetrating that open mouth as she cries out in pleasure, slowly locking her knot behind those lips as her own mouth suckles on your [Cock of Player] cock like a blowjob queen. With a final violent shudder, the Painted Wolf Herm cries out in pleasure, dumping a thick, rich splattering of semen inside your maw as you likewise spill your seed into hers. With a final violent shudder, the Painted Wolf Herm cries out in pleasure, dumping a thick, rich splattering of semen inside your maw as you cry out and drench the creature's muzzle in juice.";
				CreatureSexAftermath "Painted Wolf Herm" receives "OralCock" from "Player";
			else:
				say "     The Painted Wolf Herm chuckles, the creature rolling her hips as she strolls forward, showing the graceful curves of her figure and the huge throbbing dick between her legs. With a pleasant chuckle, her hands tear into your clothing, stripping you nude before holding you upside down. After looking at your [bodydesc of Player] form over, she spins around over you and gets onto all fours. Burying her nose in your snatch, the Painted Wolf Herm drags her tongue along your damp, painfully moist slit until, with a cry of pleasure, your mouth opens wide. The motion presents the Painted Wolf Herm with an undeniable opportunity, the creature thrusting her cock forward into your open maw. With a loud, lewd moan, the Painted Wolf Herm thrusts over and over again, penetrating your open mouth as she cries out in pleasure, slowly stretching your lips wide with her nose. With a final violent shudder, the Painted Wolf Herm cries out in pleasure, dumping a thick, rich splattering of semen inside your maw as you cry out and drench the creature's muzzle in juice.";
			now wolfhermdefeat is 1;
			CreatureSexAftermath "Player" receives "OralCock" from "Painted Wolf Herm";
		else:
			if a random chance of 1 in 5 succeeds: [Chance for a submissive footjob!]
				if Player is male:
					say "     She saunters over to you as you are lying on the ground with an evil gleam in her eyes. Gesturing for you to remove your clothes, she walks over to a nearby stream and dips both of her footpaws in for a moment, scrubbing them clean. You lie on the ground and await her next move with a questioning look in your eyes. One of her paws begins to trail up your leg and as realization dawns on you, she grins and pushes her paw against your still soft cock, starting to stroke up and down its length with it squeezed between two of her toes. A moan escapes your lips as your [Cock of Player] shaft begins to throb, gaining length and swelling to its full size between her toes[if Cock Length of Player > 12]. She takes it and maneuvers it to rest against your belly, pointing your sizable length to point right at your face[end if]. her paw begins to slide quickly across your length, aided by your copious leaking of pre-cum. She doesn't slow down or give you a chance to protest as her grips on your [cock size desc of Player] cock tightens and your shaft begins to swell to disgorge its plentiful load. Something feels wrong though. She's pressed her heel down at the base of your cock denying you release! You begin to moan and beg her to move her footpaw and let you cum and after an agonizing minute of denial she finally lets the pressure up[if Cock Length of Player > 12]. She keeps your [Cock of Player] cock pointed at your face as you experience a massively powerful orgasm. You shoot of several more spurts of cum than usual and end up with your entire face covered in your own seed[else]. She works her paws over your cock, splattering your seed across her feet and your crotch[end if]. She giggles and lies down on top of you, her tongue darting out and starting to clean up your mess for you. Once all the cum is gone, you open your eyes to her walking away and waving at you.";
				else if Player is female:
					say "     She saunters over to you as you are lying on the ground with an evil gleam in her eyes. Gesturing for you to remove your clothes she walks over to a nearby stream and dips both of her footpaws in for a moment, scrubbing them clean. You lie on the ground and await her next move with a questioning look in your eyes. One of her paws begins to trail up your leg and as realization dawns on you she grins and pushes her paw against the top of your moistened slit. her heel presses into your clit and she slides it back and forth several times before repositioning her foot so her toes are on sitting right over your sensitive love button. She giggles and begins to slide her foot back, slowly at first but picking up speed quite rapidly. You feel each digit slide over your clit very lightly and the sensation begins to drive you crazy, your [bodytype of Player] body writhes against her foot as your moans beg her to push you further. She begins to stroke herself and you can tell that the wolf isn't far from her own orgasm. her foot begins to dig almost painfully into you, but your orgasm is so close you ignore the pain and focus on the pleasure. Before your eyes begin to roll back into your head, you see her knot swell and she howls as her cock starts to shoot its creamy load over your [bodydesc of Player] body as your snatch drenches the ground under you with your delicious nectar. She doesn't stop her foot and you soon pass out from the overload of pleasure. When you come to, she is nowhere to be found!";
				CreatureSexAftermath "Player" receives "Stroking" from "Painted Wolf Herm";
			else:
				say "     The she-wolf pushes you down and tears your clothes off in a frenzy, a predatory gleam in her eyes. She motions for you to close your eyes and as you oblige you see her squat down over you. You take a breath and get a nose full of her musky scent, immediately followed by a spattering of wetness across your cheeks. She presses herself down a few inches more and you know what you have to do. Your tongue darts from your mouth, seeking her out, teasing up and down the sides of her puffy lips. A moan escapes her throat as you brush your tongue lightly across her clit, you feel a splash on your chest and realize she is now stroking herself while you tongue her. She presses down insistently and you push your tongue into her silky passage, relishing the taste of her nectar. Another splash of her precum across your skin makes you realize how close she is and you dash your tongue against the roof of her cunt, slapping against her g-spot roughly.";
				say "     her walls begin to clench around your tongue and she howls above you, bucking her hips wildly as she peaks. her pussy squirts a large amount of her juices into your waiting mouth and onto your face. She moans and you feel her cock follow suit, splattering a massive load of her seed across your [bodytype of Player] chest and hips. You bask in the afterglow of her dual orgasms and drift asleep.";
				say "     You awake to her tongue cleaning you off. As you reach out to try and touch her she realizes you are awake and with a yip bounds away, leaving you half cleaned up.";
				CreatureSexAftermath "Player" receives "Stroking" from "Painted Wolf Herm";


to say wolfherm loses:
	if equinoidstatus >= 6 and equinoidstatus < 9, increase equinoidstatus by 1;
	let diceroll be a random number between 33 and 125;
	if diceroll < Libido of Player:
		say "     Looking over the wild wolf herm's painted body, you feel a lustful urge to have sex with her. As your eyes roam over her sexy body, her arousing scent makes you eye her cock and pussy longingly. Shall you give in to those urges completely and have sex with the lupine herm or hold back and sate your lusts orally? (Y=sex, N=oral)";
		if Player consents:
			if Player is male:
				say "     You press her onto her back and slide your hard cock under her balls, getting it lined up with her wet slit. The she-wolf howls in delight as you sink your [cock size desc of Player] cock into her wet cunt. She does not resist your mounting her and squeezes her paws over your hands as you start fondling her four large breasts. Her black nipples are plump and hard and you find yourself playing with them eagerly. As your arousal builds as her scent gets thicker, you are drawn to lean in and licks those nipples, then start nursing from them. You taste her milk leaking onto your tongue and you drink it down thirstily, feeling it warm your [bodytype of Player] belly. The mottled wolf moves her paws, bringing one to stroke your head as you nurse from her as the other grabs your rear. her paws urge you to keep nursing and thrusting, not that you need any encouragement for either. As you satisfy your thirst on her milk, you drive your [Cock of Player] cock into her and blast your thick cum into her ready womb.";
				CreatureSexAftermath "Painted Wolf Herm" receives "PussyFuck" from "Player";
				if Player is female:
					say "     Lost in the lust of her arousing milk, you don't protest as she rolls you over and lines up her throbbing cock with your pussy and mounts you. her throbbing, lupine meat sinks into you, spreading your wet folds open around her animalistic penis. She growls softly and drives herself fully into you, tying with you before unleashing her lupine seed deep inside you. You moan loudly, drifting into a lustful haze. When you finally recover, she has already left, leaving you with a warm, full feeling deep inside.";
					CreatureSexAftermath "Player" receives "PussyFuck" from "Painted Wolf Herm";
					PlayerDrink 5;
					decrease Libido of Player by a random number between 5 and 15;
					if Libido of Player < 0, now Libido of Player is 0;
				else:
					say "     Lost in the lust of her arousing milk, you don't protest as she pulls off your cock and brings your mouth to her throbbing, lupine cock. She rubs her paws over your head as she slides it into your mouth and starts fucking your face. The she-wolf growls softly and drives herself fully into you, stuffing her knot in your mouth and pushing her cock down your throat before unleashing her lupine seed to flow down into your belly to mix with her milk. You moan softly around it, drifting into a lustful haze. When you finally recover, she has gone, leaving you with a warm, full feeling deep inside.";
					CreatureSexAftermath "Player" receives "OralCock" from "Painted Wolf Herm";
					PlayerDrink 5;
					decrease Libido of Player by a random number between 5 and 15;
					if Libido of Player < 0, now Libido of Player is 0;
			else:
				say "     You press her onto her back and straddle her hips, grinding your wet pussy down onto her throbbing shaft. The she-wolf howls in delight as you sink down onto her cock. She does not resist your riding her and squeezes her paws over your hands as you start fondling her four large breasts. her black nipples are plump and hard and you find yourself playing with them eagerly. As your arousal builds as her scent gets thicker, you are drawn to lean in and licks those nipples, then start nursing from them. You taste her milk leaking onto your tongue and you drink it down thirstily, feeling it warm your [bodytype of Player] belly. The mottled wolf moves her paws, bringing one to stroke your head as you nurse from her as the other grabs your rear. her paws urge you to keep nursing and sliding over her black rod, not that you need any encouragement for either. As you satisfy your thirst on her milk, you drive yourself down hard onto her cock, forcing her knot into you so this sexy beast can tie with you. Your [cunt size desc of Player] pussy clamps down around that thick bulb, milking at her cock as you cum, drawing out as much seed as you can from her. You can feel it flowing up into you, stuffing your pussy with her heated semen as she seeks to breed you. You moan softly as your orgasms pass, drifting into a lustful haze. When you finally recover, she has gone, leaving you with a warm, full feeling deep inside.";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Painted Wolf Herm";
				PlayerDrink 5;
				decrease Libido of Player by a random number between 5 and 15;
				if Libido of Player < 0, now Libido of Player is 0;
		else:
			say "     With a dominant howl, you throw your opponent to the ground, straddling the wolf herm's mouth as your hips wiggle in preparation. Smiling with seductive, passionate lust, you lower your hips to her face and bury your own snout in the thick, pungent aroma lifting from the creature's groin. You [if Player is female]smile sweetly as your tongue strokes her length, your mouth filled with that masculine flavor. Your nethers tingle as they are tended to, your mind filling with the bliss of having a thick, meaty length to suckle upon. With a moan, you press forward, managing to take her cock all the way inside your mouth, slowly savoring that wonderful sensation until, with a long, delightful spurt, your mouth is flooded with semen that tingles as it works into your [bodytype of Player] belly[else]slowly lap at her feminine lips, grinding your nethers against the herm's face as you taste the sweet fluids the creature offers. Nestling deep into that slit, the slightest taste is enough to make you moan, craving more as you spread her thick, slimy lips around your tongue. With a happy moan you press several fingers deeper into her, probing her most sensitive spots as she takes four fingers inside of her. She growls and grips your head as her walls clench down on your fingers and your mouth is filled with the sweet, passionate, feminine nectar you crave[end if]. her long, lupine tongue plays across your groin, lapping up your cum as you orgasm while swallowing down her herm juices.";
			CreatureSexAftermath "Player" receives "OralCock" from "Painted Wolf Herm";
			if Libido of Player < 60, increase Libido of Player by a random number between 1 and 10;
	else:
		say "     With a dominant howl, you throw your opponent to the ground, straddling the wolf herm's mouth as your hips wiggle in preparation. Smiling with seductive, passionate lust, you lower your hips to her face and bury your own snout in the thick, pungent aroma lifting from the creature's groin. You [if Player is female]smile sweetly as your tongue strokes their length, your mouth filled with that masculine flavor. Your nethers tingle as they are tended to, your mind filling with the bliss of having a thick, meaty length to suckle upon. With a moan, you press forward, managing to take her cock all the way inside your mouth, slowly savoring that wonderful sensation until, with a long, delightful spurt, your mouth is flooded with semen that tingles as it works into your [bodytype of Player] belly[else]slowly lap at her feminine lips, grinding your nethers against the herm's face as you taste the sweet fluids the creature offers. Nestling deep into that slit, the slightest taste is enough to make you moan, craving more as you spread her thick, slimy lips around your tongue. With a happy moan you press several fingers deeper into her, probing her most sensitive spots as she takes four fingers inside of her. She growls and grips your head as her walls clench down on your fingers and your mouth is filled with the sweet, passionate, feminine nectar you crave[end if]. her long, lupine tongue plays across your groin, lapping up your cum as you orgasm while swallowing down her herm juices.";
		CreatureSexAftermath "Player" receives "OralCock" from "Painted Wolf Herm";
		if Libido of Player < 60, increase Libido of Player by a random number between 1 and 10;
	if equinoidstatus is 9:
		say "     You recall your agreement with the equinoids and have defeated a trio of the painted wolves. They should let you approach their camp now.";
		now equinoidstatus is 10;
		AddNavPoint Equinoid Camp;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Painted Wolf"; [name of the overall species of the infection, used for children, ...]
	add "Painted Wolf Herm" to infections of CanineList;
	add "Painted Wolf Herm" to infections of FurryList;
	add "Painted Wolf Herm" to infections of NatureList;
	add "Painted Wolf Herm" to infections of HermList;
	add "Painted Wolf Herm" to infections of MaleList;
	add "Painted Wolf Herm" to infections of TaperedCockList;
	add "Painted Wolf Herm" to infections of KnottedCockList;
	add "Painted Wolf Herm" to infections of SheathedCockList;
	add "Painted Wolf Herm" to infections of BipedalList;
	add "Painted Wolf Herm" to infections of TailList;
	now Name entry is "Painted Wolf Herm"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The painted wolf herm [one of]gouges you with her claws, leaving streaks of blood across your skin[or]leaps at you, catching your arm in her mouth. She bites down hard, leaving a muzzle-shaped wound[or]howls, causing you to tremble in fear for a moment before you regain your resolve[at random]."; [Text used when the monster makes an Attack]
	now defeated entry is "[wolfherm loses]"; [Text used when player wins, can be directly entered like combat text or description. If it is more complex it can be linked with a 'To say' block as the demonstration text shows.]
	now victory entry is "[wolfherm wins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To say' block as the demonstration text shows.]
	now desc entry is "[mongendernum 5]     Looking over the Painted Wolf Herm, her body is covered in thick, fluffy patchwork of gold, gray, and black fur. her head is mostly canine, with rare smatterings of human and harsh, triangular ears. her body is coated in layers of powerful, flexing muscles that are made readily apparent with the slightest twist. She has four heavy breasts, the first row the size of basketballs and the second row slightly smaller. her arms are still human, with the exception of tiny claws on the tips of the fingers. her legs are digitigrade, with powerful haunches and graceful calves. She has a large, fluffy tail that, although similar to a husky, is lacking any curve or curl in it. As she stands unabashed in the open, you see that she has a thick, knotted, ten-inch canine shaft. Two heavy balls rest above her dripping female sex, the aroma of which lays thick and heady in the air around you."; [ Description of the creature when you encounter it.]
	now face entry is "mostly canine, with rare smatterings of human and harsh, triangular ears"; [ Face description, format as "Your face is (your text)."]
	now body entry is "coated in layers of powerful, flexing muscles that are made readily apparent with the slightest twist. Your arms are still human, with the exception of tiny claws on the tips of the fingers. Your legs are digitigrade, with powerful haunches and graceful calves"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "thick, fluffy patchwork of gold, gray, and black fur that conceals the"; [ skin Description, format as "Your body is covered in (your text) skin."]
	now tail entry is "You have a large, fluffy tail that, although similar to a husky, is lacking any curve or curl in it."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]canine[or]black[or]knotted[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your head crackles as it reforms, becoming large and canine, with harsh, triangular ears that subconsciously twist and flex"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your body burns as muscles ripple under your flesh, leaving you with the perfectly toned body of an Olympian swimmer. Your arms creak as they tingle with warmth, tiny claws pushing through the tips of your fingers. Your legs ache with pain, slowly growing more muscular, more refined as you shift onto the balls of your wide, broad feet"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "your skin itches, thick, flat fur pushing through your flesh as you writhe, becoming a patchwork portrait of gold, gray, and black fur"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your ass shifts with a loud creak, a perfect fluffy tail popping out from the cleft of your butt cheeks"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your cock twitches and throbs as it becomes ebony, tapered, and swollen at the base, yearning for use"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 18;
	now dex entry is 14;
	now sta entry is 11;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 60; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 6; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Park"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 10; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 4; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 7; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 10; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 7; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 60; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscular[or]powerful[at random]";
	now type entry is "lupine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;




Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Painted Wolf Herm Infection"	"Infection"	""	Painted Wolf Herm Infection rule	1000	false

This is the Painted Wolf Herm Infection rule:
	if Player has a body of "Painted Wolf Herm":
		trigger ending "Painted Wolf Herm Infection";
		if humanity of Player < 10:
			if Player is female:
				say "     Falling prey to the infection, you wander off into the park to sate your lusts. You are drawn there by a faint scent that grows as you track your target. Finding the hermaphrodite wolf before you is releasing that rich blend of masculine and feminine scents, you approach her quickly, moaning with need. You bend over for her, displaying your own lovely attributes to her. She takes her time teasing you, caressing your [if Player is male]throbbing cock and [end if]dripping cunt. You are reduced to moaning, needful yips at all the unsatisfying attention to your genitals.";
				say "     Clearly pleased with how you're turning out, she hops atop you, finally lining up her cock and mounting you like you need so badly after all the teasing. You groan softly as her thick cock pushes into you, spreading your wet lips and driving deep into you. She ruts you zealously as you moan submissively under your new mistress, eager for her to breed you again and again. And if you're really good, maybe she'll even let you mount her. Maybe.";
			else:
				say "     Falling prey to the infection, you wander off into the park to sate your lusts. You are drawn there by a faint scent that grows as you track your target. Finding the hermaphrodite wolf you is releasing that rich blend of masculine and feminine scents, you approach her quickly, growling softly with desire. You pounce her and press her down. She struggles, but eventually submits to the eager male atop her, letting you line up with her pussy and take her. You fuck her hard and fast, again and again until your hot seed has filled her womb and the excess is leaking out onto the grass. She moans softly and strokes her full tummy, eagerly anticipating her first litter - the first of many.";
		else:
			say "     After escaping the city, you end up working at a small company that's headed a trio of other wolves. One is a female maned wolf and the males are a gray wolf and a red wolf. The boss seems to think that there'd be less fighting than with mixed species and the pack mentality would improve teamwork. It certainly seems to be successful, with you taking charge of the others and everyone working well together and with the human employees. Being a poor businessman, it seems to be the only good decision he made.";
			say "     Unbeknownst to your employer, you start having sex with the others outside of work, taking the dominant position over them there as well, further cementing your control. When the female's pregnancy starts to show, you make your move and start individually inviting your human colleagues over. Suspecting nothing, they find themselves quickly drawn into a wolf orgy. You are careful to keep their changes subtle at first so you can ensnare them all.";
			say "     Your growing pack waits while you go into your boss's office and fuck him until there's a change in management and you take over the company. When you're finished with him, you drag him out into the hall and toss him to the wolves who had broken into an orgy to further change the rest of your lustful pack. Your company prospers and always looks forward to the next [']hostile takeover['].";


Painted Wolf Herm ends here.
