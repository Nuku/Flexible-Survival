Misc Events by Pandemonium begins here.

[ This file is for updating older events. ]

Section 1 - Museum Events

Table of GameEventIDs (continued)
Object  Name
Visceral Painting "Visceral Painting"

Visceral Painting is a situation. [updating "Moving painting"]
The sarea of Visceral Painting is "Museum".

Instead of Resolving Visceral Painting:
	say "     Wandering the museum hallways, you stop for a minute [one of]to look at some of the artwork[or]to get your bearings[at random] when one of the paintings near you catches your eye. The frame is nothing special, just four plain dark oak pieces of wood, but the subject of the painting is so visceral that you can't help but look at it for a moment. Painted in oil is a young man, athletic and half naked, running away from four pursuers. The young man runs in front of a large oak tree in what looks like the beginning of spring, given the melting snow in the muddy ditch the young man flees through. He's glancing back towards his pursuers, his back facing you, his legs covered in caked mud, his arms stratched up.";
	say "     The pursuers wear formal attire, almost like French military uniforms but filthy. They carry rifles but they don't aim for the young man. Instead, the four older men, with grins on their faces, hold their rifles as they might pitchforks. One man, presumeably the leader, has very little grime on his clothes, and he's pointing towards the young man. He's biting his lips and leering at the naked man. You can see every wrinkle on his face and it looks like the artist took the time to paint every strand of hair. Clearly, this painting says a lot more now that this scene plays out every day. You look around the painting for a plaque for the name of the piece. 'The Hunt in Spring' is its name, but there's no attribution for the artist.";
	let bonus be (( Perception of Player minus 20 ) divided by 2);
	let dice be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]12[roman type] (Perception Check):[line break]";
	if dice + bonus >= 12:
		say "     As you look at the plaque, something on the wall moves in the corner of your eye. You look up and see the characters in the painting look different than a few seconds ago. You blink and shake your head. And now that you blinked, they seem to have moved a third time! The huntsmen are closer to the running young man, who in turn seems to have more mud on his legs. He's gotten passed the tree by now, and the snow seems to have completely melted. You take a step backwards. The master huntsman, the cleanest man in the image before you, now points down to the ground, and although he was looking towards the young man before, he now looks out towards the artist. Wait, no, he now looks right at you. He stares into your eyes and you can see his sexual appetite, even for someone he'll never have, assuming he cannot jump out of the painting.";
		say "     Though now you can't help but wonder if he could jump out into the real world as you continue to stare into his red eyes. Were you this horny before? Your breathing has turned into panting as you stare at the older huntsman. You start to wonder if he's gotten bigger or if you've gotten closer to him, but then you blink and realize he walked forward in the painting, closer to the painter's perspective. By now, the young man has been caught. Blood trickles down his face from a fresh wound as the hunters pin him down, whipping out their cocks. You look back to their leader, who continues to point downwards and grins at you. You look at where he's pointing, and beyond the frame is a small bench. You hadn't seen it before. Under the bench are broken bottles of water, but you investigate and find a full bottle. You take it and leave, the museum's visceral painting wearing on your uneasy mind.";
		ItemGain water by 1;
		SanLoss 5;
	else:
		say "     As you look at the plaque, something on the wall moves in the corner of your eye. You look up and don't notice anyone. You look around -- at the far wall, the dark corner, even the small bench nearby -- but don't see anyone. You look back to the painting and it seems to have moved. The huntsmen are upon their prey, who has gotten more mud on his legs. They're completely passed the tree. Was the painting like this before? The young man has blood trickling down his face and the master hunstman, the cleanest man in the image before you, presses his heel into the young man's crotch. The other hunters have whipped out their dicks and are clearly about to have their way with the young man. You aren't sure if you even remember what this painting looked like a few seconds ago, but you thought the hunters were chasing someone, as opposed to this image in front of you. Deciding that you must be misremembering, you take your leave, hoping to find something useful in the remnants of the museum.";
	now Visceral Painting is resolved;

Section 2 - Beach Events

[Tide Pool Trouble] [COMPLETED]

Section 3 - Campus Events

[Lingua Franca] [COMPLETED]

