Version 1 of Tiger Shark by Lone Wanderer begins here.
[Version 1 - New Creature]

"Adds a unique Tiger Shark character to Flexible Survival's Monsters table"

[   0 = Not met                                                   ]
[   1 = Met while not being a FSD (Feral Sea Dragon/ess)          ]
[  50 = Submitted as FSD to him                                   ]
[  51 = Threw fight/lost to him as FSD                            ]
[  52 = Beat him as FSD                                           ]
[  53-55 = Beat him as FSD up to 4 times in a row                 ]
[  60 = Stole his necklace                                        ]
[  61 = Submitted as FSD to his vengeful form                     ]
[  62 = Threw fight/lost as FSD to his vengeful form              ]
[  63 = Beat him as FSD in his vengeful form                      ]
[  63-67 = Win-streak as FSD vs. his vengeful form                ]
[  68 = Gave him the necklace back as anything other than FSD     ]
[  69 = Gave him the necklace back as FSD                         ]
[  70 = Transformed him into a FSD                                ]
[  80 = Broke his spirits/mind. He submits willingly to FSDs now  ]
[  90 = Claimed him while you're a FSD yourself                   ]
[ 100 = Didn't claim him yourself, he is taken away by other FSD  ]

Section 0 - Monster Variables, Flags and Markers and aiding functions

when play begins:
	add { "Tiger Shark" } to infections of guy;
	add { "Tiger Shark" } to infections of furry;

ts_warrior is a truth state that varies.		[registers if the player is fighting the shark warrior or not.]
ts_warrior is usually false.
tsw_victory is a truth state that varies.	[registers whether Tiger Shark Warrior won or not.]
tsw_victory is usually false.
tsw_fsd is a number that varies.	[registers if the player is a feral sea dragon. It's a shortcut for checks. 0 = none, 1 = feral sea dragon, 2 = feral sea dragoness]
tsw_fsd is 0.
tsw_relationship is a number that varies.	[The standing of the shark warrior towards you. Currently it memorizes last actions]

to TigerSharkInfect:	[Function to infect the player. By default the Tiger Shark is non-infective because of the Tiger Shark Warrior]
	Setmonster "Tiger Shark";
	choose row monster from the Table of Random Critters;
	now non-infectious entry is false;
	infect "Tiger Shark";
	now non-infectious entry is true;

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Shark Warrior	"Shark Warrior"

Shark Warrior is a situation.
The sarea of Shark Warrior is "Beach".
when play begins:
	add Shark Warrior to badspots of guy;
	add Shark Warrior to badspots of furry;

Instead of resolving Shark Warrior:
	say "     As usual, you walk parallel to the open sea. The sound of a soft breeze permeates the area, keeping the sea in motion and whirling a bit of the dry sand near your feet around. It also brings the familiar, salty ocean smell to your nostrils. Enjoying the view, you take a moment to just stand there and let the sounds soothe you. Unfortunately, it doesn't last long; the silence is disturbed by a great splash in the water. A feral sea dragon surfaces with a loud and angry roar. Just a moment later you see that the dragon is flailing around, trying to hit something desperately before the struggling creature sinks back into the blue.";
	project the Figure of TSW_icon;
	say "     You can briefly spot an ochre humanoid on the creature's belly, wrestling with the angry monster. After a while of staring at the spot where both of them submerged into the water, a tiger shark surfaces. His naked body is pretty built and shows some scars along his hide, proof of his constant strife in this world. He's also adorned with a couple of trinkets; a selection of teeth, presumably some of the dragons['] he beat, are braided together into a ligature around his neck, and there's also a rope tied around his hips. The rope is equipped with a couple of small bags and has a bit of kelp hanging from it. He turns towards you in the banks, appraising the witness of his battle.";
	WaitLineBreak;
	if (bodyname of player is "Feral Sea Dragon" and player is pure) or (bodyname of player is "Feral Sea Dragoness" and player is pure):	[Check if the player is a pure feral sea dragon/ess]
		say "     The shark stands on the shore for a bit, judging your form. 'Well, look at that. You dragons don't seem to understand your place in this world. It's in the sea, with me!' With that, the scarred one starts running towards you.";
		now ts_warrior is true;
		challenge "Tiger Shark"; [Fight the Tiger Shark variant]
		if tsw_victory is true:
			LineBreak;
			say "     You are interrupted in your afterglow, the tiger shark ";
			if (tail of player is not "") or (tail of player is not " "):
				say "dragging you by your tail";
			else:
				say "dragging you by your legs";
			say " towards the sea. 'Go back your place, dragon! If you behave well, we can play around some more there,' the warrior says. The shark doesn't even give you a second glance as he spots the same feral sea dragon from before, moving towards another spot on the beach. He dives head first into the water, trying to make his way quickly. When he is somewhat far from shore, you walk back in a not so conspicuous manner[if player is submissive], although your submissive nature can't help but hope that he catches you again soon[end if].";
		else:
			LineBreak;
			say "     The warrior slowly gets up again. 'You win for now, dragon. But I promise you, I'll get back at you for this!' With that, he dives back into the sea.";
	else:	[Non-combat path. He is pumped about his victory but still jovial. He wants to share the moment with you. If you accept, you can have sex with him]
		say "     He starts flexing his upper body, grinning all the while at you with his menacing teeth. He certainly takes his sweet time making sure you gaze upon his arms and pectorals, giving you a good idea of how a dragon might struggle against him. The shark struts towards you confidently, his clawed feet sinking slightly into the sand with each step. His slickened body glistens in the [if daytimer is day]sunlight[else]moonlight[end if], accentuating his sharp and bulging muscles. A pleasantly deep voice greets you, 'You seem like a swell guy. Keeping the area safe is a thankless job, as most of the others are more concerned with getting their rocks off. How about you show me some appreciation for my hard work? You can also consider it a reward in itself to get your hands on me!'";
		say "     [bold type]Do you want to reward the shark warrior?[roman type][line break]";
		LineBreak;
		if player consents:
			say "     The fish-guy lets out a vocal 'Yes!' before he practically jumps atop you, pressing his hard body against yours. His skin gets your clothes wet, making them stick a bit to his body, but you can also feel his hard pecs and abs through the fabric. His elongated muzzle finds your own, tilting to adjust for its altered shape as he catches your mouth in a lustful kiss. Surprisingly enough, his teeth aren't as prominent as you expected, and you even end up seeking them out with your tongue to convince yourself that they are truly there. All the while, the eager fish-man begins to peel off your clothes, tugging off each layer with increasing impatience as you kiss. 'Alright, pal. How about we skip to the good stuff? I've got some nice cocks that need some attention, too.' You sneak a peek towards his uncovered groin. He's sporting two pointed, glistening erections, each throbbing hard against your thighs.";
			[say "     How would you like to pleasure the big guy?";]
			if player is male:
				say "     Do you want to [link]suck him off (0)[as]0[end link], [link]fuck him (1)[as]1[end link] or [link]ride him (2)[as]2[end link]?";
				now calcnumber is -1;
				while calcnumber < 0 or calcnumber > 2:
					say "Choice? (0-2)>";
					get a number;
				if calcnumber is 0:
					say "[tsw_oral]";
				else if calcnumber is 1:
					say "[tsw_fuck]";
				else:
					say "[tsw_ride]";
			else:
				say "     Do you want to [link]suck him off (0)[as]0[end link] or [link]ride him (1)[as]1[end link]?";
				now calcnumber is -1;
				while calcnumber < 0 or calcnumber > 2:
					say "Choice? (0-2)>";
					get a number;
				if calcnumber is 0:
					say "[tsw_oral]";
				else:
					say "[tsw_ride]";
			WaitLineBreak;
			say "     Satisfied the tiger shark gives you one last playful swat on the rear as a goodbye. 'Thanks, pal. Stuff like this definitely keeps me going. Now, I need to get back to fending off those dragons!' With that, your partner takes off into the water, leaving you on your own again to recover from the exciting encounter.";
		else:
			say "     The shark warrior lets out a shocked gasp, his shoulders slumping a bit as his mouth hangs wide open. His bestial face makes it a bit hard to read his expression, resembling that of a shark, moments before they devour something, although you're pretty sure that he's just feeling rejected instead. Regaining his composure, he grins again and he tells you, 'Alright, bud. That means that I have to work harder to impress the likes of you!' With that, the shark runs back towards the open ocean and dives right in. You should get going, as you're probably not going to get another moment of peace with this guy around.";
		now tsw_relationship is 1;

Section 2 - Monster Responses

to say TigerSharkDesc:
	setmongender 3; [male]
	choose row monster in Table of Random Critters;
	if ts_warrior is true:
		if bodyname of player is "Feral Sea Dragon":	[Check body of player]
			now tsw_fsd is 1;
		else:
			now tsw_fsd is 2;
		project the Figure of TSW_icon;
		say "     You are faced with a [bold type]scarred[roman type] tiger shark. His front is white, while the rest is ochre and striped. If it wasn't obvious from his bulging muscles alone that he's a fighter, the rest of his body would be enough to convince anyone, as the guy bears a number of impressive scars. He doesn't wear anything that would cover the slit at his groin, almost daring you to check him out in the pose he strikes. A pair of small anal fins are paired around the genital slit to each side. Clothes-wise, the aquatic anthro is almost naked, with just a rope tied around his hips with a few small bags and some kelp fastened to it. What catches your eye in addition to that is a necklace around his neck - with the teeth of his past conquests strung up on a knotted cord";
		if tsw_relationship is 1:
			say ". You feel a shiver running down your spine; the familiar shark believes that you are nothing more than another sea dragon now. Before you get a chance to speak up, the dragon-wrestler grabs at his necklace and boasts, 'These aren't the only ones I beat. Many more have fallen before me, and you will too!'";
		else if tsw_relationship is 52:
			say ". The sight of the trophies makes you growl deeply at your opponent. How dare this guy defile other dragons and go unpunished? Despite having been beaten, the brawler doesn't seem any less confident in his stance or attitude. 'The last time was a ruse. I will get your ass this time, dragon!'";
		else if tsw_relationship > 49:
			say ". Even though he didn't harm you last time, you still can't shake being unsettled by these trophies. 'Oh, it's you again. Bad dragon! I told you not to walk out of the water!'";
		else:
			say ". Noticing you staring at his neck with your draconic visage, the shark shows you a toothy grin. 'These aren't the only ones I beat. Many more have fallen before me, and you will too!'";
	else:
		say "     REMOVE ME";

to say Tiger Shark wins:
	if ts_warrior is true:
		now tsw_victory is true;
		if hp of player > 0:
			now tsw_relationship is 51;
			say "     You cower and sink your head submissively to the sand. The shark seems stumped, as he just stares at you quizzingly. Wanting to give him the right idea, you even turn around to show him your backside. 'That is unusual. But okay. Fine by me!' The dragon-wrestler gets back to his old self in a heartbeat, showing you his toothy grin again. 'Don't worry, I'll still take good care of you!'";
		else:
			now tsw_relationship is 50;
			say "     You are knocked to your back[if scalevalue of player > 3] despite your considerable size[end if]. 'Hah!' the victor exclaims, ";
			if tsw_fsd is 1:	[if player is FSD]
				say "'You dragons walk around here and think you can conquer everyone";
			else:	[Player is FSDess]
				say "'You are pathetic! You walk around the beach and probably hope to find another one of these dragons, hunting for prey";
			say ". I think you need to be taught a lesson, before I send you back.'";
		say "     The brawler is now on top of you, stroking along your belly. You can't say that you were expecting this, but find yourself calming down a bit as he does nothing else but feel along you. He grins at you as he feels your tension leaving your body. His hands trace down from your chest towards your crotch. ";
		if anallevel > 1:
			say "You meekly let out a protesting squeal as he pushes your legs apart and probes your asshole, spreading it with two fingers. ";
			if tsw_fsd > 0:
				say "Raising your long neck, you take a look at your partner to find ";
			else:
				say "Raising your head you see ";
			say "that he sports two erections that poke out of his genital slit. The muscular fish jerks one of his girthy cocks, making you gulp, all the while his other hand is kept on your anus. When the tiger shark feels satisfied with the preparations, he aligns his twin dicks and ";
			if player is female: [female and herm]
				say "pushes them into your pussy and asshole at the same time.";
				say "     The sensation of both of your openings being distended by these thick cocks causes you to claw at the sand. Your invaded holes clench down on his cocks, your inner walls trying to embrace and explore them. These sensations within make you content to just lie there with these twin dicks resting inside you; their pulsing making you practically feel his heartbeat inside you. In your idle state you take note that the shark sits on your tail with his own splayed on top of yours. The rough skin on his hard butt and tail slightly grazes your scales when he shifts around. Thankfully, he mostly stays in place, supporting himself with his hands on your [if scalevalue of player > 3]midriff[else]chest[end if]. Convinced that you are ready, the tiger shark moves his hands to your hips and withdraws, making his cocks retreat from your cunt and asshole. Before you could beg him not to stop, he lunges at your holes with his cocks again, his intention clear; he wants to hump you in earnest.";
				say "     Looking over your belly, you take a look at your conqueror who's focused on fucking you. The victor's chest heaves from arousal and previous exertion; making you feel a tinge of pride that you have been deemed worthy enough to be under this mountain of a man. With several grunts, the shark starts a routine of pistoning his twin shafts in and out of you, making you loll out your tongue. Basking in the [if daytimer is day]warm sun rays[else]cool night air[end if], you enjoy all of your insides being rubbed by the warm and slimy cocks. With every shove of his twin dicks, you sink a bit further into the [if daytimer is day]dry[else]wet[end if] sand. It doesn't take long for you to reach your climax, roaring and bucking your hips. Satisfied with driving his partner towards a climax, the tiger shark picks up his pace. You gasp when you feel his dicks twitching inside you, delivering throb after heavy throb of fertile seed to fill both your anus and your pussy.";
				impregchance;
			else if player is male: [male]
				say "pushes one of them into your asshole. The tiger shark waits a moment for you to adjust. Your tailhole feels stuffed with his thick length pulsing inside you. Not sure whether it's voluntary or not, you find yourself clenching down on that cock, your walls eager to get to know the intruder. In your idle state, you take note that the fish-man sits on your tail with his own splayed on top of yours. The rough skin on his hard butt and tail slightly graze your scales when he shifts around. Thankfully he mostly stays in place, supporting himself with his hands on your [if scalevalue of player > 3]midriff[else]chest[end if]. Convinced that you are ready, the brawler starts to hump away at you, leaving you a lust-addled wreck on the sand. The firm love-making feels wonderful and you feel like you were made for this exact moment; to be fucked into the coarse sand by this shark hunk.";
				say "     The fish-man has your legs locked around his shoulders, your toes curling up in your pleasured state. Your unattended cock bobs up and down as the warrior is driving his shaft in and out of you. Precum keeps drooling out of your cock liberally, getting fucked out of your prostate. The continuous prodding inside eventually sends you over the edge, making your [cockname of player in lower case] cock shoot your load at your chest and face. Satisfied with driving his partner towards a climax, the shark picks up his pace. You gasp when you feel his dick twitching inside you, delivering throb after heavy throb of fertile seed to fill your ass, at the same time as creaming your body from the outside with his other cock.";
			else: [neuter]
				say "pushes one of them into your asshole.";
				say "     Your tailhole feels stuffed with his thick length pulsing inside you. Convinced that you are ready, the brawler starts to hump away at you, leaving you a lust-addled wreck on the sand. The firm love-making feels wonderful and you feel like you were made for this exact moment; to be fucked into the coarse sand by this shark hunk. The aquatic warrior has your legs locked around his shoulders, your toes curling up in your pleasured state. His length continuously prodding your anal walls eventually does send you over the edge, making you claw at the sand. Satisfied with driving his partner towards a climax, the shark picks up his pace. You gasp when you feel his dick twitching inside you, delivering throb after heavy throb of fertile seed to fill your ass, at the same time as also creaming your body from the outside with his other cock.";
			mimpregchance;
		else: ["less anal" players]
			say "You meekly let out a protesting squeal as he pushes your legs apart. When he probes your asshole, you growl angrily at the shark, not wanting him to touch you there. With a little shrug of his muscular shoulders, your victor moves on to knead your inner thighs in response, a little further away from where you didn't want him to go. 'Don't worry, I won't hurt you. I think you'll enjoy this.'";
			if player is male:
				say "     The shark moves on to grab your [cockname of player in lower case] cock, lifting it up. For a second, you are worried as he gets his teeth-filled mouth closer and closer - but he only licks along your tip. ";
				if cockname of player is "Feral Sea Dragon" or cockname of player is "Feral Sea Dragoness":
					say "Your captor almost seems obsessed with your length, as he keeps worshipping it. He then encases your spade-like tip within his maw, ";
				else:
					say "He then encases your tip within his maw, ";
				say "licking your erection some more. The brawler drives the tip of his tongue into your urethra, wanting to get more of your precum. You claw at the sand at this intrusion. While it doesn't feel entirely unpleasant, the stretching sensation makes you a bit strained. Thankfully, the shark slips the agile organ from your insides soon after, moving on to engulf your entire cock within his maw. His tongue now rests on the underside of your dick, as he drives his head back and forth, fucking his own mouth on your cock. You shift, and move your hands to hold his head. He doesn't seem to like that, ever so slightly nipping your cock. This warning is enough to make you take your hands away and instead you just use them to keep yourself upright.";
				say "     You hear the beat of the waves on the shore, almost drowning out the slurps of your aquatic partner as he sucks you off, and a small gust of wind carries the smell of the sea to your nose. What a place to be sucked off by a man-like shark! Not being able to hold back much longer, you groan out to signal that you are getting really close. Your captor just continues to suck, hard and fast - but as you buck your hips forward and cry out in your imminent orgasm, the muscular brawler pulls your cock out of his large mouth and directs the twitching length up, aiming right for your face. Gasping out loud at the first heavy throb of cum being sent flying, you actually hit yourself in the open mouth thanks to his intervention, followed by further splashes of cum over your chin, neck and chest. Soon you are dripping with creamy cum, a shameful display of being covered in your [cum load size of player] load.";
				WaitLineBreak;
				say "     The brawler gets back up and takes in the aftermath. You are a panting mess with cum slowly dripping from your snout, joining the rest of it on your upper body. 'Now, that's a good look for you.' His humiliating words don't seem to bother you much, as you just lie there, content with having been used like this.";
			else if player is female:
				say "     The tiger shark moves down on you. Suddenly you feel a wet sensation against your nether lips. Glancing up at you, the scaly hunk grins broadly, then starts to eat out you out. His pointed tongue is driven into your depths, tasting your insides. Your vaginal walls quiver at this attention, making you groan in pleasure. His tongue retreats, but before you can protest, he traces it along your labia seeking your clitoris. Alternating between having your insides licked and him tongue-fucking your pussy, you can't help but pant in helpless arousal. When you are getting close, the warrior keeps tongue-fucking your pussy until you fill his mouth with your juices.";
			else:
				say "     The tiger shark keeps feeling around your groin and eventually stops to take a closer look. When he realizes that your crotch is indeed featureless, he goes back to massaging your thighs. He touches you in many spots, trying to relieve you of your stress. After a drawn-out massage, the shark seems satisfied enough with your relaxation and lets go of you.";
		say "'Alright, that'll teach you to walk around this area you fucking lizard.'";
	else:
		say "     REMOVE ME";


To say Tiger Shark loses:
	if ts_warrior is true:
		now tsw_victory is false;
		now tsw_relationship is 52;
		say "     The tiger shark is shocked as he topples backwards. 'This can't be. I am only fighting you dragons, I know all of your moves!' Despite his voiced frustrations, he seems to have gotten pretty worked up during your fight, with the tips of his twin dicks poking out of his slit. Your gaze wanders over the body of the aquatic man, taking in every line of his muscular physique. You catch yourself literally licking your lips as you explore this handsome beefcake stud with your eyes. Do you want to fuck the shark warrior?";
		say "[TSWSexSelection]";
	else:
		say "     REMOVE ME";

to say TSWSexSelection:	[The Sex menu that shows up]
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck on his cocks";
	now sortorder entry is 1;
	now description entry is "Go down on the brawler's twin dicks";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Bend him over";
		now sortorder entry is 2;
		now description entry is "Get some shark ass";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride one of his cocks";
	now sortorder entry is 3;
	now description entry is "Take a seat in his lap";
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Suck on his cocks"):
					say "[tsw_oral]";
				if (nam is "Bend him over"):
					say "[tsw_fuck]";
				if (nam is "Ride one of his cocks"):
					say "[tsw_ride]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You give the shark a cold glare and even kick some sand onto him, as you turn around to leave.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

Section 3 - Dominant Sex Scenes

To say tsw_oral:
	if tsw_fsd is 0:
		say "     Your hand snakes down over the firmly muscled body of your shark-man, squeezing his abs for a second before arriving at his crotch to grab one of his two shafts. The fighter exhales softly and bites his lower lip a little as you slide your fingers up and down his shaft. The veins pump within, pushing the cock ever so slightly against your palm. His cock feels very slippery and at the same time a little sticky to the touch, as if he fucked somebody else recently. Your shark is quite the beach stud, it seems. Not wanting to make his other cock feel neglected, you grab it with your other hand, then begin stroking up and down the underside of his cocks, squeezing along the organ. Eyes glued to the length and girth of his dual manhood, you can't help but wonder if the size of his urethra is proportional to the size of his load.";
		say "     Kneeling down, you kiss the shark's body, running your tongue over his slightly rough and salty-tasting skin as you go along. Anticipating your attention, his arms are all over you, caressing and groping you in turn. Finally they come to rest on your head when you are in position. Licking your lips, you take full hold of one of his cocks and stroke up and down along their length, spreading the pre that has been leaking. Wanting to get a taste, you kiss the tip of the shaft, sucking his precum drooling head between your lips and slurping up what you can. The tiger shark grabs your head a little tighter as you do, the strength of his grip indicating that he likes the treatment more than a little bit.";
		WaitLineBreak;
		say "     As you keep the head in your mouth, you stroke the long shafts up and down, your hands gliding along their slimy surface. Ready for the next step, you lower your head, getting more and more of his shark-dick into your mouth until his length pokes your throat, making you gag slightly. The fish-like man exhales deeply, enjoying your ministrations. You delve down deeper, trying to swallow more of the tapering dick until his anal fins cover your face to both sides. Getting an idea, you squeeze one of them with your free hand. The warrior arches over you in response, pushing your head into his crotch unwittingly. You feel devious, as you take your hand away from his other shaft, and instead, begin stroking his anal fins.";
		say "     The shark practically yells out in pleasure as you lightly squeeze his fins, while bobbing up and down on his dick. You take turns, with both hands stroking his fins or his other cock. The shark doesn't last long under your attentions; he suddenly grabs onto your head tightly. The hunk drives the currently serviced cock deep into your throat one last time. Both of shafts pulse; one filling you, while the other one covers your face shot after shot with his gooey spunk. The shark keeps holding you for a bit, marveling at his climax. You swallow down his load, while you feel the cum on your face slowly dripping down as he seems content to just keep you to your knees for a bit.";
	else:
		say "     Getting down on all fours, you reach down with your long neck and give the tips, which poke ever so slightly out of his slit, an experimental lick. They are slimy and leak precum already. The smell permeates your senses and remind you of these wonderful sea dragons; this mere shark has a good taste in his partners at least! Driving you almost mad, you keep licking and sucking on his slit. Getting an idea, you adjust your snout and instead try to dive with the tip of your tongue into him. The tiger shark groans out, 'Ahhh, I'm not a female, you stupid dragon!' He dares to reprimand you like that? You get to dictate how you'll treat him and to remind him of his position, you push hard into his stuffed slit. The fish man yells out in a mix of discomfort and pleasure with your tongue cramped inside him. Eventually, both of his dicks snake their way past your tongue into the open, taking position next to your snout.";
		say "     Withdrawing, you take a moment to linger and enjoy the taste of his insides on your tongue. Content with the little break, you drop your head again and make him gasp when your chin brushes over one of his anal fins. Interesting, it didn't occur to you before how sensitive an aquatic creature's extremities might be. Wanting to find out just how much you can make him squirm, you reach out to his right fin with your tongue. The flappy appendage feels slightly rough on your tongue and tastes salty, but you also believe you catch the bitter note of some leftover cum. The brawler arches his hips, as you get to know his anal fin, suckling the triangular shape.";
		WaitLineBreak;
		say "     You are amused with the fact that you found yet another weakness in this fighter, and you very well want to exploit them all. Your captive, unable to catch a break, protests, 'No,... ahh... stop it.' He even tries to push your head back to avail, weakened by your earlier pummeling and the painfully plentiful pleasure he's experiencing. After a while of torturing his sensitive fins, you long for the familiar taste on his cocks again. Promptly you move your large maw, unwittingly showing off your teeth. The brawler, too weak to fight back, closes his eyes, expecting the worst. Hah, he really is expecting the worst. Wanting him to linger on this moment of uncertainty, you stop just a little before these tasty smelling shafts and breathe on them.";
		say "     It does take some self-control to not just plunge over his throbbing lengths, as you just keep absorbing the salty and musky smell of the cocks. Despite being a little fearful of you, the sea-predator does seem to be turned on by your rough and commandeering handling of him. You feel triumphant that this guy has finally accepted his place, which is beneath you on this shore. Not being able to wait any longer, you encase one of his dicks within your maw, causing the shark to out a low groan. You lick along his cum slit, trying to coax out a bit more of his virile and strong cum. Your partner doesn't dare to touch you while you're servicing him, just watching you intently. Ignoring his gaze, you spend a good amount of time alternating between his dicks and fins, licking and sucking on them. Overwhelmed by your treatment, the shark keeps panting and clawing at the loose sand. Taking this as a cue, you decide it's time to work him to his limit; you grab both of his anal fins and squeeze them, while sinking his shaft deep into your throat.";
		WaitLineBreak;
		say "     The warrior of the sea can take it no longer and arches his back, shooting spurt after spurt into and onto your snout. You raise your cum splattered head and reach with your tongue for his man milk. With your face painted by your captive, you feel whole, showing the world that the mighty predator takes good care of their prey. Your partner is a wreck, panting from the overstimulation you've put him through. 'That was supposed to be punishment? Why thank you, oh great ruler of the seas,' the scarred one mocks you. You give him a cold glare, and kick some sand onto him. With his heightened sensitivity he can only flinch at the added load on his crotch.";

To say tsw_fuck:
	if tsw_fsd is 0:
		say "     Making out with this beach stud turns you on, making you claw at his ass. You break the kiss to whisper into one of his ear holes that you'd like to fuck him. 'Alright, but you'd better be good at it.' He gets down on all fours and presents his toned butt in all its glory to you. Kneeling, you grab his tail and move it over your shoulder, to gain easier access to his ass. As you spread his cheeks apart, you realize that he is leaking some cum from an earlier encounter. Kinky, so this guy hunts dragons to take them for a ride. He turns around and gives you an anticipating look, ready to be railed by you. But you want to enjoy this moment for a bit longer, aligning your length and only prodding lightly at his pucker with your cockhead. 'Come on, just push in already, or do you want me to do the work?' Obliging, you push in, your dick disappearing within his anal ring. Surprisingly your cock meets little resistance as you almost hilt with the first push.";
		say "     The dragon cum lubricating your dick definitely helps. Despite that, he still feels tight enough on your cock. Seeing that he seems to be quite experienced with taking it from behind, you start humping in earnest straight away. Your partner sneaks one of his arm down to stimulate his twin shafts. You're sinking a bit into the sand together with the promiscuous dragon-hunter, as he isn't able to keep himself up in his lust-addled form. Suddenly, you cry out and hilt one last time within the brawler, unloading your [cum load size of player] load inside him. This is enough to also set the shark off, whose shafts unload into the sand. You feel that it's a shame that this virile load just goes to waste. As you push out, a bit of your added load flows out of his tailhole, mixed with the dragon cum. The fluids seemed to seep into your dick's skin quickly, trying to work its way into your system.";
		infect "Feral Sea Dragon";
		LineBreak;
	else:
		say "     You reach down with your long neck and give his tailhole experimental lick. To your surprise, a bit of cum seeps out of his pucker. The taste permeates your taste buds, but remind you of those wonderful sea dragons. The strong taste driving you almost mad, compels you to push your tongue into him, lapping up the cum of your predecessors. This brawler is just a slut after all, hungry for dragon cock. This thought seems to drive a bit of your feral side out of you, as you pull your mouth away and roughly prod your [Cock Size Desc of player] cock against his opening. The warrior groans in discomfort, while you try to force your shaft into him. Eventually your shaft slips into the sharks anus, and you keep pressing forward. Finally your hips meet his and you rest on him for a brief period. Then you pick up your pace and fuck him roughly.";
		say "     The shark keeps panting, trying to adjust to your pace. As you're humping him, you take note that the once confident and cocky shark is now grabbing onto you, even begging you to fuck him harder. Seeing the shark to be reduced to a common whore, along with your rough fucking, eventually sets you off. Hilting inside him one last time, you unload your [cum load size of player] load into him, adding your cum to the deposits of the other dragons. You pull out of him and glance over the aftermath. The shark doesn't seem to have reached his climax yet, which leaves him begging you on his knees for more. You just push him back, content in having used him solely for your need. Another part of you is worried that this shark was somehow able to bring the worst out of you.";
		infect "Feral Sea Dragon";

To say tsw_ride:
	if tsw_fsd is 0:
		say "     Biting your lower lip, you look at these wonderful cocks. You need them inside you. 'Sure dude,' the scaly hunk chimes, laying down on the sand. Not bothering with much more foreplay, you take a seat on his lap, feeling the skin slightly graze your behind. Convinced that his slippery dicks are lubricated enough, you rise and slowly grab one of his dicks and align your [if player is female]cunt[else]own pucker[end if] slowly sitting down on it. You gasp as the tip of his length slowly enters you. Taking your time to get used to his girth, you let gravity do its work and keep sinking down on his tapering cock. The cock really is slippery, maybe he had fucked somebody else just before he engaged you. As you hilt on the shark's dick, you slowly rise again, dictating the pace of the ride. The muscular fish puts his hands on your hips, his claws teasing the skin on your ass. The aquatic warrior helps you rise and sink on his cock, but over time he's getting carried away and ends up bucking his hips and holding you in place instead. Too lost in pleasure, you don't stop him and instead take the firm fucking.";
		say "     You gasp and moan as ";
		if player is female:
			say "your pussy gets battered by the shark-like dick. This heavenly fuck goes on long enough that you lose track of time, your world being reduced to your cunt being distended over and over again by the slimy manhood. Eventually you hit the point of no return, making you quiver and grab onto him in your orgasm; your vaginal walls contracting on your partner's cock. ";
		else if player is male:
			say "your prostate gets battered by the shark-like dick. This heavenly fuck goes on long enough that you lose track of time, your world being reduced to your anus being distended over and over again by the slimy manhood. Eventually you hit the point of no return, making you cry out in pleasure as your cock pushes string after string of cum onto the shark, tainting his chest and also face. He doesn't seem too bothered by that, more keen on finishing himself. ";
		else:
			say "your anal walls get pounded on. This heavenly fuck goes on long enough that you lose track of time, your world being reduced to your anus being distended over and over again by the slimy manhood. Eventually you hit the point of no return, making you quiver and grab onto him in your orgasm; your anal walls contracting on your partner's cock. ";
		say "The tiger shark is determined, driving his length into you in earnest with his other dick reaching up to your groin. You grab his second leaking dick and stroke along it, feeling the blood pumping through its veins. With your added help, he cries out in climax, driving his claws into your ass. His dicks squirt their voluminous load into you[if player is female]; squirt after squirt was slowly forced into your womb, flooding it[else], filling your anal cavity to the brim, making you feel stuffed[end if]. Meanwhile, the other cock is unloading onto you, painting your chest and belly with its fertile batter.";
		if player is female:
			impregchance;
		else:
			mimpregchance;
	else:
		say "     Reaching down with your long neck, you give the lengths poking out of his slit an experimental lick. The tips are slimy and leak precum already. His smell permeates your taste buds, but reminds you of those wonderful sea dragons. Driving you almost mad, you keep licking and sucking on his slit, coaxing out his hidden dicks. You need them inside you. Darting forward, you don't want to waste more time and align your behind with his crotch. Letting out a frustrated growl, you crouch down, trying to get his cock into your [if player is female]pussy[else]tailhole[end if]. Lost in your instincts, you keep squatting down several times, trying to drive one of his erection into you. Unfortunately all that ends up happening is his lengths slapping against your butt, dampening it with its sticky gunk. Realizing that dry humping him with your ass won't do anything, you do overcome yourself to muster up some patience. Swiftly you grab one of his dicks and push their tip into your [if player is female]lips[else]pucker[end if].";
		say "     While his cocks are lubricated, you still need some time to push the length into you the first time. Gritting your teeth, you keep pushing downwards, groaning at the swift intrusion. Forcing your tight hole on his girthy dick also seems to cause some discomfort to your shark-toy. At some point your legs give and you end up dropping, causing both of you yell out in pleasure. You pick yourself up, causing the shark to exhale. Again you dropped your hips, impaling yourself on his dick. With a rough pace, you keep fucking yourself on this marvelous rod, poking you in all the right spots. At some point, the shark tries to grab your hips but you react in time, pinning his arms to his sides. This is your moment and you want him to know that he isn't in control, affirming your position with an angry growl. You keep fucking him for quite some time, causing him to climax several times but you don't care, you are doing this for your own pleasure.";
		WaitLineBreak;
		say "     Thankfully his refractory period seems to be short enough that his dick doesn't go entirely limp. Using that to your advantage, you just keep fucking him after each climax. The aquatic hunk still writhes in painful pleasure from all of this overstimulation. His torture ends as with quivering legs you drop one final time, roaring out in your own orgasm. Your [if player is female]cunt squeezes him tightly, soaking his groin with your juices[else if player is male]anal walls squeeze his dick tightly as you shoot your load and aim for his face[else]anal walls squeeze his dick tightly while you drive your claws into the shark[end if]. Being finished, you pull yourself off him and glance over the aftermath. The former cocky warrior is now just a mess, overwhelmed by all the orgasms he's had.";
		say "     Licking your lips at the smell of sex, you reach down with your long neck again to lap at his dicks, wanting more of his salty, sticky cum. The aquatic hunk, feeling sensitive because of your abundant attention, can only whimper in response. Knowing that you can't go on forever, you overcome yourself again to let go. Despite how you treated him before, you wait until the brawler recovers. As you are watching over the tiger shark you are concerned about how he was able to bring the worst out of you.";
		if player is female:
			impregchance;
		else:
			mimpregchance;

Section 4 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Tiger Shark";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]He drives his elbow forcefully into your chest.[or]You are hit by the tiger shark spinning around, smacking you with his heavy tail.[or]You don't react quickly enough and see an ochre fist punching you across the face.[or]The tiger shark grapples you from behind and sends you face forward into the sand.[or]The fish-man catches you and bites down on your shoulder. While his teeth don't penetrate your skin it is enough to make you groan in pain.[at random]";
	now defeated entry is "[Tiger Shark loses]";
	now victory entry is "[Tiger Shark wins]";
	now desc entry is "[TigerSharkDesc]";
	now face entry is "triangular, streamlined face. You still breathe normally in and out of your nostrils that happen to be at the end of your snout. When you open your mouth you show several rows of razor sharp teeth, fit to bite off anything"; [ Face description, format as "You have a (your text) face."]
	now body entry is "bulky, but still flexible enough to maneuver well in the water. Your form is a sight to behold with its chiseled and well-toned form, adorned with a large fin on your back and anal fins on your crotch. Like everything else your arms are bulging with muscles and they end in clawed hands. [if breast size of player > 0]Your femininity is still accentuated with your hourglass-shape and your breasts. [end if]All is held up by two equally strong legs in a digitigrade stance. Your legs ends in elongated feet that are equipped with three clawed toes";
	now skin entry is "[one of]striped[or]ochre[or]smooth[or]tough[or]slippery[at random]"; [ format as "You have (your text) skin"]
	now tail entry is "From behind a large and finned tail is dragging along. It feels a little unnatural to not be using the tail to maneuver around."; [ write a whole Sentence or leave blank. ]
	now cock entry is "[one of]tapering[or]slick[or]pointed[or]shark[at random]"; [ format as "You have a 'size' (your text) cock ]
	now face change entry is "it shifts, pushing out into a triangular shape. Your mouth enlarges along with your head. Painfully, lots of sharp, pointy teeth push out of your jaw to occupy the extra space that has been created. Your tongue also becomes larger and pointed"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "you are subjected to the effects of your infection. The nanites burn away any fat you might have had. The void is quickly replaced by your muscles bulging out. At the same time, the nanites work to fit your body more into an aquatic lifestyle. Fins sprout on your body - a large one between your shoulder blades and two smaller ones surrounding your crotch. Toes fuse together until you are left with three. They are tipped with claws similar to your fingers now, which thankfully did not reduce in numbers. The final changes lie in reforming the proportions of your feet and legs to assume a permanent digitigrade stance"; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "making you compulsively scratch the itchy spots. With shock you realize that the top layer is coming off. To your relief a new layer of smooth looking skin has grown underneath. You don't even need to peel it all away, as your nanites eat the rest of it away. Your new hide is ochre in color and adorned with brown stripes, while the your front is a shade of creamy white. When you stroke along your new skin, you realize that your body feels like sandpaper, if you stroke away from your tail-end but smooth if you go towards it. That's going to need some getting used-to"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a tail snakes its way through your pants. You tumble over and take off your pants to make this process less painful. When your tail is done forming, you are left with a large shark-like tail. It has a pair of smaller fins along its underside, while your tip is equipped with a large tailfin"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it tapers towards its end and its skin becomes more flesh colored. Your new tapering dick feels slippery on touch"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 35;
	now dex entry is 19;
	now sta entry is 30;
	now per entry is 14;
	now int entry is 11;
	now cha entry is 30;
	now sex entry is "Male";            [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 120;                   [ How many HP has the monster got? ]
	now lev entry is 15;                   [ Level of the Monster, you get this much HP if you win, or this much HP halved if you lose ]
	now wdam entry is 27;                  [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";          [ Case sensitive]
	now cocks entry is 2;                 [ number of cocks if sex is 'Male' or 'Both' ]
	now cock length entry is 14;
	now cock width entry is 6;            [ Size of balls ]
	now breasts entry is 2;               [ Number of nipples. ]
	now breast size entry is 0;           [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;      [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;                 [ number of pussies if sex is 'Female' or 'Both' ]
	now cunt length entry is 10;
	now cunt width entry is 7;
	now libido entry is 30;               [ Amount player Libido will go up if defeated ]
	now loot entry is "Devil's Purse";    [ Loot monster drops, ]
	now lootchance entry is 0;           [ Chance of loot dropping 0-100 ]
	now scale entry is 3;                 [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]firm[or]strong[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]shark-like[or]aquatic[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now DayCycle entry is 0;        [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

when play ends:
	if bodyname of player is "Tiger Shark":
		if humanity of player < 10:
			say "     REMOVE ME";
		else:
			say "     REMOVE ME";

Section 5 - Items

Table of Game Objects (continued)
name	desc	weight	object
"Devil's Purse"	"A black casing resembling the egg capsule of a shark. It's empty but it still seems warm despite its slippery touch."	1	Devil's Purse
"Teeth Necklace"	"It's a cord with several teeth of feral sea dragons tied to it. It's the necklace you stole from the wandering, proud tiger shark warrior."	2	Teeth Necklace

Devil's Purse is a grab object. It is part of the player. Understand "dpurse" as Devil's Purse.

The usedesc of Devil's Purse is "[DevilsPurseUsing]";

to say DevilsPurseUsing:
	say "You take out the empty egg casing, and give it an experimental lick. Despite the smell its taste is pretty pleasant, like a mix of fish and something sweet that you cannot quite pin. You engulf it entirely in your mouth and are invested in licking and chewing along the rubbery membrane. After some time you end up swallowing the tough and slippery skin, content with the effects it may have on you.";
	TigerSharkInfect;
	PlayerEat 5;

instead of sniffing Devil's Purse:
	say "Like any remains you'd pick up on the beach, the egg shell smells like fish and of the sea. It's not entirely unpleasant.";

Teeth Necklace is equipment.
It is not temporary.
The AC of Teeth Necklace is 12.
The effectiveness of Teeth Necklace is 35.
The placement of Teeth Necklace is "face".
The descmod of Teeth Necklace is "Around your neck is a cord with several teeth of feral sea dragons tied to it".
The slot of Teeth Necklace is "head".
The damagebonus of Teeth Necklace is 0.
The dodgebonus of Teeth Necklace is 0.


Section 6 - NPC
[He is going to walk around the beach areas.]

Tiger Shark ends here.
