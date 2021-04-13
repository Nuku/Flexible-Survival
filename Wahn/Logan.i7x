Version 1 of Logan by Wahn begins here.
[Version 1 - Put into its own file]

[ Strength of Logan: Player Submission                      ]
[  0: player never submitted to him                         ]
[  5: Logan greets the player differently                   ]

[ 95: player rejected being whored out (only wants Logan)   ]

[ Collection of Ideas                                       ]
[ - talk option about the contraceptives used on Zoe        ]
[ - talk option about Zoe                                   ]

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
Body Weight of Logan is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Logan is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Logan is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Logan is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Logan is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Logan is 5. [length in inches]
Breast Size of Logan is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Logan is 2. [count of nipples]
Asshole Depth of Logan is 8. [inches deep for anal fucking]
Asshole Tightness of Logan is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Logan is 1. [number of cocks]
Cock Girth of Logan is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Logan is 14. [length in inches]
Ball Count of Logan is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Logan is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Logan is 0. [number of cunts]
Cunt Depth of Logan is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Logan is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Logan is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Logan is false.
PlayerRomanced of Logan is false.
PlayerFriended of Logan is false.
PlayerControlled of Logan is false.
PlayerFucked of Logan is false.
OralVirgin of Logan is false.
Virgin of Logan is true.
AnalVirgin of Logan is true.
PenileVirgin of Logan is false.
SexuallyExperienced of Logan is true.
TwistedCapacity of Logan is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Logan is false. [steriles can't knock people up]
MainInfection of Logan is "Wolverine Guard".
Description of Logan is "[LoganDesc]".
Conversation of Logan is { "<This is nothing but a placeholder!>" }.
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
			say "...";
		else if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn]
			say "...";
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			say "...";
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			say "...";
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			say "...";
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			say "...";
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			say "...";
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night]
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
	if Strength of Logan < 99:
		choose a blank row in table of fucking options;
		now title entry is "Himself";
		now sortorder entry is 1;
		now description entry is "Ask Logan to tell you about himself";
	[]
	if Strength of Logan < 99:
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
	if Strength of Logan is 99: [player rejected submission to Logan]
		if Energy of Blake is 0: [nothing to dole out]
			say "     As you ask Logan for your share from whoring out Blake, the wolverine bares his teeth at you. 'Got nothing in the box for you, so piss off!'";
		else if Energy of Blake is 1: [one share to collect]
			say "     As you ask Logan for your share from whoring out Blake, the wolverine gives a derisive grunt. Pulling a wooden fruit crate out from behind his chair, the broad-shouldered anthro digs around and soon takes two items out of it, almost throwing them at you. 'There! Now piss off!'";
			CollectBlakePayout;
		else: [more than one share to collect]
			say "     As you ask Logan for your share from whoring out Blake, the wolverine gives a derisive grunt. Pulling a wooden fruit crate out from behind his chair, the broad-shouldered anthro digs around and shoves several items into a flimsy plastic shopping bag, which he thrusts at your chest. 'There! Now piss off!'";
			CollectBlakePayout;
	else: [normal scene]
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
		ItemGain food by Hunger of Blake;
		now Hunger of Blake is 0;
	if Thirst of Blake > 0:
		ItemGain water bottle by Thirst of Blake;
		now Thirst of Blake is 0;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Logan:
	if Strength of Logan is 99:
		say "     'Fucking forget it, you little punk! You had your chance!' Logan growls out with a scoff.";
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
	[]
	if Player is male and Strength of Logan < 1:
		choose a blank row in table of fucking options;
		now title entry is "Share a fuck of Blake with Logan";
		now sortorder entry is 4;
		now description entry is "Spit-roast the rat between you";
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
				if (nam is "Get on your knees and give him a blowjob"):
					say "[LoganSex1]";
				else if (nam is "Take Logan's cock in your pussy"):
					say "[LoganSex2]";
				else if (nam is "Take Logan's cock in your ass"):
					say "[LoganSex3]";
				else if (nam is "Share a fuck of Blake with Logan"):
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
	if Strength of Logan < 10 and Strength of Logan is not 5: [submission to him]
		increase Strength of Logan by 1;
	if Loyalty of Logan > 0 and Loyalty of Logan < 10: [he loses respect for basic sluts]
		decrease Loyalty of Logan by 1;

to say LoganSex2: [pussy fuck by Logan]
	say "     Stepping up to Logan, you put your hands on the sides of his broad torso and lean in to kiss him. With a grunt of lust, he replies by clamping his large hand around the curve of your neck, holding you tight as he opens his muzzle and gives your face a possessive lick. Following up with a rather forceful bout of making out, his tongue invading your mouth and attempting to wrestle yours into submission, you find yourself held in his strong arms. 'Another nice little slut, throwing yourself at me,' he comments as he finally relents a little, allowing you to get in a panted breath. 'And I got just what a needy bitch like you needs!' With that said, the anthro male lowers his hands to undo the button and zipper of his pants, allowing a thick and weighty knotted shaft to flop out. He wastes little time with more words, simply hooking a hand behind your neck and bending you forward to end up with his cock at eye level.";
	say "     'Open up and give it some attention!' Logan tells you in a demanding tone, chuckling as you take his manhood into your mouth right away. The wolverine quickly takes over after that, hand on your head and pumping it up and down on his cock instead of allowing you to do so at your own pace. He clearly has other things in mind than a relaxed blowjob though, and before you know it, your head is pulled away and you feel his hands under your armpits. 'Get up and bend over, bitch!' he barks out, pushing you towards a nearby wall and clamping his hands around your wrists, positioning them on the bricks so you stand in a typical 'police patdown' stance. Logan [StripCrotch], then grunts in your ear, 'You're gonna get it now, slut!' Taking hold of his erection, he strokes it up the inside of your legs, brushing against your clit and making you tremble in pleasure before he nudges it against your nether lips.";
	WaitLineBreak;
	say "     The spit- and precum-slick tip of Logan's shaft feels hot against your folds as he pushes in between them, then stretches your insides snugly around his thick cock. Leaning forward against the wall, you let out a loud moan as the strong man takes you from behind, grinding himself against your rear to bury all of his length inside. 'Now that's what I call a sweet and juicy pussy!' he calls out, wrapping one arm around your front as he gives you a sharp thrust that pops his pre-knot bulge past your opening. The next sounds from him are more animalistic in nature, as the wolverine begins to fuck you in a rapid and harsh tempo, really pounding into you and making his heavy balls slap against your crotch again and again. It's a good thing that he made you brace, as such no holds barred hammering would have you face-planted against the wall quickly otherwise.";
	say "     You're in for a wild ride with the vigorous wolverine that you chose to take on, with Logan pushing you to moan, gasp and scream in lust as he delves into the depths of your pussy and hits spots you didn't even know you had. He laughs at your helpless pleasure and grunts something about, 'Bitches just need to be shown their place,' as he ravages your pussy to his heart's content. You don't quite know how long your coupling takes, losing your sense of time in the blissed-out haze he puts you under, until the ever harder thrusts of the anthro beast fucking you herald his impending orgasm. With a deep growl, Logan hammers forward once more, burying all of his cock just in time to blast the first big splurge of his seed deep inside. Grunting dominantly, the wolverine fills you with a large and virile load, his knot swelling up to ensure that all of it stays inside you for a good long while. Your own pleasure is pushed right along with his, and you orgasm around his throbbing shaft just a few heartbeats later[if player is male], painting the wall in front of you with the splatters of your own cum[end if].";
	WaitLineBreak;
	say "     Out of breath and panting, the two of you stand against the wall for some time as you ride out your respective climaxes. 'Sweet little pussy you got there,' Logan finally says in a gruff tone and squeezes your ass. 'Wouldn't mind pounding it again a few times before all of this is over,' the anthro male adds, then starts to pull away from you, making you groan at the sensation of his still quite bulging knot against your inner opening. Your eyes go wide and you gasp as he gives a sharp tug, forcing his way out of your freshly-bred sex. This wolverine definitively isn't one to cuddle after sex it seems. Without a further word, he leaves you standing where you are, hand over your now aching and cum-dripping hole.";
	NPCSexAftermath Player receives "PussyFuck" from Logan;
	if Strength of Logan < 10 and Strength of Logan is not 5: [submission to him]
		increase Strength of Logan by 1;
	if Loyalty of Logan > 0 and Loyalty of Logan < 10: [he loses respect for basic sluts]
		decrease Loyalty of Logan by 1;

