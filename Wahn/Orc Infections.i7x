Version 1 of Orc Infections by Wahn begins here.
[Version 1   - split off from the lair content]

"Adds an Orc creature to Flexible Survival's Wandering Monsters table"

OrcSpecialFightNumber is a number that varies.

to say GenerateTrophyList_Orc_Warrior:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "orc brew" to CombatTrophyList;
	if a random chance of (50 + LootBonus) in 100 succeeds: [common drop]
		add "food" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "soda" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "chips" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "police badge necklace" to CombatTrophyList;
	else if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop; chained, so there's just one necklace]
		add "handcuff necklace" to CombatTrophyList;
	else if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop; chained, so there's just one necklace]
		add "tooth necklace" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "tactical gloves" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 1 - Creature Responses

to say OrcVictorious:
	if inasituation is false:
		if HP of Player > 0: [player submits]
			if BodyName of Player is "Orc Breeder" and FaceName of Player is "Orc Breeder" and SkinName of Player is "Orc Breeder":
				say "     'Can't wait to be fucked, little breeder?' the orc warrior says in his gruff voice as you surrender, then he roughly pushes on your shoulders, forcing you to your knees. Looking down on you, he says 'I'll give you what you need!' ";
			else if BodyName of Player is "Orc Warrior" and FaceName of Player is "Orc Warrior" and SkinName of Player is "Orc Warrior":
				say "     As you collapse to your knees, the orc warrior gives a snarl and says 'Weakling! You're no real orc, you overgrown breeder! I'll show you your place.' ";
			else:
				say "     'Weakling,' the orc warrior says in his gruff voice as you surrender, then he roughly pushes on your shoulders, forcing you to your knees. Looking down on you, he says 'Leave the fighting to real men, little piggy. I'll show you your place.' ";
		else: [player beaten]
			if BodyName of Player is "Orc Breeder" and FaceName of Player is "Orc Breeder" and SkinName of Player is "Orc Breeder":
				say "     As you collapse to your knees, the orc warrior gives a snarl and says 'Wanted to try out being a warrior, little breeder? You can forget about that! Come on, I'll give you what you really need.' ";
			else if BodyName of Player is "Orc Warrior" and FaceName of Player is "Orc Warrior" and SkinName of Player is "Orc Warrior":
				say "     As you collapse to your knees, the orc warrior gives a snarl and says 'Weakling! You're no real orc, you overgrown breeder! I'll show you your place.' ";
			else:
				say "     As you collapse to your knees, the orc warrior gives a gruff chuckle and says 'Leave the fighting to real men, little piggy.' I'll show you your place.' ";
		if Player is submissive: [sub players]
			say "With that, he steps up to you and pulls his loincloth aside, revealing the thick green shaft of his manmeat. Jerking it a few times, he softly whacks it against your forehead, then grabs you tightly by the hair and pulls you right against his balls. Following the barked order of 'Lick them!', you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master as well as him slightly lessening the painful grip of your hair.";
			say "     After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Eagerly, you slide your lips over the tip of his erect dick and suckle on it for a moment, then hold his manhood up so you can lick up and down the long shaft, teasingly following the veins on it with your tongue. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you even more of a rush at taking care of this big brute. As you go on switching up between licking him and sucking his prick, the orc soon just lets go of your head, moaning 'An eager little slut I see, my lucky day for catching you.' He lets you continue for quite a bit, then grunts and pulls you off his cock.";
			WaitLineBreak;
			say "     Chuckling, he shakes his head and says 'Can't have you get me off like this. There's still your ass to fuck!' Then he manhandles you to a wrecked car standing not too far away and bends you over its hood. Trembling in anticipation of him just using you for his enjoyment, you reach back and spread your cheeks while trying to relax your sphincter. Your orc master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
		else: [normal players]
			say "With that, he steps up to you and pulls his loincloth aside, revealing the thick green shaft of his manmeat. Jerking it a few times, he softly whacks it against your forehead, then grabs you tightly by the hair and pulls you right against his balls. Following the barked order of 'Lick them!', you reluctantly give his hairy globes a lick or two, then wince as he gives your hair a jerk and growls 'Faster'. Not wanting a repeat of the beating you got earlier, you swallow your pride and start lapping away at his nuts in earnest.";
			say "After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Not having much choice else if you don't want him to rip up your ass something terrible later, you start going down on him, switching up between sucking on the tip of his manhood and licking its shaft. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you kind of a rush that makes being forced to do this not seem so bad. The orc lets you continue for a bit, then grunts and pulls you off his cock.";
			WaitLineBreak;
			say "     Chuckling, he shakes his head and says 'Enough slobbering around. Time to fuck!' Then he manhandles you to a wrecked car standing not too far away and bends you over its hood. Trembling at the thought of taking his thick meat, you reach back and spread your cheeks, doing your best to relax your sphincter. Your orc master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
		say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
		WaitLineBreak;
		say "     After giving you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, he pulls back and thrusts back in with a loud grunt - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Everything after that is just a haze of arousal and need, and you can't even remember how long it took for his wild fucking to drive you over the edge, [if Player is male]spraying your own cum against the side of the car under you[else if Player is female]squirting femcum all over the car under you and the ground below[else]gripping the metal of the car's hood tightly as an orgasm wracks your body[end if].";
		say "     Having your hole tremble and twitch around his orcish member while you come gives your partner the last little push he needed to reach his own climax, and with a loud and very satisfied grunt, the orc starts blasting a massive load of cum into your innermost depths. He keeps fucking you as he comes, clearly reveling in the feeling of his seed squishing around his thrusting shaft inside your body. With the amount of cum he pumps into you, quite a bit squirts out around his cock as he does so, to run down the inside of your legs and drip onto the ground.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Orc Warrior";
		addAlcPoints 2;
		WaitLineBreak;
		infect "Orc Breeder";
		if BodyName of Player is "Orc Breeder" and player is pure and player is not mpreg_ok:
			LineBreak;
			say "     You feel something change deep inside you, as all the cum the orc filled you with completes your transformation to a real orc breeder. You'll now be able to be impregnated through anal sex.";
			FeatGain "MPreg";
		if Player is in Breeder Lockup A or player is in Dark Hallway 1 or player is in Dark Hallway 2 or player is in Orc Lair Side Entrance:
			LineBreak;
			say "     Satisfied at having gotten his rocks off, the orc drags you back to the cells and throws you into one. You can hear him murmur to himself as he walks off 'I'll have to offer the brothers one of my sluts to trade for this one. Damned fine ass...'";
			now battleground is "void";
			move player to Slave Cell 2;
		SanLoss 5;
	else: [in an event]
		if debugactive is 1:
			say "     DEBUG: LOST AGAINST THE ORC, EVENT SCENE[line break]";
		if OrcSpecialFightNumber is 1: [fighting Mul in the hallway in front of the Observation room]
			if MulAnalAcceptance > 4:
				say "[MulBottomAnalRide]";
			else if MulAnalAcceptance > 1 and player is male and a random chance of 1 in 2 succeeds:
				say "[MulAnalRide]";
			else:
				say "[MulFuck2]";
			move Player to Slave Cell 2;
		else if OrcSpecialFightNumber is 2:
			say "     Feeling faint and with stars dancing in front of your eyes, you can only uncoordinately flail about as the big orc grabs you by the throat and lifts you off your feet. The last thing you see of this fight is his brutish face, combat-lust flaring in its yellow eyes, then the warrior gives you a resounding headbutt that sends you into unconsciousness.";
			LineBreak;
			say "     You awake quite a while later, bruised and hurting all over, still lying on the floor of the drinking hall. Looks like Glarbuk just dropped your limp body where he stood after finishing you off, and no one bothered to help you up or even drag you aside since. In fact, you find yourself pretty wet and sticky, smelling of orc brew... someone must have stumbled over your prone form and spilled their drink all over you. After standing up and gingerly taking stock of where you hurt the most, your gaze turns to Boghrim. After your weak showing just now, he doesn't seem impressed, giving you only a casual glance before pulling Jason on his lap and making the human slave ride his thick, green cock.";
		else if OrcSpecialFightNumber is 3 or OrcSpecialFightNumber is 4 or OrcSpecialFightNumber is 5 or OrcSpecialFightNumber is 6:
			say ""; [dealt with in Orc Lair.i7x]
		now inasituation is false;
		now OrcSpecialFightNumber is 0;

