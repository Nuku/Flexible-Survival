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
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the gruff wolverine, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say LoganTalk1: [talk about him]
	say "     'Not much to tell,' Logan replies with a shrug. 'Grew up in a shitty neighborhood, wasn't stupid enough to become cannon fodder for one gang or another. Did have things lined up to learn to be a mechanic after high school, but half a year in, the pigs shut the place down. Asshole owner was too cheap with his bribes over the stolen parts.' The last words are said in a growl, with the wolverine baring his teeth, then spitting on the ground in disgust. 'Did all sorts of shit since. Some bouncing, little pimping on the side, odd jobs, then landed the gig as a guard.' He taps his badge with a clawed finger and grumbles, 'Shit, I plans. Was making buds with some of the other dudes on the force to... ah, don't matter anymore, not with this whole mess rolling around now.'";

to say LoganTalk2: [talk about his plans]
	say "     Letting out an annoyed rumble from the depth of his throat, Logan shrugs. 'Whole world seems to have the idea that it should shit over my plans at the tiniest opportunity. So no thanks, I'll keep those to myself. For now, let's say I'm content with living through this transformation shit, and sinking my dick into however many bitches I can, as often as possible.' He grins as he says this, throwing a glance over to the tied-up rat on his bedding. 'Hey Blake, looking forward to our next round!'";

an everyturn rule:
	if daytimer is day and LastTurnDay is false and HP of Blake > 50 and HP of Blake < 90: [it is day now, and last turn was night, Blake whoring]
		increase Energy of Blake by 1; [add on one profit share of whoring him out]

