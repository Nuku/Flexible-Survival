Version 4 of Zoo by Hellerhound begins here.
[Version 4.1 - MPreg content for cheetah loss]

Zoo Entrance is a room. It is fasttravel. "This area is the grand entrance to the zoo, with wrought iron gates and a fence surrounding the zoo grounds. A number of booths stand ready to accommodate large groups of visitors, although they're of course empty now. A large sign that looks as if it was just put up a short while ago says 'free admission'. You know from experience that the tall fence extends all the way around the whole zoo, so it's very likely that most of the animals (and transformed visitors) are still inside. The zoo's gift shop is west of your position, to the southwest lies a parking area and in the south, you can go back out into the city along the road leading here.".
the scent of Zoo Entrance is "The whole area smells strongly of animal scents, arousal and sex.".

Zoo Gates is a door. Zoo Gates is dangerous. The marea of Zoo Gates is "Outside". Zoo Gates is undescribed. Zoo Gates is south of Zoo Entrance. South of Zoo Gates is Outside Exploration.

Zoo Parking is a room. The description of Zoo Parking is "The zoo has a moderately sized parking space, complete with two spots for buses. There are still a fairly large number of cars on it, so your guess would be that the spreading nanite infection reached the zoo during the opening hours and most owners of those cars are still inside, in whichever form they now have...".  Zoo Parking is southwest of Zoo Entrance

Fence Path is a room. The description of Fence Path is "You're on a path running along the outer edge of the zoo here. It's quite nicely laid out, with a lot of grass and decorative plants on both sides. Behind the bushes, in the west, you see the metal border fence, tall and made of wrought iron with spikes on the top. To the north, the city wall looms up some small distance away. As you walk along the path, you see one of the bars has been cut out of the fence of the cheetah exhibit in the east. You could climb into the enclosure through the resulting hole...". Fence Path is north of Zoo entrance. east of Fence Path is cheetah habitat. north of Fence Path is Border Wall.
the scent of Fence Path is "The whole area smells strongly of animal scents, arousal and sex.".

Border Wall is a room. "The outer boundary of the zoo in the north is formed by a huge wall that extends far in both directions, enclosing most of the city. You remember reading about its construction a few years back and how most believed it to be a waste of taxpayer money. There were some rumors about the contract for it being awarded to the mayors cousin's construction company for a lot of money, though somehow there was never any official investigation. It is tall, made of yellow sandstone and seems to have survived the quake intact.".
the scent of Border Wall is "The whole area smells strongly of animal scents, arousal and sex.".

Cheetah Habitat is a room. "This is the home of cheetahs, a relatively large and open area with a few rocks and trees. From the looks of it, there are none out and about right now, though that might change at any moment. After all, there is a large cat flap in the side of the building forming the front of the enclosure. One of the panes of glass meant for dividing animals from visitors has been shattered into pieces, so you can just walk though the hole and exit the habitat and cheetah house through the doors in its south wall.[line break][cheetahrape]".
the scent of Cheetah Habitat is "A very strong scent of aroused cheetah hangs in the air here. Just standing here and breathing it in makes you excited and weak in the knees.".

to say cheetahrape:
	say "     [line break]";
	if a random chance of 1 in 3 succeeds and inafight is not 1:
		say "You look behind you and freeze, a large spotted cat prowling towards you. You stand there frozen as it comes and walks up, placing its paws on your shoulders and rolling you over. You remember from TV that the best thing to do in this situation is to remain still and hope it leaves you alone. It doesn't work.[line break][line break]The cat nuzzles up to your sex, nuzzling it and lapping at it. You feel slightly more calm as it seems to be just playing with you.";
		infect "Feral Cheetah";
		follow the turnpass rule;
	otherwise:
		say "It is eerily quiet in here. You should probably leave now.";

The Cheetah Doors is a door.
The description of Cheetah Doors is "A pair of double doors leads in and out of the cheetah house.".
understand "door" or "gate" as the Cheetah Doors.
south of Cheetah Doors is Entryway.
north of Cheetah Doors is Cheetah Habitat.

Entryway is a room. "This is the main entryway of the zoo, start of the main path winding its way between the animal enclosures. The path is comfortably wide, clearly meant for large groups of visitors and leads on to the northeast, its surface formed by well-laid cobblestones. Flanking it in the north is the cheetah exhibit, while there are public restrooms on the south side.". Entryway is east of Zoo Entrance.
the scent of Entryway is "The whole area smells strongly of animal scents, arousal and sex.".

Zoo Restrooms is a room. "You're in the zoo's large public restrooms. Looks like someone went on a rampage in here... the stall doors of all the toilets have been ripped off, and it seems like something used toilet-paper rolls as chew toys, spreading shredded paper all throughout the rooms. Some large muddy paw-prints at the entrance show that it must have been an animal of some kind.". Zoo Restrooms is south of Entryway.
the scent of Zoo Restrooms is "The air in the restrooms is thick with the musky scent of animal arousal and cum, with a light underlying note of urine. The heavy scents must be laden with pheromones or something, as you feel the urge to find a beastly lover rise in you.".

