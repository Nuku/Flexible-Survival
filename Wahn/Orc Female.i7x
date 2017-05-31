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

KatyaResistance is a number that varies. KatyaResistance is usually 4.
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
			say "     Deciding against exploring the camp, you do turn away from it and keep going. You do make a note of where it was though, in case you want to return to the [bold type]hidden camp[roman type] sometime in the future.";
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
			say "     Deciding against exploring the camp, you do turn away from it and keep going. You do make a note of where it was though, in case you want to return to the [bold type]hidden camp[roman type] sometime in the future.";
			now hp of Katya is 1; [declined to investigate]

Section 2 - Monster Responses

to say OrcFemBeaten:
	say "     After your last hit, the female orc warrior staggers a bit, her eyes unfocused - then she keels over with a groan and lands on her back with a loud thud. Seeing Katya lie on the ground, your eyes can't help but wander down to her crotch where the large woman's loincloth has fallen aside, revealing the enticing sight of her slightly open pussy under a small bush of black pubic hair.[if libido of Katya > 0] And even better - she's visibly wet. Seems like the memory of your previous fight and its aftermath is still on Katya's mind and she couldn't help getting excited about what might happen this time.[end if]";
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
	[
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
	]
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
				wait for any key;
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
	say "     After pulling an empty bottle out of your pack and setting it down where you can quickly reach it, you kneel down beside the downed orc and pull her loincloth off for good. With the ragged fabric out of the way, she looks even more delicious - strong, muscular and yet dazed after a clash and totally vulnerable. With a grin on your face, you brush your hand over her crotch, running your fingers through her pubic hair to touch the clit of this beaten warrioress. Lips drawing back from her sharp tusks, the green-skinned woman moans as you rub her, and goes on to breathe heavily when you proceed to slip two fingers into her snatch.";
	say "     Finger-fucking and rubbing her magic button, you wind the still semiconscious orc up more and more, making her writhe on the ground and reflexively thrust her hips upwards as if to meet someone's cock being rammed into her pussy. Doing everything you can to stimulate the muscular woman, you soon have her moaning louder and louder. Then, as the trickle of her fluids over your thrusting fingers starts to get ever more intensive, you quickly snatch up the prepared bottle and hold it against her opening, slowly catching a small amount of femcum. Until you actually get her off by rolling her clit between your fingers that is - which is when she lets out a breathless shout and starts to squirt, splashing her sticky juices into the bottle in heavy throbs.";
	say "     You continue working the orc woman to milk everything you can from her, filling the little bottle about three quarters before her orgasm eventually ebbs off and the female orc calms down again. She is left sprawled out on the ground, panting loudly and awake. Seems like a good time to leg it - if you give her the time to catch her breath, you'll no doubt be in another fight in a second. Putting the cap on your bottle and quickly stashing it away, you give the orc's pussy a last quick fondle, then jump up and quickly leave her camp.";
	say "     [line break]";
	say "     (You gain a bottle of orc femcum.)";
	increase carried of orc cum by 1;

to say KatyaBeatenSex2: [fuck her mouth]
	say "     ...";

to say KatyaBeatenSex3:  [lick her pussy]
	say "     ...";

to say KatyaBeatenSex4:  [fuck her pussy]
	say "     ...";
		
to say KatyaBeatenSex5:  [fuck her ass]
	say "     ...";

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
	say "     Katya definitively is an orc to be reckoned with. About 7 feet tall, her build is broad-shouldered and packed with muscles. She has the typical features that define an orc - green skin, a pair of sharp tusks poking up from her lower mandible, slightly over-sized hands and feet, black somewhat bristly hair (which she wears as a mane that hangs down behind her back) - yet there are some differences too. For example the full orbs of her breasts proudly bulging out the fabric of a bra improvised from ragged cloth around her chest, as well as the fact that her loincloth is NOT bulging with a heavy cock dangling between her legs.";
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
	now cocks entry is 0;              [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 6;        [ Length in inches infection will make cock grow to if cocks. ]
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

Northeast of Inconspicuous Trail is Hidden Camp.
The description of Hidden Camp is "[KatyasCampDesc]".

to say KatyasCampDesc:
	if daytimer is day: [daytime text]
		say "     You're in a small, hidden camp between the ruined walls left over from several buildings. <WIP>";
	otherwise: [night text]
		say "     You're in a small, hidden camp between the ruined walls left over from several buildings. <WIP>";

Section 5 - NPC

Katya is a woman. Katya is in Hidden Camp.
The description of Katya is "[KatyaDesc]".
The conversation of Katya is { "placeholder" }.

instead of sniffing Katya:
	say "     Katya smells like <WIP>";

to say KatyaDesc:
	say "     Katya definitively is an orc to be reckoned with. About 7 feet tall, her build is broad-shouldered and packed with muscles. She has the typical features that define an orc - green skin, a pair of sharp tusks poking up from her lower mandible, slightly over-sized hands and feet, black somewhat bristly hair (which she wears as a mane that hangs down behind her back) - yet there are some differences too. For example the full orbs of her breasts proudly bulging out the fabric of a bra improvised from ragged cloth around her chest, as well as the fact that her loincloth is NOT bulging with a heavy cock dangling between her legs.";
	say "     The female orc nods to you as she notices your attention, then grins and gives you a few lewd looks herself. Something tells you she's imagining you naked, possibly pinned to the ground underneath muscular body.";

instead of fucking the Katya:
	say "    <WIP>";


Orc Female ends here.
