Version 3 of Hungry Boar Man by hiccup begins here.
[Version 3 - completed endings by Stripes]

"Adds an encounter to Flexible Survival with a hungry boar man."

Section 1 - The Situation

Hungry Piggy is a situation.

HBMR is a number that varies.
Lastpigfed is a number that varies. Lastpigfed is usually 800.
Pigfed is a number that varies. Pigfed is usually 0.
Pigfucked is a number that varies. Pigfucked is usually 0.
lastPhilipfucked is a number that varies.  lastPhilipfucked is usually 800.

Pigfeeding is an action applying to nothing.

understand "feed Philip" as pigfeeding;
understand "feed pig" as pigfeeding;
understand "feed the pig" as pigfeeding;
understand "feed hungry boar man" as pigfeeding;
understand "feed the hungry boar man" as pigfeeding;
understand "feed boar" as pigfeeding;
understand "feed the boar" as pigfeeding;

check pigfeeding:
	if Philip is not visible, say "Who?" instead;

Carry out pigfeeding:
	pigfeed;

To pigfeed:
	if pigfed is greater than 0 and tailname of player is not "Piggy":
		say "Philip frowns as he take a close look at you, then he grins and smears a handful of mud above your butt as he yells, 'Suuuueeeyyy, pig, pig, pig!'[line break][line break]You[apostrophe]re not sure if it[apostrophe]s the mud or his words that cause it, but your curly pig tail suddenly regrows.[line break][line break]";
		now tailname of player is "Piggy";
		now tail of player is " You have a short and curly pig tail above your ass.";
	if pigfed is greater than 1 and facename of player is not "Piggy":
		say "'Oh no, your face has been hideously mutated! Don't worry, I'll fix it!' Philip exclaims, as he approaches you and quickly licks his thick pig tongue across your face before you can react. Brief pain flares as his infection spreads to you rapidly, regaining your bald head, floppy pig ears, and upturned pig nose. Philip admires his work for a moment, then says, 'Much better.'[line break][line break]";
		now face of player is "has porcine with big and plump cheeks surrounding your upturned pig nose.  Your head is bald with big, floppy pig ears atop it.  Your face is rather hog-like now, with the occasional piggish snort to go along with it";
		now facename of player is "Piggy";
	if pigfed is greater than 2 and bodyname of player is not "Piggy":
		say "As you approach Philip, you accidentally step in some mud. Your feet begin to itch as they once more transform into pig hooves while your body plumps back up to piggy proportions.[line break][line break]";
		now bodyname of player is "Piggy";
		now body of player is "You have a big, fat body and you have pig hooves instead of feet. ";
	if lastpigfed - turns is less than 8:
		if pigfed is 3:
			say "'That's okay, I finally figured out how to scavenge safely on my own. You don't have to get food for me any more.' He oinks.";
			stop the action;
		otherwise:
			say "He groans and rubs his gut, 'I'm still digesting the food you gave me earlier. Come back later.'";
			stop the action;
	now lastpigfed is turns;
	if pigfed is 0:
		if food is owned:
			let number be 0;
			repeat with Q running through invent of the the player:
				increase number by 1;
				if q matches the regular expression printed name of food:
					remove entry number from invent of the player;
					break;
			now pigfed is 1;
			say "Thank you,' He shouts as he snatches the food from you and starts to gobble it down.[line break][line break]The boar man goes into a feeding frenzy. He barely chews as he stuffs the food into his mouth and swallows it down. He almost seems to get a little bit fatter before your eyes as he eats. Stray flecks of saliva fly from his mouth and splash on you. Your body immediately begins to feel strange. A loud ripping sound comes from the seat of your pants as a curly pig tail grows out above your butt.";
			now tailname of player is "Piggy";
			now tail of player is "You have a short and curly pig tail above your ass.";
			increase stamina of player by 1;
			if remainder after dividing stamina of player by 2 is 0:
				increase maxhp of player by level of player plus 1;
			say "[bold type]YOUR STAMINA HAS INCREASED BY 1[roman type]";
			increase score by 5;							
		otherwise:
			say "'You don't have any food,' he oinks sadly.";
			now lastpigfed is 250;
			stop the action;
	otherwise if pigfed is 1:
		say "'I[apostrophe]m still digesting the food you gave me before. However, I did find some other food a few minutes ago. You fed me, so I want to pay you back by feeding you. You can eat it if you want.' He says as he holds out a strange box.[line break][line break]You take a look at the box and notice that it is different from all the other packages of food that you've found. There is a picture of a cartoon pig on the front. The name of the product is too faded for you to read.";
		say "Will you accept his offer and eat the food?";
		if player consents:
			say "'Here you go,' He oinks as he hands you the box, then he rolls over and promptly falls asleep in the mud.[line break][line break]You open the box and start chowing down on the food inside. As soon as you finish eating, you notice that the food didn't dull your hunger at all. That's when your entire head begins to feel strange. All the hair on your head falls out as your ears stretch out then flop downwards. Your nose aches for a second as the tip bends upwards until you're left with the nose of a pig. Your cheaks and face plump up with fat, making you look like you have beady little eyes and making it a little harder for you to see.";
			now face of player is "has porcine with big and plump cheeks surrounding your upturned pig nose.  Your head is bald with big, floppy pig ears atop it.  Your face is rather hog-like now, with the occasional piggish snort to go along with it";
			now facename of player is "Piggy";
			increase stamina of player by 1;
			decrease perception of player by 1;
			if remainder after dividing stamina of player by 2 is 0:
				increase maxhp of player by level of player plus 1;
			say "[bold type]YOUR STAMINA HAS INCREASED BY 1[line break]YOUR PERCEPTION HAS GONE DOWN BY 1[roman type]";
			increase score by 5;
			now pigfed is 2;
		otherwise:
			say "'Suit yourself, more for me to eat later,' He shrugs.";
			stop the action;
	otherwise if pigfed is 2:
		say "'I[apostrophe]m hungry again,' Philip whines then looks at you eagerly, 'Can you give me more food?'";
		say "Will you give him some food?";
		if player consents:
			if food is owned:
				let number be 0;
				repeat with Q running through invent of the the player:
					increase number by 1;
					if q matches the regular expression printed name of food:
						remove entry number from invent of the player;
						break;
				say "Thank you,' He shouts as he snatches the food from you and starts to gobble it down.[line break][line break]The boar man goes into a feeding frenzy. He barely chews as he stuffs the food into his mouth and swallows it down. He almost seems to get a little bit fatter before your eyes as he eats. Stray flecks of saliva fly from his mouth and once again splash on you. Your body immediately begins to feel strange. Your body plumps up and your feet ache for a moment as they harden into pig hooves.[line break][line break]When he finishes eating, he eyes you appreciatively, then says, 'You seem to know how to find food. Can I come with you?'";
				now bodyname of player is "Piggy";
				now body of player is "big and fat and you have pig hooves instead of feet";
				say "Do you let him?";
				if player consents:
					add "water bottle" to invent of bunker;
					add "water bottle" to invent of bunker;
					move philip to Bunker;
					move player to bunker;
					now pigfed is 3;
					say "'Thank you!' He snorts and then follows you back to the bunker. When you arrive, he quickly makes himself at home, i.e. the bunker starts to smell as bad as he does. He even adds two bottles of water to your bunker supplies.[line break][line break]After he settles in, he approaches you and smiles a little as he says, 'You know, you've been so nice to me that I[apostrophe]ve realized that you must want to be more than friends. You want to become my piggy lover don't you? Let's rut like pigs in heat!'";
					increase score by 5;
					now the pig pen is not known;
					follow turnpass rule;
				otherwise:
					say "'Well... alright, I'll stay here for now,' He oinks.";							
			otherwise:
				say "'You don't have any food,' he oinks saddly.";
				now lastpigfed is 250;
				stop the action;
		otherwise:
			say "'Aww...,' he snorts.";
			now lastpigfed is 250;
			stop the action;		
	otherwise:
		if pigfed is 3:
			say "'That's okay, I finally figured out how to scavenge safely on my own. You don't have to get food for me any more.' He oinks.";
			stop the action;
		otherwise:
			say "He groans and rubs his gut, 'I'm still digesting the food you gave me earlier. Come back later.'";
			stop the action;

