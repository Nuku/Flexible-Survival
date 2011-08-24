Hungry Boar Man by hiccup begins here.

"Adds an encounter to Flexible Survival with a hungry boar man."

Section 1 - The Situation

Hungry Piggy is a situation.

HBMR is a number that varies.
Lastpigfed is a number that varies. Lastpigfed is usually 250.
Pigfed is a number that varies. Pigfed is usually 0.
Pigfucked is a number that varies. Pigfucked is usually 0.

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
		now tail of player is " You have a short and curly pig tail above your ass. ";
	if pigfed is greater than 1 and facename of player is not "Piggy":
		say "'Oh no, your face has been hideously mutated! Don't worry, I'll fix it!' Philip exclaims, as he approaches you and quickly licks his thick pig tongue across your face before you can react. Brief pain flares as his infection spreads to you rapidly, regaining your bald head, floppy pig ears, and upturned pig nose. Philip admires his work for a moment, then says, 'Much better.'[line break][line break]";
		now face of player is "bald head and floppy pig ears. The cheaks on your face are big and plump, surrounding your upturned pig nose. It looks hideous compared to your normal ";
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
			now tail of player is "You have a short and curly pig tail above your ass. ";
			increase stamina of player by 1;
			say "[bold type]YOUR STAMINA HAS INCREASED BY 1[roman type]";
			increase score by 5;							
		otherwise:
			say "'You don't have any food,' he oinks saddly.";
			now lastpigfed is 250;
			stop the action;
	otherwise if pigfed is 1:
		say "'I[apostrophe]m still digesting the food you gave me before. However, I did find some other food a few minutes ago. You fed me, so I want to pay you back by feeding you. You can eat it if you want.' He says as he holds out a strange box.[line break][line break]You take a look at the box and notice that it is different from all the other packages of food that you've found. There is a picture of a cartoon pig on the front. The name of the product is too faded for you to read.";
		say "Will you accept his offer and eat the food?";
		if player consents:
			say "'Here you go,' He oinks as he hands you the box, then he rolls over and promptly falls asleep in the mud.[line break][line break]You open the box and start chowing down on the food inside. As soon as you finish eating, you notice that the food didn't dull your hunger at all. That's when your entire head begins to feel strange. All the hair on your head falls out as your ears stretch out then flop downwards. Your nose aches for a second as the tip bends upwards until you're left with the nose of a pig. Your cheaks and face plump up with fat, making you look like you have beady little eyes and making it a little harder for you to see.";
			now face of player is "bald head and floppy pig ears. The cheaks on your face are big and plump, surrounding your upturned pig nose. It looks hideous compared to your normal ";
			now facename of player is "Piggy";
			increase stamina of player by 1;
			decrease perception of player by 1;
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
	if pigfed < 3:
		say "'I know it[apostrophe]s hard to resist my charmingly good looks,' Philip smiles, 'But the way to my heart is through my stomach and you simply haven't fed me enough times yet.'";
		stop the action;
	say "'I knew you couldn[apostrophe]t resist my, OINK!, studly physique.' Philip says as he jiggles his fat gut for emphasise while a grin spreads across his pig like face, 'Now, what should we do first?'[line break][line break]He takes a moment to look over your body, before he makes a decision.[line break][line break]";
	if pigfed is greater than 0 and tailname of player is not "Piggy":
		say "Philip frowns as he take a close look at you, then he grins and smears a handful of mud above your butt as he yells, 'Suuuueeeyyy, pig, pig, pig!'[line break][line break]You[apostrophe]re not sure if it[apostrophe]s the mud or his words that cause it, but your curly pig tail suddenly regrows.[line break][line break]";
		now tailname of player is "Piggy";
		now tail of player is " You have a short and curly pig tail above your ass. ";
	if pigfed is greater than 1 and facename of player is not "Piggy":
		say "'Oh no, your face has been hideously mutated! Don't worry, I'll fix it!' Philip exclaims, as he approaches you and quickly licks his thick pig tongue across your face before you can react. Brief pain flares as his infection spreads to you rapidly, regaining your bald head, floppy pig ears, and upturned pig nose. Philip admires his work for a moment, then says, 'Much better.'[line break][line break]";
		now face of player is "bald head and floppy pig ears. The cheaks on your face are big and plump, surrounding your upturned pig nose. It looks hideous compared to your normal ";
		now facename of player is "Piggy";
	if pigfed is greater than 2 and bodyname of player is not "Piggy":
		say "As you approach Philip, you accidentally step in some mud. Your feet begin to itch as they once more transform into pig hooves while your body plumps back up to piggy proportions.[line break][line break]";
		now bodyname of player is "Piggy";
		now body of player is "You have a big, fat body and you have pig hooves instead of feet. ";
	if cunts of player > 0:
		say "Philip takes you by the hand and gently lays you down on the ground. He massages your tits as he positions his bulk on top of you. His huge gut rests on top of you, pinning you down. When he finally has his huge boar cock in position, he takes a moment to rub the tip against the puffy and moist lips of your pussy. Then, without warning, he thrusts his tool past your [cunt size desc of player] nether lips and deep into your pussy. You gasp in surprise and pleasure as he begins to gyrate his chubby hips, sending his cock in and out of you. You can feel his huge balls slapping against your inner thighs with each thrust. Philip oinks and squeals as he ruts you and soon you join in. Finally you experience a thundering orgasm and Philip lets out one loud, long squeal then thrusts his cock as far into you as he can, as he spews his hot pig seed into you.";
		now pigfucked is 1;
		if breasts of player < 8:
			if "Male Preferred" is not listed in feats of player:
				say " As soon as Philip's pig cum floods into you, your chest begins to feel strange. Within moments, six new breasts form in rows of twos beneath your original breasts. You have sow tits!";
				now breasts of player is 8;	
	otherwise:
		say "Philip takes you by the hand and gently encourages you to kneel before him. Then he takes his shaft into one of his hands and says, 'Open wide.'[line break][line break]You stare at his rod hesitantly for a moment until the thick, musky scent of his boar cock makes you crave his seed. You hold his rod in your hands and you lick the tip of it a few times until it becomes hard. Then you gently guide it into your mouth. His shaft is so long that it reaches the back of your mouth and even a little bit into the top of your throat. You run your tongue up and down the length of his rod, causing Philip to moan happily. Finally, his boar cock dumps it's load into your mouth and you swallow every last drop. Mmm... his seed tastes like bacon grease.";
		now pigfucked is 1;
		if breasts of player < 8:
			if "Male Preferred" is not listed in feats of player:
				say " As soon as you swallow Philip's pig cum, your chest begins to feel strange. Within moments, six new breasts form in rows of twos beneath your original breasts. You have sow tits!";
				now breasts of player is 8;	

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
The description of Philip is "This creature is almost a complete pig, the only thing human about it is the fact that it is standing on two legs that end in hoofs instead of feet. He is extremely fat with a bald head, floppy ears, and an upturned nose. Flies are constantly buzzing around him, enticed by his foul odor. He has a huge, flabby gut that hangs half way over his crotch, but not far enough to hide a pig cock that is the size of your forearm. Past his cock is a pair of large swollen balls. He seems to take great delight in rolling around in the mud on the floor.";
Philip is in Pig Pen.
The conversation of Philip is { "Hello, oink!", "Snort!", "Do you think the people who come to rescue us will have lots of food?", "How did I end up like this? Some Jerk zapped me with a strange ray gun that turned me into this.", "I love the feeling of mud against my skin."};

