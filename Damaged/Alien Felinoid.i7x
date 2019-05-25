Version 8 of Alien Felinoid by Damaged begins here.
[Version 8.1 - Updated to extended heat table - Stripes]

"Adds a Alien Felinoid to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Creature Responses

catnum is a number that varies.
mateable is a number that varies.

to say felinoid wins:
	if HP of Player > 0:
		let mchance be 4;
		if Player is submissive, increase mchance by 2;
		if anallevel is 3, increase mchance by 2;
		if Player is mpreg_ok, increase mchance by 2;
		if anallevel is 1, now mchance is 0;
		if ( player is female and Cunt Depth of Player > 7 ) or ( a random chance of mchance in 12 succeeds and Cunt Count of Player is 0 ):
			say "     The great cat, as if accepting your submission, pads up to you and nuzzles against you firmly, its short fur tickling your cheek. Suddenly the feline butts you over onto all fours, purring in anticipation. With his strong and masculine scent filling your senses, you don't resist, wanting to keep the big cat pleased. You gasp as he paces behind you and, reaching a foreleg over your shoulder, leans his weight into you. The feline forces your [bodydesc of Player] chest to lower down into the dirt and licks slowly along your neck, sending shivers down your spine.";
			say "     He rumbles softly into your ear and you end up raising your rear as he moves to mount you fully, sinking his feline shaft into your [if Player is female]wet pussy[else]tight ass[end if], spreading you open with his feline member. Keeping a paw at your back as a reminder of who's in charge, he starts thrusting, sliding those spines covering his cock along your inner walls. They send waves of pleasure through you as he pounds into you, thrusting harder and faster.";
			if catnum < 3:
				say "     Grinding your ass back against him, you moan softly, wanting the big cat to drive his full length into you again and again. With your chest pressed to the ground, you do your best to work your inner walls around his throbbing member, struggling to maintain control with those delightful barbs rubbing inside you. You mewl softly beneath him, hoping more and more to have this large feline pump his hot, virile load into you. The mere thought is exciting, making you want to be his mate, seeded and claimed as his.";
			else:
				say "     Grinding your ass back against him, you moan softly, needing the big cat to drive his full length into you again and again. With your chest pressed to the ground, you do your best to work your inner walls around his throbbing member, struggling to maintain control with those delightful barbs rubbing inside you. You pant and mrowl beneath him like a cat in heat, eager to have this large feline take you and claim you fully. The mere thought is exciting, your mind and body longing to be mated to this powerful male so that you may be used like this again and again. You would be his sex toy, his breeding hole, his to fuck as much as he wants wherever he wanted.";
				say "     Those thoughts [if Player is not neuter]push you over the edge, causing you to cry out again as you climax[else]fill your mind as the big kitty continues to plow into you, dominantly fucking you[end if][if Player is female], squeezing your cunt down around his pulsing rod[else if Player is male], spraying your unneeded seed across the ground as your anus clamps down around his pulsing cock[end if]. The beast continues to pound into you[if Player is not neuter] while you cum[end if] before finally sinking his shaft fully inside you and unleashing his hot load with a triumphant growl. As his hot seed floods your [if Player is female]womb[else]bowels[end if], you feel wonderful to have been claimed by such a powerful beast.[impregchance][impregchance]";
				WaitLineBreak;
				say "     Spent, the feline pulls his cock from your [if Player is female]creamy pussy[else]abused anus[end if] and releases you. He nuzzles at your neck and purrs softly, nudging you to get up and leave now that he's done with you. At least for the time being. Still feeling the effects of his musk and your recent pounding, you are reluctant to leave, but you obediently gather your things and head on your way, hoping you might let him, or another of these great cats, take you again soon.";
			increase catnum by 1;
		else if Player is female:
			say "     The great cat, as if accepting your submission, pads up to you and nuzzles against you firmly, its short fur tickling your cheek. Suddenly it butts you over onto all fours, purring in anticipation. With his strong, masculine scent filling your senses, you don't resist, wanting to keep the big cat pleased. You gasp as he paces behind you and nuzzles your rear. His raspy tongue finds its way to your pussy and licks slowly over it, lapping at your juices. The feel of his roughly textured appendage across your sensitive folds and throbbing clit makes you weak in the knees. The stimulation leading to the weakening of your will as you spread your legs further apart, giving the feline more room to thoroughly pleasure you. He continues to lap at you for some time, delving his tongue deeper inside you, plunging into your depths and causing you to mewl lustfully as you cry out in blissful release. Licking his whiskers clean, he nuzzles you to your feet and pushes you off in the direction you came from, as if that say that its done with you. At least for now.";
			increase catnum by 1;
		else:
			say "     The great cat, as if accepting your submission, pads up to you and nuzzles you firmly with its furry head. Suddenly it butts you over onto all fours, purring in anticipation. With his strong, masculine scent filling your senses, you don't resist, wanting to keep the big cat pleased. You gasp as he paces behind you and nuzzles your rear. As if having concluded on a silent decision he lets out a low growl and moves to cuff you firmly with one paw, bowling you over onto your back. Before you can get up to defend yourself, the big feline has pounced atop you and is pressing his groin into your face, burying you in his fuzzy crotch.";
			say "     With his heady scent filling your senses, you quickly lose any resistance you had as he grinds his swelling sheath and large ballsack against your face, smearing his musky smell on you. When his cock starts to emerge, you welcome it into your mouth, licking and sucking at it lightly. The feline growls firmly, as if reminding you who's in charge and starts to thrust into your mouth. You work your tongue over the pulsing shaft, teasing its barbs and pointed tip with your tongue. You keep this up for several minutes as his heavy balls slap against your chin until finally the large feline releases his hot load into your mouth. The taste is so powerful and virile that you can't help but swallow it down.";
			WaitLineBreak;
			say "     Done with you, the cat gets up and gives your rear a swat. With a bit of a growl, it urges you on your way. You grab your stuff and leave, still licking your lips for the last lingering traces of the male's seed.";
			increase catnum by 1;
	else if "Male Preferred" is listed in feats of Player:
		if Player is female:
			say "     At first he simply nuzzles against you, but pretty soon he begins pushing you around, trying to get you to move. You feel odd, his friendliness making something within you warm up and without thinking, you feel yourself move onto your hands and knees, breasts pushing down into the ground. He rips at your clothing, tearing it to shreds. His weight pins you down and you moan out loud, your body ready for what the feline was about to give you. Hips meet yours, but his aim was off and his cock messily smears pre across your inner thigh. On this third try he finds his mark and you cry out, feeling yourself filled and stretched around him. He didn't take it slow, he breeds you as though you were his very own mate. Your needy moans can only agree with him. You are his mate.";
			say "     Deeper and faster, the barbs on his cock cause the growing friction to alternate between agony and bliss as they scrape and then soothe sensitive parts deep within you. You are panting heavily, unsure if you could take much more. After a few more blissful seconds, he thrust deep once more and roars above you, finally deigning it the right time to clamp his jaws down on your neck, extending your own orgasm as his seed floods into you. The cat pulls away from you and turns behind to clean your cleft, at his first blissful lick he pulls back and you hear a growl coming from him, without hesitation, and fearing for your life, you grab your things and run as fast as you can.";
			increase catnum by 1;
		if Player is submissive or anallevel is 3 or player is mpreg_ok:
			say "     At first he simply nuzzles against you, but pretty soon he begins pushing you around, trying to get you to move. You feel odd, his friendliness making something within you warm up and without thinking, you feel yourself move onto your hands and knees, chest pushing down into the ground. He rips at your clothing, tearing it to shreds. His weight pins you down and you moan out loud, your body ready for what the feline was about to give you. Hips meet yours, grinding against your rear.";
			say "     As he drives into you, you cry out, feeling yourself filled and stretched around him. He doesn't take it slow, he fucks you as though you were his very own mate. Your needy moans can only agree with him.";
			say "     Deeper and faster, the barbs on his cock cause the growing friction to alternate between agony and bliss as they scrape and then soothe sensitive parts deep within you. You are panting heavily, unsure if you could take much more. After a few more blissful seconds, he thrust deep once more and roars above you, finally deigning it the right time to clamp his jaws down on your neck, extending your own orgasm as his seed floods into you.";
			say "     The cat releases your neck and pulls away from you. He pushes you away dismissively with a paw, his need for you over. You grab your things and run as fast as you can.";
			increase catnum by 1;
		else:
			say "     The big cat rubs himself against you, purring deeply, without thinking your hand reaches to scritch his ears. As he takes in your scent, he growls and cuffs you with a paw, sending you tumbling back. You scramble to get away from the suddenly aggressive feline.";
	else:
		if "Sterile" is listed in feats of Player:
			if Player is female:
				say "     At first he simply nuzzles against you, but pretty soon he begins pushing you around, trying to get you to move. You feel odd, his friendliness making something within you warm up and without thinking, you feel yourself move onto your hands and knees, breasts pushing down into the ground. He rips at your clothing, tearing it to shreds. His weight pins you down and you moan out loud, your body ready for what the feline was about to give you. Hips meet yours, but his aim was off and his cock messily smears pre across your thigh. On this third try he finds his mark and you cry out, feeling yourself filled and stretched around him. He didn't take it slow, he breeds you as though you were his very own mate. Your needy moans can only agree with him. You are his mate.";
				say "     Deeper and faster, the barbs on his cock cause the growing friction to alternate between agony and bliss as they scrape and then soothe sensitive parts deep within you. You are panting heavily, unsure if you could take much more. After a few more blissful seconds, he thrust deep once more and roars above you, finally deigning it the right time to clamp his jaws down on your neck, extending your own orgasm as his seed floods into you. The cat pulls away from you and turns behind to clean your cleft, at his first blissful lick he pulls back and you hear a growl coming from him, without hesitation, and fearing for your life, you grab your things and run as fast as you can.";
				increase catnum by 1;
			else:
				say "     The big cat rubs himself against you, purring deeply, without thinking your hand reaches to scritch his ears. As he takes in your scent, he growls and cuffs you with a paw, sending you tumbling back. You scramble to get away from the suddenly aggressive feline.";
		else:
			if Player is female:
				if Cunt Depth of Player > 7:
					if catnum < 3:
						say "     At first he simply nuzzles against you, but pretty soon he begins pushing you around, trying to get you to move. You feel odd, his friendliness making something within you warm up, and without thinking, you lower yourself onto your hands and knees, breasts pushing down into the ground. He rips at your clothing, tearing it to shreds. His weight pins you down and you moan out loud, your body ready for what the feline was about to give you. Hips meet yours, but his aim was off and his cock messily smears pre across your thigh. On this third try he finds his mark and you cry out, feeling yourself filled and stretched around him. He didn't take it slow, he breeds you as though you were his very own mate. Your needy moans can only agree with him. You are his mate.";
						say "     Deeper and faster, the barbs on his cock cause the growing friction to alternate between agony and bliss as they scrape and then soothe sensitive parts deep within you. You are panting heavily, unsure if you could take much more. After a few more blissful seconds, he thrust deep once more and roars above you, finally deigning it the right time to clamp his jaws down on your neck, extending your own orgasm as his seed floods into you. Curling up as he paces off, you can't help but think how wonderful it was to just be His.";
						increase catnum by 1;
					else:
						say "     You gasp as he paces beside you and, reaching a fore-leg over your shoulder, leans his weight into you, forcing your [bodydesc of Player] chest to lower down into the dirt. He grips at your neck tightly, a reminder of who's in control. Obediently your body gives in to his implied threat and you feel your rear raise up under him, pressing the small of your back hard against his underbelly. Gripping a little tighter at your neck, he pulls himself forward, finding his mark in a single thrust as he sinks deep inside. You whine loudly, the feeling of his spines dragging along your walls, his girth now swelling further to stretch your depths.";
						say "     The feline arches your back further, trying to maximize how much he had worked into you, you feel your breasts push down and into the ground, nipples still rock hard. He begins working his hips slowly at first, then with increasing speed, those spines now buried far within your love cavern. Each thrust is both torturous and pleasurable, alternating from moment to moment as he works himself deeper and faster into you. And then, without warning, you open your mouth and let out a feral scream that echoes across the park, your release making you blank out for a long blissful minute. Panting hard, his cock still buried deep inside your breeding cavern you knew then, that in this moment at least, you are completely and utterly his, his sex toy, his breeding hole, his to fuck as much as he wants, wherever he wants. The thought of that, as much as the constant stimulation drags you to another satisfying climax. This time, he had released your neck at some point releasing you from his grip, partially at least, With this new freedom of movement, and along with the afterglow of pleasure still saturating you, you act in one definitive way, by rocking your hips to meet his driving thrusts.";
						WaitLineBreak;
						say "     He was purring, you feel it through your shoulder muscles, he was purring because you are such a good mate for him. That thought flows through you, a feeling of ascent accompanying it. This time you can feel yourself building, no longer enslaved to the explosive release you had earlier. You feel him grip back down on your scruff and rumble a growl low into your body, shaking your very bones. His member begins to flare, pushing the spines out further, almost painfully so into your soft, delicate insides, and with one final heave of his muscles he send his shaft, his spines and his seed burning into you. He releases your neck again, crying his dominance out loud and you feel your own voice rise through the breaking surf of pleasure to join his in one drawn out, simultaneous release. So much, he had put so much of himself into you. You lay there, now fully on your belly, his member still buried deep, both of you too tired to want to move. After what seemed like an eternity, he pulls loose and affectionately licks you a few times before pacing off.[impregchance][impregchance]";
				else:
					if Nipple Count of Player is 0:
						say "     The big cat rubs himself against you, purring deeply, without thinking your hand reaches to scritch his ears, 'You're not so bad, friendly even...' you murmur just before the first tingling feeling builds at your groin and chest. Quickly, two large breasts swell into existence, pressing against the remnants of your clothing, making you gasp at the feeling of the cloth against the sensitive flesh.";
						now Nipple Count of Player is 2;
						now Breast Size of Player is 6;
						increase catnum by 1;
					else:
						say "     The big cat rubs himself against you, purring deeply, without thinking your hand reaches to scritch his ears, 'You're not so bad, friendly even...' you murmur just before the first tingling feeling builds at your groin making you whine and whimper softly into his fur, breathing in more of the big animal's suddenly fiery smelling musk.";
						increase catnum by 1;
			else:		[***]
				if Nipple Count of Player is 0:
					say "     The big cat rubs himself against you, purring deeply, without thinking your hand reaches to scritch his ears, 'You're not so bad, friendly even...' you murmur just before the first tingling feeling builds at your groin and chest. Quickly, two large breasts swell into existence, pressing against the remnants of your clothing, making you gasp at the feeling of the cloth against the sensitive flesh even as you feel further changes at your groin.";
					now Nipple Count of Player is 2;
					now Breast Size of Player is 6;
					increase catnum by 1;
					now Cock Count of Player is 0;
					now Cock Length of Player is 0;
					now Ball Size of Player is 0;
				else:
					say "     The big cat rubs himself against you, purring deeply, without thinking your hand reaches to scritch his ears, 'You're not so bad, friendly even...' you murmur just before the first tingling feeling builds at your groin making you whine and whimper softly into his fur, breathing in more of the big animal's suddenly fiery smelling musk.";
					increase catnum by 1;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Felinoid";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]He rakes at you wildly, leaving you in intense pain.[or]It leaps at you, digging its teeth into your arm.[or]It leaps at you, digging its teeth into your leg.[at random]";
	now defeated entry is "With a last roar the big cat claws out wildly, trying to hit you one last time before collapsing to the ground.";
	now victory entry is "[felinoid wins]";
	now desc entry is "[mongendernum 3]What looks like a full-sized maned lion paces up before you, nose raised in the air, sniffing at the wind. You hear the big cat purr and look your way, with a sinking feeling you realize that not only was it your scent he was following, but that he is very pleased to see you at last."; [ Description of the creature when you encounter it.]
	now face entry is "that of a short muzzled, female lion"; [ Face description, format as "Your face is (your text)."]
	now body entry is "sleek, muscled, built for surviving, just like the large feline that gave it to you"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "[if looknow is 1]a thick pelt of coarse yellow-gold fur covering your thick, pliable[else]yellow-gold fur covered[end if]"; [ skin Description, format as "You have (your text) skin."]
	now tail entry is "A lion's tail twitches behind you. You just know that if you find the one who gave it to you, it would be cocked to the side in seconds."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "leonine"; [ Cock Description, format as you have a 'size' (your text) cock.]
	now face change entry is "it draws forward into a short, feline muzzle, even as your ears perk upwards to perch, rounded, atop your leonine head. Scents burn in your new nose and you find yourself turning in place, trying to catch His scent"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "power builds in every muscle, making you feel more alive than ever before. Somehow you just know that you would be just as comfortable on all fours now as on two legs"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "a light gold fur spreads down it, covering it in a thick pelt"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "the muscles under the skin change, modifying for leaping and catching prey"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "you no longer think of yourself as male"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 18;
	now dex entry is 18;
	now sta entry is 14;
	now per entry is 18;
	now int entry is 6;
	now cha entry is 15;
	now sex entry is "Female"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 38; [ How many HP has the monster got? ]
	now lev entry is 6; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 14; [Amount of Damage monster Does when attacking.]
	now area entry is "Park"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 6; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 9; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 4; [ Width of female sex infection will try and give you ]
	now libido entry is 35; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]powerful[or]bestial[at random]";
	now type entry is "feline"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "";
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
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
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
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


