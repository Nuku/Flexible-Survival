Version 5 of Hungry Boar Man by Closerhenry begins here.
[ Version 5.0 - Wrestling Overhaul - Closerhenry                    ]
[ Version 5.1 - Minor maintenance and character relocation - Luneth ]
[ Version 5.2 - Add Messy Pig vore ending - Kurainyx                ]
[ Originally Authored By: Hiccup and Stripes                        ]

"Adds an encounter to Flexible Survival with a hungry boar man."

[ HP of philip - threesome w/Sandra                                            ]
[ 0 = nothing yet                                                              ]
[ 1 = no pairing w/Sandra                                                      ]
[ 2 = pairing w/Sandra                                                         ]

PlayerPigBodied is a truth state that varies.
PhilipMudWrestleCount is a number that varies.
PhilipWrestleEnd is a number that varies.

Section 1 - The Situation

Hungry Piggy is a situation.

After resolving a hungry piggy, try looking;

Instead of Resolving a Hungry Piggy:
	if hbmr is 0:
		say "While exploring the city, you stumble upon an odd sight in the basement of one of the buildings. A water pipe must have burst at some point, because the floor of the entire room is covered in mud. What's even stranger is that it looks like someone is living down here despite all the mud.[line break][line break]You spot a strange boar man rolling in the mud on the floor. He's enjoying himself so much that it takes him awhile to realize that someone is in the room. When he finally does, he stares at you with his beady pig eyes for a moment. Not knowing if he's friendly or not, you mentally brace yourself for a fight.[line break][line break]You relax a little when he smiles and says, 'Hello there! My name is Philip. Don't worry, I'm not like those other creatures that are roaming the streets, humping everything in sight. I am really hungry though, could you please FEED me?'";
		increase hbmr by 1;
		move player to Pig Pen;
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

Table of GameCharacterIDs (continued)
object	name
philip	"philip"

Philip is a man.
The description of Philip is "This creature is almost a complete pig, the only thing human about it is the fact that it is standing on two legs that end in hoofs instead of feet. He is extremely fat with a bald head, floppy ears, and an upturned nose. Flies are constantly buzzing around him, enticed by his foul odor. He has a huge, flabby gut that hangs half way over his crotch, but not far enough to hide a pig cock that is the size of your forearm. Past his cock is a pair of large swollen balls. He seems to take great delight in rolling around in the mud on the floor[if Philip is in Large Shed]. He's made a mudhole of his own in one corner of the large shed by breaking a hole in the wall and cracking a pipe. He spends much of his time lounging in it[end if]. Looking at all the mud, the idea of [bold type]wrestling[roman type] with Philip in it just springs to your mind all of its own.".
Philip is in Pig Pen.
The conversation of Philip is { "Oink!" }.

