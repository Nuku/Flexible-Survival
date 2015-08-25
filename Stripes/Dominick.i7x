Version 1 of Dominick by Stripes begins here.
[ Version 1.2 - Additional sex and Breederslut infection ]

"Adds an ultra-dominant male Husky NPC to Flexible Survival."

Section 1 - Lead-in Event

Corrupt Kennel is a situation.
The sarea of Corrupt Kennel is "Forest".
when play begins:
	add Corrupt Kennel to badspots of furry;
	add Corrupt Kennel to badspots of guy;

Instead of resolving Corrupt Kennel:
	say "     As you're cutting through a quiet neighbourhood half-overgrown by trees, the silence is suddenly broke by the sounds of a struggle in the building you're passing.  The door flies open as a male husky pushes through.  While your first instinct is to expect an attack from him, he barely notices you, pushing past you after knocking into a parked car.  With him so close, you can see his blackened eye and broken jaw.";
	say "     'Don't you come back, you fucking cur!  Otherwise you'll end up as one of my bitches!'  Turning to this new voice, you find another husky standing in the open doorway.  He rubs his bloodied knuckles, the wounds quickly sealing.  This second husky watches the first run off with his tail between his legs, standing firmly in the doorway of what you now realize is a former kennel.";
	say "     'Damn crazies.  There's one every now and then coming to sniff around,' he says more calmly as he notices you there.  'You're welcome to come in.  You still seem sane enough[if cunts of player is 0].  Though you better not be thinking of getting at my bitches, or you'll get the same.'  He pauses and eyes you coldly.  'No, scratch that.  Consider what happened to him as your one and only warning.'[otherwise if cocks of player > 0].  Though you better not be thinking of getting at my bitches, or you'll get the same.'  He pauses and eyes you firmly.  'No, I think you'd prefer to join them.'[otherwise].  I'd welcome the company of another female.'  He eyes you appreciatively.  'Perhaps you might even decide to stay.  As you've seen, you'd certainly be safe here as one of my bitches.'[end if]";
	say "     Shall you go inside?";
	if the player consents:
		now hp of Dominick is 1;
		now Happy Puppy Kennel is known;
		move player to Happy Puppy Kennel;
		now battleground is "void";
	now Corrupt Kennel is resolved;


Section 2 - Happy Puppy Kennel

Happy Puppy Kennel is a room. It is fasttravel. It is private. It is sleepsafe.
The description of Happy Puppy Kennel is "[hpkdesc]".

the scent of Happy Puppy Kennel is "There's a strong, canine scent suffusing the place - most prevalently that of Dominick.";

to say hpkdesc:
     say "     You're standing the front foyer of what was once the Happy Puppy Kennel.  The posters of pedigree dogs on the wall and the large wall decals of happy cartoon puppies are at odds with its current residents.  Dominick, when not walking around the room or standing watch, lounges in a big chair behind the desk.  His knotted cock is perpetually erect, even after his pets have tended to him.  These pets are a collared pair of nude doggy girls, both of whom sit on the floor to either side of his chair and fawn over the studly male.  One's a pink-furred husky and the other's a teal-coloured samoyed.  Both seem quite simple creatures, lost to their lusts and obedient to their canine master.";


Section 3 - Dominick

Dominick is a person.  Dominick is in Happy Puppy Kennel.
The description of Dominick is "[dominickdesc]".
The conversation of Dominick is { "Bitches love me!" }.
the scent of the Dominick is "Dominick has a strong, commanding scent that makes you want to bury your face in his balls and take a big, strong whiff of him.".
understand "Dom" as Dominick.

to say dominickdesc:
	say "     Dominick (or Dom, as he prefers), is a well-built husky male.  He's got a confident stance as he looks around the foyer of the former kennel.  While you may have first mistaken him for another of the husky males you've seen out in the city, further examination shows he likely has a different strain from there.  He stands just under six feet tall and has a somewhat different build than the others.  His face and muzzle is broader and more cartoonish than a regular husky, further emphasized by the wolfish grin it often bears as he looks at you or his slutty pets.  He has a crop of bluish hair atop his head that becomes bluish fur down his back.  This changes of the more typical grey of normal huskies on his shoulders and around his sides before transitioning fully to white for his chest and belly.";
	say "     He's got a plump cock that's perpetually erect.  His semi-inflated knot rests outside his white sheath, keeping the furry sleeve from covering his manhood.  And quite the impressive manhood it is - thick, long and decidedly canine-shaped, but with a pinker flesh tone.  It's pointed tip is pierced with a ring-shaped Prince Albert.  Beneath it hangs a plump ballsac covered in snowy fluff and filled with his heavy, virile balls.  All in all, you can't help but find your eyes drawn back to it over and over, the tantalizing sight making your mouth water[if hp of Dominick > 3] for more[end if].";


