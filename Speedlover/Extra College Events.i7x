Version 1 of Extra College Events by Speedlover begins here.

[ GibsonRelationship                                    ]
[   0: not met                                          ]
[   1: Korvin face-fucked G, player didn't watch        ]
[   2: Korvin face-fucked G, player watched             ]
[ 100: player stopped Korvin cold                       ]

LastCampusWalkin is a number that varies. LastCampusWalkin is usually 10000.
CatsVSDogsCounter is a number that varies. CatsVSDogsCounter is usually 1.
SharkFountainCounter is a number that varies. SharkFountainCounter is usually 1.
GibsonRelationship is a number that varies.

Cheetah Cheater is a situation.
The level of Cheetah Cheater is 0. [minimum level to find the event]
The sarea of Cheetah Cheater is "Campus".

instead of going west from College Campus Entrance while (Cheetah Cheater is not resolved and LastCampusWalkin - turns > 2):
	move player to College Walkway West;
	PregnantFriendEvent;

Instead of resolving a Cheetah Cheater:
	CheetahCheaterEvent;

to CheetahCheaterEvent:
	say "     Walking down a pathway in the college, two figures emerge from one side and sprint toward you. Hearing their shouts of joy even from the distance you are at, they quickly get close enough for you to make them out. A female antelope and male cheetah are neck and neck in a race, with legs that blur as they cross ground at an amazing pace. As they close in you notice there is a fence in the way. The antelope goes around it and grabs the metal pole at the edge to slingshot herself to regain some speed while the cheetah jumps over it. They both get back up to full speed again, but the cheetah is now clearly winning. The antelope gives it her best shot, but they both streak past you and cross a finish line – marked out with a bit of tape – before she can catch up.";
	LineBreak;
	say "     'Ian, you're such a cheater!' she pants. He turns towards her and smirks 'I know.' Her nose scrunches in confusion for a second. 'That's not what I... Oh when are you going to stop making that joke!' He laughs a little bit, 'When you manage to keep up.' She looks at him, her face pensive. 'How about...' She stands and seductively drapes herself over him. 'I show you how well I can keep up.' With a look on his face like he has won the lottery, Ian stumbles out a yes and they both dash off, presumably going somewhere private.";
	now Cheetah Cheater is resolved;  [it won't happen again]
	now LastCampusWalkin is turns;

Pregnant Friend is a situation.
The level of Pregnant Friend is 0.
The sarea of Pregnant Friend is "Campus". ["College Walkway West"]

instead of going west from College Campus Entrance while (Pregnant Friend is not resolved and LastCampusWalkin - turns > 2):
	move player to College Walkway West;
	PregnantFriendEvent;

Instead of resolving Pregnant Friend:
	PregnantFriendEvent;

to PregnantFriendEvent:
	say "     As you walk down the path you stumble upon two girls sitting on a wooden bench. One has been infected as a fox, and has fluffy fox ears on her head and a bushy tail poking through the back of the bench. She has an arm around her friend, a wolf anthro with a bulging stomach who is crying. The wolf girl has completely changed, complete with muzzle and fur all over. You step a bit closer and listen in.";
	say "     'It all happened so fast.' She sobs 'One minute I was studying with my boyfriend, the next hes one of those wolves!' her friend rubs her back 'Its good to talk about it, so what happened next?' she asks. 'Well he changed into one of those alphas, got real muscly, with a big you-know-what. I should have said no, he didn't have any condoms, but he just smelt so good and I let it happen' Her friend takes the opportunity to jump in 'It's ok, it's not your fault, so what happened next?'. The wolf takes a deep breath and lets it out 'Well we did the deed, and he finished in me. A few minutes later I turned into this and an hour after that [italic type]THIS[roman type]' she waves at her stomach 'started showing. He was really sorry after of course, got lost in his new instincts, but now I've got this...'";
	LineBreak;
	say "     'Don't worry,' the fox girl soothes. 'Look, you aren't alone in this, there are more than a couple of girls in your situation, turns out they grow really fast at the moment! You should give birth tonight and the child will be fully grown in a matter of weeks, you can continue your degree!' The wolf looks up. 'I can?' she questions. The fox girl nods and a small smile appears on the wolf girl's face before the fox girl continues, 'Looks like you need to start thinking of baby names! C'mon, let's go and have a look at a list of them, see what would be a good one.'";
	LineBreak;
	say "     They both get up from the bench and walk down the path. You step out from behind the bush you have been hiding in and head off to continue exploring.";
	now Pregnant Friend is resolved;
	now LastCampusWalkin is turns;

CatsVSDogs is a situation.
The level of CatsVSDogs is 0.
The sarea of CatsVSDogs is "Campus". ["Athletic Street"]

instead of going southwest from College Walkway West while (CatsVSDogs is not resolved and LastCampusWalkin - turns > 2):
	move player to Athletic Street;
	CampusLoversEvent;

Instead of resolving CatsVSDogs:
	CatsVSDogsEvent;

to CatsVSDogsEvent:
	if CatsVSDogsCounter is 1:
		say "     On your travels you spot a tennis court between buildings. There seems to be a game going on – between cats and dogs. One one side, a panther and a lynx. On the other side a husky and a Labrador retriever. Anthro dogs and cats of many types are standing to one side watching the game. The game looks pretty intense, dogs loping around, hitting hard and trying to wear out the cats. On the other side the cats are playing tactically. Each of them stick to their positions like glue and they keep aiming for spots they think the dogs cant defend.";
		say "     You watch the yellow ball go from one side to the other a dozen times, both sides giving as good as they get, but nothing lasts forever. One of the cats hits high, causing the ball to go near the Labrador's head. Unfortunately for him, his instincts take over and [bold type]CHOMP[roman type]. Immediately the animals in the crowd yell in victory or defeat depending on their team and everyone starts to walk off. As they leave you hear the husky say to his teammate 'Again? That's the third ball this week!'";
		now CatsVSDogsCounter is 2;
	else if CatsVSDogsCounter is 2:
		say "     You spot the cats and dogs again, this time at a running track. There are a number of them wearing sporty clothes and stretching, getting limber for the run. A cat walks up to the side of the track at the finish line and lifts a gun. Immediately they all get into position side by side.";
		say "     The cat fires smoke into the air, and a second later they all sprint off as they hear the [bold type]BANG[roman type]. Immediately the cats etch out a small lead, legs pumping, ears flat. You notice something at the start, a greyhound shouts '[bold type]3[roman type]'. He launches off the line, catches and passes the dogs, slows down behind the cats and as the finish line approaches, gets around them just in time. The crowd back at the start line cheer and a large dog shouts [bold type]'ONE ALL'[roman type]. They all start walking towards the finish line, making you realise that you should be exploring the campus.";
		now CatsVSDogsCounter is 3;
	else if CatsVSDogsCounter is 3:
		say "     Hearing the sounds in the distance, you recognise the cats and dogs before you even see them. This time each group is sitting around a table, throwing bits of food at the other. You take a seat a bit up the path and watch their antics for a minute, thankful for the cheer in an otherwise dreary city. From the opposite side you see a gryphon milkman come along, and you seem to notice him at the same time the two groups do. From each group a member steps forward and begins to walk towards the milkman. Suddenly they stop, look at each other, and both start running. Side by side they run to the milkman and side by side they tackle him. The two groups start cheering and patting each other on the back, watching the three of them fall to the ground.";
		say "     The cat grabs the milk and the dog grabs the gryphon. Each of them begin to enjoy their prizes, the cat chugging down the milk as if he hasn't had a drink for days and the dog fucking the gryphon. Unfortunately they forgot about getting infected and both of them begin to show signs. The cats back bulges for a second before he begins to sprout wings, and the dogs muzzle changes into a beak. Slowly the groups stop cheering and start muttering amongst themselves. You distinctly hear 'Gang-bang should fix that...' from one group. As they start to each drag away their member from the milkman, you decide to keep exploring the city.";
		now CatsVSDogs is resolved;
	now LastCampusWalkin is turns;

SharkFountain is a situation.
The level of SharkFountain is 0.
The sarea of SharkFountain is "Campus". [Fountain]

instead of going south from College Administration Building while (SharkFountain is not resolved and LastCampusWalkin - turns > 2 and ((SharkFountainCounter is 1 and daytimer is day) or (SharkFountainCounter is 2 and daytimer is night))):
	move player to College Fountain;
	SharkFountainEvent;

instead of going north from College Campus Entrance while (SharkFountain is not resolved and LastCampusWalkin - turns > 2 and ((SharkFountainCounter is 1 and daytimer is day) or (SharkFountainCounter is 2 and daytimer is night))):
	move player to College Fountain;
	SharkFountainEvent;

instead of going east from College Walkway Northwest while (SharkFountain is not resolved and LastCampusWalkin - turns > 2 and ((SharkFountainCounter is 1 and daytimer is day) or (SharkFountainCounter is 2 and daytimer is night))):
	move player to College Fountain;
	SharkFountainEvent;

instead of going west from College Walkway Northeast while (SharkFountain is not resolved and LastCampusWalkin - turns > 2 and ((SharkFountainCounter is 1 and daytimer is day) or (SharkFountainCounter is 2 and daytimer is night))):
	move player to College Fountain;
	SharkFountainEvent;

Instead of resolving SharkFountain:
	SharkFountainEvent;

to SharkFountainEvent:
	if SharkFountainCounter is 1:
		say "     The fountain seems very popular at the moment with students relaxing and chatting around it. Though currently, its water must only be a day or two from its next cleaning, as it is not as clear as usual. People around the edge suddenly start to point into the water, and you see a shark fin making its way around. Then in a shower of water, an anthro shark bursts from the depths of the fountain, soaking a group of students. Laughs and screams echo around the court as the shark walks back to his mates and high fives them.";
		now SharkFountainCounter is 2;
	else if SharkFountainCounter is 2:
		let randomnumber be a random number from 1 to 2;
		say "      It's getting late and there only seems to be one person around at the fountain as you approach it. A [if randomnumber is 1]female[else]male[end if] husky sits on the side of large structure, scribbling on a notepad. Just like earlier, the same shark anthro circles in the water of the fountain and bursts through the surface, but this time he grabs [if randomnumber is 1]her[else]him[end if] and drags [if randomnumber is 1]her[else]him[end if] in. You rush over, thinking to save [if randomnumber is 1]her[else]his[end if] life, but as you approach you see them lying in the water, the shark's twin shafts [if randomnumber is 1]each taking one hole, with his 'victim' moaning in euphoric pleasure. [else]squeezed together, being shoved into the husky's ass while the anthro dog is moaning in pleasure. [end if]You decide to leave them to it.[if humanity of player <= 50] Seeing the two of them go at it makes you wonder what those dual shafts could do for you...[end if]";
	now LastCampusWalkin is turns;

instead of going east from College Campus Entrance while (LastCampusWalkin - turns > 2 and gshep is companion of player and gsd_pet >= 60 and GibsonRelationship is 0 and a random chance of 1 in 3 succeeds):
	move player to College Walkway East;
	if debugactive is 1:
		say "     DEBUG: Walk-in Event - Korvin runs into a young adult beagle boy - GibsonRelationship: [GibsonRelationship][line break]";
	say "     Walking over the campus in the direction of the Tenvale college dorms, you notice after a few steps that something - or rather someone - is missing from your side. As you start turning around to see where your attack dog Korvin ended up, you hear the German shepherd bark out, 'What are you looking at, pup? Never seen a [italic type]real[roman type] dog before?' It turns out that Korvin stopped walking about a dozen feet back, where he is standing now, hands on his furry hips and looking down at a young adult anthro standing right in front of him. The other guy is a canine too, though shorter and of a different breed of dog - a beagle, you'd say, judging by the floppy ears and the mixture of white, tan and brown fur. Dressed in shorts and a t-shirt bearing the 'Tenvale College' logo, a backpack slung over one shoulder, the slender young man gapes at Korvin with wide eyes, then gasps out, 'I - I'm sorry sir! It's just... um, you're naked and...'";
	say "     'Hah!' Korvin barks, interrupting the canine student and stepping up right into his comfort zone. 'Real men have nothing to hide. Fur is everything you need!' With that, your anthro attack dog flexes his bicep and runs a hand over the rippling abs of his torso, grinning broadly at the beagle. The student is clearly overwhelmed by Korvin's 'in your face' attitude and is at a loss for words, just staring at the larger man's body and panting excitedly. You can see him stretch his head forward a little, nostrils flaring as he breathes in the masculine scent of your companion standing so very close, followed by his tail starting to wag cautiously. Korvin is quick to pick up on that too, the edges of his muzzle creasing in a toothy, hungry smile.";
	say "     [bold type]Do you allow the two to act out on their urges?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yeah, why not. Dogs will be dogs and all that...";
	say "     ([link]N[as]n[end link]) - Nope! You tamed Korvin from being a wild dog who was attacking people in the streets. Best not to let him fall back to that.";
	if player consents:
		LineBreak;
		say "     Placing a hand on the student's shoulder and sliding it up to wrap his fingers behind his neck, Korvin asks, 'What's your name, boy?' Panting hard, the beagle replies, 'G-Gibson, sir!' Pulling the young man closer till his muzzle is pressed against his own furry pecs, Korvin leans forward to lick the side of his face and the floppy ear of the younger canine. 'Good dog, Gib! Someone taught you well to treat a top dog like he deserves!' Your collared dog gives a rough chuckle and lowers a hand to Gibson's crotch. Shivering, the college student takes a deep breath of your attack dog's masculine scent and begins to let his hands wander a bit, carefully pressing them up against Korvin's toned form, as if fearful he might be reprimanded. When one of Gibson's hands gravitate towards his firm buttocks, the German Shepherd can't help but grin. 'Getting into the spirit now, aren't you?' he says with amusement in his voice.";
		say "     'Nice bulge, little doggy. Let's see what you're packing,' Korvin barks to his... captive? Eager partner? Fellow dog? All of the above, you'd say. He loosens his grip and allows Gibson to raise his head from the muscled pec it was pressed against, then licks the smaller dog's muzzle. With an aroused growl, Korvin half-leads, half-drags the student into the bushes flanking the walkway.";
		say "     [bold type]Do you want to walk closer and watch?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Anthro dogs humping in rut? Sure!";
		say "     ([link]N[as]n[end link]) - Nah, pass.";
		if player consents:
			LineBreak;
			say "     Walking closer, you step through the opening between the bushes planted at the edge of the path, finding yourself in the shadow underneath a tree. The place is fairly out of sight from the walkway but open to the grassy meadow between the buildings of the campus. One or two students are lying on the grass nearby, studying or dozing, and a trio farther off to the side is playing with a Frisbee (often catching it with their teeth out of reflex). Gibson's backpack is lying on the ground a step in front of you, while the canine young adult is pushed against the trunk of the tree by Korvin. Your attack dog is quick to peel his college t-shirt off, throwing it your way and chuckling as it hits your head. Pulling the garment off your face - the fresh but at the same time masculine scent of the young dog still in your nose - you drop it next to the student's backpack. By the time you look back at them, Korvin is undoing the smaller canine's zipper.";
			say "     Pulling Gibson's pants down with a sudden and forceful yank, Korvin looks his new friend up and down in all his naked glory. The young man is slender and a bit shorter than him, but still has some nice musculature on his frame. The difference between his and Korvin's breed is fairly obvious: one type is mainly used for tracking, whereas the other is bigger, stronger - suitable for both herding sheep and taking down wolves. Though that's not the only thing that sets them apart - as Korvin points out when he grabs at Gibson's crotch and barks, 'Now what is this?!' His paw-hand wraps around the young man's pink-ish penis, holding the normal human-like appendage up and then stroking it a few times. 'No wonder you were staring at my crotch! You're definitively missing out boy! A sheath and knot are great. But hey, I know how to fix you up,' Korvin adds with a laugh, then pushes on his companion's shoulders.";
			WaitLineBreak;
			say "     Too stunned to resist, Gibson soon finds himself crouching down in front of Korvin, staring with wonder at his bright red canine cock. His gaze wanders over the pointy tip, vein-covered shaft, and the bulge at the base, a thick furry sheath nestled just below the knot. 'Wow,' the young dog murmurs under his breath, then reaches out to cup Korvin's balls, gently playing the furry orbs between his fingers. 'Yeah, have a good look at it,' Korvin barks out, pride clearly audible in his voice. He leans over Gibson, bracing himself against the tree as he looks down on the student and letting him touch his erection at his heart's content. The stroking and squeezes that the curious young man gives him aren't without effect, as soon a drop of pre-cum forms at the slit of Korvin's dickhead. You can see him start to reach down to pull Gibson's muzzle to it, but before the German shepherd even touches the other dog, he already has stretched his neck and lapped at Korvin's dick on his own.";
			say "     Gripping the tree tightly with both hand-paws again, Korvin grins down at his student and grunts in arousal as Gibson quickly progresses to taking his shaft in his mouth - helped greatly by the length of a canine muzzle as compared to a human mouth. And so, even as an obvious novice at giving blowjobs, the anthro young adult soon is bobbing up and down on his horny partner's rod - all the while stroking his own shaft with a steady rhythm. Korvin greatly enjoys introducing the beagle to oral male on male sex, instructing him with panted out words of direction, then eventually grasping him by the hair to keep him steady as he proceeds to face-fuck Gibson. It doesn't take long after that until he reaches his climax, taking care to keep his knot out of the anthro student's muzzle as he starts to pump out his creamy cum, covering the young man's tongue and hitting the back of his throat again and again. After all, it wouldn't do to give Gibson a lockjaw at his very first blowjob.";
			WaitLineBreak;
			say "     As Korvin pumps his German shepherd nut-milk into Gibson, grunting in satisfaction as the other canine gobbles it down eagerly, you can see from your close by position that something immediately starts happening to the student's own erection. Its pink-ish human flesh starts to darken second by second, becoming redder in color, and the formerly mushroom-like head reforms to a more pointed shape. Soon, the young man's hand that is gripping the base of his cock starts to be pushed apart a little, and when he pulls back his fingers, you see a fully grown canine knot there too. Grunting around Korvin's muzzle still in his mouth, a jolt goes through the whole of Gibson's body as his newly formed cock erupts, spraying canine seed all over the ground between Korvin's legs.";
			say "     Your collared attack dog keeps gently humping into his partner's muzzle until his own throbs of cum ebb off, then gives the student some time to lick up every last drop of cum and worship his cock some more. Tousling the beagle's short hair and floppy ears, Korvin eventually steps back from the tree and looks down at his now fully anthro canine shape and the puddle of cum on the ground. 'Told ya it'd be fun, Gib!' Still licking his muzzle and checking out his new canine cock, the young man looks up at your companion and replies, 'Thank you, sir. For... everything. That was just... wow.' He makes puppy eyes full of adoration at Korvin, who basks in the feeling - until Gibson suddenly freezes with a somewhat horrified look on his face and looks down to his watch. 'SHIT! I'm late for class!' the student wails, jumping up from where he was leaning back against the tree and snatching up his clothes and backpack before setting off at a sprint, naked. Korvin laughs heartily at the end of his fling with the beagle and takes his usual position by your side again.";
			now GibsonRelationship is 2; [player watched em face-fuck]
		else:
			LineBreak;
			say "     With a shrug to yourself, you simply stand around and wait a bit, casually studying the campus surroundings while hearing moans, grunts and barks coming from the bush Korvin and Gibson vanished behind. But then... that is not the only area close by that one can hear sounds of sex from. Passersby barely raise an eyebrow at the noises of your attack dog and his new partner. Quite a change in behaviour to 'normal' human society before the nanite apocalypse...";
			say "     Eventually, Korvin re-emerges from the bushes, a broad grin on his face and his canine shaft still half-hard outside his sheath. It is glistening with wetness, but you can't see a drop of cum on it anywhere... which leaves a pretty easy guess where it all ended up. He takes his usual position by your side with a smirk, looking back to where a pleased and somewhat bewildered-looking Gibson comes stumbling out of the bushes a moment later, still licking his muzzle. Then the young man looks down at his watch and his hackles rise, followed by him letting out a shout of, 'Shit! I'm late for class!' and hurriedly sprinting past you and your companion.";
			now GibsonRelationship is 1; [player didn't watch Korvin face-fuck Gibson, but knows the name]
	else:
		LineBreak;
		say "     Raising a hand to your mouth, you give a loud and sharp whistle that has both of the anthro canines whirling around to face you. Ordering the black-collared German shepherd to heel, you make eye-contact with Korvin as his lips start to show a little scowl, holding the stare until he looks down submissively a few moments later. With a sidelong glance at the beagle and a bark of, 'So long, pup!' Korvin then trots back over to you, taking his usual position. You hook a finger under the collar marking him as yours and adjust it a little to remind him of his status. Then you pat his head like a good dog and start moving on. The beagle student is left behind, staring after the dominant dog with a sigh of relief - and a sliver of regret.";
		now GibsonRelationship is 100; [stopped things cold]
	now lastMallInteriorScene is turns;

Extra College Events ends here.