Main Path 1 is a room. "You're on the cobbled main path of the zoo, in between many different exhibits. In this section, there's the alligator enclosure in the north and a bird house with an enormous web canopy connected to it in the south. Coming from the entrance in the southwest, the path continues to the east, where it leads deeper into the zoo.". Main Path 1 is northeast of entryway.
the scent of Main Path 1 is "The whole area smells strongly of animal scents, arousal and sex. The scent of the bird house to the south can faintly be smelled as well.".

Main Path 2 is a room. "You're on the cobbled main path of the zoo, in between many different exhibits. In this section, there's the snake house in the north, and in the south you can see the enormous web canopy of the bird enclosure arching over a moderately large forest area. If you want to go in and check it out, the bird house forming the entry is to the west of you. Further east, the path widens onto a small plaza.". Main Path 2 is east of Main Path 1.
the scent of Main Path 2 is "The whole area smells strongly of animal scents, arousal and sex. The scent of the bird house to the south can faintly be smelled as well.".

Zoo Rest Area is a room. "This plaza in the midst of the zoo was meant to serve as a rest area for the visitors. Surrounding a bronze statue of a tiger in the middle, there are benches, several picnic tables and a number of food stands - thoroughly looted now, and one even has been completely flattened. Even those stands that sold non-edible goods were ransacked, the shreds of white fluff scattered about them attesting to the gruesome end of quite a few stuffed toys. Seeing this scene of devastation reminds you strongly that this isn't a safe and peaceful place anymore. Clearly, there are wild beasts out and roaming the area and you should take care if you want to explore any of the many paths leading off in all directions. It might just be a good idea to go back west towards to the entrance.". Zoo Rest Area is east of Main Path 2.

Zoo Paths 1 is a door. Zoo Paths 1 is dangerous. The marea of Zoo Paths 1 is "Zoo". Zoo Paths 1 is undescribed.
Zoo Paths 2 is a door. Zoo Paths 2 is dangerous. The marea of Zoo Paths 2 is "Zoo". Zoo Paths 2 is undescribed.
Zoo Paths 3 is a door. Zoo Paths 3 is dangerous. The marea of Zoo Paths 3 is "Zoo". Zoo Paths 3 is undescribed.
Zoo Paths 4 is a door. Zoo Paths 4 is dangerous. The marea of Zoo Paths 4 is "Zoo". Zoo Paths 4 is undescribed.
Zoo Paths 5 is a door. Zoo Paths 5 is dangerous. The marea of Zoo Paths 5 is "Zoo". Zoo Paths 5 is undescribed.
East of Zoo Paths 1 is Zoo Exploration. Northeast of Zoo Paths 2 is Zoo Exploration. North of Zoo Paths 3 is Zoo Exploration. Southeast of Zoo Paths 4 is Zoo Exploration. South of Zoo Paths 5 is Zoo Exploration.
Zoo Paths 1 is east of Zoo Rest Area. Zoo Paths 2 is northeast of Zoo Rest Area. Zoo Paths 3 is north of Zoo Rest Area. Zoo Paths 4 is southeast of Zoo Rest Area. Zoo Paths 5 is south of Zoo Rest Area.

Table of Game Objects(continued)
name	desc	weight	object
"red herring"	"The only plushie that survived the destruction of its compatriots in around the zoo rest area. It is wonderfully soft with bright red fur, green plastic eye-buttons and a goofy grin stitched on. Why would the city zoo have fish toys? It doesn't even have an aquarium... Strange, maybe this means something."	1	red herring

the scent of red herring is "The plushie inexplicably smells of licorice.".

red herring is a grab object. red herring is not temporary.
the usedesc of red herring is "[HerringUse]";

to say HerringUse:
	say "     Stroking over the red plush toy, you relax a bit, though your mind keeps wondering if you should use it for something specific, maybe give it to someone?";

the invent of Zoo Rest Area is {"red herring"}.

Bird House is a room. "You're in the bird house, which contains informative plaques and signs explaining lots of facts about all the feathered creatures. Then there is a door to the back area of the zookeepers caring for the birds, which you assume contains supplies and all kinds of stuff - sadly, it's locked, and with a pretty sturdy lock too. And finally, there is a kind of airlock, consisting of two doors and a bit of hallway in between that leads into the bird enclosure itself. Back north is the exit to the main zoo pathway.". Bird House is south of Main Path 1.
Bird Enclosure is a room. "This bird enclosure isn't so much a cage as it is a small piece of forest under an enormous web-canopy, held up by very long steel struts and quite a few strands of steel cables. There's nothing between the birds and the walkways through the enclosure - which might not be such a good thing these days, now that you think of it. Who knows what creatures now populate this area and how dangerous they are.[line break][birdrape]".
the scent of Bird House is "This whole area smells strongly of birds.".
the scent of Bird Enclosure is "This whole area smells strongly of birds.".

