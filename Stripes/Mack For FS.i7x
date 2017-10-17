Version 2 of Mack for FS by Stripes begins here.
[Version 2 - Mack @ Bunker]

"Adds a male Squirrel name Macadamia (Mack) to the Flexible Survival game"

Section 1 - Event

Finding Mack is a situation. The level of Finding Mack is 8.
The sarea of Finding Mack is "Forest".

when play begins:
	add Finding Mack to badspots of guy;
	add Finding Mack to badspots of furry;

Instead of resolving Finding Mack:
	if hp of Macadamia is 0:
		say "     As you're enjoying a peaceful walk through the woods, all that is broken up as a fluffy burst of grey fur bursts out of the wood. 'Come'n through!' it says as you're pushed aside. Suddenly expecting to be in a fight with the grey fluff, you turn to face it to see it already disappearing into the bushes on the other side. As you regather your wits, you turn in time to see a man in green stepping silently from the woods behind you. 'I had thought to give chase to that troublesome rodent, but you look like much better sport,' he says with a musical cadence to his voice. Taking in his smooth and beautiful features, you notice his pointed ears and realize it is an elf before you and not a man at all. And he's now advancing on you with the lust for the hunt flashing in his eyes.";
		challenge "Elven Hunter";
		if fightoutcome >= 10 and fightoutcome <= 29:		[stuck around either way]
			if fightoutcome >= 10 and fightoutcome <= 19:	[won]
				say "     After dispatching the elven hunter, you spot the grey creature watching from the atop a tree. 'Hey, good job there. Sorry for making you have to deal with my problem. I just wanted to ditch him, but I ran into you on the way. Luckily, it seems like you can take care of yourself.'  He leaps gracefully from tree to tree before landing on the open path beside you. Your new acquaintance is a male squirrel and about 5 1/2 feet in height. He has fluffy grey fur that's a little lighter at the chest and groin. He has a big, bushy tail behind him as well. It is roughly as long as he is tall. Nude save for his fur and a small belt with several pouches, you've got a clear view of this small fellow's sheath and his impressive set of nuts.";
			else if fightoutcome >= 20 and fightoutcome <= 29:	[lost]
				say "     After dispatching the elven hunter, you spot the grey creature watching from the atop a tree. 'Hey, I'm sorry about that. You shouldn't have had to deal with my problem. I just wanted to ditch him, but I ran into you on the way. Luckily, he seems to be gone now that he's had his fun. Better you than me, eh?' he says cheerfully. He leaps gracefully from tree to tree before landing on the open path beside you. Your new acquaintance is a male squirrel and about 5 1/2 feet in height. He has fluffy grey fur that's a little lighter at the chest and groin. He has a big, bushy tail behind him as well. It is roughly as long as he is tall. Nude save for his fur and a small belt with several pouches, you've got a clear view of this small fellow's sheath and his impressive set of nuts.";
			say "     He scurries around you, looking you over with a friendly grin. 'Now that that guy's gone, I can get back to... Say! How would you like to give me a hand again?' he says with a twitch of his whiskers and a flick of his tail. 'You see, things are getting pretty busy here in the forest. Lots of critters running around and a bunch o['] them are big predators compared to little ole me. Now, the nuts here are nice, but I've picked quite a few spots clean already.'  He speaks very quickly and shifting around like the twitchy rodent he is.";
			say "     'Now, I've got an angle, you see - and this is where you come in, buddy. Oh, I'm Mack, by the way. Short for Macadamia, cuz those are the best like me, you know. Well, I know where there's a peanut roasting factory in the city. And I figure they've got to have a good stash in there. More than enough for me to get through the winter. Maybe even a couple,' he adds, pulling a walnut out of one pouch and gnawing at its shell. 'Now, the thing is, a sweet nut stash like that's probably already been found by someone, so they'll have to be muscled out. And you, my friend,' he says, zipping up beside you and kneading your shoulder, 'are gonna be my muscle. Now don't make that face, I'll be helpin['] too. I'll be doing most of the work, actually. I just expect I'll need a little backup and I'll pay you for your help in nuts.'";
			say "     'If you're interested, head to the warehouse district and look for me there,' he says. He gives his tail a quick flick and leaps into the trees, going quickly from one to the next and out of sight.";
			now hp of Macadamia is 1;
			now sarea of Finding Mack is "Warehouse";
		else:
			say "     Making a break for it when you get the opportunity, you flee the scene. You'll let the elf and that grey thing sort it out between themselves.";
			now Finding Mack is resolved;
	else if hp of Macadamia is 1:
		say "     Roaming around between the streets running through this warehouse district, you come across Mack again. He hops down from a rooftop, landing gracefully and scurries over to you. 'Sweet! You're here. I've been scoping out the place and there's a couple of leopardmen living in there. I don't think they've got much interest in the nuts, but are holed up in there to catch lots of guys like me who come around. From the chatter I've been overhearing, it's not been going as well as they'd expected, so I don't think they'll be coming back to bother us once we drive them off.'  The squirrel guy speaks very quickly and scurries up to the rooftops to keep a lookout while directing you towards the factory.";
		say "     Once you get there, he pauses to munch on a nut before laying out the plan for you. He scratches a quick layout of the building on the ground using one claw and tosses out a few nuts. 'Now, these Brazil nuts are the leopards, cuz there a tough nut to crack. Last I checked, they're six of them in there. They're usually here, here, here, here, here and here,' he says, laying the nuts on the floor plan. Now, I'm this macadamia (of course) and I'm gonna sneak in the back through an open window to catch them by surprise. And since they're watching the front door, I want you to come in from here instead,' he says, placing a hazelnut to represent you, 'and start by dealing with this guy. If you're quick, you should be able to take him out before the other guy can make it to you. And while you're doing that, I'll be dealing with the others.'  As each of the leopards are dealt with in his plan, he knocks a Brazil nut away with either the hazelnut or the macadamia until only those two are left. 'And that's the plan.'";
		say "     Looking at the squirrel, you have to wonder how well he can do in a fight. But you have to admit, the plan appears to be sound and you've got an easy exit if things go sour.";
		say "     [bold type]Shall you help the squirrel with his plan?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if the player consents:
			attackingnutsofactory;
			now Finding Mack is resolved;
		else:
			say "     Mack seems a little disappointed, but nods. 'I can understand you being a little nervous about this. But don't worry, I got it all worked out. Just come find me later when you're ready to give it a go. Just don't expect me to wait forever. I'm sure others would be more than happy to be in on this plan for a few jars of those delicious nuts.'";
			now hp of Macadamia is 2;
	else if hp of Macadamia is 2:
		say "     You come across Mack again as the squirrel scurries off of a roof. 'So, are you ready to help me crack that chestnut? I've been keeping an eye on the place and the plan's not changed. You just keep those other two occupied while I deal with the other four. If you can do that, you'll earn yourself some delicious nuts. Are you in?' he asks with a flick of his bushy tail.";
		say "     [bold type]Are you in?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if the player consents:
			attackingnutsofactory;
			now battleground is "void";
			now Finding Mack is resolved;
		else:
			say "     When you tell him that you're again not interested in the job, he sighs and shakes his head. 'I guess I misjudged you. I'll have to find someone else to help with the job. Maybe that dog I saw. I don't think she'd be afraid of a couple of pussies,' he chitters at you before hopping back onto the roof. He chucks an acorn at your head, chitters angrily and scurries off.";
			now hp of Macadamia is 0;
			now Finding Mack is resolved;


