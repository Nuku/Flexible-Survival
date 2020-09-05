Warehouse Events by StripeGuy begins here.
[Version 1.1 - Typo fixes - Wahn]

"Adds a series of random events to Flexible Survival set in the Warehouse area."

Section 1 - dock team

Table of GameEventIDs (continued)
Object	Name
Dock Team	"dock team"
Dock Team	"Dock Team"

Dock Team is a situation.
ResolveFunction of Dock Team is "[ResolveEvent Dock Team]".
Sarea of Dock Team is "Warehouse".

to say ResolveEvent Dock Team:
	say "     The warehouse and dock district are weirdly contrasted with the wilds of the city. There is almost a bustle about them like in the days before the nanites, a bit more orderly and perhaps slightly less savage than some harder hit areas. Oh sure, there is a lot more sex and a bit of violence, but the docks were always a rough part of town and at least around here you might get a [']by your leave['] before a rough non-consensual fucking. You pause to admire a group of longshoremen, now longshore animalmen, all working in concert to move large crates of booty from a coast-raiding galley fresh from the limited expanse of the military-cordoned nanite bubble. Despite the recent disasters, the beating human heart of greed drives a limping economy of scavenge and plunder old as time. Without power, even the loading and unloading has returned to ancient roots, the dockers working in teams with old fraying ropes and wooden pulleys. The survival of order and teamwork in the face of adversity is uplifting, and proof that humanity can overcome any obstacle with proper motivation. As you meditate on the scene, a line from an old song comes to mind, about some how some hungers are strong as the wind and tides. Something about a lust for treasure and the love of gold, you cannot quite recall.";
	let bonus be ( Strength of Player + Perception of Player - 20 ) divided by 2;
	let dice be a random number from 1 to 20;
	if dice + bonus > 14:
		say "     In the midst of your musing, you hear a sudden sound coming from your right, and turn to see [one of]a rope fraying, about to snap[or]a cotter pin nearly fit to fly from its hole[or]a stack of crates, precariously about to fall[at random]! You call to the crew of rough longshoremen as you leap to the source of trouble, stopping disaster just in time. Your muscles ache at the sudden exertion, but in a few heartbeats hot paws clasp over your own and the rest of the crew arrive to help shoulder the load. After things are sorted, you gracefully accept the thanks of the crew and soak in the warmth of social acceptance.";
		increase score by 5;
		SanBoost 5;
		now Resolution of Dock Team is 1; [Saved goods]
	else:
		say "     In the midst of your musing, you hear a groaning sound coming from your right, and turn to see [one of]a load-bearing rope snap[or]a cotter pin sailing from its failure point[or]a stack of crates, beginning to tumble[at random]! You call out in alarm and rush over as fast as you can, but you are too weak, too slow. The precious cargo and moorings sail from your hands, ripping flesh as they rapidly exit. Time freezes in mid-disaster, eyes of the crew split between you and the impending chaos. In the following explosions of wood and goods, you are lucky to escape in the confusion with only mild injuries as a mark of your shame.";
		decrease morale of Player by 10;
		decrease HP of Player by 5;
		now Resolution of Dock Team is 2; [Did not save goods]
	now Dock Team is resolved;

Section 2 - Hidden Fucknest

Table of GameEventIDs (continued)
Object	Name
Hidden Fucknest	"Hidden Fucknest"

Hidden Fucknest is a scavevent.
ResolveFunction of Hidden Fucknest is "[ResolveEvent Hidden Fucknest]".
Sarea of Hidden Fucknest is "Warehouse".