to say OrcBeaten:
	if inasituation is false:
		say "     After your last hit, the orc warrior staggers a bit, his eyes unfocused - then he keels over with a groan and lands on his back with a loud thud. Seeing him lie on the ground, your eyes can't help but wander down to his crotch where the brute's loincloth has fallen aside, revealing the thick piece of man-meat between his legs.";
		LineBreak;
		say "     Would you like to... have some fun with the orc ([link]Y[as]y[end link]), or do you just leave ([link]N[as]n[end link])?";
		if Player consents:
			LineBreak;
			say "     [BeatenOrcSexMenu]";
		else:
			LineBreak;
			say "     You walk away after checking him over for loot.";
	else: [in an event]
		if OrcSpecialFightNumber is 1: [fighting Mul in the hallway in front of the Observation room - or out in the garage]
			if debugactive is 1:
				say "     DEBUG: EVENT VICTORY OVER THE ORC ([OrcSpecialFightNumber])[line break]";
			if MulAnalAcceptance > 4:
				say "     After your last hit, the orc warrior staggers backwards, his eyes unfocused - bumping into the body of the motor-less car in the garage with you. Wiping a spot of green blood from his split lip, Mul says in a groggy murmur, 'Hey, that's not how it's supposed to go...' As you step closer with a grin on your face, he tries to stand straight - only to lose his balance and fall back against the car once more. 'I'll get you - just... need... to... catch... my... breath,' he growls, still a little defiant even though he's clearly out for the count.";
				LineBreak;
				say "     What now?";
				say "     ([link]Y[as]y[end link]) - Savor your victory - bend the orc over the car hood and make him spread those cheeks.";
				say "     ([link]N[as]n[end link]) - Leave him there, trying to shore up his pride at having lost yet another fight.";
				if Player consents:
					say "     Hah, let him talk. Actions are what counts - like your own just now, as you grab the orc by his thick arm and pull him around to stand with his ass towards you. Before he can do anything more than start to grunt, 'You bastar-,' you've shoved his chest forwards, making him slump forward on the car hood - bumping his head with a *thunk*. Not that should have any negative effects, orcs are tough after all. Busying your hands, you quickly undo the knots holding Mul's loincloth, pulling it away and letting the skimpy piece of fabric drop to the ground - revealing the orc's firm and muscled buttocks, the sweet crack between them and his cock and balls, dangling between the orc's strong legs.";
					if Player is male:
						say "     The sight of the vanquished orc has your cock hard and ready in mere moments, and you lose little time in wrenching off your clothes to line up with his well-trained hole. In the mood for a hard, no nonsense fuck, you thrust deep right away, sinking your shaft into the strong male's tight hole and making him roar at the sudden anal invasion. Thanks to already breaking him in very well, Mul's pucker readily expands to allow more and more of your shaft in, while at the same time still being nice and snug around your member. The big brute's hole feels fantastic to be in, and the fact that you're dominating the very orc that wanted to take you as a slave makes fucking him all the sweeter.";
						say "     Being used to getting fucked by now - and unable to stop himself from getting of on it, Mul's anal muscles flex and twitch as you pound into him hard. Part of it is just him reacting to you hitting the prostate, but there are also some moments in which the orc's hole almost seems to jerk you off inside him. Apparently, your muscled green playmate has accepted this role so much now that he is experimenting with new techniques to make wild anal sex feel even better for you both. You can't help but give a very satisfied laugh at the situation - you, balls deep inside a mighty orc warrior and pounding into him hard so that he has to brace himself with both arms... against a car in an open garage, in sight of anyone who might walk by to check out the loud moans echoing out of your little fighting arena now being turned into a fuck-pad.";
						WaitLineBreak;
						say "     Grunts and slapping noises of your hips against Mul's ass fill the garage, coming in a rapid pace as you fuck Mul deeply without restraint. He's an orc after all - strong and tough, your bottom-boy can take whatever you can dish out. And you're quite certain that he even likes the rough treatment... having reached around him to take hold of Mul's own thick shaft, you can feel it twitch and pulse each time you give him an especially deep thrust. In a wild and exhilarating ride, you soon drive the big man closer and closer to the edge, his grunts and moans coming quicker and becoming slightly higher pitched.";
						say "     Forgetting his stubborn pride completely in the heat of sex, the orc even shouts, 'Yeah, take me! Faster! Pound my ass! Ngh - Nnngh! More! NnnnngggghhhHH!' With that last drawn-out roar, Mul starts to cum, his shaft rhythmically pulsing in your hand as stream after stream of cum blasts through it and splatters the side of the car. With each spurt of the orc's seed, all the muscles in Mul's body twitch and tense - including those inside his ass, around your shaft. This results in you joining your brutish partner in orgasm just moments later, gripping him tightly around the hips as your balls start to unload everything they got. Your seed gets pumped into Mul in weighty bursts, filling him up with creamy cum.";
						WaitLineBreak;
						say "     After depositing the last few spurts of your orgasm into Mul, you pull out of him with a slurp and leave the large orc to slump on the car's hood. Standing back, you take in your handiwork - one mighty orc warrior slouched against a cum-splattered car, with your seed dripping out of his hole and him still panting like a needy bitch. You can't help but laugh as he rests his shoulder and head on the cool metal car hood, just to have free hands that immediately start to finger his stretched hole.";
						say "     The very self-satisfied smile on your lips stays with you the whole time as you get dressed, then leave the freshly-bred orc to stick fingers up his rear and lick your cup off them afterwards. Eventually, he'll start a walk of shame back to the orc lair - in all likelihood making up some fancy story about this or that creature he fucked while outside, to tell his brothers and other orc buddies...";
						NPCSexAftermath Mul receives "AssFuck" from Player;
					else:
						say "     The sight of the vanquished orc has your arousal soaring in mere moments, and you lose little time in getting your hand between his buttcheeks, rubbing up and down. There is a satisfyingly needy moan from the big orc as you slip a finger into his hungry hole, feeling his warm tightness and tickling the orc's insides. Meanwhile, you other hand moves to cup his balls, rubbing them gently, then hefts the thick cock of your orcish butt-slut. Stroking him slowly while you finger him, a glistening drop of pre forms at his cockhead, to be swiped up by you and massaged into his back door, pushing the big brute further into lust with its aphrodisiac effects.";
						say "     Working Mul's asshole and dosing him with his own orc cum, you get more and more of the tasty liquid to leak out of his cock, allowing you to scoop up a nice amount with your fingers and lean forward to present them to the moaning and grunting orc. There is no hesitation at all as he takes in the first sniff of your offering, then pulls your hand to his mouth to hungrily suck off the semen from it. Thanks to already breaking him in very well, Mul's pucker readily expands to allow two, three, then four fingers as you get back to fondling his back door. The big brute's hole feels fantastic to be in, and the fact that you're dominating the very orc that wanted to take you as a slave makes finger-fucking him all the sweeter.";
						WaitLineBreak;
						say "     Being used to getting fucked by now - and unable to stop himself from getting of on it, Mul's anal muscles flex and twitch around your probing digits. Part of it is just him reacting to you hitting the prostate, but there are also some moments in which the orc's hole almost seems to pull your fingers into him. Apparently, your muscled green playmate has accepted this role so much now that he is experimenting with new techniques to make anal sex feel even better - and he clearly wants more. You can't help but give a very satisfied laugh at the situation - you, with not quite your whole hand inside a mighty orc warrior's ass and him gasping like a needy bitch as he braces himself... against a car in an open garage, in sight of anyone who might walk by to check out the loud moans echoing out of your little fighting arena now being turned into a fuck-pad.";
						say "     Forgetting his stubborn pride completely in the heat being fingered, the orc even shouts, 'Yeah, take me! Faster! Stroke that spot again! Ngh - Nnngh! More! NnnnngggghhhHH!' With that last drawn-out roar, Mul starts to cum, his shaft rhythmically pulsing in your other hand as stream after stream of cum blasts through it and splatters the side of the car. With each spurt of the orc's seed, all the muscles in Mul's body twitch and tense - including those inside his ass, around your fingers. An interesting sensation, feeling every tremble and spurt like this.";
						WaitLineBreak;
						say "     After Mul's orgasm winds down, you pull your hand out of his well-lubed ass with a slurp and hold it out for the orc to lick clean. When he's soon done, you stand back and take in your handiwork - one mighty orc warrior slouched against a cum-splattered car, with his hole still gaping a little in its well-stretched state. You can't help but laugh as he crouches down just a moment later and starts to lick his own cum off the side of the car. The very self-satisfied smile on your lips stays with you the whole time as you get dressed, then leave the freshly-milked orc to slurp up any cum he can get. Eventually, he'll start a walk of shame back to the orc lair - in all likelihood making up some fancy story about this or that creature he fucked while outside, to tell his brothers and other orc buddies...";
						NPCSexAftermath Mul receives "AssDildoFuck" from Player;
				else:
					say "     Laughing into Mul's face, you tell him to take a good long look at himself. So much for the mighty orc warrior, beaten up by one such as you. The taunt is all it takes for the orc to lunge at you, snarling - only to stumble as you easily side-step him. Once in movement, his muscled mass is hard to stop - and Mul's try to grab you turns into a flat-out fall on his face. There is a loud thunk as his head hits the ground, knocking the orc unconscious. Judging by the low groaning coming from the orc, he's okay - or will be in a bit when his wounds heal. With a last look at his stretched-out form, you leave Mul behind and stroll back to the orc lair.";
			else:
				say "     After your last hit, the orc warrior staggers a bit, his eyes unfocused - then he keels over with a groan and lands on his back with a loud thud. As just leaving him here for anyone to stumble over him doesn't seem to be a good idea, you drag the orc over into the nearby Observation Room, out of sight from other passing orcs. Once you've got him in the room, your eyes can't help but wander down to his crotch where the Mul's loincloth has fallen aside, revealing the thick piece of man-meat between his legs.";
				LineBreak;
				if Player is male and BodyName of Player is "Orc Warrior" and player is pure:
					say "     The urge to fuck Mul and show him what a REAL orc warrior is like rises inside you quickly. Do you do so ([link]Y[as]y[end link]), or do you just leave ([link]N[as]n[end link])?";
					if Player consents:
						say "[MulAnal]";
					else:
						say "     Shaking off the urge to pound into him hard, you check the orc for loot, then leave the room.";
				else:
					say "     Shaking off the funny feeling you get at the thought that he was ready to fuck you with that massive pole, you check the orc for loot, then leave the room.";
				now lastfuck of Mul is turns;
		else if OrcSpecialFightNumber is 2:
			if debugactive is 1:
				say "     DEBUG: EVENT VICTORY OVER THE ORC ([OrcSpecialFightNumber])[line break]";
			say "     After your last blow, the brutish orc warrior's yellow eyes become somewhat unfocused as he looks at you, surprise on his face about how this fight is going. Then, after another moment or two of staring at you, his eyes roll up in their sockets and he keels over backwards, hitting the floor with a resounding thud. Cheers erupt from the watching orcs and you soon find yourself surrounded by quite a few who congratulate you and want to drink a brew with you. There is a small celebration of your victory, with lots of booze being offered and quaffed, but eventually you can extract yourself from the throng of orcs and make your way to Boghrim, who awaits you sitting on his large couch, giving an approving nod as you step up on the platform.";
			say "     'You're not bad in a fight,' the orc boss says, while at the same time casually groping his human slave Jason's as he lies stretched out over his lap. Giving Jason's ass a playful slap that makes the young man pant in arousal, Boghrim pulls him aside, making his own orcish prick whip up, now that there isn't a submissive human lying on it anymore. While Jason automatically starts to worship his Master's shaft, stroking and licking it, Boghrim gives a telling look from the thick pole of man-meat to you and back. 'You do you still want to go through with the... arrangement we talked about?' he asks, chuckling at your eager nod a moment later.";
			WaitLineBreak;
			say "[BoghrimFirstFuck]";
			now HP of Boghrim is 1; [fuck buddy status reached]
		else if OrcSpecialFightNumber is 3 or OrcSpecialFightNumber is 4 or OrcSpecialFightNumber is 5 or OrcSpecialFightNumber is 6:
			if debugactive is 1:
				say "     DEBUG: EVENT VICTORY OVER THE ORC ([OrcSpecialFightNumber]), DEALT WITH IN THE EVENT [line break]"; [to be resolved in Orc Lair.i7x]
		now inasituation is false;
		now OrcSpecialFightNumber is 0;

