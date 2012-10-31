Version 1 of Mack by Stripes begins here.
[Version 1 - ]
"Adds a male Squirrel name Macadamia (Mack) to the Flexible Survival game"

Section 1 - Event

Finding Mack is a situation.  The level of Finding Mack is 8.
The sarea of Finding Mack is "Park";

when play begins:
	add Finding Mack to badspots of guy;
	add Finding Mack to badspots of furry;

Instead of resolving Finding Mack:
	if hp of Macadamia is 0:
		say "     As you're enjoying a peaceful walk through the park, all that is broken up as a fluffy burst of grey fur bursts out of the wood.  'Come'n through!' it says as you're pushed aside.  Suddenly expecting to be in a fight with the grey fluff, you turn to face it to see it already disappearing into the bushes on the other side.  As you regather your wits, you turn in time to see a man in green stepping silently from the woods behind you.  'I had thought to give chase to that troublesome rodent, but you look like much better sport,' he says with a musical cadence to his voice.  Taking in his smooth and beautiful features, you notice his pointed ears and realize it is an elf before you and not a man at all.  And he's now advancing on you with the lust for the hunt flashing in his eyes.";
		challenge "Elven Hunter";
		if fightoutcome >= 10 and fightoutcome <= 29:		[stuck around either way]
			if fightoutcome >= 10 and fightoutcome <= 19:	[won]
				say "     After dispatching the elven hunter, you spot the grey creature watching from the atop a tree.  'Hey, good job there.  Sorry for making you have to deal with my problem.  I just wanted to ditch him, but I ran into you on the way.  Luckily, it seems like you can take care of yourself.'  He leaps gracefully from tree to tree before landing on the open path beside you.  Your new acquaintance is a male squirrel and about 5 1/2 feet in height.  He has fluffy grey fur that's a little lighter at the chest and groin.  He has a big, bushy tail behind him as well.  It is roughly as long as he is tall.  Nude save for his fur and a small belt with several pouches, you've got a clear view of this small fellow's sheath and his impressive set of nuts.";
			otherwise if fightoutcome >= 20 and fightoutcome <= 29:	[lost]
				say "     After dispatching the elven hunter, you spot the grey creature watching from the atop a tree.  'Hey, I'm sorry about that.  You shouldn't have had to deal with my problem.  I just wanted to ditch him, but I ran into you on the way.  Luckily, he seems to be gone now that he's had his fun.  Better you than me, eh?' he says cheerfully.  He leaps gracefully from tree to tree before landing on the open path beside you.  Your new acquaintance is a male squirrel and about 5 1/2 feet in height.  He has fluffy grey fur that's a little lighter at the chest and groin.  He has a big, bushy tail behind him as well.  It is roughly as long as he is tall.  Nude save for his fur and a small belt with several pouches, you've got a clear view of this small fellow's sheath and his impressive set of nuts.";
			say "     He scurries around you, looking you over with a friendly grin.  'Now that that guy's gone, I can get back to... Say!  How would you like to give me a hand again?' he says with a twitch of his whiskers and a flick of his tail.  'You see, things are getting pretty busy here in the park.  Lots of critters running around and a bunch o['] them are big predators compared to little ole me.  Now, the nuts here are nice, but I've picked quite a few spots clean already.'  He speaks very quickly and shifting around like the twitchy rodent he is.";
			say "     'Now, I've got an angle, you see - and this is where you come in, buddy.  Oh, I'm Mack, by the way.  Short for Macadamia, cuz those are the best like me, you know.  Well, I know where there's a peanut roasting factory in the city.  And I figure they've got to have a good stash in there.  More than enough for me to get through the winter.  Maybe even a couple,' he adds, pulling a walnut out of one pouch and gnawing at its shell.  'Now, the thing is, a sweet nut stash like that's probably already been found by someone, so they'll have to be muscled out.  And you, my friend,' he says, zipping up beside you and kneading your shoulder, 'are gonna be my muscle.  Now don't make that face, I'll be helpin['] too.  I'll be doing most of the work, actually.  I just expect I'll need a little backup and I'll pay you for your help in nuts.'";
			say "     'If you're interested, head to the warehouse district and look for me there,' he says.  He gives his tail a quick flick and leaps into the trees, going quickly from one to the next and out of sight.";
			now hp of Macadamia is 1;
			now sarea of Finding Mack is "Warehouse";
		otherwise:
			say "     Making a break for it when you get the opportunity, you flee the scene.  You'll let the elf and that grey thing sort it out between themselves.";
			now Finding Mack is resolved;
	otherwise if hp of Macadamia is 1:
		say "     Roaming around between the streets running through this warehouse district, you come across Mack again.  He hops down from a rooftop, landing gracefully and scurries over to you.  'Sweet!  You're here.  I've been scoping out the place and there's a couple of leopardmen living in there.  I don't think they've got much interest in the nuts, but are holed up in there to catch lots of guys like me come around.  From the chatter I've been overhearing, it's not been going as well as they'd expected, so I don't think they'll be coming back to bother us once we drive them off.'  The squirrel guy speaks very quickly and scurries up to the rooftops to keep a lookout while directing you towards the factory.";
		say "    Once you get there, he pauses to munch on a nut before laying out the plan for you.  He scratches a quick layout of the building on the ground using one claw and tosses out a few nuts.  'Now, these Brazil nuts are the leopards, cuz there a tough nut to crack.  Last I checked, they're six of them in there.  They're usually here, here, here, here, here and here,' he says, laying the nuts on the floor plan.  Now, I'm this macadamia (of course) and I'm gonna sneak in the back through an open window to catch them by surprise.  And since they're watching the front door, I want you to come in from here instead and start by dealing with this guy.  If you're quick, you should be able to take him out before the other guy can make it to you.  And while you're doing that, I'll be dealing with the others.'  As each of the leopards are dealt with in his plan, he knocks a Brazil nut away with either the hazelnut or the macadamia until only those two are left.  'And that's the plan.'";
		say "     Looking at the squirrel, you have to wonder how well he can do in a fight.  But you have to admit, the plan appears to be sound and you've got an easy exit if things go sour.  Shall you help the squirrel with his plan?";
		if the player consents:
			attackingnutsofactory;
			now Finding Mack is resolved;
		otherwise:
			say "     Mack seems a little disappointed, but nods.  'I can understand you being a little nervous about this.  But don't worry, I got it all worked out.  Just come find me later when you're ready to give it a go.  Just don't expect me to wait forever.  I'm sure others would be more than happy to be in on this plan for a few jars of those delicious nuts.'";
			now hp of Macadamia is 2;
	otherwise if hp of Macadamia is 2:
		say "     You come across Mack again as the squirrel scurries off of a roof.  'So, are you ready to help me crack that chestnut?  I've been keeping an eye on the place and the plan's not changed.  You just keep those other two occupied while I deal with the other four.  If you can do that, you'll earn yourself some delicious nuts.  Are you in?' he asks with a flick of his bushy tail.";
		if the player consents:
			attackingnutsofactory;
			now Finding Mack is resolved;
		otherwise:
			say "     When you tell him that you're again not interested in the job, he sighs and shakes his head.  'I guess I misjudged you.  I'll have to find someone else to help with the job.  Maybe that dog I saw.  I don't think she'd be afraid of a couple of pussies,' he chitters at you before hopping back onto the roof.  He chucks an acorn at your head, chitters angrily and scurries off.";
			now hp of Macadamia is 0;
			now Finding Mack is resolved;


