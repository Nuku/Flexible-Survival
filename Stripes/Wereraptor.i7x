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

Table of GameEventIDs (continued)
Object	Name
Paleontology Professor	"Paleontology Professor"

Paleontology Professor is a situation.
ResolveFunction of Paleontology Professor is "[ResolveEvent Paleontology Professor]". The level of Paleontology Professor is 7.
Sarea of Paleontology Professor is "Campus".

when play begins:
	add Paleontology Professor to BadSpots of FurryList;

utahmet is a truth state that varies. utahmet is usually false.

to say ResolveEvent Paleontology Professor:
	if MaleList is banned and FemaleList is banned:
		say "     You find your way into the biology building in the hopes of finding answers or at least supplies and happen across the door to a paleontology professor's office. On the door is a notice saying that the professor was transferred due to content restrictions. Odd.";
		say "(This content requires that at least one of Guy or Girl content be available in the game. - Mgmt)[line break]";
	else:
		if daytimer is day:
			say "     Looking for answers or at least some supplies, you enter the biology building on campus and have a quick look around rather than stay out in the open during the day. In one disused section of the building, you hear some noise coming from behind one of the office doors. Labeled as 'Dr. R. Utah - Paleontology', you briefly wonder how many students such a professor could even get at such a sports-centric college. You check the door and find it locked, but a voice responds to your presence. 'Is someone there?";
			say "     [bold type]While the voice is muffled, does it sound more like a man or a woman?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - It sounds like a man.";
			say "     ([link]N[as]n[end link]) - It sounds like a woman.";
			if Player consents:
				LineBreak;
				say "     Help! Can you help me get out? My name is Dr. Utah and I locked myself in here when the changes started, but I can't get out now. If you can still understand me, please help me,' he pleads.";
				say "     [bold type]Shall you free him?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if Player consents:
					LineBreak;
					say "     You try pushing at the heavy wooden door, but it seems quite stuck. You bash your body against it a few times, feeling it start to give. You keep at it, always worried that some creature will hear you and arrive, but manage to break down the door, cracking and snapping the wood away from the numerous nails pounded into the frame from the inside. You land in the arms of a middle-aged man.";
					say "     The office is a mess and his clothes are horribly torn, but he appears to be quite human. It seems he was lucky enough to make it to safety before anything could infect him. Their office also seems largely destroyed, with strange slashes on the walls and the door and most of the furniture overturned or completely broken. Among the wreckage, there's a shattered display case with a large bone lying among the shards. Noticing your gaze, he wrings his hands nervously.";
					say "     'I... it was so crazy. Out there, I mean. I nailed my door shut. When things calmed down later, I couldn't get out. I started to go stir crazy and threw around the furniture and beat at the walls trying to get someone to hear me. I'd almost completely given up hope by the time you came by. Thank you again for saving me. I don't know how much longer I would have been able to hold out. I had hoped someone would come to rescue us much sooner, but I'm guessing this is a much more widespread problem than just something on campus. I know none of my fellow professors here were working on anything even remotely like this... outbreak.'";
					say "     He rubs to scratch a scar on his side and starts moving outside the room. 'Look... as good as it is to talk to someone again, I really need to get out of this room after being cooped up in here. I'm sure we'll catch up again soon,' he adds with a grin before leaving.";
					say "     Now alone, you look over the room, but find little. Almost all the contents were destroyed or consumed, though you do find a stale bag of chips in the bottom of one drawer. Better than nothing and a little reward for being a good samaritan, you are left feeling a little better for having done the good deed.";
					now UtahGender is 1;
					now utahmet is true;
					increase score by 25;
					increase morale of Player by 2;
					increment carried of chips;
					raptorrelease;
					now Androginity of Doctor Utah is 2;
					now Cock Count of Doctor Utah is 1;
					now Cock Girth of Doctor Utah is 3;
					now Cock Length of Doctor Utah is 8;
					now Ball Count of Doctor Utah is 2;
					now Ball Size of Doctor Utah is 3;
				else:
					LineBreak;
					say "     Deciding not to risk letting out whatever creature may be lurking in there, you back away slowly and go looking elsewhere. There is some pleading and cursing, but you continue to go, feeling a little bad about your decision.";
					decrease morale of Player by 2;
			else:
				LineBreak;
				say "     Help! Can you help me get out? My name is Dr. Utah and I locked myself in here when the changes started, but I can't get out now. If you can still understand me, please help me,' she pleads.";
				say "     [bold type]Shall you free her?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if Player consents:
					LineBreak;
					say "     You try pushing at the heavy wooden door, but it seems quite stuck. You bash your body against it a few times, feeling it start to give. You keep at it, always worried that some creature will hear you and arrive, but manage to break down the door, cracking and snapping the wood away from the numerous nails pounded into the frame from the inside. You land in the arms of a middle-aged woman.";
					say "     The office is a mess and her clothes are horribly torn, but she appears quite human. It seems she was lucky enough to make it to safety before anything could infect her. Their office also seems largely destroyed, with strange slashes on the walls and the door and most of the furniture overturned or completely broken. Among the wreckage, there's a shattered display case with a large bone lying among the shards. Noticing your gaze, she wrings her hands nervously.";
					say "     'I... it was so crazy. Out there, I mean. I nailed my door shut. When things calmed down later, I couldn't get out. I started to go stir crazy and threw around the furniture and beat at the walls trying to get someone to hear me. I'd almost completely given up hope by the time you came by. Thank you again for saving me. I don't know how much longer I would have been able to hold out. I had hoped someone would come to rescue us much sooner, but I'm guessing this is a much more widespread problem than just something on campus. I know none of my fellow professors here were working on anything even remotely like this... outbreak.'";
					say "     She rubs a scar on her side and starts moving outside the room. 'Look... as good as it is to talk to someone again, I really need to get out of this room after being cooped up in here. I'm sure we'll catch up again soon,' she adds with a grin before leaving.";
					say "     Now alone, you look over the room, but find little. Almost all the contents were destroyed or consumed, though you do find a stale bag of chips in the bottom of one drawer. Better than nothing and a little reward for being a good samaritan, you are left feeling a little better for having done the good deed.";
					now UtahGender is 2;
					now utahmet is true;
					increase score by 25;
					increase morale of Player by 2;
					increment carried of chips;
					raptorrelease;
					now Androginity of Doctor Utah is 8;
					now Cunt Count of Doctor Utah is 1;
					now Cunt Depth of Doctor Utah is 10;
					now Cunt Tightness of Doctor Utah is 2;
					now Clit Size of Doctor Utah is 2;
				else:
					LineBreak;
					say "     Deciding not to risk letting out whatever creature may be lurking in there, you back away slowly and go looking elsewhere. There is some pleading and cursing, but you continue to go, feeling a little bad about your decision.";
					decrease morale of Player by 2;
		else:
			say "     Looking for answers or at least some supplies, you enter the biology building on campus and have a quick look around rather than stay outside to face the creatures roaming around at night. In one disused section of the building, you hear some noise coming from behind one of the office doors. Labeled as 'Dr. R. Utah - Paleontology', you briefly wonder how many students such a professor could even get at such a sports-centric college. You check the door and find it locked, but a scratchy voice responds to your presence. 'Help! Trapped. So weak.'";
			say "     [bold type]While the voice sounds raspy, does it sound more like a man or a woman?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - It sounds like a man.";
			say "     ([link]N[as]n[end link]) - It sounds like a woman.";
			if Player consents:
				LineBreak;
				say "     A faint scratching at the wooden door from the inside bring to back to the situation at hand. It seems someone's become trapped. Concerned that he may starve or dehydrate before rescue finally arrives, you should probably help him out.";
				now UtahGender is 1;
				say "     [bold type]Shall you let the guy out?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if Player consents:
					LineBreak;
					say "     You try pushing at the heavy wooden door, but it seems quite stuck. You bash your body against it a few times, feeling it start to give. You keep at it, always worried that some creature will hear you and arrive, but manage to break down the door, cracking and snapping the wood away from the numerous nails pounded into the frame from the inside. As the door gives way, you tumble into a destroyed office containing not a person as you'd expected, but a reptilian creature with a sinister grin on its face.";
					challenge "Wereraptor";
					raptorrelease;
					if fightoutcome >= 10 and fightoutcome <= 19:
						say "     Managing to drive off the raptor creature, you take a moment to survey the office. It has been destroyed by the clawed menace trapped inside. The furniture is largely destroyed, the walls and door covered in slashes and everything a mess. Among the wreckage, there's a shattered display case with a large bone lying among the shards. Speaking of the door though, you are confused as you examine it, seeing the nails barring it were driven in from the inside as if the creature sealed itself away. Your search of the office does provide one small reward as you find a bag of stale chips in one of the drawers.";
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
				now Androginity of Doctor Utah is 2;
				now Cock Count of Doctor Utah is 1;
				now Cock Girth of Doctor Utah is 3;
				now Cock Length of Doctor Utah is 8;
				now Ball Count of Doctor Utah is 2;
				now Ball Size of Doctor Utah is 3;
			else:
				say "     A faint scratching at the wooden door from the inside bring to back to the situation at hand. It seems someone's become trapped. Concerned that she may starve or dehydrate before rescue finally arrives, you should probably help her out.";
				now UtahGender is 2;
				say "     [bold type]Shall you let the woman out?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if Player consents:
					LineBreak;
					say "     You try pushing at the heavy wooden door, but it seems quite stuck. You bash your body against it a few times, feeling it start to give. You keep at it, always worried that some creature will hear you and arrive, but manage to break down the door, cracking and snapping the wood away from the numerous nails pounded into the frame from the inside. As the door gives way, you tumble into a destroyed office containing not a person as you'd expected, but a reptilian creature with a sinister grin on its face.";
					challenge "Wereraptor";
					raptorrelease;
					if fightoutcome >= 10 and fightoutcome <= 19:
						say "     Managing to drive off the raptor creature, you take a moment to survey the office. It has been destroyed by the clawed menace trapped inside. The furniture is largely destroyed, the walls and door covered in slashes and everything a mess. Among the wreckage, there's a shattered display case with a large bone lying among the shards. Speaking of the door though, you are confused as you examine it, seeing the nails barring it were driven in from the inside as if the creature sealed itself away. Your search of the office does provide one small reward as you find a bag of stale chips in one of the drawers.";
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
				now Androginity of Doctor Utah is 8;
				now Cunt Count of Doctor Utah is 1;
				now Cunt Depth of Doctor Utah is 10;
				now Cunt Tightness of Doctor Utah is 2;
				now Clit Size of Doctor Utah is 2;
	now Paleontology Professor is resolved;


to raptorrelease:
	[puts Wereraptor as lead monster]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Wereraptor":
			now MonsterID is y;
			now area entry is "Campus";
			break;
	if wrcursestatus is 0, now wrcursestatus is 1;


Section 1 - Creature Responses

wrmode is a number that varies.
wrcursestatus is a number that varies.
wrcursestart is a number that varies. wrcursestart is usually 10000.
wrcurseactivity is a truth state that varies. wrcurseactivity is normally false.