instead of conversing Philip:
	if piginitiation is 2:
		if player is in large shed:
			say "     Deciding to give it a shot, you ask Philip if he knows anything about the Phi Iota Gamma fraternity you encountered. 'Ahhh, the mighty Phi Iota Gamma... *oink* *snort* ...those were the days. I was the frat's mud wrestling champ. How do you think I got to be good? Mmm... I miss the ole mudhole. We had some really good parties. I wonder how the place is doing these days...' he muses, rubbing his roly-poly belly.";
			say "     Seeing your opportunity, you tell him that it seems to be doing really well, just having had a really wild party the other day. Plenty of beer, lots of horny sows, all still there and having a good time. You add that you'd wanted to check it out, but they'd said it was for frat brothers only.";
			say "     He nods at this. 'Yeah, them's the rules,' he mutters, clearly already thinking of the prospect of beer and sows. 'Ain't nothing saying I can't go though. You can be my guest and we can get you initiated into the mighty Phi Iota Gamma.' He wraps his big arm around you and hugs you to his muddy body, grinning merrily and oinking up a storm as the requisite response.";
			say "     Having gotten just what you'd wanted, you get Philip on the move before his enthusiasm fades into lethargy. 'Here, I'll teach you the secret handshake on the way. Now normally it takes a while for a freshman like you to be inducted into the frat, but with me there to sponsor you, you'll be a shoe-in.'";
			WaitLineBreak;
			say "[pig_fratinitiation]";
		else:
			say "     Deciding to give it a shot, you ask Philip if he knows anything about the Phi Iota Gamma fraternity you encountered. 'Ahhh, the mighty Phi Iota Gamma... *oink* *snort* ...those were the days. I was the frat's mud wrestling champ. How do you think I got to be good?' He rolls over in the mud a few times, thinking back on those times.";
			say "     You try to suggest that he sponsor you to join the frat, but he just rubs his tummy. 'Now, I don't know... you've not really proven yourself to be Phi Iota Gamma material. Besides, I've got some food worries to deal with. Why just you just focus [bold type]FEED[roman type]ing me until I'm satisfied and we'll see if you're ready for the mighty Phi Iota Gamma?' He chuckles, unleashing another wave of oinks and squeals.";
			now piginitiation is 3;
	else if piginitiation is 3 and a random chance of 1 in 3 succeeds and philip is in the large shed and player is not neuter:
		say "     Deciding to bring up his old fraternity again now that he's fed and safe, you get a much better response from the big piggy. 'Those were some good times back with the guys at the mighty Phi Iota Gamma,' he says with a series of loud oinking at the end. 'Mmm... I miss the ole mudhole. We had some really good parties. I wonder how the place is doing these days...' he muses, rubbing his roly-poly belly.";
		say "     Seeing your opportunity, you tell him that it seems to be doing really well, just having had a really wild party the other day. Plenty of beer, lots of horny sows, all still there and having a good time. You add that you'd wanted to check it out, but they'd said it was for frat brothers only.";
		say "     He nods at this. 'Yeah, them's the rules,' he mutters, clearly already thinking of the prospect of beer and sows. 'Ain't nothing saying I can't go though. You can be my guest and we can get you initiated into the mighty Phi Iota Gamma.' He wraps his big arm around you and hugs you to his muddy body, grinning merrily and oinking up a storm as the requisite response.";
		say "     Having gotten just what you'd wanted, you get Philip on the move before his enthusiasm fades into lethargy. 'Here, I'll teach you the secret handshake on the way. Now normally it takes a while for a freshman like you to be inducted into the frat, but with me there to sponsor you, you'll be a shoe-in.'";
		WaitLineBreak;
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
	choose row monster from the Table of Random Critters;
	if pigfed > 0 and tailname of player is not "Piggy":
		say "     Philip frowns as he take a close look at you, then he grins and smears a handful of mud above your butt as he yells, 'Suuuueeeyyy, pig, pig, pig!' You're not sure if it's the mud or his words that cause it, but your curly pig tail suddenly regrows.";
		now tailname of player is "Piggy";
		now tail of player is tail entry;
	if pigfed > 1 and facename of player is not "Piggy":
		say "     'Oh no, your face has been hideously mutated! Don't worry, I'll fix it!' Philip exclaims, as he approaches you and quickly licks his thick pig tongue across your face before you can react. Brief pain flares as his infection spreads to you rapidly, regaining your bald head, floppy pig ears, and upturned pig nose. Philip admires his work for a moment, then says, 'Much better.'";
		now facename of player is "Piggy";
		now face of player is face entry;
	if pigfed > 2 and bodyname of player is not "Piggy":
		say "     As you approach Philip, you accidentally step in some mud. Your feet begin to itch as they once more transform into pig hooves while your body plumps back up to piggy proportions.";
		now bodyname of player is "Piggy";
		now body of player is "quite big, plump and fat with pig hooves instead of feet";
		attributeinfect;
	if lastpigfed - turns < 8:
		if pigfed is 3:
			say "     'That's okay, I finally figured out how to scavenge safely on my own. You don't have to get food for me any more,' he oinks.";
		else:
			say "     He groans and rubs his gut. 'I'm still digesting the food you gave me earlier. Come back later.'";
	else if pigfed is 0:
		now lastpigfed is turns;
		if food is owned:
			delete food;
			now pigfed is 1;
			say "     'Thank you!' he shouts as he snatches the food from you and starts to gobble it down. The boar man goes into a feeding frenzy. He barely chews as he stuffs the food into his mouth and swallows it down. He almost seems to get a little bit fatter before your eyes as he eats. Stray flecks of saliva fly from his mouth and splash on you. Your body immediately begins to feel strange. A loud ripping sound comes from the seat of your pants as a curly pig tail grows out above your butt.";
			now tailname of player is "Piggy";
			now tail of player is tail entry;
			increase score by 5;
		else:
			say "     'You don't have any food,' he oinks sadly.";
			now lastpigfed is 250;
	else if pigfed is 1:
		now lastpigfed is turns;
		say "     'I'm still digesting the food you gave me before. However, I did find some other food a few minutes ago. You fed me, so I want to pay you back by feeding you. You can eat it if you want,' he says as he holds out a strange box.";
		say "     You take a look at the box and notice that it is different from all the other packages of food that you've found. There is a picture of a cartoon pig on the front. The name of the product is too faded for you to read.";
		say "     [bold type]Will you accept his offer and eat the food?[roman type][line break]";
		LineBreak;
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
		LineBreak;
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
					add "water bottle" to invent of large shed;
					add "water bottle" to invent of large shed;
					move philip to large shed;
					move player to large shed;
					now pigfed is 3;
					say "     'Thank you!' he snorts and then follows you back to the library. When you arrive, he quickly makes himself at home, eventually deciding on making his new home inside the large shed behind the library. The shed starts to smell as bad as he does. He does at least add two bottles of water for the supply stash.";
					say "     After he settles in, he approaches you and smiles a little as he says, 'You know, you've been so nice to me that I've realized that you must want to be more than friends. You want to become my piggy lover, don't you? Let's rut like pigs in heat!'";
					increase score by 5;
					now lust of philip is turns; [starts availability counter on Philip + Sandra]
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
			say "     'That's okay, I finally figured out how to scavenge safely on my own. You don't have to get food for me any more.' He grins and rubs his gut, oinking happily at his plumpness.";
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
	choose row monster from the Table of Random Critters;
	if bodyname of player is "Piggy":
		now PlayerPigBodied is true;
	else:
		now PlayerPigBodied is false;
	if lastfuck of Philip - turns < 6:
		say "     'I know I'm a sexy stud and all,' the boar says, rubbing his big gut, 'but even I need to rest up a while after having sex. Don't worry, we can have some fun in the mud soon.'";
	else:
		say "     As you step up to Philip and ask to wrestle him, the boar says 'A challenger for the champion of this mud pit, hm? I've got to warn you, no one's ever beaten me. I mean - how would they, with this hot bod.' Grinning, he rubs his big gut, then shows off a thick flabby arm. 'Go on and strip, real wrestling is done naked!' With that, Philip throws himself into the mud, wallowing in it and smearing it all over himself as he waits for you.";
		say "     Nude wrestling with a horny pigman? You can see where this could be going from a mile away. Do you really want to do it, knowing that he's in his element there, and has to have at least some muscles under all that fat (since he can move his big bulk without too much effort).";
		if player consents:
			now PhilipMudWrestleCount is 0;
			now PhilipWrestleEnd is 0;
			if player is submissive:
				say "     You take off your gear and clothing, hands trembling in anticipation of wrestling with the male boar. Imagination running rampant with thoughts of what he'll do to you, manhandling your body, you distractedly stack everything in a small pile far enough away so it doesn't get dirty, then step into the slippery mud with Philip. The boar man chuckles as he looks at you, eyes on your [if player is male]already half hard cock[else if player is female]already slightly swollen and moist pussy[else]blushed face[end if], and says with a grin 'Someone's excited. You just can't wait for this, can you?' Directing you to take position opposite himself, he calls out 'Go!' and wades towards you.";
			if "Dominant" is listed in feats of player:
				increase PhilipMudWrestleCount by 1;
				say "     Taking off your gear and clothing, you toss it away from the mud so it won't get dirty, then step into the slippery mud with Philip. You take position opposite to Philip, eager to show you know what you're doing. Your mind is already thinking of ways to show this boar who's boss. Defeating him without any effort would prove to him that you aren't just some sow. The thought of making this cocky boar beg for release [if player is male]causes your cock to start swelling [else if player is female]causes your pussy to grow hot and moist[else]brings you great pleasure[end if]. You're just starting to imagine how you'll control this pig's pleasure when he calls out 'Go!' and wades towards you.";
				increase PhilipMudWrestleCount by 1;
			else:
				say "     Taking off your gear and clothing, you stack it far enough away so it doesn't get dirty, then step into the slippery mud with Philip. The boar man directs you to take position opposite himself, then calls out 'Go!' and wades towards you.";
			say "     What do you do as the boar approaches you?";
			LineBreak;
			say "     [link](1)[as]1[end link] - Charge right at Philip to knock him down[line break]";
			say "     [link](2)[as]2[end link] - Wait for Philip to come to you and counter.[line break]";
			say "     [link](3)[as]3[end link] - Kite him around the ring to wear him out![line break]";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] charge Philip or [link]2[end link] to try to counter Philip or [link]3[end link] to kite him around the ring.";
			if calcnumber is 1: [charge Philip]
				say "     You wade through the mud as quickly as you can with the intent to tackle Philip, but he sees it coming a mile away. At the last second, he steps to the side, causing you to move right past him, nearly tripping. You barely regain your balance, but things are not looking in your favor now as Philip moves closer to you.";
				decrease PhilipMudWrestleCount by 0;
			else if calcnumber is 2: [counter Philip]
				say "     Philip has a lot of experience with mud wrestling, so you know he'd say a charge coming. Instead, you buckle down and prepare yourself. Philip collides into you, but you shift your weight and pivot, adding your momentum to Philip's and throwing him. He flails his arms as he slides, barely regaining his balance. You make your way closer, not letting him regain his balance.";
				increase PhilipMudWrestleCount by 1;
			else if calcnumber is 3: [kite Philip]
				let bonus be (( stamina of player minus 10 ) divided by 2);
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Stamina Check):[line break]";
				if diceroll + bonus >= 18:
					say "     You begin trudging through the mud, intent on giving Philip a chase before he can get to you. After you've been moving for awhile, you look back to see Philip following after you, panting for breath and visibly exhausted. As a last attempt, he tries to lunge at you, but falls just short onto the muddy floor before you. He quickly rises, now eye to eye with you.";
					increase PhilipMudWrestleCount by 1;
				else:
					say "     You begin trudging through the mud, intent on giving Philip a chase before he can get to you. After you've been moving for awhile, you look back, panting for breath, only to see Philip following you effortlessly! He doesn't even look slightly worn out! You mentally reprimand yourself, you should have known Philip would have an easier time moving in the mud than you due to experience! Now, Philip is close to you and you're out of breath.";
					decrease PhilipMudWrestleCount by 0;
			say "     Face to face with the muddy hog, it appears you are both waiting to see who will make the next move. You're sure if you take too long, Philip will eventually come at you, but is that what you want to do? Making the first move isn't always the worst idea... What will you do to break the tension?";
			LineBreak;
			say "     [link](1)[as]1[end link] - Try to grab Philip and make him squeal![line break]";
			say "     [link](2)[as]2[end link] - Prepare for Philip to try to grab you and make him sorry![line break]";
			say "     [link](3)[as]3[end link] - Taunt the sexy boar and break his focus![line break]";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] grab Philip or [link]2[end link] wait for Philip to strike or [link]3[end link] to taunt him.";
			if calcnumber is 1: [grab Philip]
				say "     You reach out at Philip as suddenly as you can, wrapping your arms around the fat pig. Philip laughs, as he raises his arms out, easily breaking your grip. He slams into you with his massive gut, sending you sliding back. You fall backwards, hitting the ground and being covered in more mud. Phillip slides forward on his knees, getting ready to move in for the pin.";
				decrease PhilipMudWrestleCount by 0;
			else if calcnumber is 2: [prepare Philip]
				say "     You continue to stand your ground, not taking your eyes off Philip. When it seems like you two will be here forever, you see his arm twitch as he lunges at you! He wraps his arms around you, his warm fat smothering you, making you feel all warm and covered. You snap out of it, lifting your arms to pry open his grip, and you take the opportunity to push into him with your shoulder. Philip slides back, falling onto his ass. You fall to your knees, but definitely have the advantage in this scenario now.";
				increase PhilipMudWrestleCount by 1;
			else if calcnumber is 3: [taunt Philip]
				let bonus be (( charisma of player minus 10 ) divided by 2);
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Charisma Check):[line break]";
				if diceroll + bonus >= 16:
					say "     You yell to Philip, 'I know you can do better, you fat pig! If you want me, come and get me!' Philip grows visibly enraged and rushes at you with reckless abandon. It's as easy as sidestepping and extending your leg that he comes crashing down into the mud. However, you misjudged how fast he was running and you fall as well when he hits your leg. Luckily, you're in a much more favorable position as you turn to face Philip, who is only just moving off of his chest.";
					increase PhilipMudWrestleCount by 1;
				else:
					say "     You search your head, thinking of the things you could say that would make him most angry, when you yell, 'Hey! Your mom was nothing but a sow for breeding!' Philip pauses, then bursts out in laughter. 'Did you just make a Your Mom joke in the middle of a mud wrestling match!? Oh my god, you're so stupid!' he guffaws, causing you to grow irate. At least he looks distracted by laughter. You charge at him, but just before you get to him, he stops laughing and pushes you down. You fall on your back, as Philip gets down on his knees and moves at you to pin you.";
					decrease PhilipMudWrestleCount by 0;
			say "     You lock eyes with Philip, both on the ground, as it appears this match is quickly coming to a close. Judging by his massive erection, it looks as though this match has been highly arousing to Philip. He looks at you lustfully, clearly excited for the after-match fun. It all comes down to this! What do you do to try to secure your victory?";
			LineBreak;
			say "     [link](1)[as]1[end link] - Try to stand up and get a height advantage![line break]";
			say "     [link](2)[as]2[end link] - Try to beat Philip at his own game and pin him![line break]";
			say "     [link](3)[as]3[end link] - Give Philip a 'hand' and distract him with pleasure![line break]";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to stand up or [link]2[end link] to pin Philip or [link]3[end link] to distract him with a handjob.";
			if calcnumber is 1: [stand Philip]
				say "     You try as quickly as possible to rise to your feet, slipping and sliding in the mud as you do. Eventually, you manage to find your balance and start to rise up, but just as you begin to stand, you feel Philip's meaty hands shove at your legs, and you come tumbling down forward. As you rapidly fall, you can see that the boar has positioned himself perfectly so that your head will land right on his cushiony balls. When you land on them, you inhale deeply, taking in his manly musk. While you're dazed, Philip's fat arm wraps around your neck as he goes for the pin. Before you can do anything, you are wrapped in his arms.";
				decrease PhilipMudWrestleCount by 0;
				if PhilipMudWrestleCount > 1:
					say "     Philip holds you steady, but you aren't giving up yet. You start to squirm, and just before five seconds have passed, you squeeze out of Philip's grasp. Using the confusion to your advantage, you pin Philip, who is still letting out a curse. Philip tries to break free, but it's too late, as the five seconds pass. You release him, as you cheer in victory. Despite all the odds, you managed to defeat the boar at his own game!";
					increase PhilipWrestleEnd by 1;
			else if calcnumber is 2: [pin Philip]
				let bonus be (( strength of player minus 10 ) divided by 2);
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Strength Check):[line break]";
				if diceroll + bonus >= 20:
					say "     You lunge forward, taking your chance to finish things as you wrap your arm around Philip's thick, meaty neck. He brings up his arms and attempts to pry you off of him, but you have him pinned too tight. The feeling of his fat, muddy body writhing in your embrace turns you on, the slick feeling of his muddy skin rubbing against yours. You laugh, and wrap your hand around his thick shaft and begin jacking him off. His body quakes in pleasure, as he lets out a half-hearted protest.";
					increase PhilipMudWrestleCount by 1;
					if PhilipMudWrestleCount < 2:
						say "     You continue to hold Philip steady, but you become concerned when his squirming resumes. 'You thought you had me, but you forgot about the mud!' he laughs, as he quickly slips out from your grasp. You look down and realize that the mud you had accumulated throughout the match must have allowed him to slip out! It's while you're realizing this that he grabs you, locking you a pin. 'I'll admit, you almost had me. But only almost! I'm still the top pig in this house, and you're just my sow to bread!' he snorts, as he locks you in his pin. You try to escape, but your efforts are useless as he has you held for five seconds. He releases you, shooting his arms up and hollering in victory. You fall back into the mud, grumbling with frustration.";
						increase PhilipWrestleEnd by 1;
				else:
					say "     You lunge forward, taking your chance to finish things as you wrap your arm around Philip's thick, meaty neck. He brings up his arms, and with great strength, he breaks your pin. 'Sorry, but you lost the second you stepped in my ring!' he brags, as he pins you with his arm. He brings your face against his sweating armpit, forcing you to inhale the scent of his male musk. Your vision clouds as the smell sends your body reeling with lust. You try to pry yourself out of his grasp, but are having no luck.";
					if PhilipMudWrestleCount > 1:
						say "     Philip holds you steady, but you aren't giving up yet. You start to squirm, and just before five seconds have passed, you squeeze out of Philip's grasp. Using the confusion to your advantage, you pin Philip, who is still letting out a curse. Philip tries to break free, but it's too late, as the five seconds pass. You release him, as you cheer in victory. Despite all the odds, you managed to defeat the boar at his own game!";
						increase PhilipWrestleEnd by 1;
					decrease PhilipMudWrestleCount by 0;
			else if calcnumber is 3: [masturbate Philip]
				say "     You let out a short laugh, as you lunge forward. Phillip lifts his arm to protect his neck, but that's not your target. You wrap your hand around his thick, meaty cock, causing it to throb. Philip lets out a stammered protest, but does nothing more as you begin slowly rubbing your hand up and down his large shaft. He leans back on his hands, his tongue resting outside of his mouth, completely lost in the pleasure you give him. The cock continues to throb, as his balls begin to churn. You don't have any problems leaning forward and grabbing him tightly, as he lets out a gasp of surprise. 'H-hey, you weren't finished yet!' he complains, as you tighten your grasp. He squirms, but is unable to build up the strength to break out.";
				increase PhilipMudWrestleCount by 1;
				if PhilipMudWrestleCount < 2:
					say "     You continue to hold Philip steady, but you become concerned when his squirming resumes. 'You thought you had me, but you forgot about the mud!' he laughs, as he quickly slips out from your grasp. You look down and realize that the mud you had accumulated throughout the match must have allowed him to slip out! It's while you're realizing this that he grabs you, locking you a pin. 'I'll admit, you almost had me. But only almost! I'm still the top pig in this house, and you're just my sow to bread!' he snorts, as he locks you in his pin. You try to escape, but your efforts are useless as he has you held for five seconds. He releases you, shooting his arms up and hollering in victory. You fall back into the mud, grumbling with frustration.";
					increase PhilipWrestleEnd by 1;
			if PhilipWrestleEnd < 1:
				if PhilipMudWrestleCount > 1:
					say "     You hold Philip steady, as he writhes with increasing desperation, until finally, five seconds pass! You release Philip, and cheer as you rise up. Philip lets out a disappointed groan, but the way is his cock is twitching reveals he is still excited regardless. 'Alright, you won, no need to brag about it,' the proud boar grumbles. 'What do you want to do to me?' he asks.";
					if player is male:
						LineBreak;
						say "     [bold type]What do you want to do with the defeated Philip?[roman type][line break]";
						say "     [link](1)[as]1[end link] - Take him from behind and make him your sow.";
						say "     [link](2)[as]2[end link] - Ride his thick cock, but with you in charge";
						say "     [link](3)[as]3[end link] - Shove your dick down his throat";
						now calcnumber is 0;
						while calcnumber < 1 or calcnumber > 3:
							say "Choice? (1-3)>[run paragraph on]";
							get a number;
							if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
								break;
							else:
								say "Invalid choice. Type [link]1[end link] to fuck Philip from behind, [link]2[end link] to ride him or [link]3[end link] to throat-fuck him.";
						if calcnumber is 1:
							say "     Deciding to take the sexy boar from behind, you tell him to get up and get on his knees. Philip complies, but not without complaining. 'Riding me just isn't good enough, I guess?' he grumbles. As he gets on his knees and presents his chubby ass to you, your [cock of player] dick already twitching in anticipation. You scoop your hand down into the mud, grabbing a nice, cool, handful, and smear the slick substance on your cock as a makeshift lube. You take one of your fingers, similarly covered in mud, and slowly caress Philip's tight tailhole, causing it clench. You slowly insert your finger, preparing the pig to be stuffed, and feel the insides of the boar. He quakes in pleasure, and you can hear his breathing quicken. 'J-just... get going already...' he breathes. More than happy to comply, you remove your finger and move closer.";
							say "     [if PlayerPigBodied is true]You lift your hefty stomach onto Philip's back, enjoy the feeling of your soft, doughy stomach resting on his cushiony fat. [end if]You rest your chest on his lower back, mounting him like the sow he is. You align your [cock of player] cock with the entrance of his hole, and slowly push yourself in. The pigman gasps softly as you enter him, and judging from how tight his hole is, he must not be used to being on bottom. As you push all the way in, your pelvic area is cushioned by his plump ass, nearly as soft as pillows. You wrap your arms around the pig's torso, barely able to get around his large stomach. You hold tight, squeezing his soft folds as you slowly pull out, then push back in. You slowly build a rhythm as you fuck the pig morph[if PlayerPigBodied is true]. Every thrust shakes your fat body, and it slaps against Philip over and over again, only serving to turn you on more[end if].";
							say "     You move your hands up and down Philip's chest while fucking him, appreciating how soft his body is. When your hands reach his moobs, you give them a quick squeeze which causes Philip to grunt. As your thrusts increase in speed, you can feel yourself coming closer to climax. Just as your begin to cum, you stuff yourself fully into your sow's hungry hole. You yell out in pleasure, which sets the boar off. He squeals shrilly, as he himself cums below you. Inside of him, his ass contracts around your cock, milking it for every last drop of your seed. The two of you remain that way for a minute, both locked together in pleasure, until you slowly pull your dick out of the pig's fat ass. You fall on your back and lay there, panting, while Philip lays on his side. Eventually, you get up, clean yourself off as well as you can, and retrieve your gear.";
							now lastfuck of Philip is turns;
						else if calcnumber is 2:
							say "     Eyeing the boar's thick shaft, you can't help but grab a handful of mud and smear it all over the rod. You give him a short handjob, lubing up his cock with the slippery mud. 'Oh, yeah... that's the stuff...' he sighs. You let go, then rise to position yourself over him. Squatting slowly, your waiting hole eventually meets his hot pork sausage. 'Hah, you won and you still wanna take my dick? Man, you really like this thing!' the hog snorts. You push yourself down, causing your ass to take the pig's dick. The thickness sends waves of pleasure through you, which is amplified as you lower yourself further. You place your knees on each side of Philip's fat, cushiony body as your own weighty stomach makes contact";
							say "     You lift yourself up again slowly, savoring every sensation of Philip's cock inside you. You then find a steady rhythm, moving up and down the boar's shaft as you ride him. Your [if PlayerPigBodied is true]plump, piggy [end if]ass makes contact with your mate's massive balls each time you hilt him, which feels divine. [if PlayerPigBodied is true]The feeling of your fat bubble butt wrapped around Philip's cock causes you to snort with pleasure every movement you make, as your bring your hands up to your fat moobs and softly grope them. [end if]'*snort* You like riding my piggy dick, don't you? Even when you win, you're still nothing but my so-' You cut him off by slapping his stomach, causing it to jiggle violently. Philip gives an apologetic look that quickly fades back into mindless pleasure.";
							WaitLineBreak;
							say "     Your ride on Philip's shaft is quickly coming to an end, as you can feel your climax coming. You can tell your partner is also getting close to cumming, as he's digging his hoof-like hands into the mud. He grits his teeth and after a couple of snorts, he lets out a high-pitched squeal as he begins cumming inside of you! You can feel his hot spunk washing into your ass, painting your insides white. The feeling sets you off, as your own member starts shooting off ropes of seed. Your prostate is driven over the edge as your ass begins clenching with pleasure, milking the boar's cock for everything it has. Slowly, the pleasure tapers off as both of your orgasms come to an end. You fall forward onto Philip's chest, his cock still inside of you. [if PlayerPigBodied is true]Your fat stomach collides with his, and the two of you begin groping each other, playing with each other's fat. You squeeze each other's moobs and twist their nipples, basking the afterglow[else]You both make out passionately, with you groping the fat boar's fat[end if]. Eventually, you pull yourself off his cock, much of his seed still leaking out. You clean up, grab your gear, and get ready to set out.";
							now lastfuck of Philip is turns;
						else:
							say "     You stand above Philip, who looks up at you. He begins to speak, 'Well, are you gonna do something or-' before he is interrupted by you squatting down and sticking your [cock of player] cock down his throat, muffling him. Getting the idea, Philip begins to begrudgingly run his tongue along your shaft, softly sucking on it. You begin to softly thrust, fucking his throat at a steady pace. The sound of your dick thrusting in and out of his mouth echoes throughout the room. The feeling of Philip's hot breath coming from his nose brushing against the base of your shaft pushes you further, as you let out a soft groan. You look down, and Philip is greedily slurping on your rod, his eyes half-closed in pleasure. He lifts his arms up, and wraps them around your back, assisting you in your thrusts. The cushion of Philips chest serves to increase your pleasure, feeling like you're on a soft chair. The boar beneath you begins to stroke his cock, as you move closer to the edge. Your thrusts grow quicker in number, as you let out a loan as you slam your cock into the pig's mouth, unloading your seed into his hungry jaw. Behind you, Philip's cock begins spurting ropes of his ivory seed.";
							say "     You pull out of Philip's mouth, and lie beside him. You two writhe in the mud, before embracing each other. You grope Philip's soft, pudgy body, squeezing every part of him. His hands roam your body as well, as you two lock your mouths into a kiss. The two of you just lay there for a minute, basking in the after-glow, until you rise up. You leave the mud, quickly clean up, and gather your belongings. Philip retakes his spot in the mud, lounging about in the mud.";
							now lastfuck of Philip is turns;
					else if player is female:
						say "     'Hold on a minute. All because I lost doesn't mean some sow is gonna control me. Sorry sister, but I don't do that. Either get a dick, or let me win next time,' Philip huffs as he sits himself up. You throw your arms up in anger at this boar's blatant sexism. Either he isn't the guy for you, or maybe you should play by his strange rules.";
					else:
						say "     Eyeing the boar's thick shaft, you can't help but grab a handful of mud and smear it all over the rod. You give him a short handjob, lubing up his cock with the slippery mud. 'Oh, yeah... that's the stuff...' he sighs. You let go, then rise to position yourself over him. Squatting slowly, your waiting hole eventually meets his hot pork sausage. 'Well, not sure what else I expected. Guess I'm lucky you don't got a cock to fuck me with!' the hog snorts. You push yourself down, causing your ass to take the pig's dick. The thickness sends waves of pleasure through you, which is amplified as you lower yourself further. You place your knees on each side of Philip's fat, cushiony body as your own weighty stomach makes contact";
						say "     You lift yourself up again slowly, savoring every sensation of Philip's cock inside you. You then find a steady rhythm, moving up and down the boar's shaft as you ride him. Your [if PlayerPigBodied is true]plump, piggy [end if]ass makes contact with your mate's massive balls each time you hilt him, which feels divine. [if PlayerPigBodied is true]The feeling of your fat bubble butt wrapped around Philip's cock causes you to snort with pleasure every movement you make, as your bring your hands up to your fat moobs and softly grope them. [end if]'*snort* You like riding my piggy dick, don't you? Even when you win, you're still nothing but my so-' You cut him off by slapping his stomach, causing it to jiggle violently. Philip gives an apologetic look that quickly fades back into mindless pleasure.";
						WaitLineBreak;
						say "     Your ride on Philip's shaft is quickly coming to an end, as you can feel your climax coming. You can tell your partner is also getting close to cumming, as he's digging his hoof-like hands into the mud. He grits his teeth and after a couple of snorts, he lets out a high-pitched squeal as he begins cumming inside of you! You can feel his hot spunk washing into your ass, painting your insides white. The feeling sets you off as your prostate is driven over the edge as your ass begins clenching with pleasure, milking the boar's cock for everything it has. Slowly, the pleasure tapers off as both of your orgasms come to an end. You fall forward onto Philip's chest, his cock still inside of you. [if PlayerPigBodied is true]Your fat stomach collides with his, and the two of you begin groping each other, playing with each other's fat. You squeeze each other's moobs and twist their nipples, basking the afterglow[else]You both make out passionately, with you groping the fat boar's fat[end if]. Eventually, you pull yourself off his cock, much of his seed still leaking out. You clean up, grab your gear, and get ready to set out.";
						now lastfuck of Philip is turns;
				else if PhilipMudWrestleCount < 2:
					if player is submissive:
						if a random chance of 1 in 2 succeeds:
							if player is kinky:
								say "     You feel pretty flattened, with Philip lying halfway across your chest, and the... aroma of the mud all around you distracts you from any thoughts for moves to get out of this situation. Trying to only breathe through your mouth, you give an aroused sigh at being so fully in the power of another and admit defeat, much to the elation of your boar opponent. Philip grins down at you and says 'You give up? Ok, now show me that you really mean it.' With that, he wiggles on top of you a bit, bringing his armpit right over your face. Phew, how could he have gotten this sweaty in such short a match? 'Go on, lick it,' he says, and you comply, getting an overwhelmingly strong impression of his odor as you raise your head, pressing your nose against his pit while you run your tongue over it.";
								say "     Even though the smell isn't something the usual person would enjoy, something just clicks inside your head and you just keep going, relishing in the kinky fun this horny boar pushed you into. You nuzzle into the wet hair under his arm, taking a deep sniff while playing the tip of your tongue over his sweaty flesh. Philip gives a pleased groan at your eager and active attention, then says 'Yeah, just like that.' while suppressing tiny giggles at your tickling touch. After a few moments more with you lapping away at his armpit, the aroused boar lifts his heavy bulk off you and raises his other arm, pulling your face under it. Presented with an all new and pretty sweaty pit, you immediately get to work and attack it with your tongue. Even though you kinda get off on all this, as you continue to lick and sniff Philip, the full force of the combined smell and taste you've been indulging in finally gets to you. Your eyes water and you're somewhat dazed like from a blow between the eyes, so much so that you don't react at all as Philip lets go and stands up.";
							else:
								say "     You feel pretty flattened, with Philip lying halfway across your chest, and the... aroma of the mud all around you distracts you from any thoughts for moves to get out of this situation. Trying to only breathe through your mouth, you give an aroused sigh at being so fully in the power of another and admit defeat, much to the elation of your boar opponent. Philip grins down at you and says 'You give up? Ok, now show me that you really mean it.' With that, he wiggles on top of you a bit, bringing his armpit right over your face. Phew, how could he have gotten this sweaty in such short a match? 'Go on, lick it,' he says, and you comply, getting an overwhelmingly strong impression of his odor as you raise your head, pressing your nose against his pit while you run your tongue over it. Your eyes water at the combined smell and taste and you're somewhat dazed for a moment, not being able to get up even as Philip lifts himself off you.";
								now lastfuck of Philip is turns;
					else:
						if player is kinky:
							say "     You feel pretty flattened, with Philip lying halfway across your chest, and the... aroma of the mud all around you distracts you from any thoughts for moves to get out of this situation. Trying to only breathe through your mouth, you give an aroused sigh at being so fully in the power of another and admit defeat, much to the elation of your boar opponent. Philip grins down at you and says 'You give up? Ok, now show me that you really mean it.' With that, he moves into position to straddle your chest, one thick leg on each side of your body. Then he leans forward, brushing the hairy balls under his erect cock against your face. Phew, they're quite fragrant and wet - how could he have gotten this sweaty in such short a match? 'Go on, lick my balls,' he says, and you comply, extending your tongue to lap at his hairy, dangling orbs. Philip squeals in satisfaction as you do so and pull your head against his crotch to keep you going, pressing your nose right against the base of his cock.";
							say "     Even though the smell and taste of sweat isn't something the usual person would enjoy, something just clicks inside your head and you just keep going, relishing in the kinky fun this horny boar pushed you into. You nuzzle against the warm shaft of his piggy erection, taking a deep sniff while your tongue dances over Philip's balls, exploring its wrinkly skin. Philip gives a pleased groan at your eager and active attention, then says 'Yeah, just like that.' in between moans at your stimulating touch. After a few moments more lapping away at his balls, you spread your lips to encircle one of them and suck, taking most of it into your mouth. Enjoying the lust-filled squeals he makes as you do so, you suckle at the horny boar's orb and tease it with your tongue, then pull off it with an audible pop and attack the other one for a change. But even though you kinda get off on all this, as you continue to lick and sniff Philip, the full force of the combined smell and taste you've been indulging in finally gets to you. Your eyes water and you're somewhat dazed for a moment, not being able to do anything but continue suckling on what's in your mouth. The horny boar savors this for a moment longer, then pulls away and stands up, leaving you staring at the ceiling and panting heavily to get some fresh air.";
						else:
							say "     You feel pretty flattened, with Philip lying halfway across your chest, and the... aroma of the mud all around you distracts you from any thoughts for moves to get out of this situation. Trying to only breathe through your mouth, you give an aroused sigh at being so fully in the power of another and admit defeat, much to the elation of your boar opponent. Philip grins down at you and says 'You give up? Ok, now show me that you really mean it.' With that, he moves into position to straddle your chest, one thick leg on each side of your body. Then he leans forward, brushing the hairy balls under his erect cock against your face. Phew, they're quite fragrant and wet - how could he have gotten this sweaty in such short a match? 'Go on, lick my balls,' he says, and you comply, extending your tongue to lap at his hairy, dangling orbs. Philip squeals in satisfaction as you do so and pull your head against his crotch to keep you going, pressing your nose right against the base of his cock. Your eyes water at the combined smell and taste and you're somewhat dazed for a moment, not being able to do anything but continue licking when he prods you to do so. The horny boar savors your oral attention for a while, then lets go of your head and stands up, leaving you staring at the ceiling and panting heavily to get some fresh air.";
							WaitLineBreak;
							say "     Suddenly Philip's head comes back into your line of view and his hand softly slaps your cheeks a few times. 'I know I'm a breathtakingly handsome guy, but snap out of it. Time to pay up - you lost, so I get to fuck you now,' he oinks, then maneuvers you into a position on all fours as you slowly get up. Rubbing his piggish body against yours, the boar man grabs your ass and teases a meaty finger in between your cheeks and against your tight pucker. Incredibly aroused by having a dominant male fondling your back door, you eagerly push back against him and pant for him please to take you and fuck you in any way he wants. Moments later, his throbbing porcine cock rubs between your ass cheeks, dribbling its greasy precum to act as lube.";
							say "     'I'm going to enjoy making you squeal like a sow,' he oinks, sinking the first few inches of his cock into you. You moan and press back onto him, pushing more of his thick shaft into you as he chuckles. Then he gives a sudden deep thrust, indeed making you give out a high-pitched gasp. 'Oh, how I love that sound,' he says as he grips your cheeks firmly and starts pounding into you hard and fast. This gets you moaning and panting all the more, further exciting your porcine partner. The heavy hog nibbles at your ear, snorting and oinking as his excitement builds. He drives in hard one last time and cums inside you, filling your rectum with his greasy load[if player is male]. The feel of his hot semen filling you, proving you to be his submissive sex toy to pound and fill with his spunk, drives you over the edge right with him. With a grunt from you, your own cock starts pumping out spurts of cum to splash down and add to the messy contents of the mud pit[else if player is female]. The feel of his hot semen filling you, proving you to be his submissive sex toy to pound and fill with his spunk, drives you over the edge right with him. Panting, you feel your own femcum trickle down your leg and spurt from your swollen pussy, to dribble down into the mud and add to the messy contents of Philip's pit[else]. The feel of his hot semen filling you, proving you to be his submissive sex toy to pound and fill with his spunk, drives you over the edge right with him. Trembling as a warm feeling of satisfaction spreads throughout your body, you pant silently under your piggy partner[end if].[mimpregchance]";
							WaitLineBreak;
							say "     But Philip doesn't stop there. After a brief pause during which he snuffles at your neck and tells you what a fine sow you make, he starts thrusting again, intent on claiming you a second time. Already filled with a load of slick boar cum, his thrusts make the semen slosh around inside you. Some of it leaks out around his thrusting cock, but much of it gets pushed deeper. Soon you're squealing again beneath Philip with the wet, slick sounds of him stuffing your well-used hole a delightful chorus to your cries.";
							say "     He pounds into you even harder than before, playing perfectly into your need to be dominated and taken. As his causes your lust to quickly rise and soon surpass the arousal you felt when he fucked you before, the empty feeling as he pulls out before he's done this time is like an electric shock to you. Whimpering, you try to slide yourself back onto his porcine manhood, but he just gives you a shove that pushes you over. You land in the mud with the boar kneeling over you, pumping at his slick cock frantically, drawing a loud oink out of him as he cums hard, blasting his greasy load all across your body, basting you in his juices[if cocks of player > 1]. With your hands on your own cocks, you pump them hard, cumming a second time and adding your seed to his[else if player is male]. With your hands on your own cock, you pump it hard, cumming a second time and adding your seed to his[else if player is female]. With your hands rubbing your pussy frantically, you come a second time, squirting more femcum over yourself and the mud under you[end if].";
							now lastfuck of Philip is turns;
			else if PhilipWrestleEnd > 0:
				if PhilipMudWrestleCount > 1:
					say "     As you cool down from your high of winning, Philip lets out a disappointed groan, but the way is his cock is twitching reveals he is still excited regardless. 'Alright, you won, no need to brag about it,' the proud boar grumbles. 'What do you want to do to me?' he asks.";
					if player is male:
						LineBreak;
						say "     [bold type]What do you want to do with the defeated Philip?[roman type][line break]";
						say "     [link](1)[as]1[end link] - Take him from behind and make him your sow.";
						say "     [link](2)[as]2[end link] - Ride his thick cock, but with you in charge";
						say "     [link](3)[as]3[end link] - Shove your dick down his throat";
						now calcnumber is 0;
						while calcnumber < 1 or calcnumber > 3:
							say "Choice? (1-3)>[run paragraph on]";
							get a number;
							if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
								break;
							else:
								say "Invalid choice. Type [link]1[end link] to fuck Philip from behind, [link]2[end link] to ride him or [link]3[end link] to throat-fuck him.";
						if calcnumber is 1:
							say "     Deciding to take the sexy boar from behind, you tell him to get up and get on his knees. Philip complies, but not without complaining. 'Riding me just isn't good enough, I guess?' he grumbles. As he gets on his knees and presents his chubby ass to you, your [cock of player] dick already twitching in anticipation. You scoop your hand down into the mud, grabbing a nice, cool, handful, and smear the slick substance on your cock as a makeshift lube. You take one of your fingers, similarly covered in mud, and slowly caress Philip's tight tailhole, causing it clench. You slowly insert your finger, preparing the pig to be stuffed, and feel the insides of the boar. He quakes in pleasure, and you can hear his breathing quicken. 'J-just... get going already...' he breathes. More than happy to comply, you remove your finger and move closer.";
							say "     [if PlayerPigBodied is true]You lift your hefty stomach onto Philip's back, enjoy the feeling of your soft, doughy stomach resting on his cushiony fat. [end if]You rest your chest on his lower back, mounting him like the sow he is. You align your [cock of player] cock with the entrance of his hole, and slowly push yourself in. The pigman gasps softly as you enter him, and judging from how tight his hole is, he must not be used to being on bottom. As you push all the way in, your pelvic area is cushioned by his plump ass, nearly as soft as pillows. You wrap your arms around the pig's torso, barely able to get around his large stomach. You hold tight, squeezing his soft folds as you slowly pull out, then push back in. You slowly build a rhythm as you fuck the pig morph.[if PlayerPigBodied is true] Every thrust shakes your fat body, and it slaps against Philip over and over again, only serving to turn you on more.[end if]";
							WaitLineBreak;
							say "     You move your hands up and down Philip's chest while fucking him, appreciating how soft his body is. When your hands reach his moobs, you give them a quick squeeze which causes Philip to grunt. As your thrusts increase in speed, you can feel yourself coming closer to climax. Just as your begin to cum, you stuff yourself fully into your sow's hungry hole. You yell out in pleasure, which sets the boar off. He squeals shrilly, as he himself cums below you. Inside of him, his ass contracts around your cock, milking it for every last drop of your seed. The two of you remain that way for a minute, both locked together in pleasure, until you slowly pull your dick out of the pig's fat ass. You fall on your back and lay there, panting, while Philip lays on his side. Eventually, you get up, clean yourself off as well as you can, and retrieve your gear.";
							now lastfuck of Philip is turns;
						else if calcnumber is 2:
							say "     Eyeing the boar's thick shaft, you can't help but grab a handful of mud and smear it all over the rod. You give him a short handjob, lubing up his cock with the slippery mud. 'Oh, yeah... that's the stuff...' he sighs. You let go, then rise to position yourself over him. Squatting slowly, your waiting hole eventually meets his hot pork sausage. 'Hah, you won and you still wanna take my dick? Man, you really like this thing!' the hog snorts. You push yourself down, causing your ass to take the pig's dick. The thickness sends waves of pleasure through you, which is amplified as you lower yourself further. You place your knees on each side of Philip's fat, cushiony body as your own weighty stomach makes contact";
							say "     You lift yourself up again slowly, savoring every sensation of Philip's cock inside you. You then find a steady rhythm, moving up and down the boar's shaft as you ride him. Your [if PlayerPigBodied is true]plump, piggy [end if]ass makes contact with your mate's massive balls each time you hilt him, which feels divine. [if PlayerPigBodied is true]The feeling of your fat bubble butt wrapped around Philip's cock causes you to snort with pleasure every movement you make, as your bring your hands up to your fat moobs and softly grope them. [end if]'*snort* You like riding my piggy dick, don't you? Even when you win, you're still nothing but my so-' You cut him off by slapping his stomach, causing it to jiggle violently. Philip gives an apologetic look that quickly fades back into mindless pleasure.";
							WaitLineBreak;
							say "     Your ride on Philip's shaft is quickly coming to an end, as you can feel your climax coming. You can tell your partner is also getting close to cumming, as he's digging his hoof-like hands into the mud. He grits his teeth and after a couple of snorts, he lets out a high-pitched squeal as he begins cumming inside of you! You can feel his hot spunk washing into your ass, painting your insides white. The feeling sets you off, as your own member starts shooting off ropes of seed. Your prostate is driven over the edge as your ass begins clenching with pleasure, milking the boar's cock for everything it has. Slowly, the pleasure tapers off as both of your orgasms come to an end. You fall forward onto Philip's chest, his cock still inside of you. [if PlayerPigBodied is true]Your fat stomach collides with his, and the two of you begin groping each other, playing with each other's fat. You squeeze each other's moobs and twist their nipples, basking the afterglow[else]You both make out passionately, with you groping the fat boar's fat[end if]. Eventually, you pull yourself off his cock, much of his seed still leaking out. You clean up, grab your gear, and get ready to set out.";
							now lastfuck of Philip is turns;
						else:
							say "     You stand above Philip, who looks up at you. He begins to speak, 'Well, are you gonna do something or-' before he is interrupted by you squatting down and sticking your [cock of player] cock down his throat, muffling him. Getting the idea, Philip begins to begrudgingly run his tongue along your shaft, softly sucking on it. You begin to softly thrust, fucking his throat at a steady pace. The sound of your dick thrusting in and out of his mouth echoes throughout the room. The feeling of Philip's hot breath coming from his nose brushing against the base of your shaft pushes you further, as you let out a soft groan. You look down, and Philip is greedily slurping on your rod, his eyes half-closed in pleasure. He lifts his arms up, and wraps them around your back, assisting you in your thrusts. The cushion of Philips chest serves to increase your pleasure, feeling like you're on a soft chair. The boar beneath you begins to stroke his cock, as you move closer to the edge. Your thrusts grow quicker in number, as you let out a loan as you slam your cock into the pig's mouth, unloading your seed into his hungry jaw. Behind you, Philip's cock begins spurting ropes of his ivory seed as his dick shoots off ropes of alabaster white seed.";
							say "     You pull out of Philip's mouth, and lie beside him. You two writhe in the mud, before embracing each other. You grope Philip's soft, pudgy body, squeezing every part of him. His hands roam your body as well, as you two lock your mouths into a kiss. The two of you just lay there for a minute, basking in the after-glow, until you rise up. You leave the mud, quickly clean up, and gather your belongings. Philip retakes his spot in the mud, lounging about in the mud.";
							now lastfuck of Philip is turns;
					else if player is female:
						say "     'Hold on a minute. All because I lost doesn't mean some sow is gonna control me. Sorry sister, but I don't do that. Either get a dick, or let me win next time,' Philip huffs as he sits himself up. You throw your arms up in anger at this boar's blatant sexism. Either he isn't the guy for you, or maybe you should play by his strange rules.";
					else:
						say "     Eyeing the boar's thick shaft, you can't help but grab a handful of mud and smear it all over the rod. You give him a short handjob, lubing up his cock with the slippery mud. 'Oh, yeah... that's the stuff...' he sighs. You let go, then rise to position yourself over him. Squatting slowly, your waiting hole eventually meets his hot pork sausage. 'Well, not sure what else I expected. Guess I'm lucky you don't got a cock to fuck me with!' the hog snorts. You push yourself down, causing your ass to take the pig's dick. The thickness sends waves of pleasure through you, which is amplified as you lower yourself further. You place your knees on each side of Philip's fat, cushiony body as your own weighty stomach makes contact";
						say "     You lift yourself up again slowly, savoring every sensation of Philip's cock inside you. You then find a steady rhythm, moving up and down the boar's shaft as you ride him. Your [if PlayerPigBodied is true]plump, piggy [end if]ass makes contact with your mate's massive balls each time you hilt him, which feels divine. [if PlayerPigBodied is true]The feeling of your fat bubble butt wrapped around Philip's cock causes you to snort with pleasure every movement you make, as your bring your hands up to your fat moobs and softly grope them. [end if]'*snort* You like riding my piggy dick, don't you? Even when you win, you're still nothing but my so-' You cut him off by slapping his stomach, causing it to jiggle violently. Philip gives an apologetic look that quickly fades back into mindless pleasure.";
						WaitLineBreak;
						say "     Your ride on Philip's shaft is quickly coming to an end, as you can feel your climax coming. You can tell your partner is also getting close to cumming, as he's digging his hoof-like hands into the mud. He grits his teeth and after a couple of snorts, he lets out a high-pitched squeal as he begins cumming inside of you! You can feel his hot spunk washing into your ass, painting your insides white. The feeling sets you off as your prostate is driven over the edge as your ass begins clenching with pleasure, milking the boar's cock for everything it has. Slowly, the pleasure tapers off as both of your orgasms come to an end. You fall forward onto Philip's chest, his cock still inside of you. [if PlayerPigBodied is true]Your fat stomach collides with his, and the two of you begin groping each other, playing with each other's fat. You squeeze each other's moobs and twist their nipples, basking the afterglow[else]You both make out passionately, with you groping the fat boar's fat[end if]. Eventually, you pull yourself off his cock, much of his seed still leaking out. You clean up, grab your gear, and get ready to set out.";
						now lastfuck of Philip is turns;
				else if PhilipMudWrestleCount < 2:
					if player is submissive:
						if a random chance of 1 in 2 succeeds:
							if player is kinky:
								say "     You feel pretty flattened, with Philip lying halfway across your chest, and the... aroma of the mud all around you distracts you from any thoughts for moves to get out of this situation. Trying to only breathe through your mouth, you give an aroused sigh at being so fully in the power of another and admit defeat, much to the elation of your boar opponent. Philip grins down at you and says 'You give up? Ok, now show me that you really mean it.' With that, he wiggles on top of you a bit, bringing his armpit right over your face. Phew, how could he have gotten this sweaty in such short a match? 'Go on, lick it,' he says, and you comply, getting an overwhelmingly strong impression of his odor as you raise your head, pressing your nose against his pit while you run your tongue over it.";
								say "     Even though the smell isn't something the usual person would enjoy, something just clicks inside your head and you just keep going, relishing in the kinky fun this horny boar pushed you into. You nuzzle into the wet hair under his arm, taking a deep sniff while playing the tip of your tongue over his sweaty flesh. Philip gives a pleased groan at your eager and active attention, then says 'Yeah, just like that.' while suppressing tiny giggles at your tickling touch. After a few moments more with you lapping away at his armpit, the aroused boar lifts his heavy bulk off you and raises his other arm, pulling your face under it. Presented with an all new and pretty sweaty pit, you immediately get to work and attack it with your tongue. Even though you kinda get off on all this, as you continue to lick and sniff Philip, the full force of the combined smell and taste you've been indulging in finally gets to you. Your eyes water and you're somewhat dazed like from a blow between the eyes, so much so that you don't react at all as Philip lets go and stands up.";
								now lastfuck of Philip is turns;
							else:
								say "     You feel pretty flattened, with Philip lying halfway across your chest, and the... aroma of the mud all around you distracts you from any thoughts for moves to get out of this situation. Trying to only breathe through your mouth, you give an aroused sigh at being so fully in the power of another and admit defeat, much to the elation of your boar opponent. Philip grins down at you and says 'You give up? Ok, now show me that you really mean it.' With that, he wiggles on top of you a bit, bringing his armpit right over your face. Phew, how could he have gotten this sweaty in such short a match? 'Go on, lick it,' he says, and you comply, getting an overwhelmingly strong impression of his odor as you raise your head, pressing your nose against his pit while you run your tongue over it. Your eyes water at the combined smell and taste and you're somewhat dazed for a moment, not being able to get up even as Philip lifts himself off you.";
								now lastfuck of Philip is turns;
					else:
						if player is kinky:
							say "     You feel pretty flattened, with Philip lying halfway across your chest, and the... aroma of the mud all around you distracts you from any thoughts for moves to get out of this situation. Trying to only breathe through your mouth, you give an aroused sigh at being so fully in the power of another and admit defeat, much to the elation of your boar opponent. Philip grins down at you and says 'You give up? Ok, now show me that you really mean it.' With that, he moves into position to straddle your chest, one thick leg on each side of your body. Then he leans forward, brushing the hairy balls under his erect cock against your face. Phew, they're quite fragrant and wet - how could he have gotten this sweaty in such short a match? 'Go on, lick my balls,' he says, and you comply, extending your tongue to lap at his hairy, dangling orbs. Philip squeals in satisfaction as you do so and pull your head against his crotch to keep you going, pressing your nose right against the base of his cock.";
							say "     Even though the smell and taste of sweat isn't something the usual person would enjoy, something just clicks inside your head and you just keep going, relishing in the kinky fun this horny boar pushed you into. You nuzzle against the warm shaft of his piggy erection, taking a deep sniff while your tongue dances over Philip's balls, exploring its wrinkly skin. Philip gives a pleased groan at your eager and active attention, then says 'Yeah, just like that.' in between moans at your stimulating touch. After a few moments more lapping away at his balls, you spread your lips to encircle one of them and suck, taking most of it into your mouth. Enjoying the lust-filled squeals he makes as you do so, you suckle at the horny boar's orb and tease it with your tongue, then pull off it with an audible pop and attack the other one for a change. But even though you kinda get off on all this, as you continue to lick and sniff Philip, the full force of the combined smell and taste you've been indulging in finally gets to you. Your eyes water and you're somewhat dazed for a moment, not being able to do anything but continue suckling on what's in your mouth. The horny boar savors this for a moment longer, then pulls away and stands up, leaving you staring at the ceiling and panting heavily to get some fresh air.";
							now lastfuck of Philip is turns;
						else:
							say "     You feel pretty flattened, with Philip lying halfway across your chest, and the... aroma of the mud all around you distracts you from any thoughts for moves to get out of this situation. Trying to only breathe through your mouth, you give an aroused sigh at being so fully in the power of another and admit defeat, much to the elation of your boar opponent. Philip grins down at you and says 'You give up? Ok, now show me that you really mean it.' With that, he moves into position to straddle your chest, one thick leg on each side of your body. Then he leans forward, brushing the hairy balls under his erect cock against your face. Phew, they're quite fragrant and wet - how could he have gotten this sweaty in such short a match? 'Go on, lick my balls,' he says, and you comply, extending your tongue to lap at his hairy, dangling orbs. Philip squeals in satisfaction as you do so and pull your head against his crotch to keep you going, pressing your nose right against the base of his cock. Your eyes water at the combined smell and taste and you're somewhat dazed for a moment, not being able to do anything but continue licking when he prods you to do so. The horny boar savors your oral attention for a while, then lets go of your head and stands up, leaving you staring at the ceiling and panting heavily to get some fresh air.";
							WaitLineBreak;
							say "     Suddenly Philip's head comes back into your line of view and his hand softly slaps your cheeks a few times. 'I know I'm a breathtakingly handsome guy, but snap out of it. Time to pay up - you lost, so I get to fuck you now,' he oinks, then maneuvers you into a position on all fours as you slowly get up. Rubbing his piggish body against yours, the boar man grabs your ass and teases a meaty finger in between your cheeks and against your tight pucker. Incredibly aroused by having a dominant male fondling your back door, you eagerly push back against him and pant for him please to take you and fuck you in any way he wants. Moments later, his throbbing porcine cock rubs between your ass cheeks, dribbling its greasy precum to act as lube.";
							say "     'I'm going to enjoy making you squeal like a sow,' he oinks, sinking the first few inches of his cock into you. You moan and press back onto him, pushing more of his thick shaft into you as he chuckles. Then he gives a sudden deep thrust, indeed making you give out a high-pitched gasp. 'Oh, how I love that sound,' he says as he grips your cheeks firmly and starts pounding into you hard and fast. This gets you moaning and panting all the more, further exciting your porcine partner. The heavy hog nibbles at your ear, snorting and oinking as his excitement builds. He drives in hard one last time and cums inside you, filling your rectum with his greasy load[if player is male]. The feel of his hot semen filling you, proving you to be his submissive sex toy to pound and fill with his spunk, drives you over the edge right with him. With a grunt from you, your own cock starts pumping out spurts of cum to splash down and add to the messy contents of the mud pit[else if player is female]. The feel of his hot semen filling you, proving you to be his submissive sex toy to pound and fill with his spunk, drives you over the edge right with him. Panting, you feel your own femcum trickle down your leg and spurt from your swollen pussy, to dribble down into the mud and add to the messy contents of Philip's pit[else]. The feel of his hot semen filling you, proving you to be his submissive sex toy to pound and fill with his spunk, drives you over the edge right with him. Trembling as a warm feeling of satisfaction spreads throughout your body, you pant silently under your piggy partner[end if].[mimpregchance]";
							WaitLineBreak;
							say "     But Philip doesn't stop there. After a brief pause during which he snuffles at your neck and tells you what a fine sow you make, he starts thrusting again, intent on claiming you a second time. Already filled with a load of slick boar cum, his thrusts make the semen slosh around inside you. Some of it leaks out around his thrusting cock, but much of it gets pushed deeper. Soon you're squealing again beneath Philip with the wet, slick sounds of him stuffing your well-used hole a delightful chorus to your cries.";
							say "     He pounds into you even harder than before, playing perfectly into your need to be dominated and taken. As his causes your lust to quickly rise and soon surpass the arousal you felt when he fucked you before, the empty feeling as he pulls out before he's done this time is like an electric shock to you. Whimpering, you try to slide yourself back onto his porcine manhood, but he just gives you a shove that pushes you over. You land in the mud with the boar kneeling over you, pumping at his slick cock frantically, drawing a loud oink out of him as he cums hard, blasting his greasy load all across your body, basting you in his juices[if cocks of player > 1]. With your hands on your own cocks, you pump them hard, cumming a second time and adding your seed to his[else if player is male]. With your hands on your own cock, you pump it hard, cumming a second time and adding your seed to his[else if player is female]. With your hands rubbing your pussy frantically, you come a second time, squirting more femcum over yourself and the mud under you[end if].";
							now lastfuck of Philip is turns;
		else:
			say "     Changing your mind about this whole thing, you step back from the mud-smeared boar and give a lame excuse. He just shrugs, sinking back to wallow some more as he says 'Getting cold feet, hm? Oh well, I'll be waiting here if you decide you want to go for a round after all - or want to have other fun.' After that he gives you a wink and stretches out a bit, showing off his flabby body and erect cock.";

