Version 8 of Alien Felinoid For FS by Damaged begins here.
[Version 8.1 - Updated to extended heat table - Stripes]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Alien Felinoid to Flexible Survival's Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ This is a meaningless change. ]

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]

catnum is a number that varies.
mateable is a number that varies.

to say felinoid attack:
	if HP of player > 0:
		let mchance be 4;
		if "Submissive" is listed in feats of player, increase mchance by 2;
		if "More Anal" is listed in feats of player, increase mchance by 2;
		if "MPreg" is listed in feats of player, increase mchance by 2;
		if "Less Anal" is listed in feats of player, now mchance is 0;
		if ( cunts of player > 0 and cunt length of player > 7 ) or ( a random chance of mchance in 12 succeeds and cunts of player is 0 ):
			say "     The great cat, as if accepting your submission, pads up to you and nuzzles you firmly with its large head.  It butts you over onto all fours, purring and nuzzling softly.  With his strong, masculine scent filling your senses, you don't resist, wanting to keep the big cat pleased.  You gasp as he paces behind you and, reaching a foreleg over your shoulder, leans his weight into you.  He forces your [bodydesc of player] chest to lower down into the dirt and licks slowly along your neck, sending shivers along your spine.";
			say "     He rumbles softly in your ear and you end up raising your rear as he moves to mount you fully, sinking his feline shaft into your [if cunts of player > 0]wet pussy[else]tight ass[end if], spreading you open with his feline member.  Keeping a paw at your back as a reminder of who is in charge, he starts thrusting, sliding those spines covering his cock along your inner walls.  They send shivers of pleasure through you as he pounds into you, thrusting harder and faster.";
			if catnum < 3:
				say "     Grinding your ass back against him, you moan softly, wanting the big cat to drive his full length into you again and again.  With your chest pressed to the ground, you do your best to work your inner walls around his throbbing member, struggling to maintain some control with those delightful spines rubbing inside you.  You mewl softly beneath him, hoping more and more to have this large feline pump his hot, virile load into you as if you were his mate.  That thought excites you, making you want to be his mate, seeded and claimed as his.";
			else:
				say "     Grinding your ass back against him, you moan softly, needing the big cat to drive his full length into you again and again.  With your chest pressed to the ground, you do your best to work your inner walls around his throbbing member, struggling to maintain some control with those delightful spines rubbing inside you.  You pant and mrowl beneath him like a cat in heat, eager to have this large feline take you and claim you as if you were its mate.  That thought excites you further, your mind and body longing to be mate to this powerful male so that you may be used like this again and again.  You would be his sex toy, his breeding hole, his to fuck as much as he wants and you would go to him willingly for more.";
			say "     Those thoughts [if cunts of player > 0 or cocks of player > 0]push you over the edge, causing you to cry out again as you climax[else]fill your mind as the big kitty continues to plow into you, dominantly fucking you[end if][if cunts of player > 0], squeezing your cunt down around his pulsing rod[else if cocks of player > 0], spraying your unneeded seed across the ground as your anus clamps down around his pulsing rod[end if].  The beast continues to pound into you[if cunts of player > 0 or cocks of player > 0] while you cum[end if] before finally sinking his shaft fully inside you and unleashing his hot load with a triumphant growl.  As his hot seed floods your [if cunts of player > 0]womb[else]bowels[end if], you feel wonderful to have been claimed by such a powerful male stud.[impregchance][impregchance]";
			say "     Spent, the feline pulls his cock from your [if cunts of player > 0]creamy pussy[else]abused anus[end if] and releases you.  He nuzzles at your neck and purrs softly, nudging you to get up and leave now that he's done with you for now.  Still feeling the effects of his musk and the fucking, you are reluctant to leave, but you obediently gather your things and head on your way, hoping you might let him, or another of these great cats, take you again soon.";
			increase catnum by 1;
		else if cunts of player > 0:
			say "     The great cat, as if accepting your submission, pads up to you and nuzzles you firmly with its large head.  It butts you over onto all fours, purring and nuzzling softly.  With his strong, masculine scent filling your senses, you don't resist, wanting to keep the big cat pleased.  You gasp as he paces behind you and nuzzles your rear.  His raspy tongue finds its way to your pussy and licks slowly over it, lapping at your juices.  The feel of his rough, textured tongue across your sensitive folds and throbbing clit make you weak in the knees and spread your legs further.  He continues to lap at you for some time, delving his tongue deeper inside you, plumbing your depths as causing you to mewl lustfully as you cum.  Licking his whiskers clean, he nuzzles you to your feet and pushes you to head on your way, as if done with you for now.";
			increase catnum by 1;
		else:
			say "     The great cat, as if accepting your submission, pads up to you and nuzzles you firmly with its large head.  It butts you over onto all fours, purring and nuzzling softly.  With his strong, masculine scent filling your senses, you don't resist, wanting to keep the big cat pleased.  You gasp as he paces behind you and nuzzles your rear.  He gives a bit of a growl at this and moves cuffs you firmly with one paw, knocking you over onto your back.  Before you can get up to defend yourself, the big feline has pounced atop you and is pressing his groin into your face, burying you in his fuzzy crotch.";
			say "     With his heady scent filling your senses, you don't resist as he grinds his swelling sheath and large ballsack against your face.  When his cock starts to emerge, you welcome it into your mouth, licking and sucking at it lightly.  The feline growls firmly, as if reminding you who is in charge and starts to thrust into your mouth.  You work your tongue over the pulsing shaft, teasing its barbs and pointed tip with your tongue.  You keep this up for several minutes as his heavy balls slap against your chin until finally the large feline releases his hot, musky seed into your mouth.  It tastes so powerful and virile that you can't help but swallow it down.";
			say "     Done with you, the cat gets up and gives your rear a swat.  With a bit of a growl, it urges you on your way.  You grab your stuff and leave, still licking your lips for the last lingering traces of the male's seed.";
			increase catnum by 1;
	else if "Male Preferred" is listed in feats of player:
		if cunts of player > 0:
			say "At first he just starts nuzzling you, but pretty soon he begins pushing you around, trying to get you to move.[line break]You feel odd to begin with, his friendliness making something within you warm up and without thinking, without your conscious mind having a say in it at all, you feel yourself on your knees, breasts pushing down into the ground.[line break]He rips at your clothing, tearing it.[line break]His weight pins you down and you moan out loud, needing what he would give you.[line break]Hips meet yours, but his aim was off. His third try was successful though and you cry out, feeling yourself filled and stretched around him.[line break]He didn't take it slow, he breeds you as though you were his very own mate.[line break]You moan out loud.[line break]You are his mate.[line break]Deeper and faster, his spines cause the friction building to turn alternately from agony to bliss as they scrape and then soothe sensitive parts deep within you.[line break]You are panting heavily, unsure if you could take much more.[line break]Existence fades then, he thrust deep once more and roars above you, finally deigning to clamp his jaws down on your neck, extending your own orgasm as his seed floods into you.[line break]The cat pulls away from you and turns behind to clean your cleft, at his first blissful lick he pulls back and you hear a growl coming from him, without hesitating, fearing for your life, you grab your things and run as fast as you can.";
			increase catnum by 1;
		if "Submissive" is listed in feats of player or "More Anal" is listed in feats of player or "MPreg" is listed in feats of player:
			say "At first he just starts nuzzling you, but pretty soon he begins pushing you around, trying to get you to move.  You feel odd to begin with, his friendliness making something within you warm up and without thinking, without your conscious mind having a say in it at all, you feel yourself on your knees, chest pushing down into the ground.  He rips at your clothing, tearing it.  His weight pins you down and you moan out loud, needing what he would give you.  Hips meet yours, grinding against your rear.";
			say "As he drives into you, you cry out, feeling yourself filled and stretched around him.  He doesn't take it slow, he fucks you as though you were his very own mate.  You moan out loud, growing to feel as if you are his mate.";
			say "Deeper and faster, his spines cause the friction building to turn alternately from agony to bliss as they scrape and then soothe sensitive parts deep within you.  You are panting heavily, unsure if you could take much more.  Existence fades then, he thrust deep once more and roars above you, finally deigning to clamp his jaws down on your neck, extending your own orgasm as his seed floods into you.";
			say "The cat releases your neck and pulls away from you.  He pushes you down with a paw, his need for you over.  You grab your things and run as fast as you can.";
			increase catnum by 1;
		else:
			say "The big cat rubs himself against you, purring deeply, without thinking your hand reaches to scritch his ears.  As he takes in your scent, he growls and cuffs you with a paw, sending you tumbling back.  You scramble to get away from the suddenly aggressive feline.";
	else:
		if "Sterile" is listed in feats of player:
			if cunts of player > 0:
				say "At first he just starts nuzzling you, but pretty soon he begins pushing you around, trying to get you to move.[line break]You feel odd to begin with, his friendliness making something within you warm up and without thinking, without your conscious mind having a say in it at all, you feel yourself on your knees, breasts pushing down into the ground.[line break]He rips at your clothing, tearing it.[line break]His weight pins you down and you moan out loud, needing what he would give you.[line break]Hips meet yours, but his aim was off. His third try was successful though and you cry out, feeling yourself filled and stretched around him.[line break]He didn't take it slow, he breeds you as though you were his very own mate.[line break]You moan out loud.[line break]You are his mate.[line break]Deeper and faster, his spines cause the friction building to turn alternately from agony to bliss as they scrape and then soothe sensitive parts deep within you.[line break]You are panting heavily, unsure if you could take much more.[line break]Existence fades then, he thrust deep once more and roars above you, finally deigning to clamp his jaws down on your neck, extending your own orgasm as his seed floods into you.[line break]The cat pulls away from you and turns behind to clean your cleft, at his first blissful lick he pulls back and you hear a growl coming from him, without hesitating, fearing for your life, you grab your things and run as fast as you can.";
				increase catnum by 1;
			else:
				say "The big cat rubs himself against you, purring deeply, without thinking your hand reaches to scritch his ears.  As he takes in your scent, he growls and cuffs you with a paw, sending you tumbling back.  You scramble to get away from the suddenly aggressive feline.";
		else:
			if cunts of player > 0:
				if cunt length of player > 7:
					if catnum < 3:
						say "At first he just starts nuzzling you, but pretty soon he begins pushing you around, trying to get you to move.[line break]You feel odd to begin with, his friendliness making something within you warm up and without thinking, without your conscious mind having a say in it at all, you feel yourself on your knees, breasts pushing down into the ground.[line break]He rips at your clothing, tearing it.[line break]His weight pins you down and you moan out loud, needing what he would give you.[line break]Hips meet yours, but his aim was off. His third try was successful though and you cry out, feeling yourself filled and stretched around him.[line break]He didn't take it slow, he breeds you as though you were his very own mate.[line break]You moan out loud.[line break]You are his mate.[line break]Deeper and faster, his spines cause the friction building to turn alternately from agony to bliss as they scrape and then soothe sensitive parts deep within you.[line break]You are panting heavily, unsure if you could take much more.[line break]Existence fades then, he thrust deep once more and roars above you, finally deigning to clamp his jaws down on your neck, extending your own orgasm as his seed floods into you.[line break]Curling up as he paces off, you can't help but think how wonderful it was to just be His.";
						increase catnum by 1;
					else:
						say "You gasp as he paces beside you and, reaching a fore-leg over your shoulder, leans his weight into you, forcing your [bodydesc of player] chest to lower down into the dirt.[line break]He grips at your neck tightly, a reminder of just who is in control. Obediently your body gives in to his implied threat and you feel your rear raise up under him, pressing the small of your back hard against his underbelly.[line break]Gripping a little tighter at your neck, he pulls himself forward, or you backwards, you are not sure, all you do know is with that first movement, he has found his mark and sunk in.[line break]You whine loudly, the feel of his spines dragging into you, his girth now swelling further to fill your depths, depths that had yearned for this moment.[line break]";
						say "Arching your back further, trying to maximize how much he had worked into you, you feel your breasts push down and into the ground, nipples still rock hard.[line break]He begins, working his hips slowly at first, then with increasing speed and the spines, now buried far within your love cavern, both torture and pleasure your alternately from moment to moment as he works himself deeper and faster into you.[line break]At once, without warning, your release tears a hole in your existence and you are lost in a crying scream that echoed loudly.[line break]Panting hard, his weight still bearing in and out of your breeding cavern you knew then, that in this moment at least, you are no longer your own person, you are his, his sex toy, his breeding hole, his to fuck as much as he wants. And you would go to him willingly.[line break]The thought of that, as much as the constant stimulation pulls you into another release, you roared this time, he had released your neck at some point and you are free to act, partially at least, in any manner your twisted mind wishes, and with the afterglow of pleasure still saturating you, you act in one definitive way, by rocking your hips to meet his driving thrusts.[line break]";
						say "He was purring, you feel it through your shoulder muscles, he was purring because you are such a good mate for him. That thought flows through you, a feeling of ascent accompanying it. This time you can feel yourself building, no longer slaved to the explosive release of earlier.[line break]You feel him grip back down on your ruff and rumble a growl low into your body, shaking your very bones. His member begins to flare, pushing the spines out further, almost painfully into your soft, delicate insides, almost... all pain flows away, there is only pleasure as you feel him build and, with one final heave of his muscles send his shaft, his spines and his seed burning into you.[line break]He releases your neck again, crying his dominance out loudly and you feel your own voice rise through the breaking surf of pleasure, to join his in one drawn out, simultaneous release.[line break]So much, he had put so much of himself into you, you lay there, now fully on your belly, his member still buried deep, both of you too tired to want to rouse.[line break]After what seems like an eternity, he pulls loose and, licking you a few times, paces off.[impregchance][impregchance]";
				else:
					if breasts of player is 0:
						say "The big cat rubs himself against you, purring deeply, without thinking your hand reaches to scritch his ears, 'You're not so bad, friendly even...' you murmur just before the first tingling feeling builds at your groin and chest.[line break]Quickly, two large breasts swell into existence, pressing against the remnants of your clothing, making you gasp at the feeling of the cloth against the sensitive flesh.";
						now breasts of player is 2;
						now breast size of player is 6;
						increase catnum by 1;
					else:
						say "The big cat rubs himself against you, purring deeply, without thinking your hand reaches to scritch his ears, 'You're not so bad, friendly even...' you murmur just before the first tingling feeling builds at your groin making you whine and whimper softly into his fur, breathing in more of the big animal's suddenly fiery smelling musk.";
						increase catnum by 1;
			else:		[***]
				if breasts of player is 0:
					say "The big cat rubs himself against you, purring deeply, without thinking your hand reaches to scritch his ears, 'You're not so bad, friendly even...' you murmur just before the first tingling feeling builds at your groin and chest.[line break]Quickly, two large breasts swell into existence, pressing against the remnants of your clothing, making you gasp at the feeling of the cloth against the sensitive flesh even as you feel further changes at your groin.";
					now breasts of player is 2;
					now breast size of player is 6;
					increase catnum by 1;
					now cocks of player is 0;
					now cock length of player is 0;
					now cock width of player is 0;
				else:
					say "The big cat rubs himself against you, purring deeply, without thinking your hand reaches to scritch his ears, 'You're not so bad, friendly even...' you murmur just before the first tingling feeling builds at your groin making you whine and whimper softly into his fur, breathing in more of the big animal's suddenly fiery smelling musk.";
					increase catnum by 1;


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Felinoid"; [Name of your new Monster]
	now attack entry is "[one of]He rakes at you wildly, leaving you in intense pain.[or]It leaps at you, digging its teeth into your arm.[or]It leaps at you, digging its teeth into your leg.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "With a last roar the big cat claws out wildly, trying to hit you one last time before collapsing to the ground."; [ Text or say command used when Monster is defeated.]
	now victory entry is "[felinoid attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[mongendernum 3]What looks like a full sized lion without a mane paces up before you, nose raised in the air, sniffing a scent. You hear the big cat purr and look your way, with a sinking feeling you think that not only was it your scent he was following but that he is very pleased to see you at last.";[ Description of the creature when you encounter it.]
	now face entry is "that of a short muzzled, female lion";[ Face description, format as the text "Your face is (your text)."]
	now body entry is "sleek, muscled, built for surviving, just like the large feline that gave it to you";[ Body Description, format as the text "Your Body is (your text)."]
	now skin entry is "[if looknow is 1]a thick pelt of coarse yellow-gold fur covering your thick, pliable[else]yellow-gold fur covered[end if]";[ skin Description, format as the text "You have (your text) skin."]
	now tail entry is "A lion's tail twitches behind you. You just know that if you find the one who gave it to you, it would be cocked to the side in seconds.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "leonine";[ Cock Description, format as you have a 'size' (your text) cock.]
	now face change entry is "it draws forward into a short, feline muzzle, even as your ears draw upwards to perch, rounded, on top of your leonine head. Scents burn in your new nose and you find yourself turning in place, trying to catch His scent"; [ face change text. format as "Your face feels funny as (your text)." ]
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
	now sex entry is "Female";	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 38;			[ How many HP has the monster got? ]
	now lev entry is 6;			[ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 14;			[Amount of Damage monster Does when attacking.]
	now area entry is "Park";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 6;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 9;		[ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 4;		[ Width of female sex infection will try and give you ]
	now libido entry is 35;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]powerful[or]bestial[at random]";
	now type entry is "feline";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]



