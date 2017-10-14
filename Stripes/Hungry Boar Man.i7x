Version 4 of Hungry Boar Man by Stripes begins here.
[Version 4.0 - Joining the P.I.G. Fraternity]
[- Originally Authored By: Hiccup -]

"Adds an encounter to Flexible Survival with a hungry boar man."

Section 1 - The Situation

Hungry Piggy is a situation.

After resolving a hungry piggy, try looking;

Instead of Resolving a Hungry Piggy:
	if hbmr is 0:
		say "While exploring the city, you stumble upon an odd sight in the basement of one of the buildings. A water pipe must have burst at some point, because the floor of the entire room is covered in mud. What's even stranger is that it looks like someone is living down here despite all the mud.[line break][line break]You spot a strange boar man rolling in the mud on the floor. He's enjoying himself so much that it takes him awhile to realize that someone is in the room. When he finally does, he stares at you with his beady pig eyes for a moment. Not knowing if he's friendly or not, you mentally brace yourself for a fight.[line break][line break]You relax a little when he smiles and says, 'Hello there! My name is Philip. Don't worry, I'm not like those other creatures that are roaming the streets, humping everything in sight. I am really hungry though, could you please FEED me?'";
		increase hbmr by 1;
		move the player to Pig Pen;
		now the pig pen is known;
		increase the score by 1;
		now Hungry Piggy is Resolved;


Section 2 - Pig Pen

Pig Pen is a room. It is fasttravel. It is private.

The description of Pig Pen is "Not a literal pig pen, a basement actually. The floor is covered in a thick layer of mud. It seems whomever lives here is well stocked with small bottles of water, but there is no food anywhere, just a bunch of empty wrappers. There is a foul odor in the air.".

instead of sniffing Pig Pen:
	say "This place smells like a sty. Oh... wait... yeah.";


Section 3 - Philip the Piggy

HBMR is a number that varies.
Lastpigfed is a number that varies. Lastpigfed is usually 800.
Pigfed is a number that varies. Pigfed is usually 0.
Pigfucked is a number that varies. Pigfucked is usually 0.
lust of philip is 255.

Philip is a man.
The description of Philip is "This creature is almost a complete pig, the only thing human about it is the fact that it is standing on two legs that end in hoofs instead of feet. He is extremely fat with a bald head, floppy ears, and an upturned nose. Flies are constantly buzzing around him, enticed by his foul odour. He has a huge, flabby gut that hangs half way over his crotch, but not far enough to hide a pig cock that is the size of your forearm. Past his cock is a pair of large swollen balls. He seems to take great delight in rolling around in the mud on the floor[if Philip is in Bunker]. He's made a mudhole of his own in one corner of the bunker by breaking a hole in the wall and cracking a pipe. He spends much of his time lounging in it[end if]. Looking at all the mud, the idea of [bold type]wrestling[roman type] with Philip in it just springs to your mind all of its own.".
Philip is in Pig Pen.
The conversation of Philip is { "Oink!" }.

instead of conversing Philip:
	if piginitiation is 2:
		if player is in bunker:
			say "     Deciding to give it a shot, you ask Philip if he knows anything about the Phi Iota Gamma fraternity you encountered. 'Ahhh, the mighty Phi Iota Gamma... *oink* *snort* ...those were the days. I was the frat's mud wrestling champ. How do you think I got to be good? Mmm... I miss the ole mudhole. We had some really good parties. I wonder how the place is doing these days...' he muses, rubbing his roly-poly belly.";
			say "     Seeing your opportunity, you tell him that it seems to be doing really well, just having had a really wild party the other day. Plenty of beer, lots of horny sows, all still there and having a good time. You add that you'd wanted to check it out, but they'd said it was for frat brothers only.";
			say "     He nods at this. 'Yeah, them's the rules,' he mutters, clearly already thinking of the prospect of beer and sows. 'Ain't nothing saying I can't go though. You can be my guest and we can get you initiated into the mighty Phi Iota Gamma.'  He wraps his big arm around you and hugs you to his muddy body, grinning merrily and oinking up a storm as the requisite response.";
			say "     Having gotten just what you'd wanted, you get Philip on the move before his enthusiasm fades into lethargy. 'Here, I'll teach you the secret handshake on the way. Now normally it takes a while for a freshman like you to be inducted into the frat, but with me there to sponsor you, you'll be a shoe-in.'";
			attempttowait;
			say "[pig_fratinitiation]";
		else:
			say "     Deciding to give it a shot, you ask Philip if he knows anything about the Phi Iota Gamma fraternity you encountered. 'Ahhh, the mighty Phi Iota Gamma... *oink* *snort* ...those were the days. I was the frat's mud wrestling champ. How do you think I got to be good?'  He rolls over in the mud a few times, thinking back on those times.";
			say "     You try to suggest that he sponsor you to join the frat, but he just rubs his tummy. 'Now, I don't know... you've not really proven yourself to be Phi Iota Gamma material. Besides, I've got some food worries to deal with. Why just you just focus [bold type]FEED[roman type]ing me until I'm satisfied and we'll see if you're ready for the mighty Phi Iota Gamma?'  He chuckles, unleashing another wave of oinks and squeals.";
			now piginitiation is 3;
	else if piginitiation is 3 and a random chance of 1 in 3 succeeds and philip is in the bunker and ( cocks of player > 0 or cunts of player > 0 ):
		say "     Deciding to bring up his old fraternity again now that he's fed and safe, you get a much better response from the big piggy. 'Those were some good times back with the guys at the mighty Phi Iota Gamma,' he says with a series of loud oinking at the end. 'Mmm... I miss the ole mudhole. We had some really good parties. I wonder how the place is doing these days...' he muses, rubbing his roly-poly belly.";
		say "     Seeing your opportunity, you tell him that it seems to be doing really well, just having had a really wild party the other day. Plenty of beer, lots of horny sows, all still there and having a good time. You add that you'd wanted to check it out, but they'd said it was for frat brothers only.";
		say "     He nods at this. 'Yeah, them's the rules,' he mutters, clearly already thinking of the prospect of beer and sows. 'Ain't nothing saying I can't go though. You can be my guest and we can get you initiated into the mighty Phi Iota Gamma.'  He wraps his big arm around you and hugs you to his muddy body, grinning merrily and oinking up a storm as the requisite response.";
		say "     Having gotten just what you'd wanted, you get Philip on the move before his enthusiasm fades into lethargy. 'Here, I'll teach you the secret handshake on the way. Now normally it takes a while for a freshman like you to be inducted into the frat, but with me there to sponsor you, you'll be a shoe-in.'";
		attempttowait;
		say "[pig_fratinitiation]";
	else:
		say "[one of]'Hello, oink!'[or]'Snort!'[or]'Do you think the people who come to rescue us will have lots of food?'[or]'How did I end up like this? Some jerk zapped me with a strange ray gun that turned me into this.'[or]'I love the feeling of mud against my skin.'[at random]";

the fuckscene of philip is "[sexwithphilip]".

instead of sniffing Philip:
	say "Philip has the strong scent of a male hog[if pigfucked > 3]. You've become quite used to his musky scent and find it quite arousing now[end if].";


Section 4 - Feeding/Wrestling the Piggy

the linkaction of Philip is "Possible Actions: [link]talk[as]talk Philip[end link], [link]smell[as]smell Philip[end link], [link]fuck[as]fuck Philip[end link], [link]feed[as]feed Philip[end link], [link]wrestle[as]wrestle Philip[end link][line break]";


Pigfeeding is an action applying to nothing.

understand "feed Philip" as pigfeeding.
understand "feed pig" as pigfeeding.
understand "feed the pig" as pigfeeding.
understand "feed hungry boar man" as pigfeeding.
understand "feed the hungry boar man" as pigfeeding.
understand "feed boar" as pigfeeding.
understand "feed the boar" as pigfeeding.

check pigfeeding:
	if Philip is not visible, say "Who?" instead;

Carry out pigfeeding:
	pigfeed;