Section 4 - Dialog

Instead of conversing the Dominick:
	if debugactive is 1:
		say "DEBUG (Dominick) -> HP: [hp of Dominick] <- DEBUG[line break]";
	if hp of Dominick is 0:
		say "***Unknown error.  Adjusting.";
		now hp of Dominick is 1;
		now Corrupt Kennel is resolved;
		now Happy Puppy Kennel is known;
	otherwise if hp of Dominick is 1:
		say "     'Well look at you,' he says with a confident smile.  'If you're coming in here, you must be looking for something.  And I think it's more than just a safe place to hide...'  He cups his balls and his cock twitches meaningfully.";
		say "     'I'm Dominick, but you can call me Dom.  Or Master[if player is herm].  You might make for a good bitch with a little work.' Moving in close, he runs a paw over your ass[otherwise if player is female].  You have a makings of a fine bitch in you, I'd say.'  He moves in close and runs a paw possessively over your ass and then across your crotch[otherwise].  I don't have much need for males around here.  I'm a top-ranked, A-1 breeding stud.  Though if you want to stay here and be safe, you can always try 'sucking up' a little.'  He grins lewdly holding his dick out[end if].";
		now hp of Dominick is 2;
	otherwise:	[***]
[	otherwise if hp of Dominick is 2 or hp of Dominick is 3:	]
		say "     [one of]Dom takes a seat in his chair, letting the two doggy girls lavish attention upon his cock in an arousing display.[or]Dominick runs a paw along his exposed cock.  'My cock's always out; the only time I sheathe is inside one of my toys.'[or]Dom [if cunts of player > 0]runs his paws over you, letting a paw slip to your pussy and give it a teasing tap[otherwise]grinds that stiff cock of his against your thigh[end if], causing you to moan.  'I think you'd make a fine addition to my toys, you slut.'[or]Rather than talk, Dom pushes you down to your knees and rubs his shaft against your face.  The scent of it fills your nose with his manly scent, making your mouth water.[or]'I keep good care of my [if cunts of player > 0]breeding [end if]bitches.  Isn't that right, girls?' he asks, groping a breast on each of them.  They pant and moan at his touch.[or]Dom licks your ear while groping you from behind.  '[if cocks of player > 0 and cunts of player > 0]You herms are nothing but wannabe bitches for true studs like me[otherwise if cunts of player > 0]I bet that juicy cunt of yours is just aching for a true stud like me to fill it[otherwise if cocks of player > 0]It's hardly worth my time to bother with a slutty male like yourself... but you can always try[otherwise]I guess it's only natural for a neutered slut like yourself to suck up to true stud like me.  Not that I have much use for the likes of you... but you can always try[end if][if hp of Dominick is 2].  How about you get on your knees and I'll show you your place here?'[otherwise].'[end if][at random]";
[	otherwise if hp of Dominick is 4:
		say "***regular conversation - has fucked player.";		]


Section 5 - Sex Mechanics

the fuckscene of Dominick is "[sexwithDominick]".

to say sexwithDominick:
	setmonster "Breederslut";
	choose row monster from the table of random critters;
	if hp of Dominick < 2:
		say "     With the way his cock's standing tall, you're sure he'd be up for it, but it's still best to talk to him first.";
	otherwise if lastfuck of Dominick - turns < 4:
		say "     'An eager little slut, aren't you?  I have other bitches to tend to right now.  Wait your turn like a good puppy.'";
	otherwise if hp of Dominick is 2:
		say "[sexwithDominick_00]";
	otherwise:
		say "     Dom sees your gaze continually returning to his dick and grins.  He exudes self-confidence as he takes a seat in his chair and runs a finger slowly up his shaft.  His thick meat gives a twitch and dribbles a little pre - a sight that has you lick your lips.  'I can tell you need it, you slut.  Come on then[if cunts of player > 0], get to it[otherwise]- start licking[end if].'";
		say "[dominick_sexmenu]";