instead of fucking the philip:
	if Philip is not visible:
		say "Who?";
		stop the action;
	if lastPhilipfucked - turns is less than 6:
		say "'I know I'm a sexy stud and all,' the boar says, rubbing his big gut, 'but even I need to rest up before another go.  Don't worry, you can be my sow again soon.'";
		stop the action;
	if pigfed < 3:
		say "'I know it[apostrophe]s hard to resist my charmingly good looks,' Philip smiles, 'But the way to my heart is through my stomach and you simply haven't fed me enough times yet.'";
		stop the action;
	say "'I knew you couldn[apostrophe]t resist my, OINK!, studly physique.' Philip says as he jiggles his fat gut for emphasise while a grin spreads across his pig like face. 'Now, what should we do first?'[line break][line break]He takes a moment to look over your body, before he makes a decision.[line break][line break]";
	if pigfed is greater than 0 and tailname of player is not "Piggy":
		say "Philip frowns as he take a close look at you, then he grins and smears a handful of mud above your butt as he yells, 'Suuuueeeyyy, pig, pig, pig!'[line break][line break]You[apostrophe]re not sure if it[apostrophe]s the mud or his words that cause it, but your curly pig tail suddenly regrows.[line break][line break]";
		now tailname of player is "Piggy";
		now tail of player is " You have a short and curly pig tail above your ass.";
	if pigfed is greater than 1 and facename of player is not "Piggy":
		say "'Oh no, your face has been hideously mutated! Don't worry, I'll fix it!' Philip exclaims, as he approaches you and quickly licks his thick pig tongue across your face before you can react. Brief pain flares as his infection spreads to you rapidly, regaining your bald head, floppy pig ears, and upturned pig nose. Philip admires his work for a moment, then says, 'Much better.'[line break][line break]";
		now face of player is "has porcine with big and plump cheeks surrounding your upturned pig nose.  Your head is bald with big, floppy pig ears atop it.  Your face is rather hog-like now, with the occasional piggish snort to go along with it";
		now facename of player is "Piggy";
	if pigfed is greater than 2 and bodyname of player is not "Piggy":
		say "As you approach Philip, you accidentally step in some mud. Your feet begin to itch as they once more transform into pig hooves while your body plumps back up to piggy proportions.[line break][line break]";
		now bodyname of player is "Piggy";
		now body of player is "You have a big, fat body and you have pig hooves instead of feet. ";
	if cunts of player > 0:
		say "Philip takes you by the hand and gently lays you down on the ground. He massages your tits as he positions his bulk on top of you. His huge gut rests on top of you, pinning you down. When he finally has his huge boar cock in position, he takes a moment to rub the tip against the puffy and moist lips of your pussy. Then, without warning, he thrusts his tool past your [cunt size desc of player] nether lips and deep into your pussy. You gasp in surprise and pleasure as he begins to gyrate his chubby hips, sending his cock in and out of you. You can feel his huge balls slapping against your inner thighs with each thrust. Philip oinks and squeals as he ruts you and soon you join in. Finally you experience a thundering orgasm and Philip lets out one loud, long squeal then thrusts his cock as far into you as he can, as he spews his hot pig seed into you.";
		let baby be 0;
		if gestation of child is not 0, now baby is 1;
		say "[impregchance]";
		if baby is 0 and gestation of child is not 0:
			now facename of child is "Piggy";
			now bodyname of child is "Piggy";
			now skinname of child is "Piggy";
		if breasts of player < 8:
			if "Male Preferred" is not listed in feats of player and "One Pair" is not listed in feats of player:
				say "As soon as Philip's pig cum floods into you, your chest begins to feel strange. Within moments, six new breasts form in rows of twos beneath your original breasts. You have sow tits!";
				now breasts of player is 8;	
	otherwise if pigfucked is 3:
		say "Philip smiles at you as you start to kneel before him without his prompting.  He rubs his piggish hand over your ears and strokes your flabby cheek.  'Now, I've noticed you keep coming back to the big boar.  You must be looking for somethin['] special, my eager sow,' he oinks.  He pushes you down into the mud and squeals loudly as he jumps atop you, pressing you into it and pinning you beneath him.  His throbbing shaft finds its way under your curly tail and probes at your tailhole.  He smears some of the slick mud onto it like lube, then pushes his thick meat into you as you're pulling your face free of the muck.  The cool mud and hot shaft pushing into you make you squeal loudly and press back against him, ending any possible objections to the boar's desires.  He oinks and grunts loudly as he pounds away at you, slapping his flabby body against your wide bottom again and again.  When his cock throbs inside you and his hot seed rushes into your bottom, you moan in delight.  As he pulls out of you, he gives your fat rump a soft slap.  'Mmm... that wasn't none too bad.  Not my usual preference, but you make such a fine sow, you deserved a treat.'  His piggish fingers stroke your rear and tease your messy tailhole, slick and leaking his semen.";
		if breasts of player < 8:
			if "Male Preferred" is not listed in feats of player and "One Pair" is not listed in feats of player:
				say "As you pull your body from the mud, you find that you've once again gained a full set of eight piggish nipples down your front.";
				now breasts of player is 8;
	otherwise if pigfucked < 3 or a random chance of 2 in 3 succeeds:
		say "Philip takes you by the hand and gently encourages you to kneel before him. Then he takes his shaft into one of his hands and says, 'Open wide.'[line break][line break]You stare at his rod hesitantly for a moment until the thick, musky scent of his boar cock makes you crave his seed. You hold his rod in your hands and you lick the tip of it a few times until it becomes hard. Then you gently guide it into your mouth. His shaft is so long that it reaches the back of your mouth and even a little bit into the top of your throat. You run your tongue up and down the length of his rod, causing Philip to moan happily. Finally, his boar cock dumps it's load into your mouth and you swallow every last drop. Mmm... his seed tastes like bacon grease.";
		if breasts of player < 8:
			if "Male Preferred" is not listed in feats of player and "One Pair" is not listed in feats of player:
				say "As soon as you swallow Philip's pig cum, your chest begins to feel strange. Within moments, six new breasts form in rows of twos beneath your original breasts. You have sow tits!";
				now breasts of player is 8;
	otherwise:
		say "Philip pushes you down into the mud again and squeals that he's going to make you his sow again.  He grabs your fat ass and grinds his cock against it, moaning softly as his greasy pre leaks down between your cheeks.  He spreads the pre against your tailhole, then thrusts into you, making you squeal.  You groan as he presses his heavy body down over yours, forcing you down into the mud as he fucks you hard and fast.  His throbbing meat pounds away at you and the bunker is filled with the squeals and oinks of a rutting pair of hogs.  When his cum floods into your bowels, it feels so good, you can't help but cum also.  He gets off you slowly, teasingly calling you his sow as he fondles your messy bottom.";
		if breasts of player < 8:
			if "Male Preferred" is not listed in feats of player and "One Pair" is not listed in feats of player:
				say "As you pull your body from the mud, you find that you've once again gained a full set of eight piggish nipples down your front.";
				now breasts of player is 8;
	if pigfucked > 0 and cocks of player > 0 and cockname of player is not "Piggy":
		say "As the heat of Philip's strong cum warms your insides, you feel a tingle in your cock as it throbs and spurts its seed onto the messy floor.  Your shaft changes, becoming humanlike, but pinker.  It is musky and has a thick scent, much like your piggy lover's.";
	now cock of player is "pink and musky";
	now cockname of player is "Piggy";
	if pigfucked > 1:
		say "After finishing his fun with you, Philip rolls in the mud with you, snuggling and snuffling at your ears.  His piggish hands fondle your nipples, making you squeal like a pig, much to his delight";
		if skinname of player is not "Piggy":
			now skinname of player is "Piggy";
			now skin of player is "pink and piggy";
			say ".  The roll in the mud after sex seems to change you further as your skin changes and becomes a bright, fleshy pink with short, pale hairs.  The cool mud feels increasingly good against your skin as you pick up Philip's scent from it";
		say ".";
	increase pigfucked by 1;
	now lastPhilipfucked is turns;