to say LoganSex3: [ass-fucking by Logan]
	say "     Stepping up to Logan, you put your hands on the sides of his broad torso and lean in to kiss him. With a grunt of lust, he replies by clamping his large hand around the curve of your neck, holding you tight as he opens his muzzle and gives your face a possessive lick. Following up with a rather forceful bout of making out, his tongue invading your mouth and attempting to wrestle yours into submission, you find yourself held in his strong arms. 'Another [if player is male]dirty little fag whore[end if], throwing yourself at me,' he comments as he finally relents a little, allowing you to get in a panted breath. 'And I got just what a needy bitch like you needs!' With that said, the anthro male lowers his hands to undo the button and zipper of his pants, allowing a thick and weighty knotted shaft to flop out. He wastes little time with more words, simply hooking a hand behind your neck and bending you forward to end up with his cock at eye level.";
	say "     'Open up and get it nice and wet, you'll need it!' Logan tells you in a demanding tone, chuckling as you take his manhood into your mouth right away. The wolverine quickly takes over after that, hand on your head and pumping it up and down on his cock instead of allowing you to do so at your own pace. He clearly has other things in mind than a relaxed blowjob though, and before you know it, your head is pulled away and you feel his hands under your armpits. 'Get up and bend over, bitch[if player is male]! Show me that boypussy[end if]!' he barks out, pushing you towards a nearby wall and clamping his hands around your wrists, positioning them on the bricks so you stand in a typical 'police patdown' stance. Logan [StripCrotch], then grunts in your ear, 'You're gonna get it now, slut!' Taking hold of his erection, he strokes it up the inside of your legs, brushing against your [if player is male]balls and dangling erection, [else]clit and[end if] making you tremble in pleasure before he nudges it against your wrinkled pucker.";
	WaitLineBreak;
	say "     The spit- and precum-slick tip of Logan's shaft feels hot against your back door as he pushes against it, increasing the pressure until it yields and allows his pointy head to slip inside. He keeps pushing more and more inside right away, stretching your insides snugly around his thick cock. Leaning forward against the wall, you let out a loud moan as the strong man takes you from behind, grinding himself against your rear to bury all of his length inside. '[if player is male]Faggots always have the nicest booty[else]Nice hole on ya[end if],' he calls out, wrapping one arm around your front as he gives you a sharp thrust that pops his pre-knot bulge past your opening. The next sounds from him are more animalistic in nature, as the wolverine begins to fuck you in a rapid and harsh tempo, really pounding into you and making his heavy balls slap against your crotch again and again. It's a good thing that he made you brace, as such no holds barred hammering would have you face-planted against the wall quickly otherwise.";
	say "     You're in for a wild ride with the vigorous wolverine that you chose to take on, with Logan pushing you to moan, gasp and scream in lust as he delves into the depths of your asshole and hits spots you didn't even know you had. He laughs at your helpless pleasure and grunts something about, 'Bitches just need to be shown their place,' as he ravages your hole to his heart's content. You don't quite know how long your coupling takes, losing your sense of time in the blissed-out haze he puts you under, until the ever harder thrusts of the anthro beast fucking you herald his impending orgasm. With a deep growl, Logan hammers forward once more, burying all of his cock just in time to blast the first big splurge of his seed deep inside. Grunting dominantly, the wolverine fills you with a large and virile load, his knot swelling up to ensure that all of it stays inside you for a good long while. Your own pleasure is pushed right along with his, and you orgasm around his throbbing shaft just a few heartbeats later[if player is male], painting the wall in front of you with the splatters of your own cum[end if].";
	WaitLineBreak;
	say "     Out of breath and panting, the two of you stand against the wall for some time as you ride out your respective climaxes. 'Sweet little fuckhole you got there,' Logan finally says in a gruff tone and squeezes your ass. 'Wouldn't mind pounding it again a few times before all of this is over,' the anthro male adds, then starts to pull away from you, making you groan at the sensation of his still quite bulging knot against your pucker from the inside. Your eyes go wide and you gasp as he gives a sharp tug, forcing his way out of your freshly-bred ass. This wolverine definitively isn't one to cuddle after sex it seems. Without a further word, he leaves you standing where you are, hand over your now aching and cum-dripping hole.";
	NPCSexAftermath Player receives "AssFuck" from Logan;
	if Strength of Logan < 10 and Strength of Logan is not 5: [submission to him]
		increase Strength of Logan by 1;
	if Loyalty of Logan > 0 and Loyalty of Logan < 10: [he loses respect for basic sluts]
		decrease Loyalty of Logan by 1;

