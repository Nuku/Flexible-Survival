Version 3 of Bear for FS by Nuku Valente begins here.
[ Version 3.1 - Honey Quest version added]

"Adds a Bear to Flexible Survival's Wandering Monsters table."
[Description text for this Extension.]

[ Notes... Giant schizophrenic lesbian bear. If I could have pulled it off...
 I wanted the honeycomb to decrease hunger and increase thirst a little, as befits something incredibly sweet.
**I thought about an outcome where nobody gets screwed. Not reeking of sex should lower the libido a little.
I wanted her to be strong, hard hitting, and fairly easy to dodge. Honeycomb seemed a natural portable, but not entirely necessary.
]

Section 1 - Monster Responses

ursinedefeat is a number that varies.

to say ursine desc:
	setmongender 4; [creature is female]
	if HP of bee girl is 3:
		say "     You are faced with a towering figure. While her head and body are much like that of a wild bear, her legs are somewhat longer and she's gotten quite pudgy from eating the stolen honey. The plain red t-shirt she wears is barely able to fit her enlarged body as it is, her six busty breasts pressed tightly against the taut fabric such that there's a clear impression of her hard nipples. She is no cute teddy bear though, her muzzle is filled with sharp teeth and her powerful limbs end in paws equipped with claws. The big bruin, eager to defend her ill-gotten gains, is ready to attack.";
	else:
		say "     A huge towering figure comes into view. At first you see a wild bear on its hind legs but on closer inspection you realise that it's legs are somewhat long and its black claws are painted with nail polish, and she is absently rubbing herself... another infected citizen of this crazy world. It must be the influence of the infection on you, but the longer you watch the more you see she is quite attractive in a uniquely bear kind of way. She has bright [one of]brown[or]blue[or]green[at random] eyes and behind what might be a smile a row of terrifying huge pointed teeth. She is naked but covered in dense shaggy fur that covers her tall and wide body completely. Her muscular chest is padded with three rows of flattish breasts and long nipples peek through her fur. On seeing you, she speaks and exposes more of those teeth, '[one of]Run! I don't want to break another one![or]Not now, you dummy![or]Are you stalking me?[at random]'";


to say ursine fighting:
	if HP of bee girl is 3:
		say "[one of]She slams you with one of her great clawed hands, sending you flying.[or]With terrifying ease, she picks you up and throws you into the underbrush.[or]With a great sweep of her fur covered arm, she knocks you flying.[or]The bear snaps at you with its powerful teeth.[or]You are clubbed upside the head with a toy pop-gun.[or]Your head is grabbed and your face is buried in her red-shirted bosom. It is sticky with honey and heady with her scent, leaving you a little dazed by the time you squirm free.[at random]";
	else:
		say "[one of]She slams you with one of her great clawed hands. As you are sent flying, you wonder where she gets her red nail polish.[or]With terrifying ease, she picks you up and throws you into a pile of rubbish.[or]With a great sweep of her fur covered arm, she knocks you flying.[or]Teeth that can shear your head off close around your neck, before being withdrawn. She smiles embarrassed, 'sorry!' before punching the wind out of you.[or]As she flattens you again you wonder if your plan needs changing.[at random]";


