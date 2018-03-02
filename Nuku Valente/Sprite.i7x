Version 2 of Sprite by Nuku Valente begins here.
[ Version 2.1 - Relocated to Urban Forest area. ]

"Adds a Sprite to Flexible Survival's Wandering Monsters table, With Impreg chance"

Section 1 - Monster Responses

Spritedefeat is a number that varies.
Spriteconsent is a number that varies.

to say spritedesc:
	setmongender 14; [creatures are female]
	if violinspritefight is true:
		say "     Swirling around you is a buzzing, flitting mob of naked, elfin females.  The tallest of them is two feet tall, many are less.  They swarm about you with loud excited giggles and the buzz of their dragonfly wings.  They jeer at you for disturbing them, but also seem quite pleased to have had someone to play with stumble into their midst.";
	else:
		say "     A faint sparkling from between the trees catches your eyes.  As you turn to look for it, you see it off to the side of you now and high up.  Turning again, you hear a high-pitched giggle and another flitter of motion behind you.  All of a sudden as you spin around, you are swarmed by a buzzing, flitting mob of naked, elfin females.  The tallest of them is two feet tall, many are less.  They swarm about you with loud excited giggles and the buzz of their dragonfly wings.";


to say Sprite attack:
	if fightstatus is 3, now fightstatus is 2;
	if HP of player > 0:
		say "Noticing that you've stopped resisting their efforts, the swarm gives a collective 'YAY!' and dances around you in an ecstatic dance of welcoming before they buzz in all the closer, getting to work.";
		now Spriteconsent is 1;
		wait for any key;
	if a random chance of 1 in 2 succeeds and cunts of player > 0:
		say "You look down to see [(cunt length of player divided by 4) plus one] sprites working their way into you, one after the other. Despite their forms, they slip in smoothly, wings buzzing inside of you, exciting your tunnel and clit and sensing pleasure pulsing through your form as they slowly penetrate with their tiny forms, making their way towards your waiting womb.[impregchance]";
		wait for any key;
	else if "MPreg" is listed in feats of player and cunts of player is 0 and a random chance of 1 in 2 succeeds:
		say "One of the sprites caresses your rear, nuzzling and kissing at it.  'Mmm... there's something special about this spritely boy, girls.  There's a nice, warm womb in him,' she giggles.  That said, she starts rubbing at your back passage, working your anus open.  You moan softly as she starts squirming her way inside.  She's followed by [if scalevalue of player is 1]another[else][scalevalue of player]others[end if].  They slip in smoothly, wings buzzing[if cocks of player > 0] and fluttering against your prostate[end if] as they slowly penetrate with their tiny forms, making their way towards your waiting womb.[mimpregchance]";
	if a random chance of 1 in 2 succeeds:
		say "Your body is swarmed with the cloud, lifted up into the air and caressed from all sides. It's like sleeping on a cloud as they hold you up with hundreds of tiny hands while another hundred work on rubbing your every erogenous zone in alternating waves that has you paralyzed with pleasure.";
		wait for any key;
	if a random chance of 1 in 2 succeeds and cocks of player > 0:
		if cock length of player > 12:
			say "Your mammoth cock draws the interest of the cloud as they swarm over it, coating its length in buzzing, rubbing, forms. At the very end of it, they rub their cunts across your head and cum slit, moaning loudly as they work as if eager to somehow bare your child despite the wild size difference.";
			if cocks of player > 1:
				say "Your other male meat gets assaulted in kind, each becoming lost under a blanket of excited sprites. Your [short ball size] balls are tingling with the need to cum, and you cannot muster the urge to hold back anymore, spraying down, and filling up, dozens of the sprites at a time.";
		else:
			say "One of the largest sprites there descends in front of you with a disturbing smile, 'You will make such a pretty sprite,' she says as she grabs your [cock of player] cock and strokes it slowly, 'But before then, I don't plan to let this go to waste...'";
			wait for any key;
			say "She guides your cock to her hairless entrance and thrusts her hips forward, taking you deeply even as you spread her quite wide on your tool. She squeals and shudders around you, working herself deeper and deeper until you are hilted in her willing form, like a tiny hot vice that ripples and pulls at your cock urgently.";
			if cocks of player > 1:
				say "Your extra manliness gets trapped between her and you, her small hands grabbing and jerking at them in wanton abandon as she rocks her hips up and down along your thick, virile, pole. It all becomes too much with all of them being stimulated and you make her swell powerfully with your climax, the excess seed gushing out between her thighs even as you spray wildly over her and the rest of the swarm.";
			wait for any key;
		say "The swarm stays close to you, tickling, rubbing, and sucking at you until you are ready to collapse in a nerveless pile of sated flesh. Sensing your fatigue, they heft you up and carry you back to a safe place, setting you down carefully before flittering off on the breeze in a mass of giggles.";
		wait for any key;