to say LoganSex4: [spitroast Blake]
	say "     Stepping up to the improvised bedding on which Blake is stretched out, you smile down at the rat, already starting to get hard as you imagine what you can do to him. Then you look over your shoulder and [if Androginity of Player < 3]call out to Logan, asking if he wants to share the whore[else if Androginity of Player < 8]ask Logan if he wants to share your plaything[else]invite Logan to join you in enjoying the rat's body[end if]. The wolverine raises an eyebrow in a little bit of a surprised expression, since it is kinda 'your turn' to pound Blake and he didn't quite expect you to be generous about inviting anyone else in. '[if Loyalty of Logan > 0]Sure thing, who wouldn't want to take that slut,' [else]Why? You want me to show you how it's really done?' [end if]he finally says, grinning as he approaches and steps up next to you. Looking down at the tied-up captive, Logan grabs his bulge and gives you a nod. 'I'm gonna take the tighter end.' With that said, the muscular anthro pulls down the zipper of his uniform jacket and shrugs it off, quickly followed by his pants. Proudly showing off his girthy shaft as he lets it swing freely, the wolverine gets on the bedding with Blake, pulling him into a kneeling position with his ass raised high.";
	if Loyalty of Logan is 5 and "DP Bitch" is not listed in Traits of Blake: [first DP]
		say "     With the fingers of his large paw-hand curled around the base of his shaft, Logan smacks it down into the crack of Blake's ass, rubbing against his pucker. He lets a gob of spit drip down as improvised lube and starts to push into the rat, then suddenly pauses in motion and looks up at you. 'You know what? Wanna share this hole? Little whore has gotten so much big dick, I think he can take us both at the same time by now!' He grins broadly as he shuffles back on his knees and waves you over to take his place. Blake squirms a little, his back door glistening with Logan's pre-cum as it irises open and shut in nervousness about what's to come.";
		say "     [bold type]How do you react?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Ravage Blake's ass with Logan.";
		say "     ([link]N[as]n[end link]) - Pass on his offer.";
		if Player consents:
			LineBreak;
			say "     Stepping up to take the spot crouching over Blake, you bend your cock down and line it up, then slide right into him, drawing a grunt from the tied-up rat. His hole wraps snugly around your erection, nice and tight despite everything he's already been through as an alley whore. You can't help but feel a little aroused about the fact that Blake's hole is literally lubed with Logan's spit and pre-cum, making it nice and receptive for your erection. 'Feels amazing, doesn't he?' the wolverine says a heartbeat after that thought crossed your mind, moving close enough behind you to feel some of the fur on his broad chest against your back. 'Don't you worry about breaking his ass either. He'll stretch! Some of the dudes he messed around before and who came to visit by now with were hung as fuck! Seems our little moneymaker's made for this and snaps right back tight quick!'";
			say "     After saying that, you feel a whole lot more of Logan, as the large man puts his left hand on your hip to hold you still and his front presses against your back. Down below, you feel his erect shaft poke against your own buttocks for a second, before he takes it in a clawed hand and bends it down to seek out Blake's already stretched hole. The warm, thick erection slides along your own and presses into the rat, creating an all new sensation of tightness and arousal as your cocks are pressed together tightly inside Blake. Logan grunts in arousal, his muzzle next to your ear, then starts to withdraw and thrust back in. Even though you're sandwiched between the two of them and can't really move freely, Logan's eager thrusts move you along with him a little, in and out and also rubbing against your own erection. 'Yeah, that's what I'm talking about bro! He's so fucking tight now!' Logan grunts loudly, one strong arm wrapping around your midriff to hold you against him and fuck Blake together.";
			WaitLineBreak;
			say "     Now being shafted by two men at the same time, the tied-up rat in front of you bucks and twitches with each deep thrust, groaning and drooling around the ball-gag stoppering his muzzle. His hole twitching in helpless reflexes around the two big invaders inside just makes the sensations all the sweeter, and you enjoy being inside the former mind-controller immensely. The three of you fill the grimy side alley with loud sounds of sex, prompting more than a few passersby to stop on their way to the Shag Shack and watch for a little while before moving on. You definitely hear some aroused cheers and laughter coming from the entrance of the alley, and there might have been some comments about trying your whore sometime. Having an audience prompts you to give a few thrusts into Blake independently from Logan, creating a new experience of sliding out while he thrusts in, and vice versa.";
			say "     'Dude, that's so hot!' the wolverine growls in arousal, arm sliding up a bit over your chest to not hold you quite as tight anymore and allow more movement. Together, you deep-dick Blake again and again, driving Logan wild! The broad-shouldered anthro gets increasingly growl-y and hammers into the rat harder with each thrust, pushing inside him and sliding against you. His aggressive humping builds up to basically man-handling you, as his forceful thrusts drive you all the way into Blake right along with him. Logan's cock feels quite hot against your own, then seems to become thicker all of a sudden! A heartbeat later, you realize that it was a massive throb of cum blasting into Blake, and you can feel the creamy load start to surround your shaft as more is delivered in the following eruptions. Further down, the base of Logan's dick swells up into a full-on knot, locking him into the rat and putting your own shaft in a vice-like grip. That was the last push you needed, driving you over the edge to start unloading into Blake yourself.";
			WaitLineBreak;
			say "     Panting breathlessly, you shudder and groan as you come into the rat. It could be said that the tightly pressed dicks inside him delivering an almost unbroken stream of seed, as Logan and yourself seem to alternate in your delivery of Blake's creamy stuffing. Lost in lustful bliss that you are, you barely register being cheered on by the spectators. Instead, your mind is razor-focused on Logan's cock, pressing against your own with its massive knot and still throbbing to add to the mixture of cum filling Blake's insides. Breathing heavily, the two of you ride out the high of climax together, just staying where you are until further shots of cum start to ebb and finally stop. 'Man, that was good, really good! Thanks bro, we showed the slut what's what!' Logan says to you, his tooth-filled muzzle right next to your head and a large clawed paw-hand patting your upper chest in camaraderie. 'Gotta be a little while till the knot goes down, so... what do you wanna talk about? What's your fav football team, for example?";
			say "     You can't help but chuckle at the nonchalant way in which this literal beast of a man leads over into casual conversation while you're both balls-deep in your shared sex slave and whore. Seems like for Logan, you only really count as a person when you're one of his friends, and making use of Blake together has earned you that position. [bold type]So, now you're no longer someone to be tolerated, or exploited, in his eyes. If that dubious honor is really what you want is for you to decide. Of course, showing weakness or unwillingness to be as depraved as Logan might just cause him to turn on you in a flash...[roman type] For now, you simply have some light conversation with him, feeling more like two friends hanging out and sharing a beer on the couch than just having double-penetrated a tied-up captive.";
			WaitLineBreak;
			say "     Eventually, Logan's knot starts to soften a little, enough that it's possible (but still not easy) to withdraw from Blake's ass. Slowly starting to pull back, the wolverine makes Blake writhe and let out a muffled shout as his swollen knot pops past the rat's violated hole, together with your own cock. Stopping at the point when just his dickhead is still in Blake, Logan gives the rat's narrow ass a slap. 'Remember what I taught you, slut! If a master breeds your hole, you better be ready to hold it all in! At least then there'll be something worth something inside your mangy fur! Now show me how well you can squeeze that ring of yours!' Pulling his cock out all the way, Logan looks down expectantly, giving a halfway satisfied grunt as Blake's pucker pulls tight in an almost desperate speed. 'Looks like even a stupid cunt like you is able to learn eventually. Keep that up, boy!'";
			say "     Some unintelligible mumbling comes from where the Rat is face-planted on his bedding while Logan stands up and pulls you to your feet, clapping on your shoulder with a grin. 'Gotta do this again sometime, eh bud?' You nod to him, then go grab your gear[if player is not naked] and clothing[end if], getting ready to turn back towards serious matters like surviving in the city. Meanwhile, Logan moves to crouch next to Blake, grabbing the rat by the back of his neck and saying something into his ear in a low tone. Then he shoves Blake, making him flip over on the grimy bedrest and lets out a laugh. 'Look at this - seems our rat-slut came from being fucked!' Baring his many sharp teeth in a wide grin, the wolverine points at a large wet spot right where Blake was before, standing out from the rest of the cum-stains all over his bedding by being fresh.";
			NPCSexAftermath Blake receives "AssFuck" from Logan;
			NPCSexAftermath Blake receives "AssFuck" from Player;
			increase Loyalty of Logan by 1;
			add "DP Bitch" to Traits of Blake;
		else:
			LineBreak;
			say "     As you decline the double-penetration, Logan lets out a grunt, then shrugs his broad shoulders. 'Your loss,' he adds as he thrusts himself harshly back into the street rat, his thick shaft penetrating all the way up to the base in one fell swoop that draws a ball-gag muffled shout from Blake. ";
			Spitroast_Blake;
			SpitRoast_Blake_End_Loyalty5Refused;
			NPCSexAftermath Blake receives "AssFuck" from Logan;
			NPCSexAftermath Blake receives "OralCock" from Player;
			decrease Loyalty of Logan by 1; [player still refused his offer, so he likes them less]
	else:
		say "     Grinning at you and wiggling his eyebrows, Logan curls his large paw-hand around the base of his shaft, smacking it down into the crack of Blake's ass, rubbing against his pucker. 'Love making worthless little wanna-be-s like you into nothing more than a cum-sleeve!' come a few mocking words for the street rat, with Logan watching with amusement as Blake strains against his restraints a little and shakes his head.";
		Spitroast_Blake;
		SpitRoast_Blake_End_Regular;
		say "     Still grinning, Logan raises a hand from where it was gripping Blake's hips, bunching it up to a fist and holding it out to you.";
		say "     [bold type]How do you react?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Meet him in the fist bump. You're bro's sharing a slut after all.";
		say "     ([link]N[as]n[end link]) - Just focus on your ratty slut and grind your crotch against his muzzle. Just because you're in business together doesn't mean you're Logan's friend.";
		if Player consents:
			LineBreak;
			say "     Meeting Logan's eyes and smiling at him, you raise your own first and bump knuckles. ";
			if Loyalty of Logan < 5:
				say "'Now that's what I call a good time! Sharing a needy slut in good company!' Logan comments, nodding at you and then glancing down to the street rat. ";
				increase Loyalty of Logan by 1;
			else if Loyalty of Logan < 10 and "DP Bitch" is listed in Traits of Blake: [deeper friendship unlocked]
				say "'Yeah bro, we really showed the slut his place!' Logan comments, then grips your forearm and gives it a friendly squeeze. Holding onto you for a moment and giving a nod, the wolverine then glances down to the street rat. ";
				increase Loyalty of Logan by 1;
			say "Slowly starting to pull back, he makes Blake writhe and let out a muffled shout as his swollen knot pops past the rat's violated hole. Stopping at the point when just his dickhead is still in Blake, Logan gives his narrow ass a slap. 'Remember what I taught you, slut! If a master breeds your hole, you better be ready to hold it all in! At least then there'll be something worth something inside your mangy fur! Now show me how well you can squeeze that ring of yours!' Pulling his cock out all the way, Logan looks down expectantly, giving a halfway satisfied grunt after a few seconds. 'Looks like even a stupid cunt like you is able to learn eventually. Keep that up, boy!' Some unintelligible mumbling comes from down at your crotch, where you still have your own cock inside Blake's mouth, waiting out the last throbs of cum to send down his gullet. By the time you're done cumming for good, Logan is beside you and reaches down, quickly gagging Blake again as soon as your erection passes his lips.";
			say "     Standing back up, you go grab your gear[if player is not naked] and clothing[end if], getting ready to turn back towards serious matters like surviving in the city. Meanwhile, Logan stays crouched next to Blake for a while longer, holding the rat by the back of his neck and saying something into his ear in a low tone. Then he shoves Blake, making him flip over on the grimy bedrest and lets out a laugh. 'Look at this - seems our rat-slut came from being fucked!' Baring his many sharp teeth in a wide grin, the wolverine points at a large wet spot right where Blake was before, standing out from the rest of the cum-stains all over his bedding by being fresh.";
		else:
			LineBreak;
			say "     Looking down at Blake, you don't see Logan's expression at you ignoring him, but there is a grunt with an annoyed undertone. Shoving that fact aside, you keep your own cock inside Blake's mouth, waiting out the last throbs of cum to send down his gullet. By the time you're done cumming for good, Logan is beside you and reaches down, quickly gagging Blake again as soon as your erection passes his lips. Standing back up, you go grab your gear[if player is not naked] and clothing[end if], getting ready to turn back towards serious matters like surviving in the city. Meanwhile, Logan stays crouched next to Blake for a while longer, holding the rat by the back of his neck and saying something into his ear in a low tone.";
			if Loyalty of Logan > 1:
				decrease Loyalty of Logan by 1;
		NPCSexAftermath Blake receives "AssFuck" from Logan;
		NPCSexAftermath Blake receives "OralCock" from Player;

to Spitroast_Blake:
	say "The wolverine jumps straight into power-fucking your captive, filling the air with the slapping sounds of his balls hitting Blake's ass. Meanwhile, you get into position at the rodent anthro's front and start to undo one of the straps holding his ball-gag in place. As you pull it out of the rat's muzzle, he keeps it wide open for a few seconds longer, out of habit at being gagged so long. Then his pointy muzzle snaps shut, lips drawing tight and his jaw moving a little to stretch in ways that have been denied to him for a while now. 'Stop this and free m-' Blake starts to hoarsely demand, only to be interrupted as Logan slams himself home once again and forces a loud moan from the tied-up slave.";
	say "     'God, it's so fucking thick!' the street rat groans out, at which point you bring your own [Cock of Player] shaft forward and plug his muzzle a different way. Hands moving to the sides of the anthro rodent's blindfolded head, you dig your fingers into his shaggy hair and clamp your thumbs over his protruding ears, then proceed to face-fuck Blake like the slut you've made him. As your manhood slides against his tongue and into the back of his throat, Blake's lips draw tight around your girth and his inner muscles clench nice and tight. You can't quite tell if this is him still trying to speak, attempts to pleasure you or something else - but then, who cares in the end? You've got a nice and readily available hole to fuck, and that's what you're gonna do.";
	WaitLineBreak;
	say "     Spit-roasting the rat from both ends, the three of you fill the grimy side alley with loud sounds of sex, prompting more than a few passersby to stop on their way to the Shag Shack and watch for a little while before moving on. You definitely hear some aroused cheers and laughter coming from the entrance of the alley, and there might have been some comments about trying your whore sometime. Having an audience prompts you to speed up, really slamming into Blake's muzzle and making your balls slap his chin again and again. Logan finds the rodent cock-sleeve driven back against his thrusting shaft and joins you in a no-holds-barred fuck-marathon that sees Blake just bouncing back and forth between you. Things come to a head when you hear a dominant growl rise up from the wolverine's broad chest, followed by a bellow of, 'Take it, you fucking bitch!' Strong hands digging into the fur above Blake's hips, he holds the street rat tight and blows a massive load into him, throb after throb of thick cum painting the sex slave's insides white.";
	say "     Feeling himself be used as a cum-dump yet again has a noticeable effect on Blake, and you can see him tilting his hips up and down to grind against Logan's crotch. His throat muscles aren't inactive either, with the rat's Adam's apple bouncing as he squeezes your shaft. It almost seems like he's getting off on his new role in life, and wants to milk the two males dominating him. Be it what it may, you feel yourself getting close as well, so you tighten your grip on Blake's head and slam deep into him. Letting out a grunt as the urgent need to cum boils over, you blast your rich cream right into Blake's stomach as your eyes roll back in ecstasy. Grunts and heavy breathing fill the air for a little while as the two of you unload into Blake, until you eventually open your eyes and see Logan's grinning face right in front of you, bent over the rat as he is. 'Guess I won't have to feed him today, as you already gave him a mouthful! ";