To pigfeed:
	setmonster "Piggy";
	choose row monster from the table of random critters;
	if pigfed is greater than 0 and tailname of player is not "Piggy":
		say "     Philip frowns as he take a close look at you, then he grins and smears a handful of mud above your butt as he yells, 'Suuuueeeyyy, pig, pig, pig!'  You're not sure if it's the mud or his words that cause it, but your curly pig tail suddenly regrows.";
		now tailname of player is "Piggy";
		now tail of player is tail entry;
	if pigfed is greater than 1 and facename of player is not "Piggy":
		say "     'Oh no, your face has been hideously mutated! Don't worry, I'll fix it!' Philip exclaims, as he approaches you and quickly licks his thick pig tongue across your face before you can react. Brief pain flares as his infection spreads to you rapidly, regaining your bald head, floppy pig ears, and upturned pig nose. Philip admires his work for a moment, then says, 'Much better.'";
		now facename of player is "Piggy";
		now face of player is face entry;
	if pigfed is greater than 2 and bodyname of player is not "Piggy":
		say "     As you approach Philip, you accidentally step in some mud. Your feet begin to itch as they once more transform into pig hooves while your body plumps back up to piggy proportions.";
		now bodyname of player is "Piggy";
		now body of player is "quite big, plump and fat with pig hooves instead of feet";
		attributeinfect;
	if lastpigfed - turns is less than 8:
		if pigfed is 3:
			say "     'That's okay, I finally figured out how to scavenge safely on my own. You don't have to get food for me any more.'  He oinks.";
		else:
			say "     He groans and rubs his gut, 'I'm still digesting the food you gave me earlier. Come back later.'";
	else if pigfed is 0:
		now lastpigfed is turns;
		if food is owned:
			delete food;
			now pigfed is 1;
			say "     Thank you,' He shouts as he snatches the food from you and starts to gobble it down. The boar man goes into a feeding frenzy. He barely chews as he stuffs the food into his mouth and swallows it down. He almost seems to get a little bit fatter before your eyes as he eats. Stray flecks of saliva fly from his mouth and splash on you. Your body immediately begins to feel strange. A loud ripping sound comes from the seat of your pants as a curly pig tail grows out above your butt.";
			now tailname of player is "Piggy";
			now tail of player is tail entry;
			increase score by 5;
		else:
			say "     'You don't have any food,' he oinks sadly.";
			now lastpigfed is 250;
	else if pigfed is 1:
		now lastpigfed is turns;
		say "     'I'm still digesting the food you gave me before. However, I did find some other food a few minutes ago. You fed me, so I want to pay you back by feeding you. You can eat it if you want.'  He says as he holds out a strange box.";
		say "     You take a look at the box and notice that it is different from all the other packages of food that you've found. There is a picture of a cartoon pig on the front. The name of the product is too faded for you to read.";
		say "     [bold type]Will you accept his offer and eat the food?[roman type][line break]";
		Line Break;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			say "     'Here you go,' he oinks as he hands you the box, then he rolls over and promptly falls asleep in the mud.";
			say "     You open the box and start chowing down on the food inside. As soon as you finish eating, you notice that the food didn't dull your hunger at all. That's when your entire head begins to feel strange. All the hair on your head falls out as your ears stretch out then flop downwards. Your nose aches for a second as the tip bends upwards until you're left with the nose of a pig. Your cheeks and face plump up with fat, making you look like you have beady little eyes and making it a little harder for you to see.";
			now face of player is face entry;
			now facename of player is "Piggy";
			increase score by 5;
			now pigfed is 2;
		else:
			say "     'Suit yourself, more for me to eat later,' he says with a shrug.";
	else if pigfed is 2:
		now lastpigfed is turns;
		say "     'I'm hungry again,' Philip whines then looks at you eagerly. 'Can you give me more food?'";
		say "     [bold type]Will you give him some food?[roman type][line break]";
		Line Break;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			if food is owned:
				delete food;
				say "     Thank you,' he shouts as he snatches the food from you and starts to gobble it down.";
				say "     The boar man goes into a feeding frenzy. He barely chews as he stuffs the food into his mouth and swallows it down. He almost seems to get a little bit fatter before your eyes as he eats. Stray flecks of saliva fly from his mouth and once again splash on you. Your body immediately begins to feel strange. Your body plumps up and your feet ache for a moment as they harden into pig hooves.";
				say "     When he finishes eating, he eyes you appreciatively, then says, 'You seem to know how to find food. Can I come with you?'";
				now bodyname of player is "Piggy";
				now body of player is body entry;
				attributeinfect;
				say "     Do you let him?";
				if player consents:
					add "water bottle" to invent of bunker;
					add "water bottle" to invent of bunker;
					move philip to Bunker;
					move player to bunker;
					now pigfed is 3;
					say "     'Thank you!' he snorts and then follows you back to the bunker. When you arrive, he quickly makes himself at home, i.e. the bunker starts to smell as bad as he does. He does at least add two bottles of water to your bunker supplies.";
					say "     After he settles in, he approaches you and smiles a little as he says, 'You know, you've been so nice to me that I've realized that you must want to be more than friends. You want to become my piggy lover, don't you? Let's rut like pigs in heat!'";
					increase score by 5;
					now lust of philip is turns;	[starts availability counter on Philip + Sandra]
					now the pig pen is not known;
					now pig pen is not fasttravel;
					follow turnpass rule;
				else:
					say "     'Well... alright, I'll stay here for now,' he oinks.";
			else:
				say "     'You don't have any food,' he oinks sadly.";
				now lastpigfed is 250;
		else:
			say "     'Aww...,' he snorts.";
			now lastpigfed is 250;
	else:
		if pigfed is 3:
			say "     'That's okay, I finally figured out how to scavenge safely on my own. You don't have to get food for me any more.'  He grins and rubs his gut, oinking happily at his plumpness.";
		else:
			say "     He groans and rubs his gut, 'I'm still digesting the food you gave me earlier. Come back later.'";

Mudwrestling is an action applying to nothing.

understand "wrestle Philip" as Mudwrestling.
understand "wrestle pig" as Mudwrestling.
understand "wrestle the pig" as Mudwrestling.
understand "wrestle hungry boar man" as Mudwrestling.
understand "wrestle the hungry boar man" as Mudwrestling.
understand "wrestle boar" as Mudwrestling.
understand "wrestle the boar" as Mudwrestling.

check Mudwrestling:
	if Philip is not visible, say "Who?" instead;

Carry out Mudwrestling:
	Mudwrestle;