to say ResolveEvent Hidden Fucknest:
	say "     As you poke around the various shipping houses and wharves, searching for anything to salvage, you come across a suspicious looking shipping crate nearly half the size of a compact car. Looking closer, you determine that a loose side is actually functioning as a door thanks to a crude home improvement job with some mismatched hinges. Creaking it open slightly, you can see that nobody is curled up inside at least. The interior of the crate is shrouded in darkness, but there might be something of value within. Do you crawl in to scavenge?";
	if Player consents:
		let T be a random number between 1 and 100;
		if T < 50:
			say "     You dig around inside, finding cut-up bits of burlap and ropes that function as bedding. Bits of odd, mismatched clothing and old shoes are tightly wound into a bundle, all useless. A broken compass and dildos carved from driftwood are also stacked up in the corner. Bits of knick-knacks and obscene doodlings on the walls are all else the crate contains. You emerge sweaty and smelling of sex, but with nothing to show for it.";
			increase score by 1;
			now Resolution of Hidden Fucknest is 1; [Found nothing]
		else if T < 60:
			say "     You dig around inside, finding cut-up bits of burlap and ropes that function as bedding. Bits of odd, mismatched clothing and old shoes are tightly wound into a bundle, all useless. A broken compass and dildos carved from driftwood are also stacked up in the corner. Underneath them is an old belaying pin, with dotted lines and schematics for constructing a new dildo sketched on it. You almost discard it due to the lewd iconography, but when held in the hand you realize it would make a decent weapon.";
			ItemGain belaying pin by 1;
			increase score by 1;
			now Resolution of Hidden Fucknest is 2; [Found belaying pin]
		else if T < 85:
			say "     You dig around inside, finding cut-up bits of burlap and ropes that function as bedding. Bits of odd, mismatched clothing and old shoes are tightly wound into a bundle, all useless. A broken compass and dildos carved from driftwood are also stacked up in the corner. Bits of knick-knacks and obscene doodlings on the walls are all else the crate contains. Disgusted, you spin around to leave, knocking your head on the top of the crate by accident. The flimsy shelter shakes from the blow, dislodging a water bottle that had been stashed in a dark cranny. Score!";
			increase score by 10;
			ItemGain water bottle by 1;
			now Resolution of Hidden Fucknest is 3; [Found water]
		else:
			say "     You dig around inside, finding cut-up bits of burlap and ropes that function as bedding. Bits of odd, mismatched clothing and old shoes are tightly wound into a bundle, all useless. A broken compass and dildos carved from driftwood are also stacked up in the corner. You realize how dire a mistake you've made when you shove the dildos aside to search under them, the whittled sex-toys well coated in infectious secretions from their last use. The tingles running from your fingertips to elbow confirm your fears, a sure sign those fluids were contagious.";
			LineBreak;
			sort Table of Random Critters in random order;
			repeat with X running from 1 to number of filled rows in Table of Random Critters:
				choose row X from the Table of Random Critters;
				if area entry matches the text battleground and ( there is no non-infectious in row MonsterID of Table of Random Critters or non-infectious entry is false ):
					now MonsterID is X;
					break;
			choose row MonsterID from the Table of Random Critters;
			infect;
			SanLoss 5;
			now Resolution of Hidden Fucknest is 4; [Found nothing, touched infectious material]
	else:
		say "     Thinking on it, you realize discretion is the better part of valor and just keep amblin['] along.";
		now Resolution of Hidden Fucknest is 99; [Player not interested]
	now Hidden Fucknest is resolved;

[belaying pin moved to Core Mechanics/Weapons.i7x]



Section 3 - Fresh Fish

Table of GameEventIDs (continued)
Object	Name
Fresh Fish	"Fresh Fish"

Fresh Fish is a situation.
ResolveFunction of Fresh Fish is "[ResolveEvent Fresh Fish]".
Sarea of Fresh Fish is "Warehouse".