to SpitRoast_Blake_End_Regular:
	say "Good job showing the whore his place! T'was nice to share him with someone who knows how to treat a slut!'";
	LineBreak;

to SpitRoast_Blake_End_Loyalty5Refused:
	say "Still, you don't know what you missed in his ass. He'd have been even tighter with two dicks in him!'";
	WaitLineBreak;
	say "     Slowly starting to pull back, he makes Blake writhe and let out a muffled shout as his swollen knot pops past the rat's violated hole. Stopping at the point when just his dickhead is still in Blake, Logan gives his narrow ass a slap. 'Remember what I taught you, slut! If a master breeds your hole, you better be ready to hold it all in! At least then there'll be something worth something inside your mangy fur! Now show me how well you can squeeze that ring of yours!' Pulling his cock out all the way, Logan looks down expectantly, giving a halfway satisfied grunt after a few seconds. 'Looks like even a stupid cunt like you is able to learn eventually. Keep that up, boy!' Some unintelligible mumbling comes from down at your crotch, where you still have your own cock inside Blake's mouth, waiting out the last throbs of cum to send down his gullet. By the time you're done cumming for good, Logan is beside you and reaches down, quickly gagging Blake again as soon as your erection passes his lips.";
	say "     Standing back up, you go grab your gear[if player is not naked] and clothing[end if], getting ready to turn back towards serious matters like surviving in the city. Meanwhile, Logan stays crouched next to Blake for a while longer, holding the rat by the back of his neck and saying something into his ear in a low tone. Then he shoves Blake, making him flip over on the grimy bedrest and lets out a laugh. 'Look at this - seems our rat-slut came from being fucked!' Baring his many sharp teeth in a wide grin, the wolverine points at a large wet spot right where Blake was before, standing out from the rest of the cum-stains all over his bedding by being fresh.";
	NPCSexAftermath Blake receives "AssFuck" from Logan;
	NPCSexAftermath Blake receives "OralCock" from Player;


after going to Dirty Alley while Logan is in Dirty Alley:
	[generalized start]
	say "     As you walk into the Alley, you see Logan [one of]casually leaning against a nearby wall, his arms crossed before his broad chest[or]sitting in his chair, relaxedly slouched backwards as he keeps the entrance of the alley and Blake in view[or]standing behind a dumpster deeper in the alley, then zipping up and coming out from behind it[or]saunter away from where Blake is lying on the mattress, pulling up his zipper[or]crouched next to Blake, holding the rat by the back of his neck and saying something into his ear[at random]. ";
	if Loyalty of Logan is 10: [Player is his friend]
		say "The gruff wolverine glances over to you as he notices your presence and throws a grinning nod your way. 'Hey [if player is not defaultnamed][Name of Player][else]my friend[end if], what brings you over here today? [one of]Wanna double-team our little moneymaker?' [or]Did ya want to hang out with me?' [or]Collecting your take again?' [at random][line break]";
	else if Loyalty of Logan > 5: [Player is his buddy]
		say "The gruff wolverine glances over to you as he notices your presence and throws a grinning nod your way. 'Hey bud, what brings you over here today? [one of]Wanna have a turn with our little moneymaker?' [or]In the mood to give Blake another dose of what he has coming?' [or]Doing a tour of the dirtiest holes of the city and wanted to check out the one with the cum-drenched rat?' [at random][line break]";
	if Strength of Logan is 99: [player rejected submission]
		say "The gruff wolverine glances over to you as he notices your presence, letting out a derisive grunt. 'Don't fucking talk to me, you waste of space!'";
	else if Strength of Logan is 95: [player only wants him]
		say "The gruff wolverine glances over to you as he notices your presence and a lopsided smirk shows his set of sharp teeth. 'So, little slut in training comes back? Maybe we can make a proper sub of you eventually, but I'm not holding my breath.'";
	else if Strength of Logan > 9: [player is his slut]
		say "The gruff wolverine glances over to you as he notices your presence and a lewd smile spreads over his face. 'Coming back for more, slut? Can't get enough of this, hah!' He puts a hand on his pants and squeezes his bulge, thrusting it suggestively at you. 'The ratty whore isn't getting all of my cum, no worries, I got enough for you too!'";
	else if Strength of Logan > 5 and a random chance of 1 in 3 succeeds and lastfuck of Player - turns > 2: [fucking, whoring, ... random chance, player has no choice]
		say "The gruff wolverine glances over to you as he notices your presence and a smirk shows his set of sharp teeth. 'Perfect timing, slut! One of the guys swung by a little while ago and he said he'd be back with payment for a little fun. Come over here and get ready for some action!' He puts a hand on his pants and squeezes his bulge suggestively, then grabs a somewhat grimy sofa cushion from where it is leaning against the alley wall, throwing it on the ground for you. [if player is not naked]'Strip!' he commands, and you obey, well-used to the wolverine's demanding ways by now. [end if]A moment later, you're kneeling on the cushion, naked and awaiting what will come next.";
		say "[LoganPlayerPimping]";
	else if Strength of Logan > 5: [player has shown a fair bit of submission]
		say "The gruff wolverine glances over to you as he notices your presence and a smirk shows his set of sharp teeth. 'Coming back for more, eh? And I'm not talking of your share of the income from the ratty whore! Why don't you come over here and put your mouth to work!' He puts a hand on his pants and squeezes his bulge, thrusting it suggestively at you.";
	else if Strength of Logan is 5: [submission decision special event]
		say "The gruff wolverine glances over to you as he notices your presence and a smirk shows his set of sharp teeth. 'If it isn't my eager little cocksleeve, coming back for more! Been waiting to do you again, so come here and get sucking!' He puts a hand on his pants and squeezes his bulge, thrusting it suggestively at you. Having put out more than a few times for the demanding wolverine by now, you find yourself stepping forward almost automatically, soon arriving before him.";
		say "[LoganDominanceEvent1]";
	else if Strength of Logan > 0 and a random chance of 1 in 3 succeeds: [BJ random chance, player still has a choice]
		say "The gruff wolverine glances over to you as he notices your presence and a smirk shows his set of sharp teeth. 'If it isn't my eager little cocksleeve, coming back for more! Been waiting to do you again, so come here and get sucking!' He puts a hand on his pants and squeezes his bulge, thrusting it suggestively at you.";
		say "     [bold type]Do you submit to his request and give Logan a blowjob?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - *Slurp*";
		say "     ([link]N[as]n[end link]) - Not in the mood right now.";
		if Player consents:
			LineBreak;
			say "[LoganSex1]";
		else:
			say "     A slightly annoyed grunt comes from the wolverine, while his eyes [if player is naked]roam over your naked body[else]seem to strip you naked with their looks[end if]. Finally, he shugs and says, 'You'll be back soon enough. True sluts never can resist for too long. And in the meantime, I still got the rat's twinky hole to enjoy!'";
	else: [some to none submission]
		say "The gruff wolverine glances over to you as he notices your presence, then gives a curt nod in greeting. 'Yo! Still on post, you don't have to worry about our ratty whore. He's getting some visitors every day and is a steady earner.'";

