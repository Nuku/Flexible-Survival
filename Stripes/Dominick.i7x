Version 2 of Dominick by Stripes begins here.
[ Version 2.1 - Beta+Husky 3some scene ]

"Adds an ultra-dominant male Husky NPC to Flexible Survival."

Section 1 - Lead-in Event

Corrupt Kennel is a situation.
The sarea of Corrupt Kennel is "Forest".
when play begins:
	add Corrupt Kennel to badspots of furry;
	add Corrupt Kennel to badspots of guy;

Instead of resolving Corrupt Kennel:
	say "     As you're cutting through a quiet neighbourhood half-overgrown by trees, the silence is suddenly broke by the sounds of a struggle in the building you're passing. The door flies open as a male husky pushes through. While your first instinct is to expect an attack from him, he barely notices you, pushing past you after knocking into a parked car. With him so close, you can see his blackened eye and broken jaw.";
	say "     'Don't you come back, you fucking cur!  else you'll end up as one of my bitches!' Turning to this new voice, you find another husky standing in the open doorway. He rubs his bloodied knuckles, the wounds quickly sealing. This second husky watches the first run off with his tail between his legs, standing firmly in the doorway of what you now realize is a former kennel.";
	say "     'Damn crazies. There's one every now and then coming to sniff around,' he says more calmly as he notices you there. 'You're welcome to come in. You still seem sane enough[if cunts of player is 0]. Though you better not be thinking of getting at my bitches, or you'll get the same.' He pauses and eyes you coldly. 'No. Scratch that. Consider what happened to him as your one and only warning[else if cocks of player > 0]. Though you better not be thinking of getting at my bitches, or you'll get the same.' He pauses and eyes you firmly. 'No. I think you'd prefer to join them[else]. I'd welcome the company of another female.' He eyes you appreciatively. 'Perhaps you might even decide to stay. As you've seen, you'd certainly be safe here as one of my bitches[end if].'";
	say "     [bold type]Should you go inside?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if the player consents:
		now HP of Dominick is 1;
		now Happy Puppy Kennel is known;
		move player to Happy Puppy Kennel;
		now battleground is "void";
	now Corrupt Kennel is resolved;


Section 2 - Happy Puppy Kennel

Happy Puppy Kennel is a room. It is fasttravel. It is private. It is sleepsafe.
The description of Happy Puppy Kennel is "[hpkdesc]".

the scent of Happy Puppy Kennel is "There's a strong, canine scent suffusing the place - most prevalently that of Dominick.";

to say hpkdesc:
     say "     You're standing the front foyer of what was once the Happy Puppy Kennel. The posters of pedigree dogs on the wall and the large wall decals of happy cartoon puppies are at odds with its current residents. Dominick, when not walking around the room or standing watch, lounges in a big chair behind the desk. His knotted cock is perpetually erect, even after his pets have tended to him. These pets are a collared pair of nude doggy girls, both of whom sit on the floor to either side of his chair and fawn over the studly male. One's a pink-furred husky and the other's a teal-coloured samoyed. Both seem quite simple creatures, lost to their lusts and obedient to their canine master.";


Section 3 - Dominick

Dominick is a person. Dominick is in Happy Puppy Kennel.
The description of Dominick is "[dominickdesc]".
The conversation of Dominick is { "Bitches love me!" }.
the scent of the Dominick is "Dominick has a strong, commanding scent that makes you want to bury your face in his balls and take a big, strong whiff of him.".
understand "Dom" as Dominick.

to say dominickdesc:
	say "     Dominick (or Dom, as he prefers), is a well-built husky male. He's got a confident stance as he looks around the foyer of the former kennel. While you may have first mistaken him for another of the husky males you've seen out in the city, further examination shows he likely has a different strain from there. He stands just under six feet tall and has a somewhat different build than the others. His face and muzzle is broader and more cartoonish than a regular husky, further emphasized by the wolfish grin it often bears as he looks at you or his slutty pets. He has a crop of bluish hair atop his head that becomes bluish fur down his back. This changes of the more typical grey of normal huskies on his shoulders and around his sides before transitioning fully to white for his chest and belly.";
	say "     He's got a plump cock that's perpetually erect. His semi-inflated knot rests outside his white sheath, keeping the furry sleeve from covering his manhood. And quite the impressive manhood it is - thick, long and decidedly canine-shaped, but with a pinker flesh tone. It's pointed tip is pierced with a ring-shaped Prince Albert. Beneath it hangs a plump ballsac covered in snowy fluff and filled with his heavy, virile balls. All in all, you can't help but find your eyes drawn back to it over and over, the tantalizing sight making your mouth water[if HP of Dominick > 3] for more[end if].";


Section 4 - Dialog

Instead of conversing the Dominick:
	if debugactive is 1:
		say "DEBUG (Dominick) -> HP: [HP of Dominick] <- DEBUG[line break]";
	if HP of Dominick is 0:
		say "***Unknown error. Adjusting.";
		now HP of Dominick is 1;
		now Corrupt Kennel is resolved;
		now Happy Puppy Kennel is known;
	else if HP of Dominick is 1:
		say "     'Well look at you,' he says with a confident smile. 'If you're coming in here, you must be looking for something. And I think it's more than just a safe place to hide...' He cups his balls and his cock twitches meaningfully.";
		say "     'I'm Dominick, but you can call me Dom. Or Master[if player is herm]. You might make for a good bitch with a little work.' Moving in close, he runs a paw over your ass[else if player is female]. You have a makings of a fine bitch in you, I'd say.' He moves in close and runs a paw possessively over your ass and then across your crotch[else]. I don't have much need for males around here. I'm a top-ranked, A-1 breeding stud. Though if you want to stay here and be safe, you can always try [']sucking up['] a little.' He grins lewdly holding his dick out[end if].";
		now HP of Dominick is 2;
	else:	[***]
[	else if HP of Dominick is 2 or HP of Dominick is 3:	]
		say "     [one of]Dom takes a seat in his chair, letting the two doggy girls lavish attention upon his cock in an arousing display.[or]Dominick runs a paw along his exposed cock. 'My cock's always out; the only time I sheathe is inside one of my toys.'[or]Dom [if cunts of player > 0]runs his paws over you, letting a paw slip to your pussy and give it a teasing tap[else]grinds that stiff cock of his against your thigh[end if], causing you to moan. 'I think you'd make a fine addition to my toys, you slut.'[or]Rather than talk, Dom pushes you down to your knees and rubs his shaft against your face. The scent of it fills your nose with his manly scent, making your mouth water.[or]'I keep good care of my [if cunts of player > 0]breeding [end if]bitches. Isn't that right, girls?' he asks, groping a breast on each of them. They pant and moan at his touch.[or]Dom licks your ear while groping you from behind. '[if cocks of player > 0 and cunts of player > 0]You herms are nothing but wannabe bitches for true studs like me[else if cunts of player > 0]I bet that juicy cunt of yours is just aching for a true stud like me to fill it[else if cocks of player > 0]It's hardly worth my time to bother with a slutty male like yourself... but you can always try[else]I guess it's only natural for a neutered slut like yourself to suck up to true stud like me. Not that I have much use for the likes of you... but you can always try[end if][if HP of Dominick is 2]. How about you get on your knees and I'll show you your place here?'[else].'[end if][at random]";