Section 2 - Attacking Nutso Factory

to attackingnutsofactory:
	say "     Macadamia gives a happy chitter and scurries about excitedly when you agree to help him.  'Great!  Here, have this macadamia.  They're good for extra pep.  Now, you give me a minute and then go in that side entrance.  By that time, I'll already be inside and I'll jump the others from behind.'  You wish him good luck, to which he responds 'I don't need luck.  I eat nuts.'  And with this confusing statement, he's up on the roof and scurrying towards the back of the building.";
	say "     After giving him some time to get into position, you burst in through the side door, which it seems the squirrel earlier unlocked, and move quickly to confront the first of the leopardmen.";
	challenge "Leopardman";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     It seems you manage to finish up with the first of them just in time to have the second push his way into the small side room.  He growls and charges at you, fists raised and teeth flashing.";
		challenge "Leopardman";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Victorious against the second, you head out into the storage section of the factory.  During the fight, you'd heard some crashing out in there and go to check on Macadamia.  There you find him panting and straightening his ruffled fur standing amidst a broken and spilled crate of nuts.  You spot some leopard fur stuck to the broken wood and guess that the squirrel pushed it onto one of the felines.";
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "     After losing to the leopardmen, they start to drag you deeper into the building, clearly planning on having more fun with you.  With some clarity returning, you try to struggle against their strong grip.  And with a cry of 'Chitt Chuk Cuk!' Macadamia comes leaping off a some crates onto them.  The squirrel fights fast and frantically with the leopardmen, scurrying around the room and leaping back onto them from behind.  His attacks seem completely disorganized, but the leopards cannot keep up with him.  Eventually, they're sent running off as he topples a large crate onto one of them, sending the nuts inside spilling across the floor.  The squirrel chitters angrily at them, shaking his fist and throwing nuts, warning them not to come back.";
	if fightoutcome >= 10 and fightoutcome <= 29:		[win or lose]
		say "     The squirrel chitters happily, dancing around among the nuts, tossing handfuls of them into the air.  'I did it!  I did it!  I did it!  Chrtt Chekt!'  Spotting you he grins and grabs some a handful of the nuts in both paws, pushing them to you.  'I mean we did it.  Here!  Take these for now.  And these.  And these.'  He pushes a few more pawloads of nuts into your hands, which you pour into your pack.  They should be more than enough to feed you for a while.";
		say "     As he pushes a final load into your pack, he kisses you and slides his fluffy tail around you.  As your pack slips to the floor, his paws move to slide over your body.  The scent of nuts, macadamias especially, and arousal comes from him.  Shall you join him in celebrating your victory together?";
		if the player consents:
			say "     Feeling there'd be no better way to celebrate your victory, you let your hands slide through Macadamia's fluffy fur to cup those large nuts of his.  The grey squirrel churrs happily and nuzzles your neck as you rub his heavy balls.  As his cock starts to slide from his sheath, he sets your pack aside and starts sliding off your remaining clothes and his belt of pouches.  Once that's done, he pushes you to the ground amid the nuts and gives you another kiss before rolling you onto all fours.";
			say "     Quite aroused and excited now, you let him move atop you, bringing his stiff cock and heavy balls into position.  'Chuk... you did great, my sweet hazelnut,' he chitters, affectionately referring to the nut he used to represent you while planning the raid.  He nibbles along your shoulder and neck before lining up his hard shaft.  You moan in pleasure as he sinks it into your [if cunts of player > 0]pussy quickly[otherwise]asshole slowly[end if] and starts mating you.  You reach back and rub those heavy, swinging orbs of his, knowing their hot nutbutter'll be filling you soon.";
			attempttowait;
			say "     As the horny rodent fucks you, his paws roam over your [bodytype of player] body, stroking your [skinname of player] skin and eventually settling at your chest to play with your nipples.  You give a chitter as he pinches them and push harder back into him.  As your mutual lusts build, he pounds into you hard and faster until eventually blasting his hot load into you, draining his nuts to flood your [if cunts of player > 0]womb[otherwise]bowels[end if] with his semen.  Eventually his large orbs are drained and you find yourself left with a noticeable bulge from his considerable output.";
			say "     After resting for a while, he helps you up and back into your gear, giving you several kisses and nips.  He makes you promise to come back and see him again after he's had time to take inventory.  He promises to give you some more nuts if you'll come back and play with him again.  'Thanks again for your help, my lovely hazelnut,' he churrs.  'Come back again soon and we can have some more fun.  But for now, I think I want to be alone with my nuts for a while.'  And with that, the squirrel sends you on your way, your pack somewhat heavier with your haul from the factory.";
			add "food" to invent of player;
			add "food" to invent of player;
			now hp of Macadamia is 4;