to say ursine attack:
	if HP of bee girl is 3:
		say "     The large bear grabs you roughly and tosses you to the ground with an angry roar. Hearing the bear roar terrifies poor Honey and she flees off into the trees to hide while the bear has her way with you. By the time she's done with you, you're very tired and very stick with both honey and female juices.";
	else if ursinedefeat is 0: [ first time losing to a bear ]
		say "You realise she has been holding back on you as she easily hefts you up towards her broad well padded chest, pressing your face into her coarse thick fur. The pressure of her huge furry grip engulfs you and you fear you are about to be crushed out of existence. As your consciousness fades you realise it's not the worst way to go, and you feel oddly comfortable as the pressure decreases. While you are wondering what next, you realise you are being rocked back and forth against the bear's increasingly hardening nipples. She begins to rumble low in her throat with pleasure. 'No, Phyllis you mustn't...' she says to herself as she gets increasingly aroused. Her strong paws irresistibly rub you through the thick sweetly musky fur covering her muscular body. 'Oh..feels so good...' You feel a heat and dampness covering your lower half. The sweet smell of sex fills the air and with some small feeling of horror you realise she is masturbating herself with you. The bear begins to talk to itself more as it gets more aroused becoming increasingly incoherent and noisy as her orgasm approaches. In the throes of her mighty roaring orgasm the pressure again increases and you pass out to awaken bruised, tingling and soaked in the juices of the bear's orgasm.";
		now ursinedefeat is 1;
	else if ursinedefeat is 1 or a random chance of 1 in 4 succeeds:
		say "She towers over your stricken form. You can see her shaggy thighs are already damp with her massive arousal. Her long hard nipples peek through her fur. 'I feel naughty. Help me.' For a moment she pauses before straddling your face. The warm juices of arousal splatter on your face before your whole world grows dark and your vision is filled with dripping bear snatch. With surprising delicacy she squats over your head and begins to grind your face into her pussy. It gets hard to breathe.[line break][line break]Unable to struggle you drive your tongue deep into her addictive, sweet cleft in the hope you can make her cum and let you go. After a few desperate breathless minutes of tongue aching exercise, you feel her shuddering orgasm drench you and with one last irresistible thrust she lets you go. Rolling free you run off, disturbed not least by the way you find yourself repeatedly licking your lips, terribly aroused and unable to forget the honey taste of her.";
		if "Microwaved" is not listed in feats of player and "Male Preferred" is not listed in feats of player:
			if cunts of player is 0:
				now cunts of player is 1;
				say "You feel a wetness between your legs as the bear woman's honey creates a new juicy cunt between your legs. You release a moan as pleasure runs through your body from it as its first orgasm washes through you.";
				now cunt length of player is 1;
				now cunt width of player is 0; [these will be increased momentarily]
			if cunt length of player < 8, increase cunt length of player by 3;
			if cunt width of player < 11, increase cunt width of player by 2;
			if breast size of player < 5, increase breast size of player by 2;
		Now ursinedefeat is 2;
	else if a random chance of 1 in 5 succeeds:
		say "That last blow was a doozy. You feel your limp self picked up bodily and find yourself helplessly carried to the shade. The bear watches over you with an odd mixture of concern and barely restrained lust. 'It's hard sometimes,' she says absently and pats you on the head affectionately. Despite the way her huge paw jars your aching head, you cannot help but feel warmly towards the bear before passing out. You awaken to find the tattered remains of your clothes feeling odd. With a start you realise they have been washed and ironed. Of all the messed up things in the world, that small gesture affects you deeply.";
		increase morale of player by 2;
		decrease libido of player by 4;
		increase HP of player by 5;
		if HP of player > maxHP of player, now HP of player is maxHP of player;
		if libido of player < 0, now libido of player is 0;
	else if ( ursinedefeat is 2 or ursinedefeat is 3 ) and a random chance of 2 in 3 succeeds and ( cocks of player > 0 or cunts of player > 0 ):
		if cocks of player > 0 and ( cunts of player is 0 or a random chance of 2 in 5 succeeds ):
			say "She licks her lips as her favorite survivor is once again at her mercy. 'Oh why did you came back?' The smell of her arouses you and she sees your hardening maleness. 'Oh. I guess we all have needs now. Let me help you with that.' and she reaches down and puts her huge mouth around your almost painfully swollen cock. You stay motionless as you see her lethal teeth not inches from your straining member, but the fear is soon forgotten as her skillful lips and tongue work you to an orgasm that has you [one of]spurting until your balls ache[or]moaning in pleasure[or]fighting unsuccessfully to avoid cumming over and over[at random]. After an age of being pleasured until your straining cock relaxes, you lay back and begin to doze. After a while the honey-scented bear departs saying in a voice thick with lust, 'I've got to attend to myself now, [one of]Hotshot[or]Honey[at random]. Come back when you're ready for more fun.' Hearing the moaning of the bear as she pleasures herself you realise it's time to move.";
		else:
			say "She licks her lips as her favorite survivor is once again at her mercy. 'Oh why did you came back?' The smell of her arouses you and she sees licks her lips at scent of your wet pussy. 'Oh, I guess you just miss me and need some more attention. Mmm... let me help you with that, [one of]sweetie[or]honey[at random].' And with that, she pushes you down onto the grass and brings her bruin muzzle to your juicy slit, which has gotten wet and dripping in her presence. Her big, broad tongue slathers attention on your pussy, lapping up your juices before diving into you to make you moan loudly through a series of increasingly powerful female orgasms[if cocks of player > 0]. One of her large bear paws strokes and pumps at your cock throughout this, getting you to blast your load onto yourself repeatedly as well[end if]. The bear licks it all up lustfully, clearly enjoying the taste of your sweet pussy. After an age of being pleasured until you're about to pass out, you lay back and begin to doze. After a while, the honey-scented bear departs saying in a voice thick with lust, 'I've got to attend to myself now, [one of]Sweetie[or]Honey[at random]. Come back when you're ready for more fun.' Hearing the moaning of the bear as she pleasures herself you realise it's time to move.";
		now ursinedefeat is 3;
		increase morale of player by 2;
		decrease libido of player by 6;
		increase HP of player by 5;
		if HP of player > maxHP of player, now HP of player is maxHP of player;
		if libido of player < 0, now libido of player is 0;
	else:
		say "She hugs you against her honey-scented body and presses you deep into her warm dark fur. Through the dark fur you hear her sigh. 'Why must we always fight so?' You feel her nipples leaking honeyed milk and it feels natural to suck at them. Incredibly sweet milk flows into your mouth and into your body, each sweet spurt making you more and more aroused. You feel if you can just get enough milk you can cum over and over. You move from one dark nipple to the next and suck and suck to get more milk. You can hear the bear purring deeply with pleasure. Your hand snakes down between the bears huge thighs as yous suckle and you rub her drenched slippery pussy increasing the flow of milk. You can feel and taste her orgasm approaching. With one last big spurt of milk into your mouth you both orgasm hard. Feeling somewhat refreshed and with a feeling of great satisfaction, you head on your way.";
		PlayerDrink 3;
		PlayerEat 2;
		increase morale of player by 2;
		decrease libido of player by 6;
		increase HP of player by 5;
		if HP of player > maxHP of player, now HP of player is maxHP of player;
		if libido of player < 0, now libido of player is 0;