to say wereraptordesc:
	say "     You find yourself faced with a lizard-human hybrid which you quickly realize is some kind of velociraptor creature. Its torso and arms are much like that of a human, but with the muscled legs, tail and head of a velociraptor";
	if wrmode is 1: [female]
		say ". And a female one at that. Leaning over in a stance typical for raptors, her breasts can clearly be seen at her chest. While her hands have smaller claws on them, those on her feet seem quite large, especially the long sickle-like one. Both have only three digits on them. Her scales are a deep blue over most of her body, shifting almost to black over her head, back and the top of her tail. She stares at you with a feral wildness to her yellow eyes and takes a step forward. She hisses at you before charging forward in a rush.";
	else: [male]
		say ". And a male one at that. Leaning over in a stance typical for raptors, his dripping maleness can clearly be seen between his muscular legs. While his hands have smaller claws on them, those on his feet seem quite large, especially the long sickle-like one. His scales are a deep blue over his body, accented by green feathers on top of the head, on the forearms and at the end of his tail. He stares at you with a feral wildness to his yellow eyes and takes a step forward. He hisses at you before charging forward in a rush.";

to say losetowereraptor:
	if BodyName of Player is "Wereraptor":
		if wrmode is 1:
			project Figure of Wereraptor_female_icon;
			if Player is male:
				say "     The other wereraptor, having defeated you, hisses and pounces onto you, knocking you to the ground beneath her. You are momentarily worried that she might maul you with those sharp claws of hers, but she instead releases a triumphant roar and grinds her hips down onto yours. Catching the scent of her lust, your excitement grows and your feral nature takes over. You grind your cock up against her, roaring as one as you penetrate her. She rides you rough and hard, her claws digging into you as she rides your stiff cock. The feel of your [Cock of Player] shaft sliding into her is just what your wereraptor body needs to satisfy its lustful desires. You nip and lick at one another while in the throes of wild, primitive lust until you cry out again, cumming hard to fill her womb with your saurian seed.";
			else:
				say "     The other wereraptor, having defeated you, hisses and pounces onto you, knocking you to the ground beneath her. You are momentarily worried that she might maul you with those sharp claws of hers, but she instead releases a triumphant roar and turns around, pressing her hindquarters, and more specifically her dripping snatch, into your face. With the scent of the lustful wereraptor right in front of you, your excitement grows and your feral nature takes over. You bury your nose between her legs and start licking wildly at her pussy, lapping up her heated juices and getting a roar of pleasure from her[if Player is female]. You roar in return as she sets to licking at your juicy cunt in return[end if]. In the throes of her lust, her claws dig into you but you hardly notice, your wild and primitive lust driving you to lick until [if Player is female]you both cum loudly with another hissing roar[else]she cums with another loud, hissing roar[end if].";
		else:
			project Figure of Wereraptor_male_hard_icon;
			if Player is female and a random chance of 3 in 4 succeeds:
				say "     The other wereraptor, having defeated you, hisses and pounces onto you, knocking you to the ground beneath him. You are momentarily worried that he might maul you with those sharp claws of his, but he instead releases as triumphant road and grinds his hard cock against your rear. Catching the scent of his lust, your excitement grows and your feral nature takes over. You spread your legs and raise your tail, hissing your need for the strong male to mount you. Grabbing your shoulders with his clawed hands, he climbs atop you and drives his pulsing rod into you, making you both roar in pleasure. He pounds into you rough and hard, his claws digging into you as he thrusts into your juicy cunt like the primitive beast he is. He nips and licks along your neck, his hot breath sliding along your neck as he mates you. The feel of his saurian shaft sliding into you is just what your wereraptor body needs to satisfy its lustful desires. When your pleasures peak, he drives hard into you one last time and unleashes his hot seed, filling your womb with his saurian seed. You both roar loudly in ecstasy at the triumphant climax of the wild mating.[ovichance]";
			else if anallevel > 1 and a random chance of 2 in 3 succeeds and Cunt Count of Player is 0:
				say "     The other wereraptor, having defeated you, hisses and pounces onto you, knocking you to the ground beneath him. You are momentarily worried that he might maul you with those sharp claws of his, but he instead releases as triumphant road and grinds his hard cock against your rear. Catching the scent of his lust, your excitement grows and your feral nature takes over. You spread your legs and raise your tail, hissing as you submit to the stronger male's dominance. Grabbing your shoulders with his clawed hands, he climbs atop you and drives his pulsing rod into you, making you both roar in pleasure. He thrusts into you rough and hard, his claws digging into you as he pounds into you like the primitive beast he is. He nips and licks along your neck, his hot breath sliding along your neck as he fucks you in a display of feral dominance. When your pleasures peak, he drives hard into you one last time and unleashes his hot seed, filling your belly with his saurian seed. As he cums, he roars again, nipping firmly at your neck and grinding his pulsing shaft deep inside you[if Player is male]. This added pressure against your prostate and the hot rush of his semen into you pushes you over the edge and you climax as well.[movichance]";
			else:
				say "     The other wereraptor, having defeated you, hisses and pounces onto you, knocking you to the ground beneath him. You are momentarily worried that he might maul you with those sharp claws of his, but he instead releases a triumphant roar and turns around, pressing his hindquarters, and more specifically his throbbing cock, into your face. With the scent of the lustful wereraptor right in front of you, your excitement grows and your feral nature takes over. You wrap your lips around his erection and start licking and sucking at it, loving the taste of the stronger male's virile penis. He roars in pleasure and starts thrusting into your mouth[if Player is male], burying his face between your legs and licking at your stiff shaft in return[end if]. In the throes of his lust, his claws dig into you but you hardly notice, your wild and primitive lust driving you to lick and suck until [if Player is not neuter]you both cum loudly with another hissing roar[else]he cums with another loud, hissing roar[end if] feeding you his rich seed.";
		decrease humanity of Player by 2;
		decrease Libido of Player by 4;
	else if wrmode is 1:
		project Figure of Wereraptor_female_icon;
		say "     Defeated by the wereraptor, the creature hisses triumphantly and grabs your head in her clawed hands, pressing your head between her legs. Feeling her sharp claws digging into your shoulders, you have no choice but to start licking at her wet pussy. The flavor is strong but exciting, quickly building your lust until you're eagerly lapping at her dripping slit for more of her hot juices. When she finally cums, she sinks her sharp claws into you and hisses loudly in pleasure. Now done with you, she shoves you aside roughly and sniffs the air. She flicks her tongue across her muzzle and rushes off after her new prey with a more mundane hunger to be sated. You feel relieved that this wild beast chose not to make a meal out of you instead.";
	else:
		project Figure of Wereraptor_male_hard_icon;
		say "     Defeated by the wereraptor, the creature hisses triumphantly and grabs your head in his clawed hands, pressing your head between his legs. Feeling the sharp claws digging into your shoulders, you have no choice but to start licking and eventually sucking at that reptilian cock. The flavor is strong but exciting, quickly building your lust until you're eagerly lapping along its length and working your mouth over it. When he finally cums, he sinks his sharp claws into you and hisses loudly in pleasure while pumping his hot load down your throat. Now done with you, he shoves you aside roughly and sniffs the air. He flicks his tongue across his muzzle and rushes off after his new prey with a more mundane hunger to be sated. You feel relieved that this wild beast chose not to make a meal out of you instead.";
	if wrcursestatus is 0 or wrcursestatus is 1:
		say "     The claw marks at your back sting with a burning heat. As the pain fades, you check back, finding the wounds already closed, but still scarred.";
		now wrcursestatus is 2;
		now wrcursestart is turns;

to say beatthewereraptor:
	if wrcurseNermine is 9:
		say "     You manage to defeat and drive off Dr. Utah, the first wereraptor.";
	else:
		if wrmode is 1: [female]
			project Figure of Wereraptor_female_icon;
			say "     As the wereraptor stumbles back, weak and beaten, your primitive urges drive you to pounce upon her instinctively. You bear her to the ground and pin them.";
			say "     [bold type]Shall you give in to your primitive, lustful instincts and mate with your fallen foe?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if Player consents:
				LineBreak;
				if Player is male:
					say "     With the female pinned beneath you, you grind your hips down onto hers, pressing your stiff cock against her rear. She hisses in lustful need and quickly moves into the mating stance with her tail raised and her legs wide. As you sink your [cock size desc of Player] [Cock of Player] shaft into her, you both roar in pleasure and begin fucking like wild, primitive beasts. You grip her body tightly and sink your claws into her shoulders as you drive yourself into her again and again as your feral nature takes over. You ride her rough and hard, your pulsing shaft pounding into the sexy saurian's body in a primal need to breed her. The feel of her slick, juicy cunt around your cock is just what your wereraptor body needs to satisfy its lustful desires. You nip and lick at her neck as you fuck her until you both cry out again, cumming hard to fill her womb with your saurian seed.";
				else:
					say "     With the female pinned beneath you, you turn around and grind your hips down onto her face, pressing your wet pussy into her face. She starts licking it right away, drawing a hiss of pleasure from you. Not wanting to miss out on such a treat, you bury your own head between her muscled legs and dive your tongue into her snatch. This excites her further and drives her to lick you even more excitedly. You lap up each other's heated juices. You both finally roar in pleasure as your wild and primitive lusts drive you both to lick until you both have cum.";
				decrease humanity of Player by 2;
				decrease Libido of Player by 4;
			else:
				LineBreak;
				say "     It takes a bit of effort to rein in your primal urges, but you do so, giving the creature a final punch before pouncing away and leaving it to slink away into the night.";
		else: [male]
			say "[WinAgainst_MaleWereraptor]";

to say WinAgainst_MaleWereraptor:
	project Figure of Wereraptor_male_hard_icon;
	say "     You can see that the wereraptor's stamina will soon reach its limits. [bold type]What exactly do you want to do to him once that happens?[roman type][line break]";
	let Wereraptor_Male_Choices be a list of text;
	if Player is Male:
		add "Fuck him missionary." to Wereraptor_Male_Choices;
		add "Fuck him doggystyle." to Wereraptor_Male_Choices;
		add "Grind your cock against his tail and ass." to Wereraptor_Male_Choices;
		add "Present your ass to him to fuck." to Wereraptor_Male_Choices;
		add "Straddle his hips and ride that cock anally." to Wereraptor_Male_Choices;
	if Player is male or Player is female:
		add "Straddle his hips and ride that cock vaginally." to Wereraptor_Male_Choices;
	add "Just drive him off." to Wereraptor_Male_Choices;
	let Wereraptor_Male_Choice be what the player chooses from Wereraptor_Male_Choices;
	if Wereraptor_Male_Choice is:
		-- "Fuck him missionary.":
			LineBreak;
			say "[Wereraptor_Male_Victory_MissionaryFuck]";
		-- "Fuck him doggystyle.":
			LineBreak;
			say "[Wereraptor_Male_Victory_DoggyFuck]";
		-- "Straddle his hips and ride that cock anally.":
			LineBreak;
			say "[Wereraptor_Male_Victory_AnalRide]";
		-- "Straddle his hips and ride that cock vaginally.":
			LineBreak;
			say "[Wereraptor_Male_Victory_VaginaRide]";
		-- "Present your ass to him to fuck.":
			LineBreak;
			say "[Wereraptor_Male_Victory_DoggyReceive]";
		-- "Grind your cock against his tail and ass.":
			LineBreak;
			say "[Wereraptor_Male_Victory_Grinding]";
		-- "Just drive him off.":
			LineBreak;
			say "[Wereraptor_Male_Victory_Driveoff]";