Section 3 - Monster Heat

[ IMPORTANT READ ME - This section is completely optional. If you do NOT want to go through the trouble of adding a particular heat text of events to your creature, just delete between the two marker comments. I have included the German shepherd entry for clarity. +++++]
[ +++++ ]

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

to say felinoidheat:
	if heatform is 0:
		say "Whining as you find yourself masturbating your feminine entrance slowly, you manage to snap out of the haze of need a moment, looking down at your hand, covered in your fluids, you raise it tentatively. Suddenly the scent of your body hits you and you begin lapping at your fingers, tasting your musk, needing more.";
	else:
		say "Whining as you find yourself masturbating your back entrance slowly, you manage to snap out of the haze of need a moment. Looking down at your hand, covered in your fluids, you raise it tentatively. Suddenly the scent of your body hits you, so like a wild cat in heat, you can't help but push those fingers back in for a few more minutes before you're able to move on.";
	infect "Felinoid";
	increase libido of player by 15;

to say felinoidheat end:
	say "The pressing need to find a mate fades slowly, leaving you whimpering in relief.";
	decrease libido of player by 40;
	if libido of player < 0, now libido of player is 0;

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Felinoid";	[ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 5;					[ This is the number of days a heat 'cycle' lasts, usually 7 ]
	now heat duration entry is 2;					[ This is how many days of the cycle you are actually in heat. default is 1, set it to the same as cycle for permanently in heat.]
	now trigger text entry is "His hips connecting again and again, pounding into your depths, you feel him bite down on your neck and you are roaring in bliss moments later. Gasping, you shake your head, trying to clear the mental images and scenes that kept replaying over and over. You lift your hand up to your nose and pull it away again quickly, your mind connecting that smell with one thing, 'I'm in heat...' you murmur under your breath and try to hold the images at bay."; [ This is the text that is written to the screen when the player comes into heat]
	now description text entry is "Swollen and slowly dripping fluids, your entrance aches for a lion to fill it, you find yourself, nose in the air, slowly following a scent before you regain some control and stop.";				[ This text is used to describe the monster female anatomy in heat. delete entire line if you don't wish to enter one.]
	now heat end entry is "[felinoidheat end]";
	now inheat entry is "[felinoidheat]";			[this final say block is triggered every 3 hours the player is in heat. you can use defaultheat or write your own. defaultheat raises libido value by 5 every 3 hours. ]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "His hips connecting again and again, pounding into your depths, you feel him bite down on your neck and you are roaring in bliss moments later.  Gasping, you shake your head, trying to clear the mental images and scenes that kept replaying over and over.  Noticing you were stuffing your ass with a few fingers, you pull them free only to feel a needy quiver from your vacated hole.  It longs to be filled again, desiring a powerful felinoid inside it.  'I'm in heat...' you murmur under your breath as your mind tries to cope with the strange state of your [if cocks of player > 0]male[else]neuter[end if] body while trying to keep those images at bay.";



	[ +++++ ]
[ Edit this to have the correct Name as well]
Alien Felinoid For FS ends here.