The Bird Doors is a door. The description of Bird Doors is "Two doors with a short corridor in between make sure that none of the birds leave their enclosure. Or they did, in the time before there were intelligent bird-creatures in here. They might still pose a problem for some inhabitants of the habitat, but many will no doubt be able to go in and out here.".
understand "door" or "gate" or "doors" as the Bird doors.
Outside of Bird Doors is Bird House.
Inside of Bird Doors is the Bird Enclosure.

to say birdrape:
	say "     [line break]";
	if a random chance of one in three succeeds:
		if a random chance of 1 in 2 succeeds and inafight is not 1:
			say "A blue bird with a white belly comes swooping down and pecks you on the head. You have no idea what you did to annoy it, but the spot it hit hurts![line break]";
			infect "Hermaphrodite Gryphon";
		otherwise:
			say "A light brown bird more commonly known as a wren flies over and pulls up, headed to the ceiling in from of you. As it does this, it lets loose and hits you full in the chest with a big splatter of bird poop.[line break]Disgusting![line break]";
			infect "Harpy";
	otherwise:
		say "There is an ominous feeling about here, and you feel real uncomfortable.";

Snake house is a room. "This house has quite a number of terrariums set into the walls of room after room. They're all empty, which might just be the result of having their glass fronts smashed in. No evidence remains who did this or why, but you can make out where the snakes went from the tracks through all the little glass fragments on the floor. They lead outside, ending at a nearby sewer grate that has been bent and warped, creating an opening big enough to slither through, though not for you to follow. Looks like any snakes are now in the sewers.".
Snake house is north of Main Path 2.
the scent of Snake House is "The whole area smells strongly of snakes.".

Gator Pit is a room. "This enclosure held alligators once, but it's empty now. Behind a shattered glass wall, there is a pit formed from artificial rock that clearly held water once. In the middle of that is... a footprint? Almost looks like a giant stepped on it - and broke right through, his weight collapsing a section of the alligators['] water pit into the sewer tunnel not far below. Which might just be where the alligators went. The way into the tunnels is still open, if you want to dare climbing down over the rubble and explore the sewers. Although it looks dangerous down there...".
Gator Pit is north of Main Path 1.
the scent of Gator Pit is "This enclosure smells strongly of the gators who once lived here. The scents rising from the sewers make you pinch your nose shut.".

Sewer Exploration is a door. Sewer Exploration is dangerous. Sewer Exploration is undescribed.
Down of Gator Pit is Sewer Exploration.
Down of Sewer Exploration is Sewers A7.
The marea of Sewer Exploration is "Mall". The Sewer Exploration is open. The description of Sewer Exploration is "The black hole of the sewer tunnel is accessible through climbing down over the rubble in the gator enclosure. Looks dangerous down there, but nothing ventured, nothing gained, right?". understand "tunnel" and "hole" as the Sewer Exploration.

