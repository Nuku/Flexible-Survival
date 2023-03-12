Version 2 of Rhino by Voidsnaps begins here.
[Version 2 adds new scenes, updates what's there, and fixes the ending to be proper English.]

"Adds a Rhino creature to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Loot Table

to say GenerateTrophyList_Rhino:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "rhino horn fragment" to CombatTrophyList;
	if a random chance of (50 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if a random chance of (10 + LootBonus) in 100 succeeds: [rare drop]
		add "clean bandages" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 2 - Creature Responses

to say rhinodesc:
	setmongender 3; [creature is male]
	say "     As you wander the zoo, you happen upon one of its residents, snorting angrily and staring off into space as if daring someone to confront it. Unfortunately, your presence draws the creature's ire, and it turns to face you, revealing that it's a colossal, angry rhino man. Large and leathery, the grey rhino man takes stock of you, then lowers his head, grunting as his body tenses. You barely sneak a look at his thick grey hide, strongly built muscles, and a tapered, blunted set of dual horns rising from his face before he charges you, his fat cock swinging between his legs as if ready to impale you, should his face miss its mark.";

to say losetorhino:
	if Player is female:
		say "     Bowling you over, the Rhino man snorts angrily as his meaty hands pin you. Wordlessly he tears at your clothes and backpack, throwing them to the side as he climbs atop you, smearing his throbbing masculinity between your cheeks. You wince at his size, but thankfully, a river of precum rolls down its underside, slickening you for whatever the brutish male has in mind. With mere seconds to prepare as the rhino lines himself up with your lower lips, you grit your teeth and lower your head, gasping as he shoves himself against your pussy lips until, with a wet pop, he slops into your inner sanctum, breaking you open on his thick cock. At least a foot of throbbing cock follows the bulbous head, forcing your innards to accommodate his battering ram.";
		say "     The rhino is far from gentle, but at least his cock's steady leak wets your connection, aided by your pussy's secretions, your body welcoming his shoves despite the bruising shove of that fat cock against your womb. As you feel him growing close, you clench, stifling moans as your traitorous body screams its enjoyment. Instinctively, you push back, biting your lower lip as the first gush taints your pussy, feeling the spreading warmth of your orgasm rolling over you. A steaming huff blasts against your ear, and you feel that drooling cock surge within you as your brutish attacker widens his stance. Fuck, does he want a second round? The sloshing balls grinding against your clit still feel full.";
		WaitLineBreak;
		say "     You feel the rhino's weight come crashing down on your back as his efforts renew themselves, showing stamina that matches his aggression. Unbidden, desperate mewls for mercy slip from your lips, but they fall on deaf ears as the rhino churns his earlier load into dripping foam, crushing your poor hips against the ground with each battering thrust. Your pussy clenches needily despite your squirming attempts to escape, and you're growing more sensitive by the second. This time, the rhino doesn't even stop as he spurts another load into your messy cunt, slamming deep and hard as he bastes your womb in yet another coating. You lose count of how many times you cum around that sloppy horn, lying in a spreading pool of mixed juices, but by the time you feel his cock slip out of you, you can't feel your limbs. The only sensation left is tingling electric shocks racing through your midsection and the cooling sensation of well-churned cum drooling from your ruined cunt.";
		say "     A final shot of cum paints your ass cheeks, and lumbering footsteps disappear into the distance as the rhino abandons his conquest, leaving you to sleep off your defeat. When you awaken, you're still drooling cum, but the bulge in your stomach has gone down, allowing you to pull your clothes on, carefully avoiding your sensitive pussy lips brushing against the fabric.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Rhino";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Rhino";
	else:
		say "     Bowling you over, the Rhino man snorts angrily as his meaty hands pin you. Wordlessly he tears at your clothes and backpack, throwing them to the side as he climbs atop you, smearing his throbbing masculinity between your cheeks. You wince at his size, but thankfully, a river of precum rolls down its underside, slickening you for whatever the brutish male has in mind. The rhino trails his cockhead over your asshole, then lower, seeking a hole that isn't there. An annoyed grunt follows, but that spitting head doesn't leave, repositioning itself to threaten your pucker. The slow smear of pre doesn't last, and when he pushes in, he's anything but gentle, slamming his first few inches into your wildly clenching innards without a care for the sharp ache that shoots through your body.";
		say "     The tightness of your hole works against you, increasing the rhino's frustration as he tries in vain to stuff himself to the root. Increasingly violent thrusts spread you bit by bit, and leaking virility eases the way, but your inner walls still suffer his abuse, his balls slapping [If ball count of Player is 0]your rump [else if ball count of Player > 0]against your balls [else if Player is female]your pussy [else if Player is neuter]your nullified mound [end if]hard enough to sting. As you feel his hips slam into your ass, finally fully sheathed, you swear you've been fucked a few inches into the ground [if Player is male]dripping and throbbing as his abuse of your prostate sets your cock drooling[else if Player is female]dripping feminine juices into the dirt[end if]. With his savage version of foreplay over, the rhino deep-dicks your spread ass, grunting with each slap and pulling you back with both meaty hands, his rough fingers digging into your hips. It isn't long before his breathing grows ragged, and you clench hard, hoping to end this before his heavy body breaks something the nanites can't fix.";
		WaitLineBreak;
		say "     The rhino's cock HEAVES, pulsing hard enough that it jabs your inner walls, then unloads, spitting rope after rope of rhino cream deep into your poor, abused guts. You can't help but shudder through your finish as his throbbing cock hits sensitive spots deep inside you, and as he finishes, you quiver[if Player is male] as your cock bounces, messing the ground beneath you[else if Player is female] as your pussy dribbles fem-cum to the dirt below[end if]. [line break]";
		say "     As you take a moment to catch your breath, you can't help but notice that the rhino's cock is still inside of you. Odd, the brute doesn't seem like the cuddling type. Widening your eyes as you feel it twitch, still steely hard, you realize that the creature hasn't finished with you. Legs spread against yours, and stifling weight leans over you as the rhino breathes a steaming puff of breath against your ear. With a grunt, the monstrous male pulls out, slamming himself home hard enough that you see stars.Coherent thought becomes impossible as you're fucked into a limp pile of overstimulated, twitching limbs, pulled into all sorts of positions, and taking that cock in a relentless rhythm that doesn't slow even when he finishes, adding to the sloppy mess swelling your belly. It isn't until the rhino's last orgasm squirts weakly over your back, and you feel his soft cock wipe itself over your cheeks, that you finally come to your senses, weakly crawling to your belongings. Lumbering footsteps disappear into the distance as you doze off, exhausted and drooling from your ruined ass.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Rhino";

to say beattherhino:
	say "     Managing to wear the powerful creature down, you entice him to charge blindly past you and tumble into a nearby enclosure. Glancing over the edge, down a few feet of incline, you see him lying there, exhausted. His cock is still rock hard and leaking, and from his position on his side, you can see two stout muscled ass cheeks peeking from beneath a twitching tail. [bold type]You could take advantage of the passed-out man's vulnerable state if you wanted to. [roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - You won, fair and square. Follow the rhino into the enclosure and take your winnings from his sleeping body!";
	say "     ([link]N[as]n[end link]) - You're not impolite enough to fuck someone while they sleep.";
	if Player consents:
		LineBreak;
		say "     Licking your lips, you climb the incline to the slumbering beast, admiring his physique. The rhino may as well be a tank! With pecs larger than most people's heads, rough-looking thick grey skin that glistens with sweat, and two muscled mounts of ass wreathing pleasantly puffy and equine-like hole that clenches like it can feel your gaze. Two big balls and a foot-long sausage round out the rhino's looks, drooling like a faucet that won't stop. [bold type]You could eat the rhino's unprotected ass, or you could focus on his cock. [roman type][line break]";
		let Rhino_Sex_Choices be a list of text;
		add "Bury your face in that sweaty donut hole." to Rhino_Sex_Choices;
		add "Jerk him off while you grind against that huge cock." to Rhino_Sex_Choices;
		let Rhino_Sex_Choice be what the Player chooses from Rhino_Sex_Choices;
		if Rhino_Sex_Choice is:
			-- "Bury your face in that sweaty donut hole.": [Eat his ass without cumming]
				LineBreak;
				say "     No matter how you approach the concept of playing with the unconscious creature, the rhino's bare ass calls to you more than anything. Deciding to look closer, you shed your clothes, lean into the rhino's body, and leverage your weight to send that unresisting body rolling onto its front. You wince, hoping you didn't harm that prodigious erection, but a wet, squishy noise eases your worries. Thankfully for the sleeping beast, his drooling cock created a small pool of mud to accept his cock.Tearing your eyes away from that pulsing cock as it explores its temporary home, pulsing and adding to the mess. Your prize glistens with sweat, inches above swaying balls, and as you lean in closer, breathing deeply, you catch a whiff of pure masculinity. Pausing as your nose reaches that pucker, you take a deep breath, feeling your mouth fill with saliva as manly musk settles over you like a warm blanket.";
				say "     The rhino's slowly thrusting hips add a counterpoint to your tongue's gentle dance over that soft, sweaty donut. You grow bolder as the sleeping rhino's motions grow more desperate, prying clamping muscles open with little more than your tongue and a river of drool, placing both hands on flexing asscheeks. [if Player is male]Your cock throbs and [else if Player is female]Your pussy clenches and [end if]you feel like you'll cum hands-free, but you push down those feelings, pressing your face flush with that soft hole and trying your best to fit that whole puffy anus between your lips, mouthing at it as his motions smear his sweaty ass over your face. When you pull back for air, the rhino shoves into the makeshift mud-pussy with renewed vigor, a telltale flood of milky fluids squirting out around his cock as that delicious ass clamps down around nothing. He grunts long and loud, and as you sit back, watching the show, he starts to hump again, his shaft coated in mud and cum as it slurps into the makeshift fleshlight.";
				say "     You leave the sleeping rhino to work off some of that need, gathering your belongings and smirking as wet slaps echo behind you until you clear the exhibit's wall. No doubt, the slumbering beast is dreaming about fucking some unfortunate survivor. Better a hole in the ground than your ass! Still, you wish you could have cum before the rhino's movements made staying between those cheeks a dangerous gamble.";
			-- "Jerk him off while you grind against that huge cock.":
				Linebreak;
				say "     No matter how you approach the concept of playing with the unconscious creature, the rhino's pulsing cock calls to you more than anything. Heaving the sleeping man's body to the side, you roll him onto his back, wiping the sweat from your brow as you survey that steel-hard cock. He's huge, even compared to most creatures you've seen, and as you kneel to inspect it, it squirts a fat river of pre, bucking against your fingers as if begging for attention. Slowly stroking the rhino's cock and marveling at how hard he feels, you contemplate your options before settling on something gentler than the usual fare. Riding his cock might result in some damage if the brute wakes up, and the same applies to your jaw. You doubt that the nanites can fix the sort of damage that those muscles could cause if you were unaware. Instead, you take hold of that raging horn and press it against your stomach, wrapping your thighs around it and shuddering as your sex rubs against the base.";
				say "     It's so warm and slick, and his precum soon coats every inch of your inner thighs, providing a pleasant sensation as you roll your genitals against his cock. You don't want to leave the sleeping man out, so you wrap both hands around his shaft, jerking it in time with each thrust of your hips. It's not long before you're panting, humping hard and fast as the rhino's mammoth cock marks you with liquid musk. You can feel your orgasm rising, and each buck of eager hips brings you closer, but your pride won't let you finish until you've gotten the rhino off. You can't let a sleeping beast beat you!";
				say "     Thankfully, the rhino grits his teeth, grunting aloud as if he could read your thoughts. An arc of cum sprays into the air, raining down on him like a lewd fountain and pooling between his pecs. The following few spurts slop haphazardly across his stomach, then weakly sputter, coating your grinding genitals in a fresh layer of lube and triggering your [if Player is male]cock to add a fresh coat of cream to the sloppy mess coating his shaft. [else if Player is female]slippery fem-orgasm to dribble translucent arousal over big grey balls. [else]anal orgasm, sending tingles through your body. [end if][line break]";
				LineBreak;
				say "     [bold type]Panting and surveying the rhino's toned chest, softening cock, and heaving stomach, you notice that there's so much cum, you could probably fill a bottle with it. Do you want to store some for later?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes. You never know when you'll need a vial of cum!";
				say "     ([link]N[as]n[end link]) - Ew, No. You're not THAT far gone.";
				if Player consents: [gain cum]
					LineBreak;
					say "     Rooting around in your pack, you find an empty water bottle, scooping milky nectar off the slumbering rhino's chest and stomach before screwing on the cap. You're unsure what you would use it for, but being prepared for anything never hurts! With that out of the way, you clean yourself off as best you can, donning your clothes and sparing the snoring rhino one last glance, grinning at his cock's flagging, half-hard state, and shaking your head. You doubt he learned anything from your bout, but at least that means you might get to see the hunk again!";
					ItemGain rhino cum by 1;
				Else: [don't gain cum]
					LineBreak;
					say "     Shaking your head, you think better of it. What would you even DO with a bottle of cum, anyway? It's not a sports drink! With that out of the way, you clean yourself off as best you can, donning your clothes and sparing the snoring rhino one last glance, grinning at his cock's flagging, half-hard state, and shaking your head. You doubt he learned anything from your bout, but at least that means you might get to see the hunk again!";
				CreatureSexAftermath "Rhino" receives "Stroking" from "Player";
	else:
		LineBreak;
		say "     Panting to catch your breath, you shake your head. While the idea of turning the tables on the rhino has merits, you don't feel like taking advantage of the sleeping beast. You leave him snoring in the enclosure, continuing on your way.";

Section 3 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Rhino"; [name of the overall species of the infection, used for children, ...]
	add "Rhino" to infections of FurryList;
	add "Rhino" to infections of NatureList;
	add "Rhino" to infections of MaleList;
	add "Rhino" to infections of BluntCockList;
	add "Rhino" to infections of SheathedCockList;
	add "Rhino" to infections of BipedalList;
	add "Rhino" to infections of TailList;
	now Name entry is "Rhino"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The rhinoceros slams into you with his powerful body![or]The strong rhino man grabs you and tosses you to the side![or]The enraged rhino bashes at you with his powerful fists![or]The wild creature slams his body into you, grinding his large, stiff cock against you as he crushes you in his arms, tossing you to the ground with a coating of pre across your stomach![at random]";
	now defeated entry is "[beattherhino]"; [ Text when monster loses. ]
	now victory entry is "[losetorhino]"; [ Text when monster wins. ]
	now desc entry is "[rhinodesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of a rhino, with a large horn rising from your pointed face and a second, smaller one behind that. Your eyes, having moved further to the side of your head, are able to see around your horn as well as providing greater peripheral vision at the cost of losing most of your binocular, forward vision"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "large and powerfully built, with broad shoulders and thick arms and legs. Your hands are big and meaty, good for smashing things. Your feet are large and flat to support your heavy gait"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "tough, leathery gray, bumpy-textured"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "Your large behind has a small, thin, mostly hairless tail ending in a tuft of dark fur."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]rhino[or]dark gray[or]rock hard[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "it stretches and warps, growing and pulling forward into a broad herbivorous maw with blunted teeth and a floppy upper lip. A stabbing pain at the end of your face grows stronger as a bump breaks through the skin, then grows into a long, blunted horn. A second horn appears behind it, by the time the changes are complete, giving you the large, bony head of a rhino"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "becomes hulking and weighty, like a strongman in a circus. You broad shoulders and strong muscles to carry your heavy, dense body. This muscles spread down your arms and legs. Your hands become thick and meaty, with sausage-like fingers that curl into big fists. Your feet become wide and flat, with blunted, broad hoof-toes to support your weight"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "your skin gets thicker and tougher, in a tough gray hide"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "it becomes heavy and firmly muscled, with just the right amount of give. You feel a funny tingle at the end of your spine as a short, slender tail grows in."; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "takes on a dark gray tone and reshapes. It becomes a hand-filling tube of meat, ending in a flared glans similar to an equine cock"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 17;
	now dex entry is 12;
	now sta entry is 22;
	now per entry is 10;
	now int entry is 6;
	now cha entry is 8;
	now sex entry is "Male"; [ Infection will move the Player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 77; [ The monster's starting HP. ]
	now lev entry is 5; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 9; [ Monster's average damage when attacking. ]
	now area entry is "Zoo"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a Player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width of female sex the infection will try to give a Player. ]
	now SeductionImmune entry is false;
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is "rhino horn fragment"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 42; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "rhino man-milk";
	now CumItem entry is "rhino cum";
	now TrophyFunction entry is "[GenerateTrophyList_Rhino]";
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]beefy[or]muscular[at random]";
	now type entry is "rhino"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the Player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For Players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Table of Game Objects (continued)
name	desc	weight	object
"rhino horn fragment"	"A hard splinter of rhino horn. It's sharp and spiky."	0	rhino horn fragment

rhino horn fragment is a grab object.
It is temporary.
Usedesc of rhino horn fragment is "[RhinoHornFragmentUse]";

to say RhinoHornFragmentUse:
	say "Turning the fragment of rhino ivory between your fingers, you admire its shiny surface. After a moment, it crumbles, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Rhino";

instead of sniffing rhino horn fragment:
	say "The fragment has a wild, musky animalistic scent.";

Table of Game Objects (continued)
name	desc	weight	object
"rhino cum"	"A thick, powerfully scented, sloshing bottle of rhino cum. One could mistake it for some sort of white syrup, if someone hadn't written 'rhino cum' across a label on its front. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	rhino cum

rhino cum is a grab object.
rhino cum is temporary.
rhino cum is cum.
rhino cum is infectious.
Strain of rhino cum is "Rhino".
Usedesc of rhino cum is "[RhinoCumUse]";

to say RhinoCumUse:
	say "     Following the strange urge you have, you slam back the bottle of rhino cum you found. It has a strong taste to it, but you find it very exciting despite its salty flavor and the way it clings to the back of your throat. ";
	if Player is male and Cock Length of Player < 12:
		say "You feel a throbbing in your groin as your cock[smn] expand[smv] another inch almost immediately after you finish your drink.";
		increase Cock Length of Player by 1;
	else:
		LineBreak;
	LibidoBoost 5;
	PlayerDrink 5;
	SanLoss 5;

the scent of rhino cum is "The contents of the jar of rhino cum smell strong and musky.".

Table of Game Objects (continued)
name	desc	weight	object
"Rhino man-milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Rhino Man-Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	Rhino man-milk

Rhino man-milk is a grab object.
Rhino man-milk is milky.
Purified of Rhino man-milk is "distilled milk".
Rhino man-milk is infectious.
Strain of Rhino man-milk is "Rhino".
Usedesc of Rhino man-milk is "[Rhino man-milk use]";

to say Rhino man-milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the Rhino's man-milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

instead of sniffing Rhino man-milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really, though there's a hint of something buttery and musky.";

Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Rhino Infection"	"Infection"	""	Rhino Infection rule	1000	false

This is the Rhino Infection rule:
	if Player has a body of "Rhino":
		trigger ending "Rhino Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     As your mind gives in to your infection, you wander aimlessly and end up at the city zoo. There you come across a large rhino vehemently ramming his horn against the wall again and again, trying to break through. After a short conversation with him punctuated by hard cracks of him hitting the concrete barrier, you cannot find fault with his logic and soon join him in his efforts to crack through the wall.";
			say "     When you eventually manage to break through it together, it is as if all the zoo was waiting for that moment. The air is filled with a chorus of shouts and cheers from creatures who had gathered to watch you both at work, many of whom run off to inform the rest of their pack or herd. The cries spread out across the zoo, getting louder and louder. As you and Brian struggle to your feet with pounding headaches, you can hear the sounds of the infected hordes of the zoo clamoring to break free. You and Brian hurry through the gap, leading the charge against the few soldiers posted around the destroyed wall, relishing their looks of terror as you throw yourself at them, sending them flying with your mighty horns. As you both unleash your pent up lust on some soldiers, hordes of felines, wolves and other creatures spill forth, spreading unchecked past the military's lines before they can be contained by disoriented troops. Smaller, weaker creatures who spent their time in hiding from the zoo's top predators appear in the rear, disappearing into the city to spread their infection. You bellow out in climax as you watch this surge of lustful freedom with a triumphant smile, knowing your hard work and pain has paid off.";
		else:
			say "     Rescued from the city gone wild with infection, you are brought to the military's processing center while they try to sort out the many people they've rescued. Being of an obviously strong strain, the military tries to recruit you for their needs, but you decide against it in the end. You tell them that you've had enough of fighting and simply want a quiet, peaceful life. You acquire a country home and start a career in construction. It's hard work, but it comes naturally to you, and you've never been happier.";

Rhino ends here.