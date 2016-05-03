Version 10 of German Shepherd for FS by Stripes begins here.
[Version 10 - Adapted for both character GSD (Korvin) and random GSDs - Stripes]
[- Partially based on the version originally authored by Telanda Softpaw -]

"Adds some roaming German Shepherds as well as a unique character on to Flexible Survival's wandering monsters table."

Section 0 - Monster Variables, Flags and Markers

gsd_encounters is a number that varies.		[counts the encounters w/GSDs to rotate in the special GSD.]
gsd_encounters is usually 1.
gsd_special is a truth state that varies.	[marks if encountering the special GSD.]
gsd_special is usually false.
gsd_pet is a number that varies.			[status of relationship w/special GSD.]
gsd_slut is a truth state that varies.		[slut/sub tracker for GSD endings.]
gsd_slut is usually false.
gsd_fled is a truth state that varies.		[tracks if player fled previous encounter w/special GSD.]
gsd_fled is usually false.
gsd_var is a number that varies.			[temporary variable for tracking between scenes.]
gsd_attack is truth state that varies.		[registers if the player fought back or not against the special GSD.]
gsd_attack is usually false.
gsd_male is truth state that varies.		[registers if the player is being trained to be a male packmate.]
gsd_male is usually false.

[        gsd_pet        ]
[ 0 = not met           ]
[ 1 = met him           ]
[ 2 = player lost       ]
[ 3 = lost again        ]
[ 4 = player locked     ]
[ 10 = player won       ]
[ 11 = won again        ]
[ 12 = recruited        ]
[ 100 = banished        ]


Section 1 - Monster Description

to say gsd_desc:
	setmongender 3;		[male]
	choose row monster in Table of random critters;
	now gsd_attack is false;
	if gsd_male is true:
		gsd_set_male;
	otherwise:
		gsd_unset_male;
	now gsd_special is false;
	if gsd_encounters > 2 and gsd_pet is not 4 and gsd_pet < 12 and inasituation is false and a random chance of gsd_encounters in 7 succeeds:
		now gsd_special is true;
		if gsd_pet is 0:
			say "     Approaching you is another of those aggressive German Shepherds.  This one is somewhat different from the others.  Oh, he's physically similar to the others, if buffer than most of the others you've seen.  He does bear a crooked [bold type]scar[roman type] across his cheek and muzzle.  His coat is the typical brown and black of the breed as well.  Like the rest, he's nude and half-hard as he strides towards you.";
			say "     'I was hoping to find some way to amuse myself.  You smell... interesting.  I think I'll enjoy breaking you in,' he says with a lustful growl.";
			say "     It is something in the look in his eyes and the set of his jaw that really distinguishes him in your eyes.  While he clearly has the same crazed lust, there is more [']focus['] to him.  Unfortunately, that focus is aimed squarely at you at the moment.";
			now gsd_pet is 1;
		otherwise:
			say "     That [bold type]scarred[roman type] German Shepherd you met before is back, your paths having crossed once again.  Perhaps he's been looking for you?  And having found you, he approaches [if gsd_pet < 10]confidently[otherwise]cautiously, but[end if] with an aggressive swagger.  The buff male cracks his knuckles and gives a soft growl.";
			if gsd_fled is true:
				say "     'I was hoping to run into you again, cuz we've got some unfinished business.  Are you gonna stick around this time or are you gonna chicken out again?' he taunts as he strides towards you.";
			otherwise if gsd_pet < 4:
				say "     'I was hoping to run into you again.  Let's continue your training.  I'll make a loyal dog out of you yet,' he says as he strides towards you.";
			otherwise if gsd_pet is 4:
				say "      'I thought I smelled you around, pup.  How about you come over here and show your alpha what a good [if gsd_slut is true and cunts of player > 0]bitch[otherwise if gsd_slut is true]slut[otherwise]beta[end if] you are?'  Despite how you may normally feel about him and what he's done to you, being in the presence of your alpha dog triggers something inside you.  The sound of his voice and his scent in your nose arouses you and makes you submit to him.  He is your alpha and you obey, eager to please him.";
				now combat abort is 1;
				now fightoutcome is 22;
				attempttowait;
				say "[losetogsd]";
			otherwise if gsd_pet is 10 or gsd_pet is 11:
				say "     'If I kept looking, I knew I'd find you.  You may've gotten lucky last time, but that's all it was - luck.  I'm top dog around here and that's how it's gonna stay,' he barks.  He strides towards you, clearly intent on taking you down a peg.";
			otherwise:
				say "     'I figured you might be around here.  Smelled the stink of you in the air,' he growls at you.  'I ain't gonna take this uppity shit from you no more.  You're gonna learn your place this time, pup.'";
				say "     For all his posturing, he doesn't come at you right away.  More psyching himself up to dare having another go at the foe who's beaten him so many times already.  It looks like you'll have to face him at least one more time.  And so, rather than waiting for him to finally come at you, you take the fight to him.";
		decrease gsd_encounters by 2;
		if gsd_encounters < 3, now gsd_encounters is 3;
		now gsd_fled is true;	[marked as having fled, will clear on win/loss]
	otherwise if gsd_pet is 4 and inasituation is false and a random chance of gsd_encounters in 7 succeeds:
		say "     You once again cross paths with that [bold type]scarred[roman type] German Shepherd... no, your Alpha, a corner of your mind quickly corrects.  Perhaps he's been looking for you?  Or perhaps you've been unconsciously looking for him?  Regardless, seeing you, he approaches with a confident swagger.";
		say "     The sight of the buff male coming closer makes you excited and you start moving towards him as any thoughts to resist or get away fade from your mind.  When he gets near, you drop to all fours and press your head to his paw.  You receive a head petting and scritch that makes you very happy.  'That's my good [if cunts of player > 0]bitch[otherwise]pup[end if],' he says condescendingly as you submit immediately to him, though his acknowledgement of you as belonging to him pleases and excites you.";
		if gsd_encounters < 3, now gsd_encounters is 3;
		now combat abort is 1;
		now fightoutcome is 22;
		attempttowait;
		say "[losetogsd]";
	otherwise:
		say "     You're faced with a large, bipedal canine creature.  Standing on digitigrade legs, the large canine sports the [one of]traditional brown and tan[or]subtle blue and tan[or]striking black and silver[at random] fur patterns.  It's completely unclothed, which makes it QUITE clear that this is a [']He['].  He's got a furry canine sheath resting against his belly and a pair of golf ball-sized balls dangling beneath.  He looks you over for a moment, tail starting to wag with increasing enthusiasm as he does.  His cock also starts to poke free of its sheath as well, a warning as to what's on his doggified mind.  The crazed canine [one of]lets out an rough growl.  'MMmmm... playtime.'[or][if cunts of player > 0]swaggers towards you.  'Good.  I was hoping to find a cunt to be my bitch[otherwise]growls aggressively.  'I'm top dog around here.  And I'll prove it[end if].'[or]pants with his tongue lolling out.  'Play!' he barks repeatedly as he rushes at you, fists raised and teeth bared - clearly willing to play rough.[or]cracks his knuckles before charging at you.[or]barks a few times before leaping at you.[or]growls aggressively as he stalks towards you.[at random]";
		increase gsd_encounters by 1;
		if gsd_encounters > 6, now gsd_encounters is 6;


Section 2 - Monster Victory