To Mudwrestle:
	setmonster "Piggy";
	choose row monster from the table of random critters;
	if lastfuck of Philip - turns is less than 6:
		say "     'I know I'm a sexy stud and all,' the boar says, rubbing his big gut, 'but even I need to rest up a while after having sex. Don't worry, we can have some fun in the mud soon.'";
	else:
		say "     As you step up to Philip and ask to wrestle him, the boar says 'A challenger for the champion of this mud pit, hm? I've got to warn you, no one's ever beaten me. I mean - how would they, with this hot bod.' Grinning, he rubs his big gut, then shows off a thick flabby arm. 'Go on and strip, real wrestling is done naked!' With that, Philip throws himself into the mud, wallowing in it and smearing it all over himself as he waits for you.";
		say "     Nude wrestling with a horny pigman? You can see where this could be going from a mile away. Do you really want to do it, knowing that he's in his element there, and has to have at least some muscles under all that fat (since he can move his big bulk without too much effort).";
		if player consents:
			if "Submissive" is listed in feats of player:
				Line Break;
				say "     You take off your gear and clothing, hands trembling in anticipation of wrestling with the male boar. Imagination running rampant with thoughts of what he'll do to you, manhandling your body, you distractedly stack everything in a small pile far enough away so it doesn't get dirty, then step into the slippery mud with Philip. The boar man chuckles as he looks at you, eyes on your [if cocks of player > 0]already half hard cock[else if cunts of player > 0]already slightly swollen and moist pussy[else]blushed face[end if], and says with a grin 'Someone's excited. You just can't wait for this, can you?' Directing you to take position opposite himself, he calls out 'Go!' and wades towards you. The wrestling battle that follows isn't all that long, as your submissive nature makes you pant and moan with the feeling of his hands on your body and you have to concentrate hard to not just give in and let him do whatever he wants to you. Still, even though you're not really trying to win, it wouldn't do to disappoint the proud pig-man by folding too quickly. You do go through the moves as good as you can, which isn't all that great, as just can't get a grip on the boar's body, wobbly and liberally smeared with slick mud as it is. Eventually, he brings you to the ground with a move that might have come from sumo-wrestling, which leaves you lying on your back with a muddy splash, then bears down on you with much of his weight to keep you down.";
				if a random chance of 1 in 2 succeeds:
					if "Kinky" is listed in feats of player:
						say "     You feel pretty flattened, with Philip lying halfway across your chest, and the... aroma of the mud all around you distracts you from any thoughts for moves to get out of this situation. Trying to only breathe through your mouth, you give an aroused sigh at being so fully in the power of another and admit defeat, much to the elation of your boar opponent. Philip grins down at you and says 'You give up? Ok, now show me that you really mean it.' With that, he wiggles on top of you a bit, bringing his armpit right over your face. Phew, how could he have gotten this sweaty in such short a match? 'Go on, lick it' he says, and you comply, getting an overwhelmingly strong impression of his odor as you raise your head, pressing your nose against his pit while you run your tongue over it.";
						say "     Even though the smell isn't something the usual person would enjoy, something just clicks inside your head and you just keep going, relishing in the kinky fun this horny boar pushed you into. You nuzzle into the wet hair under his arm, taking a deep sniff while playing the tip of your tongue over his sweaty flesh. Philip gives a pleased groan at your eager and active attention, then says 'Yeah, just like that.' while suppressing tiny giggles at your tickling touch. After a few moments more with you lapping away at his armpit, the aroused boar lifts his heavy bulk off you and raises his other arm, pulling your face under it. Presented with an all new and pretty sweaty pit, you immediately get to work and attack it with your tongue. Even though you kinda get off on all this, as you continue to lick and sniff Philip, the full force of the combined smell and taste you've been indulging in finally gets to you. Your eyes water and you're somewhat dazed like from a blow between the eyes, so much so that you don't react at all as Philip lets go and stands up.";
					else:
						say "     You feel pretty flattened, with Philip lying halfway across your chest, and the... aroma of the mud all around you distracts you from any thoughts for moves to get out of this situation. Trying to only breathe through your mouth, you give an aroused sigh at being so fully in the power of another and admit defeat, much to the elation of your boar opponent. Philip grins down at you and says 'You give up? Ok, now show me that you really mean it.' With that, he wiggles on top of you a bit, bringing his armpit right over your face. Phew, how could he have gotten this sweaty in such short a match? 'Go on, lick it' he says, and you comply, getting an overwhelmingly strong impression of his odor as you raise your head, pressing your nose against his pit while you run your tongue over it. Your eyes water at the combined smell and taste and you're somewhat dazed for a moment, not being able to get up even as Philip lifts himself off you.";
				else:
					if "Kinky" is listed in feats of player:
						say "     You feel pretty flattened, with Philip lying halfway across your chest, and the... aroma of the mud all around you distracts you from any thoughts for moves to get out of this situation. Trying to only breathe through your mouth, you give an aroused sigh at being so fully in the power of another and admit defeat, much to the elation of your boar opponent. Philip grins down at you and says 'You give up? Ok, now show me that you really mean it.' With that, he moves into position to straddle your chest, one thick leg on each side of your body. Then he leans forward, brushing the hairy balls under his erect cock against your face. Phew, they're quite fragant and wet - how could he have gotten this sweaty in such short a match? 'Go on, lick my balls' he says, and you comply, extending your tongue to lap at his hairy, dangling orbs. Philip squeals in satisfaction as you do so and pull your head against his crotch to keep you going, pressing your nose right against the base of his cock.";
						say "     Even though the smell and taste of sweat isn't something the usual person would enjoy, something just clicks inside your head and you just keep going, relishing in the kinky fun this horny boar pushed you into. You nuzzle against the warm shaft of his piggy erection, taking a deep sniff while your tongue dances over Philip's balls, exploring its wrinkly skin. Philip gives a pleased groan at your eager and active attention, then says 'Yeah, just like that.' in between moans at your stimulating touch. After a few moments more lapping away at his balls, you spread your lips to encircle one of them and suck, taking most of it into your mouth. Enjoying the lust-filled squeals he makes as you do so, you suckle at the horny boar's orb and tease it with your tongue, then pull off it with an audible pop and attack the other one for a change. But even though you kinda get off on all this, as you continue to lick and sniff Philip, the full force of the combined smell and taste you've been indulging in finally gets to you. Your eyes water and you're somewhat dazed for a moment, not being able to do anything but continue suckling on what's in your mouth. The horny boar savours this for a moment longer, then pulls away and stands up, leaving you staring at the ceiling and panting heavily to get some fresh air.";
					else:
						say "     You feel pretty flattened, with Philip lying halfway across your chest, and the... aroma of the mud all around you distracts you from any thoughts for moves to get out of this situation. Trying to only breathe through your mouth, you give an aroused sigh at being so fully in the power of another and admit defeat, much to the elation of your boar opponent. Philip grins down at you and says 'You give up? Ok, now show me that you really mean it.' With that, he moves into position to straddle your chest, one thick leg on each side of your body. Then he leans forward, brushing the hairy balls under his erect cock against your face. Phew, they're quite fragant and wet - how could he have gotten this sweaty in such short a match? 'Go on, lick my balls' he says, and you comply, extending your tongue to lap at his hairy, dangling orbs. Philip squeals in satisfaction as you do so and pull your head against his crotch to keep you going, pressing your nose right against the base of his cock. Your eyes water at the combined smell and taste and you're somewhat dazed for a moment, not being able to do anything but continue licking when he prods you to do so. The horny boar savours your oral attention for a while, then lets go of your head and stands up, leaving you staring at the ceiling and panting heavily to get some fresh air.";
				WaitLineBreak;;
				say "     Suddenly Philip's head comes back into your line of view and his hand softly slaps your cheeks a few times. 'I know I'm a breathtakingly handsome guy, but snap out of it. Time to pay up - you lost, so I get to fuck you now.' he oinks, then maneuvers you into a position on all fours as you slowly get up. Rubbing his piggish body against yours, the boar man grabs your ass and teases a meaty finger in between your cheeks and against your tight pucker. Incredibly aroused by having a dominant male fondling your back door, you eagerly push back against him and pant for him please to take you and fuck you in any way he wants. Moments later, his throbbing porcine cock rubs between your ass cheeks, dribbling its greasy precum to act as lube.";
				say "     'I'm going to enjoy making you squeal like a sow,' he oinks, sinking the first few inches of his cock into you. You moan and press back onto him, pushing more of his thick shaft into you as he chuckles. Then he gives a sudden deep thrust, indeed making you give out a high-pitched gasp. 'Oh, how I love that sound,' he says as he grips your cheeks firmly and starts pounding into you hard and fast. This gets you moaning and panting all the more, further exciting your porcine partner. The heavy hog nibbles at your ear, snorting and oinking as his excitement builds. He drives in hard one last time and cums inside you, filling your rectum with his greasy load[if cocks of player > 0]. The feel of his hot semen filling you, proving you to be his submissive sex toy to pound and fill with his spunk, drives you over the edge right with him. With a grunt from you, your own cock starts pumping out spurts of cum to splash down and add to the messy contents of the mud pit[else if cunts of player > 0]. The feel of his hot semen filling you, proving you to be his submissive sex toy to pound and fill with his spunk, drives you over the edge right with him. Panting, you feel your own femcum trickle down your leg and spurt from your swollen pussy, to dribble down into the mud and add to the messy contents of Philip's pit[else]. The feel of his hot semen filling you, proving you to be his submissive sex toy to pound and fill with his spunk, drives you over the edge right with him. Trembling as a warm feeling of satisfaction spreads throughout your body, you pant silently under your piggy partner[end if].[mimpregchance]";
				WaitLineBreak;;
				say "     But Philip doesn't stop there. After a brief pause during which he snuffles at your neck and tells you what a fine sow you make, he starts thrusting again, intent on claiming you a second time. Already filled with a load of slick boar cum, his thrusts make the semen slosh around inside you. Some of it leaks out around his thrusting cock, but much of it gets pushed deeper. Soon you're squealing again beneath Philip with the wet, slick sounds of him stuffing your well-used hole a delightful chorus to your cries.";
				say "     He pounds into you even harder than before, playing perfectly into your need to be dominated and taken. As his causes your lust to quickly rise and soon surpass the arousal you felt when he fucked you before, the empty feeling as he pulls out before he's done this time is like an electric shock to you. Whimpering, you try to slide yourself back onto his porcine manhood, but he just gives you a shove that pushes you over. You land in the mud with the boar kneeling over you, pumping at his slick cock frantically, drawing a loud oink out of him as he cums hard, blasting his greasy load all across your body, basting you in his juices[if cocks of player > 1]. With your hands on your own cocks, you pump them hard, cumming a second time and adding your seed to his[else if cocks of player > 0]. With your hands on your own cock, you pump it hard, cumming a second time and adding your seed to his[else if cunts of player > 0]. With your hands rubbing your pussy frantically, you come a second time, squirting more femcum over yourself and the mud under you[end if].";
			else:
				Line Break;
				say "     Taking off your gear and clothing, you stack it far enough away so it doesn't get dirty, then step into the slippery mud with Philip. The boar man directs you to take position opposite himself, then calls out 'Go!' and wades towards you. The wrestling battle that follows isn't all that long, as you just can't get a grip on the pig's body, wobbly and liberally smeared with slick mud as it is, and neither can you push his large bulk over. In a move that might have come from sumo-wrestling, he eventually brings you to the ground with a muddy splash that leaves you lying on your back, then bears down on you with much of his weight to keep you down.";
				if a random chance of 1 in 2 succeeds:
					if "Kinky" is listed in feats of player:
						say "     You feel pretty flattened, with Philip lying halfway across your chest, and the... aroma of the mud all around you distracts you from any thoughts for moves to get out of this situation. Trying to only breathe through your mouth, you give an aroused sigh at being so fully in the power of another and admit defeat, much to the elation of your boar opponent. Philip grins down at you and says 'You give up? Ok, now show me that you really mean it.' With that, he wiggles on top of you a bit, bringing his armpit right over your face. Phew, how could he have gotten this sweaty in such short a match? 'Go on, lick it' he says, and you comply, getting an overwhelmingly strong impression of his odor as you raise your head, pressing your nose against his pit while you run your tongue over it.";
						say "     Even though the smell isn't something the usual person would enjoy, something just clicks inside your head and you just keep going, relishing in the kinky fun this horny boar pushed you into. You nuzzle into the wet hair under his arm, taking a deep sniff while playing the tip of your tongue over his sweaty flesh. Philip gives a pleased groan at your eager and active attention, then says 'Yeah, just like that.' while suppressing tiny giggles at your tickling touch. After a few moments more with you lapping away at his armpit, the aroused boar lifts his heavy bulk off you and raises his other arm, pulling your face under it. Presented with an all new and pretty sweaty pit, you immediately get to work and attack it with your tongue. Even though you kinda get off on all this, as you continue to lick and sniff Philip, the full force of the combined smell and taste you've been indulging in finally gets to you. Your eyes water and you're somewhat dazed like from a blow between the eyes, so much so that you don't react at all as Philip lets go and stands up.";
					else:
						say "     You feel pretty flattened, with Philip lying halfway across your chest, and the... aroma of the mud all around you distracts you from any thoughts for moves to get out of this situation. Trying to only breathe through your mouth, you sigh and admit defeat, much to the elation of your boar opponent. Philip grins down at you and says 'You give up? Ok, now show me that you really mean it.' With that, he wiggles on top of you a bit, bringing his armpit right over your face. Phew, how could he have gotten this sweaty in such short a match? 'Go on, lick it' he says, and you comply, getting an overwhelmingly strong impression of his odor as you raise your head, pressing your nose against his pit while you run your tongue over it. Your eyes water at the combined smell and taste and you're somewhat dazed for a moment, not being able to get up even as Philip lifts himself off you.";
				else:
					if "Kinky" is listed in feats of player:
						say "     You feel pretty flattened, with Philip lying halfway across your chest, and the... aroma of the mud all around you distracts you from any thoughts for moves to get out of this situation. Trying to only breathe through your mouth, you give an aroused sigh at being so fully in the power of another and admit defeat, much to the elation of your boar opponent. Philip grins down at you and says 'You give up? Ok, now show me that you really mean it.' With that, he moves into position to straddle your chest, one thick leg on each side of your body. Then he leans forward, brushing the hairy balls under his erect cock against your face. Phew, they're quite fragant and wet - how could he have gotten this sweaty in such short a match? 'Go on, lick my balls' he says, and you comply, extending your tongue to lap at his hairy, dangling orbs. Philip squeals in satisfaction as you do so and pull your head against his crotch to keep you going, pressing your nose right against the base of his cock.";
						say "     Even though the smell and taste of sweat isn't something the usual person would enjoy, something just clicks inside your head and you just keep going, relishing in the kinky fun this horny boar pushed you into. You nuzzle against the warm shaft of his piggy erection, taking a deep sniff while your tongue dances over Philip's balls, exploring its wrinkly skin. Philip gives a pleased groan at your eager and active attention, then says 'Yeah, just like that.' in between moans at your stimulating touch. After a few moments more lapping away at his balls, you spread your lips to encircle one of them and suck, taking most of it into your mouth. Enjoying the lust-filled squeals he makes as you do so, you suckle at the horny boar's orb and tease it with your tongue, then pull off it with an audible pop and attack the other one for a change. But even though you kinda get off on all this, as you continue to lick and sniff Philip, the full force of the combined smell and taste you've been indulging in finally gets to you. Your eyes water and you're somewhat dazed for a moment, not being able to do anything but continue suckling on what's in your mouth. The horny boar savours this for a moment longer, then pulls away and stands up, leaving you staring at the ceiling and panting heavily to get some fresh air.";
					else:
						say "     You feel pretty flattened, with Philip lying halfway across your chest, and the... aroma of the mud all around you distracts you from any thoughts for moves to get out of this situation. Trying to only breathe through your mouth, you sigh and admit defeat, much to the elation of your boar opponent. Philip grins down at you and says 'You give up? Ok, now show me that you really mean it.' With that, he moves into position to straddle your chest, one thick leg on each side of your body. Then he leans forward, brushing the hairy balls under his erect cock against your face. Phew, they're quite fragant and wet - how could he have gotten this sweaty in such short a match? 'Go on, lick my balls' he says, and you comply, extending your tongue to lap at his hairy, dangling orbs. Philip squeals in satisfaction as you do so and pull your head against his crotch to keep you going, pressing your nose right against the base of his cock. Your eyes water at the combined smell and taste and you're somewhat dazed for a moment, not being able to do anything but continue licking when he prods you to do so. The horny boar savours your oral attention for a while, then lets go of your head and stands up, leaving you staring at the ceiling and panting heavily to get some fresh air.";
				WaitLineBreak;;
				say "     Suddenly Philip's head comes back into your line of view and his hand softly slaps your cheeks a few times. 'I know I'm a breathtakingly handsome guy, but snap out of it. Time to pay up - you lost, so I get to fuck you now.' he oinks, then maneuvers you into a position on all fours as you slowly get up. Rubbing his piggish body against yours, the boar man grabs your ass and teases a meaty finger in between your cheeks and against your tight pucker. Moments later, his throbbing porcine cock rubs between your ass cheeks, dribbling its greasy precum to act as lube.";
				say "     'I'm going to enjoy making you squeal like a sow,' he oinks, sinking the first few inches of his cock into you. You moan and press back onto him, pushing more of his thick shaft into you as he chuckles. Then he gives a sudden deep thrust, indeed making you give out a high-pitched gasp. 'Oh, how I love that sound,' he says as he grips your cheeks firmly and starts pounding into you hard and fast. This gets you moaning and panting all the more, further exciting your porcine partner. The heavy hog nibbles at your ear, snorting and oinking as his excitement builds. He drives hard into you one last time and cums inside you, filling your rectum with his greasy load[if cocks of player > 0]. You can't help but cum yourself as you feel his hot semen filling you[else if cunts of player > 0]. You can't help yourself and climax at the same time as you feel his hot semen filling you, your femcum running down your legs and dripping into the mud[end if].[mimpregchance]";
				WaitLineBreak;;
				say "     But Philip doesn't stop there. After a brief pause during which he snuffles at your neck and tells you what a fine sow you make, he starts thrusting again, intent on claiming you a second time. Already filled with a load of slick boar cum, his thrusts make the semen slosh around inside you. Some of it leaks out around his thrusting cock, but much of it gets pushed deeper. Soon you're squealing again beneath Philip with the wet, slick sounds of him stuffing your well-used hole a delightful chorus to your cries.";
				say "     He pounds into you even harder than before, but pulls out before he's done this time. You try to push yourself back onto him, but he rolls you over onto your back. You land in the mud with the boar kneeling over you, pumping at his slick cock frantically, drawing a loud oink out of him as he cums hard, blasting his greasy load all across your body, basting you in his juices[if cocks of player > 1]. With your hands on your own cocks, you pump them hard, cumming a second time and adding your seed to his[else if cocks of player > 0]. With your hands on your own cock, you pump it hard, cumming a second time and adding your seed to his[else if cunts of player > 0]. With your hands rubbing your pussy frantically, you come a second time, squirting more femcum over yourself and the mud under you[end if].";
			now lastfuck of Philip is turns;
		else:
			Line Break;
			say "     Changing your mind about this whole thing, you step back from the mud-smeared boar and give a lame excuse. He just shrugs, sinking back to wallow some more as he says 'Getting cold feet, hm? Oh well, I'll be waiting here if you decide you want to go for a round after all - or want to have other fun.' After that he gives you a wink and stretches out a bit, showing off his flabby body and erect cock.";

