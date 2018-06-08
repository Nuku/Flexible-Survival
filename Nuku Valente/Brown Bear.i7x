Version 4 of Brown Bear by Nuku Valente begins here.
[ Version 1.0 - Initial mob from Nuku Valente's equine extension - Illpill                                               ]
[ Version 1.1 - Moved to Nuku Valente's folder, unknown changes - Nuku                                                   ]
[ Version 1.2 - Bear can no longer expand you if you have microwaved or male preferred - Nuku Valente                    ]
[ Version 2.0 - New critter table entries added and Alt Combat enabled - Stripes                                         ]
[ Version 3.0 - Restructured player loss scenes and added missing features - Stripes                                     ]
[ Version 3.1 - Honey Quest version added - Stripes                                                                      ]
[ Version 4.0 - Additional scenes on lust loss/submission. Extensive revisions to phrasing and sentence structure - Song ]

"Adds a Bear to Flexible Survival's Wandering Monsters table."

Section 1 - Monster Responses

UrsineDefeatCount is a number that varies.

to say UrsineDesc:
	setmongender 4; [creature is female]
	if HP of bee girl is 3:
		say "     You are faced with a towering figure. While her head and body are much like that of a wild bear, her legs are somewhat longer and she's gotten quite pudgy from eating the stolen honey. The plain red t-shirt she wears is barely able to fit her enlarged body as it is, her six busty breasts pressed tightly against the taut fabric such that there's a clear impression of her hard nipples. She is no cute teddy bear, though. Her muzzle is filled with sharp teeth, and her powerful limbs end in paws equipped with claws. The big bruin, eager to defend her ill-gotten gains, is ready to attack.";
	else:
		say "     A towering figure comes into view. At first you assume it's a wild bear standing on its hind legs, but on closer inspection, you realize that its legs are somewhat long and its black claws are painted with nail polish. The infected woman has bright [one of]brown[or]blue[or]green[at random] eyes and huge, pointed teeth. A dense coat of shaggy fur covers her tall and wide body completely. Her muscular chest is padded with three rows of flattish breasts, and long nipples peek out through her fur. On seeing you, she exposes more of her teeth and speaks, '[one of]Run! I don't want to break another one![or]Not now, you idiot![or]Are you stalking me?[at random]'";


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
			if player is herm:
				say ". Eager to return the favor, the ursine reaches over to take hold of [if cocks of player > 1]one of [end if]your cock[smn] and plunge her digits into your hot, damp folds. She pumps and jills you vigorously until you reach the precipice of orgasm, then lowers her head to suck you off until you cum, hips bucking against her muzzle as your spray your [cum load size of player] load across her tongue [if cocks of player > 1]and face [end if]while your nectar squirts all over the ground below.";
			else if player is female:
				say ". Eager to return the favor, the ursine reaches over to plunge her digits into your hot, damp folds. She rubs a thumb against your clit and jills you vigorously until you reach the precipice of orgasm, then lowers her head to eat you out until you cum, hips bucking against her muzzle as you drench her fur in your nectar";
			else:
				say ". Eager to return the favor, the ursine reaches over to take hold of [if cocks of player > 1]one of [end if]your cock[smn]. She pumps your length vigorously until you reach the precipice of orgasm, then lowers her head to suck you off until you cum, hips bucking against her muzzle as you spray your [cum load size of player] load across her tongue [if cocks of player > 1]and face [end if]in powerful blasts.";
			say ".";
			say "     By the time [if player is neuter]she comes[else]you come[end if] to, your mind is awash in a haze of sticky bliss. The bear rises on unsteady footing and pulls you up into her arms, grinding her sopping wet snatch against your thigh while her tongue lavishes your face in affection. The treatment nearly readies you for another round with the extra-sized ursine, but she pulls away before you succumb to those urges, grinning broadly and rubbing your head with a furry paw. Sharing one last affectionate hug, the bear saunters off with a spring to her step, and you stumble away feeling very much drained.";
		else:
			say "     The bear towers over your fallen form. Her shaggy thighs are already damp with arousal, and her long, hard nipples peek through her fur. 'I feel naughty. Help me.' She hesitates for a moment before kneeling over your head. Her warm juices drip over your face before your whole world grows dark and your vision is filled with slavering bear snatch. With surprising delicacy, she begins to grind your face into her pussy, filling your breath with her nectar's potent aroma.";
			say "     Unable to break free, you drive your tongue deep into her sweet, inviting cleft in the hope you can make her cum and let you go. After a few desperate, breathless minutes of orally worshipping your ursine captor, you feel her shudder in orgasm atop you, her thick honeys drenching your face in her delicious, sticky essence. After her climax, she rests atop you for several long minutes, her breathing somewhat troubled as aftershocks of pleasure ripple through her form. The moment she rolls off, you scramble to your feet and run away, fleeing before she can catch you again. You continue to lick your lips long after her abuse, her lingering flavor as distracting as it is enjoyable.";
		if "Microwaved" is not listed in feats of player and "Male Preferred" is not listed in feats of player:
			if cunts of player is 0:
				now cunts of player is 1;
				say "     You feel a wetness between your legs as the bear woman's honey creates a new, juicy cunt between your legs. You release a hazy moan as pleasure radiates from your newly formed slit, the bliss of its first orgasm washing over you.";
				now cunt length of player is 1;
				now cunt width of player is 0; [these will be increased momentarily]
			if cunt length of player < 8, increase cunt length of player by 3;
			if cunt width of player < 11, increase cunt width of player by 2;
			if breast size of player < 5, increase breast size of player by 2;
		now UrsineDefeatCount is 2;
	else if a random chance of 1 in 5 succeeds:
		if fightoutcome is 21 or fightoutcome is 22:
			say "     When you give in, the bear sidles up close to appraise you. At first you wonder if she's going to make use of your body again, but you're instead hoisted into her muscular arms and given an affectionate, albeit sultry look. Against more prudent judgment, you do not resist as she carries you away to a shadier part of the park, then lowers you down on a bed of soft, dry moss. 'Here. Rest for a while,' she offers, and you find yourself nodding absently as she lays down next to you, a huge paw reaching over to brush along your side. Her thick, sweet musk is rather disarming, and the fresh scent emanating from the earth below helps douse your lustful impulses. While you relax, the bear emits a low, soft growl that sends soothing vibrations through your form, and you eventually lapse into dreamless slumber.";
			say "     After a couple hours, you awaken to find the bear gone. Looking over your belongings, you are pleased to see that nothing was marred or stolen while your guard was down. Still cognizant of your dangerous surroundings, you gather your wits about you and rise to your feet again, rested and revitalized after the peaceful exchange.";
		else:
			say "     That last blow was a doozy. You feel your limp body being picked up and helplessly carried to the shade. The bear watches over you with an odd mixture of concern and barely restrained lust. 'It's hard sometimes,' she says absently while giving your head affectionate pats. Despite the way her huge paw jars your aching head, you cannot help but feel warmly towards the bear before passing out. You awaken to find the tattered remains of your clothes feeling odd. With a start, you realize they have been washed and ironed. Of all the messed up things in the world, that small gesture affects you deeply.";
		increase morale of player by 2;
		decrease libido of player by 4;
		increase HP of player by 5;
		if HP of player > maxHP of player, now HP of player is maxHP of player;
		if libido of player < 0, now libido of player is 0;
	else if a random chance of 2 in 3 succeeds and ( cocks of player > 0 or cunts of player > 0 ):
		if cocks of player > 0 and ( cunts of player is 0 or a random chance of 2 in 5 succeeds ):
			say "     She licks her lips as her favorite survivor is once again at her mercy. 'Oh why did you came back?' The smell of her arouses you, and she spots your hardening maleness. 'Oh. I guess we all have needs, now. Let me help you with that.' With that, she kneels down and wraps her huge mouth around your almost painfully swollen cock. You stay motionless as you see her lethal teeth not inches from your straining member, but the fear is soon forgotten as her skillful lips and tongue work you to an orgasm that has you [one of]spurting until your balls ache[or]moaning in pleasure[or]fighting unsuccessfully to avoid cumming over and over[at random]. After an age of being pleasured until your straining cock relaxes, you lay back and begin to doze. While you rest, the honey-scented bear departs, saying in a voice thick with lust, 'I've got to attend to myself now, [one of]Hotshot[or]Honey[at random]. Come back when you're ready for more fun.' Hearing the moaning of the bear as she pleasures herself, you realize it's time to move.";
		else:
			say "     She licks her lips as her favorite survivor is once again at her mercy. 'Oh why did you came back?' The smell of her arouses you, and she licks her lips at scent of your wet pussy. 'Oh. I guess you just miss me and need some more attention. Mmm... let me help you with that, [one of]sweetie[or]honey[at random].' With that, she pushes you down onto the grass and brings her bruin muzzle to your juicy slit, wet and dripping with arousal. Her big, broad tongue slathers attention on your pussy, lapping up your juices before diving in to you to make you moan loudly through a series of increasingly powerful female orgasms[if cocks of player > 0]. One of her large bear paws strokes and pumps at your cock throughout this, getting you to blast your load onto yourself repeatedly as well[end if]. The bear licks it all up lustfully, clearly enjoying the taste of your drenched folds. After an age of being pleasured until you're about to pass out, you lay back and begin to doze. While you rest, the honey-scented bear departs, saying in a voice thick with lust, 'I've got to attend to myself now, [one of]Sweetie[or]Honey[at random]. Come back when you're ready for more fun.' Hearing the moaning of the bear as she pleasures herself, you realize it's time to move.";
		now UrsineDefeatCount is 3;
		increase morale of player by 2;
		decrease libido of player by 6;
		increase HP of player by 5;
		if HP of player > maxHP of player, now HP of player is maxHP of player;
		if libido of player < 0, now libido of player is 0;
	else:
		say "     [if fightoutcome is 21]Falling prey to your lusts, the[else if fightoutcome is 22]Seeing you submit, the[else]The[end if] bear hugs you against her honey-scented body and presses you deep into her warm, dark fur. Through her hide you hear her say, 'Why must we always fight so?' You feel her nipples leaking honeyed milk, and you are compelled to suck on them in your daze. Incredibly sweet milk flows into your mouth and into your body, each delicious spurt leaving you more and more aroused. After coating your palate in her intoxicating flavor, you move from one dark nipple to the next, squeezing and suckling on it for more. You can hear the bear purring deeply as you indulge yourself, her claw-tipped fingers roaming over your back to show her appreciation. Your hand snakes down between the bear's huge thighs, and you rub across her drenched and dripping pussy to increase the flow of her milk. You can feel and taste her orgasm approaching, and with one last generous spurt, you both orgasm hard. Refreshed and satisfied after your meal, you give the bear a grateful hug before heading on your way again.";
		PlayerDrink 3;
		PlayerEat 2;
		increase morale of player by 2;
		decrease libido of player by 6;
		increase HP of player by 5;
		if HP of player > maxHP of player, now HP of player is maxHP of player;
		if libido of player < 0, now libido of player is 0;


to say UrsineLoses:
	if HP of bee girl is 3:
		say "     Your final blow makes the large bear lose her footing and she staggers back.";
	else:
		say "     [one of]The beaten bear comes back to her senses. 'Oh. That's better.' and then slumps over, apparently peacefully asleep.[or]You find yourself watching the motion of her big furry backside as the defeated bear hurriedly ambles off.[at random]";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Bear"; [Name of your new Monster]
	now attack entry is "[UrsineAttack]"; [Text used when the monster makes an Attack]
	now defeated entry is "[UrsineLoses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[UrsineWins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[UrsineDesc]";[ Description of the creature when you encounter it.]
	now face entry is "that of a bear, with an elongated snout and big bear teeth set in what is definitely not a teddy bear";[ Face description, format as the text "Your face is (your text)."]
	now body entry is "tall and broad, with heavy shoulders and an undeniable presence that reeks sheer strength";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "[one of]shaggy-furred[or]coarsely furred[or]furry, honey-scented[at random]";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You have a short black tail hidden mostly by the sheer size of you.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]pink bulbous[or]ribbed[or]usually sheathed[at random]";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your nose changes and darkens as your face draws forward into a bear like muzzle, and your ears become rounded and furry as they move into their new position."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you swell with the sudden appearance of more muscles and height, growing taller and heavier by the moment."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "coarse, shaggy, dark brown fur spreads rapidly over your form."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "the forming of your stubby tail almost goes unnoticed."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your cock is surrounded by a woolly sheath."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 25; [a big strong bear]
	now dex entry is 10; [not so limber]
	now sta entry is 11; [not too much stamina -a lot of bear to lug about.]
	now per entry is 20; [bears are good at finding stuff]
	now int entry is 14; [not that much of a bear with little brain]
	now cha entry is 14; [because you wouldn't want to argue]
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 60; [ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 7; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Park"; [ Current options are 'Outside' and 'Mall' Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 10; [ Length infection will make cock grow to if cocks]
	now cock width entry is 12; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now breasts entry is 6; [ Number of Breasts infection will give you. ]
	now breast size entry is 4; [Size of breasts infection will try to attain ]
	now male breast size entry is 1; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 15; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 8; [ Width of female sex infection will try and give you ]
	now libido entry is 20; [ Amount player Libido will go up if defeated ]
	now loot entry is "honeycomb";
	now lootchance entry is 30; [ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table ]
	now scale entry is 4; [ Number 1-5, rough approx of infected PC body size/height. 1=small, 3=avg, 5=huge ]
	now body descriptor entry is "burly"; [ one-word adjective descriptor of monster/infected PC's body for use in scenes ]
	now type entry is "ursine"; [ one-word creature type. Ex: feline, bovine, robotic, cyborg, lupine, canine, human... ]
	now magic entry is false; [ Is this a magic creature? true/false ]
	now resbypass entry is false; [ Bypasses Researcher bonus? True/False (should almost invariably be false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "bearhugger"; [ Uses the 'bearhugger' entry from the Table of Critter Combat ]

when play ends:
	if bodyname is "Bear":
		if humanity of player < 10:
			say "     You amble off into the parkland, only occasionally reappearing to scare the hell out of anyone still foolish enough to try camping. Occasionally you leave signs of your passing in the form of rifles twisted into pretzels and tales from horrified hunters that have been both attacked and abused. Seeing you are no threat unless threatened, you are left to your own devices.";
		else:
			say "     Your body shape strongly inclines you to seek an outdoor life. Your resourcefulness, hardiness and aptitude are noted and your kind are soon recognized as excellent park warden material. Despite often being posted to wilderness areas, you are seldom left completely alone for long as bears begin to build an increasing fanbase amongst both the infected and the more [one of]adventurous[or]deviant[at random] uninfected.";

Table of Game Objects(continued)
name	desc	weight	object
"honeycomb"	"A red-painted tin containing a wonderfully sweet smelling slice of coarse honeycomb. From the size of the cells, you know you really don't want to find the hive."	1	honeycomb

honeycomb is a grab object. It is part of the player. It is temporary.

the usedesc of honeycomb is "[honeycombuse]";

to say honeycombuse:
	say "You are overcome with the need for sweetness. The sticky goodness of the honeycomb makes you drool as you shove it into your suddenly hungry mouth.";
	decrease hunger of player by 6;
	if hunger of player < 0, now hunger of player is 0;
	increase thirst of player by 1;

instead of sniffing honeycomb:
	say "The small piece of honeycomb smells like a sweet smackerel of honey. You don't notice anything unusual or infected about its odor.";

Brown Bear ends here.