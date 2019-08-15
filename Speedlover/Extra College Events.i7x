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
lastlibrarybrowse is a number that varies. lastlibrarybrowse is usually 255.

Section 1 - General Events

Table of GameEventIDs (continued)
Object	Name
Cheetah Cheater	"Cheetah Cheater"

Cheetah Cheater is a situation.
The level of Cheetah Cheater is 0.
The sarea of Cheetah Cheater is "Campus".

after going to College Walkway West while (Cheetah Cheater is active and Cheetah Cheater is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	try looking;
	CheetahCheaterEvent;

Instead of resolving a Cheetah Cheater:
	CheetahCheaterEvent;

to CheetahCheaterEvent:
	say "     Walking down a pathway in the college, two figures emerge from one side and sprint toward you. Hearing their shouts of joy even from the distance you are at, they quickly get close enough for you to make them out. A female antelope and male cheetah are neck and neck in a race, with legs that blur as they cross ground at an amazing pace. As they close in you notice there is a fence in the way. The antelope goes around it and grabs the metal pole at the edge to slingshot herself to regain some speed while the cheetah jumps over it. They both get back up to full speed again, but the cheetah is now clearly winning. The antelope gives it her best shot, but they both streak past you and cross a finish line - marked out with a bit of tape - before she can catch up.";
	LineBreak;
	say "     'Ian, you're such a cheater!' she pants. He turns towards her and smirks 'I know.' Her nose scrunches in confusion for a second. 'That's not what I... Oh when are you going to stop making that joke!' He laughs a little bit, 'When you manage to keep up.' She looks at him, her face pensive. 'How about...' She stands and seductively drapes herself over him. 'I show you how well I can keep up.' With a look on his face like he has won the lottery, Ian stumbles out a yes and they both dash off, presumably going somewhere private.";
	now Cheetah Cheater is resolved;
	now LastCampusWalkin is turns;

Table of GameEventIDs (continued)
Object	Name
Pregnant Friend	"Pregnant Friend"

Pregnant Friend is a situation.
The level of Pregnant Friend is 0.
The sarea of Pregnant Friend is "Campus".

after going to College Walkway East while (Pregnant Friend is active and Pregnant Friend is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	try looking;
	PregnantFriendEvent;

Instead of resolving a Pregnant Friend:
	PregnantFriendEvent;

to PregnantFriendEvent:
	say "     As you walk down the path you stumble upon two girls sitting on a wooden bench. One has been infected as a fox, and has fluffy fox ears on her head and a bushy tail poking through the back of the bench. She has an arm around her friend, a wolf anthro with a bulging stomach who is crying. The wolf girl has completely changed, complete with muzzle and fur all over. You step a bit closer and listen in.";
	say "     'It all happened so fast!' she sobs 'One minute I was studying with my boyfriend, the next he's one of those wolves!' Her friend rubs her back. 'It's good to talk about it. So what happened next?' she asks. 'Well, he changed into one of those alphas, got real muscly, with a big you-know-what. I should have said no, he didn't have any condoms, but he just smelt so good and I let it happen.' Her friend takes the opportunity to jump in and say, 'It's ok, it's not your fault. So what happened next?' The wolf takes a deep breath and lets it out. 'Well, we did the deed, and he finished in me. A few minutes later I turned into this, and an hour after that, [italic type]THIS[roman type]-' she waves at her stomach '-started showing. He was really sorry after of course, got lost in his new instincts, but now I've got this...'";
	LineBreak;
	say "     'Don't worry,' the fox girl soothes. 'Look, you aren't alone in this, there are more than a couple of girls in your situation, turns out they grow really fast at the moment! You should give birth tonight and the child will be fully grown in a matter of weeks, you can continue your degree!' The wolf looks up. 'I can?' she questions. The fox girl nods and a small smile appears on the wolf girl's face before the fox girl continues, 'Looks like you need to start thinking of baby names! C'mon, let's go and have a look at a list of them, see what would be a good one.'";
	LineBreak;
	say "     They both get up from the bench and walk down the path. You step out from behind the bush you have been hiding in and head off to continue exploring.";
	now Pregnant Friend is resolved;
	now LastCampusWalkin is turns;

Table of GameEventIDs (continued)
Object	Name
Art Class	"Art Class"

Art Class is a situation.
The level of Art Class is 0.
The sarea of Art Class is "Campus".

after going to Creative Street while (Art Class is active and Art Class is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	try looking;
	ArtClassEvent;

Instead of resolving a Art Class:
	ArtClassEvent;

to ArtClassEvent:
	say "     On your travels around the campus you come across an art class – not a normal one though. A group of [one of]girls[or]ladies[or]women[at random] have all pulled up a chair and an easel to [one of]sketch[or]paint[or]draw[or]capture[at random] their model, and unusually for an art class set outside, their model is a nude one – Though with everything else going on, you suppose that this isn't all that out-there of an idea. With this particular model however, you can see why there is so much female attention to this art class. At the center of the circle there is a [one of]studly stallion[or]good looking wolf[or]sexy tiger[or]handsome [one of]german shepherd[or]alsatian[at random][or]muscled panther[or]alluring stag[or]athletic snow leopard[or]buff moose[at random] standing in a [one of]proud[or]heroic[at random] pose.";
	say "     The instructor seems pretty good at first, but as you are standing there she quickly starts to lose her composure.[line break]";
	say "     'You don't need to be quick, but he can't stay in that pose forever, so you definitely can't be slow'[line break]";
	say "     'Focus on getting the entire thing in rough detail before starting the fine stuff, just in case you run out of time'[line break]";
	say "     'Make sure to get the fine detail around that strong... handsome jaw'[line break]";
	say "     'Don't forget to get the shading just right for the small shadows around those gorgeous abs'[line break]";
	say "     'Get as much detail as you can of that big, sexy sheath'[line break]";
	say "     You can see where this is going and keep your distance as the model becomes [one of]erect[or]engorged[or]aroused[at random] from the comments and the instructor begins to get distracted. First she begins to strip, then the male model's [one of]prodigious[or]marvellous[or]impressive[at random] cock gets some attention. It starts with a stray hand stroking upwards, and escalates from there. A loud gasp from the model breaks your transfixion and you realize where you are and what you are doing. You keep your distance and move on, not wanting to spend the entire day as a voyeur. You cannot resist the urge to catch one last glimpse before you go, and it's a sight you know you will remember - the model fucking the instructor while the art students begin a new, more lewd [one of]sketch[or]painting[or]drawing[at random].";
	now Art Class is resolved;
	now LastCampusWalkin is turns;

Table of GameEventIDs (continued)
Object	Name
CatsVSDogs	"CatsVSDogs"

CatsVSDogs is a situation.
The level of CatsVSDogs is 0.
The sarea of CatsVSDogs is "Campus".

after going to Athletic Street while (CatsVSDogs is active and CatsVSDogs is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	try looking;
	CatsVSDogsEvent;

Instead of resolving a CatsVSDogs:
	CatsVSDogsEvent;

to CatsVSDogsEvent:
	if CatsVSDogsCounter is 1:
		say "     On your travels you spot a tennis court between buildings. There seems to be a game going on - between cats and dogs. On one side, a panther and a lynx. On the other side a husky and a Labrador retriever. Anthro dogs and cats of many types are standing to one side watching the game. The game looks pretty intense, dogs loping around, hitting hard and trying to wear out the cats. On the other side the cats are playing tactically. Each of them stick to their positions like glue and they keep aiming for spots they think the dogs can't defend.";
		say "     You watch the yellow ball go from one side to the other a dozen times, both sides giving as good as they get, but nothing lasts forever. One of the cats hits high, causing the ball to go near the Labrador's head. Unfortunately for him, his instincts take over and [bold type]CHOMP[roman type]. Immediately the animals in the crowd yell in victory or defeat depending on their team and everyone starts to walk off. As they leave you hear the husky say to his teammate 'Again? That's the third ball this week!'";
		now CatsVSDogsCounter is 2;
	else if CatsVSDogsCounter is 2:
		say "     You spot the cats and dogs again, this time at a running track. There are a number of them wearing sporty clothes and stretching, getting limber for the run. A cat walks up to the side of the track at the finish line and lifts a gun. Immediately they all get into position side by side.";
		say "     The cat fires smoke into the air, and a second later they all sprint off as they hear the [bold type]BANG[roman type]. Immediately the cats etch out a small lead, legs pumping, ears flat. You notice something at the start, a greyhound shouts '[bold type]3[roman type]'. He launches off the line, catches and passes the dogs, slows down behind the cats and as the finish line approaches, gets around them just in time. The crowd back at the start line cheer and a large dog shouts [bold type]'ONE ALL'[roman type]. They all start walking towards the finish line, making you realize that you should be exploring the campus.";
		now CatsVSDogsCounter is 3;
	else if CatsVSDogsCounter is 3:
		say "     Hearing the sounds in the distance, you recognize the cats and dogs before you even see them. This time each group is sitting around a table, throwing bits of food at the other. You take a seat a bit up the path and watch their antics for a minute, thankful for the cheer in an otherwise dreary city. From the opposite side you see a gryphon milkman come along, and you seem to notice him at the same time the two groups do. From each group a member steps forward and begins to walk towards the milkman. Suddenly they stop, look at each other, and both start running. Side by side they run to the milkman and side by side they tackle him. The two groups start cheering and patting each other on the back, watching the three of them fall to the ground.";
		say "     The cat grabs the milk and the dog grabs the gryphon. Each of them begin to enjoy their prizes, the cat chugging down the milk as if he hasn't had a drink for days and the dog fucking the gryphon. Unfortunately they forgot about getting infected and both of them begin to show signs. The cats back bulges for a second before he begins to sprout wings, and the dogs muzzle changes into a beak. Slowly the groups stop cheering and start muttering amongst themselves. You distinctly hear 'Gang-bang should fix that...' from one group. As they start to each drag away their member from the milkman, you decide to keep exploring the city.";
		now CatsVSDogs is resolved;
	now LastCampusWalkin is turns;

Table of GameEventIDs (continued)
Object	Name
SharkFountain	"SharkFountain"

SharkFountain is a situation.
The level of SharkFountain is 0.
The sarea of SharkFountain is "Campus". [Fountain]

after going to College Fountain while (SharkFountain is active and SharkFountain is not resolved and LastCampusWalkin - turns > 0 and ((SharkFountainCounter is 1 and daytimer is day) or (SharkFountainCounter is 2 and daytimer is night)) and a random chance of 1 in 3 succeeds):
	try looking;
	SharkFountainEvent;

Instead of resolving a SharkFountain:
	SharkFountainEvent;

to SharkFountainEvent:
	if SharkFountainCounter is 1:
		say "     The fountain seems very popular at the moment with students relaxing and chatting around it. Though currently, its water must only be a day or two from its next cleaning, as it is not as clear as usual. People around the edge suddenly start to point into the water, and you see a shark fin making its way around. Then in a shower of water, an anthro shark bursts from the depths of the fountain, soaking a group of students. Laughs and screams echo around the court as the shark walks back to his mates and high fives them.";
		now SharkFountainCounter is 2;
	else if SharkFountainCounter is 2:
		let randomnumber be a random number from 1 to 2;
		say "     It's getting late and there only seems to be one person around at the fountain as you approach it. A [if randomnumber is 1]female[else]male[end if] husky sits on the side of large structure, scribbling on a notepad. Just like earlier, the same shark anthro circles in the water of the fountain and bursts through the surface, but this time he grabs [if randomnumber is 1]her[else]him[end if] and drags [if randomnumber is 1]her[else]him[end if] in. You rush over, thinking to save [if randomnumber is 1]her[else]his[end if] life, but as you approach you see them lying in the water, the shark's twin shafts [if randomnumber is 1]each taking one hole, with his 'victim' moaning in euphoric pleasure[else]squeezed together, being shoved into the husky's ass while the anthro dog is moaning in pleasure[end if]. You decide to leave them to it[if humanity of Player <= 50]. Seeing the two of them go at it makes you wonder what those dual shafts could do for you[end if].";
		now SharkFountain is resolved;
	now LastCampusWalkin is turns;

Table of GameEventIDs (continued)
Object	Name
Fountain Naiad	"Fountain Naiad"

Fountain Naiad is a situation.
The sarea of Fountain Naiad is "Campus".

when play begins:
	add Fountain Naiad to BadSpots of FemaleList;

after going to College Fountain while (Fountain Naiad is active and Fountain Naiad is not resolved and LastCampusWalkin - turns > 0):
	try looking;
	NaiadFountainEvent;

instead of resolving a Fountain Naiad:
	NaiadFountainEvent;

to NaiadFountainEvent:
	say "     Walking along the campus grounds you come across a large fountain still shooting streaks of water into the air before falling back down into a large pool below. Taking a moment to appreciate the sight you gaze into the waterfall of flowing liquid and see a most unusual sight. There in the fountain, naked as the day she was born is a strikingly beautiful young woman with long blond hair. She raises her arms as the water cascades over her flawless skin and perky breasts. She is seemingly content with her public bath as she catches your gaze through the flowing water.";
	say "     Giving a wink and turning around to show her gropeable cheeks off she runs her hands over her firm buns as you feel your arousal flaring up. You're not the only to notice either, a few other campus goers have stopped what they were doing to ogle the bathing beauty. A few even start to stroke stiffening members or finger moistening lips in their trousers as they watch. You're half-tempted to do the same as your eyes are transfix on this unnaturally gorgeous woman bathing in public. Barely managing to pull your gaze away from her luscious figure you see many others entirely hypnotized by her soaking pale body, noticing a few of the onlookers inching closer to the fountain's edge. Deciding it's probably best to move on before this gets out of hand you turn around and leave the woman to her bath and adoring audience.";
	now LastCampusWalkin is turns;
	now Fountain Naiad is resolved;

Table of GameEventIDs (continued)
Object	Name
Campus Racing	"Campus Racing"

Campus Racing is a situation.
Campus Racing is inactive.
The sarea of Campus Racing is "Campus".

after going to Athletic Street while (Campus Racing is active and Campus Racing is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	try looking;
	CampusRacingEvent;

instead of resolving a Campus Racing:
	CampusRacingEvent;

to CampusRacingEvent:
	say "     Walking along the college grounds you spot from afar what must be the campus's running track. As you draw in closer from a distance you see two distinct figures standing prepped to run near the starting line. In the first lane, a well fit centauress with a fiery rosewood mane and matching head of hair tied firmly into a ponytail atop her determined yet beautiful face. In the second lane, a powerfully built cheetah woman with orange and black fur is crouched low, ready to take off sprinting at a moment's notice. They look to one another, both smiling before you can just overhear the centauress speak up, 'Alright on the count of three, and no cheating this time Mary!' Giving a toothy smile flashing sharp pearly-white teeth the cheetah named Mary nods before licking her lips in anticipation. Looking down the track the equine athlete readies herself, padding her hooves on the soft grass below. 'Alright, one, Two... THREE!'";
	say "     The two take off, leaving behind a small cloud of dust. The cheetah-girl on all fours takes an early head start sprinting with almost blinding speed down the track the equine runner hot on her heels. Reaching the halfway point within seconds the athletic centauress catches up with her friend, showing impressive acceleration in her galloping technique. Neck to neck, the two near the finish line and you watch with anticipation for which will win. The cheetah girl takes a small lead near the last few dozen meters before the centauress takes a sudden leap, being ahead by a few inches as they cross the white finish line. Huffing and puffing the two look to each other, with the spotted cheetah looking slightly flushed at her loss. 'Finally! I finally beat you Mary!' squeals the centauress in delight. Barely finishing the sentence the equine girl whinnies in surprise as her shapely rump is slapped by the pawed hand of her friend before the leopardess takes off running and giggling. 'Why you!' Shouts the centaur before she starts running after her mischievous friend. You take your leave from the track as they run off.";
	now Campus Racing is resolved;
	now LastCampusWalkin is turns;

Table of GameEventIDs (continued)
Object	Name
Frat Party Recruiter	"Frat Party Recruiter"

Frat Party Recruiter is a situation.
Frat Party Recruiter is inactive.
The sarea of Frat Party Recruiter is "Campus".

when play begins:
	add Frat Party Recruiter to BadSpots of MaleList;

after going to College Walkway West while (Frat Party Recruiter is active and Frat Party Recruiter is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	try looking;
	FratPartyRecruiterEvent;

after going to College Walkway East while (Frat Party Recruiter is active and Frat Party Recruiter is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	try looking;
	FratPartyRecruiterEvent;

after going to College Walkway Northeast while (Frat Party Recruiter is active and Frat Party Recruiter is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	try looking;
	FratPartyRecruiterEvent;

after going to College Walkway Northwest while (Frat Party Recruiter is active and Frat Party Recruiter is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	try looking;
	FratPartyRecruiterEvent;

instead of resolving a Frat Party Recruiter:
	FratPartyRecruiterEvent;

to FratPartyRecruiterEvent:
	if FratPartyRecruiterProgression is 0:
		say "     Walking over the campus, you hear someone call out 'Visit Phi Alpha Nu and have the best time of your life! Party every night, and as much booze as you can drink!' You look around, and see a satyr with black fur, curly black hair, and stout but thick horns walking along the campus path, handing out fliers to everyone he passes. A lot of students turn their heads, as he has a great physique, and if not for that then they're staring at the big piece of meat swinging between his legs. He also carries what looks like a wine-skin, apparently for handing out free trials of satyr wine. You watch as he hands a flyer to a group of guys, and continue on your path. The frat house you helped Talov and Kerr mix up clearly keeps on rolling with more fun every night!";
	else if FratPartyRecruiterProgression is 1:
		say "     Walking around the campus again you spot the handsome satyr recruiter from last time. He is talking with two good-looking frat-boys. It seems both are a bit wary about just how enthusiastically he approaches them, but nevertheless, one of them takes a flyer. While he is reading, the satyr makes the other one sample the contents of his wine-skin. The strong pull of whine he drinks seems to take immediate effect on the guy. He instantly is sprouting a thick goatee, and shows quite a hard-on in his pants. This frightens his buddy, but before the young man can flee, he finds himself being groped by the satyr and his frat-brother. It seems as if Talov and the satyr crew will soon get some new additions...";
	else if FratPartyRecruiterProgression is 2:
		say "     You are walking over the campus again as you happen upon a flyer advertising the satyr party in P.A.N. Picking that up and looking at it, you spot another one, and then another one. You follow the trail until it ends in front of some bushes, where you hear some quite unmistakable sounds. Curious but careful, you step closer to get a better look; Behind the leaves, you see the black furred satyr having fun with the two frat boys from before, suckling one's swelling and shifting cock, while being fucked by the other one. The features of the frat-guys shift in front of your eyes, and their legs take a goat-like form with cloven hooves and fur, while horns push out of their heads. It appears as if recruiting for P.A.N. is quite successful.";
	else if FratPartyRecruiterProgression is 3:
		say "     You happen to wander around the campus again, seeing a crowd of people, transformed or not, standing around the good-looking black furred satyr and his new recruits. The three have set up a flimsy desk next to a footpath and are happily handing out samples of Telov and Kerr's satyr wine, as well as flyers, announcing another big party at P.A.N. The wine soon shows its effects, making all who tried a cup rather horny, with a few of the unchanged guys are soon sprouting goatees and horns. It appears the satyr frat will soon be the most popular one on campus!";
		now Frat Party Recruiter is resolved;
	else if FratPartyRecruiterProgression is 4:
		say "";
	else if FratPartyRecruiterProgression is 5:
		say "";
	increase FratPartyRecruiterProgression by 1;
	now LastCampusWalkin is turns;

Table of GameEventIDs (continued)
Object	Name
Undie Race	"Undie Race"

Undie Race is a situation.
The sarea of Undie Race is "Campus".

after going to College Walkway West while (Undie Race is active and Undie Race is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	try looking;
	UndieRaceEvent;

after going to College Walkway East while (Undie Race is active and Undie Race is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	try looking;
	UndieRaceEvent;

after going to College Walkway Northeast while (Undie Race is active and Undie Race is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	try looking;
	UndieRaceEvent;

after going to College Walkway Northwest while (Undie Race is active and Undie Race is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	try looking;
	UndieRaceEvent;

instead of resolving Undie Race:
	UndieRaceEvent;

to UndieRaceEvent:
	say "     As you trek down the walkway, you notice that the paved alley is almost deserted, and that people begin to assemble on the side. You eventually reach a gorilla, who looks busy directing people to stay away from the path, while others install a table and put water bottles on them. [if GorillasMember is 3]'Hey, nice to see you,' the ape greets you. 'A race is going to pass through here. Can you wait on the side for a few moments?'[else]'Hey, you!' the ape hailed. 'Stay out of the walkway! Racers are going to pass through here in a few moments.'[end if]";
	say "     You follow the instructions and, as the gorilla said, a pack of sportsmen jog down the road. They do not wear the usual running garb: they are all in their undergarments and running shoes - for those who do not have pawed feet. Virile bulges and bare breasts jiggle with each stride, under the applause and the cheers of the crowd, on each side of the walkway, cheers on the runners, and some wave their hands in response. The runners pass by the table and pick a water bottle. The first to do so is a young, albinos lizard in a red speedo. He grabs the nearest bottle, then sprinkles its content over his scaly body in order to cool off. His wet scales glisten under the light [if daytimer is night]of the lamp posts[else]of the sun[end if], and several onlookers around you cheer him on even more. The reptile winks at the audience, then begins to run away.";
	if demon brute is companion of Player:
		say "     You hear a grunt beside you, and as you glance to the side, you see Brutus's thick purple shaft standing at full erection. Clearly, the runners - and especially that lizard - have aroused the big demon. [if DBCaptureQuestVar is 5]He looks ready to snatch away one of the passing runners to satiate his lust, but your disapproving look discourages him from doing so[else]You pat his side amicably, praising him on his self-control[end if].";
	if royal tiger is companion of Player:
		say "     Ryousei looks at the scene, dismayed. 'Poor souls! What is their crime, for being punished like this?' he asks. Stifling a laugh, you explain to the tiger that this is a race, and they do it willingly. 'Oh, I see. I was wondering that it was a lot of criminals. But why are they barely clothed?' You smile, then shrug.";
	say "     A few minutes later, every runner passed, and the crowd begins to disperse, and so do you.";
	let bonus be (( the Perception of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	if diceroll > 15:
		say "     [bold type]Perception check successful[roman type]: As you leave, you notice that a water bottle is still on the table, unopened. This is tap water, probably infected, but it is better than nothing. You snatch it discreetly and put it in your bag.";
		LineBreak;
		say "[bold type]You gain 1 (dirty) water bottle![roman type][line break]";
		increase carried of dirty water by 1;
	now Undie Race is resolved;
	now LastCampusWalkin is turns;

Section 2 - Events with Specific NPCs

after going east from College Campus Entrance while (LastCampusWalkin - turns > 2 and gshep is companion of Player and gsd_pet >= 60 and GibsonRelationship is 0 and a random chance of 1 in 3 succeeds):
	if debugactive is 1:
		say "     DEBUG: Walk-in Event - Korvin runs into a young adult beagle boy - GibsonRelationship: [GibsonRelationship][line break]";
	say "     Walking over the campus in the direction of the Tenvale college dorms, you notice after a few steps that something - or rather someone - is missing from your side. As you start turning around to see where your attack dog Korvin ended up, you hear the German shepherd bark out, 'What are you looking at, pup? Never seen a [italic type]real[roman type] dog before?' It turns out that Korvin stopped walking about a dozen feet back, where he is standing now, hands on his furry hips and looking down at a young adult anthro standing right in front of him. The other guy is a canine too, though shorter and of a different breed of dog - a beagle, you'd say, judging by the floppy ears and the mixture of white, tan and brown fur. Dressed in shorts and a t-shirt bearing the 'Tenvale College' logo, a backpack slung over one shoulder, the slender young man gapes at Korvin with wide eyes, then gasps out, 'I - I'm sorry sir! It's just... um, you're naked and...'";
	say "     'Hah!' Korvin barks, interrupting the canine student and stepping up right into his comfort zone. 'Real men have nothing to hide. Fur is everything you need!' With that, your anthro attack dog flexes his bicep and runs a hand over the rippling abs of his torso, grinning broadly at the beagle. The student is clearly overwhelmed by Korvin's 'in your face' attitude and is at a loss for words, just staring at the larger man's body and panting excitedly. You can see him stretch his head forward a little, nostrils flaring as he breathes in the masculine scent of your companion standing so very close, followed by his tail starting to wag cautiously. Korvin is quick to pick up on that too, the edges of his muzzle creasing in a toothy, hungry smile.";
	say "     [bold type]Do you allow the two to act out on their urges?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yeah, why not. Dogs will be dogs and all that...";
	say "     ([link]N[as]n[end link]) - Nope! You tamed Korvin from being a wild dog who was attacking people in the streets. Best not to let him fall back to that.";
	if Player consents:
		LineBreak;
		say "     Placing a hand on the student's shoulder and sliding it up to wrap his fingers behind his neck, Korvin asks, 'What's your name, boy?' Panting hard, the beagle replies, 'G-Gibson, sir!' Pulling the young man closer till his muzzle is pressed against his own furry pecs, Korvin leans forward to lick the side of his face and the floppy ear of the younger canine. 'Good dog, Gib! Someone taught you well to treat a top dog like he deserves!' Your collared dog gives a rough chuckle and lowers a hand to Gibson's crotch. Shivering, the college student takes a deep breath of your attack dog's masculine scent and begins to let his hands wander a bit, carefully pressing them up against Korvin's toned form, as if fearful he might be reprimanded. When one of Gibson's hands gravitate towards his firm buttocks, the German shepherd can't help but grin. 'Getting into the spirit now, aren't you?' he says with amusement in his voice.";
		say "     'Nice bulge, little doggy. Let's see what you're packing,' Korvin barks to his... captive? Eager partner? Fellow dog? All of the above, you'd say. He loosens his grip and allows Gibson to raise his head from the muscled pec it was pressed against, then licks the smaller dog's muzzle. With an aroused growl, Korvin half-leads, half-drags the student into the bushes flanking the walkway.";
		say "     [bold type]Do you want to walk closer and watch?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Anthro dogs humping in rut? Sure!";
		say "     ([link]N[as]n[end link]) - Nah, pass.";
		if Player consents:
			LineBreak;
			say "     Walking closer, you step through the opening between the bushes planted at the edge of the path, finding yourself in the shadow underneath a tree. The place is fairly out of sight from the walkway but open to the grassy meadow between the buildings of the campus. One or two students are lying on the grass nearby, studying or dozing, and a trio farther off to the side is playing with a Frisbee (often catching it with their teeth out of reflex). Gibson's backpack is lying on the ground a step in front of you, while the canine young adult is pushed against the trunk of the tree by Korvin. Your attack dog is quick to peel his college t-shirt off, throwing it your way and chuckling as it hits your head. Pulling the garment off your face - the fresh but at the same time masculine scent of the young dog still in your nose - you drop it next to the student's backpack. By the time you look back at them, Korvin is undoing the smaller canine's zipper.";
			say "     Pulling Gibson's pants down with a sudden and forceful yank, Korvin looks his new friend up and down in all his naked glory. The young man is slender and a bit shorter than him, but still has some nice musculature on his frame. The difference between his and Korvin's breed is fairly obvious: one type is mainly used for tracking, whereas the other is bigger, stronger - suitable for both herding sheep and taking down wolves. Though that's not the only thing that sets them apart - as Korvin points out when he grabs at Gibson's crotch and barks, 'Now what is this?!' His paw-hand wraps around the young man's pink-ish penis, holding the normal human-like appendage up and then stroking it a few times. 'No wonder you were staring at my crotch! You're definitively missing out boy! A sheath and knot are great. But hey, I know how to fix you up,' Korvin adds with a laugh, then pushes on his companion's shoulders.";
			WaitLineBreak;
			say "     Too stunned to resist, Gibson soon finds himself crouching down in front of Korvin, staring with wonder at his bright red canine cock. His gaze wanders over the pointy tip, vein-covered shaft, and the bulge at the base, a thick furry sheath nestled just below the knot. 'Wow,' the young dog murmurs under his breath, then reaches out to cup Korvin's balls, gently playing the furry orbs between his fingers. 'Yeah, have a good look at it,' Korvin barks out, pride clearly audible in his voice. He leans over Gibson, bracing himself against the tree as he looks down on the student and letting him touch his erection at his heart's content. The stroking and squeezes that the curious young man gives him aren't without effect, as soon a drop of pre-cum forms at the slit of Korvin's dickhead. You can see him start to reach down to pull Gibson's muzzle to it, but before the German shepherd even touches the other dog, he already has stretched his neck and lapped at Korvin's dick on his own.";
			say "     Gripping the tree tightly with both hand-paws again, Korvin grins down at his student and grunts in arousal as Gibson quickly progresses to taking his shaft in his mouth - helped greatly by the length of a canine muzzle as compared to a human mouth. And so, even as an obvious novice at giving blowjobs, the anthro young adult soon is bobbing up and down on his horny partner's rod - all the while stroking his own shaft with a steady rhythm. Korvin greatly enjoys introducing the beagle to oral male on male sex, instructing him with panted out words of direction, then eventually grasping him by the hair to keep him steady as he proceeds to face-fuck Gibson. It doesn't take long after that until he reaches his climax, taking care to keep his knot out of the anthro student's muzzle as he starts to pump out his creamy cum, covering the young man's tongue and hitting the back of his throat again and again. After all, it wouldn't do to give Gibson a lockjaw at his very first blowjob.";
			WaitLineBreak;
			say "     As Korvin pumps his German shepherd nut-milk into Gibson, grunting in satisfaction as the other canine gobbles it down eagerly, you can see from your close by position that something immediately starts happening to the student's own erection. Its pink-ish human flesh starts to darken second by second, becoming redder in color, and the formerly mushroom-like head reforms to a more pointed shape. Soon, the young man's hand that is gripping the base of his cock starts to be pushed apart a little, and when he pulls back his fingers, you see a fully grown canine knot there too. Grunting around Korvin's muzzle still in his mouth, a jolt goes through the whole of Gibson's body as his newly formed cock erupts, spraying canine seed all over the ground between Korvin's legs.";
			say "     Your collared attack dog keeps gently humping into his partner's muzzle until his own throbs of cum ebb off, then gives the student some time to lick up every last drop of cum and worship his cock some more. Tousling the beagle's short hair and floppy ears, Korvin eventually steps back from the tree and looks down at his now fully anthro canine shape and the puddle of cum on the ground. 'Told ya it'd be fun, Gib!' Still licking his muzzle and checking out his new canine cock, the young man looks up at your companion and replies, 'Thank you, sir. For... everything. That was just... wow.' He makes puppy eyes full of adoration at Korvin, who basks in the feeling - until Gibson suddenly freezes with a somewhat horrified look on his face and looks down to his watch. 'SHIT! I'm late for class!' the student wails, jumping up from where he was leaning back against the tree and snatching up his clothes and backpack before setting off at a sprint, naked. Korvin laughs heartily at the end of his fling with the beagle and takes his usual position by your side again.";
			now GibsonRelationship is 2; [player watched them face-fuck]
		else:
			LineBreak;
			say "     With a shrug to yourself, you simply stand around and wait a bit, casually studying the campus surroundings while hearing moans, grunts and barks coming from the bush Korvin and Gibson vanished behind. But then... that is not the only area close by that one can hear sounds of sex from. Passersby barely raise an eyebrow at the noises of your attack dog and his new partner. Quite a change in behavior to 'normal' human society before the nanite apocalypse...";
			say "     Eventually, Korvin re-emerges from the bushes, a broad grin on his face and his canine shaft still half-hard outside his sheath. It is glistening with wetness, but you can't see a drop of cum on it anywhere... which leaves a pretty easy guess where it all ended up. He takes his usual position by your side with a smirk, looking back to where a pleased and somewhat bewildered-looking Gibson comes stumbling out of the bushes a moment later, still licking his muzzle. Then the young man looks down at his watch and his hackles rise, followed by him letting out a shout of, 'Shit! I'm late for class!' and hurriedly sprinting past you and your companion.";
			now GibsonRelationship is 1; [player didn't watch Korvin face-fuck Gibson, but knows the name]
	else:
		LineBreak;
		say "     Raising a hand to your mouth, you give a loud and sharp whistle that has both of the anthro canines whirling around to face you. Ordering the black-collared German shepherd to heel, you make eye-contact with Korvin as his lips start to show a little scowl, holding the stare until he looks down submissively a few moments later. With a sidelong glance at the beagle and a bark of, 'So long, pup!' Korvin then trots back over to you, taking his usual position. You hook a finger under the collar marking him as yours and adjust it a little to remind him of his status. Then you pat his head like a good dog and start moving on. The beagle student is left behind, staring after the dominant dog with a sigh of relief - and a sliver of regret.";
		now GibsonRelationship is 100; [stopped things cold]
	now LastCampusWalkin is turns;

Section 3 - Special Events / Mechanisms

[Administration Introduction - Waiting for the Course Advisor]

Table of GameEventIDs (continued)
Object	Name
Course Advice	"Course Advice"

Course Advice is a situation.
The sarea of Course Advice is "Campus".

when play begins:
	add Course Advice to BadSpots of FemaleList;
	add Course Advice to BadSpots of MaleList;

after going north from College Fountain while (Course Advice is not resolved):
	try looking;
	AdminIntro;

after going northeast from College Walkway Northwest while (Course Advice is not resolved):
	try looking;
	AdminIntro;

after going northwest from College Walkway Northeast while (Course Advice is not resolved):
	try looking;
	AdminIntro;

after resolving a Course Advice:
	try looking;
	AdminIntro;

to AdminIntro:
	say "     Exploring the campus, you come upon one of the administrative buildings of the college. Surprisingly, it all seems to be in regular use, with students coming and going... seemingly oblivious to the fact that they've almost all been transformed in various ways. You stop one anthro dolphin [one of]guy[or]girl[at random] at random as they try to push past you and go in, asking what's going on. 'Isn't it obvious? People are becoming animals and whatnot - if that's not a reason to re-evaluate the courses you take, what is? The advisory office is in there. I'm gonna go for marine biology, you know.'";
	say "     With that, the student gives a little wave, then enters the building. Your curiosity demands that you check this out in further detail, so you follow inside. The entrance hall is fairly well-filled, with numerous students sitting in small seating groups and chatting, office workers walking along with folders. Seems eerily normal, for any place during the nanite apocalypse. The upside is that nothing is gonna attack you in here, from the looks of it.";
	WaitLineBreak;
	say "     Glancing around, you see the tail-fin of your dolphin acquaintance vanish around a corner at the upper end of a stairway to the upper floor. Someone is certainly eager to meet their advisers. Following upwards yourself, you come to the landing of the second floor - but the dolphin isn't anywhere in sight. Hm, too bad. But hey, you know where they were going - there is a sign reading 'Course Adviser's Offices' with an arrow to the right. Following that hint, you soon arrive in a long hallway flanked by a number of doors, with waiting chairs arranged along the sides. No dolphin in sight here either - must have had an appointment and gone in right away.";
	say "     [bold type]Well, the place is pretty peaceful and maybe you could talk with the student some more, or find out what the administrators side on the matter is. Do you want to sit down and wait around a bit?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - At the very least, it'll be relaxing.";
	say "     ([link]N[as]n[end link]) - Nah, too boring.";
	if Player consents:
		LineBreak;
		say "     Sitting down on a seat, you lean back and wait - and before long, you're not the only one to do so. A muscular young horseman comes down the hallway in a proud stride, his rippling abs and good looks for everyone to see, as his only piece of clothing is a pair of black boxer shorts. Fairly tight ones too, highlighting the sizable bulge at his crotch. 'Hey there, been waiting long?' the student asks with a friendly smile, then shrugs as you shake your head. He sits down opposite to you, and for a little while you each wait in silence, with you casually inspecting the well built dude with his golden coat and long brown hair and tail.";
		say "     Soon, a second student joins you in the waiting area - this one a petite lioness in jeans and a pink shirt that bulges out over a sizable pair of breasts. Like with the horseman, her clothes seem a little tight - a regular sight these days, with all the transformations and changes in asset size going on. 'Hello you two, nice to meet you. I'm Dana.' You introduce yourself in turn and the sexy stud leans back, arms spread and his fingers interlocked behind his head. He clearly loves showing off his muscles.";
		WaitLineBreak;
		say "     Then the horseman grins and just says, 'Kyle.' Dana's reaction would have fit him suddenly growing a second head - she gapes in shock, then makes a step back and stares openly at the equine. 'Wait?! Oh god - it IS you! Woooow! I didn't even recognize you until now Kyle,' she gushes, then throws her arms around him as the young man stands up. Exchanging a tight squeeze with the horseman teen, the lioness then turns to look at you a bit closer, as if to check if you're someone she knows too (which you are not).";
		say "     'You won't believe it [if Player is female]ma'am[else]mister[end if], but this guy was, um...' Dana squeezes her friend with one arm and looks up at him while searching for words - only to have him complete the sentence in a fairly amused tone. 'A total wimp. Shorter than her, with flabby arms and incredibly thick glasses. We have physics courses together. Hey Dana - check this out!' With that, the handsome stallion pushes his beautiful mane of brown hair back over his shoulder and raises one arm, flexing awe-inspiring muscles.";
		WaitLineBreak;
		say "     Dana is very openly enthralled by his display, giving a quiet little moan as she puts one hand on his chest to feel the firmness and warmth of her friend's body. 'I never told you, but I like you Dana. You've been a good friend and are really beautiful, before and now too. So - how about it, do you like the new me too? This new body feels so great! I'm here to adjust my courses a bit to make room for football,' Kyle says in a hopefully optimistic tone.";
		say "     'Of course I do, silly! You've got the perfect brains and body now! I - um... can I see it?' the slender lioness replies, her hand on his crotch making it obvious what she's referring to. 'You're gonna be amazed!' Kyle says proudly, then pushes his shorts down in a single quick movement, freeing the weighty horsecock and full balls between his legs to dangle freely. Dana is quick to grasp the thick shaft with one hand, stroking its length and panting, 'I can't even get my fingers around it. Just... wow!'";
		say "     [bold type]It seems fairly obvious that the two of them have mostly forgotten that you're still sitting just a few feet away. Do you want to lean back and enjoy the show?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure!";
		say "     ([link]N[as]n[end link]) - Quietly leave.";
		if Player consents:
			LineBreak;
			say "     'Sit back, I want to show you something too,' Dana tells Kyle, who readily does so - with wide-spread legs, allowing his balls to rest on the edge of the seat cushion and his cock to freely stand at full mast. Coming to stand before him, the petite lioness grins and pulls her top up over her flat belly, then hooks it over her breasts. 'I didn't just get fur and a tail either - look at these!' Dana happily says, squeezing her ample boobs with both hands.";
			say "     It takes only a short moment before you hear the sound of a zipper being opened, followed by the lioness pushing her jeans halfway down her thighs. She slides a hand between her legs and rubs it against the folds of her feline sex, then moans, 'I'm so wet right now!' Leaning forward, a grinning Kyle brushes his larger hand along her furry arm, then feels her pussy and slips a finger inside, taking over rubbing her to stimulate his girlfriend.";
			WaitLineBreak;
			say "     The rubbing and touching continues for a little while, with Dana getting fingered and her breasts worshipped and licked by the eager young horseman. Then eventually, she puts a hand on his chest and gently pushes him to lean back once more. Herself sinking to her knees, Dana proceeds to take hold of his cock and licks it with obvious pleasure, then slides her mouth over the flared end and starts to suck. 'Nnngh, yeah!' Kyle lets out in a breathless groan, half-reaching out to guide her before changing his mind and putting his hands behind his head instead, leaving Dana to set the pace.";
			say "     Meanwhile, you're not unaffected by the rising air of lust in this quiet hallway and have slid off those pieces of clothing that hinder you touching yourself. [if Player is male]With a hand on your hard shaft, you stroke slowly along its length[else if Player is female]With a hand on your crotch, you slide your fingers over the sensitive folds of your pussy and frig your clit in a slow but steady manner[else]With a hand on your crotch, you rub your sexless but nonetheless sensitive area[end if] while watching the two students go at it. Soon, Kyle's large black-skinned horsecock is glistening with Dana's spit and visibly throbbing from his arousal. He puts on a lewd grin and asks his girlfriend, 'Wanna try this bad boy out together with me?'";
			WaitLineBreak;
			say "     The pretty lioness pulls her muzzle off his dick, then gives its flared head another slow lick before returning an eager smile. 'You couldn't keep me off it if you tried!' she says with a chuckle, then shimmies out of her jeans and stands before her boyfriend, contemplating his thick shaft. 'I wanna sit on it,' she pants in obvious arousal, then climbs on top of her equine lover. Balancing on the young horseman's thighs with her slender paws, the college student looks behind her at Kyle's eager face and swishes her tail in front of his nose.";
			say "     'Catch me, okay?' she asks and receives a confirming nod, then lets herself fall back a little - right into his raised hands, which close around the sides of her hips. Now with her paws braced on his knees and leaning into his support, the young woman bends her legs to lower herself and soon brushes against the tip of his shaft. 'Oooh, I can't wait. Gonna put it in now,' she says in a happy pant and reaches down, aligning his manhood with her pussy. Then she pushes down, with his slick rod parting the wet folds of her sex and sinking several inches into her.";
			WaitLineBreak;
			say "     Two voices give a shared gasp full of arousal and need, followed by Kyle's exclamation of, 'Ooh fuck! You feel better than I ever dreamed!' Dana's only reply is a happy giggle as she slides further down, and down - until eventually stopping with just about three inches of his length left outside of her. She gasps, 'I can feel you against my cervix. Damn, you're too big!' With a glance down at his black-skinned erection, she adds, 'And not even all in yet. But... yeah, I think I can take you all the way. The infection must account for such things, from the pairings I've seen out there.'";
			say "     Before her boyfriend can reply, Dana has already raised herself a few inches, then pushes herself down on his manhood with full force. The petite lioness lets out a hoarse shout as her lover bottoms out inside her - creating a visible bulge in her stomach. 'You okay baby?' Kyle asks her, stretching his neck to look her in the eye, but the blissful smile on Dana's face speaks volumes and quells his fear. 'Fuuuck that feels good,' the impaled feline says with a breathless sigh, then cups the bulge in her stomach and pushes it a little bit left and right, playing with his dickhead like that.";
			WaitLineBreak;
			say "     'Can you... take over for a bit? I'm a bit weak-kneed from having over a foot of cock shoved into me. God, what a thing to say!' Dana tells her equine lover in an amused tone and he is only to happy to comply, starting to slide her up and down on his pole. At first he goes fairly slow, but soon the tempo increases as the petite lioness spurns him on and Kyle's own lust flares hotly... filling the hallway with the rhythmic slap of her ass against his crotch.";
			say "     Their pairing escalates into full-on rutting, which is a glorious spectacle as the powerful stallion takes his lioness friend as his mate, pumping into her with hard thrusts and pulling her down into each and every one of them. Their passion burns incredibly hot, which means it can't last forever, and before much longer, Dana throws her head back and roars in orgasm, her inner muscles trembling around Kyle's shaft.";
			WaitLineBreak;
			say "     The squeeze on his prick is enough to push Kyle over the edge in a few heartbeats - especially as her cervix contracts into a very snug ring around his dickhead. With an aroused grunt, he grinds his crotch up against her body as his balls give their first hard throb, blasting a thick throb of cum into her womb. It is awe-inspiring to see Kyle's cum-factories pulse and Dana's stomach grow visibly with each cum-shot, soon giving her a faux-pregnant little bump.";
			say "     In fact, the view of their culmination is enough to move you past the point of no return, and with a wash of pleasure through your whole body, [if Player is male]you start to shoot too, splattering the ground before your seat with long splashes of semen. One of them even hits Kyle (barely), leaving a white splash across his gray hoof[else if Player is female]your pussy starts to drip with femcum, leaking down to leave a little wet spot on the seat[else]your crotch starts to tingle quite nicely[end if]. For a moment, nothing but heavy breathing fills the hallway as the three of you ride out your orgasms, then slowly come back to your senses.";
			WaitLineBreak;
			say "     Craning her neck a little, Dana shares a kiss with Kyle, who hugs her lovingly from behind and pants, 'I love you Dana.' She sinks back into his embrace and smiles broadly, then gets very round eyes as her gaze falls upon you. Reflexively trying to jump up and cover herself doesn't lead her very far - not while she is still impaled on her boyfriend's cock. 'Umm... I was gonna say sorry for fucking like bunnies in front of you, but... you enjoyed that, didn't you?' she says and winks after a nod at your own state.";
			say "     With a grin on your face, you wish the two of them well, then stand up. After putting your clothes in order, you then walk down the corridor, leaving the advisers offices of the Tenvale College behind for now. While the place seemed so dreadfully normal and regular before, you now know enough to interpret some low sounds that are audible in the building. That banging from somewhere above surely isn't connected to hanging a picture, and the slurp behind one of the doors you pass will likely be someone giving a blow-job.";
			WaitLineBreak;
			say "     So in the end, this place isn't an exception to the explosion of sexual needs - it's just... a possibility how society might adjust and flourish in a new shape. If all of these workers and students are here, doing their jobs or thinking about their education, they clearly are the best, brightest and most dedicated of the lot - if not them, who else could end up transformed, yet still well-balanced and sane? Finding out the details of this place gives you some hope for the future, and somehow you feel your humanity confirmed by the knowledge that you're not the only one who can learn to live with the urges.";
			SanBoost 10;
			now Resolution of Course Advice is 1; [Waited outside office, Watched sex]
		else:
			LineBreak;
			say "     With a grin on your face, you stand up and walk down the corridor, leaving the advisers offices of the Tenvale College behind for now. While the place seemed so dreadfully normal and regular before, you now know enough to interpret some low sounds that are audible in the building. That banging from somewhere above surely isn't connected to hanging a picture, and the slurp behind one of the doors you pass will likely be someone giving a blow-job.";
			say "     So in the end, this place isn't an exception to the explosion of sexual needs - it's just... a possibility how society might adjust and flourish in a new shape. If all of these workers and students are here, doing their jobs or thinking about their education, they clearly are the best, brightest and most dedicated of the lot - if not them, who else could end up transformed, yet still well-balanced and sane? Finding out the details of this place gives you some hope for the future, and somehow you feel your humanity confirmed by the knowledge that you're not the only one who can learn to live with the urges.";
			SanBoost 10;
		move player to College Administration Building;
		now Resolution of Course Advice is 2; [Waited outside office, Did not watch sex]
	else:
		LineBreak;
		say "     With a shrug, you abandon the idea of exploring the Tenvale College administration building any further. This all seems to dreadfully normal and regular... it's the nanite apocalypse, for fuck's sake! Walking back downstairs and past the peaceful crowd there, you soon step out onto the campus grounds again. Almost the first thing you see out here is an incubus, standing not too far off. He has his leather pants pushed down below his ass and is stroking the sizable erection between his legs for everyone to see.";
		say "     The demonic exhibitionist doesn't have to hold out his lure for too long, as a sexy little gazelle out on a jog diverts her route to stop by his side. You're too far away to make out the exact words they exchange... but you don't have to really, as the next thing they do is start fucking, right there on the green grass of the college campus. Yeah, this seems more like the regular fare you've been come to expect from this new reality.";
		move player to College Fountain;
		now Resolution of Course Advice is 3; [Did not wait outside office]
	now Course Advice is resolved;

[Silence in the Library - Repeatable event]

BrowseLibrary is an action applying to nothing.
understand "browse library" as browselibrary.
understand "browse the library" as browselibrary.
understand "explore library" as browselibrary.
understand "explore the library" as browselibrary.
understand "read library" as browselibrary.
understand "read the library" as browselibrary.


check browselibrary:
	if Player is not in Tenvale College Library, say "You should do this at the Tenvale College Library." instead;
	if lastlibrarybrowse - turns < 8, say "Even if reading is an enjoyable way to spend time, you can't spend all day here! You should worry about other priorities..." instead;

carry out browselibrary:
	LibrarySexEvent;
	now lastlibrarybrowse is turns;
	Follow the turnpass rule;

to LibrarySexEvent:
	if (demon brute is companion of Player and CollegeLibraryBrutusEncounter is 0):
		BrutusLibraryEvent;
	else if (royal tiger is companion of Player and CollegeLibraryRyouseiEncounter is 0):
		RyouseiLibraryEvent;
	else:
		let randomnumber be a random number from 1 to 5;
		say "     Taking advantage of being on campus, you stop by the library and browse a little. ";
		if randomnumber is:
			-- 1:
				say "     As you wander between the rows of bookshelves, you hear feminine giggles coming from the alley on the other side of the shelf.";
				say "     'Ha ha... S-stop, the-the librarian w-will hear us,' one of them whispers.";
				say "     'She will hear [italic type]you[roman type]. Keep these legs spread.'";
				say "     [bold type]Do you wish to investigate?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Curiosity has not killed you (yet).";
				say "     ([link]N[as]n[end link]) - Lesbian sex is not your thing.";
				if Player consents:
					LineBreak;
					say "     Curiosity encourages you to peep on whatever happens on the other side. You walk around the bookshelf discreetly, and find a couple of girls; a cat and a dog. The feline holds to the bookshelf for her dear life while the canine is kneeling under her and has her snout buried in her friend's crotch. Books and a pair of shorts are sprawled on the carpeted floor. The cat is panting heavily. 'W-why is it always the same story, e-each time I go to the library to f-fetch some b-booooooh...'";
					say "     The cat's final words are lost, as her friend's lapping makes her cum, hard. Her claws scratch the wood, thankfully sparing the books. 'Y-You're a bitch, Suz,' the feline chastises the other girl.";
					say "     'Yup, 'tis what I am,' Suz giggles. Trying not to giggle too, you slip away unnoticed.";
				else:
					LineBreak;
					say "     You resume your perusing, doing your best to ignore the noises.";
			-- 2:
				say "     As you wander between the rows of bookshelves, you hear a pair of female moans coming from the alley on the other side of the shelf.";
				say "     'F-fuck. It feels s-so good.'";
				say "     'Y-yeah. Keep going.'";
				say "     [bold type]Do you wish to investigate?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Curiosity has not killed you (yet).";
				say "     ([link]N[as]n[end link]) - Lesbian sex is not your thing.";
				if Player consents:
					LineBreak;
					say "     Curiosity encourages you to peep on whatever happens on the other side. You walk around the bookshelf discreetly, and find a couple of girls; a cat and a dog. The two of them are on the floor, naked, and scissoring each other. Their clothes are sprawled on the carpet, alongside an open book. You cannot see the content from where you are, but the two students seem to check it from time to time. 'L-Liz, how come we never did this before,' the dog pants. 'N-no idea, Suz. I g-guess you can call it 'experimenting'?' The girls keep at it, until they cum at almost the same time. Panting, they help each other standing up, and admire the small pool of caprine cum which soaks the spot of the carpet which were under their conjoined crotches. 'Whoops?' Suz asks her friend.";
					say "     'Whoops. Let's scram before someone notices this.'";
					say "     You decide to follow the cat's advice as well, and get back to your own business.";
				else:
					LineBreak;
					say "     You resume your perusing, doing your best to ignore the noises.";
			-- 3:
				say "You decide to wander around between the rows of bookshelves. Picking out one book that interests you, taking a seat at one of the reading tables is almost automatic right after. You find yourself next to an androgynous goat student. [if FemaleList is banned or FemaleList is warded]He[else]She[end if] has the complete look of the quiet, nerdy collegian, including the large glasses and the timid look given when your eyes catch each other. After ten minutes or so of reading, you hear something buzz. You look around, but you cannot see any mobile phone around. You go back to your reading, but the buzzing comes back at regular intervals, until it becomes rather annoying. You are about to go look for the guilty party, when you hear your caprine neighbor groan. 'E-enough.'";
				say "     [bold type]Do you wish to talk to the student?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) [if FemaleList is banned or FemaleList is warded]He[else]She[end if] acts funny. You should talk to [if FemaleList is banned or FemaleList is warded]him[else]her[end if].";
				say "     ([link]N[as]n[end link]) - Something fishy must be going on, you would better focus on your reading.";
				if Player consents:
					LineBreak;
					say "     You turn towards her, about to tell her that the noise is getting on your nerves too, when you notice that something's wrong. She is panting, and her cheeks are flushing red under her cream-colored fur. Then, the buzzing returns, startling the girl. You notice that the noise comes from her pants. Her empty-pockets pants. Another buzzing, the student shuts her eyes tight and squeezes her legs. 'Nnnnnn.' She looks around, and realizes that you have been looking at her the whole time. 'N-no, d-don't look at m-me like that...'";
					say "     Just as she says these words, another buzzing shook her body. She cowered on her chair, trembling. You swear you can hear her moan. 'C-cummm...' She looks up at you again. Her groin area looks damp. 'E-excuse me. I-I need to go to the restroom,' she suddenly says, and she hurries off, the buzzing noise accompanying her on her way out.";
				else:
					LineBreak;
					say "     You resume your reading, doing your best to ignore the vibrating noise. Eventually, the student leaves in a hurry, the buzzing going away with [if FemaleList is banned or FemaleList is warded]him[else]her[end if].";
			-- 4:
				say "You make a round in the library, checking the various sections, when you hear a pair of virile grunts coming from the photocopy room.";
				say "     [bold type]Do you wish to investigate?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Check what the boys are up to.";
				say "     ([link]N[as]n[end link]) - Better leave these two guys alone.";
				if Player consents:
					LineBreak;
					say "     You find two male students busy around one of the copiers. One of them is an anteater, the other is a donkey. From where you stand, you can hear their chatter.";
					say "     'Hey, don't try to cheat.'";
					say "     'Why would I? Do we even need to-'";
					say "     'We made a bet: one week of blowjobs [italic type]with[roman type] swallowing, and I won't let you get off the hook.'";
					say "     'If you win.'";
					say "     The flash of the photocopier interrupts the teenagers, and a printed paper comes out a few seconds after. The donkey holds him in the air, and you can see that it is a photocopy of the anteater and the donkey's dicks, aligned side to side. The donkey's is bigger, just barely.";
					say "     'Heh, see?' the ass gloats. The anteater groans loudly, but nonetheless, the two share a small, loving kiss.";
					say "     'Well?'";
					say "     'Well what?'";
					say "     'Now that I'm hard, I think I'll start cashing on this bet.'";
					say "     The donkey's buddy groans even louder, then gets on his knees. You decide to give the two of them some privacy.";
				else:
					LineBreak;
					say "     You resume your perusing, doing your best to ignore the noises.";
			-- 5:
				CollegeLibraryBJ;

to CollegeLibraryBJ:
	say "You quickly check a nearby bookshelf and take the latest volume of your favorite magazine to the reading table for a read. Taking a seat, you then and find yourself in front of a horse. The equine looks absorbed by his lecture more than one would usually be: his head is lowered on the table, straight on his book, and he is strangely panting. But he is calm, so you open your magazine and start reading.";
	say "     You barely have the time to go past the few first articles that you hear the horse groan: 'Oh... Oh... Nnng...' You look up, puzzled. He is holding on to the table with both hands, eyes shut and gritting his teeth; and you hear faint gurgling noises. A little disturbed, you watch the equine student, now sweaty, catch his breath, readjust something with his pants, and stand up to leave. At the same moment, you feel a pat on your own groin.";
	say "     'Psst,' an undefined voice whispers from under the table. [bold type]'Want some stress relief?'[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure!";
	say "     ([link]N[as]n[end link]) - Thanks, but no thanks.";
	if Player consents:
		LineBreak;
		say "     'Okay. Make your bits accessible, and stay quiet, then. Don't wanna get busted by the librarian.' You oblige the unknown student. You are curious to know what he or she looks like, but the table prevents you from seeing anything.";
		if Player is herm:
			say "     You feel a tongue kiss your [CockName of Player] penis, and roll along his length. It quickly grows hard, and the mysterious stress reliever sucks its tip down their mouth. You contain your moans the best you can, while you feel the wet and warm embrace bob down on your dick, taking its [cock size desc of Player] length with surprising ease. Meanwhile, their hand plays with your clit, then slips inside your pussy and starts fingering you, progressively adding fingers until you cannot take anymore. You notice that some of your table neighbors look at you with the same puzzlement as you with the horse, and you look down on your magazine so hard that you do not realize that, for the last ten minutes, you did not have turn the pages a single time. The kinkiness of your exhibitionism brings you quickly over the edge, and you tense on your seat, as you send your load of cum directly into an inviting maw and squirts fem-cum somewhere, either on them or on the floor.";
		else if Player is male:
			say "     You feel a tongue kiss your [CockName of Player in lower case] penis, and roll along its length. It quickly grows hard, and the mysterious stress-reliever sucks the tip into their mouth. You contain your moans the best you can, while you feel the wet and warm embrace bob down on your dick, taking its [cock size desc of Player] length with surprising ease. Meanwhile, a hand fondles your balls, adding to the pleasure of the impromptu fellatio. You notice that some of your table neighbors look at you with the same puzzlement as you with the horse, and you look down on your magazine so hard that you do not realize that, for the last ten minutes, you did not have turn the pages a single time. The kinkiness of your exhibitionism brings you quickly over the edge, and you tense on your seat, muffling your grunts as you send your load of cum directly into an inviting maw.";
		else if Player is female:
			say "     You feel a tongue pass against your [cunt size desc of Player] pussy. Its owner is visibly experienced. First, they circle around your pleasure button, playing with it with the tip of their tongue, then sucking it with their mouths, and making you see stars by the same occasion. Then, the tongue slips between your labia, and wastes no time exploring inside. The tongue scouts, tests, and once it has found your g-spot, assaults him relentlessly until you are about to reach your limits, before suddenly stopping and going back to harassing your clit. You notice that some of your table neighbors look at you with the same puzzlement as you with the horse, and you look down on your magazine so hard that you do not realize that, for the last ten minutes, you did not have turn the pages a single time. The kinkiness of your exhibitionism brings you quickly over the edge, and you tense on your seat, muffling your grunts as the mysterious stress-reliever laps down every drop of femcum they can gather.";
		say "     While you catch your breath, the person under the table wipes your groin clean. 'Felt good, right? Come back anytime. I'm not the only one doing this, anyway.' You look around the reading room, and, effectively, notices several tense faces around the tables, and more-or-less-quiet moans. Once you hear the student crawl towards another visitor, you leave your seat, which is promptly taken by another person.";
	else:
		LineBreak;
		say "     'Aw? Well, suit yourself. Have a fun read.' You hear the person crawl away from you. You follow the noise to your rodent table neighbor, who looks down on the table puzzled, then goes to pull his pants down, blushing. Desperately trying to read in peace, you go elsewhere.";

to BrutusLibraryEvent:
	say "     You take advantage of being on campus to stop by the library and browse a few books. Next to you, Brutus is, funnily, quieter than usual. You turn your head, and realize that he has left, probably to wander the library on his own. You explore the alleys, letting the faint noises of sex guide you. After a couple of false leads, you eventually recognize his grunts, coming from the next alley. Judging by the nature of the noises, your demon must be busy [if DBCaptureQuestVar is 5]molesting[else]getting frisky with[end if] one of the students.";
	say "     [bold type]Should you peep on Brutus?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - You are curious. And worried. But mostly curious.";
	say "     ([link]N[as]n[end link]) - At least he is occupied. You should go back to your browsing.";
	if Player consents:
		LineBreak;
		if DBCaptureQuestVar is 5:
			say "     You stumble upon Brutus, busy plowing a [if FemaleList is not banned and FemaleList is not warded]male[else]female[end if] student from behind. The poor [if FemaleList is not banned and FemaleList is not warded]stallion[else]mare[end if]'s feet dangle over the ground, [if FemaleList is not banned and FemaleList is not warded]his[else]her[end if] legs balancing with each slam of the demon's package inside of [if FemaleList is not banned and FemaleList is not warded]his[else]her[end if]. Brutus holds [if FemaleList is not banned and FemaleList is not warded]his[else]her[end if] torso with one arm, while his free hand is pressed against [if FemaleList is not banned and FemaleList is not warded]his[else]her[end if] mouth, fingers slipped deep inside her muzzle, and muffling the loud neighs escaping from [if FemaleList is not banned and FemaleList is not warded]his[else]her[end if] mouth. 'Dumb slut,' you hear him mumble. 'Told you I'd win.' After an additional minute of thrusting, Brutus's grunts get louder, and he unloads his balls inside the student, [if FemaleList is not banned and FemaleList is not warded]his[else]her[end if] belly bulging out visibly from the sheer quantity of demonic sperm.";
			say "     Brutus pulls out, his claws twitching as if to drop [if FemaleList is not banned and FemaleList is not warded]him[else]her[end if] like a piece of trash - but the amulet around your neck hums a little and enforces the rule of not hurting anyone without cause that you set for him. With a slightly annoyed grunt, he sets the student on the ground slowly, [if FemaleList is not banned and FemaleList is not warded]his[else]her[end if] clothes in tatter. Waving him to the side, you inquire about what happened and Brutus shows a broad grin, nodding to the cum-dripping young equine. 'Bitch started to get bossy. 'Be quiet! This is a library!' Bla bla bla. Hah - told [if FemaleList is not banned and FemaleList is not warded]him[else]her[end if] I would fuck [if FemaleList is not banned and FemaleList is not warded]his ass[else]her pussy[end if] and no one would notice and come to help. And I did!' Shaking your head, you pull Brutus with you and get away from the scene as fast as you can.";
		else:
			say "     You stumble upon Brutus, busy plowing a [if FemaleList is not banned and FemaleList is not warded]male[else]female[end if] student from behind. He is gently holding the [if FemaleList is not banned and FemaleList is not warded]stallion[else]mare[end if] over the ground with both arms, while he pumps inside [if FemaleList is not banned and FemaleList is not warded]him[else]her[end if] in a slow, but deep rhythm. The two of them are locked in a deep kiss, partly in order to quell their moans of pleasure. 'We're winning,' Brutus grins. 'You- you're still on this?' the student answers between two stifled moans. The two go at it for another minute or so, until Brutus's grunts get louder, and he unloads his balls inside the student, [if FemaleList is not banned and FemaleList is not warded]his[else]her[end if] belly bulging out visibly from the sheer quantity of demonic sperm.";
			say "     Brutus pulls down the horse gently, letting [if FemaleList is not banned and FemaleList is not warded]him[else]her[end if] get [if FemaleList is not banned and FemaleList is not warded]his[else]her[end if] bearings back. You inquire about what happened. 'I was too noisy, and this [if FemaleList is not banned and FemaleList is not warded]guy[else]girl[end if] came and asked me to be quieter. Then [if FemaleList is not banned and FemaleList is not warded]he[else]she[end if] saw... all of me, and was interested. I bet [if FemaleList is not banned and FemaleList is not warded]him[else]her[end if] I could do [if FemaleList is not banned and FemaleList is not warded]him[else]her[end if] and still be silent enough. And I - we - won.' Smiling, you let Brutus part ways with the equine student and return to the entrance of the library.";
		now CollegeLibraryBrutusEncounter is 1;
	else:
		LineBreak;
		say "     You quickly walk away, and take the opportunity to think about expanding your own base's collection with the campus. Your constructive train of thoughts is interrupted when Brutus pats you on the shoulder. You look at his cum-covered body, and he returns [if DBCaptureQuestVar is 5]an unapologetic grin[else]a content shrug[end if].";

to RyouseiLibraryEvent:
	say "     You take advantage of being on campus to stop by the library and browse a few books. Next to you, Ryousei is, funnily, quieter than usual. You turn your head, and realize that he has left, probably to wander the library on his own. You explore the alleys, letting the faint noises of sex guide you. After a couple of false leads, you eventually recognize his meek protests, coming from the photocopy room.";
	say "     [bold type]Should you check on him?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - You should better check if the tiger is in trouble.";
	say "     ([link]N[as]n[end link]) - He is a big boy. He will manage.";
	if Player consents:
		LineBreak;
		say "     '[if FemaleList is not banned and FemaleList is not warded]Madam[else]Sir[end if], please go slower. I am... Aaah...'";
		say "     The door is locked, but you can peek through the keyhole. You see Ryousei, lying on his back, straddled by one of the library employees, a middle-aged [if FemaleList is not banned and FemaleList is not warded]vixen[else]fox[end if].";
		say "     'Tut, tut... No discussing a staff's order. Now, stay still, and be quieter. You would not want someone to catch us together, would you?'";
		say "     The both of them go like this for some time, with the poor Ryousei trying to stifle his moans of pleasure and doing poorly at it. He does not last long, as you can hear him grunt 'Ah! [if FemaleList is not banned and FemaleList is not warded]Madam[else]Sir[end if], I am gonna... gonna....' followed by a long series of lustful grunts and mrowls.";
		say "     The librarian caresses the tiger's soft fur, and eventually stands back up.";
		say "     'Well, that was a good way to relieve tension. You would not believe how horny hearing all these teenagers fuck in the library is.'";
		say "     Ryousei gets back on his feet as well: 'I, er, guess?' he comments, while he fetches his kimono. 'So, are we even?'";
		say "     'What do you mean?'";
		say "     'The fine? For making noise in this place?'";
		say "     'Oh, right. Sure, sure. Just, don't do it again. Or, do it again, and let's work this out together, hm?'";
		say "     You have barely the time to jump away from the door before Ryousei walks out from the room, his tail waving in the air behind him. It seems he has a new fan. You go back at the entrance of the library, and find him waiting for you. You ask him innocently why he looks disheveled all of a sudden. 'Well, this place of knowledge is so, er, admirable,' the feline begins while he readjusts his kimono. 'I wandered and... got lost. Shall we go soon? I do not wish to overstay my welcome in this place.' You silently sympathize with the tiger, as you see the librarian walk back to [if FemaleList is not banned and FemaleList is not warded]her[else]his[end if] desk and blow them a kiss from her chair.";
		now CollegeLibraryRyouseiEncounter is 1;
	else:
		say "     You walk back to the bookshelves, and, inspired by Ryousei, decide to check the Asian history section. Shortly after, the tiger is back at your sides, but looks disheveled. 'Well, this place of knowledge is so, er, admirable,' the feline replies your query, while he readjusts his kimono. 'I wandered and... got lost. Shall we go soon? I do not wish to overstay my welcome in this place.' You follow his look to the information desk, and notice a middle-aged vulpine employee ogling at the tiger, and licking [if FemaleList is not banned and FemaleList is not warded]her[else]his[end if] chops. Ryousei makes a beeline for the exit, almost losing you again.";

Table of GameEventIDs (continued)
Object	Name
Campus Patrol	"Campus Patrol"

Campus Patrol is a situation.
Campus Patrol is inactive.
The sarea of Campus Patrol is "Campus".

after going to College Walkway West while (Campus Patrol is active and Campus Patrol is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	try looking;
	CampusPatrolEvent;

after going to College Walkway East while (Campus Patrol is active and Campus Patrol is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	try looking;
	CampusPatrolEvent;

after going to College Campus Entrance while (Campus Patrol is active and Campus Patrol is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	try looking;
	CampusPatrolEvent;

after resolving a Campus Patrol:
	try looking;
	CampusPatrolEvent;

to CampusPatrolEvent:
	say "     As you walk along the pathway at the edge of the central green of Tenvale college campus, your gaze falls upon a fairly large anthro wolfhound, leaning against the side of a car in the adjoining parking lot. Shirtless and showing an impressive set of abs and pecs, the canine is dressed in nothing more but a pair of cargo pants and a spiked collar. He holds a bottle of whiskey in his paw-hand, taking a swig from time to time while he watches people walk past. Soon, a young golden retriever passes by his position, which is when the dog gives her a lewd gaze and calls out, 'Hey babe, you seem like just the right bitch for me! Come on, let's make some puppies right here and now!' And with that, he steps up to the young woman and forcefully grabs her by the arm. The books the young woman was carrying are sent flying as the transformed man starts to drag her off in the direction of the parking lot, ignoring her struggles to get free.";
	say "     The start of a shout for help is quelled by his other hand wrapping around her muzzle and clamping it shut (dropping the whiskey bottle in the process and leaving it to shatter on the asphalt of the parking lot). Before you can decide if you want to intervene or not, three strapping young Spartans in nothing more than sandals, red cloaks and helmets are already sprinting towards the scene. Within moments, they surround the kidnapper, the spear-points of their weapons an inch from his throat. Freezing in place, the wolfhound releases his grip on the girl and she wrenches herself free. 'Thanks guys,' she tells the spartan with a relieved expression, then slips out of the circle of combative young men and goes to collect her books. Meanwhile, the Spartans guide their captive to the edge of the campus at spear-point, then let him go with a dire warning not to return if he values his life... or his anal virginity.";
	now Campus Patrol is resolved;
	now LastCampusWalkin is turns;

Extra College Events ends here.