to say ResolveEvent Fresh Fish:
	say "     Amazingly, some sailing or oar-powered ships are still coming into the docks, bringing in [']scavenged['] supplies from coastal raids and trades among other things. Food, slaves, and other plunder feature prominently, with [']liberated['] military goods fetching a high price. There are pleasure boats, too, some still with high-class seeming occupants occasionally appearing. Not surprisingly, there are several fishing vessels that harvest what bounty is available inside the naval cordon thrown up by the military. One pulls right in next to you, dumping a massive load of fresh-caught sea-creatures onto its deck. You watch, amused, as the crew of tenrecs start sorting through the heap looking for anything that needs to be thrown back or fucked. Thinking on it, even with the diminished population, there just wouldn't be enough food in the city for everyone unless more came in from somewhere. Little wonder there is so much activity here. Maybe you could even snag some of that food for yourself, but are you daring enough to try scamming the tenrec fishermen out of some fish?";
	if Player consents:
		let bonus be ( Charisma of Player - 10 ) divided by 2;
		let dice be a random number from 1 to 20;
		if dice + bonus > 12:
			say "     Sidling up to the ship, you cautiously engage one of the less intimidating fishermen in a bit of light conversation. Carefully trying to diplomatically steer the conversation, you somehow to manage avoid the topic of sex. Directing it toward his other obsession, fishing, works, and soon enough he is boasting of the freshness and flavor of his catch. The trap set, you spring it, and a tense few moments later leave with some very fresh fish you can salt for later.";
			increase score by 5;
			ItemGain food by 2;
			now Resolution of Fresh Fish is 1; [Got a fish]
		else:
			say "     You sidle up to the boat, cautiously engaging one of the less intimidating fishermen in a bit of light conversation. Carefully trying to diplomatically steer the conversation toward food and not sex, you make the classic blunder of cracking a joke at the wrong time. Desperately, you try to backpedal and exit the conversation, but one of the creature's fellow crew has blocked your escape. Fighting seems the only option to escape a thrashing!";
			challenge "Tenrec";
			challenge "Tenrec";
			challenge "Tenrec";
			now Resolution of Fresh Fish is 2; [Did not earn a fish and had to fight crew]
	else:
		say "     Thinking on it, you would rather not risk the wrath of one tenrec, much less a crew of sturdy fishermen.";
		now Resolution of Fresh Fish is 99; [Player not interested]
	now Fresh Fish is resolved;

Section 4 - union break

Table of GameEventIDs (continued)
Object	Name
Union Break	"union break"
Union Break	"Union Break"

Union Break is a situation.
ResolveFunction of Union Break is "[ResolveEvent Union Break]".
Sarea of Union Break is "Warehouse".

to say ResolveEvent Union Break:
	say "     The docks are bustling, crates and muscle-powered cranes swinging everywhere, fresh-caught fish are flying to and fro, ships are tying off or casting off, and there is so much chatter and whistles! As if by magic, all that suddenly stops. Crates are set down, ropes left to hang, and all the people sudden congregate into tight knots. You casually saunter over to them, trying to ask questions while being subtle about it. A surly [one of]tenrec[or]serval[or]ox[or]gorilla[at random] [one of]draws deeply from his cigarette[or]puts away a porn mag[or]straightens their gear[or]stops chatting with a friend[at random] and answers you tersely. 'Union break.' Just as suddenly work stopped, the work kicks back in at the sound of a whistle. Cigarettes and cigars are snubbed out, dice get put away, and with a grumble everyone returns to their tasks.";
	let t be a random number between 1 and 7;
	if T < 6:
		say "     Once the crowd is cleared, you find little of interest to keep you lingering. Back to exploring you go.";
		now Resolution of Union Break is 1; [Nothing of interest]
	else if T is 6:
		say "     With the working fellows all gone, you're left standing by your lonesome. Not for long, though, as with a creak of leather and jingle of jewelry an opossum sailor saunters by. 'It isn't just a well laid course and a weighed anchor that gets this sailor's blood a-racing. All those strong men, rhh, gets a girl going. Why don't you give my sails an unfurling?' Though she cackles manically at her own wit, it seems you are in for a fight!";
		challenge "Opossum Herm";
		now Resolution of Union Break is 2; [Fought Opossum]
	else if T is 7:
		say "     After everyone else has drifted past, one of the stretched-out otter looking fellows hangs back. He nudges your side, gesturing for you to lean in so he can whisper conspiratorially. 'Hey mate, you look like you have a minute. Can you give me a hand with my uh... swordfish?' He grins wickedly, letting his coat swing open to reveal his hardening cock. At least he asked first.";
		challenge "Tenrec";
		now Resolution of Union Break is 3; [Fought Tenrec]
	[else if T is 8:
		say "     You are almost bowled over by one of the hulking gorillas that keep some semblance of order in the warehouse district, unable to keep a complaining cry contained. At the sound, the huge male spins around with surprising dexterity for one so bulky. 'You talkin['] to me, punk?' Shaking your head, you try to back up and claim a lack of offense. 'Oh, you're gonna need your shinebox, kid.' Rolling up his sleeves, the huge primate advances on you.";
		challenge "Union Gorilla";
	else if T is 9:
		say "     As you turn to leave and go about your business, a huge musky paw lands on your shoulder. Turning around, you see one of the longshoremen tugging his tuque back into position. 'I've never seen you around. Not working?' Without waiting for a response, he begins to just slowly push down on your shoulder, as if to put you on the ground. 'Maybe you can get a job sucking dick around here. I'll recommend you to the foreman if you're good.'";
		challenge "Ox Longshoreman";]
	now Union Break is resolved;