to say BeatenOrcSexMenu:
	LineBreak;
	say "     What do you want to do with the orc?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Steal his loincloth";
	now sortorder entry is 0;
	now description entry is "Grab the loincloth from the orc";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Milk him for some orc cum";
	now sortorder entry is 1;
	now description entry is "Collect a bottle of cum from him";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Blow him off";
	now sortorder entry is 2;
	now description entry is "Suck the orc warrior's cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride his cock";
	now sortorder entry is 3;
	now description entry is "Impale yourself on the orc warrior's cock";
	[]
	if Player is male and BodyName of Player is "Orc Warrior" and player is pure:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 4;
		now description entry is "Take the orc warrior's ass";
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
				if (nam is "Steal his loincloth"):
					say "[BeatenOrcSex0]";
				if (nam is "Milk him for some orc cum"):
					say "[BeatenOrcSex1]";
				if (nam is "Blow him off"):
					say "[BeatenOrcSex2]";
				if (nam is "Ride his cock"):
					say "[BeatenOrcSex3]";
				if (nam is "Fuck his ass"):
					say "[BeatenOrcSex4]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You just walk away after checking him over for loot.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BeatenOrcSex0:
	say "     With a smile on your face, you lean over the groaning orc and untie the strands of his loincloth. You have to nudge and lift his legs a bit to slide the back part of the thin material out from under him, but soon you hold up your prize, standing over the fully naked brute now. Packing it away with your other equipment, you leave the orc behind and walk off, internally chuckling about the time when he'll wake up again and find himself exposed and out on the streets.";
	ItemGain orc loincloth by 1;