[			infect "Squirrel";		]
[			now Nutso Factory is known;	]
		otherwise:
			say "     You give the squirrel a hug and step back.  He seems a little disappointed, but gets over it quickly as he surveys the remaining nuts on the ground.  'Thanks for all your help.  Look, I'm going to want to take inventory,' the squirrel chitters.  'But I'll give you some more after that.  Just come by later and I should have some more for you.  But for now,' he says, gently pushing you towards the door.  'I think I want to be alone with my nuts for a while.'  And with that, the squirrel sends you on your way, your pack somewhat heavier with your haul from the factory.";
			add "food" to invent of player;
			add "food" to invent of player;
			now hp of Macadamia is 3;
[			now Nutso Factory is known;	]
	otherwise:
		say "     Unwilling or unable to keep fighting the powerful felines, you make a break for it out the door you came in.  You'll have to hope Mack can take care of himself.";
		now hp of Macadamia is 0;


Section 3 - Nutso Factory


Nutso Factory is a room. It is fasttravel. It is private.
The description of Nutso Factory is "[nutsofactorydesc]";

instead of sniffing Nutso Factory:
	say "***";

to say nutsofactorydesc:
	say "***";


Section 4 - Macadamia the Squirrel

Macadamia is a man.  Macadamia is in Nutso Factory.
The description of Macadamia is "[macadamiadesc]";
The conversation of Macadamia is { "Chitr!" }.

the scent of Macadamia is "Macadamia smells of nuts.";

to say macadamiadesc:
	say "***";


Instead of conversing the Macadamia:
	if hp of Macadamia is 1:
		say "***";


instead of fucking the Macadamia:
	if hp of Macadamia >= 3:
		say "***";
	otherwise if lastfuck of Macadamia - turns < 6:
		say "     'I could use a break before we have another go at it.'";
	otherwise if cocks of player is 0 and cunts of player is 0:
		say "     You're ill-equipped to play with the squirrel right now.";
	otherwise:
		now lastfuck of Macadamia is turns;
		if hp of Macadamia is 2:
			say "***";


[	hp of Macadamia		]
[ 0 - not met			]
[ 1 - met in Park			]
[ 2 - refused plan		]
[ 3 - factory access		]
[ 4 - had sex w/Mack		]

Section 5 - Endings
[to come later]

Mack ends here.