Section 3 - Monster Heat

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

to say felinoidheat:
	if heatform is 0:
		say "     Whining as you find yourself fingering your pussy in abandon before managing to snap out of your needy haze for a brief moment. Looking down at your hand, covered in your fluids, you raise it tentatively. Suddenly the scent of your body hits you and you begin lapping at your fingers, tasting your musk, needing more.";
	else:
		say "     Whining as you find yourself fingering your sopping pussy in abandon, before managing to snap out of your needy haze for a brief moment. Looking down at your hand, covered in your fluids, you raise it tentatively. Suddenly the scent of your body hits you, so like a wild cat in heat, can't help but push those fingers back in for a few more minutes before you're able to move on.";
	infect "Felinoid";
	increase Libido of Player by 15;

to say felinoidheat end:
	say "     The pressing need to find a mate fades slowly, leaving you whimpering in relief.";
	decrease Libido of Player by 40;
	if Libido of Player < 0, now Libido of Player is 0;

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "Felinoid"; [ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 5; [ This is the number of days a heat 'cycle' lasts, usually 7 ]
	now heat duration entry is 2; [ This is how many days of the cycle you are actually in heat. default is 1, set it to the same as cycle for permanently in heat.]
	now trigger text entry is "His hips connect again and again, pounding into your depths, you feel him bite down on your neck and you are roaring in bliss moments later. Gasping, you shake your head, trying to clear the mental images and scenes that kept replaying over and over. You lift your hand up to your nose and pull it away again quickly, your mind connecting that smell with one thing, 'I'm in heat...' you murmur under your breath and try to hold the images at bay."; [ This is the text that is written to the screen when the player comes into heat]
	now description text entry is "Swollen and slowly dripping fluids, your entrance aches for a lion to fill it, you find yourself, nose in the air, slowly following a scent before you regain some control and stop."; [ This text is used to describe the monster female anatomy in heat. delete entire line if you don't wish to enter one.]
	now heat end entry is "[felinoidheat end]";
	now inheat entry is "[felinoidheat]"; [this final say block is triggered every 3 hours the player is in heat. you can use defaultheat or write your own. defaultheat raises libido value by 5 every 3 hours. ]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "His hips connect again and again, pounding into your depths, you feel him bite down on your neck and find yourself roaring in bliss moments later. Gasping, you shake your head, trying to clear the mental images and scenes that kept replaying over and over. Noticing you were stuffing your ass with a few fingers, you pull them free only to feel a needy quiver from your vacated hole. It longs to be filled again, desiring a powerful felinoid inside it. 'I'm in heat...' you murmur under your breath as your mind tries to cope with the strange state of your [if Player is male]male[else]neuter[end if] body while trying to keep those images at bay.";

Alien Felinoid ends here.