to say dominick_sexmenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Doggy-style";
		now sortorder entry is 1;
		now description entry is "let the big husky mount you";
[	if cunts of player > 0 and hp of Dominick >= 4:
		choose a blank row in table of fucking options;
		now title entry is "Lap ride";
		now sortorder entry is 2;
		now description entry is "get bounced on the husky's big pole";
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 4;
		now description entry is "take it up the ass";	]
[	otherwise if player is mpreg_ok:		[***optional for later]
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 4;
		now description entry is "take it up the ass";	]
	choose a blank row in table of fucking options;
	now title entry is "Suck his cock";
	now sortorder entry is 8;
	now description entry is "get between her legs and suck her cock for a sweet treat";
	choose a blank row in table of fucking options;
	now title entry is "Cock worship";
	now sortorder entry is 9;
	now description entry is "lavish that doggy cock with attention";
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
				otherwise if nam is "Lap ride":
					say "[sexwithDominick_02]";
				otherwise if nam is "Anal":
					say "[sexwithDominick_03]";
				otherwise if nam is "Suck his cock":
					say "[sexwithDominick_04]";
				otherwise if nam is "Cock worship":
					say "[sexwithDominick_05]";
	infect "Breederslut";
	if hp of Dominick >= 5:
		infect "Breederslut";
	decrease humanity of player by 5;
	now lastfuck of Dominick is turns;
	wait for any key;


Section 6 - Sex Scenes