Section 5 - hot stepping

Table of GameEventIDs (continued)
Object	Name
Hot Stepping	"hot stepping"
Hot Stepping	"Hot Stepping"

Hot Stepping is a situation.
ResolveFunction of Hot Stepping is "[ResolveEvent Hot Stepping]".
Sarea of Hot Stepping is "Warehouse".

to say ResolveEvent Hot Stepping:
	say "     Something catches your eyes as you roam the warehouse and dock district. A certain kind of stealthy movement, the kind that comes before an ambush. Sudden cautious, you decide it would be best to get out of there, and do it quickly! Glancing around, you take stock of your situation, eyeing escape routes. It might be tricky, but survival in the nanite-ravaged city has been anything but easy. Hard choices have to be made, and fast decisions! No time to think, just react - and so you spring into action!";
	let bonus be ( Dexterity of Player + Perception of Player - 20 ) divided by 2;
	let dice be a random number from 1 to 20;
	if dice + bonus > 16:
		say "     Quick as a whip, you combat roll behind a crate and then skitter around, keeping low to the ground. You avoid crates and old pallets easily, dodging the darker blobs in the poorly lit warehouse. To get by some stacked handcarts you do a triple ninja handspring followed by some back-flips until you are perched on an inactive forklift. From your new viewpoint you look closer at where you saw the secretive motions. Almost immediately you are relieved to see it's just some horny worker creeping off into an alley. There, he meets with some slender spotty cat and gives some small item. Something valuable, obviously, as the feline takes the worker by the hand and leads him deeper into the alley. You are about to sigh in relief when a smattering of applause from behind nearly startles you right off your perch. Face flushing, you look over your shoulder to see a gaggle of workers applauding and whistling at your clownish antics. One of them even tosses you a bottle of water, like you were busking!";
		increase score by 5;
		ItemGain water by 1;
		now Resolution of Hot Stepping is 1; [Rewarded for success]
	else:
		say "     Quickly as you can, you combat roll across the darkened floor of a nearby warehouse, stifling cries of pain as you plant your hands into a pile of discarded nails. In haste to recover, you snap behind some cover, smacking your face right into a [one of]box long abandoned[or]rusty ladder[or]trash can[or]filing cabinet[at random]. That of course makes quite a racket that you must rapidly distance yourself from, or at least that is what your overbearing paranoia is telling you. Using the obstacle as a launching pad, you begin a series of ninja handsprings, only to slam into an abandoned forklift in mid-air. The sound of your pained yelp is loud enough as you tumble to the concrete. When the crate of sleigh bells falls from the forklift's tines and bursts over your back, insult and injury are both piled on. Bells bounce across the floor, announcing to any passerby of your location and vulnerability.";
		decrease morale of Player by 10;
		decrease HP of Player by 10;
		fight;
		fight;
		now Resolution of Hot Stepping is 2; [Failed]
	now Hot Stepping is resolved;

Section 6 - crate shuffle

Table of GameEventIDs (continued)
Object	Name
Crate Shuffle	"crate shuffle"
Crate Shuffle	"Crate Shuffle"

Crate Shuffle is a situation.
ResolveFunction of Crate Shuffle is "[ResolveEvent Crate Shuffle]".
Sarea of Crate Shuffle is "Warehouse".

to say ResolveEvent Crate Shuffle:
	say "     The warehouses are not abandoned, in fact, new makeshift trading companies have sprung up from the brains of those businesspeople that didn't lose their minds after the disaster. Instead of cheap Chinese goods, cars, and fashion being brought in by massive barges, a combination of fishing, raiding, and trading ships powered by sail travel what parts of the coast and waterways that lie inside the military blockade. Food and other goods brought from the ships are traded for salvage from the city and service from those with little else to offer. It all drives a new kind of commerce that feels a bit more like an ancient bazaar than a modern port, complete with the sex, violence, and precarious amounts of order courtesy of organized beatings. It can be almost dizzying, seeing muscular fellows carting around hand-trucks and crates at remarkable speed and with a coordination that seems more mechanical than organic.";
	now Crate Shuffle is resolved;

Warehouse Events ends here.