[ [Sprite loss] ]
To say Sprite loss:
	if zephyrtask is 3, increase zephyrpests by 1;
	if fightstatus is 3, now fightstatus is 1;
	say "The sprites disperse in an unhappy cloud of defeated fae kind, taking off in all directions.";
	if (libido of player > 50 or humanity of player < 30) and cocks of player > 0:
		say "The horde of sprites scatters, all trying to flee. Not wanting to waste such an opportunity, you grab some of the slower or more disoriented ones and trap them in your backpack. After finding a nice quiet alley where no one will walk in on you, you crack the zipper on your backpack and peer inside. You managed to catch several of the winged women, and can think of quite a few things to do with them.";
		say "You strip off your clothes, revealing your throbbing [cock size desc of player] [cock of player] dick. You peer back into your pack, and catch three of the pixie-like creatures, putting the fearful women in a separate pouch. You address the rest, 'Now I'm going to let you out, but your friends don't go free until you finish the job.'";
		say "With the bag opened, the captured sprites fly out and circle around you.  They coax you to sit on a nearby crate, spreading your legs for easier access to your [cock of player] shaft. Their wings tease your erect phallus as they flit around, examining your groin before getting to work. They start licking at you as they dart around your cock, leaving thin trails of saliva up and down your shaft. The largest one licks at your tip and giggles as you twitch and start to moan from their attentions. She manages to take your whole tip into her mouth and begins massaging your glans with rolling movements of her tongue. Others hold on to your shaft and start flapping their wings rapidly. It feels like your cock is covered in a bunch of vibrators. [if cock width of player > 0]The last two tend to your [short ball size] balls, licking and buzzing until you are lost in a haze of pleasure. [end if]After what feels like an hour, but was really only a few minutes, you can't take any more. You climax, covering the largest sprite from head to toe in your seed.";
		say "After you recover, you open your pack and release the still-trapped sprites. One of the smaller fairies flies up to your ear as the rest fly away. 'If that was all you wanted, why didn't you just ask?' She circles your head once more before flying off.";
	else if (libido of player > 50 or humanity of player < 30) and cunts of player > 0:
		say "The horde of sprites scatters, all trying to flee. Not wanting to waste such an opportunity, you grab some of the slower or more disoriented ones and trap them in your backpack. After finding a nice quiet alley where no one will walk in on you, you crack the zipper on your backpack and peer inside. You managed to catch several of the winged women, and can think of quite a few things to do with them.";
		say "You strip off your clothes, revealing your [breast size desc of player] chest and aching pussy. You peer back into your pack, and catch three of the pixie-like creatures, putting the fearful women in a separate pouch. You address the rest, 'Now I'm going to let you out, but your friends don't go free until you finish the job.'";
		say "With the bag opened, the captured sprites fly out and circle around you.  They coax you to sit on a nearby crate, spreading your legs for easier access to your [cockname of player] [cunt size desc of player]pussy. They flit around you, their wings teasing all your most sensitive places. As you lean against the wall behind you, the group of sprites gather at your [breast size desc of player] breasts. They caress your soft flesh, massaging your bosom, tickling you with their wings, and teasing your nipples with their little tongues. The largest is able take your whole nipple in her mouth, and she sucks on it enthusiastically. As they pass from one breast to the next, one stays to tend to each breast. The rest continue teasing their way down your chest until they reach your dripping honey pot.";
		say "They pass it by without pause, leaving you hot and breathing heavily in anticipation. They start down at your feet, tickling and massaging them in turn. The work their way up your calves, and stop at your thighs. The sprites squeeze and caress and tickle your inner thighs, getting maddeningly close to the aching need between your legs.";
		say "Finally, they turn their attention to your sopping wet pussy. They lick and stroke and tickle at you. One takes your clit into her mouth and sucks on it rigorously, driving you to your peak. Just as you are about to climax they stop once again. You look down at them questioningly through your lusty haze just in time to see one fly headfirst into your pussy. Stars explode into your vision as you finally climax with the sprite wiggling inside you. The other sprites start licking and stroking your cunt and massaging your breasts with their friend still squirming inside you. They make you cum and again and again in quick succession until your vision soon goes dark.";
		say "You wake up some time later in a puddle of your own sweet love juices. The sprites are nowhere to be seen. You look for your backpack and see it lies open. Free sprites must have released the others after you passed out. You look around for your clothes and get dressed, still a bit dazed from your incredible time with the little fairies.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "City Sprite"; [Name of your new Monster]
	now attack entry is "[one of]The swarm of sprites rushes over you, tickling at your sides in a maddening onslaught of the senses, leaving you giggling.[or][if cocks of player > 0]A sprite zips between your thighs and grabs at your [cock of player] organ, tickling at the very tip of it with her wings as she holds on tight.[else]The sprites focus on your chest, licking and rubbing against you in an excited swarm![end if][or][if cunts of player > 0 and cunt length of player > 5]With a sudden wet noise, you feel your vulva spread apart as a sprite flies up into you with astounding accuracy. She begins to wriggle in deeper, lost to sight, but certainly not to your slick tunnel which spasms in forced delight.[else]The sprites get a sudden violent fit, grabbing tiny pebbles and rocks and pelting you with them in a hail of tiny debris.[end if][at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Sprite loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[Sprite attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[spritedesc]";[ Description of the creature when you encounter it.]
	now face entry is "exceptionally cute and young human female, with elfin ears at either side of your head";[ Face description, format as the text "Your face is (your text)."]
	now body entry is "largely human, if not for the great set of dragonfly wings that rest on your back, with blackened flesh and clear for most of their length. Your form is also quite short and feminine";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "flawless human";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]human[or]uncut[at random]";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your ears become long and elfin.  As the changes progress, your face becomes pudgy and youthful, you could almost pass for human."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you shrink dramatically and swiftly. Your form becomes more female looking as curves develop. Behind you, dragonfly like wings extend outwards, buzzing excitedly for a moment before folding neatly against your reduced form."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "it becomes soft and supple, perfect human flesh."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "your rump becomes round and grabbable."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it becomes human like, uncut and dangling between your thighs."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 8;
	now dex entry is 18;
	now sta entry is 10;
	now per entry is 16;
	now int entry is 12;
	now cha entry is 18;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 26;
	now lev entry is 2; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 5; [Amount of Damage monster Does when attacking.]
	now area entry is "Forest"; [ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8; [ Length infection will make cock grow to if cocks]
	now cock width entry is 6; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 2; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 6; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 4; [ Width of female sex infection will try and give you ]
	now libido entry is 40; [ Amount player Libido will go up if defeated ]
	now loot entry is "pixie dust";
	now lootchance entry is 33; [ Chance of loot dropping 0-100 ]
	now scale entry is 1; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]elfin[or]petite[or]winged[at random]";
	now type entry is "[one of]sprite[or]faerie[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Pixie Dust