Section 5 - Sexxxing the Piggy

to say sexwithphilip:
	let Piggy be "Piggy";
	if Philip is not visible:
		say "Who?";
		stop the action;
	if lastfuck of Philip - turns < 6:
		say "     'I know I'm a sexy stud and all,' the boar says, rubbing his big gut, 'but even I need to rest up before another go. Don't worry, you can be my sow again soon.'";
		stop the action;
	setmonster "Piggy";
	choose row monster from the Table of Random Critters;
	if pigfed < 3:
		say "     'I know it's hard to resist my charmingly good looks,' Philip smiles, 'But the way to my heart is through my stomach and you simply haven't fed me enough times yet.'";
		stop the action;
	if Sandra is bunkered and HP of Philip is 0 and lust of philip - turns >= 16 and lastfuck of Philip < 255:
		say "     Approaching Philip for some more of his big, sloppy loving, you find him in Sandra's company. She's chatting to him pleasantly, but clearly has her eyes on his enlarged cock. He's also eying her quite appreciatively, quite literally salivating at the bunny girl's breasts. Shall you encourage them to have some fun so you can join in or will you let them be alone together?";
		if player consents:
			say "     You smile as you go join them, moving in beside Philip and running your hands over him. He oinks and gives you a sloppy kiss as he welcomes you. 'Mmm... hello there,' he grunts. 'The bunny and I were just getting to know each other a li-' he starts to say before getting distracted as you give his pink shaft a playful stroke, causing him to oink loudly again. Glancing over, you catch Sandra glaring at you as you manhandle her prize.";
			say "     'Oh, I agree. We should all get to know each other better,' you say with a friendly smile. 'There's plenty of you to go around, isn't there Philip?' He chuckles at his, rubbing his hands over his pudgy body, though its the hefty, dribbling cock at has Sandra's attention as you offer her a go at his erection. And she's quickly on her knees, licking and kissing at that porcine rod, her earlier anger gone as she goes down on that musky pillar of meat.";
			say "     Pleased to see your two new friends going at it, you drift between them, your hands running over their bodies. Sandra's pussy drips with her juices, which you enjoy lapping up for a few minutes before fondling Philip's balls. When you swap to the bunny girl's breasts, you remember the pig's interest in them and get them to change positions so the big boar man's cock is pressed between those fuzzy globes. Between that, the eager sucking and your playful groping, it's not much longer before Philip's greasy cum is pumped into her muzzle and then sprayed across those lovely tits. You have fun helping to lick her clean[if thirst of player > 50] and suckling a delicious drink of her milk to wash it all down[end if] while Philip rolls over to rest in his muddy wallow.";
			now lastfuck of Philip is turns;
			now lastfuck of Sandra is turns;
			now HP of Philip is 2;
		else:
			say "     Not wanting to interfere, you go find something else to do for a while, though it is difficult to ignore Philip's piggish grunts and the bunny girl's loud cries as they get better acquainted.";
			now HP of Philip is 1;
		continue the action;
	else if Sandra is bunkered and HP of Philip is 2 and a random chance of 1 in 3 succeeds:
		say "     When you go to approach Philip for more sex, you find Sandra already there. On her knees and stroking the big pig's cock, she smiles up at you and offers for you to join her. Grinning happily, you get on your knees beside her and start licking and sucking alongside her. You take turns pushing that thick rod into your mouth while the other licks along its shaft or kisses the pig's messy balls. You and the bunny share sloppy kisses, your tongues heavy with the taste of the pig's cock as they slide against one another between exchanges of position. In your lustful eagerness, his dirty, musky scent doesn't bother either of you, if anything turning you on further.";
		if player is female and a random chance of 1 in 2 succeeds:
			say "     As much as the pig's enjoying the foreplay, he oinks that it's time to get porking. Moving it back, he gives it a few quick strokes, spurting some precum onto the two sexy girls out for his meat before choosing which will get it this time. Sandra's a little disappointed when he ends up moving in behind you, but happily spreads your pussy lips open for the big boar as he thrusts into you. As Philip grunts and oinks atop you, rutting you like a hog, the bunny girl's beneath you, licking at those juices dripping from your stuffed cunt. And when the boar cums and his excess cum overflows wet cunny, she's right there to lap it all up. When Philip pulls out, you all collapse into a sticky, sweaty heap in the mud.[fimpregchance]";
		else if player is not female and pigfucked >= 3 and a random chance of anallevel in 6 succeeds:
			say "     As much as the pig's enjoying the foreplay, he oinks that it's time to get porking. Moving it back, he gives it a few quick strokes, spurting some precum onto the two lovers out for his meat before choosing which will get it this time. Sandra's a little disappointed when he ends up moving in behind you, but happily spreads your ass cheeks for the big boar as he thrusts into you. As Philip grunts and oinks atop you, rutting you like a hog, the bunny girl's beneath you[if player is male], sucking at your cock while kneading the boar's balls. And when the boar cums and you climax, she's right there to suck down your [cum load size of player] load and then lick the greasy excess leaking from your stuffed pucker[else], kneading Philip's balls while she watches his meaty log drive into your ass again and again. And when the boar cums and fills you with his hot cum, she's right there to lick the greasy excess from your stuffed pucker[end if]. When Philip pulls out, you all collapse into a sticky, sweaty heap in the mud.[mimpregchance]";
		else:
			say "     As much as the pig's enjoying the foreplay, he oinks that it's time to get porking. Moving it back, he gives it a few quick strokes, spurting some precum onto the two sexy lovers out for his meat before choosing which will get it this time. Sandra giggles happily as the big boar ends up moving behind her. She wiggles her cute bunny tail and reaches between her legs, spreading her pussy lips in a wanton display as Philip mounts her with a belching oink. As Philip grunts and oinks atop her, rutting her like a hog, you move underneath them to lick at that stuffed cunt of hers.";
			say "     Playing your tongue across those wide folds, you lick at both the bunny's juicy pussy and the boar's musky rod. The scent and taste of them both as they rut is very exciting and you lap up as much of it as you can[if player is male]. With your [cock of player] cock beneath the bunny's muzzle, she latches onto it and suckles you to climax. Even as she's gulping down your load[else if player is female]. With your [cunt size desc of player] cunt beneath the bunny's muzzle, she stuffs a few fingers into you while working her tongue over your clit, driving you to climax[else]. With only your bare crotch beneath her muzzle, the muzzle licks and few fingers and stuffs them into your asshole instead to tease you. As she fingerfucks you[end if], Philip cums with a squeal and starts filling the horny bunny with his greasy seed. You lap up the excess leaking around his shaft along with the bunny's juices until you all collapse in a sticky, sweaty heap in the mud.";
		now lastfuck of Philip is turns;
		now lastfuck of Sandra is turns;
		continue the action;
	else:
		say "     'I knew you couldn't resist my -OINK!- studly physique,' Philip says as he jiggles his fat gut for emphasis while a grin spreads across his pig like face. 'Now, what should we do first?' He takes a moment to look over your body, before he makes a decision.";
	let piggymalefun be 8;
	if player is submissive, increase piggymalefun by 2;
	if player is mpreg_ok, increase piggymalefun by 2;
	increase piggymalefun by anallevel;
	if pigfed > 0 and tailname of player is not "Piggy":
		say "     Philip frowns as he take a close look at you, then he grins and smears a handful of mud above your butt as he yells, 'Suuuueeeyyy, pig, pig, pig!' You're not sure if it's the mud or his words that cause it, but your curly pig tail suddenly regrows.";
		now tailname of player is "Piggy";
		now tail of player is tail entry;
	if pigfed > 1 and facename of player is not "Piggy":
		say "     'Oh no, your face has been hideously mutated! Don't worry, I'll fix it!' Philip exclaims, as he approaches you and quickly licks his thick pig tongue across your face before you can react. Brief pain flares as his infection spreads to you rapidly, regaining your bald head, floppy pig ears, and upturned pig nose. Philip admires his work for a moment, then says, 'Much better.'";
		now face of player is face entry;
		now facename of player is "Piggy";
	if pigfed > 2 and bodyname of player is not "Piggy":
		say "     As you approach Philip, you accidentally step in some mud. Your feet begin to itch as they once more transform into pig hooves while your body plumps back up to piggy proportions.";
		now bodyname of player is "Piggy";
		now body of player is body entry;
		attributeinfect;
	if player is female:
		say "     Philip takes you by the hand and gently lays you down on the ground. He massages your tits as he positions his bulk on top of you. His huge gut rests on top of you, pinning you down. When he finally has his huge boar cock in position, he takes a moment to rub the tip against the puffy and moist lips of your pussy. Then, without warning, he thrusts his tool past your [cunt size desc of player] nether lips and deep into your pussy. You gasp in surprise and pleasure as he begins to gyrate his chubby hips, sending his cock in and out of you. You can feel his huge balls slapping against your inner thighs with each thrust. Philip oinks and squeals as he ruts you and soon you join in. Finally you experience a thundering orgasm and Philip lets out one loud, long squeal then thrusts his cock as far into you as he can, as he spews his hot pig seed into you.[impregchance]";
		if breasts of player < 8:
			if "Male Preferred" is not listed in feats of player and "One Pair" is not listed in feats of player:
				say "     As soon as Philip's pig cum floods into you, your chest begins to feel strange. Within moments, six new breasts form in rows of twos beneath your original breasts. You have sow tits!";
				now breasts of player is 8;
	else if pigfucked is 3:
		say "     Philip smiles at you as you start to kneel before him without his prompting. He rubs his piggish hand over your ears and strokes your flabby cheek. 'Now, I've noticed you keep coming back to the big boar. You must be looking for somethin['] special, my eager sow,' he oinks. He pushes you down into the mud and squeals loudly as he jumps atop you, pressing you into it and pinning you beneath him. His throbbing shaft finds its way under your curly tail and probes at your tailhole. He smears some of the slick mud onto it like lube, then pushes his thick meat into you as you're pulling your face free of the muck. The cool mud and hot shaft pushing into you make you squeal loudly and press back against him, ending any possible objections to the boar's desires. He oinks and grunts loudly as he pounds away at you, slapping his flabby body against your wide bottom again and again. When his cock throbs inside you and his hot seed rushes into your bottom, you moan in delight. As he pulls out of you, he gives your fat rump a soft slap. 'Mmm... that wasn't none too bad. Not my usual preference, but you make such a fine sow, you deserved a treat.' His piggish fingers stroke your rear and tease your messy tailhole, slick and leaking his semen.[mimpregchance]";
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
	else if player is submissive and a random chance of piggymalefun in 25 succeeds and pigfucked >= 3:
		say "     Philip grabs you in his meaty arms and pulls you into a big kiss, rubbing his piggish body against yours, grabbing your ass as he does. 'You're nothing but my squealing piggy, aren't you?' he oinks as he teases a meaty finger under your tail and against your tight pucker. Your submissive tendencies kick in and you moan and nod, wanting the big pig to take you more than ever. Grinning, he pushes you down onto all fours in the mud and leaps atop you. His throbbing porcine cock rubs between your ass cheeks, dribbling its greasy precum to act as lube.";
		say "     'I'm going to enjoy making you squeal like a sow,' he oinks, sinking the first few inches of his cock into you. You moan and press back onto him, pushing more of his thick shaft into you as he chuckles. He gives your plump, piggy bottom a slap, drawing a squeal out of you. 'Oh, how I love that sound,' he says as he grips your cheeks firmly and starts pounding into you hard and fast. This gets you squealing all the more, in part to further excite your lover and partially because you just can't control yourself. The heavy hog nibbles at your floppy pig ear, snorting and oinking as his excitement builds. He drives hard into you one last time and cums inside you, filling your rectum with his greasy load[if player is male]. You can't help but cum as you feel his hot semen filling you as he fucks you like a pig[end if].[mimpregchance]";
		WaitLineBreak;
		say "     But he doesn't stop there. After a brief pause during which he snuffles at your neck and tells you what a fine sow you make, he starts thrusting again, intent on claiming you a second time. Already filled with a load of slick boar cum, his thrusts make the semen slosh around inside you. Some of it leaks out around his thrusting cock, but much of it gets pushed deeper. Soon you're squealing again beneath Philip with the wet, stick sounds of him stuffing your reused hole a delightful chorus to your cries.";
		say "     He pounds into you even harder than before, but pulls out before he's done. You try to push yourself back onto him, but he rolls you over onto your back. You land in the mud with the boar kneeling over you, pumping at his slick cock frantically, drawing a loud oink out of him as he cums hard, blasting his greasy load all across your body, basting you in his juices[if cocks of player > 1]. With your hands on your own cocks, you pump them hard, cumming a second time and adding your seed to his[else]. With your hands on your own cock, you pump it hard, cumming a second time and adding your seed to his[end if].";
		say "     He runs a piggish hand all over your body as he blasts the last few shots across your face. 'That's my good sow,' he says as he runs his fingers over your sticky body";
		if breasts of player < 8:
			if "Male Preferred" is not listed in feats of player and "One Pair" is not listed in feats of player:
				say ", smiling as you find that you've once again gained a full set of eight piggish nipples down your front";
				now breasts of player is 8;
		say ". He gets you to suck the messy cum from his spent shaft before rolling over in the muck and taking a nap.";
	else:
		say "     Philip pushes you down into the mud again and squeals that he's going to make you his sow again. He grabs your fat ass and grinds his cock against it, moaning softly as his greasy pre leaks down between your cheeks. He spreads the pre against your tailhole, then thrusts into you, making you squeal. You groan as he presses his heavy body down over yours, forcing you down into the mud as he fucks you hard and fast. His throbbing meat pounds away at you and the shed is filled with the squeals and oinks of a rutting pair of hogs. When his cum floods into your bowels, it feels so good, you can't help but cum also. He gets off you slowly, teasingly calling you his sow as he fondles your messy bottom.[mimpregchance]";
		if breasts of player < 8:
			if "Male Preferred" is not listed in feats of player and "One Pair" is not listed in feats of player:
				say "     As you pull your body from the mud, you find that you've once again gained a full set of eight piggish nipples down your front.";
				now breasts of player is 8;
	if pigfucked > 0 and player is male and cockname of player is not "Piggy":
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


