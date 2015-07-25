Version 1 of Dominick by Stripes begins here.
[ Version 0.5 - Framework and first-time oral]

"Adds an ultra-dominant male Husky to Flexible Survival."

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
	otherwise if hp of Dominick is 2:
		say "     [one of]Dom takes a seat in his chair, letting the two doggy girls lavish attention upon his cock in an arousing display.[or]Dominick runs a paw along his exposed cock.  'My cock's always out; the only time I sheathe is inside one of my toys.'[or]Dom [if cunts of player > 0]runs his paws over you, letting a paw slip to your pussy and give it a teasing tap[otherwise]grinds that stiff cock of his against your thigh[end if], causing you to moan.  'I think you'd make a fine addition to my toys, you slut.'[or]Rather than talk, Dom pushes you down to your knees and rubs his shaft against your face.  The scent of it fills your nose with his manly scent, making your mouth water.[or]'I keep good care of my [if cunts of player > 0]breeding [end if]bitches.  Isn't that right, girls?' he asks, groping a breast on each of them.  They pant and moan at his touch.[or]Dom licks your ear while groping you from behind.  '[if cocks of player > 0 and cunts of player > 0]You herms are nothing but wannabe bitches for true studs like me[otherwise if cunts of player > 0]I bet that juicy cunt of yours is just aching for a true stud like me to fill it[otherwise if cocks of player > 0]It's hardly worth my time to bother with a slutty male like yourself... but you can always try[otherwise]I guess it's only natural for a neutered slut like yourself to suck up to true stud like me.  Not that I have much use for the likes of you... but you can always try[end if].  How about you get on your knees and I'll show you your place here?'[at random]";
	otherwise if hp of Dominick is 3:
		say "***regular conversation - oral only.";
	otherwise if hp of Dominick is 4:
		say "***regular conversation - has fucked player.";


Section 5 - Sex Mechanics

the fuckscene of Dominick is "[sexwithDominick]".

to say sexwithDominick:
[	setmonster "Breederslut";
	choose row monster from the table of random critters;	]
	if hp of Dominick < 2:
		say "     With the way his cock's standing tall, you're sure he'd be up for it, but it's still best to talk to him first.";
	otherwise if lastfuck of Dominick - turns < 4:
		say "     'An eager little slut, aren't you?  I have other bitches to tend to right now.  Wait your turn like a good puppy.'";
	otherwise if hp of Dominick is 2:
		say "[sexwithDominick_00]";
	otherwise:
		say "[dominick_sexmenu]";

to say dominick_sexmenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Doggy-style";
		now sortorder entry is 1;
		now description entry is "let the big husky mount you";
		choose a blank row in table of fucking options;
		now title entry is "Lap ride";
		now sortorder entry is 2;
		now description entry is "get bounced on the husky's big pole";
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 4;
		now description entry is "take it up the ass";
[	otherwise if player is mpreg_ok:		[optional for later]
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
	[infect "Breederslut";]	[***]
	[increase hp of Dominick by 1;]
	now lastfuck of Dominick is turns;
	say "[bracket]Scene will repeat for now.  More to come in time. - The Mgmt.[close bracket][line break]";

to say sexwithDominick_01:
	say "***doggy style";

to say sexwithDominick_02:
	say "***lap ride";

to say sexwithDominick_03:
	say "***anal";

to say sexwithDominick_04:
	say "***suck his cock";

to say sexwithDominick_05:
	say "***cock worship";


Section 7 - Notes

[ hp of Dominick ]
[ 0 = Not met    ]
[ 1 = Met        ]
[ 2 = Talked     ]
[ 3 = Gave oral  ]
[ 4 = Had sex    ]

[
NOTES:
B:
Sending in the $30 now. Also. I'm sending in an extra $45 in regards to a new NPC I would like. Here is the description: 
Male, husky, extremely dominant. Plays with anyone think similar to Lindsey. Shifts player towards female husky. Treats NPC as his bitch even in conversation. Dislikes males, being overly rough if you are one. Herms he is better with but still likes pure bitches. Loves knotting his victim. Players with the female husky genitals end up getting it the "worst". I'm expecting this to be the average 10 hour long write time. The rest will be payed next paycheck. 

TS:
That all sounds feasible.  Anything special for this husky's appearance, name or other details or shall I just go with what works at the time?  Since I believe Wahn's already got a male husky you can bring to the bunker, I'll give this guy his own location to stay at.  This material will have to wait at least a little bit, as I want to do a chunk more of all that Patreon time, but I'll slip back to do Micaela's scene and maybe start on the husky before that's all done.  Depends on how it goes.

B:
Take your time. I'm in no rush. I think the name Dominick (Dom for short) is perfect for the likes of him. And own location is fine. Appearance? Something along the lines of the pic. Since he is Dom to the extreme, he doesn't bother letting himself sheathe unless it's in one of his toys, so always hard. Knot large, even when deflated, and no hopes of escaping (by which he quite verbally lets his prey know once he has started the process of knotting) once he has tied them. Males don't get anal, herms and females have the option. Males only get the option of oral, wherein he brutally mouthfucks them, spitting out verbal insults and degradation then whole time until he knots the mouth and dumps his load down their gullet followed by urine, telling the male that all they are good for is being a toilet. Females are nothing but breedersluts to him. Herms, he finds to be wannabe sluts/bitches. And talking results in massive lust gain. He isn't worried about conversation. He is just worried about making another slut, so he will do things to the player in conversation like slap their cunt if they have once, grope rather roughly, or growl and push them to all fours and rub his shaft across their face to give them a nice whiff (but not force the sex. Just only ever increasing the player's lust). Something along those lines. 

TS:
That's all workable except for the forced WS.  That'll have to only appear if the player is set to accept WS content.  Some players won't be pleased by the no-anal-for-males rule, but that can be done and they'll have to deal with it.  I'll try to remember to put in some character notes so it isn't inadvertently changed in the future.

B:
Well, maybe if they have mpreg he might be willing to do some anal. And agreed on the ws option. Completely forgot because I always have mine on max. 

TS:
We can always worry about the MPreg-males later, but I'll be sure to include that part in the notes too.  Ditto here for the WS level, though I've always got them all on max. :)

