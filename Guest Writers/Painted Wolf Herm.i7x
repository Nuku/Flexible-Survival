Version 3 of Painted Wolf Herm by Guest Writers begins here.
[ Version 3 - Added to Victory Sex ]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Kyvi Stormbreaker. All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]
[- Originally Authored By: Kyvi Stormbreaker -]
"Adds Painted Wolf Herm to Flexible Survival."


Section 1 - Monster Responses


wolfhermvictory is a number that varies.
wolfhermdefeat is a number that varies.

to say wolfherm attack:
	if player is neuter:
		say "Shi looks you over, seeing nothing that peaks hir interest shi walks away and leaves you lying on the ground.";
	else:
		if wolfhermdefeat is 0: [first time losing to wolf herm]
			if cocks of player > 0 and cunts of player > 0:
				say "     The Painted Wolf Herm chuckles, the creature rolling hir hips as shi strolls forward, showing the graceful curves of hir figure and the huge throbbing dick between hir legs. With a pleasant chuckle, hir hands tear into your clothing, stripping you nude before holding you upside down. After looking your [bodydesc of player] form over, shi spins around over you and gets onto all fours, taking your full length into hir mouth and fellating you quite skillfully. Hir nose crushed to your groin, shi drags hir tongue along your thick, meaty length and nibbles at your plump testes until a cry of pleasure opens your mouth wide. The motion presents the Painted Wolf Herm with an undeniable opportunity. The creature thrusts hir cock forward and into your open maw. With a loud, lewd moan, the Painted Wolf Herm thrusts over and over again, penetrating your now stretched wide mouth as shi cries out in hir own pleasure, slowly locking hir knot behind your lips as hir own mouth suckles on your [cock of player] cock like a blowjob queen.";
				say "     You feel hir dip a furred paw down lower and brush across your clit. Hir paw begins to quickly slide a digit across your little button and you feel hir cock begin to bulge in your mouth. A massive load of wolf seed begins squirting directly down your throat, deep into your [bodytype of player] belly. Hir ministrations on your own body push you over the edge and shi brings you to orgasm, your cock spatters your virile spunk against the back of hir throat as your cunt gushes sweet nectar out across the ground. Shi stands up and turns around, licking you once on the cheek before walking away licking hir paws clean of your juices.";
			else if cocks of player > 0:
				say "     The Painted Wolf Herm chuckles, the creature rolling hir hips as shi strolls forward, showing the graceful curves of hir figure and the huge throbbing dick between hir legs. With a pleasant chuckle, hir hands tear into your clothing, stripping you nude before holding you upside down. After looking your [bodydesc of player] form over, shi spins around over you and gets onto all fours, taking your full length into hir mouth and fellating you quite skillfully.";
				say "     Hir nose crushed to your groin, shi drags hir tongue along your thick, meaty length and nibbles at your plump testes until a cry of pleasure opens your mouth wide. The motion presents the Painted Wolf Herm with an undeniable opportunity, the creature thrusts hir cock forward and into your open maw. With a loud, lewd moan, the Painted Wolf Herm thrusts over and over again, penetrating that open mouth as shi cries out in pleasure, slowly locking hir knot behind those lips as hir own mouth suckles on your [cock of player] cock like a blowjob queen. With a final violent shudder, the Painted Wolf Herm cries out in pleasure, dumping a thick, rich splattering of semen inside your maw as you likewise spill your seed into hirs. With a final violent shudder, the Painted Wolf Herm cries out in pleasure, dumping a thick, rich splattering of semen inside your maw as you cry out and drench the creature's muzzle in juice.";
			else:
				say "     The Painted Wolf Herm chuckles, the creature rolling hir hips as shi strolls forward, showing the graceful curves of hir figure and the huge throbbing dick between hir legs. With a pleasant chuckle, hir hands tear into your clothing, stripping you nude before holding you upside down. After looking your [bodydesc of player] form over, shi spins around over you and gets onto all fours. Burying hir nose in your snatch, the Painted Wolf Herm drags hir tongue along your damp, painfully moist slit until, with a cry of pleasure, your mouth opens wide. The motion presents the Painted Wolf Herm with an undeniable opportunity, the creature thrusting hir cock forward into your open maw. With a loud, lewd moan, the Painted Wolf Herm thrusts over and over again, penetrating your open mouth as shi cries out in pleasure, slowly stretching your lips wide with hir nose. With a final violent shudder, the Painted Wolf Herm cries out in pleasure, dumping a thick, rich splattering of semen inside your maw as you cry out and drench the creature's muzzle in juice.";
			now wolfhermdefeat is 1;
		else:
			if a random chance of 1 in 5 succeeds: [Chance for a submissive footjob!]
				if cocks of player > 0:
					say "     Shi saunters over to you as you are lying on the ground with an evil gleam in hir eyes. Gesturing for you to remove your clothes, shi walks over to a nearby stream and dips both of hir footpaws in for a moment, scrubbing them clean. You lie on the ground and await hir next move with a questioning look in your eyes. One of hir paws begins to trail up your leg and as realization dawns on you, shi grins and pushes hir paw against your still soft cock, starting to stroke up and down its length with it squeezed between two of hir toes. A moan escapes your lips as your [cock of player] shaft begins to throb, gaining length and swelling to its full size between hir toes[if Cock length of player > 12]. Shi takes it and maneuvers it to rest against your belly, pointing your sizable length to point right at your face[end if]. Hir paw begins to slide quickly across your length, aided by your copious leaking of pre-cum. Shi doesn't slow down or give you a chance to protest as hir grips on your [cock size desc of player] cock tightens and your shaft begins to swell to disgorge its plentiful load. Something feels wrong though. Shi's pressed hir heel down at the base of your cock denying you release! You begin to moan and beg hir to move hir footpaw and let you cum and after an agonizing minute of denial shi finally lets the pressure up[if Cock length of player > 12]. Shi keeps your [cock of player] cock pointed at your face as you experience a massively powerful orgasm. You shoot of several more spurts of cum than usual and end up with your entire face covered in your own seed[else]. Shi works her paws over your cock, splattering your seed across her feet and your crotch[end if]. Shi giggles and lies down on top of you, hir tongue darting out and starting to clean up your mess for you. Once all the cum is gone, you open your eyes to hir walking away and waving at you.";
				else if cunts of player > 0:
					say "     Shi saunters over to you as you are lying on the ground with an evil gleam in hir eyes. Gesturing for you to remove your clothes shi walks over to a nearby stream and dips both of hir footpaws in for a moment, scrubbing them clean. You lie on the ground and await hir next move with a questioning look in your eyes. One of hir paws begins to trail up your leg and as realization dawns on you shi grins and pushes hir paw against the top of your moistened slit. Hir heel presses into your clit and shi slides it back and forth several times before repositioning hir foot so hir toes are on sitting right over your sensitive love button. Shi giggles and begins to slide hir foot back, slowly at first but picking up speed quite rapidly. You feel each digit slide over your clit very lightly and the sensation begins to drive you crazy, your [bodytype of player] body writhes against hir foot as your moans beg hir to push you further. Shi begins to stroke hirself and you can tell that the wolf isn't far from hir own orgasm. Hir foot begins to dig almost painfully into you, but your orgasm is so close you ignore the pain and focus on the pleasure. Before your eyes begin to roll back into your head, you see hir knot swell and shi howls as hir cock starts to shoot its creamy load over your [bodydesc of player] body as your snatch drenches the ground under you with your delicious nectar. Shi doesn't stop hir foot and you soon pass out from the overload of pleasure. When you come to, shi is nowhere to be found!";
			else:
				say "     The shi-wolf pushes you down and tears your clothes off in a frenzy, a predatory gleam in hir eyes. Shi motions for you to close your eyes and as you oblige you see hir squat down over you. You take a breath and get a nose full of hir musky scent, immediately followed by a spattering of wetness across your cheeks. Shi presses hirself down a few inches more and you know what you have to do. Your tongue darts from your mouth, seeking hir out, teasing up and down the sides of hir puffy lips. A moan escapes hir throat as you brush your tongue lightly across hir clit, you feel a splash on your chest and realize shi is now stroking hirself while you tongue hir. Shi presses down insistently and you push your tongue into hir silky passage, relishing the taste of hir nectar. Another splash of hir precum across your skin makes you realize how close she is and you dash your tongue against the roof of hir cunt, slapping against hir g-spot roughly.";
				say "     Hir walls begin to clench around your tongue and shi howls above you, bucking hir hips wildly as shi peaks. Hir pussy squirts a large amount of hir juices into your waiting mouth and onto your face. Shi moans and you feel hir cock follow suit, splattering a massive load of hir seed across your [bodytype of player] chest and hips. You bask in the afterglow of hir dual orgasms and drift asleep.";
				say "     You awake to hir tongue cleaning you off. As you reach out to try and touch hir shi realizes you are awake and with a yip bounds away, leaving you half cleaned up.";