to say ursine loses:
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
	now attack entry is "[ursine fighting]"; [Text used when the monster makes an Attack]
	now defeated entry is "[ursine loses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[ursine attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[ursine desc]";[ Description of the creature when you encounter it.]
	now face entry is "that of a bear, with an elongated snout and big bear teeth set in what is definitely not a teddy bear";[ Face description, format as the text "Your face is (your text)."]
	now body entry is "tall and broad, with heavy shoulders and an undeniable presence that reeks sheer strength";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "[one of]shaggy-furred[or]coarsely furred[or]honey-scented furry[at random]";[ skin Description, format as the text "You have (your text) skin"]
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
	now area entry is "Park"; [ Current options are 'Outside' and 'Mall' Case sensitive If you go down to the woods today, you're in for a big surprise]
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
			say "You amble off into the parkland, only occasionally to reappearing to scare the hell out of anyone still foolish enough to try camping. Occasionally you leave signs of your passing in the form of rifles twisted into pretzels and tales from horrified hunters that have been both attacked and abused. Seeing you are no threat unless threatened, you are left to your own devices.";
		else:
			say "Your body shape strongly inclines you to seek an outdoor life. Your resourcefulness, hardiness and aptitude are noted and your kind are soon recognised as excellent park warden material. Despite often being posted to wilderness areas you are seldom left completely alone for long as bears begin to build an increasing fan base amongst both the infected and the more [one of]adventurous[or]deviant[at random] uninfected.";

Table of Game Objects(continued)
name	desc	weight	object
"honeycomb"	"A red painted tin containing a wonderfully sweet smelling slice of coarse honeycomb. From the size of the cells you know you really don't want to find the hive."	1	honeycomb

honeycomb is a grab object. It is part of the player. It is temporary.

the usedesc of honeycomb is "[honeycombuse]";

to say honeycombuse:
	say " You just are overcome with the need for sweetness. The sticky goodness of the honeycomb makes you drool as you shove it into your suddenly hungry mouth.";
	decrease the hunger of the player by 6;
	if hunger of player < 0, now hunger of player is 0;
	increase thirst of player by 1;

instead of sniffing honeycomb:
	say "The small piece of honeycomb smells like a sweet smackerel of honey. You don't notice anything unusual or infected about its odor.";

Bear For FS ends here.