B:
In Dom's special location, would it be possible to add something like the feeding trough at Stables. But instead of food he makes you eat cum from a bowl or a freshly creamed slut of his? Causing infection and affecting hunger and thirst naturally. 

B:
Ok. So I have 2 hours on Dom. How much do you think he will need? And remember I want him to have his own infection as well: breederslut. Something along the lines of a combination of these two. Some degrading term like "fucktoy" or "breeder bitch" written just above the mound in a "nanite tattoo" so that way it can disappear if your torso changes. Possibly even an addiction system similar to Rex or Doctor Mophat, with special a scene or 2 if you ignore your addiction I realize this is going to make him HUGE, so I don't expect you to work solely on him and will probably have to do this in installments. 

TS:
I think we're looking at 12 hours to get proper coverage of the character, these features and basic survive/succumb endings.  More scenes and enhancements can always come later.  I do have a few questions and notes:
- Would you prefer the compulsion to return to Dom to be based on player body infection or on their crotch infection?  The latter would make it work as a heat, but only while female and not pregnant.  In this case, perhaps the former would be better, but whichever you'd prefer.
- Should Dom's location have some of his other breeder bitches around as 'examples' and 'trophies', or are they off elsewhere?  This could be somewhere out of sight or off roaming around, but always drawn back to their master.  If not shown, their reveal and where they're kept would make for a good part of the succumb ending.
- Thanks for the refs.  They should help me come up with something sufficiently sexy and different from the regular husky girls.  I'm thinking the infected player'll be about 5' 5" and Dom'll be just under 6 feet tall.
- It'll probably be best to start with the character and some scenes, then add the infection and compulsion, with additional scenes worked in along the way.

B:
- compulsion based on body. I think it work better anyway along with him. With based on groin it'd be a simple heat. This is a compulsion your entire being is pushed by. Even when you are pregnant your body demands you give in to him. 

-I don't see why he couldn't have both, or his own special "game over option". Probably something along the lines of two or three girls, constantly pregnant, servicing his cock when you look at him or are giving birth or having cum spew from their cunts if you look at them. For the game over and the option to end it early you are brought to the basement where you find dozens, if not hundreds more of these girls. But they aren't just standing there. They are treated as livestock. In the game over you can do what you like with it. In the option you need low humanity (10 or less) and high addiction (that way it isn't too easy to get this option). When the latter is picked he brings you downstairs and gives you one last chance. If you do a stack up addiction something like 7-9 could be you can resist and 10+ instant givein. Agreeing has him chain you up and you become one of the livestock, barely given the chance to leave the stocks except to be one of the "greeters" upstairs for a month or so. Basically, make it like a more graphic version of the ending. 

-No problem on the ref photos. I've got a ton of material to work with. I'm even considering coming up with Micaela's sister after we are done with Dom and the Tentacle Clothing. 

-Yeah. Some of this stuff I can see being very long. It's important to get the general and basic material down first then do his unique modifiers later. I will send enough to cover the basics first that way we can get him up and out. How much do I need since I already covered the first 3 hours?

TS:
I was thinking more along the lines of a 'kennel' or 'harem' than 'livestock'.  Does a kennel of puppy-makers sound good to you?

It wouldn't be really feasible to make a 'survive' ending that allows the player the option of joining Dom's brood of breeders, as that would guarantee throwing off all the other survival ending content (NPCs and pets).  There is also no distinction between 'ending early' and the regular endings, it's just driven by humanity.  In general, anything under 10 is considered 'succumb'.  Conceivably you could make it to the end of the countdown, but your humanity be too low and you end up going feral before the actual rescue.  I can certainly make an extended ending for players who've been back to Dom repeatedly and thus more greatly addicted to him.

To get him started, I think we're looking at about 6 or 7 hours total since I'll need to add at least some description and background stuff involving the display girls.

B:
From Bradley: Kennel works. I used the term livestock, but I didn't know what else to call it. Kennel girls are good. And I'm afraid that makes go ahead and go with what you stated. Ok. So I need to send you another $45-$60. I can go ahead and do so tonight. Expect to see it before midnight. ​

B:
Cool. And I think I found a red picture for the kennel girls for Dom. 
]

Dominick ends here.