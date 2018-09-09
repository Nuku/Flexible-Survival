Version 4 of Wereraptor by Stripes begins here.
[Version 4.3 - Tweak to loss scene probabilities - Stripes]
[Version 4.4 - removal of banning content - Luneth]
[Note: not Resolution flagged yet - use existing variables for now]
"Adds a special wereraptor creature/curse to Flexible Survival's Wandering Monsters table"

[ wrcursestatus                                                                ]
[ 0: no contact                                                                ]
[ 1: freed                                                                     ]
[ 2: latent                                                                    ]
[ 3: activated                                                                 ]
[ 4: resisted for the night                                                    ]
[ 5: curse in effect                                                           ]
[ 6: rampage in effect                                                         ]
[ 7: curse accepted                                                            ]
[ 100: curse purged                                                            ]

Section 0 - Event Activation

Paleontology Professor is a situation. The level of Paleontology Professor is 7.
The sarea of Paleontology Professor is "Campus".

when play begins:
	add Paleontology Professor to badspots of furry;

utahmet is a truth state that varies. utahmet is usually false.

Instead of resolving a Paleontology Professor:
	if guy is banned and girl is banned:
		say "     You find your way into the biology building in the hopes of finding answers or at least supplies and happen across the door to a paleontology professor's office. On the door is a notice saying that the professor was transferred due to content restrictions. Odd.";
		say "(This content requires that at least one of Guy or Girl content be available in the game. - Mgmt)[line break]";
	else:
		if daytimer is day:
			say "     Looking for answers or at least some supplies, you enter the biology building on campus and have a quick look around rather than stay out in the open during the day. In one disused section of the building, you hear some noise coming from behind one of the office doors. Labeled as 'Dr. R. Utah - Paleontology', you briefly wonder how many students such a professor could even get at such a sports-centric college. You check the door and find it locked, but a voice responds to your presence. 'Is someone there?";
			say "     [bold type]While the voice is muffled, does it sound more like a man or a woman?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - It sounds like a man.";
			say "     ([link]N[as]n[end link]) - It sounds like a woman.";
			if player consents:
				LineBreak;
				say "     Help! Can you help me get out? My name is Dr. Utah and I locked myself in here when the changes started, but I can't get out now. If you can still understand me, please help me,' he pleads.";
				say "     [bold type]Shall you free him?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if player consents:
					LineBreak;
					say "     You try pushing at the heavy wooden door, but it seems quite stuck. You bash your body against it a few times, feeling it start to give. You keep at it, always worried that some creature will hear you and arrive, but manage to break down the door, cracking and snapping the wood away from the numerous nails pounded into the frame from the inside. You land in the arms of a middle-aged man.";
					say "     The office is a mess and his clothes are horribly torn, but he appears to be quite human. It seems he was lucky enough to make it to safety before anything could infect him. Their office also seems largely destroyed, with strange slashes on the walls and the door and most of the furniture overturned or completely broken. Among the wreckage, there's a shattered display case with a large bone lying among the shards. Noticing your gaze, he wrings his hands nervously.";
					say "     'I... it was so crazy. Out there, I mean. I nailed my door shut. When things calmed down later, I couldn't get out. I started to go stir crazy and threw around the furniture and beat at the walls trying to get someone to hear me. I'd almost completely given up hope by the time you came by. Thank you again for saving me. I don't know how much longer I would have been able to hold out. I had hoped someone would come to rescue us much sooner, but I'm guessing this is a much more widespread problem than just something on campus. I know none of my fellow professors here were working on anything even remotely like this... outbreak.'";
					say "     He rubs to scratch a scar on his side and starts moving outside the room. 'Look... as good as it is to talk to someone again, I really need to get out of this room after being cooped up in here. I'm sure we'll catch up again soon,' he adds with a grin before leaving.";
					say "     Now alone, you look over the room, but find little. Almost all the contents were destroyed or consumed, though you do find a stale bag of chips in the bottom of one drawer. Better than nothing and a little reward for being a good samaritan, you are left feeling a little better for having done the good deed.";
					now UtahGender is 1;
					now utahmet is true;
					increase score by 25;
					increase morale of player by 2;
					increment carried of chips;
					raptorrelease;
				else:
					LineBreak;
					say "     Deciding not to risk letting out whatever creature may be lurking in there, you back away slowly and go looking elsewhere. There is some pleading and cursing, but you continue to go, feeling a little bad about your decision.";
					decrease morale of player by 2;
			else:
				LineBreak;
				say "     Help! Can you help me get out? My name is Dr. Utah and I locked myself in here when the changes started, but I can't get out now. If you can still understand me, please help me,' she pleads.";
				say "     [bold type]Shall you free her?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if player consents:
					LineBreak;
					say "     You try pushing at the heavy wooden door, but it seems quite stuck. You bash your body against it a few times, feeling it start to give. You keep at it, always worried that some creature will hear you and arrive, but manage to break down the door, cracking and snapping the wood away from the numerous nails pounded into the frame from the inside. You land in the arms of a middle-aged woman.";
					say "     The office is a mess and her clothes are horribly torn, but she appears quite human. It seems she was lucky enough to make it to safety before anything could infect her. Their office also seems largely destroyed, with strange slashes on the walls and the door and most of the furniture overturned or completely broken. Among the wreckage, there's a shattered display case with a large bone lying among the shards. Noticing your gaze, she wrings her hands nervously.";
					say "     'I... it was so crazy. Out there, I mean. I nailed my door shut. When things calmed down later, I couldn't get out. I started to go stir crazy and threw around the furniture and beat at the walls trying to get someone to hear me. I'd almost completely given up hope by the time you came by. Thank you again for saving me. I don't know how much longer I would have been able to hold out. I had hoped someone would come to rescue us much sooner, but I'm guessing this is a much more widespread problem than just something on campus. I know none of my fellow professors here were working on anything even remotely like this... outbreak.'";
					say "     She rubs a scar on her side and starts moving outside the room. 'Look... as good as it is to talk to someone again, I really need to get out of this room after being cooped up in here. I'm sure we'll catch up again soon,' she adds with a grin before leaving.";
					say "     Now alone, you look over the room, but find little. Almost all the contents were destroyed or consumed, though you do find a stale bag of chips in the bottom of one drawer. Better than nothing and a little reward for being a good samaritan, you are left feeling a little better for having done the good deed.";
					now UtahGender is 2;
					now utahmet is true;
					increase score by 25;
					increase morale of player by 2;
					increment carried of chips;
					raptorrelease;
				else:
					LineBreak;
					say "     Deciding not to risk letting out whatever creature may be lurking in there, you back away slowly and go looking elsewhere. There is some pleading and cursing, but you continue to go, feeling a little bad about your decision.";
					decrease morale of player by 2;
		else:
			say "     Looking for answers or at least some supplies, you enter the biology building on campus and have a quick look around rather than stay outside to face the creatures roaming around at night. In one disused section of the building, you hear some noise coming from behind one of the office doors. Labeled as 'Dr. R. Utah - Paleontology', you briefly wonder how many students such a professor could even get at such a sports-centric college. You check the door and find it locked, but a scratchy voice responds to your presence. 'Help! Trapped. So weak.'";
			say "     [bold type]While the voice sounds raspy, does it sound more like a man or a woman?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - It sounds like a man.";
			say "     ([link]N[as]n[end link]) - It sounds like a woman.";
			if player consents:
				LineBreak;
				say "     A faint scratching at the wooden door from the inside bring to back to the situation at hand. It seems someone's become trapped. Concerned that he may starve or dehydrate before rescue finally arrives, you should probably help him out.";
				say "     [bold type]Shall you let the guy out?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if player consents:
					LineBreak;
					say "     You try pushing at the heavy wooden door, but it seems quite stuck. You bash your body against it a few times, feeling it start to give. You keep at it, always worried that some creature will hear you and arrive, but manage to break down the door, cracking and snapping the wood away from the numerous nails pounded into the frame from the inside. As the door gives way, you tumble into a destroyed office containing not a person as you'd expected, but a reptilian creature with a sinister grin on its face.";
					challenge "Wereraptor";
					raptorrelease;
					if fightoutcome >= 10 and fightoutcome <= 19:
						say "     Managing to drive off the raptor creature, you take a moment to survey the office. I has been destroyed by the clawed menace trapped inside. The furniture is largely destroyed, the walls and door covered in slashes and everything a mess. Among the wreckage, there's a shattered display case with a large bone lying among the shards. Speaking of the door though, you are confused as you examine it, seeing the nails barring it were driven in from the inside as if the creature sealed itself away. Your search of the office does provide one small reward as you find a bag of stale chips in one of the drawers.";
						now UtahGender is 1;
						increase score by 25;
						increment carried of chips;
					else if fightoutcome >= 20 and fightoutcome <= 29:
						say "     After the raptor creature has had its fun with you, it runs a taloned paw over your face. 'You set me free, so I'll leave you with a gift instead of sating my hunger upon you,' it hisses, sinking its claws into your shoulders again and pulling you close to its snapping jaws, narrowly avoiding biting you. 'I look forward to seeing you again soon.' And with that it is off, running down the hall to freedom.";
						say "     Weak and worried that it may return if you linger, you head out before it can decide you'd make a good snack after all and come back to find you.";
						now UtahGender is 1;
						now wrcursestatus is 2;
						now wrcursestart is turns;
					else:
						say "     Not expecting a fight with a feral raptor creature, you decide to make your escape. The raptor gives chase, easily keeping pace with you until you get outside. Once it bursts out the door and runs down the steps, it laughs maniacally. 'Freedom! I shall let you go for now as reward for freeing me, but I shall have you in time,' it hisses as you continue to run away across the moonlit campus.";
						now UtahGender is 1;
				else:
					LineBreak;
					say "     Deciding not to risk letting out whatever creature may be lurking in there, you back away slowly and go looking elsewhere. As you move away, there is another plea for help, followed by growling and clawing at the door. 'Let me out or I'll find you. I will find you and come for you in the night, prey. And I will GUT you!' it hisses angrily, scratching wildly at the sturdy wooden door. The tirade descends into nothing but growls and hisses as whatever is inside vents its rage. Fearing that it may actually get out and find you, you flee quickly.";
					now UtahGender is 1;
			else:
				say "     A faint scratching at the wooden door from the inside bring to back to the situation at hand. It seems someone's become trapped. Concerned that she may starve or dehydrate before rescue finally arrives, you should probably help her out.";
				now UtahGender is 2;
				say "     [bold type]Shall you let the woman out?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if player consents:
					LineBreak;
					say "     You try pushing at the heavy wooden door, but it seems quite stuck. You bash your body against it a few times, feeling it start to give. You keep at it, always worried that some creature will hear you and arrive, but manage to break down the door, cracking and snapping the wood away from the numerous nails pounded into the frame from the inside. As the door gives way, you tumble into a destroyed office containing not a person as you'd expected, but a reptilian creature with a sinister grin on its face.";
					challenge "Wereraptor";
					raptorrelease;
					if fightoutcome >= 10 and fightoutcome <= 19:
						say "     Managing to drive off the raptor creature, you take a moment to survey the office. I has been destroyed by the clawed menace trapped inside. The furniture is largely destroyed, the walls and door covered in slashes and everything a mess. Among the wreckage, there's a shattered display case with a large bone lying among the shards. Speaking of the door though, you are confused as you examine it, seeing the nails barring it were driven in from the inside as if the creature sealed itself away. Your search of the office does provide one small reward as you find a bag of stale chips in one of the drawers.";
						now UtahGender is 2;
						increase score by 25;
						increment carried of chips;
					else if fightoutcome >= 20 and fightoutcome <= 29:
						say "     After the raptor creature has had its fun with you, it runs a taloned paw over your face. 'You set me free, so I'll leave you with a gift instead of sating my hunger upon you,' it hisses, sinking its claws into your shoulders again and pulling you close to its snapping jaws, narrowly avoiding biting you. 'I look forward to seeing you again soon.' And with that it is off, running down the hall to freedom.";
						say "     Weak and worried that it may return if you linger, you head out before it can decide you'd make a good snack after all and come back to find you.";
						now UtahGender is 2;
						now wrcursestatus is 2;
						now wrcursestart is turns;
					else:
						say "     Not expecting a fight with a feral raptor creature, you decide to make your escape. The raptor gives chase, easily keeping pace with you until you get outside. Once it bursts out the door and runs down the steps, it laughs maniacally. 'Freedom! I shall let you go for now as reward for freeing me, but I shall have you in time,' it hisses as you continue to run away across the moonlit campus.";
						now UtahGender is 2;
				else:
					LineBreak;
					say "     Deciding not to risk letting out whatever creature may be lurking in there, you back away slowly and go looking elsewhere. As you move away, there is another plea for help, followed by growling and clawing at the door. 'Let me out or I'll find you. I will find you and come for you in the night, prey. And I will GUT you!' it hisses angrily, scratching wildly at the sturdy wooden door. The tirade descends into nothing but growls and hisses as whatever is inside vents its rage. Fearing that it may actually get out and find you, you flee quickly.";
					now UtahGender is 2;
	now Paleontology Professor is resolved;