to say sexwithDominick_00:
	let doggytype be false;
	if facename of player is listed in infections of Caninelist or bodyname of player is listed in infections of Caninelist or cockname of player is listed in infections of Caninelist:
		now doggytype is true;
	say "     The tantalizing sight of Dom's doggy cock gets too tempting to resist any longer.  Dropping to your knees before him, you nuzzle those plump balls and take in the heady scent of the canine stud.  You slip further into lustful need, stroking his manhood while licking and kissing those big balls.";
	say "     Dom leers down at you.  'That's it, you slut[if cunts of player > 0].  You girls can't get enough of my big meat.  It's just what a bitch like you needs, isn't it?' he says as he takes hold of your head and grinds his hard, leaking shaft across your cheek.  He doesn't bother waiting for your response, pushing his cock past your lips as soon as you open your mouth[otherwise].  That's all you guys are good for - licking my balls and polishing my cock.'  He rubs said cock across your cheek, leaking precum onto your face.  The scent of his arousal turns you on all the more and the next time you take a panting breath, he pushes his cock past your lips[end if].  With his shaft stuffed in your mouth, you're treated to a steady dribble of doggy pre that is deliciously exciting.";
	attempttowait;
	say "     As you lick and suck on his canine rod, the flavour seeps deeper into your senses.  It fills you with arousal, a [if cunts of player > 0]heat growing in your loins.  Your pussy clenches,[otherwise]hunger growing in your belly.  You salivate uncontrollably, your mouth[end if] growing increasingly wet with every heady breath of his musk you take in[if doggytype is true].  His pheromones are particularly effective, arousing your carnal canine desires[end if][if cocks of player > 0].  Despite how turned on you've gotten, your cock remains flaccid, unwanted and unneeded when compared to the perfect specimen you're sucking on[end if].";
	if cunts of player > 0:
		say "     'Keep going, you slut.  You're a good girl, aren't you?  And there's nothing a good girl likes more than a big, juicy dick.'  You can only moan wetly in response, sucking greedily.  A [if doggytype is true]canine [end if]corner of your mind agrees with him - you certainly can't seem to get enough of his pre.  You long for a more substantial treat as well.  And when he starts thrusting into your mouth harder, you know you'll be getting it soon.";
		attempttowait;
		say "     With him pushing the tip of his hard cock down your throat, you do your best to stretch your mouth open wide to allow his knot entry.  'Mmm... nothing like a hot [if cocks of player > 0]wannabe [end if]bitch's hot hole,' he pants.  'I'm gonna- uggh- tie with that slutty mouth of yours annggg... and feed you my hot- ohhh... hot load.  Gotta make sure you don't lose a single dr- Rrrrrrr- drop of my rich spunk.'  He thrusts harder, forcing the growing bulge in and then holds your head steady as the knot continues to inflate.  'It's always so tough to train you sluts to take my knot for the first time, but I gotta make sure my new girl is well-fed.'  Your response to this is to suck and swallow over his pulsing prick all while getting your mouth stretched open wider by his bulging shaft.  It's difficult and makes it hard to breathe, but that only makes every gasp of his rich scent all the more satisfying.";
		say "     Dom's swollen knot stuffs your mouth full, keeping you locked onto his cock as it throbs in your sore maw.  You hardly notice the discomfort though, instead focused on how his plump ballsac draws up, signalling his eminent release.  And it is quite the release indeed, the first of several powerful blasts of thick semen shoot down your throat, filling your belly with warmth.  The flow is quite voluminous, causing a backwash that floods your mouth to be trapped behind his knot, giving you a taste of his potent, virile semen.  Your eyes roll back in your head as the delightfully rich flavour fills your senses, becoming all you can think about.";
		attempttowait;
		say "     True to his word, the bulging knot is locked tightly inside your mouth, making sure you don't lose any of his hot load.  You remain tied to him for some time, giving you ample opportunity to swallow down his copious load.  As you lick his virile rod completely clean, he continues to deride you, praising you as his horny, cock-sucking pet.  And given how eagerly you're going after the least few dregs of his delicious load, your sex-addled mind accepts the sexy stud of a dog's words.  When it eventually does go down, you release his shaft reluctantly.  He grinds his balls and slick shaft across your face, making sure his scent is thoroughly marked onto it, ensuring the dominant husky's scent will be in your nose for some time.";
	otherwise: 
		say "     With him pushing the tip of his hard cock down your throat, you do your best to stretch your mouth open wide to allow his knot entry.  'You should feel lucky I'm even letting you polish my rod.  You slutty males are so pitiful, it hardly seems worth it to spill my seed in you.'  You whimper and moan at the prospect of being denied the virile male's seed and work his pulsing shaft all the harder.  He grins at this and grabs your head so he can roughly thrust into your mouth.  'Alright, you greedy fag, take that big knot.  I'm gonna- uggh- tie with that slutty mouth of yours annggg... and there'll be no getting out of it, you man-whore.  Bad enough I'm spending it in you.  NNnnggg- Not gonna let you spill a drop of my prime puppy-making batter.'  Your response to this verbal abuse is to suck and swallow over his pulsing prick all while getting your mouth stretched open wider by his bulging shaft.  It's difficult and makes it hard to breathe, but that only makes every gasp of his rich scent all the more satisfying.";
		say "     Dom's swollen knot stuffs your mouth full, keeping you locked onto his cock as it throbs in your sore maw.  His thrusts are short and hard, rattling your brain as he pounds into your overstretched mouth and throat.  You hardly notice the discomfort though, instead focused on how his plump ballsac draws up, signalling his eminent release.  And it is quite the release indeed, the first of several powerful blasts of thick semen shoot down your throat, filling your belly with warmth.  The flow is quite voluminous, causing a backwash that floods your mouth to be trapped behind his knot, giving you a taste of his potent, virile semen.  Your eyes roll back in your head as the delightfully rich flavour fills your senses, becoming all you can think about.";
		attempttowait;
		if wslevel > 1:
			say "     True to his word, the bulging knot is locked tightly inside your mouth, making sure you don't lose any of his hot load.  Being tied to him, you have ample opportunity to swallow down his copious load.  As you lick his virile rod completely clean, he continues to deride you.  'Hungry for more, I see.  Alright, you cock-slut, have some more,' he pants.  A fresh rush of hot fluid goes down your throat, but this time it's his piss that backwashes into your mouth.  You cough and sputter at the acrid taste suddenly washing away the flavour of his semen, but his knot keeps it all locked inside.  Yet despite the harshness of it, it is also rich with that musky scent of the stud.  The experience grows increasingly arousing to your musk-confused brain.  Why shouldn't such an impressive male use you as he sees fit?";
			say "     'Good job, you stupid toilet,' he growls, rubbing your jaw and throat as you do your best to swallow down the rest of his urine.  'It's such a waste spilling my seed into you when I could be breeding puppies, so the least you can do is let me wash it down with my piss.  It's about all you're good for,' he adds, your sex-addled brain accepting the sexy stud of a dog's words.  When his knot does eventually go down, Dom pulls it free right away and slaps it across your cheek.  The harsh yet arousing taste of the dominant husky's drained fluids lingers in your mouth for some time, making you long for the next opportunity to get some.";
		otherwise:
			say "     True to his word, the bulging knot is locked tightly inside your mouth, making sure you don't lose any of his hot load.  You remain tied to him for some time, giving you ample opportunity to swallow down his copious load.  As you lick his virile rod completely clean, he continues to deride you, calling you the man-slut and cocksucker that you clearly are.  And given how eagerly you're going after the least few dregs of his delicious load, your sex-addled mind accepts the sexy stud of a dog's words.  When it eventually does go down, Dom pulls it free right away and slaps it across your cheek.  The arousing taste of the dominant husky's drained cum lingers in your mouth for some time, making you long for the next opportunity to get another load.";
	decrease humanity of player by 5;
	infect "Breederslut";
	increase hp of Dominick by 1;
	now lastfuck of Dominick is turns;


