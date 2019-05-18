Version 1 of Logan by Wahn begins here.
[Version 1 - Put into its own file]


[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - Initial Events
[***********************************************************]
[***********************************************************]
[***********************************************************]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
Logan	"Logan"

Logan is a man.
ScaleValue of Logan is 3. [human sized]
Cock Count of Logan is 1.
Cock Length of Logan is 14.
Ball Size of Logan is 4.
Ball Count of Logan is 2.
Cunt Count of Logan is 0.
Cunt Depth of Logan is 0.
Cunt Tightness of Logan is 0.
Nipple Count of Logan is 2. [2 nipples]
Breast Size of Logan is 0.
[Basic Interaction states as of game start]
PlayerMet of Logan is false.
PlayerRomanced of Logan is false.
PlayerFriended of Logan is false.
PlayerControlled of Logan is false.
PlayerFucked of Logan is false.
OralVirgin of Logan is true.
Virgin of Logan is true.
AnalVirgin of Logan is true.
PenileVirgin of Logan is false.
SexuallyExperienced of Logan is true.
MainInfection of Logan is "Wolverine Guard".
The description of Logan is "[LoganDesc]".
The conversation of Logan is { "<This is nothing but a placeholder!>" }.
The scent of Logan is "     Logan smells nicely masculine, with just the smallest amount of sexy sweat to his body, complete with lots of pheromones that can drive almost anyone wild in lust.".

to say LoganDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Logan: [HP of Logan] <- DEBUG[line break]";
	say "     Dressed in a security guard uniform so dark blue it almost appears black, Logan presents an impressive image with his broad shoulders and powerful body standing on two digitigrade paws. Just like the 'Wolverine Security' badge on his chest proclaims, he's an anthro animal, and you have little doubt that he follows the wolverine stereotype of being truly ferocious in a fight. In theory that might be a comforting thought for people he's supposed to protect, but something about the look in his eyes as he studies those around him sends a nervous tingle up your spine. The tooth-showing smile that usually follows only underlines the feeling, appearing not so much friendly but instead predatory as he imagines what he could do to the target of his attention.";
	say "     As the muscular male notices your gaze upon himself, he gives you a knowing nod as if to confirm your impressions, followed by a rumbling chuckle from the depth of his chest. Straightening the uniform cap on his head, he then turns back to watching his surroundings with silent intensity.";

[
an everyturn rule:
	if LoganRelationship > 10 and LoganRelationship < 90:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [midnight]
			if Player is in Logan's Bedroom and Logan is nowhere:
				project the figure of Logan_face_icon;
				say "     You hear the front door open and close, then the barks of Romulus and Remus as they happily arrive back home. A short moment later, the three of them come into the Bedroom and Logan greets you, but quickly makes clear that he's fairly tired and needs some rest. Yawning, he adds that you of course can feel free to stay longer, just to please not wake him. And with that, the man sets down his gear next to the bed, quickly strips off and gets into bed, slipping under the covers dressed only in some baggy boxer shorts. His two wolves quickly follow, cuddling up to their master and getting some pats from him before all three of them doze off.";
			else if Player is in Survivor Refuge and Logan is nowhere:
				project the figure of Logan_face_icon;
				say "     The front door is unlocked with the key and Logan opens it, letting in his two wolves Romulus and Remus. The feral canines beat their tails, happy to arrive back home and make a beeline for you, sniffing a little before they move on. A short moment later, when Logan is done closing the door and re-locking it securely, he greets you, but quickly makes clear that he's fairly tired and needs some rest. Yawning, he adds that you of course can feel free to stay longer, just to please not wake him. And with that, he vanishes into his bedroom, together with the two wolves.";
			else if Player is in Logan's Bathroom and Logan is nowhere:
				say "     You hear the front door open and close, then the barks of Romulus and Remus as they happily arrive back home. A little while later, you hear another door - that must have been the one to the bedroom. Sounds like the three of them came back and went straight to bed.";
			move Logan to Logan's Bedroom;
		[else if TimekeepingVar is 0 or TimekeepingVar is -8:] [pre dawn - unused, Logan sleeps]
		[else if TimekeepingVar is 7 or TimekeepingVar is -1:] [early morning - unused, Logan sleeps in]
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			if Player is in Logan's Bedroom:
				project the figure of Logan_face_icon;
				say "     Waking up after a restful night, Logan sits up between the two wolves cuddled up against him and stretches his arms, which gives you a good view of his broad-shouldered chest and trained body. He yawns and says good morning to you, then gently shakes Romulus and Remus awake and goes into the main room of the apartment to feed them. Logan returns a little while later, still in nothing but his baggy boxer shorts. 'Did I miss anything exciting going on out there?' he asks with a nod to the city outside the large windows and his telescope specifically. As you shake your head, he smiles and goes to grab his usual outfit, getting dressed before he sits down at his desk.";
			else if Player is in Survivor Refuge:
				say "     Suddenly, the door to the bedroom opens and Logan steps out of it, dressed in nothing more than some baggy boxer shorts and followed by some very eager wolves. He wishes you a good morning, then quickly stops by the kitchen to feed his feral canines, ducking back into the bedroom while they're still wolfing down their food.";
			else if Player is in Logan's Bathroom:
				say "     You hear a door open and close, then happy barks by Romulus and Remus. Sounds like Logan woke up and just went to feed them.";
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			if Player is in Logan's Bedroom:
				project the figure of Logan_face_icon;
				say "     Sitting up from working at his desk, where he was updating some lists and his journal, Logan stretches out and goes into the main room of the loft apartment.";
			else if Player is in Survivor Refuge:
				project the figure of Logan_face_icon;
				say "     Logan comes out of the bedroom and nods to you, then sits down on the lifting bench and starts to pump a weight up and down. He keeps at it tirelessly for quite a while too - no wonder he has such a physique.";
			else if Player is in Logan's Bathroom:
				say "     You hear a door open and close somewhere nearby - the bedroom maybe? Then some fairly low, rhythmic grunting starts up in the main room of the loft apartment.";
			move Logan to Survivor Refuge;
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			if Player is in Survivor Refuge and Logan is in Survivor Refuge:
				project the figure of Logan_face_icon;
				say "     Finishing with a fairly well-rounded exercise routine, Logan moves over to the comfortable sofa in the front half of the room and sits down on it. As he leans forward to grab a book, Romulus and Remus are already on the way to join him on the sofa, soon flanking the muscular man on both sides and pressing up against him. They sniff him happily and lap at any exposed skin, licking his salty sweat off. After a minute or two of this, with Logan stroking his companions['] fur, the three of them quiet down and sit quietly to read - the wolves either understanding what is written in the book too, or simply enjoying the companionship with their master.";
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if ((player is in Logan's Bedroom or player is in Logan's Bathroom) and Logan is in Survivor Refuge):
				say "     You hear Logan say, 'Come on guys, time for some scavenging!' The happy barks of his two wolves follow, and soon after, you hear the front door open and close.";
			else if Player is in Survivor Refuge and Logan is in Survivor Refuge:
				project the figure of Logan_face_icon;
				say "     Going to collect his gear - backpack, baseball bat and taser - Logan then waves the wolves up from where they have been lounging around and says, 'Come on guys, time for some scavenging!' Both Romulus as well as Remus give happy barks, tails wagging eagerly to go out with their master. Logan bids you farewell, saying that you can stay and keep an eye on the place while he's out, then leads his companions to the door and leaves.";
			now Logan is nowhere; [stashed in another dimension]
		[else if TimekeepingVar is 2 or TimekeepingVar is -6:] [early night - unused, Logan is out scavenging]
]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Conversation
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing the Logan:
	say "[LoganTalkMenu]";

to say LoganTalkMenu:
	say "     [bold type]What do you want to talk to Logan about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Logan to tell you about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His plans";
	now sortorder entry is 2;
	now description entry is "Ask Logan what he's got in mind for the future";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Collect some earnings for Blake";
	now sortorder entry is 3;
	now description entry is "Ask Logan to give you your share from whoring out Blake";
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
				now sextablerun is 1;
				if (nam is "Himself"):
					say "[LoganTalk1]";
				else if (nam is "His plans"):
					say "[LoganTalk2]";
				else if (nam is "Collect some earnings for Blake"):
					say "[BlakeShareCollect]";
				wait for any key;
				say "[LoganTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the gruff wolverine, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say LoganTalk1: [talk about him]
	say "     'Not much to tell,' Logan replies with a shrug. 'Grew up in a shitty neighborhood, wasn't stupid enough to become cannon fodder for one gang or another. Did have things lined up to learn to be a mechanic after high school, but half a year in, the pigs shut the place down. Asshole owner was too cheap with his bribes over the stolen parts.' The last words are said in a growl, with the wolverine baring his teeth, then spitting on the ground in disgust. 'Did all sorts of shit since. Some bouncing, little pimping on the side, odd jobs, then landed the gig as a guard.' He taps his badge with a clawed finger and grumbles, 'Shit, I had plans. Was making buds with some of the other dudes on the force to... ah, don't matter anymore, not with this whole mess rolling around now.'";

to say LoganTalk2: [talk about his plans]
	say "     Letting out an annoyed rumble from the depth of his throat, Logan shrugs. 'Whole world seems to have the idea that it should shit over my plans at the tiniest opportunity. So no thanks, I'll keep those to myself. For now, let's say I'm content with living through this transformation shit, and sinking my dick into however many bitches I can, as often as possible.' He grins as he says this, throwing a glance over to the tied-up rat on his bedding. 'Hey Blake, looking forward to our next round!'";

to say BlakeShareCollect:
	if Energy of Blake is 0: [nothing to dole out]
		say "     As you ask Logan for your share from whoring out Blake, the wolverine gives a gruff snort. 'The little slut may be a nice hole to stuff your dick in, but there are only so many people wanting to pay for it, ya see? Bit of a waste to have a true and proper fuckslave in a situation where most just grab any bitch that wanders past. I can tell ya, in my old neighborhood, before all of this shit, the cash would have been rolling in nonstop.' Thumping the empty collection box behind his chair with a foot-paw, he shrugs. 'Come back tomorrow or so, and we'll see what payments came in!'";
	else if Energy of Blake is 1: [one share to collect]
		say "     As you ask Logan for your share from whoring out Blake, the wolverine gives a gruff snort. 'Got some shit in the box, let me have a look.' Pulling a wooden fruit crate out from behind his chair, the broad-shouldered anthro digs around and soon takes two items out of it, which he hands to you. 'There we go, your share!' he announces with a somewhat greasy grin on his face, showing off his impressive collection of sharp teeth as he does so.";
		CollectBlakePayout;
	else: [more than one share to collect]
		say "     As you ask Logan for your share from whoring out Blake, the wolverine gives a gruff snort. 'Got a bunch of shit in the box, let me have a look.' Pulling a wooden fruit crate out from behind his chair, the broad-shouldered anthro digs around, shoving several items into a flimsy plastic shopping bag, which he hands to you. 'There we go, your share!' he announces with a somewhat greasy grin on his face, showing off his impressive collection of sharp teeth as he does so.";
		CollectBlakePayout;

to CollectBlakePayout:
	if debugactive is 1:
		say "     DEBUG: Energy of Blake: [Energy of Blake][line break]";
	while Energy of Blake > 0:
		let randomnumber be a random number from 1 to 3;
		if randomnumber is:
			-- 1:
				increase Hunger of Blake by 2;
			-- 2:
				increase Thirst of Blake by 2;
			-- 3:
				increase Hunger of Blake by 1;
				increase Thirst of Blake by 1;
		decrease Energy of Blake by 1;
	LineBreak;
	if debugactive is 1:
		say "     DEBUG: Hunger of Blake: [Hunger of Blake], Thirst of Blake: [Thirst of Blake][line break]";
	if Hunger of Blake > 0:
		LineBreak;
		say "[bold type]You gain [Hunger of Blake] food![roman type][line break]";
		increase carried of food by Hunger of Blake;
		now Hunger of Blake is 0;
	if Thirst of Blake > 0:
		LineBreak;
		say "[bold type]You gain [Thirst of Blake] water bottles![roman type][line break]";
		increase carried of water bottle by Thirst of Blake;
		now Thirst of Blake is 0;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Logan:
	if (lastfuck of Logan - turns < 2): [he got fucked in the last 6 hours = 2 turns]
		say "     'Bitch, I like to fuck as much as the next guy, but nonstop is a bit much even for me. Fuck off, [if Strength of Logan > 0]whore. [end if]I'm not in the mood right now. You'll get this dick in time,' Logan replies with a gruff snort.";
	else: [ready for sex]
		say "     As you walk up to Logan, he recognizes the lustful gleam in your eyes and lets his gaze wander up and down over your form while a lewd grin spreads over his face. 'So, guess you wanna be more than business partners, eh?' he says in a cocky tone, pulling down the zipper of his uniform jacket and revealing a furry, muscled chest as he does so.";
		wait for any key;
		say "[LoganSexMenu]";

to say LoganSexMenu:
	say "     [bold type]What exactly do you plan on doing with Logan?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get on your knees and give him a blowjob";
	now sortorder entry is 1;
	now description entry is "Service the wolverine orally";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take Logan's cock in your pussy";
		now sortorder entry is 2;
		now description entry is "Get fucked by the wolverine";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Logan's cock in your ass";
	now sortorder entry is 3;
	now description entry is "Get fucked in the ass by the wolverine";
	[
	if Player is male and Strength of Logan < 1:
		choose a blank row in table of fucking options;
		now title entry is "Share a fuck of Blake with Logan";
		now sortorder entry is 4;
		now description entry is "Spit-roast the rat between you";
	]
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
				now sextablerun is 1;
				if (nam is "Get on your knees and give him a blowjob"):
					say "[LoganSex1]";
				else if (nam is "Take Logan's cock in your pussy"):
					say "[LoganSex2]";
				else if (nam is "Take Logan's cock in your ass"):
					say "[LoganSex3]";
				else if (nam is "Take Logan's cock in your ass"):
					say "[LoganSex4]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the gruff wolverine, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say LoganSex1: [BJ on Logan]
	say "     Stepping up to Logan, you lean in to kiss him, only to find him clamping a hand on your shoulder and taking control instead. Pressing down, he makes you kneel before him, then cradles your head in a show of dominance. 'I know what you want,' the gruff wolverine says with a broad grin on his face, pushing two of his fingers between your lips. 'Suck on that!' he commands and you do so, slurping on his digits and your tongue playing over the pads of his fingers. His free hand moves to pull down the zipper of his pants, freeing a thick and hard knotted cock from its prison. Wrapping his fingers around the shaft of the large erection, he waves it around and smacks your cheek with it. 'You're just another needy slut, ain't that right?! Your mouth watering when you think about sucking my long, hard cock! Here it is, [if player is female]darling[else]dude[end if]! Go on, worship it!'";
	say "     With that said, the wolverine wrenches his fingers from your mouth, holding his shaft out for you to suck next. You stretch your neck and accept the pointy head of his shaft, lips closing around it as you suckle the hunky male's dick and then begin to bob on it. 'That's a good slut! Deeper!' Logan demands while undoing the button of his pants and pulling its front open further, chuckling as you take more of his length into your mouth. His paw-hand slides around the back of your head next, getting a good grip and slamming you against his crotch. Nose suddenly buried in the wild nest of his pubic fur and taking huffs of his manly musk, your throat muscles tremble and flex around the invading shaft. 'Yeah, now we're talking!' Logan grunts in pleasure and you can feel a throb go through his shaft as a little spurt of pre-cum is sent to trickle into your stomach.";
	WaitLineBreak;
	say "     Your dominant wolverine doesn't waste much more time, clamping your head between both of his hands and starting to face-fuck you in a harsh tempo, his weighty balls smacking against your chin with every stroke. The demanding way in which he fucks leaves little chance for second thoughts, or even breathing, and you do the best you can in relaxing your throat and taking little gasps of air whenever you can. It doesn't take all that long of his full force pounding before Logan shouts, 'Fffuuckkkkk! Take it, slut!' His cock throbs heavily against your tongue and you can feel it in your throat as the first splash of cum is pumped into it. More and more follow after that, so many that you actually have to tap out with your hands on his hips, prompting the wolverine to start pulling back. It's easier said than done, what with his knot starting to swell up rapidly, so your mouth has to open almost painfully wide to allow him to slip his shaft from it.";
	say "     As you collapse at his feet, gasping for breath, the wolverine stands over you with a grin on his face and casually strokes himself a little while longer, milking out the last spurts of cum from his orgasm to have them land on your head and upper body in dribs and drabs. 'That wasn't half bad,' comes his verdict soon after, and with that said he stuffs his cock back into his pants and saunters over to his chair.";
	NPCSexAftermath Player receives "OralCock" from Logan;
	if Strength of Logan < 10: [submission to him]
		increase Strength of Logan by 1;

to say LoganSex2: [pussy fuck by Logan]
	say "     Stepping up to Logan, you put your hands on the sides of his broad torso and lean in to kiss him. With a grunt of lust, he replies by clamping his large hand around the curve of your neck, holding you tight as he opens his muzzle and gives your face a possessive lick. Following up with a rather forceful bout of making out, his tongue invading your mouth and attempting to wrestle yours into submission, you find yourself held in his strong arms. 'Another nice little slut, throwing yourself at me,' he comments as he finally relents a little, allowing you to get in a panted breath. 'And I got just what a needy bitch like you needs!' With that said, the anthro male lowers his hands to undo the button and zipper of his pants, allowing a thick and weighty knotted shaft to flop out. He wastes little time with more words, simply hooking a hand behind your neck and bending you forward to end up with his cock at eye level.";
	say "     'Open up and give it some attention!' Logan tells you in a demanding tone, chuckling as you take his manhood into your mouth right away. The wolverine quickly takes over after that, hand on your head and pumping it up and down on his cock instead of allowing you to do so at your own pace. He clearly has other things in mind than a relaxed blowjob though, and before you know it, your head is pulled away and you feel his hands under your armpits. 'Get up and bend over, bitch!' he barks out, pushing you towards a nearby wall and clamping his hands around your wrists, positioning them on the bricks so you stand in a typical 'police patdown' stance. Logan [StripCrotch], then grunts in your ear, 'You're gonna get it now, slut!' Taking hold of his erection, he strokes it up the inside of your legs, brushing against your clit and making you tremble in pleasure before he nudges it against your nether lips.";
	WaitLineBreak;
	say "     The spit- and precum-slick tip of Logan's shaft feels hot against your folds as he pushes in between them, then stretches your insides snugly around his thick cock. Leaning forward against the wall, you let out a loud moan as the strong man takes you from behind, grinding himself against your rear to bury all of his length inside. 'Now that's what I call a sweet and juicy pussy!' he calls out, wrapping one arm around your front as he gives you a sharp thrust that pops his pre-knot bulge past your opening. The next sounds from him are more animalistic in nature, as the wolverine begins to fuck you in a rapid and harsh tempo, really pounding into you and making his heavy balls slap against your crotch again and again. It's a good thing that he made you brace, as such no holds barred hammering would have you face-planted against the wall quickly otherwise.";
	say "     You're in for a wild ride with the vigorous wolverine that you chose to take on, with Logan pushing you to moan, gasp and scream in lust as he delves into the depths of your pussy and hits spots you didn't even know you had. He laughs at your helpless pleasure and grunts something about, 'Bitches just need to be shown their place,' as he ravages your pussy to his heart's content. You don't quite know how long your coupling takes, losing your sense of time in the blissed-out haze he puts you under, until the ever harder thrusts of the anthro beast fucking you herald his impending orgasm. With a deep growl, Logan hammers forward once more, burying all of his cock just in time to blast the first big splurge of his seed deep inside. Grunting dominantly, the wolverine fills you with a large and virile load, his knot swelling up to ensure that all of it stays inside you for a good long while. Your own pleasure is pushed right along with his, and you orgasm around his throbbing shaft just a few heartbeats later[if player is male], painting the wall in front of you with the splatters of your own cum[end if].";
	WaitLineBreak;
	say "     Out of breath and panting, the two of you stand against the wall for some time as you ride out your respective climaxes. 'Sweet little pussy you got there,' Logan finally says in a gruff tone and squeezes your ass. 'Wouldn't mind pounding it again a few times before all of this is over,' the anthro male adds, then starts to pull away from you, making you groan at the sensation of his still quite bulging knot against your inner opening. Your eyes go wide and you gasp as he gives a sharp tug, forcing his way out of your freshly-bred sex. This wolverine definitively isn't one to cuddle after sex it seems. Without a further word, he leaves you standing where you are, hand over your now aching and cum-dripping hole.";
	NPCSexAftermath Player receives "PussyFuck" from Logan;
	if Strength of Logan < 10: [submission to him]
		increase Strength of Logan by 1;

to say LoganSex3: [ass-fucking by Logan]
	say "     Stepping up to Logan, you put your hands on the sides of his broad torso and lean in to kiss him. With a grunt of lust, he replies by clamping his large hand around the curve of your neck, holding you tight as he opens his muzzle and gives your face a possessive lick. Following up with a rather forceful bout of making out, his tongue invading your mouth and attempting to wrestle yours into submission, you find yourself held in his strong arms. 'Another [if player is male]dirty little fag whore[end if], throwing yourself at me,' he comments as he finally relents a little, allowing you to get in a panted breath. 'And I got just what a needy bitch like you needs!' With that said, the anthro male lowers his hands to undo the button and zipper of his pants, allowing a thick and weighty knotted shaft to flop out. He wastes little time with more words, simply hooking a hand behind your neck and bending you forward to end up with his cock at eye level.";
	say "     'Open up and get it nice and wet, you'll need it!' Logan tells you in a demanding tone, chuckling as you take his manhood into your mouth right away. The wolverine quickly takes over after that, hand on your head and pumping it up and down on his cock instead of allowing you to do so at your own pace. He clearly has other things in mind than a relaxed blowjob though, and before you know it, your head is pulled away and you feel his hands under your armpits. 'Get up and bend over, bitch[if player is male]! Show me that boypussy[end if]!' he barks out, pushing you towards a nearby wall and clamping his hands around your wrists, positioning them on the bricks so you stand in a typical 'police patdown' stance. Logan [StripCrotch], then grunts in your ear, 'You're gonna get it now, slut!' Taking hold of his erection, he strokes it up the inside of your legs, brushing against your [if player is male]balls and dangling erection, [else]clit and[end if] making you tremble in pleasure before he nudges it against your wrinkled pucker.";
	WaitLineBreak;
	say "     The spit- and precum-slick tip of Logan's shaft feels hot against your back door as he pushes against it, increasing the pressure until it yields and allows his pointy head to slip inside. He keeps pushing more and more inside right away, stretching your insides snugly around his thick cock. Leaning forward against the wall, you let out a loud moan as the strong man takes you from behind, grinding himself against your rear to bury all of his length inside. '[if player is male]Faggots always have the nicest booty[else]Nice hole on ya[end if],' he calls out, wrapping one arm around your front as he gives you a sharp thrust that pops his pre-knot bulge past your opening. The next sounds from him are more animalistic in nature, as the wolverine begins to fuck you in a rapid and harsh tempo, really pounding into you and making his heavy balls slap against your crotch again and again. It's a good thing that he made you brace, as such no holds barred hammering would have you face-planted against the wall quickly otherwise.";
	say "     You're in for a wild ride with the vigorous wolverine that you chose to take on, with Logan pushing you to moan, gasp and scream in lust as he delves into the depths of your asshole and hits spots you didn't even know you had. He laughs at your helpless pleasure and grunts something about, 'Bitches just need to be shown their place,' as he ravages your hole to his heart's content. You don't quite know how long your coupling takes, losing your sense of time in the blissed-out haze he puts you under, until the ever harder thrusts of the anthro beast fucking you herald his impending orgasm. With a deep growl, Logan hammers forward once more, burying all of his cock just in time to blast the first big splurge of his seed deep inside. Grunting dominantly, the wolverine fills you with a large and virile load, his knot swelling up to ensure that all of it stays inside you for a good long while. Your own pleasure is pushed right along with his, and you orgasm around his throbbing shaft just a few heartbeats later[if player is male], painting the wall in front of you with the splatters of your own cum[end if].";
	WaitLineBreak;
	say "     Out of breath and panting, the two of you stand against the wall for some time as you ride out your respective climaxes. 'Sweet little fuckhole you got there,' Logan finally says in a gruff tone and squeezes your ass. 'Wouldn't mind pounding it again a few times before all of this is over,' the anthro male adds, then starts to pull away from you, making you groan at the sensation of his still quite bulging knot against your pucker from the inside. Your eyes go wide and you gasp as he gives a sharp tug, forcing his way out of your freshly-bred ass. This wolverine definitively isn't one to cuddle after sex it seems. Without a further word, he leaves you standing where you are, hand over your now aching and cum-dripping hole.";
	NPCSexAftermath Player receives "AssFuck" from Logan;
	if Strength of Logan < 10: [submission to him]
		increase Strength of Logan by 1;

to say LoganSex4: [spitroast Blake]
	say "     Stepping up to the improvised bedding on which Blake is stretched out, you smile down at the rat, already starting to get hard as you imagine what you can do to him. Then you look over your shoulder and [if Androginity of Player < 3]call out to Logan, asking if he wants to share the whore[else if Androginity of Player < 8]ask Logan if he wants to share your plaything[else]invite Logan to join you in enjoying the rat's body[end if]. The wolverine raises an eyebrow in a little bit of a surprised expression, since it is kinda 'your turn' to pound Blake and he didn't quite expect you to be generous about inviting anyone else in. '[if Loyalty of Logan > 0]Sure thing, who wouldn't want to take that slut,' [else]Why? You want me to show you how it's really done?' [end if]he finally says, grinning as he approaches and steps up next to you. Looking down at the tied-up captive, Logan grabs his bulge and gives you a nod. 'I'm gonna take the tighter end.' With that said, the muscular anthro pulls down the zipper of his uniform jacket and shrugs it off, quickly followed by his pants. Proudly showing off his girthy shaft as he lets it swing freely, the wolverine gets on the bedding with Blake, pulling him into a kneeling position with his ass raised high.";
	if Loyalty of Logan > 4: [DP route]
		say "     With the fingers of his large paw-hand curled around the base of his shaft, Logan smacks it down into the crack of Blake's ass, rubbing against his pucker. He starts to push into the rat, then suddenly pauses in motion and looks up at you. 'You know what? Wanna share this hole? Little whore has gotten so much big dick, I think he can take us both at the same time by now!' He grins broadly as he ";
	else:
		say "     normal route";
	say "     ...";
	if Loyalty of Logan is 0: [no Loyalty yet]
		say "     Offers Fist bump over the back of Blake, both your dicks inside the rat";
		say "     [bold type]How do you react?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Meet him in the fist bump. You're bro's sharing a slut after all.";
		say "     ([link]N[as]n[end link]) - Just focus on your ratty slut and pound Blake harder.";
		if Player consents:
			LineBreak;
			say "     ...";
			if Loyalty of Logan < 10:
				increase Loyalty of Logan by 1;
		else:
			LineBreak;
			say "     ...";
			if Loyalty of Logan > 0:
				decrease Loyalty of Logan by 1;

Logan ends here.
