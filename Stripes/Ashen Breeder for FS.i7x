Version 3 of Ashen Breeder for FS by Stripes begins here.
[ Version 3 - Victory Sex ]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
 
"Adds Ashen Breeder to Flexible Survival."

 Section 1 - Monster Responses
 
 [ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
 to say ashen breeder attack:
	if cunts of player > 0 and gestation of child is 0:
		follow the breast descr rule;
		say "Her nose twitches as a wild look comes to her eyes. She shoves you to the ground and clambers up on top of you even as her shaft rubs along your thigh in the motion. 'I am going to make you so full of child, your kids will be pregnant,' she whispers at you as she slips into you, strangely formed shaft sending sharp pangs of pleasure as each bump penetrates your clenching lips. The barbs that cover it pluck and pull at you when she draws back, just to slam home again. She nuzzles into your [descr] chest as she thumps against you like a huge rabbit, her own breasts rubbing along your front with each frantic push and pull. Liquid heat pours into you as she growls, slamming home and working a suddenly thick knot into your cunt, sealing herself to you.[impregchance] As you remain locked to her, she nuzzles up against you and pushes a teat to your mouth. The milk soothes and calms you, time melting into a pleasant blur. When the haze lifts, she has departed, leaving you with her sticky seed on your thighs to remind you of her.";
	otherwise:
		if cocks of player < 1:
			Say "Chirping triumphantly, the Ashen Breeder grabs you and pulls them tight to their chest. Smiling, blissful in hir lusty haze, the Ashen Breeder quickly forces a nipple into your mouth and squeezes hard on hir own tit. Sweet, rich cream explodes from the abused nipple, a constant stream that forces you to swallow or be drowned. Smiling, the Ashen Breeder slowly strokes across your back, planting small, butterfly kisses across your brow until the flow tapers to a halt. Satisfied, the herm gently strokes your distended tummy until you fall asleep, giving a soft kiss goodnight before departing. ";
		else:
			Say "The Ashen Breeder lowers you gently to the ground and quickly removes your clothing.  Sie very demurely crawls between your legs and licks your [cock size desc of player] dick until it's standing up straight in her delicate grip.  Hir swollen tits drip milk on your skin as sie slides back up your body and lines hir dripping slit up with your rigid member and quickly impales hirself on you.  Your shaft slips completely into hir with no resistance and sie chirps in pleasure and begins to fuck you with reckless abandon.  You feel hir juices dripping down your thighs and pooling in between your legs while hir pre-cum splatters your chest as hir cock bounces up and down.  Hir hips begin to slam into you hard enough to make you ache but your own orgasm is close as sie shows no sign of stopping hirself.  You try to hold back but sie suddenly clamps down on your cock as both of hir sexual organs orgasm together; hir cock shoots cum all over your chest and face, leaving almost no inch clear of the sticky fluids.  The clenching of hir tunnel around your shaft is more than you can take as your cock unloads into hir, splattering your seed against hir walls and into hir womb.  Sie leans down and kisses you as hir orgasm subsides before getting up and walking shakily away, leaving you lying in a state of bliss on the ground.";


to say beattheashenbr:
	say "     The Ashen Breeder moans with need, staggering as shi's tries in vain to continue the struggle.  Torn between hir lusts and exhaustion, hir paws roam all over hir body, playing with her breasts, cock and pussy as she stumbles to hir knees";
	let diceroll be a random number between 40 and 125;
	if diceroll < libido of player and cocks of player > 0:
		say ".  Something about hir needy display arouses you and you feel an uncontrollable urge to mate with this strange beast.  Pushing hir down onto all fours, shi releases a series of pleasured chirps.  You drive your [cock size desc of player] cock into hir easily, making the vaguely canine creature squirm in delight";
		if cock length of player > 18:
			say ".  Hir pussy stretches open to accommodate your massive shaft, bulging at the belly to fit you in.  Shi brings a paw to the bulge, rubbing over it with happy chirps, glad to be taken by such a virile and well-hung male";
		say ".  You bring your hands to hir breasts, squeezing them, causing large spurts of milk to shoot from hir nipples onto the ground.  You work at milking hir the whole time you breed hir, soaking the tunnel floor in a growing puddle of breast milk.";
		say "     When you feel your orgasm about to arrive, you drive yourself fully into hir, pushing your cock into hir accommodating womb and releasing your thick seed to breed hir.  Shi moans in delight, clamping down firmly on your cock and milking it for all you'll give[if cock width of player > 10].  Your large balls drain into hir, making hir belly swell with your semen, almost certain to impregnate the needy, breeding bitch[end if].  Hir penis twitches and hir balls pull up, spraying hir own seed into the puddle of hir milk, adding to the messy white stain.  When you withdraw hir cock, the breeding slut passes out in the puddle of hir own fluids with a dazed expression of happiness on hir muzzled face.";
	otherwise:
		say ".  Shi gropes hirself briefly, then hir paws drop to hir sides, too weak to continue.  With a sad look in hir eyes, shi falls to the ground and slips unconscious, milk still leaking steadily from hir swollen tits.";


Section 2 - Monster Insertion
 
Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;
 
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Ashen Breeder"; [Name of your new Monster]
	now attack entry is "[one of]grabs at you with hir small claws trying to pull you against hir chest[or]overpenetrate[or]wraps hir claws around a tit and squeezes hard, sie lets the warm milk splashes against your body[or]manages to get a hold of you and pull you against one of hir nipples, sie forces your mouth against it and squeezes hard and milk pours down your throat[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[beattheashenbr]"; [Text or say command used when Monster is defeated.]
	now victory entry is "[Ashen Breeder Attack]" ; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "A mutant dog-like creature. Hir long, floppy ears perk up as she notices you. Sie has [one of] red [or] pink [at random] eyes and looks at you with obvious lust.  Sie is completely unclothed and you can see just by looking at hir that sie is built to pleasure whoever sie comes in contact with; all of hir breasts drip milk at a steady rate and sie has a cock that makes your mouth water.  Sie lets out a moan and strokes hirself for a moment before rushing at you.";[ Description of the creature when you encounter it.]
	now face entry is "an obviously canine head, with long floppy ears";	[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "deliciously curvy and exposes the tender lip of a pouch. Any breasts present are swollen, dribbling milk upon the floor at a slow, yet constant rate.. Your arms are thick, with diminutive claws that yearn to hold and cuddle.. Your legs are digitigrade, shapely, and defined with excellent muscular tone. Your feet are exceptionally large paws with long toes";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "smooth, tender, yearning";[ skin Description, format as the text "You have (your text) skin."] 
	now tail entry is "a curved, bubbly ass that, when spread, reveals aching flesh. A long, flexible tail thick with muscles covers it.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "ridged, spined, and knotted";[ Cock Description, format as you have a 'size' (your text) cock.] 
	now face change entry is "your face creaks as your jaw pushes forward, extending into a canine muzzle. Your ears give little shivers as they droop and swell, ending their ticklish torture as a pair of long, floppy ears"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you shudder as a faint tugging sensation stretches across your belly. With a soft moan, a velvety stretchy pouch filled with teats swelling. Immediately a heat sinks into your mammaries, milk dribbling with the slightest pressure.  Your arms swell with muscle and fat, becoming soft, supple limbs meant to hold and cradle. Tiny black claws push through the tips of your long, slender fingers, hardly worthy of any defense, but wonderful to scratch and tease.  Your legs snap and pop with a dull pain, your heel rising as you stumble about, trying to find some semblance of balance. You finally becomes stable, after a few awkward, misplaced steps, on the balls of your huge, comfortable feet"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "your skin crawls as painfully pleasant shivers caress your spine. Gasping, the air itself feels heavy upon your body, drawing pleasant cries from your chest as your mind begs, pleads for the softest touch"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "the flesh of your bottom strains as it grows in size, becoming perpetually bubbly while your anus becomes both aching and needful. Deprived of stimulation, your desires are suddenly sated by a long, flexible tail thick with muscles"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your groin throbs with pleasure, your cock tingling as it warps and contorts. Tiny spines erupt along the entire length, ridges form along the top, and a thick, throbbing knot forms at the very base"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 12;
	now sta entry is 14;				
	now per entry is 20;
	now int entry is 10;
	now cha entry is 14;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 60;			[ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 6;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 12;			[Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Mall";	[ Current options are 'Outside' and 'Mall'  Case sensitive If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 4;		[ Size of balls apparently ;) sneaky Nuku  (big balls are underrated.)]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 6;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 12;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 6;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 66;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]


Section 3 - Endings

when play ends:
	if bodyname of player is "Ashen Breeder":
		if humanity of player < 10:
			say "     Unable to hold out any longer, the infection affects your mind enough that you succumb to your new instincts and head off into the city in search of sexual satisfaction.  You wander directionless through the wild city until you are found by ";
			let T be a random number between 1 and 3;
			if cunts of player > 0 and "They Have Your Eyes" is not listed in feats of player and "Sterile" is not listed in feats of player:
				if T is 1:
					say "a pack of horny wolves who capture you.  You are mounted and fucked repeatedly by the whole pack, often used as a reward for the lower pack members.  Much to your delight, your womb grows quite full with their young.  These pups gestate quickly and are pure wolves like their fathers.  You are bred again and again, birthing numerous wolves to add to the growing pack's strength.";
				if T is 2:
					say "a small colony of ocelots who capture you.  You are mounted and fucked repeatedly by the whole colony, used as everyone's fucktoy.  Much to your delight, your womb grows quite full with their young.  These kittens gestate quickly and are pure ocelots like their fathers.  You are bred again and again, birthing numerous kittens to add to the growing colony's strength.";
				if T is 3:
					say "a herd of cattle who capture you.  You are mounted and fucked repeatedly by the bulls while fed milk from the cows.  Much to your delight, your womb grows quite full with their young.  These calves gestate quickly and are fully bovine like their fathers.  You are bred again and again, birthing numerous calves to add to the growing herd's strength.";
			otherwise if cunts of player > 0 and "Sterile" is not listed in feats of player:		[F/H Breeder]
				if T is 1:
					say "a pack of horny wolves who capture you.  You are mounted and fucked repeatedly by the whole pack, often used as a reward for the lower pack members.  Much to your delight, your womb grows quite full with their young.  Your children gestate slowly and are pure copies of yourself.  You and your children are bred repeatedly, used by the younger members of the pack to practice on before mounting real bitches to breed more wolves into the pack.";
				if T is 2:
					say "a small colony of ocelots who capture you.  You are mounted and fucked repeatedly by the whole colony, used as everyone's fucktoy.  Much to your delight, your womb grows quite full with their young.  Your children gestate slowly and are pure copies of yourself.  You and your children are kept as a small harem, used as a reward for the members of the colony.";
				if T is 3:
					say "a herd of cattle who capture you.  You are mounted and fucked repeatedly by the bulls while fed milk from the cows.  Much to your delight, your womb grows quite full with their young.  Your children gestate slowly and are pure copies of yourself.  You and your children are bred repeatedly, used surrogate milkers for the herd to free the heifers to be bred more often by the bulls.";
			otherwise if cocks of player > 0:		[M Breeder / H non-breedable]
				if T is 1:
					say "a horny panda girl at the zoo.  She lures you into her enclosure and rides your cock, moaning in ecstasy.  When she's finally done with you, she passes you off to the next female panda for the breeding to continue.  Eventually, you've satisfied them all and passively allow them to place a collar around your neck and chain you into a corner.  Not that you'd want to leave such a lovely harem of needy women, but they aren't taking any chances.  Despite their best efforts, you remain unchanged, but breed pure panda children in their wombs regardless.  In time, many new female pandas are birthed and join the group waiting to be fucked by you.";
				if T is 2:
					say "a rubber tigress at the state fair.  It seems she missed the escape the others made out of the city and is now stuck there alone.  When she raises her tail for you and meowls needfully, you eagerly mount her, driving your cock into her rubbery folds and fucking her full of your seed.  You breed her repeatedly until you both are satiated.  Keeping herself wrapped around your cock, she deflates herself and snuggles her warm, empty body against your chest and her arms around your back.  You wear her like this, a striped rubber shirt as you continue your wanderings through the city with your new partner.  Every night, she moans lustfully as you reinflate your companion before fucking her.  Your constant fucking makes the inflatable tigress grow thicker and fuller before finally birthing rubber tigress cubs who inflate themselves and wander off in search of companions of their own.";
				if T is 3:
					say "a female hippogriff in the downtown core of the city.  She's set up a little aerie at the top of one of the high rises with the stairs blocked to seal her floor off.  She carries you up to her nest and gets you to happily fuck her for hours on end.  With you trapped up there, she has a continuous breeding companion and enjoys riding your cock any time she's not hunting.  You remain steadfastly unchanged, but are capable of breeding with her.  She grows full with eggs that eventually hatch into more beautiful hippogriffs.  These take over the tops of more towers and spread to span control the air above the high rise district and abduct more flightless mates to breed with them high in their towers.";
			otherwise:			[F non-breedable]
				if T is 1:
					say "a large wolverine guarding a historic building.  Once the home of a famous writer, the house has been maintained for its historic value and the wolverine has taken to guarding it aggressively.  He captures you and pins you down, fucking you repeatedly.  But instead of driving you off after draining his hefty balls into you, he drags you inside and keeps you in one of the bedrooms, adding you to his fixation.  He is a rambunctious lover when not on watch, pounding into you hard and deep, much to your delight.  Otherwise, he leaves you to yourself to enjoy the lovely home he's given you.  And while you cannot leave, you feel little need to do so, as your guard gives you plenty of sex to satisfy your cravings.";
				if T is 2:
					say "a male kangaroo, who drags you back to a small pub filled with many more roos.  There you are meant to be the night's designated sport-fuck.  The kangaroos take turns mounting and fucking you.  They are intrigued by your pouch and play with your teats, but you transform no further, much to the dismay of some.  After a night-long romp where everyone has a go at you - male, female and herm alike � you are left quite satisfied on top of the table, leaking roo cum from every hole.  A few even sprayed their load into your pouch, filling it with their warm, slick semen.  Despite your not changing, they decide to keep you and you quickly settle in as a staple of their pub's entertainment.";
				if T is 3:
					say "a patrol of horsemen, who take you back to their brothel.  There, you are added to their collection of whores and peddled to their patrons.  They spend considerable effort attempting to transform you into another mare, but are quite unsuccessful.  Eventually, they give up and use you as a lure, drawing in new clients with your alluring body before letting the mares coax them over for more sex and eventually changing them into another mare for the brothel.  The horsemen are quite pleased with your success at this task and always fuck you extra hard when you help catch a new girl for them.";
		otherwise:
			say "     You are picked up by the military as they comb through the city for survivors.  You convince them that you are still sane despite your rather strange body and are taken back to their base for processing.  You are able to hold back your lustful instincts enough to pass their testing and brief questioning, but are held for what feels like quite some time before your final release.";
			if cunts of player > 0 and "They Have Your Eyes" is not listed in feats of player and "Sterile" is not listed in feats of player:			[F/H True Breeder]
				say "     You are directionless after your release, though you don't let it get you down.  You become quite amorous with numerous transformed people, satiating your sexual desires and theirs[if cocks of player > 0] with your dual-gendered body[end if].  Only a few weeks after your release, you give birth to an addax antelope for one male[if cocks of player > 0] and a variety of females all give birth to pure children of their strain after being your lover[end if].";
				say "     With this, word starts to get around about your fertility and how you'll breed true to your partner's strain, making you a desirable lover for those infected by uncommon strains.  If they can't find a matching lover, you are available for them to breed[if cocks of player > 0].  Some mismatched couples even come to you to breed with them both, siring children in the female and bearing other children for the male[end if].  You become quite popular for this [']maternity assistance service['] and make a good living essentially off of having sex with as wide a variety of people as you can.";
			otherwise if cunts of player > 0 and cocks of player > 0 and "Sterile" is not listed in feats of player:		[H Breeder]
				say "     You are directionless after your release, though you don't let it get you down.  You become quite amorous with numerous transformed people, satiating your sexual desires and theirs with your dual-gendered body.  Only a few weeks after your release, several of your female lovers give birth to pure children of their strain after being your lover.  You get pregnant as well, but this child gestates very slowly and is pure copy of yourself when born.";
				say "     With this, word starts to get around about your fertility and how you'll breed true to your female partner's strain, making you a desirable lover for those women infected by uncommon strains.  If they can't find a matching lover, you are available for them to breed.  You become quite popular for this [']maternity assistance service['] and make a good living essentially off of having sex with as wide a variety of people as you can.  As your own children grow up, they take up the business as well, helping many struggling strains breed their next generation.";
			otherwise if cunts of player > 0 and cocks of player is 0 and "Sterile" is not listed in feats of player:		[F Breeder]
				say "     You are directionless after your release, though you don't let it get you down.  You become quite amorous with numerous transformed people, satiating your sexual desires and theirs with your lustful body.  You get pregnant during this time, but this child gestates very slowly and is pure copy of yourself when born.  The feeling of being pregnant and nursing your child is quite satisfying and you eagerly seek to be bred as often as you can so you can enjoy it continuously.  You breed a large family with your many lovers, offering yourself to any male as soon as you feel yourself ready to become pregnant again.";
			otherwise if cocks of player > 0:		[M Breeder or H non-breedable]
				say "     You are directionless after your release, though you don't let it get you down.  You become quite amorous with numerous transformed people, satiating your sexual desires and theirs.  Only a few weeks after your release, several of your female lovers give birth to pure children of their strain after being your lover.";
				say "     With this, word starts to get around about your fertility and how you'll breed true to your female partner's strain, making you a desirable lover for those women infected by uncommon strains.  If they can't find a matching lover, you are available for them to breed.  You become quite popular for this [']maternity assistance service['] and make a good living essentially off of having sex with as wide a variety of people as you can[if cunts of player > 0].  While you cannot give birth yourself, seeing all the young you sire fills you with pride[end if].";
			otherwise if cunts of player > 0:		[F non-breedable]
				say "     You are directionless after your release, though you don't let it get you down.  You become quite amorous with numerous transformed people, satiating your sexual desires and theirs.  You continue like this for quite some time, eventually drifting to join a brothel for the infected, satisfying your need for lustful sex while making money while doing so.  Unable to get pregnant, you always feel a longing in you that can only be briefly satisfied through sex.  This makes you an enthusiastic slut for your clients, ensuring that they are fully satisfied after a visit with you.";
 
Ashen Breeder for FS ends here. 