Version 1 of Triceratops Male by Gherod begins here.

"Adds a male anthro Triceratops encounter to the Museum."

[ Version 1 - Created File ]

to say GenerateTrophyList_Triceratops_Male:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "triceratops male tooth" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (25 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 1 - Creature Responses

to say Triceratops Male Wins:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		if HP of Player > 0: [player submitted]
			if scalevalue of player < 3:
				say "     Seeing this big male triceratops has made you feel weak and unable to fight back, so you decide to sink to your knees and submit. He just laughs at you, mocking your apparent feebleness. 'Heh, I don't judge you. A shorty like you would never be a match for me... But you still get the loser's reward! Hehe...' he says, walking towards you with clear mischief in his eyes.";
			else:
				say "     Seeing this big male triceratops has made you feel weak and unable to fight back, so you decide to sink to your knees and submit. He just laughs at you, mocking your apparent feebleness. 'What's this?! A weakling like you dares to waste my time like this? Get up and fight! Heh... Unless...' he shouts, walking towards you with clear mischief in his eyes.";
		else:
			if scalevalue of player < 3:
				say "     Too weak to keep fighting, you lose your strength and collapse on the floor, hurting all over as the sturdy triceratops laughs at you. 'Hah! What a puny little thing! Did you really expect to beat me looking that small? Time to teach you a lesson, wimp!' he shouts, walking angrily towards you. Due to the beating you took, there is nothing you can do to stop what is coming next...";
			else:
				say "     Too weak to keep fighting, you lose your strength and collapse on the floor, hurting all over as the sturdy triceratops laughs at you. 'Hah! Can't take any more? Is that all you've got?! Come on, fight!' he shouts, walking angrily towards you. Due to the beating you took, there is nothing you can do to stop what is coming next...";
		WaitLineBreak;
		let randomnumber be a random number from 1 to 2; [adjust the latter number for the number of options]
		if randomnumber is:
			-- 1: [sit on face]
				say "[TriceratopsMaleLossFacesit]";
			-- 2: [sit on dick, else sit on face]
				if player is male:
					say "[TriceratopsMaleLossAssFuck]";
				else:
					say "[TriceratopsMaleLossFacesit]";

to say TriceratopsMaleLossFacesit:
	say "     Giving you no chance to escape, you see the large male turning around in front of you, then above you, looking over his shoulder with a smirk as his ample rear overshadows you. He grabs his beefy buttcheeks and spreads them open, to show you his donut hole that immediately starts winking at you. It gives you this feeling that it gets used a lot due to how stretchy it looks. 'See this big and tasty asshole right here? Wimps get to taste it. Open up and get that tongue out!' he commands, and as soon as those words leave his mouth, the ass is coming down on you. The last thing you see is a large darkened shape before everything falls into pitch blackness as your face ends up placed right between the triceratop's buttcheeks.";
	say "     'Get lickin'! I wanna feel that tongue IN!' You hear the sturdy dino's voice as he grinds his rear against your face, demanding you to tonguefuck him in earnest, just when you had barely touched his warm hole with the tip of your tongue. He keeps pressing his big ass against your face until you begin to shove your tongue inside, and only then he seems appeased. 'Yeaaah... that's it... Keep going, runt...' The moans he lets out are a sign that you are doing an adequate job, wiggling it in as you feel the ring of his anus stretching around that slick organ of yours. His pudgy buttocks keep bouncing on your face as he feels his hole getting properly rimmed, bouncing and bumping against your face, wanting to feel more of what you are doing to him.";
	WaitLineBreak;
	say "     You can tell the triceratops is jerking himself off as you tongue him, loving every second of that forced rimjob. 'Oooh fuck... More... Deeper... Wiggle it goood... Just like that!' His voice echoes through the museum's walls and you cannot do more than just obliging his desires, stretching your tongue as much as possible until the sturdy male is satisfied with you. That takes a while to happen, but you start feeling him jerking faster and faster, not bothering you anymore with requests, and soon, his ass begins to clench around your face, his insides throbbing around your tongue, as he releases a really powerful shout. 'Fuuck yeah! That feels so fuckin' good! Oh I'm cummin'!'";
	say "     He grunts through his entire climax as his ass throbs around your tongue each time he spurts, pressing his big ass against your face until the very last second of his orgasm. 'Mmh...! You're a nice asslicker, wimp. I wanna use you again, for sure... Keep coming back and you're gonna get this ass every time I kick yours!' With this, the male triceratops leaves your face alone and walks away, paying no further mind to you. By the time you can see again, your eyes lay on quite a generous amount of cum on the floor, trailing into the distance in front of you...";
	CreatureSexAftermath "Triceratops Male" receives "Other" from "Player";

to say TriceratopsMaleLossAssFuck:
	say "     Giving you no chance to escape, you see the large male turning around in front of you, then above you, looking over his shoulder with a smirk as his ample rear overshadows you. He grabs his beefy buttcheeks and spreads them open, to show you his donut hole that immediately starts winking at you. It gives you this feeling that it gets used a lot due to how stretchy it looks. 'See this big and tasty asshole right here? How about I sit on that wimp's dick? Would you like that, loser?' he asks, chuckling to himself as he stands up again, reaches over you and makes sure your [cock of player] cock is out in display for him. The strong saurian inspects it[if cock length of player < 8], looking disappointed at what he sees. 'A stupid tiny little dick on a beta like you... How fucking expected. I'm barely gonna feel this up my big ass, if at all!' He then starts angrily slapping your dick, but that only makes you harder[else if cock length of player >= 8 and cock length of player < 16], looking quite pleased with what he sees. 'You got a nice one, runt. Shame it's on a fucking beta like you.' He then playfully slaps it around, making you grit your teeth as it only throbs even harder[else if cock length of player >= 16], his eyes widening as he sees what he is dealing with. 'Fuck! Big fucking dick! You're a hung little wimp, fucker! My ass is gonna love it...' He then starts playfully rubbing and slapping it around, getting you so hard that it begins to throb consistently[end if]... 'Someone's getting happy... Hehe...'";
	say "     Once he is satisfied teasing you, the triceratops turns around again and begins to descend his ass on top of you, towards your manhood. With one hand, he grabs it and points it towards his ass, which eventually reaches the tip of your cock. That warm pucker of his soon opens up to receive your meat, his insides wrapping around it as they stretch due to the insertion. The dino moans, pleased to feel his butt getting filled up. He makes sure to bury your entire erection in him,[if cock length of player >= 16] or whatever he can fit in from your large size,[end if] and begins to relax on you. His insides [if cock length of player < 8]feel slightly loose on you, but you can still get a significant amount of pleasure from it, and so does he[else]feel quite tight on you, rubbing against your cock really nicely, and you can see the triceratops is enjoying it, as well[end if].";
	WaitLineBreak;
	say "     'Oh yeah... You like that, wimp? Like having this big ass on your dick?' he teases you, beginning to jump on it as he brings his ass up and down on your meat, jerking you with his ass and riding you. He goes at it slowly, at first, to get a feel of you, but is quick to pick up the pace as his excitement grows. You go deep in him, the large dino bouncing on top of you faster and faster, stroking his own cock due to the pleasure this is giving him. The sensations cause you to jerk your hips under his big butt, though he is quite a heavy guy and you can barely move, but you can tell he appreciates the enthusiasm. The way he keeps messing around with your dick, clenching his hole around it as he keeps on jumping on you, soon drives you close to the edge.";
	say "     'Mmh... getting fucked in the ass feels so good... Oh, gimme more, wimp... Make that ass sore, c'mon...' The dino continues to ride you despite your fear of not lasting much longer, but it is not like he cares much about it, either. That ass keeps going hard on your cock, up to a point that there is no going back. Throbbing powerfully, your member starts shooting all your load into the saurian, hot cum filling up his insides as he moans in bliss. 'Fuck... you just came in my ass... The fucking runt had the audacity to do it without permission...' he says, putting a sarcastic tone to it, but not entirely angry at you. In fact, he glances over his shoulder back at you with a grin. 'Looks like someone's gotta clean up the mess, now...'";
	WaitLineBreak;
	say "     He gets up and, instead of leaving, slams his butt against your face with his buttcheeks spread, his hole leaking your cum and now straight into your mouth. 'Lick it up, loser. Better make sure I don't go around dripping your jizz!' he commands, ordering you to drink every drop that you deposited in him. It takes a while until you get everything, that thick and flavorful semen you made yourself going back into you, as the triceratops makes you tongue his ass clean. 'Fuck yeah, runt. I'm gonna use you again if I see you, so you better watch out or toughen up some... Hehe...' With this, the male gets up and simply proceeds to walk away, paying no further attention to you.";
	CreatureSexAftermath "Triceratops Male" receives "AssFuck" from "Player";

to say Triceratops Male Loses:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		if fightoutcome is 11: [submitted by libido victory]
			say "     Having teased the sturdy male in such powerful ways, he drops the fight and begins to rub himself, especially his butt, as his cock raises to a full erection right in front of you. 'Fuck, why are you so... hot?! Come on closer, we gotta fuck! I'm so fucking horny...'";
		else:
			say "     With proper battling, you manage to defeat the male triceratops, who looks too bruised to be able to carry on fighting. 'Damn... you're stronger than you look. That's fucking hot... Wanna fuck?' he asks, having gotten an erection by the end of your encounter.";
		LineBreak;
		say "     [bold type]What do you want to do with him, if anything?[roman type][line break]";
		say "[TriceratopsMaleVictorySexMenu]";

to say TriceratopsMaleVictorySexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Finger him";
	now sortorder entry is 1;
	now description entry is "Play with his ass";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Finger him"):
					say "[TriceratopsMaleVictoryFingering]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Maybe he is not worth your attention at all, so you just leave him. 'Really?! You're just gonna leave me like this?! You fucking suck!' he starts shouting, and you simply move on, paying no further mind to him.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say TriceratopsMaleVictoryFingering:
	say "     Perhaps, you could at least do something for him, and he does seem to have a needy large ass. Walking towards the triceratops, you make your intentions clear as you eye his rear. 'Oh, you want the ass?' he asks as he turns around immediately, putting it in your direct sight. He seems eager to do this, but all you do is reach up to him and slide your hand over his pudgy buttocks. The saurian male lets out a pleased grunt as he feels his ass being played with by you, as you squeeze those glutes all over. Slowly, you begin to slide your fingers to the space between them, and this really excites the male. 'You're fucking teasing me, now...' he exclaims, arching his back and letting you do what you want.";
	say "     Once you think you are done with just feeling that large ass on your hands, you start using your fingers to feel up his sensitive pucker, a plump donut hole that feels warm and puffy to the touch. Pressing against it, you find that your fingers slide in very easily, the hot flesh wrapping around them as you keep pushing with your hand. You meant only to finger him, but it seems that his ass is so hungry and stretchy that you could effortlessly get your whole fist in, if you wanted. Even knowing this, you keep to just using your fingers to stimulate the saurian, and it is quite enough to get him groaning in pleasure. 'You're gonna drive me mad... That feels so fuckin' good...'";
	WaitLineBreak;
	say "     Standing behind the triceratops like this allows you to see his arm moving at a steady pace, giving away the fact he is jerking off to getting his ass fingered by you. With this in mind, you proceed to really get them up in there and be a little rougher on your approach, which he appreciates. Moving your hand deeper and wiggling it inside the large male's ass, he continues to stroke himself and moaning, grinding his ass against your hand in pure excitement from the pleasure alone. This drags on for a bit, until you feel the entire fleshy walls surround your hand throb around it, the male moaning loudly as he shoots his load forward of him. 'Yeaaah...! Fuck! YES! I love having my ass played with...!'";
	say "     To your surprise, the male steps forward, turns to you and grabs your wrist, bringing the hand that was inside his ass to his mouth. He then shoves your fingers into his mouth and starts licking them clean in a rather enthusiastic manner. 'Mmh... Thanks for that... I keep this ass looking nice and neat for a reason. Anytime you wanna take it for yourself, just hit me hard. Hit me really, really hard... Hehe...' He then leaves you with a smile on his face.";
	CreatureSexAftermath "Triceratops Male" receives "DildoAssFuck" from "Player";

to say Triceratops Male Desc:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		say "     In front of you stands a tall anthropomorphic dinosaur man, with the head of a triceratops, to be precise. His pudgy and sturdy figure is covered in hard light orange scales, some of them even providing natural armor, which must explain why this strong male wears only some dog tags around his neck and nothing more, leaving his mostly human-looking junk hanging freely down below. He could have been a soldier or simply someone who scavenged some unfortunate human's equipment, but you cannot know for sure. Judging by his stance, the saurian male is probably looking for a fight, and he is happy to see you for that very reason. 'Finally! I can hit something, now. Do your worst, come at me!'";
		say "     He then bumps his chest before starting to walk towards you, awaiting your first move.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Triceratops";
	add "Triceratops Male" to infections of ReptileList;
	add "Triceratops Male" to infections of FurryList;
	add "Triceratops Male" to infections of HistoricalList;
	add "Triceratops Male" to infections of NatureList;
	add "Triceratops Male" to infections of MaleList;
	add "Triceratops Male" to infections of BipedalList;
	add "Triceratops Male" to infections of TailList;
	now Name entry is "Triceratops Male";
	now enemy title entry is "";
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The powerful male, after a flourish of heavy steps, strikes you with a heavily armored punch![or]The triceratops charges suddenly at you. Unable to dodge in time, you try to grab his horns, but he male is too strong and you end up getting tackled, instead.[or]The dinosaur man manages to grab your head and headbutts yours with his bony skull.[or]The strong male dinosaur smacks you with a powerful armored jab.[or]He slips behind you, grabs you with his arm around your neck and tries to incapacitate you! Fortunately, you manage to escape his grasp, for now.[at random]";
	now defeated entry is "[Triceratops Male Loses]";
	now victory entry is "[Triceratops Male Wins]";
	now desc entry is "[Triceratops Male Desc]";
	now face entry is "changed to have a jutting muzzle adorned with a large horn. Two other horns grow from your brow, facing forward. You have a broad, bony frill protruding from the back of your saurian head";
	now body entry is "strong, sturdy and also a little pudgy. Your hands and feet are clawed, saurian ones, but still nimble and graceful";
	now skin entry is "a mix of brown and orange scales adorning your";
	now tail entry is "You have a thick, scaled tail which sways behind you like a metronome. Your ass is firmly toned and muscular.";
	now cock entry is "[one of]thick[or]uncut[or]mostly human-looking[at random]";
	now face change entry is "it stretches forward into a large, pointed muzzle. A hard, bony horn grows atop your nose. A bony frill and another pair of horns grow onto your head";
	now body change entry is "becomes strong, yet flexible. Your hands and feet change, becoming clawed and saurian in shape, but still nimble and graceful";
	now skin change entry is "toughened scales spread across your body, richly light orange with soft brown accents in key spots";
	now ass change entry is "a strong, saurian tail forms behind you, swaying around heavily";
	now cock change entry is "your shaft swells and thickens with sudden arousal, attaining a lighter cream tone along its foreskin";
	now str entry is 25;
	now dex entry is 18;
	now sta entry is 21;
	now per entry is 13;
	now int entry is 10;
	now cha entry is 17;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 110;
	now lev entry is 8;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 19;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Museum";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 12;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3;  [ Size of balls ]
	now Nipple Count entry is 2;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is false;
	now libido entry is 40;  [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "triceratops male tooth";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 50;  [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "triceratops man-milk";
	now CumItem entry is "triceratops cum";
	now TrophyFunction entry is "[GenerateTrophyList_Triceratops_Male]";
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]scaled[or]strong[or]beefy[at random]";  [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "reptilian";
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [sexually transmitted infection for when the player loses; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump";  [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Husky Alpha"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 8; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 2; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your ears are drawn upwards to the top of your head and a tooth-filled muzzle pushes forward to give you the head of a proud husky"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a husky with [Head Color of Player] fur"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "furred"; [one word descriptive adjective]
	now Head Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "white"; [one word color descriptor]
	now Hair Style entry is "buzzcut"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "blue"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 10; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 10;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "slobbery"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 7; [length in inches]
	now Torso Change entry is "grey and white fur sprouts all over it, giving you a warm and shining coat"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "covered in a warm coat of [Torso Color of Player] fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "pink"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into blunt claws and grey-white fur spreads over your paw-hands, then all the way up your arms"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] fur, ending in paw-hands with blunt claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of an anthro husky with thick grey and white fur and paws"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro husky, with thick [Legs Color of Player] fur covering them from your hips down to the clawed paws"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes well-rounded, with grey and white fur sprouting over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered thick grey and white fur"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "furry";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a mid-length canine tail sprouts from your tailbone, soon covered in grey and white fur"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "mid-length, [Tail Color of Player] tail"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 8; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "pink"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 4; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 9; [length in inches]
	now Cock Change entry is "it takes on a reddish color and canine shape, complete with a pointy tip, knot at the base and a sheath to protect it"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and has a pointy tip and a knot at the base, as well as a sheath to protect it when not erect"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cock Color entry is "red"; [one word color descriptor]
	now Ball Count entry is 2;
	now Ball Size entry is 3; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a furry, low-hanging sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a canine appearance, complete with a clit at the top"; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player]-colored and shaped like that of a canine bitch, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "pink"; [one word color descriptor]
	now Clit Size entry is 2; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Table of Game Objects (continued)
name	desc	weight	object
"triceratops male tooth"	"A single sharp tooth from an anthro male Triceratops. Just rubbing the tip slightly leaves a lingering sensation of pain."	0	triceratops male tooth

triceratops male tooth is a grab object.
It is temporary.
triceratops male tooth is infectious.
Strain of triceratops male tooth is "Triceratops Male".
Usedesc of triceratops male tooth is "[TriMToothUse]";

to say TriMToothUse:
	say "Holding the tooth between your fingers, you gently press your fingertip against its sharp tip. It pierces through your skin like a needle, and strangely, it disintegrates after a while, your skin having absorbed some of its properties.";

instead of sniffing triceratops male tooth:
	say "It smells like the inside of a beast's mouth. Not very pleasant.";

Table of Game Objects (continued)
name	desc	weight	object
"triceratops cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Triceratops Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	triceratops cum

triceratops cum is a grab object.
triceratops cum is cum.
triceratops cum is infectious.
Strain of triceratops cum is "Triceratops Male".
Usedesc of triceratops cum is "[triceratops cum use]";

to say triceratops cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy fluid cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing triceratops cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Table of Game Objects (continued)
name	desc	weight	object
"triceratops man-milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Triceratops Man-Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	triceratops man-milk

triceratops man-milk is a grab object.
triceratops man-milk is milky.
Purified of triceratops man-milk is "distilled milk".
triceratops man-milk is infectious.
Strain of triceratops man-milk is "Triceratops Male".
Usedesc of triceratops man-milk is "[triceratops man-milk use]";

to say triceratops man-milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the reptilian man-milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

instead of sniffing triceratops man-milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

Triceratops Male ends here.
