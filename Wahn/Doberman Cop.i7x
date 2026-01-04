Version 6 of Doberman Cop by Wahn begins here.
[ Version 1 - Originally by Stripes]
[ Version 5.0 - Friendly option started]
[ Version 6.0 - New choice point and menu coding]
[ Version 6.1 - Area Entry fix ]

"Adds a Doberman infection and creature. This file pulls double-duty, with the creature/combat portions written by Stripes to run the Doberwoman Cop. The infection and ending portions of this file were written by Kaleem to deal with the Doberman NPC for the Firehouse content."

AlexandraInfectionArea is a number that varies.[@Tag:NotSaved]

an everyturn rule: [bugfixing rules for players that import savegames]
	if AlexandraInfectionArea is 0 and HP of Alexandra > 0: [she isn't roaming anymore]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Doberman Bitch":
				now MonsterID is y;
				now area entry is "Nowhere";
				break;
		now AlexandraInfectionArea is 1;

to say GenerateTrophyList_Doberman_Cop:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if "Whistle_Taken" is not listed in Traits of Alexandra: [special whistle]
		add "police whistle" to CombatTrophyList;
	if "Pills_Taken" is not listed in Traits of Alexandra: [special bag of pills]
		add "confiscated pills" to CombatTrophyList;
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "doberman bitch fur" to CombatTrophyList;
	if a random chance of (50 + LootBonus) in 100 succeeds: [common drop]
		add "food" to CombatTrophyList;
	if a random chance of (50 + LootBonus) in 100 succeeds: [common drop]
		add "water bottle" to CombatTrophyList;
	if a random chance of (20 + LootBonus) in 100 succeeds: [uncommon drop]
		add "medkit" to CombatTrophyList;
	if a random chance of (20 + LootBonus) in 100 succeeds: [uncommon drop]
		add "pepperspray" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 1 - Creature Responses		[Note: Combat related portions deal with the Doberwoman Cop.]

dobieresist is a number that varies.
dobielibido is a number that varies.

to say Dobermandesc:
	if dobielibido < 0:
		say "     The female Doberman cop has found you again and growls firmly for you to halt and be searched. She strides over with confidence, a determined look upon her long muzzle. It doesn't appear like she's yet recognized you, seeming too focused on being the cop to realize that you've met before.";
		say "     She's got a pretty normal human build overall, but with some traces of canine features, showing especially on her paw-like hands and feet. Her head is fully that of a Doberman Pinscher, with a long muzzle, and her short fur has the two-tone black and tan markings of the breed. She is wearing a light blue shirt, darker pants and a policeman's hat. She has an average-sized rack under her shirt.";
		say "[Alexandra_TalkOrFight]";
	else if dobielibido < 50:
		say "     A female Doberman in a cop's uniform charges at you, growling firmly for you to halt and be searched. In the brief moment before she's upon you, you can see that she's got a pretty normal human build overall, but with some traces of canine features, showing especially on her paw-like hands and feet. Her head is fully that of a Doberman Pinscher, with a long muzzle, and her short fur has the two-tone black and tan markings of the breed. She is wearing a light blue shirt, darker pants and a policeman's hat. She has an average-sized rack under her shirt.";
		say "[Alexandra_TalkOrFight]";
	else if dobielibido < 100 or inasituation is true:
		say "     The female Doberman cop has found you again and growls angrily, pulling out her nightstick. She's looking more disheveled and wild-eyed than before, her lusts starting to take hold of her. She still has her uniform on, but her shirt's half unbuttoned to show off her breasts better and you can see moist juices soaking her thighs. Despite her attempts to restrain it, her tail wags excitedly at having found you again, regardless of her apparent anger at you.";
	else:
		say "     The female Doberman cop has found you again and snarls at you. She's looking rather rougher now, with her shirt hanging open to expose her bare breasts and the crotch of her pants soaked and stained with her fluids. From the wild look in her eyes and the way she slaps her palm with her nightstick, it looks like she's through being the good cop and intends to come down on you hard. Her tail wags and you catch the scent of fresh arousal coming from her, clearly her body wanting to play some more - one way or another.";

to say Alexandra_TalkOrFight:
	if the player is bodily human and the player is facially human and the player is skintone human and the tail of Player is "":
		say "     '[one of]Halt, citizen[or]Freeze! Police[or]Stand down, citizen[at random]!' she calls out one last time, pulling out her nightstick.";
	else:
		say "     '[one of]Halt, mutant[or]Freeze! Police[or]Surrender, creature[or]Come quietly[or]I order you to stand down, mutant[at random]!' she calls out one last time, pulling out her nightstick.";
	if PlayerFucked of Alexandra is false:
		LineBreak;
		say "     [bold type]Given that the woman seems fairly sane, despite being nonhuman, and you're a (more or less) innocent citizen, you wonder if it might be a good idea to give in?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Show your peaceful side, don't provoke her and see where things go from there.";
		say "     ([link]N[as]n[end link]) - Fuck the police! Maybe even literally, these days...";
		if Player consents:
			say "[Alexandra_NonResist]";
		else:
			say "     Nah, why talk if violence can solve this matter much faster? You ready yourself for taking her down...";

to say dobermanattack:
	if dobielibido < 50:
		say "[one of]The Doberman cop fakes with her nightstick and clubs you in the jaw with her off hand![or]The canine cop jabs her nightstick into your gut, making you double over![or]The nightstick strikes your arm with a painful blow![or]The Doberwoman hooks her nightstick behind your knee and causes you to fall![or]The policewoman snaps at you with her vicious, canine muzzle![or]The police dog gives you a firm knock on the head with her nightstick![or]Knocking your arm aside with her nightstick, she steps in and rams her knee into your gut![at random]";
	else if dobielibido < 100 or inasituation is true:
		say "[one of]The Doberman cop fakes with her nightstick and clubs you in the jaw with her off hand![or]The canine cop jabs her nightstick into your gut, making you double over![or]The nightstick strikes your arm with a painful blow![or]The Doberwoman hooks her nightstick behind your knee and causes you to fall![or]The policewoman snaps at you with her vicious, canine muzzle![or]The police dog gives you a firm knock on the head with her nightstick![or]Knocking your arm aside with her nightstick, she steps in and rams her knee into your gut![or]The Doberman cop knocks your arm aside before groping you roughly![or]The sexually excited policewoman grinds her body against yours before realizing what she's doing and pushing you away![or]Getting behind you momentarily, the Doberwoman gives your ass a squeeze before jabbing her nightstick into your side![at random]";
	else:
		say "[one of]The Doberman cop fakes with her nightstick and clubs you in the jaw with her off hand![or]The canine cop jabs her nightstick into your gut, making you double over![or]The nightstick strikes your arm with a painful blow![or]The Doberwoman bashes her nightstick into your knee painfully![or]The policewoman bites you with her vicious, canine muzzle![or]The police dog gives you a hard blow to the head with her nightstick![or]Knocking your arm aside with her nightstick, she steps in and rams her knee into your gut![or]The Doberman cop knocks your arm aside before groping you roughly![or]The sexually excited policewoman grinds her body against yours while twisting your arm painfully![or]Getting behind you momentarily, the Doberwoman gives your ass a squeeze before bashing her nightstick against your ribs![or]The lustful cop pulls your face into her bosom, holding you there while she knees you in the gut![or]After hooking your leg with her nightstick to trip you, the Doberman grabs your head and presses it against her juicy cunt, forcing you to take in her arousing scent![at random]";

to say losetoDoberman:
	if dobielibido < 50:
		say "[losetodobie1]";
	else if dobielibido < 100 or inasituation is true:
		say "[losttodobie2]";
	else:
		say "[losetodobie3]";

to say Alexandra_NonResist:
	setmonster "Doberman Bitch";
	choose row MonsterID from the Table of Random Critters;
	if dobielibido is 0:
		say "     You drop your fighting stance and put your arms up, surrendering to the strange cop woman. For a moment, you think she's going to go all [']police brutality['] on you or pull some sexy [']bad cop['] routine, but instead she just looks you over briefly. 'It's good to see that you've still got some control in there. Things are really crazy out there right now. Do you still remember your name? Where you lived and worked?' She asks you some basic questions, not to get the information but to make sure you can still remember it. Seeing how she seems at least somewhat stable, shall you risk talking to her some more or will you play it safe and keep your trap shut for now?";
		LineBreak;
		say "     [bold type]If you'd like to try making friends with her, you should talk to her. If you'd rather bide your time until you can deal with the strange Doberwoman, it'd be best to keep things to a minimum so she can't track you down later.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Try making friends.";
		say "     ([link]N[as]n[end link]) - Bide your time.";
		if Player consents:
			let bonus be (( charisma of Player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Charisma Check):[line break]";
			if diceroll + bonus >= 16:
				LineBreak;
				say "     Deciding to risk it, you respond cordially, answering her questions in a friendly manner while trying to strike up a conversation with her. At first, she remains curt with you, but her loneliness in this situation wins out and she starts to open up. 'My name's Officer Friedrich, but I guess you can call me Alexandra. It's good to run into someone who's sane and friendly. All too often, and the more the longer this goes on, I meet infected people who've let themselves run wild with their changes. But I can't give up. Just before communications went down entirely, the emergency reports said that the military would be sent in. We've just got to hold out,' she says, a bit of desperation in her voice. You both fall silent for a while She pours some water from a thermos into the lid and passes it to you. 'Don't worry, it's safe,' she says, drinking down the rest.";
				say "     'Look, you're the first stable person I've seen in days. You try to keep it together, please. When this is done, I want to know that I've gotten at least one person out of this mess. I'm holed up in what's left of my station. You should come by sometime. I'd really appreciate the company.' She gives you some quick directions to the [bold type]Police Station Twelve[roman type] and tells you to stop by when you get a chance.";
				now dobielibido is -100;
				now fightoutcome is 19;
				AddNavPoint Police Station Twelve;
				move Alexandra to Police Station Twelve;
				now HP of Alexandra is 50;
				now area entry is "Nowhere";
				increase score by 20;
			else:
				LineBreak;
				say "Deciding to give it a shot, you try to strike up a conversation with her while responding to her questions. You try to win her over, but end up coming across like you're trying to pick up the cop that's pulled you over for speeding. She largely ignores your attempts to be friendly, seeming too focused on her perceived duties to respond.";
				now dobielibido is -1;
		else:
			LineBreak;
			say "     Suspecting that the infection has affected her mind, given how she's transformed and acting, you respond calmly, but are careful not to divulge anything that might put you or the bunker at risk. As your talking to her, your eyes wander from time to time to her bosom, catching a faint scent of arousal coming from her. It seems she's feeling the effects of the infection as well. Perhaps you can take advantage of that when you're better prepared to put her in her place. 'Eyes up here,' she growls, noticing your lecherous gaze.";
			now dobielibido is 1;
	else if dobielibido < 0:
		say "     You drop your fighting stance and put your arms up, surrendering to the strange cop woman again. It takes her a few moments to recognize you, shaking her single-minded focus on her duty. 'I thought I told you to stay off the streets. It's good to see you've still got some control in there, but it's not safe. If you keep roaming around, something's going to get you eventually. How are you holding up, citizen? Do you still remember your name? Where you lived and worked?' She starts up with her basic set of questions again, wanting to make sure your mind stays together.";
		let bonus be (( charisma of Player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Charisma Check):[line break]";
		if diceroll + bonus - dobielibido >= 16:
			LineBreak;
			say "     Again trying to reach her, you respond cordially, answering her questions in a friendly manner while trying to strike up a conversation with her. At first, she remains curt with you, but this time you're able to get through to her as her loneliness in this situation wins out and she starts to open up. 'My name's Officer Friedrich, but I guess you can call me [bold type]Alexandra[roman type]. It's good to run into someone who's sane and friendly. All too often, and the more the longer this goes on, I meet infected people who've let themselves run wild with their changes. But I can't give up. Just before communications went down entirely, the emergency reports said that the military would be sent in. We've just got to hold out,' she says, a bit of desperation in her voice. You both fall silent for a while.";
			say "     She pours some water from a thermos into the lid and passes it to you. 'Don't worry, it's safe,' she says, drinking down the rest. 'Look, you're the first stable person I've seen in days. You try to keep it together, please. When this is done, I want to know that I've gotten at least one person out of this mess. I'm holed up in what's left of my station. You should come by sometime. I'd really appreciate the company.' She gives you some quick directions to the [bold type]Police Station[roman type] and tells you to stop by when you get a chance.";
			now dobielibido is -100;
			AddNavPoint Police Station Twelve;
			now HP of Alexandra is 50;
			now area entry is "Nowhere";
			increase score by 20;
		else:
			LineBreak;
			say "You attempt again to strike up a conversation with her while responding to her questions. You try to win her over, but end up coming across like you're trying to pick up the cop that's pulled you over for speeding. She largely ignores your attempts to be friendly, seeming too focused on her perceived duties to respond.";
			decrease dobielibido by 2;
	else:
		LineBreak;
		say "     You drop your fighting stance and put your arms up, surrendering to the strange cop woman. For a moment, you think she's going to go all [']police brutality['] on you or pull some sexy [']bad cop['] routine, but instead she just looks you over briefly. 'It's good to see that you've still got some control in there. Things are really crazy out there right now. Do you still remember your name? Where you lived and worked?' She asks you some basic questions, not to get the information but to make sure you can still remember it.";
	say "     'You need to keep it together until rescue can come,' she continues, tapping you firmly on the shoulder. 'I want you to return to your home, take cover and wait this thing out.";
	say "[weaponconf]";
	say "     And with that said, she turns and heads off, leaving you feeling a little more focused[if Libido of Player > 50] and maybe a little disappointed you didn't get any fun with the sexy cop[end if][if dobielibido is -2]. At least it seems you've made a new friend in this messed up world[end if].";
	SanBoost 12;
	now combat abort is 1;

to say losetodobie1:		[low-lust player loss]
	choose row MonsterID from the Table of Random Critters;
	if dobieresist is 0:
		say "[Alexandra_NonResist]";
	else if Libido of Player >= 110:
		if dobielibido < 1, now dobielibido is 1;
		say "***Not written yet, but may be needed in the future. Player lost due to excess libido.";
		let fine be 8 + ( dobieresist * 2 ) + ( HP entry - monsterHP );
		let timepenalty be 3;
		if dobieresist > 4, increase timepenalty by 1;
		decrease freecred by fine;
		if freecred < 0, now freecred is 0;
		SanBoost 10;
		extend game by ( 0 - timepenalty );
	else if HP of Player > 0:
		if dobielibido < 1, now dobielibido is 1;
		let fine be 4 + ( dobieresist * 2 ) + ( HP entry - monsterHP );
		let timepenalty be 2;
		if dobieresist > 4, increase timepenalty by 1;
		say "     Deciding it'd be best to stop and surrender, you drop your fighting stance and put up your arms. She growls and keeps a close eye on you. For a moment, you think she's going to go all [']police brutality['] on you or pull some sexy [']bad cop['] routine, but instead she looks you over sternly. 'I can see that you've at least still got a little control in there. Still, you were resisting arrest. You need to get a grip on yourself and hold on until rescue comes.' She pulls out a pad and quickly writes something out. 'Since I can't really detain you right now, I'm giving you a ticket and ordering you back to your home. You need to keep it together, take cover and wait this mess out until rescue comes.";
		say "[weaponconf]";
		say ".' She shoves the ticket into your hand, turns and heads off. More than a little confused[if Libido of Player > 50] and slightly disappointed sexually[end if], but feeling a bit calmer, you look it over the ticket. It says something about a fine of [special-style-2][fine][roman type] freecred and a penalty of [special-style-2][timepenalty * 3][roman type] hours of community service.";
		decrease freecred by fine;
		if freecred < 0, now freecred is 0;
		SanBoost 10;
		extend game by ( 0 - timepenalty );
	else:
		if dobielibido < 1, now dobielibido is 1;
		let fine be 8 + ( dobieresist * 3 ) + ( HP entry - monsterHP );
		let timepenalty be 3;
		if dobieresist > 4, increase timepenalty by 1;
		say "     After the Doberman cop strikes her final blow, she knocks you to the ground and presses her nightstick at the back of your neck to hold you down firmly. She growls deeply and knees you in the kidneys for good measure. For a moment, you think she's going to go all [']police brutality['] on you or pull some sexy [']bad cop['] routine, but instead she looks you over sternly. 'I'm not sure if you can understand me in there,' she growls as she holds you down, 'but you need to keep it together and hold out until rescue can come. I know things are crazy out there, but you can't give in to it.' You are too sore from the fight to do more than groan in response as she gets off you and nudges you onto your back with her foot while pulling out a notepad.";
		say "     'Since I can't really detain you right now, I'm giving you a ticket and ordering you back to your home. You need to get your head on straight or you'll end up a sex monster like the others out there. The police band stated that the National Guard would be called in, so rescue is on the way. You need to get a grip, take cover and wait this mess out until rescue comes";
		say "[weaponconf]";
		say ".' She tosses the ticket onto your prone body, turns and heads off. More than a little confused[if Libido of Player > 50] and slightly disappointed sexually[end if], but feeling a bit calmer, you look it over the ticket. It says something about a fine of [special-style-2][fine][roman type] freecred and a penalty of [special-style-2][timepenalty * 3][roman type] hours of community service.";
		decrease freecred by fine;
		if freecred < 0, now freecred is 0;
		SanBoost 10;
		extend game by ( 0 - timepenalty );
	if dobielibido > 0:
		decrease dobielibido by 5;
		if dobielibido < 1, now dobielibido is 1;

to say losttodobie2:		[mid-lust player loss]
	choose row MonsterID from the Table of Random Critters;
	let fine be 0;
	let timepenalty be 0;
	if dobieresist is 0:
		say "     You drop your fighting stance and put your arms up, surrendering to the canine policewoman. From the way she looks at you and licks her muzzle, a part of you hopes she'll give in to her lusts with you. She walks up to you with a sexy sway to her hips, but knocks your legs out from under you, pinning your arms behind your back. 'Rrrr! I'm tempted to really show you how much I appreciate your earlier stunt, but I'm trying to keep it together. And you should be too. Since you're obviously able to control yourself enough to not fight, there may still be hope for you.' You feel one of her paws grope your ass before it's pulled away quickly. 'Sh- Look, we both need to keep it together until rescue can come,' she continues. 'I'm ordering you to take cover and wait this thing out.'";
		say "[weaponconf]";
		say "     And with that said, she turns and heads off, leaving you feeling a little more focused[if Libido of Player > 50] and maybe a little disappointed you didn't get any fun with the sexy cop[end if].";
		SanBoost 12;
	else if Libido of Player >= 110:
		say "***Not written yet, but may be needed in the future. Player lost due to excess libido.";
		say "[weaponconf]";
		let fine be 8 + ( dobieresist * 2 ) + ( HP entry - monsterHP );
		let timepenalty be 3;
		if dobieresist > 4, increase timepenalty by 1;
		SanBoost 10;
	else if HP of Player > 0:
		let fine be 4 + ( dobieresist * 2 ) + ( HP entry - monsterHP );
		let timepenalty be 2;
		if dobieresist > 4, increase timepenalty by 1;
		say "     Deciding it'd be best to stop and surrender, you drop your fighting stance and put up your arms. She growls and keeps a close eye on you, licking her muzzle with a grin of pleasure. From the look she give you, a part of you hopes she'll give in to her lusts with you. She walks up to you with a sexy sway to her hips, but knocks your legs out from under you, pinning your arms behind your back. 'Rrrr! I'm tempted to really show you how much I appreciate your earlier stunt, but I'm trying to keep it together. And you should be too. But you've been resisting arrest,' she growls in your ear, giving your ass a squeeze. 'Sh- Look, we both need to keep it together until rescue can come,' she continues. 'Since I can't really detain you right now, I'm giving you a ticket and ordering you back to your home. You need to keep it together, take cover and wait this mess out until rescue comes.";
		say "[weaponconf]";
		say "     She shoves the ticket into your hand, turns and heads off. More than a little confused[if Libido of Player > 50] and slightly disappointed sexually[end if], but feeling a bit calmer, you look it over the ticket. It says something about a fine of [special-style-2][fine][roman type] freecred and a penalty of [special-style-2][timepenalty * 3][roman type] hours of community service.";
		SanBoost 10;
	else:
		let fine be 8 + ( dobieresist * 3 ) + ( HP entry - monsterHP );
		let timepenalty be 3;
		if dobieresist > 4, increase timepenalty by 1;
		say "     After the Doberman cop strikes her final blow, she knocks you to the ground and presses her nightstick at the back of your neck to hold you down firmly. She growls deeply and knees you in the kidneys twice for good measure. From the grin on her muzzle and the lustful licking of your muzzle, a part of you hopes she'll give in to her lusts with you. 'Rrrr! I'm not sure if you can understand me in there,' she growls as she holds you down, 'but I'm really tempted to show you how much I appreciate your earlier stunt. But I'm trying to keep it together, and you should be too. 'I'm not sure if you can understand me in there,' she growls as she holds you down, 'but you need to keep it together and hold out until rescue can come. I know things are crazy out there, but you can't give in to it.'";
		say "     'As much as I'd like to detain you and keep you all to myself,' she says with a soft rumble in your ear while a paw slides over your ass before groping your groin, before being pulled away quickly. 'Sh- I know it's crazy out here, but you're not making my job any easier.' She gives you a firm knee to the kidneys. 'So I'm giving you a ticket and ordering you back to your home. You need to get your head on straight or you'll completely end up a sex monster like the others out there. The police band stated that the National Guard would be called in, so rescue is on the way. You need to get a grip, take cover and wait this mess out until rescue comes.";
		say "[weaponconf]";
		say "     She tosses the ticket onto your prone body, turns and heads off. More than a little confused[if Libido of Player > 50] and slightly disappointed sexually[end if], but feeling a bit calmer, you look it over the ticket. It says something about a fine of [special-style-2][fine][roman type] freecred and a penalty of [special-style-2][timepenalty * 3][roman type] hours of community service.";
		SanBoost 10;
	decrease freecred by fine;
	if freecred < 0, now freecred is 0;
	extend game by ( 0 - timepenalty );
	decrease dobielibido by 5;
	if dobielibido < 1, now dobielibido is 1;

to say losetodobie3:		[high-lust player loss]
	project the figure of Alexandra_naked_frown_icon;
	choose row MonsterID from the Table of Random Critters;
	let fine be 0;
	let timepenalty be 0;
	if dobieresist is 0:
		say "     You drop your fighting stance and put your arms up, surrendering to the canine policewoman. Your thoughts that she might go easy on you for surrendering are knocked out of your head as she bashes you with her nightstick, sending you to the ground. While you're still dazed, she grips your wrists and locks you in some handcuffs around a [one of]street sign[or]lamp post[or]exposed pipe[or]telephone pole[or]bicycle post[at random] before giving you another kick to the gut. 'Oh, I've been looking forward to finding you again,' she growls. 'Here I am, trying to keep it together and you keep getting me all worked up. Well, it's time I get a little relief,' she says, nipping her muzzle close to your face.";
	else:
		say "     As you give in to the canine policewoman, she grabs you roughly and throws you to the ground. For good measure, she gives you another blow from her nightstick. It's clear that you've pushed her too far and now her peaceful attitude's gone. She grabs your wrists and handcuffs you around a [one of]street sign[or]lamp post[or]exposed pipe[or]telephone pole[or]bicycle post[at random] before giving you another kick to the gut. 'Oh, I've been looking forward to finding you again,' she growls. 'Here I am, trying to keep it together and you keep getting me all worked up. Well, it's my turn to have a little fun,' she says, snapping her canine muzzle inches from your face.";
	let dobieaction be 0;
	if Player is herm:
		if a random chance of 3 in 5 succeeds:
			say "[dobieride]";
		else if anallevel is 3 and a random chance of 1 in 4 succeeds:
			say "[dobiensanal]";
		else:
			say "[dobiensvag]";
	else if Player is male:
		if anallevel is 3 and a random chance of 1 in 3 succeeds:
			say "[dobiensanal]";
		else:
			say "[dobieride]";
	else if Player is female:
		if anallevel is 3 and a random chance of 1 in 4 succeeds:
			say "[dobiensanal]";
		else:
			say "[dobiensvag]";
	else:
		if anallevel is 3 and a random chance of 1 in 3 succeeds:
			say "[dobiensanal]";
		else:
			decrease HP of Player by wdam entry * 2;
			say "     The female Doberman keeps you pinned to the ground with your ass in the air and gropes your crotch, but growls in frustration as she finds nothing there at all. She gives your ass a hard slap and starts to laugh. 'You do all that work to get me worked up and then you end up like this. Leaving me with nothing to play with at all,' she growls angrily, pushing you down hard. 'What god-damned use are you to me now, you scum?' Taking her nightstick, she strikes you with it several times, focusing on slapping blows across your increasingly tender rear. 'That, you stupid wretch. Maybe a proper spanking will slap some sense into you, you piece of trash!'";
	say "[weaponconf]";
	let fine be 8 + ( dobieresist * 3 ) + ( HP entry - monsterHP );
	let timepenalty be 3;
	if dobieresist > 4, increase timepenalty by 1;
	say "     She then writes out a ticket for you, roughly pinching your jaw and stuffing it in your mouth before uncuffing you. She grabs you and drags you to your feet before shoving you away. 'Now get out of here, you trash. Slink back to your hole and don't come out until the rescue comes,' she growls. As you stumble off, you cough out the wad of paper and look it over. It says something about a fine of [special-style-2][fine][roman type] freecred and a penalty of [special-style-2][timepenalty * 3][roman type] hours of community service.";
	decrease freecred by fine;
	if freecred < 0, now freecred is 0;
	extend game by ( 0 - timepenalty );
	if dobielibido < 1, now dobielibido is 1;

to say dobieride:
	say "     The female Doberman keeps you pinned down on your back and grinds her hips down on your lap, quickly getting a rise out of your [cock size desc of Player] [Cock of Player] cock. After removing the intervening clothes, she takes a hold of your erection and lowers her juicy pussy to rub across it, quickly soaking your shaft in her scent. As the motion across your loins and that scent fill your senses, you pull at the cuffs, wanting to grab her and force her down onto you but unable. She grins down at you, teasing you a little longer before finally taking what she wants just as badly as you now, releasing a bark of pleasure as your throbbing maleness slides into her. She rides you hard and fast in her search for some relief from her excessive lust. Her small claws dig into your shoulders as she roughly uses you.";
	say "     Despite your trapped situation, you cannot help but feel darkly proud at how you've turned the restrained cop into a lust-crazy hound. The sight of her panting and drooling like a bitch in heat while her lovely brown breasts sway openly as she rides you is a lovely sight to behold. As she starts to howl in ecstasy, you can feel her cunt clamp down around you, milking you into orgasming as well. You blast your hot load into the canine bitch, filling her with your seed until it overflows around your shaft and runs down her thighs as she pulls off you. The female cop stands back up and looks you over, fingers buried in her well-seeded muff. 'Mmm... that's much better. Now, while I'm tempted to just leave you there for the other creatures to use,' she says with a dark grin on her muzzle, 'I do need those cuffs back for my next vi... ah... perp. Besides, that only means I might get to track you down again if you need another reminder to stay off the streets,' she adds, giving you a hard kick to the ribs to punctuate her threat. 'You piece of trash!'";
	NPCSexAftermath Alexandra receives "PussyFuck" from Player;

to say dobiensvag:
	say "     The female Doberman keeps you pinned to the ground with your ass in the air and gropes your crotch, getting a moan from you as she rubs over your pussy. She drives a couple of fingers into you, getting your cunt to quiver and drip with juices. 'How does a little payback sound, you little slut?' she growls, fingering you harder until you moan again. As she's thrusting [if Cunt Tightness of Player < 5]a pair of fingers[else if Cunt Tightness of Player < 9]three fingers[else]her whole fist[end if] into your [cunt size desc of Player] cunt, she grinds her canine muff against her nightstick. You can see and smell her hot juices running down that hard, black rod. Noticing where you're looking, she grins and moves to slide the end of the nightstick slowly between your ass cheeks[if anallevel is 3], grinding it against your pucker[end if].";
	say "     'Looking for something long and hard to fill you, aren't you?' she teases before trailing it lower and sinking it into your cunt to replace her fingers. You groan as the cool length is pushed into you and she starts fucking you with it. You moan and start pushing back onto it despite yourself. While the nightstick is hard and you can feel the end sliding in and out, the length is too smooth and slick to provide proper stimulation and it is too hard to make it a fully enjoyable fit. Overall, it provides some satisfaction but also longing for more, making you ride it harder, much to the canine cop's enjoyment. She is more than happy to pound it into you hard and to call you a slut while doing it. Eventually, it all becomes too much and you cum hard, adding a rush of your own juices across the slick rod and sending them running down your thighs and her gripping paw[if Player is male] and you spray your hot seed across the dirty ground[end if].";
	WaitLineBreak;
	say "     She pulls the nightstick slowly from you and gives it a fast swing, splattering the juices from it across your back. Her own thighs, you notice, as also soaked, having fingered herself to orgasm while abusing your now aching pussy. 'Mmm... now that's much better. Now, while I'm tempted to just leave you there for the other creatures to use,' she says with a dark grin on her muzzle, 'I do need those cuffs back for my next vi... ah... perp. Besides, that only means I might get to track you down again if you need another reminder to stay off the streets,' she adds, giving you a hard kick to the ribs to punctuate her threat. 'You piece of trash!'";
	NPCSexAftermath Player receives "PussyDildoFuck" from Alexandra;

to say dobiensanal:
	if Player is herm:		[herm version]
		say "     The female Doberman keeps you pinned to the ground with your ass in the air and gropes your crotch, getting a moan from you as she rubs over your cock and cunt as if trying to decide what she'd like to do with you. She strokes over your [Cock of Player] shaft and fingers your [cunt size desc of Player] pussy, getting you hard and dripping. 'How does a little payback sound, you asshole?' she growls as her paw fondles you harder until you moan again. As she's working her paw over you, she grinds her canine muff against her nightstick. You can see and smell her hot juices running down that hard, black rod. Noticing where you're looking, she grins and moves to slide the end of the nightstick slowly between your ass cheeks, pausing to grind it against your pucker.";
		say "     'Looking for something long and hard to fill you, aren't you?' she teases. 'Well, I think you need a proper reminder to stay off my streets,' she growls, pushing harder on the nightstick and spreading your tight asshole open. You groan at the sudden intrusion and pull at the cuffs securing you, her juices only slightly easing the passage of the cool, hard length into you. She grins sadistically and pounds the nightstick into you in firm thrusts, that have you groaning in both pain and pleasure. The pounding against your prostate makes your cock twitch and dribble pre, but hard rod is too hard to make it fully enjoyable. Reaching around with her free paw, she strokes your dribbling [cock size desc of Player] cock and calls you a slut for being hard while getting assfucked. Eventually, it all becomes too much and you cum hard, spraying your hot load across the ground beneath you as she gives your prostate a firm grind with the end of the nightstick, having zeroed in on that sensitive spot.";
	else if Player is male:
		say "     The female Doberman keeps you pinned to the ground with your ass in the air and gropes your crotch, getting a moan from you as she rubs over your cock. She strokes over your [cock size desc of Player] [Cock of Player] shaft, getting you hard and dripping. 'How does a little payback sound, you asshole?' she growls as her paw fondles you harder until you moan again. As she's working her paw over you, she grinds her canine muff against her nightstick. You can see and smell her hot juices running down that hard, black rod. Noticing where you're looking, she grins and grinds her juicy pussy against it harder. 'Mmm... you want that, don't you?' she moans sensually while taking a particularly slow slide against the black rod. You can see the way her folds grip that hard length and smell her aroused scent, making you want that juicy cunt of hers all the more. Moaning that you need it, she grins darkly.";
		say "     'Remember, you asked for it,' she says, moving the nightstick away to give you a clear view of her canine cunt. But when you feel the hard press of the nightstick at your asshole, you cry out and shake your head. As she pushes harder, you groan at the sudden intrusion and pull at the cuffs securing you, her juices only slightly easing the passage of the cool, hard length into you. She grins sadistically pounds the nightstick into you in firm thrusts, growling 'You asked for it, scum!' as you groan in both pain and pleasure beneath her. The pounding against your prostate makes your cock twitch and dribble pre, but hard rod is too hard to make it fully enjoyable. Reaching around with her free paw, she strokes your dribbling [cock size desc of Player] cock and calls you a slut for being hard while getting assfucked. Eventually, it all becomes too much and you cum hard, spraying your hot load across the ground beneath you as she gives your prostate a firm grind with the end of the nightstick, having zeroed in on that sensitive spot.";
	else if Player is female:				[female version]
		say "     The female Doberman keeps you pinned to the ground with your ass in the air and gropes your crotch, getting a moan from you as she rubs over your pussy. She drives a couple of fingers into you, getting your cunt to quiver and drip with juices. 'How does a little payback sound, you little slut?' she growls, fingering you harder until you moan again. As she's thrusting [if Cunt Tightness of Player < 5]a pair of fingers[else if Cunt Tightness of Player < 9]three fingers[else]her whole fist[end if] into your [cunt size desc of Player] cunt, she grinds her canine muff against her nightstick. You can see and smell her hot juices running down that hard, black rod. Noticing where you're looking, she grins and moves to slide the end of the nightstick slowly between your ass cheeks[if anallevel is 3], grinding it against your pucker[end if]. 'Looking for something long and hard to fill you, aren't you?' she teases. 'Well, here you go,' she growls, pushing harder on the nightstick and spreading your tight asshole open.";
		say "     You groan at the sudden intrusion and pull at the cuffs securing you, her juices only slightly easing the passage of the cool, hard length into you. She grins sadistically and pounds the nightstick into you in firm thrusts, that have you groaning in both pain and pleasure and trying to ride it harder, much to the canine cop's enjoyment. She is more than happy to pound it into you hard and to call you a slut while doing it. Between the hard thrusts of the rigid rod and her eager paw working your pussy, you find yourself overwhelmed. Your vagina clenches down around her fingers with every hard push of the nightstick into your abused anus. Even the discomfort of her fucking you with the smooth, slender club doesn't offset the pleasure from her working your dripping cunt to a crashing orgasm as the pain and the pleasure become one. You release a rush of your own juices that run down your thighs and over her paw.";
	else:								[neuter version]
		say "     The female Doberman keeps you pinned to the ground with your ass in the air and gropes your crotch, but growls in frustration as she finds nothing there at all. She gives your ass a hard slap and starts to laugh. 'You do all that work to get me worked up and then you end up like this. Leaving me with nothing to play with at all,' she growls angrily, pushing you down hard. 'Well, not quite nothing, it seems,' she adds, nipping at your neck as she grinds her pussy against the grip of her nightstick, shuddering in pleasure as the handle is pushed into her. Given her ease at taking it, it seems she's done this a few times recently in an attempt to relieve her aching loins and now you'll get to enjoy the show. She rides the short handle, letting its rippled surface stimulate her. Noticing where you're looking, she makes a show of slowly pulling back off of it with a wet pop. She then turns the nightstick around, bringing the slick handle to your asshole.";
		say "     'That's right. There's still one thing left for me to play with,' she chuckles, pushing the weapon's grip into your anus. You groan at the sudden intrusion and pull at the cuffs securing you, her juices only slightly easing the passage of the cool, hard handle into you. With one paw on the short section of the rod, she brings her pussy into position to grind against the lower length, causing the handle inside you to shift with her every motion. She grins sadistically and grinds herself along the smooth, slick surface of the nightstick and sliding the handle around inside your stuffed anus, causing you to groan in both pain and pleasure as her arousing scent fills the air. She gives your ass more slaps, each which makes your hips jerk, grinding the nightstick against her in response. She keeps this treatment up until she finally cums hard, sending her juices running down the nightstick to pool on the ground beneath it.";
	WaitLineBreak;
	say "     She pulls the nightstick slowly from you and wipes it off across your back. Her own thighs, you notice, are soaked with the canine's juices from her own orgasm while abusing your now aching anus. 'Mmm... now that's much better. Now, while I'm tempted to just leave you there for the other creatures to use,' she says with a dark grin on her muzzle, 'I do need those cuffs back for my next vi... ah... perp. Besides, that only means I might get to track you down again if you need another reminder to stay off the streets,' she adds, giving you a hard kick to the ribs to punctuate her threat. 'You piece of trash!'";
	NPCSexAftermath Player receives "AssDildoFuck" from Alexandra;

to say weaponconf:
	if dirty whip is owned or infected sword is owned:
		if dobielibido is -100:
			say "     The policewoman's canine nose twitches and she quickly grabs you by the wrist, keeping you from going anywhere. 'That weapon you're carrying is infectious and therefore contraband. I cannot allow you to keep it.' A little reluctant to part with it, but not wanting to jeopardize the friendship you've just started to make with her, you give it up to her. ";
		else if dobielibido < 1:
			say "     The policewoman's canine nose twitches and [if dobielibido < 50]she quickly grabs you by the wrist,[else]grinds a knee into your lower spine while still[end if] twisting your arm behind your back. 'That weapon you're carrying is infectious and therefore contraband. I cannot allow you to keep it.' As you start to protest, she twists your arm harder and pushes you down with a growl. ";
			increase dobielibido by 2; [lose some ground in convincing her]
			if dobielibido >= 0, now dobielibido is -1;
		else if dobielibido >= 100 and inasituation is false:
			say "     The policewoman's canine nose twitches and she gives you another kick for good measure. 'That weapon you've got is infection and therefore contraband. I can't let someone like you keep it.' As you start to protest, pulling at your handcuffed arms, she grinds her heel into your face. 'Or what, scum? Settle down, or I might even consider using them on you to see just what they do.' ";
		else if dobieresist is 0:					[did not resist]
			say "     The policewoman's canine nose twitches and [if dobielibido < 50]she quickly grabs you by the wrist,[else]grinds a knee into your lower spine while still[end if] twisting your arm behind your back. 'That weapon you're carrying is infectious and therefore contraband. I cannot allow you to keep it.' As you start to protest, she twists your arm harder and pushes you down with a growl. ";
		else if Libido of Player >= 110:		[lustfully submitted]
			say "***Not written yet, but may be needed in the future. Player lost due to excess libido.";
		else if HP of Player > 0:			[resisted, then submitted]
			say "     The policewoman's canine nose twitches and [if dobielibido < 50]she quickly grabs you by the wrist,[else]grinds a knee into your lower spine while still[end if] twisting your arm behind your back. 'That weapon you're carrying is infectious and therefore contraband. I cannot allow you to keep it.' As you start to protest, she twists your arm harder and pushes you down with a growl. ";
		else:							[lost the fight]
			say "     The policewoman's canine nose twitches and [if dobielibido < 50]she quickly grabs you by the wrist,[else]grinds a knee into your lower spine while still[end if] twisting your arm behind your back. 'That weapon you're carrying is infectious and therefore contraband. I cannot allow you to keep it.' As you start to protest, she twists your arm harder and pushes you down with a growl. ";
		if dirty whip is owned and infected sword is owned: [both items]
			if dobielibido >= 100 and inasituation is false:
				say "She takes your whip and sword, making sure to use an evidence bag to get them. 'I appreciate your cooperation in this matter,' she says, giving you a final kick. 'Don't get in my way again!'";
			else if dobieresist is 0:
				say "She takes your whip and sword away, making sure to grab them using an evidence bag. 'I appreciate your cooperation, but I cannot allow such weapons to be used unchecked. We should be trying to slow the infection, not spread it faster!'";
			else if Libido of Player >= 110:		[lustfully submitted]
				say "***Not written yet, but may be needed in the future. Player lost due to excess libido.";
			else if HP of Player > 0:			[resisted, then submitted]
				say "She takes your whip and sword away, making sure to grab them using an evidence bag. 'Just think about the damage you could have caused with these. You're too much of a loose cannon to be trusted with them. I cannot allow such weapons to be used unchecked. We should be trying to slow the infection, not spread it faster!'";
			else:							[lost the fight]
				say "She takes your whip and sword away, making sure to grab them using an evidence bag. 'I can't let a half-crazed fool like you run around with something like this. You cannot be trusted with something this dangerous and I cannot allow such weapons to be used unchecked. We should be trying to slow the infection, not spread it faster!'";
			unwield dirty whip silently;
			ItemLoss dirty whip by 1;
			unwield infected sword silently;
			ItemLoss infected sword by 1;
		else if dirty whip is owned:
			if dobielibido >= 100 and inasituation is false:
				say "She takes your whip, making sure to use an evidence bag to get it. 'I appreciate your cooperation in this matter,' she says, giving you a final kick. 'Don't get in my way again!'";
			else if dobieresist is 0:
				say "She takes your whip away, making sure to grab them using an evidence bag. 'I appreciate your cooperation, but I cannot allow such weapons to be used unchecked. We should be trying to slow the infection, not spread it faster!'";
			else if Libido of Player >= 110:		[lustfully submitted]
				say "***Not written yet, but may be needed in the future. Player lost due to excess libido.";
			else if HP of Player > 0:			[resisted, then submitted]
				say "She takes your whip away, making sure to grab it using an evidence bag. 'Just think about the damage you could have caused with this. You're too much of a loose cannon to be trusted with it. I cannot allow such weapons to be used unchecked. We should be trying to slow the infection, not spread it faster!'";
			else:							[lost the fight]
				say "She takes your whip away, making sure to grab it using an evidence bag. 'I can't let a half-crazed fool like you run around with something like this. You cannot be trusted with something this dangerous and I cannot allow such weapons to be used unchecked. We should be trying to slow the infection, not spread it faster!'";
			unwield dirty whip silently;
			ItemLoss dirty whip by 1;
		else if infected sword is owned:
			if dobielibido >= 100 and inasituation is false:
				say "She takes your sword, making sure to use an evidence bag to get them. 'I appreciate your cooperation in this matter,' she says, giving you a final kick. 'Don't get in my way again!'";
			else if dobieresist is 0:
				say "She takes your sword away, making sure to grab them using an evidence bag. 'I appreciate your cooperation, but I cannot allow such weapons to be used unchecked. We should be trying to slow the infection, not spread it faster!'";
			else if Libido of Player >= 110:		[lustfully submitted]
				say "***Not written yet, but may be needed in the future. Player lost due to excess libido.";
			else if HP of Player > 0:			[resisted, then submitted]
				say "She takes your sword away, making sure to grab it using an evidence bag. 'Just think about the damage you could have caused with this. You're too much of a loose cannon to be trusted with it. I cannot allow such weapons to be used unchecked. We should be trying to slow the infection, not spread it faster!'";
			else:							[lost the fight]
				say "She takes your sword away, making sure to grab it using an evidence bag. 'I can't let a half-crazed fool like you run around with something like this. You cannot be trusted with something this dangerous and I cannot allow such weapons to be used unchecked. We should be trying to slow the infection, not spread it faster!'";
			unwield infected sword silently;
			ItemLoss infected sword by 1;

to say beattheDoberman:
	project the figure of Alexandra_naked_frown_icon;
	if dobielibido < 1, now dobielibido is 1;
	say "     Your last attack knocks away the policewoman's nightstick, sending it skittering across the ground as she's knocked down. She releases a canine whimper that she quickly stifles as she fails to get back up.";
	if dobielibido < 50:			[low-lust cop]
		say "[beatthedobie1]";
	else if dobielibido < 100 or inasituation is true:	[mid-lust cop]
		say "[beatthedobie2]";
	else:					[high-lust cop]
		say "[beatthedobie3]";


to say beatthedobie1:			[low-lust cop player victory]
	if Player is not neuter:
		say "     Looking her over, you wonder what you shall do with the canine woman now.";
		say "     [link](1)[as]1[end link] - Sex her up.";
		say "     [link](2)[as]2[end link] - Dominate her (nonsexually).";
		say "     [link](3)[as]3[end link] - Nothing, just leave.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to fuck, [link]2[end link] to dominate or [link]3[end link] to flee.";
		if calcnumber is 1:
			LineBreak;
			say "     With a sudden, decisive move, you grab her firmly, twisting her body and pinning her down onto the grimy asphalt, one arm locked over her midsection to hold her struggling form still. Her dark eyes, fierce and challenging moments ago, now widen in surprise as her powerful canine body is forced beneath yours. The struggle ceases, replaced by a tense stillness, her heavy breaths misting in the cool air. Your other hand, free now, begins to roam, claiming the firm curve of her ass through the rough fabric of her police uniform pants. A low growl rumbles in her throat, a sound of protest quickly morphing into something softer, more equivocal. Your fingers move to the buttons of her stiff blue shirt, working quickly, then tearing. Fabric rips with a satisfying RIIIP, sending several buttons skittering across the pavement, exposing the warm, furred flesh of her breasts, pushing them bare and inviting as your palm cups one, kneading the soft weight.";
			say "     Your fingers slide beneath the waistband of her uniform pants, then down past the rough cotton of her panties, finding the hot, slick fur around her pussy. Alexandra bites her lip, a desperate attempt to suppress the rising moans, but her canine body, already buzzing with a new, potent libido, betrays her. A low moan escapes, her hips twitching instinctively under your touch. You press two fingers into her increasingly wet pussy, pushing past the matted fur, finding her tight, eager slit. Her eyes roll back in her head, pupils dilating with rapidly escalating pleasure. Deep, guttural pants tear from her throat, her entire form writhing, no longer fighting, but yielding completely to your invading hand. She is lost to the rising tide of lust, unable to resist your further advances, her initial defiance utterly consumed by the overwhelming need for release.";
			say "     [bold type]Now that you've got her worked up, shall you [if Player is male]fuck her[else]keep fingering her[end if] or get that muzzle and long tongue of hers to work pleasing you?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Penetrate her.";
			say "     ([link]N[as]n[end link]) - Put her tongue to work.";
			if Player consents:
				if Player is male:
					say "     With Alexandra now thoroughly pinned, her earlier struggle fully subdued by the insistent probing of your fingers, you shift your weight, maintaining control as you maneuver her. A firm grip on her hip, and the doberwoman is leveraged onto all fours, her strong, anthro canine body adjusting instinctively to the position. Telling her to be a good bitch, your words are a low rumble meant to assert dominance over the subdued cop. Her police belt buckles are unfastened, the heavy leather strap undone, and with a swift tug, her uniform pants and panties are peeled down her powerful legs, to where her knees rest on the ground. Her tail, previously a rigid indicator of defiance, now gives a tentative flick as her naked, furred ass is presented, slick and inviting.";
					say "     A growl, low and defiant, rumbles in Alexandra's chest as you lean in, teasing her with words that suggest she's just another horny doggy, eager for a dicking. 'I'm not just a dog,' she mutters, attempting to refute your words, though the tremor in her voice betrays her. Yet, as your fingers, slick from her juices, delve deeper into her doggystyle from behind, working their magic on her already sensitized pussy, the growl quickly morphs into a soft, eager moan. Her hips begin to undulate, a clear, desperate plea for more, all resistance melted away by the intoxicating combination of physical dominance and intense pleasure. The subdued cop's tail now wags with a frantic, undeniable excitement, betraying the primal instincts she can no longer suppress.";
					WaitLineBreak;
					say "     Your [cock size desc of Player] [Cock of Player] cock, throbbing and hard, aligns with her glistening pussy. With a grunt, you slide into the doberwoman, the deep, wet warmth of her inner walls gripping you instantly. A gasp tears from Alexandra's throat, a sharp yip of pure canine pleasure as your powerful thrusts begin, driving deep into her eager doggy cunt. The rhythm is primal, the doggystyle position natural to a canine, each powerful stroke enforcing her new, willing role as a bitch to sheathe a cock in. Her large, firm breasts bounce with the force of your pounding. Her hips meet your thrusts, bucking back with an escalating frenzy, a clear indication of how long she has been resisting these powerful sexual instincts.";
					say "     She moans and yips, a symphony of pleasure, her body twitching uncontrollably with each intense plunge. Having suppressed her instincts for so long, Alexandra responds with a raw, unleashed power, her doggy cunt milking your [Cock of Player] shaft relentlessly. Her inner walls clench and spasm around you, pushing her to a powerful orgasm, coming in waves that steal her breath and leaving her panting lustfully. Your own climax builds, a roaring inferno in your loins, the sensation of her tight, wet embrace driving you to the brink. With a final, guttural roar, you blast your hot load deep inside her, filling her completely with a thick, satisfying creampie. As her final, powerful orgasm washes through her, a shuddering release that racks her entire frame, the dobie bitch collapses to the ground, passing out, her body utterly spent after her much-needed, well-deserved release.";
					increase AlexandraCreampieCount by 1;
					NPCSexAftermath Alexandra receives "PussyFuck" from Player;
				else:
					say "     With Alexandra now thoroughly pinned, her earlier struggle fully subdued by the insistent probing of your fingers, you shift your weight, maintaining control as you maneuver her. A firm grip on her hip, and the doberwoman is leveraged onto all fours, her strong, anthro canine body adjusting instinctively to the position. Telling her to be a good bitch, your words are a low rumble meant to assert dominance over the subdued cop. Her police belt buckles are unfastened, the heavy leather strap undone, and with a swift tug, her uniform pants and panties are peeled down her powerful legs, to where her knees rest on the ground. Her tail, previously a rigid indicator of defiance, now gives a tentative flick as her naked, furred ass is presented, slick and inviting.";
					say "     A growl, low and defiant, rumbles in Alexandra's chest as you lean in, whispering that she's just another horny doggy, eager for a dicking. 'I'm not just a dog,' she mutters, attempting to refute your words, though the tremor in her voice betrays her. Yet, as your fingers, slick from her juices, delve deeper into her pussy doggystyle from behind, enforcing her natural position as a bitch to be taken and working their magic on her already sensitized wetness, the growl quickly morphs into a soft, eager moan. Her hips begin to undulate, a clear, desperate plea for more, all resistance melting away by the intoxicating combination of physical dominance and intense pleasure. The subdued cop's tail now wags with a frantic, undeniable excitement, betraying the primal instincts she can no longer suppress.";
					WaitLineBreak;
					say "     You plunge two, then three fingers deep inside the doberwoman, working them rhythmically, stretching her tight pussy to its limit. Alexandra's moans grow louder, more desperate, her head thrashing against the grimy asphalt. Each thrust of your fingers finds a new depth of pleasure within her, her body arching and convulsing around your hand. You continue to whisper that she's being a good dog now, the words seeming to intensify her pleasure. Her protests, now mere breathless whimpers, are swallowed by the rising tide of her lust. Her large, firm breasts bounce with her frantic movements, glistening with sweat, her dark nipples hard points of pure arousal. She is losing herself completely, her canine libido unleashed.";
					say "     Alexandra's hips begin to buck with furious intensity, pushing her pussy onto your invading hand, milking your fingers with desperate hunger. Her tail wags violently over her raised ass, accompanying her increasingly guttural cries. You continue to pound your fingers deep inside her, finding every sensitive spot, driving her towards a precipice of sensation. Her body tenses, muscles coiling, and a raw, guttural scream rips from her lungs as the first powerful orgasm seizes her. Her entire frame convulses around your hand, her pussy clamping down with shocking force, waves of exquisite pleasure racking her. But you don't stop. You continue to pump your fingers, driving her straight into a second, then a third, her body twitching uncontrollably with each successive wave until she collapses, gasping and spent, her fur damp, her pussy still twitching around your fingers.";
					NPCSexAftermath Alexandra receives "PussyDildoFuck" from Player;
			else:
				if Player is male:
					say "     With Alexandra thoroughly lost to the rising tide of lust, her initial defiance utterly consumed by the overwhelming need for release, you shift your body, maintaining dominance. Your hands cup the sides of her head, firm yet guiding, and you press her muzzle down, bringing her furry face between your legs. Her ears twitch, a low, questioning whine escaping her throat, but she offers no real resistance. The musky scent of your arousal fills her nostrils, mingling with the potent aroma of her own sex. She parts her lips, a small part of her still seems to want to resist for a moment, a faint tremor running through her powerful canine body, before giving in entirely. Her tail, previously rigid with suppressed defiance, now gives a tentative flick as she slides her muzzle over your throbbing cock, her doggy tongue darting out to test the slick, warm flesh. You adjust your hips, guiding her, letting her mouth envelop your hardness.";
					say "     Her moans become wet, guttural sounds, muffled around your straining cock, each rhythmic pump of her throat sending shivers of pleasure through your shaft. One of her paws, quick and instinctive, slides between her own powerful legs, replacing your now-absent fingers, plunging her own digits deep into her wet pussy. She begins to stroke herself with a frantic, desperate energy, her inner walls clenching around her fingers in time with the insistent thrusts of her muzzle against your groin. You lean down, stroking her ears, whispering words of praise - 'good bitch,' 'horny doggy' - as her suppressed instincts fully unleash themselves. You face-fuck the doberwoman, her long muzzle and doggy tongue sliding over your [cock size desc of Player] [Cock of Player] cock with increasing desperation, the intensity of her self-stimulation driving her to the brink. Her large, firm breasts heave, glistening with sweat, her entire body twitching with escalating pleasure, her mouth working tirelessly on your cock.";
					WaitLineBreak;
					say "     Your own climax builds rapidly, the tight, hot embrace around your shaft and the relentless motion of her mouth urging you closer and closer to the edge. The doberwoman's self-fingering becomes a blur of motion, her pussy milking her own digits with furious intensity. With a final, powerful series of thrusts, a raw groan tears from your throat as you pull out and your hot load blasts across her muzzle, coating her furred face and filling her mouth. Even as you empty yourself, her body convulses, a sharp, guttural cry escaping her as the overwhelming pleasure of being face-fucked and showered with your cum, combined with her own frantic self-stimulation, sends her into a singular, powerful orgasm. She bites her lip, a last attempt to control the cries, before collapsing to the ground, passing out, her body utterly spent after her much-needed, powerful release.";
					NPCSexAftermath Alexandra receives "OralCock" from Player;
				else:
					say "     With Alexandra thoroughly lost to the rising tide of lust, her initial defiance utterly consumed by the overwhelming need for release, you shift your body, maintaining dominance. Your hands cup the sides of her head, firm yet guiding, and you press her muzzle down, bringing her furry face between your legs. Her ears twitch, a low, questioning whine escaping her throat, but she offers no real resistance. The musky scent of your arousal fills her nostrils, mingling with the potent aroma of her own sex. She parts her lips, a small part of her still seems to want to resist for a moment, a faint tremor running through her powerful canine body, before giving in entirely. Her tail, previously rigid with suppressed defiance, now gives a tentative flick as she slides her long, canine tongue tentatively across your wet pussy, exploring the slick, warm folds. You adjust your hips, guiding her, letting her long tongue delve into your sensitive flesh.";
					say "     Alexandra's moans become wet, guttural sounds, muffled between licks, each rhythmic stroke of her long tongue sending shivers of pleasure through your clit. One of her paws, quick and instinctive, slides between her own powerful legs, plunging her own digits deep into her wet pussy, beginning to stroke herself with a frantic, desperate energy. Her inner walls clench around her fingers in time with the insistent thrusts of her tongue against your groin. You lean down, stroking her ears, whispering words of praise - 'good bitch,' 'horny doggy' - as her suppressed instincts fully unleash themselves. You begin to grind your pussy against the doberwoman's muzzle, letting her long, doggy tongue work wonders, delving deep into your core, tasting and teasing every inch of your sensitive flesh.";
					WaitLineBreak;
					say "     Your own climax builds rapidly, the intense cunnilingus and the relentless motion of her long tongue urging you closer and closer to the edge. The doberwoman's self-fingering becomes a blur of motion, her pussy milking her own digits with furious intensity. With a final, powerful grind, your body convulses, a sharp, guttural cry escaping you as the overwhelming pleasure of being eaten out sends you into a singular, powerful orgasm. You gasp, soaking her muzzle and spilling your hot juices over her eager tongue, which she laps up lustfully. Her body shudders uncontrollably, a long, drawn-out tremor that slowly subsides, leaving you gasping and utterly spent, your pussy still twitching from her skilled tongue. Alexandra, receiving the full force of your cum, then lets out a powerful, guttural yip as her own final, powerful orgasm washes through her, her body collapsing to the ground, passing out after her much-needed, powerful release.";
					NPCSexAftermath Alexandra receives "OralPussy" from Player;
			increase dobielibido by 20;
		else if calcnumber is 2: [dominate]
			LineBreak;
			say "     Grabbing her firmly, you pin her down against the ground. The canine cop tries for a few moments to shake you off, until the last of her fighting will is used up (for now) and she just sinks down to bide her time. Now that you've literally got her at the bottom, face pushed onto the dirty street, you mock and berate her, saying that she's a shitty cop and isn't strong enough to make it out on the streets. Or maybe she isn't even a cop anymore - just a needy bitch that jumps people because she's hungry for being pounded. You continue to go into that for a while, mocking her and saying that she should just abandon the pretense and be the horny bitch she's trying to hide so badly.";
			say "     At first she snarls at these harsh words, twitching her head but not even able to shake it properly in her position, and you keep at it until you see the thoughts start to take root in her. With a growl, you let go and stand up, then tell her to think about what you said. Without a look back, you walk off and leave her lying on the filthy ground.";
			increase dobielibido by 20;
		else if calcnumber is 3:
			say "     Pushing thoughts for other actions aside, you give her a final kick to make sure she won't bother you further for the moment before walking away.";
	else:
		say "     Satisfied that she won't bother you further for the moment, you give her a final kick before walking away.";

to say beatthedobie2:			[mid-lust cop player victory]
	say "     The Doberwoman moans, a deep, guttural sound that vibrates in her chest, and her powerful body sags to the ground, her knees hitting the rough asphalt with a dull thud. Her increased lust, a raw, undeniable force, takes hold, pulling her into a primal crouch. With trembling paws, she fumbles at the buckle of her police belt, quickly unfastening it. Her uniform pants, already loose from her aggressive movements, are pulled open, revealing the thick, matted fur of her pussy, swollen and glistening with copious pre-cum. No panties obscure the view; she clearly didn't bother with them today. Her fingers, quick and practiced, plunge into her own wet depths, beginning to stroke herself with a frantic, desperate energy. Head thrown back, a sharp moan escapes her lips, her eyes, usually dark and sharp, now hazy with lust, look up at you with a mix of apprehension and longing, her bare breasts heaving with each ragged breath. 'You bastard,' she grumbles, the words a breathless protest, though her hips begin to buck with an undeniable hunger, her fingers working faster inside her. 'This isn't... this isn't how it's supposed to go.'";
	say "     Pleased with what you've done to the once-stuffy cop, seeing her now reduced to a panting, self-fucking mess on the ground, you consider fooling around with her further. Clearly, Alexandra needs some more attention. Her uniform shirt, already abused from past encounters, hangs open, missing several buttons you vividly remember tearing off. It provides no cover for her large, firm breasts, which bounce with each frantic stroke of her fingers. Her muscular stomach is taut, slick with sweat, leading down to the powerful lines of her thighs, now spread wide, fully exposing her glistening sex. The rich, musky scent of her arousal, a potent blend of dog musk and fresh juices, fills the air, pulling at your senses. Her moans grow louder, more insistent, her voice cracking with suppressed pleasure as her fingers pump deeper inside her. The Doberwoman's defiant gaze meets yours again, her eyes now burning with a fierce, challenging desire, daring you to take the next step, even as her body begs for it.";
	if Player is not neuter:
		LineBreak;
		say "     [bold type]What do you want to do to your captive bitch?[roman type][line break]";
		say "     [link](1)[as]1[end link] - [if Player is male]Fuck[else]Finger[end if] that juicy cunt of hers.";
		say "     [link](2)[as]2[end link] - [if Player is male]Give her a titty-fuck[else]Get the doggy tongue of hers to please you[end if].";
		say "     [link](3)[as]3[end link] - Dominate her (nonsexually).";
		say "     [link](4)[as]4[end link] - Nothing, just leave her to her own lusts.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to get some pussy, [link]2[end link] for [if Player is male]a titty-fuck[else]oral[end if], [link]3[end link] to dominate her and mentally break her down, or [link]4[end link] to leave.";
		if calcnumber is 1:
			LineBreak;
			if Player is male:
				say "     With her hips bucking and her fingers working furiously inside her pussy, the Doberwoman is a trembling mess of aroused fur and muscle. You decide her self-ministrations have gone on long enough. Reaching down, you grab Alexandra firmly by the scruff of her neck, pulling her upwards. Her body, heavy with lust, resists for a moment, then yields, rising unsteadily to her feet. With a hand still grasping the soft fur at her nape, you steer her across the rough pavement, pushing her towards a grimy, graffiti-scarred wall. You growl for her to assume the position, voice low and commanding, asserting her new, debased role. She stumbles, her powerful legs unsteady, but obeys, spreading herself against the cold concrete like a suspect prepped for a pat-down. A quick push of your hands on the pants already undone leaves her naked, furred ass in full view. Tail raises slightly, a subconscious offering, even as a low growl of defiance rumbles in her chest.";
				say "     'You're the criminal, not me. You bastard,' Alexandra mutters, her voice rough, but her body betrays her, as you can see a line of matted fur on the insides of her thighs, leading up to her slick and exposed pussy. You take a few moments to tease her, running a hand over the taut curve of her ass, then sliding a slick finger into her hot, wet folds. She yips, a small, involuntary sound of pleasure, her tail wagging now with undeniable excitement. You toy with the dark pucker of her ass, slicking a finger and pressing gently, causing her to twitch. Leaning close, you whisper that she's just a horny doggy, pushing the words into her ear. A frustrated whimper escapes her, her head shaking slightly, trying to deny the truth, but her hips press back harder against your hand, begging for more. Her large, firm breasts, fully exposed, heave with rapid breaths, glistening with sweat as her lust becomes an undeniable force.";
				WaitLineBreak;
				say "     Your cock, throbbing and hard, aligns with her dripping pussy. Deciding she's had enough teasing and that you'd rather get on to the main event, you take her by the hips and drive your throbbing cock into her. A sharp gasp tears from Alexandra's throat, quickly followed by a primal bark and a string of wet moans as you bury yourself deep within her. The sensation is immense, that canine pussy a tight, hot sheath gripping your shaft with an almost painful intensity. Her powerful legs tremble, with her bracing herself against the wall, her hips bucking back into your rhythm. You pound into the doberwoman from behind, her body a willing, writhing canvas of pleasure, her tail now wagging furiously, an animalistic indicator of her surrender.";
				say "     You take a perverse delight in seeing the once upstanding policewoman debase herself in her raw need. You fuck Alexandra hard, her continuous yips and moans filling the air, her doggy cunt milking your [Cock of Player] shaft relentlessly with each powerful thrust. Her internal muscles clench around you, the sensations stealing her voice, leaving her panting lustfully. Your own climax builds, a roaring inferno in your loins, the sensation of her tight, wet embrace driving you to the brink. With a final, guttural roar, you pump your hot load deep inside her, filling her completely with a thick, satisfying creampie. Even as your body shudders from the release, you remain balls-deep, your [cock size desc of Player] [Cock of Player] cock still throbbing within her wet heat. Your hand moves, finding her clit, swollen and hidden beneath a tangle of wet fur, and you begin to rub, firm and insistent, pushing her to the edge. Her body tenses, a guttural scream ripping from her as a powerful orgasm rocks her frame, milking your throbbing cock with incredible force. As her body slumps, utterly spent, you withdraw, leaving her to sag against the wall, a pool of sexual fluids collecting at her feet.";
				increase AlexandraCreampieCount by 1;
				increase dobielibido by 24;
				NPCSexAftermath Alexandra receives "PussyFuck" from Player;
			else:
				say "     With her hips bucking and her fingers working furiously inside her pussy, the Doberwoman is a trembling mess of aroused fur and muscle. You decide her self-ministrations have gone on long enough. Reaching down, you grab Alexandra firmly by the scruff of her neck, pulling her upwards. Her body, heavy with lust, resists for a moment, then yields, rising unsteadily to her feet. With a hand still grasping the soft fur at her nape, you steer her across the rough pavement, pushing her towards a grimy, graffiti-scarred wall. You growl for her to assume the position, your voice low and commanding, asserting her new, debased role. She stumbles, her powerful legs unsteady, but obeys, spreading herself against the cold concrete like a suspect prepped for a pat-down. A quick push of your hands on the pants already undone leaves her naked, furred ass in full view. Her tail raises slightly, a subconscious offering, even as a low growl of defiance rumbles in her chest.";
				say "     'You're the criminal, not me. You bastard,' Alexandra mutters, her voice rough, but her body betrays her, as you can see a line of matted fur on the insides of her thighs, leading up to her slick and exposed pussy. You take a few moments to tease her, running a hand over the taut curve of her ass, then sliding a slick finger into her hot, wet folds. Alexandra yips, a small, involuntary sound of pleasure, her tail wagging now with undeniable excitement. You toy with the dark pucker of her ass, slicking a finger and pressing gently, causing her to twitch. Leaning close, you whisper that she's just a horny doggy, pushing the words into her ear. A frustrated whimper escapes her, her head shaking slightly, trying to deny the truth, but her hips press back harder against your hand, begging for more. Her large, firm breasts, fully exposed, heave with rapid breaths, glistening with sweat as her lust becomes an undeniable force.";
				WaitLineBreak;
				say "     Your fingers, slick with her juices, plunge deep inside Alexandra's dripping pussy. A sharp gasp tears from Alexandra's throat, quickly followed by a primal bark and a string of wet moans as you bury your hand within her. The sensation is immense, that canine pussy a tight, hot sheath gripping your digits with an almost painful intensity. Her powerful legs tremble, bracing herself against the wall, her hips bucking back into your rhythm. You pound into the doberwoman from behind, your hand working her body a willing, writhing canvas of pleasure, her tail now wagging furiously, an animalistic indicator of her surrender.";
				say "     You take a perverse delight in seeing the once upstanding policewoman debase herself in her raw need. You fuck Alexandra hard with your fingers, her continuous yips and moans filling the air, her doggy cunt milking your hand relentlessly with each powerful thrust of your fingers. Her internal muscles clench around your hand, the sensations stealing her voice, leaving her panting lustfully. Your own arousal builds, a roaring inferno, the sensation of her tight, wet embrace driving you to the brink. Your hand moves, finding her clit, swollen and hidden beneath a tangle of wet fur, and you begin to rub, firm and insistent, pushing her to the edge. Her body tenses, a guttural scream ripping from her as a powerful orgasm rocks her frame, milking your fingers with incredible force. As her body slumps, utterly spent, you withdraw your hand, leaving her to sag against the wall, a pool of sexual fluids collecting at her feet.";
				increase dobielibido by 20;
				NPCSexAftermath Alexandra receives "PussyDildoFuck" from Player;
		else if calcnumber is 2:
			LineBreak;
			if Player is male:
				say "     In the mood for something a little different, you pull out your cock and move overtop of Alexandra. The doberwoman's eyes, wide and hungry, lock onto your throbbing shaft, a low growl rumbling in her chest, but she offers no resistance as you grab her shirt. The fabric, already torn and missing buttons from previous encounters, gives way easily as you wrench it down off her shoulders, pinning her arms in place. Her large, firm breasts, now completely uncovered, heave with rapid breaths, their dark nipples hard and prominent. You straddle her, your legs to either side of her muscular body, ensuring she can't get away – though her glazed-over eyes and rapidly wagging tail suggest she has no desire to.";
				say "     With the limited movement allowed her, Alexandra's paws instinctively move to her crotch, plunging her fingers back into her wet, throbbing pussy. She begins to finger herself vigorously, her hips twitching and bucking against the ground. Her moans and yips grow louder, more insistent, her long tongue darting out, tasting the air. You press your throbbing cock between her breasts, nestling it deep into the warm, soft valley of her cleavage, the coarse fur around the mounds a tantalizing friction against your skin. The doberwoman lets out a guttural whimper as you begin sliding your shaft between her lovely, softly furred mounds, working them together, molding her bare breasts around your [cock size desc of Player] [Cock of Player] cock. You may be mistaken, but they seem a little larger, a little fuller, than when you first met her, swollen with nanite-fueled arousal, making for a very pleasant tittyfuck, the soft fur and warm flesh embracing you.";
				WaitLineBreak;
				say "     You take a twisted pleasure in seeing this once upstanding policewoman debase herself, lost to the lustful instincts she's been resisting for so long. Alexandra's head lolls back, her throat working, her long tongue darting out, licking at your glans each time it slides within reach, tasting your essence. Her fingers continue their furious work inside her pussy, driving her higher and higher, her body convulsing with each powerful stroke between her breasts. The growls and yips blend into a continuous, desperate plea, her powerful legs trembling, her entire form shuddering in response to your relentless assault. Her need for release is palpable, a raw, animalistic hunger that she no longer even attempts to hide.";
				say "     Eventually, Alexandra receives the reward she's eagerly licking for when you climax, blasting your hot load across her face and muzzle, as well as that licking tongue of hers, coating her dark fur in sticky cum. Her fingers drive hard into her pussy, frigging herself to a loud, guttural climax that leaves her almost passed out, her body twitching uncontrollably, utterly spent. You grin and give her ears a rough scritch, running your fingers through her matted fur, telling her she looks much better with your cum marking her dark fur, a clear sign of her new, debased role. She lies there, panting, a satisfied whimper escaping her as she slowly recovers from the overwhelming pleasure.";
				increase dobielibido by 20;
				NPCSexAftermath Player receives "Stroking" from Alexandra;
			else:
				say "     With Alexandra thoroughly lost to the rising tide of lust, her initial defiance utterly consumed by the overwhelming need for release, you shift your body, maintaining dominance. Your hands cup the sides of her head, firm yet guiding, and you press her muzzle down, bringing her furry face between your legs. Her ears twitch, a low, questioning whine escaping her throat, but she offers no real resistance. The musky scent of your arousal fills her nostrils, mingling with the potent aroma of her own sex. She parts her lips, her long, canine tongue darting out to test the slick, warm folds of your pussy. You adjust your hips, guiding her, letting her long tongue delve into your sensitive flesh.";
				say "     Alexandra yips happily, a small, eager sound, as she begins to slather her long, doggy tongue over your pussy, then dives deep into your cunt. Her moans become wet, guttural sounds, muffled between licks, each rhythmic stroke of her long tongue sending shivers of pleasure through your clit. One of her paws, quick and instinctive, slides between her own powerful legs, plunging her own digits deep into her wet pussy. She begins to stroke herself with a frantic, desperate energy, her inner walls clenching around her fingers in time with the insistent thrusts of her tongue against your groin. You lean down, stroking her ears, whispering words of praise - 'good bitch,' 'obedient doggy' - as her suppressed instincts fully unleash themselves. You take a twisted pleasure in seeing the once upstanding policewoman debase herself, lost to the lustful instincts she's been fighting for so long.";
				say "     You begin to grind your pussy against the doberwoman's muzzle, letting her long, doggy tongue work wonders, delving deep into your core, tasting and teasing every inch of your sensitive flesh. Her fingers continue their furious work inside her pussy, driving her higher and higher, her body convulsing with each powerful stroke of her tongue. The growls and yips blend into a continuous, desperate plea, her powerful legs trembling, her entire form shuddering in response to your relentless assault. Her need for release is palpable, a raw, animalistic hunger that she no longer even attempts to hide, her tongue working with increasing skill, using its long length to added advantage, diving deep into your cunt to lap up your juices.";
				say "     Your own climax builds rapidly, the intense cunnilingus and the relentless motion of her long tongue urging you closer and closer to the edge. The doberwoman's self-fingering becomes a blur of motion, her pussy milking her own digits with furious intensity. With a final, powerful grind, your body convulses, a sharp, guttural cry escaping you as the overwhelming pleasure of being eaten out sends you into a singular, powerful orgasm. You gasp, soaking her muzzle and spilling your fluids over her eager tongue, which she laps up lustfully. Her body shudders uncontrollably, a long, drawn-out tremor that slowly subsides, leaving you gasping and utterly spent, your pussy still twitching from her skilled tongue. Alexandra, receiving the full force of your femcum, then lets out a powerful, guttural yip as her own final, powerful orgasm washes through her, her body collapsing to the ground, passing out after her much-needed, powerful release.";
				increase dobielibido by 20;
				NPCSexAftermath Alexandra receives "OralPussy" from Player;
		else if calcnumber is 3: [dominate]
			LineBreak;
			say "     Grabbing her firmly, you pin her down against the ground. The canine cop tries for a few moments to shake you off, until the last of her fighting will is used up (for now) and she just sinks down to bide her time. Now that you've literally got her at the bottom, face pushed onto the dirty street, you mock and berate her, saying that she's letting her true self show, not acting so much like the shitty cop she was, and being more like the needy bitch you knew she had in her. You continue to go into that for a while, mocking her and saying that she should just discard all of the pretense. Both of you know she's just a horny animal after all!";
			say "     At first she snarls at these harsh words, twitching her head but not even able to shake it properly in her position, and you keep at it until you see the thoughts bury deeper into her psyche, eating away at her self-image. With a growl, you let go and stand up, then tell her to think about what you said. Without a look back, you walk off and leave her lying on the filthy ground.";
			increase dobielibido by 20;
		else:
			LineBreak;
			say "     You smile down at the lust-crazed Doberman policewoman, deciding to leave her to her own lusts. A dark corner of you is quite pleased with what's become of her.";
	else:
		LineBreak;
		say "     [bold type]What do you want to do to your captive bitch?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Dominate her (nonsexually).";
		say "     [link](2)[as]2[end link] - Nothing, just leave her to her own lusts.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 2:
			say "Choice? (1-2)>";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to dominate her and mentally break her down, or [link]2[end link] to leave.";
		if calcnumber is 1: [dominate]
			LineBreak;
			say "     Grabbing her firmly, you pin her down against the ground. The canine cop tries for a few moments to shake you off, until the last of her fighting will is used up (for now) and she just sinks down to bide her time. Now that you've literally got her at the bottom, face pushed onto the dirty street, you mock and berate her, saying that she's letting her true self show, not acting so much like the shitty cop she was, and being more like the needy bitch you knew she had in her. You continue to go into that for a while, mocking her and saying that she should just discard all of the pretense. Both of you know she's just a horny animal after all!";
			say "     At first she snarls at these harsh words, twitching her head but not even able to shake it properly in her position, and you keep at it until you see the thoughts bury deeper into her psyche, eating away at her self-image. With a growl, you let go and stand up, then tell her to think about what you said. Without a look back, you walk off and leave her lying on the filthy ground.";
			increase dobielibido by 20;
		else:
			LineBreak;
			say "     You smile down at the lust-crazed Doberman policewoman, deciding to leave her to her own lusts. A dark corner of you is quite pleased with what's become of her.";

to say beatthedobie3:			[high-lust cop player victory]
	choose row MonsterID from the Table of Random Critters;
	say "     The Doberwoman moans, a deep, guttural sound that vibrates in her chest, and her powerful body sags to the ground, her knees hitting the rough asphalt with a dull thud. Her increased lust, a raw, undeniable force, takes hold, pulling her into a primal crouch. This time, there is no hesitation, no subtle tremor of defiance. Her paws fly to her uniform shirt, ripping it open completely. Buttons, already hanging by threads from previous encounters, scatter across the pavement, leaving her large, firm breasts, heavy and swollen with arousal, completely bare and heaving with ragged breaths. Her tongue darts out, licking at the air, her dark eyes, no longer sharp or apprehensive, now burn with an unadulterated, desperate hunger that is almost terrifying in its intensity.";
	say "     With trembling paws, she fumbles at the buckle of her police belt, quickly unfastening it. Her uniform pants, already loose, are pushed down her powerful legs, then savagely kicked off, pooling around her ankles. No panties obscure the view; her thick, matted fur around her pussy is fully exposed, swollen and glistening with copious pre-cum. Her fingers plunge into her own wet depths, stroking herself with a frantic, desperate energy, her hips bucking, grinding against the ground. Her legs spread wide, parting the dark, engorged lips of her canine pussy in a wanton display. 'Come on, take me! Please, I don't care anymore,' she whimpers, the words thick with lust and surrender. 'Just give it to me, Boss. Make me yours. All yours.' Her moans and pants fill the air, her entire body trembling, begging for release, completely broken and fully submitted. You can't help but smile at what a fine slut you've made this cop into and try to decide how you'd like to use her.";
	if Player is not neuter:
		LineBreak;
		say "     [bold type]What do you want to do to your captive bitch?[roman type][line break]";
		say "     [link](1)[as]1[end link] - [if Player is male]Fuck[else]Finger[end if] that juicy cunt of hers.";
		say "     [link](2)[as]2[end link] - [if Player is male]Give her a titty-fuck[else]Get the doggy tongue of hers to please you[end if].";
		say "     [link](3)[as]3[end link] - Enjoy a 69 with the horny canine.";
		say "     [link](4)[as]4[end link] - Dominate her (nonsexually).";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>";
			get a number;
			if calcnumber < 1 or calcnumber > 4:
				say "Invalid choice. Type [link]1[end link] to get some pussy, [link]2[end link] for [if Player is male]a titty-fuck[else]oral[end if], [link]3[end link] for a 69,  or [link]4[end link] to dominate her.";
		if calcnumber is 1: [fuck/finger her]
			LineBreak;
			if Player is male:
				say "     With Alexandra's confession hanging heavy in the air, her naked body offered in utter surrender, you move closer. Your gaze sweeps over her, lingering on the powerful curves of her breasts, the taut muscles of her stomach, and the wet, matted fur of her exposed pussy. A soft, knowing smile plays on your lips. Reaching down, you gently push the doberwoman back, urging her to lie fully on the grimy pavement. She complies without hesitation, her powerful legs spreading wide, her pussy parting in a wanton display. You lean over her, your voice a low, dominant murmur as you tease her, asking if the bad doggy wants her bone. A soft canine whimper escapes her, and she nods eagerly, her eyes, hazy with pure lust, locked on your [cock size desc of Player] [Cock of Player] cock. You then tell her to guide it in, placing her paw on your shaft, asserting your control over the slutty cop.";
				say "     Alexandra's fingers, slick with her own juices, gently stroke your maleness, her paw guiding your hard shaft towards her glistening pussy. You lower yourself onto her, settling between her spread legs, her heat rising to meet you. She wraps her legs instinctively wrap around your waist, pulling you down, securing your position. You lean in, taking her muzzle in your hands, the fur rough against your skin, and bring her face close to yours. You tell her that she's a bad dog, your slutty, bad doggy bitch, thrusting into her hot and juicy cunt to punctuate each word. Alexandra releases a few panting yips of pleasure in response, her mouth opening slightly, her long tongue darting out to lick at your chin, her eyes rolling back in her head as you begin to pound into her, claiming her body completely.";
				WaitLineBreak;
				say "     You take your time with Alexandra, driving into her hot, juicy cunt with long, hard thrusts, savoring the doberwoman's complete descent into raw, uninhibited lust. She moans and pants beneath you, her long tongue eagerly lapping over your face, then diving deep into your mouth, kissing you with a primal hunger. Her arms wrap tightly around your torso, pulling you into every thrust, ensuring you pound her good and hard, just as her body craves. The cravings, which you've spent so long helping her unleash, now consume her. The powerful muscles of her pussy milk your cock with each deep stroke, squeezing and releasing, driving you both higher.";
				say "     The image of how much you've changed this once stuffy cop into a horny slut burns in your mind, fueling your passion. You drive hard into Alexandra again and again, burying yourself deep, her howls of pleasure echoing in the alley. With a final, guttural roar, you pump your hot load deep inside her, filling her completely with a thick, satisfying creampie. As your cum floods her, Alexandra arches her back, a raw, primal howl of release tearing from her lungs as her own powerful orgasm washes through her, her small claws digging into your shoulders and raking down your back. When you're finished, you pull out, leaving the doberwoman splayed on the ground, a trembling mass of fur and muscle, spent and utterly debased, a pool of sweat and sexual fluids collecting around her.";
				increase AlexandraCreampieCount by 1;
				increase dobielibido by 1;
				NPCSexAftermath Alexandra receives "PussyFuck" from Player;
			else:
				say "     With Alexandra's confession hanging heavy in the air, her naked body offered in utter surrender, you move closer. Your gaze sweeps over her, lingering on the powerful curves of her breasts, the taut muscles of her stomach, and the wet, matted fur of her exposed pussy. A soft, knowing smile plays on your lips. Reaching down, you gently push the doberwoman back, urging her to lie fully on the grimy pavement, her powerful legs spreading wide, her pussy parting in a wanton display. Leaning over her, your voice a low, dominant murmur asks if the bad doggy's bitch pussy needs attention. A soft canine whimper escapes Alexandra, and she nods eagerly, her eyes, hazy with pure lust, locked on your face. You then order her to lick herself like a proper bitch, giving her head a firm push towards her own crotch, asserting your control over the slutty cop.";
				say "     Alexandra hesitates only briefly, a faint tremor running through her powerful canine body, before bending around like a normal dog. She nuzzles at her own loins, giving her pussy a slow, tentative lick before diving fingers from both paw-hands back into herself, using the long tongue to lap at her clit. You kneel down beside her, observing the animalistic spectacle, savoring the cop's descent into pure, uninhibited lust. Her moans, pants, and whimpers of canine pleasure fill the air as she goes to town on herself, her tongue working with increasing skill. From the way she's looking at you, you can tell she's getting off on the fact that you're watching, as well as on her own tonguework. You push a few fingers into your own pussy, getting off on the wild display of animal lust.";
				WaitLineBreak;
				say "     Your own hand reaches down, firmly pulling Alexandra's paws away from her pussy, ending her desperate self-fingering. Her eyes snap to yours, momentarily confused, but then you drive your own fingers into her, deep and insistent, replacing her touch with your own. Her hips buck, a primal groan escaping her, as your fingers plunge into her depths. You stroke her head and rub her ears, smiling down at her as you tell her what a fine, obedient, and slutty doggy she's become, teasing her about wanting her [master] to use her, about how she's just a craving bitch begging for what only you can give. Alexandra's body convulses, her tongue working faster, lapping at her clit, desperate for your touch. Then, with a slow, deliberate push, you slide your entire hand into her wet, stretched, and thoroughly warmed-up opening. Her pussy clenches fiercely around your wrist, milking your arm with shocking intensity, as you spread your fingers inside her, feeling around her immense wetness, exploring her depths for her G-spot.";
				say "     Alexandra's head snaps back, her long tongue lashing out, finding her own clit with a desperate flick, then darting to lick at your wrist and forearm where it disappears into her, lapping up the copious wetness that coats your skin. She is consumed entirely by the intense internal stretch and the focused manipulation of your hand. Her moans become guttural howls, her entire body arching, twitching, unable to control the overwhelming waves of sensation. You continue to finger your own pussy, mirroring her escalating pleasure. Suddenly, her body tenses, every powerful muscle locking in a fierce spasm. A raw, guttural scream rips from her lungs, her head snapping back, mouth wide in a silent roar as her climax comes, her pussy spasming around your hand wildly. As her powerful orgasm washes through her, you pump your own fingers inside your pussy, bringing yourself to a swift, guttural climax. Then, you withdraw your hand, offering it to Alexandra. She responds instantly, greedily licking your femcum-slicked fingers clean, a good bitch obeying her [master], as you revel in dominating her. You then get back up and look her over as she's stretched out on the ground in a pool of sweat and sexual fluids, her body completely submitted.";
				NPCSexAftermath Alexandra receives "PussyDildoFuck" from Player;
		else if calcnumber is 2: [tity-fuck / tongue]
			LineBreak;
			if Player is male:
				say "     With Alexandra's confession hanging heavy in the air, her naked body offered in utter surrender, you move closer. Your gaze sweeps over her, lingering on the powerful curves of her breasts, the taut muscles of her stomach, and the wet, matted fur of her exposed pussy. A soft, knowing smile plays on your lips. Reaching down, you gently push the doberwoman back, urging her to lie fully on the grimy pavement, her powerful legs spreading wide, her pussy parting in a wanton display. Without her shirt, you are treated to a lovely, unobstructed view of Alexandra's dark-furred breasts, heavy and swollen with arousal. You pull out your [cock size desc of Player] [Cock of Player] cock, its hard length springing free, and move overtop of the horny canine, straddling her midriff. Her eyes, wide and hungry, lock onto your throbbing shaft, a low growl rumbling in her chest, but she offers no resistance as you press your hands onto her breasts, beginning to rub and tease her prominent nipples. You slide your hips a little closer, letting your glans rest just between the bottom of her shapely tits, asking if the bad doggy wants her tasty bone. Alexandra gives a canine whimper and nods eagerly, her tongue sliding across her muzzle, hungry for her treat.";
				say "     You tell Alexandra to push her lovely breasts around your cock, edging your shaft further forward. She complies instantly, her paws reaching up to grab her own large, firm breasts. With surprising strength, she fondles them, pushing them together, molding her bare, furry mounds tightly around your throbbing maleness, creating a warm, soft channel for your pleasure. As she positions herself, you thrust between those warm, furry globes, her eager moans and pants filling the air. You lean down, telling her what a bad dog she is, your slutty, bad doggy bitch, punctuating each word with a deep plunge of your cock between her soft, yielding breasts. Alexandra releases a few panting yips of pleasure and licks eagerly in response of your cock appearing between her breasts on the deep thrusts, lost to the sensations of your shaft grinding between her furred mounds.";
				WaitLineBreak;
				say "     You take your time with Alexandra, fucking those titties nice and slowly to really savor the cop's descent into lust. She moans and pants as you thrust against her, her tongue eagerly lapping at your [cock size desc of Player] [Cock of Player] cock, while her fingers pinch her own nipples with frantic delight. You lean back slightly, maintaining the rhythmic grind of your shaft between her breasts. With one hand bracing yourself on her hip for support, your other hand reaches down, finding her wet pussy. You bury your fingers deep into her slick depths, a new wave of pleasure washing over the doberwoman bitch. You tell her what a fine, obedient, and slutty doggy she's become, and listen to her whimper delightfully and push her hips up, begging you to fingerfuck her harder, just as her body craves. The very cravings you've spent so long in getting her to release now fully consume her.";
				say "     Your own climax builds, a roaring inferno in your loins, the sensation of her tight breasts around your cock and her pussy milking your fingers driving you to the brink. With the image of how much you've changed this once stuffy cop into a horny slut burning in your mind, you thrust your cock forward one last time and cum, blasting your hot load across her face and muzzle, as well as her licking tongue. As she tastes your cum, Alexandra arches her back, her small claws digging into her breasts, pressing them tightly around you. A raw, primal howl of release tearing from her throat as her much-needed orgasm comes, clamping her vagina down around your fingers as she soaks your hand and her crotch with her own hot juices. When you're finished, you pull away, leaving her splayed on the ground, a trembling mass of fur and muscle, spent and utterly debased, a pool of sweat and sexual fluids collecting around her. Your hand, slick with her juices, moves to her muzzle, and you watch as Alexandra immediately responds. Her tongue darts out to eagerly lap your fingers clean like a good bitch, her dark eyes still hazy with lust and complete submission as you revel in your absolute y over her.";
				NPCSexAftermath Player receives "Stroking" from Alexandra;
			else:
				say "     With Alexandra's confession hanging heavy in the air, her naked body offered in utter surrender, you move closer. Your gaze sweeps over her, lingering on the powerful curves of her breasts, the taut muscles of her stomach, and the wet, matted fur of her exposed pussy. A soft, knowing smile plays on your lips. Reaching down, you gently push the doberwoman back, urging her to lie fully on the grimy pavement, her powerful legs spreading wide, her pussy parting in a wanton display. Without her shirt, you are treated to a lovely, unobstructed view of Alexandra's dark-furred breasts, heavy and swollen with arousal. You move overtop of the horny canine, straddling her chest, your own crotch now positioned directly above her face. Her eyes, wide and hungry, lock onto your pussy, a low growl rumbling in her chest, but she offers no resistance as you reach down to press your hands onto her breasts, beginning to rub and tease her prominent nipples.";
				say "     You let your wet slit brush against her muzzle, asking if the bad doggy wants her tasty treat. Alexandra gives a canine whimper and nods eagerly, her tongue sliding across her muzzle, hungry for your juices. Ordering her to open her mouth and start licking, you gently push her head towards your eager pussy. Instantly, her long, canine tongue darts out to test the slick, warm folds. Her moans and pants fill the air, a deep, guttural sound as she begins to lap at you, her tongue working with increasing skill, delving deep into your core, tasting and teasing every inch of your sensitive flesh. While allowing the bitch to service your pussy, you tell her what a fine, obedient, and slutty doggy she's become, loudly proclaiming this to the world and listening to her whimper delightfully as she wordlessly acknowledges this to be true. The very cravings you've spent so long in getting her to release now fully consume her.";
				WaitLineBreak;
				say "     Your body convulses as Alexandra's tongue works faster, lapping at your clit, desperate for your touch. Her powerful paws, still resting on her own thighs, begin to knead the flesh in a desperate, unconscious self-stimulation, her hips bucking with increasing fervor. The moans grow louder, more insistent, her entire body writhing beneath you. Then, a new idea sparks. You tell Alexandra to close her muzzle, the command a sharp, sudden cut through her escalating moans. She obeys, her lips pressing together, her long, slender muzzle now a firm, solid length. You then slowly, deliberately, lower your pussy, guiding it over her muzzle, letting her furred snout slide into your wet, eager slit, enveloping her completely. A sharp gasp tears from Alexandra's throat, muffled by your flesh, as your pussy engulfs her muzzle. Her entire nose is now literally drenched in your fluids, the overwhelming scent of your arousal flooding her heightened canine senses, sending shivers through her powerful frame.";
				say "     You begin to grind your hips, slowly at first, then with increasing fervor, using her muzzle to pound deep inside you. Her moans are now guttural, choked sounds, her body bucking violently beneath you. You feel the furred muzzle pressing, stretching, then the insistent lick of her tongue as she manages to work it free enough to lap at your inner walls, driving you to the brink. Your own climax builds, a roaring inferno in your loins, the sensations of her muzzle buried deep inside you, pounding against your G-spot, pushing you to a furious, screaming orgasm that leaves you gasping and utterly spent, your femcum coating her muzzle and pouring over her furry face. You then pull away, leaving her splayed on the ground, a trembling mass of fur and muscle, spent and utterly debased, a pool of sweat and sexual fluids collecting around her.";
				NPCSexAftermath Alexandra receives "OralPussy" from Player;
		else if calcnumber is 3: [69]
			LineBreak;
			if Player is male:
				say "     With Alexandra's confession hanging heavy in the air, her naked body offered in utter surrender, you move closer. Your gaze sweeps over her, lingering on the powerful curves of her breasts, the taut muscles of her stomach, and the wet, matted fur of her exposed pussy. A soft, knowing smile plays on your lips. Reaching down, you gently push the doberwoman back, urging her to lie fully on the grimy pavement, her powerful legs spreading wide, her pussy parting in a wanton display. Without her shirt, you are treated to a lovely, unobstructed view of Alexandra's dark-furred breasts, heavy and swollen with arousal. You move overtop of the horny canine, straddling her chest, your hard cock springing free, its tip glistening. Her eyes, wide and hungry, lock onto your throbbing shaft, a low growl rumbling in her chest, but she offers no resistance as you press your hands onto her breasts, beginning to rub and tease her prominent nipples. You let your [cock size desc of Player] [Cock of Player] cock brush against her muzzle, asking if the bad doggy wants her bone. Alexandra gives a canine whimper and nods eagerly, her tongue sliding across her muzzle, hungry for your cock.";
				say "     You position your body, shifting so your cock is directly above Alexandra's eager muzzle, yet with your own head simultaneously aligned with her open pussy. This is a deliberate repositioning, guiding her into a full 69. She understands instinctively, her body adjusting, her long tongue darting out to taste your glans, while her powerful paws instinctively reach between her legs, spreading her wet pussy for you, which weeps droplets of her arousal and anticipation of your touch. You tell her what a fine, obedient, and slutty doggy she's become, proclaiming this to the world, and she whimpers delightfully, wordlessly acknowledging this to be true. Leaning down the rest of the way, her hot, wet pussy is soon pressed against your mouth, its musky scent and slick warmth filling your senses.";
				WaitLineBreak;
				say "     You delve into Alexandra's pussy, your tongue working with increasing skill, tasting and teasing every inch of her sensitive flesh. Her moans become wet, guttural sounds, muffled around your mouth, each rhythmic stroke of your tongue sending shivers of pleasure through her clit. At the same time, Alexandra eagerly laps at your cock, her long canine tongue working it over with astonishing skill, sucking and teasing, drawing you deeper into her throat. Her body trembles, inner walls clenching around your tongue and fingers, in time with increasingly insistent thrusts of her muzzle against your groin. The intensity builds for both of you, a shared, escalating frenzy of oral and manual pleasure.";
				say "     Your own climax builds rapidly, the simultaneous oral pleasure and the relentless motion of her tongue on your [Cock of Player] shaft urging you closer and closer to the edge. At the same time, the doberwoman's reaction to your ministrations leave her almost vibrating with lust, her hands pulling you down against her crotch with a frantic need. With a final, powerful grind, your body convulses, a sharp, guttural cry escaping you as the overwhelming pleasure of being expertly sucked sends you into a singular, powerful orgasm. Your hot load blasts deep into her throat, pulsing the symbol of your mastery straight into her body. Alexandra, receiving the full force of your cum, then lets out a powerful, guttural yip as her own final, powerful orgasm washes through her, her body collapsing to the ground, passing out after her much-needed, powerful release.";
				NPCSexAftermath Alexandra receives "OralCock" from Player;
				NPCSexAftermath Player receives "OralPussy" from Alexandra;
			else:
				say "     With Alexandra's confession hanging heavy in the air, her naked body offered in utter surrender, you move closer. Your gaze sweeps over her, lingering on the powerful curves of her breasts, the taut muscles of her stomach, and the wet, matted fur of her exposed pussy. A soft, knowing smile plays on your lips. Reaching down, you gently push the doberwoman back, urging her to lie fully on the grimy pavement, her powerful legs spreading wide, her pussy parting in a wanton display. Without her shirt, you are treated to a lovely, unobstructed view of Alexandra's dark-furred breasts, heavy and swollen with arousal. You move overtop of the horny canine, straddling her chest, your own crotch now positioned directly above her face. Her eyes, wide and hungry, lock onto your pussy, a low growl rumbling in her chest, but she offers no resistance as you reach down to press your hands onto her breasts, beginning to rub and tease her prominent nipples.";
				say "     You let your wet slit brush against her muzzle, asking if the bad doggy wants her tasty treat. Alexandra gives a canine whimper and nods eagerly, her tongue sliding across her muzzle, hungry for your juices. Ordering her to open her mouth and start licking, you gently push her head towards your eager pussy. Instantly, her long, canine tongue darts out to test the slick, warm folds. Her moans and pants fill the air, a deep, guttural sound as she begins to lap at you, her tongue working with increasing skill, delving deep into your core, tasting and teasing every inch of your sensitive flesh. While allowing the bitch to service your pussy, you tell her what a fine, obedient, and slutty doggy she's become, loudly proclaiming this to the world and listening to her whimper delightfully as she wordlessly acknowledges this to be true. The very cravings you've spent so long in getting her to release now fully consume her.";
				WaitLineBreak;
				say "     A low growl of anticipation rumbles in your own throat, and with a fluid motion, you move into a new position, rolling off Alexandra slightly then re-positioning yourself. Now you're on all fours over her, your crotch again over her head, but the other way around this time, with you facing her crotch. As she takes up devouring your pussy once more, you lower your upper body to let your mouth descend upon her wet, eager pussy, ready to return the favor. Your tongue darts out, tasting the musky, sweet tang of her juices. Fingers plunging into her slick depths, you milk her pussy with insistent strokes, as her long, canine tongue works tirelessly on your own. This reversal, this shared intimacy, pushes both of you to new heights of ecstasy.";
				say "     Your own climax builds, a roaring inferno in your loins, the sensations of her tongue on your pussy and your fingers in hers driving you to the brink. With the image of how much you've changed this once stuffy cop into a horny slut burning in your mind, you grind your pussy onto her muzzle one last time, your orgasm an eruption of femcum that covers her face and muzzle, soaking her dark fur. A moment after you climax, Alexandra arches her back, her small claws digging into your thighs, a raw, primal howl of release tearing from her lungs as her own powerful orgasm washes through her, clamping her vagina down around your fingers as she soaks your hand and her crotch with hot juices. When you're finished, you pull out, leaving her splayed on the ground, a trembling mass of fur and muscle, spent and utterly debased, a pool of sweat and sexual fluids collecting around her. Your hand, slick with her juices, moves to her muzzle, and you watch as Alexandra immediately responds. Her tongue darts out to eagerly lap your fingers clean like a good bitch, her dark eyes still hazy with lust and complete submission as you revel in your absolute y over her.";
				NPCSexAftermath Alexandra receives "OralPussy" from Player;
				NPCSexAftermath Player receives "OralPussy" from Alexandra;
		else:
			LineBreak;
			say "     Grabbing the Doberman female's leg, you run your hand along it while the other moves to rub her head and scritch her ears. Telling her that she should know that she doesn't stand a chance against you by now, you mockingly add that at least she's no longer pretending to be anything but the needy bitch she is. Giving the scruff of her neck a tug, you look into her eyes and say that bad dogs always show their spots sooner or later. She doesn't even shake her head to deny this anymore now, only whines and looks aside in a gesture of submission.";
		increase dobielibido by 1;
	else:
		LineBreak;
		say "     [bold type]What do you want to do to your captive bitch?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Finger her.";
		say "     [link](2)[as]2[end link] - Dominate her (nonsexually).";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 2:
			say "Choice? (1-2)>";
			get a number;
			if calcnumber < 1 or calcnumber > 2:
				say "Invalid choice. Type [link]1[end link] to finger her pussy, or [link]2[end link] to dominate her.";
		if calcnumber is 1: [finger her]
			LineBreak;
			say "     Grabbing the Doberman female's leg, you run your hand along it while the other moves to rub her head and scritch her ears. You brush your fingertips over her wet folds. 'Does the bad doggy's bitch pussy need attention?' you ask, drawing a canine whimper and an eager nod from her. 'Then let me see you lick yourself like a proper bitch,' you order, giving her head a push towards her crotch. She only hesitates briefly before bending around like a normal dog and nuzzling at loins, giving her pussy a slow lick before diving her tongue into herself while you watch the show. 'Mmm... that's right. You're a bad dog, aren't you? My slutty bad doggy bitch,' you add, stroking her ears and petting her side.";
			say "     You can't help but smile as you kneel down beside her to watch, savoring the cop's descent into lust. She moans, pants and whimpers in canine pleasure as she goes to town on herself like an animal. From the way she's looking at you, you can tell she's getting off on the fact that you're watching as well as on her own tonguework. You stroke her head and rub her ears, smiling down at her as you tell her what a fine, obedient and slutty doggy's she's become. As her climax comes, she pulls her muzzle away to howl in release, arching her back and burying both paws between her thighs to finger herself wildly through a powerful orgasm that has her panting and spent when it's finally over. With that finished, you get back up and look her over as she's stretched out on the ground in a pool of sweat and sexual fluids.";
			NPCSexAftermath Alexandra receives "OralPussy" from Alexandra;
		else:
			say "     Grabbing the Doberman female's leg, you run your hand along it while the other moves to rub her head and scritch her ears. Telling her that she should know that she doesn't stand a chance against you by now, you mockingly add that at least she's no longer pretending to be anything but the needy bitch she is. Giving the scruff of her neck a tug, you look into her eyes and say that bad dogs always show their spots sooner or later. She doesn't even shake her head to deny this anymore now, only whines and looks aside in a gesture of submission.";
		increase dobielibido by 1;
	WaitLineBreak;
	say "     As you begin gathering your gear[if Player is not naked] and clothes[end if], preparing to leave the exhausted Doberwoman splayed on the ground, a soft, almost imperceptible moan stops you. 'Wait,' Alexandra breathes, her voice hoarse, thick with spent pleasure, a fragile thread of desperation woven through it. Curious as to what the slutty cop has to say, you turn back, wondering if the defiant spark still lingering in her eyes means you'll need to teach her another lesson. Her fingers, still slick with her own juices, slide between her legs, lightly tracing the sensitive, swollen lips of her pussy. One paw lifts, and she brings it to her muzzle, delicately licking the wetness from her fur, her dark eyes never leaving yours.";
	say "     'I... I... give up,'' she says again, the words barely a whisper, a resigned sigh escaping her lips. Her powerful body, still trembling from the intensity of her climax, shifts, an almost imperceptible slump in her shoulders. 'There's no law and order left in this city, Boss, and... there's no point in pretending otherwise.' Her gaze drops, then snaps back up, burning with a raw, undeniable hunger. 'I... I want the sex. The raw fucking. The lustful breeding,' she confesses, her voice growing stronger, punctuated by soft, desperate moans as her fingers pump more eagerly inside her pussy, her hips beginning a slow, involuntary grind. 'And so help me God, I want you. After all of it, after everything you've done to me, I want you so bad.' Her eyes, once sharp with duty, now glow with feral devotion as she pushes herself onto all fours, crawling towards you across the grimy pavement, her naked body offered entirely. 'I- I want to be your doggy bitch.'";
	say "     [bold type]It seems you've finally completely broken the policewoman. She might make a good guard for the library[if HP of Fang > 0 and HP of Fang < 100] alongside Fang[end if] as well as a fun plaything...[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Take her to be your bad dog bitch.";
	say "     ([link]N[as]n[end link]) - No, drive her off.";
	if Player consents:
		say "     A surge of triumph electrifies you, the prospect of having the Doberwoman cop as your personal slutty bitch a potent thrill. You reach out, your hand running over her head, scritching her ears roughly, feeling the coarse fur between your fingers. Her whimpers intensify, her body trembling with pleasure under your touch. You tell her, your voice low and commanding, that she can come with you, but only if she truly accepts her proper place as your slutty, bad dog bitch. Alexandra practically melts under your touch, her eyes hazy with desire. She nods frantically, her tongue darting out to lick at your hand, a guttural purr rumbling deep in her chest. 'Oh yes,' she moans, her voice thick with surrender. 'That's what I want. It was foolish of a bad bitch like me to ever try being a cop, Boss. So foolish.'";
		say "     You grin, a cruel, satisfied curl of your lips. Your hands move, cupping her large, firm breasts, squeezing them roughly, enjoying the way they heave and jiggle in your grasp while your fingers knead her soft flesh. You lean down, unpinning the glinting police badge she wears, pulling the cold metal shield from her uniform and tucking it into your pocket. The anthro dog doesn't resist, remaining utterly pliant under your touch, her body trembling, her eyes fixed on yours with absolute devotion, a clear testament to how completely you've corrupted the woman she once was. With a sharp whistle, you call for her, commanding her to get up and follow. Alexandra scrambles to her feet, naked and ready, tail wagging furiously as she falls into step behind you, a victorious smile gracing your lips all the way back to the library.";
		ItemGain alexandra's badge by 1;
		now HP of Alexandra is 1;
		now battleground is "void";
		move Alexandra to Grey Abbey Library;
		move player to Grey Abbey Library;
		move Jimmy to Sanctuary Hotel Lobby;
		now HP of Jimmy is 3;
		now hunger of Jimmy is 2;
		move Paula to Sanctuary Hotel Lobby;
		now HP of Paula is 3;
		now hunger of Paula is 2;
	else:
		say "     Not wanting to waste any more of your time on the policewoman, you kick her to the ground. Then you call her a slut and tell the bitch that you don't want a lousy street dog like her, fucked by who knows whom. She's just a fucktoy now, not even a real policewoman anymore. To drive this home, you lean down and un-pin the police badge she is wearing, putting the metal shield into your pocket. The anthro dog doesn't resist as you do so, showing how completely you've destroyed the woman she once was. With a cruel snort you wave her away, telling the canine to fuck off. She slinks away in shame and you can't help but chuckle, darkly pleased at having broken the cop and then just discarding her like trash. You doubt she'll be troubling you any more.";
		ItemGain alexandra's badge by 1;
		now HP of Alexandra is 100;
	now area entry is "Nowhere";

Section 2 - Creature Insertion

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Doberman Bitch"	"[PrepCombat_Doberman Bitch]"

to say PrepCombat_Doberman Bitch:
	setmongender 4; [creature is female]
	choose row MonsterID from the Table of Random Critters;
	let debit be 0;
	if HardMode is true and level of Player > 7, let debit be level of Player - 7;
	now dobieresist is 0;
	now str entry is 14;
	now HP entry is 60 + ( debit * 4 );
	now lev entry is 7 + debit;
	now wdam entry is 10 + ( debit / 4 );
	if dobielibido < 0:
		project the figure of Alexandra_clothed0_neutral_icon;
	else if dobielibido < 50:
		project the figure of Alexandra_clothed0_frown_icon;
	else if dobielibido < 100 or inasituation is true:
		project the figure of Alexandra_clothed1_frown_icon;
		increase monsterLibido by 25; [she's riled up now, easier to seduce]
	else:
		project the figure of Alexandra_clothed2_frown_icon;
		increase monsterLibido by 50; [she's very riled up now, easier to seduce]
		increase str entry by 2;
		if HardMode is false, now lev entry is 9;
		increase HP entry by lev entry;
		increase monsterHP by lev entry;
		increase wdam entry by ( wdam entry / 7 );

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Doberman";
	add "Doberman Bitch" to infections of CanineList;
	add "Doberman Bitch" to infections of FurryList;
	add "Doberman Bitch" to infections of NatureList;
	add "Doberman Bitch" to infections of FemaleList;
	add "Doberman Bitch" to infections of TaperedCockList;
	add "Doberman Bitch" to infections of KnottedCockList;
	add "Doberman Bitch" to infections of SheathedCockList;
	add "Doberman Bitch" to infections of BipedalList;
	add "Doberman Bitch" to infections of TailList;
	now Name entry is "Doberman Bitch"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "Doberman Cop"; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is "Alexandra"; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[dobermanattack]";
	now defeated entry is "[beattheDoberman]";
	now victory entry is "[losetoDoberman]";
	now desc entry is "[Dobermandesc]";
	now face entry is "that of a cunningly handsome looking Dobie"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "fit and toned without a trace of fat anywhere in sight, not to mention pecs that bulge out almost half an inch from your chest and torso with, count [']em, eight hard and cut abs. You are definitely a stud of a dog"; [ Body description, format as "Your body is [Body of Player]." ]
	now skin entry is "[one of]brown and black fur[or]a dense and dark pelt[or]a heavy cropping of water resistant fur[at random]"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "Your tail is moderately long and thin, like a Dalmatian's, but pitch black in color and curved upwards."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]knotted[or]tapered canine[or]dark crimson colored[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "your head shifts and then pops and then finally melts down into a point giving you a Doberman-like face while your ears push straight up onto your head and your eyes turn chocolate brown in color"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your muscles suddenly balloon outwards while your bones and muscles pop and contort inside of your body starting from your neck going all the way down to your thighs, calves and feet. Back arching, spine tingling you have just enough time to appreciate the fact that the heels of your feet are pulling back to give you a digitigrade stance before you sigh as your body finishes its transmogrification"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "short, dark brown and black fur pushes out from the pores of your skin making you itch all over"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "your butt expands outwards and then suddenly pulls inwards as your spine lengths with the onset of you growing tail. The fact that your glutes now look like the stereotypical 'bubble butt' only works to heighten the cuteness of your new appendage"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "the mass grows and then tapers off to a point while becoming crimson in color. The small bulb at the end of your rod is the only indication that you possess a canine's knot"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 14; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 13; [ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 60; [ The monster's starting HP. ]
	now lev entry is 7; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10; [ Monster's average damage when attacking. ]
	now area entry is "Outside"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 10; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 2; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 25; [ Target libido the infection will rise towards. ]
	now loot entry is "doberman bitch fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "doberman bitch milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is "doberman bitch cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "[GenerateTrophyList_Doberman_Cop]";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lithe[or]unrepentantly strong[or]dashing[or]sexy[at random]";
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is "Doberman Male"; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "dobermancop"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	now Name entry is "Doberman Bitch"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 3; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 8; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 7; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your ears are drawn upwards to the top of your head, forming sharp wedges standing upright. A long and narrow muzzle pushes forward to give you the head of a sleek Doberman"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a sleek Doberman with [Head Color of Player] fur and ears sticking up in sharp wedges"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "furred"; [one word descriptive adjective]
	now Head Color entry is "dark brown and black"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 5; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "auburn"; [one word color descriptor]
	now Hair Style entry is "fauxhawk"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "amber"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 12; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 7;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "long"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 7; [length in inches]
	now Torso Change entry is "dark brown and black hair sprouts all over it, giving you a shiny coat of short but dense fur"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "covered in a short coat of [Torso Color of Player] fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
	now Torso Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "dark brown and black"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "bouncy"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 3; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "brown"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "dark brown and black"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into blunt claws and brown fur spreads over your paw-hands. As it moves further up towards your shoulder, darker tones of black dominate in the fur"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] fur, ending in paw-hands with blunt claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "dark brown and black"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of an anthro Doberman with short fur in dark brown and black, ending in a pair of paws"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro Doberman, with short fur in [Legs Color of Player] covering them from your hips down to the clawed paws"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "dark brown and black"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes fairly narrow and small, with dark brown and black fur sprouting over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered short dark brown and black fur"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]."]
	now Ass Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "dark brown and black"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 2; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a mid-length canine tail sprouts from your tailbone, soon covered in short dark brown and black fur"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "mid-length tail with short [Tail Color of Player] fur"; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "dark brown and black"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 8; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 2;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "brown"; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 2; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Change entry is "it takes on a reddish color and canine shape, complete with a pointy tip, knot at the base and a sheath to protect it"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and has a pointy tip. There is a knot at the base, as well as a sheath to protect it when not erect"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cock Color entry is "red"; [one word color descriptor]
	now Ball Count entry is 0;
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a furry, snug sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 1;
	now Cunt Depth entry is 10;
	now Cunt Tightness entry is 2;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a canine appearance, complete with a clit at the top"; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "shaped like that of a canine bitch, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "brown"; [one word color descriptor]
	now Clit Size entry is 2; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Table of Game Objects (continued)
name	desc	weight	object
"doberman bitch fur"	"A tuft of dark brown fur that looks like it has been pulled out of the coat of a Doberman. It's nicely soft."	0	doberman bitch fur

doberman bitch fur is a grab object.
Usedesc of doberman bitch fur is "[DobermanBitchFurUse]".
It is temporary.

to say DobermanBitchFurUse:
	say "     Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	setmonster "Doberman Bitch";
	choose row MonsterID from the Table of Random Critters;
	now non-infectious entry is false;
	infect "Doberman Bitch";
	now non-infectious entry is true;

instead of sniffing doberman bitch fur:
	say "     The fur has a pleasing, not too strong, animal-like scent.";


Table of Game Objects (continued)
name	desc	weight	object
"confiscated pills"	"A plastic baggie containing countless nondescript pills in all sorts of shapes and colors. It is labeled in neat handwriting, declaring the contents to have been confiscated some days ago. With the nanite apocalypse in full swing, it seems the dobie cop didn't have time to turn them in yet."	0	confiscated pills

confiscated pills is a grab object. it is not temporary.
Usedesc of confiscated pills is "[RandomPillsUse]".

to say RandomPillsUse:
	say "     Opening the baggie and picking one of the pills, you look at it for a second or two, then throw it into your mouth and swallow. What could go wrong when taking some unidentified pills, right?";
	let RandomPillEffect be a random number from 1 to 10;
	if RandomPillEffect is 1:
		say "     God, what was in that pill? A few minutes after taking it, you start feeling very woozy and your stomach rebels! Stumbling a few steps, you can't hold back the vomit and chuck up the half-dissolved thing, as well as anything else you had in your stomach!";
		PlayerWounded 25;
		PlayerHunger 15;
		PlayerThirst 15;
	else if RandomPillEffect is 2:
		say "     A few minutes after taking the pill, you become aware of the fact that you have seven fingers on one of your hands. Raising it to check out all these digits in detail, your hand leaves a wavy, rainbow-colored after-shadow in your area of sight. Whoo - trippy! After the shadow catches up with your hand eventually, you stare at your hand and try to count just how many fingers you have. It is difficult since they kinda wiggle on their own, and even bringing in your other hand to count them one by one is a challenge, as you kinda keep missing and have to start all over again.";
		SanLoss 25;
	else if RandomPillEffect > 2 and RandomPillEffect < 6:
		say "     You actually feel pretty good after taking the pill. Energized, one could almost say.";
		PlayerHealed 25;
	else if RandomPillEffect > 5 and RandomPillEffect < 9:
		say "     Waiting several minutes, it doesn't seem like anything is happening. Was that thing a dud?";
	else if RandomPillEffect is 9:
		say "     A few minutes after taking the pill, you start feeling quite randy. Time to find a fuck, an inner voice seems to say.";
		LibidoBoost 25;
	else if RandomPillEffect is 10:
		say "     Minutes pass after taking the pill, but you don't feel anything special happening. Though then the realization strikes you that any lustful urges you have felt since this whole mess started are quiet for the moment. Whatever was in that things, it cleared your mind exceptionally well!";
		LibidoReset;

instead of sniffing confiscated pills:
	say "     You pull open the plastic baggie and sniff at it. Smells fairly chemical, this stuff.";

Table of Game Objects (continued)
name	desc	weight	object
"police whistle"	"A cylindrical police whistle made of metal, complete with a few links of chain and a belt clip. It is well-worn and must be fairly old, as police don't regularly carry whistles of any kind these days. Looking more closely, you can barely make out some letters that were stamped into the metal at one end of it. Hard to make out because the metal has rubbed smooth from frequent touch, but you think you can see 'C.H.' on there."	0	police whistle

police whistle is a grab object.

Usedesc of police whistle is "[PoliceWhistleUse]".
It is not temporary.

to say PoliceWhistleUse:
	say "     Bringing the whistle up to your mouth, you blow into it and are rewarded by a sharp, shrill sound. This certainly can be heard quite far and might just bring people or creatures to investigate the noise!";
	if location of player is not sleepsafe and earea of location of Player is not "void" and a random chance of 3 in 10 succeeds:
		now battleground is earea of location of Player;
		fight;
	else:
		say "     Thankfully, nothing happens (this time).";

instead of sniffing police whistle:
	say "     The whistle smells like metal.";

Table of Game Objects (continued)
name	desc	weight	object
"alexandra's badge"	"A shining police badge, bearing the number 214 at the lower edge. You took it from Alexandra when you finally broke her will completely. As such, it's a nice little trophy to have. Maybe you could add it to a collection of similar items."	0	alexandra's badge

alexandra's badge is a grab object.

Usedesc of alexandra's badge is "[AlexandraBadgeUse]".
It is not temporary.

to say AlexandraBadgeUse:
	say "     You play a little with the police badge, tracing its patterns with a fingertip and staring at the shining metal. As a symbol of everything you have done to Alexandra, it makes you feel powerful, aggressive, and just a bit less constrained by concepts of human morality.";
	SanLoss 10;

instead of sniffing alexandra's badge:
	say "     The badge smells like metal.";

Section 3 - Alt Combat Rules

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"dobermancop"	dobermancop rule	--	dobercoppost rule	--	--	--	--	--	--	--


this is the dobermancop rule:		[combat rule]
	if inafight is 0 and dobielibido < 100:			[Doberman cop does not attack on first strike]
		say "The Doberwoman police officer holds herself at the ready, nightstick raised but does not swing despite having the advantage. 'Last warning! Stand down!' she growls.";
	else:
		increase dobieresist by 1; [turns the player did not surrender]
		retaliate;

this is the dobercoppost rule:		[postattack rule]
	if a random chance of 1 in 3 succeeds and HP of Player > 0 and Libido of Player < 110:
		if dobielibido < 100:		[low/mid lust]
			say "The [one of]Doberman cop[or]canine cop[or]Doberwoman[or]dog policewoman[or]canine officer[or]Doberman[at random] [one of]growls[or]barks[or]says[as decreasingly likely outcomes] [one of]'Stand down[or]'Police[or]'You're only making it harder on yourself[or]'Come peacefully[or]'There's more where that came from[at random]!' after striking you.";
		else:				[high lust]
			say "The [one of]Doberman cop[or]canine cop[or]Doberwoman[or]dog policewoman[or]canine officer[or]Doberman[at random] [one of]snarls[or]growls[or]barks[or]says[as decreasingly likely outcomes] [one of]'I've got plenty more of that for you[or]'Police[or]'I'm going to really enjoy this[or]'You're finished this time[or]'There's more where that came from[at random]!' after striking you.";

Section 4 - Endings	[This portion deals with the Doberman infection for Kaleem's Firehouse content]

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Doberman Bitch Infection"	"Infection"	""	Doberman Bitch Infection rule	1000	false

This is the Doberman Bitch Infection rule:
	if Player has a body of "Doberman Bitch":
		if Stamina of Tyr > 3: [Player had sex with him more than 3 times]
			trigger ending "Doberman Bitch Infection"; [Here it states, that the ending has been played.]
			if humanity of Player < 10:
				if Player is female and Cock Count of Player < 0:
					say "     Falling prey to your feral instincts you find yourself sniffing around town to find Tyr to thank him for the sexy body he helped to give you. Your mind may have succumb to the madness that is the feral need to fuck and breed, but the face of that sexy and charming Doberman stands out like the sun against lustful fog covering your thoughts. Locating the other back at his pad you throw yourself at the Doberman to lavish him in warm and tender licks across the face just as soon as he opens his door to let you in. Seeing you the way you are now Tyr doesn't waste time in trying to regret what's happened to you as the buff and commanding canine tosses you down onto his floor, strips himself out of his jeans, and then proceeds to work his fat piece of Doberman meat into the depths of your leaking snatch.";
					say "     Rubbing your cleft up and down the growling and grunting Doberman you're happy to find that he accepts your submission to him as he spears you hard and then deep as he goes to work filling you up with pups. Somewhere in the back of your mind you hope that maybe later on, after the first of what you can only hope will be several long and forceful fucks, Tyr will let you help him out with his workload around the city. But that's for later on...";
				else if Player is male and Cunt Count of Player < 0:
					say "     Sniffing out the Doberman that had given you your sexy new body you find your way to Tyr's house to properly [']thank['] the other male. When the larger Doberman finds you at his door you don't waste any time as you tackle him to the ground, strip the both of you out the clothes you have on, and then proceed to lube up your cock with your precum in order to use your rod on the buff Dobie's tender tailhole. Of course, your little surprise attack doesn't stun Tyr for long as the Doberman is quick to show you who's the alpha around here.";
					say "     Grappling at your heavy form the other Dobie wrestles you to the ground, grabs your long tail to painfully snatch it upwards and then buries his long rod inside of you in one single, painful thrust. No lube, no grace, no consideration is given for your audacity at trying to mount him as Try takes you hard and fast across the floor of his home. Bucking and snarling while shoving your ass back against him you growl in want for the dominant male to take you like his beta. Finding your wish granted as the larger Doberman hilts into you, you have just enough time to think on how perfect your submission to this greater canine is, right before Tyr pulls his hips back in order to pound inside of your now loosened tailhole with almost bruising force.";
					say "     Somewhere in your dimming thoughts you hope that the other male will keep you around as you can happily see yourself becoming both his shadow and bodyguard, if need be, as the two of you go out into the world to do... whatever it is that Tyr actually does.";
			else:
				say "     Having survived the trails set forth by the out of control city you don't think to resist when the military comes in to try and clean up the place - taking you in for inspection and quarantine as they do. Scrubbed down, [italic type]bathed[roman type] and then given both a physical and mental examination the scientist at work find you to be in perfect health. Grateful to have one less burden to deal with the military types try and strike up a deal with you to get you to be a part of their team, something about needing strong and confident canines to work for the [']good guys[']";
				say "     At first you have half the mind to tell them where to go, but when you see a familiar face smiling at you while within the quarantine bunker you hastily nod to the military in acceptance of their offer. It doesn't take long before you are trained, fitted and then sent out with a special team designed to handle out of control mutants. The work proves to be grueling and thankless most days, however, it's worth it at the end when you collect your paycheck. And yet, the real bonus comes during the weeks you are off duty when you settle down for the evening in the little house you bought. A knock at your door some nights has your lips lifting into a smile, especially since you know who will be on the other end.";
				if Player is male:							[MALE/HERM]
					say "     Tyr doesn't try to hide it as he knows what you want and how you want it. Being that he's overseen both your training and the unit you're working for you feel almost indebted to the other man during the times when he lays you down on top of your bed and then gently strips you out of your evening attire. Of course, the other always reminds you that you owe him nothing, but you still feel that you do, especially when he lifts up your legs, rubs his meaty hands across your cock and balls, and then buries his face in between your legs to give you the most mind blowing blowjob in the world.";
					say "     The fact that he makes sure that you don't cum in his muzzle makes things all the more exciting as the bigger Doberman leaves you right on the edge before making his next move. Holding your hips up for him you watch and wait as Tyr prepares himself to take your tight tailhole, forever using his precum instead of lube, before wincing and hissing in slight pain as the Dobie takes you hard. Never like a bitch though, both you and he know that your [']relationship['] with each other is worth more than that. However, that does not stop him from hammering into your ass, driving across your prostate like mad, which then leaves you babbling and begging for more, as the bigger Dobie drives you to the edge of orgasm while knotting you good and tight.";
					say "     He finishes fast on the first of your trysts, he always does, but during the second, third, fourth and fifth, Tyr makes sure to make long and passionate love with you as he fills you to the brim with his canine spunk. By the time he's through and his knot finally pops out of you, your ass is leaking so much that the other [']generously['] offers to lick you clean in order not to make a mess on your bed. As of to date, you've never told him no before.";
				else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
					say "     Having Tyr as your secret lover becomes less of a secret when your stomach swells with his brood. You never complain though when you mysteriously find yourself on desk duty instead of working out in the field. Your teammates, many of them mutants, some of them even females like yourself, are happy to congratulate you on your luck at finding companionship given these weird times. None of them ask who the father is. All of them know by both the scent that always travels along your fur when you return from your time off and by the fact that an unfamiliar Doberman is constantly seen hanging around the places where you are working who the lucky male is.";
					say "     One day during your pregnancy you find yourself scared out of your wits when someone comes up from behind you while you are in the break room to force you down onto a nearby table with your rump pushed high up into the air. Growling and cursing that someone could be strong enough to hold you down against your will you find yourself all but melting when a familiar voice chuckles inside of your cropped ear. Freezing when a hole is torn into your cargo pants by wickedly sharp claws, you spread your legs wide and hunch upwards as a thick Dobie shaft is stuffed up into your cunt with gentle, but forceful thrusts.";
					say "     Not knowing that your lover would be so kinky, as he never touched you in this manner before, at least, not while you're on the job surrounded by the others, you don't try to stop Tyr as he mounts you inside of the break room as though he owns you. Partially you realize that he does own you. Both body and heart. Grunting and growling as your pussy is forced wide on the other Doberman's dick neither you nor Tyr care when your coworkers come into the room to watch you get stuffed full. Many of them go about their business getting tea and coffee as though nothing weird is happening, but others, like Stu and Stacey, the hyena herm pair, let you know that you are doing a good thing as Stacey mounts Stu up against the wall to have at her husband.";
					say "     Rocking into you with careful force Tyr snarls his pleasure out into the room when his knot locks him into place against you. It doesn't take long for you to fell a familiar fullness rushing inside of your already packed womb, and idly you wonder if your pups will be just as randy and horny as their father. You can only hope so as your cunt flutters around your Dobie's cock, dripping rich honey onto the pristine floor beneath you and Tyr.";
				else:									[F-STERILE]
					say "     Because you are infertile Tyr has no problem fucking you anyway, everyway, and everywhere he desires. Being the leader of your elite group, though sadly a shadow leader who is most often never seen or heard from, the Doberman commander makes a special play out of forcing your into slightly embarrassing scenarios while you are on the job. That one time in Moscow when you and your unit were looking to take down the Siberian tiger outfit you remember how Tyr grabbed you out of the blue and then forced you to suck his cock while kneeling down against the cold street of the city. Your unit still wonders if you really found a Siberian hooker to get your rocks off with or if something else was going on.";
					say "     Then there was that time in Egypt, when you were looking for that king Cobra mutant that was terrorizing the people of Cairo, that Tyr decided to be cute and sneak into your hotel room to bind you to the bed with silk ties only to then pound you into the mattress while you were half asleep. Your muffled screams had almost alerted Stu, the hyena herm that you had been sharing a room with, into waking up, but thankfully the other sleeps like a rock. Next it was back in the states with you pushing through a forest only to suddenly get kidnapped for an hour by Tyr to have hot and wild sex up along the branches of a tree. Then there was that time in South America where Tyr mounted you underneath that waterfall while you had been on the lookout for the twin headed jaguar creature.";
					say "     The there was the time in Japan when Tyr had wanted to see how drunk you could get before deciding that having sex with you in one of the local shrines while you were sloshed out of your mind would be kinky. The kitsunes that had found you both were amicable enough to let you leave without being cursed, or fined, after agreeing to be able to watch. Then there was that time...";


Doberman Cop ends here.