to say losetogsd:
	choose row monster in Table of random critters;
	if gsd_special is false:
		now gsd_var is 0;
		if a random chance of 1 in 3 succeeds:
			say "     The German Shepherd bears you down with a dominant growl before slapping his cock across your face.  You know what he wants and [if hp of player > 0]are happy to provide.  That[otherwise]decide it best to just relent and do it.  Besides, that[end if] canine cock is strangely enticing.  You open your mouth and let it slide past your lips.  The first taste of doggy pre is enough to push away any lingering concerns.  You play your tongue over the canine rod while collecting a flavourful mess to swallow down.";
			say "     You continue licking and sucking on his while playing with his balls.  Feeling his knot swelling up to full size[if scalevalue of player < 3], you squeeze that bulge with your [body size of player] hand and soon coax him to orgasm[otherwise if scalevalue of player > 3], your large size lets you accept it into your mouth as well readily enough and soon coax him to orgasm[otherwise], you struggle a bit before managing to fit his swollen bulb in your mouth.  You coax him to orgasm with your face tied to his crotch, at the small price of an aching jaw[end if].  Once he's spent[if scalevalue of player is 3] and his knot's gone down enough to free you[end if], he slaps his meat across your face again, leaving a final streak of semen across one cheek.  He strides away with a confident swagger.";
		otherwise:
			if cunts of player is 0 or ( anallevel is 3 and a random chance of 1 in 3 succeeds ):
				say "     The victorious dog grabs you by the shoulders and manhandles you onto all fours.  In this position, you are easily mounted by the horny canine.  His dick pokes at your rear a few times before getting lined up and sinking [if cunts of player > 0]erroneously [end if]into your asshole.  You grunt at the rough penetration though that soon turns to canine-like panting as you become aroused by the assfucking you're receiving.  In your mind's eye, you imagine how that canine dick must look driving into your violated pucker as he humps you like a dog.";
				say "     As his peak approaches, you can feel the knotted base of his dick swelling up.  He humps you harder, trying to push it into you and [if scalevalue of player < 4 and player is not twistcapped]eventually [end if]succeeding, locking his hips to yours.  He tugs and grinds his pulsing rod inside your stuffed rectum as he pumps shot after shot of dog semen into your bowels[if cocks of player > 0 or cunts of player > 0], sending you into orgasm as well[end if].  And once finished, he gives no care for you and just remains atop you, panting drool onto your back while waiting for his knot to go down.  When it does, he pulls free so he may go, unleashing a gush of excess sperm from your sore and stretched hole.[mimpregchance]";
			otherwise:
				say "     The victorious dog grabs you by the shoulders and manhandles you onto all fours.  In this position, you are easily mounted by the horny canine.  His dick pokes at your rear a few times before getting lined up and sinking into your pussy.  Your cunt stretches [if cunt length of player > 15]easily [end if]to take the doggy dong and you start panting in a decidedly canine manner.  In your mind's eye, you imagine how that canine dick must look sinking into your wet snatch in an effort to breed you like some stray bitch.";
				say "     As his peak approaches, you can feel the knotted base of his dick swelling up.  He humps you harder, trying to push it into you and [if cunt length of player < 12]eventually [end if]succeeding, locking his hips to yours.  He tugs and grinds his pulsing rod inside your stretched cunt as he pumps shot after shot of dog semen into your womb, sending you into orgasm as well.  And once finished, he gives no care for you and just remains atop you, panting drool onto your back while waiting for his knot to go down.  When it does, he pulls free so he may go, unleashing a gush of excess sperm from your sore and stretched hole.[impregchance]";
	otherwise:
		now gsd_fled is false;	[player did not flee]
		now gsd_var is 1;
		if gsd_pet is 4:					[player is recruited - auto-submits]
			now gsd_var is 0;
			if gsd_male is true:
				say "     Your alpha has a confident grin on his scarred muzzle as you give in to him.  He pounces you with a mock-growl.  The two of you play-fight for a few minutes before pinning you beneath him.  Throughout the play, there's been nips, licks and gropes from the stronger male, but now he's doing so much more.  Your body responds to your alpha's will, becoming more aroused even as tingles of the infection spread through you.";
				infect;
				if cocks of player is 0:
					follow the sex change rule;
				if cunts of player is 0 and a random chance of anallevel in 5 succeeds:
					say "     The big German Shepherd nips at the back of your neck a few times as he moves to mount you.  'Rrrr!  Time to show your alpha what a good packmate you are.'  You playfully struggle a little to excite him further[run paragraph on]";
					if tail of player is not "":
						say ", though your tail does raise readily for him[run paragraph on]";
					say ".  Giving you another grope, he gets you to hold still long enough to thrust into you.  He sinks the first few inches into your yielding asshole, your mind and body accepting your alpha's dominant shaft.";
					say "     The German Shepherd's dick pushes a little deeper with every delightful thrust.  His thrusts are strong and firm, providing your butt with a wonderful pounding.  He holds back from humping you wildly, treating his loyal and obedient packmate well.  Just feeling that strength there, held in check but more than able to take you, is quite erotic.  It is another reminder that you belong right there - under him - without the need to punish you to show it.";
					say "     As the humping goes on, his pace does quicken as your sphincter gets stretched.  A few more hard pushes are enough and his knot finally pops into you.  Tied, he humps in short, fast motions until blasting his hot load into your clutching bowels.  You cum happily as he does, both having greatly enjoyed it and also having enjoyed satisfying your alpha.  You remain flopped out beneath him in a happy daze, enjoying the warmth of the afterglow and of his virile seed inside your rear.  Once his knot comes free, you keep your ass up, not risking letting his precious semen escape before your anus can recover from the stretching to keep it in.[mimpregchance]";
				otherwise if cunts of player > 0 and a random chance of 2 in 3 succeeds:
					say "     The big German Shepherd nips at the back of your neck a few times as he teases a digit across your wet pussy.  'Rrrr!  Despite joining my pack as a male, it seems you've picked up a hot cunt for your alpha.  All the better for you to please your alpha, I'd say,' he growls playfully in your ear.  The sound of his voice in your ear is enough to get you dripping with need and you raise your [run paragraph on]";
					if tail of player is not "":
						say "tail and "[run paragraph on];
					say "hips, presenting your juicy cunt to him, allowing your alpha to sink his dominant shaft into your needy hole.";
					say "     The German Shepherd's dick pounds into you with strong thrusts that frequently press his knot against your clit and juicy folds.  And while you know he'd normally not be so rough on his loyal packmate, you've got a cunt for him to breed and he can't help but make the most of it.  Not that you mind this hard fucking; you moan and whimper in delight with every impact, your body craving having your alpha inside you.  Feeling his strength as he humps you hard and fast is another delicious reminder of why you belong right where you are - underneath him, getting your cunt fucked by this stud of a male.";
					say "     As the humping goes on, the repeated pushes of his knot causes your cunny to stretch open until finally your folds [if cunt length of player < 12]eventually [end if]spread sufficiently.  That thick bulb pushes into you, tying to you him and leaving him only able to make short, fast thrusts that leave you quivering in delight by the time he's blasting his hot load into your clutching vagina.  You orgasm with him, your body delighting in receiving your alpha's canine seed and also having enjoyed satisfying your alpha.  You remain flopped out beneath him in a happy daze, enjoying the warmth of the afterglow and of his virile seed inside your womb.  Once his knot comes free, you flop to the ground and start to masturbate, fingering yourself with the gooey excess that leaks from your stretched cunt in a sexual display that brings a smile to the stud's scarred muzzle.[impregchance]";
				otherwise:
					say "     The big German Shepherd pins you down on your back and nips at your bared throat a few times while humping his erection against your hip.  You can feel his hard shaft and the warmth of his pre, the scent of which excites you all the more.  'Rrrr!  Open wide, my loyal packmate.  Your alpha has a tasty bone for you,' he growls playfully even as he moves to straddle your head.  With his dripping shaft pressed to your face now, you nuzzle and lick it a few times before opening your mouth and accepting it past your lips.";
					say "     The taste of the dominant male's cock is exciting.  You lick and suck at it, working your tongue across the hard flesh.  Precum drools onto your tongue for you to taste, providing a sample of the virile dog's flavour.  He lets you lavish attention like this upon him for a little while before taking your head in his paws and starting to thrust into your wet mouth.  Continue to suck and slide your tongue over that thrusting canine rod until your alpha finally cums.  Shot after shot of runny canine seed spews across your palate and down your throat.  You gulp it down as it comes, moaning softly at the taste of the stud's semen as it floods your senses.  Once spent, the German Shepherd gets you to lick his cock clean while he pets your head like the good doggy packmate you are.";
			otherwise if cunts of player > 0:
				say "     The confident canine grins down at you and rubs a paw atop your head let a common pet.  'That's a good girl.    It's so much better when bitches know their place,' he says";
				if inheat is true or ( gestation of child is 0 and a random chance of 1 in 2 succeeds ) or a random chance of 1 in 2 succeeds:
					say " while guiding you down onto all fours.  You pant eagerly and raise your rear to him, giving him access to your ready and waiting cunt";
					if a random chance of 1 in 2 succeeds:
						say ".  He takes a moment to sample your hot muff, nosing at your rear and letting his doggy tongue lash across your juicy folds for several long licks";
					say ".  With you ready and eager, he mounts you without further delay.";
					say "     His hard shaft thrusts into your juicy cunny as he claims you once again.The German Shepherd's dick pounds into you with strong thrusts that frequently press his knot against your clit and juicy folds.  Not that you mind this hard fucking; you moan and whimper in delight with every impact, your body craving having your alpha inside you.  Feeling his strength as he humps you hard and fast is another delicious reminder of why you belong right where you are - underneath him, getting your cunt fucked by this stud of a male.  At this moment, you are nothing but his bitch and you desire nothing more than that.";
					say "     As the humping goes on, the repeated pushes of his knot causes your cunny to stretch open until finally your folds [if cunt length of player < 12]eventually [end if]spread sufficiently.  That thick bulb pushes into you, tying to you him and leaving him only able to make short, fast thrusts that leave you quivering in delight by the time he's blasting his hot load into your clutching vagina.  You orgasm with him, your body delighting in receiving the canine's seed and also having enjoyed satisfying your alpha.  You remain flopped out beneath him in a happy daze, enjoying the warmth of the afterglow and of his virile seed inside your womb.  Once his knot comes free, you flop to the ground and start to masturbate, fingering yourself with the gooey excess that leaks from your stretched cunt in a sexual display that brings a smile to the stud's scarred muzzle.[impregchance]";
				otherwise:
					say ", grinding his sheath and rising cock against your face.  'Open up, girl, and get sucking.'  The scent of the confident male's manhood right there for the taking only increases your arousal and submissive desires.  With his dripping shaft pressed to your face now, you nuzzle and lick it a few times before opening your mouth and accepting it past your lips.";
					say "     The taste of the dominant male's cock is exciting.  You lick and suck at it, working your tongue across the hard flesh.  Precum drools onto your tongue for you to taste, providing a sample of the virile dog's flavour.  He lets you lavish attention like this upon him for a little while before taking your head in his paws and starting to thrust into your wet mouth.  Continue to suck and slide your tongue over that thrusting canine rod until your alpha finally cums.  Shot after shot of runny canine seed spews across your palate and down your throat.  You gulp it down as it comes, moaning softly at the taste of the stud's semen as it floods your senses.  Once spent, the German Shepherd gets you to lick his cock clean while he pets your head like the good doggy bitch you are.";
			otherwise:
				say "     The confident canine grins down at you and pushes you to the ground beneath him.  He pins you beneath him and nips at your neck and shoulders, asserting his dominance over you.  You do not resist your alpha and submit to him without resistance.  'That's a good pup,' he growls while groping you, making you more aroused.";
				if a random chance of anallevel in 4 succeeds:
					say "     The big German Shepherd grabs you by the scruff of the neck and grinds his cock against your rear.  'Rrrr!  You may not have a cunt for your alpha, but you'll still be my bitch.'  Knowing your place, you keep your ass raised[run paragraph on]";
					if tail of player is not "":
						say " and lift your tail[run paragraph on]";
					say "as he grinds his canine cock between your cheeks and dribbles precum across your pucker.  He drives the first few inches into your yielding asshole, your mind and body accepting your alpha's dominant shaft with a soft whimper that seems to excite him further.";
					say "     The German Shepherd's dick pushes hard and deep into you with only a few thrusts, giving your butt little chance to adjust to the penetration.  Grabbing the scruff of your neck in his teeth, he keeps a firm grip on you as he starts humping you wildly.  You can feel the frequent slams of his knot against your pucker and he bangs you hard and fast.  You whimper and moan at this rough treatment, but your body loves it anyhow, craving having your alpha inside you.  Being used and abused like this is just another delicious reminder that you belong right where you are - underneath him, getting your ass stuffed by this stud of a male.  At this moment, you're nothing but his fucktoy bitch and you desire nothing more than that.";
					say "     As the humping goes on, the repeated pushes of his knot causes your sphincter to stretch open until finally giving out.  That thick bulb pushes into you, tying to you him and leaving him only able to make short, fast thrusts that leave you quivering in delight by the time he's blasting his hot load into your clutching bowels.  You orgasm with him, your body delighting in receiving the canine's seed and also having enjoyed satisfying your alpha.  You remain flopped out beneath him in a happy daze, enjoying the warmth of the afterglow and of his virile seed inside your rear.  Once his knot comes free, he pushes you away and you sprawl out on the ground with canine cum leaking from your abused hole and a silly grin on your face.[mimpregchance]";
				otherwise:
					say "     Rising up, the big German Shepherd pulls you into a kneeling position in front of him.  Grabbing your head, he presses his crotch to your face and humps his hard cock against it.  Rivulets of precum dribble down your cheek as the strong scent of the alpha dog's manhood excites you all the more.  'Rrrr!  Open wide, pup.  Your alpha has a tasty bone for you, you cocksucking bitch,' he growls even as he slaps it across your face.  Presented with the dog's drooling shaft, you nuzzle and lick it a few times before opening your mouth and accepting it past your lips.";
					say "     The taste of the dominant male's cock is exciting.  You lick and suck at it, working your tongue across the hard flesh.  Precum drools onto your tongue for you to taste, providing a sample of the virile dog's flavour.  He lets you lavish attention like this upon him for a little while before taking your head in his paws and starting to thrust into your wet mouth.  Continue to suck and slide your tongue over that thrusting canine rod until your alpha finally cums.  Shot after shot of runny canine seed spews across your palate and down your throat.  You gulp it down as it comes, moaning softly at the taste of the stud's semen as it floods your senses.  Once spent, the German Shepherd pulls out and smears his messy cock across your face to wipe it clean, leaving you marked as his good doggy bitch.";
		otherwise if hp of player > 0:		[player submitted]
			if gsd_male is true:
				say "     Your alpha just grins as you give in to him and pounces with a mock growl.  He play wrestles with you for a few minutes before sitting down and pulling you against himself, nuzzling at the top of your head and licking your ears.";
				say "     'Good boy, you're learning.  Grow strong, always treat me with respect, and you will become a powerful pack member.'";
				say "     He gives a tight hug and licks you, tongue rasping over your lips and leaving a familiar burning sensation before he stands and walks off once again, leaving you alone to learn and grow stronger.";
				now gsd_slut is true;
				now gsd_var is 0;
				infect;
			otherwise if gsd_attack is true:	[fought then submitted]
				say "     The German Shepherd growls and pushes you back into a wall as you surrender, bearing his teeth and making sure you know he's in control. Slowly his hackles drop and he stops growling, though he continues to hold you up against the wall.";
				now gsd_slut is true;
				if cunts of the player is 0: [male/neuter player submits]
					say "     'Rrrrrf, not stupid at least; you're willing to give in when you can't win.  Seems like you might learn your place and accept that I'm the top dog around here.'";
					say "     He seems to consider you carefully for a moment, then makes a decision.  Keeping you pinned against the wall, he begins to firmly lick at your injuries, causing a slight burning sensation to spread from them before fading.  The licking is soothing and you relax, letting the dog do as he wishes.  After tending to a few of your superficial injuries, he steps back from the wall, a large grin on his scarred muzzle and his tail wagging.";
					say "     'You'll make a good pack-mate to run with, or will soon at least.'";
					say "     With that, he turns and simply walks away, leaving you leaning up against the wall while you feel the male shepherd's blessing and infection slowly spreading.";
					now gsd_var is 0;
					now gsd_male is true;
					gsd_set_male;
				otherwise:			[female/herm]
					say "     'Next time, don't fight me, bitch!  Know your place!'[line break]     With a growl, he pulls you away from the wall and pushes you down onto all fours.  He mouths at your neck and shoulder, making sure you can feel the threat of his fangs if you try and fight again, his hot breath washing over your skin. But his mood has shifted; having bested you, he now seems eager to enjoy his new toy.";
			otherwise:							[submitted right away]
				say "     The German Shepherd wuffs and eagerly approaches as you signal your submission. His arms slip around you as he hugs you close, licking at your face, nuzzling at your neck, his paw-like hands sliding down, rubbing and squeezing provocatively.";
				say "     'Ooooh, such a good little bitch. It's much nicer if you just say yes, isn't it? So much more enjoyable for both of us.'";
				now gsd_slut is true;
				if cunts of the player is 0 and "Male Preferred" is not listed in feats of player:	[male/neuter and player can become female]
					say "     He gives an extra little sniff, taking in your [if cocks of player > 0]male [end if]scent, then chuckles as he licks your cheek.";
					say "     'Mmm, bitch in spirit and mind, but not in body, it seems.  Don't worry, I can help solve that for you, make you into what you really are.'";
					say "     He slowly breaks off the hug, turning you around and pushing your shoulders down to make you get on all fours, then moves behind you.";
					now gsd_var is 2;
				otherwise if cunts of player is 0 and "Male Preferred" is listed in feats of player: [male/neuter and player can't become female]
					say "     He gives an extra little sniff, taking in your [if cocks of player > 0]male [end if]scent, then chuckles as he licks your cheek.";
					say "     'No juicy pussy for your alpha, but I think I'll have fun making you my bitch all the same.  You'll be begging me to fuck your ass in the end.'  That said, he presses his muzzle against your lips, canine tongue pressing in as he forces the kiss, paws slipping around to squeeze your rump.  Then, satisfied that the 'foreplay' has been accomplished, he breaks the embrace and turns you around, gently but firmly pushing you down onto all fours.";
					now gsd_var is 2;
				else:	[females/herms]
					say "     He presses his muzzle against your lips, canine tongue pressing in as he forces the kiss, paws slipping around to squeeze your rump.  Then, satisfied that the 'foreplay' has been accomplished, he breaks the embrace and turns you around, gently but firmly pushing you down onto all fours.";
		otherwise:							[player fought and lost]
			if gsd_male is true:
				say "     The big male pants and grins down at you as you slump to the ground, defeated.";
				say "     'And that is why I'm Alpha, pup!'";
				say "     He then sits down next to you, nuzzling at your neck and hugging you lightly.";
				say "     'But you're a good boy, learn to be a strong pack member.'";
				say "     Rumbling softly, he laps at your injuries, stemming any bleeding and once again causing the telltale burning sensation.  The licking is soothing and you relax, enjoying receiving such kindness again from the alpha dog.  Then, happy he's done his duty to his developing pack mate, he pads off, leaving you alone to learn and grow stronger.";
				now gsd_var is 0;
				now gsd_male is true;
				gsd_set_male;
			otherwise:
				say "     The German Shepherd howls in triumph while standing over your beaten form.  Though your vision is blurry, you can see his sheath starting to thicken and the tip of the monster's shaft poking free of the protective furry tube, pre dribbling from it.  With an eager growl, he lowers his head and moves to deal with his new victim, rolling you onto your belly, then lifting your hips so your rear is up and presented to him.";
		if gsd_var > 0:
			say "[gsd_special_lsex_00]";
		now gsd_attack is false;
		if gsd_pet >= 10:
			now gsd_pet is 2;		[now on player-losing cycle]
		otherwise if gsd_pet < 4:
			increase gsd_pet by 1;
			if gsd_pet is 4:
				say "     Having repeatedly [if hp of player > 0]accepted your place beneath[otherwise]been put in your place by[end if] this German Shepherd, some part of you has come to accept that role.  Whenever you meet again, he will be your alpha and you will [bold type]no longer be able to resist him[roman type].";


to say gsd_special_lsex_00:
	say "     Unable to look back, all you can hear is the Shepherd's eager panting while he manoeuvres you into the position he wants, leathery paw pads running over your [bodytype of player] form as he checks what he has to enjoy.  You then feel a warm weight on your back and a wet slickness press against you from behind, the pointed canine tip pressing against your body, starting to slide in.";		[ Now do a gender check. ]
	if cunts of player > 0: [ Female Triggers ]
		if Cunt length of player < 6: [ Cunt is too short, can't tie.]
			say "     You feel him make one or two tentative thrusts into your sex, just to make sure he's inside you before you hear him growl and begin humping in earnest.  His impossibly stiff length jabs and grinds into your cervix with every thrust, and his rapidly swelling and engorging knot rubs against your sex's lips.  Above you, the canine whines happily, 'S-sooo tight, soooo GNNNGH!'";
			say "     He stiffens, then howls as you feel his shaft twitch and surge, a little of his infected, potent dog cum splattering inside your womb, though most of it ends up leaking out and running down your thighs.  The large male holds you there for a minute or so, whining happily and nuzzling at your ears.  Then, without warning, he stands and pulls free, pushing you down so that you splatter into the slimy puddle of his seed as he walks off, his still-engorged cock squirting every few seconds.";
			if a random number from 1 to 2 is 2, say "[impregchance]";			[Low chance w/tight fit]
		else if Cunt length of player > 5:
			if cunt width of player > 6: [ Overly large width cunt, can fuck with a fully swollen knot.]
				say "     You feel him make one or two tentative thrusts into your sex, just to make sure he's inside you before you hear him growl and begin humping in earnest.  He eagerly grinds his hips into you, your [cunt size desc of player] lips easily accepting the canine cock, and you feel a ticklish, itchy sensation, your sex so large the dog's sheath pushes up and into you.  'Oh, what a slut you are.  How many males have sunk themselves into you, hm?  I should have the whole pack use you without pause'.";
				say "     Grunting and growling, he thrusts faster as he approaches his peak, his knot swelling inside you, but he doesn't slow down.  Gritting his teeth and growling through them as he begins to cum into you, he continues to piston and thrust, popping his knotted cock in and out of your sex and making loud, lewd noises as he stimulates you to exhaustion.";
				say "     After about twenty minutes, he slumps over your prone, unresponsive form, pulls himself free from your overly loose cunt and sighs happily as he pads off down a side alley.[impregchance]"; [ regular chance to impreg w/loose pussy]
			else:   [ any cunt that is less than knot-fuck size but is deep enough to tie.]
				say "     You feel him make one or two tentative thrusts into your sex, just to make sure he's inside you before you hear him growl and begin humping in earnest.  He eagerly grinds his hips into your passage until it stretches to accept the canine's cock, his sheath bunching up and rubbing against your outer lips each time he drives his canine shaft inside you.  The German Shepherd begins to hurry his thrusts, panting heavily in your ear as you feel a bulge at the base of his length start to swell and grow, but before you can even try and do anything about it, he jerks and drives himself as deep as he possibly can inside you, howling out his pleasure as his knot rapidly swells with his climax.  His knot locking his length inside you as the cock twitches and pulses, the sated canine slumps atop you while rumbling happily and nuzzling and licking at his newest bitch.";
				say "     After about half an hour, he softens enough to pull free, the slimy mix of your own cum and his splattering and drooling onto the floor.  The German Shepherd casually walks off, pleased with himself as you rise to your knees, arms wrapping around your slightly bulging stomach as a few drips run down your legs.  The realisation hits that most of his seed will remain deep within you, forced into your womb by the pressure of being trapped behind his knot.[impregchance]";
				if a random chance of 1 in 2 succeeds, say "[impregchance]";	[Increased chance w/knot in perfect fit]
	else:    [ Male Triggers ]
		say "     You feel him make one or two tentative thrusts into your arse, just to make sure he's inside you before you hear him growl and begin humping in earnest, eagerly grinding his hips into you, that rigid dog cock driving easily into your rear.  He doesn't waste any further time, building up his pace to an energetic fucking, the small bump of his knot sliding through your ring and starting to swell as you feel his sheath bunch up and rub over the sensitive skin.  With a soft growl, he drives in one last time, panting heavily in your ear as you feel his shaft swell, the knot at its base doubling, then tripling in size, tying you beneath the possessive male and letting you feel each spurt of his tainted canine seed.[mimpregchance]";
		if gsd_var is 2:
			if "Male Preferred" is listed in feats of player:
				say "     The dog rumbles, lapping affectionately at your cheek as the tainted seed floods and spreads in your rear.  'Such a good bitch...'  He turns your head with one paw-like hand and presses his tongue forcefully into your mouth, kissing passionately as he shifts and tugs on the tie, shifting his knot inside you, letting some of his seed dribble and ooze out over your balls, starting a strange itching sensation.  He continues to ladle on the affection, nuzzling and licking till his knot goes down and he can pull free.  Once he can, he does so suddenly enough to make you yelp in pain, smirking and swatting your rear before walking off.";
			otherwise:
				say "     The dog rumbles, lapping affectionately at your cheek as the tainted seed floods and spreads in your rear. 'Such a good bitch...  How about we start making you a proper girl?'  He turns your head with one paw-like hand and presses his tongue forcefully into your mouth, kissing passionately as he shifts and tugs on the tie, shifting his knot inside you, letting some of his seed dribble and ooze out over your balls, starting a strange itching sensation.  He continues to ladle on the affection, nuzzling and licking till his knot goes down and he can pull free.  Once he can, he does so suddenly enough to make you yelp in pain, smirking and swatting your rear before walking off.  'Be a good girl now. I'll be back when you're ready to carry my pups like a proper bitch should.'";
			follow the sex change rule;	[ Trigger infection NOW - sex ]
		else:
			say "     Panting and sprawled on your back, the big male doesn't even bother to support his own weight as he shifts about while waiting impatiently for his knot to go down.  As soon as he is able to, he pulls himself free, knot popping wetly from your rear and causing you to yelp in pain as you collapse on the ground.";
			say "     'Next time, submit to your elder without me having to beat you, bitch,' he calls over his shoulder as he vanishes into a dark, dingy alleyway.";

To gsd_set_male:
	choose row monster in Table of random critters;
	now sex entry is "Male";
	now breasts entry is 2;

To gsd_unset_male:
	choose row monster in Table of random critters;
	now sex entry is "Female";
	now breasts entry is 8;


Section 3 - Player Victory

to say beatthegsd:
	if zephyrtask is 2, increase zephyrpests by 1;
	now gsd_attack is false; [Encounter over, reset for the next time!]
	choose row monster in Table of random critters;
	if gsd_special is false:
		if cocks of player > 0 or cunts of player > 0:
			say "[gsd_generic_vsex_00]";
		otherwise:
			say "     As the German Shepherd lets out a pained and injured whine, he sinks to the ground with his ears folding down, beaten.  You grab the defeated canine by the scruff of his neck, you slam him to the ground.  Already quite worn from the battle, all it takes is a good, solid punch to knock his lights out.  He releases a soft groan and passes out, leaving you free to go on your way.";
	otherwise if gsd_pet is 11:
		now gsd_fled is false;	[player did not flee]
		say "[gsd_special_final_00]";
	otherwise:
		now gsd_fled is false;	[player did not flee]
		say "[gsd_special_vsex_00]";
		if gsd_pet < 10:
			now gsd_pet is 10;		[now on player-winning cycle]
		otherwise:
			increase gsd_pet by 1;


[ -- Generic Player Victory Scenes -- ]

to say gsd_generic_vsex_00:
	say "     As the German Shepherd lets out a pained and injured whine, he sinks to the ground with his ears folding down, beaten.  You feel a desire to turn the tables on this over-confident dog.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cocks of player is greater than 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him";
		now sortorder entry is 1;
		now description entry is "screw the dog";
		choose a blank row in table of fucking options;
		now title entry is "Fellatio";
		now sortorder entry is 3;
		now description entry is "make him suck you off";
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ride him";
		now sortorder entry is 2;
		now description entry is "pin him down and ride his cock";
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now sortorder entry is 4;
		now description entry is "make him eat you out";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Knock him out[as]0[end link][line break]";
	now calcnumber is -1;
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
				if nam is "Fuck him":
					say "[gsd_generic_vsex_01]";
				otherwise if nam is "Ride him":
					say "[gsd_generic_vsex_02]";
				otherwise if nam is "Fellatio":
					say "[gsd_generic_vsex_03]";
				otherwise if nam is "Cunnilingus":
					say "[gsd_generic_vsex_04]";
		otherwise if calcnumber is 0:
			say "Knock him out: Shall you knock him out so he'll leave you in peace?";
			if the player consents:
				say "     Grabbing the defeated canine by the scruff of his neck, you slam him to the ground.  Already quite worn from the battle, all it takes is a good, solid punch to knock his lights out.  He releases a soft groan and passes out, leaving you free to go on your way.";
				now sextablerun is 1;


to say gsd_generic_vsex_01:
	say "     The sight makes your shaft thicken and you decide to show him rather physically not to mess with you.  Sensing your intent, the dog pads back on all fours a few steps, but also raises his tail.  Continuing forward, you grab him by the ass and his ears perk up and he actually seems to smile a bit.  He braces himself on all fours and raises his rear in offering as he looks back over his shoulder and whines a little.";
	say "     Presented with such a tempting offer, you can't hold back.  Dropping to your knees behind him, you rub and squeeze his rear before [run paragraph on]";
	if cockname of player is "German Shepherd": [Not sure this fixes it, but it's worth a shot.]
		say "dropping on all fours as well.  The motion suits your sheath-enclosed member, which slides through the soft tube of furred flesh, triggering a rush of pleasure as you shift and position yourself, pressing your dribbling tip against the dog's willing star.  Then, with no preamble, you thrust and bury yourself into the waiting male, startling a yelp out of him before he groans, pushing back as your slick shaft spears in, spreading his tailhole.  You grip his hips and begin to thrust, panting needily as you feel the peak rush towards you faster than you'd think was possible, startling you into howling as you feel your knot swell and bulge, locking you within the canine, feeling your shaft throb and pulse... a long, continual climax, for as long as you remain swollen and tied.";
		say "     After thirty or so minutes of shuddering, wanton bliss, you let out a soft sigh and pull free, and after your knot pops free from his stretched and well-used rear, the German Shepherd submissively lowers himself to the ground on all fours, just like a normal dog, smiling at you as you depart.";
	otherwise:
		say "gripping the base of your hard [cock of player] shaft and rubbing the pre-dribbling tip against him.  You then push in, leaning forward and laying onto his back as you sink all the way into the cooperative Shepherd.  Gripping his sides, you begin to thrust, pistoning in and out of the proud male, feeling him clench around you, then even push back onto your shaft, just as you reach your peak.";
		say "     The canine howls beneath you, tail clenching as you pulse and surge inside him, letting you finish and rest a bit before slowly moving, causing your cock to pull free with a wet slurp, offering a good view of the male's cum-smeared tail hole.  Content and satisfied, he nuzzles you, then lets you leave while he recovers.";


to say gsd_generic_vsex_02:
	say "     You feel a pulse of desire in your loins and decide to sate your lusts using the defeated canine.  You growl and charge him, pushing him down onto his back to get his cock into your [run paragraph on]";
	if cockname of player is "German Shepherd" or bodyname of player is "German Shepherd":
		say "canine twat.  You pin him down and grind your wet slit over his sheath, dribbling your juices over it.  The scent of your arousal quickly coaxes his maleness from its sheath and you start sliding over his swelling cock, urging it to full hardness.  As you shift your hips and ease your way down his cock, you nuzzle under his neck and start nipping at his throat with low growls.  The beaten dog tilts his head back in submission, baring his throat to you.";
		say "     Taking [if cunt length of player > 5]the full length of his cock[otherwise]as much of his cock as you can into your small pussy[end if], you moan in pleasure as you ride it.  You can feel it throb and pulse inside you, spitting doggy pre into your already wet hole.  You set the pace, working to build yourself up to a powerful climax and enjoying his soft whines beneath you as you keep him from cumming until you're ready.  Finally, when your orgasm comes, it is powerful and sends waves of delight through your whole body.  Taking his throat in your mouth, you growl firmly and pound yourself on his cock, [if cunt length of player > 5]popping his swollen knot into you.  Tied with you, the[otherwise]grinding his tip against your cervix and his knot against your pussy's lips.  The[end if] shepherd cums hard, shooting his canine seed into your womb.  [if cunt length of player > 5 and cunt width of player < 7]With his knot locked in you, you are left tied to the dog.  He bathes your face in doggy kisses while you wait for the knot to come down.  Once it's finally softened enough, you pop it out[otherwise if cunt length of player > 5 and cunt width of player > 6]Once his cock stops pulsing his seed into you, you pop your wide cock off his knot[otherwise]Once his cock stops pulsing his seed into you, you slide off his cock[end if], releasing the semen that hasn't been drawn into your womb.  You get up slowly and give his ears a scritch, enjoying the sight of him wagging his tail and lolling his tongue out.  You then grab your gear and head off, leaving him to recover.";
	otherwise:
		say "twat.  You pin him down and grind your wet slit over his sheath, dribbling your juices over it.  This quickly coaxes his maleness from its sheath and you start sliding over his swelling cock, urging it to full hardness.  As you shift your hips and ease your way down his cock, you keep your hands on his shoulders to hold him down.  The beaten dog tilts his head back in submission, baring his throat to you with his ears lowered.";
		say "     Taking [if cunt length of player > 5]the full length of his cock[otherwise]as much of his cock as you can into your small pussy[end if], you moan in pleasure as you ride it.  You can feel it throb and pulse inside you, spitting doggy pre into your already wet hole.  You set the pace, working to build yourself up to a powerful climax and enjoying his soft whines beneath you as you keep him from cumming until you're ready.  Finally, when your orgasm comes, it is powerful and sends waves of delight through your whole body.  Clenching your fingers in his fur, you growl firmly and pound yourself on his cock, [if cunt length of player > 5]popping his swollen knot into you.  Tied with you, the[otherwise]grinding his tip against your cervix and his knot against your pussy's lips.  The[end if] shepherd cums hard, shooting his canine seed into your womb.  [if cunt length of player > 5 and cunt width of player < 7]With his knot locked in you, you are left tied to the dog.  He bathes your face in doggy kisses while you wait for the knot to come down.  Once it's finally softened enough, you pop it out[otherwise if cunt length of player > 5 and cunt width of player > 6]Once his cock stops pulsing his seed into you, you pop your wide cock off his knot[otherwise]Once his cock stops pulsing his seed into you, you slide off his cock[end if], releasing the semen that hasn't been drawn into your womb.  You get up slowly and give his ears a scritch, enjoying the sight of him wagging his tail and lolling his tongue out.  You then grab your gear and head off, leaving him to recover.";
		if cunt length of player < 6:
			if a random chance of 1 in 2 succeeds, say "[impregchance]";	[Lower impreg chance w/o knot]
		otherwise:
			say "[impregchance]";
			if cunt width of player < 7:
				if a random chance of 1 in 2 succeeds, say "[impregchance]";	[Increased chance w/knot in perfect fit]


to say gsd_generic_vsex_03:
	say "     The German Shepherd lowers his head like a cowed dog.  The thrill of the struggle with the canine has gotten you excited, giving you an erection you want satisfied.  Marching up to him, he slinks down lower and whines softly as you grab him by the scruff of the neck and hold him.  He tries to pull away, but you simply take hold of him more firmly and give his rear a slap.";
	say "     'Get to licking, dog,' you growl to him.  With that, you pull his head between your legs, pressing his muzzle to your loins.  Presented with your [if cockname of player is listed in infections of Caninelist]canine [otherwise][cock of player] [end if]cock, he relents easily enough and start nuzzling and licking at it.  Keeping your grip on him, he keeps going at it with increasing vigour, soon his doggy tongue is slobbering over your throbbing shaft and balls, lavishing attention on them.";
	say "     After leaking pre all across his muzzle, you decide it's time for the main event and guide his maw down over your cock.  As he licks and sucks on you, you thrust into his long, canine muzzle until finally you cum, pumping your hot seed into his mouth and down his throat.  His ears dip, but he laps it all from your cock and swallows it down.  When he's done cleaning you, you pull out and pat his head before sending him on his way, tail wagging happily after the tasty treat he's received.";


to say gsd_generic_vsex_04:
	say "     The German Shepherd lowers his head like a cowed dog.  The thrill of the struggle with the canine has gotten you excited, getting your cunt hot and wet.  Marching up to him, he slinks down lower and whines softly as you grab him by the scruff of the neck and hold him.  He tries to pull away, but you simply take hold of him more firmly and give his rear a slap.";
	say "     'Get to licking, dog,' you growl to him.  With that, you pull his head between your legs, pressing his muzzle to your loins.  Presented with your [if cockname of player is listed in infections of Caninelist]canine [otherwise]wet [end if]pussy, he relents easily enough and starts licking at it.  Keeping your grip on him, he keeps going at it with increasing vigour, soon his doggy tongue is slobbering over your sensitive folds, lavishing attention on them[if cocks of player > 0 and cockname of player is listed in infections of internallist]while your dribbling cock[smn] rest[smv] upon his muzzle[otherwise if cocks of player > 0]while your dribbling cock[smn] and balls rest upon his muzzle.";
	say "     Longing for more, you press his muzzle in close and he slips his tongue into your cunt, diving up inside you to lap at your flowing juices.  His long, doggy tongue dives into you again and again, making you moan with pleasure until finally you cum hard, soaking his muzzle in your juices.  He laps up as much as he can and licks your thighs and pussy clean as your climax ebbs.  When he's done cleaning you, you push his muzzle back and pat his head before sending him on his way, tail wagging happily after the tasty treat he's received.";


[ -- Special Player Victory Scenes -- ]

to say gsd_special_vsex_00:
	say "     As the scarred German Shepherd lets out a pained and injured whine, he sinks to the ground with his ears folding down, beaten.  You feel a desire to turn the tables on this arrogant male[if gsd_pet > 1] who's continued harassing you[end if] and make use of him as you'd see fit.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cocks of player is greater than 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him";
		now sortorder entry is 1;
		now description entry is "screw the dog to put him in his place";
		choose a blank row in table of fucking options;
		now title entry is "Fellatio";
		now sortorder entry is 3;
		now description entry is "make the defeated cur suck you off";
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ride him";
		now sortorder entry is 2;
		now description entry is "pin him down and use his pole as your toy";
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now sortorder entry is 4;
		now description entry is "make the defeated cur eat you out";
	choose a blank row in table of fucking options;
	now title entry is "Hand job";
	now sortorder entry is 5;
	now description entry is "jerk him off to burn off some of his excess libido";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Drive him off[as]0[end link][line break]";
	now calcnumber is -1;
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
				if nam is "Fuck him":
					say "[gsd_special_vsex_01]";
				otherwise if nam is "Ride him":
					say "[gsd_special_vsex_02]";
				otherwise if nam is "Fellatio":
					say "[gsd_special_vsex_03]";
				otherwise if nam is "Cunnilingus":
					say "[gsd_special_vsex_04]";
				otherwise if nam is "Hand job":
					say "[gsd_special_vsex_05]";
		otherwise if calcnumber is 0:
			say "Drive him off: Shall you send the arrogant creature packing?";
			if the player consents:
				say "     Grabbing the defeated canine by the scruff of his neck, you pull him this way.  You call him a 'Bad dog' and otherwise berating him for daring to oppose you.  In the end, you push him to the ground hard with your foot and tell him to get out of your sight.  He whimpers and slinks away, only daring a few angry barks at you once he's gotten a few dozen meters away.";
				now sextablerun is 1;


to say gsd_special_vsex_01:
	say "     The sight makes your shaft thicken[if gsd_male is true], and following the instincts he inflicted upon you[end if], you move to show that [if gsd_pet > 1]it is now you who is the Alpha[otherwise]you're the one in charge[end if].  Sensing your intent, the dog gives a low growl and tries to back away, but you grab him by the scruff and keep him in place.  Holding him on all fours soon gets him to respond, his tail lifting and flagging as he raises his ass in offering.  He looks back over his shoulder and whines a little, feeling a need to submit to the stronger male.";
	say "     You can't hold back[if gsd_male is true], not with your pack-mate offering himself[otherwise], not with such a tempting prize available[end if].  Dropping to your knees behind him, you rub and squeeze his rear before [run paragraph on]";
	if cockname of player is "German Shepherd": [Not sure this fixes it, but it's worth a shot.]
		say "dropping on all fours as well, the motion suiting your sheath-enclosed member, which slides through the soft tube of fur, triggering a rush of pleasure as you shift and position yourself, pressing your dribbling tip against the dog's willing star.  Then, with no preamble, you thrust and bury yourself into [if gsd_male is true]your waiting pack-mate[otherwise]the waiting canine[end if], startling a yelp out of him before he groans, pushing back as your slick shaft spears in, spreading his tail-hole.  You grip his hips and begin to thrust, panting needily as you feel the peak rush towards you faster than you'd think was possible, startling you into howling as you feel your knot swell and bulge, locking you within your mate, feeling your shaft throb and pulse... a long, continual climax, for as long as you remain swollen and tied.";
		say "     After thirty or so minutes of shuddering, wanton bliss, you let out a soft sigh and pull free, and after your knot pops free from his stretched and well-used rear, the muzzle-scarred German Shepherd submissively lowers himself to the ground on all fours, just like a normal dog, smiling at you as you depart.  The last thing you hear from the ravaged canine is a sated, breathless 'Thank you, Alpha.'";
	otherwise:
		say "gripping the base of your hard [cock of player] shaft and rubbing the pre-dribbling tip against him.  You then push in, leaning forward and laying onto his back as you sink all the way into the cooperative Shepherd.  Gripping his sides, you begin to thrust, pistoning in and out of the once-proud male, feeling him clench around you, then even push back onto your shaft, just as you reach your peak.";
		say "     Your [if gsd_male is true]pack-mate[otherwise]fallen foe[end if] howls beneath you, tail clenching as you pulse and surge inside him, letting you finish and rest a bit before slowly moving, causing your cock to pull free with a wet slurp, offering a good view of the male's cum-smeared tail hole.  Content and satisfied, he nuzzles you, then lets you leave while he recovers.";

to say gsd_special_vsex_02:
	say "     You feel a pulse of desire in your loins[if gsd_slut is true], still lusting for this strong male that once dominated you.  You want his cock in you again, but this time you will take what you want instead of being taken[otherwise], an eagerness to make use of this arrogant male instead of having him make use of you[end if].  You growl and charge him, pushing him down onto his back to get his cock into your [run paragraph on]";
	if cockname of player is "German Shepherd" or bodyname of player is "German Shepherd":
		say "canine twat on your own terms.  You pin him down and grind your wet slit over his sheath, dribbling your juices over it.  The scent of your arousal quickly coaxes his maleness from its sheath and you start sliding over his swelling cock, urging it to full hardness.  As you shift your hips and ease your way down his cock, you nuzzle under his neck and start nipping at his throat with low growls.  The beaten dog tilts his head back in submission, baring his throat to you.";
		say "     Taking [if cunt length of player > 5]the full length of his cock[otherwise]as much of his cock as you can into your small pussy[end if], you moan in pleasure as you ride it.  You can feel it throb and pulse inside you, spitting doggy pre into your already wet hole.  You set the pace, working to build yourself up to a powerful climax and enjoying his soft whines beneath you as you keep him from cumming until you're ready.  Finally, when your orgasm comes, it is powerful and sends waves of delight through your whole body.  Taking his throat in your mouth, you growl firmly and pound yourself on his cock, [if cunt length of player > 5]popping his swollen knot into you.  Tied with you, the[otherwise]grinding his tip against your cervix and his knot against your pussy's lips.  The[end if] shepherd cums hard, shooting his canine seed into your womb.  [if cunt length of player > 5 and cunt width of player < 7]With his knot locked in you, you are left tied to the dog.  He bathes your face in doggy kisses while you wait for the knot to come down.  Once it's finally softened enough, you pop it out[otherwise if cunt length of player > 5 and cunt width of player > 6]Once his cock stops pulsing his seed into you, you pop your wide cock off his knot[otherwise]Once his cock stops pulsing his seed into you, you slide off his cock[end if], releasing the semen that hasn't been drawn into your womb.  You get up slowly and give his ears a scritch, enjoying the sight of him wagging his tail and lolling his tongue out.  You then grab your gear and head off, leaving him to recover.  You feel much stronger about yourself after having beaten your one-time assailant and taken what you wanted from him instead.";
	otherwise:
		say "twat on your own terms.  You pin him down and grind your wet slit over his sheath, dribbling your juices over it.  This quickly coaxes his maleness from its sheath and you start sliding over his swelling cock, urging it to full hardness.  As you shift your hips and ease your way down his cock, you keep your hands on his shoulders to hold him down.  The beaten dog tilts his head back in submission, baring his throat to you with his ears lowered.";
		say "     Taking [if cunt length of player > 5]the full length of his cock[otherwise]as much of his cock as you can into your small pussy[end if], you moan in pleasure as you ride it.  You can feel it throb and pulse inside you, spitting doggy pre into your already wet hole.  You set the pace, working to build yourself up to a powerful climax and enjoying his soft whines beneath you as you keep him from cumming until you're ready.  Finally, when your orgasm comes, it is powerful and sends waves of delight through your whole body.  Clenching your fingers in his fur, you growl firmly and pound yourself on his cock, [if cunt length of player > 5]popping his swollen knot into you.  Tied with you, the[otherwise]grinding his tip against your cervix and his knot against your pussy's lips.  The[end if] shepherd cums hard, shooting his canine seed into your womb.  [if cunt length of player > 5 and cunt width of player < 7]With his knot locked in you, you are left tied to the dog.  He bathes your face in doggy kisses while you wait for the knot to come down.  Once it's finally softened enough, you pop it out[otherwise if cunt length of player > 5 and cunt width of player > 6]Once his cock stops pulsing his seed into you, you pop your wide cock off his knot[otherwise]Once his cock stops pulsing his seed into you, you slide off his cock[end if], releasing the semen that hasn't been drawn into your womb.  You get up slowly and give his ears a scritch, enjoying the sight of him wagging his tail and lolling his tongue out.  You then grab your gear and head off, leaving him to recover.  You feel much stronger about yourself after having beaten your one-time assailant and taken what you wanted from him instead.";
		if cunt length of player < 6:
			if a random chance of 1 in 2 succeeds, say "[impregchance]";	[Lower impreg chance w/o knot]
		otherwise:
			say "[impregchance]";
			if cunt width of player < 7:
				if a random chance of 1 in 2 succeeds, say "[impregchance]";	[Increased chance w/knot in perfect fit]


to say gsd_special_vsex_03:
	say "     The muzzle-scarred German Shepherd starts to back away slowly, like a cowed dog.  The thrill of the struggle with the canine has gotten you excited, giving you an erection you want satisfied.  Marching up to him, he slinks down lower and whines softly as you grab him by the scruff of the neck and hold him.  He tries to pull away, but you simply take hold of him more firmly and give his rear a slap.";
	say "     'Bad dog,' you growl at him.  'Get to licking to show you're sorry.'  With that, you pull his head between your legs, pressing his muzzle to your loins.  Having little choice, he nuzzles at your cock and takes a few tentative licks.  When you don't let him go, his ears dip further and he continues licking, soon with increasing vigour.  His doggy tongue slobbers over your throbbing shaft and balls, lavishing attention on them as his eagerness grows.";
	say "     After leaking pre all across his scarred muzzle, you decide it's time for the main event and guide his maw down over your cock.  As he licks and sucks on you, you thrust into his long, canine muzzle until finally you cum, pumping your hot seed into his mouth and down his throat.  His ears dip, but he laps it all from your cock and swallows it down.  When he's done cleaning you, you pull out and leave him on the ground to recover from his defeat.";


to say gsd_special_vsex_04:
	say "     The muzzle-scarred German Shepherd starts to back away slowly, like a cowed dog.  The thrill of the struggle with the canine has gotten you excited, getting your cunt hot and wet.  Marching up to him, he slinks down lower and whines softly as you grab him by the scruff of the neck and hold him.  He tries to pull away, but you simply take hold of him more firmly and give his rear a slap.";
	say "     'Bad dog,' you growl at him.  'Get to licking to show you're sorry.'  With that, you pull his head between your legs, pressing his muzzle to your loins.  Having little choice with his nose pressed right to it, he takes a few tentative licks at your pussy.  When you don't let him go, his ears dip further and he continues licking, soon with increasing vigour.  His doggy tongue slobbers over your sensitive folds, lavishing attention on you as his eagerness grows[if cocks of player > 0 and cockname of player is listed in infections of internallist].  Your cock[smn] rest[smv] upon his scarred muzzle, drooling precum onto him to further add to his humiliation[otherwise if cocks of player > 0].  Your cock[smn] and balls are left resting upon his scarred muzzle while you drool precum onto his face, further adding to his humiliation[end if].";
	say "     Longing for more, you press his muzzle in close and he slips his tongue into your cunt, diving up inside you to lap at your flowing juices.  His long, doggy tongue dives into you again and again, making you moan with pleasure until finally you cum hard, soaking his muzzle in your juices.  He laps up as much as he can and licks your thighs and pussy clean as your climax ebbs.  When he's done cleaning you, you push his muzzle back and leave him on the ground to recover from his defeat.";


to say gsd_special_vsex_05:
	say "     The muzzle-scarred German Shepherd starts to back away slowly, like a cowed dog, but you want to abuse him a little further first.  The thrill of the struggle with the canine has gotten you excited and you can see it's done the same for him.  Pushing him onto all fours beneath you, you grab his cock firmly.  He releases a mix between a whimper and growl, wanting to resist, but already beaten.  With your other hand, you press his head to the ground.";
	say "     'Bad dog!  Bad!' you growl at him.  'You need to learn your place, you horny cur.'  Keeping him pinned, you stroke his cock, jerking him off.  'You're thinking with your dick and not realizing that I'm your better, you dumb doggy slut.'  You pick up the pace, pleased to feel that canine cock pulse and drool more pre that you spread across its hard length.  He starts to pant in response, his balls throbbing when you give them a fondle.";
	if a random chance of 1 in 2 succeeds:
		say "     After jerking him off like this for a while, you grab his shoulder and roll him onto his back so you can see the finale.  Keeping him pinned, you pump at his meat while he drools a slick mess onto his tummy fur.  Needy whimpers escape his muzzle as his orgasm approaches, which only encourages you.  When he finally blows, you enjoy watching the once-arrogant canine spew his copious load across his head and body for your amusement.  You wipe your hand off on his tail and order him out of your sight.  He gets up and slinks off, sticky and humiliated.";
	otherwise:
		say "     Keeping him pinned in this awkward position, you pump at his meat while he dribbles a sticky mess onto the ground just inches from his nose.  Needy whimpers escape his muzzle as his orgasm approaches, which only encourages you.  When he finally blows, his dick's aimed squarely at his face and his semen splatters all over his scarred muzzle.  When you hear him licking and lapping at the mess of cum he's making on himself, you laugh a little at his humiliation.  Once he's spent, you wipe your hand across his fluffy rear with a few slaps before driving him off.  He gets up and slinks off, sticky and humiliated.";


[ -- Special Final Scenes -- ]

to say gsd_special_final_00:
	say "     As the scarred German Shepherd lets out a pained and injured whine, he sinks to the ground with his ears folding down, beaten.  You can see that a lot of the fight has gone of out his eyes and he hangs his head in shame when you look into them.  It seems like you've finally proven yourself his better.  And now you need to decide what you want to do with him.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cocks of player is greater than 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him and recruit";
		now sortorder entry is 1;
		now description entry is "fuck him to secure your dominance over him";
		choose a blank row in table of fucking options;
		now title entry is "Fuck him and banish";
		now sortorder entry is 1;
		now description entry is "fuck him before driving him off for good";
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ride him and recruit";
		now sortorder entry is 1;
		now description entry is "ride him to secure your dominance over him";
		choose a blank row in table of fucking options;
		now title entry is "Ride him and banish";
		now sortorder entry is 1;
		now description entry is "ride him before driving him off for good";
	choose a blank row in table of fucking options;
	now title entry is "Humiliate and banish";
	now sortorder entry is 5;
	now description entry is "reinforce that he's been bested before driving him off for good";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	now calcnumber is 0;
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
				if nam is "Fuck him and recruit":
					say "[gsd_special_final_01]";
				otherwise if nam is "Fuck him and banish":
					say "[gsd_special_final_02]";
				otherwise if nam is "Ride him and recruit":
					say "[gsd_special_final_03]";
				otherwise if nam is "Ride him and banish":
					say "[gsd_special_final_04]";
				otherwise if nam is "Humiliate and banish":
					say "[gsd_special_final_05]";


to say gsd_special_final_01:
	say "     In the mood to fuck the Shepherd, you grab him and push him onto all fours.  He does not resist and only gives a soft growl at what he knows is coming.  Wrapping a hand around his scarred muzzle, you silence him even as you move overtop of him.  'I think I've made it abundantly clear by now that I'm the alpha here.  So you're going to raise that tail of yours and like it, pup,' you growl right back at him.  His ears dip and he nods, raising his tail and boosting his rear, accepting his fate.";
	say "     You grind your cock against his furred ass for several strokes, enjoying the soft fur and toned flesh pressing against your meat.  Getting your cock lined up with his dark pucker, you tease against it while drooling precum onto the fleshy ring.  The dog beneath you releases a soft whimper, one of need this time rather than reluctance, and presses his hips back.  You grin and whisper 'Good boy' to him and push your ";
	if cockname of player is "German Shepherd":
		say "pointed, canine cock into his spreading tailhole.  You move onto all fours atop him, mounting him doggy-style, and start fucking him.";
		say "     You do your best to draw it out, taking pauses to fondle his rock-hard dick and nip along his neck while leaving your shaft buried in his butt.  At this point, he's too aroused and accepts your attention with sounds of needy lust.  His cock twitches and throbs in your hand, drooling precum steadily.  His asshole squeezes and tugs at your cock, clearly wanting you to finish claiming it.";
		say "     After several rounds of swapping between fucking and fondling him, you can't hold back any longer and set to humping his toned butt hard and fast.  You drive your pulsing rod into him over and over again, enjoying his needful whimpers while you continue to jerk him off.  Sensing your approaching release, you push harder and deeper, banging your knot against his back door.";
		say "     'You want it, don't you?  Say it.  Beg your alpha to give you his knot,' you growl between gritted teeth, your peak so close now.  The German Shepherd, panting heavily and dribbling constantly from his cock, can barely manage an assenting bark of begging for it.  You smile and with another 'Good boy' you push the thick knot past his tight ring and tie with him[if cock length of player > 32], bulging his belly to fit it all[otherwise if cock length of player > 20], visibly stretching his toned tummy to fit it all[end if].  Your canine dick throbs and pulses inside his rear, spurting shot after shot of gooey semen into his bowels.  As your load fills him, he expels his own seed onto the ground, cumming messily over and over again as he in delight howls alongside you.";
		say "     With your cock still buried in him and your knot still stuck in him, you pat his head.  'You're mine now, pup.  I'm your Master and your Alpha.  I'm top dog and you'll do what I say from now on.'  His ears dip and he nods.  'Yes, you're Alpha,' he responds, now forced to accept your dominance over him.  You smile and pet him further, calling him your good dog while waiting for your knot to go down and finally release you two.";
	otherwise:
		say "[cock of player] cock into his spreading tailhole.  Kneeling behind him, you keep a good grip on his ass and start fucking him from behind.";
		say "     You do your best to draw it out, taking pauses to fondle his rock-hard dick and pet his head and shoulders while leaving your shaft buried in his butt.  At this point, he's too aroused and accepts your attention with sounds of needy lust.  His cock twitches and throbs in your hand, drooling precum steadily.  His asshole squeezes and tugs at your cock, clearly wanting you to finish claiming it.";
		say "     After several rounds of swapping between fucking and petting him, you can't hold back any longer and set to pounding his toned butt hard and fast.  You drive your pulsing rod into him over and over again, enjoying his needful whimpers while you continue to jerk him off.  Sensing your approaching release, you push harder and deeper[if cockname of player is not listed in infections of internallist], slapping your balls against his[otherwise], slapping your hips against his fuzzy rear[end if].";
		say "     'You want it, don't you?  Be a good dog and beg your master to give you his hot load,' you growl between gritted teeth, your peak so close now.  The German Shepherd, panting heavily and dribbling constantly from his cock, can barely manage an assenting bark of begging for it.  You smile and with another 'Good boy' you push your [cock size desc of player] cock fully into him[if cock length of player > 36], bulging his belly to fit it all[otherwise if cock length of player > 24], visibly stretching his toned tummy to fit it all[end if].  Your [cock of player] dick throbs and pulses inside his rear, spurting shot after shot of gooey semen into his bowels.  As your load fills him, he expels his own seed onto the ground, cumming messily over and over again as he in delight howls alongside you.";
		say "     With your cock still buried fully in him, you pat his head.  'You're mine now, pup.  I'm your Master and your Alpha.  I'm top dog and you'll do what I say from now on.'  His ears dip and he nods.  'Yes, you're Alpha,' he responds, now forced to accept your dominance over him.  You smile and pet him further, calling him your good dog while sliding your spent shaft from his butt.";
	attempttowait;
	say "[gsd_recruited]";
	now gsd_pet is 12;


to say gsd_special_final_02:
	say "     Tired of dealing with this arrogant dog, you grab him roughly by the back of the neck and force him onto all fours.  He whimpers and tries to curl his tail between his legs, but you grab it and yank it up hard.  'It's clear I'm going to have to teach you a lesson you won't soon forget, you dumb mutt.  It's clear you just-' you growl as you give his tail another harsh pull up to keep his rear raised 'don't-' line up your cock with his pucker and 'learn!' drive your hard shaft into his ill-prepared asshole.  You find his loud yelp at the sudden penetration very satisfying.";
	say "     You don't give him a chance to recover or relax either, getting right to fucking his ass raw.  You keep a fast pace designed to get yourself off with little regard for your former foe.  His inner walls squeeze deliciously tightly around your shaft each time you plow into him.  A quick check finds his cock hard and twitching in response to every hard slam against his prostate.";
	say "     By the time you're ready to cum, his hole's only started to adjust to the rough play and so he doesn't get off when you drive your cock deep into him and cum hard.  Despite his whimpering and attempts to hump back so he can cum as well, you hold your spurting shaft fully in him and keep a tight grip on him.  'No.  Bad dog's don't get to cum.'";
	say "     And once you're finished cumming, you pull out just as quickly as you went in and shove him to the ground.  With his asshole leaking a cummy mess, he reaches to finger his hole while jerking himself off, but you don't let him.  Kicking his rear like the dog he is, you tell him to get out of your sight for good.  'Go on!  Get out of here.  I never want to see you again, you flea-bitten mutt.'  He scampers away on all fours with his tail tight between his legs and the head he once held so arrogantly high now barely above the ground.  You don't expect he'll dare bother you ever again.";
	increase score by 20;
	now gsd_pet is 100;

to say gsd_special_final_03:
	say "     With the German Shepherd pinned down beneath you, you straddle him and grind your cunt down onto his manhood.  You grin as you feel it throb beneath you.  'You want this, don't you?' you ask.  'Well, you can have it... if you promise to be a good dog from now on.'  You continue to grind while keeping your eyes locked on his.  You spread your juices across his cock as you glide along its length, but never quite let it slide into you.";
	say "     At this point, having been beaten repeatedly, he is forced to look away and dip his ears, submissively accepting his defeat and saying he'll obey.  You smile all the more and scritch his ear.  'That's right.  You're MY good dog now.  Mmm... and I want my good dog's bone.'";
	say "     Sliding a little further finally lets his pointed canine tip dip between your folds and into your vagina.  When you push back this time, his dick spears into your cunt.  You both release lustful growls and you bounce in his lap.  His cock is driven into you over and over again as you move up and down, savouring the exotic feel of his canine breeding pole inside your hot tunnel.  You work his cock over with your vaginal muscles, squeezing and tugging at it as quivers of delight run through you.";
	say "     While you're eager to ride him to completion, you do your best to hold back and draw this out.  In addition to extending the pleasure for you both, it gives you more opportunity to pet, scritch and otherwise treat your former for as your new pet dog to reinforce his new role.  Despite his earlier aggression, he can't help but pant and wag his tail in response to this attention from his new owner.  And from the throbbing of his cock and the amount of pre it's drooling into you, you can tell he appreciates the attention you're giving his shaft as well.";
	say "     With that hard dick sliding in and out of you, you can only be patient for so long.  Wanting your release and to secure your place quite literally atop him, you start riding him hard and fast, pressing your hot petals against his swollen knot with each slam down.  Clenching your fingers in his fur, you push down one final time as he bucks up, popping that thick bulb into your cunt.  Your inner muscles clamp down on it and you cry out in orgasmic release, cumming hard, followed moments later by his own orgasm.  The shepherd cums long and hard, sending shot after shot of canine seed into your womb until as you ride out your climax until you're both spent and exhausted.";
	say "     While waiting for his knot to go down, you pet him some more, calling him your good dog and telling him that you're his Mistress and Alpha from now on.  His defiance worn down after having been put in his place this one final time, he nods and ascents.  'Yes, you're the Alpha now,' he pants.  Once he knot's shrunk enough, you pull off him and make him lick your messy cunt as his first task as your new loyal pet, which he does with eagerness.[impregchance]";
	attempttowait;
	say "[gsd_recruited]";
	now gsd_pet is 12;

to say gsd_special_final_04:
	say "     Tired of dealing with this arrogant dog, you rough shove him over onto his back with your foot.  Glaring down at him, you move that foot onto his chest and keep him pressed down.  He whimpers a little in fear and has his tail curled in between his legs, which won't do at all.  Grabbing his tail, you tug it out of the way and straddle his hips.  'I think I've made it abundantly clear by now that you're no match for me, so I'm going to take what I want and kick you to the curb like the mangy cur you are,' you growl down at him while grinding your hips onto his lap.";
	say "     Taking his stiffening cock in hand, you aim it up and slam your hips down onto it, relying on its penile bone to keep him erect even though he's not fully hard at this point.  You set to riding him right away, working your hips up and down at a pace and with movements solely focused on satisfying your needs.  You also start rubbing your folds and teasing your clit, further arousing yourself.  And while he's clearly enjoying the ride, it's also frustrating as he'll clearly need more to keep up with you.  Any attempt by him to increase his own pleasure, by thrusting up, touching himself or anything else is met with a smack on the nose and a 'Bad dog!' from you.";
	say "     By the time you're ready to cum, he's nowhere near his own release, but you don't care.  Your cunt clamps down hard around his shaft and you tweak your hot button as you orgasm, soaking his crotch in your juices.  He whimpers and moans, enjoying having your vaginal walls squeezing and rippling along his shaft, but this only blue-balls him even worse.  After your climax, you remain atop him, panting to catch your breath while his aching shaft rests motionless in your now sated cunt.";
	say "     Once you're ready, you climb off of him, smacking his paws away as he reaches to jerk himself off.  You grab him by the back of the neck and pull him up onto all fours.  'And that's the last of my cunt you're ever gonna get.  Go on!'  You boot him in the rear, drawing a yelp from the cowed Shepherd.  'I never want to see you again, you flea-bitten mutt.'  He scampers away on all fours with his tail tight between his legs and the head he once held so arrogantly high now barely above the ground.  You don't expect he'll dare bother you ever again.";
	increase score by 20;
	now gsd_pet is 100;

to say gsd_special_final_05:
	say "     Tired of dealing with this arrogant dog, you grab him roughly by the back of the neck and push him to the ground.  Grinding him face against the ground, you snarl down at him.  'I've had enough of you, you mangy cur.  I've proven time and and again your better.'  And seeing just the thing for it, you smile.  'It looks like I'm going to have to beat some sense into you.'";
	say "     Grabbing the yellowed newspaper you spotted, you roll it up and give him several smacks on the muzzle with it.  'Bad dog!  Bad!  Dog!'  He whimpers and drops low to the ground, trying to slink away, but you won't have it.  Grabbing him by the tail he's tucked between his legs, you pull his ass up into the air and give it several hard swats with the paper roll as well.  'Bad!  Dog!' you repeat, giving him a final hard swat on his balls, drawing a satisfying yelp and whimper from him.  Releasing his tail, you knock him to the ground with your foot and chase him off with a few more wild swings of the newspaper.  'Go on!  Get out of here.  I never want to see you again, you flea-bitten mutt.'  He scampers away on all fours with his tail tight between his legs and the head he once held so arrogantly high now barely above the ground.  You don't expect he'll dare bother you ever again.";
	now gsd_pet is 100;

to say gsd_recruited:
	increase score by 20;
	now gshep is tamed;
	now hp of gshep is 1;
	say "     Looking around, you find some heavy rope and use that to make a temporary leash for the muzzle-scarred German Shepherd.  He tugs at it a few times, but leaves it alone when you tell him to stop pawing at it.  You ask him if he's got a name he can remember, which throws him for a loop.  'What a stupid question?  Of course I remember... my... name...'  He ends up bemused for a time, scratching his ear with one paw as he tries to think.  'K-... Ka-?  Ko-?  Korvin?  I think it was, I mean, it is Korvin.'  He seems a little more self-assured again now that he's got a name.";
	say "     (The gshep is now tamed! You can make it your active pet by typing [bold type][link]pet gshep[as]pet gshep[end link][roman type] and initiate sex with him while active by typing [bold type][link]fuck gshep[end link][roman type].  You can see all the pets you have tamed with the [bold type][link]pet[as]pet[end link][roman type] command.  Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap.  Want to get rid of a pet?  Use [bold type][link]pet dismiss[as]pet dismiss[end link][roman type], or just [bold type][link]dismiss[as]dismiss[end link][roman type])";


to say attk gsd:
	now gsd_attack is true; [You've attacked the monster, he won't be happy!]
	say "[one of]The dog growls, swiping at you with an open paw-like hand, dull claws leaving scratches in your skin[or]As you extend to strike, the German Shepherd twists and clamps his jaws on your arm before releasing again, leaving a bloody bite[or]Dodging back, the large canine growls before charging forward, using the extra momentum to tackle and knock you over[at random].";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "German Shepherd";      [Name of your new Monster]
	now attack entry is "[attk gsd]";         [Text used when the monster makes an Attack]
	now defeated entry is "[beatthegsd]";       [ Text or say command used when Monster is defeated.]
	now victory entry is "[losetogsd]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block]
	now desc entry is "[gsd_desc]";
	now face entry is "distinctly canine, with a long canine muzzle filled with sharp teeth and a pair of expressive pointed ears atop your head";
	now body entry is "that of a bipedal dog, with digitigrade legs and paw like hands";
	now skin entry is "coarse, brown and black furred";
	now tail entry is "Behind you is a dog's tail, which whips about expressively and frequently betrays your mood.";
	now cock entry is "[if looknow is 1]surrounded in a tight [skin of player] sheath, protecting the wonderfully sensitive German Shepherd cock residing within[otherwise][one of]knotted[or]animalistic canine[or]doggy[at random][end if]";
	now face change entry is "it draws forward into a canine muzzle, which rapidly fills with teeth and a broad, lolling tongue. At the same time, your ears become more pointed and expressive and migrate towards the top of your now canine head";
	now body change entry is "your legs bend and twist into digitigrade form with soft subtle snaps of flowing bones. You look down to see your feet becoming entirely paw like and your hands become somewhat paw like with dull black claws in the tips";
	now skin change entry is "fur begins to push through from underneath, soon covering you in a coarse, protective coat of brown and black fur";
	now ass change entry is "a long tail pushes from your spine. It rushes straight out, then curles between your legs at the feeling of shock as you study the appendage";
	now cock change entry is "your shaft tapers out, becoming slender, though a huge swelling comes into being towards the base, a knot. The skin turns reddish before the whole thing slowly withdraws into a sheath you didn't have a moment ago";
	now str entry is 12;
	now dex entry is 13;
	now sta entry is 14;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Female";          [ Defines which organs will be altered by the infection. current options are 'Male' 'Female' 'Both']
	now hp entry is 20;
	now lev entry is 3;
	now wdam entry is 5;                [ Amount of  Damage monster Does when attacking.]
	now area entry is "Outside";        [ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;               [ Used in infection Calculations, if cocks > 0 shaft will grow to cock length & girth dimensions slowly]
	now cock length entry is 8;         [ Length infection will make cock grow to if cocks > 0 ]
	now cock width entry is 4;          [ Width Infection will make cock grow to is cocks > 0 ]
	now breasts entry is 8;             [ Number of Breasts infection will give you. ]
	now breast size entry is 4;         [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;    [ Unknown. ]
	now cunts entry is 1;               [ if > 0 and sex = female or both, indicates the number of female sexes infection will grant you.]
	now cunt length entry is 6;         [ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 4;          [ Width of female sex  infection will try and give you ] 
	now libido entry is 5;              [ Amount libido goes up by if you submit or are defeated by this monster ]
	now loot entry is "";               [ Loot monster drops, ]
	now lootchance entry is 0;          [ Chance of loot dropping 0-100 ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]mutated[or]altered[or]animalistic[at random]";
	now type entry is "canine";         [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;      [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "gsd";   [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Alt Combat Rules

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"gsd"	retaliation rule	gsd_pre rule	--	humping rule	100	--	--	--	--	--


this is the gsd_pre rule:		[preattack rule - checks if player fought back]
	if gsd_special is true and inafight is not 0:	[Triggers for special GSD, but not when he gets first strike]
		now gsd_attack is true;


Section 3 - Heat Table

to say gsdheatstart:
	if heatform is 0:
		increase cunt width of player by 1;
	otherwise:
		increase libido of player by 5;

to say gsdheatend:
	if heatform is 0:
		decrease cunt width of player by 1;
		if cunt width of player is 0, now cunt width of player is 1;

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "German Shepherd";
	now heat cycle entry is 7;
	now heat duration entry is 2;
	now trigger text entry is "A sudden throb between your legs catches you off guard, startling a whimper from your throat as you feel a rush of heat between your legs.  Nested between your thighs, your canine spade begins to puff up and swell, engorging and becoming looser, a slow but constant seepage of lubricating fluids starting to run down your thigh, making a mess of your [skinname of player] flesh.  You are in heat, and your body is making it easy for any male to find and impregnate you.";
	now description text entry is "swollen and dripping German Shepherd twat ";
	now heat start entry is "[gsdheatstart]";   [Events that trigger at the start of the Heat, in the female-GSD case it increases the cunt width]
	now heat end entry is "[gsdheatend]";       [Events that trigger at the end of the Heat, in the female-GSD case it reduces cunt width]
	now inheat entry is "[defaultheat]";        [This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "A sudden throb in your ass catches you off guard, startling a whimper from your throat as you feel a rush of heat surging inside you.  You can feel your fecund ass preparing itself to be bred as you go into a tainted heat.  Your anal passage quivers and you feel a longing for a nice, canine cock to fill it.";


Section 4 - GShep Pet

gshep is a pet.  gshep is a part of the player.
The description of gshep is "     Korvin, the anthro German Shepherd you've trained to be your dog, stands nearby with his arms crossed and a stern look on his canine face.  He's got the typical brown and black coat of the breed.  He's buff and well-built, though not overly so.  His most distinguishing feature is the crooked scar that runs along his cheek and muzzle.  Such marks are rare, even with the amount of fighting between mutants in the city.  He's also nude, wearing nothing save for the rope leash you've put around his neck.  Despite being tamed, his mind is definitely more corrupted than human, clearly only retaining shreds of his past life.  Having put him in his place, he's come to accept you as his master and will follow your orders, even if does retain a bit of an independent streak.".
The conversation of gshep is { "Bark!" }.
The weapon damage of gshep is 5.
The level of gshep is 3.
The Dexterity of gshep is 13.
The summondesc of gshep is "Calling for Korvin, the German Shepherd joins you at your side.  He seems excited at the prospect of busting some heads.".
The assault of gshep is "[gshep_attack]".

to say gshep_attack:
	choose row monster from the table of random critters;
	say "[one of]Your dog[or]Korvin[or]Your German Shepherd[at random] [one of]growls and swipes at your enemy with an open paw-like hand, leaving scratching with his dull claws[or]clamps down with his teeth on your foe with a growl[or]charges at your foe, bashing into [ghim][or]lands a fast punch on the [name entry][or]barks and growls at your opponent while taking swings at them[at random].".

the scent of the gshep is "Korvin has a masculine scent of canine arousal.".

The fuckscene of gshep is "[korvinsexmenu]";

Instead of conversing the gshep:
	if gshep is not tamed:
		say "Who do you want to talk to?";
	otherwise if gshep is not companion of player:
		say "I don't see them around right now.  You'll have to call them over first.";
	otherwise:
		say "     [one of]'What do you want, [if cunts of player > 0]Mistress[otherwise]Master[end if]?'[or]The muzzle-scarred G-Shep scratches himself behind the ear with a foot.  Noticing you watching him, he stops and tries to look more dignified.[or]'Where to now, oh wise and powerful Alpha?' he asks, rolling his eyes.  A glare from you gets him to stop and hang his head.[or]'I can't wait for our next scrap, [if cunts of player > 0]Mistress[otherwise]Master[end if].  It'll feel good to smack some fools around with you.'[or]The G-Shep consents to let you pet and scritch him, he grumbles a little, but you can tell from the way his tail wags that he enjoys the attention from his alpha.[or]'You're my alpha now, so I'll follow you.'[at random]";

to say korvinsexmenu:
	say "[bracket]At present, there are no scenes with the tamed G-Shep. - The Mgmt[close bracket][line break]";

understand "Korvin" as gshep.

Section 4 - Endings

when play ends:
	if humanity of player is less than 10:
		if bodyname of player is "German Shepherd":
			if gsd_pet > 0 and gsd_pet < 10:
				if cunts of player > 0 and cocks of player > 0:			[HERM]
					say "     You don't know what to do. Your mind is a swirl of confused thoughts and you sink to all fours, sobbing and staining the ground with your tears, and precum, cock dripping to the ground in thick strands, cunt leaking honey down along it, making quite a mess. He finds you, though, the German Shepherd. His presence becomes clear when his tongue runs across your crotch, up along your male and female genders in one firm motion. You tense and gasp, and turn to look, but he's already clambering up on you, thrusting into his property, you. You feel complete, and sing out in pleasure as he breeds you. Your seed splashes across the ground as you cum with him, filled with his potent seed. When you've calmed down, he guides you to the pack, where you will remain for the rest of your life.";
				otherwise if cunts of player is greater than 0:			[FEMALE]
					say "     As the last of your normal thoughts flee you, you hear a familiar howl. You take off at a run, scrambling over debris to reach this thing that sets your heart on fire. You find them, a pack of dogs roaming the city. They welcome you with wet tongues and eager hugs, until he steps forward. The alpha, the German Shepherd, takes you aside, welcoming you to the pack, then consummating the deal on the spot, to the cheers and approval of the crowd, leaving your belly bulging with his virility. With him still sealed to you with his knot, the others approach, licking you both, warm welcoming words. Things could be worse...";
				otherwise:									[MALE]
					say "     You hear something, but can't quite place it. You take off and find the pack of dogs without trouble, rushing into their midst, yapping and barking. They bite at you, push you around, but tolerate your presence. You never seem to gain much say with them, remaining the pack omega, picked on, last to eat, but still a member of the pack, and loved, in a different way.";
[			otherwise if gsd_pet < 12 or gsd_pet is 100:]			[***]
			otherwise:
				if cunts of player > 0 and cocks of player > 0:			[HERM]
					say "     It is all just too much. Your cock demands attention, your cunt wants to be stuffed, and you have nothing to focus on strongly enough. With a howl, you become a true beast, slaking your unending hunger on anything willing to fill or be filled, or that you can hold down long enough to force into the act. When a female human, stupid enough to enter the infected city, comes across you... Well, she became a fine wife of sorts for you, bearing litter after litter from her pretty naked body. She never transformed, but her mind did seem to change over time, becoming submissive to your breeding desires, and she never leaves you and your increasingly larger family.";
				otherwise if cunts of player is greater than 0:			[FEMALE]
					say "     You feel your humanity slipping away, and hear the call of the pack, but decline its invitation. You stake out your own section of the city, preying on those foolish enough to challenge it. The pack usually stays away from your area, but you do have to fight them off once in a while, almost more of a ceremony than anything else. During one of these tussles, one of their betas pins you down, and what was a wrestling session suddenly turns amorous. Despite no clear... winner... of the battle, the pack leaves happily, and you produce two darling puppies, who remain at your side loyally.";
				otherwise:									[MALE]
					say "     Ever hear of the big bad wolf? It was the last thought that fluttered through your fading mind. You dropped to all fours, cock wagging under you as you prowled the streets, preying on anything with a hole. You develop a preference for mutants, and discover the pleasure of filling different beasts with your hybrid canine pups, at least until you fall into the sewers one day. With a bruised ankle, you watched fearfully as a strange, canine-like mutant approached you. She had a pouch, and several large breasts, and she was dual gendered. She drew you to a breast and let you drink of her sweet milk until the pain stopped, then pushed you onto your back roughly and fucked herself with your cock for six hours. By the time the marathon was over, your animal-like mind had decided she was your alpha, and you remained her loyal stud dog ever since.";
[			otherwise:			[***]
				say "Succumbed w/Korvin tamed.";	]
	otherwise:
		if bodyname of player is "German Shepherd":
			say "     When the military forces come in to rescue what citizens they can, you go along with them.  Being mostly canine in form, you go along readily with them.  Your body, compared to others they've seen, raises little concern among the military.  As a canine, you are given an offer to join the military, trying to appeal to your instincts for loyalty, but you feel you are too [if gsd_pet > 1 and gsd_pet < 10]submissive[otherwise]independent[end if] to make a good recruit and decline.";
			if gsd_pet > 0 and gsd_pet < 10:
				if cunts of player > 0 and cocks of player > 0:			[HERM]
					say "     Though you've been given a deep submissive streak thanks to your time with that handsome, shepherd, you put him behind you and set off to make a normal life for yourself. Your dual gendered nature makes you shy to approach others, fearful that, combined with your mutant nature, they will shun you. You get a quiet job as a secretary and perform admirably, enough to catch the attention of your boss.";
					say "     He invites you out for dinner, and starts courting you, much to your dismay. It's not that you don't like the guy. He's nice enough, good to the people under him, but when the secret gets out... He finally corners you and makes a strong advance. You do little but whimper as his hands wander your exotic form. His fingers drift across your groin, finding your bulging tent there. Soft touches start as he pushes your skirt up and eases you out of your panties. You barely come around as he's laying you back, stroking you with one hand, the other dipping into your furry vulva. It turns out he figured it out some time ago, and he doesn't mind one bit. You bear him several pups gladly as his wife.";
				otherwise if cunts of player is greater than 0:			[FEMALE]
					say "     Though you escape from the city with your mind intact, it is not without impact. You find yourself thinking back to that big alpha and try to replace him with a myriad of other brutes who fail to satisfy your hungry cunt. You take up work in the sex industry, catering to those who like to watch horny mutant sluts get hot and bothered, which you usually are.";
					say "     Some years later, still desperately searching for a male, HE comes wandering in. A stallion with a cock that seems to call out to you. As if fate had ordained the moment, you notice that he seems to be sized for you, and you leap at the chance to perform with him. When he ruts you, it's like magic, and you never leave his side.";
				otherwise:									[MALE]
					say "     You emerge from your experience a bit shaken. Some part of you wants to be a lusty bitch, but you aren't a bitch, you're a guy, and that's hard to reconcile. You experiment with the gay community, which seems to have no big trouble accepting a submissive dog willing to raise his tail at short notice, but you never feel quite right, at least until you run into her, a professed lesbian mutant, a collie, who seems just as uncomfortable as you. You start talking, and hit it off. Shy romance turns to heavy love making on the second date, and you two remain together.";
[			otherwise if gsd_pet < 12 or gsd_pet is 100:]			[***]
			otherwise:
				if cunts of player > 0 and cocks of player > 0:			[HERM]
					say "     As you emerge from the helicopter and set loose on the streets near the military's holding facility, a young man among the mob of reporters rushes up to you and starts asking questions rapidly.  What was it like?  Is having fur half as fun as it looks?  This young Internet reporter is a [']furry['] and quite entranced with a sentient dog person, especially a dual-gendered one.  At first, his attentions are quite annoying, but he is quite persistent after your release, even when you bite him once.  Well, a nip, really.  Despite your cold attitude, he does everything he can to be a good friend, helping you find a home and a job and generally being available.  Your anger eventually passes and accept that it's not him you're angry with.  And with it gone, other emotions have a chance to surface.  It's not long before you're sharing more than you ever thought.";
				otherwise if cunts of player is greater than 0:			[FEMALE]
					say "     Life as a bitch is a curious one. You find yourself eager to please, but not in the way that jerk of a dog wanted you to be. You become a courier, hurrying packages from one place to another, even across the wild wastes between cities, braving the dangers of infection and mutants to get mail and packages through.  You have several contacts throughout the infected city, relaying messages, gifts and sometimes illicit items to people within the infected metropolis for a price.  Almost as in direct defiance of your previous dominator, you live your life like a daredevil, wild and free.";
				otherwise:									[MALE]
					say "     Life as man's best friend isn't too bad. You get a job at a factory and become something of the workplace mascot. Everyone always seems happy to see you when you come in. You might not be human anymore, but you don't feel isolated, drinking with the guys and living out a normal life, surrounded by friends.  Your canine nature makes it easy for you to find willing partners, as dog strains are one of the most common while still giving you plenty of variety to enjoy.";
[			otherwise:			[***]
				say "Survived w/Korvin tamed.";	]

German Shepherd for FS ends here.