to say BeatenOrcSex1:
	say "     After pulling an empty bottle out of your pack and setting it down where you can quickly reach it, you kneel down beside the downed orc and take hold of his meaty shaft. Fingers around the thick member, you start jerking on it, causing the big brute to switch from pained groans to lust-filled moans in no time at all. Soon, you've got his manhood fully hard and standing straight up like a pole, pulsing slightly from the beat of his heart as it sends blood to this priority. Setting down your other hand on the full, weighty globes of his balls, you stroke and fondle your helpless orc a bit, grinning as you push him closer and closer to orgasm. When he finally can't hold back any more, you quickly snatch up your prepared bottle and hold it to his cock, successfully catching one, two, three big spurts of his milky white cum before the bottle is full. The rest of the muscled brute's load just arcs high into the air as you pull your container out of the way, to splatter messily all over the orc's broad chest. Putting the cap on your bottle and stashing it away, you give the orc's balls a last quick fondle, then walk away and leave the panting brute to pick himself up later.";
	ItemGain orc cum by 1;

to say BeatenOrcSex2:
	say "     Kneeling down beside the downed orc, you take hold of his meaty shaft. Fingers around the thick member, you start jerking on it, causing the big brute to switch from pained groans to lust-filled moans in no time at all. Soon, you've got his manhood fully hard and standing straight up like a pole, pulsing slightly from the beat of his heart as it sends blood to this priority organ. Setting down your other hand on the full, weighty globes of his balls, you stroke and fondle your helpless orc a bit, grinning as he gives aroused grunts at your touch. Leaning forward, you lick up the glistening bead of precum forming at the tip of his hard cock, and finding it amazingly tasty, you immediately slide your lips over his cockhead and start blowing him off.";
	say "     With both your hands on his thick pole while you bob your head up and down and tease him with your tongue, you push your orc to higher and higher arousal. Before that much longer, his grunts and moans betray a growing urgency as they rise in volume, and you can feel him getting pretty close. Eager to taste what he has to offer, you proceed to go down on him with even greater relish and just moments later, a shudder runs through the muscular brute's supine body and he orgasms. Accompanied by loud lust-filled grunts, blast after blast of his creamy orc cum fills your mouth, flooding your taste-buds with a delightfully good flavor and giving you a giddy rush and pleasant buzz as you swallow it all down. By the time you pull off his cock with a slurp, you even feel pretty full and even a bit drunk. Giving the orc an affectionate pat on the hip, you stand up and walk away, leaving the panting brute to pick himself up later.";
	SanLoss 10;
	MoraleBoost 5;
	addAlcPoints 2;
	CreatureSexAftermath "Player" receives "OralCock" from "Orc Warrior";

to say BeatenOrcSex3: [ride him]
	say "     Kneeling down beside the downed orc, you take hold of his meaty shaft. Fingers around the thick member, you start jerking on it, causing the big brute to switch from pained groans to lust-filled moans in no time at all. Soon, you've got his manhood fully hard and standing straight up like a pole, pulsing slightly from the beat of his heart as it sends blood to this priority organ. Setting down your other hand on the full, weighty globes of his balls, you stroke and fondle your helpless orc a bit, grinning as he gives aroused grunts at your touch. Leaning forward, you lick up the glistening bead of precum forming at the tip of his hard cock, and finding it amazingly tasty, you immediately slide your lips over his cockhead and start blowing him off.";
	say "     Wow, the taste of orc cum or pre-cum on your lips really goes to one's head quickly. It takes several minutes of bobbing down on his erection till you even remember that you did want to do something else right now, and you almost have to force yourself to pull off his shaft. Well, at least his cock should be pretty slick now, you think as you move into position to kneel over the orc's hips and slide his erection up and down between your asscheeks. Then you line up the tip of his cock with your pucker and slowly increase your downward pressure until the orcish dong pops into you.";
	WaitLineBreak;
	say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. Though not one to give up so easily, you sink yourself deeper onto his hard shaft, and before long, more pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - so you have to stop often and take a moment to get used to things as you impale yourself more and more on the orcish warrior's erection. As you do so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, you're finally all the way down on his prick, his hard shaft buried all the way in you and his two large cum-factories resting against your skin.";
	say "     After taking a deep breath, you start sliding up and down on the orc's manhood, fucking yourself first slowly, then faster and faster as your insides stretch and more and more of his precum makes your hole pretty slick and wet. As good as riding the orc's thick shaft makes you feel, it doesn't take all that long until your frantic movements drive your arousal over all limits, making you almost shout out a pleased moan as you orgasm and [if Player is male]spray your cum all over the orc's broad chest[else if Player is female]femcum sprays from your pussy to splatter down on the orc's abs[else]a tingly feeling spreads through your whole body[end if].";
	WaitLineBreak;
	say "     Having your hole tremble and twitch around his orcish member while you come gives your partner the last little push he needed to reach his own climax, and with a loud and very satisfied grunt, the orc starts blasting a massive load of cum into your innermost depths. He bucks up against you as he comes, clearly reveling in the feeling of his seed squishing around his thrusting shaft inside your body. With the amount of cum he pumps into you, quite a bit squirts out around his cock as he does so, to drip down onto his own crotch and the ground below.";
	say "     Exhausted but happy, you pull off your toy orc's still pretty hard shaft, then stand up on somewhat weak knees. After collecting your clothes and gear, you give the orc an affectionate pat on the chest, then walk away, leaving the panting brute to pick himself up later.";
	SanLoss 5;
	increase morale of Player by 5;
	CreatureSexAftermath "Player" receives "AssFuck" from "Orc Warrior";
	addAlcPoints 2;

