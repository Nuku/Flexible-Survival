Misc Events by Pandemonium begins here.

"Adds or revises miscellaneous events to Flexible Survival."

[ If there's no attribution, then it isn't a revision of someone else's event. ]

Chapter 1 - Museum Events

Section 1 - Visceral Painting

Table of GameEventIDs (continued)
Object	Name
Visceral Painting	"Visceral Painting"
Visceral Painting	"Moving painting"

Visceral Painting is a situation.
ResolveFunction of Visceral Painting is "[ResolveEvent Visceral Painting]". [updating "Moving painting" by Sarokcat]
Sarea of Visceral Painting is "Museum".

to say ResolveEvent Visceral Painting:
	say "     Wandering the museum hallways, you stop for a minute [one of]to look at some of the artwork [or]to get your bearings [at random]when one of the paintings near you catches your eye. The frame is nothing special, just four plain dark oak pieces of wood, but the subject of the painting is so visceral that you can't help but look at it for a moment. Painted in oil is a young man, athletic and half naked, running away from four pursuers. The young man runs in front of a large oak tree in what looks like the beginning of spring, given the melting snow in the muddy ditch the young man flees through. He's glancing back towards his pursuers, his back facing you, his legs covered in caked mud, his arms stratched up.";
	say "     The pursuers wear formal attire, almost like French military uniforms but filthy. They carry rifles but they don't aim for the young man. Instead, the four older men, with grins on their faces, hold their rifles as they might pitchforks. One man, presumeably the leader, has very little grime on his clothes, and he's pointing towards the young man. He's biting his lips and leering at the naked man. You can see every wrinkle on his face and it looks like the artist took the time to paint every strand of hair. Clearly, this painting says a lot more now that this scene plays out every day. You look around the painting for a plaque for the name of the piece. 'The Hunt in Spring' is its name, but there's no attribution for the artist.";
	let bonus be (( Perception of Player minus 20 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]12[roman type] (Perception Check):[line break]";
	if diceroll + bonus >= 12:
		say "     As you look at the plaque, something on the wall moves in the corner of your eye. You look up and see the characters in the painting look different than a few seconds ago. You blink and shake your head. And now that you blinked, they seem to have moved a third time! The huntsmen are closer to the running young man, who in turn has more mud on his legs. He's gotten passed the tree by now, and the snow has completely melted. You take a step backwards. The master huntsman, the cleanest man in the image before you, now points down to the ground, and although he was looking towards the young man before, he now looks out towards the artist. Wait, no, he now looks right at you. He stares into your eyes and you can see his sexual appetite, even for someone he'll never have, assuming he cannot jump out of the painting.";
		say "     Though now you can't help but wonder if he could jump out into the real world as you continue to stare into his red eyes. Were you this horny before? Your breathing has turned into panting as you stare at the older huntsman. You start to wonder if he's gotten bigger or if you've gotten closer to him, but then you blink and realize he walked forward in the painting, closer to the painter's perspective. By now, the young man has been caught. Blood trickles down his face from a fresh wound as the hunters pin him down, whipping out their cocks. You look back to their leader, who continues to point downwards and grins at you. You look at where he's pointing, and beyond the frame is a small bench. You hadn't seen it before. Under the bench are broken bottles of water, but you investigate and find a full bottle. You take it and leave, the museum's visceral painting wearing on your uneasy mind.";
		ItemGain water by 1;
		SanLoss 5;
	else:
		say "     As you look at the plaque, something on the wall moves in the corner of your eye. You look up and don't notice anyone. You look around -- at the far wall, the dark corner, even the small bench nearby -- but don't see anyone. You look back to the painting and it seems to have moved. The huntsmen are upon their prey, who has gotten more mud on his legs. They're completely passed the tree. Was the painting like this before? The young man has blood trickling down his face and the master hunstman, the cleanest man in the image before you, presses his heel into the young man's crotch. The other hunters have whipped out their dicks and are clearly about to have their way with the young man. You aren't sure if you even remember what this painting looked like a few seconds ago, but you thought the hunters were chasing someone, as opposed to this image in front of you. Deciding that you must be misremembering, you take your leave, hoping to find something useful in the remnants of the museum.";
	now Visceral Painting is resolved;


Chapter 2 - Beach Events

Section 1 - Tide Pool Trouble

Table of GameEventIDs (continued)
Object	Name
Tide Pool Trouble	"Tide Pool Trouble"

Tide Pool Trouble is a situation.
ResolveFunction of Tide Pool Trouble is "[ResolveEvent Tide Pool Trouble]".
Sarea of Tide Pool Trouble is "Beach".

to say ResolveEvent Tide Pool Trouble:
	say "     As you meander down the beach, waves crash against rocks not too far ahead of you. The rocks litter this part of the shore. You cannot help but walk on some, but most of these are beter described as boulders. Not much farther ahead, there are various boulders jutting out from the shore, towering above you the size of small buildings. You see the tide pools at your feet as you walk towards these towering boulders. Small fish swim as you move from rock to rock. As you approach the tallest rock, you notice something in one of the tide pools under that great boulder causes the water to splash out vigorously. The water seems to bubble out from the shallow water. Could this be the entrance to some underwater cavern? The water seems to positively come alive as you approach.";
	say "     [bold type]Do you inspect the roiling tide pool?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Get closer to the strange waters.";
	say "     ([link]N[as]n[end link]) - Decide to walk back the other way.";
	if player consents:
		LineBreak;
		say "     You slowly move toward the tide pool. The water is white from how vigorously it roils. You are closer now, close enough to see what's in the pool. There's a figure you can just barely make out in the white waters. It looks... it looks like... a slithering ball of tentacles! Or wait, no, that's just a snake coiling around something beneath the surface of the water. It's chasing something under there! Before you have a chance to back away, a rat darts out of the pool, heading right for you! The snake, in turn, slithers out of the water. You tense up, ready to fight, to defend yourself against this reptilian predator. But seeing you, the little rat hesitates, giving the snake all the time it needs to catch its prey. You stand there, almost in shock, as the snake devours the rat.";
		say "     Once it completely swallows its prey, the snake slithers onto a nearby rock away from the shore to digest the poor rat. Looking back at the tide pool, you see that its waters are calm once more. Strange how the pool returns to normal so quickly. Now that nothing's stirring up the water, you can see some colorful fabric at the bottom of the pool. After checking to make sure nobody's around to pounce on you, you bend down to the tide pool and stick your hand into it. You retrieve what turns out to be striped board shorts and see that they're in remarkably good shape. At least you got something out of all of this, even though it has unsettled you a little to see the animals fight of life and death.";
		ItemGain striped board shorts by 1;
		SanLoss 5;
	else:
		LineBreak;
		say "Looking at the intensity of the water, you're certain something is down there that will attack you. You're pretty sure you can even hear the faint squeaks of a monster coming from the water's surface. Rather than dealing with a fight with an unknown foe, though, you decide to walk back. You pick up your pace as you leave the strange tide pools behind you.";
	now Tide Pool Trouble is resolved;


Chapter 3 - Campus Events

Section 1 - Lingua Franca

Table of GameEventIDs (continued)
Object	Name
Lingua Franca	"Lingua Franca"
Lingua Franca	"Languages Department"

Lingua Franca is a situation.
ResolveFunction of Lingua Franca is "[ResolveEvent Lingua Franca]". [revising "Languages Department" by Wahn]
Sarea of Lingua Franca is "Campus".

to say ResolveEvent Lingua Franca:
	say "     Passing behind one of the lecture halls, you come across a small group of creatures arguing with one another in multiple languages. Some of these creatures are wearing what you imagine to be their old clothes, the elephant woman wears her old skirt and her top is torn to expose her breasts, but she doesn't seem to notice. You can see a Chinese dragon, not much taller than the rest of them, wearing an open marching band jacket in the colors of Tenvale College. These must all be students. There's also a bear, frog, and a green pheasant. All in different stages of dress.";
	say "     Each student seems to embody a different cultural stereotype. You probably stumbled upon the languages department, as each student is speaking a different language. Have they lost their ability to speak English?";
	say "     [bold type]Do you approach the group?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Try speaking to the language department.";
	say "     ([link]N[as]n[end link]) - Leave them to their bickering.";
	if player consents:
		LineBreak;
		let bonus be (( Intelligence of Player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]18[roman type] (Intelligence Check):[line break]";
		if diceroll + bonus >= 18:
			LineBreak;
			say "     You approach the group of bickering language students and get their attention with some shouts. They look at you, each just as angry as the next. Maybe this wasn't such a great idea... But then the frog clears his throat, or merely croaks you can't tell. He's wearing just a pair of boxers. When he speaks, it's clearly French. You stiffle a laugh, but that only enflames him more. Given his intensity and the gestures he's making towards his classmates, he's probably angry that he isn't a more appropriate animal, like a Gallic cock. Even though you don't speak French, you think you understand his point, so you ask him to speak more quietly. While he doesn't seem to understand English, he certainly can understand what you mean when you lower your own voice when talking to him. He then nods with a sigh.";
			say "     The green pheasant boy chirps up something that sounds Japanese and you motion for everyone to relax. You try to console the frog, putting your hands on his shoulders and telling him, 'Viva la vida.' He laughs and clearly says 'C'est espagnol,' to which you shrug and say 'C'est la vie.' He laughs some more, and the group seems to calm down after that.";
			say "     This mad world you find yourself in seems to be a little less mad now.";
			increase score by 1;
			SanBoost 5;
		else:
			LineBreak;
			say "     You approach the group of bickering language students and get their attention with some shouts. They look at you, each just as angry as the next. Maybe this wasn't such a great idea... But then the frog clears his throat, or merely croaks you can't tell. He's wearing just a pair of boxers. When he speaks, it sounds like gibberish. You can't figure out what he's trying to say. He gestures to his classmates and back to himself, but you just cannot understand him.";
			say "     You apologize and back away. The frog waves you off like he might an annoying fly and the group continues their nonsensical back and forth. You head back where you came.";
	else:
		LineBreak;
		say "     Opting out of dealing with their bickering, you decide to give the group their space and head back where you came.";
	now Lingua Franca is Resolved;

Section 2 - PoliSci

Table of GameEventIDs (continued)
Object	Name
PoliSci	"PoliSci"
PoliSci	"Politics"

PoliSci is a situation.
ResolveFunction of PoliSci is "[ResolveEvent PoliSci]". [revising "Politics" by hiccup]
Sarea of PoliSci is "Campus".

to say ResolveEvent PoliSci:
	say "     While exploring the campus, you stumble upon the Poli-Sci building. You turn the corner and see two humanoid creatures arguing with one another, but you can only barely make out what's being said. One of them is a donkey boy, who is yelling very loudly, and the other is an elephant girl, who is covering her giant ears as best she can. The boy is in a nice suit with a purple tie and stands over the girl by a solid foot, yelling down at her in her yellow sunday dress. She also wears a bangle with a purple gem in it. The other people walking around them seem to know the couple, as both the elephant and the donkey nod or smile at this person or that one as though nothing is happening. You can't help but wonder what their problem is. Maybe they're poli-sci students and this is just a very intense debate?";
	say "     [bold type]Do you approach the two arguing students?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Approach and ask what the problem is.";
	say "     ([link]N[as]n[end link]) - Leave, none of their classmates want to get involved either.";
	if player consents:
		LineBreak;
		say "     Deciding to approach the raging ass, you finally hear him right as he says 'He was my friend!' You get closer, now too curious to turn back. 'You fucked my best friend!' You then realize that this is, in fact, not a debate. At all. You're too close to them, walking directly towards them, to just turn around and save face, so you try to redirect yourself towards the poli-sci building's entrance. It's just that the couple is directly in between you and the door! The donkey sees you and glares. 'Can I help you?' he asks. You try to say something, anything, but before you have a chance, the elephant girl says, 'Have you met Mark?' She lets go of her ears, grabs your arm, then pulls you towards her. She glares at the donkey boy. 'I've been fucking Mark, too.' The donkey's eyes widen and he goes silent. 'And Danny,' she says as she gestures to a passing gorilla. 'And a whole slew of other men!' If you could regret coming over here more than you already did, you would probably melt into a puddle of embarrassment.";
		say "     The donkey takes a step back and knocks into a passing incubus, who slides his hand down the donkey's trousers without missing a beat. 'Hey buddy,' the demonic man says with a grin. The donkey boy tries to get the incubus out of his pants, but in so doing he sticks his butt out towards the other man. The demon clearly enjoys the innocent attempt to free himself from the lust demon's grasp. He gropes the ass's ass and whispers something into his ear as he coaxes the equine's cock out of his trousers. The elephant girl lets go of your arm as her apparently former boyfriend is molested, and she walks over towards the pair, no longer interested in you. Embarrassed enough, you decide to let the three have their fun without you.";
		increase score by 1; [TODO: add another choice point for players who want to stay and watch]
	else:
		LineBreak;
		say "     Deciding to leave the raging ass alone, you continue walking passed the couple, giving them plenty of room. You overhear the donkey yell 'He was my friend!' You hurry your step and try to move on before they notice you. When they are pretty far behind you, you hear the donkey yell, practically scream, 'You fucked my best friend!' How has he not noticed that everyone's standards have disappeared is beyond you, but thankfully you missed the bullet and continue exploring the campus.";
	now PoliSci is Resolved;

Chapter 4 - Mall Events

Section 1 - Sewer Stalker

Table of GameEventIDs (continued)
Object	Name
Sewer Stalker	"Sewer Stalker"
Sewer Stalker	"Ritual Location"

Sewer Stalker is a situation.
ResolveFunction of Sewer Stalker is "[ResolveEvent Sewer Stalker]". [revising "Ritual Location" by Kaleem]
Sarea of Sewer Stalker is "Mall".

to say ResolveEvent Sewer Stalker:
	say "     Exploring the sewers of the mall for some time, you don't find anything of note and decide to head back to the surface. However, when you turn around you see a figure not too far away from you. Once they realize you've turned around, they futilely hug the sewer wall opposite the dim lights. It's pretty clear this person was following you. You call out to them and wait a moment, and you see their silhouette in the dim light lackadaisically walk away from the wall, just barely being touched by the light. They're wearing a cloak, and even in the darkness of the sewers, this person has their hood up concealing their face. In the hand closest to the light, and therefore the better lit side, you can see your stalker holds a crystal ball in their hand.";
	say "     Before you can ask what it is they want, the cloaked figure raises the ball above their head. It flashes with an intense white light. Though you shield your eyes with your arm the first time, the crystal ball flashes a second time and the light hits your eyes, blinding you temporarily. You hear footsteps as your stalker rushes towards you. You try to ready yourself for a fight, but there's no time. Your stalker is closing in. They're right in front of you. They hold the glass ball up to your face. It flashes again. This time, however, you think you see figures moving in the ball. The person tries to tell you something, but you aren't paying attention to them. A sense of vertigo flows over you as the crystal ball is held to your face, but you probably could still get away from this person if you tried.";
	LineBreak;
	say "     [bold type]Do you try to run away from this stranger or stay around?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Turn around and run! Find a way out of the sewers.";
	say "     ([link]N[as]n[end link]) - Stay and continue to stare into the ball.";
	if player consents:
		LineBreak;
		say "     You close your eyes, turn around, and run as fast as you can. You open your eyes when your a few feet away from the cloaked stalker, just in time to see a demon brute start to materialize. You dart past him. You turn a corner. There's another monster lurking in the darkness. Thankfully, it isn't paying attention. From behind you, light flashes and you hear a heavy thud. Did the demon brute just succumb to the light as you did? You continue running, trying to turn the same way each time, making a circle to leave the sewers where you came in. Eventually, you find a familiar path, the where you first met that stalker. With your bearings in place, you head back to the mall, leaving the strange cloaked figure behind.";
	else:
		LineBreak;
		say "     You're too curious to leave. You smile nervously into the beautifully polished ball as your reflection shows off your [FaceSpeciesName of Player in lower case] face. Before you can do anything more than recognize yourself in the glass ball, images of the city begin to flash inside the orb before you, much like a TV screen flickering between channels. Your head feels heavy as you watch, but you can't seem to look away. Among the images, you see ";
		say "[one of]mutant horses fucking each other in the park, feline prostitutes tag teaming a succubus in the red light district, wyverns flying through the sky being shot at by military men, and [or]an alpha husky dominating a new member of his pack, orc warriors congratulating one another in a mess hall, a Spartan warrior wrestling a wolf in the college campus, and [or]a pink gelatinous woman having sex with a beaver in the red light district, an empty werewolf costume running around in the state fair, a large horned demon shoving a captured man into a large red sack, and [at random]";
		say "you see yourself standing in front of a strange figure in the sewers with your head canted slightly to the side. The images come to an abrupt halt. You're once again staring at your [FaceSpeciesName of Player in lower case] face in the glass orb.";
		WaitLineBreak;
		say "     'This,' says the stalker standing in front of you, 'is your world as it is coming to be known.' The voice is deep, deeper than any other voice you've ever heard. The air vibrates as the figure speaks. 'How do you plan to survive once the present danger has passed?' You blink a few times and the figure lowers the crystal ball. You can see the figure very clearly now. Before you stands a cloaked man with the face of a whale, and his stature suits his face as he [if ScaleValue of Player < 4]towers over you [else]fills the sewer [end if]in the darkness. You are sure he had not been so large before. Are you still dazed from whatever the crystal ball did to you? Before you get a chance to ask him, he fades into the black behind him. The crystal ball continues to dimly glow for a moment as it seems to float away from you, but then that fades away too.";
		say "     After standing in the sewers for who knows how long, the cotton feeling in your head subsides enough for you to realize where you are. You rush back to the mall, though you are too dizzy to walk straight. It feels like with every breath you take, you forget just a little bit more of this recent encounter. Your mind willing yourself to forget the hooded figure and the images you saw in the... was it a mirror? Or was it a silver dish? You pick up your pace when you realize you don't recall what he looked like. By the time you get to the mall, you wonder why you were in such a hurry to get back. After all, you hadn't done or seen anything in the sewers. But then, if you hadn't done anything, why were you in such a hurry to get back?";
		increase score by 1;
	now Sewer Stalker is Resolved;

Chapter 5 - Junkyard and Warehouse events

Section 1 - Junkyard Utility

Table of GameEventIDs (continued)
Object	Name
Junkyard Utility	"Junkyard Utility"

Junkyard Utility is a situation.
ResolveFunction of Junkyard Utility is "[ResolveEvent Junkyard Utility]".
Sarea of Junkyard Utility is "Junkyard".
searchesUtSit is a number that varies.

to say ResolveEvent Junkyard Utility:
	say "     As you wander the junkyard, you see a large pile of, well, junk. You search through this heaping mound of other people's garbage and find ";
	if scaleValue of Player <= 2:
		if a random chance of 1 in 4 succeeds:
			increase searchesUtSit by 1;
			if a random chance of 1 in 2 succeeds: [12.5% chance for rusty nail]
				say "a rusty nail! [if scalevalue of player > 2]This may be useful if you could wield it properly[else]This will make a useful weapon[end if]. ";
				ItemGain rusty nail by 1;
			else if a random chance of 1 in 2 succeeds: [6.25% chance for sharp screw]
				say "a sharp screw! [if scalevalue of player > 2]This may be useful if you could wield it properly[else]This will make a useful weapon[end if]. ";
				ItemGain sharp screw by 1;
			else: [increments variable]
				say "nothing particularly useful. ";
			say "[if searchesUtSit < 4]There are probably useful items still in this pile of junk if you keep looking for them. [else]You doubt you'll find anything more than you already have in this pile of junk. [end if]";
		else: [75% chance of nothing, does not increment variable]
			say "nothing particularly useful. There are probably useful items still in this pile of junk if you keep trying.";
		if searchesUtSit is 4, now Junkyard Utility is resolved;
	else:
		say "nothing particularly useful. This is mostly just small hardware supplies. What could you possibly do with these [one of]screws[or]nails[or]broken pencils[or]broken spray cans[at random]? You get up and continue what you were doing.";


Misc Events ends here.