Table of Game Objects (continued)
name	desc	weight	object
"pixie dust"	"A sweet smelling powder that glistens in the light."	0	pixie dust

pixie dust is a grab object. It is a part of the player. pixie dust is infectious. The strain of pixie dust is "City Sprite".

The usedesc of pixie dust is "[tastepixiedust]";

to say tastepixiedust:
	say "     Looking at the sparkling powder, you dab your finger into it and give it a taste.  It is quite sweet on your tongue, though it also carries a faintly feminine flavour as well.  As you sample more of it, there's a growing tingling sensation on your tongue and you feel a little lighter on your feet.";
	increase libido of player by 8;

the scent of pixie dust is "Taking a careful sniff of the powder, you catch a faintly feminine scent coming from it.".


Section 4 - Endings

when play ends:
	if bodyname of player is "City Sprite":
		if humanity of player < 10:
			if Spriteconsent is 1:
				say "You feel everything getting smaller around you as you lose mass rapidly. The extra flesh is burned away in bright rainbow lights. Perhaps it is this light that guides the swarm of sprites to find you so quickly. They hug and kiss at you, welcoming you into their swarm. You follow them away from the city. The forest where you all eventually settle earns a reputation for being haunted, but, oddly, hikers still come regularly to visit you and the swarm.";
			else:
				say "Your memories of your old life begin to fade away and you take off in a sudden buzz, flying around the city in search of... something, but you never quite find it. It's quite a surprise when a net falls down on you a few days later and you're hauled out of the city. Your captor proves to be reasonably kind, but never treats you as more than an interesting and delicate-looking animal, despite your protests.";
		else:
			if Spriteconsent is 1:
				say "Great glows of bright colours emanate off your body as you begin to shrink down. The sprite cloud arrives moments later, trying to lead you away. Your mind still sharp, you give another idea. They seem confused at your idea, and the leader steps forward to challenge her. Rather than fight her, you grab her up in a fierce kiss, hands wandering over her back and buttocks.[line break][line break]When the kiss parts, she agrees to your terms, and you guide the sprites to a city, becoming a source of mystery and predating on the people there who need it most. Lonely Friday nights are a thing of the past.";
			else:
				say "You are picked up by the rescuers just moments before you start to shrink down the rest of the way to Sprite size. You have a hard time getting a job being so small, at least until that advertising firm found you. You did quite well as a model, where scale meant a lot less. Besides, how could Sprite resist using you?";


[ Edit this to have the correct name as well]
Sprite ends here.