to raptorrelease:
	[puts Wereraptor as lead monster]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if name entry is "Wereraptor":
			now monster is y;
			now area entry is "Campus";
			break;
	if wrcursestatus is 0, now wrcursestatus is 1;


Section 1 - Monster Responses

wrmode is a number that varies.
wrcursestatus is a number that varies.
wrcursestart is a number that varies. wrcursestart is usually 10000.
wrcurseactivity is a truth state that varies. wrcurseactivity is normally false.

when play begins:
	add { "Wereraptor" } to infections of furry;
	add { "Wereraptor" } to infections of Tailweapon;
	add { "Wereraptor" } to infections of Reptilelist;

to say wereraptordesc:
	choose row monster from the Table of Random Critters;
	let debit be 0;
	now dex entry is 19;
	now HP entry is 45;
	now lev entry is 8;
	if lev entry < level of player and hardmode is true:
		now debit is ( level of player ) - 8;
		increase lev entry by debit;
		increase dex entry by debit / 5;
		increase HP entry by debit * 3;
		increase wdam entry by ( debit / 3 );
	now wrmode is a random number between 1 and 2;
	if guy is banned and girl is banned:		[if both types are banned, the fight is aborted and removed from critter table]
		say "     You spot a raptor-like creature looking at you from the distance. It stares at you long with its amber eyes, twitches its claws. 'Clever girl,' it hisses before turning away, leaving you be.";
		say "(Currently requires at least one of Guy or Girl content to be available.)[line break]";
		now BannedStatus entry is true;
		now fightoutcome is 19;
		now combat abort is 1;
		now wrmode is 0;
	else if wrcursestatus is 0 and UtahGender is 2:
		now wrmode is 1;
	else if wrcurseNermine is 9 and UtahGender is 2:
		now wrmode is 1;
		increase dex entry by 1;
		increase lev entry by 1;
		increase HP entry by lev entry;
		now monsterHP is HP entry;
	else if UtahGender is 2:
		now wrmode is 1;
	else if UtahGender is 1:
		now wrmode is 2;
	else if guy is warded and girl is warded:
		now wrmode is a random number between 1 and 2;
	else if ishunting is true:	[hunting results in 2/3rds chance to get unwarded option]
		if guy is warded and a random chance of 1 in 3 succeeds:
			now wrmode is 1;
		else if girl is warded and a random chance of 1 in 3 succeeds:
			now wrmode is 2;
	else if ishunting is false:
		if guy is warded:
			now wrmode is 1;
		else if girl is warded:
			now wrmode is 2;
	say "     You find yourself faced with a lizard-human hybrid which you quickly realize is some kind of velociraptor creature. Its torso and arms are much like that of a human, but with the muscled legs, tail and head of a velociraptor";
	if wrmode is 1:
		setmongender 4; [creature is female]
		say ". And a female one at that. Leaning over in a stance typical for raptors, her breasts can clearly be seen at her chest. While her hands have smaller claws on them, those on her feet seem quite large, especially the long sickle-like one. Both have only three digits on them. Her scales are a deep blue over most of her body, shifting almost to black over her head, back and the top of her tail. She stares at you with a feral wildness to her yellow eyes and takes a step forward. She hisses at you before charging forward in a rush.";
	else:
		setmongender 3; [creature is male]
		say ". And a male one at that. Leaning over in a stance typical for raptors, his dripping maleness can clearly be seen between his muscular legs. While his hands have smaller claws on them, those on his feet seem quite large, especially the long sickle-like one. His scales are a deep blue over most of his body, shifting to a dark green across his head, back and the top of his tail. He stares at you with a feral wildness to his yellow eyes and takes a step forward. He hisses at you before charging forward in a rush.";


to say losetowereraptor:
	if bodyname of player is "Wereraptor":
		if wrmode is 1:
			if player is male:
				say "     The other wereraptor, having defeated you, hisses and pounces onto you, knocking you to the ground beneath her. You are momentarily worried that she might maul you with those sharp claws of hers, but she instead releases a triumphant roar and grinds her hips down onto yours. Catching the scent of her lust, your excitement grows and your feral nature takes over. You grind your cock up against her, roaring as one as you penetrate her. She rides you rough and hard, her claws digging into you as she rides your stiff cock. The feel of your [cock of player] shaft sliding into her is just what your wereraptor body needs to satisfy its lustful desires. You nip and lick at one another while in the throes of wild, primitive lust until you cry out again, cumming hard to fill her womb with your saurian seed.";
			else:
				say "     The other wereraptor, having defeated you, hisses and pounces onto you, knocking you to the ground beneath her. You are momentarily worried that she might maul you with those sharp claws of hers, but she instead releases a triumphant roar and turns around, pressing her hindquarters, and more specifically her dripping snatch, into your face. With the scent of the lustful wereraptor right in front of you, your excitement grows and your feral nature takes over. You bury your nose between her legs and start licking wildly at her pussy, lapping up her heated juices and getting a roar of pleasure from her[if player is female]. You roar in return as she sets to licking at your juicy cunt in return[end if]. In the throes of her lust, her claws dig into you but you hardly notice, your wild and primitive lust driving you to lick until [if player is female]you both cum loudly with another hissing roar[else]she cums with another loud, hissing roar[end if].";
		else:
			if player is female and a random chance of 3 in 4 succeeds:
				say "     The other wereraptor, having defeated you, hisses and pounces onto you, knocking you to the ground beneath him. You are momentarily worried that he might maul you with those sharp claws of his, but he instead releases as triumphant road and grinds his hard cock against your rear. Catching the scent of his lust, your excitement grows and your feral nature takes over. You spread your legs and raise your tail, hissing your need for the strong male to mount you. Grabbing your shoulders with his clawed hands, he climbs atop you and drives his pulsing rod into you, making you both roar in pleasure. He pounds into you rough and hard, his claws digging into you as he thrusts into your juicy cunt like the primitive beast he is. He nips and licks along your neck, his hot breath sliding along your neck as he mates you. The feel of his saurian shaft sliding into you is just what your wereraptor body needs to satisfy its lustful desires. When your pleasures peak, he drives hard into you one last time and unleashes his hot seed, filling your womb with his saurian seed. You both roar loudly in ecstasy at the triumphant climax of the wild mating.[ovichance]";
			else if anallevel > 1 and a random chance of 2 in 3 succeeds and cunts of player is 0:
				say "     The other wereraptor, having defeated you, hisses and pounces onto you, knocking you to the ground beneath him. You are momentarily worried that he might maul you with those sharp claws of his, but he instead releases as triumphant road and grinds his hard cock against your rear. Catching the scent of his lust, your excitement grows and your feral nature takes over. You spread your legs and raise your tail, hissing as you submit to the stronger male's dominance. Grabbing your shoulders with his clawed hands, he climbs atop you and drives his pulsing rod into you, making you both roar in pleasure. He thrusts into you rough and hard, his claws digging into you as he pounds into you like the primitive beast he is. He nips and licks along your neck, his hot breath sliding along your neck as he fucks you in a display of feral dominance. When your pleasures peak, he drives hard into you one last time and unleashes his hot seed, filling your belly with his saurian seed. As he cums, he roars again, nipping firmly at your neck and grinding his pulsing shaft deep inside you[if player is male]. This added pressure against your prostate and the hot rush of his semen into you pushes you over the edge and you climax as well.[movichance]";
			else:
				say "     The other wereraptor, having defeated you, hisses and pounces onto you, knocking you to the ground beneath him. You are momentarily worried that he might maul you with those sharp claws of his, but he instead releases a triumphant roar and turns around, pressing his hindquarters, and more specifically his throbbing cock, into your face. With the scent of the lustful wereraptor right in front of you, your excitement grows and your feral nature takes over. You wrap your lips around his erection and start licking and sucking at it, loving the taste of the stronger male's virile penis. He roars in pleasure and starts thrusting into your mouth[if player is male], burying his face between your legs and licking at your stiff shaft in return[end if]. In the throes of his lust, his claws dig into you but you hardly notice, your wild and primitive lust driving you to lick and suck until [if player is not neuter]you both cum loudly with another hissing roar[else]he cums with another loud, hissing roar[end if] feeding you his rich seed.";
		decrease humanity of player by 2;
		decrease libido of player by 4;
	else if wrmode is 1:
		say "     Defeated by the wereraptor, the creature hisses triumphantly and grabs your head in her clawed hands, pressing your head between her legs. Feeling her sharp claws digging into your shoulders, you have no choice but to start licking at her wet pussy. The flavor is strong but exciting, quickly building your lust until you're eagerly lapping at her dripping slit for more of her hot juices. When she finally cums, she sinks her sharp claws into you and hisses loudly in pleasure. Now done with you, she shoves you aside roughly and sniffs the air. She flicks her tongue across her muzzle and rushes off after her new prey with a more mundane hunger to be sated. You feel relieved that this wild beast chose not to make a meal out of you instead.";
	else:
		say "     Defeated by the wereraptor, the creature hisses triumphantly and grabs your head in his clawed hands, pressing your head between his legs. Feeling the sharp claws digging into your shoulders, you have no choice but to start licking and eventually sucking at that reptilian cock. The flavor is strong but exciting, quickly building your lust until you're eagerly lapping along its length and working your mouth over it. When he finally cums, he sinks his sharp claws into you and hisses loudly in pleasure while pumping his hot load down your throat. Now done with you, he shoves you aside roughly and sniffs the air. He flicks his tongue across his muzzle and rushes off after his new prey with a more mundane hunger to be sated. You feel relieved that this wild beast chose not to make a meal out of you instead.";
	if wrcursestatus is 0 or wrcursestatus is 1:
		say "     The claw marks at your back sting with a burning heat. As the pain fades, you check back, finding the wounds already closed, but still scarred.";
		now wrcursestatus is 2;
		now wrcursestart is turns;