[	else if HP of Dominick is 4:
		say "***regular conversation - has fucked player.";]
[	else if HP of Dominick >= 10 and HP of Dominick < 60:
		say "***omega conversation.";]
[	else if HP of Dominick >= 60 and HP of Dominick < 100:
		say "***beta conversation.";]


Section 5 - Sex Mechanics

the fuckscene of Dominick is "[sexwithDominick]".

to say sexwithDominick:
	setmonster "Breederslut";
	choose row monster from the table of random critters;
	if HP of Dominick < 2:
		say "     With the way his cock's standing tall, you're sure he'd be up for it, but it's still best to talk to him first.";
	else if lastfuck of Dominick - turns < 4:
		say "     'An eager little slut, aren't you? I have other bitches to tend to right now. Wait your turn like a good puppy.'";
	else if HP of Dominick is 2:
		say "[sexwithDominick_00]";
	else:
		say "     Dom sees your gaze continually returning to his dick and grins. He exudes self-confidence as he takes a seat in his chair and runs a finger slowly up his shaft. His thick meat gives a twitch and dribbles a little pre - a sight that has you lick your lips. 'I can tell you need it, you slut. Come on then[if cunts of player > 0], get to it[else]- start licking[end if].'";
		say "[dominick_sexmenu]";

to say dominick_sexmenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Doggy-style";
		now sortorder entry is 1;
		now description entry is "let the big husky mount you";
	if cunts of player > 0 and scalevalue of player < 4 and HP of Dominick >= 4:
		choose a blank row in table of fucking options;
		now title entry is "Lap ride";
		now sortorder entry is 2;
		now description entry is "get bounced on the husky's big pole";
	if cunts of player > 0 and HP of Dominick >= 4:
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 4;
		now description entry is "take it up the ass";
	else if player is mpreg_ok:		[***optional for later]
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 4;
		now description entry is "take it up the ass";
	choose a blank row in table of fucking options;
	now title entry is "Suck his cock";
	now sortorder entry is 8;
	now description entry is "get between his legs and suck his cock for a sweet treat";
	choose a blank row in table of fucking options;
	now title entry is "Cock worship";
	now sortorder entry is 9;
	now description entry is "lavish that doggy cock with attention";
	if HP of Dominick >= 5 and HP of Dominick < 20 and cunts of player > 0 and ( bodyname of player is "Breederslut" or facename of player is "Breederslut" ):
		if "Submissive" is not listed in feats of player and level of player > 3:
			choose a blank row in table of fucking options;
			now title entry is "Beta training";
			now sortorder entry is 98;
			now description entry is "get trained to be his beta-bitch (locks role)";
[		if "Dominant" is not listed in feats of player:
			choose a blank row in table of fucking options;
			now title entry is "Omega training";
			now sortorder entry is 99;
			now description entry is "get trained to be his pack's omega-bitch (locks role)";]
[	else if HP of Dominick >= 20 and HP of Dominick < 60:		[***omega scenes]
		<stuff for omega scenes goes here>												]
	else if HP of Dominick >= 60 and HP of Dominick < 100:
[		if libido of Dominick > 0:		]
		if libido of Dominick is 1:			[***temp only available for Female Husky***]
			if cunts of player > 0 and ( bodyname of player is "Breederslut" or facename of player is "Breederslut" ):
				choose a blank row in table of fucking options;
				now sortorder entry is 90;
				if libido of Dominick is 1:			[last capture was Female Husky]
					now title entry is "Female Husky 3some";
					now description entry is "have a threesome with the recently captured husky";
