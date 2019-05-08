Version 1 of Malik by Wahn begins here.

MaliksRandomCaptive is a number that varies. [@Tag:NotSaved]

Table of GameCharacterIDs (continued)
object	name
Malik	"Malik"

Malik is a man.
Malik is in NPC Nexus. [not currently placed in the game]
[physical details as of game start]
ScaleValue of Malik is 3. [human sized]
Cock Count of Malik is 1.
Cock Length of Malik is 13.
Ball Size of Malik is 8.
Ball Count of Malik is 2.
Cunt Count of Malik is 0.
Cunt Length of Malik is 0.
Cunt Tightness of Malik is 0.
Nipple Count of Malik is 2. [2 nipples]
Breast Size of Malik is 0.
[Basic Interaction states as of game start]
PlayerMet of Malik is true.
PlayerRomanced of Malik is false.
PlayerFriended of Malik is false.
PlayerControlled of Malik is false.
PlayerFucked of Malik is false.
OralVirgin of Malik is true.
Virgin of Malik is true.
AnalVirgin of Malik is true.
PenileVirgin of Malik is false.
SexuallyExperienced of Malik is false.
The MainInfection of Malik is "Orc Breeder".
The description of Malik is "[MalikDesc]".
The conversation of Malik is { "Mew!" }.

instead of sniffing Malik:
	say "     Malik has got an attractive male scent.";

to say MalikDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Malik] <- DEBUG[line break]";
	say "Error! The NPC shouldn't be around to see yet - please report how you saw this on the FS Discord.";

instead of conversing the Malik:
	say "[MalikTalkMenu]";

to say MalikTalkMenu:
	LineBreak;
	say "What do you want to talk with Malik about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Himself";
		now sortorder entry is 1;
		now description entry is "Ask the orc about himself";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Sex";
		now sortorder entry is 2;
		now description entry is "Ask the orc about sex";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Himself":
					say "[MalikTalk1]";
				if nam is "Sex":
					say "[MalikTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the orc, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MalikTalk1:
	say "...";

to say MalikTalk2:
	say "...";

to say MalikTalk3:
	say "     C";

