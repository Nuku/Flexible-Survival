Version 1 of Orc Female by Wahn begins here.
[Version 1 - new npc/infection]

"Adds an Orc Female creature to Flexible Survival's Wandering Monsters table"

[ KatyaResistance - rebelliousness against submitting to the player      ]
[  4: starting value                                                     ]
[  3: dominated once                                                     ]
[  2: dominated twice                                                    ]
[  1: dominated three times                                              ]
[  0: submitted to the player                                            ]
[                                                                        ]
[ Libido of Katya - lust of the orc                                      ]
[  0: never had any sex with the player                                  ]

OrcFemSpecialFightNumber is a number that varies.

KatyaResistance is a number that varies. KatyaResistance is usually 6.
KatyaDildoTaken is a number that varies.

Section 1 - Events

Noteworthy Ruin is a situation. The level of Noteworthy Ruin is 8.
The sarea of Noteworthy Ruin is "Plains".
when play begins:
	add Noteworthy Ruin to badspots of girl;

Instead of resolving a Noteworthy Ruin:
	now battleground is "Void";[avoids random fights after]
	if hp of Katya is 0: [first time]
		say "     Roaming through the plains, you pass yet another of the small ruins left over from the city that stretched out in this area before the grass came. There are basically just a few sections of roofless wall still standing, as well as as a field of scattered stones and high mounds of rubble. Nothing too interesting - until you spot the [if daytimer is day]very faint line of smoke rising from somewhere between those walls[otherwise]faint shine of firelight that illuminates one section of wall sticking up a little higher than the rest[end if]. It's not a lot - someone is being as careful as possible about giving away their location - but with your close proximity, you did notice it no matter what.";
		say "     [bold type]Seems like someone has set up camp in that ruin. Shall you go over and have a look who it may be?[roman type][line break]";
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - Sure, maybe it'll be a friendly survivor.";
		say "     ([link]N[as]n[end link]) - Nah, better not take the chance.";
		if player consents:
			say "     [line break]";
			say "     Walking towards the ruin carefully, you try to take in everything that you can. The high grass reaches all the way up to the walls and moves slowly, even when there is no wind to blow through it. Yet other than in some places you've seen, this area of vegetation seems almost sluggish or lazy, less inclined to devour the works of humanity - possibly the reason that there is anything left standing at all. No matter which, there is a protected little area between the walls and someone has made it their home. Getting closer, you realize that there is a piece of mottled grey fabric stretched between two building remnants in one spot, camouflaging the entrance of the camp.";
			say "     Busy wondering if that is a piece of military city camo or if someone just improvised, you almost miss the foot-sized hole in the ground you would have stepped in a moment later. It is deep enough to take a human leg halfway up to the knee, perfect to break someone's lower leg in when stumbled into at a run. Taking a step back, you inspect the area around and find several more of those traps, then continue your approach, keeping the ground under close observation as you do.";
			WaitLineBreak;
			say "     Soon, you are at the camouflaged entrance. The fabric actually is just a large blanket, splotched with dried paint and dirt to fulfill its role. It has been fastened to the wall with metal pitons while one corner of it is weighted down by a fist-sized rock. That must be the flap to slip inside. Your curiosity leads you to put the stone to the side and bend the fabric to the side to get a glimpse of the camp inside the walls... it is a relatively tight space, maybe the scale of a mid-sized room and without a roof (obviously). You can make out a small fire-pit with a spit-roasting little bird above it, a sleeping bag, and... a large green hand that grabs you by the neck and wrenches you forward into the camp.";
			say "     Sent sprawling on the ground, almost tumbling on top of the fire pit, you realize that someone noticed your approach and was waiting for you. Shaking off the shock, you look at the person who man-handled you. She is big, muscular and green - an orc, like in a fantasy story! Snarling at you - quite impressively, with her sharp tusks out - the tall woman growls, 'What do we have here? A horny beast looking for a fuck? A looter? Or someone who heard about Katya, the dick-less freak of an orc? I don't care which, you've come to the wrong place, fucker!' And with that, she attacks you!";
			say "     [line break]";
			challenge "Orc Female";
			change the north exit of Dry Plains to Inconspicuous Trail; [connecting the location to the travel room]
			change the south exit of Inconspicuous Trail to Dry Plains; [connecting the location to the travel room]
			now Noteworthy Ruin is resolved;
		otherwise:
			say "     [line break]";
			say "     Deciding against exploring the camp, you do turn away from it and keep going. You do make a note of where it was though, in case you want to return to the [bold type]noteworthy ruin[roman type] sometime in the future.";
			now hp of Katya is 1; [declined to investigate]
	otherwise if hp of Katya is 1: [didn't investigate before]
		say "     Roaming through the plains, you come upon the section of ruins again where you made your observation about someone possibly living inside. There are basically just a few sections of roofless wall still standing, as well as as a field of scattered stones and high mounds of rubble. This time there is nothing obvious to draw your attention to it, but you remember it from the last time...";
		say "     [bold type]Shall you go over and have a look at what might be between those walls?[roman type][line break]";
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - Sure, maybe you'll find a friendly survivor.";
		say "     ([link]N[as]n[end link]) - Nah, better not take the chance.";
		if player consents:
			say "     [line break]";
			say "     Walking towards the ruin carefully, you try to take in everything that you can. The high grass reaches all the way up to the walls and moves slowly, even when there is no wind to blow through it. Yet other than in some places you've seen, this area of vegetation seems almost sluggish or lazy, less inclined to devour the works of humanity - possibly the reason that there is anything left standing at all. No matter which, there is a protected little area between the walls and someone has made it their home. Getting closer, you realize that there is a piece of mottled grey fabric stretched between two building remnants in one spot, camouflaging the entrance of the camp.";
			say "     Busy wondering if that is a piece of military city camo or if someone just improvised, you almost miss the foot-sized hole in the ground you would have stepped in a moment later. It is deep enough to take a human leg halfway up to the knee, perfect to break someone's lower leg in when stumbled into at a run. Taking a step back, you inspect the area around and find several more of those traps, then continue your approach, keeping the ground under close observation as you do.";
			WaitLineBreak;
			say "     Soon, you are at the camouflaged entrance. The fabric actually is just a large blanket, splotched with dried paint and dirt to fulfill its role. It has been fastened to the wall with metal pitons while one corner of it is weighted down by a fist-sized rock. That must be the flap to slip inside. Your curiosity leads you to put the stone to the side and bend the fabric to the side to get a glimpse of the camp inside the walls... it is a relatively tight space, maybe the scale of a mid-sized room and without a roof (obviously). You can make out a small fire-pit with a spit-roasting little bird above it, a sleeping bag, and... a large green hand that grabs you by the neck and wrenches you forward into the camp.";
			say "     Sent sprawling on the ground, almost tumbling on top of the fire pit, you realize that someone noticed your approach and was waiting for you. Shaking off the shock, you look at the person who man-handled you. She is big, muscular and green - an orc, like in a fantasy story! Snarling at you - quite impressively, with her sharp tusks out - the tall woman growls, 'What do we have here? A horny beast looking for a fuck? A looter? Or someone who heard about Katya, the dick-less freak of an orc? I don't care which, you've come to the wrong place, fucker!' And with that, she attacks you!";
			say "     [line break]";
			challenge "Orc Female";
			change the north exit of Dry Plains to Inconspicuous Trail; [connecting the location to the travel room]
			change the south exit of Inconspicuous Trail to Dry Plains; [connecting the location to the travel room]
			now Noteworthy Ruin is resolved;
		otherwise:
			say "     [line break]";
			say "     Deciding against exploring the camp, you do turn away from it and keep going. You do make a note of where it was though, in case you want to return to the [bold type]noteworthy ruin[roman type] sometime in the future.";
			now hp of Katya is 1; [declined to investigate]

Section 2 - Monster Responses

to say OrcFemBeaten:
	if KatyaResistance is 1: [ready to submit]
		say "     After your last hit, the female orc warrior staggers a bit, her eyes unfocused - then stumbles over to a wall to catch herself on it. 'Enough,' she groans out, wiping a trickle of green blood from her nose. She turns around and stands with her back to the wall, just leaning back against it with a defeated air. Katya closes her eyes and for a while does nothing but pant and try to catch her breath - during which time you can visibly follow the rapid healing ability her orc body brings with it. Bruises fade in moments, scrapes on her skin just vanish, and before much longer Katya looks like she was never hurt at all.";
		say "     The same can't be said for her spirit though - she has lost some of her previously so supremely confident air, the surety that she can kick anyone's ass if they annoy her. Having worn the sexy green-skinned amazon down, she looks to you with grudging respect when her eyes open again and she pushes off from the wall. 'So. What do you want to do now? I've had enough of having my ass kicked, and since you used me anyways afterwards - we can skip ahead to that in the future. Fine, you horny bastard. I'm all yours.' A certain sardonic undertone is still noticeable as she says the last word, but for now, Katya seems ready to submit.";
		now KatyaResistance is 0; [submitted Katya]
		move player to Hidden Camp;
	otherwise:
		say "     After your last hit, the female orc warrior staggers a bit, her eyes unfocused - then she keels over with a groan and lands on her back with a loud thud. Seeing Katya lie on the ground, your eyes can't help but wander down to her crotch where the large woman's loincloth has fallen aside, revealing the enticing sight of her slightly open pussy under a small bush of black pubic hair. And even better - she's visibly wet. Orcs really do live to fight, and apparently Katya couldn't help getting excited in your tussle.";
		say "     [line break]";
		say "     [bold type]What was that saying? To the victor go the spoils? The only question is - what do you want from the sexy orc?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Have sex with Katya.";
		say "     ([link]N[as]n[end link]) - Look around in her camp. There should be something useful to find...";
		if player consents:
			say "     [line break]";
			say "     [KatyaBeatenSexMenu]";
		otherwise:
			say "     [line break]";
			say "     Paying the semiconscious orc no further attention (she'll heal in a minute or two and be as good as new), you quickly make a circuit of the little camp. Rummaging around in a box standing next to her bedding yields ";
			if KatyaDildoTaken is 0: [first time]
				say "a quite big dildo, shaped like an equine cock. You can't help but wonder if Katya picked it just for its size or also because she liked the shape. That'd fit her moving out here into the plans too - all those centaurs with their swinging cocks, and other equines too around here. A shimmer of wetness on its length tells you the speckled piece of silicone must be her favourite toy and has been used quite recently.";
				say "     ([link]Y[as]y[end link]) - Take the horse-cock dildo.";
				say "     ([link]N[as]n[end link]) - Leave it and wipe your hands.";
				if player consents:
					say "     [line break]";
					say "     With a grin, you slip the sex toy in your pack. Won't she be surprised to find it missing!";
					say "(You gain Katya's Dildo.)";
					increase carried of Katya's Dildo by 1;
					now KatyaDildoTaken is 1; [stole her Dildo]
					increase libido of Katya by 3;
				otherwise:
					say "     [line break]";
					say "     Letting the sex toy fall from your fingers, you wipe them off on the grass hurriedly.";
					now KatyaDildoTaken is 50; [refused to take her Dildo]
			otherwise:
				if KatyaDildoTaken is 50:
					now RandomGenNumber is a random number from 1 to 7;
				otherwise:
					now RandomGenNumber is a random number from 1 to 6;
				if RandomGenNumber is:
					-- 1: 
						say "two cans of soda and an chocolate and nut energy bar. ";
						say "(You gain two bottles of soda.)";
						say "(You gain food.)";
						increase carried of soda by 2;
						increase carried of food by 1;
					-- 2: 
						say "a full medkit, still in its original packaging. ";
						say "(You gain a medkit.)";
						increase carried of medkit by 1;
					-- 3: 
						say "a pocketknife that looks nice and sharp. ";
						say "(You gain a pocketknife.)";
						increase carried of pocketknife by 1;
					-- 4:
						say "a liter bottle of water, with the freshness seal intact.";
						say "(You gain a water bottle.)";
						increase carried of water bottle by 1;
					-- 5:
						say "several bags of chips. ";
						say "(You gain three bags of chips.)";
						increase carried of chips by 3;
					-- 6:
						say "a can of... something. The label has fallen off - but you're fairly certain it is food. ";
						say "(You gain food.)";
						increase carried of food by 1;
					-- 7:
						say "a quite big dildo, shaped like an equine cock. You can't help but wonder if Katya picked it just for its size or also because she liked the shape. That'd fit her moving out here into the plans too - all those centaurs with their swinging cocks, and other equines too around here. A shimmer of wetness on its length tells you the speckled piece of silicone must be her favourite toy and has been used quite recently.";
						say "     ([link]Y[as]y[end link]) - Take the horse-cock dildo.";
						say "     ([link]N[as]n[end link]) - Leave it and wipe your hands.";
						if player consents:
							say "     [line break]";
							say "     With a grin, you slip the sex toy in your pack. Won't she be surprised to find it missing!";
							say "(You gain Katya's Dildo.)";
							increase carried of Katya's Dildo by 1;
							now KatyaDildoTaken is 1; [stole her Dildo]
						otherwise:
							say "     [line break]";
							say "     Letting the sex toy fall from your fingers, you wipe them off on the grass hurriedly.";
			say "     Other than your find, the roasting bird - an overgrown pigeon you think - is an obvious thing to grab and add to your supply of fresh food. With your armful of ransacked items, you quickly slip out of the camp before Katya recovers and comes to.";
			say "(You gain food.)";
			increase carried of food by 1;
		wait for any key;
		move player to Dry Plains;

to say KatyaBeatenSexMenu:
	say "[line break]";
	say "What do you want to do with Katya?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Milk her for some orc femcum";
	now sortorder entry is 1;
	now description entry is "Collect a bottle of femcum from her";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fuck her mouth";
	now sortorder entry is 2;
	now description entry is "Slide your dick between her lips";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Go down on her pussy";
	now sortorder entry is 3;
	now description entry is "Lick her snatch and get Katya off";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her pussy";
		now sortorder entry is 4;
		now description entry is "Sink your manhood into the orc's pussy";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her ass";
		now sortorder entry is 5;
		now description entry is "Sink your manhood into the orc's back passage";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Milk her for some orc femcum"):
					say "[KatyaBeatenSex1]";
				if (nam is "Fuck her mouth"):
					say "[KatyaBeatenSex2]";
				if (nam is "Go down on her pussy"):
					say "[KatyaBeatenSex3]";
				if (nam is "Fuck her pussy"):
					say "[KatyaBeatenSex4]";
				if (nam is "Fuck her ass"):
					say "[KatyaBeatenSex5]";
				if KatyaResistance > 0:
					decrease KatyaResistance by 1;
				increase libido of Katya by 1;
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the groaning orc woman, having decided against violating her as she is vulnerable after all.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say KatyaBeatenSex1:
	increase carried of orc femcum by 1;
	say "     After pulling an empty bottle out of your pack and setting it down where you can quickly reach it, you kneel down beside the downed orc and pull her loincloth off for good. With the ragged fabric out of the way, she looks even more delicious - strong, muscular and yet dazed after a clash and totally vulnerable. With a grin on your face, you brush your hand over her crotch, running your fingers through her pubic hair to touch the clit of this beaten warrioress. Lips drawing back from her sharp tusks, the green-skinned woman moans as you rub her, and goes on to breathe heavily when you proceed to slip two fingers into her snatch.";
	say "     Finger-fucking and rubbing her magic button, you wind the still semiconscious orc up more and more, making her writhe on the ground and reflexively thrust her hips upwards as if to meet someone's cock being rammed into her pussy. Doing everything you can to stimulate the muscular woman, you soon have her moaning louder and louder. Then, as the trickle of her fluids over your thrusting fingers starts to get ever more intensive, you quickly snatch up the prepared bottle and hold it against her opening, slowly catching a small amount of femcum. Until you actually get her off by rolling her clit between your fingers that is - which is when she lets out a breathless shout and starts to squirt, splashing her sticky juices into the bottle in heavy throbs.";
	say "     You continue working the orc woman to milk everything you can from her, filling the little bottle about three quarters before her orgasm eventually ebbs off and the female orc calms down again. She is left sprawled out on the ground, panting loudly and awake. Seems like a good time to leg it - if you give her the time to catch her breath, you'll no doubt be in another fight in a second. Putting the cap on your bottle and quickly stashing it away, you give the orc's pussy a last quick fondle, then jump up and quickly leave her camp.";
	say "     [line break]";
	say "     (You gain a bottle of orc femcum.)";
	wait for any key;

to say KatyaBeatenSex2: [fuck her mouth]
	say "     After quickly stripping off your gear and clothes, you straddle the chest of the female orc, your knees left and right of the twin bulges that are her shapely breasts. Looking down upon her, you congratulate yourself on winning against this proud green-skinned amazon. Her features are too strong to be called pretty, but have their own inherent beauty, and combined with the wild mane of her hair she is a sight to behold. The twin tusks jutting out of her lower mandible can be called cute, now that she is halfway knocked out and not using them to scowl at you. As for the rest of the orc... her body is a female body-builder's dream - shapely yet powerful, and even has a very generous pair of breasts.";
	say "     You shimmy back a little and pull the chest-wrap over her boobs aside, reveling in the glorious sight of her firm orbs and their dark green nipples. Hands drawn to their curves by an irresistible pull, you caress the roundness of her boobs and give the nipples a gentle pinch or two, causing them to become hard and stick out a little. Wow, this is quite a woman you've beaten her in a fair fight. About time to savour the spoils of your victory now! With a grin on your face, you move closer to her head again, stroking your cock in slow movements up and down and brushing it against her lips.";
	WaitLineBreak;
	say "     Still dazed from your last blow, Katya reacts to your touching by opening her mouth and groaning a little - the perfect opportunity to push in between her lips. Sliding your erection against her wet tongue feels pretty nice, as does the brush of her lips against your shaft, so you start some gentle thrusts into her mouth, slowly face-fucking the orc. It doesn't take long before she comes to fully again though, and at one point the green-skinned amazon suddenly opens her eyes and stares up at you in surprise, mumbling something unrecognizable around the cock in her mouth.";
	say "     The glint of steel in her stare at you looks dangerous and as you feel the light touch of teeth against your manhood, you quickly grab the wild mane of her hair and give a little pull, reminding the orc who is in control right now. There is a grudge-filled grunt from Katya in reply, but she relents and doesn't to anything harmful to you or your best piece. In fact, by defiantly trying to push your shaft aside with her tongue, she creates some quite enjoyable sensations. You just continue to fuck her mouth, taking your pleasure from the beautiful orc till you feel the need to cum rise in your balls.";
	WaitLineBreak;
	say "     With both your hands buried in Katya's mane of hair, you hold her firmly as you thrust deep one last time, balls slapping against her chin. Then your balls start to throb as they send forth a deluge of cum, squirt after squirt filling the sexy orc that you've chosen to face-fuck. Katya doesn't have much choice but to swallow your load, and the movement of her muscles around your erection enhances your orgasm quite nicely, giving you a little bit extra fun. For a moment, only your dick and the warm cave it is in matters as you ride out your orgasm, but soon an urgent pat against your thighs brings you back to reality.";
	say "     Groaning around your dick, the orc is tapping out against your legs - oops, you totally forgot she has to breathe. Hastily withdrawing from her mouth, you watch as she gulps in a deep breath of air, panting loudly to replenish her reserves of oxygen. 'You! Damned! Fucker!' she gasps out word by word, not at all amused about being choked by your cock. This seems like a good moment to go - you're spent and she's still to weak to do more than flop around - so you quickly grab your clothes and gear and high-tail it out of Katya's camp. Running through the dry plains buck-naked, you gain some good distance before you stop and get dressed.";

to say KatyaBeatenSex3:  [lick her pussy]
	say "     After quickly stripping off your gear and clothes, you kneel down between the legs of the female orc and check her out. Her pussy is green like the rest of her skin, if a bit lighter in shade, and has a little bush of pubic hair above it. The nether lips of the sexy woman a slightly swollen and parted, glistening with wetness. Putting a hand on her crotch, you rub over the folds of the orc's sex, drawing a lustful groan from the dazed woman. Fuck yeah - such a sexy and strong amazon laid out before you helplessly. You've beaten her in a fair fight, so now is the time to savour the spoils of your victory!";
	say "     Sliding your hands under the muscular thighs of the stretched-out orc, you lift and spread them some more, opening her up for you to really get in close to her pussy. Lowering your head between her thighs, you then pull her folds apart with two fingers and catch a glimpse of pink in between them - looks like orcs are just green on the outside. Then you move forward a little bit more and press your nose against her crotch, taking a good long whiff of her scent. Besides the obvious (a bit of sweat, you just fought after all) there is a subdued note of a male scent dominated by the overlying female one. It is almost as if her body contradicted the plan for her to be born a regular male orc at some point in its development, deciding to go its own way instead.";
	WaitLineBreak;
	say "     Nose buried in the trimmed pubes of Katya the orc, you smile at being able to do what you want to the strong woman and start to lap at her crotch. The female juices that show her arousal are actually quite tasty, so after the first experimental lick, the quickly rising desire for more encourages to you to really go for it. Huffing the musky aroma of her sex, you push the tip of your tongue in deep between those green pussy lips and explore her depths. Feeling someone's tongue slide in between her nether lips and wiggle around, the orc soon comes to fully, letting out a breathless moan at the good sensations you are giving her. Then she realizes that you're the one doing this to her and pushes herself up on her elbows.";
	say "     'Hey - what the fuck, you pussy-muncher?! First you come in here uninvited and now you - nnnghhhh!' the orc starts to complain, then can do nothing but moan as you put your thumb on her clit and start rubbing it in circular movements. Breathlessly moaning from your touch, she loses control of herself for a moment and falls back to lie stretched out on the ground once more, head thrown back in a pleased sigh. 'Fuck that feels good,' she gasps out a little sullenly, her exclamations coinciding with little throbs of femcum that trickle onto your tongue. The juices of this now very horny orc have a noticeable effect on yourself too - a bit of a light-headed feeling spreads through you, making you a little bit drunk and more than just a little aroused.";
	WaitLineBreak;
	say "     Aphrodisiac-laced femcum and cum - the nanites really hit a hole-in-one for the orcs with that! Sliding your hands between your legs, you rub your own crotch while at the same time still hungrily eating out Katya's pussy. The oral pleasure against her pussy quickly drives your former opponent to higher and higher peaks of lust, filling her hidden camp with loud moans and gasps that accompany every swirl and swipe of your tongue. She flops around with her arms once or twice, never content to just submit and let you do what you want with her - but you always sabotage her attempts to get herself under control with a strategic swirl of your tongue or even a nibble at her sensitive clit.";
	say "     It doesn't take that much longer of this treatment before her soaring arousal eventually reaches a stretched-out climax, with the female orc shouting in completion as she trembles and twitches under your tongue. A full, rich squirt of femcum splashes your face before you can get your lips over her clit and opening. The next and any further splashes are caught directly on your tongue, covering it with a delicious treat that you eagerly gobble down. If her juices before were tasty, this stuff now is pure ambrosia, making you feel light-headed and very very good indeed. You do lose track of time a little about how long you lay there and suck on Katya's pussy, receiving the bounty of her orgasm and doing your very best to prolong it further.";
	WaitLineBreak;
	say "     At some point - with your tongue still buried in her snatch and wiggling to maybe get a tiny bit more femcum from the woman - Katya eventually catches her breath a little and growls, 'It's good that you're so skillful with your tongue, otherwise I'd squash your head like a melon with my thighs. You got what you came for, so fuck off now. This is my camp and you're not invited!' Given that you're under the effects of her orc femcum now, risking another struggle with Katya at the moment seems chancy at best, so you quickly comply, snatching up your gear and clothes before you duck outside of the orc's hideout and dash out into the plain of grass, bare-ass naked.";

to say KatyaBeatenSex4:  [fuck her pussy]
	say "     After quickly stripping off your gear and clothes, you kneel down between the legs of the female orc and check her out. Her pussy is green like the rest of her skin, if a bit lighter in shade, and has a little bush of pubic hair above it. The nether lips of the sexy woman a slightly swollen and parted, glistening with wetness. Putting a hand on her crotch, you rub over the folds of the orc's sex, drawing a lustful groan from the dazed woman. Fuck yeah - such a sexy and strong amazon laid out before you helplessly. You've beaten her in a fair fight, so now is the time to savour the spoils of your victory!";
	say "     Sliding your hands under the muscular thighs of the stretched-out orc, you lift and spread them some more, opening her up for you to fuck. You catch a glimpse of pink in the depth between her pussy lips - looks like orcs are just green on the outside. Then you're guiding your [cock of player] prick up against her, rubbing the glans of your erection up and down between the glistening folds and getting it wet with the slickness of her arousal. Finally nudging her nether lips apart with the tip of your dick, you slide it into the orc's receptive body, grunting in satisfaction as her inner passage snugly enfolds your cock. God, she feels good around your manhood - soft and warm, and so very wet!";
	WaitLineBreak;
	say "     Katya comes to again fully as you bottom out in her, as if reacting to the touch of your balls rubbing against her crotch. Groaning, she opens her eyes and looks up at you, baring her fangs in a scowl. 'You bastard! Get off me ri-*nnnghhhh*' she starts to say, but you distract her by pulling a little outwards and then hammering back into her depths. Even as pissed off as she is right now with your intrusion into her camp - and now her pussy too - the orc can't help but moan as you start fucking her. Not giving her any time to get her bearings and maybe start resisting, you saw your erection in and out of her snatch and push all her buttons, rubbing Katya's clit at the same time.";
	say "     Fucking and fingering the muscular orc works well to keep her under control, given how exhausted she still is after your earlier fight. She was fully healed before you even started making moves on her, demonstrating an orc's remarkable level of regeneration, but that doesn't mean she isn't still worn out and needs time to recuperate. Thanks to your efforts, all her energy right now is being redirected towards being ready for sex - as demonstrated by the increasing wetness between her legs, the twitch of inner muscles around your thrusting cock and the fact that Katya's face and chest are becoming flushed in a somewhat lighter emerald green.";
	WaitLineBreak;
	say "     Even the glare she gives you can't change the fact that the orc is panting and moaning louder every time you bottom out inside her. She tries to hold it in once or twice, biting her lip to suppress the urge to gasp out in lust - and you revel in making her fail, giving an especially deep thrust every time that forces an exclamation of her arousal from the orc's lips. You look forward to the day she will finally learn and accept that that her pussy is there to have your cock sheathed inside it - and until she does, you will have a lot of fun teaching this fact to the orc.";
	say "     Thrusting into the sexy orc amazon again and again, you fuck her with unrelenting force, filling Katya's hideout with the slapping noises of your balls against her crotch, as well as your shared grunts, moans and pants. Grinning down at her powerful, yet helpless form, you tell the orc that she'll be yours to keep eventually - which draws [if KatyaResistance > 5]an unbelieving stare at your arrogance [otherwise if KatyaResistance > 3]a defiant growl [otherwise]a subdued growl [end if]from her. In reply, you intensify your attack on her clit, rubbing it with increased intensity while still hammering into her depths. The combined assault is too much for her to resist, and if she wants to or not, Katya is pushed to experience an intense orgasm.";
	WaitLineBreak;
	say "     With your reluctant orc beauty's inner muscles trembling around the girth of your cock, squeezing it in quite enjoyable fashions, it doesn't take long before you yourself reach the point of no return. Giving a last deep thrust that draws a breathless gasp from Katya, you start to unload into her depths, claiming her body as your own by painting its insides white with your potent load. Throb after heavy throb, you fill the muscular orc woman with your seed and stay balls deep inside her until the spurts eventually ebb off. Now lying spent on top of your freshly bred orc amazon, you rest your head against the twin bulges of her breasts a moment, then push the fabric of her chest-wrap aside to take in the bounty of her chest.";
	say "     Sated and exhausted from the fuck-session, you almost let yourself be drawn in too much by the beauty of the orc's shapely boobs. The temptation is there to feel and caress them, take a nipple between your lips and suckle - but the orc would likely punch you if you remained much longer. She's still riding out her orgasm right now, but give her a few minutes and she'll be back to her full strength and try to kick your ass. For the moment, you decide to be content with fucking her this once and quickly pull out, then snatch up your gear and clothes and rush to the exit out of the camp.";
		
to say KatyaBeatenSex5:  [fuck her ass]
	say "     After quickly stripping off your gear and clothes, you kneel down between the legs of the female orc and check her out. Her pussy is green like the rest of her skin, if a bit lighter in shade, and has a little bush of pubic hair above it. The nether lips of the sexy woman a slightly swollen and parted, glistening with wetness. But then, your intended target right now is a little lower and similarly accessible. Putting a hand on her crotch, you rub over the folds of the orc's sex, drawing a lustful groan from the dazed woman, then move your somewhat wet and slick fingers over to her pucker and stroke over it. She trembles under that touch, showing an intense sensitivity to anal stimulation. Fuck yeah - such a sexy and strong amazon laid out before you helplessly. You've beaten her in a fair fight, so now is the time to savour the spoils of your victory!";
	say "     Sliding your hands under the muscular thighs of the stretched-out orc, you lift them up and up, hooking the hollows of her knees over your shoulders. Pulling on Katya, you soon have her in a partial handstand - the half about being mostly upside in body even if she's not lifted off the ground on her hands. Still, this puts you in just the right position to press your face in between her buttocks, taking a deep huff of the orc's scent. She smells of sweat, so much is obvious after battling things out with you, but beside that there is a subdued note of a male scent dominated by the overlying female one - as if her body contradicted the plan for her to be born a regular male orc at some point in its development, deciding to go its own way instead.";
	WaitLineBreak;
	say "     Spreading the orc's buttocks after a good long moment of exploration and groping, you inspect Katya's asshole - it is somewhat lighter green than the rest of her, a puckered ring that promises great pleasure for anyone in the position to fuck it - something you're definitively looking forward to. Then suddenly the muscle flexes a little - winking open and shut - and the orc groans in her dazed state. If you had to guess, it might be that she feels your breath against her pucker and instinctively reacts to that. Well, if that's not a crack in her armor, you don't know what is. Eager to make use of it, you open your mouth and extend your tongue, feeling the yielding flesh of her body a second later.";
	say "     Brushing over Katya's butt-crack, you lick her dutifully, drawing pleased groans from the strong orc. Interestingly, her pucker trembles at the slightest touch, even expands a little as you press your tongue-tip in experimentally at one point. Something about her orcish physiology seems almost tailor-made for anal sex. Gleefully pushing deeper, you wiggle your tongue into the middle of the ring of her pucker and stretch it as far as it will go. Her back door readily accepts the slick invasion, giving back almost gentle squeezes around your tongue.";
	WaitLineBreak;
	say "     Katya comes to again fully as you start to eat her ass out enthusiastically, reacting to the sensations of having a tongue wigging against one of her pleasure spots. Groaning, she opens her eyes and looks around in confusion, needing a moment to sort out which way is up, then bares her fangs in a scowl. 'You fucking butt-muncher! Let me down right now!' she growls - and this time, you even follow her demand, lowering her off your shoulders to stretch out on the ground again. Not all the way though - you still keep her legs spread and hips slightly raised - just at the right height for your rock hard cock!";
	say "     With a thrust of your hips forward, you sink your cock into the green-skinned amazon's asshole, sliding right into the pleasantly well-lubed chute. Even as pissed off as she is right now with your intrusion into her camp - and now her asshole too - the orc can't help but moan as you start fucking her. Not giving her any time to get her bearings and maybe start resisting, you saw your erection in and out of her back door and push all her buttons, rubbing Katya's clit at the same time.";
	WaitLineBreak;
	say "     Fucking and fingering the muscular orc works well to keep her under control, given how exhausted she still is after your earlier fight. She was fully healed before you even started making moves on her, demonstrating an orc's remarkable level of regeneration, but that doesn't mean she isn't still worn out and needs time to recuperate. Thanks to your efforts, all her energy right now is being redirected towards being ready for sex - as demonstrated by the increasing wetness between her legs, the twitch of inner muscles around your thrusting cock and the fact that Katya's face and chest are becoming flushed in a somewhat lighter emerald green.";
	say "     Even the glare she gives you can't change the fact that the orc is panting and moaning louder every time you bottom out inside her. She tries to hold it in once or twice, biting her lip to suppress the urge to gasp out in lust - and you revel in making her fail, giving an especially deep thrust every time that forces an exclamation of her arousal from the orc's lips. You look forward to the day she will finally learn and accept that that her ass is there to have your cock sheathed inside it - and until she does, you will have a lot of fun teaching this fact to the orc.";
	WaitLineBreak;
	say "     Thrusting into the sexy orc amazon again and again, you fuck her with unrelenting force, filling Katya's hideout with the slapping noises of your balls against her buttocks, as well as your shared grunts, moans and pants. Grinning down at her powerful, yet helpless form, you tell the orc that she'll be yours to keep eventually - which draws [if KatyaResistance > 5]an unbelieving stare at your arrogance [otherwise if KatyaResistance > 3]a defiant growl [otherwise]a subdued growl [end if]from her. In reply, you intensify your attack on her clit, rubbing it with increased intensity while still hammering into her back door. The combined assault is too much for her to resist, and if she wants to or not, Katya is pushed to experience an intense orgasm.";
	say "     With your reluctant orc beauty's anal muscles trembling around the girth of your cock, squeezing it in quite enjoyable fashions, it doesn't take long before you yourself reach the point of no return. Giving a last deep thrust that draws a breathless gasp from Katya, you start to unload into her depths, claiming her body as your own by painting its insides white with your potent load. Throb after heavy throb, you fill the muscular orc woman with your seed and stay balls deep inside her until the spurts eventually ebb off. Pulling out and sinking forward to lie spent on top of your freshly bred orc amazon, you rest your head against the twin bulges of her breasts a moment, then push the fabric of her chest-wrap aside to take in the bounty of her chest.";
	WaitLineBreak;
	say "     Sated and exhausted from the fuck-session, you almost let yourself be drawn in too much by the beauty of the orc's shapely boobs. The temptation is there to feel and caress them, take a nipple between your lips and suckle - but the orc would likely punch you if you remained much longer. She's still riding out her orgasm right now, but give her a few minutes and she'll be back to her full strength and try to kick your ass. For the moment, you decide to be content with fucking her this once and quickly pull out, then snatch up your gear and clothes and rush to the exit out of the camp.";
		
to say OrcFemVictorious:
	if hp of player > 0:    [player submits]
		if bodyname of player is "Orc Breeder" and facename of player is "Orc Breeder" and skinname of player is "Orc Breeder":
			say "     'Did you lose your master, little breeder?' the female orc says in a gruff voice as you surrender. Then she grasps your chin and bends your head left and right, inspecting you with a snort. 'Well, you won't find a thick green prick here either, that's for sure! But I think I'll have fun with you nonetheless.' ";
		otherwise if bodyname of player is "Orc Warrior" and facename of player is "Orc Warrior" and skinname of player is "Orc Warrior":
			say "     'Pathetic,' snorts as she steps up to you, giving you a shove. 'I'm three times the orc you are and still those bastards call me a 'dick-less freak'! Pah, who needs them! As for you - if you got the temperament of a breeder, then I'll just use you as one!' ";
		otherwise:
			say "     'Weakling. I'm surprised you even made it far enough to stumble into my camp', the female orc says in a gruff voice as you surrender. Then she grasps your chin and bends your head left and right, inspecting you with a snort. 'Better leave the fighting to those made for it. I'll show you your place.' ";
		say "With that said, Katya pushes you further and further backwards, then hooks a foot behind yours and gives a hard shove. You fall only a short distance before her other hand slid under your back slows your descent, softening the impact so you land relatively softly on her sleeping bag, stretched out on your back. The green-skinned woman stands over you and looks down with a lusty grin after that.";
		say "     Katya's hands move to her hips and start undoing her loincloth, loosening the knots that secure the ragged fabric. Within moments the fabric falls away and is casually thrown aside to reveal her glistening nether lips. Clearly, she got worked up and in the mood by assuming dominance over you.";
	otherwise:  [player beaten]
		if bodyname of player is "Orc Breeder" and facename of player is "Orc Breeder" and skinname of player is "Orc Breeder":
			say "     'Had some delusions of grandeur, little breeder?' the female orc says in a gruff voice as you sway back and forth, barely keeping on your feet. Then she grasps your chin and bends your head left and right, inspecting you with a snort. 'You look the part of a sex toy slut, but have some fight in you, eh? Maybe you're as much as a 'freak' as me. But don't think that'll earn you anything - you came into MY camp, so you're mine to have fun with for now.' With that said, Katya pushes you further and further backwards, then hooks a foot behind yours and gives a hard shove. You fall only a short distance before her other hand slid under your back slows your descent, softening the impact so you land relatively softly on her sleeping bag, stretched out on your back. The green-skinned woman stands over you and looks down with a lusty grin after that.";
		otherwise if bodyname of player is "Orc Warrior" and facename of player is "Orc Warrior" and skinname of player is "Orc Warrior":
			say "     'The 'dick-less freak' isn't so weak after all, eh?' Katya growls and steps forward towards your swaying form. With a full-force elbow blow to your face, she sends you crashing to the ground immediately afterwards. Your vision is filled with stars for a moment after that, but you feel your arms being lifted and used to drag you along the ground for a little bit. Eventually you're let go to flop down on something at least a little softer than the bare earth - seems like she dragged you onto her sleeping bag.' As your vision starts to clear, you see the green-skinned woman standing over you, looking down with a lusty grin.";
		otherwise:
			say "     'You made a mistake in challenging THIS orc. Or are you a masochist or something?' Katya growls and lands a last blow against the side of your head with her fist. For a moment, you see nothing but stars, then become aware of a large hand grasping your shoulder - the only reason you didn't crash to the ground. With the other hand, she grasps your chin and bends your head left and right, inspecting you with a snort. 'Better leave the fighting to those made for it. I'll show you your place.' With that said, Katya pushes you further and further backwards, then hooks a foot behind yours and gives a hard shove. You fall only a short distance before her other hand slid under your back slows your descent, softening the impact so you land relatively softly on her sleeping bag, stretched out on your back. The green-skinned woman stands over you and looks down with a lusty grin after that.";
		say "     Katya's hands move to her hips and start undoing her loincloth, loosening the knots that secure the ragged fabric. Within moments the fabric falls away and is casually thrown aside to reveal her glistening nether lips. Clearly, she got worked up and in the mood by taking you down. ";
	if anallevel > 1 and a random chance of 1 in 2 succeeds:
		say "[KatyaVictoryAssEating]";
	otherwise:
		say "[KatyaVictoryPussyEating]";
	increase libido of Katya by 1;
	wait for any key;
	move player to Dry Plains;

to say KatyaVictoryPussyEating:
	say "Crouching down, the powerful woman grabs your arms and pushes them up over your head, pinning them to the ground. Then she swings her muscular leg over you, straddling your chest. 'Let's see how good you are with that tongue of yours,' she adds in an aroused grunt, using her other hand to grab your head and pull your head against her crotch.";
	WaitLineBreak;
	if "Submissive" is listed in feats of player:
		say "     Nose buried in the trimmed pubes of Katya the orc, you eagerly submit to the strong woman and start to lap at her crotch. ";
	otherwise if "Dominant" is listed in feats of player:
		say "     Nose buried in the trimmed pubes of Katya the orc, you don't see any other option but to grudgingly submit to the strong woman and start to lap at her crotch. ";
	otherwise:
		say "     Nose buried in the trimmed pubes of Katya the orc, you submit to the strong woman and start to lap at her crotch. ";
	say "The female juices that show her arousal are actually quite tasty, so after the first experimental lick, the quickly rising desire for more encourages to you to really go for it. Huffing the musky aroma of her sex, you push the tip of your tongue in deep between those green pussy lips and explore her depths. Meanwhile, Katya isn't idle either - she keeps a secure hold on your head and grinds her crotch against your face, rotating her hips and moaning loudly.";
	say "     'Yessss! Just like that!' she gasps out, her exclamations coinciding with little throbs of femcum that trickle onto your tongue. The juices of this now very horny orc have a noticeable effect on yourself too - a bit of a light-headed feeling spreads through you, making you a little bit drunk and more than just a little aroused. Aphrodisiac-laced femcum and cum - the nanites really hit a hole in one for the orcs with that! Sliding your hands between your legs, you rub your own crotch while at the same time still hungrily eating out Katya's pussy.";
	WaitLineBreak;
	say "     The oral pleasure against her pussy quickly drives your orcish captor to higher and higher peaks of lust, filling her hidden camp with loud moans and gasps that accompany every swirl and swipe of your tongue. She never lets go of your hair, wanting - maybe needing - to be the dominant partner in this affair and sometimes giving clear hints at what feels best by tugging on your head. It doesn't take that much longer before her soaring arousal eventually reaches a stretched-out climax, with the female orc shouting in completion as she trembles and twitches under your tongue. A full, rich squirt of femcum splashes your face before you can get your lips over her clit and opening.";
	say "     The next and any further squirts are caught directly on your tongue, covering it with a delicious treat that you eagerly gobble down. If her juices before were tasty, this stuff now is pure ambrosia, making you feel light-headed and very very good indeed. You do lose track of time a little about how long you lay there under Katya's pussy, receiving the bounty of her orgasm and doing your very best to prolong it further. At some point - with your tongue still buried in her snatch and wiggling to maybe get a tiny bit more femcum from the woman - Katya eventually gives a pleased sigh and lets go of your hair, making your head fall back onto the sleeping bag.";
	WaitLineBreak;
	say "     Before you can get back to licking on your own, the female orc pushes herself off from the ground and stands over you - providing a truly impressive view. With your head on the ground between her feet, your gaze wanders over her long, muscular legs, the tasty pussy and her bush of pubic hair, then above that Katya's ripped abs and shapely breasts. Quite a sexy amazon! She is content to just stand over you for a little while, breathing a bit hard from getting off just now, then eventually blows out her breath and looks down.";
	say "     'Well, that was fun. You have some skill at pussy eating,' the female orc says in a tone of grudging recognition. There might even have been a little twitch of her mouth indicating a smile, but it is hard to say because her features harden almost immediately afterwards. 'Still, this is MY camp. So fuck off, will you? And you know what expects you if you come back!' That said, she makes a fist and cracks her knuckles with the other hand, watching you as you get back to your feet and slip out of the camp. Wandering away from your encounter with the sexy orc, you commit the path to her hidden camp to memory. Might be fun to visit her sometime - even if you're unlikely to get a friendly welcome.";

to say KatyaVictoryAssEating:
	say "Crouching down, the powerful woman grabs your arms and pushes them up over your head, pinning them to the ground. She holds you like that in a tight and uncomfortable grip, completely unmoved by your tries to pull your arms aside at least a little to stop them from aching in their current position.";
	WaitLineBreak;
	say "     'Let me ask you this, asshole. Can you move one inch if I don't want you to? No? Then remember that and don't try anything - I got other plans than pounding your face into the ground right now, but I will if you make me. Understood?' She gives a harsh laugh as you nod quickly, then lets go of your wrists, allowing you to pull down your arms and rub them. Even as you're still doing that, the green-skinned woman swings a muscular leg over you, straddling your chest with the firm globes of her buttocks filling most of your field of view. 'Let's see how good you are with that tongue of yours,' she adds in an aroused grunt while throwing you a demanding look over her shoulder.";
	WaitLineBreak;
	if "Submissive" is listed in feats of player:
		say "     Eager to serve a firm-handed mistress like her, you wiggle your arms out from under her strong thighs, then plant both hands on the orc's ass and give it a good squeeze. ";
	otherwise if "Dominant" is listed in feats of player:
		say "     Literally pinned to the ground now by the bulk of the muscular woman on top of you, and with your arms still aching from her 'object lesson', you don't see any other option but to grudgingly submit. Extracting your arms from under the strong thighs of this amazon, you plant both hands on the orc's ass and give it a squeeze. ";
	otherwise:
		say "     With a mental shrug and the thought that things could have turned out worse, you wiggle your arms out from under her strong thighs, then plant both hands on the orc's ass and give it a good squeeze. ";
	say "Man - is there any part of her that isn't firmly muscled? She could crack walnuts with those glutes, you're fairly sure. Somehow you can't stop yourself from touching her smooth green skin and kneading the firm buns Katya almost pushed against your face. This is one fine piece of ass!";
	WaitLineBreak;
	say "     Finally spreading the orc's buttocks after a good long moment of exploration and groping, you inspect Katya's asshole - it is somewhat lighter green than the rest of her, a puckered ring that promises great pleasure for anyone in the position to fuck... which doesn't include you, currently. Then suddenly the muscle flexes a little - winking open and shut - and your captor says in an impatient tone, 'I can feel your breath against my hole. Enough sightseeing! Get in there and eat me out good!' With that said, she pushes her ass an inch further back, making your nose rub lightly against one buttock.";
	say "     Stretching your neck, you push your face into the orc's butt-crack and get a deep huff of her scent - which actually is fairly interesting... clean and seemingly a mixture of feminine and masculine notes. And some sweat, of course - you just were in a fight after all. Then you open your mouth and extend your tongue, feeling the yielding flesh of her body a second later. Brushing over Katya's butt-crack, you lick her dutifully, drawing pleased groans from the strong orc. Interestingly, her pucker trembles at the slightest touch, even expands a little as you press your tongue-tip in experimentally at one point. Something about her orcish physiology seems almost tailor-made for anal sex.";
	WaitLineBreak;
	say "     You've been licking her for a while when you realize that your hands shouldn't be idle either, so you start squeezing her under your fingers again, massaging Katya's buttocks. Somehow, you've long forgotten that she is forcing you to do this, your brain instead being busy to find ways to increase the female orc's pleasure. Funny how one's thoughts just veer off in certain ways sometimes... like just now, when you suddenly get the idea to push deeper, pressing your tongue in against her pucker and stretching it as far as it will go.";
	say "     Her back door readily accepts the slick invasion, giving back almost gentle squeezes around your tongue. At the same time, an aroused gasp reaches your ears - seems like Katya really likes this! Wiggling your tongue in her, you proceed to stimulate the strong orc with eager attention, feeling good about the fact that her muscular body trembles from the sensation you're giving her. 'Yes. YES! Just like that. Deeper!' Katya shouts as you try out a slightly different bend of your tongue, and she presses back against your face hard, almost smothering you with her ass.";
	WaitLineBreak;
	say "     The oral stimulation - and Katya frigging her own clit in desperate arousal - soon drive the green-skinned woman over the edge. With a long-stretched shout of lust, she orgasms hard, squeezing your head between her buttocks like a vice. The powerful pressure has you worry for a second, but thankfully her muscles tighten and relax in a rapid rhythm, allowing you to extract your face from between the climaxing orc's buns.";
	say "     Katya instinctively reacts to your head pulling back from her ass by wiggling backwards - which doesn't actually get you back between her buns, lying flat as you are now. What it does instead is put the base of her pussy over your face - exposing you to a little shower of her femcum, trickling down over the orc's folds and with a fair bit landing in your open, panting mouth. It tastes like pure ambrosia - liquid lust, just leaking onto your taste-buds - prompting you to attack her crotch and slurp up what you can like a man possessed.";
	WaitLineBreak;
	say "     At some point - with your tongue still buried in her snatch and wiggling to maybe get a tiny bit more femcum from the woman - Katya eventually gives a pleased sigh and pushes herself up from the ground. Almost drunk on the potency of her fluids, you can do little more than lie back and gape at the truly impressive view this gives you. With your head on the ground between her feet, your gaze wanders over her long, muscular legs, the tasty pussy and her bush of pubic hair, then above that Katya's ripped abs and shapely breasts. Quite a sexy amazon! She is content to just stand over you for a little while, breathing a bit hard from getting off just now, then eventually blows out her breath and looks down.";
	say "     'Well, that was fun. You have some skill at ass eating - and pussy too,' the female orc says in a tone of grudging recognition. There might even have been a little twitch of her mouth indicating a smile, but it is hard to say because her features harden almost immediately afterwards. 'Still, this is MY camp. So fuck off, will you? And you know what expects you if you come back!' That said, she makes a fist and cracks her knuckles with the other hand, watching you as you get back to your feet and slip out of the camp. Wandering away from your encounter with the sexy orc, you commit the path to her hidden camp to memory. Might be fun to visit her sometime - even if you're unlikely to get a friendly welcome.";

to say OrcFemDesc:
	say "     Katya definitively is an orc to be reckoned with. About 7 feet tall, her build is broad-shouldered and packed with muscles. She has the typical features that define an orc - green skin, a pair of sharp tusks poking up from her lower mandible, slightly over-sized hands and feet, black somewhat bristly hair (which she wears as a mane that hangs down behind her back) - yet there are some differences too. For example the full orbs of her breasts proudly bulging out the fabric of a chest-wrap improvised from ragged cloth, as well as the fact that her loincloth is NOT bulging with a heavy cock dangling between her legs.";
	say "     The female orc warrior sneers back at you while you take her in - seems like she has little patience about being rubbernecked and stared at. She makes a fist and cracks her knuckles with the other hand, then comes at you with the intention of giving you a solid beating.";

Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Orc Female";
	now attack entry is "The [one of]orc[or]green-skinned amazon[or]muscular woman[or]brutish woman[or]muscled amazon[at random] [one of]slaps you around a bit[or]gives you a painful kick[or]pounds you with a big fist[or]grabs you by the throat and throws you to the ground[or]grabs you with one of her hands and headbutts you[or]grabs you by the throat, choking you a bit before you can free yourself[at random]!";
	now defeated entry is "[OrcFemBeaten]";
	now victory entry is "[OrcFemVictorious]";
	now desc entry is "[OrcFemDesc]";
	now face entry is "brutish in appearance, having gained an exaggerated brow, square jaw and yellow eyes. Two sharp tusks protrude from your lower mandible, giving all your expressions a terrifying undertone and distorting your speech somewhat. The short hair on top of your head is black and bristly, sticking up on its own";
	now body entry is "overall human-like, but grown to a good seven feet tall and heavily muscled. The proportions of your body are clearly a bit off the human norm, giving you a pretty bulky build, large hands and feet at the end of thick and powerful limbs, as well as a relatively short neck[if player is OrcCocked]. Around your waist, an improvised loincloth of ragged fabric loosely covers your crotch[end if]";
	now skin entry is "[one of]green[or]pale green[at random]";
	now tail entry is "";
	now cock entry is "[one of]meaty[or]veined[or]green[at random]";
	now face change entry is "a splitting headache has you hold your skull with both hands. Then the changes overtake you, jaw broadening into a square shape as two sharp tusks push up out of your mouth. Your nose flattens and becomes wider, then the rest of your features change into a pretty brutish visage with protruding brows above your eyes. As your face stabilizes in its new form, short bristles of black hair sprout on top of your head";
	now body change entry is "your body shifts and changes, becoming larger than normal. You gain bulging muscles on a broad and powerful frame. As the transformation works its way down your limbs, making them ticker and stronger, it leaves you with somewhat larger than normal hand and feet";
	now skin change entry is "a wash of green spreads across it, at first pretty dark, then lightening to an even, light green tone all over";
	now ass change entry is "your glutes become firm and meaty";
	now cock change entry is "it becomes a light green in colour, with a bush of black, slightly bristly hair at its base. A moment later, a cloud of dust-like nanites whirls around your waist, fading away as a ragged loincloth forms to cover your new manhood";
	now str entry is 18;
	now dex entry is 16;
	now sta entry is 20;
	now per entry is 12;
	now int entry is 8;
	now cha entry is 12;
	now sex entry is "Male";           [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 80;                [ The monster's starting hit points. ]
	now lev entry is 8;                [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 12;              [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";       [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;              [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 4;        [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 6;         [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;            [ Number of breasts the infection will give a player. ]
	now breast size entry is 6;        [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 6;   [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;              [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;        [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;         [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 70;            [ Target libido the infection will rise towards. ]
	now loot entry is "orc femcum";    [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;         [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]meaty[or]powerful[or]broad[or]bulky[at random]";
	now type entry is "[one of]orc[at random]";
	now magic entry is false;          [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;      [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;     [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";  [ Row used to designate any special combat features, "default" for standard combat. ]


Table of Game Objects (continued)
name	desc	weight	object
"orc femcum"	"A plastic water bottle you've filled with orc femcum. Its contents are mostly clear yet thick and somewhat sticky, drawing strings on the walls as you turn the bottle this way or that. If you didn't know where it's from, you'd almost think it might be some sort of flavoured syrup. You could drink it to quench your thirst, but who knows what else it might do to you..."	1	orc femcum

instead of sniffing orc femcum:
say "You open the lid for a moment and take a sniff. Smells rather tasty actually and you're tempted to take a pull from the bottle.";

orc femcum is a grab object. orc femcum is cum.
the usedesc of orc femcum is "[orc femcum use]";

to say orc femcum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the thick orc femcum run over your tongue and down your throat. Mmmmh, this stuff has a really great taste that calls for more. You can't help yourself and keep drinking until all of it is gone, filling your mind with a giddy, pleasant buzz. Now where do you get more of this stuff? You're really tempted to return to Katya and milk some more from her.";
	decrease thirst of player by 6;
	if thirst of player < 0, now thirst of player is 0;
	decrease humanity of player by 10;
	infect "Orc Female";


Table of Game Objects (continued)
name	desc	weight	object
"katya's dildo"	"     A well-crafted silicone dildo shaped like an equine cock. It has a broad base including a hefty pair of balls and is styled like an actual equine dick - speckled in shades of black, brown and pink. After regular use by Katya, it seems to have taken on some characteristics from that - somehow, this sex toy is always a little bit wet and slippery and smells of the orc's femcum."	2	katya's dildo

katya's dildo is a grab object. It is part of the player. It is not temporary.

the scent of the katya's dildo is "[SmellingKatyasDildo]".

to say SmellingKatyasDildo:
	say "     You sniff the sex toy that you stole from Katya the orc. It seems to have taken on her scent permanently, so the arousing aroma of the green-skinned woman's femcum fills your nose. You find yourself tempted to lick it...";
	say "     [line break]";
	say "     ([link]Y[as]y[end link]) - Do it.";
	say "     ([link]N[as]n[end link]) - Suppress the urge.";
	if player consents:
		say "     [line break]";
		say "     Following what almost seems to be a compulsion, you lick the equine dildo a few times, tasting the orc's femcum on it. The tasty fluid tingles a little on your tongue and you thirst for more and more, but eventually manage to put the dildo down again.";
		increase libido of player by 10;
		if libido of player > 100:
			now libido of player is 100;
		decrease humanity of player by 5;
		infect "Orc Female";
	otherwise:
		say "     [line break]";
		say "     Shaking off the urge, you pack away Katya's dildo.";

instead of using Katya's dildo:
	if cunts of player > 0:
		say "     [bold type]Do you want to use this proud cock to fuck your pussy or ass?[roman type][line break]";
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - Pussy!";
		say "     ([link]N[as]n[end link]) - Ass!";
		if player consents:
			say "[KatyasDildoPussyFuck]";
		otherwise:
			say "[KatyasDildoAssFuck]";
	otherwise:
		say "[KatyasDildoAssFuck]";

to say KatyasDildoPussyFuck:
	say "     Plopping the big dildo on the ground (where it stands upright on its own, thanks to the heavy balls at its base), you quickly get rid of your clothes and gear. Thoughts going back to the strong and beautiful orc woman you stole it from, you step over the toy crouch down. Soon, the flared head of its length touches your buttocks and you grab it with your hand to guide it into your body. The silicone feels slightly wet and slippery under your fingers - that's still Katya's femcum, despite the fact that it's been a while since you took the dildo from her. It must have absorbed so much of her essence that that's a permanent effect now.";
	say "     Pushing the flared head of the sex toy between your nether lips, you nudge them apart with a moan and gasp out loud as it slips into you easily, helped along nicely by Katya's juices. The sensation of having the hard shaft inside you is great, especially with the orc femcum showing its usual stimulating side effects. Starting to bounce up and down on the thick pole, you ride it with great enthusiasm, driving yourself closer and closer to a quickly building orgasm. Then as you push yourself all the way down on the equine dildo until the curve of their balls presses against your buttocks, you come with a loud gasp [if cocks of player > 0]and start blasting heavy spurts of cum from your own cock - to land with little splats on the ground a little further away[otherwise if cunts of player > 0]and start leaking copious amounts of your own femcum - running down between your legs and leaking onto the dildo and the ground[otherwise]and tremble in lust[end if].";
	say "     [line break]";
	say "     As you slide your stretched pussy off the thick equine prick a little while later, you can't help but think of the female orc. Maybe you should visit Katya again sometime soon...";
	infect "Orc Female";

to say KatyasDildoAssFuck:
	say "     Plopping the big dildo on the ground (where it stands upright on its own, thanks to the heavy balls at its base), you quickly get rid of your clothes and gear. Thoughts going back to the strong and beautiful orc woman you stole it from, you step over the toy crouch down. Soon, the flared head of its length touches your buttocks and you grab it with your hand to guide it into your body. The silicone feels slightly wet and slippery under your fingers - that's still Katya's femcum, despite the fact that it's been a while since you took the dildo from her. It must have absorbed so much of her essence that that's a permanent effect now.";
	say "     Pushing your pucker down against the sex toy's head, you gasp out loud as it slips into you after a little pressure, helped along nicely by Katya's juices. The sensation of having the hard shaft inside you is great, especially with the orc femcum showing its usual stimulating side effects. Starting to bounce up and down on the thick pole, you ride it with great enthusiasm, driving yourself closer and closer to a quickly building orgasm. Then as you push yourself all the way down on the equine dildo until the curve of their balls presses against your buttocks, you come with a loud gasp [if cocks of player > 0]and start blasting heavy spurts of cum from your own cock - to land with little splats on the ground a little further away[otherwise if cunts of player > 0]and start leaking copious amounts of your own femcum - running down between your legs and leaking onto the dildo and the ground[otherwise]and tremble in lust[end if].";
	say "     [line break]";
	say "     As you slide your stretched asshole off the thick equine prick a little while later, you can't help but think of the female orc. Maybe you should visit Katya again sometime soon...";
	infect "Orc Female";

Section 4 - Location

Inconspicuous Trail is a room.
The description of Inconspicuous Trail is "     You're on a fairly seldom-used trail through the expansive grassland of the dry plains. If you hadn't known exactly what to look for, there would be little chance you'd even have noticed this trail. Just a little distance further to the northeast is Katya's hidden camp.".

Northeast of Inconspicuous Trail is Hidden Camp. Hidden Camp is sleepsafe.
The description of Hidden Camp is "[KatyasCampDesc]".

to say KatyasCampDesc:
	if daytimer is day: [daytime text]
		say "     You're in a small, hidden camp between the ruined walls left over from several buildings. Sheets of mottled fabric have been hung up to conceal what is going on in here, making it appear just another lifeless remnant of civilization crumbling away in this part of the city. Katya's hideout is surprisingly well equipped for an improvised accommodation in the middle of the nanite apocalypse, with a triangular tarp stretches out over part of the enclosed space, providing shade and protection from rain. Underneath lies her sleeping bag, placed upon a thick layer of dried grass for additional comfort, and a sturdy plastic box with a lid holds the orc's private possessions. A small fire pit and an inverted umbrella with a connected plastic bottle to collect rainwater completes the image of a survivalist's camp.";
	otherwise: [night text]
		say "     You're in a small, hidden camp between the ruined walls left over from several buildings. Sheets of mottled fabric have been hung up to conceal what is going on in here, making it appear just another lifeless remnant of civilization crumbling away in this part of the city. Katya's hideout is surprisingly well equipped for an improvised accommodation in the middle of the nanite apocalypse, with a triangular tarp stretches out over part of the enclosed space, providing shade and protection from rain. Underneath lies her sleeping bag, placed upon a thick layer of dried grass for additional comfort, and a sturdy plastic box with a lid holds the orc's private possessions. A small fire pit filled with a merrily burning campfire and an inverted umbrella with a connected plastic bottle to collect rainwater completes the image of a survivalist's camp.";

Section 5 - Events

instead of going northeast from Inconspicuous Trail while (Katya is in Hidden Camp and KatyaResistance > 0):
	if hp of Katya is 0: [second visit]
		say "     Deciding to return to the female orc's camp, you remember in time that she had traps set up - little pits to step in and possibly break your leg. This time, each has been given an additional level of concealment by putting two thin sticks across them crosswise, holding up a layer of the typical yellow-green grass around here. That'll look like just a bit of trampled grass for the unprepared. Thankfully, you know what to expect and carefully pick your way through the traps, soon arriving at the camouflage tarp that is the hidden entrance into Katya's hideout. Lifting the edge a little bit, you slip inside, finding the orc inside and awake, just sitting against a wall and taking a drink from a water bottle.";
		say "     [KatyaResistanceMessage]With that, the orc screws the bottle-top back on and gently drops the plastic water bottle - not willing do waste any of the precious fluid even if she's gonna fight you. Then she rises to her feet, stretching to the full height of her impressive stature.";
		wait for any key;
		challenge "Orc Female";
		now hp of Katya is 1; [second visit completed]
	otherwise if hp of Katya is 1: [third visit]
		say "     Deciding to return to the female orc's camp, you carefully pick your way through the leg-sized pit traps spread out close to the hidden entrance. Soon, you're standing in front of the camo tarp stretched between two pieces of wall and nudge aside one of the rocks holding its lower edge secured. But as you lift the fabric to slide in, something new happens - there is one hell of a racket as a string of empty cans is dislodged somewhere from the wall inside, falling down. This serves very well to wake the orc from where she lay on her bedding, sitting up with a growl at being disturbed in her rest. Rising quickly to her feet, Katya stretches to the full height of her impressive stature.";
		say "     [KatyaResistanceMessage]";
		wait for any key;
		challenge "Orc Female";
		now hp of Katya is 2; [third visit completed]
	otherwise if hp of Katya is 2: [fourth visit]
		say "     Deciding to return to the female orc's camp, you carefully pick your way through the leg-sized pit traps spread out close to the hidden entrance. Soon, you're standing in front of the camo tarp stretched between two pieces of wall and nudge aside both of the rocks holding its lower edge secured. Forewarned from last time, you peek under the fabric at the right side and see the thin string of twine that in all likelihood holds the empty cans. You can see that pulling the tarp open to slip past it can easily snap that string, so you try the other end instead. No twine there, so far so good, and...";
		say "     WHAT THE FUCK?! You can't help but curse out loud as you place your foot in an open bear-trap, its metallic jaws just waiting for a victim. That is all they do though - the trap is pretty rusty and thankfully DOESN'T snap shut around your ankle, though the shock alone sends you stumbling uncoordinatedly into the camp. The female orc who had been warming up a can of beans over her little fire pit looks up and gives a rough chuckle at your panic. [KatyaResistanceMessage]";
		wait for any key;
		challenge "Orc Female";
		now hp of Katya is 3; [fourth visit completed]
	otherwise if hp of Katya is 3: [fifth visit]
		say "     Deciding to return to the female orc's camp, you carefully pick your way through the leg-sized pit traps spread out close to the hidden entrance. Soon, you're standing in front of the camo tarp stretched between two pieces of wall and nudge aside both of the rocks holding its lower edge secured. Expecting the worst this time, you check for traps with the utmost care and find... nothing?! No strings, no bear trap, just a now loose tarp. This seems very suspicious indeed. With sweat on your brow, you nonetheless pull aside the flap of fabric and slip into Katya's hideout. It is empty - at least of the expected muscular orc woman.";
		say "     You're a few steps into the enclosed space, still wary of what you might walk into, when you hear a growl behind you. Katya is there, having just re-entered her camp after being out and about. [KatyaResistanceMessage]";
		wait for any key;
		challenge "Orc Female";
		now hp of Katya is 4; [fifth visit completed]
	otherwise if hp of Katya > 3: [any further visits]
		say "     Deciding to return to the female orc's camp, you carefully pick your way through the leg-sized pit traps spread out close to the hidden entrance. Soon, you're standing in front of the camo tarp stretched between two pieces of wall and nudge aside both of the rocks holding its lower edge secured. Expecting the worst this time, you check for traps with the utmost care and re-tie the twine for the can-alarm around a rock, making sure it doesn't snap when you slip in. Nevertheless, Katya quickly notices your entry - she's come to expect you, so she keeps an eye out even while [one of]sorting through her stuff[or]drinking[or]preparing food[or]working to free the bear-trap from rust with a wire brush[or]paging through a survivalist pocket-book[or]having a hand under her loincloth and rubbing herself[at random]. With more of a sigh than a growl, she rises to her feet and stretches out to the full height of her impressive stature. [KatyaResistanceMessage]";
		wait for any key;
		challenge "Orc Female";

to say KatyaResistanceMessage:
	if KatyaResistance is 6: [never lost to the player]
		say "'Now how the hell did you think that coming back to my camp uninvited was a good idea? I told you to fuck off!' the green-skinned woman snarls at you before adding, 'You're not one of them masochists, are you? Getting off on being roughed up.' ";
	otherwise if KatyaResistance is 4 or KatyaResistance is 4: [lost 1/2 times]
		say "'You again?!' she growls, her face drawing into a snarl that shows off her sharp tusks. 'Guess I won't have to go find you after all to give you some payback!' ";
	otherwise if KatyaResistance is 3 or KatyaResistance is 2: [lost 3/4 times]
		say "'You just won't leave me alone, will you?!' she growls, her face marked by annoyance. The orc takes on a more defensive posture overall this time, no doubt remembering all of the times you whupped her ass before.";
	otherwise if KatyaResistance is 1: [lost 5 or more times]
		say "'You know, I am SICK AND TIRED of this bullshit!', she growls, baring her sharp tusks to you. 'Coming into my camp no matter what I do, wanting to kick my ass and satisfy yourself. So FINE. Let's settle this once and for all. If you beat me this time, I'll give in - become your slut to fuck when you feel like it.'";

Section 6 - NPC

Katya is a woman. Katya is in Hidden Camp.
The description of Katya is "[KatyaDesc]".
The conversation of Katya is { "placeholder" }.

instead of sniffing Katya:
	say "     Katya has an interesting scent, combining masculine and feminine notes with a little bit of honest sweat. She gives a rough chuckle and grins at you with her tusks showing as you lean in and sniff her.";

to say KatyaDesc:
	say "     Katya definitively is an orc to be reckoned with. About 7 feet tall, her build is broad-shouldered and packed with muscles. She has the typical features that define an orc - green skin, a pair of sharp tusks poking up from her lower mandible, slightly over-sized hands and feet, black somewhat bristly hair (which she wears as a mane that hangs down behind her back) - yet there are some differences too. For example the full orbs of her breasts proudly bulging out the fabric of a chest-wrap improvised from ragged cloth, as well as the fact that her loincloth is NOT bulging with a heavy cock dangling between her legs.";
	say "     The female orc nods to you as she notices your attention, then grins and gives you a few lewd looks herself. Something tells you she's imagining you naked, possibly pinned to the ground underneath muscular body.";


instead of conversing the Katya:
	say "[line break]";
	say "What do you want to talk with Katya about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Her";
	now sortorder entry is 1;
	now description entry is "Try to learn a bit about Katya's background";
	[
	choose a blank row in table of fucking options;
	now title entry is "The Dry Plains";
	now sortorder entry is 2;
	now description entry is "Talk to her about what goes on in the area";
	]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Her"):
					say "[KatyaTalk1]";
				if (nam is "The Dry Plains"):
					say "[KatyaTalk2]";
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the towering orc, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;
			
to say KatyaTalk1: [talk about her]
	say "     'Not satisfied with taming yourself a slut to fuck, you wanna be amused by my life's story too?' the muscular orc says gruffly, scowling a little as she crosses her arms and looks at you. For a moment, you think she'll just leave it at that, then she gives a shrug and makes a throwing-away gesture with one muscular arm. 'Fine, I'll tell you about myself you bastard.' With that said, she strides over to her fire pit and sits down next to it after throwing in a few fresh pieces of wood. The orc stares a moment into the flames, just watching them start to consume what they touch, then glares at you once more as you sit down not far from her.";
	say "     'So. Bet you're curious where a female orc came from. Strange freak of nature and all that!' Katya begins her tale, then lifts a hand to her improvised bra and pulls out something shiny that she had tucked away under it. She turns it over in her hands, gleaming in the firelight - it is a police badge, polished to a mirror's sheen. 'Here, this was dad's. I loved how shiny it was from the start. There I was... barely born, suckling on his nipples and with my little green hands closing around this pretty shiny bauble. Hhmf - best thirty minutes of my life, I can tell you that.' She looks down at the badge and seems lost in thought for a moment...";
	WaitLineBreak;
	say "     'He told me he was proud to see me grow up so quickly. His little girl, becoming so strong and big. Hell, I wasn't even done growing then - just a narrow beanpole without real strength yet.' Katya goes on to tell you, then raises her arm to flex it and let her gaze wander over the muscles rippling under her green skin. Looking back at the badge, she strokes over the engraved name and reads it out loud, 'Virgil Lawrence - could have had a worse dad I guess. At least he loved me. But he was - is - weak. Typical breeder, you see. And then... they came.'";
	say "     Katya gathers a big gob of saliva and spits it into the fire to sizzle away in a second, 'Three of the bastards, young orc warriors, dumb as rocks. Wrenched my out of dad's embrace and half-poured a mug of orc brew over my head while roaring about a new brother to join em. I swallowed what poured into my mouth, almost choking on it, and before I was done coughing that part up that went the wrong way... one of the fuckers called out, 'Ey - where's his dick?!' And with just those words, I wasn't one of them anymore. Just a freak.' The orc woman's face draws into an aggressive snarl and she throws another chunk of wood into the fire, raising a small burst of sparks.";
	WaitLineBreak;
	say "     'I was poked and prodded by them among jeered comments about me being weak - fuck those assholes, I was still growing into this body! And those 'weird bumps' on my chest were strangely soft when being pinched...' she indicates her breasts with a scornful grunt. 'I screamed when one of them rammed a finger up my pussy, just to see what would happen. Hell of a way to lose your virginity, I can tell you that. The noise brought someone else into the room before long - the big kahuna, gold chain and all on that frigging big brute of an orc. He gave the snot-nosed warriors a stare and they let go of me, then sent them out of the room.";
	say "     Katya crosses her arms over her chest. 'Tried to punch him when he reached for me. Of course he caught that easily, squeezing my fist till I was wincing in pain. So there I was, alone with daddy and the orc chief, naked and dripping with orc brew. He inspected me - not like them, just looking - then let go.' Turning the police badge over in her hands a few more times, she tugs it away once more. 'Daddy held me in his arms and pleaded, 'Boghrim, please. She's y-' But the big bad orc just waved him off and said, 'No. She can't stay. Half of the tribe has never even seen a woman. They'd never accept her. You saw what the brothers just did.'";
	WaitLineBreak;
	say "     Silence stretches out for a few seconds, then the orc goes on to say, 'With that said, he left, kicking the door shut behind him. I was in my daddy's arms crying until Boghrim came back, throwing a bundle of ragged fabric to the ground next to me. 'Take that and go,' he said gruffly, barely leaving me time to say goodbye and for dad to give me his badge. A few minutes later, I was outside the police station and a block away, with him stopping at a crossroad and pointing down the road - away. 'You're strong. You'll make it. Just stay away from the tribe's territory,' he said and gave me a push to start walking. Katya frowns and adds, 'Fucking great parenting, eh? Makes me wanna punch him - then punch him some more... At least he gave me some clothes and food, but still. Well, and another orc brew - that bulked me up some more too. Shoving an hour-old girl into the streets is still a shitty thing to do...' She shrugs and balls one fist, then hits the inside of her open palm on the other side. 'But yeah, fuck him. I don't need anyone. And you should have seen the state of the few orc assholes I met on the streets - after I punched them out, that is...'";
	
to say KatyaTalk2: [talk about the farm]
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "     <first random thing she says about the farm>";
		-- 2:
			say "     <second random thing she says about the farm>";
		-- 3:
			say "     <third random thing she says about the farm>";
		

instead of fucking the Katya:
	if lastfuck of Katya - turns < 4:
		say "     As you step up to Katya and demand sex, the big orc snorts and crosses her arms in front of her chest. 'Well, aren't we a horny bastard, eh? Well - sorry to disappoint you, but this orc here does need some time to catch her breath after getting off. I'm not saying no, just... not right now please.'";
	otherwise:
		say "    [KatyaSexMenu]";
	
to say KatyaSexMenu:
	say "[line break]";
	say "What do you want to do with Katya?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Milk her for some orc femcum";
	now sortorder entry is 1;
	now description entry is "Collect a bottle of femcum from her";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fuck her mouth";
	now sortorder entry is 2;
	now description entry is "Slide your dick between her lips";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Go down on her pussy";
	now sortorder entry is 3;
	now description entry is "Lick her snatch and get Katya off";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her pussy";
		now sortorder entry is 4;
		now description entry is "Sink your manhood into the orc's pussy";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her ass";
		now sortorder entry is 5;
		now description entry is "Sink your manhood into the orc's pussy";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Milk her for some orc femcum"):
					say "[KatyaSex1]";
				if (nam is "Fuck her mouth"):
					say "[KatyaSex2]";
				if (nam is "Go down on her pussy"):
					say "[KatyaSex3]";
				if (nam is "Fuck her pussy"):
					say "[KatyaSex4]";
				if (nam is "Fuck her ass"):
					say "[KatyaSex5]";
				now lastfuck of Katya is turns;
				increase libido of Katya by 1;
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the proud orc woman, shrugging your shoulders as she gives you a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say KatyaSex1:
	say "     After pulling an empty bottle out of your pack and walking up to the sexy female orc, you tell Katya what you want to fill it with. Snorting amusedly at the explanation, the green-skinned woman grins and says, 'You're one kinky bastard of a [if player is female]gal[otherwise]dude[end if], that's for sure. But sure, I won't say no to someone getting me off.' Afterwards, she strolls over to her sleeping bag and sits down on it, undoing the loincloth from around her hips. Dropping the piece of fabric to the side, Katya then opens her legs wide and leans back, bracing herself on her elbows. Raising one eyebrow at you, she calls out, 'I'm ready if you are.'";
	say "     With a grin on your face, you move over and kneel between her legs, setting the empty bottle down on the ground next to you. Then you brush your hand over Katya's crotch, running your fingers through her pubic hair to touch the clit of this now moderately submissive warrioress. Lips drawing back from her sharp tusks, the green-skinned woman moans as you rub her, and goes on to breathe heavily when you proceed to slip two fingers into her snatch. Finger-fucking and rubbing her magic button, you wind the strong orc up more and more, making her writhe on the ground and reflexively thrust her hips upwards as if to meet someone's cock being rammed into her pussy.";
	WaitLineBreak;
	say "     Doing everything you can to stimulate the muscular woman, you soon have her moaning louder and louder. 'Getting kinda close now,' she groans out not much later, in between rapid and aroused panting. Then, as the trickle of her fluids over your thrusting fingers starts to get ever more intensive, you quickly snatch up the prepared bottle and hold it against her opening, slowly catching a small amount of femcum. Until you actually get her off by rolling her clit between your fingers that is - which is when she lets out a satisfied shout and starts to squirt, splashing her sticky juices into the bottle in heavy throbs.";
	say "     You continue working the orc woman to milk everything you can from her, filling the little bottle about three quarters before her orgasm eventually ebbs off and the female orc calms down again. She is left sprawled out on the ground after letting herself fall back when she came, and is now panting loudly. 'Can't say I didn't enjoy this,' Katya says with a satisfied smirk up at you. 'Just don't expect me to do anything weird and kinky with that stuff. I'm not gonna drink it, remember that!' You simply shrug and screw the cap on the bottle, then stash it away.";
	say "     [line break]";
	say "     (You gain a bottle of orc femcum.)";
	increase carried of orc cum by 1;

to say KatyaSex2: [fuck her mouth]
	say "     After quickly stripping off your gear and clothes, you tell the female orc to kneel down and get ready to suck you off. She glances at the pile of equipment, almost as if evaluating if she can take you now that you're naked, then gives an almost imperceptible shrug and says, 'Fine, you horny bastard. I'm all yours.' With that, she grabs her chest-wrap and pulls it off over her head and also takes off the loincloth from around her hips. The now naked orc kneels down in front of you and puts a hand on your thigh. With her other hand, Katya reaches out to hold your cock up to inspect it, then starts to stroke along its length.";
	say "     Looking down upon the strong orc-woman, you take the time to study her while she gives you a slow jerk. Her features are too strong to be called pretty, but have their own inherent beauty, and combined with the wild mane of her hair she is a sight to behold. The twin tusks jutting out of her lower mandible can be called cute, especially when she gives you one of those slightly challenging smiles. As for the rest of the orc... her body is a female body-builder's dream - shapely yet powerful, and even has a very generous pair of breasts.";
	WaitLineBreak;	
	say "     With a grin on your face, you take hold of your erection and pull Katya's head closer. Stroking your cock in slow movements up and down, you brush it against her lips, revelling in their softness. The orc chuckles and slides her tongue out for just a second, flicking it over your dick-head to draw a pleased grunt from you. As a reply, you brush your hand through her mane of hair and grab a good handful of it, taking direct control over the muscular woman. A little grunt at being man-handled serves to spread her lips a little and you push in immediately, sliding your manhood into her mouth. Brushing your erection against her wet tongue feels pretty nice, as does the brush of her lips against your shaft, so you start some gentle thrusts into her mouth, slowly face-fucking the orc.";
	say "     Katya soon takes the hint to be a bit more active when you tug on her hair a little, closing her lips around your length and using her tongue to brush over your shaft inside her mouth. You just continue to fuck her mouth, taking your pleasure from the beautiful orc. Ah, what a day - out in the spreading wilderness that formerly was a part of a vibrant human city, a submissive orc slut of your own kneeling before you and slurping on your cock! Who'd have thought that things could work out like this. The nanite apocalypse does certainly have some upsides too...";
	WaitLineBreak;
	say "     The feelings of thrusting in and out of your green-skinned slut's mouth push your arousal to higher and higher levels, until you soon can feel the urge to come approaching rapidly. With both your hands buried in Katya's mane of hair, you hold her firmly as you thrust deep one last time, balls slapping against her chin. Then your balls start to throb as they send forth a deluge of cum, squirt after squirt filling the sexy orc that you've chosen to face-fuck. Katya doesn't have much choice but to swallow your load, and the movement of her muscles around your erection enhances your orgasm quite nicely, giving you a little bit extra fun. For a moment, only your dick and the warm cave it is in matters as you ride out your orgasm... but soon an urgent pat against your thighs brings you back to reality.";
	say "     Groaning around your dick, the orc is tapping out against your legs - oops, you totally forgot she has to breathe. Hastily withdrawing from her mouth, you watch as she gulps in a deep breath of air, panting loudly to replenish her reserves of oxygen. 'Damn! You like fucking my face too much,' she gasps out in between breaths, somewhat miffed about being choked with your cock. Grinning and replying that indeed, you do like taking her very much, you pat the orc's head and point out that there is another drop of cum at the tip of your still mostly hard erection. With a grunt, Katya leans forward and licks it off, then swallows and smacks her lips, then shows her clean tongue. 'If you say so, you horny bastard.' she adds with a shrug and gets back on her feet.";

to say KatyaSex3:  [lick her pussy]
	say "     After quickly stripping off your gear and clothes, you stroll up to the female orc and tell her to get naked and on her sleeping bag. She glances at the pile of your equipment, almost as if evaluating if she can take you now that you're naked, then gives an almost imperceptible shrug and says, 'Fine, you horny bastard. I'm all yours.' With that, she grabs her chest-wrap and pulls it off over her head and also takes off the loincloth from around her hips. The sight of her muscular and toned naked body makes [if player is male]your cock twitch in arousal[otherwise if player is female]your pussy get wet in arousal[otherwise]your arousal spike sharply[end if] and you eagerly follow Katya as she walks over to her bedding and lies down.";
	say "     You kneel between the legs of the female orc and check her out. Her pussy is green like the rest of her skin, if a bit lighter in shade, and has a little bush of pubic hair above it. The nether lips of the sexy woman a slightly swollen and parted, glistening with wetness. Putting a hand on her crotch, you rub over the folds of the orc's sex, drawing a lustful groan from the horny woman. Fuck yeah - such a sexy and strong amazon laid out before you, ready for anything you want to do with her. You've beaten her again and again, wearing down Katya's resistance and claiming this glorious beauty as yours. In some ways, the nanite apocalypse is absolutely amazing!";
	WaitLineBreak;
	say "     Sliding your hands under the muscular thighs of the stretched-out orc, you lift and spread them some more, opening her up for you to really get in close to her pussy. Lowering your head between her thighs, you then pull her folds apart with two fingers and catch a glimpse of pink in between them - looks like orcs are just green on the outside. Then you move forward a little bit more and press your nose against her crotch, taking a good long whiff of her scent. Besides the obvious (a bit of sweat, due to the heat baking the plains during the day) there is a subdued note of a male scent dominated by the overlying female one. It is almost as if her body contradicted the plan for her to be born a regular male orc at some point in its development, deciding to go its own way instead.";
	say "     Nose buried in the trimmed pubes of Katya the orc, you smile at being able to do what you want to the strong woman and start to lap at her crotch. The female juices that show her arousal are actually quite tasty, so after the first experimental lick, the quickly rising desire for more encourages to you to really go for it. Huffing the musky aroma of her sex, you push the tip of your tongue in deep between those green pussy lips and explore her depths. 'Nnnghh - yeah you bastard! Keep going! Deeper!' Katya groans in lust, then adds after a moment of trembling under your oral ministrations, 'If you had started with that, I might not have tried to knock your head in so much.'";
	WaitLineBreak;
	say "     Oh, but you don't plan to just keep it at licking... with a grin, you snake your hand around her thigh, putting it right on the orc's crotch. Then you begin rubbing her clit in circular movements, stroking the very sensitive spot of the green-skinned woman. Breathlessly moaning from your touch, she loses control of herself for a moment and writhes on her sleeping bag, head thrown back in a pleased sigh. 'Fuck that feels good,' she gasps out in a lusty tone, her exclamations coinciding with little throbs of femcum that trickle onto your tongue. The juices of this now very horny orc have a noticeable effect on yourself too - a bit of a light-headed feeling spreads through you, making you a little bit drunk and more than just a little aroused.";
	say "     Aphrodisiac-laced femcum and cum - the nanites really hit a hole-in-one for the orcs with that! Sliding your hands between your legs, you rub your own crotch while at the same time still hungrily eating out Katya's pussy. The oral pleasure against her pussy quickly drives your former opponent to higher and higher peaks of lust, filling her hidden camp with loud moans and gasps that accompany every swirl and swipe of your tongue. She grabs hold of her sleeping bag with one hand as she writhes in lust, the other moving to the back of your head. It is a fun game to see just how much you can wind her up, sabotaging any attempt Katya starts to control herself with a strategic swirl of your tongue or even a nibble at her sensitive clit.";
	WaitLineBreak;
	say "     It doesn't take that much longer of this treatment before her soaring arousal eventually reaches a stretched-out climax, with the female orc shouting in completion as she trembles and twitches under your tongue. A full, rich squirt of femcum splashes your face before you can get your lips over her clit and opening. The next and any further splashes are caught directly on your tongue, covering it with a delicious treat that you eagerly gobble down. If her juices before were tasty, this stuff now is pure ambrosia, making you feel light-headed and very very good indeed. You do lose track of time a little about how long you lay there and suck on Katya's pussy, receiving the bounty of her orgasm and doing your very best to prolong it further.";
	say "     At some point - with your tongue still buried in her snatch and wiggling to maybe get a tiny bit more femcum from the woman - Katya eventually catches her breath a little and says, 'Man, you're good with that tongue, you horny bastard. I might just start liking having to submit to you if you keep giving me treats like just now...' With a pleased sigh, she sits up and pulls your head to hers, giving you a kiss on the lips before letting herself fall back again, ready to take a nap to restore her energies.";
	
to say KatyaSex4:  [fuck her pussy]
	say "     After quickly stripping off your gear and clothes, you stroll up to the female orc and tell her to get naked and on her sleeping bag. She glances at the pile of your equipment, almost as if evaluating if she can take you now that you're naked, then gives an almost imperceptible shrug and says, 'Fine, you horny bastard. I'm all yours.' With that, she grabs her chest-wrap and pulls it off over her head and also takes off the loincloth from around her hips. The sight of her muscular and toned naked body makes [if player is male]your cock twitch in arousal[otherwise if player is female]your pussy get wet in arousal[otherwise]your arousal spike sharply[end if] and you eagerly follow Katya as she walks over to her bedding and lies down.";
	say "     You kneel between the legs of the female orc and check her out. Her pussy is green like the rest of her skin, if a bit lighter in shade, and has a little bush of pubic hair above it. The nether lips of the sexy woman a slightly swollen and parted, glistening with wetness. Putting a hand on her crotch, you rub over the folds of the orc's sex, drawing a lustful groan from the horny woman. Fuck yeah - such a sexy and strong amazon laid out before you, ready for anything you want to do with her. You've beaten her again and again, wearing down Katya's resistance and claiming this glorious beauty as yours. In some ways, the nanite apocalypse is absolutely amazing!";
	WaitLineBreak;
	say "     Sliding your hands under the muscular thighs of the stretched-out orc, you lift and spread them some more, opening her up for you to fuck. You catch a glimpse of pink in the depth between her pussy lips - looks like orcs are just green on the outside. Then you're guiding your [cock of player] prick up against her, rubbing the glans of your erection up and down between the glistening folds and getting it wet with the slickness of her arousal. Finally nudging her nether lips apart with the tip of your dick, you slide it into the orc's receptive body, grunting in satisfaction as her inner passage snugly enfolds your cock. God, she feels good around your manhood - soft and warm, and so very wet!";
	say "     Katya moans in arousal as you bottom out in her and says, 'Fuck yeah, that feels nice!' as your balls rub against her crotch. Throwing you a lust-filled look, she tenses her muscles around your manhood, squeezing it tightly and drawing an aroused grunt in turn. 'In some regards its not so bad to have a [if cunts of player > 0]herm[otherwise]guy[end if] here. Fuck me hard you bastard! Show me you're man enough to satisfy an orc!' Katya almost shouts to you, her legs wrapping around your hips to pull you in against her body. She asked for it - so you gleefully pull out a little, then hammer back into her depth. The orc can't help but shout out a moan as you start fucking her in earnest then grins wildly with her tusks bared. You saw your erection in and out of her snatch and push all her buttons, rubbing Katya's clit at the same time.";
	WaitLineBreak;
	say "     Fucking and fingering the muscular orc works well to put her under your control, allowing the exquisite fun of trying out just what you can make her do. Fucking got her going good, demonstrated by the increasing wetness between her legs, the twitch of inner muscles around your thrusting cock and the fact that Katya's face and chest are becoming flushed in a somewhat lighter emerald green. But you want to tease more out of her - like the aroused groan she lets out when you caress the curve of her breasts, followed by a breathless grunt when you wrap your lips around one nipple, sucking hard. Experimentation reveals many a spot you can use to have fun with her, making the green-skinned woman whimper in helpless pleasure.";
	say "     Even as she throws you a glare or two at trying out her weakest and most sensitive spots, this can't change the fact that the orc is panting and moaning louder every time you bottom out inside her. Katya tries to hold her lewd groans in once or twice, biting her lip to suppress the urge to show her arousal - and you revel in making her fail, giving an especially deep thrust every time that forces an exclamation of her lust from the orc's lips. You look forward to the day she will finally learn and accept that that her pussy is there to have your cock sheathed inside it - and until she does, you will have a lot of fun teaching this fact to the orc.";
	WaitLineBreak;
	say "     Thrusting into the sexy orc amazon again and again, you fuck her with unrelenting force, filling Katya's hideout with the slapping noises of your balls against her crotch, as well as your shared grunts, moans and pants. Grinning down at her powerful, yet now quite helpless form, you underline for the orc that she is yours to keep and fuck - which draws a subdued growl from her. In reply, you intensify your attack on her clit, rubbing it with increased intensity while still hammering into her depths. The combined assault is too much for her to resist, and if she wants to or not, Katya is pushed to experience an intense orgasm.";
	say "     With your orc beauty's inner muscles trembling around the girth of your cock, squeezing it in quite enjoyable fashions, it doesn't take long before you yourself reach the point of no return. Giving a last deep thrust that draws a breathless gasp from Katya, you start to unload into her depths, claiming her body as your own by painting its insides white with your potent load. Throb after heavy throb, you fill the muscular orc woman with your seed and stay balls deep inside her until the spurts eventually ebb off. Now lying spent on top of your freshly bred orc amazon, you rest your head against the twin bulges of her breasts a moment, rubbing your right cheek against the warm curves.";
	say "     Sated and exhausted from the fuck-session, you let yourself be drawn in by the beauty of the orc's shapely boobs. Following the temptation to feel and caress them, you soon take a nipple between your lips and suckle once more. This results in her putting a hand on your shoulder, grasping it, then moving up a little more to grab you by the back of your neck. Yet she doesn't try to stop you, instead pressing you against her breasts with a little bit more urgency. Your sexy orc likes her nipples being played with! After indulging her with a short while of boob worship, you eventually pull your softening dick out of her snatch, then collect your gear and clothes to get dressed.";
			
to say KatyaSex5:  [fuck her ass]
	say "     After quickly stripping off your gear and clothes, you stroll up to the female orc and tell her to get naked and on her sleeping bag. She glances at the pile of your equipment, almost as if evaluating if she can take you now that you're naked, then gives an almost imperceptible shrug and says, 'Fine, you horny bastard. I'm all yours.' With that, she grabs her chest-wrap and pulls it off over her head and also takes off the loincloth from around her hips. The sight of her muscular and toned naked body makes [if player is male]your cock twitch in arousal[otherwise if player is female]your pussy get wet in arousal[otherwise]your arousal spike sharply[end if] and you eagerly follow Katya as she walks over to her bedding and lies down.";
	say "     You kneel between the legs of the female orc and check her out. Her pussy is green like the rest of her skin, if a bit lighter in shade, and has a little bush of pubic hair above it. The nether lips of the sexy woman a slightly swollen and parted, glistening with wetness. Putting a hand on her crotch, you rub over the folds of the orc's sex, drawing a lustful groan from the horny woman. Fuck yeah - such a sexy and strong amazon laid out before you, ready for anything you want to do with her. You've beaten her again and again, wearing down Katya's resistance and claiming this glorious beauty as yours. In some ways, the nanite apocalypse is absolutely amazing!";
	WaitLineBreak;
	say "     Sliding your hands under the muscular thighs of the stretched-out orc, you lift them up and up, hooking the hollows of her knees over your shoulders. Pulling on Katya, you soon have her in a partial handstand - the half about being mostly upside in body even if she's not lifted off the ground on her hands. Still, this puts you in just the right position to press your face in between her buttocks, taking a deep huff of the orc's scent. She smells slightly sweaty, but beside that there is a subdued note of a male scent dominated by the overlying female one - as if her body contradicted the plan for her to be born a regular male orc at some point in its development, deciding to go its own way instead.";
	say "     Spreading the orc's buttocks after a good long moment of exploration and groping, you inspect Katya's asshole - it is somewhat lighter green than the rest of her, a puckered ring that promises great pleasure for anyone in the position to fuck it - something you're definitively looking forward to. Then suddenly the muscle flexes a little - winking open and shut - and Katya says loudly, 'You sure are eager to get up close with my butt, aren't you fucker?! Want to feel one of those amazing orc holes around your shaft, hah! Go on then - I'm looking forward to it!' Eager to try out Katya's rear end, you open your mouth and extend your tongue, feeling the yielding flesh of her body a second later.";
	WaitLineBreak;
	say "     Brushing over Katya's butt-crack, you lick her dutifully, drawing pleased groans from the strong orc. Interestingly, her pucker trembles at the slightest touch, even expands a little as you press your tongue-tip in experimentally at one point. Something about her orcish physiology seems almost tailor-made for anal sex. Gleefully pushing deeper, you wiggle your tongue into the middle of the ring of her pucker and stretch it as far as it will go. Her back door readily accepts the slick invasion, giving back almost gentle squeezes around your tongue. Katya moans out loud as you start to eat her ass out enthusiastically, reacting to the sensations of having a tongue wigging against one of her pleasure spots.";
	say "     'Fuck yeah! Deeper!' comes the urgent request of the green-skinned beauty, followed by a satisfied grunt when you comply, shoving your wriggling tongue as deep as it will go. Teasing her inner walls for a sweet little while, you drive the orc wild, panting and moaning in reaction to every twitch of your tongue. It is fun to see what you can make her say and the noises in reply to the right stimulation, but after a while, you do feel the need to get off yourself and lower her legs from your shoulders, allowing the orc to stretch out on the ground again. Not all the way though - you still keep her legs spread and hips slightly raised - just at the right height for your rock hard cock!";
	WaitLineBreak;
	say "     With a thrust of your hips forward, you sink your cock into the green-skinned amazon's asshole, sliding right into the pleasantly well-lubed chute. Wound up incredibly tight, the orc can't help but let out a shouted moan as you start fucking her. Not giving her any time to get her bearings, you just hammer into her hard, sawing your erection in and out of her back door and pushing all her buttons by rubbing Katya's clit at the same time. Fucking and fingering the muscular orc works well to put her under your control, making Katya putty in your hands for the moment. The orc is panting and moaning louder every time you bottom out inside her.";
	say "     She tries to hold it in once or twice, biting her lip to suppress the urge to gasp out in lust - and you revel in making her fail, giving an especially deep thrust every time that forces an exclamation of her arousal from the orc's lips. You look forward to the day she will finally learn and accept that that her ass is there to have your cock sheathed inside it - and until she does, you will have a lot of fun teaching this fact to the orc. Thrusting into the sexy orc amazon again and again, you fuck her with unrelenting force, filling Katya's hideout with the slapping noises of your balls against her buttocks, as well as your shared grunts, moans and pants.";
	WaitLineBreak;
	say "     Grinning down at Katya's powerful, yet now quite helpless form, you underline for the orc that she is yours to keep and fuck - which draws a subdued growl from her. In reply, you intensify your attack on her clit, rubbing it with increased intensity while still hammering into her back door. The combined assault is too much for her to resist, and if she wants to or not, Katya is pushed to experience an intense orgasm. With your aroused orc beauty's anal muscles trembling around the girth of your cock, squeezing it in quite enjoyable fashions, it doesn't take long before you yourself reach the point of no return.";
	say "     Giving a last deep thrust that draws a breathless gasp from Katya, you start to unload into her depths, claiming her body as your own by painting its insides white with your potent load. Throb after heavy throb, you fill the muscular orc woman with your seed and stay balls deep inside her until the spurts eventually ebb off. Pulling out and sinking forward to lie spent on top of your freshly bred orc amazon, you rest your head against the twin bulges of her breasts a moment.";
	WaitLineBreak;
	say "     Sated and exhausted from the fuck-session, you let yourself be drawn in by the beauty of the orc's shapely boobs. Following the temptation to feel and caress them, you soon take a nipple between your lips and suckle once more. This results in her putting a hand on your shoulder, grasping it, then moving up a little more to grab you by the back of your neck. Yet she doesn't try to stop you, instead pressing you against her breasts with a little bit more urgency. Your sexy orc likes her nipples being played with! After indulging her with a short while of boob worship, you eventually pull your softening dick out of her asshole, then collect your gear and clothes to get dressed.";

Orc Female ends here.