to say beatpwh:
	if equinoidstatus >= 6 and equinoidstatus < 9, increase equinoidstatus by 1;
	let diceroll be a random number between 33 and 125;
	if diceroll < libido of player:
		say "     Looking over the wild wolf herm's painted body, you feel a lustful urge to have sex with hir. As your eyes roam over hir sexy body, hir arousing scent makes you eye hir cock and pussy longingly. Shall you give into those urges completely and have sex with the lupine herm or hold back and sate your lusts orally? (Y=sex, N=oral)";
		if the player consents:
			if cocks of player > 0:
				say "     You press hir onto hir back and slide your hard cock under hir balls, getting it lined up with hir wet slit. The shi-wolf howls in delight as you sink your [cock size desc of player] cock into hir wet cunt. Shi does not resist your mounting hir and squeezes hir paws over your hands as you start fondling hir four large breasts. Hir black nipples are plump and hard and you find yourself playing with them eagerly. As your arousal builds as hir scent gets thicker, you are drawn to lean in and licks those nipples, then start nursing from them. You taste hir milk leaking onto your tongue and you drink it down thirstily, feeling it warm your [bodytype of player] belly. The mottled wolf moves hir paws, bringing one to stroke your head as you nurse from hir as the other grabs your rear. Hir paws urge you to keep nursing and thrusting, not that you need any encouragement for either. As you satisfy your thirst on hir milk, you drive your [cock of player] cock into hir and blast your thick cum into hir ready womb.";
				if cunts of player > 0:
					say "     Lost in the lust of hir arousing milk, you don't protest as shi rolls you over and lines up hir throbbing cock with your pussy and mounts you. Hir throbbing, lupine meat sinks into you, spreading your wet folds open around hir animalistic penis. Shi growls softly and drives hirself fully into you, tying with you before unleashing hir lupine seed deep inside you. You moan loudly, drifting into a lustful haze. When you finally recover, shi has gone, leaving you with a warm, full feeling deep inside.[impregchance]";
					infect "Painted Wolf Herm";
					PlayerDrink 5;
					decrease libido of player by a random number between 5 and 15;
					if libido of player < 0, now libido of player is 0;
				else:
					say "     Lost in the lust of hir arousing milk, you don't protest as shi pulls off your cock and brings your mouth to hir throbbing, lupine cock. Shi rubs hir paws over your head as shi slides it into your mouth and starts fucking your face. The shi-wolf growls softly and drives hirself fully into you, stuffing hir knot in your mouth and pushing hir cock down your throat before unleashing hir lupine seed to flow down into your belly to mix with hir milk. You moan softly around it, drifting into a lustful haze. When you finally recover, shi has gone, leaving you with a warm, full feeling deep inside.";
					infect "Painted Wolf Herm";
					PlayerDrink 5;
					decrease libido of player by a random number between 5 and 15;
					if libido of player < 0, now libido of player is 0;
			else:
				say "     You press hir onto hir back and straddle hir hips, grinding your wet pussy down onto hir throbbing shaft. The shi-wolf howls in delight as you sink down onto hir cock. Shi does not resist your riding hir and squeezes hir paws over your hands as you start fondling hir four large breasts. Hir black nipples are plump and hard and you find yourself playing with them eagerly. As your arousal builds as hir scent gets thicker, you are drawn to lean in and licks those nipples, then start nursing from them. You taste hir milk leaking onto your tongue and you drink it down thirstily, feeling it warm your [bodytype of player] belly. The mottled wolf moves hir paws, bringing one to stroke your head as you nurse from hir as the other grabs your rear. Hir paws urge you to keep nursing and sliding over hir black rod, not that you need any encouragement for either. As you satisfy your thirst on hir milk, you drive yourself down hard onto hir cock, forcing hir knot into you so this sexy beast can tie with you. Your [cunt size desc of player] pussy clamps down around that thick bulb, milking at hir cock as you cum, drawing out as much seed as you can from hir. You can feel it flowing up into you, stuffing your pussy with hir heated semen as shi seeks to breed you. You moan softly as your orgasms pass, drifting into a lustful haze. When you finally recover, shi has gone, leaving you with a warm, full feeling deep inside.[impregchance]";
				infect "Painted Wolf Herm";
				PlayerDrink 5;
				decrease libido of player by a random number between 5 and 15;
				if libido of player < 0, now libido of player is 0;
		else:
			say "     With a dominant howl, you throw your opponent to the ground, straddling the wolf herm's mouth as your hips wiggle in preparation. Smiling with seductive, passionate lust, you lower your hips to hir face and bury your own snout in the thick, pungent aroma lifting from the creature's groin. You [if player is female]smile sweetly as your tongue strokes hir length, your mouth filled with that masculine flavor. Your nethers tingle as they are tended to, your mind filling with the bliss of having a thick, meaty length to suckle upon. With a moan, you press forward, managing to take hir cock all the way inside your mouth, slowly savoring that wonderful sensation until, with a long, delightful spurt, your mouth is flooded with semen that tingles as it works into your [bodytype of player] belly[else]slowly lap at hir feminine lips, grinding your nethers against the herm's face as you taste the sweet fluids the creature offers. Nestling deep into that slit, the slightest taste is enough to make you moan, craving more as you spread hir thick, slimy lips around your tongue. With a happy moan you press several fingers deeper into hir, probing hir most sensitive spots as shi takes four fingers inside of hir. Shi growls and grips your head as hir walls clench down on your fingers and your mouth is filled with the sweet, passionate, feminine nectar you crave[end if]. Hir long, lupine tongue plays across your groin, lapping up your cum as you orgasm while swallowing down hir herm juices.";
			if libido of player < 60, increase libido of player by a random number between 1 and 10;
	else:
		say "     With a dominant howl, you throw your opponent to the ground, straddling the wolf herm's mouth as your hips wiggle in preparation. Smiling with seductive, passionate lust, you lower your hips to hir face and bury your own snout in the thick, pungent aroma lifting from the creature's groin. You [if player is female]smile sweetly as your tongue strokes their length, your mouth filled with that masculine flavor. Your nethers tingle as they are tended to, your mind filling with the bliss of having a thick, meaty length to suckle upon. With a moan, you press forward, managing to take hir cock all the way inside your mouth, slowly savoring that wonderful sensation until, with a long, delightful spurt, your mouth is flooded with semen that tingles as it works into your [bodytype of player] belly[else]slowly lap at hir feminine lips, grinding your nethers against the herm's face as you taste the sweet fluids the creature offers. Nestling deep into that slit, the slightest taste is enough to make you moan, craving more as you spread hir thick, slimy lips around your tongue. With a happy moan you press several fingers deeper into hir, probing hir most sensitive spots as shi takes four fingers inside of hir. Shi growls and grips your head as hir walls clench down on your fingers and your mouth is filled with the sweet, passionate, feminine nectar you crave[end if]. Hir long, lupine tongue plays across your groin, lapping up your cum as you orgasm while swallowing down hir herm juices.";
		if libido of player < 60, increase libido of player by a random number between 1 and 10;
	if equinoidstatus is 9:
		say "     You recall your agreement with the equinoids and have defeated a trio of the painted wolves. They should let you approach their camp now.";
		now equinoidstatus is 10;
		now Equinoid Camp is known;


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Painted Wolf Herm"; [Name of your new Monster]
	now attack entry is "The painted wolf herm [one of]gouges you with hir claws, leaving streaks of blood across your skin[or]leaps at you, catching your arm in hir mouth, shi bites down hard leaving a muzzle shaped wound[or]howls, causing you to tremble in fear for a moment before you regain your resolve[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[beatpwh]"; [Text used when player wins, can be directly entered like combat text or description. If it is more complex it can be linked with a "To Say" block as the demonstation text shows.]
	now victory entry is "[wolfherm attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[mongendernum 5]     Looking over the Painted Wolf Herm, hir body is covered in thick, fluffy, patchwork gold, gray, and black fur. Hir head is mostly canine, with rare smatterings of human and harsh, triangular ears. Hir body is coated in layers of powerful, flexing muscles that are made readily apparent with the slightest twist. Shi has four heavy breasts, hir first row is basketball sized and the second row is slightly smaller. Hir arms are still human, with the exception of tiny claws on the tips of the fingers. Hir legs are digitigrade, with powerful haunches and graceful calves. Shi has a large, fluffy tail that, although similar to a husky, is lacking any curve or curl in it. As shi stands unabashed in the open you see shi has a thick, knotted 10 inch canine shaft. Two heavy balls rest above hir dripping female sex, the aroma of which lays thick and heady in the air around you.";[ Description of the creature when you encounter it.]
	now face entry is "mostly canine, with rare smatterings of human and harsh, triangular ears";[ Face description, format as the text "Your face is (your text)."]
	now body entry is "coated in layers of powerful, flexing muscles that are made readily apparent with the slightest twist. Your arms are still human, with the exception of tiny claws on the tips of the fingers. Your legs are digitigrade, with powerful haunches and graceful calves";[ Body Description, format as the text "Your Body is (your text)."]
	now skin entry is "thick, fluffy, patchwork gold, gray, and black fur that conceals the";[ skin Description, format as the text "You have (your text) skin."]
	now tail entry is "You have a large, fluffy tail that, although similar to a husky, is lacking any curve or curl in it.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]canine[or]black[or]knotted[at random]";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your head crackles as it reforms, becoming large and canine, with harsh, triangular ears that subconsciously twist and flex"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your body burns as muscles ripple under your flesh, leaving you with the perfectly toned body of an Olympian swimmer. Your arms creak as they tingle with warmth, tiny claws pushing through the tips of your fingers. Your legs ache with pain, slowly growing more muscular, more refined as you shift onto the balls of your wide, broad feet"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "your skin itches, thick, flat fur pushing through your flesh as you writhe, becoming a patchwork portrait of gold, gray, and black fur"; [ skin change text. format as "Your skin feels funny as (your text)" ]
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
	now area entry is "Park"; [ Current options are 'Outside' and 'Mall' Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 10; [ Length infection will make cock grow to if cocks]
	now cock width entry is 10; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now breasts entry is 4; [ Number of Breasts infection will give you. ]
	now breast size entry is 7; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 10; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 7; [ Width of female sex infection will try and give you ]
	now libido entry is 60; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscular[or]powerful[at random]";
	now type entry is "lupine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname of player is "Painted Wolf Herm":
		if humanity of player < 10:
			if cunts of player > 0:
				say "     Falling prey to the infection, you wander off into the park to sate your lusts. You are drawn there by a faint scent that grows as you track your target. Finding the hermaphrodite wolf before you is releasing that rich blend of masculine and feminine scents, you approach her quickly, moaning with need. You bend over for hir, displaying your own lovely attributes to hir. Shi takes hir time teasing you, caressing your [if cocks of player > 0]throbbing cock and [end if]dripping cunt. You are reduced to moaning, needful yips at all the unsatisfying attention to your genitals.";
				say "     Clearly pleased with how you're turning out, shi hops atop you, finally lining up hir cock and mounting you like you need so badly after all the teasing. You groan softly as hir thick cock pushes into you, spreading your wet lips and driving deep into you. Shi ruts you zealously as you moan submissively under your new mistress, eager for her to breed you again and again. And if you're really good, maybe shi'll even let you mount hir. Maybe.";
			else:
				say "     Falling prey to the infection, you wander off into the park to sate your lusts. You are drawn there by a faint scent that grows as you track your target. Finding the hermaphrodite wolf you is releasing that rich blend of masculine and feminine scents, you approach her quickly, growling softly with desire. You pounce hir and press hir down. Shi struggles, but eventually submits to the eager male atop hir, letting you line up with hir pussy and take hir. You fuck hir hard and fast, again and again until your hot seed has filled hir womb and the excess is leaking out onto the grass. Shi moans softly and strokes hir full tummy, eagerly anticipating hir first litter - the first of many.";
		else:
			say "     After escaping the city, you end up working at a small company that's hired a trio of other wolves. One is a female maned wolf and the males are a gray wolf and a red wolf. The boss seems to think that there'd be less fighting than with mixed species and the pack mentality would improve teamwork. It certainly seems to be successful, with you taking charge of the others and everyone working well together and with the human employees. Being a poor businessman, it seems to be the only good decision he made.";
			say "     Unbeknownst to your employer, you start having sex with the others outside of work, taking the dominant position over them there as well, further cementing your control. When the female's pregnancy starts to show, you make your move and start individually inviting your human colleagues over. Suspecting nothing, they find themselves quickly drawn into a wolf orgy. You are careful to keep their changes subtle at first so you can ensnare them all.";
			say "     Your growing pack waits while you go into your boss's office and fuck him until there's a change in management and you take over the company. When you're finished with him, you drag him out into the hall and toss him to the wolves who had broken into an orgy to further change the rest of your lustful pack. Your company prospers and always looks forward to the next [']hostile takeover['].";


Painted Wolf Herm ends here.