Section 2 - Attacking Nutso Factory

to attackingnutsofactory:
	say "     Macadamia gives a happy chitter and scurries about excitedly when you agree to help him. 'Great! Here, have this macadamia. They're good for extra pep. Now, you give me a minute and then go in that side entrance. By that time, I'll already be inside and I'll jump the others from behind.'  You wish him good luck, to which he responds 'I don't need luck. I eat nuts.'  And with this confusing statement, he's up on the roof and scurrying towards the back of the building.";
	say "     After giving him some time to get into position, you burst in through the side door, which it seems the squirrel earlier unlocked, and move quickly to confront the first of the leopardmen.";
	challenge "Leopardman";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     It seems you manage to finish up with the first of them just in time to have the second push his way into the small side room. He growls and charges at you, fists raised and teeth flashing.";
		challenge "Leopardman";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Victorious against the second, you head out into the storage section of the factory. During the fight, you'd heard some crashing out in there and go to check on Macadamia. There you find him panting and straightening his ruffled fur standing amidst a broken and spilled crate of nuts. You spot some leopard fur stuck to the broken wood and guess that the squirrel pushed it onto one of the felines.";
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "     After losing to the leopardmen, they start to drag you deeper into the building, clearly planning on having more fun with you. With some clarity returning, you try to struggle against their strong grip. And with a cry of 'Chitt Chuk Cuk!' Macadamia pushes a wooden crate down onto second leopardman, knocking him down and dazing him. The squirrel then leaps down to deal with the other. The other, still worn after fighting you, doesn't last long as the frantic squirrel fights by scurrying around the room and leaping back onto him from behind or delivering quick blows. His attacks seem completely disorganized, but the leopard cannot keep up with him. Eventually, the two of them are sent running off as he topples another large crate onto them, sending the nuts inside spilling across the floor. The squirrel chitters angrily at them, shaking his fist and throwing nuts, warning them not to come back.";
	if fightoutcome >= 10 and fightoutcome <= 29:		[win or lose]
		say "     The squirrel chitters happily, dancing around among the nuts, tossing handfuls of them into the air. 'I did it! I did it! I did it! Chrtt Chekt!'  Spotting you he grins and grabs some a handful of the nuts in both paws, pushing them to you. 'I mean we did it. Here! Take these for now. And these. And these.'  He pushes a few more pawloads of nuts into your hands, which you pour into your pack. They should be more than enough to feed you for a while.";
		say "     As he pushes a final load into your pack, he kisses you and slides his fluffy tail around you. As your pack slips to the floor, his paws move to slide over your body. The scent of nuts, macadamias especially, and arousal comes from him.";
		say "     [bold type]Shall you join him in celebrating your victory together?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if the player consents:
			[puts Grey Squirrel as lead monster in case of impregnation]
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Grey Squirrel":
					now monster is y;
					break;
			say "     Feeling there'd be no better way to celebrate your victory, you let your hands slide through Macadamia's fluffy fur to cup those large nuts of his. The grey squirrel churrs happily and nuzzles your neck as you rub his heavy balls. As his cock starts to slide from his sheath, he sets your pack aside and starts sliding off your remaining clothes and his belt of pouches. Once that's done, he pushes you to the ground amid the nuts and gives you another kiss before rolling you onto all fours.";
			say "     Quite aroused and excited now, you let him move atop you, bringing his stiff cock and heavy balls into position. 'Chuk... you did great, my sweet hazelnut,' he chitters, affectionately referring to the nut he used to represent you while planning the raid. He nibbles along your shoulder and neck before lining up his hard shaft. You moan in pleasure as he sinks it into your [if cunts of player > 0]pussy quickly[else]asshole slowly[end if] and starts mating you. You reach back and rub those heavy, swinging orbs of his, knowing their hot nutbutter'll be filling you soon.";
			WaitLineBreak;
			say "     As the horny rodent fucks you, his paws roam over your [bodytype of player] body, stroking your [skinname of player] skin and eventually settling at your chest to play with your nipples. You give a chitter as he pinches them and push harder back into him. As your mutual lusts build, he pounds into you hard and faster until eventually blasting his hot load into you, draining his nuts to flood your [if cunts of player > 0]womb[else]bowels[end if] with his semen. Eventually his large orbs are drained and you find yourself left with a noticeable bulge from his considerable output.[impregchance]";
			say "     After resting for a while, he helps you up and back into your gear, giving you several kisses and nips. He makes you promise to come back and see him again after he's had time to take inventory. He promises to give you some more nuts if you'll come back and play with him again. 'Thanks again for your help, my lovely hazelnut,' he churrs. 'Come back again soon and we can have some more fun. But for now, I think I want to be alone with my nuts for a while.'  And with that, the squirrel sends you on your way, your pack somewhat heavier with your haul from the factory.";
			increase carried of food by 2;
			now hp of Macadamia is 10;
			infect "Grey Squirrel";
			now Nutso Factory is known;
		else:
			say "     You give the squirrel a hug and step back. He seems a little disappointed, but gets over it quickly as he surveys the remaining nuts on the ground. 'Thanks for all your help. Look, I'm going to want to take inventory,' the squirrel chitters. 'But I'll give you some more after that. Just come by later and I should have some more for you. But for now,' he says, gently pushing you towards the door. 'I think I want to be alone with my nuts for a while.'  And with that, the squirrel sends you on your way, your pack somewhat heavier with your haul from the factory.";
			increase carried of food by 2;
			now hp of Macadamia is 3;
			now Nutso Factory is known;
	else:
		say "     Unwilling or unable to keep fighting the powerful felines, you make a break for it out the door you came in. You'll have to hope Mack can take care of himself.";
		now hp of Macadamia is 0;