to say sexwithDominick_01:
	say "     Feeling the aching need to have him buried inside you[if hp of Dominick >= 4] again[end if], you drop onto all fours and present yourself to him.  Grabbing your ass with both paws, he presses his muzzle to your muff and gives you a long, slow lick up your pussy[if anallevel > 1], taint and asshole[end if].  This sends shivers through you, prompting you to push back against his slobbery tongue.";
	say "     'I appreciate your eagerness, my little pet, but you need to work on your stance if you want to be a proper pedigree bitch of mine,' he says.  His paws roam over your body, adjusting your stance into a more naturally canine one.  A little press at your shoulders, a reposition of your head and neck, an adjustment of your hips to better raise your rear for to him - all making you a little closer to a perfect show dog.  And as he's making these little shifts, fingers find their way to your snatch, fingering your juicy muff as a reward to encourage you to be a good doggy girl for him.";
	attempttowait;
	say "     Once he's done [if bodyname of player is listed in infections of Caninelist]adjusting you a little closer to pedigree standards[otherwise]adjusting your posture to best display your sexy ass[end if], he moves in to mount you.  'Mmm... take that big doggy cock, my pet,' he pants in your ear as his cock slides into your slick slit.  'You [if cocks of player > 0]wannabe [end if]bitches are nothing but cock sluts in need of a good fucking.'  His canine manhood pushes its way into your [cunt size desc of player] cunt, every inch of it feeling wonderful as it goes in[if hp of Dominick < 4].  He takes his time at first, savouring his new fucktoy pet[otherwise].  He savours the initial penetration as he mounts you anew[end if].";
	say "     You start to moan and pant beneath him as that fine doggy cock of his pistons in and out of you.  His hips drive with bestial energy, fucking you like an animal, making it hard to focus on anything other than the deliciously rough sex.  'Yeah!  Take it, you slutty bitch,' he rumbles in your ear as he gropes you with one paw while screwing you.  'Feel that big cock taking you.  That's all a good girl wants or needs.  All it takes is regular fuckings to keep you satisfied, my pet.'";
	say "     Between the pounding you're getting and the heady scent of his pheromones in the air, your own thoughts are knocked out of your head, leaving room for his words to fill your mind instead.  That cock of his does feel sooooo good and getting fucked by it regularly would be sooooo nice.  Would it be so bad to stay here as his doggy pet?  The other girls seem so happy and he'd keep you safe and well-fucked.";
	attempttowait;
	say "     Dom quickens his pace as he's approaching his climax.  He pounds into your roughly[if cunt width of player < 8], working hard to pop his knot into your tight cunt[otherwise if cunt width of player < 16], working to pop his knot into your cunt[otherwise], helping to stretch your cavernous cunt that little bit more to let his knot in[end if][if hp of Dominick < 4].  'Nnnggg... I always like taking a new bitch for the first time.  Feeling her stretch for me.  And... nggg... in it goes...' he says through gritted teeth, finally popping that deliciously thick knot into you.  'Gotta keep all the high-quality doggy sperm where it can do its job, my pet[otherwise].  'Nnnggg... Time to tie you again, my slutty pet.  I know you love that big knot of mine.  Take it you biiiitch,' he says through gritted teeth, finally popping that deliciously thick knot into you.  '[one of]You're not going anywhere until you're stuffed full of my prime breeding cum[or]You'll be a good breeding bitch in not time[or]Time to fill that belly of yours with my seed[at random][end if].'";
	say "     You cry out in orgasmic release as Dom's knot locks into you.  As your cunt spasms around his shaft, he continues drilling into you with short thrusts that more tug on the cock buried inside you than thrust in and out.  This is enough to push him to orgasm as well, blasting shot after shot of canine cum into your cunt.  And true to his words, the knot means there's nowhere for the excessive flow to go than into your womb.[impregchance][impregchance]";
	if hp of Dominick is 4 and wslevel is 3:
		say "     After the animalistic mating is over, you're left stuck on his knot while lost in the afterglow.  The feel of all that hot doggy sperm inside you is strangely satisfying, making you feel content and passive.  It is some time before Dom's able to remove his manhood from you, releasing a gush of trapped cum when it pops free.  Sandwiching his meat between your buns, he grinds the messy pole against your ass.  This is followed by a brief spray of hot fluid across your back.  As the strong scent hits your nose, you realize the husky's taken a quick piss onto your back, further marking you as his.  This way the dominant husky's scent will linger on you long after you've left.  'But why leave?' you ask yourself, sighing softly as you bask in afterglow.  You keep your rear raised to hold his thick load inside you like a good breeder slut.";
		decrease humanity of player by 3;
	otherwise:
		say "     After the animalistic mating is over, you're left stuck on his knot while lost in the afterglow.  The feel of all that hot doggy sperm inside you is strangely satisfying.  It provides a warmth that seeps through your whole body.  The two other girls come up while you're locked together, licking at the point of your union with their master.  Once his knot does finally go down enough to be removed, they're right there to catch the excess flowing from your stretched cunny and suck his cock clean for him.  Only once they're finished are you permitted to get up unsteadily onto your feet as you try to recall what you wanted to do next.";
	if hp of Dominick < 5, increase hp of Dominick by 1;