Section 5 - Sexxxing the Piggy

to say sexwithphilip:
	let Piggy be "Piggy";
	if Philip is not visible:
		say "Who?";
		stop the action;
	if lastfuck of Philip - turns is less than 6:
		say "     'I know I'm a sexy stud and all,' the boar says, rubbing his big gut, 'but even I need to rest up before another go. Don't worry, you can be my sow again soon.'";
		stop the action;
	setmonster "Piggy";
	choose row monster from the table of random critters;
	if pigfed < 3:
		say "     'I know it's hard to resist my charmingly good looks,' Philip smiles, 'But the way to my heart is through my stomach and you simply haven't fed me enough times yet.'";
		stop the action;
	if Sandra is bunkered and hp of Philip is 0 and lust of philip - turns >= 16 and lastfuck of Philip < 255:
		say "     Approaching Philip for some more of his big, sloppy loving, you find him in Sandra's company. She's chatting to him pleasantly, but clearly has her eyes on his enlarged cock. He's also eying her quite appreciatively, quite literally salivating at the bunny girl's breasts. Shall you encourage them to have some fun so you can join in or will you let them be alone together?";
		if player consents:
			say "     You smile as you go join them, moving in beside Philip and running your hands over him. He oinks and gives you a sloppy kiss as he welcomes you. 'Mmm... hello there,' he grunts. 'The bunny and I were just getting to know each other a li-' he starts to say before getting distracted as you give his pink shaft a playful stroke, causing him to oink loudly again. Glancing over, you catch Sandra glaring at you as you manhandle her prize.";
			say "     'Oh, I agree. We should all get to know each other better,' you say with a friendly smile. 'There's plenty of you to go around, isn't there Philip?'  He chuckles at his, rubbing his hands over his pudgy body, though its the hefty, dribbling cock at has Sandra's attention as you offer her a go at his erection. And she's quickly on her knees, licking and kissing at that porcine rod, her earlier anger gone as she goes down on that musky pillar of meat.";
			say "     Pleased to see your two new friends going at it, you drift between them, your hands running over their bodies. Sandra's pussy drips with her juices, which you enjoy lapping up for a few minutes before fondling Philip's balls. When you swap to the bunny girl's breasts, you remember the pig's interest in them and get them to change positions so the big boar man's cock is pressed between those fuzzy globes. Between that, the eager sucking and your playful groping, it's not much longer before Philip's greasy cum is pumped into her muzzle and then sprayed across those lovely tits. You have fun helping to lick her clean[if thirst of player > 50] and suckling a delicious drink of her milk to wash it all down[end if] while Philip rolls over to rest in his muddy wallow.";
			now lastfuck of Philip is turns;
			now lastfuck of Sandra is turns;
			now hp of Philip is 2;
		else:
			say "     Not wanting to interfere, you go find something else to do for a while, though it is difficult to ignore Philip's piggish grunts and the bunny girl's loud cries as they get better acquainted.";
			now hp of Philip is 1;
		continue the action;
	else if Sandra is bunkered and hp of Philip is 2 and a random chance of 1 in 3 succeeds:
		say "     When you go to approach Philip for more sex, you find Sandra already there. On her knees and stroking the big pig's cock, she smiles up at you and offers for you to join her. Grinning happily, you get on your knees beside her and start licking and sucking alongside her. You take turns pushing that thick rod into your mouth while the other licks along its shaft or kisses the pig's messy balls. You and the bunny share sloppy kisses, your tongues heavy with the taste of the pig's cock as they slide against one another between exchanges of position. In your lustful eagerness, his dirty, musky scent doesn't bother either of you, if anything turning you on further.";
		if cunts of player > 0 and a random chance of 1 in 2 succeeds:
			say "     As much as the pig's enjoying the foreplay, he oinks that it's time to get porking. Moving it back, he gives it a few quick strokes, spurting some precum onto the two sexy girls out for his meat before choosing which will get it this time. Sandra's a little disappointed when he ends up moving in behind you, but happily spreads your pussy lips open for the big boar as he thrusts into you. As Philip grunts and oinks atop you, rutting you like a hog, the bunny girl's beneath you, licking at those juices dripping from your stuffed cunt. And when the boar cums and his excess cum overflows wet cunny, she's right there to lap it all up. When Philip pulls out, you all collapse into a sticky, sweaty heap in the mud.[fimpregchance]";
		else if cunts of player is 0 and pigfucked >= 3 and a random chance of anallevel in 6 succeeds:
			say "     As much as the pig's enjoying the foreplay, he oinks that it's time to get porking. Moving it back, he gives it a few quick strokes, spurting some precum onto the two lovers out for his meat before choosing which will get it this time. Sandra's a little disappointed when he ends up moving in behind you, but happily spreads your ass cheeks for the big boar as he thrusts into you. As Philip grunts and oinks atop you, rutting you like a hog, the bunny girl's beneath you[if cocks of player > 0], sucking at your cock while kneading the boar's balls. And when the boar cums and you climax, she's right there to suck down your [cum load size of player] load and then lick the greasy excess leaking from your stuffed pucker[else], kneading Philip's balls while she watches his meaty log drive into your ass again and again. And when the boar cums and fills you with his hot cum, she's right there to lick the greasy excess from your stuffed pucker[end if]. When Philip pulls out, you all collapse into a sticky, sweaty heap in the mud.[mimpregchance]";
		else:
			say "     As much as the pig's enjoying the foreplay, he oinks that it's time to get porking. Moving it back, he gives it a few quick strokes, spurting some precum onto the two sexy lovers out for his meat before choosing which will get it this time. Sandra giggles happily as the big boar ends up moving behind her. She wiggles her cute bunny tail and reaches between her legs, spreading her pussy lips in a wanton display as Philip mounts her with a belching oink. As Philip grunts and oinks atop her, rutting her like a hog, you move underneath them to lick at that stuffed cunt of hers.";
			say "     Playing your tongue across those wide folds, you lick at both the bunny's juicy pussy and the boar's musky rod. The scent and taste of them both as they rut is very exciting and you lap up as much of it as you can[if cocks of player > 0]. With your [cock of player] cock beneath the bunny's muzzle, she latches onto it and suckles you to climax. Even as she's gulping down your load[else if cunts of player > 0]. With your [cunt size desc of player] cunt beneath the bunny's muzzle, she stuffs a few fingers into you while working her tongue over your clit, driving you to climax[else]. With only your bare crotch beneath her muzzle, the muzzle licks and few fingers and stuffs them into your asshole instead to tease you. As she fingerfucks you[end if], Philip cums with a squeal and starts filling the horny bunny with his greasy seed. You lap up the excess leaking around his shaft along with the bunny's juices until you all collapse in a sticky, sweaty heap in the mud.";
		now lastfuck of Philip is turns;
		now lastfuck of Sandra is turns;
		continue the action;
	else:
		say "     'I knew you couldn't resist my -OINK!- studly physique,' Philip says as he jiggles his fat gut for emphasise while a grin spreads across his pig like face. 'Now, what should we do first?'  He takes a moment to look over your body, before he makes a decision.";
	let piggymalefun be 8;
	if "Submissive" is listed in feats of player, increase piggymalefun by 2;
	if "MPreg" is listed in feats of player, increase piggymalefun by 2;
	increase piggymalefun by anallevel;
	if pigfed is greater than 0 and tailname of player is not "Piggy":
		say "     Philip frowns as he take a close look at you, then he grins and smears a handful of mud above your butt as he yells, 'Suuuueeeyyy, pig, pig, pig!'  You're not sure if it's the mud or his words that cause it, but your curly pig tail suddenly regrows.";
		now tailname of player is "Piggy";
		now tail of player is tail entry;
	if pigfed is greater than 1 and facename of player is not "Piggy":
		say "     'Oh no, your face has been hideously mutated! Don't worry, I'll fix it!' Philip exclaims, as he approaches you and quickly licks his thick pig tongue across your face before you can react. Brief pain flares as his infection spreads to you rapidly, regaining your bald head, floppy pig ears, and upturned pig nose. Philip admires his work for a moment, then says, 'Much better.'";
		now face of player is face entry;
		now facename of player is "Piggy";
	if pigfed is greater than 2 and bodyname of player is not "Piggy":
		say "     As you approach Philip, you accidentally step in some mud. Your feet begin to itch as they once more transform into pig hooves while your body plumps back up to piggy proportions.";
		now bodyname of player is "Piggy";
		now body of player is body entry;
		attributeinfect;
	if cunts of player > 0:
		say "     Philip takes you by the hand and gently lays you down on the ground. He massages your tits as he positions his bulk on top of you. His huge gut rests on top of you, pinning you down. When he finally has his huge boar cock in position, he takes a moment to rub the tip against the puffy and moist lips of your pussy. Then, without warning, he thrusts his tool past your [cunt size desc of player] nether lips and deep into your pussy. You gasp in surprise and pleasure as he begins to gyrate his chubby hips, sending his cock in and out of you. You can feel his huge balls slapping against your inner thighs with each thrust. Philip oinks and squeals as he ruts you and soon you join in. Finally you experience a thundering orgasm and Philip lets out one loud, long squeal then thrusts his cock as far into you as he can, as he spews his hot pig seed into you.[impregchance]";
		if breasts of player < 8:
			if "Male Preferred" is not listed in feats of player and "One Pair" is not listed in feats of player:
				say "     As soon as Philip's pig cum floods into you, your chest begins to feel strange. Within moments, six new breasts form in rows of twos beneath your original breasts. You have sow tits!";
				now breasts of player is 8;
	else if pigfucked is 3:
		say "     Philip smiles at you as you start to kneel before him without his prompting. He rubs his piggish hand over your ears and strokes your flabby cheek. 'Now, I've noticed you keep coming back to the big boar. You must be looking for somethin['] special, my eager sow,' he oinks. He pushes you down into the mud and squeals loudly as he jumps atop you, pressing you into it and pinning you beneath him. His throbbing shaft finds its way under your curly tail and probes at your tailhole. He smears some of the slick mud onto it like lube, then pushes his thick meat into you as you're pulling your face free of the muck. The cool mud and hot shaft pushing into you make you squeal loudly and press back against him, ending any possible objections to the boar's desires. He oinks and grunts loudly as he pounds away at you, slapping his flabby body against your wide bottom again and again. When his cock throbs inside you and his hot seed rushes into your bottom, you moan in delight. As he pulls out of you, he gives your fat rump a soft slap. 'Mmm... that wasn't none too bad. Not my usual preference, but you make such a fine sow, you deserved a treat.'  His piggish fingers stroke your rear and tease your messy tailhole, slick and leaking his semen.[mimpregchance]";
		if breasts of player < 8:
			if "Male Preferred" is not listed in feats of player and "One Pair" is not listed in feats of player:
				say "     As you pull your body from the mud, you find that you've once again gained a full set of eight piggish nipples down your front.";
				now breasts of player is 8;
	else if pigfucked < 3 or a random chance of 5 in piggymalefun succeeds:
		say "     Philip takes you by the hand and gently encourages you to kneel before him. Then he takes his shaft into one of his hands and says, 'Open wide.'";
		say "     You stare at his rod hesitantly for a moment until the thick, musky scent of his boar cock makes you crave his seed. You hold his rod in your hands and you lick the tip of it a few times until it becomes hard. Then you gently guide it into your mouth. His shaft is so long that it reaches the back of your mouth and even a little bit into the top of your throat. You run your tongue up and down the length of his rod, causing Philip to moan happily. Finally, his boar cock dumps its load into your mouth and you swallow every last drop. Mmm... his seed tastes like bacon grease.";
		if breasts of player < 8:
			if "Male Preferred" is not listed in feats of player and "One Pair" is not listed in feats of player:
				say "     As soon as you swallow Philip's pig cum, your chest begins to feel strange. Within moments, six new breasts form in rows of twos beneath your original breasts. You have sow tits!";
				now breasts of player is 8;
	else if "Submissive" is listed in feats of player and a random chance of piggymalefun in 25 succeeds and pigfucked >= 3:
		say "     Philip grabs you in his meaty arms and pulls you into a big kiss, rubbing his piggish body against yours, grabbing your ass as he does. 'You're nothing but my squealing piggy, aren't you?' he oinks as he teases a meaty finger under your tail and against your tight pucker. Your submissive tendencies kick in and you moan and nod, wanting the big pig to take you more than ever. Grinning, he pushes you down onto all fours in the mud and leaps atop you. His throbbing porcine cock rubs between your ass cheeks, dribbling its greasy precum to act as lube.";
		say "     'I'm going to enjoy making you squeal like a sow,' he oinks, sinking the first few inches of his cock into you. You moan and press back onto him, pushing more of his thick shaft into you as he chuckles. He gives your plump, piggy bottom a slap, drawing a squeal out of you. 'Oh, how I love that sound,' he says as he grips your cheeks firmly and starts pounding into you hard and fast. This gets you squealing all the more, in part to further excite your lover and partially because you just can't control yourself. The heavy hog nibbles at your floppy pig ear, snorting and oinking as his excitement builds. He drives hard into you one last time and cums inside you, filling your rectum with his greasy load[if cocks of player > 0]. You can't help but cum as you feel his hot semen filling you as he fucks you like a pig[end if].[mimpregchance]";
		attempttowait;
		say "     But he doesn't stop there. After a brief pause during which he snuffles at your neck and tells you what a fine sow you make, he starts thrusting again, intent on claiming you a second time. Already filled with a load of slick boar cum, his thrusts make the semen slosh around inside you. Some of it leaks out around his thrusting cock, but much of it gets pushed deeper. Soon you're squealing again beneath Philip with the wet, stick sounds of him stuffing your reused hole a delightful chorus to your cries.";
		say "     He pounds into you even harder than before, but pulls out before he's done. You try to push yourself back onto him, but he rolls you over onto your back. You land in the mud with the boar kneeling over you, pumping at his slick cock frantically, drawing a loud oink out of him as he cums hard, blasting his greasy load all across your body, basting you in his juices[if cocks of player > 1]. With your hands on your own cocks, you pump them hard, cumming a second time and adding your seed to his[else]. With your hands on your own cock, you pump it hard, cumming a second time and adding your seed to his[end if].";
		say "     He runs a piggish hand all over your body as he blasts the last few shots across your face. 'That's my good sow,' he says as he runs his fingers over your sticky body";
		if breasts of player < 8:
			if "Male Preferred" is not listed in feats of player and "One Pair" is not listed in feats of player:
				say ", smiling as you find that you've once again gained a full set of eight piggish nipples down your front";
				now breasts of player is 8;
		say ". He gets you to suck the messy cum from his spent shaft before rolling over in the muck and taking a nap.";
	else:
		say "     Philip pushes you down into the mud again and squeals that he's going to make you his sow again. He grabs your fat ass and grinds his cock against it, moaning softly as his greasy pre leaks down between your cheeks. He spreads the pre against your tailhole, then thrusts into you, making you squeal. You groan as he presses his heavy body down over yours, forcing you down into the mud as he fucks you hard and fast. His throbbing meat pounds away at you and the bunker is filled with the squeals and oinks of a rutting pair of hogs. When his cum floods into your bowels, it feels so good, you can't help but cum also. He gets off you slowly, teasingly calling you his sow as he fondles your messy bottom.[mimpregchance]";
		if breasts of player < 8:
			if "Male Preferred" is not listed in feats of player and "One Pair" is not listed in feats of player:
				say "     As you pull your body from the mud, you find that you've once again gained a full set of eight piggish nipples down your front.";
				now breasts of player is 8;
	if pigfucked > 0 and cocks of player > 0 and cockname of player is not "Piggy":
		say "     As the heat of Philip's strong cum warms your insides, you feel a tingle in your cock as it throbs and spurts its seed onto the messy floor. Your shaft changes, becoming humanlike, but pinker. It is musky and has a thick scent, much like your piggy lover's.";
	now cock of player is cock entry;
	now cockname of player is "Piggy";
	if pigfucked > 1:
		say "     After finishing his fun with you, Philip rolls in the mud with you, snuggling and snuffling at your ears. His piggish hands fondle your nipples, making you squeal like a pig, much to his delight";
		if skinname of player is not "Piggy":
			now skinname of player is "Piggy";
			now skin of player is skin entry;
			say ". The roll in the mud after sex seems to change you further as your skin changes and becomes a bright, fleshy pink with short, pale hairs. The cool mud feels increasingly good against your skin as you pick up Philip's scent from it";
		say ".";
	increase pigfucked by 1;
	now lastfuck of Philip is turns;