After resolving a hungry piggy, try looking;

Instead of Resolving a Hungry Piggy:
	if hbmr is 0:	
		say "While exploring the city, you stumble upon an odd sight in the basement of one of the buildings. A water pipe must have burst at some point, because the floor of the entire room is covered in mud. What[apostrophe]s even stranger is that it looks like someone is living down here despite all the mud.[line break][line break]You spot a strange boar man rolling in the mud on the floor. He[apostrophe]s enjoying himself so much that it takes him awhile to realize that someone is in the room. When he finally does, he stares at you with his beady pig eyes for a moment. Not knowing if he[apostrophe]s friendly or not, you mentally brace yourself for a fight.[line break][line break]You relax a little when he smiles and says, 'Hello there! My name is Philip. Don[apostrophe]t worry, I[apostrophe]m not like those other creatures that are roaming the streets, humping everything in sight. I am really hungry though, could you please FEED me?'";
		increase hbmr by 1;
		move the player to Pig Pen;
		now the pig pen is known;
		increase the score by 1;
		now Hungry Piggy is Resolved;
									
Pig Pen is a room. It is fasttravel. It is private.

The description of Pig Pen is "Not a literal pig pen, a basement actually. The floor is covered in a thick layer of mud. It seems whomever lives here is well stocked with small bottles of water, but there is no food anywhere, just a bunch of empty wrappers. There is a foul odor in the air.";
Philip is a man.
The description of Philip is "This creature is almost a complete pig, the only thing human about it is the fact that it is standing on two legs that end in hoofs instead of feet. He is extremely fat with a bald head, floppy ears, and an upturned nose. Flies are constantly buzzing around him, enticed by his foul odor. He has a huge, flabby gut that hangs half way over his crotch, but not far enough to hide a pig cock that is the size of your forearm. Past his cock is a pair of large swollen balls. He seems to take great delight in rolling around in the mud on the floor[if Philip is in Bunker].  He's made a mudhole of his own in one corner of the bunker by breaking a whole in the wall and cracking a pipe.  He and spends much of his time lounging in it[end if].";
Philip is in Pig Pen.
The conversation of Philip is { "Hello, oink!", "Snort!", "Do you think the people who come to rescue us will have lots of food?", "How did I end up like this? Some Jerk zapped me with a strange ray gun that turned me into this.", "I love the feeling of mud against my skin."};