[
Table of GameEventIDs (continued)
Object	Name
Politics	"Politics"

Politics is a situation.
the sarea of Politics is "Campus".

Instead of Resolving a Politics:
	say "     While exploring the campus near the Poli-Sci building, you stumble upon an odd sight. You spot a humanoid donkey and a humanoid elephant arguing and fighting with one another. Not wanting to get dragged into the fight, you sneak away before they notice you.";
	increase the score by 1;
	now Politics is Resolved;
]

Table of GameEventIDs (continued)
Object	Name
PoliSci	PoliSci

PoliSci is a situation. [updating / revising "Politics"]
the sarea of PoliSci is "Campus".

Instead of Resolving a PoliSci:
	say "While exploring the campus, you stumble upon the Poli-Sci building. You turn the corner and see two humanoid creatures arguing with one another, but you can only barely make out what's being said. One of them is a donkey boy, who is yelling very loudly, and the other is an elephant girl, who is covering her giant ears as best she can. The boy is in a nice suit with a purple tie and stands over the girl by a solid foot, yelling down at her in her yellow sunday dress. She also wears a bangle with a purple gem in it. The other people walking around them seem to know the couple, as both the elephant and the donkey nod or smile at this person or that one as though nothing is happening. You can't help but wonder what their problem is. Maybe they're poli-sci students and this is just a very intense debate?";
	say "     [bold type]Do you approach the two arguing students?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Approach and ask what the problem is.";
	say "     ([link]N[as]n[end link]) - Leave, none of their classmates want to get involved either.";
	if player consents:
		LineBreak;
		say "     Deciding to approach the raging ass, you finally hear him right as he says 'He was my friend!' You get closer, now too curious to turn back. 'You fucked my best friend!' You then realize that this is, in fact, not a debate. At all. You're too close to them, walking directly towards them, to just turn around and save face, so you try to redirect yourself towards the poli-sci building's entrance. It's just that the couple is directly in between you and the door! The donkey sees you and glares. 'Can I help you?' he asks. You try to say something, anything, but before you have a chance, the elephant girl says, 'Have you met Mark?' She lets go of her ears, grabs your arm, then pulls you towards her. She glares at the donkey boy. 'I've been fucking Mark, too.' The donkey's eyes widen and he goes silent. 'And Danny,' she says as she gestures to a passing gorilla. 'And a whole slew of other men!' If you could regret coming over here more than you already did, you would probably melt into a puddle of embarrassment.";
		say "     The donkey takes a step back and knocks into a passing incubus, who slides his hand down the donkey's trousers without missing a beat. 'Hey buddy,' the demonic man says with a grin. The donkey boy tries to get the incubus out of his pants, but in so doing he sticks his butt out towards the other man. The demon clearly enjoys the innocent attempt to free himself from the lust demon's grasp. He gropes the ass's ass and whispers something into his ear as he coaxes the equine's cock out of his trousers. The elephant girl lets go of your arm as her apparently former boyfriend is molested, and she walks over towards the pair, no longer interested in you. Embarrassed enough, you decide to let the three have their fun without you.";
		increase score by 1;
	else:
		LineBreak;
		say "     Deciding to leave the raging ass alone, you continue walking passed the couple, giving them plenty of room. You overhear the donkey yell 'He was my friend!' You hurry your step and try to move on before they notice you. When they are pretty far behind you, you hear the donkey yell, practically scream, 'You fucked my best friend!' How has he not noticed that everyone's standards have disappeared is beyond you, but thankfully you missed the bullet and continue exploring the campus.";
	now PoliSci is Resolved;

Section 4 - Zoo Events

[
Section 4 - Snake knot

Table of GameEventIDs (continued)
Object	Name
Snake knot	"Snake knot"

Snake knot is a situation.
The sarea of Snake knot is "Zoo".

Instead of Resolving a Snake knot:
	say "     Traveling past the snake house, you decide to chance a glance inside, only to stare in amazement at a writhing knot of snakes of various sizes filling the room. The smell of snakes and sex fills the area, and their hissing is only broken by the occasional moan or cry of ecstasy, proving that there are a few non-snakes caught up in their mating knot as well, though you are sure they're soon to transform. Carefully, you back away from the door, not desiring to get caught up in their mating frenzy, though it could be fun to try if there were fewer of them...";
	now Snake knot is resolved;
]

Misc Events ends here.