Section 6 - Ending the Piggy

When play ends:
	if bodyname of player is not "Messy Pig" and bodyname of player is not "Piggy":
		if Philip is in the Large Shed:
			if humanity of player < 10:
				say "     Despite your loss of humanity, Philip vows to care for you. But one day, he gets hungry and wanders off. Leaving you free to rape any unfortunate human that crosses your path.";
			else if pigfucked > 0:
				if player is not male:
					if player is female:
						say "     Philip purchases a small pig farm out in the country and invites you to come live with him. You agree. Philip becomes your passionate lover as the two of you adjust to life on the farm. Eventually, your belly grows big and round. You're expecting your first litter of piglets any day now.";
						if Sandra is in the Bunker:
							if Snow is in the Grey Abbey Library:
								say "     Sandra and Snow join you and Philip at the pig farm. The four of you spend your days having extremely wild and passionate orgies. Sandra and Snow are soon expecting their own litters of piglets. Philip feels like the luckiest pig in world now that he has his own personal harem.";
							else:
								say "     Sandra joins you and Philip at the pig farm. The three of you spend your days having passionate orgies. Sandra is soon expecting her own litter of piglets.";
						else if Snow is in the Grey Abbey Library:
							say "     Snow joins you and Philip at the pig farm. The three of you spend your days having passionate orgies. Snow is soon expecting her own litter of piglets.";
						if SarahSlut is 4:
							say "     Sarah's numerous pups make fine farm dogs. You set up a nice kennel to breed them on the farm as well. They guard the farm and make for fine playthings when not enjoying messy, piggy sex.";
					else:
						say "     Philip remains a loyal... if somewhat gluttonous, friend and lover for the rest of your days.";
				else:
					say "     Philip remains a loyal... if somewhat gluttonous, friend and lover for the rest of your days.";
			else:
				say "     Philip remains a loyal... if somewhat gluttonous, friend for the rest of your days.";
	else if bodyname of player is "Messy Pig" or bodyname of player is "Piggy":
		if humanity of player < 10:
			if voreloss is true:
				say "     The piggy rumbles happily, your last bit of resistance having fade away some time ago, as you add to her ample amounts of fat. Thanks to your contribution, her stomach bulges out even more, as well as her rear, allowing her to subdue her prey more easily. Despite giving her a bountiful meal, it doesn't take long for the female swine to get hungry again. Trundling off with her increased girth, the gluttonous pig goes off to sate her hunger and her lust.";
			else if pigfucked > 0:
				if player is female:
					say "     As time wears on, you can't hold back against your growing urges. Your identity falls apart, leaving only your base needs for food and sex. Heading back to the shed, you join Philip in a long and messy romp on the dirty floor, letting the sweat and the juices of your combined fluids add to the muck you both roll around in. The boar gets dirtier, smellier and all the more attractive to you. And more lustful as he joins you in succumbing to the infection. Together, happily filled with his seed, you head back to the [if restaurantpig is 1]posh restaurant[else]sewers below the mall[end if] to seek out the lovely sow there. Philip charges over and mounts you both in turn, rutting you over and over again in a marathon of sex. Together, the three of you set up a messy sty filled with the sounds of sows, sex and piglets. He adds several other sows to his sty as well, filling them with piglets as he ruts them in the muck.";
				else if pigfucked > 2:
					say "     As time wears on, you can't hold back against your growing urges. Your identity falls apart, leaving only your base needs for food and sex. Heading back to the shed, you join Philip in a long and messy romp on the dirty floor, mounting you and taking you like his sow again and again. Your combined sweat and semen add to the muck you both roll around in. The boar gets dirtier, smellier and all the more attractive to you. And more lustful as he joins you in succumbing to the infection. Quite sticky and messy, with your boar's cum leaking from your well-used tailhole, you head together to the [if restaurantpig is 1]posh restaurant[else]sewers below the mall[end if] to seek out the lovely sow there. Together, the three of you set up a messy sty. Philip is a good boar to you both, filling you with assloads of cum and her with piglets. He adds several other sows to his sty as well, filling them with piglets as he ruts them in the muck.";
				else:
					say "     As time wears on, you can't hold back against your growing urges. Your identity falls apart, leaving only your base needs for food and sex. Heading back to the shed, you join Philip in a long and messy romp on the dirty floor, cumming on one another again and again. Your combined sweat and semen add to the muck you both roll around in. The boar gets dirtier, smellier and all the more attractive to you. And more lustful as he joins you in succumbing to the infection. Quite sticky and messy, you head together to the [if restaurantpig is 1]posh restaurant[else]sewers below the mall[end if] to seek out the lovely sow there. Together, the three of you set up a messy sty filled with the sounds of sows, sex and piglets. You and Philip take turns mounting her and the others who are fortunate enough to be caught and made into sows for you as well.";
				if piginitiation >= 4:
					say "     You and Philip return periodically to Phi Iota Gamma, always making a big impression as he puts the current round of piglet through their initiation. The tales of Philip's exploits only grow and grow from year to year as your sexy hog remains undefeated in the mud pit. You don't mind sharing him with his frat brothers and their sow girlfriends during these visits, as you get to play around with a lot of them as well. And before he leaves after each visit, he makes a big show of selecting members to go out and form another chapter of the fraternity at another college, ensuring the mighty Phi Iota Gamma... *oink* *snort* *grunt* ...will spread plump, piggy sexiness all across the country.";
			else if Philip is in the Large Shed:
				if player is male:
					say "     As time wears on, you can't hold back against your growing urges. Your identity falls apart, leaving only your base needs for food and sex. After wandering back to the shed, you are joined by Philip who follows you off into the city, drawn by your heavy scent. You head together to the [if restaurantpig is 1]posh restaurant[else]sewers below the mall[end if] to seek out the lovely sow there. As you rut the pig, squealing loudly as you do, he looks on lustfully before heading off. Some time later, as you both are resting after your marathon of sex, he returns with a semi-transformed sow of his own. He tosses her into the mess made by you both and mounts her, taking her roughly until her transformation is complete. You and Philip set up a nice, big sty for your growing harem of sows and their piglets.";
				else:
					say "     As time wears on, you can't hold back against your growing urges. Your identity falls apart, leaving only your base needs for food and sex. After wandering back to the shed, you are joined by Philip who follows you off into the city, drawn by your heavy scent. You head together to the [if restaurantpig is 1]posh restaurant[else]sewers below the mall[end if] to seek out the lovely sow there. As you and her grope and fondle one another lustfully, it gets to be too much for the boar. He charges over and mounts you both in turn, rutting you over and over again in a marathon of sex. The sweat and the juices of your combined fluids add to the muck you both roll around in. The boar gets dirtier, smellier and all the more attractive to you both. Together, the three of you set up a messy sty filled with the sounds of sows, sex and piglets.";
				if piginitiation >= 4:
					say "     You and Philip return periodically to Phi Iota Gamma, always making a big impression as he puts the current round of piglet through their initiation. The tales of Philip's exploits only grow and grow from year to year as your sexy hog remains undefeated in the mud pit. You don't mind the attention he gets from his frat brothers and their sow girlfriends during these visits, as you get to play around with a lot of them as well. And before he leaves after each visit, he makes a big show of selecting members to go out and form another chapter of the fraternity at another college, ensuring the mighty Phi Iota Gamma... *oink* *snort* *grunt* ...will spread plump, piggy sexiness all across the country.";
			else:
				if player is male:
					say "     As time wears on, you can't hold back against your growing urges. Your identity falls apart, leaving only your base needs for food and sex. You head to the [if restaurantpig is 1]posh restaurant[else]sewers below the mall[end if] to seek out the lovely sow there. You rut the pig, squealing loudly as you do, in a long marathon of sex [if restaurantpig is 1]and eating[end if]. You rut her again and again, filling her with your seed over and over in a marathon of sex. The sweat and the juices of your combined fluids add to the muck you both roll around in. Together, you set up a messy sty filled with the sounds of sows, sex and piglets.";
				else:
					say "     As time wears on, you can't hold back against your growing urges. Your identity falls apart, leaving only your base needs for food and sex. You head to the [if restaurantpig is 1]posh restaurant[else]sewers below the mall[end if] to seek out the lovely sow there. You and the pig roll around in the muck, groping and fondling one another lustfully for a marathon of sex. Together, you set up a messy sty, adding several other sows to your group. From time to time, you girls are able to lure in (or grab) a male creature from the city and ride him in the muck to fill your wombs with lovely hybrid piglets until he becomes another sow to wait her turn to be filled.";
		else:
			if pigfucked > 0:
				if player is female:
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
			else if Philip is in the Large Shed:
				if player is female:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason. But at least it ends up being brief, as they don't seem to want to keep you around long either. You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive woman. Only Philip really goes out of his way to spend time with you, making the wait tolerable at least.";
					say "     After your eventual release, Philip visits often, bringing small chocolates or other treats for you. He is friendly and talks to you about how busy he is with his new pig farm, though he always seems to have time to visit you. You have trouble making new friends for some reason, despite your lovely, chubby figure and fragrant scent, but the boar keeps you company.";
					say "     As your remaining funds start to run dry after having trouble getting work, he drops to one knee and asks to join him on his farm. Only then do you realize that this big boar has been wooing you the whole time. You agree eagerly and are at his farm that very night, pressed beneath him as he ruts you long and hard, having wanted you as his lovely sow for so long.";
				else:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason. But at least it ends up being brief, as they don't seem to want to keep you around long either. You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive boar. Only Philip really goes out of his way to spend time with you, making the wait tolerable at least.";
					say "     After your eventual release, you keep in contact with Philip and visit his new pig farm from time to time. You struggle to find work for some time, getting odd jobs for a while before getting an idea. Inspired by Philip's moderate success as a farmer, you eventually set yourself up with a small truffle farm. The work, coming naturally to you, is a pleasure to do and you do well enough at it to make a decent living for the first time since your infection. After you finish each year's harvest, you and Philip celebrate with a long night with his sows.";
			else:
				if player is male:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason. But at least it ends up being brief, as they don't seem to want to keep you around long either. You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive boar, but no one else you meet seems to realize this.";
					say "     After your eventual release, you have difficulty finding steady work. No one seems to appreciate your rich fragrance. You only manage to get odd jobs for quite a while before eventually becoming a garbage man. The prevalent scent of your work keeps your coworkers from complaining about your scent and some part of you always enjoys getting dirtier and smellier from a day's work.";
					say "     You manage to hit it off with a raccoon sanitation worker from the next town over during a union function. She is a full-figured woman with wide hips, pudgy thighs and ample breasts. And the fact that she's a little scruffy and likes getting messy as well suits you just fine. After several dirty romps with her, she gets a transfer and moves in with you. Soon enough, you have a house full of messy little raccoon kits and piglets.";
				else:
					say "     The time in the military's quarantine area is quite unpleasant, as most people tend to avoid you for some reason. But at least it ends up being brief, as they don't seem to want to keep you around long either. You have such a full figure with luscious curves and a rich scent; you feel that you are a lovely and attractive woman, but no one else you meet seems to realize this.";
					say "     After your eventual release, you have difficulty finding steady work. No one seems to appreciate your rich fragrance. You only manage to get odd jobs for quite a while before eventually becoming a garbage woman. The prevalent scent of your work keeps your coworkers from complaining about your scent and some part of you always enjoys getting dirtier and smellier from a day's work.";
					say "     One day while working the bulldozer at the far end of the landfill, a friendly coworker calls you over. When you climb out to join the seagull, he presses you down into the trash and mounts you. You try your best to muffle your squeals of delight, not wanting to get into trouble, but loving the nasty feeling of being fucked at work on a messy pile of trash. After filling you, he invites you to join him at his place after work for more. That night is a wild romp that soon becomes more and more nights of the same. You move into his love nest and bear him clutch after clutch of eggs filled with winged piggies, loving your messy, dirty bird.";
			if ( pigfucked > 0 ) or ( player is female and Philip is in Large Shed ):	[Philip farm endings]
				if Sandra is in the Bunker:
					if Snow is in the Grey Abbey Library:
						say "     Sandra and Snow join you and Philip at the pig farm. The four of you spend your days having extremely wild and passionate orgies. Sandra and Snow are soon expecting their own litters of piglets. Philip feels like the luckiest pig in world now that he has his own personal harem.";
					else:
						say "     Sandra joins you and Philip at the pig farm. The three of you spend your days having passionate orgies. Sandra is soon expecting her own litter of piglets.";
				else if Snow is in the Grey Abbey Library:
					say "     Snow joins you and Philip at the pig farm. The three of you spend your days having passionate orgies. Snow is soon expecting her own litter of piglets.";
			if Philip is in Large Shed:										[any farm ending]
				if SarahSlut is 4:
					say "     Sarah's numerous pups make fine farm dogs. You set up a nice kennel to breed them on the farm as well. They guard the farm and make for fine playthings when you're not enjoying messy, piggy sex.";



Hungry Boar Man ends here.