to say Wereraptor_Male_Victory_MissionaryFuck:
	say "     The scaled form of the wereraptor falters, his powerful legs bending awkwardly beneath him as he struggles for purchase, the sharp claws on his three-toed feet scrabbling against the floor without finding solid ground. His breathing comes in rapid, whistling gasps, the sound sharp and animalistic, a clear sign of his exhaustion and defeat in the brutal exchange. His yellow eyes, usually so fierce and wild, are clouded with effort, fixed on you without defiance. The long, blue-scaled tail, accented with green feathers, sweeps back and forth across the floor, a frantic, involuntary motion mirroring the tremors running through his muscled body. He is swaying, unable to maintain his balance for more than a moment longer, the picture of a defeated predator.";
	say "     Seizing the opportunity, you move swiftly, closing the distance, reaching out to grip his scaled body and push him firmly backward. The anthro dinosaur doesn't resist, his weight shifting easily as you guide him down onto his back. He lands with a soft thud, the sound muffled by his scales, his scaled legs splaying slightly. You quickly shrug off your gear[if Player is not naked] and clothes[end if], then position yourself over him, between the strong thighs. Pressing his legs upward, you force them to bend at the knee and rest against your hips, exposing his scaled rear fully to you. His chest heaves beneath you, the scales cool against your skin, a strange and exhilarating contrast to your own form. The green feathers on his forearms brush against your sides as you settle yourself above him, his tail lying along the ground underneath you.";
	WaitLineBreak;
	say "     You look down at the wereraptor, his muscled body spread beneath you, his scaled ass tilted invitingly upwards by the position of his legs. Your erection is heavy and throbbing, slick with pre-cum, aligning itself with the dark, tight pucker of his anus. Reaching down, you guide your tip to his opening, the sphincter tightly clenched against the intrusion. You push, feeling the scales give way to softer, yielding skin at the entrance, the muscles resisting your entry for a moment before slowly, reluctantly, giving way. Sinking into him inch by slow inch, you can feel the surprising heat deep inside the scaled passage, a powerful grip clenching around your shaft with every downward press. He hisses, a sharp, drawn-out sound, his body arching slightly off the ground.";
	say "     With the wereraptor impaled fully upon you, the scaled passage tight and hot around your length, you begin to move, a slow, deep thrusting motion. You watch his face, the animalistic features contorted with a mixture of discomfort and burgeoning pleasure, his yellow eyes wide and fixated on something above you. You lean down, bending over him, bringing your face closer to his scaled muzzle. You reach out, your fingers tracing the line of his jaw, feeling the smooth, hard scales beneath your touch, before leaning in further and pressing your mouth against his snout, a kiss against the alien texture of his reptilian skin. He lets out a muffled moan against your lips, his scaled body bucking slightly beneath you in response to the combined sensations.";
	WaitLineBreak;
	say "     The rhythm intensifies, your thrusts becoming deeper, more urgent, as you kiss and lick at his scaly muzzle, tasting the light saltiness of sweat mixed with something distinctly nonhuman. His body tenses and relaxes with your movements, his hips grinding against yours, his tail thrashing faster against the floor, a frantic indicator of his rising excitement. You feel his muscles clench around you, a series of powerful, involuntary spasms, accompanied by a choked, animalistic cry that breaks from his throat. His scaled body trembles violently beneath you as he gives a guttural roar, climaxing around your cock, cum gushing from his own erect cock and splattering the anthro dinosaur's scaled chest. His tight passage milks you with every new throb of cum, a palpable tremor that squeezes around your shaft.";
	say "     Your own climax builds rapidly, fueled by the feeling of his release and the tight, gripping contractions of his scaled anus around your shaft. You pump into him with renewed force, driving deep into his core, feeling the scalding heat and the slickness of his passage as you prepare to breed him. With a final, desperate groan, you surge into the wereraptor, releasing your hot, thick cum deep inside his scaled ass, filling him to the brim with your potent load. Panting, you pull back slowly, easing yourself free from the tight, slick passage, your cock dripping. You watch as your creamy white cum begins to leak from the dark seam of his anus, a nice contrast against the deep blue scales. The wereraptor gives a final shiver, pushes himself up, still trembling, and stumbles away from you, leaving behind the scent of sex and showing the visible proof of your dominion on his body.";
	CreatureSexAftermath "Wereraptor" receives "AssFuck" from "Player";

to say Wereraptor_Male_Victory_DoggyFuck:
	say "     The wereraptor stumbles back a step, the powerful muscles in his scaled legs trembling beneath the deep blue skin, the green feathers on his forearms rustling as he struggles to find his balance. He sways slightly, yellow eyes wide and feral as he stares at you, the sharp teeth visible in his open mouth as he pants, the air whistling through his nostrils. The long, thick tail twitches behind him, hitting the ground with a soft thump before rising again to aid his precarious balance. His body glistens with sweat, the scales catching the light, highlighting the cords of muscle along his torso and limbs. The anthro dinosaur doesn't try to run, doesn't protest, simply remains standing there, swaying, a clear sign of his defeat in the sharp tussle that just concluded. His stance is low, that typical raptor crouch, and you can see the base of his tail where it joins his spine.";
	say "     You step forward, closing the small distance between you. Reaching out, you place a hand on the hard muscle of his flank, the scales surprisingly smooth beneath your palm. He flinches slightly at the touch, a shiver running through his form, but still he doesn't move away, accepting the outcome of your fight. You move behind him, circling the powerful hindquarters, taking in the view of his muscular rear, the tight curve of his scaled ass. His tail continues its nervous twitching, a nonverbal acknowledgement of your presence and intent. Bending slightly, you slide your hands down his legs, gripping the thick thighs, your fingers squeezing his muscular legs. He leans forward instinctively as you position yourself, bracing his hands on his knees, offering you access to his rear.";
	WaitLineBreak;
	say "     You position yourself behind the leaning form of the wereraptor, your own arousal a heavy throb against your pelvic bone, a leftover from the adrenaline and exertion of combat. His scaled butt is high in the air, the muscles clenched tight beneath the smooth, cool scales. You slide your fingers along the outline of his asshole, the skin feeling different here, less scaled, softer, the muscles tight and unwelcoming at first touch. He lets out a low hiss, a sound somewhere between a warning and anticipation, his body tensing. Spitting on your fingers to wet them, you return to fingering your conquest and press in gently, feeling the resistance of the sphincter, the warmth within. He pushes back instinctively for a moment, a natural reaction, before his muscles relax, allowing your finger to slip inside, the heat of his body immediately apparent, surprisingly hot and gripping. The wereraptor moans softly, the sound reedy and animalistic.";
	say "     Ready to take the anthro dinosaur for a spin, you grab your [Cock of Player] shaft and stroke its hard length, then line yourself up with the man's rear. With a slow, deliberate press, you begin to enter the wereraptor, pushing past the initial tightness of his anus, the muscles gripping your shaft firmly. He hisses again, this time at a higher pitch, a sharp intake of air, his body arching slightly as you slowly sink inside him. The scales of his thighs press against yours, a strange texture against your skin, and the rhythmic twitching of his tail becomes more pronounced. You feel yourself stretching him open, the warm passage tightening and clenching around you with every inch you gain. His head is bowed low, his feathered crest brushing against his own forearms as you settle yourself completely within him, bottoming out deep inside the scaled body. He lets out a long, trembling moan, a sound of discomfort mixed with growing pleasure.";
	WaitLineBreak;
	say "     You begin to move, a slow, steady rhythm at first, feeling the scaled body rock with yours, the wereraptor's tail pressing against you gently as you push into him. The muscles inside of his welcoming hole grip and release with your movements, creating an intense friction that sends waves of heat and pleasure through you. He starts to pant heavily, the hisses and moans becoming more frequent, more urgent, his yellow eyes squeezing shut. You feel the sudden clenching around you, a powerful grip, followed by a ragged, desperate cry as his body convulses against yours. His thick, tapering cock throbs hard between his legs, spraying his seed across the ground in thick spurts. The anthro dinosaur shakes violently, a long, drawn-out shudder, his climax wracking his frame just as your own urgency spikes, a primal need taking over, driving you harder and faster into the depths of his scaled ass.";
	say "     Driving in deep, you pump into the wereraptor, his body still trembling from his release, the tightness around you exquisite, your own climax surging towards the surface. You thrust into him with powerful strokes, feeling the hot slickness deep inside, and release your load with a deep, guttural groan. Your hips slap against his scaled rear, pressing and grinding against him as your breath comes in panting gasps. With the tremors of your own orgasm still vibrating through your body, you pull out of the scaled entrance, your cock slick and dripping. You watch as your thick, white cum begins to leak from the tight, dark seam of the wereraptor's anus, trickling down over the deep blue scales. He pushes himself up, staggering slightly, then turns his head to look back at you, his breathing still heavy, before he trots away, leaving you alone with the lingering heat and the scent of your conquest.";
	CreatureSexAftermath "Wereraptor" receives "AssFuck" from "Player";

to say Wereraptor_Male_Victory_AnalRide:
	say "     The wereraptor falters, his powerful legs trembling violently beneath him, the muscles bunching and releasing under the smooth blue scales. He struggles against gravity, his hunched posture losing its coiled tension, the green feathers on his forearms drooping slightly. His yellow eyes, usually piercing, are now unfocused, glazed with exhaustion and defeat. A ragged, gasping hiss escapes his sharp-toothed muzzle, a sound of desperate struggle that quickly gives way to acceptance. He stumbles forward a step, then another, before his balance completely deserts him, and the large, scaled form collapses onto the ground, landing with a heavy thud, his long tail cushioning the fall a little. He lies there, panting, accepting the natural conclusion of your brief, intense struggle.";
	say "     You step over the downed wereraptor, your muscles aching with pleasant fatigue from the recent exertion, your cock already heavy and throbbing with anticipation. The sight of the anthro dinosaur lying submissively at your feet ignites a primal heat in your belly. His legs are splayed slightly, revealing the junction where his powerful thighs meet his groin. The scaled skin there is smooth, a deep blue matching the rest of his body, and from a slit within that scaled landscape emerges his tapered reptilian cock, standing proudly erect, glistening with a natural slickness. It bobs slightly as he settles onto the ground, a clear invitation to the victor. You quickly shrug off your gear[if Player is not naked] and clothes[end if], then position yourself above him, straddling his hips, the curve of his scaled midriff pressing against your inner thighs.";
	WaitLineBreak;
	say "     Lowering yourself slowly, you guide the thick shaft of the saurian male to your own receptive opening. The cool, smooth scales of his chest are steady under your hands as you brace yourself on them during your descent, aligning yourself with the imposing column of his erection. You feel the pointy head of his tapering cock press against your tight sphincter, its hard, precum-slick tip pushing gently against the resistant muscle. With a deep breath, you begin to slide down, sinking your ass onto his shaft, feeling the muscular ring of your anus stretch and give way around the thick warmth of his reptilian cock. The sensation is intense, a feeling of being filled completely by something large and powerful, the soft flesh of his shaft moving against the delicate tissues within you.";
	say "     You settle onto his erection, sliding your ass up and down the length of his shaft, taking the full, impressive size of the wereraptor inside you. The texture of his cock feels different from human skin, a unique sensation that rubs and presses against your internal walls with each downward stroke. You lean forward, bracing your hands further against his scaled chest, feeling the powerful muscles beneath your palms flex with your movements. He lets out a low rumble, a sound that resonates through his chest and up into your body, his tail twitching rapidly behind him on the floor. You control the pace, setting a slow, deliberate rhythm at first, allowing yourself to adjust to the sheer thickness filling you, feeling the pleasure coil tighter with every thrust downwards onto his cock.";
	WaitLineBreak;
	say "     The rhythm picks up pace, becoming faster, more desperate, as the intense friction of his tapering shaft rubbing against your insides pushes you closer to the edge. You ride him harder, faster, your ass lifting and falling onto the thick, unyielding column of his erection, your groans mixing with his deep rumbles and quickening hisses. Sweat drips from your brow onto his blue scales as your body tenses, anticipating the coming release. His yellow eyes are now wide, fixed on yours, reflecting the shared intensity of the moment. You feel the muscles inside his body begin to clench, a series of involuntary contractions, the first tremors of his own impending climax building rapidly beneath you, driving both of you towards the peak.";
	say "     With a final, desperate push downwards onto the wereraptor's cock, you feel him surge upwards inside you, his scaled body arching, driving his thick, tapered cock deep into your ass just as your own climax bursts forth in a searing wave. You feel the hot rush of his breeding load filling you, pumping into your receptive passage, while simultaneously, your own orgasm erupts, a powerful spray of hot, white cum that arcs upwards and lands in thick ropes across the scaled expanse of his blue chest, staining the deep scales and scattering among the green feathers near his forearms. The combined release leaves you trembling, exhausted. You slowly pull yourself off his now-softening shaft, peeling your ass free from the slick, full passage. You flop down beside him, panting heavily, your body aching but buzzing with post-orgasmic bliss. The wereraptor stirs, pushes himself up onto his three-toed feet, his scaled body still shaking slightly, and with a final, lingering look, the magnificent saurian turns and walks away, leaving you lying there, sticky and sated.";
	CreatureSexAftermath "Player" receives "AssFuck" from "Wereraptor";