Section 3 - Nutso Factory


Nutso Factory is a room. It is fasttravel. It is private.
The description of Nutso Factory is "[nutsofactorydesc]".

the scent of Nutso Factory is "The air here smells of oil, machinery and nuts (roasted and unroasted).".

to say nutsofactorydesc:
	say "     The Nutso Factory manufactured roasted and salted nuts before the outbreak. While it looks like some of the stores were taken before you and Macadamia got here, there was still a sizable amount of nuts in their storeroom[if hp of Macadamia is 12]. The squirrel has busily moved most of that somewhere else for safe keeping[else if hp of Macadamia >= 13]. The squirrel has taken the remaining stores elsewhere for safe keeping, leaving this place empty[end if][if hp of Macadamia <= 12]. You can smell that the squirrel has been roasting some of the nuts recently as well[end if].";


Section 4 - Macadamia the Squirrel

Macadamia is a man. Macadamia is in Nutso Factory.
The description of Macadamia is "[macadamiadesc]".
The conversation of Macadamia is { "Chitr!" }.
understand "Mack" as Macadamia.

the scent of Macadamia is "Macadamia smells of nuts, predominantly of the macadamias he loves the most.".

to say macadamiadesc:
	say "     Macadamia, or Mack for short, is an energetic grey squirrel with a love of nuts. He's about 5 1/2 feet tall with an agile, flexible body. He has fluffy grey fur that is a somewhat lighter at the chest and groin. He has a big, bushy tail that is roughly as long as he is tall. He goes around in the nude except for a belt with several pouches on it. Below the belt, he's got a plump sheath and an impressive set of nuts for such a small fellow.";