to say BlakeShareCollect:
	if Energy of Blake is 0: [nothing to dole out]
		say "     As you ask Logan for your share from whoring out blake, the wolverine gives a gruff snort. 'The little slut may be a nice hole to stuff your dick in, but there are only so many people wanting to pay for it, ya see? Bit of a waste to have a true and proper fuckslave in a situation where most just grab any bitch that wanders past. I can tell ya, in my old neighborhood, before all of this shit, the cash would have been rolling in nonstop.' Thumping the empty collection box behind his chair with a foot-paw, he shrugs. 'Come back tomorrow or so, and we'll see what payments came in!'";
	else if Energy of Blake is 1:
		say "     As you ask Logan for your share from whoring out Blake, the wolverine gives a gruff snort. 'Got some shit in the box, let me have a look.' Pulling a wooden fruit crate out from behind his chair, the broad-shouldered anthro digs around and soon takes two items out of it, which he hands to you. 'There we go, your share!' he announces with a somewhat greasy grin on his face, showing off his impressive collection of sharp teeth as he does so.";
		CollectBlakePayout;
	else:
		say "     As you ask Logan for your share from whoring out Blake, the wolverine gives a gruff snort. 'Got a bunch of shit in the box, let me have a look.' Pulling a wooden fruit crate out from behind his chair, the broad-shouldered anthro digs around, shoving several items into a flisy plastic shopping bag, which he hands to you. 'There we go, your share!' he announces with a somewhat greasy grin on his face, showing off his impressive collection of sharp teeth as he does so.";
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
		say "     'Bitch, I like to fuck as much as the next guy, but nonstop is a bit much even for me. Fuck off, you whore. You'll get this dick in time,' Logan replies with a gruff snort.";
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
	now sortorder entry is 5;
	now description entry is "Get fucked in the ass by the incubus";
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
				if (nam is "Take Logan's cock in your pussy"):
					say "[LoganSex2]";
				if (nam is "Take Logan's cock in your ass"):
					say "[LoganSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the gruff wolverine, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say LoganSex1: [BJ on Logan]
	say "     Stepping up to Logan, you lean in to kiss him, only to find him clamping a hand on your shoulder and taking control instead. Pressing down, he makes you kneel before him, then cradles your head in a show of dominance. 'I know what you want,' the gruff wolverine says with a broad grin on his face, pushing two of his fingers between your lips. 'Suck on that!' he commands and you do so, slurping on his digits and your tongue playing over the pads of his fingers. His free hand moves to pull down the zipper of his pants, freeing a thick and hard knotted kock from its prison. Wrapping his fingers around the shaft of the large erection, he waves it around and smacks your cheek with it. 'You're just another needy slut, ain't that right?! Your mouth watering when you think about sucking my long, hard cock! Here it is, [if player is female]darling[else]dude[end if]! Go on, worship it!'";
	say "     With that said, the wolverine wrenches his fingers from your mouth, holding his shaft out for you to suck next. You stretch your neck and accept the pointy head of his shaft, lips closing around it as you suckle the hunky male's dick and then begin to bob on it. 'That's a good slut! Deeper!' Logan demands while undoing the button of his pants and pulling its front open further, chuckling as you take more of his length into your mouth. His paw-hand slides around the back of your head next, getting a good grip and slamming you against his crotch. Nose suddenly buried in the wild nest of his pubic fur and taking huffs of his manly musk, your throat muscles tremble and flex around the invading shaft. 'Yeah, now we're talking!' Logan grunts in pleasure and you can feel a throb go through his shaft as a little spurt of pre-cum is sent to trickle into your stomach.";
	WaitLineBreak;
	say "     Your dominant wolverine doesn't waste much more time, clamping your head between both of his hands and starting to face-fuck you in a harsh tempo, his weighty balls smacking against your chin with every stroke. The demanding way in which he fucks leaves little chance for second thoughts, or even breathing, and you do the best you can in relaxing your throat and taking little gasps of air whenever you can.";
	say "     Sinking down to your knees, you look up to see the smiling face of Logan looking down at you, just past his erect cock. He traces the tip of his index finger over the cum-slit and comes away from it with a sticky string of pre-cum, then smears the fluid over your lips. 'Open wide to receive me!' the young demon commands, proudly holding out his dick and moving to stand over you. He gleefully brushes his cum-slit against your lips even as you open your mouth and try to start sucking, only allowing you to do so once he has spread more of his pre on you. Then finally, he's inside your mouth - his warm length of demonic cock laying on your tongue and pushing further back to bump the back of your throat. Working himself back and forth, the incubus contains his impatience enough so that he can get you used to his girth, tilting back your head as he pushes down your throat eventually.";
	WaitLineBreak;
	say "     'You did such a good job in making this cock, daddy! Glad you're taking the chance to savor your handiwork now. How does it feel down your throat, eh? Leaking pre into daddy! Fuck, this is nice!' Logan says in a gleeful tone as he works himself in and out of your mouth, patting your head. He's obviously quite into the fun of using you this way and soon proceeds to take hold of your head with both hands, then starts to face-fuck you in a rapid tempo, chuckling about the slapping noises of his balls against your chin. 'I'm gonna feed you my cum now! Ready to take a load from your own demon boy? Of course you are, daddy. Only a real cum-slut would be on their knees before their son!' With that said, Logan takes out all the stops and really hammers into your throat hard, making it hard to even get a panted breath through your nose as he mostly blocks your airways with his cock.";
	say "     It doesn't take all that long of such harsh pounding before Logan shouts, 'Fffuuckkkkk! Take it, slut!' His cock throbs heavily against your tongue and you can feel it in your throat as the first splash of cum is pumped into it. More and more follow after that, so many that you actually have to pat urgently against the incubus's hips so he pulls back and allows you a gasp of air. It's not like he doesn't enjoy that part of it either though, as any cum that isn't blown down your throat gets used to paint your face white. As his orgasm slowly ebbs off, Logan looks down at you with a grin, inspecting his handiwork. 'Hmm, that's a great look on you daddy! I might just forgive you for being an absentee dad and missing all the hours of my childhood if you keep this up.'";
	NPCSexAftermath Player receives "OralCock" from Logan;

to say LoganSex2: [pussy fuck by Logan]
	say "     ...";
	NPCSexAftermath Player receives "PussyFuck" from Logan;

to say LoganSex3: [ass-fucking by Logan]
	say "     ...";
	NPCSexAftermath Player receives "PussyFuck" from Logan;


Logan ends here.