to say BeatenOrcSex4: [fuck him]
	say "     Kneeling down beside the downed orc, you take hold of his meaty shaft and stroke it a few times, then let your hand wander to his balls. You weigh the hairy globes in your hand and give them an appreciative fondle before you move even lower, sliding your hand between his legs and brushing over his asshole with an exploring finger. As you gently rub the skin around his opening, the orc starts panting softly from the pleasurable touch, and you can see his manhood grow moment by moment. When you soon do push a finger in against his pucker and probe his hole, the defeated orc warrior doesn't quite realize what you're doing at first - other than that it makes him feel quite interesting.";
	say "     Though that doesn't last long - shaking off the somewhat dazed state and the lustful haze you've put him in, the orc raises his upper body and grunts, 'Wait - no. Stop that! I'm not a breeder!', then tries to get up and brush you off. It's an easy task to stop him from doing so, given that you've just kicked his ass and have a quite powerful orcish physique yourself. With one of your big hands on his chest to hold him down, you lean over the orc and growl at him with bared tusks. That show of strength - plus putting your other hand on his balls and giving them a tight warning squeeze - makes the orc surrender to your pleasure. 'Okay, you win you bastard,' he growls, then lets his head fall back to lie on the ground. Your captive's face scrunches up sullenly as you spread his legs with your hands, though he doesn't resist as you do so.";
	WaitLineBreak;
	say "     After getting two fingers nice and wet with spit, you push them against his hole, penetrating his now tense muscle with a bit of effort. Your vanquished orc doesn't seem to want to bottom for you, though as you probe his depths and rub his inner walls, he can't hide that he does get aroused by your touch - after all, his thick cock filling out more and more till it stands proudly erect is a pretty obvious sign. To distract him a bit from his futile resistance, you do put your other hand on his towering pole, jerking up and down on it. Given this new focus to his attention, the green brute loses some of his inhibitions, moaning openly at your touch and leaking precum from the tip of his shaft. Even his pucker relaxes a bit, now that he's no longer consciously clenching it, and you can now push much easier into him and reach his prostate with a teasing touch.";
	say "     You keep going like this for a few minutes, finger-fucking your orcish captive's ass while jerking him off, then quietly pull our your probing digits and line up your manhood with his hole. All the preparation does pay off nicely, as you can penetrate him in a smooth glide in and hit his prostrate with your first thrust, making the previously oh so reluctant orc howl in lust and pleasure. And given the awesome feeling of his tight (most likely virgin) hole stretching around your shaft, you're no less vocal, grunting loudly as you bottom out deep inside him. Panting, you close your eyes and savor the sensations of being balls-deep in this powerful male, fully concentrating on the feeling of his tight hole, his firm cheeks against your balls and the muscles of his legs under your hands.";
	WaitLineBreak;
	say "     Then suddenly, you hear the words 'Fuck me' in almost a whisper. Opening your eyes, you do look down on the supine orc, taking in the needful expression on his face. He gives a groan and you feel his anal muscles flex around your shaft, then he says a bit louder 'You - it... it feels so good. I want it, need it - now!' For a moment, the thought of maybe letting him beg a bit more goes through your mind, though your own arousal gets the better of you and your hips start moving almost of their own. Gripping the orc warrior's legs tightly you pull back and back, till only the very tip of your shaft is still inside him, then thrust back in all the way, filling the air with a lustful shout of two voices as you do. With that, the floodgates break completely and you start giving your orc a hard and deep fuck, really pounding into him.";
	say "     You don't know for how long the wild coupling between you lasts, and you don't really care, in the lust-filled haze you find yourself in while fucking your orcish partner. At some point in the unrestrained copulation between the two of you, your bottom-boy orc's moans start getting deeper and louder, then turn into lust-filled roars as he bucks against you and cum starts gushing out of his thick shaft. He shoots a truly impressive amount of creamy orc cum in high arcs, to splat down audibly all over his chest, neck and face. While the green brute does so, his anal muscles twitch around your own cock with each burst of his seed, making your arousal mount quickly and soon reach its maximum. After just a few more thrusts, you join your orc partner in orgasm. With a deep grunt, you slam into him one last time, your shaft buried as deeply as possible inside his tightly gripping depths as it starts unloading spurt after spurt of your cum. Holding on to the orc's legs, you fill his insides with your seed, then rest with your manhood still inside him and you catch your breath.";
	WaitLineBreak;
	[TODO: Write special scenes for the Brothers]
	if inasituation is true:
		if OrcSpecialFightNumber is 4: [fighting Yatur]
			TraitGain "Player_AssFucked" for Yatur;
		else if OrcSpecialFightNumber is 5: [fighting Koghh]
			TraitGain "Player_AssFucked" for Koghh;
		else if OrcSpecialFightNumber is 6: [fighting Mul]
			TraitGain "Player_AssFucked" for Mul;
	say "     Exhausted but happy, you pull out of your toy orc's well-bred hole, then stand up on somewhat weak knees. After collecting your clothes and gear, you give the orc an affectionate pat on his sticky chest, then walk away, leaving the panting brute to pick himself and come to terms with being fucked on his own.";
	CreatureSexAftermath "Orc Warrior" receives "AssFuck" from "Player";