[ hp of philip - threesome w/Sandra ]
[ 0 = nothing yet ]
[ 1 = no pairing w/Sandra ]
[ 2 = pairing w/Sandra ]


Section 6 - Ending the Piggy

When play ends:
	if bodyname of player is not "Messy Pig" and bodyname of player is not "Piggy":
		if Philip is in the Bunker:
			if humanity of the player is less than 10:
				say "     Despite your loss of humanity, Philip vows to care for you. But one day, he gets hungry and wanders off. Leaving you free to rape any unfortunate human that crosses your path.";
			else if pigfucked > 0:
				if cocks of player is 0:
					if cunts of player > 0:
						say "     Philip purchases a small pig farm out in the country and invites you to come live with him. You agree. Philip becomes your passionate lover as the two of you adjust to life on the farm. Eventually, your belly grows big and round. You're expecting your first litter of piglets any day now.";
						if Sandra is in the Bunker:
							if Snow is in the Grey Abbey Library:
								say "     Sandra and Snow join you and Philip at the pig farm. The four of you spend your days having extremely wild and passionate orgies. Sandra and Snow are soon expecting their own litters of piglets. Philip feels like the luckiest pig in world now that he has his own personal harem.";
							else:
								say "     Sandra joins you and Philip at the pig farm. The three of you spend your days having passionate orgies. Sandra is soon expecting her own litter of piglets.";
						else if Snow is in the Grey Abbey Library:
							say "     Snow joins you and Philip at the pig farm. The three of you spend your days having passionate orgies. Snow is soon expecting her own litter of piglets.";
						if sarahslut is 4:
							say "     Sarah's numerous pups make fine farm dogs. You set up a nice kennel to breed them on the farm as well. They guard the farm and make for fine playthings when not enjoying messy, piggy sex.";
					else:
						say "     Philip remains a loyal... if somewhat gluttonous, friend and lover for the rest of your days.";
				else:
					say "     Philip remains a loyal... if somewhat gluttonous, friend and lover for the rest of your days.";
			else:
				say "     Philip remains a loyal... if somewhat gluttonous, friend for the rest of your days.";
	else if bodyname of player is "Messy Pig" or bodyname of player is "Piggy":
		if humanity of player is less than 10:
			if pigfucked > 0:
				if cunts of player > 0:
					say "     As time wears on, you can't hold back against your growing urges. Your identity falls apart, leaving only your base needs for food and sex. Heading back to the bunker, you join Philip in a long and messy romp on the dirty floor, letting the sweat and the juices of your combined fluids add to the muck you both roll around in. The boar gets dirtier, smellier and all the more attractive to you. And more lustful as he joins you in succumbing to the infection. Together, happily filled with his seed, you head back to the [if restaurantpig is 1]posh restaurant[else]sewers below the mall[end if] to seek out the lovely sow there. Philip charges over and mounts you both in turn, rutting you over and over again in a marathon of sex. Together, the three of you set up a messy sty filled with the sounds of sows, sex and piglets. He adds several other sows to his sty as well, filling them with piglets as he ruts them in the muck.";
				else if pigfucked > 2:
					say "     As time wears on, you can't hold back against your growing urges. Your identity falls apart, leaving only your base needs for food and sex. Heading back to the bunker, you join Philip in a long and messy romp on the dirty floor, mounting you and taking you like his sow again and again. Your combined sweat and semen add to the muck you both roll around in. The boar gets dirtier, smellier and all the more attractive to you. And more lustful as he joins you in succumbing to the infection. Quite sticky and messy, with your boar's cum leaking from your well-used tailhole, you head together to the [if restaurantpig is 1]posh restaurant[else]sewers below the mall[end if] to seek out the lovely sow there. Together, the three of you set up a messy sty. Philip is a good boar to you both, filling you with assloads of cum and her with piglets. He adds several other sows to his sty as well, filling them with piglets as he ruts them in the muck.";
				else:
					say "     As time wears on, you can't hold back against your growing urges. Your identity falls apart, leaving only your base needs for food and sex. Heading back to the bunker, you join Philip in a long and messy romp on the dirty floor, cumming on one another again and again. Your combined sweat and semen add to the muck you both roll around in. The boar gets dirtier, smellier and all the more attractive to you. And more lustful as he joins you in succumbing to the infection. Quite sticky and messy, you head together to the [if restaurantpig is 1]posh restaurant[else]sewers below the mall[end if] to seek out the lovely sow there. Together, the three of you set up a messy sty filled with the sounds of sows, sex and piglets. You and Philip take turns mounting her and the others who are fortunate enough to be caught and made into sows for you as well.";
				if piginitiation >= 4:
					say "     You and Philip return periodically to Phi Iota Gamma, always making a big impression as he puts the current round of piglet through their initiation. The tales of Philip's exploits only grow and grow from year to year as your sexy hog remains undefeated in the mud pit. You don't mind sharing him with his frat brothers and their sow girlfriends during these visits, as you get to play around with a lot of them as well. And before he leaves after each visit, he makes a big show of selecting members to go out and form another chapter of the fraternity at another college, ensuring the mighty Phi Iota Gamma... *oink* *snort* *grunt* ...will spread plump, piggy sexiness all across the country.";
			else if Philip is in the Bunker:
				if cocks of player > 0:
					say "     As time wears on, you can't hold back against your growing urges. Your identity falls apart, leaving only your base needs for food and sex. After wandering back to the bunker, you are joined by Philip who follows you off into the city, drawn by your heavy scent. You head together to the [if restaurantpig is 1]posh restaurant[else]sewers below the mall[end if] to seek out the lovely sow there. As you rut the pig, squealing loudly as you do, he looks on lustfully before heading off. Some time later, as you both are resting after your marathon of sex, he returns with a semi-transformed sow of his own. He tosses her into the mess made by you both and mounts her, taking her roughly until her transformation is complete. You and Philip set up a nice, big sty for your growing harem of sows and their piglets.";
				else:
					say "     As time wears on, you can't hold back against your growing urges. Your identity falls apart, leaving only your base needs for food and sex. After wandering back to the bunker, you are joined by Philip who follows you off into the city, drawn by your heavy scent. You head together to the [if restaurantpig is 1]posh restaurant[else]sewers below the mall[end if] to seek out the lovely sow there. As you and her grope and fondle one another lustfully, it gets to be too much for the boar. He charges over and mounts you both in turn, rutting you over and over again in a marathon of sex. The sweat and the juices of your combined fluids add to the muck you both roll around in. The boar gets dirtier, smellier and all the more attractive to you both. Together, the three of you set up a messy sty filled with the sounds of sows, sex and piglets.";
				if piginitiation >= 4:
					say "     You and Philip return periodically to Phi Iota Gamma, always making a big impression as he puts the current round of piglet through their initiation. The tales of Philip's exploits only grow and grow from year to year as your sexy hog remains undefeated in the mud pit. You don't mind the attention he gets from his frat brothers and their sow girlfriends during these visits, as you get to play around with a lot of them as well. And before he leaves after each visit, he makes a big show of selecting members to go out and form another chapter of the fraternity at another college, ensuring the mighty Phi Iota Gamma... *oink* *snort* *grunt* ...will spread plump, piggy sexiness all across the country.";
			else:
				if cocks of player > 0:
					say "     As time wears on, you can't hold back against your growing urges. Your identity falls apart, leaving only your base needs for food and sex. You head to the [if restaurantpig is 1]posh restaurant[else]sewers below the mall[end if] to seek out the lovely sow there. You rut the pig, squealing loudly as you do, in a long marathon of sex [if restaurantpig is 1]and eating[end if]. You rut her again and again, filling her with your seed over and over in a marathon of sex. The sweat and the juices of your combined fluids add to the muck you both roll around in. Together, you set up a messy sty filled with the sounds of sows, sex and piglets.";
				else:
					say "     As time wears on, you can't hold back against your growing urges. Your identity falls apart, leaving only your base needs for food and sex. You head to the [if restaurantpig is 1]posh restaurant[else]sewers below the mall[end if] to seek out the lovely sow there. You and the pig roll around in the muck, groping and fondling one another lustfully for a marathon of sex. Together, you set up a messy sty, adding several other sows to your group. From time to time, you girls are able to lure in (or grab) a male creature from the city and ride him in the muck to fill your wombs with lovely hybrid piglets until he becomes another sow to wait her turn to be filled.";
		else:
			if pigfucked > 0:
				if cunts of player > 0:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason. But at least it ends up being brief, as they don't seem to want to keep you around long either. You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive sow. Only Philip really goes out of his way to spend time with you, though the guards won't give you a chance to show the boar how much you appreciate his affection.";
					say "     But once you get cleared, oh then you are all over him, letting your big boar rut you again and again. After so long without satisfaction, you both are eager to get to breeding. His hefty rod fills you repeatedly with his hot seed, several times a day for the first week. When later you start to grow full with piglets, he smiles happily, arranging to purchase a lovely pig farm to share with you. It becomes your rustic love nest and breeding sty.";
				else if pigfucked > 2:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason. But at least it ends up being brief, as they don't seem to want to keep you around long either. You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive boar. Only Philip really goes out of his way to spend time with you, though the guards won't give you a chance to show the boar how much you appreciate his affection.";
					say "     But once you get cleared, oh then you are on your knees for him, letting your big boar rut you again and again. After so long without satisfaction, you both are eager have your big boar take you like a sow and filling your ass with his cum. His hefty rod fills you repeatedly with his hot seed, several times a day for the first week.";
					say "     You work odd jobs from time to time, never really staying very long at anything as your strong scent is too much for most other people. Philip sets himself up with a small pig farm and eventually invites you out to join him. He drives his cock into your ass and ruts you like a sow often to hear you squeal for him as he fucks you in the muddy sty.";
				else:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason. But at least it ends up being brief, as they don't seem to want to keep you around long either. You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive boar. Only Philip really goes out of his way to spend time with you, though the guards won't give you a chance to show the boar how much you appreciate his affection.";
					say "     But once you get cleared, oh then you are on your knees for him, sucking his cock in thanks for his kindness. After so long without satisfaction, big boar while you stroke yourself off to make a sticky mess on his hooves.";
					say "     You work odd jobs from time to time, never really staying very long at anything as your strong scent is too much for most other people. Philip sets himself up with a small pig farm and eventually invites you out to join him. You both have an enjoyable life of running the farm and rutting the sows.";
			else if Philip is in the Bunker:
				if cunts of player > 0:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason. But at least it ends up being brief, as they don't seem to want to keep you around long either. You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive woman. Only Philip really goes out of his way to spend time with you, making the wait tolerable at least.";
					say "     After your eventual release, Philip visits often, bringing small chocolates or other treats for you. He is friendly and talks to you about how busy he is with his new pig farm, though he always seems to have time to visit you. You have trouble making new friends for some reason, despite your lovely, chubby figure and fragrant scent, but the boar keeps you company.";
					say "     As your remaining funds start to run dry after having trouble getting work, he drops to one knee and asks to join him on his farm. Only then do you realize that this big boar has been wooing you the whole time. You agree eagerly and are at his farm that very night, pressed beneath him as he ruts you long and hard, having wanted you as his lovely sow for so long.";
				else:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason. But at least it ends up being brief, as they don't seem to want to keep you around long either. You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive boar. Only Philip really goes out of his way to spend time with you, making the wait tolerable at least.";
					say "     After your eventual release, you keep in contact with Philip and visit his new pig farm from time to time. You struggle to find work for some time, getting odd jobs for a while before getting an idea. Inspired by Philip's moderate success as a farmer, you eventually set yourself up with a small truffle farm. The work, coming naturally to you, is a pleasure to do and you do well enough at it to make a decent living for the first time since your infection. After you finish each year's harvest, you and Philip celebrate with a long night with his sows.";
			else:
				if cocks of player > 0:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason. But at least it ends up being brief, as they don't seem to want to keep you around long either. You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive boar, but no one else you meet seems to realize this.";
					say "     After your eventual release, you have difficulty finding steady work. No one seems to appreciate your rich fragrance. You only manage to get odd jobs for quite a while before eventually becoming a garbage man. The prevalent scent of your work keeps your coworkers from complaining about your scent and some part of you always enjoys getting dirtier and smellier from a day's work.";
					say "     You manage to hit it off with a raccoon sanitation worker from the next town over during a union function. She is a full-figured woman with wide hips, pudgy thighs and ample breasts. And the fact that she's a little scruffy and likes getting messy as well suits you just fine. After several dirty romps with her, she gets a transfer and moves in with you. Soon enough, you have a house full of messy little raccoon kits and piglets.";
				else:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason. But at least it ends up being brief, as they don't seem to want to keep you around long either. You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive woman, but no one else you meet seems to realize this.";
					say "     After your eventual release, you have difficulty finding steady work. No one seems to appreciate your rich fragrance. You only manage to get odd jobs for quite a while before eventually becoming a garbage woman. The prevalent scent of your work keeps your coworkers from complaining about your scent and some part of you always enjoys getting dirtier and smellier from a day's work.";
					say "     One day while working the bulldozer at the far end of the landfill, a friendly coworker calls you over. When you climb out to join the seagull, he presses you down into the trash and mounts you. You try your best to muffle your squeals of delight, not wanting to get into trouble, but loving the nasty feeling of being fucked at work on a messy pile of trash. After filling you, he invites you to join him at his place after work for more. That night is a wild romp that soon becomes more and more nights of the same. You move into his love nest and bear him clutch after clutch of eggs filled with winged piggies, loving your messy, dirty bird.";
			if ( pigfucked > 0 ) or ( cunts of player > 0 and Philip is in Bunker ):	[Philip farm endings]
				if Sandra is in the Bunker:
					if Snow is in the Grey Abbey Library:
						say "     Sandra and Snow join you and Philip at the pig farm. The four of you spend your days having extremely wild and passionate orgies. Sandra and Snow are soon expecting their own litters of piglets. Philip feels like the luckiest pig in world now that he has his own personal harem.";
					else:
						say "     Sandra joins you and Philip at the pig farm. The three of you spend your days having passionate orgies. Sandra is soon expecting her own litter of piglets.";
				else if Snow is in the Grey Abbey Library:
					say "     Snow joins you and Philip at the pig farm. The three of you spend your days having passionate orgies. Snow is soon expecting her own litter of piglets.";
			if Philip is in Bunker:										[any farm ending]
				if sarahslut is 4:
					say "     Sarah's numerous pups make fine farm dogs. You set up a nice kennel to breed them on the farm as well. They guard the farm and make for fine playthings when you're not enjoying messy, piggy sex.";



Hungry Boar Man ends here.