to say beatthewereraptor:
	if wrcurseNermine is 9:
		say "     You manage to defeat and drive off Dr. Utah, the first wereraptor.";
	else if bodyname of player is "Wereraptor" and player is not neuter:
		say "     As the wereraptor stumbles back, weak and beaten, your primitive urges drive you to pounce upon [if wrmode is 1]her[else]him[end if] instinctively. You bear [if wrmode is 1]her[else]him[end if] to the ground and pin them.";
		say "     [bold type]Shall you give into your primitive, lustful instincts and mate with your fallen foe?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			if wrmode is 1:
				if player is male:
					say "     With the female pinned beneath you, you grind your hips down onto hers, pressing your stiff cock against her rear. She hisses in lustful need and quickly moves into the mating stance with her tail raised and her legs wide. As you sink your [cock size desc of player] [cock of player] shaft into her, you both roar in pleasure and begin fucking like wild, primitive beasts. You grip her body tightly and sink your claws into her shoulders as you drive yourself into her again and again as your feral nature takes over. You ride her rough and hard, your pulsing shaft pounding into the sexy saurian's body in a primal need to breed her. The feel of her slick, juicy cunt around your cock is just what your wereraptor body needs to satisfy its lustful desires. You nip and lick at her neck as you fuck her until you both cry out again, cumming hard to fill her womb with your saurian seed.";
				else:
					say "     With the female pinned beneath you, you turn around and grind your hips down onto her face, pressing your wet pussy into her face. She starts licking it right away, drawing a hiss of pleasure from you. Not wanting to miss out on such a treat, you bury your own head between her muscled legs and dive your tongue into her snatch. This excites her further and drives her to lick you even more excitedly. You lap up each other's heated juices. You both finally roar in pleasure as your wild and primitive lusts drive you both to lick until you both have cum.";
			else:
				if player is herm and anallevel > 1:
					say "     Your dual-gendered nature has you at odds on how to satisfy your lusts. Shall you [link]ride (1)[as]1[end link] the male's cock, show your dominance and [link]mount him (2)[as]2[end link] or [link]blow one another (3)[as]3[end link]?";
					now calcnumber is 0;
					while calcnumber < 1 or calcnumber > 3:
						say "Choice? (1-3)>";
						get a number;
						if calcnumber < 1 or calcnumber > 3:
							say "Invalid choice. Type [link]1[end link] to get fucked, [link]2[end link] to fuck him and [link]3[end link] for a 69.";
					if calcnumber is 1:
						say "[wrvict1]";
					else if calcnumber is 2:
						say "[wrvict2]";
					else:
						say "[wrvict3]";
				else if player is herm:
					say "     Your dual-gendered nature has you at odds on how to satisfy your lusts. Shall you [link]ride (Y)[as]y[end link] the male's cock or [link]blow one another (N)[as]n[end link]?";
					if player consents:
						say "[wrvict1]";
					else:
						say "[wrvict3]";
				else if player is male and anallevel > 1:
					say "     As your loosen the reins on your wereraptor lusts, shall you show your dominance and [link]mount him (Y)[as]y[end link] or [link]blow one another (N)[as]n[end link]?";
					if player consents:
						say "[wrvict2]";
					else:
						say "[wrvict3]";
				else if player is male:
					say "[wrvict3]";
				else:
					say "[wrvict1]";
			decrease humanity of player by 2;
			decrease libido of player by 4;
		else:
			LineBreak;
			say "     It takes a bit of effort to rein in your primal urges, but you do so, giving the creature a final punch before pouncing away and leaving it to slink away into the night.";
	else:
		say "     You manage to defeat and drive off the strange, feral, half-human creature into the night.";


to say wrvict1:		[ride the male]
	say "     Keeping the male pinned down with your clawed hands, you grind your hips down onto his with a triumphant roar. You rub down onto his hard shaft and push yourself down onto it, roaring together as he penetrates you. You ride him rough and hard, your claws digging into his shoulders as you enjoy your fallen prey's saurian shaft inside you. You feel of it pushing into you each time you press yourself down is just what your wereraptor body needs to satisfy its lustful desires. You nip and lick at one another while in the throes of wild, primitive lust until you cry out again, cumming hard as his saurian seed fills your womb.";

to say wrvict2:		[fuck the male]
	say "     With the other wereraptor pinned beneath you, you grind your hard cock against his rear with a triumphant roar. Having defeated him and proven yourself the stronger of the two males, he is forced to spread his legs and raise his tail like a female, submitting to your dominance. Grabbing his shoulders with your clawed hands, you climb atop him and drive your pulsing rod into him, making you both roar in pleasure. You thrust into him rough and hard, your claws digging into him as you fuck him with a primitive, bestial lust. You nip and lick along his neck, panting heavily as you fuck him in this display of feral dominance. When your pleasures peak, you drive hard into him one last time and unleash your hot seed, filling his bowels with your virile seed as you grind your cock deep inside him. This sets your fallen prey off as well, having him spend his seed across the ground.";