to say OrcDesc:
	setmongender 3;
	if inasituation is false:
		project the figure of Orcwarrior_random_icon;
		if Player is in Breeder Lockup A or player is in Dark Hallway 1 or player is in Dark Hallway 2 or player is in Orc Lair Side Entrance:
			say "     A large and muscular orc comes along, grinning broadly as he sees you. 'You must be that new slave Mul and his brothers are boasting about - and out of your cell too.' The thick shaft between his legs twitches against the ragged loincloth that barely covers it as his eyes wander over your body. 'I'll put you back where you belong - after I fuck you, that is,' he says in a deep voice and slams a large balled fist into the palm of his other hand. 'Wanna struggle or wimp out? You're mine either way.'";
		else:
			say "     A large, muscular creature crosses your path. It's an orc, no doubt about it - sporting the powerful build, green skin and brutish facial features that are described in any number of fantasy stories, this one is nevertheless quite real. As is the thick shaft between his legs, barely covered by a ragged loincloth, which grows and twitches a bit as the orc looks at you. He gives you a possessive grin around his protruding tusks, then adds 'Hello little piggy.' in a deep voice and slams a large balled fist into the palm of his other hand. 'Wanna struggle or wimp out? You're mine either way.'";
	else: [in an event]
		if OrcSpecialFightNumber is 1: [fighting Mul]
			if graphics is true:
				project the figure of Mul_clothed_icon;
			if MulAnalAcceptance > 4:
				say "     A large and muscular orc comes along - it's your 'special friend' Mul, who bares his tusks and snarls as he sees you. You may have broken him in to actually like being fucked, but that doesn't mean he isn't still the proud green-skinned brute that you know and love, with his mind set on dominating you and others. Thick brows drawing together, the orc gives you a penetrating stare and makes a first step towards you - only to press his lips together and swallow what he wanted to say as an orc [one of]stumbles out of the main hall to the west, mumbling about taking a leak[or]struts into the lair through its side entrance, carrying a bound soldier over his shoulder[or]passes you in the hallway, barely giving a glimpse[or]sticks his head into the hallway and shouts, 'Where are you, you little slut? Time to suck my dick, breeder!' He grumbles as there is no reply and only Mul and yourself are in sight[at random]. Even through this is just a side entrance, there seems to be quite a bit of activity going on right now...";
				WaitLineBreak;
				say "     The crack of Mul's knuckles draws your attention back to the big orc. 'Let's take this outside,' he gruffly tells you, giving a nod towards the exit. Since a one on one fight with the orc has less of a probability of an orc gangbang, and more... options, if you should win, you agree. With a quick nod you let the orc precede you, then follow him out of the orc lair and into the empty streets. There's definitively something to be said about the ability of the orcs to calm the usually so crazy streets of the city - anyone not fled or dragged off to be a slave is thoroughly intimidated, so you make your way along several blocks without anyone or anything coming into sight. Eventually, Mul steps into what looks like a mechanic's shop, filled with a motor-less car and tools scattered over the somewhat cum-streaked floor.";
				say "     Looking around, the brutish orc gives a satisfied grunt, then turns to you. 'Let's see who's the boss now. I'm gonna show you what a real orc can do!' And with that, he balls his fists and attacks.";
			else:
				say "     A large and muscular orc comes along - it's Mul, one of the three orc brothers that brought you here. 'Trying to escape, slave? Looks like I'll have to show you why that is a bad idea...' he snarls, cracking his knuckles. 'You BELONG to us - that's something you'll understand soon enough.' With that, he rushes at you, battle-lust - and regular lust - in his eyes.";
		else if OrcSpecialFightNumber is 2:
			if graphics is true:
				project the figure of Orcwarrior_random_icon;
			say "     Glarbuk towers even over the other green-skinned orc warriors, having at least half a foot extra on top of their already impressive stature. His bicep is at least as thick as a normal human's thigh and he has hands large enough to fully enclose a human head - and crush it like an egg. At the moment, the powerful male's eyes are focusing on you, and his drawn-together eyebrows and annoyed expression tell you that you're in for a beating. Maybe you shouldn't have smashed the beer stein over his head...";
		else if OrcSpecialFightNumber is 3:
			if graphics is true:
				project the figure of Orcwarrior_random_icon;
			say ""; [taken care of in Orc Lair.i7x]
		else if OrcSpecialFightNumber is 4: [fighting Yatur in the meeting event]
			if graphics is true:
				project the figure of Yatur_clothed_icon;
			say ""; [taken care of in Orc Lair.i7x]
		else if OrcSpecialFightNumber is 5: [fighting Koghh in the meeting event]
			if graphics is true:
				project the figure of Koghh_clothed_icon;
			say ""; [taken care of in Orc Lair.i7x]
		else if OrcSpecialFightNumber is 6: [fighting Mul in the meeting event]
			if graphics is true:
				project the figure of Mul_clothed_icon;
			say ""; [taken care of in Orc Lair.i7x]

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Orc";
	add "Orc Warrior" to infections of OrcList;
	add "Orc Warrior" to infections of MaleList;
	add "Orc Warrior" to infections of MpregList;
	add "Orc Warrior" to infections of BipedalList;
	now Name entry is "Orc Warrior";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The [one of]orc[or]green-skinned brute[or]muscular orc[or]brutish orc[or]muscled brute[at random] [one of]slaps you around a bit[or]gives you a painful kick[or]pounds you with a big fist[or]grabs you by the throat and throws you to the ground[or]grabs you with one of his hands and headbutts you[or]grabs you by the throat, choking you a bit before you can free yourself[at random]!";
	now defeated entry is "[OrcBeaten]";
	now victory entry is "[OrcVictorious]";
	now desc entry is "[OrcDesc]";
	now face entry is "brutish in appearance, having gained an exaggerated brow, square jaw and yellow eyes. Two sharp tusks protrude from your lower mandible, giving all your expressions a terrifying undertone and distorting your speech somewhat. The short hair on top of your head is black and bristly, sticking up on its own";
	now body entry is "overall human-like, but grown to a good seven feet tall and heavily muscled. The proportions of your body are clearly a bit off the human norm, giving you a pretty bulky build, large hands and feet at the end of thick and powerful limbs, as well as a relatively short neck";
	now skin entry is "[one of]green[or]pale green[at random]";
	now tail entry is "";
	now cock entry is "[one of]meaty[or]veined[or]green[at random]";
	now face change entry is "a splitting headache has you hold your skull with both hands. Then the changes overtake you, jaw broadening into a square shape as two sharp tusks push up out of your mouth. Your nose flattens and becomes wider, then the rest of your features change into a pretty brutish visage with protruding brows above your eyes. As your face stabilizes in its new form, short bristles of black hair sprout on top of your head";
	now body change entry is "it shifts and changes, becoming larger than normal. You gain bulging muscles on a broad and powerful frame. As the transformation works its way down your limbs, making them ticker and stronger, it leaves you with somewhat larger than normal hand and feet";
	now skin change entry is "a wash of green spreads across it, at first pretty dark, then lightening to an even, light green tone all over";
	now ass change entry is "your glutes become firm and meaty";
	now cock change entry is "it becomes a light green in color, with a bush of black, slightly bristly hair at its base";
	now str entry is 20;
	now dex entry is 14;
	now sta entry is 18;
	now per entry is 10;
	now int entry is 6;
	now cha entry is 6;
	now sex entry is "Male";           [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 125;
	now lev entry is 14;               [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15;              [ Monster's average damage when attacking. ]
	now area entry is "Capitol";       [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1;         [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 14;       [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 4;          [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;       [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0;        [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;         [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0;         [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0;     [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]         [ Width in inches of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 70;
	now loot entry is "orc brew";      [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50;        [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "orc cum";
	now TrophyFunction entry is "[GenerateTrophyList_Orc_Warrior]";
	now scale entry is 4;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]meaty[or]powerful[or]broad[or]bulky[at random]";
	now type entry is "[one of]orc[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is "Orc Breeder"; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;     [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "Orc";
	now Name entry is "Orc Warrior"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 7; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 9; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 1; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "a splitting headache has you hold your skull with both hands. Then the changes overtake you, jaw broadening into a square shape as two sharp tusks push up out of your lower jaw. Your nose flattens and becomes wider, then the rest of your features change into a pretty brutish visage with protruding brows above your eyes"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a somewhat brutish, [Head Color of Player] humanoid. Two sharp tusks protrude from your lower mandible, giving all your expressions a terrifying undertone and distorting your speech somewhat"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "orcish"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is "olive green"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "protruding orcish tusks";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "black"; [one word color descriptor]
	now Hair Style entry is "crew cut"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is "3-day stubble beard"; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 2; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "yellow"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 11; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 4; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "broad"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pine green"; [one word color descriptor]
	now Tongue Length entry is 4; [length in inches]
	now Torso Change entry is "it shifts and changes, becoming larger than a normal human's, with a broad set of shoulders. Your skin turns a deep shade of olive green, complete with a moderate amount of body hair"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "larger than a normal human's and with broad shoulders"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "orcish"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "olive green"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "moss green"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "olive green"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "olive green skin spreads down from your shoulders to cover their whole length. Another change is that they become longer than a regular human's, with the strong hands at the end somewhat oversized too"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] skin and are longer than a normal human's, ending in strong, somewhat oversized hands"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "olive green"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "olive green skin spreads down from your hips to cover their whole length. Another change is that they become longer than a regular human's, with the wide feet at the end somewhat oversized too"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "[Legs Color of Player], longer than a normal human's and end in broad, somewhat oversized feet"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "olive green"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes well rounded, with olive green skin spreading over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "green-skinned ass"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "olive green"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "olive green"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 13; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "moss green"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 4; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 14; [length in inches]
	now Cock Adjective entry is "orcish"; [one word adjective: avian/canine/...]
	now Cock Change entry is "it takes on human shape, thick in girth and with a moss green color as well as a stretchy foreskin"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player], fairly thick and is human in shape. It is covered in moss green skin and even has a stretchy foreskin covering the head"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is "moss green"; [one word color descriptor]
	now Ball Count entry is 2; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 4; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a loose-hanging, somewhat hairy sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is "orcish"; [one word adjective: avian/canine/...]
	now Cunt Change entry is "it takes on human shape, complete with a well-sized clit at the top and all of it in moss green color"; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player] in color and human-shaped, complete with a well-sized clit and all of it is moss green in color"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is "moss green"; [one word color descriptor]
	now Clit Size entry is 4; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Table of Game Objects (continued)
name	desc	weight	object
"orc brew"	"A beer stein with a tight-fitting metal lid on a hinge that keeps its contents from sloshing out. On the side of it, you see the printed words 'Orctoberfest 2008', with the first 'r' being scrawled on with a sharpie. The yellow-green fluid inside does look kinda like beer. Though how the orcs might have produced it is a mystery - maybe for the better."	1	orc brew

instead of sniffing orc brew:
say "You open the lid for a moment and take a sniff. Spicy, and definitively alcoholic.";

orc brew is a grab object.
Usedesc of orc brew is "[orc brew use]";

to say orc brew use:
	say "Lifting the beer stein in one hand, you thumb the lid open and take a deep quaff of the liquid within. Hmm, tasty in a strange spicy way, and good against thirst. You can't help yourself and keep drinking until all of it is gone, leaving you wanting for more. The empty mug you throw away, it being too heavy to lug around as an empty container.";
	PlayerDrink 6;
	addAlcPoints 3;
	OrcInfect;

to OrcInfect:
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Orc Warrior":
			now MonsterID is y;
			break;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	infect "Orc Warrior";
	now non-infectious entry is true;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Orc";
	add "Orc Breeder" to infections of OrcList;
	add "Orc Breeder" to infections of MaleList;
	add "Orc Breeder" to infections of MpregList;
	add "Orc Breeder" to infections of BipedalList;
	now Name entry is "Orc Breeder";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "Orc breeders should not fight. Please report how you saw this!";
	now defeated entry is "Orc breeders should not fight. Please report how you saw this!";
	now victory entry is "Orc breeders should not fight. Please report how you saw this!";
	now desc entry is "Orc breeders should not fight. Please report how you saw this!";
	now face entry is "that of a relatively handsome man, with somewhat pronounced brow, a square jaw and yellow eyes. Two small tusks protrude from your lower mandible, looking almost... cute, compared to a real orc's. Your face is framed by long, silky black hair hanging down to your shoulders";
	now body entry is "human-like, almost six feet tall and nicely muscled. The proportions of your body are slightly off the norm for a human male, giving you what might be called 'child-bearing' hips, as well as slightly larger hands and feet";
	now skin entry is "[one of]green[or]pale green[at random]";
	now tail entry is "";
	now cock entry is "[one of]meaty[or]veined[or]green[at random]";
	now face change entry is "a painful headache has you hold your skull with both hands. Then the changes overtake you, jaw broadening into a square shape as two small tusks push up out of your mouth. The rest of your face soon takes on a relatively handsome male form, albeit with somewhat pronounced brow and yellow eyes. Finally, silky black hair sprouts from your head, flowing down till it reaches your shoulders";
	now body change entry is "it shifts and changes, becoming that of a relatively tall man. You gain nicely defined muscles, while at the same time your hips widen noticeably, into what one might call 'child-bearing' on a woman. As the transformation works its way down your limbs, it leaves you with slightly larger than normal hand and feet.";
	now skin change entry is "a wash of green spreads across it, at first pretty dark, then lightening to an even, light green tone all over";
	now ass change entry is "your glutes become firm and meaty";
	now cock change entry is "it becomes a light green in color, with a bush of black, silky hair at its base";
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 12;
	now per entry is 14;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Male";           [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 25;
	now lev entry is 4;                [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 4;               [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";       [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1;              [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 8;        [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2;         [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;            [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0;        [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0;       [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;              [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0;        [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]         [ Width in inches of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 90;
	now loot entry is "orc cum";      [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;        [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "orc cum";
	now TrophyFunction entry is "-";
	now scale entry is 3;                             [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]well-built[at random]";
	now type entry is "[one of]orc[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is "Orc Warrior"; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;           [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "Orc";
	now Name entry is "Orc Breeder"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 8; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 2; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "a splitting headache has you hold your skull with both hands. Then the changes overtake you, jaw broadening into a square shape as two small tusks push up out of your lower jaw. The rest of your face soon takes on a relatively handsome male form, albeit with somewhat pronounced brow"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a handsome humanoid with [Head Color of Player] skin and a square jaw. Two small tusks protrude from your lower mandible, giving all your expressions a nonhuman, but rather cute undertone and distorting your speech a little"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "orcish"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is "emerald green"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "small orcish tusks";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 12; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "black"; [one word color descriptor]
	now Hair Style entry is "shoulder length"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "yellow"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 9; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "broad"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "lime green"; [one word color descriptor]
	now Tongue Length entry is 4; [length in inches]
	now Torso Change entry is "it shifts and changes, becoming human in shape with somewhat broad shoulders. Your skin turns a rich shade of emerald green and loses all body hair, becoming silky smooth"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "humanoid, with somewhat broad shoulders and rich [Torso Color of Player] skin that is silkily smooth without any body hair at all"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "orcish"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "emerald green"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "moss green"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "emerald green"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "emerald green skin spreads down from your shoulders to cover their whole length. Your hands become just a little larger than a regular human's, strong but with nicely soft skin"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] skin and end in hands that are a little bit larger than a normal human's, strong but with nicely soft skin"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "emerald green"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "emerald green skin spreads down from your hips to cover their whole length. Growing just a little beyond the human norm, your feet become moderately wide and are covered in though but soft skin"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "covered in [Legs Color of Player] skin and end in two wide feet that are somewhat larger than a normal human's"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "emerald green"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes well rounded, with emerald green skin spreading over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "green-skinned ass"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "emerald green"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "emerald green"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 14; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "moss green"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 3; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 8; [length in inches]
	now Cock Adjective entry is "orcish"; [one word adjective: avian/canine/...]
	now Cock Change entry is "it takes on human shape, average in girth and with a moss green color as well as a stretchy foreskin"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player], fairly thick and is human in shape. It is covered in moss green skin and even has a stretchy foreskin covering the head"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is "moss green"; [one word color descriptor]
	now Ball Count entry is 2; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 3; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a snug, wrinkled sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is "orcish"; [one word adjective: avian/canine/...]
	now Cunt Change entry is "it takes on human shape, complete with an averagely-sized clit at the top and all of it in moss green color"; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player] in color and human-shaped, complete with an averagely-sized clit and all of it is moss green in color"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is "moss green"; [one word color descriptor]
	now Clit Size entry is 3; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Table of Game Objects (continued)
name	desc	weight	object
"orc cum"	"A plastic water bottle you've filled with orc cum. Its contents are milky white, thick and creamy. If you didn't know where it's from, you'd almost think it might be some sort of flavored buttermilk. You could drink it to quench your thirst, but who knows what else it might do to you..."	1	orc cum

instead of sniffing orc cum:
say "You open the lid for a moment and take a sniff. Smells rather tasty actually and you're tempted to take a pull from the bottle.";

orc cum is a grab object. orc cum is cum.
orc cum is infectious. Strain of orc cum is "Orc Breeder".
Usedesc of orc cum is "[orc cum use]";

to say orc cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy orc cum run over your tongue and down your throat. Mmmmh, this stuff has a really great taste that calls for more. You can't help yourself and keep drinking until all of it is gone, filling your mind with a giddy, pleasant buzz. Now where do you get more of this stuff? You're really tempted to find an orc and just suck it right out of his cock.";
	PlayerDrink 6;
	addAlcPoints 2;
	SanLoss 10;

Section 3 - Definitions

Definition: a person is OrcCocked:
	if CockName of Player is "Orc Warrior" or CockName of Player is "Orc Breeder":
		yes;
	else:
		no;


Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Orc Breeder Infection"	"Infection"	""	Orc Breeder Infection rule	1000	false

This is the Orc Breeder Infection rule:
	if Player has a body of "Orc Breeder":
		trigger ending "Orc Breeder Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     As you succumb to the infection, you feel an almost desperate hunger and need for... something awaken in you. No matter what you try, nothing really quenches that need, after a while all food just tastes a bit bland to you. Finally, after another sleepless night of fighting the cravings, your inner urges drive you to wander out onto the chaotic streets of the nanite-stricken city, making you wander towards the capitol district almost in a haze. As you go along, more than one creature you meet takes advantage of your entranced state, dragging you into alleys or fucking you right there in the middle of the street to satisfy their own desires.";
			say "     Though no matter how good you might feel with them for a time, there's always the inner push for you to go on and find what you really need. Then finally, a muscular green-skinned person steps into your way. Smiling around his sharp tusks, the orc warrior says 'Lucky day for me. A handsome little breeder just wandering down the street alone.' He inspects your naked body, giving a deep chuckle as he sees the various other creatures cum dripping out of your ass. With a murmur of 'Even already lubed.' he just bends you over the nearby wreck of a car and proceeds to fuck you until flooding your insides with a massive load of his cum. Then, as he has you lick his thick cock clean afterwards, you find that this is what you craved all along. The orc's cum tastes like ambrosia, giving you a very strong, pleasant - and addictive - buzz. Not wanting to ever be without this feeling, you eagerly follow your new orcish master, soon joining several other docile breeders in his lair...";
		else:
			say "     When the military finally moves in, you're brought to a holding facility like so many others and have to spend quite a while waiting for the doctors to have a look at you. As day after day passes, you find yourself growing more and more dissatisfied with the food they serve the waiting evacuees, everything tasting very bland and barely edible. Then, when it's finally time and you're brought to see one of the doctors, he listens to your complaints and gives you a look up and down before murmuring 'Another one of those' and having a nurse bring you a dose of 'OCP3' to drink. The milky white liquid smells amazing and tastes even better, flooding your whole being with a pleasant feeling. As you're told before your release soon after, your new body does have a... built in dependence on orc cum, with it acting as a highly addictive drug. Giving in to the need would quickly put you in a very docile state, as well as making you highly receptive for impregnation, so they tell you to return each week for a supply of a 'OCP3' (in reality nothing more than highly diluted orc cum and sugar water) to keep the cravings under control.";
			if "Weak Psyche" is listed in feats of Player:
				say "     Weak-willed as you are, it barely takes a week until you're down on your knees in an alley, lips around an orc's thick shaft as he blasts his load into your mouth. With the very strong pleasant buzz that floods your mind after the first swallow pushing aside any dissenting thoughts, you obediently let yourself be taken to meet his buddies afterwards, becoming the breeding slut of their little gang of orc brutes.";
			else if "Strong Psyche" is listed in feats of Player:
				say "     As resilient as you are, you decline to just accept this as a fact of your new life, instead focusing all your will on overcoming the addiction the nanites left you with. It takes weeks, then months, during which you only use the diluted orc cum preparation when you're almost ready to climb up the walls of your bedroom, but eventually, the dependence lessens and finally disappears. Having accomplished what the doctors told you was almost impossible, you make it your task to help others in the same situation too, soon afterwards opening the first ever orc detox center...";

Orc Infections ends here.