[Angie and the Zoo Giftshop have been moved to the Angie file in Sarokcat's folder]

Section 1 - Cheetah monster

cheetahmate is a number that varies.
cheetah_mpreg is a truth state that varies.

when play begins:
	add { "Feral Cheetah" } to infections of guy;
	add { "Feral Cheetah" } to infections of furry;

To say cheetah defeat:
	if cheetahmate is 0:
		increase the libido of the player by 20;
		say "     You notice an enticing scent in the air around the fallen cheetah that's starting to arouse you quite a bit. The spotted male's body starts looking better and better to you. If you don't want to succumb to the heady pheromone-laden musk, you really should go - NOW! Do you do so?";
		if player consents:
			say "     Shaking off the effect of the cheetah's scent, you walk away, taking deep breaths of fresh air.";
		otherwise:
			say "     Before much longer, you just can't hold back anymore and move forward, flipping the lithe feline's body over.";
			say "     [CheetahSex1]";
			infect "Feral Cheetah";
	otherwise if cheetahmate is 1:
		say "You walk over to your mate, once again proving that you are stronger, and proceed to suck him off, the warm flesh of his cock filling your mouth as the little barbs run along your tongue. It doesn't take long for him to orgasm, and you swallow all of his wonderful seed.";
		now cheetahmate is 2;
		infect "Feral Cheetah";
	otherwise if cheetahmate is 2:
		if the cockname of the player is "Feral Cheetah" and cocks of player is 0 and cunts of player > 0:
			say "You turn yourself over, showing your ready cunt to your mate, and he pounces, driving himself home in one quick, fluid motion. He pounds at you, his balls slapping your ass as you thrust back, trying to get him as deep as you can. A haze of pleasure begins to cloud your eyes, and by the time your climax comes, you are no longer in conscious control. The feeling of his warm seed filling your insides is welcome, and his little barbs tickle as his cock pulses.[impregchance]";
			say "His cock slides out with much pleasure and dripping of seed, and you lick-kiss him in the cheek for doing you suck a service.";
		otherwise:
			say "You kiss him, and he bends his head to your crotch, noting the abnormal features.";
			say "He licks your crotch sadly, and you share his sadness, hoping that soon there will be something there to be remarked upon.";
		infect "Feral Cheetah";

to say CheetahSex1:
	if cunts of player > 0:  [female + herm]
		say "     The sight of the male cat's member causes your cunt to throb, and you move forward excitedly, sitting on the cheetah's furred underside as he moans in pleasant surprise. You rub his cock, wondering at its smooth feel in your hands, until it grows out, a bit smaller than you would have expected. You lean back, spreading your legs to take him inside, and slide forward. At the feeling of your cunt enclosing his member, the cheetah grasps onto your back, and lurches, driving his shaft home. You thrust against him as he does so, soon finding a rhythm of fucking which makes him hit your most sensitive spots perfectly, the two of you driving each other to higher and higher arousal. Before much longer, you climax, and your wet juices soak your spotted partner's, leaving a dark patch right above where his cock is. Basking in the afterglow, you realize with sadness that he hasn't come yet, and pull out, turning and taking his feline shaft into your hands.";
		say "     [line break]";
		say "     You hear, in a weak voice: 'Do you choose me? Will you be my mate?'";
		if the player consents:
			say "     [line break]";
			say "     Your new mate's mouth bends into a smile and he lies back, enjoying your touch as you jerk him off, soon spraying white cum all over his chest fur. Then he rolls back over and stands up, licking your face affectionately before whispering 'See you soon, love.' and stalking off.";
			now cheetahmate is 1;
		otherwise:
			say "     [line break]";
			say "     Your denial saddens him, and he rolls over, shrugging off your touch. You decide to leave now, before the displeased cheetah catches his breath and you must fight again.";
	otherwise:  [male + neuter]
		say "     [line break]";
		if anallevel is 1:  [less anal]
			say "     The sight of it's male member puts you off, and you leave the poor beast there, alone.";
[		otherwise if player is mpreg_able:
			say "***";		]
		otherwise:  [normal or raised anal level ]
			if cocks of player > 0:  [male]
				say "     The sight of the male cat's lithe and muscular body and his manhood makes your own cock throb in anticipation. Moving forward excitedly, you run a hand through the soft fuzz on the cheetah's furred underside and make him moan in pleasant surprise. You rub his cock, wondering at its smooth feel in your hands, until it grows out, a bit smaller than you would have expected. Leaning forward, you proceed to suck him off, the warm flesh of his cock filling your mouth as the little barbs on it run along your tongue.";
				say "     Now that you got this big kitty all wound up and ready for action - what do you want to do with him? Will you mount his cock (Y) or sink your own into his undoubtedly tight ass (N)? ";
				if player consents:  [ride him]
					say "     [line break]";
					say "     With your cougar's manhood already good and wet, you move to kneel over him, holding the spotted feline's erection up as you lower yourself until it touches your pucker. The male cat gives a surprised rumble as you keep going, impaling yourself on his hard shaft and moaning at the sensations of the little barbs on it rubbing your inner passage.";
					say "     Unfamiliar as he might be with anal sex, the feeling of your tight hole enclosing his member wakes primal urges within the cheetah and he grasps onto your back, lurching upwards with his hips to drive his shaft home. You thrust against him as he does so, soon finding a rhythm of fucking which makes him hit your prostate perfectly, the two of you driving each other to higher and higher arousal. Before much longer, you climax, your [cock of player] cock blasting out a [cum load size of player] load all over the chest of the cougar. The twitching and flexing of your inner muscles as you do so is enough to drive your spotted partner over the edge too, making him grunt deeply as spurt after spurt of cougar cum blast deep into your insides. Basking in the afterglow, you rub the cougar's fur a moment, then pull off his shaft, making some of his seed leak out of you and drip down on the fur of his crotch.[mimpregchance]";
					say "     [line break]";
					say "     Rolling back over and standing back up, the cougar gives you a strange look, as if he can't believe he fucked your ass and enjoyed it. 'I - er - got to go.' comes from lips that aren't too well shaped for human words, then the large cat dashes off without allowing for a reply.";
				otherwise:  [fuck him]
					say "     [line break]";
					say "     With one hand still jerking on the big feline's cock, you let the other wander further down until it reaches his pucker. After gently brushing over it and softly massaging the muscle for a while to try to get him relaxed, you gather some spit in your hand and smear it on his hole, then start pushing a finger inside. With an alarmed growl, the cougar jerks his upper body up a bit, to be held down as you move your other hand to his chest. Before he can do much more than that or start to fight you, your probing finger finds his prostate and rubs against it, making the big cat croon in lust and let his head sink back down on the ground again.";
					say "     Going at it slowly, you show your feline novice at anal sex a good time with first one, then two fingers until he's loudly purring and completely relaxed in an aroused haze. At that point, you decide that it's time to get your own manhood into action. Pulling your fingers out of the cougar's hole, you watch it flex closed again, then set the tip of your [cock of player] manhood against the cougar's pucker and move forward until it yields to your pressure and you slide into the warm and tight embrace of his body. You slide into the panting cougar's ass until your balls touch the base of his tail, then start pulling back and thrusting back in, and soon you're pounding in and out of the spotted kitty's tight hole.";
					say "     [WaitLineBreak]";
					say "     Confronted with all kinds of new sensations, it doesn't take all that long until you fucking him drives the cougar over the edge and he starts to cum, squirting long strings of cum from his spined cock to land all over his furred chest. The twitches and convulsions of each shot run through his whole body, including the muscles in his ass, making an already quite tight hole grip and squeeze your shaft until you join him in orgasm, with a full load of your seed being blasted into this sexy furball's butt. Breathing heavily, you bask a while in the afterglow and rub the cougar's fur a moment, then pull out of his hole and watch it flex closed before too much of your cum can run out of it.";
					say "     [line break]";
					say "     Rolling back over and standing back up, the cougar gives you a strange look, as if he can't believe you fucked his ass and he enjoyed it. 'I - er - got to go.' comes from lips that aren't too well shaped for human words, then the large cat dashes off without allowing for a reply.";
			otherwise:   [neuter]
				say "     The sight of the male cat's member makes your pucker twitch in anticipation, and you move forward excitedly, running a hand through the soft fuzz on the cheetah's furred underside and making him moan in pleasant surprise. You rub his cock, wondering at its smooth feel in your hands, until it grows out, a bit smaller than you would have expected. Leaning forward, you proceed to suck him off, the warm flesh of his cock filling your mouth as the little barbs on it run along your tongue. Then, when his manhood is good and wet, you move to kneel over him, holding the spotted feline's erection up as you lower yourself until it touches your pucker. The male cat gives a surprised rumble as you keep going, impaling yourself on his hard shaft and moaning at the sensations of the little barbs on it rubbing your inner passage.";
				say "     Unfamiliar as he might be with anal sex, the feeling of your tight hole enclosing his member wakes primal urges within the cheetah and he grasps onto your back, lurching upwards with his hips to drive his shaft home. You thrust against him as he does so, soon finding a rhythm of fucking which makes him hit your prostate perfectly, the two of you driving each other to higher and higher arousal. Before much longer, you climax, a tingly feeling of satisfaction spreading through your whole body. The twitching and flexing of your inner muscles as you do so is enough to drive your spotted partner over the edge too, making him grunt deeply as spurt after spurt of cougar cum blast deep into your insides. Basking in the afterglow, you rub the cougar's fur a moment, then pull off his shaft, making some of his seed leak out of you and drip down on the fur of his crotch.[mimpregchance]";
				say "     [line break]";
				say "     Rolling back over and standing back up, the cougar gives you a strange look, as if he can't believe he fucked your ass and enjoyed it. 'I - er - got to go.' comes from lips that aren't too well shaped for human words, then the large cat dashes off without allowing for a reply.";

To say cheetah victory:
	say "     The cheetah growls to affirm his dominance and pushes you over on all fours. Strong paw-hands quickly pull off your gear and clothes, leaving you naked to be sniffed and inspected by the big cat. Something about him, maybe his pleasantly musky smell wakes a very submissive side in you and you get incredibly aroused at the victorious cougar's behaviour.";
	if cheetahmate is 0:
		if cunts of player > 0:
			say "     You feel the breath through his nose against your folds as the spotted feline sniffs your pussy and purrumbles in approval at a female ready and waiting for him to mount. And you don't have to wait for long - almost immediately, you can feel his soft fur against your back as he mounts you, his hard shaft poking against your butt. After a few probing thrusts with his hips he finds your pussy, then plunges in his whole cock. Moaning, you rock back against him as he does so, soon finding a rhythm of fucking which makes him hit your most sensitive spots perfectly, the two of you driving each other to higher and higher arousal. Before much longer, you climax, your copious femcum running down the inside of your legs while your spotted partner still thrusts in and out until he too joins you in orgasm a moment later. With a pleased purr, he blasts spurt after spurt of fertile seed deep into your pussy, then pulls out and pads off to find another female.";
		otherwise if player is mpreg_able:
			if cheetah_mpreg is false:
				say "     You feel the breath through his nose against your balls as the spotted feline sniffs your crotch, then catches a whiff of something intriguing a little higher up.  Catching the scent of your hidden womb, he gives a confused sound and takes in another noseful.  As if drawn by the scent beyond his control, the cheetah gives your pucker several licks, his raspy tongue playing across your crinkled hole in search of that arousing smell.  He starts to purr and rumble, becoming captivated of your unusual nature, which he shows by mounting you.";
			otherwise:
				say "     You feel his breath against your backside again, the spotted feline checking your scent again.  Catching a whiff of your hidden womb again, his nose is drawn to your pucker and his tongue inexorably to it.  He gives it several licks, his raspy tongue playing across your crinkled hole.  He starts to purr and rumble as he's captivated once again by that arousing smell and quickly mounts you.";
			say "     The feline's spiny tip presses against your male breed-hole and pushes into your rectum.  You moan and push back against him as he does so, your body responding with a growing need as those stimulating barbs send shivers of pleasure through you.  His pace is a little rough and uncertain, still growing used to fucking a tight ass instead of a pussy.  But from the loud rumbles you feel from his chest vibrating against your back, you can tell he's still enjoying himself greatly[if cocks of player > 0].  You can only take his feral pounding for so long before your prostate thrums and your balls boil over in gooey blasts of semen shooting from your cock.  Your anus clenches and quivers around that pulsing rod of his as you orgasm[otherwise].  Your anus clenches and quivers around that pulsing rod, milking at it as your body trembles with lustful need[end if].  This spurs the cheetah to drive his feline cock deep inside you and unleash spurt after virile spurt of his animal seed into you.  After draining himself[if cheetah_mpreg is false], he hops off of you quickly and backpedals several steps before rushing off[otherwise], he dismounts from you slowly.  He seems a little confused by his reaction to you, but gives you a soft nuzzle before padding off in search of a more feminine lover[end if].";
			now cheetah_mpreg is true;
		otherwise if cocks of player > 0:
			say "     You feel the breath through his nose against your balls as the cougar sniffs your crotch, then gives a displeased rumble at finding a weaker male in his territory. Seems he wants to show you a lesson next, as he mounts you from behind, pushing you down as he humps against you. He doesn't fuck your ass or anything, just treats you like a female to be fucked and rubs his hard shaft against your crotch, bumping your balls with the spined tip. Before long, he orgasms, blasting away with spurt after spurt of cum to splash wetly against your crotch. Maybe he's hoping this will infect you, making you transform you into a female sooner or later. No matter what, having gotten his rocks off, the cougar pads off to find another female.";
		otherwise:
			say "     You feel the breath through his nose against your featureless crotch as the cougar sniffs you, then gives a displeased rumble at finding a genderless being in his territory. Seems he wants to show you a lesson next, as he mounts you from behind, pushing you down as he humps against you. He doesn't fuck your ass or anything, just treats you like a female to be fucked and rubs his hard shaft against your crotch. Before long, he orgasms, blasting away with spurt after spurt of cum to splash wetly against your skin. Maybe he's hoping this will infect you, making you transform you into a female sooner or later. No matter what, having gotten his rocks off, the cougar pads off to find another female.";
	otherwise if cheetahmate > 0:
		if cunts of player > 0:
			say "     Giving a pleased rumble that he's gotten the upper hand over his mate this time, your handsome cougar pounces, driving himself home into you with one quick, fluid motion. He pounds at you, his balls slapping your ass as you thrust back, trying to get him as deep as you can. A haze of pleasure begins to cloud your eyes, and by the time your climax comes, you are no longer in conscious control. The feeling of his warm seed filling your insides is welcome, and his little barbs tickle as his cock pulses.[impregchance]";
			say "His cock slides out with much pleasure and dripping of seed, and you lick-kiss him in the cheek for doing you suck a service.";
		otherwise if player is mpreg_able:
			if cheetah_mpreg is false:
				say "     Giving a pleased rumble that he's gotten the upper hand over his mate this time, your handsome cheetah gives you a kiss.  Though as he bends his head to your crotch and notices your lack of feminine features there, he gives a saddened sigh.  'What happened to you, my love?'  He goes to lick your crotch sadly, but a tickle of your scent draws his tongue to continue back to your anus.  Having caught the scent of your hidden womb, he gives a confused sound and taking another noseful.  The cheetah gives your pucker several more licks, his raspy tongue playing across your crinkled hole in search of that arousing smell.  He starts to purr and rumble, becoming captivated of your unusual nature, which he shows by mounting you.";
			otherwise:
				say "     Giving a pleased rumble that he's gotten the upper hand over his mate this time, your handsome cheetah gives you a kiss.  As he bends his head to your crotch and notices your continued lack of feminine features there, he gives a saddened sigh.  '[one of]What happened to you, my love[or]How can this be, my mate[or]What have you done, my love[at random]?'  He goes to lick your crotch sadly, but is drawn in once again by the scent of your hidden womb.  His nose is drawn to your pucker and his tongue inexorably follows to it.  The cheetah gives your pucker several more licks, his raspy tongue playing across your crinkled hole in search of that arousing smell.  He starts to purr and rumble as he's captivated by that arousing smell once again and quickly mounts you.";
			say "     The feline's spiny tip presses against your male breed-hole and pushes into your rectum.  You moan and push back against him as he does so, your body responding with a growing need as those stimulating barbs send shivers of pleasure through you.  His pace is a little rough and uncertain, still growing used to fucking a tight ass instead of a pussy.  But from the loud rumbles you feel from his chest vibrating against your back, you can tell he's still enjoying himself greatly[if cocks of player > 0].  You can only take his feral pounding for so long before your prostate thrums and your balls boil over in gooey blasts of semen shooting from your cock.  Your anus clenches and quivers around that pulsing rod of his as you orgasm[otherwise].  Your anus clenches and quivers around that pulsing rod, milking at it as your body trembles with lustful need[end if].  This spurs the cheetah to drive his feline cock deep inside you and unleash spurt after virile spurt of his animal seed into you.  After draining himself, he dismounts from you slowly.  He seems a little confused by his reaction to you, but gives you a soft nuzzle before padding off in search of a needy female to clear his head.";
			now cheetah_mpreg is true;
		otherwise:
			say "     Giving a pleased rumble that he's gotten the upper hand over his mate this time, your handsome cougar gives you a kiss. Though as he bends his head to your crotch and notices the abnormal features you currently possess there, he forms the words 'What happened to you, my love?' He licks your crotch sadly, and you share his sadness, hoping that soon there will be something more natural for him to enjoy there.";
	infect "Feral Cheetah";


Table of infection heat(continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
"Feral Cheetah"	8	8	"You gasp as pleasure overwhelms your sight and hearing, the smell of a female in heat becoming your only focus. As you slowly come out of it, you realize your cunt is dripping with readiness, and the smell is still there.[cheetahreset]"	"swollen and dripping Cheetah twat "	--	--	"[cheetahheat]"	true	true	"You gasp as pleasure overwhelms your sight and hearing, the scent of a female in heat becoming your only focus.  As you slowly come out of it, you realize that the scent is wafting from you despite being [if cocks of player > 0]male[otherwise]neuter[end if].  Your anus quivers and relaxes, readying itself for the mating your infected body desires.[cheetahreset]"

lastcheetahturns is a number that varies.

to say cheetahreset:
	now lastcheetahturns is 24;

to say cheetahheat:
	decrease lastcheetahturns by 3;
	if lastcheetahturns < 3:
		say "Your nose begins to overwhelm you.";
		if libido of player is less than 96, increase libido of player by 5;
		if (libido of player is greater than 90) and (location of player is fasttravel ) and (slutfucked is greater than 8):
			say "A waft on the breeze catches your nose, your head snapping around as the need between your legs throbs.  Unable to control your lust you strike out in the direction of and immediately upon seeing the infected monster that you scented drop onto you immediately submit, offering yourself freely.";
			say "[cheetahreset]";
			let hmonlist be a list of numbers;
			repeat with X running from 1 to number of filled rows in table of random critters:	[ Loop through and select all monsters that appear "outside" ]
				choose row X from the table of random critters;
				if there is no area entry, next;
				if area entry is "Zoo":
					add X to hmonlist;
			sort hmonlist in random order;
			repeat with Z running through hmonlist:		[Pick one of the monsters at random]
				now monster is Z;
				break;
			choose row monster from the table of random critters;
			follow the cock descr rule;
			follow the breast descr rule;
			say "[victory entry]";
			infect;
			decrease the score by 5;
			increase the morale of the player by 3;

Section 2 - Infection Details

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Feral Cheetah"; [Name of your new Monster]
	now attack entry is "[one of]bites with sharp fangs, drawing blood[or]slashes at you, opening large wounds [or]leaps over you, slashing as it is flying[at random]!"; [Text used when the monster makes an Attack]
	now defeated entry is "[cheetah defeat]";
	now victory entry is "[cheetah victory]";
	now desc entry is "[if cheetahmate is 0]A male cheetah stands in your way, quick and lithe, with spotted fur and sharp claws. He looks like a fearsome opponent.[otherwise if cheetahmate is 1]Your confessed mate is in front of you, looking at you with lust in his eyes. He is a fearsome opponent, and hoping that you will submit to pleasure.[otherwise if cheetahmate is 2]Your glorious mate is ahead, and you can barely control the desire to submit to his pleasures.[end if]";[ Description of the creature when you encounter it.]
	now face entry is "feline, with an actively twitching nose";[ Face description, format as the text "Your face is (your text)"]
	now body entry is "lithe and strong, with a shape for speed and muscles for true strength";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "smooth spotted fur over your";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "Your tail is decently sized, spotted, and whipping back and forth.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "tan spined, and sheathed cheetah ";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it grows longer, the front narrowing, and both eyes looking ahead. Your pupils dilate oddly, and you realize they have become slitted"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your spine bends, shoving you onto all fours as the rest of your body changes shape, leaving you with a lithe, rippling body"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "it grows spotted fur"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it grows more compact and muscles grow and shift beneath the surface, perfect for running. A furry, lithe tail sprouts out a second later "; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "spines grow out, and a furry sheath covers the bottom"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 16;
	now dex entry is 26;
	now sta entry is 24;
	now per entry is 19;
	now int entry is 18;
	now cha entry is 12;
	now sex entry is "Female";              [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 90;                     [ How many HP has the monster got? ]
	now lev entry is 18;                    [ Level of the Monster, you get this much hp if you win, or this much hp halved if you lose ]
	now wdam entry is 18;                   [ Amount of Damage monster Does when attacking.]
	now area entry is "Zoo";                [ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;                   [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;             [ Length infection will make cock grow to if cocks]
	now cock width entry is 0;              [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 4;                 [ Number of Breasts infection will give you. ]
	now breast size entry is 3;             [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;        [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;                   [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;             [ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 4;              [ Width of female sex  infection will try and give you ]
	now libido entry is 20;                 [ Amount player Libido will go up if defeated ]
	now loot entry is "dirty water";        [ Loot monster drops, ]
	now lootchance entry is 0;              [ Chance of loot dropping 0-100 ]
	now scale entry is 2;                   [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]animalistic[or]sleek[at random]";
	now type entry is "feline";             [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;               [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;           [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;      [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;          [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";       [ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Ending

when play ends:
	if the bodyname of the player is "Feral Cheetah":
		if cheetahmate is 0:
			if the humanity of the player is less than 10:
				if the cunts of the player > 0:
					say "You join the growing band of converts and soon take your place as the pack leader's proud mate. Your group manages to keep away the human forces with sheer speed and cunning, maintaining control of the zoo and some of the surrounding area even as the rest of the city is pacified.";
				otherwise:
					say "You form the cheetahs of the zoo into a large, spotted band of conquerors and hold the humans off with sheer speed and cunning. One day, as you oversee and participate in the defense, you smell someone sweet, and entice her to choose you as her mate. While the military manages to pacify the rest of the city, the zoo and its surrounding area remains firmly under your pack's control, abandoned as too difficult to reclaim.";
			otherwise:
				if the cunts of the player > 0:
					say "You choose a mate from the transformed and after escaping those hunting for you in the city bear him many children over the following years. Time goes by quickly with the sweet smell of freedom, love, and your mate to accompany you, until eventually humankind returns its grasp on the world and you prepare to teach them a lesson...";
				otherwise:
					say "You wait Main Path 1, and, in the few days that the humans take to recapture and purify the city, a cheetah chooses you as her mate. The two of you flee the city together, stopping only when you are both on a remote plain, grass stretching as far as the eye can see. She bears you many children in your wild home, and the sweet smell of freedom, love, and your mate carry you outwards.";
		otherwise if cheetahmate > 0 and cheetah_mpreg is true and cunts of player is 0:
			if humanity of player < 10:
				say "     You are drawn back to the zoo by the images of your cheetah lover imprinted in your confused mind.  Finding him, you submit yourself to being mounted by the lustful feline.  After a few more wild romps with your stud cat, his trepidation about taking your ass to mate you fades.  By the time your belly grows round with his offspring, he's become a passionate lover eager to pound or play with your ass as much as you desire.  And being a wild, lustful feline yourself, you desire it very, very often.";
			otherwise:
				say "     Rescued by the military, your semi-animal state leaves you with difficulty dealing with society.  It is sometimes hard to have a normal life when you feel more natural moving on all fours.  Still, you manage to figure out some ways to get by.  Your mind is drawn back to the cheetah you'd bonded with in the city.  It's usually an occasional thought from time to time, especially when you're alone, but it is especially strong when you feel a heated need to mate within your hidden womb.";
				say "     During one particularly strong heat, you drop everything, make some quick preparations and cross into the fallen city once again.  While several of creatures you see, especially the feline ones, are quite alluring and make you long to let them douse your heat with their seed, you eschew them and press onwards to the zoo.  Once there, it doesn't take long before you're found by your mate.  Drawn to the scent of your heat even as you are to his masculine musk, you are reunited.  And your reunion is celebrated by a wild romp of feral sex.  Having long missed you, your cheetah mate doesn't hold back because of your gender any longer and breeds you over and over again.";
				say "     Convincing him to leave the zoo and the city takes some work and making your escape from it is a harrowing adventure, but eventually you and your mate make it back to the safety of your home.  Given his feral nature, he does not socialize well, but is fine enough within the confines of your home.  Having gotten over his trepidation about taking your ass to mate you, he proves to be a passionate lover, eager to pound or play with your ass as much as you desire.  Soon your belly grows round with his offspring and he only becomes more lustful, much to your delight.";
		otherwise if cheetahmate is 1:
			say "You rejoin your mate after the rescue, pretending to be fully cured, even though your mind is still altered. He gives you children, and you both surreptitiously move to a Savannah cottage, where you can live your lives in peace and prosperity.";
		otherwise if cheetahmate is 2:
			say "You and your mate continue living together, determined to replace all that the cheetahs have lost to the humans, working hard to buy the lands the cheetahs once occupied, and filling them with your spawn.";

The Zoo ends here.