Instead of conversing the Macadamia:
	if hp of Macadamia is 3:
		say "     Macadamia smiles, setting aside the nut he was cracking open with his large incisors. 'Hey there. It's good to see you again. I've been taking care of stuff here, taking inventory, storing nuts, all that. There wasn't quite as much as I'd expected, but still a good haul. Thanks for helping me again with that. I could use a bit of a break and we should really take some time to sit down and celebrate our success, don't you think?' he says with a chitter as his paws walk along your chest. 'We could have a little fun and then I could have a look around for some nuts for you.'";
		now hp of Macadamia is 4;
	else if hp of Macadamia is 4:
		say "     [one of]Mack rifles through one of his pouches. 'Would you like a nut? I've got macadamias (of course). I also have peanuts, cashews, almonds and acorns.'[or]Mack digs a nut from one of his pouches. 'These pouches are great for a tasty treat. I love my nutsacks.'  You have to hold back a snicker.[or]The squirrel scurries around the factory with the occasional chitter of excitement.[or]The squirrel wraps his fluffy tail around you. 'I haven't had a chance to properly thank you for your help earlier,' he chirrs.[or]'Perhaps you'd like a taste of my others nuts some time,' he says with a grin, rubbing his heavy ballsac.[or]'I know you're looking forward to getting some more nuts, but I did do most of the work. Now, I might be willing to part with a few more if you were to help me unwind after all my hard work here,' he says with a grin and grope.[or]'This place is too obvious and I know others are going to start snooping around soon, so I've been moving the nuts to safer hiding spots.'[at random]";
	else if hp of Macadamia is 10:
		say "     Macadamia smiles, setting aside the nut he was cracking open with his large incisors. 'Hey there. It's good to see you again. I've been taking care of stuff here, taking inventory, storing nuts, all that. There wasn't quite as much as I'd expected, but still a good haul. Thanks for helping me again with that. I could use a bit of a break. We should take a moment and celebrate our success again, don't you think?' he says with a chitter as his paws walk along your chest. 'We could have a little fun and then I could have a look around for some nuts for you.'";
		now hp of Macadamia is 11;
	else if hp of Macadamia is 11:
		say "     [one of]Mack rifles through one of his pouches. 'Would you like a nut?' he asks, holding up a selection in his paw. 'I've got macadamias (of course). I also have peanuts, cashews, almonds and acorns.'[or]Mack digs a nut from one of his pouches and gnaws at it. 'These pouches are great for a tasty treat. I love my nutsacks.'  You have to hold back a snicker.[or]The squirrel scurries around the factory with the occasional chitter of excitement.[or]The squirrel wraps his fluffy tail around you. 'We should have some fun again soon,' he chirrs.[or]'Perhaps you'd like a taste of my others nuts some time,' he says with a grin, rubbing his heavy ballsac.[or]'I know you're looking forward to getting some more nuts, but I did do most of the work. Now, I might be willing to part with a few more if you were to help me unwind after all my hard work here,' he says with a grin and grope.[or]'This place is too obvious and I know others are going to start snooping around soon, so I've been moving the nuts to safer hiding spots.'[at random]";
	else if hp of Macadamia is 12:
		say "     [one of]Mack rifles through one of his pouches. 'Would you like a nut?' he asks, holding up a selection in his paw. 'I've got macadamias (of course). I also have peanuts, cashews, almonds and acorns.'[or]Mack digs a nut from one of his pouches and gnaws at it. 'These pouches are great for a tasty treat. I love my nutsacks.'  You have to hold back a snicker.[or]The squirrel scurries around the factory with the occasional chitter of excitement.[or]The squirrel wraps his fluffy tail around you. 'We should have some fun again soon,' he chirrs.[or]'Perhaps you'd like another sample of my fine nuts again soon,' he says with a grin, rubbing his heavy ballsac.[or]'I know you're looking forward to getting some more nuts, but I did do most of the work. Now, I might be willing to part with a few more if you were to help me unwind after all my hard work here,' he says with a grin and grope.[or]'This place is too obvious and I know others are going to start snooping around soon, so I've been moving the nuts to safer hiding spots.'[at random]";
	else if hp of Macadamia is 13:
		say "     Mack seems quick impressed with the bunker and its accommodations, chittering happily as he runs around the room, tape measure in hand. He seems to be taking measurements at random and not of any specific features or the overall size of the bunker. Perhaps it's some strange, vestigial memory of his old life. As he runs up near you to measure a chunk of floor among the bunks, you stop him to ask him about it. 'Oh, I'm just checking out this place. It's a nice setup you've got here, Hazel[if cunts of player is 0]nut[end if]. I'm just having some fun checking it out. Gives my frantic squirrel energy something to do, ya know,' he says with a chitter. He releases the catch on the measuring tape, zipping it back in and stuffs it into a pouch. With that belt of pouches, perhaps he was some kind of carpenter or contractor, you wonder for a moment, but now the squirrel's snuggling up to you, giving you a grope and a nibble at the ear before scurrying off to snack on some of his nuts.";
		now hp of Macadamia is 14;
	else if hp of Macadamia is 14:
		say "     [one of]Mack rifles through one of his pouches. 'Would you like a nut?' he asks, holding up a selection in his paw. 'I've got macadamias (of course). I also have peanuts, cashews, almonds and acorns.'[or]Mack digs a nut from one of his pouches and gnaws at it. 'These pouches are great for a tasty treat. I love my nutsacks.'  You have to hold back a snicker.[or]The squirrel scurries around the bunker with the occasional chitter of excitement.[or]The squirrel wraps his fluffy tail around you. 'We should have some fun again soon,' he chirrs.[or]'Perhaps you'd like another sample of my fine nuts again soon,' he says with a grin, rubbing his heavy ballsac.[or]'I know you're looking forward to getting some more nuts, but I've got most of them stored away. These ones are just to keep me supplied. But I might be convinced to part with a few more,' he says with a grin and grope.[or]'This is a nice place you've got here. Just perfect for a squirrel like me to hole up with a friend for the winter,' he says, running a paw over you.[or]'You've turned out to be such a nice, helpful doe. I think I might just keep you and we can set this fine place up as our little love nest[if cunts of player > 0] and breed us some kits[end if] over the winter.'[at random]";
	else if hp of Macadamia is 15:
		say "     [one of]Mack rifles through one of his pouches. 'Would you like a nut?' he asks, holding up a selection in his paw. 'I've got macadamias (of course). I also have peanuts, cashews, almonds and acorns.'[or]Mack digs a nut from one of his pouches and gnaws at it. 'These pouches are great for a tasty treat. I love my nutsacks.'  You have to hold back a snicker.[or]The squirrel scurries around the bunker with the occasional chitter of excitement.[or]The squirrel wraps his fluffy tail around you. 'We should have some fun again soon,' he chirrs.[or]'Perhaps you'd like another sample of my fine nuts again soon,' he says with a grin, rubbing his heavy ballsac.[or]'I know you're looking forward to getting some more nuts, but I've got most of them stored away. These ones are just to keep me supplied. But you can certainly get a sample of my other nuts,' he says with a grin and grope.[or]'This is a nice place you've got here. Just perfect for a squirrel like me to hole up with a friend for the winter,' he says, running a paw over you.[or]'You've turned out to be such a nice, helpful doe. I think I might just keep you and we can set this fine place up as our little love nest[if cunts of player > 0] and breed us some kits[end if] over the winter.'[at random]";