to say Wereraptor_Male_Victory_VaginaRide:
	say "     The wereraptor's powerful legs buckle, unable to hold his weight any longer, and the deep blue scaled body collapses to the ground with a heavy thud, the green feathers on his head and forearms momentarily ruffled by the impact. He lands sprawled, his sharp-toothed muzzle resting on the floor, panting in ragged, whistling gasps that speak of his utter depletion in the swift, decisive bout. His yellow eyes, wide and dull with fatigue, stare unseeing into nothingness. The long, scaled tail lies motionless for a moment, then gives a weak, involuntary twitch against the floor. He makes no move to rise, presenting a tableau of complete surrender, accepting the outcome of your quick, hard-fought victory against the saurian. His defeat is total.";
	say "     You move over the fallen anthro dinosaur, your body humming with the lingering adrenaline of the struggle, a heavy arousal building low in your belly. He lies still beneath you, a magnificent, defeated creature. Quickly shrugging off your gear[if Player is not naked] and clothing[end if], you step carefully, positioning yourself over his scaled form, straddling his muscled chest, feeling the strange, cool texture of his scales against the skin of your inner thighs. Your gaze is drawn to the source of your desire: his tapered reptilian cock, now fully erect, glistening with a natural sheen, emerging from the slit between his powerful legs. It pulses with a life of its own, a prize waiting to be claimed. You steady yourself above him, your breath coming faster now with anticipation.";
	WaitLineBreak;
	say "     Slowly, you begin to lower yourself, guiding your own heat onto the prominent shaft of the wereraptor's erection. The pointy head of his cock presses against the delicate folds of your pussy, a warm, firm pressure that makes you gasp softly. You push down, feeling the soft skin of your opening stretching, yielding, molding itself around the smooth, alien skin of his cock. Inch by slow inch, you sink onto his shaft, a wave of intense heat and pressure washing over you as his thick, reptilian length fills your sensitive passage, pushing deep inside your body. He lets out a low, guttural rumble, a sound that vibrates through his chest and into your seated form.";
	say "     You settle onto his cock, taking the full length inside you, impaled on the wereraptor. You brace your hands against his scaled chest, feeling the hard muscle and the subtle texture of his scales beneath your palms, and begin to ride him. Your hips lift and fall, setting a rhythm against his body, grinding your pussy down onto his shaft. The friction is exquisite, the smooth, pliable skin of his cock rubbing against the sensitive walls of your vagina with each stroke. He lies beneath you, accepting your movements, his tail giving a slow, heavy thump against the floor with each deep thrust you make into him. His breathing quickens, his rumbles turning into low groans as you ride him harder.";
	WaitLineBreak;
	say "     The pace accelerates, your movements becoming more frantic, more desperate, as pleasure builds rapidly, coiling tighter and tighter in your core. You lift and fall onto the anthro dinosaur's cock with increasing speed, the intense friction making you pant and cry out, your voice raw with mounting need. You feel the powerful muscles in his scaled body tense beneath you, a subtle shift that tells you he is nearing his own climax, pulled along by the rhythm you are setting. The heat between your bodies is palpable, a burning intensity centered where his hard cock is buried deep inside your wet pussy, driving both of you towards the brink of release.";
	say "     With a final, desperate surge downwards, riding him with all your might, you feel the wereraptor's body tense completely beneath you, his muscles spasming as he gives a deep, roaring groan, his cock throbbing inside you as he begins to breed your pussy. Simultaneously, your own orgasm erupts, a powerful, shaking wave that tears through you, your body convulsing atop him. You cry out, feeling the hot rush of his dinosaur cum pumping into your depths, thick and viscous, filling you completely, the sensation of him cumming inside you intensely pleasurable. As the tremors subside, leaving you weak and panting, you slowly pull yourself off his now-softening cock. You collapse onto the floor beside him, your body exhausted but buzzing, panting raggedly. The wereraptor stirs, pushes himself onto his three-toed feet, still trembling, and with a silent, scaled nod, the magnificent saurian turns and stumbles away, leaving you lying there, wet and full.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Wereraptor";

to say Wereraptor_Male_Victory_DoggyReceive:
	say "     The wereraptor stumbles backward, the powerful hindquarters trembling visibly beneath the deep blue scales, his long, heavy tail lashing through the air. He gasps, his breath hissing through the gaps in his sharp teeth, the green feathers on his forearms drooping as he struggles to maintain his balance, swaying violently on his three-toed feet, the massive sickle claws scraping faintly. His yellow eyes, wild and feral just moments ago during the sharp struggle, now hold a look of dawning realization, acknowledging his loss and the inevitable consequence. He does not run, does not growl in defiance, simply remains upright by sheer will for a moment longer, a proud, defeated predator recognizing the victor's right.";
	say "     You step forward, closing the distance between predator and prey. Reaching out, you grasp the scaled muzzle firmly in one hand, your fingers finding purchase against the smooth scales, turning his head towards you. He flinches at the direct contact, a shiver running through his frame, but you hold him steady. Leaning closer, you force his yellow, slitted eyes to meet your gaze, holding his attention, projecting your dominance into that feral stare. His breath is warm and quick against your hand, smelling faintly musky and reptilian. His tail gives a final unruly lash before falling still, acknowledging your control.";
	WaitLineBreak;
	say "     Maintaining eye contact, a silent challenge and assertion, you slowly release his muzzle and turn your back to the scaled creature. With deliberate movements, you drop your gear[if Player is not barecrotch] and bare your crotch[end if], then present your bare ass to him, vulnerable and exposed yet dominant in your offering. The cool air against your skin is a sudden contrast to the heat of the recent exertion. You feel his gaze on your exposed skin, heavy and intense, sensing the subtle shift in his posture behind you. Calling out an impatient command, you tell him to get to it - you want him to fuck you!";
	say "     You feel the wereraptor move behind you, a low rumble sounding in his chest, a complex mix of obedience and eagerness. His scaled body brushes against your back as he positions himself, the scaled texture a strange sensation against your skin. You feel the pointy, tapered head of his reptilian cock press against the sensitive flesh of your asshole, already hot and thick. He pushes, gently at first, then more firmly, the muscles of your opening protesting for a brief moment before yielding to the steady pressure. You brace yourself, feeling the slow, deliberate invasion as his hot shaft slides into your body, stretching you open, pushing deep into your core.";
	WaitLineBreak;
	say "     The wereraptor begins to move, a deep, powerful thrusting motion, his hips pressing against your rear, driving his reptilian cock deeper with every stroke. He pants against your back, sharp hisses accompanying his movements. Scaled hands find purchase on your hips, holding you steady as he burrows into you. You feel the intense heat and friction build with each thrust, the sensation of his manhood expanding deep inside your body. He groans, the sound guttural and strained, his muscles tensing behind you, and then a powerful series of contractions grip his body. You feel the sudden surge of his hot, thick cum pouring deep inside your asshole, filling you with his potent load - a hot, viscous liquid against your internal walls.";
	say "     He gives one final shudder, his body relaxing slightly as his orgasm subsides, leaving his cum pooling deep inside you. You stand there for a moment, filled with the wereraptor, feeling the warmth of his release, your own body still humming with unmet need. The scaled creature pulls back slightly, his breathing ragged. Your own arousal is still high, unsatisfied by his climax. Reaching down, you wrap a hand around your own hard [Cock of Player] shaft, slick with pre-cum and sweat, and begin to stroke yourself, focused on the intense pleasure building rapidly within you, pushing yourself towards your own release, leaving the wereraptor to witness the completion of your own satisfaction after being bred. Close as you already were, it takes mere moments before find that sweet release and spray your load over the floor between your legs. By the time you catch your breath and turn around, the wereraptor has already stalked away.";
	CreatureSexAftermath "Player" receives "AssFuck" from "Wereraptor";

to say Wereraptor_Male_Victory_Grinding:
	say "     The scaled body of the wereraptor gives out, his powerful legs collapsing beneath him as he falls to the ground with a heavy thud, the green feathers on his forearms flattening against the floor. He lands partly on his side, panting heavily, air hissing through his sharp-toothed maw, his yellow eyes squeezed shut in exertion or pain. His long, heavy tail lies coiled beside him for a moment before twitching restlessly. Sweat beads on his deep blue scales. The anthro dinosaur's muscles are still taut from the recent struggle, a powerful, defeated form lying at your feet. There is no fight left in him, only the ragged sound of his breathing and the slight, involuntary tremors running through his body. This collapse is his acceptance of the inevitable, the end of the bout, your right to the spoils.";
	say "     You move towards the fallen raptor, your sweaty body hot as you kneel beside him, the arousal from the tussle already tight and insistent in your groin. His scaled skin feels cool beneath your hands as you grasp his hips, turning him slightly onto his stomach to better access the lower half of his body. The wereraptor offers no resistance, a compliant weight beneath your touch, his tail curling slightly as you maneuver him. Shrugging off your gear[if Player is not naked] and clothes[end if], you position yourself behind his powerful, muscular hindquarters, the curve of his scaled ass prominent before you. Your [Cock of Player] cock, already heavy and thick, presses against the base of his tail where it joins his spine, the smooth, slightly yielding surface of his scales a unique sensation against your skin.";
	WaitLineBreak;
	say "     With a firm grip on the wereraptor's hips, you begin to grind your cock against the junction of his tail and rear, pressing into the dense muscle of his butt, seeking friction against the scaled skin. He lets out a low growl, the sound rumbling deep in his chest, his body tensing and arching slightly into the pressure. The motion builds a deep, intense heat along the length of your shaft, the resilient scales providing a surprisingly stimulating texture as you push and pull, rocking your hips against his prone form. His tail thrashes weakly from side to side against the ground, a nonverbal display of the intense sensations you are creating against his body. You can't tell if he's aroused, or ashamed of what you're doing with him, but in the end, it doesn't matter much - this is about you, not him.";
	say "     The rhythmic friction of grinding against the scaled creature's tail base and rear brings you closer to the edge, your breath coming in short, sharp gasps, mirroring the wereraptor's own ragged panting beneath you. You can feel the tension coiling tighter in his scaled body, his muscles bunching as you continue the relentless motion, pressing into the powerful curve of his butt. His hisses become more frequent, higher pitched, sounds of discomfort giving way to raw, animalistic cries as the pleasure builds, radiating from the contact point and spreading outwards, pulling you further into the brink of climax.";
	WaitLineBreak;
	say "     Gripping his hips more firmly, you pull back slightly, creating space to free your cock for a moment. Still holding him pinned, you wrap a hand around your throbbing shaft, slick with the combined sweat and pre-cum from the encounter. With quick, practiced strokes, you begin to pump yourself, the sensation magnified after the prolonged grinding against his scales. Your focus narrows, centered entirely on the intense pleasure building rapidly towards its peak, your eyes fixed on the vulnerable, scaled curve of the wereraptor's rear, the tight seam of his asshole beckoning you. You feel the tremor of your own impending orgasm, the point of no return seconds away.";
	say "     Just as your climax crests, a white-hot wave surging through your body, you position the heavy head of your cock directly against the tight circle of his anus. You push firmly, the blunt tip parting the resistant muscles, sinking in just enough to breach the threshold of his scaled opening, but not sliding fully into the depth beyond. With a deep groan, you bear down, pushing your hips forward, releasing your hot, thick cum with force directly into the entrance of his ass, feeling it slick against your sensitive tip as it pours inside. Pulling back slowly, you watch with satisfaction as the milky white fluid begins to leak from the tight, dark pucker of his wrinkled anus, dripping onto the floor beneath him. The wereraptor shivers once more, a final, involuntary reaction, before pushing himself up off the ground, staggering slightly, and moving away from you, leaving you alone with the ebbing pleasure and lingering heat of your orgasm.";
	CreatureSexAftermath "Wereraptor" receives "Grinding" from "Player";