to say sexwithDominick_02:
	say "***lap ride";


to say sexwithDominick_03:
	say "***anal";


to say sexwithDominick_04:
	let doggytype be false;
	if facename of player is listed in infections of Caninelist or bodyname of player is listed in infections of Caninelist or cockname of player is listed in infections of Caninelist:
		now doggytype is true;
	say "     Kneeling between the husky's legs, you start licking at that fine cock of his.  The taste of his dick excites your senses, getting you all the more eager and aroused.  Cupping his balls in one hand, you give his meat a long, slow lick from bottom to top.  Once at the pointed glans, you swirl your tongue over it before lowering your lips down around his shaft.";
	if cunts of player > 0:
		say "     'Mmm... that's it, you slut.  You [if cocks of player > 0]wannabe-[end if]bitches are all the same, lusting after a real stud's cock.'  He places a paw atop your head and pushes it down, forcing you to quickly take more of his dripping shaft into your mouth and throat.  You slurp your tongue across it, panting and moaning softly.  His other paw soon follows, gripping your head so he can have you bob up and down on his pulsing rod.";
		say "     As you lick and suck on his canine rod, the flavour seeps deeper into your senses.  It fills you with arousal and a heat growing in your loins.  Your pussy clenches, growing increasingly wet with every heady breath of his musk you take in[if doggytype is true].  His pheromones are particularly effective, arousing your carnal canine desires[end if][if cocks of player > 0].  Despite how turned on you've gotten, your cock remains flaccid, unwanted and unneeded when compared to the perfect specimen you're sucking on[end if].";
		attempttowait;
		say "     Rising from his seat, Dom switches to thrusting into your mouth while holding your head steady.  His delicious cock pulses and throbs as his excitement builds.  Knowing what's coming, you do your best to stretch your mouth open wide in an effort to accommodate the big dog's knot.  'Yeah!  Take it, you slut.  You're gonna take every last drop of my seed and love it.'  It takes some effort, but is nowhere near as difficult as the first time, and soon you're rewarded with the meaty pop of his knot burying itself in your mouth.";
		say "     Dom unleashes his hot, gooey seed down your throat.  Much of it pours right down into your belly, filling you with a satisfying warmth that makes you content, if all the more wet and needy between your legs.  One powerful blast comes after another and what you'd can't swallow fast enough comes bubbling back up into your mouth to give you a taste of his delicious, bestial seed.  Your eyes roll back in your head as the delightfully rich flavour fills your senses, becoming all you can think about until he's finally done and spent.";
		attempttowait;
		if hp of Dominick is 4 and wslevel is 3:
			say "     It takes some time before the husky stud's knot goes down enough for it to pop free of your mouth.  By that point, you've had plenty of time to lick it clean of every last drop of semen you could get.  You're left quite sex-addled by the musky taste of your gooey meal and hardly notice as Dom pushes you to lay on your back with one footpaw.  You're stirred from the haze as hot, wet liquid sprays onto you.  The husky grins down at you as releases a few spurts of piss onto you, further marking you as his.  This way the dominant husky's scent will linger on you long after you've left.  'But why leave?' you ask yourself, sighing softly as you bask in afterglow.  You lay there for some time, enjoying the warm feeling in your belly even as the hot piss marking you cools.";
			decrease humanity of player by 3;
		otherwise:
			say "     It takes some time before the husky stud's knot goes down enough for it to pop free of your mouth.  By that point, you've had plenty of time to lick it clean of every last drop of semen you could get.  When it has eventually gone down, Dom pulls it free and slaps it across your cheek, drawing a submissive whimper from you.  You're left quite sex-addled by the musky taste of your gooey meal and enjoy how its warmth seeps through your whole body.  The arousing taste of the dominant husky's drained cum lingers in your mouth for some time, making you long for the next opportunity to get another load.";
		if hp of Dominick is 4, increase hp of Dominick by 1;
	otherwise:
		say "     'Keep going, you pitiful excuse for a male.  You should feel lucky I'm even letting you polish my rod when I've got fine bitches I could be breeding.  You better make it worth my while.'  He places a paw atop your head and pushes it down, forcing you to quickly take more of his dripping shaft into your mouth and throat.  You slurp your tongue across it, panting and moaning softly.  His other paw soon follows, gripping your head so he can have you bob up and down on his pulsing rod.";
		say "     As you lick and suck on his canine rod, the flavour seeps deeper into your senses.  It fills you with arousal, a hunger growing in your belly.  You salivate uncontrollably, your mouth growing increasingly wet with every heady breath of his musk you take in[if doggytype is true].  His pheromones are particularly effective, arousing your carnal canine desires[end if][if cocks of player > 0].  Despite how turned on you've gotten, your cock remains flaccid, unwanted and unneeded when compared to the perfect specimen you're sucking on[end if].  You pant and lick all the more enthusiastically, wanting to do your best to please the big, virile male.";
		attempttowait;
		say "     Rising from his seat, Dom switches to thrusting into your mouth while holding your head steady.  His delicious cock pulses and throbs as his excitement builds.  Knowing what's coming, you do your best to stretch your mouth open wide in an effort to accommodate the big dog's knot.  'Time to stuff that faggy mouth of yours, you slut.  You're gonna take every last drop of my seed and love it, you cum dumpster.'  It takes some effort, but is nowhere near as difficult as the first time, and soon you're rewarded with the meaty pop of his knot burying itself in your mouth.";
		say "     Dom unleashes his hot, gooey seed down your throat.  Much of it pours right down into your belly, filling you with a satisfying warmth that makes you content, if all the more wet and needy between your legs.  One powerful blast comes after another and what you'd can't swallow fast enough comes bubbling back up into your mouth to give you a taste of his delicious, bestial seed.  Your eyes roll back in your head as the delightfully rich flavour fills your senses, becoming all you can think about until he's finally done and spent.";
		attempttowait;
		if wslevel > 1:
			say "     True to his word, the bulging knot is locked tightly inside your mouth, making sure you don't lose any of his hot load.  Being tied to him, you have ample opportunity to swallow down his copious load.  As you lick his virile rod completely clean, he continues to deride you.  'Hungry for more, I see.  Alright, you cock-slut, have some more,' he pants.  A fresh rush of hot fluid goes down your throat, but this time it's his piss that backwashes into your mouth.  You cough and sputter at the acrid taste suddenly washing away the flavour of his semen, but his knot keeps it all locked inside.  Yet despite the harshness of it, it is also rich with that musky scent of the stud.  The experience grows increasingly arousing to your musk-confused brain.  Why shouldn't such an impressive male use you as he sees fit?";
			say "     'Good job, you stupid toilet,' he growls, rubbing your jaw and throat as you do your best to swallow down the rest of his urine.  'It's such a waste spilling my seed into you when I could be breeding puppies, so the least you can do is let me wash it down with my piss.  It's about all you're good for,' he adds, your sex-addled brain accepting the sexy stud of a dog's words.  When his knot does eventually go down, Dom pulls it free right away and slaps it across your cheek.  The harsh yet arousing taste of the dominant husky's drained fluids lingers in your mouth for some time, making you long for the next opportunity to get some.";
		otherwise:
			say "     True to his word, the bulging knot is locked tightly inside your mouth, making sure you don't lose any of his hot load.  You remain tied to him for some time, giving you ample opportunity to swallow down his copious load.  As you lick his virile rod completely clean, he continues to deride you, calling you the man-slut and cocksucker that you clearly are.  And given how eagerly you're going after the least few dregs of his delicious load, your sex-addled mind accepts the sexy stud of a dog's words.  When it eventually does go down, Dom pulls it free right away and slaps it across your cheek.  The arousing taste of the dominant husky's drained cum lingers in your mouth for some time, making you long for the next opportunity to get another load.";