Section 5 - Getting your Mack on with Mack

the fuckscene of Macadamia is "[sexwithMacadamia]".

to say sexwithMacadamia:
	if hp of Macadamia is 3 or hp of Macadamia is 10:
		say "     You should check in with him and see how things are going first.";
	else if lastfuck of Macadamia - turns < 6:
		say "     'I could use a break before we have another go at it.'";
	else if cocks of player is 0 and cunts of player is 0:
		say "     You're ill-equipped to play with the squirrel right now.";
	else:
		[puts Grey Squirrel as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Grey Squirrel":
				now monster is y;
				break;
		if hp of Macadamia is 4:
			say "     Wanting some fun with the energetic squirrel, you snuggle in close and scritch his chest. He chirrs happily and slides his fluffy tail around you both as he gives you a kiss. Soon you're on the floor together with the squirrel's nuts in your hand. He nuzzles at your neck as your rub his balls, rubbing his furry cheeks against you. As his cock starts to slide from his sheath, he sets your pack aside and starts sliding off your remaining clothes and his belt of pouches. Once that's done, he gives you another kiss before rolling you onto all fours.";
			say "     Quite aroused and excited now, you let him move atop you, bringing his stiff cock and heavy balls into position. 'Chuk... you did great, my sweet hazelnut,' he chitters, affectionately referring to the nut he used to represent you while planning the raid. He nibbles along your shoulder and neck before lining up his hard shaft. You moan in pleasure as he sinks it into your [if cunts of player > 0]pussy quickly[else]asshole slowly[end if] and starts mating you. You reach back and rub those heavy, swinging orbs of his, knowing their hot nutbutter'll be filling you soon.";
			WaitLineBreak;
			say "     As the horny rodent fucks you, his paws roam over your [bodytype of player] body, stroking your [skinname of player] skin and eventually settling at your chest to play with your nipples. You give a chitter as he pinches them and push harder back into him. As your mutual lusts build, he pounds into you hard and faster until eventually blasting his hot load into you, draining his nuts to flood your [if cunts of player > 0]womb[else]bowels[end if] with his semen. Eventually his large orbs are drained and you find yourself left with a noticeable bulge from his considerable output.[impregchance]";
			say "     After resting for a while, he helps you up and back into your gear, giving you several kisses and nips. He makes you promise to come back and see him again. 'I'll be looking forward to you stopping by so I can take another break from sorting and moving the nuts. Oh, the nuts! Here,' he says, scurrying excitedly over to give you another handful. 'I'd set these ones aside for you. They're particularly tasty ones,' he says, pouring a bowl of assorted, unshelled nuts into your pack. 'I can tell. We squirrels know these things.'";
			infect "Grey Squirrel";
			increase carried of food by 2;
			now hp of Macadamia is 11;
		else if hp of Macadamia is 11:
			say "     Grinning at your offer, Mack runs his paws along your sides and before gently pushing you down to your knees. 'I think you should get a taste of my delicious nuts,' he chitters with a grin. Taking in the heady scent of his nutsack you nuzzle at the large orbs and start running your hands over them. They have an alluring scent, a rich and musky scent with a hint of nuts. You start licking over the soft fur, making the squirrel chitter happily.";
			say "     His cock, already poking from its sheath, quickly grows hard and he wraps a paw around it, stroking himself lightly as you nuzzle and lick those big, tasty balls of his. 'Mmm... that feels so good, my sweet Hazel[if cunts of player is 0]nut[end if],' he chirrs, calling you again by his nickname for you. 'You love those big balls, don't you? Show me how much you want my delicious nut butter... how much you need it,' he says, rubbing his free hand over your head. With their strong, delicious scent in your nose, your mouth starts to water, longing to get a taste their salty, nutty treat. Precum from his stroking leaks down onto you as you continue to worship his plump, juicy nuts.";
			WaitLineBreak;
			say "     With his fluffy tail wrapped around you like a soft hug, he brushes it along your back to stroke you tenderly. 'Mmm... that's my sweet [if cunts of player > 0]girl[else]boy[end if]. Keep it up and you'll earn your tasty treat,' he chitters. You kiss, caress and lick his softly furred sac, lavishing attention on his impressive testes in the hopes of earning your reward. When he strokes your cheek and turns your head up, his cock pointed towards your mouth, you open wide and plunge your mouth over it eagerly, licking and sucking hard, pushing the aroused squirrel over the edge. As you swallow down his deliciously nutty load, you frantically [if cocks of player > 0 and cunts of player > 0]stroke and finger[else if cunts of player > 0]finger[else if cocks of player > 0]stroke[end if] yourself to a wild climax of your own. His hot load fills your mouth with its wonderfully salty, nutty flavour and rushes down your throat to fill your belly. You are left feeling full and satisfied, squirrel cum leaking from the sides of your overful mouth.";
			WaitLineBreak;
			say "     Mack smiles and strokes your head as you lean back against a crate while licking your lips. 'Here you go, my sweet Hazel[if cunts of player is 0]nut[end if]. A tasty treat to remind you of me while we are apart,' he chitters as he passes you jar of roasted nuts. But instead of the usual Nutso label, he's put a label of his own on it, one depicting a colourful drawing of himself. Leaning in to give your messy face a kiss, he slips the jar from your hands and into your pack for later.";
			infect "Grey Squirrel";
			increase carried of roasted nuts by 1;
			now hp of Macadamia is 12;
			now lastfuck of Macadamia is turns;
		else if hp of Macadamia is 12:
			say "     Reminded of the tasty treat you'd gotten from the squirrel last time, you lick your lips and find yourself lusting for his balls['] contents again. Catching your glances, the grey squirrel slides his fluffy tail around you like a furry shawl and slides up next to you. 'I can see you're looking for another sample of my creamy nut butter,' he chirrs, scritching your chest and slipping off your gear. 'I know you're looking for another taste, but wouldn't you much prefer to get it somewhere even better,' he says as he [if cunts of player > 0]runs his nimble fingers over your wet folds[else]gives your ass a squeeze[end if]. With a playful squirm, you hug him tight and agree, moaning that your body needs his big balls drained in you.";
			say "     Grinning, he lays you down on your side and gives you several kisses. Raising your leg up, he moves into position with his heavy ballsac resting on your other thigh. He strokes and caresses your raised leg as he guiding his erection into position with the other paw. Soon his glans is resting at your [if cunts of player > 0]juicy pussy[else]crinkled hole[end if]. 'Mmm... does my sexy Hazel[if cunts of player is 0]nut[end if] want [if cunts of player > 0]her[else]his[end if] nut butter?' he chirrs. 'You're such a horny squirrel doe, aren't you?' he asks, teasing a paw across your [if cunts of player > 0]clit[else]cock[end if]. You moan at his touch and try to press yourself back onto his cock, but he doesn't let you until you moan for him to fuck you and make you his horny squirrel. Grinning, he thrusts forward, sinking his shaft into you, sending a rush of pleasure through you.";
			WaitLineBreak;
			say "     He nips and nibbles along your leg as he thrusts. His heavy ballsac rocks across your thigh, its shifting weight reminding you of the wonderful treat that will soon be filling you. You grab Macadamia's fluffy tail and snuggle it, chirring and moaning into its fur as you breath in his delicious scent. As the energetic squirrel fucks you, he uses his free paw [if cocks of player > 0 and cunts of player > 0]to tend to your throbbing cock and caress your spread pussy's lips and clit[else if cocks of player > 0]to stroke your pulsing shaft, jerking you off as he pounds into you[else]caress your spread pussy's lips and rub your clit[end if]. His nimble fingers are a delight, reducing you to a moaning, chittering ball of lust that cries out in ecstasy as the squirrel drives hard into you and starts blasting his thick load into you over and over again. As his heavy load [if cunts of player > 0]floods and swells your womb[else]rushes to fill your belly until it swells[end if], you cum as well, burying your face in his fluffy tail to try and muffle your cries of delight[if cocks of player > 0]. Your own hot seed is splattered across yourself and floor as he strokes you off while filling you with the contents of his plump nuts[end if].[impregchance]";
			infect "Grey Squirrel";
			WaitLineBreak;
			say "     When he's finally finished draining his heavy balls into you, he snuggles with you, nibbling at the back of your neck and running his paws over your body. 'I was thinking, since I'm pretty much done here, that it's time to move on. Now, I'm thinking you've got a nice, safe spot. I could store the last of my nuts there for now and we could have some more fun. Make it our little love nest,' he chirrs as he teases your nipple. 'I could be right there to give you another taste of my hot nuts whenever you'd like[if cunts of player > 0]. Breed you full of lots of kits[end if]. Doesn't that sound nice, my needy doe,' he chirrs in your ear. Still lost in the bliss of the afterglow, you agree readily, much to the squirrel's delight.";
			say "     He gives you several quick kisses before getting up and running around frantically to gather his stuff and the last of his nuts. Once he's got it all, he pushes another bottle of roasted nuts into your hand, calling it a snack for the trip and follows you towards the bunker. A little unsure about how you got talked into this, but certainly happy at the prospect of having him around for more sex, you lead him back to your safe haven where he sets himself up on one of the cots with several large bags of nuts around to keep himself fed.";
			WaitLineBreak;
			increase carried of roasted nuts by 1;
			now lastfuck of Macadamia is turns;
			move Macadamia to bunker;
			now hp of Macadamia is 13;
			move player to bunker;
		else if hp of Macadamia is 13 or hp of Macadamia is 14 or hp of Macadamia is 15:
			if a random chance of 1 in 2 succeeds:
				say "     Grinning at your offer, Mack runs his paws along your sides and before gently pushing you down to your knees. 'I think you should get a taste of my delicious nuts,' he chitters with a grin. Taking in the heady scent of his nutsack you nuzzle at the large orbs and start running your hands over them. They have an alluring scent, a rich and musky scent with a hint of nuts. You start licking over the soft fur, making the squirrel chitter happily.";
				say "     His cock, already poking from its sheath, quickly grows hard and he wraps a paw around it, stroking himself lightly as you nuzzle and lick those big, tasty balls of his. 'Mmm... that feels so good, my sweet Hazel[if cunts of player is 0]nut[end if],' he chirrs, calling you again by his nickname for you. 'You love those big balls, don't you? Show me how much you want my delicious nut butter... how much you need it,' he says, rubbing his free hand over your head. With their strong, delicious scent in your nose, your mouth starts to water, longing to get a taste their salty, nutty treat. Precum from his stroking leaks down onto you as you continue to worship his plump, juicy nuts.";
				WaitLineBreak;
				say "     With his fluffy tail wrapped around you like a soft hug, he brushes it along your back to stroke you tenderly. 'Mmm... that's my sweet [if cunts of player > 0]girl[else]boy[end if]. Keep it up and you'll earn your tasty treat,' he chitters. You kiss, caress and lick his softly furred sac, lavishing attention on his impressive testes in the hopes of earning your reward. When he strokes your cheek and turns your head up, his cock pointed towards your mouth, you open wide and plunge your mouth over it eagerly, licking and sucking hard, pushing the aroused squirrel over the edge. As you swallow down his deliciously nutty load, you frantically [if cocks of player > 0 and cunts of player > 0]stroke and finger[else if cunts of player > 0]finger[else if cocks of player > 0]stroke[end if] yourself to a wild climax of your own. His hot load fills your mouth with its wonderfully salty, nutty flavour and rushes down your throat to fill your belly. You are left feeling full and satisfied, squirrel cum leaking from the sides of your overful mouth.";
				if a random chance of 2 in 3 succeeds and hp of Macadamia is not 15:
					say "     Mack smiles and strokes your head as you lean back against his cot while licking your lips. 'Here you go, my sweet Hazel[if cunts of player is 0]nut[end if]. A tasty treat to remind you of me while we are apart,' he chitters as he passes you jar of roasted nuts. It's another jar of his specially made nuts with a cartoonish depiction of himself on it. Leaning in to give your messy face a kiss, he slips the jar from your hands and into your pack for later. He fondles his recently drained nuts and nuzzles you. 'You should come back for another taste of my fine nuts soon,' he churrs.";
					if a random chance of 3 in 10 succeeds, now hp of Macadamia is 15;
				else:
					say "     Mack smiles and strokes your head as you lean back against his cot while licking your lips. 'Mmm... you look so lovely covered in my nut butter, my sexy doe. We should definitely do this more often. You'll make fine company for the winter,' he adds, running his paws along your sides and giving you a quick grope.";
				decrease humanity of player by 2;
				infect "Grey Squirrel";
			else:
				say "     Reminded of the tasty treats you've gotten from the squirrel in the past, you lick your lips and find yourself lusting for his balls['] contents again. Catching your glances, the grey squirrel slides his fluffy tail around you like a furry shawl and slides up next to you. 'I can see you're looking for another sample of my creamy nut butter,' he chirrs, scritching your chest and slipping off your gear. 'I know you're looking for another taste, but wouldn't you much prefer to get it somewhere even better,' he says as he [if cunts of player > 0]runs his nimble fingers over your wet folds[else]gives your ass a squeeze[end if]. With a playful squirm, you hug him tight and agree, moaning that your body needs his big balls drained in you.";
				say "     Grinning, he lays you down on your side on his bunk and gives you several kisses. Raising your leg up, he moves into position with his heavy ballsac resting on your other thigh. He strokes and caresses your raised leg as he guiding his erection into position with the other paw. Soon his glans is resting at your [if cunts of player > 0]juicy pussy[else]crinkled hole[end if]. 'Mmm... does my sexy Hazel[if cunts of player is 0]nut[end if] want [if cunts of player > 0]her[else]his[end if] nut butter?' he chirrs. 'You're such a horny squirrel doe, aren't you?' he asks, teasing a paw across your [if cunts of player > 0]clit[else]cock[end if]. You moan at his touch and try to press yourself back onto his cock, but he doesn't let you until you moan for him to fuck you and make you his horny squirrel. Grinning, he thrusts forward, sinking his shaft into you, sending a rush of pleasure through you.";
				WaitLineBreak;
				say "     He nips and nibbles along your leg as he thrusts. His heavy ballsac rocks across your thigh, its shifting weight reminding you of the wonderful treat that will soon be filling you. You grab Macadamia's fluffy tail and snuggle it, chirring and moaning into its fur as you breath in his delicious scent. As the energetic squirrel fucks you, he uses his free paw [if cocks of player > 0 and cunts of player > 0]to tend to your throbbing cock and caress your spread pussy's lips and clit[else if cocks of player > 0]to stroke your pulsing shaft, jerking you off as he pounds into you[else]caress your spread pussy's lips and rub your clit[end if]. His nimble fingers are a delight, reducing you to a moaning, chittering ball of lust that cries out in ecstasy as the squirrel drives hard into you and starts blasting his thick load into you over and over again. As his heavy load [if cunts of player > 0]floods and swells your womb[else]rushes to fill your belly until it swells[end if], you cum as well, burying your face in his fluffy tail to try and muffle your cries of delight[if cocks of player > 0]. Your own hot seed is splattered across yourself and floor as he strokes you off while filling you with the contents of his plump nuts[end if].[impregchance]";
				say "     When he's finally finished draining his heavy balls into you, he snuggles with you, nibbling at the back of your neck and running his paws over your body. 'I really appreciate you showing me this place, my sexy doe. It makes such a wonderful love nest for us, don't you think?' he churrs softly as you both bask in the afterglow together on his cot. His paw drifts down to your well-stuffed belly and chitters happily and you respond in kind, your fondness for the energetic squirrel growing all the more";
				if a random chance of 2 in 3 succeeds and hp of Macadamia is not 15:
					say ". After snuggling for a while, he lets up get back up, slipping another jar of his roasted nuts into your pack with a grin. 'Now don't stay away too long, my sex Hazel[if cunts of player is 0]nut[end if],' he says with a grin and a parting grope that has you looking forward to the next time.";
					if a random chance of 3 in 10 succeeds, now hp of Macadamia is 15;
				else:
					say ". After snuggling for a while, he lets you get back up, giving you a parting grope with a grin.";
				decrease humanity of player by 2;
				infect "Grey Squirrel";
		now lastfuck of Macadamia is turns;


Section 6 - Roasted Nuts Item

Table of Game Objects (continued)
name	desc	weight	object
"roasted nuts"	"A jar of Macadamia's special salted and roasted nuts. It has a label with a cartoonish drawing of the grinning squirrel with one paw on his heavy sac holding up a large unshelled walnut."	1	roasted nuts

roasted nuts is a grab object. It is a part of the player. roasted nuts is infectious. The strain of roasted nuts is "Grey Squirrel".

The usedesc of roasted nuts is "[eatroastednuts]";

to say eatroastednuts:
	let jfj be 0;
	if "Junk Food Junky" is listed in feats of player, now jfj is 1;
	say "     You pop the top off the container of nuts and start munching away at them. At first, you think only to have a few, but they're so tasty[if jfj is 1] and satisfying to your snacking habits[end if]. Reminding you of the squirrel's delicious nut butter, your mouth waters for more and you keep eating and eating, surprised and disappointed when you get to the bottom and are still hungry for more. You do feel fed from eating them, but crave more of that delicious taste as well.";
	if hunger of player > 12, increase score by 4;
	if morale of player is less than 0:
		increase morale of player by 30;
		if morale of player is greater than 0, now morale of player is 0;
		say "You feel a little better having eaten[if jfj is 1] a tasty snack[end if].";
	if "Junk Food Junky" is listed in feats of player:
		if hunger of player > 14, increase score by 1;
		decrease hunger of player by 3;
	decrease hunger of player by 12;
	increase thirst of player by 3;
	if hunger of player < 0, now hunger of player is 0;


[	hp of Macadamia		]
[ 0 - not met			]
[ 1 - met in Forest		]
[ 2 - refused plan once		]
[ 3 - factory access - no sex	]
[ 4 - talked - no sex		]
[ 10 - factory access - sex	]
[ 11 - talked - sex		]
[ 12 - sexing at factory	]
[ 13 - to the bunker		]
[ 14 - talked at bunker		]
[ 15 - gives no more nuts	]

Section 7 - Endings

when play ends:
	[for Grey Squirrel endings, see that file.]
	if hp of Macadamia >= 13 and bodyname of player is not "Grey Squirrel":
		if humanity of player < 10:
			say "     With you having succumbed, Macadamia decides that the bunker's not quite as safe as he'd hoped and moves out, searching for a new place to hide his nuts and hole up for the winter.";
		else:
			say "     When the soldiers come through the city to rescue people, Macadamia has no intention of leaving his precious caches of nuts and bids you a fond farewell before they arrive. He tells you that he's had a couple of backup hiding spots and he'll move into one of them rather than risk the soldiers deciding he has to leave or stealing his precious stash.";

[See Grey Squirrel file for ]

Mack for FS ends here.