to say Wereraptor_Male_Victory_Driveoff:
	say "     The wereraptor falters, the powerful hindquarters trembling visibly beneath the deep blue scales, his long, heavy tail lashing against the floor with a frantic, defeated sound. He gasps, air hissing through the gaps in his sharp teeth, the green feathers on his forearms drooping as he struggles to maintain his balance, swaying violently on his three-toed feet, the massive sickle claws scraping faintly. His yellow eyes, wild and feral just moments ago during the sharp struggle, now hold a look of dawning realization, acknowledging your might. There is no fight left in him, only the ragged sound of his breathing and the slight, involuntary tremors running through his body.";
	say "     The victory is yours. But sometimes the prize isn't physical intimacy; sometimes it is simply the assertion of dominance. Raising a hand, you make a sharp, dismissive gesture towards the wereraptor. He flinches slightly at what might have been another blow, then lowers his head perceptibly, a final act of acknowledging your superiority. Turning his scaled body, the green feathers on his tail swishing as he moves, he staggers away without looking back.";

Section 2 - Creature Insertion

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Wereraptor"	"[PrepCombat_Wereraptor]"

to say PrepCombat_Wereraptor:
	choose row MonsterID from the Table of Random Critters;
	let debit be 0;
	now dex entry is 19;
	now HP entry is 45;
	now lev entry is 8;
	if lev entry < level of Player and HardMode is true:
		now debit is ( level of Player ) - 8;
		increase lev entry by debit;
		increase dex entry by debit / 5;
		increase HP entry by debit * 3;
		increase wdam entry by ( debit / 3 );
	now wrmode is a random number between 1 and 2;
	if MaleList is banned and FemaleList is banned:		[if both types are banned, the fight is aborted and removed from critter table]
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
	else if MaleList is warded and FemaleList is warded:
		now wrmode is a random number between 1 and 2;
	else if ishunting is true:	[hunting results in 2/3rds chance to get unwarded option]
		if MaleList is warded and a random chance of 1 in 3 succeeds:
			now wrmode is 1;
		else if FemaleList is warded and a random chance of 1 in 3 succeeds:
			now wrmode is 2;
	else if ishunting is false:
		if MaleList is warded:
			now wrmode is 1;
		else if FemaleList is warded:
			now wrmode is 2;
	if wrmode is 1:
		setmongender 4; [creature is female]
		project Figure of Wereraptor_female_icon;
	else:
		setmongender 3; [creature is male]
		project Figure of Wereraptor_male_soft_icon;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Wereraptor"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Wereraptor" to infections of ReptileList;
	add "Wereraptor" to infections of FurryList;
	add "Wereraptor" to infections of NatureList;
	add "Wereraptor" to infections of MagicalList;
	add "Wereraptor" to infections of HistoricalList;
	add "Wereraptor" to infections of TaperedCockList;
	add "Wereraptor" to infections of SheathedCockList;
	add "Wereraptor" to infections of BipedalList;
	add "Wereraptor" to infections of TailList;
	add "Wereraptor" to infections of OviImpregnatorList;
	add "Wereraptor" to infections of TailweaponList;
	now Name entry is "Wereraptor"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The wereraptor growls and claws at you with [if wrmode is 2]his[else]her[end if] taloned hands![or]The enraged creature gives you a vicious slash with [if wrmode is 2]his[else]her[end if] foot claws![or]The saurian creature slams [if wrmode is 2]his[else]her[end if] long, thick tail into you, knocking you sideways![or]The wereraptor snaps at you with [if wrmode is 2]his[else]her[end if] saurian jaws![at random]";
	now defeated entry is "[beatthewereraptor]"; [ Text when monster loses. ]
	now victory entry is "[losetowereraptor]"; [ Text when monster wins. ]
	now desc entry is "[wereraptordesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "[if wrcurseactivity is true]the animalistic visage of a raptor with piercing yellow eyes and is [else]humanoid with saurian features. It has yellow eyes and is[end if] covered in blue scales, with a crest of [if Player is herm]dark crimson[else if Player is female]black[else if Player is male]green[else]pale gray[end if] feathers";
	now body entry is "[if wrcurseactivity is true]shaped like some kind of human-velociraptor hybrid. You are hunched over, balancing on your powerful hind legs. Your arms have a strong tendency to fold up against your chest when not in use or when you are running, charging like a velociraptor in those movies you used to watch. Your hands and feet now only possess three digits each, armed with claws[else]roughly human in shape, but with taloned hands and feet. Aside from a tendency to fold your arms up against your chest, you carry yourself mostly like any other person[end if]";
	now skin entry is "deep blue scaly";
	now tail entry is "Growing out from the base of your spine, you have a long, thick tail like that of a lizard or a dinosaur, ending in a tuft of feathers.";
	now cock entry is "[one of]slender[or]reptilian[or]saurian[or]tapered[purely at random]";
	now face change entry is "your head reshapes itself as wild, feral thoughts push to overpower your sentient mind. Soon your head has changed, becoming that of a velociraptor";
	now body change entry is "your center of mass shifts, forcing you to lean forwards with your increasingly powerful legs to support you. Your torso and arms are distorted versions of a human's, made to be part of your increasingly reptilian body. Sharp talons grow from your feet and smaller claws form on your hands as your digits fuse and reshape themselves to only leave you with three on each";
	now skin change entry is "scales spread across your skin, deep blue across your limbs and the front of your torso, accented by [if Player is herm]dark crimson[else if Player is female]black[else if Player is male]green[else]pale gray[end if] feathers on your forearms";
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
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 12; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 5; [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "wereraptor milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]animalistic[purely at random]";
	now type entry is "[one of]wereraptor[or]raptor[or]saurian[or]reptilian[purely at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 2; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]


Section 3 - The Curse

wrBodyName is a text that varies.
wrbody is a text that varies.
wrscalevalue is a number that varies.
wrbodydesc is a text that varies.
wrbodytype is a text that varies.
wrdaycycle is a number that varies.
wrFaceName is a text that varies.
wrface is a text that varies.
wrSkinName is a text that varies.
wrskin is a text that varies.
wrTailName is a text that varies.
wrtail is a text that varies.
wrCockName is a text that varies.
wrcock is a text that varies.
wrcurseholdback is a number that varies.


an everyturn rule:
	if wrcursestatus > 0 and wrcursestatus < 100 and skipturnblocker is 0:
		follow the wereraptor curse rule;

this is the wereraptor curse rule:
	if skipturnblocker is 0:
		if wrcursestatus > 0 and wrcursestatus < 100:
			if ( ( JackalManTF > 0 or JackalBoyTF > 0 ) and wrcursestatus < 7 ) or nightmaretf > 0 or HellHoundlevel > 0 or ("Ceryneian Blessed - Anthro" is listed in traits of Player or "Ceryneian Blessed - Feral" is listed in traits of Player or "Ceryneian Blessed - Taur" is listed in traits of Player):	[eliminates curse]
				if wrcursestatus >= 3:
					say "     You can feel your mystical transformation fighting off the wereraptor curse you are under. Your body writhes in pain and you hiss angrily as your eyes flash yellow and turn slitted before returning to normal. The scars at your shoulders heal, the curse purged by the greater power that now has a hold of you - for better or for ill.";
					now HP of Player is HP of Player / 2;
					if wrcursestatus is 5:
						wrcurserecede;
				else if wrcursestatus is 2:
					say "     You can feel your mystical transformation fighting off something lingering inside you. Your body writhes in pain and you hiss angrily as your eyes flash yellow and turn slitted before returning to normal. The scars at your shoulders heal, whatever lingering affect they had purged by the greater power that now has a hold of you - for better or for ill.";
					now HP of Player is ( 2 * HP of Player ) / 3;
				now wrcursestatus is 100;
				now Greenhouse is resolved;
				now Getting the Knife is resolved;
				now Dinosaur Skeleton is resolved;
		if wrcursestatus is 2:
			if daytimer is night:
				if wrcursestart - turns >= 12:
					increase hunger of Player by 10;
					increase Libido of Player by 20;
					if Libido of Player > 100, now Libido of Player is 100;
					SanLoss 10;
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
				if Player consents:
					LineBreak;
					say "     Welcoming the power of your lycanthropic form, you stop resisting it and let it burst free.";
					increase hunger of Player by 10;
					increase Libido of Player by 20;
					if Libido of Player > 100, now Libido of Player is 100;
					SanLoss 6;
					wrcursesave;
					now wrcursestatus is 5;
					now wrcurseholdback is 0;
				else:
					LineBreak;
					let resistance be ( 120 + humanity of Player ) - ( Libido of Player + ( hunger of Player * 2 ) + ( wrcurseholdback * 10 ) );
					if a random number between 1 and 200 >= resistance:
						say "     You are unable to hold back your lycanthropic changes and cry out as the prehistoric beast within is unleashed. Having broken through your mind's resistance, you feel more of your humanity slipping away.";
						increase hunger of Player by 10;
						increase Libido of Player by 20;
						if Libido of Player > 100, now Libido of Player is 100;
						decrease humanity of Player by 6 + wrcurseholdback;
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
				let resistance be ( 120 + ( humanity of Player ) - ( Libido of Player ) );
				if a random chance of hunger of Player in resistance succeeds:
					wrcurserampage; [curse rampage activates]
			else:
				say "     With the coming of the day, your saurian body spasms and twitches. The beast unleashed hissed and snarls, but those dark, instinctual impulses are pushed back into a dark corner of your mind. But you know it is not gone, but merely slumbering, awaiting the coming of the night to seek its wild freedom again. But for the moment, at least, you know peace[if wrcurseNermine is 0 and a random chance of 2 in 3 succeeds]. Perhaps you should take this opportunity to find someone knowledgeable about [one of]such strange matters[or]mysterious and mystical matters[or]the occult[at random] for help[end if].";
				decrease Libido of Player by 10;
				if Libido of Player < 0, now Libido of Player is 0;
				wrcurserecede;
				now wrcursestatus is 3;
		if wrcursestatus is 7:
			if daytimer is night:
				if wrcurseactivity is false:
					now wrcurseactivity is true;
					StatChange "Dexterity" by 2;
					StatChange "Strength" by 2;
					StatChange "Charisma" by -2;
					StatChange "Intelligence" by -2;
					say "     The power of your saurian transformation rushes through you again, growing back to full strength with the coming of the night. You feel a rush of hunger and arousal surging through your system as the lust to feed and fuck fills you again";
					wrcurserestore;
					say ".";
				else if BodyName of Player is not "Wereraptor" or player is not pure:
					say "     The power of your saurian transformation rushes through you again, pushing to restore your reptilian form. You feel a rush of hunger and arousal surging through your system as the lust to feed and fuck fills you again";
					wrcurserestore;
					say ".";
			else:
				if wrcurseactivity is true:
					now wrcurseactivity is false;
					StatChange "Dexterity" by -2;
					StatChange "Strength" by -2;
					StatChange "Charisma" by 2;
					StatChange "Intelligence" by 2;
					say "     With the coming of the day, your saurian body spasms and twitches. The feral strength of your wereraptor form recedes for now as your features soften and you take on a form more akin to a reptilian humanoid, hiding your wilder true nature for the moment.";


to wrcursesave:
	[puts Wereraptor as lead monster]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Wereraptor":
			now MonsterID is y;
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
		StatChange "Dexterity" by 2;
		StatChange "Strength" by 2;
		StatChange "Charisma" by -2;
		StatChange "Intelligence" by -2;
	else if BodyName of Player is not "Wereraptor" or player is not pure:
		say "     The power of your cursed transformation rushes through you again, pushing to restore your reptilian form. You feel a rush of hunger and arousal surging through your system as the lust to feed and fuck fills you again";
		wrcurserestore;
		say ".";


to wrcurserestore:
	[puts Wereraptor as lead monster]
	choose row MonsterID from Table of Random Critters;
	if Name entry is not "Wereraptor":
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Wereraptor":
				now MonsterID is y;
				break;
	if SkinName of Player is not "Wereraptor":
		wrskinsave;
		increase hunger of Player by 1;
		increase Libido of Player by 1;
	if FaceName of Player is not "Wereraptor":
		wrfacesave;
		increase hunger of Player by 1;
		increase Libido of Player by 3;
	if BodyName of Player is not "Wereraptor":
		wrbodysave;
		increase hunger of Player by 2;
		increase Libido of Player by 3;
	if TailName of Player is not "Wereraptor":
		wrtailsave;
		increase hunger of Player by 1;
		increase Libido of Player by 1;
	if CockName of Player is not "Wereraptor":
		wrcocksave;
		increase hunger of Player by 1;
		increase Libido of Player by 8;


to wrbodysave:
	choose row MonsterID from the Table of Random Critters;
	now wrBodyName is BodyName of Player;
	now wrbody is Body of Player;
	now wrscalevalue is scalevalue of Player;
	now wrbodydesc is bodydesc of Player;
	now wrbodytype is bodytype of Player;
	now wrdaycycle is SleepRhythm of Player;
	now BodyName of Player is "Wereraptor";
	now BodySpeciesName of Player is "Wereraptor";
	now Body of Player is body entry;
	attributeinfect;
	say ". Your body contorts painfully as [body change entry]";

to wrfacesave:
	choose row MonsterID from the Table of Random Critters;
	now wrFaceName is FaceName of Player;
	now wrface is Face of Player;
	now FaceName of Player is "Wereraptor";
	now FaceSpeciesName of Player is "Wereraptor";
	now Face of Player is face entry;
	say ". Your face cracks and pops as [face change entry]";

to wrskinsave:
	choose row MonsterID from the Table of Random Critters;
	now wrSkinName is SkinName of Player;
	now wrskin is Skin of Player;
	now SkinName of Player is "Wereraptor";
	now SkinSpeciesName of Player is "Wereraptor";
	now Skin of Player is skin entry;
	say ". Your skin feels tight and raw as [skin change entry]";

to wrtailsave:
	choose row MonsterID from the Table of Random Critters;
	now wrTailName is TailName of Player;
	now wrtail is tail of Player;
	now TailName of Player is "Wereraptor";
	now TailSpeciesName of Player is "Wereraptor";
	now tail of Player is tail entry;
	say ". Your hindquarters stiffen with a harsh pop as [ass change entry]";

to wrcocksave:
	choose row MonsterID from the Table of Random Critters;
	now wrCockName is CockName of Player;
	now wrcock is Cock of Player;
	now CockName of Player is "Wereraptor";
	now CockSpeciesName of Player is "Wereraptor";
	now Cock of Player is cock entry;
	if Player is male:
		say ". Your groin feels a surge of wild power as [cock change entry]";
	else:
		say ". You feel a rush of hot excitement from your loins";

to wrcurserecede:
	if BodyName of Player is "Wereraptor":
		now BodyName of Player is wrBodyName;
		now BodySpeciesName of Player is wrBodyName;
		now Body of Player is wrbody;
		now scalevalue of Player is wrscalevalue;
		now bodydesc of Player is wrbodydesc;
		now bodytype of Player is wrbodytype;
		now SleepRhythm of Player is wrdaycycle;
	if FaceName of Player is "Wereraptor":
		now FaceName of Player is wrFaceName;
		now FaceSpeciesName of Player is wrFaceName;
		now Face of Player is wrface;
	if SkinName of Player is "Wereraptor":
		now SkinName of Player is wrSkinName;
		now SkinSpeciesName of Player is wrSkinName;
		now Skin of Player is wrskin;
	if TailName of Player is "Wereraptor":
		now TailName of Player is wrTailName;
		now TailSpeciesName of Player is wrTailName;
		now tail of Player is wrtail;
	if CockName of Player is "Wereraptor":
		now CockName of Player is wrCockName;
		now CockSpeciesName of Player is wrCockName;
		now Cock of Player is wrcock;
	StatChange "Dexterity" by -2;
	StatChange "Strength" by -2;
	StatChange "Charisma" by 2;
	StatChange "Intelligence" by 2;

to wrcurserampage:
	if there is a dangerous door in the Location of Player or the location of Player is fasttravel:
		say "     You can feel the primitive, feral instincts of your wereraptor body trying to erode your conscious thought as its lust and hunger rise. You catch the scent of prey in the air and your limited control snaps. You head out into the city as nothing more than a wild beast seeking to slake its hunger and lust upon its prey.";
		now skipturnblocker is 1; [player effectively unconscious, delays/skips end of turn messages]
		SanLoss 6;
		now wrcursestatus is 6;
		while daytimer is night and humanity of Player > 0:
			decrease humanity of Player by 2;
			if a random chance of 1 in 3 succeeds:
				say "You have a brief, hazy image of [one of]wild, savage sex[or]animalistic lusts[or]sinking your claws into something as you sate your lusts[purely at random].";
				weakrandominfect;
			else if a random chance of 1 in 3 succeeds:
				say "You have a brief, hazy image of [one of]eating something raw and bloody[or]tearing wildly into some meat[or]the taste of blood as it runs down your muzzle[or]clawing and slashing at something[purely at random].";
			follow the turnpass rule;
			if BodyName of Player is not "Wereraptor" or player is not pure:
				say "     During the night, your curse overpowers your body and returns it to your wereraptor form";
				wrcurserestore;
		if humanity of Player > 0:
			now skipturnblocker is 0; [player returned to consciousness, messages resume]
			say "     You finally pass out somewhere at dawn. You awaken a few hours later covered in blood and with little memory of your wild rampage. You can only recall vague images of your beastly form fighting, eating and fucking throughout the night, but no specifics. Realizing you no longer feel hungry and can taste the coppery tang of blood in your mouth, you are momentarily ill before your nanites settle your stomach. Worn and aching, you rise and stumble your way back to the last place you recall being, trying your best not to think of what you may have done last night.";
			decrease Libido of Player by 20;
			if Libido of Player < 0, now Libido of Player is 0;
			now hunger of Player is 0;
			decrease morale of Player by 5;
			wrcurserecede;
			now wrcursestatus is 3;
			now HP of Player is ( HP of Player + HP of Player + MaxHP of Player ) / 4;
		else if humanity of Player <= 0:
			end the story saying "Your wild rampage consumes you and you become nothing more than a wild creature that becomes a dangerous, bloodthirsty and lust-crazed beast each night.";
	else:		[confined, manage to hold on]
		say "     You can feel the primitive, feral instincts of your wereraptor body trying to erode your conscious thought as its lust and hunger try to take over. Thankfully, you are able to confine yourself indoors out of the moonlight. You are wilder and more feral for a time, but manage to get a grip on yourself. It takes its toll, but you remain in control for now.";
		decrease humanity of Player by 4;
		increase Libido of Player by 2;


Section 4 - Cure Events

Part 1 - Greenhouse and Wolfsbane

Table of GameEventIDs (continued)
Object	Name
Greenhouse	"Greenhouse"

Greenhouse is a situation.
ResolveFunction of Greenhouse is "[ResolveEvent Greenhouse]". The level of Greenhouse is 7. Greenhouse is inactive.
Sarea of Greenhouse is "Campus".

grhouse is a truth state that varies. grhouse is usually false.

to say ResolveEvent Greenhouse:
	if grhouse is false:
		say "     Remembering Nermine's instructions, you keep your eyes open as you travel around the campus. Not recalling having seen one there before and unable to find out anywhere, you're about to give up when you swing back around towards the biology building again for another pass. And that's when you spot it as you come around the edge of the chemistry building. Linking it to the biology building, there is a connecting hallway and the topmost level of that passage is a greenhouse.";
	else:
		say "     Hoping to gain entrance to the greenhouse this time, you slip into the chemistry building. Moving carefully, you make your way up the stairs to the third floor and the pathway connecting it and the biology building.";
	if daytimer is day:
		say "     On the lookout for other creatures, you head into the chemistry building and make your way carefully up stairs to the third floor. Finding the door to the greenhouse unlocked, you slip inside and start looking over the plants. You locate the monkshood tucked away behind a few other plants. In your eagerness, you end up knocking over one of the other pots, breaking it with a large shattering of pottery that seems very loud in the otherwise quiet greenhouse.";
		WaitLineBreak;
		say "     Hearing footsteps approach, you clutch your find close and [if weapon object of Player is not journal]ready your weapon with the other hand[else]take up a fighting stance with the other fist raised[end if]. You are surprised to see an unchanged human appear, coming towards you quickly.";
		if utahmet is false:
			if UtahGender is 1:
				say "     'Stop,' the person wheezes as he tries to catch his breath after his frantic run into the greenhouse from the opposite end of the passageway. 'I... uhh... That aconitum is college property. You can't take it. Drop it and get out of here.' Dressed in torn clothes and looking a little ragged around the edges, he still seems fully human. He looks to be about in his late twenties, has dark hair and an average build. He would probably look pretty handsome if his suit weren't all torn and the scruff on his face were shaved.";
				WaitLineBreak;
				say "     Remaining at the ready, you ask him who he thinks he is to order you around like that. '[bold type]I[roman type] am Dr. Utah and [bold type]I[roman type] am a professor here. And [bold type]that[roman type] is college property. Now put the wolfsbane down and get out of here before you attract some unwanted trouble. I'm willing to be a little tolerant with you given the circumstances, but it won't last long.'";
				say "     He tries to sound intimidating, but is clearly nervous and keeps several yards away from you. Figuring he's scared of a battle-hardened survivalist such as yourself, you [if weapon object of Player is not journal]wave your [weapon object of Player] in his direction[else]shake your fist menacingly at him[end if]. You growl that the college has already gone to hell and that you need this monkswood, wolfsbane or whatever it's called. You then slam the pot to the ground, shattering it beside the other one. You grab several of the plants by their stalks, shake the dirt from their roots and leave, leaving the professor to cautiously advance once you move to leave.";
			else:
				say "     'Stop,' the person wheezes as she tries to catch her breath after her frantic run into the greenhouse from the opposite direction you'd entered. 'I... uhh... That aconitum is college property. You can't take it. Drop it and get out of here.' Dressed in torn clothes and looking a little ragged around the edges, she still seems fully human. She looks to be about in her late twenties, has dark hair and an average build. She would probably look rather pretty if her blouse and dress weren't all torn and her hair weren't in such a mess.";
				WaitLineBreak;
				say "     Remaining at the ready, you ask her who she thinks she is to order you around like that. '[bold type]I[roman type] am Dr. Utah and [bold type]I[roman type] am a professor here. And [bold type]that[roman type] is college property. Now put the wolfsbane down and get out of here before you attract some unwanted trouble. I'm willing to be a little tolerant with you given the circumstances, but it won't last long.'";
				say "     She tries to sound intimidating, but is clearly nervous and keeps several yards away from you. Figuring she's scared of a battle-hardened survivalist such as yourself, you [if weapon object of Player is not journal]wave your [weapon object of Player] in her direction[else]shake your fist menacingly at her[end if]. You growl that the college has already gone to hell and that you need this monkswood, wolfsbane or whatever it's called. You then slam the pot to the ground, shattering it beside the other one. You grab several of the plants by their stalks, shake the dirt from their roots and rush off, leaving the professor to cautiously advance once you move to escape.";
		else:
			if UtahGender is 1:
				say "     'Stop,' the person wheezes as he tries to catch his breath after his frantic run into the greenhouse from the opposite end of the passageway. 'I... ohh... wait, it's you. What are you doing here? And what do you want with that? That aconitum is college property. You can't take it.' Dressed in torn clothes and still looking a little ragged around the edges, Dr. Utah has at least managed to remain human since you've freed him. Seeing him again, you take a moment to look him over. He looks to be about in his late twenties, has dark hair and an average build. He would probably look pretty handsome if his suit weren't all torn and the scruff on his face were shaved.";
				WaitLineBreak;
				say "     Relaxing a little, you tell him that you just want the plant and that he should let you have it in return for freeing him. 'I appreciate your assistance and I've been very tolerant, but you can't take that plant. It's very toxic and is quite dangerous. Just put the wolfsbane down and get out of here before you attract some unwanted trouble. I'm willing to be a little tolerant with you given the circumstances, but it won't last long.'";
				say "     He tries to sound intimidating, but is clearly nervous and keeps several yards away from you. Figuring he's scared of a battle-hardened survivalist such as yourself, you [if weapon object of Player is not journal]wave your [weapon object of Player] in his direction[else]shake your fist menacingly at him[end if]. You growl that the college has already gone to hell and that you need this monkswood, wolfsbane or whatever it's called. You then slam the pot to the ground, shattering it beside the other one. You grab several of the plants by their stalks, shake the dirt from their roots and leave, leaving the professor to cautiously advance once you move to leave.";
			else:
				say "     'Stop,' the person wheezes as she tries to catch her breath after her frantic run into the greenhouse from the opposite end of the passageway. 'I... ohh... wait, it's you. What are you doing here? And what do you want with that? That aconitum is college property. You can't take it.' Dressed in torn clothes and still looking a little ragged around the edges, Dr. Utah has at least managed to remain human since you've freed her. Seeing her again, you take a moment to look her over. She looks to be about in his late twenties, has dark hair and an average build. She would probably look rather pretty if her blouse and dress weren't all torn and her hair weren't in such a mess.";
				WaitLineBreak;
				say "     Relaxing a little, you tell her that you just want the plant and that she should let you have it in return for freeing her. 'I appreciate your assistance and I've been very tolerant, but you can't take that plant. It's very toxic and is quite dangerous. Just put the wolfsbane down and get out of here before you attract some unwanted trouble. I'm willing to be a little tolerant with you given the circumstances, but it won't last long.'";
				say "     She tries to sound intimidating, but is clearly nervous and keeps several yards away from you. Figuring she's scared of a battle-hardened survivalist such as yourself, you [if weapon object of Player is not journal]wave your [weapon object of Player] in her direction[else]shake your fist menacingly at her[end if]. You growl that the college has already gone to hell and that you need this monkswood, wolfsbane or whatever it's called. You then slam the pot to the ground, shattering it beside the other one. You grab several of the plants by their stalks, shake the dirt from their roots and leave, leaving the professor to cautiously advance once you move to leave.";
		ItemGain wolfsbane by 1;
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

It is not temporary.

instead of using wolfsbane:
	say "     You shouldn't mess with that stuff. Nermine needs it for your cure. Besides, isn't it poisonous? Hey... waitaminit.";

the scent of wolfsbane is "     The wolfsbane has a strong scent that makes you sick to your stomach.".


Part 2 - Getting the Knife

Table of GameEventIDs (continued)
Object	Name
Getting the Knife	"Getting the Knife"

Getting the Knife is a situation.
ResolveFunction of Getting the Knife is "[ResolveEvent Getting the Knife]". The level of Getting the Knife is 7. Getting the Knife is inactive.
Sarea of Getting the Knife is "Warehouse".

to say ResolveEvent Getting the Knife:
	say "     Doing your best to circumvent the creatures roaming around here, you make your way to the address Nermine provided. It is a non-descript warehouse like so many others in this area. You start looking around, trying to find a way into the building, only to be interrupted by a growl behind you. Turning around, you find yourself facing off with a large, muscled beast. Were he not so tall, you would call him stocky, nearly as wide as he is tall, but all muscle. He has a battered security company jacket on his animalistic body. He is covered in dark fur with a few lighter patches. His face narrows into a dark muzzle with lighter fur above his brow and at his shoulders. He growls angrily as he watches you, clearly intent on keeping you from breaking into the warehouse. You spot the company logo on his clothing - Wolverine Security.";
	challenge "Wolverine Guard";
	if fightoutcome < 20: [player won]
		say "     You manage to knock the wolverine out, leaving you free to search for a way inside.";
		say "[wrgetknife]";
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     The obsessed wolverine strikes you down to the floor and growls as he strikes you again and again. His slavering muzzle drips saliva onto you as he snaps those crushing jaws at you. He batters you until he's satisfied that you won't dare return and then finally drives you away from the warehouse he's so vigilantly guarding.";
		if HP of Player > 0, now HP of Player is HP of Player / 2;
		say "     Driven off by the lumbering monstrosity, you will have to try coming back another time if you want to try getting the knife.";
	else if fightoutcome is 30: [fled]
		say "     Driven off by the lumbering monstrosity, you will have to try coming back another time if you want to try getting the knife.";

to say wrgetknife:
	say "     Checking around the building, you find a half-open window along one side of the warehouse. It is quite high up, but you thankfully there are some old crates you can stack to get up to it. After managing to get inside, you start looking around. Thankfully, there's not much being stored in here right now, so it doesn't take you very long to find the shipping crate with the silver knife in it.";
	say "     The knife seems a little unusual when compared to the other items you've seen around Nermine's store. The handle is rather plain and made of wood, with only a few swirls carved into it. The blade is about ten inches long and has a slight curve to it. The silver blade shows some tarnish, but appears to still have a keen edge to it. Uncertain why Nermine would care for such a thing when compared to the more ornate items in the lot, you shrug and put it away.";
	ItemGain silver knife by 1;
	let bonus be ( intelligence of Player + perception of Player - 20 ) divided by 2;
	let dice be a random number from 1 to 20;
	if bonus + dice > 18:
		say "     You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
		say "You are about to head out when you realize that you're about to walk away from this collection of antiquities without even checking out any of the others. Just because Nermine doesn't want any of them doesn't mean they can't be of use to you. You flip through the auction list. It appears the items come from an estate sale and while most of them are nothing of interest to you, one of the photos catches your eye. Finding the crate, you break into it and pull out the torso mannequin with a chainmail vest on it. Now that might come in handy, you muse as you head out, feeling a little closer to being rid of your cursed affliction.";
		increase score by 20;
		ItemGain chainmail vest by 1;
	else:
		say "     Having gotten what you came for, you make a hasty exit from the warehouse. You feel a little closer to being rid of your cursed affliction.";
	now wrcurseNermine is 6;
	increase score by 20;
	now Getting the Knife is resolved;


[Silver Knife moved to Core Mechanics/Weapons.i7x]

Table of Game Objects (continued)
name	desc	weight	object
"chainmail vest"	"A heavy chainmail vest that always seems to be a good fit thanks to nanite adjustment."	20	chainmail vest

chainmail vest is equipment. It is not temporary.
The AC of chainmail vest is 40.
The effectiveness of chainmail vest is 60.
The placement of chainmail vest is "body".
The descmod of chainmail vest is "You are wearing a chainmail vest that covers your torso and shoulders.".
The slot of chainmail vest is "body".

the scent of chainmail vest is "     There is little scent to the chainmail itself.".


Part 3 - Dinosaur Skeleton

Table of GameEventIDs (continued)
Object	Name
Dinosaur Skeleton	"Dinosaur Skeleton"

Dinosaur Skeleton is a situation.
ResolveFunction of Dinosaur Skeleton is "[ResolveEvent Dinosaur Skeleton]". The level of Dinosaur Skeleton is 9. Dinosaur Skeleton is inactive.
Sarea of Dinosaur Skeleton is "Museum".

wrdinoskel is a truth state that varies. wrdinoskel is usually false.

to say ResolveEvent Dinosaur Skeleton:
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
		if Player consents:
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
		if weapon object of Player is silver knife, unwield silver knife silently;
		ItemLoss all silver knife silently;
		if humanity of Player < 100:
			SanBoost 1;
			increase humanity of Player by ( 100 - humanity of Player ) / 2;
		now HP of Player is HP of Player / 2;
		increase morale of Player by 5;
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
		if weapon object of Player is silver knife, unwield silver knife silently;
		ItemLoss all silver knife silently;
		now wrcurseNermine is 10;
	else:
		say "     As you turn and run, the speedy wereraptor makes a final charge and swipes her claws at you. This knocks the potion from your hand, sending it tumbling to the ground and breaking. With its scent in the air, your revulsion kicks in and you move quickly to get away, the transformed professor fleeing as well. When you stop and try to catch your breath now that you're far from the smell of it, you realize that your silver knife is missing as well. You suspect it's somehow already found its way back to Nermine. With your cure gone and your payment made, you get the feeling that you're on your own now.";
		if weapon object of Player is silver knife, unwield silver knife silently;
		ItemLoss all silver knife silently;
		now wrcurseNermine is 10;


to say wrcurseaccept:
	if UtahGender is 2:
		say "     Looking down at the bottle of poisonous aconite and the silver knife that makes your skin crawl just to look at it, you reject them. Your wereraptor body knows they are cursed and seek to kill you, not save you. You hurl the bottle fast and far, sending over the balcony to the floor far below. Dr. Utah gives a triumphant, hissing laugh and strides forward, running her taloned hands over your body.";
		say "     'Excellent! Let us begin so the wereraptors may rise again, new and greater than before.' Saying this, she digs her claws into her own arm, causing her blood to flow down her arm before holding it out to you. 'Come, accept my blood into you. Accept the power of these bones into you. Become the wereraptor!'";
		say "     With the scent of her blood and her arousal in the air, your excitement builds and you press your [if wrcursestatus is 4]mouth[else]muzzle[end if] to the wound, lapping up the flowing blood and feeling it seep into you. The wereraptor hisses as you drink, speaking too low for you to make out the words. The bones behind you rattle and you'd swear you hear the hiss of words from them as well. You open your body and mind up to the beast, the primitive, the raptor within you and it feels as if something is drawn into you as well as spreading throughout you. Dr. Utah moans as well and you sense somehow that she's undergoing a similar change [if wrcursestatus is 4]as your powerful wereraptor form restores itself, this time stronger than ever[else]though there is no visible difference on either of you[end if].";
		if BodyName of Player is not "Wereraptor" or player is not pure:
			now wrcursestatus is 7;
			now wrcurseactivity is true;
			say "     As the power of the raptor infuses you, you change, returning to your true form";
			wrcurserestore;
		say "     When the process is done, she pushes your head back and you both stumble apart and fall to the ground. You feel weak and tired. But you know that will pass, for you are a wereraptor now and the blood in you is strong now. You rise and look yourself over and while you see no differences, you know the power within you has grown and it cannot be taken from you now by foolish concoctions or a wretched kn-. You stop and look around, but can find no trace of the silver knife, leading you to conclude that it has somehow made its way back to Nermine.";
		say "     Dr. Utah rises and snarls triumphantly, a cry that you return. 'There is much to do before our kind can spread and rule the wretched mammals. I shall return to my office and begin the preparations. There are others I have infected who show promise and may soon accept the gift as you have,' she hisses softly, licking your muzzle. 'Those who accept it shall rise as we have and those who don't shall fall,' she concludes, running her hands over your body before turning and charging away.";
		say "     As the rush of your acceptance of the curse starts to fade, you wonder about the choice you've made, but do not feel that it is a mistake. The wereraptor is a part of you now and its instincts are a part of your mind. Its hunger is yours, but you are now in control. There is no point in denying these desires for you have made them your own.";
		AddNavPoint Paleontology Office;
[		say "***raptor sex goes here?";]
	else:
		say "     Looking down at the bottle of poisonous aconite and the silver knife that makes your skin crawl just to look at it, you reject them. Your wereraptor body knows they are cursed and seek to kill you, not save you. You hurl the bottle fast and far, sending over the balcony to the floor far below. Dr. Utah gives a triumphant, hissing laugh and strides forward, running his taloned hands over your body.";
		say "     'Excellent! Let us begin so the raptors may rise again, new and greater than before.' Saying this, he digs his claws into his own arm, causing his blood to flow down his arm before holding it out to you. 'Come, accept my blood into you. Accept the power of these bones into you. Become the wereraptor!'";
		say "     With the scent of his blood and his arousal in the air, your excitement builds and you press your [if wrcursestatus is 4]mouth[else]muzzle[end if] to the wound, lapping up the flowing blood and feeling it seep into you. The wereraptor hisses as you drink, speaking too low for you to make out the words. The bones behind you rattle and you'd swear you hear the hiss of words from them as well. You open your body and mind up to the beast, the primitive, the raptor within you and it feels as if something is drawn into you as well as spreading throughout you. Dr. Utah moans as well and you sense somehow that he's undergoing a similar change [if wrcursestatus is 4]as your powerful wereraptor form restores itself, this time stronger than ever[else]though there is no visible difference on either of you[end if].";
		if BodyName of Player is not "Wereraptor" or player is not pure:
			now wrcursestatus is 7;
			now wrcurseactivity is true;
			say "     As the power of the raptor infuses you, you change, returning to your true form";
			wrcurserestore;
		say "     When the process is done, he pushes your head back and you both stumble apart and fall to the ground. You feel weak and tired. But you know that will pass, for you are a wereraptor now and the blood in you is strong now. You rise and look yourself over and while you see no differences, you know the power within you has grown and it cannot be taken from you now by foolish concoctions or a wretched kn-. You stop and look around, but can find no trace of the silver knife, leading you to conclude that it has somehow made its way back to Nermine.";
		say "     Dr. Utah rises and snarls triumphantly, a cry that you return. 'There is much to do before our kind can spread and rule the wretched mammals. I shall return to my office and begin the preparations. There are others I have infected who show promise and may soon accept the gift as you have,' he hisses softly, licking your muzzle. 'Those who accept it shall rise as we have and those who don't shall fall,' he concludes, running his hands over your body before turning and charging away.";
		say "     As the rush of your acceptance of the curse starts to fade, you wonder about the choice you've made, but do not feel that it is a mistake. The wereraptor is a part of you now and its instincts are a part of your mind. Its hunger is yours, but you are now in control. There is no point in denying these desires for you have made them your own.";
		wrcurserestore;
		AddNavPoint Paleontology Office;
[		say "***raptor sex goes here?";]
	now wrcursestatus is 7;
	now wrcurseactivity is true;
	now wrcurseNermine is 12;


Section 5 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Wereraptor Curse Aftermath"	"Special"	""	Wereraptor Curse Aftermath rule	990	false

This is the Wereraptor Curse Aftermath rule:
	if wrcursestatus is listed in { 0, 1, 100 }:
		make no decision;
	if wrcursestatus is 2 and humanity of Player >= 10:
		make no decision;
	trigger ending "Wereraptor Curse Aftermath"; [Here it states, that the ending has been played.]
	if wrcursestatus is 2:
		if humanity of Player < 10:
			say "     As your infection is taking hold and your old self is failing, there is another struggle going on inside you. You can feel something wild and primal briefly struggle for freedom, but it is too old and weak, and soon fades away with an angry hiss at being denied its return.";
	else if wrcursestatus >= 3 and wrcursestatus <= 6:
		if Player has a body of "Wereraptor": [NOTE: The player being a shifter is ignored here (@Stadler#3007)]
			if humanity of Player < 10:
				say "     You succumb to the strange, saurian affliction, much of your mind becomes that of the primitive beast lurking inside you. You grow to live for the wild hunt for food and sex at night, mauling and cursing others. During the day, you revert back to whatever infection may be affecting you at the time, but the true you is only hiding behind it, waiting for nightfall to surprise your prey and strike.";
			else:
				say "     When rescue comes, you do your best to hide your saurian affliction. It is very difficult and takes a considerable toll on you as you fearfully hold it back each night, remaining in your daytime form. Thankfully, it does seem to understand the need to hide while you're at the military compound, though it doesn't like it. You hear the occasional mumble of anomalies with your testing, but nothing further seems to stem from it. In time, you are released and you make a new life for yourself. After the long stay at the facility, you have gained some ability to restrain your curse and it only rises during the full moon to strike. At these times, you don't hold it back, letting it run free. There are reports of monthly attacks by a lizard creature, but it is never caught as it cannot be tracked down after the hunt.";
		else:
			if humanity of Player < 10:
				say "     As your infection takes hold, it forces out the ancient wereraptor curse. The curse, too old and weak, cannot maintain itself as the nanites fully take over your body and mind.";
			else:
				say "     When rescue comes, you do your best to hide your saurian affliction. It is very difficult and takes a considerable toll on you as you fearfully hold it back each night, remaining in your daytime form. Thankfully, it does seem to understand the need to hide while you're at the military compound, though it doesn't like it. You hear the occasional mumble of anomalies with your testing, but nothing further seems to stem from it. In time, you are released and you make a new life for yourself. After the long stay at the facility, you have gained some ability to restrain your curse and it only rises during the full moon to strike. At these times, you don't hold it back, letting it run free. There are reports of monthly attacks by a lizard creature, but it is never caught as it cannot be tracked down after the hunt.";
	else if wrcursestatus is 7:
		if Player has a body of "Wereraptor": [NOTE: The player being a shifter is ignored here (@Stadler#3007)]
			if humanity of Player < 10:
				say "     As the last vestiges of your humanity are consumed by your wereraptor identity, you return to Dr. Utah and join [if UtahGender is 1]him[else]her[end if] in preparation for the rise of the new saurian people, remaining in the fallen city for a time. You, and others like yourselves, form into [']The Society of the Sickle[']. Training yourselves to gain partial control over your transformation, you are able to slip into society and hide yourselves among them, working in secret to infect others and add new members to your order. Seeming at first like other ferals, the spread of wereraptors goes largely unnoticed at first. But those who becomes wereraptors remain so, even if infected with other strains, keeping them among your ever-growing numbers.";
			else:
				say "     When you are taken to the military compound, you and Dr. Utah keep your more powerful night forms repressed with some effort. Your examination has you categorized both as an indeterminate lizard form. In time, you both are released and set up new lives together. Working in secret, you, and the others like yourselves you recruit, form into [']The Society of the Sickle[']. Training yourselves to gain partial control over your transformation, you are able to slip into society and hide yourselves among them, working in secret to infect others and add new members to your order.";
				if UtahGender is 2 and Libido of Doctor Utah > 0:
					say "     When the eggs Dr. Utah left in the city hatch, they seems like other ferals and go largely unnoticed at first. But those who becomes wereraptors remain so, even if infected with other strains, keeping them among your ever-growing numbers. ";
				else:
					say "     Seeming at first like other ferals, the spread of wereraptors goes largely unnoticed at first. But those who becomes wereraptors remain so, even if infected with other strains, keeping them among your ever-growing numbers. ";
				say "As the numbers of attacks from these 'night lizards' grow, you and Dr. Utah are pulled in as experts on prehistory and saurian creatures. But despite the many efforts and seemingly reasonable precautions you implement, the numbers continue to grow. With you both leading both sides, it is easy to ensure that your people rise in strength, pulling more people into your order and creating more sexy saurians to populate what will soon be your world.";
		else:
			if humanity of Player < 10:
				say "     As your infection takes hold, it tries to force out the ancient wereraptor curse, but cannot do so entirely. You spend much of your existence unaware of your dual identity, but every full moon, the hidden monster from the id rises and you transform into the Wereraptor to stalk the night. Often at these times, you meet with Dr. Utah in [if UtahGender is 1]his[else]her[end if] impressive night form and enjoy a lustful hunt together, adding others to your numbers.";
			else:
				say "     When rescue comes, your increased control over your curse allows you to hide your saurian affliction. It is takes some effort, but you manage to stay as you are while you're at the military compound. You hear the occasional mumble of anomalies with your testing, but nothing further seems to stem from it. In time, you are released and you make a new life for yourself. After the long stay at the facility, you find that your current form has managed to set itself as your regular, daytime form, though you are able to transform at will at night into a beautiful and sexy wereraptor. This allows you to integrate yourself into society and make a place for yourself from which to secretly live out your nightlife when you feel the urge to hunt.";
				say "     With the help of Dr. Utah and the others who have joined you, you form into [']The Society of the Sickle[']. Training yourselves to gain partial control over your transformation, you are able to hide among society and work in secret to infect others, adding new members to your order.";
				if UtahGender is 2 and Libido of Doctor Utah > 0:
					say "     When the eggs Dr. Utah left in the city hatch, they seems like other ferals and go largely unnoticed at first. But those who becomes wereraptors remain so, even if infected with other strains, keeping them among your ever-growing numbers. ";
				else:
					say "     Seeming at first like other ferals, the spread of wereraptors goes largely unnoticed at first. But those who becomes wereraptors remain so, even if infected with other strains, keeping them among your ever-growing numbers. ";
				say "As the numbers of attacks from these 'night lizards' grow, you and Dr. Utah are pulled in as experts on prehistory and saurian creatures. But despite the many efforts and seemingly reasonable precautions you implement, the numbers continue to grow. With you both leading both sides, it is easy to ensure that your people rise in strength, pulling more people into your order and creating more sexy saurians to populate what will soon be your world.";

Wereraptor ends here.
