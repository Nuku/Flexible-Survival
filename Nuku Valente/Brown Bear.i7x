Version 4 of Brown Bear by Nuku Valente begins here.

[ Version 1.0 - Initial mob from Nuku Valente's equine extension - Illpill                                               ]
[ Version 1.1 - Moved to Nuku Valente's folder, unknown changes - Nuku                                                   ]
[ Version 1.2 - Bear can no longer expand you if you have microwaved or male preferred - Nuku Valente                    ]
[ Version 2.0 - New critter table entries added and Alt Combat enabled - Stripes                                         ]
[ Version 3.0 - Restructured player loss scenes and added missing features - Stripes                                     ]
[ Version 3.1 - Honey Quest version added - Stripes                                                                      ]
[ Version 4.0 - Additional scenes on lust loss/submission. Extensive revisions to phrasing and sentence structure - Song ]

"Adds a Bear to Flexible Survival's Wandering Monsters table."

Section 1 - Creature Responses

UrsineDefeatCount is a number that varies.

to say UrsineDesc:
	setmongender 4; [creature is female]
	if HP of bee girl is 3:
		say "     You are faced with a towering figure. While her head and body are much like that of a wild bear, her legs are somewhat longer and she's gotten quite pudgy from eating the stolen honey. The plain red t-shirt she wears is barely able to fit her enlarged body as it is, her six busty breasts pressed tightly against the taut fabric such that there's a clear impression of her hard nipples. She is no cute teddy bear, though. Her muzzle is filled with sharp teeth, and her powerful limbs end in paws equipped with claws. The big bruin, eager to defend her ill-gotten gains, is ready to attack.";
	else:
		say "     A towering figure comes into view. At first you assume it's a wild bear standing on its hind legs, but on closer inspection, you realize that its legs are somewhat long and its black claws are painted with nail polish. The infected woman has bright [one of]brown[or]blue[or]green[at random] eyes and huge, pointed teeth. A dense coat of shaggy fur covers her tall and wide body completely. Her muscular chest is padded with three rows of flattish breasts, and long nipples peek out through her fur. On seeing you, she exposes more of her teeth and speaks, [one of]'Run! I don't want to break another one!'[or]'Not now, you idiot!'[or]'Are you stalking me?'[at random]";


to say UrsineAttack:
	if HP of bee girl is 3:
		say "[one of]She slams you with one of her great clawed hands, sending you flying.[or]With terrifying ease, she picks you up and throws you into the underbrush.[or]The ursine knocks you down with a sweep of her fur covered arm.[or]The bear snaps at you with her powerful teeth.[or]You are clubbed upside the head with a fuzzy fist.[or]Your head is grabbed and your face is buried in her red-shirted bosom. It is sticky with honey and heady with her scent, leaving you a little dazed by the time you squirm free.[at random]";
	else:
		say "[one of]She slams you with one of her great clawed hands, sending you flying.[or]With terrifying ease, she picks you up and throws you into a pile of rubbish.[or]The ursine knocks you down with a sweep of her fur covered arm.[or]The bear snaps at you with her powerful teeth.[or]The bear charges and tackles you, knocking the wind out of your lungs.[at random]";


to say UrsineWins:
	if HP of bee girl is 3:
		say "     [if fightoutcome is 21]Ignoring your lusts, the[else if fightoutcome is 22]Ignoring your attempt to submit, the[else]The[end if] large bear grabs you roughly and tosses you to the ground with an angry roar. Hearing the bear roar terrifies poor Honey, and she flees off into the trees to hide while the bear has her way with you. By the time she's done with you, you're very tired and very sticky with both honey and female juices.";
	else if UrsineDefeatCount is 0: [ first time losing to a bear ]
		say "     [if fightoutcome is 21 or fightoutcome is 22]Succumbing to your lusts, you submit and offer yourself to the bear. She[else]You realize that the bear has been holding back on you when she[end if] easily hefts you up towards her broad, well-padded chest and presses your face into her thick, coarse fur. The pressure of her furry grip engulfs you, and you fear you are about to be crushed out of existence. As your consciousness fades, you realize it's not the worst way to go, and you begin to feel oddly comfortable as the pressure decreases.";
		say "     While you wonder what she has planned, you realize you are being rocked back and forth against the bear's increasingly hard nipples. A low rumble spills from her throat as you're held taut to her bosom. 'No, Phyllis. You mustn't...' she murmurs to herself as she grows increasingly aroused. Her strong paws rub you through the thick, sweetly musky fur covering her muscular body, drenching you in her arousing scent. 'Oh... feels so good...'";
		say "     You feel a heat and dampness covering your lower half. The sweet smell of sex fills the air, and with some small feeling of [if fightoutcome is 21 or fightoutcome is 22]perverse enjoyment[else]horror[end if], you realize that she is masturbating herself with you, her words becoming increasingly incoherent and noisy as orgasm approaches. In the throes of climax, the pressure around you increases again until you pass out. You awaken sometime later, your body bruised, tingling, and soaked in the juices of the bear's orgasm.";
		now UrsineDefeatCount is 1;
	else if UrsineDefeatCount is 1 or a random chance of 1 in 4 succeeds:
		if fightoutcome is 21 or fightoutcome is 22:
			say "     Overwhelmed by your lusts, you throw your hands in the air to signal your submission. Your hungry gaze admires the bear's body as she approaches you, her shaggy thighs already damp with arousal and long, hard nipples peeking out through her fur. 'Thank you,' she murmurs as she bundles you up in her arms, drawing you firm against the warm, dark fur of her bosom. A pleasant, musky aroma emanates from her hide, drenching your body in her arousing scent and making you ache for her attention by the time you're lowered onto the ground.";
			say "     Once you're in position, the bear kneels over your head, her intoxicating fragrance strongest near her drenched and dripping nethers. You breathe deeply of the heady scent which wafts from her honeypot, its heady promise wetting your palate as her curvy heft descends on your face. Soon, your whole world goes dark, your vision filled with nothing but that slavering ursine snatch and the thick fur of your lover. You slide your hands around the bear's curvy hips and squeeze them, letting her know that you're ready to indulge her.";
			say "     Your tongue caresses her salmon pink folds, sweeping over the supple flesh of her snatch in long and delicate strokes. When not tending to her labia, you angle your head to seal a kiss to the thick nub of her clit, tongue swirling and lashing around that sensitive button. Your ministrations are met with a long, low groan from your feral partner, who rocks her hips against your face while you worship her. Hungry for more, you slide your tongue deeper into that sordid, drooling tunnel, lapping along her inner walls with ravenous zeal. Every sweep gathers more of her addictive nectar, coating your tongue in a sticky slurry of ursine arousal.";
			WaitLineBreak;
			say "     The insistent stimulation becomes too much for your needy lover, and she clenches her thighs tightly around your head as she cums, roaring her pleasure into the [if daytimer is day]sky[else]night[end if] with a body-wide shudder. You dig your hands into her thighs to hold her still, catching as much of her spurting femcum in your mouth as you can manage, basking in the heat and taste of her orgasm";
			if Player is herm:
				say ". Eager to return the favor, the ursine reaches over to take hold of [if Cock Count of Player > 1]one of [end if]your cock[smn] and plunge her digits into your hot, damp folds. She pumps and jills you vigorously until you reach the precipice of orgasm, then lowers her head to suck you off until you cum, hips bucking against her muzzle as your spray your [Cum Load Size of Player] load across her tongue [if Cock Count of Player > 1]and face [end if]while your nectar squirts all over the ground below.";
			else if Player is female:
				say ". Eager to return the favor, the ursine reaches over to plunge her digits into your hot, damp folds. She rubs a thumb against your clit and jills you vigorously until you reach the precipice of orgasm, then lowers her head to eat you out until you cum, hips bucking against her muzzle as you drench her fur in your nectar";
			else:
				say ". Eager to return the favor, the ursine reaches over to take hold of [if Cock Count of Player > 1]one of [end if]your cock[smn]. She pumps your length vigorously until you reach the precipice of orgasm, then lowers her head to suck you off until you cum, hips bucking against her muzzle as you spray your [Cum Load Size of Player] load across her tongue [if Cock Count of Player > 1]and face [end if]in powerful blasts.";
			say ".";
			say "     By the time [if Player is neuter]she comes[else]you come[end if] to, your mind is awash in a haze of sticky bliss. The bear rises on unsteady footing and pulls you up into her arms, grinding her sopping wet snatch against your thigh while her tongue lavishes your face in affection. The treatment nearly readies you for another round with the extra-sized ursine, but she pulls away before you succumb to those urges, grinning broadly and rubbing your head with a furry paw. Sharing one last affectionate hug, the bear saunters off with a spring to her step, and you stumble away feeling very much drained.";
		else:
			say "     The bear towers over your fallen form. Her shaggy thighs are already damp with arousal, and her long, hard nipples peek through her fur. 'I feel naughty. Help me.' She hesitates for a moment before kneeling over your head. Her warm juices drip over your face before your whole world grows dark and your vision is filled with slavering bear snatch. With surprising delicacy, she begins to grind your face into her pussy, filling your breath with her nectar's potent aroma.";
			say "     Unable to break free, you drive your tongue deep into her sweet, inviting cleft in the hope you can make her cum and let you go. After a few desperate, breathless minutes of orally worshiping your ursine captor, you feel her shudder in orgasm atop you, her thick honeys drenching your face in her delicious, sticky essence. After her climax, she rests atop you for several long minutes, her breathing somewhat troubled as aftershocks of pleasure ripple through her form. The moment she rolls off, you scramble to your feet and run away, fleeing before she can catch you again. You continue to lick your lips long after her abuse, her lingering flavor as distracting as it is enjoyable.";
		if "Microwaved" is not listed in feats of Player and "Male Preferred" is not listed in feats of Player:
			if Player is not female:
				now Cunt Count of Player is 1;
				say "     You feel a wetness between your legs as the bear woman's honey creates a new, juicy cunt between your legs. You release a hazy moan as pleasure radiates from your newly formed slit, the bliss of its first orgasm washing over you.";
				now Cunt Depth of Player is 1;
				now Cunt Tightness of Player is 0; [these will be increased momentarily]
			if Cunt Depth of Player < 8, increase Cunt Depth of Player by 3;
			if Cunt Tightness of Player < 11, increase Cunt Tightness of Player by 2;
			if Breast Size of Player < 5, increase Breast Size of Player by 2;
		now UrsineDefeatCount is 2;
	else if a random chance of 1 in 5 succeeds:
		if fightoutcome is 21 or fightoutcome is 22:
			say "     When you give in, the bear sidles up close to appraise you. At first you wonder if she's going to make use of your body again, but you're instead hoisted into her muscular arms and given an affectionate, albeit sultry look. Against more prudent judgment, you do not resist as she carries you away to a shadier part of the park, then lowers you down on a bed of soft, dry moss. 'Here. Rest for a while,' she offers, and you find yourself nodding absently as she lays down next to you, a huge paw reaching over to brush along your side. Her thick, sweet musk is rather disarming, and the fresh scent emanating from the earth below helps douse your lustful impulses. While you relax, the bear emits a low, soft growl that sends soothing vibrations through your form, and you eventually lapse into dreamless slumber.";
			say "     After a couple hours, you awaken to find the bear gone. Looking over your belongings, you are pleased to see that nothing was marred or stolen while your guard was down. Still cognizant of your dangerous surroundings, you gather your wits about you and rise to your feet again, rested and revitalized after the peaceful exchange.";
		else:
			say "     That last blow was a doozy. You feel your limp body being picked up and helplessly carried to the shade. The bear watches over you with an odd mixture of concern and barely restrained lust. 'It's hard sometimes,' she says absently while giving your head affectionate pats. Despite the way her huge paw jars your aching head, you cannot help but feel warmly towards the bear before passing out. You awaken to find the tattered remains of your clothes feeling odd. With a start, you realize they have been washed and ironed. Of all the messed up things in the world, that small gesture affects you deeply.";
		increase morale of Player by 2;
		decrease Libido of Player by 4;
		increase HP of Player by 5;
		if HP of Player > maxHP of Player, now HP of Player is maxHP of Player;
		if Libido of Player < 0, now Libido of Player is 0;
	else if a random chance of 2 in 3 succeeds and player is not neuter:
		if Player is male and ( Cunt Count of Player is 0 or a random chance of 2 in 5 succeeds ):
			say "     She licks her lips as her favorite survivor is once again at her mercy. 'Oh why did you came back?' The smell of her arouses you, and she spots your hardening maleness. 'Oh. I guess we all have needs, now. Let me help you with that.' With that, she kneels down and wraps her huge mouth around your almost painfully swollen cock. You stay motionless as you see her lethal teeth not inches from your straining member, but the fear is soon forgotten as her skillful lips and tongue work you to an orgasm that has you [one of]spurting until your balls ache[or]moaning in pleasure[or]fighting unsuccessfully to avoid cumming over and over[at random]. After an age of being pleasured until your straining cock relaxes, you lay back and begin to doze. While you rest, the honey-scented bear departs, saying in a voice thick with lust, 'I've got to attend to myself now, [one of]Hotshot[or]Honey[at random]. Come back when you're ready for more fun.' Hearing the moaning of the bear as she pleasures herself, you realize it's time to move.";
		else:
			say "     She licks her lips as her favorite survivor is once again at her mercy. 'Oh why did you came back?' The smell of her arouses you, and she licks her lips at scent of your wet pussy. 'Oh. I guess you just miss me and need some more attention. Mmm... let me help you with that, [one of]sweetie[or]honey[at random].' With that, she pushes you down onto the grass and brings her bruin muzzle to your juicy slit, wet and dripping with arousal. Her big, broad tongue slathers attention on your pussy, lapping up your juices before diving in to you to make you moan loudly through a series of increasingly powerful female orgasms[if Player is male]. One of her large bear paws strokes and pumps at your cock throughout this, getting you to blast your load onto yourself repeatedly as well[end if]. The bear licks it all up lustfully, clearly enjoying the taste of your drenched folds. After an age of being pleasured until you're about to pass out, you lay back and begin to doze. While you rest, the honey-scented bear departs, saying in a voice thick with lust, 'I've got to attend to myself now, [one of]Sweetie[or]Honey[at random]. Come back when you're ready for more fun.' Hearing the moaning of the bear as she pleasures herself, you realize it's time to move.";
		now UrsineDefeatCount is 3;
		increase morale of Player by 2;
		decrease Libido of Player by 6;
		increase HP of Player by 5;
		if HP of Player > maxHP of Player, now HP of Player is maxHP of Player;
		if Libido of Player < 0, now Libido of Player is 0;
	else:
		say "     [if fightoutcome is 21]Falling prey to your lusts, the[else if fightoutcome is 22]Seeing you submit, the[else]The[end if] bear hugs you against her honey-scented body and presses you deep into her warm, dark fur. Through her hide you hear her say, 'Why must we always fight so?' You feel her nipples leaking honeyed milk, and you are compelled to suck on them in your daze. Incredibly sweet milk flows into your mouth and into your body, each delicious spurt leaving you more and more aroused. After coating your palate in her intoxicating flavor, you move from one dark nipple to the next, squeezing and suckling on it for more. You can hear the bear purring deeply as you indulge yourself, her claw-tipped fingers roaming over your back to show her appreciation. Your hand snakes down between the bear's huge thighs, and you rub across her drenched and dripping pussy to increase the flow of her milk. You can feel and taste her orgasm approaching, and with one last generous spurt, you both orgasm hard. Refreshed and satisfied after your meal, you give the bear a grateful hug before heading on your way again.";
		PlayerDrink 3;
		PlayerEat 2;
		increase morale of Player by 2;
		decrease Libido of Player by 6;
		increase HP of Player by 5;
		if HP of Player > maxHP of Player, now HP of Player is maxHP of Player;
		if Libido of Player < 0, now Libido of Player is 0;


to say UrsineLoses:
	if HP of bee girl is 3:
		say "     Your final blow makes the large bear lose her footing and she staggers back.";
	else:
		say "     [one of]The beaten bear comes back to her senses. 'Oh. That's better.' and then slumps over, apparently peacefully asleep.[or]You find yourself watching the motion of her big furry backside as the defeated bear hurriedly ambles off.[at random]";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Brown Bear"; [name of the overall species of the infection, used for children, ...]
	add "Brown Bear Female" to infections of UrsineList;
	add "Brown Bear Female" to infections of FurryList;
	add "Brown Bear Female" to infections of NatureList;
	add "Brown Bear Female" to infections of FemaleList;
	add "Brown Bear Female" to infections of TaperedCockList;
	add "Brown Bear Female" to infections of SheathedCockList;
	add "Brown Bear Female" to infections of BipedalList;
	add "Brown Bear Female" to infections of TailList;
	now Name entry is "Brown Bear Female"; [Name of your new Monster]
	now enemy title entry is "Female Brown Bear"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[UrsineAttack]"; [Text used when the monster makes an Attack]
	now defeated entry is "[UrsineLoses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[UrsineWins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[UrsineDesc]"; [ Description of the creature when you encounter it.]
	now face entry is "that of a bear, with an elongated snout and big bear teeth set in what is definitely not a teddy bear"; [ Face description, format as "Your face is (your text)."]
	now body entry is "tall and broad, with heavy shoulders and an undeniable presence that reeks sheer strength"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]shaggy-furred[or]coarsely furred[or]furry, honey-scented[at random]"; [ skin Description, format as "Looking at yourself, your body is covered in (your text) skin"]
	now tail entry is "You have a short black tail hidden mostly by the sheer size of you."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]pink bulbous[or]ribbed[or]usually sheathed[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your nose changes and darkens as your face draws forward into a bear like muzzle, and your ears become rounded and furry as they move into their new position"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you swell with the sudden appearance of more muscles and height, growing taller and heavier by the moment"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "coarse, shaggy, dark brown fur spreads rapidly over your form"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "the forming of your stubby tail almost goes unnoticed"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your cock is surrounded by a woolly sheath"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 25; [a big strong bear]
	now dex entry is 10; [not so limber]
	now sta entry is 11; [not too much stamina -a lot of bear to lug about.]
	now per entry is 20; [bears are good at finding stuff]
	now int entry is 14; [not that much of a bear with little brain]
	now cha entry is 14; [because you wouldn't want to argue]
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 60; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 7; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Park"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 10; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 4; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 6; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 1; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 15; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 8; [ Width of female sex infection will try and give you ]
	now SeductionImmune entry is false;
	now libido entry is 20; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "honeycomb";
	now lootchance entry is 30; [ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 4; [ Number 1-5, rough approx of infected PC body size/height. 1=small, 3=avg, 5=huge ]
	now body descriptor entry is "burly"; [ one-word adjective descriptor of monster/infected PC's body for use in scenes ]
	now type entry is "ursine"; [ one-word creature type. Ex: feline, bovine, robotic, cyborg, lupine, canine, human... ]
	now magic entry is false; [ Is this a magic creature? true/false ]
	now resbypass entry is false; [ Bypasses Researcher bonus? True/False (should almost invariably be false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "bearhugger"; [ Uses the 'bearhugger' entry from the Table of Critter Combat ]
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
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
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


Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Brown Bear Female Infection"	"Infection"	""	Brown Bear Female Infection rule	1000	false

This is the Brown Bear Female Infection rule:
	if Player has a body of "Brown Bear Female":
		trigger ending "Brown Bear Female Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     You amble off into the parkland, only occasionally reappearing to scare the hell out of anyone still foolish enough to try camping. Occasionally you leave signs of your passing in the form of rifles twisted into pretzels and tales from horrified hunters that have been both attacked and abused. Seeing you are no threat unless threatened, you are left to your own devices.";
		else:
			say "     Your body shape strongly inclines you to seek an outdoor life. Your resourcefulness, hardiness and aptitude are noted and your kind are soon recognized as excellent park warden material. Despite often being posted to wilderness areas, you are seldom left completely alone for long as bears begin to build an increasing fanbase amongst both the infected and the more [one of]adventurous[or]deviant[at random] uninfected.";

Table of Game Objects (continued)
name	desc	weight	object
"honeycomb"	"A red-painted tin containing a wonderfully sweet-smelling slice of coarse honeycomb. From the size of the cells, you know you really don't want to find the hive."	1	honeycomb

honeycomb is a grab object. It is temporary.

Usedesc of honeycomb is "[honeycombuse]";

to say honeycombuse:
	say "You are overcome with the need for sweetness. The sticky goodness of the honeycomb makes you drool as you shove it into your suddenly hungry mouth.";
	decrease hunger of Player by 6;
	if hunger of Player < 0, now hunger of Player is 0;
	increase thirst of Player by 1;

instead of sniffing honeycomb:
	say "The small piece of honeycomb smells like a sweet smackerel of honey. You don't notice anything unusual or infected about its odor.";

Brown Bear ends here.