When play ends:
	if bodyname of player is not "Messy Pig" and bodyname of player is not "Piggy":
		if Philip is in the Bunker:
			if humanity of the player is less than 10:
				say "     Despite your loss of humanity, Philip vows to care for you. But one day, he gets hungry and wanders off. Leaving you free to rape any unfortunate human that crosses your path.";
			otherwise if pigfucked > 0:
				if cocks of player is 0:
					if cunts of player > 0:
						say "     Philip purchases a small pig farm out in the country and invites you to come live with him. You agree. Philip becomes your passionate lover as the two of you adjust to life on the farm. Eventually, your belly grows big and round. You're expecting your first litter of piglets any day now.";
						if Sandra is in the Bunker:
							if Snow is in the Grey Abbey Library:
								say "     Sandra and Snow join you and Philip at the pig farm. The four of you spend your days having extremely wild and passionate orgies. Sandra and Snow are soon expecting their own litters of piglets. Philip feels like the luckiest pig in world now that he has his own personal harem.";
							otherwise:
								say "     Sandra joins you and Philip at the pig farm. The three of you spend your days having passionate orgies. Sandra is soon expecting her own litter of piglets.";
						otherwise if Snow is in the Grey Abbey Library:
							say "     Snow joins you and Philip at the pig farm. The three of you spend your days having passionate orgies. Snow is soon expecting her own litter of piglets.";
						if sarahslut is 4:
							say "     Sarah's numerous pups make fine farm dogs.  You set up a nice kennel to breed them on the farm as well.  They guard the farm and make for fine playthings when not enjoying messy, piggy sex.";
					otherwise:
						say "     Philip remains a loyal... if somewhat gluttonous, friend and lover for the rest of your days.";
				otherwise:
					say "     Philip remains a loyal... if somewhat gluttonous, friend and lover for the rest of your days.";
			otherwise:
				say "     Philip remains a loyal... if somewhat gluttonous, friend for the rest of your days.";
	otherwise if bodyname of player is "Messy Pig" or bodyname of player is "Piggy":
		if humanity of player is less than 10:
			if pigfucked > 0:
				if cunts of player > 0:
					say "     As time wears on, you can't hold back against your growing urges.  Your identity falls apart, leaving only your base needs for food and sex.  Heading back to the bunker, you join Philip in a long and messy romp on the dirty floor, letting the sweat and the juices of your combined fluids add to the muck you both roll around in.  The boar gets dirtier, smellier and all the more attractive to you.  And more lustful as he joins you in succumbing to the infection.  Together, happily filled with his seed, you head back to the [if restaurantpig is 1]posh restaurant[otherwise]sewers below the mall[end if] to seek out the lovely sow there.  Philip charges over and mounts you both in turn, rutting you over and over again in a marathon of sex.  Together, the three of you set up a messy sty filled with the sounds of sows, sex and piglets.  He adds several other sows to his sty as well, filling them with piglets as he ruts them in the muck.";
				otherwise if pigfucked > 2:
					say "     As time wears on, you can't hold back against your growing urges.  Your identity falls apart, leaving only your base needs for food and sex.  Heading back to the bunker, you join Philip in a long and messy romp on the dirty floor, mounting you and taking you like his sow again and again.  Your combined sweat and semen add to the muck you both roll around in.  The boar gets dirtier, smellier and all the more attractive to you.  And more lustful as he joins you in succumbing to the infection.  Quite sticky and messy, with your boar's cum leaking from your well-used tailhole, you head together to the [if restaurantpig is 1]posh restaurant[otherwise]sewers below the mall[end if] to seek out the lovely sow there.  Together, the three of you set up a messy sty.  Philip is a good boar to you both, filling you with assloads of cum and her with piglets.  He adds several other sows to his sty as well, filling them with piglets as he ruts them in the muck.";
				otherwise:
					say "     As time wears on, you can't hold back against your growing urges.  Your identity falls apart, leaving only your base needs for food and sex.  Heading back to the bunker, you join Philip in a long and messy romp on the dirty floor, cumming on one another again and again.  Your combined sweat and semen add to the muck you both roll around in.  The boar gets dirtier, smellier and all the more attractive to you.  And more lustful as he joins you in succumbing to the infection.  Quite sticky and messy, you head together to the [if restaurantpig is 1]posh restaurant[otherwise]sewers below the mall[end if] to seek out the lovely sow there.  Together, the three of you set up a messy sty filled with the sounds of sows, sex and piglets.  You and Philip take turns mounting her and the others who are fortunate enough to be caught and made into sows for you as well.";
			otherwise if Philip is in the Bunker:
				if cocks of player > 0:
					say "     As time wears on, you can't hold back against your growing urges.  Your identity falls apart, leaving only your base needs for food and sex.  After wandering back to the bunker, you are joined by Philip who follows you off into the city, drawn by your heavy scent.  You head together to the [if restaurantpig is 1]posh restaurant[otherwise]sewers below the mall[end if] to seek out the lovely sow there.  As you rut the pig, squealing loudly as you do, he looks on lustfully before heading off.  Some time later, as you both are resting after your marathon of sex, he returns with a semi-transformed sow of his own.  He tosses her into the mess made by you both and mounts her, taking her roughly until her transformation is complete.  You and Philip set up a nice, big sty for your growing harem of sows and their piglets.";
				otherwise:
					say "     As time wears on, you can't hold back against your growing urges.  Your identity falls apart, leaving only your base needs for food and sex.  After wandering back to the bunker, you are joined by Philip who follows you off into the city, drawn by your heavy scent.  You head together to the [if restaurantpig is 1]posh restaurant[otherwise]sewers below the mall[end if] to seek out the lovely sow there.  As you and her grope and fondle one another lustfully, it gets to be too much for the boar.  He charges over and mounts you both in turn, rutting you over and over again in a marathon of sex.  The sweat and the juices of your combined fluids add to the muck you both roll around in.  The boar gets dirtier, smellier and all the more attractive to you both.  Together, the three of you set up a messy sty filled with the sounds of sows, sex and piglets.";
			otherwise:
				if cocks of player > 0:
					say "     As time wears on, you can't hold back against your growing urges.  Your identity falls apart, leaving only your base needs for food and sex.  You head to the [if restaurantpig is 1]posh restaurant[otherwise]sewers below the mall[end if] to seek out the lovely sow there.  You rut the pig, squealing loudly as you do, in a long marathon of sex [if restaurantpig is 1]and eating[end if].  You rut her again and again, filling her with your seed over and over in a marathon of sex.  The sweat and the juices of your combined fluids add to the muck you both roll around in.  Together, you set up a messy sty filled with the sounds of sows, sex and piglets.";
				otherwise:
					say "     As time wears on, you can't hold back against your growing urges.  Your identity falls apart, leaving only your base needs for food and sex.  You head to the [if restaurantpig is 1]posh restaurant[otherwise]sewers below the mall[end if] to seek out the lovely sow there.  You and the pig roll around in the muck, groping and fondling one another lustfully for a marathon of sex.  Together, you set up a messy sty, adding several other sows to your group.  From time to time, you girls are able to lure in (or grab) a male creature from the city and ride him in the muck to fill your wombs with lovely hybrid piglets until he becomes another sow to wait her turn to be filled.";
		otherwise:
			if pigfucked > 0:
				if cunts of player > 0:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason.  But at least it ends up being brief, as they don't seem to want to keep you around long either.  You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive sow.  Only Philip really goes out of his way to spend time with you, though the guards won't give you a chance to show the boar how much you appreciate his affection.";
					say "     But once you get cleared, oh then you are all over him, letting your big boar rut you again and again.  After so long without satisfaction, you both are eager to get to breeding.  His hefty rod fills you repeatedly with his hot seed, several times a day for the first week.  When later you start to grow full with piglets, he smiles happily, arranging to purchase a lovely pig farm to share with you.  It becomes your rustic love nest and breeding sty.";
				otherwise if pigfucked > 2:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason.  But at least it ends up being brief, as they don't seem to want to keep you around long either.  You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive boar.  Only Philip really goes out of his way to spend time with you, though the guards won't give you a chance to show the boar how much you appreciate his affection.";
					say "     But once you get cleared, oh then you are on your knees for him, letting your big boar rut you again and again.  After so long without satisfaction, you both are eager have your big boar take you like a sow and filling your ass with his cum.  His hefty rod fills you repeatedly with his hot seed, several times a day for the first week.";
					say "     You work odd jobs from time to time, never really staying very long at anything as your strong scent is too much for most other people.  Philip sets himself up with a small pig farm and eventually invites you out to join him.  He drives his cock into your ass and ruts you like a sow often to hear you squeal for him as he fucks you in the muddy sty.";
				otherwise:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason.  But at least it ends up being brief, as they don't seem to want to keep you around long either.  You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive boar.  Only Philip really goes out of his way to spend time with you, though the guards won't give you a chance to show the boar how much you appreciate his affection.";
					say "     But once you get cleared, oh then you are on your knees for him, sucking his cock in thanks for his kindness.  After so long without satisfaction, big boar while you stroke yourself off to make a sticky mess on his hooves.";
					say "     You work odd jobs from time to time, never really staying very long at anything as your strong scent is too much for most other people.  Philip sets himself up with a small pig farm and eventually invites you out to join him.  You both have an enjoyable life of running the farm and rutting the sows.";
			otherwise if Philip is in the Bunker:
				if cunts of player > 0:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason.  But at least it ends up being brief, as they don't seem to want to keep you around long either.  You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive woman.  Only Philip really goes out of his way to spend time with you, making the wait tolerable at least.";
					say "     After your eventual release, Philip visits often, bringing small chocolates or other treats for you.  He is friendly and talks to you about how busy he is with his new pig farm, though he always seems to have time to visit you.  You have trouble making new friends for some reason, despite your lovely, chubby figure and fragrant scent, but the boar keeps you company.";
					say "     As your remaining funds start to run dry after having trouble getting work, he drops to one knee and asks to join him on his farm.  Only then do you realize that this big boar has been wooing you the whole time.  You agree eagerly and are at his farm that very night, pressed beneath him as he ruts you long and hard, having wanted you as his lovely sow for so long.";
				otherwise:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason.  But at least it ends up being brief, as they don't seem to want to keep you around long either.  You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive boar.  Only Philip really goes out of his way to spend time with you, making the wait tolerable at least.";
					say "     After your eventual release, you keep in contact with Philip and visit his new pig farm from time to time.  You struggle to find work for some time, getting odd jobs for a while before getting an idea.  Inspired by Philip's moderate success as a farmer, you eventually set yourself up with a small truffle farm.  The work, coming naturally to you, is a pleasure to do and you do well enough at it to make a decent living for the first time since your infection.  After you finish each year's harvest, you and Philip celebrate with a long night with his sows.";
			otherwise:
				if cocks of player > 0:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason.  But at least it ends up being brief, as they don't seem to want to keep you around long either.  You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive boar, but no one else you meet seems to realize this.";
					say "     After your eventual release, you have difficulty finding steady work.  No one seems to appreciate your rich fragrance.  You only manage to get odd jobs for quite a while before eventually becoming a garbage man.  The prevalent scent of your work keeps your coworkers from complaining about your scent and some part of you always enjoys getting dirtier and smellier from a day's work.";
					say "     You manage to hit it off with a raccoon sanitation worker from the next town over during a union function.  She is a full-figured woman with wide hips, pudgy thighs and ample breasts.  And the fact that she's a little scruffy and likes getting messy as well suits you just fine.  After several dirty romps with her, she gets a transfer and moves in with you.  Soon enough, you have a house full of messy little raccoon kits and piglets.";
				otherwise:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason.  But at least it ends up being brief, as they don't seem to want to keep you around long either.  You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive woman, but no one else you meet seems to realize this.";
					say "     After your eventual release, you have difficulty finding steady work.  No one seems to appreciate your rich fragrance.  You only manage to get odd jobs for quite a while before eventually becoming a garbage woman.  The prevalent scent of your work keeps your coworkers from complaining about your scent and some part of you always enjoys getting dirtier and smellier from a day's work.";
					say "     One day while working the bulldozer at the far end of the landfill, a friendly coworker calls you over.  When you climb out to join the seagull, he presses you down into the trash and mounts you.  You try your best to muffle your squeals of delight, not wanting to get into trouble, but loving the nasty feeling of being fucked at work on a messy pile of trash.  After filling you, he invites you to join him at his place after work for more.  That night is a wild romp that soon becomes more and more nights of the same.  You move into his love nest and bear him clutch after clutch of eggs filled with winged piggies, loving your messy, dirty bird.";
			if ( pigfucked > 0 ) or ( cunts of player > 0 and Philip is in Bunker ):	[Philip farm endings]
				if Sandra is in the Bunker:
					if Snow is in the Grey Abbey Library:
						say "     Sandra and Snow join you and Philip at the pig farm. The four of you spend your days having extremely wild and passionate orgies. Sandra and Snow are soon expecting their own litters of piglets. Philip feels like the luckiest pig in world now that he has his own personal harem.";
					otherwise:
						say "     Sandra joins you and Philip at the pig farm. The three of you spend your days having passionate orgies. Sandra is soon expecting her own litter of piglets.";
				otherwise if Snow is in the Grey Abbey Library:
					say "     Snow joins you and Philip at the pig farm. The three of you spend your days having passionate orgies. Snow is soon expecting her own litter of piglets.";
			if Philip is in Bunker:										[any farm ending]
				if sarahslut is 4:
					say "     Sarah's numerous pups make fine farm dogs.  You set up a nice kennel to breed them on the farm as well.  They guard the farm and make for fine playthings when you're not enjoying messy, piggy sex.";



Hungry Boar Man ends here.