to say wrvict3:		[69 w/male]
	if player is male:		[male/herm]
		say "     With the other wereraptor pinned beneath you, you turn around and grind your hips down onto his face. You roar triumphantly and press your stiff cock onto his muzzle while leaking your precum across it. He starts licking it right away, drawing a hiss of pleasure from you as he licks your aching rod[if player is female] and dripping cunt[end if]. With the arousing scent of his own saurian cock before you, your instincts soon have you sucking down on him in return. You thrust into his mouth, pounding your dribbling shaft into his muzzle, giving him a good taste of your virile cock. Your wild and primitive lust drive you to lick and suck one another until you both cum loudly with another hissing roar, feeding your hot seed to one another.";
	else:				[female]
		say "     With the other wereraptor pinned beneath you, you turn around and grind your hips down onto his face, pressing your wet pussy to his muzzle. He starts licking at it right away, drawing a hiss of pleasure from you. He gives a soft whine, clearly wanting to fuck your juicy hole, but you growl with dominance and grind your pussy down all the harder. He does focus better once you plunge his pulsing erection into your own mouth and start licking and sucking upon it. This excites her further and drives her to lick you even more excitedly. Your wild and primitive lust drive you to lick and suck one another until you both cum loudly with another hissing roar as you swallow down his hot load and your primal juices soak his muzzle.";


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Wereraptor"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The wereraptor growls and claws at you with [if wrmode is 2]his[else]her[end if] taloned hands![or]The enraged creature gives you a vicious slash with [if wrmode is 2]his[else]her[end if] foot claws![or]The saurian creature slams [if wrmode is 2]his[else]her[end if] long, thick tail into you, knocking you sideways![or]The wereraptor snaps at you with [if wrmode is 2]his[else]her[end if] saurian jaws![at random]";
	now defeated entry is "[beatthewereraptor]"; [ Text when monster loses. ]
	now victory entry is "[losetowereraptor]"; [ Text when monster wins. ]
	now desc entry is "[wereraptordesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "[if wrcurseactivity is true]animalistic head of a raptor with piercing yellow eyes and[else]a humanoid face with saurian features. It has yellow eyes and is[end if] covered in [if player is herm]dark crimson[else if player is female]black[else if player is male]green[else]pale gray[end if] scales";
	now body entry is "[if wrcurseactivity is true]shaped like some kind of human-velociraptor hybrid. You are hunched over, balancing on your powerful hind legs. Your arms have a strong tendency to fold up against your chest when not in use or when you are running, charging like a velociraptor in those movies you used to watch. Your hands and feet now only possess three digits each[else]roughly human in shape, but with taloned hands and feet. Aside from a tendency to fold your arms up against your chest, you carry yourself mostly like any other person[end if]";
	now skin entry is "deep blue and [if player is herm]dark crimson[else if player is female]black[else if player is male]green[else]pale gray[end if] scales";
	now tail entry is "Growing out from the base of your spine, you have a long, thick tail like that of a lizard or a dinosaur.";
	now cock entry is "[one of]slender[or]reptilian[or]saurian[or]tapered[purely at random]";
	now face change entry is "your head reshapes itself as wild, feral thoughts push to overpower your sentient mind. Soon your head has changed, becoming that of a velociraptor";
	now body change entry is "your center of mass shifts, forcing you to lean forwards with your increasingly powerful legs to support you. Your torso and arms are distorted versions of a human's, made to be part of your increasingly reptilian body. Sharp, black talons grow from your feet and smaller claws form on your hands as your digits fuse and reshape themselves to only leave you with three on each";
	now skin change entry is "scales spread across your skin, deep blue across your limbs and the front of your torso and [if player is herm]dark crimson[else if player is female]black[else if player is male]green[else]pale gray[end if] over your head and back";
	now ass change entry is "you gain a long lizard-like tail";
	now cock change entry is "it becomes smooth and tapering to a point";
	now str entry is 13; [ These are now the creature's stats... ]
	now dex entry is 19; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 14;
	now cha entry is 8;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 45; [ The monster's starting HP. ]
	now lev entry is 8; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 14; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 5; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 5; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]animalistic[purely at random]";
	now type entry is "[one of]wereraptor[or]raptor[or]saurian[or]reptilian[purely at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now DayCycle entry is 2; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]


Section 3 - The Curse

wrbodyname is a text that varies.
wrbody is a text that varies.
wrscalevalue is a number that varies.
wrbodydesc is a text that varies.
wrbodytype is a text that varies.
wrdaycycle is a number that varies.
wrfacename is a text that varies.
wrface is a text that varies.
wrskinname is a text that varies.
wrskin is a text that varies.
wrtailname is a text that varies.
wrtail is a text that varies.
wrcockname is a text that varies.
wrcock is a text that varies.
wrcurseholdback is a number that varies.


an everyturn rule:
	if wrcursestatus > 0 and wrcursestatus < 100 and skipturnblocker is 0:
		follow the wereraptor curse rule;

this is the wereraptor curse rule:
	if skipturnblocker is 0:
		if wrcursestatus > 0 and wrcursestatus < 100:
			if ( ( jackalmantf > 0 or jackalboytf > 0 ) and wrcursestatus < 7 ) or nightmaretf > 0 or HellHoundlevel > 0:	[eliminates curse]
				if wrcursestatus >= 3:
					say "     You can feel your mystical transformation fighting off the wereraptor curse you are under. Your body writhes in pain and you hiss angrily as your eyes flash yellow and turn slitted before returning to normal. The scars at your shoulders heal, the curse purged by the greater power that now has a hold of you - for better or for ill.";
					now HP of player is HP of player / 2;
					if wrcursestatus is 5:
						wrcurserecede;
				else if wrcursestatus is 2:
					say "     You can feel your mystical transformation fighting off something lingering inside you. Your body writhes in pain and you hiss angrily as your eyes flash yellow and turn slitted before returning to normal. The scars at your shoulders heal, whatever lingering affect they had purged by the greater power that now has a hold of you - for better or for ill.";
					now HP of player is ( 2 * HP of player ) / 3;
				now wrcursestatus is 100;
				now Greenhouse is resolved;
				now Getting the Knife is resolved;
				now Dinosaur Skeleton is resolved;
		if wrcursestatus is 2:
			if daytimer is night:
				if wrcursestart - turns >= 12:
					increase hunger of player by 10;
					increase libido of player by 20;
					if libido of player > 100, now libido of player is 100;
					decrease humanity of player by 10;
					wrcursesave;
					now wrcursestatus is 5;
					now wrcurseholdback is 0;
				else if a random chance of 1 in 3 succeeds:
					say "     You feel a dull throb coming from the raptor scars on your shoulders which have yet to fully heal.";
		else if wrcursestatus is 3:
			if daytimer is night:
				say "     With the coming of the night, you can feel that lurking beast within you clawing at your mind for release. It tries to push forth and unleash itself upon the city.";
				say "     [bold type]Shall you accept its arrival or try to hold it back?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Accept its arrival.";
				say "     ([link]N[as]n[end link]) - Resist.";
				if player consents:
					LineBreak;
					say "     Welcoming the power of your lycanthropic form, you stop resisting it and let it burst free.";
					increase hunger of player by 10;
					increase libido of player by 20;
					if libido of player > 100, now libido of player is 100;
					decrease humanity of player by 6;
					wrcursesave;
					now wrcursestatus is 5;
					now wrcurseholdback is 0;
				else:
					LineBreak;
					let resistance be ( 120 + humanity of player ) - ( libido of player + ( hunger of player * 2 ) + ( wrcurseholdback * 10 ) );
					if a random number between 1 and 200 >= resistance:
						say "     You are unable to hold back your lycanthropic changes and cry out as the prehistoric beast within is unleashed. Having broken through your mind's resistance, you feel more of your humanity slipping away.";
						increase hunger of player by 10;
						increase libido of player by 20;
						if libido of player > 100, now libido of player is 100;
						decrease humanity of player by 6 + wrcurseholdback;
						wrcursesave;
						now wrcursestatus is 5;
						now wrcurseholdback is 0;
					else:
						say "     You are able to rein in the prehistoric beast within you and hold it back... for tonight. But you can feel it there and you know it will be even harder to restrain it next time.";
						now wrcursestatus is 4;
						increment wrcurseholdback;
		else if wrcursestatus is 4:
			if daytimer is day:
				say "     With the coming of the day, you can feel the prehistoric beast sinking back into some dark corner of your mind.";
				now wrcursestatus is 3;
		if wrcursestatus is 5:		[active curse]
			if daytimer is night:
				wrcursesave; [cursed restoration]
				let resistance be ( 120 + ( humanity of player ) - ( libido of player ) );
				if a random chance of hunger of player in resistance succeeds:
					wrcurserampage; [curse rampage activates]
			else:
				say "     With the coming of the day, your saurian body spasms and twitches. The beast unleashed hissed and snarls, but those dark, instinctual impulses are pushed back into a dark corner of your mind. But you know it is not gone, but merely slumbering, awaiting the coming of the night to seek its wild freedom again. But for the moment, at least, you know peace[if wrcurseNermine is 0 and a random chance of 2 in 3 succeeds]. Perhaps you should take this opportunity to find someone knowledgeable about [one of]such strange matters[or]mysterious and mystical matters[or]the occult[at random] for help[end if].";
				decrease libido of player by 10;
				if libido of player < 0, now libido of player is 0;
				wrcurserecede;
				now wrcursestatus is 3;
		if wrcursestatus is 7:
			if daytimer is night:
				if wrcurseactivity is false:
					now wrcurseactivity is true;
					increase dexterity of player by 2;
					increase strength of player by 2;
					decrease charisma of player by 2;
					decrease intelligence of player by 2;
					say "     The power of your saurian transformation rushes through you again, growing back to full strength with the coming of the night. You feel a rush of hunger and arousal surging through your system as the lust to feed and fuck fills you again";
					wrcurserestore;
					say ".";
				else if bodyname of player is not "Wereraptor" or player is not pure:
					say "     The power of your saurian transformation rushes through you again, pushing to restore your reptilian form. You feel a rush of hunger and arousal surging through your system as the lust to feed and fuck fills you again";
					wrcurserestore;
					say ".";
			else:
				if wrcurseactivity is true:
					now wrcurseactivity is false;
					decrease dexterity of player by 2;
					decrease strength of player by 2;
					increase charisma of player by 2;
					increase intelligence of player by 2;
					say "     With the coming of the day, your saurian body spasms and twitches. The feral strength of your wereraptor form recedes for now as your features soften and you take on a form more akin to a reptilian humanoid, hiding your wilder true nature for the moment.";


to wrcursesave:
	[puts Wereraptor as lead monster]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if name entry is "Wereraptor":
			now monster is y;
			break;
	if wrcursestatus is 2 or wrcursestatus is 3:
		if wrcursestatus is 2:
			say "     Feeling a surge of pain from the wounds in your shoulders that makes you feel dizzy and ill, you stumble outside to get some fresh air. There, out in the moonlight, you feel a rush of power surging through you and your eyes turn yellow and slitted. You stagger and fall, writhing on the ground as a rush of transformation unlike anything you've felt before surges through you. As you stare up the moon and the instinctual urges threaten to overtake you, you realize this is no normal infection, but a strange lycanthropy. You are becoming a wereraptor.";
			say "     As your new lycanthropic changes begin, your current form is suppresed for your wild, nocturnal form";
		else if wrcursestatus is 3:
			say "     Unable to hold them back, there comes the familiar surge of pain from your raptor wounds. You feel yourself changing with the coming of the night. Your body changes, transforming into a lycanthropic raptor once more";
		wrskinsave;
		wrfacesave;
		wrbodysave;
		wrtailsave;
		wrcocksave;
		say ".";
		[must be kept here to ensure proper saving]
		say "     With the changes comes a surge of power to your body, increasing your strength and agility. But you can feel your mind being weakened as well, your instinctual urges pushing back more rational thought and behavior. You are filled with hunger from your body's transformation and your wereraptor's body desire to feed. Along with the hunger for food comes a hunger for sex, your lustful urges growing stronger as well.";
		increase dexterity of player by 2;
		increase strength of player by 2;
		decrease charisma of player by 2;
		decrease intelligence of player by 2;
	else if bodyname of player is not "Wereraptor" or player is not pure:
		say "     The power of your cursed transformation rushes through you again, pushing to restore your reptilian form. You feel a rush of hunger and arousal surging through your system as the lust to feed and fuck fills you again";
		wrcurserestore;
		say ".";


to wrcurserestore:
	[puts Wereraptor as lead monster]
	choose row monster from Table of Random Critters;
	if name entry is not "Wereraptor":
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if name entry is "Wereraptor":
				now monster is y;
				break;
	if skinname of player is not "Wereraptor":
		wrskinsave;
		increase hunger of player by 1;
		increase libido of player by 1;
	if facename of player is not "Wereraptor":
		wrfacesave;
		increase hunger of player by 1;
		increase libido of player by 3;
	if bodyname of player is not "Wereraptor":
		wrbodysave;
		increase hunger of player by 2;
		increase libido of player by 3;
	if tailname of player is not "Wereraptor":
		wrtailsave;
		increase hunger of player by 1;
		increase libido of player by 1;
	if cockname of player is not "Wereraptor":
		wrcocksave;
		increase hunger of player by 1;
		increase libido of player by 8;


to wrbodysave:
	choose row monster from the Table of Random Critters;
	now wrbodyname is bodyname of player;
	now wrbody is body of player;
	now wrscalevalue is scalevalue of player;
	now wrbodydesc is bodydesc of player;
	now wrbodytype is bodytype of player;
	now wrdaycycle is SleepRhythm of player;
	now bodyname of player is "Wereraptor";
	now body of player is body entry;
	attributeinfect;
	say ". Your body contorts painfully as [body change entry]";

to wrfacesave:
	choose row monster from the Table of Random Critters;
	now wrfacename is facename of player;
	now wrface is face of player;
	now facename of player is "Wereraptor";
	now face of player is face entry;
	say ". Your face cracks and pops as [face change entry]";

to wrskinsave:
	choose row monster from the Table of Random Critters;
	now wrskinname is skinname of player;
	now wrskin is skin of player;
	now skinname of player is "Wereraptor";
	now skin of player is skin entry;
	say ". Your skin feels tight and raw as [skin change entry]";

to wrtailsave:
	choose row monster from the Table of Random Critters;
	now wrtailname is tailname of player;
	now wrtail is tail of player;
	now tailname of player is "Wereraptor";
	now tail of player is tail entry;
	say ". Your hindquarters stiffens with a harsh pop as [ass change entry]";

to wrcocksave:
	choose row monster from the Table of Random Critters;
	now wrcockname is cockname of player;
	now wrcock is cock of player;
	now cockname of player is "Wereraptor";
	now cock of player is cock entry;
	if player is male:
		say ". Your groin feels a surge of wild power as [cock change entry]";
	else:
		say ". You feel a rush of hot excitement from your loins";

to wrcurserecede:
	if bodyname of player is "Wereraptor":
		now bodyname of player is wrbodyname;
		now body of player is wrbody;
		now scalevalue of player is wrscalevalue;
		now bodydesc of player is wrbodydesc;
		now bodytype of player is wrbodytype;
		now SleepRhythm of player is wrdaycycle;
	if facename of player is "Wereraptor":
		now facename of player is wrfacename;
		now face of player is wrface;
	if skinname of player is "Wereraptor":
		now skinname of player is wrskinname;
		now skin of player is wrskin;
	if tailname of player is "Wereraptor":
		now tailname of player is wrtailname;
		now tail of player is wrtail;
	if cockname of player is "Wereraptor":
		now cockname of player is wrcockname;
		now cock of player is wrcock;
	decrease dexterity of player by 2;
	decrease strength of player by 2;
	increase charisma of player by 2;
	increase intelligence of player by 2;


to wrcurserampage:
	if there is a dangerous door in the location of the player or the location of player is fasttravel:
		say "     You can feel the primitive, feral instincts of your wereraptor body trying to erode your conscious thought as its lust and hunger rise. You catch the scent of prey in the air and your limited control snaps. You head out into the city as nothing more than a wild beast seeking to slake its hunger and lust upon its prey.";
		now skipturnblocker is 1; [player effectively unconscious, delays/skips end of turn messages]
		decrease humanity of player by 6;
		now wrcursestatus is 6;
		while daytimer is night and humanity of player > 0:
			decrease humanity of player by 2;
			if a random chance of 1 in 3 succeeds:
				say "You have a brief, hazy image of [one of]wild, savage sex[or]animalistic lusts[or]sinking your claws into something as you sate your lusts[purely at random].";
				weakrandominfect;
			else if a random chance of 1 in 3 succeeds:
				say "You have a brief, hazy image of [one of]eating something raw and bloody[or]tearing wildly into some meat[or]the taste of blood as it runs down your muzzle[or]clawing and slashing at something[purely at random].";
			follow the turnpass rule;
			if bodyname of player is not "Wereraptor" or player is not pure:
				say "     During the night, your curse overpowers your body and returns it to your wereraptor form";
				wrcurserestore;
		if humanity of player > 0:
			now skipturnblocker is 0; [player returned to consciousness, messages resume]
			say "     You finally pass out somewhere at dawn. You awaken a few hours later covered in blood and with little memory of your wild rampage. You can only recall vague images of your beastly form fighting, eating and fucking throughout the night, but no specifics. Realizing you no longer feel hungry and can taste the coppery tang of blood in your mouth, you are momentarily ill before your nanites settle your stomach. Worn and aching, you rise and stumble your way back to the last place you recall being, trying your best not to think of what you may have done last night.";
			decrease libido of player by 20;
			if libido of player < 0, now libido of player is 0;
			now hunger of player is 0;
			decrease morale of player by 5;
			wrcurserecede;
			now wrcursestatus is 3;
			now HP of player is ( HP of player + HP of player + maxHP of player ) / 4;
		else if humanity of player <= 0:
			end the story saying "Your wild rampage consumes you and you become nothing more than a wild creature that becomes a dangerous, bloodthirsty and lust-crazed beast each night.";
	else:		[confined, manage to hold on]
		say "     You can feel the primitive, feral instincts of your wereraptor body trying to erode your conscious thought as its lust and hunger try to take over. Thankfully, you are able to confine yourself indoors out of the moonlight. You are wilder and more feral for a time, but manage to get a grip on yourself. It takes its toll, but you remain in control for now.";
		decrease humanity of player by 4;
		increase libido of player by 2;


Section 4 - Cure Events

Part 1 - Greenhouse and Wolfsbane

Greenhouse is a situation. The level of Greenhouse is 7. Greenhouse is inactive.
The sarea of Greenhouse is "Campus".

grhouse is a truth state that varies. grhouse is usually false.

Instead of resolving Greenhouse:
	if grhouse is false:
		say "     Remembering Nermine's instructions, you keep your eyes open as you travel around the campus. Not recalling having seen one there before and unable to find out anywhere, you're about to give up when you swing back around towards the biology building again for another pass. And that's when you spot it as you come around the edge of the chemistry building. Linking it to the biology building, there is a connecting hallway and the topmost level of that passage is a greenhouse.";
	else:
		say "     Hoping to gain entrance to the greenhouse this time, you slip into the chemistry building. Moving carefully, you make your way up the stairs to the third floor and the pathway connecting it and the biology building.";
	if daytimer is day:
		say "     On the lookout for other creatures, you head into the chemistry building and make your way carefully up stairs to the third floor. Finding the door to the greenhouse unlocked, you slip inside and start looking over the plants. You locate the monkshood tucked away behind a few other plants. In your eagerness, you end up knocking over one of the other pots, breaking it with a large shattering of pottery that seems very loud in the otherwise quiet greenhouse.";
		WaitLineBreak;
		say "     Hearing footsteps approach, you clutch your find close and [if weapon object of player is not journal]ready your weapon with the other hand[else]take up a fighting stance with the other fist raised[end if]. You are surprised to see an unchanged human appear, coming towards you quickly.";
		if utahmet is false:
			if UtahGender is 1:
				say "     'Stop,' the person wheezes as he tries to catch his breath after his frantic run into the greenhouse from the opposite end of the passageway. 'I... uhh... That aconitum is college property. You can't take it. Drop it and get out of here.' Dressed in torn clothes and looking a little ragged around the edges, he still seems fully human. He looks to be about in his late twenties, has dark hair and an average build. He would probably look pretty handsome if his suit weren't all torn and the scruff on his face were shaved.";
				WaitLineBreak;
				say "     Remaining at the ready, you ask him who he thinks he is to order you around like that. '[bold type]I[roman type] am Dr. Utah and [bold type]I[roman type] am a professor here. And [bold type]that[roman type] is college property. Now put the wolfsbane down and get out of here before you attract some unwanted trouble. I'm willing to be a little tolerant with you given the circumstances, but it won't last long.'";
				say "     He tries to sound intimidating, but is clearly nervous and keeps several yards away from you. Figuring he's scared of a battle-hardened survivalist such as yourself, you [if weapon object of player is not journal]wave your [weapon object of player] in his direction[else]shake your fist menacingly at him[end if]. You growl that the college has already gone to hell and that you need this monkswood, wolfsbane or whatever it's called. You then slam the pot to the ground, shattering it beside the other one. You grab several of the plants by their stalks, shake the dirt from their roots and leave, leaving the professor to cautiously advance once you move to leave.";
			else:
				say "     'Stop,' the person wheezes as she tries to catch her breath after her frantic run into the greenhouse from the opposite direction you'd entered. 'I... uhh... That aconitum is college property. You can't take it. Drop it and get out of here.' Dressed in torn clothes and looking a little ragged around the edges, she still seems fully human. She looks to be about in her late twenties, has dark hair and an average build. She would probably look rather pretty if her blouse and dress weren't all torn and her hair weren't in such a mess.";
				WaitLineBreak;
				say "     Remaining at the ready, you ask her who she thinks she is to order you around like that. '[bold type]I[roman type] am Dr. Utah and [bold type]I[roman type] am a professor here. And [bold type]that[roman type] is college property. Now put the wolfsbane down and get out of here before you attract some unwanted trouble. I'm willing to be a little tolerant with you given the circumstances, but it won't last long.'";
				say "     She tries to sound intimidating, but is clearly nervous and keeps several yards away from you. Figuring she's scared of a battle-hardened survivalist such as yourself, you [if weapon object of player is not journal]wave your [weapon object of player] in her direction[else]shake your fist menacingly at her[end if]. You growl that the college has already gone to hell and that you need this monkswood, wolfsbane or whatever it's called. You then slam the pot to the ground, shattering it beside the other one. You grab several of the plants by their stalks, shake the dirt from their roots and rush off, leaving the professor to cautiously advance once you move to escape.";
		else:
			if UtahGender is 1:
				say "     'Stop,' the person wheezes as he tries to catch his breath after his frantic run into the greenhouse from the opposite end of the passageway. 'I... ohh... wait, it's you. What are you doing here? And what do you want with that? That aconitum is college property. You can't take it.' Dressed in torn clothes and still looking a little ragged around the edges, Dr. Utah has at least managed to remain human since you've freed him. Seeing him again, you take a moment to look him over. He looks to be about in his late twenties, has dark hair and an average build. He would probably look pretty handsome if his suit weren't all torn and the scruff on his face were shaved.";
				WaitLineBreak;
				say "     Relaxing a little, you tell him that you just want the plant and that he should let you have it in return for freeing him. 'I appreciate your assistance and I've been very tolerant, but you can't take that plant. It's very toxic and is quite dangerous. Just put the wolfsbane down and get out of here before you attract some unwanted trouble. I'm willing to be a little tolerant with you given the circumstances, but it won't last long.'";
				say "     He tries to sound intimidating, but is clearly nervous and keeps several yards away from you. Figuring he's scared of a battle-hardened survivalist such as yourself, you [if weapon object of player is not journal]wave your [weapon object of player] in his direction[else]shake your fist menacingly at him[end if]. You growl that the college has already gone to hell and that you need this monkswood, wolfsbane or whatever it's called. You then slam the pot to the ground, shattering it beside the other one. You grab several of the plants by their stalks, shake the dirt from their roots and leave, leaving the professor to cautiously advance once you move to leave.";
			else:
				say "     'Stop,' the person wheezes as she tries to catch her breath after her frantic run into the greenhouse from the opposite end of the passageway. 'I... ohh... wait, it's you. What are you doing here? And what do you want with that? That aconitum is college property. You can't take it.' Dressed in torn clothes and still looking a little ragged around the edges, Dr. Utah has at least managed to remain human since you've freed her. Seeing her again, you take a moment to look her over. She looks to be about in his late twenties, has dark hair and an average build. She would probably look rather pretty if her blouse and dress weren't all torn and her hair weren't in such a mess.";
				WaitLineBreak;
				say "     Relaxing a little, you tell her that you just want the plant and that she should let you have it in return for freeing her. 'I appreciate your assistance and I've been very tolerant, but you can't take that plant. It's very toxic and is quite dangerous. Just put the wolfsbane down and get out of here before you attract some unwanted trouble. I'm willing to be a little tolerant with you given the circumstances, but it won't last long.'";
				say "     She tries to sound intimidating, but is clearly nervous and keeps several yards away from you. Figuring she's scared of a battle-hardened survivalist such as yourself, you [if weapon object of player is not journal]wave your [weapon object of player] in her direction[else]shake your fist menacingly at her[end if]. You growl that the college has already gone to hell and that you need this monkswood, wolfsbane or whatever it's called. You then slam the pot to the ground, shattering it beside the other one. You grab several of the plants by their stalks, shake the dirt from their roots and leave, leaving the professor to cautiously advance once you move to leave.";
		increase carried of wolfsbane by 1;
		now wrcurseNermine is 3;
		now Greenhouse is resolved;
		increase score by 20;
	else:
		say "     On the lookout for other creatures, you head into the chemistry building and make your way carefully up stairs to the third floor. Finding the door to the greenhouse locked, you look for a means to get inside, but the security door is quite heavy. A sign on the door states that the greenhouse path is locked after hours and instructs students to go through the ground floor hallway to reach the biology building. It looks like you'll have to come back at another time and hope that the door is open then.";
		if grhouse is false or a random chance of 2 in 5 succeeds:
			say "     On your way back to the stairwell, one of the wereraptor creature bursts from the stairwell door and skitters across the tiled floor on its clawed feet, turning to charge at you with an angry hiss. 'Leave here,' it says with a cold glare before charging in to attack you.";
			challenge "Wereraptor";
			say "     Once your confrontation with the wereraptor is concluded, you make your way out of the building, hoping not to run into any more trouble.";
		now grhouse is true;


Table of Game Objects (continued)
name	desc	weight	object
"wolfsbane"	"A bunch of roots from the monkshood."	1	wolfsbane

wolfsbane is a grab object.
it is part of the player.
It is not temporary.

instead of using wolfsbane:
	say "     You shouldn't mess with that stuff. Nermine needs it for your cure. Besides, isn't it poisonous? Hey... waitaminit.";

the scent of wolfsbane is "     The wolfsbane has a strong scent that makes you sick to your stomach.".


Part 2 - Getting the Knife

Getting the Knife is a situation. The level of Getting the Knife is 7. Getting the Knife is inactive.
The sarea of Getting the Knife is "Warehouse".

wrknifefight is a truth state that varies. wrknifefight is usually false.

Instead of resolving Getting the Knife:
	say "     Doing your best to circumvent the creatures roaming around here, you make your way to the address Nermine provided. It is a non-descript warehouse like so many others in this area. You start looking around, trying to find a way into the building, only to be interrupted by a growl behind you. Turning around, you find yourself faced with a large, burly wolverine in a security guard uniform.";
	now wrknifefight is true;
	challenge "Wolverine Guard";
	now wrknifefight is false;
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "[wrgetknife]";
	else:
		say "     Driven off by the lumbering monstrosity, you will have to try coming back another time if you want to try getting the knife.";


to say wrgetknife:
	say "     Checking around the building, you find a half-open window along one side of the warehouse. It is quite high up, but you thankfully there are some old crates you can stack to get up to it. After managing to get inside, you start looking around. Thankfully, there's not much being stored in here right now, so it doesn't take you very long to find the shipping crate with the silver knife in it.";
	say "     The knife seems a little unusual when compared to the other items you've seen around Nermine's store. The handle is rather plain and made of wood, with only a few swirls carved into it. The blade is about ten inches long and has a slight curve to it. The silver blade shows some tarnish, but appears to still have a keen edge to it. Uncertain why Nermine would care for such a thing when compared to the more ornate items in the lot, you shrug and put it away.";
	increase carried of silver knife by 1;
	let bonus be ( intelligence of player + perception of player - 20 ) divided by 2;
	let dice be a random number from 1 to 20;
	if bonus + dice > 18:
		say "     You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
		say "You are about to head out when you realize that you're about to walk away from this collection of antiquities without even checking out any of the others. Just because Nermine doesn't want any of them doesn't mean they can't be of use to you. You flip through the auction list. It appears the items come from an estate sale and while most of them are nothing of interest to you, one of the photos catches your eye. Finding the crate, you break into it and pull out the torso mannequin with a chainmail vest on it. Now that might come in handy, you muse as you head out, feeling a little closer to being rid of your cursed affliction.";
		increase score by 20;
		increase carried of chainmail vest by 1;
	else:
		say "     Having gotten what you came for, you make a hasty exit from the warehouse. You feel a little closer to being rid of your cursed affliction.";
	now wrcurseNermine is 6;
	increase score by 20;
	now Getting the Knife is resolved;


Table of Game Objects (continued)
name	desc	weight	object
"silver knife"	"An old silver knife with a ten inch blade and a slight curve to it. It seems particularly well weighted."	2	silver knife
"chainmail vest"	"A heavy chainmail vest that always seems to be a good fit thanks to nanite adjustment."	20	chainmail vest

silver knife is an armament. It is part of the player. It has a weapon "[one of]the silver knife[or]the old knife[or]the curved knife[or]the silver dagger[at random]". The weapon damage of silver knife is 6. The weapon type of silver knife is "Melee". It is not temporary. the objsize of silver knife is 2. the hitbonus of silver knife is 2.

the scent of the silver knife is "     While the silver knife has no strong scent, something about it makes you uneasy whenever you bring it close.".

chainmail vest is equipment. It is not temporary.
The AC of chainmail vest is 40.
The effectiveness of chainmail vest is 60.
The placement of chainmail vest is "body".
The descmod of chainmail vest is "You are wearing a chainmail vest that covers your torso and shoulders.".
The slot of chainmail vest is "body".

the scent of chainmail vest is "     There is little scent to the chainmail itself.".


Part 3 - Dinosaur Skeleton

Dinosaur Skeleton is a situation. The level of Dinosaur Skeleton is 9. Dinosaur Skeleton is inactive.
The sarea of Dinosaur Skeleton is "Museum".

wrdinoskel is a truth state that varies. wrdinoskel is usually false.

Instead of resolving Dinosaur Skeleton:
	if daytimer is day:
		say "     As you travel through the museum, you end up finding yourself in one of the upper sections of the Dinosaur exhibit. There are several small- to mid-sized skeletons on display there, including one of a raptor. You are momentarily excited at the prospect of being freed from your curse, but then recall that the ritual requires it be done at night. Given the amount of activity around here from the denizens of the museum, you decide against just sticking around until then and resolve to come back after nightfall.";
	else if silver knife is not owned:
		say "     As you travel through the museum, you end up finding yourself in one of the upper sections of the Dinosaur exhibit. There are several small- to mid-sized skeletons on display there, including one of a raptor. You approach the fossilized skeleton and prepare yourself to begin, but realize that you've forgotten the silver knife somewhere. You will need that to complete the ritual.";
	else:
		say "     As you travel through the museum, you end up finding yourself in one of the upper sections of the Dinosaur exhibit. There are several small- to mid-sized skeletons on display there, including one of a raptor. You approach the fossilized skeleton and prepare yourself to begin. Your stomach churns at the very thought of drinking down the repulsive fluid so you decide to keep the bottle closed until the last possible moment. Maybe if you open it and slam it back immediately, the revulsion won't have a chance to stop you.";
		say "     Taking a last, deep breath, you hear a clickety sound behind you. 'Stop!' a voice growls. 'Don't be fooled by weakness.' Holding steady, you turn around and find one of the wereraptors there behind you. It steps forward slowly, its claws clacking on the hard floor. 'I showed restraint when you freed me and chose to see that you were blessssed. But when you took the aconite, I knew you were up to something. I could not stop you then, but I will stop you now.'";
		WaitLineBreak;
		say "     Realization sinks in as the wereraptor speaks. 'Dr... Utah?' you utter, steadying yourself on the nearby display plaque. Events seem to fall into place as that missing piece of the puzzle is revealed. The creature before you is the young professor you met earlier and both were released when you broke into [if UtahGender is 1]his[else]her[end if] office.";
		if UtahGender is 2:
			say "     'Yessss. And I was once like you,' the wereraptor says as she continues. 'Weak and fearful. When the chaos began and my curse started to take hold, I barred myself inside my office. I nailed the door shut from the inside and threw the hammer out the window. I had meant to save others from the beast within me,' she says with a chuckle. 'But I came to realize that I was wrong and that this blessing is not to be feared. The creature it frees is myself. Free from my fears, my inhibitions, my petty concerns for others. It has made me powerful... as it has made you powerful. Do not throw it away and embrace it instead. Embrace it and let the beast free, as it has freed me.' Her voice grows louder and more maniacal as she stalks closer to you.";
			say "     'Rather than reject it and force the gift from your blood, accept my blood and the power of those bones and become stronger. The transformations which have affected the city have awakened this power and it can help it becomes greater. We shall resist the day and find power in the night,' she laughs. 'Come, join me and we shall spread our gift to those worthy of it and all others shall be our prey.'";
		else:
			say "     'Yessss. And I was once like you,' the wereraptor says as it continues. 'Weak and fearful. When the chaos began and my curse started to take hold, I barred myself inside my office. I nailed the door shut from the inside and threw the hammer out the window. I had meant to save others from the beast within me,' he says with a chuckle. 'But I came to realize that I was wrong and that this blessing is not to be feared. The creature it frees is myself. Free from my fears, my inhibitions, my petty concerns for others. It has made me powerful... as it has made you powerful. Do not throw it away and embrace it instead. Embrace it and let the beast free, as it has freed me.' His voice grows louder and more maniacal as he stalks closer to you.";
			say "     'Rather than reject it and force the gift from your blood, accept my blood and the power of those bones and become stronger. The transformations which have affected the city have awakened this power and it can help it becomes greater. We shall resist the day and find power in the night,' he laughs. 'Come, join me and we shall spread our gift to those worthy of it and all others shall be our prey.'";
		say "     [bold type]Do you go ahead with the cure or accept his offer?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Cure.";
		say "     ([link]N[as]n[end link]) - Accept his offer.";
		if player consents:
			LineBreak;
			say "[wrcureattempt]";
		else:
			LineBreak;
			say "[wrcurseaccept]";
		now Dinosaur Skeleton is resolved;


to say wrcureattempt:
	say "     Dr. Utah snarls at your rejection and clacks her claws together before charging.";
	now wrcurseNermine is 9;
	challenge "Wereraptor";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Having beaten the wereraptor, you pull open the potion and slam it back quickly while still on your adrenaline high. This gives you the added courage to go through with it, drinking down much of it before you have a chance to react to it. But once your body notices the repulsive taste, you start to retch and have to struggle to keep it down. Uncertain how much you need, but not wanting to take any chances, you drink down the rest of it, feeling it burn the whole way down and roiling like molten metal in your stomach.";
		say "     You stumble over to the fossil and outstretch your arm. You quickly grab the knife and jab it into your forearm, letting your blood flow out onto the dinosaur bones. The wound is extremely painful, sending chills through your body. Your blood hisses and steams, turning a sickly green as it comes out of you and runs down your arm. It turns to black upon landing on the bones. You fall to your knees, but keep at it, holding the silver blade until all the tainted green is gone and the silver no longer causes the chilling pain[if wrcursestatus is 5] and all traces of your wereraptor form have been expunged[end if].";
		WaitLineBreak;
		say "     You stagger to your feet, feeling very weak and worn from your blood loss, but also as if a great burden has been lifted from you. You watch as the last of your blood bubbles on the fossilized bones and disappears. You're uncertain if it boiled away or was absorbed into the dry bones, but it is gone. In short order, the slashes on your shoulders fade away, healed and gone as if they were never there. Having beaten its power, you know you cannot be tainted by it again.";
		say "     Not wanting to linger here any longer, you prepare to leave only to notice that the silver knife is missing. You suspect it's somehow already found its way back to Nermine.";
		if weapon object of player is silver knife, now weapon object of player is journal;
		now carried of silver knife is 0;
		if humanity of player < 100:
			increase humanity of player by 1;
			increase humanity of player by ( 100 - humanity of player ) / 2;
		now HP of player is HP of player / 2;
		increase morale of player by 5;
		if wrcursestatus is 5:
			wrcurserecede;
		now wrcurseNermine is 11;
		now wrcursestatus is 100;
		increase score by 100;
	else if fightoutcome >= 20 and fightoutcome <= 29:
		if UtahGender is 2:
			say "     The wereraptor growls victoriously and grabs the potion with visible trepidation before racing headlong to the balcony overlooking the lower floors. With a hissing laugh, she tosses the vial down as you scream. There is a distance crash as your precious cure is destroyed. Dr. Utah clacks back across the tiled floor and runs her taloned hand across your body. 'Soon you will come to accept your proper nature and forsake your foolish reluctance. It is time for the saurians to rise again, new and stronger.' She leans in closer and runs her tongue along your face. 'I look forward to hunting with you,' she adds with a grope between your legs before turning and leaving.";
		else:
			say "     The wereraptor growls victoriously and grabs the potion with visible trepidation before racing headlong to the balcony overlooking the lower floors. With a hissing laugh, he tosses the vial down as you scream. There is a distance crash as your precious cure is destroyed. Dr. Utah clacks back across the tiled floor and runs his taloned hand across your body. 'Soon you will come to accept your proper nature and forsake your foolish reluctance. It is time for the saurians to rise again, new and stronger.' He leans in closer and runs his tongue along your face. 'I look forward to hunting with you,' he adds with a grope between your legs before turning and leaving.";
		say "     Once you've recovered enough to stand, you prepare yourself to leave. You glance around and realize that your silver knife is gone. You suspect it's somehow already found its way back to Nermine. With your cure gone and your payment made, you get the feeling that you're on your own now.";
		if weapon object of player is silver knife, now weapon object of player is journal;
		now carried of silver knife is 0;
		now wrcurseNermine is 10;
	else:
		say "     As you turn and run, the speedy wereraptor makes a final charge and swipes her claws at you. This knocks the potion from your hand, sending it tumbling to the ground and breaking. With its scent in the air, your revulsion kicks in and you move quickly to get away, the transformed professor fleeing as well. When you stop and try to catch your breath now that you're far from the smell of it, you realize that your silver knife is missing as well. You suspect it's somehow already found its way back to Nermine. With your cure gone and your payment made, you get the feeling that you're on your own now.";
		if weapon object of player is silver knife, now weapon object of player is journal;
		now carried of silver knife is 0;
		now wrcurseNermine is 10;


to say wrcurseaccept:
	if UtahGender is 2:
		say "     Looking down at the bottle of poisonous aconite and the silver knife that makes your skin crawl just to look at it, you reject them. Your wereraptor body knows they are cursed and seek to kill you, not save you. You hurl the bottle fast and far, sending over the balcony to the floor far below. Dr. Utah gives a triumphant, hissing laugh and strides forward, running her taloned hands over your body.";
		say "     'Excellent! Let us begin so the wereraptors may rise again, new and greater than before.' Saying this, she digs her claws into her own arm, causing her blood to flow down her arm before holding it out to you. 'Come, accept my blood into you. Accept the power of these bones into you. Become the wereraptor!'";
		say "     With the scent of her blood and her arousal in the air, your excitement builds and you press your [if wrcursestatus is 4]mouth[else]muzzle[end if] to the wound, lapping up the flowing blood and feeling it seep into you. The wereraptor hisses as you drink, speaking too low for you to make out the words. The bones behind you rattle and you'd swear you hear the hiss of words from them as well. You open your body and mind up to the beast, the primitive, the raptor within you and it feels as if something is drawn into you as well as spreading throughout you. Dr. Utah moans as well and you sense somehow that she's undergoing a similar change [if wrcursestatus is 4]as your powerful wereraptor form restores itself, this time stronger than ever[else]though there is no visible difference on either of you[end if].";
		if bodyname of player is not "Wereraptor" or player is not pure:
			now wrcursestatus is 7;
			now wrcurseactivity is true;
			say "     As the power of the raptor infuses you, you change, returning to your true form";
			wrcurserestore;
		say "     When the process is done, she pushes your head back and you both stumble apart and fall to the ground. You feel weak and tired. But you know that will pass, for you are a wereraptor now and the blood in you is strong now. You rise and look yourself over and while you see no differences, you know the power within you has grown and it cannot be taken from you now by foolish concoctions or a wretched kn-. You stop and look around, but can find no trace of the silver knife, leading you to conclude that it has somehow made its way back to Nermine.";
		say "     Dr. Utah rises and snarls triumphantly, a cry that you return. 'There is much to do before our kind can spread and rule the wretched mammals. I shall return to my office and begin the preparations. There are others I have infected who show promise and may soon accept the gift as you have,' she hisses softly, licking your muzzle. 'Those who accept it shall rise as we have and those who don't shall fall,' she concludes, running her hands over your body before turning and charging away.";
		say "     As the rush of your acceptance of the curse starts to fade, you wonder about the choice you've made, but do not feel that it is a mistake. The wereraptor is a part of you now and its instincts are a part of your mind. Its hunger is yours, but you are now in control. There is no point in denying these desires for you have made them your own.";
		now Paleontology Office is known;
[		say "***raptor sex goes here?";]
	else:
		say "     Looking down at the bottle of poisonous aconite and the silver knife that makes your skin crawl just to look at it, you reject them. Your wereraptor body knows they are cursed and seek to kill you, not save you. You hurl the bottle fast and far, sending over the balcony to the floor far below. Dr. Utah gives a triumphant, hissing laugh and strides forward, running his taloned hands over your body.";
		say "     'Excellent! Let us begin so the raptors may rise again, new and greater than before.' Saying this, he digs his claws into his own arm, causing his blood to flow down his arm before holding it out to you. 'Come, accept my blood into you. Accept the power of these bones into you. Become the wereraptor!'";
		say "     With the scent of his blood and his arousal in the air, your excitement builds and you press your [if wrcursestatus is 4]mouth[else]muzzle[end if] to the wound, lapping up the flowing blood and feeling it seep into you. The wereraptor hisses as you drink, speaking too low for you to make out the words. The bones behind you rattle and you'd swear you hear the hiss of words from them as well. You open your body and mind up to the beast, the primitive, the raptor within you and it feels as if something is drawn into you as well as spreading throughout you. Dr. Utah moans as well and you sense somehow that he's undergoing a similar change [if wrcursestatus is 4]as your powerful wereraptor form restores itself, this time stronger than ever[else]though there is no visible difference on either of you[end if].";
		if bodyname of player is not "Wereraptor" or player is not pure:
			now wrcursestatus is 7;
			now wrcurseactivity is true;
			say "     As the power of the raptor infuses you, you change, returning to your true form";
			wrcurserestore;
		say "     When the process is done, he pushes your head back and you both stumble apart and fall to the ground. You feel weak and tired. But you know that will pass, for you are a wereraptor now and the blood in you is strong now. You rise and look yourself over and while you see no differences, you know the power within you has grown and it cannot be taken from you now by foolish concoctions or a wretched kn-. You stop and look around, but can find no trace of the silver knife, leading you to conclude that it has somehow made its way back to Nermine.";
		say "     Dr. Utah rises and snarls triumphantly, a cry that you return. 'There is much to do before our kind can spread and rule the wretched mammals. I shall return to my office and begin the preparations. There are others I have infected who show promise and may soon accept the gift as you have,' he hisses softly, licking your muzzle. 'Those who accept it shall rise as we have and those who don't shall fall,' he concludes, running his hands over your body before turning and charging away.";
		say "     As the rush of your acceptance of the curse starts to fade, you wonder about the choice you've made, but do not feel that it is a mistake. The wereraptor is a part of you now and its instincts are a part of your mind. Its hunger is yours, but you are now in control. There is no point in denying these desires for you have made them your own.";
		wrcurserestore;
		now Paleontology Office is known;
[		say "***raptor sex goes here?";]
	now wrcursestatus is 7;
	now wrcurseactivity is true;
	now wrcurseNermine is 12;




when play ends:
	if wrcursestatus is 2:
		if humanity of player < 10:
			say "     As your infection is taking hold and your old self is failing, there is another struggle going on inside you. You can feel something wild and primal briefly struggle for freedom, but it is too old and weak, and soon fades away with an angry hiss at being denied its return.";
	else if wrcursestatus >= 3 and wrcursestatus <= 6:
		if bodyname of player is "Wereraptor":
			if humanity of player < 10:
				say "     You succumb to the strange, saurian affliction, much of your mind becomes that of the primitive beast lurking inside you. You grow to live for the wild hunt for food and sex at night, mauling and cursing others. During the day, you revert back to whatever infection may be affecting you at the time, but the true you is only hiding behind it, waiting for nightfall to surprise your prey and strike.";
			else:
				say "     When rescue comes, you do your best to hide your saurian affliction. It is very difficult and takes a considerable toll on you as you fearfully hold it back each night, remaining in your daytime form. Thankfully, it does seem to understand the need to hide while you're at the military compound, though it doesn't like it. You hear the occasional mumble of anomalies with your testing, but nothing further seems to stem from it. In time, you are released and you make a new life for yourself. After the long stay at the facility, you have gained some ability to restrain your curse and it only rises during the full moon to strike. At these times, you don't hold it back, letting it run free. There are reports of monthly attacks by a lizard creature, but it is never caught as it cannot be tracked down after the hunt.";
		else:
			if humanity of player < 10:
				say "     As your infection takes hold, it forces out the ancient wereraptor curse. The curse, too old and weak, cannot maintain itself as the nanites fully take over your body and mind.";
			else:
				say "     When rescue comes, you do your best to hide your saurian affliction. It is very difficult and takes a considerable toll on you as you fearfully hold it back each night, remaining in your daytime form. Thankfully, it does seem to understand the need to hide while you're at the military compound, though it doesn't like it. You hear the occasional mumble of anomalies with your testing, but nothing further seems to stem from it. In time, you are released and you make a new life for yourself. After the long stay at the facility, you have gained some ability to restrain your curse and it only rises during the full moon to strike. At these times, you don't hold it back, letting it run free. There are reports of monthly attacks by a lizard creature, but it is never caught as it cannot be tracked down after the hunt.";
	else if wrcursestatus is 7:
		if bodyname of player is "Wereraptor":
			if humanity of player < 10:
				say "     As the last vestiges of your humanity are consumed by your wereraptor identity, you return to Dr. Utah and join [if UtahGender is 1]him[else]her[end if] in preparation for the rise of the new saurian people, remaining in the fallen city for a time. You, and others like yourselves, form into [']The Society of the Sickle[']. Training yourselves to gain partial control over your transformation, you are able to slip into society and hide yourselves among them, working in secret to infect others and add new members to your order. Seeming at first like other ferals, the spread of wereraptors goes largely unnoticed at first. But those who becomes wereraptors remain so, even if infected with other strains, keeping them among your ever-growing numbers.";
			else:
				say "     When you are taken to the military compound, you and Dr. Utah keep your more powerful night forms repressed with some effort. Your examination has you categorized both as an indeterminate lizard form. In time, you both are released and set up new lives together. Working in secret, you, and the others like yourselves you recruit, form into [']The Society of the Sickle[']. Training yourselves to gain partial control over your transformation, you are able to slip into society and hide yourselves among them, working in secret to infect others and add new members to your order.";
				if UtahGender is 2 and libido of Doctor Utah > 0:
					say "     When the eggs Dr. Utah left in the city hatch, they seems like other ferals and go largely unnoticed at first. But those who becomes wereraptors remain so, even if infected with other strains, keeping them among your ever-growing numbers. ";
				else:
					say "     Seeming at first like other ferals, the spread of wereraptors goes largely unnoticed at first. But those who becomes wereraptors remain so, even if infected with other strains, keeping them among your ever-growing numbers. ";
				say "     As the numbers of attacks from these 'night lizards' grow, you and Dr. Utah are pulled in as experts on prehistory and saurian creatures. But despite the many efforts and seemingly reasonable precautions you implement, the numbers continue to grow. With you both leading both sides, it is easy to ensure that your people rise in strength, pulling more people into your order and creating more sexy saurians to populate what will soon be your world.";
		else:
			if humanity of player < 10:
				say "     As your infection takes hold, it tries to force out the ancient wereraptor curse, but cannot do so entirely. You spend much of your existence unaware of your dual identity, but every full moon, the hidden monster from the id rises and you transform into the Wereraptor to stalk the night. Often at these times, you meet with Dr. Utah in [if UtahGender is 1]his[else]her[end if] impressive night form and enjoy a lustful hunt together, adding others to your numbers.";
			else:
				say "     When rescue comes, your increased control over your curse allows you to hide your saurian affliction. It is takes some effort, but you manage to stay as you are while you're at the military compound. You hear the occasional mumble of anomalies with your testing, but nothing further seems to stem from it. In time, you are released and you make a new life for yourself. After the long stay at the facility, you find that your current form has managed to set itself as your regular, daytime form, though you are able to transform at will at night into a beautiful and sexy wereraptor. This allows you to integrate yourself into society and make a place for yourself from which to secretly live out your nightlife when you feel the urge to hunt.";
				say "     With the help of Dr. Utah and the others who have joined you, you form into [']The Society of the Sickle[']. Training yourselves to gain partial control over your transformation, you are able to hide among society and work in secret to infect others, adding new members to your order.";
				if UtahGender is 2 and libido of Doctor Utah > 0:
					say "     When the eggs Dr. Utah left in the city hatch, they seems like other ferals and go largely unnoticed at first. But those who becomes wereraptors remain so, even if infected with other strains, keeping them among your ever-growing numbers. ";
				else:
					say "     Seeming at first like other ferals, the spread of wereraptors goes largely unnoticed at first. But those who becomes wereraptors remain so, even if infected with other strains, keeping them among your ever-growing numbers. ";
				say "     As the numbers of attacks from these 'night lizards' grow, you and Dr. Utah are pulled in as experts on prehistory and saurian creatures. But despite the many efforts and seemingly reasonable precautions you implement, the numbers continue to grow. With you both leading both sides, it is easy to ensure that your people rise in strength, pulling more people into your order and creating more sexy saurians to populate what will soon be your world.";

Wereraptor ends here.