to say LoganDominanceEvent1:
	say "     'Knew you couldn't resist, little whore,' Logan says, reaching out to clamp a hand on your shoulder and taking control. Pressing down, he makes you kneel before him, then cradles your head in a show of dominance. 'Love the moments when subs realize that they obey without thinking about it,' the gruff wolverine says with a broad grin on his face, pushing two of his fingers between your lips. 'Suck on that!' he commands and you do so, slurping on his digits and your tongue playing over the pads of his fingers. His free hand moves to pull down the zipper of his pants, freeing a thick and hard knotted cock from its prison. Wrapping his fingers around the shaft of the large erection, he waves it around and smacks your cheek with it. 'Just another needy slut, hungry for my dick! Guess we can skip the breaking and go right to training, hah!' As he says this, his gaze strays to Blake for a moment, and you can't help but wonder what exactly he's doing to the rat in the times you aren't here.";
	WaitLineBreak;
	say "     'Your mouth is just watering when you think about sucking my long, hard cock! Here it is, [if player is female]darling[else]dude[end if]! Go on, worship it!' With that said, the wolverine wrenches his fingers from your mouth, holding his shaft out for you to suck next. You stretch your neck and accept the pointy head of his shaft, lips closing around it as you suckle the hunky male's dick and then begin to bob on it. 'That's a good slut! Deeper!' Logan demands while undoing the button of his pants and pulling its front open further, chuckling as you take more of his length into your mouth. His paw-hand slides around the back of your head next, getting a good grip and slamming you against his crotch. Nose suddenly buried in the wild nest of his pubic fur and taking huffs of his manly musk, your throat muscles tremble and flex around the invading shaft. 'Yeah, now we're talking!' Logan grunts in pleasure and you can feel a throb go through his shaft as a little spurt of pre-cum is sent to trickle into your stomach.";
	say "     Then suddenly, you hear someone's deep voice from behind you, calling out, 'Hey Logan, I'm back for - oh, what's this? Expanding with some new talent?' Whoever the man is, there is a an undertone of arousal and interest to his voice, and Logan chuckles, clamping his hands on your head to keep your mouth well-filled with dick and you shut up. 'Pretty much so, just enjoying some oral service as I train [ObjectPro of Player] up! Say, with you being such a good customer when it comes to boning the rat-slut, I can make you a special offer. Wanna be the first to slide your shaft in this one? I can guarantee that no other customer had a go yet.' The other man laughs heartily and you hear the sound of something rustling, a backpack being put down maybe? 'You know me too well, Logan. Can't resist some fresh meat, hah! So, what's this one gonna cost me?' 'Triple, with it being a special occasion and all that.'";
	LineBreak;
	say "     [bold type]The wolverine is about to pimp you out! Do you allow that to happen?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Logan knows what a slut like you needs!";
	say "     [link](2)[as]2[end link] - Fuck no! You only want Logan, not any other random guy!";
	say "     [link](3)[as]3[end link] - You're having doubts about all of this now!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to submit, [link]2[end link] to resist and only want Logan or [link]3[end link] to push away all of his attention.";
	if calcnumber is 1:[Toad customer]
		say "     'Go on, show him your goods,' Logan commands in a gruff voice, all the while holding your head tight, with you huffing his musky pubes. Following his orders, you [if player is not barecrotch][SelfStripCrotch], then[end if] plant both hands on your buttocks and spread them. Presenting your [if player is herm]pussy and asshole[else if player is female]pussy[else if player is male]asshole, cock and balls[else]asshole[end if] to the unknown customer [if player is submissive]plays right into your submissive instincts, with a pleasant shiver running up your spine [else]makes you wonder what submissive impulse got you into this situation, even [end if]as he reaches out to touch you with a large, somewhat rough-skinned hand. Thick fingers with blunted claws grip your buns and squeeze them, followed by the guy's index finger being stroked from the small of your back into the crack and all the way to your crotch. 'It's a deal, gonna enjoy this!' the deep voice says and you hear movement behind you.";
		say "     The next thing you feel is a quite broad, slick tongue touching your crotch, tracing over it and then licking up your crack. It moves in an almost prehensile way, [if player is female]teasing your clit and making a pretend push between your nether lips before [end if]pushing in against your pucker and making it nice and wet. Chuckling, Logan starts to face-fuck you again at the same time, his canine shaft pushing down your throat and being held there for a few seconds before he withdraws to allow you a gasp of air, followed by another thrust. You're licked and teased for a little while, before the tongue eventually pulls back and those rough-skinned hands take hold of your forearms. 'Be a good [boygirl] and brace, you'll need it!' he says, then guides your arms forward, where you grab hold of Logan's legs. As he does so, you see the yellow, bumpy skin on his thick and weighty forearms and hands, making you wonder what sort of creature he is. Not a lizard, those weren't scales you felt, and... then your thoughts are pulled in another direction as you feel the length of his erection brush against your bare buttocks!";
		WaitLineBreak;
		say "     A large hand grips you by the waist, holding you steady while the guy strokes his thick schlong up and down your crack a few times, then lines it up with your opening. You groan a thankful sound around Logan's dick in your mouth at the fact that the John licked you in preparation, no doubt knowing that his massive cock is a workout to take. ";
		if player is female: [female and herm]
			if Cunt Depth of Player + 2 < Cock Length of Lingau and Player is not twistcapped: [player pussy depth (+2 stretching allowance) vs 14 - doesn't fit]
				say "The pointy tip of the large shaft nudges your nether lips apart and slides in with a smooth push, with his tapering girth gradually stretching your opening. He keeps going with steady pressure, not forcing himself in but also never backing down until the point at which he's in as far as he can go, not an inch more fitting despite all attempts at stretching you. The large male accepts this with little more than a grunt and moves on to fucking, sliding almost all of the way out before giving a sharp thrust in, again and again as he enjoys the whore he bought.";
			else: [he fits in the player - either naturally or through twisted capacity]
				say "The pointy tip of the large shaft nudges your nether lips apart and slides in with a smooth push, with his tapering girth gradually stretching your opening. He keeps going with steady pressure, not forcing himself in but also never backing down until the point at which his whole erection has been sunk into your body. 'That's a sweet little slut, Logan! Took my whole shaft all the way down! Think you can you train Blake up to do the same eventually?' 'Sure thing, you just wait!' The large male behind you chuckles, then moves on to fucking you, sliding almost all of the way out before giving a sharp thrust in, again and again as he enjoys the whore he bought.";
			say "     The two males spit-roast you between them, hammering your holes front and back in a rapid tempo that takes your breath away. Even with your hands gripping Logan's legs, the heavy thrusts against your ass by the customer drive you face-first against the wolverine's crotch more often than not, which Logan enjoys quite a bit actually. During one of those instances of his cock being rammed extra deep down your throat, the muscled anthro finally reaches his point of no return and you feel him throb hard inside you even before the growl of 'I'm coming! Take my load, bitch!' passes his lips. Clawed hands clamping on your head, he keeps you tight against his crotch, nose buried in his pubes while his cock unloads down your throat. He's so focused on his climax that he almost forgets to pull back in time before his rapidly swelling knot locks you together, so your mouth has to open almost painfully wide to allow him to slip his shaft from it, followed by several more spurts of cum making a creamy mess of your face.";
			WaitLineBreak;
			say "     On your other end, the John is enjoying himself quite a bit, pounding in and out of you rapidly while your inner muscles tremble and flex instinctively as Logan feeds you his load. [if player is herm]Being used as a whore like this has your own cock fully hard and erect, swinging up and down with each of the thrusts against your ass, all the while dripping pre-cum on the ground between your legs. [end if]The customer speeds up even more after he sees Logan cum, apparently eager to join him in reaching an orgasm. His deep-voiced grunts become louder and more urgent, rising to full out bellows as he thrusts in all the way one last time, then unloads a deluge of cum into you, heavy throbs filling your innermost depths with his load. You yourself are behind barely a moment, stimulated by feeling him pulse inside you and with one hand quickly moving down to finish yourself off. [if player is herm]With your hand wrapped tightly around your cock, you start blasting out long streaks of cum, [else]With your fingers frigging your clit like crazy, you start dripping and squirting femcum, [end if]making a mess of the ground between your legs.";
			NPCSexAftermath Player receives "OralCock" from Logan;
			NPCSexAftermath Player receives "PussyFuck" from Lingau;
		else:
			if Asshole Depth of Player + 2 < Cock Length of Lingau and Player is not twistcapped: [player ass depth (+2 stretching allowance) vs 14 - doesn't fit]
				say "The pointy tip of the large shaft nudges your pucker, its shape and the slick saliva he left there making it relatively easy to slide in with a smooth push. His tapering girth gradually stretches your opening around it as he moves deeper. He keeps going with steady pressure, not forcing himself in but also never backing down until the point at which he's in as far as he can go, not an inch more fitting despite all attempts at stretching you. The large male accepts this with little more than a grunt and moves on to fucking, sliding almost all of the way out before giving a sharp thrust in, again and again plunging into your asshole as he enjoys the whore he bought.";
			else: [he fits in the player - either naturally or through twisted capacity]
				say "The pointy tip of the large shaft nudges your pucker, its shape and the slick saliva he left there making it relatively easy to slide in with a smooth push. His tapering girth gradually stretches your opening around it as he moves deeper. He keeps going with steady pressure, not forcing himself in but also never backing down until the point at which his whole erection has been sunk into your body. 'That's a sweet little slut, Logan! Took my whole shaft all the way down! Think you can you train Blake up to do the same eventually?' 'Sure thing, you just wait!' The large male behind you chuckles, then moves on to fucking you, sliding almost all of the way out before giving a sharp thrust in, again and again plunging into your asshole as he enjoys the whore he bought.";
			say "     The two males spit-roast you between them, hammering your holes front and back in a rapid tempo that takes your breath away. Even with your hands gripping Logan's legs, the heavy thrusts against your ass by the customer drive you face-first against the wolverine's crotch more often than not, which Logan enjoys quite a bit actually. During one of those instances of his cock being rammed extra deep down your throat, the muscled mustelid finally reaches his point of no return and you feel him throb hard inside you even before the growl of 'I'm coming! Take my load, bitch!' passes his lips. Clawed hands clamping on your head, he keeps you tight against his crotch, nose buried in his pubes while his cock unloads down your throat. He's so focused on his climax that he almost forgets to pull back in time before his rapidly swelling knot locks you together, so your mouth has to open almost painfully wide to allow him to slip his shaft from it, followed by several more spurts of cum making a creamy mess of your face.";
			WaitLineBreak;
			say "     On your other end, the John is enjoying himself quite a bit, pounding in and out of you rapidly while your inner muscles tremble and flex instinctively as Logan feeds you his load. Being used as a whore like this and him rubbing your prostate has your own cock fully hard and erect, swinging up and down with each of the thrusts against your ass, all the while dripping pre-cum on the ground between your legs. The customer speeds up even more after he sees Logan cum, apparently eager to join him in reaching an orgasm. His deep-voiced grunts become louder and more urgent, rising to full out bellows as he thrusts in all the way one last time, then unloads a deluge of cum into you, heavy throbs filling your innermost depths with his load. You yourself are behind barely a moment, stimulated by feeling him pulse inside you and with one hand quickly moving down to finish yourself off. [if player is male]With your hand wrapped tightly around your cock, you start blasting out long streaks of cum, making a mess of the ground between your legs.[else]With your hand frigging your sexless but nevertheless quite sensitive crotch, you start feeling tingly and quite pleasurable before much longer.";
			NPCSexAftermath Player receives "OralCock" from Logan;
			NPCSexAftermath Player receives "AssFuck" from Lingau;
		say "     There is a little bit of a cool-down period in which the three of you ride out your orgasms, with more cum filling your hole or being fed to you and everyone catching their breaths. Then the guy behind you pulls out relatively unceremoneously, allowing his hefty load to start leaking out and trickle down the inside of your thighs. A rustling sound indicates that he went to grab his backpack and is digging around in it. Logan hooks a hand under your arm at this point, pulling you up to stand beside him and turning you around, allowing you to see the man who just fucked and bred your [if player is female]pussy[else]ass[end if]. He's a fairly enormous anthro cane toad, at least 8 feet tall and just as wide. That isn't to say that he's fat though, simply built in a very bulky and broad way. He doesn't appear to see the need to wear clothing and you can see why - his dark yellow skin with all its bumps looks quite tough.";
		WaitLineBreak;
		say "     While you study the toad, Logan shows you off too, stroking his hand over your body and then pushing two fingers between your lips. 'Thought you'd like to see the front of the new whore too, Lingau. Here we go. Trust me, the mouth is worth a go too!' The toad nods with a broad grin and replies, 'Nice, I agree. I know why I keep coming back to you for some fun. You have an eye for good talent. Say, what's [PosAdj of Player] name? I like knowing who I'm fucking.' Logan cuckles and pushes his fingers in and out of your mouth while saying, '[if player is not defaultnamed][Name of Player][else]Oh, it's something or other, quite forgettable. Don't bother memorizing it, just remember that [SubjectPro of Player] is a good fuck[end if]. Spread the word to your friends that I've got a new treat available, will ya? Though this one is free range, so won't be available all the time. Not like the fuckmeat back there.' He nods over to Blake as he adds the last bit.";
		say "     Lingau stacks up some supplies on Logan's chair to pay for your services, then shoulders his backpack and gives the two of you a friendly wave. 'See ya next time,' he says amicably, then walks out of the alley. Smirking lewdly as he looks you up and down, Logan gives your ass a grope and feels you up, then says, 'Nice to see that you know when to obey. I like that in my subs, and you'll bring in quite a bit I bet. Lingau isn't the violent type who'd grab his own fucks, so he's a steady customer. Quite a sociable guy too, he knows a lot of people, and your debut will spread like wildfire! Better be ready to suck some dick when you come by here, understand?' As you open your mouth to reply, Logan presses his thumb on your tongue and has you suck on it, not really caring about the answer. But then, you already gave him one earlier, when you allowed him to do what he wanted with you and even pimped you out.";
		now Strength of Logan is 6; [on the path of submission]
	else if calcnumber is 2:
		say "     Raising your hands and pushing against the legs of the wolverine, you try to get his cock out of your mouth to protest, but Logan mercilessly keeps you in his grip. He even doubles down on what he was doing, thrusting in deeper and giving you something else to think about as he pushes into your throat. 'Aww, looks like [SubjectPro of player] isn't quite ready yet. Too bad,' the customer says in disappointment as you buck against Logan's control. 'I'll leave you to it then.' Logan quietly curses under his breath, then calls out loudly, 'My apologies. The offer still stands, though. I'll reserve this one for you and you can have your go when [SubjectPro of player]'s a bit less headstrong!' With your nose buried in Logan's pubes and his dick down your throat, your air flow is cut off, and before long you start to see stars dancing in front of your eyes. Then suddenly, the muscled anthro pulls back and lets you collapse to the ground, gasping for air.";
		say "     'What the fuck was that?' he asks angrily, slapping the back of your head. Clearly not amused, the man stands over you and looks down, his teeth bared in a snarl. You stammer out your reasoning about only wanting to be his, and the wolverine scoffs. 'You what?! Someone's clearly not understanding what it means to be a sub! Either you obey in everything I tell you, or you're just a waste of my time! Though I guess I can train the stupid out of you with some effort. Fuck off for now, your little tantrum ruined the mood!'";
		now Strength of Logan is 95; [player only wants him]
	else:
		say "     Raising your hands and pushing against the legs of the wolverine, you try to get his cock out of your mouth to protest, but Logan mercilessly keeps you in his grip. He even doubles down on what he was doing, thrusting in deeper and giving you something else to think about as he pushes into your throat. 'Aww, looks like [SubjectPro of player] isn't quite ready yet. Too bad,' the customer says in disappointment as you buck against Logan's control. 'I'll leave you to it then.' Logan quietly curses under his breath, then calls out loudly, 'My apologies. The offer still stands, though. I'll reserve this one for you and you can have your go when [SubjectPro of player]'s a bit less headstrong!' With your nose buried in Logan's pubes and his dick down your throat, your air flow is cut off, and before long you start to see stars dancing in front of your eyes. Then suddenly, the muscled anthro pulls back and lets you collapse to the ground, gasping for air.";
		say "     'What the fuck was that?' he asks angrily, slapping the back of your head. Clearly not amused, the man stands over you and looks down, his teeth bared in a snarl. You gasp out that you changed your mind and do not want to submit to him anymore and he scoffs angrily. 'Now ain't that just perfect! What the hell did you think you were doing? Just experimenting a bit? Fucking waste of my time! Get out of my sight! You can get your share, but other than that, we're through you amateur slut!'";
		now Strength of Logan is 99; [player rejected submission]

to say LoganPlayerPimping:
	let randomnumber be a random number from 1 to 4;
	if randomnumber is: [TODO: More variants]
		-- 1:
			say "[RandomRegular]";
		-- 2:
			say "[RandomRegular]";
		-- 3:
			say "[LingauPimpVisit]";
		-- 4:
			say "[LingauPimpVisit]";

to say RandomRegular:
	say "     You don't have long to wait at all before ";
	let randomnumber be a random number from 1 to 3; [restricted till more options are written]
	if randomnumber is:
		-- 1: [poodle]
			say "an anthro poodle with pinkish-white fur, dressed in jogging pants and a hoody saunters into the grimy alley. He greets Logan with a fist-bump, then hands over a scrunched-together plastic shopping bag. 'Seems a bit light,' the wolverine comments, eyebrows drawing together as he eyes the John, only to go wide-eyed as he pulls open the top of the bag and has a sniff of what's inside. 'Where the fuck do people keep finding honest to god jerky in a city this fucked up? Love the stuff, so I'll accept it, even if it's less than the usual amount. Go on, enjoy yourself!' Nodding in your direction, the mustelid withdraws a strip of dried meat from the bag and starts chewing on it, then moves over to sit on his chair. This leaves the poodle free to approach you with an eager grin on his face, as well as a noticeable bulge in his pants.";
			say "     Stepping up in front of you, the guy pushes his thumb under the beltline of his pants and pulls down the front, revealing a rock-hard canine shaft. Hooking the fabric under his furry balls, he shakes his hips playfully to make the cock swing before your eyes, then reaches out to grab your head. While you're still distracted by the sight of his somewhat poofy bush of curly, yet manicured, pink pubes, he barks at you, 'Gawd, open up already!' and thrusts in immediately as you obey. He begins to face-fuck you with vigorous deep thrusts, all the while grunting a litany of crude comments that might have been learned from porno flicks, calling you a slut, whore, bitch and whatever else comes to mind, as well as expecting you to moan your assent to anything he says. [if player is submissive]This plays right into your own submissive nature and you tremble in arousal at being treated like the sex-toy that you are[else]This rankles you a little, but you shrug it off, focusing on the fact that this is what a real man like Logan wants for you[end if].";
			WaitLineBreak;
			say "     The John pounds into your mouth with increasing intensity, building to a noisy climax full of barks and growls, with him withdrawing just as he is about to come. 'Gonna give you the look of a proper slut!' he shouts, holding your head with one hand while the other aims his erection to spurt long streaks of creamy cum all over your face. Spurt after spurt covers your features, and soon you got to clench your eyes shut as he doesn't really care to avoid your eyes either. You stay where you are, kneeling as you feel every new splash of canine seed on your face, until they eventually ebb off. The guy pants, being fairly out of breath after his orgasm, then gives you a tap on the top of the head. 'Sweet cocksleeve you got here Logan. Thought ratty-boy was my fav, but maybe he's in for some competition now!' 'Only the best for my buds, eh?!' Logan replies with a laugh.";
			say "     You can't really see anything going on with your eyes still clenched, but from the sounds of someone whistling as he walks away, you take it that the poodle leaves after that. A moment later, you're hit in the face by a grimy towel, with Logan barking, 'Clean yourself up! Might get another customer soon.' Wiping your face down as good as you can, you stay in position for a little while, naked and kneeling, but apparently it's not a busy day for pimping today, so the wolverine eventually allows you to leave your post again.";
			CreatureSexAftermath "Player" receives "OralCock" from "Pink Poodle";
		-- 2: [musk rat]
			say "a mall rat ducks around the corner into the alley, glancing back the way he came as if to make sure no one saw him. He's fairly tiny even for an anthro rat, just a little more than four foot tall. Other than that, he fits the mold of a cool mall-dweller perfectly though, as he's dressed in baggy pants, a hip t-shirt and has a baseball cap on backwards. 'Hey Mister L,' the young guy says in what's almost a whisper, holding out a plastic shopping bag with the words, 'Here, I got your payment. With a bit extra, as usual.' Logan accepts the bag, looking into it and letting out an amused snort. 'Sure thing dude. No one's gonna learn about the kinky shit you're here for. Not your buds and not your girl. Go on then, my new slut's already waiting for you.'";
			say "     Hearing the rat's quiet squeak of excitement, you glance over your shoulder and watch as he strips down, piling his clothing on the chair that Logan was sitting on before. The wolverine seems happy enough with letting him do that, grinning broadly as he focuses on the rodent's soon naked body. With a swat at the mall rat's perky buttocks, he points at you and adds, 'Enjoy yourself!' Stepping up to you, the young rat crouches down and tugs at your arm with his slender fingers, making you raise it to follow his wishes. With a happy smile on his face, the rat buries his face in your armpit, his whiskers tickling a little as he breathes in deeply and huffs your scent. Then he starts to lick you, rapid flicks of his tongue forcing you to bite your lip not to laugh out loud from the stimulation of such a sensitive spot. In a little while, he moves on to the other side, taking in the inevitable muskiness that even the cleanest of post-apocalyptic survivors develops while fighting for survival.";
			WaitLineBreak;
			say "     While you're being licked, sniffed and tickled, the mall rat in front of you murmurs to himself, reveling in having a 'filthy, dirty whore' and stroking a, for his body size, comparatively massive 9 inch cock excitedly. He worships your body, stroking and touching it while mostly keeping his nose in contact with your skin and huffing your scent. It's a weird experience for you, both arousing as well as taxing as you have trouble controlling yourself to stay still and not pushing him away or laughing out loud from all the tickling sensations. You're so distracted by all of it that you completely miss Logan coming up behind the rat, zipper pulled down and with his cock hard as it sticks out. Grabbing the rodent's head, he grinds the rat's face against your armpit and grunts, 'You little punk like my slut, eh? Gonna make you just like [ObjectPro of Player]!'";
			say "     Logan has his hand wrapped around his erection, jerking himself off with quick movements of one hand while standing over your John. 'Real whores know their own, that's clear. You're just a pint-sized boy-whore, aren't you, rattie?' The mall rat's breath comes quicker and he nods in confirmation, mumbling some unitelligible words into your armpit as he is still being ground against it face-first. 'Thought so!' Logan gruffly chuckles, speeding up his strokes to a furious tempo. It doesn't take long before he passes the point of no return, letting out a deep grunt as he begins to blast his seed all over the crouching rat, aiming his cock to cream the little guy really well. His hair, the side of his muzzle, shoulders and back are covered in sticky streaks of fur matted by cum before long, which clearly excites the rat quite a bit. Still taking deep huffs of your armpit musk, he squeaks ecstatically and holds his own cock in a tight grip as it oozes pre-cum.";
			WaitLineBreak;
			say "     Keeping hold of a handful of hair on the rat's head, Logan pulls the guy back and barks, 'Look [ObjectPro of Player] in the face and say what you are!' Lust dances in the rodent's eyes as he meets your gaze, letting out a smiling moan before happily proclaiming, 'I'm a dirty boy-whore and belong in such a filthy place like this!' That seems to have been the last straw for him too, as he lets out a high-pitched grunt as his cock erupts, spraying his seed over your front in thick and creamy spurts. Chuckling from behind tha rat draws your attention back to Logan, who is just wiping off his softening cock on the young man's shoulder fur, smearing a little more cum onto him. Meanwhile, the John goes back to burying his nose in your armpit and also rubs his front against yours, as if determined to soak up at least some of his own cum in his fur.";
			say "     Eventually, the mall rat seems to have had enough, standing up to inspect himself. 'Fuck, I'm absolutely filthy!' he exclaims, grabbing his half-hard cock and squeezing it to milk another little bit of cum from the tip. Wiping it up with his hand, the young man smears it over his flat abs and smiles. 'You're amazing, Mister L!' The wolverine laughs at his eager words and replies, 'You know, I could use a dirty little slut like you in my stable and I guarantee you'd be well-used. Just like these two, hah!' There's a short moment of silence as the anthro rat seems to think about it, then shakes his head. 'No, I couldn't! I've got a rep to maintain - and a girlfriend in there.' Glancing over at the Smith Haven Mall, he walks over to his clothes and digs a wet-wipe out of his pants pocket, using it to at least clean up what cum landed on his face and hands. Then he gets dressed again. Before the rat leaves, he pushes his muzzle under the neckline of his t-shirt and takes a deep breath, enjoying the aroma of cum and sweat clinging to his body.";
			WaitLineBreak;
			say "     'If he didn't pay so well and come regularly, I'd be seriously tempted to pound into the little dude instead of just jizzing on him. A fuck or two and he'd break with that silly notion that he's anything but my whore!' Logan smirks openly as he glances from you to Blake, then puts away his cock and walks over to his chair. A moment later, you're hit in the face by a grimy towel, with Logan barking, 'Clean yourself up! Might get another customer soon.' Wiping your body down as good as you can, you stay in position for a little while, naked and kneeling, but apparently it's not a busy day for pimping today, so the wolverine eventually allows you to leave your post again.";
		-- 3: [orc businessman]
			say "a tall man with green skin and protruding tusks enters the grimy alley. Glancing up, you see that while is is an orc, the guy does wear pair of glasses and a business suit. It is somewhat worse for wear, obviously having been worn during his transformation, with the newly increased girth of his arms and chest bursting some seams. Nodding to you as he passes, the orc approaches Logan and hands him several items. 'Here's the payment for your services, sir. I - I'm afraid it might get a bit wild. Tried to control the urges through willpower since they flared up again, but, ehm - I caught myself fantasizing about grabbing some of the men living in the next store, the computer shop. Guess I'm too pent up to hold back much longer. Better to let off some steam in a controlled environment instead, you know.'";
			say "     Logan shrugs and waves off the man's concerns. 'My whores can take anything you might dish out. Just ride em and breed!' The businessman's Adam's apple bobs as he swallows, then walks over to you. 'Hello, I'm -' he starts to say, with prompts Logan to interject with a roll of the eyes, 'Dude, you're literally paying for a fuckhole. No plesantries required.' Pressing his lips together, the muscular man glances to your pimp and nods, then lifts his hands to undo the buttons of his shirt. Given that his fingers are quite large in comparison to a normal human and the buttons are straining to hold the shirt closed as they are, this poses a little bit of a difficulty, and he fiddles around without much success for a moment or two. Then you step up to help, soon baring the timid man's broad chest and rock-hard abs. 'Thanks,' he says with a smile. Not actually needing any help for his belt and pants, his massive tool of an orcish manhood is out and erect a few seconds later, hefted in the palm of a bearpaw-sized hand.";
			WaitLineBreak;
			say "     Seeing yourself confronted with the girthy, veined erection of the man, you reach out to touch it and feel its warmth, making sure to spread the pre-cum leaking from the tip along the shaft. Sooner or later it's gonna go inside you, so the more lube the better. 'Strange times, aren't they? Here I am, after thirty-two years of marriage to a wonderful woman. Then while she's visiting our grandkids in Illinois, I become green in the face and get the body of a young man. Not that I ever was built like this, you know. And suddenly almost all I can think of are young men, taking them, making them mine.' Blowing out his breath, he looks down at your naked form, then says, ";
			if player is male or player is neuter:
				say "'I want to control myself, but I guess it's really hard to fully do that. Don't wanna go crazy and snap like some folks I've seen. So - err, I'll try to be gentle, okay?' With that said, he lowers a hand hook around you, squeezing your buttocks and searching out your crack with a broad finger.";
				say "     Gesturing for you to get on all fours, the businessman pushes his pants down to his ankles and kneels behind you, the thick skin of his orcish physique having no trouble at all with the somewhat rough asphalt in the alley. He guides in his cock with one hand, nudging the curves of your buttocks with the mushroom head of his erection and leaking a lot of pre onto your crack between them. Thank god for that, as his manhood has a truly monstrous girth, and when he starts to push in against your pucker, the slippery fluid helps it slip inside, overwhelming your resistance with a slow and steady push. Pushing in deep, the large orc grunts in lust, reveling in feeling a tight hole around his shaft. 'Nnnghh! Being inside a guy's ass doesn't seem half bad,' the mature orc comments, though it seems that now his lust is aroused, things are taking up steam. Without much delay, he begins to pull back and thrust in again, spearing you with his erection.";
				WaitLineBreak;
				say "     The orcish pre-cum that he's constantly leaking into you shows its effects quickly, as you find yourself stretching readily no matter how big his shaft really is or how deep it goes, all the while only feeling blissed-out pleasure. By this time, the businessman has long forgotten his promises of going gently, such thoughts pushed aside by inexhaustible lust. In and out, he rams himself home until the full sack with his balls slaps against your crotch, then grinds a little before withdrawing and doing it all over again. You can't tell how long your wild fuck takes as you spend most of it just gasping in lust and clutching onto the beast of a man on top of you, but one thing you're not soon to forget is the climax: With a tusk-bearing roar, he slams into all the way you one last time, having to clamp his hands on your shoulders so that he doesn't push you away from the sheer force of his penetration. Then the first heavy spurt of his load rockets into you, his erection throbbing in your stretched hole.";
				say "     More and more creamy cum is blasted into your insides, filling you up with the mature orc's potent seed. There's so much of it that your belly even seems to swell a little, just from the output of those weighty balls. As your insides are drenched in the aprodisiac-laden fluid that is an orc's cum, your own libido goes wild. Moaning like a bitch in heat, you gyrate under him, pushing your hips towards his crotch. Just a few heartbeats later, you reach your own orgasm, spasming hard around his girth and making the orc gasp at your squeezing tightness. In blissful exhaustion, you actually pass out after that, slumping down on the sofa pillow Logan laid out for you. Who knows how long after that, you're awoken by being hit in the face by a grimy towel, with Logan barking, 'Clean yourself up! That's enough laziness from you!' The orc apparently left while you were passed out, so you get right to it and wipe your body down as good as you can. After that, you get back into position for a little while, naked and kneeling, before the wolverine eventually allows you to leave your post again.";
				CreatureSexAftermath "Player" receives "AssFuck" from "Orc Warrior";
			else if player is female:
				say "'So, I think you're just what I need to get my head back on straight. Err, I'll try to be gentle, okay?' With that said, he lowers a hand to your crotch, stroking one broad finger over your mound and rubbing your clit.";
				say "     Gesturing for you to get down on your back, the businessman pushes his pants down to his ankles and kneels down, the thick skin of his orcish physique having no trouble at all with the somewhat rough asphalt in the alley. He guides in his cock with one hand, nudging your nether lips with the mushroom head of his erection and leaking a lot of pre onto your sex. Thank god for that, as his manhood has a truly monstrous girth, and when he starts to push in, the slippery fluid helps it slip inside, stretching your sex wide. Pushing in deep, the large orc grunts in lust, reveling in feeling a tight hole around his shaft. 'Man, that feels nice. Glad I can still enjoy a nice pussy, aside from all those thoughts about guy's asses,' the mature orc comments, though it seems that now his lust is aroused, things are taking up steam. Without much delay, he begins to pull back and thrust in again, spearing you with his erection.";
				WaitLineBreak;
				say "     The orcish pre-cum that he's constantly leaking into you shows its effects quickly, as you find yourself stretching readily no matter how big his shaft really is or how deep it goes, all the while only feeling blissed-out pleasure. By this time, the businessman has long forgotten his promises of going gently, such thoughts pushed aside by inexhaustible lust. In and out, he rams himself home until the full sack with his balls slaps against your crotch, then grinds a little before withdrawing and doing it all over again. You can't tell how long your wild fuck takes as you spend most of it just gasping in lust and clutching onto the beast of a man on top of you, but one thing you're not soon to forget is the climax: With a tusk-bearing roar, he slams into all the way you one last time, having to clamp his hands on your shoulders so that he doesn't push you away from the sheer force of his penetration. Then the first heavy spurt of his load rockets into you, his erection throbbing in your stretched hole.";
				say "     More and more creamy cum is blasted into your insides, filling you up with the mature orc's potent seed. There's so much of it that your belly even seems to swell a little, just from the output of those weighty balls. As your insides are drenched in the aprodisiac-laden fluid that is an orc's cum, your own libido goes wild. Moaning like a bitch in heat, you gyrate under him, pushing your hips towards his crotch. Just a few heartbeats later, you reach your own orgasm, spasming hard around his girth and making the orc gasp at your squeezing tightness. In blissful exhaustion, you actually pass out after that, slumping down on the sofa pillow Logan laid out for you. Who knows how long after that, you're awoken by being hit in the face by a grimy towel, with Logan barking, 'Clean yourself up! That's enough laziness from you!' The orc apparently left while you were passed out, so you get right to it and wipe your body down as good as you can. After that, you get back into position for a little while, naked and kneeling, before the wolverine eventually allows you to leave your post again.";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Orc Warrior";
		-- 4:
			say "Random Regular 4";

to say LingauPimpVisit:
	say "     Logan steps up next to you while you wait, casually opening his pants and pulling out the thick shaft to slap you lightly in the face with it. His hand cradles your head and moves to rub your face against his erection, in response to which you obediently push out your tongue, lapping at his furry balls and the base of his shaft. 'That's a good [boygirl]!' the wolverine grunts as a wide grin spreads on his face, followed by him lining his cock up with your lips, dabbing them with pre-cum before pushing into your mouth. He lightly face-fucks you for a short while before you hear a deep voice say with an undertone of arousal, 'What a nice view I'm coming back to!' You recognize it as being Lingau, the huge anthro toad that Logan first pimped you out to. 'Thought I'd warm [ObjectPro of Player] up a little for you,' Logan breathily calls out while pushing you down on his cock all the way, really grinding your nose into his musky bush of crotch-fur.";
	say "     From the corner of your eye, you see a trunk-like arm bracing on the ground as Lingau leans down, his head coming into view and showing a very broad smile over its whole width as he gives you a piercing look with his horizontal pupils. 'Yeah, this'll be fun!' He straightens again and his shadow looms over you for a second before the large male moves past. 'I'll just put the payment on your chair. Let you finish up before I take a dip!' The two of them chuckle together, followed by Logan moving on to placing both hands on your head and really going to town on you. Treating your throat like a living fleshlight, he takes full control and pulls you back, followed by a harsh thrust that only ends when his balls slap your chin. The muscled anthro lets out his more beastly impulses as he pounds into you, grunting and growling as he fucks away. It doesn't take all that long before this builds up to a noisy climax, with his shaft throbbing hard and several spurts of cum being sent right into your stomach.";
	WaitLineBreak;
	say "     Remembering to extract his shaft before the knot swells up too big to pass your lips, Logan finishes his orgasm all over your tongue, spreading the nutty taste of his seed all over your taste-buds. 'Stick out your tongue and show us what a good slut you are!' the wolverine grunts dominantly as he steps aside while still keeping one hand on your head, bending it back to meet your eyes with an intense gaze. When he lets go a moment later, you see the towering shape of Lingau before you, about as wide as he is broad and with an enormous cock already extended from the genital slit between his legs. Obediently, you open wide and present your cum-covered tongue, which draws a lust-filled croak from the toad. Moving to cup your head with one hand as completely as Logan did with two, he pushes the tapering shaft into your open mouth, smoothly gliding in with all the slick cum to help along. Pre-stretched as you are from the vigorous face-fuck from before, you find yourself penetrated with surprising ease by the huge cock, something that the amphibian John clearly enjoys. ";
	say "     'Yeah, you always have the best cock-sleeves, Logan! I know why I keep coming back to you,' he comments in between thrusts, keeping up a good and steady rhythm as he enjoys his purchase instead of rushing ahead to just get off quickly. The toad's other hand moves over your naked body to grope and squeeze it, his bumpy skin brushing against your own [if player is submissive]and giving you erotic tingles as he makes you feel like the bought whore that you are[else]as he inspects you[end if]. Lips wrapped around his shaft, you can literally taste the difference between this amphibian and the other male you just got face-fucked by, an interesting fact of cross-species mating. The rumbling sounds of pleasure from the Lingau's broad chest build up over time, until he eventually lets out an orgasmic croak, grinding your face against his crotch as he starts to unload down your throat. You can literally feel a splurge of his cum traveling down the long cock as it throbs against your tongue, followed by another and another, flooding your stomach with his rich seed.";
	WaitLineBreak;
	say "     Being an amphibian with internal balls, you don't actually see or feel Lingau's orbs pulsing and throbbing as they send forth a deluge of cum, but you can imagine that they must be to scale with the rest of him, producing such an amount of seed. He just keeps cumming more and more, blocking you from breathing long enough till you start seeing stars and weakly pat against his leg. The large male reacts to your plea readily enough, pulling back out of your mouth and allowing you to collapse onto the stained cushion to gasp for air, all the while still spurting cum, now onto your naked back. By the time you're no longer gulping like a fish and drooling cum, he's drenched you in his load completely, making you slick and sticky all over. Lingau hooks a finger under your chin, making you look up from his cock as it now starts to shrink retract into the genital slit. He gives you a well-satisfied grin and says, 'You did very well. I'll be sure to come back for more.'";
	say "     Turning his attention towards Logan, the huge toad croaks, 'Always a pleasure coming by to sample your wares.' With that said, he then walks off with a spring in his step. 'Always nice to keep the regulars happy,' Logan comments after Lingau is gone, then throws a grimy towel at you to allow you to clean yourself up. He goes off to pack the payment for your services away in his personal stash, not really interested in what you do next. Seems like your shift as a whore is over (for now).";
	NPCSexAftermath Player receives "OralCock" from Logan;
	NPCSexAftermath Player receives "OralCock" from Lingau;



[
Todo:

Blake advancement:
Logan goes off for stuff and the player has to feed Blake.
Options:
A) Sit him up and feed him
B) Throw food on the ground
C) Eat the food and let him "work" for a bit sexually
]

Logan ends here.