Instead of fucking the Malik:
	if (lastfuck of Malik - turns < 5):
		say "     Malik puts a hand on your chest to hold you back and says, 'Give a guy a moment to rest!'";
	else:
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Get a blowjob from Malik";
			now sortorder entry is 1;
			now description entry is "Let the orc suck you off";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Give Malik a blowjob";
		now sortorder entry is 2;
		now description entry is "Suck the orc off";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Fuck the orc's ass";
			now sortorder entry is 3;
			now description entry is "Pound your dick into Malik";
		[]
		if Libido of Malik is 2:
			choose a blank row in table of fucking options;
			now title entry is "Let the orc take your ass";
			now sortorder entry is 4;
			now description entry is "Bend over for Malik";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Milk him for some orc cum";
		now sortorder entry is 5;
		now description entry is "Collect a bottle of cum from Malik";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Nevermind[as]0[end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if Player consents:
					let nam be title entry;
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Get a blowjob from Malik":
						say "[MalikSex1]";
					else if nam is "Give Malik a blowjob":
						say "[MalikSex2]";
					else if nam is "Fuck the orc's ass":
						say "[MalikSex3]";
					else if nam is "Let the orc take your ass":
						say "[MalikSex4]";
					else if nam is "Milk him for some orc cum":
						say "[MalikSex5]";
					wait for any key;
					now lastfuck of Malik is turns;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You step back from the orc, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say MalikSex1: [Malik sucks the player]
	say "...";

to say MalikSex2: [player gives Malik a BJ]
	say "...";

to say MalikSex3: [the player fucks Malik]
	say "...";

to say MalikSex4: [Malik fucks the player]
	say "...";

to say MalikSex5: [milk cum out of Malik]
	say "...";

after going to Sitting Area while (Chris is in Sitting Area and Stamina of Chris > 0 and Strength of Chris is 0):
	if debugactive is 1:
		say "     DEBUG: Malik intro scene; Strength of Chris: [Strength of Chris], Stamina of Chris: [Stamina of Chris][line break]";
	say "     As you enter the area, your gaze falls upon Chris and your firstborn son with the orc warrior, the two of them standing at the railing overlooking the open interior of the library as they guzzle orc brew and talk with each other. '...real nice snug fit around my cock, definitely. And I can't complain about the result, eh?' He pats his son's shoulder and gives him a squeeze, then notices you standing nearby. 'Ah, speak of the devil. Say hello to your breeder-dad, boy.' The younger orc turns around to look at you, taking another swig to finish off his brew before setting the empty mug on the broad railing. Walking up to you, he wraps you in a muscle-packed embrace that almost takes your breath away, then grins broadly, showing off his tusks. In a proud voice, he tells you, 'Dad and me have chosen a name! I'm Malik, firstborn of your new tribe together!' That said, he slaps his broad chest with his large hand, giving a masculine grunt.";
	say "     'This boy will make us proud,' Chris boasts as he joins the two of you, laying his arms around you both. 'Almost as strong as his dad, and you should have seen him take out that German Shepherd we ran into not too far from here. That doggy sure didn't make any boasts about being an Alpha anymore when we left him in a puddle of cum on the street!' 'Yeah! Pounded and bred that little bitch good! He was a bit too whiny to keep, but not bad as a casual cumdump,' Malik tells you with a smirk as he lets a hand casually wander down your backside to grope your ass. 'Better watch out boy, that's your chieftain's breeder!' Chris tells him and punches the other orc's shoulder. For a second, a challenging expression crosses Malik's face, then he gives in and pulls his hand away. Your three-way family hug breaks up after that, with Chris suggesting the three of you hang around together on a nearby sofa, you on his lap and his son next to him as you chat for a while.";
	now Strength of Chris is 1; [introduced]

after going to Sitting Area while (Chris is in Sitting Area and Stamina of Chris > 0 and Strength of Chris > 0 and Perception of Chris - turns > 4 and a random chance of 1 in 3 succeeds):
	if debugactive is 1:
		say "     DEBUG: Malik training scene; Strength of Chris: [Strength of Chris], Stamina of Chris: [Stamina of Chris], Perception of Chris: [Perception of Chris][line break]";
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1: [cum production]
			say "     As you enter the area, your gaze falls upon Chris and Malik doing push-ups next to each other. Far from being a regular fitness workout though, the two of them have come up with a definitively orcish way to do their training. The two brutish males are naked, sweaty, and erect, with their dicks pushing into some sort of red-white pillows every time they go down. Then you blink and have a second look, realizing that there's a bit more to the cock-receptacles than that - it wasn't initially too easy to see, but the squishy pillow actually has paws and a head: They're latex foxes! Chris and Malik must have fucked them a few times already to make them quite this stretched with fluid! 'Remember son, muscles isn't the only part of you that needs to build its stamina! The balls are among the most important bits on an orc,' your orc warrior mate grunts as he pumps himself up and down a few more times, then blasts yet another load into the fox, which swells with the squeak of straining latex.";
			say "     Meanwhile, Malik pounds his own training toy, but then suddenly pulls out of the creature, creating a tiny fountain of cum as it starts to leak his previous deposits. Pinching the rubbery material of the latex fox's buttocks between his fingers, he stops it from making too much of a mess, then looks over to his father with a bit of a shame-faced expression. 'Sorry, just couldn't go on. My balls are drained!' Chris chuckles loudly and pats his offspring on the side, casually continuing his push-ups with one arm. 'It's alright son, that's why we train this. Before long, you'll be ready to breed all the men you want nonstop! But now... wanna see how high these things bounce?' Before you know what's going on, he stands up with the balloon-like latex fox still impaled on his cock, and Malik joins his father in a quick dash towards the front of the building.";
			say "     Laughing like drunk frat boys, the two of them pull a window open and chuck their captives out of it. There's a squishing, squeaking noise from the street below and you see a colossal splash of cum streak upwards, leaving a white streak up the wall and onto the roof of the building across the street. Following the orcs, you look outside and see that the foxes seem to have weathered their fall without anything more than a few scrapes, and are weakly crawling down the street, leaving a wet trail behind them.";
		-- 2: [strength]
			say "     As you enter the area, your gaze falls upon your orc warrior son Malik, stretched out on the ground and lifting a set of weights. They're of the self-made variety, consisting of a road-sign pole, with both ends punched through the centers of several canal lids. The whole thing must weigh a lot, which doesn't stop the young buck of an orc from moving it up and down in the air in a steady rhythm. It's not like there isn't sweat visible on his chest, brow and arms, but a regular human would definitively be outmatched here. Noticing your presence, the orc grins and between the grunts of lifting his weights, he calls out, 'Heya breeder-dad! Wanna join me in the workout?' He gives a nod of his head, indicating something along the line his body is stretched out.";
			say "     With your eyes wandering along Malik's form, you notice some heavy handheld fitness weights scattered on the ground to the side of the orc's hips. That's not all that draws your gaze though, as the traditional orcish loincloth Malik is wearing has fallen to the side during his training, allowing the young male's cock to stand proudly erect in open view. Blood's not the only thing pumping for him right now, with a glistening drop of pre-cum starting to trickle down the side of his shaft right before your eyes. Casually glancing around, you see that Chris isn't actually in sight, apparently busy somewhere else in the library right now.";
			LineBreak;
			say "     [bold type]How do you react to the invitation?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Grab the weights and keep him company.";
			say "     [link](2)[as]2[end link] - Slide your lips over his shaft and train his 'other' stamina too.";
			say "     [link](3)[as]3[end link] - Just wave him off and walk away.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to lift weights, [link]2[end link] to suck him off or [link]3[end link] to leave.";
			if calcnumber is 1: [train]
				LineBreak;
				say "     Sitting down next to your green-skinned son, you reach out to grab the weights and lift them with some effort. As he pumps his canal lid weights up and down, you do your best to keep pace with the lighter ones, one in each hand. Your shared grunts fill the upper floor of the library and the two of you work up a nice sweat and burn in the muscles of your arms. It's a nice bonding moment with your brutish offspring, who grins at you and grunts out encouraging comments for you to work those weights. When he eventually drops his own set over his head and creates a set of dents in the floor, both of you are thoroughly exhausted and soaked in sweat. Sitting with your backs to the wall, you chat for a while about life in the city afterwards, then eventually get back up.";
				if a random chance of 1 in 3 succeeds:
					StatChange "Strength" by 1;
			else if calcnumber is 2: [blow]
				LineBreak;
				say "     Moving closer to the young orc, you sit down on the ground next to him and reach out for his erection, wrapping your fingers around its girthy shaft. 'You really are just a hungry breeder. Dad won't mind if I use a slut like you! Go on, suck it!' he grunts during a short break with the weights resting on the ground, letting out a satisfied moan as you lean over his crotch and slurp your tongue over his dickhead. 'Yeah, just like that,' he says with a chuckle, then picks up his weights again and starts to work them up and down. You kinda fall into the same rhythm as him, bobbing your head after wrapping your lips around the green shaft and tracing the veins of his dick with your tongue. Grunts and sucking noises fill the upper floor of the library as Malik works up a nice sweat and burn in the muscles of his arms while you service him orally.";
				say "     His breaths come quicker and quicker as the urge to come builds in the young orc's balls thanks to your stimulation, and eventually he reaches the end of his (sexual) endurance. Dropping the weights over his head and creating a set of dents in the floor, Malik's hands shoot down to clamp your head between them, forcing it down all the way on his massive cock. Before you can get over the shock of suddenly deep-throating your son, his erection already gives its first heavy throb, blasting rich, creamy orc cum into your stomach. He bucks his hips up reflexively, grinding your nose into his pubes as another and another spurt follow. Only by tapping out against his side do you manage to remind the orc that you do actually need to breathe, and he lets you go a moment later to gasp for air while he paints your face with his further splashes of cum.";
				WaitLineBreak;
				say "     Already feeling the effects of the orc cum from what you took into your stomach, you feel blissed out and kinda drunk, taking hold of Malik's shaft again to lick it clean from any escaped traces of his seed. The hunky young man chuckles at your cum-slut behavior and playfully scoops his semen off your face to feed it to you with a broad grin on his face. When it is all gone finally, he draws you up to give you a dominant kiss, exploring your mouth with his tongue before carrying you over to the sofa to lay you on it. 'Till next time, slut!' he tells you, then walks away while you doze off.";
				if Strength of Chris < 2: [no sex with Malik so far]
					now Strength of Chris is 2; [blew Malik]
			else:
				LineBreak;
				say "     Shaking your head and wishing him a nice workout, you turn around and leave Malik to his weightlifting.";
		-- 3: [running outside]
			say "     As you enter the area, your gaze falls upon your orc warrior son Malik just getting up from the sofa standing against the back wall. Tall, broad-shouldered and with quite a few bulging muscles under his green skin, it's sometimes hard to imagine that this hunk of a man was birthed by you not all that long ago. The nanites have for sure changed this world in quite interesting ways. Malik greets you with a broad grin and a wave, 'Heya breeder-dad! I was just gonna go out for a bit of a run. Wanna come with? It'll be fun!' Coming to stand in front of you, he cups the bulge in his loincloth with one hand and winks.";
			LineBreak;
			say "     [bold type]How do you react to the invitation?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Go running with him outside.";
			say "     [link](2)[as]2[end link] - You're down for some fun with his dick in your mouth. Follow him into a nearby alley.";
			say "     [link](3)[as]3[end link] - Just wave him off and walk away.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to go running, [link]2[end link] to suck him off or [link]3[end link] to leave.";
			if calcnumber is 1: [train]
				say "     Replying to the orc that you'd love to spend some time with him, you allow him to lead you down the stairs and out into the street. 'There's a lot of interesting things to find in the neighborhood,' Malik grunts with a tusk-bearing grin, then sets off at a well-paced jogging speed, with you close behind. As you're moving through the empty streets with the orc, you can't help but smile to yourself about his outfit - a very loose loincloth just flapping in the wind, not really hiding anything at all, and bare feet below. Not that the latter makes any difficulty for your son, as the tough skin on his large feet is more than enough to deal with even the glass shards and rubble that cover the street in places. And for the former, he apparently loves to show off his huge dick and would no doubt have whipped it out to shock passersby even if the city was still a civilized place.";
				say "     Running side by side, the two of you work up a good sweat and light burn in your muscles as you continue for a few blocks, then make a right turn and start curving back towards the library on a large circuit. Along the way, you surprisingly do not see all that many creatures out and about. The ones that do make an appearance are mostly weaker breeds that are peeking out of their hiding spots and are completely ignored by Malik. At first you think he really just wants to run right now, but then it becomes clear that they were just beneath his notice, with the orc preferring stronger prey: Ahead of the two of you, ";
				now randomnumber is a random number from 1 to 3;
				if randomnumber is:
					-- 1:
						say "a proud ram struts self-confidently around a corner, only to bleat in surprise as he spots Malik and yourself. The male sheep whirls around in a scrape of hooves on the asphalt and runs the way he came, seeking to put as much distance as possible between him and the orc. Your brutish son is on his trail instantly, shouting over his shoulder as he runs off, 'You turn left here, I'll chase him around the block right into your arms!'";
					-- 2:
						say "a male German Shepherd pads around the corner, his gaze hunting for prey, only for him to whine in fright as he spots Malik. The canine backs away, then turns and runs the way he came, seeking to put as much distance as possible between him and the orc. Your brutish son is on his trail instantly, shouting over his shoulder as he runs off, 'You turn left here, I'll chase him around the block right into your arms!'";
					-- 3:
						say "a husky strolls around the corner with a little pack of bitches by his side. He freezes in motion as he spots Malik, then shouts for his bitches to run and shoos them the way they came from. In a rush of barks and claws scraping on the asphalt, they try to put as much distance as possible between their group and the orc. Your brutish son is on his trail instantly, shouting over his shoulder as he runs off, 'You turn left here, I'll chase him around the block right into your arms!'";
				LineBreak;
				say "     [bold type]Do you follow Malik's order and get moving to cut off his target's escape?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Run him down!";
				say "     ([link]N[as]n[end link]) - Stand aside and make excuses if he escapes.";
				if Player consents: [assist]
					LineBreak;
					say "     Playing along with Malik's plans, you jog down the path he indicated and arrive at the far corner of the block just as the ";
					if randomnumber is:
						-- 1:
							say "ram turns the corner at a full run, barely avoiding running into you. His hooves scratch over the asphalt as he dodges initially, but with you being fresher than him you manage to cut him off from true escape without too much trouble. Staring at you with wide-eyed fright, he starts to say, 'Please, I -' And that's how far he gets before Malik catches up with him, pouncing on the ram and pulling him to the ground.";
							now MaliksRandomCaptive is 1;
						-- 2:
							say "German Shepherd turns the corner ahead not too long after, panting urgently as he runs. The anthro dog stares at you with grim determination on his face, getting himself ready to fight past you. Yet that hesitation is enough to allow Malik to catch up, and the orc pounces on the canine and pulls him to the ground.";
							now MaliksRandomCaptive is 2;
						-- 3:
							say "male husky turns the corner in front of you not too long after, panting urgently. Seems he got split off from his bitches, or maybe he told them to run another way so they were safe while he led the orc away. No matter which, now he's barreling towards you with grim determination on his face, apparently ready to run you down. It's fairly easy to fake him out and shove him to stumble and fall. This gives Malik ample time to catch up and snatch the canine just as he tries to stand up again.";
							now MaliksRandomCaptive is 3;
					say "[MalikRunningCaptiveSexMenu]";
				else: [help escape]
					LineBreak;
					say "     Not really in the mood to participate in a hunt so Malik can get his rocks off, you shrug and jog down the path he indicated in a sedate tempo. As he predicted, the ";
					if randomnumber is:
						-- 1:
							say "ram actually appears in front of you not too long after, gasping as he slides around the corner and runs towards you in full flight. He stares at you with wide-eyed fright, yet you simply move aside a little and wave along. 'Thank you! That green brute is a beast!' he calls as he dashes past in a flash of brown fur.";
						-- 2:
							say "German Shepherd in front of you not too long after, panting urgently as he peels around the corner at a run. The anthro dog stares at you with grim determination on his face, getting himself ready to fight past you. He seems surprised as you simply step aside and wave him past. 'Thanks!' he calls as he dashes past in a flash of fur and scraping claws.";
						-- 3:
							say "male husky in front of you not too long after, panting urgently as he peels around the corner at a run. Seems he got split off from his bitches, or maybe he told them to run another way so they were safe while he led the orc away. No matter which, now he's barreling towards you with grim determination on his face, apparently ready to run you down. He seems surprised as you simply step aside and wave him past. 'Thanks!' he calls as he dashes past in a flash of fur and scraping claws.";
					say " Malik turns the corner a moment later, obviously fairly winded from pushing his bulky body to a sprint around the block. His expectant grin turns into a frown as he sees you alone in front of him, with the quarry far beyond and escaping. Coming to a stop beside you, he grumbles, 'Hey, what happened? You should have been able to block him!' Raising your hands in a consoling gesture, you tell him that the guy was just too quick. The story gets embellished a bit with you saying that he feinted one way, then slipped past as you were moving that direction, and Malik finally shrugs in annoyance and waves you to continue your run with him. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. The young orc is still a bit grumpy from not catching his intended prey, so he doesn't really say much as you go back upstairs to the place you started out from.";
				if a random chance of 1 in 3 succeeds:
					StatChange "Stamina" by 1;
			else if calcnumber is 2: [blow]
				LineBreak;
				say "     Moving closer to the young orc, you stroke the back of his hand and tell him that you're down for some fun, then let him lead you down the stairs and out onto the street. 'There's a lot of interesting things to find in the neighborhood,' Malik grunts with a tusk-bearing grin, then sets off at a well-paced jogging speed, with you close behind. As you're moving through the empty streets with the orc, you can't help but smile to yourself about his outfit - a very loose loincloth just flapping in the wind, not really hiding anything at all, and bare feet below. Not that the latter makes any difficulty for your son, as the tough skin on his large feet is more than enough to deal with even the glass shards and rubble that cover the street in places. And for the former, he apparently loves to show off his huge dick and would no doubt have whipped it out to shock passersby even if the city was still a civilized place.";
				say "     One block over, you call out to Malik and wave him over to a side alley. 'Saw something interesting in here?' the green-skinned brute asks you as he glances around, only to find himself being fondled by yourself, a hand slipping under his loincloth to wrap around his girthy shaft. 'You really are just a hungry breeder. Dad won't mind if I use a slut like you! Go on, suck it!' he grunts, switching tracks to satisfying his libido almost without pause. A satisfied moan leaves his lips a few seconds later as you lean over forward and slurp your tongue over his dickhead. 'Yeah, just like that,' Malik chuckles, then puts his hands on your head, pumping it up and down on his quickly filled-out erection. The orc sets a quick pace for you, lips sliding up and down over the green shaft and your tongue tracing the veins of his dick. Grunts and sucking noises fill the alley as Malik takes his pleasure in your oral service.";
				WaitLineBreak;
				say "     His breaths come quicker and quicker as the urge to come builds in the young orc's balls thanks to your stimulation, and eventually he reaches the end of his (sexual) endurance. Hands clamping down hard on your head, he wrenches you against his crotch, forcing his whole length into your mouth. Before you can get over the shock of suddenly deep-throating your son, his erection already gives its first heavy throb, blasting rich, creamy orc cum into your stomach. He bucks his hips forward reflexively too, grinding your nose into his pubes as another and another spurt follow. Only by tapping out against his side do you manage to remind the orc that you do actually need to breathe, and he lets you go a moment later to gasp for air while he paints your face with his further splashes of cum.";
				say "     Already feeling the effects of the orc cum from what you took into your stomach, you feel blissed out and kinda drunk, taking hold of Malik's shaft again to lick it clean from any escaped traces of his seed. The hunky young man chuckles at your cum-slut behavior and playfully scoops his semen off your face to feed it to you with a broad grin on his face. When it is all gone finally, he draws you up to give you a dominant kiss, exploring your mouth with his tongue. By this time, you're almost too blissed out to stand, just moaning into his mouth as he makes out with you. 'Guess I'll have to cut the training short for today. Dad would punch me out if I left your ass here in the alley for any random fucker to make use of while I finished my miles.' With a snort, he bends down to grab you and throw you over his shoulder, then carries you back to the library.";
				WaitLineBreak;
				say "     As the two of you arrive on the upper floor, you run into Chris, who looks at his firstborn with a raised eyebrow and asks gruffly, 'What's going on here? Did something happen?!' Malik shrugs, making you shift on his shoulder and let out a panted breath. 'No worries, dad. Just had a workout with breeder-dad that was a bit much apparently and [SubjectPro of Player] got exhausted. Thought I'd bring [ObjectPro of Player] here to rest a bit.' Chris huffs a little, looking at you and seeing that you're not really capable of intelligible talk right now. 'Fine. Go ahead boy, but be sure to make [ObjectPro of Player] comfortable.' 'Will do, dad!' Malik replies, then carries you off. In your semiconscious state, you see Chris looking after the two of you with a bit of a frown on his face.";
				if Strength of Chris < 2: [no sex with Malik so far]
					now Strength of Chris is 2; [blew Malik]
			else:
				LineBreak;
				say "     Shaking your head and wishing him a nice workout, you pat Malik on the arm as he passes you by and leaves the library for a bit.";

to say MalikRunningCaptiveSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male and MaliksRandomCaptive is 1:
		choose a blank row in table of fucking options;
		now title entry is "Face-fuck the ram as he is fucked";
		now sortorder entry is 1;
		now description entry is "Spit-roast the ram between you and Malik";
	[]
	if Player is male and MaliksRandomCaptive is 2:
		choose a blank row in table of fucking options;
		now title entry is "Face-fuck the German Shepherd as he is fucked";
		now sortorder entry is 1;
		now description entry is "Spit-roast the canine between you and Malik";
	[]
	if Player is male and MaliksRandomCaptive is 3:
		choose a blank row in table of fucking options;
		now title entry is "Face-fuck the husky as he is fucked";
		now sortorder entry is 1;
		now description entry is "Spit-roast the canine between you and Malik";
	[
	if Player is male and MaliksRandomCaptive is 1:
		choose a blank row in table of fucking options;
		now title entry is "Fuck the ram (after Malik)";
		now sortorder entry is 2;
		now description entry is "Have sloppy seconds in the ram's ass";
	[]
	if Player is male and MaliksRandomCaptive is 2:
		choose a blank row in table of fucking options;
		now title entry is "Fuck the dog (after Malik)";
		now sortorder entry is 2;
		now description entry is "Have sloppy seconds in the German Shepherd's ass";
	[]
	if Player is male and MaliksRandomCaptive is 3:
		choose a blank row in table of fucking options;
		now title entry is "Fuck the dog (after Malik)";
		now sortorder entry is 2;
		now description entry is "Have sloppy seconds in the husky's ass";
	]
	if MaliksRandomCaptive is 1:
		choose a blank row in table of fucking options;
		now title entry is "Blow the ram as he is fucked";
		now sortorder entry is 1;
		now description entry is "Suck the ram off while Malik takes him";
	[]
	if MaliksRandomCaptive is 2:
		choose a blank row in table of fucking options;
		now title entry is "Blow the German Shepherd as he is fucked";
		now sortorder entry is 1;
		now description entry is "Suck the canine off while Malik takes him";
	[]
	if MaliksRandomCaptive is 3:
		choose a blank row in table of fucking options;
		now title entry is "Blow the husky as he is fucked";
		now sortorder entry is 1;
		now description entry is "Suck the canine off while Malik takes him";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Face-fuck the ram as he is fucked" or nam is "Face-fuck the German Shepherd as he is fucked" or nam is "Face-fuck the husky as he is fucked":
					say "[MalikRunSex1]";
				else if nam is "Fuck the ram (after Malik)" or nam is "Fuck the dog (after Malik)":
					say "[MalikRunSex2]";
				else if nam is "Blow the ram as he is fucked" or nam is "Blow the German Shepherd as he is fucked" or nam is "Blow the husky as he is fucked":
					say "[MalikRunSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the orc, leaving him to have his fun with your captive on his own. While you walk around and casually search for any supplies or useful gear in the surroundings, you do your best to ignore the grunts and moans coming from your son and his current sex toy. Some time later, Malik joins up with you, his loincloth still pulled aside to allow his cum-slick dick to swing freely. Almost demonstratively tucking his girthy man-meat away with a grin on his face, he says 'Should have joined me in taking him. That was a good slut!' You make some excuses that he shrugs off, followed by the orc tapping your arm and taking off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MalikRunSex1: [face-fuck the captive]
	if MaliksRandomCaptive is 1: [Ram]
		say "     The ram tries to kick his orc captor between the legs, only to find his hoof deflected and Malik coming down mercilessly on top of him, pinning the brown-furred male to the street. There is a little bit more of a struggle that soon ends with the male sheep's impressive curled horns scraping over the asphalt as Malik pins him down with one forearm pressing against his neck. The captive manages to grunt, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and wipes the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the ram starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the ram's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the ram fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out captive up to all fours so he can more easily thrust into him. Looking at the ram, you see an erection bobbing in the air beneath his muscled body and his mouth open as he moans loudly.";
		WaitLineBreak;
		say "     Deciding that it is time for you to get your own reward for participating in Malik's little hunt, you [if Player is not naked]quickly take off your clothes and gear, then [end if]step up and kneel in front of the ram. It is quite easy to just pull his head down on your [cock of Player] manhood, what with the horns to provide easy handholds. Slipping your erection between his lips, it slides over the warm and wet tongue of the male anthro and you start to face-fuck the guy, balls slapping against his chin as you adopt a steady rhythm of thrusts. Your muscle-packed offspring gives you a broad grin over the furred back of your shared captive, grunting out, 'Isn't this just the best, breeder-dad?' He clearly doesn't expect a reply as he looks down again right after and concentrates on deep-dicking his bottom boy. Still, you can't help but agree at least partially, not with the great feeling of the ram's mouth around your cock.";
		say "     Between Malik and yourself, the captured cervine is spit-roasted in an intense threesome that goes on for a while before it eventually culminates in your son hammering his shaft all the way into the ram and unloading everything his balls have into the man. Throb after throb of potent orc cum floods the male sheep's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs. Making gurgling noises around your cock, his Adam's apple bouncing up and down as his body is wracked by spasms of pleasure, the ram orgasms right along with Malik, spraying his seed over the road beneath. You're not far behind, grinding your crotch against his muzzle as your erection sends throbs of cum right down his throat. Overcome by the intensity of your climax, you have to brace against Malik's broad chest as it runs its course, with the orc just giving you a tusk-bearing grin as you do so.";
		WaitLineBreak;
		say "     'Good slut, eh?' Malik eventually asks after both of your orgasms have run their course and he pulls his spent cock out of the ram, who just sinks down to lie in the street, ass still raised high. You make some noises to express your own opinion of the guy you took captive, then join the orc warrior in standing up. He rolls the ram over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock.";
		say "     As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "Ram" receives "AssFuck" from "Malik";
		CreatureSexAftermath "Ram" receives "OralCock" from "Player";
	else if MaliksRandomCaptive is 2: [German Shepherd]
		say "     The German Shepherd tries to kick his orc captor between the legs, only to find his paw deflected and Malik coming down mercilessly on top of him, pinning the tan and brown-furred male to the street. There is a little bit more of a struggle that soon ends with the male dog's muzzle pressed against the asphalt as Malik pins him down with one forearm across his neck. The captive manages to growl, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!'[of]I'll bite your dick off before this is over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and wipes the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the German Shepherd starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the German Shepherd's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the anthro canine fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out captive up to all fours so he can more easily thrust into him. Looking at the German Shepherd, you see his red, knotted erection bobbing in the air beneath his furred body and his muzzle hang open as he moans loudly and pants in lust.";
		WaitLineBreak;
		say "     Deciding that it is time for you to get your own reward for participating in Malik's little hunt, you [if Player is not naked]quickly take off your clothes and gear, then [end if]step up and kneel in front of the German Shepherd. Initially at least a little leery about putting your best piece between his teeth, you push your thumb into his mouth, pressing down against the floppy tongue of his. The anthro dog reacts well, just flexing his wet appendage to lick at your finger a little, which gives you the confidence to pull his head down on your [cock of Player] manhood. Slipping your erection between his lips, it is soon wrapped by the long, floppy tongue and you start to face-fuck the guy, balls slapping against his chin as you adopt a steady rhythm of thrusts. Your muscle-packed offspring gives you a broad grin over the furred back of your shared captive, grunting out, 'Isn't this just the best, breeder-dad?' He clearly doesn't expect a reply as he looks down again right after and concentrates on deep-dicking his bottom boy. Still, you can't help but agree at least partially, not with the great feeling of the German Shepherd's mouth around your cock.";
		say "     Between Malik and yourself, the captured cervine is spit-roasted in an intense threesome that goes on for a while before it eventually culminates in your son hammering his shaft all the way into the German Shepherd and unloading everything his balls have into the man. Throb after throb of potent orc cum floods the male dog's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs. Making gurgling noises around your cock, his Adam's apple bouncing up and down as his body is wracked by spasms of pleasure, the German Shepherd orgasms right along with Malik, spraying his seed over the road beneath. You're not far behind, grinding your crotch against his muzzle as your erection sends throbs of cum right down his throat. Overcome by the intensity of your climax, you have to brace against Malik's broad chest as it runs its course, with the orc just giving you a tusk-bearing grin as you do so.";
		WaitLineBreak;
		say "     'Good slut, eh?' Malik eventually asks after both of your orgasms have run their course and he pulls his spent cock out of the German Shepherd, who just sinks down to lie in the street, ass still raised high. You make some noises to express your own opinion of the guy you took captive, then join the orc warrior in standing up. He rolls the German Shepherd over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock.";
		say "     As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "German Shepherd" receives "AssFuck" from "Malik";
		CreatureSexAftermath "German Shepherd" receives "OralCock" from "Player";
	else if MaliksRandomCaptive is 3: [Husky]
		say "     The husky tries to kick his orc captor between the legs, only to find his paw deflected and Malik coming down mercilessly on top of him, pinning the grey and white-furred male to the street. There is a little bit more of a struggle that soon ends with the male dog's muzzle pressed against the asphalt as Malik pins him down with one forearm across his neck. The captive manages to growl, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!'[of]I'll bite your dick off before this is over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and wipes the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the husky starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the husky's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the anthro canine fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out caprine up to all fours so he can more easily thrust into him. Looking at the husky, you see his red, knotted erection bobbing in the air beneath his furred body and his muzzle hang open as he moans loudly and pants in lust.";
		WaitLineBreak;
		say "     Deciding that it is time for you to get your own reward for participating in Malik's little hunt, you [if Player is not naked]quickly take off your clothes and gear, then [end if]step up and kneel in front of the husky. Initially at least a little leery about putting your best piece between his teeth, you push your thumb into his mouth, pressing down against the floppy tongue of his. The anthro dog reacts well, just flexing his wet appendage to lick at your finger a little, which gives you the confidence to pull his head down on your [cock of Player] manhood. Slipping your erection between his lips, it is soon wrapped by the long, floppy tongue and you start to face-fuck the guy, balls slapping against his chin as you adopt a steady rhythm of thrusts. Your muscle-packed offspring gives you a broad grin over the furred back of your shared captive, grunting out, 'Isn't this just the best, breeder-dad?' He clearly doesn't expect a reply as he looks down again right after and concentrates on deep-dicking his bottom boy. Still, you can't help but agree at least partially, not with the great feeling of the husky's mouth around your cock.";
		say "     Between Malik and yourself, the captured cervine is spit-roasted in an intense threesome that goes on for a while before it eventually culminates in your son hammering his shaft all the way into the husky and unloading everything his balls have into the man. Throb after throb of potent orc cum floods the male dog's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs. Making gurgling noises around your cock, his Adam's apple bouncing up and down as his body is wracked by spasms of pleasure, the husky orgasms right along with Malik, spraying his seed over the road beneath. You're not far behind, grinding your crotch against his muzzle as your erection sends throbs of cum right down his throat. Overcome by the intensity of your climax, you have to brace against Malik's broad chest as it runs its course, with the orc just giving you a tusk-bearing grin as you do so.";
		WaitLineBreak;
		say "     'Good slut, eh?' Malik eventually asks after both of your orgasms have run their course and he pulls his spent cock out of the husky, who just sinks down to lie in the street, ass still raised high. You make some noises to express your own opinion of the guy you took captive, then join the orc warrior in standing up. He rolls the husky over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock.";
		say "     As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "Alpha Husky" receives "AssFuck" from "Malik";
		CreatureSexAftermath "Alpha Husky" receives "OralCock" from "Player";

to say MalikRunSex2: [fuck the captive]
	if MaliksRandomCaptive is 1: [Ram]
		say "...";
		CreatureSexAftermath "Ram" receives "AssFuck" from "Malik";
		CreatureSexAftermath "Ram" receives "AssFuck" from "Player";
	else if MaliksRandomCaptive is 2: [German Shepherd]
		say "...";
		CreatureSexAftermath "German Shepherd" receives "AssFuck" from "Malik";
		CreatureSexAftermath "German Shepherd" receives "AssFuck" from "Player";
	else if MaliksRandomCaptive is 3: [Husky]
		say "...";
		CreatureSexAftermath "Alpha Husky" receives "AssFuck" from "Malik";
		CreatureSexAftermath "Alpha Husky" receives "AssFuck" from "Player";

to say MalikRunSex3: [blow the captive]
	if MaliksRandomCaptive is 1: [Ram]
		say "     The ram tries to kick his orc captor between the legs, only to find his hoof deflected and Malik coming down mercilessly on top of him, pinning the brown-furred male to the street. There is a little bit more of a struggle that soon ends with the male sheep's impressive curled horns scraping over the asphalt as Malik pins him down with one forearm pressing against his neck. The captive manages to grunt, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and wipes the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the ram starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the ram's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the ram fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out caprine up to all fours so he can more easily thrust into him. Looking at the ram, you see an erection bobbing in the air beneath his muscled body and his mouth open as he moans loudly.";
		WaitLineBreak;
		say "     Deciding that it is time for you to get your own reward for participating in Malik's little hunt, you get down on the ground and shimmy underneath the ram until your head is just beneath his swinging cock. Stretching your neck, it's easy to catch the hard shaft between your lips and to start sucking on it, pushing the ram's moans to another level of urgency. Leaning forward and to the side to glance down at you, Malik gives you a broad grin and grunts out, 'Enjoying yourself, breeder-dad?' He clearly doesn't expect a reply as he straightens up almost immediately, then gets back to deep-dicking his bottom boy. Still, you can't help but agree, not with the hard shaft of the ram's cock in your mouth. Between Malik driving his thick schlong into the captured cervine and you sucking on his cock, the ram's sexual endurance doesn't really stand a chance, so it doesn't take all that long before he lets out a breathless grunt and starts to unload onto your tongue, spurting out rich, creamy cum.";
		say "     As the cervine orgasms, his inner muscles flex and tighten around Malik's cock, giving your orcish son the last push past the point of no return. With an aroused bellow, the green-skinned brute hammers into the ram one last time and unloads everything his balls have into the man. Throb after throb of potent orc cum floods the male sheep's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs that extends his orgasm into a mind-blowing experience and leaves the man twitching and trembling all over his body. Even his spurts of cum are affected, as the furry balls right in front of your eyes seem to pulsate, sending forth every last drop they can deliver.";
		WaitLineBreak;
		say "     'Good slut, eh?' Malik eventually asks after his orgasm has run its course and you crawl out from under the ram. Then the orc pulls his spent cock out of your caprine, who just sinks down to lie in the street, ass still raised high. You make some noises to express your own opinion of the guy you took captive, then join the orc warrior in standing up. He rolls the ram over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock.";
		say "     As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "Ram" receives "AssFuck" from "Malik";
		CreatureSexAftermath "Player" receives "OralCock" from "Ram";
	else if MaliksRandomCaptive is 2: [German Shepherd]
		say "     The German Shepherd tries to kick his orc captor between the legs, only to find his paw deflected and Malik coming down mercilessly on top of him, pinning the tan and brown-furred male to the street. There is a little bit more of a struggle that soon ends with the male dog's muzzle pressed against the asphalt as Malik pins him down with one forearm across his neck. The captive manages to growl, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!'[of]I'll bite your dick off before this is over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and wipes the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the German Shepherd starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the German Shepherd's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the anthro canine fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out caprine up to all fours so he can more easily thrust into him. Looking at the German Shepherd, you see his red, knotted erection bobbing in the air beneath his furred body and his muzzle hang open as he moans loudly and pants in lust.";
		WaitLineBreak;
		say "     Deciding that it is time for you to get your own reward for participating in Malik's little hunt, you get down on the ground and shimmy underneath the German Shepherd until your head is just beneath his swinging cock. Stretching your neck, it's easy to catch the hard shaft between your lips and to start sucking on it, pushing the anthro dog's moans to another level of urgency. Leaning forward and to the side to glance down at you, Malik gives you a broad grin and grunts out, 'Enjoying yourself, breeder-dad?' He clearly doesn't expect a reply as he straightens up almost immediately, then gets back to deep-dicking his bottom boy. Still, you can't help but agree, not with the hard shaft of the German Shepherd's cock in your mouth. Between Malik driving his thick schlong into the captured canine and you sucking on his cock, the German Shepherd's sexual endurance doesn't really stand a chance, so it doesn't take all that long before he lets out a breathless grunt and starts to unload onto your tongue, spurting out rich, creamy cum.";
		say "     As the canine orgasms, his inner muscles flex and tighten around Malik's cock, giving your orcish son the last push past the point of no return. With an aroused bellow, the green-skinned brute hammers into the German Shepherd one last time and unloads everything his balls have into the man. Throb after throb of potent orc cum floods the male dog's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs that extends his orgasm into a mind-blowing experience and leaves the man twitching and trembling all over his body. Even his spurts of cum are affected, as the furry balls right in front of your eyes seem to pulsate, sending forth every last drop they can deliver.";
		WaitLineBreak;
		say "     'Good slut, eh?' Malik eventually asks after his orgasm has run its course and you crawl out from under the German Shepherd. Then the orc pulls his spent cock out of your caprine, who just sinks down to lie in the street, ass still raised high. You make some noises to express your own opinion of the guy you took captive, then join the orc warrior in standing up. He rolls the German Shepherd over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock.";
		say "     As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "German Shepherd" receives "AssFuck" from "Malik";
		CreatureSexAftermath "Player" receives "OralCock" from "German Shepherd";
	else if MaliksRandomCaptive is 3: [Husky]
		say "     The husky tries to kick his orc captor between the legs, only to find his paw deflected and Malik coming down mercilessly on top of him, pinning the grey and white-furred male to the street. There is a little bit more of a struggle that soon ends with the male dog's muzzle pressed against the asphalt as Malik pins him down with one forearm across his neck. The captive manages to growl, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!'[of]I'll bite your dick off before this is over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and wipes the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the husky starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the husky's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the anthro canine fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out caprine up to all fours so he can more easily thrust into him. Looking at the husky, you see his red, knotted erection bobbing in the air beneath his furred body and his muzzle hang open as he moans loudly and pants in lust.";
		WaitLineBreak;
		say "     Deciding that it is time for you to get your own reward for participating in Malik's little hunt, you get down on the ground and shimmy underneath the husky until your head is just beneath his swinging cock. Stretching your neck, it's easy to catch the hard shaft between your lips and to start sucking on it, pushing the anthro dog's moans to another level of urgency. Leaning forward and to the side to glance down at you, Malik gives you a broad grin and grunts out, 'Enjoying yourself, breeder-dad?' He clearly doesn't expect a reply as he straightens up almost immediately, then gets back to deep-dicking his bottom boy. Still, you can't help but agree, not with the hard shaft of the husky's cock in your mouth. Between Malik driving his thick schlong into the captured canine and you sucking on his cock, the husky's sexual endurance doesn't really stand a chance, so it doesn't take all that long before he lets out a breathless grunt and starts to unload onto your tongue, spurting out rich, creamy cum.";
		say "     As the canine orgasms, his inner muscles flex and tighten around Malik's cock, giving your orcish son the last push past the point of no return. With an aroused bellow, the green-skinned brute hammers into the husky one last time and unloads everything his balls have into the man. Throb after throb of potent orc cum floods the male dog's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs that extends his orgasm into a mind-blowing experience and leaves the man twitching and trembling all over his body. Even his spurts of cum are affected, as the furry balls right in front of your eyes seem to pulsate, sending forth every last drop they can deliver.";
		WaitLineBreak;
		say "     'Good slut, eh?' Malik eventually asks after his orgasm has run its course and you crawl out from under the husky. Then the orc pulls his spent cock out of your caprine, who just sinks down to lie in the street, ass still raised high. You make some noises to express your own opinion of the guy you took captive, then join the orc warrior in standing up. He rolls the husky over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock.";
		say "     As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "Alpha Husky" receives "AssFuck" from "Malik";
		CreatureSexAftermath "Player" receives "OralCock" from "Alpha Husky";

Malik ends here.