[				else if libido of Dominick is 2:			[last capture was Pit Bull]
					now title entry is "Pit Bull 3some";
					now description entry is "have a threesome with the recently captured pit bull";
				else if libido of Dominick is 3:			[last capture was Pink Poodle]
					now title entry is "Pink Poodle 3some";
					now description entry is "have a threesome with the recently captured poodle";]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: Shall you [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				now lastfuck of Dominick is turns;
				if nam is "Doggy-style":
					say "[sexwithDominick_01]";
				else if nam is "Lap ride":
					say "[sexwithDominick_02]";
				else if nam is "Anal":
					say "[sexwithDominick_03]";
				else if nam is "Suck his cock":
					say "[sexwithDominick_04]";
				else if nam is "Cock worship":
					say "[sexwithDominick_05]";
				else if nam is "Beta training":
					say "[dom_betatraining]";
				else if nam is "Female Husky 3some" or nam is "Pit Bull 3some" or nam is "Pink Poodle 3some":
					say "[dom_captured3some_00]";
[				else if nam is "Omega training":
					say "[dom_omegatraining]";]
	infect "Breederslut";
	if HP of Dominick >= 5:
		infect "Breederslut";
	decrease humanity of player by 5;
	now lastfuck of Dominick is turns;
	wait for any key;


Section 6 - Sex Scenes

to say sexwithDominick_00:
	let doggytype be false;
	if facename of player is listed in infections of Caninelist or bodyname of player is listed in infections of Caninelist or cockname of player is listed in infections of Caninelist:
		now doggytype is true;
	say "     The tantalizing sight of Dom's doggy cock gets too tempting to resist any longer. Dropping to your knees before him, you nuzzle those plump balls and take in the heady scent of the canine stud. You slip further into lustful need, stroking his manhood while licking and kissing those big balls.";
	say "     Dom leers down at you. 'That's it, you slut[if cunts of player > 0]. You girls can't get enough of my big meat. It's just what a bitch like you needs, isn't it?' he says as he takes hold of your head and grinds his hard, leaking shaft across your cheek. He doesn't bother waiting for your response, pushing his cock past your lips as soon as you open your mouth[else]. That's all you guys are good for - licking my balls and polishing my cock.' He rubs said cock across your cheek, leaking precum onto your face. The scent of his arousal turns you on all the more and the next time you take a panting breath, he pushes his cock past your lips[end if]. With his shaft stuffed in your mouth, you're treated to a steady dribble of doggy pre that is deliciously exciting.";
	attempttowait;
	say "     As you lick and suck on his canine rod, the flavour seeps deeper into your senses. It fills you with arousal, a [if cunts of player > 0]heat growing in your loins. Your pussy clenches,[else]hunger growing in your belly. You salivate uncontrollably, your mouth[end if] growing increasingly wet with every heady breath of his musk you take in[if doggytype is true]. His pheromones are particularly effective, arousing your carnal canine desires[end if][if cocks of player > 0]. Despite how turned on you've gotten, your cock remains flaccid, unwanted and unneeded when compared to the perfect specimen you're sucking on[end if].";
	if cunts of player > 0:
		say "     'Keep going, you slut. You're a good girl, aren't you? And there's nothing a good girl likes more than a big, juicy dick.' You can only moan wetly in response, sucking greedily. A [if doggytype is true]canine [end if]corner of your mind agrees with him - you certainly can't seem to get enough of his pre. You long for a more substantial treat as well. And when he starts thrusting into your mouth harder, you know you'll be getting it soon.";
		attempttowait;
		say "     With him pushing the tip of his hard cock down your throat, you do your best to stretch your mouth open wide to allow his knot entry. 'Mmm... nothing like a hot [if cocks of player > 0]wannabe [end if]bitch's hot hole,' he pants. 'I'm gonna- uggh- tie with that slutty mouth of yours annggg... and feed you my hot- ohhh... hot load. Gotta make sure you don't lose a single dr- Rrrrrrr- drop of my rich spunk.' He thrusts harder, forcing the growing bulge in and then holds your head steady as the knot continues to inflate. 'It's always so tough to train you sluts to take my knot for the first time, but I gotta make sure my new girl is well-fed.' Your response to this is to suck and swallow over his pulsing prick all while getting your mouth stretched open wider by his bulging shaft. It's difficult and makes it hard to breathe, but that only makes every gasp of his rich scent all the more satisfying.";
		say "     Dom's swollen knot stuffs your mouth full, keeping you locked onto his cock as it throbs in your sore maw. You hardly notice the discomfort though, instead focused on how his plump ballsac draws up, signalling his eminent release. And it is quite the release indeed, the first of several powerful blasts of thick semen shoot down your throat, filling your belly with warmth. The flow is quite voluminous, causing a backwash that floods your mouth to be trapped behind his knot, giving you a taste of his potent, virile semen. Your eyes roll back in your head as the delightfully rich flavour fills your senses, becoming all you can think about.";
		attempttowait;
		say "     True to his word, the bulging knot is locked tightly inside your mouth, making sure you don't lose any of his hot load. You remain tied to him for some time, giving you ample opportunity to swallow down his copious load. As you lick his virile rod completely clean, he continues to deride you, praising you as his horny, cock-sucking pet. And given how eagerly you're going after the least few dregs of his delicious load, your sex-addled mind accepts the sexy stud of a dog's words. When it eventually does go down, you release his shaft reluctantly. He grinds his balls and slick shaft across your face, making sure his scent is thoroughly marked onto it, ensuring the dominant husky's scent will be in your nose for some time.";
	else:
		say "     With him pushing the tip of his hard cock down your throat, you do your best to stretch your mouth open wide to allow his knot entry. 'You should feel lucky I'm even letting you polish my rod. You slutty males are so pitiful, it hardly seems worth it to spill my seed in you.' You whimper and moan at the prospect of being denied the virile male's seed and work his pulsing shaft all the harder. He grins at this and grabs your head so he can roughly thrust into your mouth. 'Alright, you greedy fag, take that big knot. I'm gonna- uggh- tie with that slutty mouth of yours annggg... and there'll be no getting out of it, you man-whore. Bad enough I'm spending it in you. NNnnggg- Not gonna let you spill a drop of my prime puppy-making batter.' Your response to this verbal abuse is to suck and swallow over his pulsing prick all while getting your mouth stretched open wider by his bulging shaft. It's difficult and makes it hard to breathe, but that only makes every gasp of his rich scent all the more satisfying.";
		say "     Dom's swollen knot stuffs your mouth full, keeping you locked onto his cock as it throbs in your sore maw. His thrusts are short and hard, rattling your brain as he pounds into your overstretched mouth and throat. You hardly notice the discomfort though, instead focused on how his plump ballsac draws up, signalling his eminent release. And it is quite the release indeed, the first of several powerful blasts of thick semen shoot down your throat, filling your belly with warmth. The flow is quite voluminous, causing a backwash that floods your mouth to be trapped behind his knot, giving you a taste of his potent, virile semen. Your eyes roll back in your head as the delightfully rich flavour fills your senses, becoming all you can think about.";
		attempttowait;
		if wslevel > 1:
			say "     True to his word, the bulging knot is locked tightly inside your mouth, making sure you don't lose any of his hot load. Being tied to him, you have ample opportunity to swallow down his copious load. As you lick his virile rod completely clean, he continues to deride you. 'Hungry for more, I see. Alright, you cock-slut, have some more,' he pants. A fresh rush of hot fluid goes down your throat, but this time it's his piss that backwashes into your mouth. You cough and sputter at the acrid taste suddenly washing away the flavour of his semen, but his knot keeps it all locked inside. Yet despite the harshness of it, it is also rich with that musky scent of the stud. The experience grows increasingly arousing to your musk-confused brain. Why shouldn't such an impressive male use you as he sees fit?";
			say "     'Good job, you stupid toilet,' he growls, rubbing your jaw and throat as you do your best to swallow down the rest of his urine. 'It's such a waste spilling my seed into you when I could be breeding puppies, so the least you can do is let me wash it down with my piss. It's about all you're good for,' he adds, your sex-addled brain accepting the sexy stud of a dog's words. When his knot does eventually go down, Dom pulls it free right away and slaps it across your cheek. The harsh yet arousing taste of the dominant husky's drained fluids lingers in your mouth for some time, making you long for the next opportunity to get some.";
		else:
			say "     True to his word, the bulging knot is locked tightly inside your mouth, making sure you don't lose any of his hot load. You remain tied to him for some time, giving you ample opportunity to swallow down his copious load. As you lick his virile rod completely clean, he continues to deride you, calling you the man-slut and cocksucker that you clearly are. And given how eagerly you're going after the least few dregs of his delicious load, your sex-addled mind accepts the sexy stud of a dog's words. When it eventually does go down, Dom pulls it free right away and slaps it across your cheek. The arousing taste of the dominant husky's drained cum lingers in your mouth for some time, making you long for the next opportunity to get another load.";
	decrease humanity of player by 5;
	infect "Breederslut";
	increase HP of Dominick by 1;
	now lastfuck of Dominick is turns;


to say sexwithDominick_01:
	say "     Feeling the aching need to have him buried inside you[if HP of Dominick >= 4] again[end if], you drop onto all fours and present yourself to him. Grabbing your ass with both paws, he presses his muzzle to your muff and gives you a long, slow lick up your pussy[if anallevel > 1], taint and asshole[end if]. This sends shivers through you, prompting you to push back against his slobbery tongue.";
	say "     'I appreciate your eagerness, my little pet, but you need to work on your stance if you want to be a proper pedigree bitch of mine,' he says. His paws roam over your body, adjusting your stance into a more naturally canine one. A little press at your shoulders, a reposition of your head and neck, an adjustment of your hips to better raise your rear for to him - all making you a little closer to a perfect show dog. And as he's making these little shifts, fingers find their way to your snatch, fingering your juicy muff as a reward to encourage you to be a good doggy girl for him.";
	attempttowait;
	say "     Once he's done [if bodyname of player is listed in infections of Caninelist]adjusting you a little closer to pedigree standards[else]adjusting your posture to best display your sexy ass[end if], he moves in to mount you. 'Mmm... take that big doggy cock, my pet,' he pants in your ear as his cock slides into your slick slit. 'You [if cocks of player > 0]wannabe [end if]bitches are nothing but cock sluts in need of a good fucking.' His canine manhood pushes its way into your [cunt size desc of player] cunt, every inch of it feeling wonderful as it goes in[if HP of Dominick < 4]. He takes his time at first, savouring his new fucktoy pet[else]. He savours the initial penetration as he mounts you anew[end if].";
	if player is breederslutbodied and a random chance of 3 in 5 succeeds:
		say "     'Such a cute little girl [if player is pure]you've turned[else]you're turning[end if] out to be,' he says, running his paws over your smaller shiba inu form. 'My dick's nearly as big as your whole body. You must feel so deliciously full,' he says in your ear, rubbing your stuffed belly. And while he might exaggerate how small you are, he's quite right that his cock's comparatively huge, making a bit of a bulge in your delightfully stuffed tummy.";
		attempttowait;
	say "     You start to moan and pant beneath him as that fine doggy cock of his pistons in and out of you. His hips drive with bestial energy, fucking you like an animal, making it hard to focus on anything other than the deliciously rough sex. 'Yeah!  Take it, you slutty bitch,' he rumbles in your ear as he gropes you with one paw while screwing you. 'Feel that big cock taking you. That's all a good girl wants or needs. All it takes is regular fuckings to keep you satisfied, my pet.'";
	say "     Between the pounding you're getting and the heady scent of his pheromones in the air, your own thoughts are knocked out of your head, leaving room for his words to fill your mind instead. That cock of his does feel sooooo good and getting fucked by it regularly would be sooooo nice. Would it be so bad to stay here as his doggy pet? The other girls seem so happy and he'd keep you safe and well-fucked.";
	attempttowait;
	say "     Dom quickens his pace as he's approaching his climax. He pounds into your roughly[if cunt width of player < 8], working hard to pop his knot into your tight cunt[else if cunt width of player < 16], working to pop his knot into your cunt[else], helping to stretch your cavernous cunt that little bit more to let his knot in[end if][if HP of Dominick < 4]. 'Nnnggg... I always like taking a new bitch for the first time. Feeling her stretch for me. And... nggg... in it goes...' he says through gritted teeth, finally popping that deliciously thick knot into you. 'Gotta keep all the high-quality doggy sperm where it can do its job, my pet[else]. 'Nnnggg... Time to tie you again, my slutty pet. I know you love that big knot of mine. Take it you biiiitch,' he says through gritted teeth, finally popping that deliciously thick knot into you. '[one of]You're not going anywhere until you're stuffed full of my prime breeding cum[or]You'll be a good breeding bitch in not time[or]Time to fill that belly of yours with my seed[at random][end if].'";
	say "     You cry out in orgasmic release as Dom's knot locks into you. As your cunt spasms around his shaft, he continues drilling into you with short thrusts that more tug on the cock buried inside you than thrust in and out. This is enough to push him to orgasm as well, blasting shot after shot of canine cum into your cunt. And true to his words, the knot means there's nowhere for the excessive flow to go than into your womb.[impregchance][impregchance]";
	if HP of Dominick is 4 and wslevel is 3:
		say "     After the animalistic mating is over, you're left stuck on his knot while lost in the afterglow. The feel of all that hot doggy sperm inside you is strangely satisfying, making you feel content and passive. It is some time before Dom's able to remove his manhood from you, releasing a gush of trapped cum when it pops free. Sandwiching his meat between your buns, he grinds the messy pole against your ass. This is followed by a brief spray of hot fluid across your back. As the strong scent hits your nose, you realize the husky's taken a quick piss onto your back, further marking you as his. This way the dominant husky's scent will linger on you long after you've left. 'But why leave?' you ask yourself, sighing softly as you bask in afterglow. You keep your rear raised to hold his thick load inside you like a good breeder slut.";
		decrease humanity of player by 3;
	else:
		say "     After the animalistic mating is over, you're left stuck on his knot while lost in the afterglow. The feel of all that hot doggy sperm inside you is strangely satisfying. It provides a warmth that seeps through your whole body. The two other girls come up while you're locked together, licking at the point of your union with their master. Once his knot does finally go down enough to be removed, they're right there to catch the excess flowing from your stretched cunny and suck his cock clean for him. Only once they're finished are you permitted to get up unsteadily onto your feet as you try to recall what you wanted to do next.";
	if HP of Dominick < 5, increase HP of Dominick by 1;


to say sexwithDominick_02:
	let doggytype be false;
	if facename of player is listed in infections of Caninelist or bodyname of player is listed in infections of Caninelist or cockname of player is listed in infections of Caninelist:
		now doggytype is true;
	say "     Desiring another round with the sexy husky, you [if player is breederslutbodied]pad[else]head[end if] over to him and take his erect member in hand. He smiles at this and places a paw meaningfully, possessively on your rear. 'Come back for more, I see. There's nothing a [if cocks of player > 0]wannabe-[else]sweet [end if]bitch like you needs more than cock.' His paw slips down between your legs to tease across your wet folds with casual skill. 'You want it in you, don't you?'";
	say "     Not waiting for your answer, he pulls you along as he takes a seat in his nearby chair. You end up in his lap, his hard cock grinding between your buns. You can feel its warmth, its hardness, its girth and you give a soft moan of desire. Hooking his paws under your thighs, he raises your legs and boosts you up before lowering you down onto his erection. It drives into you like it has every right to be there and your cunt doesn't object, quivering and clutching around it with need. Held in his arms with your legs in the air, you're unable to do anything but let him do with you as he will while on lurid display for his attendant slut girls.";
	attempttowait;
	say "     [if player is breederslutfaced]Your doggy tongue flops from your muzzle[else]You pant heavily[end if] as you are given a vigorous lap ride upon his throbbing cock. Your pussy starts to get sore as it is bumped down onto his large knot over and over again, but it is a pleasant ache for you. You know sooner or later that big bulb of meat will be stuffed inside you right where it belongs. And you can only quiver, wriggle and moan until that point comes.";
	if player is breederslutbodied and a random chance of 3 in 5 succeeds:
		say "     Picking up his pace, Dominick thrusts up into you all the harder while bouncing you in his lap. 'How does that feel, my little shiba inu? A little bitch-girl like you moaning like a slut for a dick nearly as big as you are,' he teases, knocking that knot harder against your soaked folds, working them open a little further. And while you are only down to five feet tall, that cock of his is two or three times the average size, ensuring you'll be thoroughly filled. 'I can tell you love it. And once I've knotted you, there'll be no room for all that cum but right into your cute womb of yours,' he adds, grinding his cock deep inside you for emphasis. In your lust-addled state, you long for exactly that.";
	else:
		say "     Picking up his pace, Dominick thrusts up into you all the harder while bouncing you in his lap. 'Take it, you [if cocks of player > 0]wannabe-[else]horny [end if]slut,' he pants in your ear. Your crotch knocks down harder onto that big knot of his, working your folds open a little further. 'I know you want it. Every bitch[if doggytype is false]-in-training[end if] loves a good, hard dicking,' he says with confidence, grinding his cock deep inside you for emphasis. In your increasingly lust-addled state, your mind and body agree, needing the stud of a dog to fuck you senseless.";
	say "     Under the continual pounding, your pussy can only take so much before being spread wider and wider until his thick knot pops into you with a wet slurp. You [if facename of player is listed in infections of caninelist]release a yelp[else]groan loudly[end if] as you're stretched that last bit and the thick bulb of meat finally pops and locks into your achingly stuffed cunt. You arch your back and quiver atop his pulsing rod, your inner walls squeezing and milking at his cock while he continues to bounce you up and down. Tied as you are, you can only move up a short distance before slamming back down onto his crotch, more grinding his cock into you and tugging at your insides.";
	attempttowait;
	say "     But that's still more than enough to send you into orgasmic bliss. And your release is soon followed by that of your canine mate, his hot load shooting up into your womb in a near-steady stream of semen. You can feel the gooey warmth of it filling your uterus, the virile sperm filling you with ecstasy in your post-orgasmic haze[if cocks of player is 0]. And as the seeding goes on, his two attendants approach at his signal, taking turns licking at your stuffed pussy to catch what few dribbles of their master's precious seed leak out around his throbbing knot[end if].[impregchance][impregchance]";
	say "     By the time his prolific orgasm has passed and his knot has come down, you're sore, weak and oh-so-satisfied. He raises you up off his knot and lowers you down onto a doggy mat on the floor. It's thoroughly stained with cum and pussy juices already, so the excess leaking from your abused hole won't matter. You bury your nose in it, taking in the heady scent of canine sex suffusing it, losing yourself in it for a good, long while.";
	if HP of Dominick < 5, increase HP of Dominick by 1;


to say sexwithDominick_03:
	say "     Feeling the aching need to have Dominick buried inside you[if HP of Dominick >= 4] again[end if], you drop onto all fours and present yourself to him. Grabbing your ass with both paws, he lays his canine cock on top of your rear. He then proceeds to grind it back and forth slowly, teasing you with his dick between your cheeks. This sends shivers through you, prompting you to push back against his incredible prick.";
	if player is breederslutbodied:
		say "     'Such a cute little girl [if player is pure]you've turned[else]you're turning[end if] out to be,' he says, running his paws over your smaller shiba inu form. 'My dick's nearly as big as your whole body. You must feel so deliciously full,' he says in your ear, rubbing your stuffed belly. And while he might exaggerate how small you are, he's quite right that his cock's comparatively huge, making a bit of a bulge in your delightfully stuffed tummy.";
	WaitLineBreak;
	say "     You start to moan and pant beneath him as that fine doggy cock of his pistons in and out of you. His hips drive with bestial energy, fucking you like an animal, making it hard to focus on anything other than the deliciously rough sex. 'Yeah!  Take it, you slutty [if cocks of player > 0]wannabe-[end if]bitch,' he rumbles in your ear as he gropes you with one paw while screwing you. 'Feel that big cock taking you. That's all a good girl wants or needs. All it takes is regular fuckings to keep you satisfied, my pet.'";
	say "     [if cocks of player > 0]Despite how turned on you've gotten, your cock remains flaccid, unwanted and unneeded when compared to the perfect specimen pumping within you. [end if]Between the pounding you're getting and the heady scent of his pheromones in the air, your own thoughts are knocked out of your head, leaving room for his words to fill your mind instead. That cock of his does feel sooooo good and getting fucked by it regularly would be sooooo nice. Would it be so bad to stay here as his doggy pet? The other girls seem so happy and he'd keep you safe and well-fucked.";
	WaitLineBreak;
	If player is mpreg_ok:
		say "     Dom quickens his pace as he's approaching his climax. He pounds into you roughly, working to fit his huge knot into your tight rear[if HP of Dominick < 4]. 'Nnnggg... I always like taking a slutty male for the first time. Feeling them stretch for me. And... nggg... in it goes...' he says through gritted teeth, finally popping that deliciously thick knot into you. 'Gotta keep all the high-quality doggy sperm where it can do its job, my pet[else]. 'Nnnggg... Time to tie you again, my slutty pet. I know you love that big knot of mine. Take it you biiiitch,' he says through gritted teeth, finally popping that deliciously thick knot into you. 'You'll be a good breeding bitch in no time[end if].'";
	else:
		say "     Dom quickens his pace as he's approaching his climax. He pounds into you roughly, working to fit his huge knot into your tight rear[if HP of Dominick < 4]. 'Nnnggg... I always like taking a new bitch for the first time. Feeling them stretch for me. And... nggg... in it goes...' he says through gritted teeth, finally popping that deliciously thick knot into you. 'Gotta keep all the high-quality doggy sperm inside you, my pet[else]. 'Nnnggg... Time to tie you again, my slutty pet. I know you love that big knot of mine. Take it you biiiitch,' he says through gritted teeth, finally popping that deliciously thick knot into you. 'Time to fill that belly of yours with my seed[end if].'";
	say "     You cry out in orgasmic release as Dom's knot locks into you. As your ass spasms around his shaft, he continues drilling into you with short thrusts that more tug on the cock buried inside you than thrust in and out. This is enough to push him to orgasm as well, blasting shot after shot of canine cum into your rear passage. And true to his words, the knot means there's nowhere for the excessive flow to go than [if player is mpreg_ok]into your womb.[mimpregchance][mimpregchance][else]deeper into your ass[end if]";
	WaitLineBreak;
	say "     After the animalistic mating is over, you're left stuck on his knot while lost in the afterglow. The feel of all that hot doggy sperm inside you is strangely satisfying, making you feel content and passive. It is some time before Dom's able to remove his manhood from you, releasing a gush of trapped cum when it pops free. Sandwiching his meat between your buns, he grinds the messy pole against your ass. This way the dominant husky's scent will linger on you long after you've left. 'But why leave?' you ask yourself, sighing softly as you bask in afterglow. You keep your rear raised to hold his thick load inside you like a good breeder slut.";
	if HP of Dominick < 5, increase HP of Dominick by 1;


to say sexwithDominick_04:
	let doggytype be false;
	if facename of player is listed in infections of Caninelist or bodyname of player is listed in infections of Caninelist or cockname of player is listed in infections of Caninelist:
		now doggytype is true;
	say "     Kneeling between the husky's legs, you start licking at that fine cock of his. The taste of his dick excites your senses, getting you all the more eager and aroused. Cupping his balls in one hand, you give his meat a long, slow lick from bottom to top. Once at the pointed glans, you swirl your tongue over it before lowering your lips down around his shaft.";
	if cunts of player > 0:
		say "     'Mmm... that's it, you slut. You [if cocks of player > 0]wannabe-[end if]bitches are all the same, lusting after a real stud's cock.' He places a paw atop your head and pushes it down, forcing you to quickly take more of his dripping shaft into your mouth and throat. You slurp your tongue across it, panting and moaning softly. His other paw soon follows, gripping your head so he can have you bob up and down on his pulsing rod.";
		say "     As you lick and suck on his canine rod, the flavour seeps deeper into your senses. It fills you with arousal and a heat growing in your loins. Your pussy clenches, growing increasingly wet with every heady breath of his musk you take in[if doggytype is true]. His pheromones are particularly effective, arousing your carnal canine desires[end if][if cocks of player > 0]. Despite how turned on you've gotten, your cock remains flaccid, unwanted and unneeded when compared to the perfect specimen you're sucking on[end if].";
		attempttowait;
		say "     Rising from his seat, Dom switches to thrusting into your mouth while holding your head steady. His delicious cock pulses and throbs as his excitement builds. Knowing what's coming, you do your best to stretch your mouth open wide in an effort to accommodate the big dog's knot. 'Yeah!  Take it, you slut. You're gonna take every last drop of my seed and love it.' It takes some effort, but is nowhere near as difficult as the first time, and soon you're rewarded with the meaty pop of his knot burying itself in your mouth.";
		say "     Dom unleashes his hot, gooey seed down your throat. Much of it pours right down into your belly, filling you with a satisfying warmth that makes you content, if all the more wet and needy between your legs. One powerful blast comes after another and what you'd can't swallow fast enough comes bubbling back up into your mouth to give you a taste of his delicious, bestial seed. Your eyes roll back in your head as the delightfully rich flavour fills your senses, becoming all you can think about until he's finally done and spent.";
		attempttowait;
		if HP of Dominick is 4 and wslevel is 3:
			say "     It takes some time before the husky stud's knot goes down enough for it to pop free of your mouth. By that point, you've had plenty of time to lick it clean of every last drop of semen you could get. You're left quite sex-addled by the musky taste of your gooey meal and hardly notice as Dom pushes you to lay on your back with one footpaw. You're stirred from the haze as hot, wet liquid sprays onto you. The husky grins down at you as releases a few spurts of piss onto you, further marking you as his. This way the dominant husky's scent will linger on you long after you've left. 'But why leave?' you ask yourself, sighing softly as you bask in afterglow. You lay there for some time, enjoying the warm feeling in your belly even as the hot piss marking you cools.";
			decrease humanity of player by 3;
		else:
			say "     It takes some time before the husky stud's knot goes down enough for it to pop free of your mouth. By that point, you've had plenty of time to lick it clean of every last drop of semen you could get. When it has eventually gone down, Dom pulls it free and slaps it across your cheek, drawing a submissive whimper from you. You're left quite sex-addled by the musky taste of your gooey meal and enjoy how its warmth seeps through your whole body. The arousing taste of the dominant husky's drained cum lingers in your mouth for some time, making you long for the next opportunity to get another load.";
		if HP of Dominick is 4, increase HP of Dominick by 1;
	else:
		say "     'Keep going, you pitiful excuse for a male. You should feel lucky I'm even letting you polish my rod when I've got fine bitches I could be breeding. You better make it worth my while.' He places a paw atop your head and pushes it down, forcing you to quickly take more of his dripping shaft into your mouth and throat. You slurp your tongue across it, panting and moaning softly. His other paw soon follows, gripping your head so he can have you bob up and down on his pulsing rod.";
		say "     As you lick and suck on his canine rod, the flavour seeps deeper into your senses. It fills you with arousal, a hunger growing in your belly. You salivate uncontrollably, your mouth growing increasingly wet with every heady breath of his musk you take in[if doggytype is true]. His pheromones are particularly effective, arousing your carnal canine desires[end if][if cocks of player > 0]. Despite how turned on you've gotten, your cock remains flaccid, unwanted and unneeded when compared to the perfect specimen you're sucking on[end if]. You pant and lick all the more enthusiastically, wanting to do your best to please the big, virile male.";
		attempttowait;
		say "     Rising from his seat, Dom switches to thrusting into your mouth while holding your head steady. His delicious cock pulses and throbs as his excitement builds. Knowing what's coming, you do your best to stretch your mouth open wide in an effort to accommodate the big dog's knot. 'Time to stuff that faggy mouth of yours, you slut. You're gonna take every last drop of my seed and love it, you cum dumpster.' It takes some effort, but is nowhere near as difficult as the first time, and soon you're rewarded with the meaty pop of his knot burying itself in your mouth.";
		say "     Dom unleashes his hot, gooey seed down your throat. Much of it pours right down into your belly, filling you with a satisfying warmth that makes you content, if all the more wet and needy between your legs. One powerful blast comes after another and what you'd can't swallow fast enough comes bubbling back up into your mouth to give you a taste of his delicious, bestial seed. Your eyes roll back in your head as the delightfully rich flavour fills your senses, becoming all you can think about until he's finally done and spent.";
		attempttowait;
		if wslevel > 1:
			say "     True to his word, the bulging knot is locked tightly inside your mouth, making sure you don't lose any of his hot load. Being tied to him, you have ample opportunity to swallow down his copious load. As you lick his virile rod completely clean, he continues to deride you. 'Hungry for more, I see. Alright, you cock-slut, have some more,' he pants. A fresh rush of hot fluid goes down your throat, but this time it's his piss that backwashes into your mouth. You cough and sputter at the acrid taste suddenly washing away the flavour of his semen, but his knot keeps it all locked inside. Yet despite the harshness of it, it is also rich with that musky scent of the stud. The experience grows increasingly arousing to your musk-confused brain. Why shouldn't such an impressive male use you as he sees fit?";
			say "     'Good job, you stupid toilet,' he growls, rubbing your jaw and throat as you do your best to swallow down the rest of his urine. 'It's such a waste spilling my seed into you when I could be breeding puppies, so the least you can do is let me wash it down with my piss. It's about all you're good for,' he adds, your sex-addled brain accepting the sexy stud of a dog's words. When his knot does eventually go down, Dom pulls it free right away and slaps it across your cheek. The harsh yet arousing taste of the dominant husky's drained fluids lingers in your mouth for some time, making you long for the next opportunity to get some.";
		else:
			say "     True to his word, the bulging knot is locked tightly inside your mouth, making sure you don't lose any of his hot load. You remain tied to him for some time, giving you ample opportunity to swallow down his copious load. As you lick his virile rod completely clean, he continues to deride you, calling you the man-slut and cocksucker that you clearly are. And given how eagerly you're going after the least few dregs of his delicious load, your sex-addled mind accepts the sexy stud of a dog's words. When it eventually does go down, Dom pulls it free right away and slaps it across your cheek. The arousing taste of the dominant husky's drained cum lingers in your mouth for some time, making you long for the next opportunity to get another load.";


to say sexwithDominick_05:
	say "     Dropping to your knees before the studly male, you take his stiff member in both hands and start nuzzling it. You take in his manly scent with a soft moan. It sends a shiver up your spine[if cunts of player > 0] and makes you wet between your thighs[end if]. There's something captivating about that wonderfully cock. You feel you have to lavish that perfect doggy dong with the attention it so obviously deserves. You start to lick and kiss all over it, drawing a pleasured growl from the husky.";
	say "     When you nuzzle down to his plump, virile balls, you feel the soft brush of fur against your sides. The stud's other pets have moved alongside you and start worshipping that beautiful cock of his as well. While a part of you doesn't want to share, you know the husky wants them to help. Besides, his penis deserves all the attention it can get. And so the three of you swap between his hefty balls, plump sheath, throbbing shaft and drooling glans. And once it emerges and swells up, his thick knot is given plenty of attention as well.";
	attempttowait;
	say "     The confident male stands up proudly as his trio of pets pay homage to his virility. You are given the occasional pat on the head or ear scritch, just like the other two doggy girls get[if cunts of player > 0]. 'Look at this - three fine bitches who know their place. Now be sure to lick every inch of it[else]. 'Now you pay attention to my two fine bitches here. They know how to treat my stud cock.' He slaps it across your face. 'You're nothing but a cock-sucking whore for a real male's cock[end if].' His words have you increase your efforts, trying to please the dominant alpha.";
	say "     The three of you continue your licking, kissing and caressing of his shaft until he's about to blow. With a sharp bark, he commands you all to 'Sit!' and then to 'Beg.' Sitting up and begging like dogs, the two girls lean in closer to you and you follow suit. With their heads to either side of yours, they hold their muzzles open and whimper with need while Dom pumps his throbbing member. You open your mouth just as the husky's hot seed begins to spew forth, splattering across your face and into your open mouth. He shifts his aim, making sure to reward the three of you with a messy coating of his semen. It clings to you and it delightfully sticky and rich in flavour. You all obediently hold steady while he cums onto you, only relaxing once he's finished and commands you to clean each other up. There's a lot of hot [if cunts of player > 0 and cocks of player is 0]lesbian [end if]kissing and licking between the three of you while the spent husky watches on with a smug smile on his muzzle. 'Good girls. Now play nice. There's plenty to go around.'";
	if HP of Dominick is 4, increase HP of Dominick by 1;


Section 7 - Beta and Omega Statuses

to say dom_betatraining:
	say "     Dominick runs his eyes over you, clearly re-appraising you more thoroughly than he has before. A part of you feels a flutter of excitement at the prospect of having caught the stud's attention. Striding over to you, he puts his paws on your body and feels you up. 'Most girls[if cocks of player > 0], even the wannabes,[end if] end up accepting their place as one of my pets after only a few rounds at most, but not you. It's got me thinking that I might have a special job for you,' he says, slipping one of those paws between your legs.";
	say "     Feeling his digits run across your wet folds before playing with your clit and pussy makes you moan in pleasure. His skilled touch has you grow more and more excited. Holding you from behind, you're increasingly aware of the hard cock pressed against your [if scalevalue of player < 3]lower back[else]rear[end if], but he makes no move to mount you. Only after a few minutes of this teasing does he continue to explain.";
	attempttowait;
	say "     'As you seem to like roaming around on your own, I thought you might be put to use for me. You want to be useful to your alpha stud, don't you?' he says sensually in your ear, lightly pressing his cock against you. You manage to pant an assent as he wriggles a pair of fingers deep inside your steamy cunt, wanting to earn the sexy husky's favour. 'Good girl. Now pay attention,' he says, licking your ear and nibbling your neck.";
	say "     'I want you to go out there and find some more horny bitches for me. I'm sure there are plenty more sweet canine sluts in need of a proper stud to take care of their needs.' He emphasizes that last word by thrusting his digits into your cunt several times and grinding his dick against you. 'All it takes having the right touch,' he says, working his fingers expertly. 'Every bitch is a breeder slut at heart and I want you to help them realize that.' He continues to tease and tantalize you, showing you numerous tricks and techniques to turn you (or any female) on.";
	attempttowait;
	say "     As you're building up for another, he slips them from you, leaving you aching and needy. 'And once she's all hot and needy, just like you're feeling,' he adds, nibbling your ear, 'that's when they're ready for a proper stud to breed them.' He grinds his cock against you as he effortlessly pushes you down onto all fours. 'And you can let them know just where to find the top dog around to give them. just. what. they. need.' He emphasizes these last words, starting by effortlessly pushing you down onto all fours, moving to mount you, lining up his cock and slipping just the tip into you. 'Be a good beta-girl and do that and you'll earn a well-deserved reward,' he says, sinking that throbbing meat of his into your sopping cunt - just the reward your body's been longing for since he started training you.";
	say "     Dom, even after his long stint of playing with you, is able to hold out and give you a long and thorough fucking. Finally having him penetrate you was enough to drive you to a powerful orgasm and he gives you several others over the course of rutting you. By the time he finally blows his load, you've been reduced to a panting, moaning heap of lustful satisfaction. The hot rush of canine sperm into your belly entices a final quivering orgasm from your over-used cunny.[impregchance][impregchance]";
	attempttowait;
	say "     By the time his knot's gone down and he's pulled out, all your mind can focus on is how great that was. As you're blissed out in a post-orgasmic haze, Dominick rubs his messy cock across your face and body, thoroughly marking you with his dominant, virile scent. You're only marginally aware of this, too lost in the glorious afterglow and looking forward to earning such a reward again.";
	say "     You'd best prove yourself a good beta-girl and find some more sweet puppy girls for Dom to breed.";
	say "     [bracket]Beta-victory scenes to come soon.[close bracket][line break]";
	now HP of Dominick is 60;
	now XP of Dominick is 0;
	now libido of Dominick is 0;

to say dom_captured3some_00:
	say "     Asking Dom if [one of]your most recent gift[or]your most recent recruit[or]his newest pet[at random] arrived, he smiles. 'The [if libido of Dominick is 1]husky girl? Yes, she's quite nice[else if libido of Dominick is 2]pit bull? Yes, she's quite spunky[else if libido of Dominick is 3]pretty poodle? Yes, she's quite beautiful[end if]. I take it you would like to see her?' he says. Not bothering to await your response, he gives a simple motion to one of his display girls, who giggles and heads to the back.";
	say "     While she's fetching the [if libido of Dominick is 1]husky[else if libido of Dominick is 2]pit bull[else if libido of Dominick is 3]poodle[end if], you get presented with Dom's cock and told to suck him in preparation. You do so eagerly, moaning softly as you take his potent rod into your mouth. You lick and suck on it, doing your best to please the alpha stud. You lavish attention upon his spire, working your tongue up and down his length from thick knot to tapered, drooling tip.";
	attempttowait;
	if libido of Dominick is 1:		[Female Husky]
		say "     A needy whine is the first you notice that the female husky has arrived. The former stray has been cleaned and groomed and is looking much prettier. She's got a new collar on and is panting at the sight of you going to town on Dom's cock. She fingers her dripping snatch, which leads you to notice she's got a tattoo above it marking her as a [']breeding bitch['].";
		say "     At Dom's behest, you make room for her between his legs and the two of you take turns sucking him off. The two of you both share and compete at once - working to please your common master, but each vying to be the one to finish him off[if cunts of player > 0 and cocks of player is 0]. This does not stop you both from fingering one another as well[else]. This does not stop you from taking over fingering her as well[end if], showing it to be a friendly competition.";
		attempttowait;
		let playernum be 100 + libido of player + ( level of player * 2 );
		let monsternum be 190;
		let playernum be a random number between 1 and playernum;
		let monsternum be a random number between 1 and monsternum;
		if playernum > monsternum:	[player wins]
			say "     You are the lucky winner, getting to taste several thick blasts of Dom's hot seed before he pushes you back. You are both then splattered[run paragraph on]";
		else:	[husky wins]
			say "     The husky girl is the lucky one, sucking greedily on Dom's shaft for the first several blasts. After pushing her back, you are both splattered[run paragraph on]";
		say " with several more shots of his cum, marking each of you as his bitches. The two of you catch what you can on your tongues and, once he's finished, you sloppily lick each other's face for the rest of it.";
		say "     After that, the husky girl is given a few treats and a playful fingering from Dom to bring her to a yipping climax before he sends her back to await his next visit. Once she's gone, you are treated much the same, fingered to a climax as thanks for providing your sexy stud with another husky bitch to breed.";
	else if libido of Dominick is 2:		[Pit Bull]
		say "     You are suddenly pulled back when the pit bull arrives, the tough dog moving to take your place. 'Back off, bitch,' she says. 'Let me at that.' She's looking much better than her junkyard days, her coat clean and brushed and she's got a spiked leather collar with a tag around her neck.";
		say "     After giving the husky's shaft a few licks, she turns around and gets on all fours. She raises her ass and tail to him with a needy whine. Dom smiles down at the wanton display and mounts the presenting bitch. As you watch, his slick shaft sinks into her hot, wet cunny and starts fucking her.";
		attempttowait;
		say "     Dom's paws roam over the tough girl's sexy bod, making sure she's rewarded for submitting so readily to him. He caresses her breasts and nipples, pets her strong flanks and fingers her sensitive clit. As he continues to make love to her, his pace accelerates and he steadies himself on all fours. At his behest, you take over the other tasks and soon you're on your back behind him with your face buried at their union.";
		say "     With a front-row seat for the action, you can see Dom's pulsing rod saw in and out of her dripping snatch. You also notice that she's got the words [']tough['] and [']bitch['] tattooed along her inner thighs, flanking her stuffed cunny. Were you to think about it, you might be puzzled by how it shows clearly through the fur, but your mind is elsewhere - specifically on the hot, doggy sex you're seeing. You bury your face between those marked thighs and start licking, sliding your tongue across both Dom's shaft and the pit bull's wet pussy.";
		attempttowait;
		say "     Between the pounding she's receiving and your licking tongue, the horny female has several quick orgasms before building up to a big finale. You lap up her juices from each of these eagerly and caress your master heavy nuts as his climax approaches. You get to watch as Dom's knot stretches her cunt wide with every thrust before finally popping into her, tying her to him. You move your lips to suck on her hard little clit to finish her off even as you feel his plump orbs pulse, emptying their load into the moaning, barking bitch. You're treated to a fresh splash of her hot juices, spiced with dribbles of Dom's cum leaking around his thick knot.";
		say "     After their orgasms fade to an afterglow which leaves them both panting heavily, you move your tongue away from their oversensitive loins and wait. You finger yourself vigorously to the memories of the event and to the sight of their tied loins. You know full well that Dom's virile seed is in her womb and seeking to knock up the tough bitch with a litter of his pups. The thought of this once forcefully independent girl turned into a willing breeding slut is thrilling. It makes you eager to be mounted and bred yourself. As you're picturing that, the husky's deflating knot pops free and a gooey splatter of husky semen and femme juices pours out onto your face. You open your mouth and catch as much of it as you can while fingering yourself to a powerful, moaning orgasm while the pit bull bitch strides off proudly.";
	else if libido of Dominick is 3:		[Pink Poodle]
		say "***Pink Poodle";
	if HP of Dominick is 60, now HP of Dominick is 61;
	now libido of Dominick is 0;


Section 9 - Notes

[  HP of Dominick  ]
[  0 = Not met     ]
[  1 = Met         ]
[  2 = Talked      ]
[  3 = Gave oral   ]
[  4 = Had sex     ]
[  5 = More sex    ]
[ 20 = Omega       ]
[ 60 = Beta        ]

[  XP of Dominick - total captures ]

[  libido of Dominick - last capture ]
[ 1 = Female Husky   ]
[ 2 = Pit Bull       ]
[ 3 = Pink Poodle    ]

[ Future parts notes ]
[ Heat w/auto-sex - * ]
[ Remaining scenes ]
[ Cum meal: bowl/twat ]
[ Compulsion mechanic ]
[ Beta - Training - * ]
[      - Capture: Female Husky - * ]
[      - Capture: Pit Bull (F) - * ]
[      - Capture: Pink Poodle? - * ]
[      - Reward: F Husky ]
[      - Reward: Pit Bull ]
[      - Reward: P Poodle ]
[ Omega ]
[ Cock size v. Breederslut body - * ]
[ Full TF fuck-spree ]


Dominick ends here.