When play ends:
	if Philip is in the Bunker:
		if hp of the player is greater than 0:
			if humanity of the player is less than 10:
				say "Despite your loss of humanity, Philip vows to care for you. But one day, he gets hungry and wanders off. Leaving you free to rape any unfortunate human that crosses your path.";
			otherwise if pigfucked is 1:
				if cocks of player < 1:
					if cunts of player > 0:
						say "Philip purchases a small pig farm out in the country and invites you to come live with him. You agree. Philip becomes your passionate lover as the two of you adjust to life on the farm. Eventually, your belly grows big and round. You're expecting your first litter of piglets any day now.";
						if Sandra is in the Bunker:
							if Snow is in the Grey Abbey Library:
								say "Sandra and Snow join you and Philip at the pig farm. The four of you spend your days having extremely wild and passionate orgies. Sandra and Snow are soon expecting their own litters of piglets. Philip feels like the luckiest pig in world now that he has his own personal harem.";
							otherwise:
								say "Sandra joins you and Philip at the pig farm. The three of you spend your days having passionate orgies. Sandra is soon expecting her own litter of piglets.";
						otherwise if Snow is in the Grey Abbey Library:
							say "Snow joins you and Philip at the pig farm. The three of you spend your days having passionate orgies. Snow is soon expecting her own litter of piglets.";
					otherwise:
						say "Philip remains a loyal... if somewhat gluttonous, friend and lover for the rest of your days.";
				otherwise:
					say "Philip remains a loyal... if somewhat gluttonous, friend and lover for the rest of your days.";
			otherwise:
				say "Philip remains a loyal... if somewhat gluttonous, friend for the rest of your days.";
				
Hungry Boar Man ends here.