to say sexwithDominick_05:
	say "     Dropping to your knees before the studly male, you take his stiff member in both hands and start nuzzling it.  You take in his manly scent with a soft moan.  It sends a shiver up your spine[if cunts of player > 0] and makes you wet between your thighs[end if].  There's something captivating about that wonderfully cock.  You feel you have to lavish that perfect doggy dong with the attention it so obviously deserves.  You start to lick and kiss all over it, drawing a pleasured growl from the husky.";
	say "     When you nuzzle down to his plump, virile balls, you feel the soft brush of fur against your sides.  The stud's other pets have moved alongside you and start worshipping that beautiful cock of his as well.  While a part of you doesn't want to share, you know the husky wants them to help.  Besides, his penis deserves all the attention it can get.  And so the three of you swap between his hefty balls, plump sheath, throbbing shaft and drooling glans.  And once it emerges and swells up, his thick knot is given plenty of attention as well.";
	attempttowait;
	say "     The confident male stands up proudly as his trio of pets pay homage to his virility.  You are given the occasional pat on the head or ear scritch, just like the other two doggy girls get[if cunts of player > 0].  'Look at this - three fine bitches who know their place.  Now be sure to lick every inch of it[otherwise].  'Now you pay attention to my two fine bitches here.  They know how to treat my stud cock.'  He slaps it across your face.  'You're nothing but a cock-sucking whore for a real male's cock[end if].'  His words have you increase your efforts, trying to please the dominant alpha.";
	say "     The three of you continue your licking, kissing and caressing of his shaft until he's about to blow.  With a sharp bark, he commands you all to 'Sit!' and then to 'Beg.'  Sitting up and begging like dogs, the two girls lean in closer to you and you follow suit.  With their heads to either side of yours, they hold their muzzles open and whimper with need while Dom pumps his throbbing member.  You open your mouth just as the husky's hot seed begins to spew forth, splattering across your face and into your open mouth.  He shifts his aim, making sure to reward the three of you with a messy coating of his semen.  It clings to you and it delightfully sticky and rich in flavour.  You all obediently hold steady while he cums onto you, only relaxing once he's finished and commands you to clean each other up.  There's a lot of hot [if cunts of player > 0 and cocks of player is 0]lesbian [end if]kissing and licking between the three of you while the spent husky watches on with a smug smile on his muzzle.  'Good girls.  Now play nice.  There's plenty to go around.'";
	if hp of Dominick is 4, increase hp of Dominick by 1;


Section 7 - Notes

[ hp of Dominick ]
[ 0 = Not met    ]
[ 1 = Met        ]
[ 2 = Talked     ]
[ 3 = Gave oral  ]
[ 4 = Had sex    ]
[ 5 = More sex   ]

[ Future parts notes ]
[ Heat w/auto-sex  ]
[ Remaining scenes ]
[ Cum meal: bowl/twat ]
[ Compulsion mechanic ]
[ Beta/Omega ]
[ Cock size v. Breederslut body ]
[ Full TF fuck-spree ]


Dominick ends here.