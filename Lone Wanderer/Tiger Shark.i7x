Version 1 of Tiger Shark by Lone_Wanderer begins here.
[Version 1 - New Creature]

"Adds a unique Tiger Shark character to Flexible Survival's Monsters table"

Section 0 - Monster Variables, Flags and Markers and aiding functions

when play begins:
	add { "Tiger Shark" } to infections of guy;
	add { "Tiger Shark" } to infections of furry;

ts_warrior is truth state that varies.		[registers if the player is fighting the shark warrior or not.]
ts_warrior is usually false.
tsw_victory is a truth state that varies.	[registers whether Tiger Shark Warrior won or not.]
tsw_victory is usually false.
tsw_fsd is a number that varies.	[registers if the player is a feral sea dragon. It's a shortcut for checks. 0 = none, 1 = feral sea dragon, 2 = feral sea dragoness]
tsw_fsd is 0.
tsw_relationship is a number that varies.	[The standing of the shark warrior towards you. Currently it memorizes last actions]

[0 = Not met											]
[1 = Met while not being a FSD (Feral Sea Dragon/ess)	]
[50 = Submitted as FSD to him							]
[51 = Threw fight/lost to him as FSD					]
[52 = Beat him as FSD									]

to TigerSharkInfect:	[Function to infect the player. By default the Tiger Shark is non-infective because of the Tiger Shark Warrior]
	Setmonster "Tiger Shark";
	choose row monster from the table of random critters;
	now non-infectious entry is false;
	infect "Tiger Shark";
	now non-infectious entry is true;

Section 1 - Monster Responses

to say TigerSharkDesc:
	setmongender 3; [male]
	choose row monster in Table of random critters;
	if ts_warrior is true:
		say "     You are faced with a [bold type]scarred[roman type] tiger shark. His front is white, while the rest is ochre and striped. If it wasn't obvious from his bulging muscles muscles alone that he's a fighter, the rest of his body would be enough to convince anyone, as the guy bears a number of impressive scars. He doesn't wear anything that would cover the slit at his groin, almost daring you to check him out in the pose he strikes. A pair of small anal fins are paired around the genital slit to each side. Clothes-wise, the aquatic anthro is almost naked, with just a rope tied around his hips with a few small bags and some kelp fastened to it. What catches your eye in addition to that is a necklace around his neck - with the teeth of his past conquests strung up on a knotted cord. Noticing you staring at his neck with your draconic visage, the shark shows you a toothy grin. 'These aren't the only ones I beat. Many more have fallen before me, and you will too!";
	else:
		say "     REMOVE ME";

to say Tiger Shark wins:
	if ts_warrior is true:
		now tsw_victory is true;
		if hp of player > 0:
			now tsw_relationship is 51;
			say "     You cower and sink your head submissively to the sand. The shark seems stumped, as he just stares at you quizzingly. You even turn around, showing him your backside to give him the right idea. 'That is unusual. But okay. Fine by me!' The dragon-wrestler gets back to his old self in a heartbeat, showing you his toothy grin again. 'Don't worry, I'll still good take care of you!'";
		else:
			now tsw_relationship is 50;
			say "     You are knocked to your back[if scalevalue of player > 3] despite your considerable size[end if]. 'Hah!' the victor exclaims, ";
			if bodyname of player is "Feral Sea Dragon":
				say "'You dragons walk around here and think you can conquer everyone";
			else:
				say "'You are pathetic! You walk around the beach and probably hope to find another one of these dragons hunting for prey";
			say ". I think you need to be taught a lesson, before I send you back.'";
		say "     The shark is now onto you, stroking along your belly. You can't say that you were expecting this, but find yourself calming down a bit as he does nothing but feel along you. You catch him grinning at you, as you start to relax. His hands trace down from your chest towards your crotch. ";
		if anallevel is not 1:
			say "You meekly let out a protesting squeal as he pushes your legs apart and probes your asshole, spreading it with two fingers. ";
			if (bodyname of player is "Feral Sea Dragon") or (bodyname of player is "Feral Sea Dragoness"):
				say "Raising your long neck, you take a look at your partner to find ";
			else:
				say "Raising your head you see ";
			say "that he sports two erections that poke out of his genital slit. You cannot help but gulp as you see him jerk one of his cocks, while his other hand is kept on your anus. When the tiger shark feels satisfied with the preparations, he aligns his twin dicks and ";
			if cunts of player > 0: [female and herm]
				say "pushes them into your pussy and asshole at the same time.";
				say "     The sensation of both of your holes being distended by his thick cocks causes you to claw at the sand. Convinced that you are ready, the tiger shark starts to hump you in earnest. The heavy pounding you receive has you lolling out your tongue, enjoying all of your insides being rubbed. It doesn't take long for you to reach your climax, roaring and bucking out your hips. Satisfied with driving his partner towards a climax the shark picks up his pace. You gasp when you feel his dicks twitching inside you, delivering throb after heavy throb of fertile seed to fill both your anus and your pussy.";
				Impregchance;
			else if cocks of player > 0: [male]
				say "pushes one of them into your asshole";
				say "     The tiger shark waits a moment for you to adjust. Your tailhole feels stuffed with his thick length pulsing inside you. Convinced that you are ready the brawler starts to hump away at you, which leaves you a lust addled wreck on the sand. Your unattended cock bobs up and down as the warrior is driving his shaft in and out of you. Precum keeps drooling out of your cock liberally as it's getting fucked out of your prostate. The continuous prodding inside eventually does send you over the edge, making your [cockname of player in lower case] cock shoot your load at your chest and face. Satisfied with driving his partner towards a climax the shark picks up his pace. You gasp when you feel his dick twitching inside you, delivering throb after heavy throb of fertile seed to fill your ass, at the same time as also creaming your body from the outside with his other cock.";
			else: [neuter]
				say "pushes one of them into your asshole";
				say "     The tiger shark kept humping away at you, which leaves you a lust addled wreck on the sand. Your tailhole feels stuffed with his thick length pulsing inside you. Convinced that you are ready the brawler starts to hump away at you, which leaves you a lust addled wreck on the sand. His length continuously prodding your anal walls eventually does send you over the edge, making you claw at the sand. Satisfied with driving his partner towards a climax the shark picks up his pace. You gasp when you feel his dick twitching inside you, delivering throb after heavy throb of fertile seed to fill your ass, at the same time as also creaming your body from the outside with his other cock.";
			Mpregchance;
		else: ["less anal" players]
			say "You meekly let out a protesting squeal as he pushes your legs apart and probes your asshole. You growl angrily at the shark, not wanting him to touch you there. With a little shrug of his muscular shoulders, the shark moves on to knead your inner thighs in response, a little further away from where you didn't want him to go. 'Don't worry, I won't hurt you. I think you'll enjoy this.'";
			if cocks of player > 0:
				say "     The shark moves on to grab your [cock of player] cock, lifting it up. For a second, you are worried a little as he gets his teeth-filled mouth closer and closer - but he only licks along your tip. ";
				if cockname of player is "Feral Sea Dragon" or cockname of player is "Feral Sea Dragoness":
					say "Your captor almost seems obsessed with your length, as he keeps worshipping it. Then he encases your spade-like tip within his maw, ";
				else:
					say "hen he encases your tip within his maw, ";
				say "licking your erection some more. The brawler drives the tip of his tongue into your urethra, wanting to get more of your precum. You claw at the sand at this intrusion. While it doesn't feel entirely unpleasant, the stretching sentation makes you a bit strained. Thankfully the shark does pull his tongue from your insides soon after, moving on to engulf your entire cock within his maw. His tongue now rests on the underside of your dick, as he drives his head back and forth, fucking his own mouth on your cock. You shift, and move your hands to hold his head. He doesn't seem to like that as he ever so slightly nips your cock. This warning is enough to make you take your hands away and instead you just use them to keep yourself upright.";
				say "     You hear the beat of the waves on the shore, almost drowning out the slurps of your aquatic partner as he sucks you off, and a small gust of wind carries the smell of the sea to your nose. What a place to be sucked off by a man-like shark! Not being able to hold back much longer, groan out that you are getting really close. Your captor just continues to suck, hard and fast - but as you buck your hips forward and cry out in your imminent orgasm, the muscular brawler pulls your cock out of his large mouth and directs its twitching length up, aiming right for your face. Gasping out loud at the first heavy throb of cum being sent flying, you actually hit yourself in the open mouth thanks to his intervention, followed by further splashes of cum over your chin, neck and chest. Soon you are dripping with creamy cum, a shameful display of being covered in your [cum load size of player] load.";
				LineBreak;
				say "     The brawler gets back up and musters the aftermath. You are a panting mess with cum slowly dripping from your snout, joining the rest of it on your upper body. 'Now, that's a good look for you.' His humiliating words don't seem to bother you much, as you just lie there, content with having been used like this";
			else if cunts of player > 0:
				say "     The tiger shark moves down on you. Suddenly you feel a wet sensation against your nether lips. Glancing up at you, the shark grins broadly, then starts to eat out you out. His pointed tongue is driven into your depths, tasting your insides. Your vaginal walls quiver at this attention, making you groan in pleasure. His tongue retreats, but before you can protest, he traces it along your labia seeking your clitoris. Alternating between having your insides licked and him tongue-fucking your pussy, you can't help but pant in helpless arousal. When you are getting close the warrior keeps tongue-fucking your pussy until you fill his mouth with your juices.";
			else:
				say "     The tiger shark keeps feeling around your groin and eventually stops to take a closer look. When he realizes that your crotch is indeed featureless, he goes back to massaging your thighs. He touches you in many spots, trying to relieve you of your stress. After a drawn-out massage the shark seems satisfied enough with your relaxation and lets go of you.";
		say "'Alright, that'll teach you to walk around this area you fucking lizard.'";
	else:
		say "     REMOVE ME";


To say Tiger Shark loses:
	if ts_warrior is true:
		now tsw_victory is false;
		now tsw_relationship is 52;
		say " The tiger shark is shocked as he topples backwards. 'This can't be. I am only fighting you dragons, I know all of your moves!' Despite his voiced frustrations, he seems to have gotten pretty worked up during your fight with the tips of his twin dicks poking out of his slit. Your gaze wanders over the body of the aquatic man, taking in every line of his muscular physique. You catch yourself literally licking your lips as you explore this handsome beefcake stud with your eyes. Do you want to fuck the shark warrior?";
		if bodyname of player is "Feral Sea Dragon":	[Check body of player]
			now tsw_fsd is 1;
		else:
			now tsw_fsd is 2;
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
	if cocks of player > 0:
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
				if (nam is "Suck on his cocks"):
					say "[tsw_oral]";
				if (nam is "Bend him over"):
					say "[tsw_fuck]";
				if (nam is "Ride one of his cocks"):
					say "[tsw_ride]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You give the shark a cold glare and even kick some sand onto him, as you turn around to leave.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;
	
Section 2 - Dominant Sex Scenes

To say tsw_oral:
	if tsw_fsd is 0:
		say "     Your hand snakes down over the firmly muscled body of your shark captive, squeezing his abs for a second before arriving at his crotch to grab one of his two shafts. The fighter exhales softly and bits his lower lip a little as you slide your fingers up an down his shaft. The veins pump within, pushing the cock ever so slightly against your touch. His cock feels very slippery and at the same time also a little sticky on touch, as if he fucked somebody else recently. Your shark is quite the beach stud, it seems. Not wanting to make his other cock feel neglected, you grab it with your other hand, then begin stroking up and down the underside of his cocks, squeezing along the tunnel. Eyes glued to the length and girth of his dual manhood, you can't help but wonder if the size of his urethra is proportional to the size of his load.";
		say "     Kneeling down, you kiss the shark's body, running your tongue over his slightly rough and salty-tasting skin as you go along. Anticipating your attention his arms are all over you, caressing and groping you in turn. Finally they come to rest on your head when you are in position. Licking your lips, you take full hold of one of his cocks and stroke up and down along their length, spreading the pre has has been leaking. Wanting to get a taste you kiss the tip of the shaft, sucking his precum drooling dickhead between your lips and slurping up what you can. The shark grabs your head a little tighter as you do, so the strength of his grip indicating that he likes the treatment more than a little bit.";
[--------------edited till here]
		WaitLineBreak;
		say "     Not wanting to neglect the other you also give the other head a gentle suck. As you keep the head in your mouth you stroke the long shafts up and down with both of your hands. Ready for the next step, you dive down on his shark-dick until you land with your nose on his crotch. The shark exhales deeply, enjoying your ministrations. His anal fins slap your face softly to both sides, as you bob up and down his shaft. Getting an idea, you put you squeeze one of them with your free hand. The warrior arches over you in response, pushing your head into his crotch unwittingly. You feel devious, as you take your hand away from his other shaft and instead begin stroking his anal fins.";
		say "     The shark practically yells out in pleasure as you work his fins, while still sucking his dick. You take turns, either with both hands stroking his fins, or his other cock. The shark doesn't last long under ministrations; he suddenly grabs onto your head tightly. The hunk drives the currently serviced cock deep into your throat. Both of shafts pulse; one filling you, while the other one covers your face with his gooey spunk. The shark keeps holding you for a bit, marvelling at his climax. You swallow down his load, as he seems content to just keep you to your knees for a bit.";
	else:
		say "     Getting down on all fours, you reach down with your long neck and give the tips, which poke out of his slit, an experimental lick. They are slimy and leak precum already. The smell permeates your taste buds, but remind you of these wonderful sea dragons. Driving you almost mad, you keep licking and sucking on his slit. Getting an idea, you tilt your head and instead try to drive the tip of your tongue into his slit. The tiger shark groans at that, 'Ahhh, I'm not a female, you stupid dragon!' Feeling a bit annoyed at that remark, you push even harder into his stuffed slit. The fish man yells out in a mix of discomfort and pleasure with your tongue cramped inside him. Both of his dicks extend past your snout. Retreating your tongue, you take a moment to linger and enjoy the taste of his insides in your mouth.";
		say "     Content with the little break, you move your head down again and make him gasp, as your chin brushes over one of his anal fins. Taking this as a cue, you instead lick over his fins instead. The brawler arches his hips, as you lick over his anal fin, taking it into your mouth, suckling the triangular shape. You are bemused to find yet another weakness in this fighter, and you very well want to exploit them all. Your captive unable to catch a break protests, 'No,... ahh... stop it.' He even tries to push you back to avail. After a while of torturing his sensitive fins you long for the familiar taste of his cocks again. Promptly you open your maw to engulf one of them. The brawler, too weak to fight back, closes his eyes, expecting the worst. Noticing this, you leave him hanging for a bit, as you breathe on his slickened shafts.";
		WaitLineBreak;
		say "     When you encase one of his dicks within your maw, the shark lets out a sigh of relief. You lick along his cum slit, trying to coax out a bit more of his virile and strong cum. Your partner doesn't dare to touch you, while you're servicing him, just watching you intently. Ignoring his gaze you spend a good amount of time alternating between his dicks and fins, licking and sucking on them. Overwhelmed by your treatment the shark keeps panting and clawing at the loose sand. Taking this as a cue you decide it's time to work him to his limit; you grab both of his anal fins and squeeze them, while sinking his shaft deep into your throat.";
		say "     The warrior of the sea can take it no longer and he bucks is hips, shooting his load into and onto your snout. You raise your cum stained head and reach with your tongue to lick a bit of his cum. Your partner is a wreck, he is panting heavily from the overstimulation you've put him through. 'That was supposed to be punishment? I appreciate this a great deal, oh great ruler of the seas,' the scarred one mocks you. You give him a cold glare, and kick some sand onto him. With his heightened sensitivity he flinches at the added load on his crotch.";

To say tsw_fuck:
	if tsw_fsd is 0:
		say "     You claw at his ass, while you're still making out. You whisper that you'd like to fuck him. 'Alright, but you better be good at it,' the shark with a big grin challenges you. He gets down on all fours and presents his toned butt in all its glory to you. You kneel, grab his tail and move it over your shoulder, to gain easier access to his ass. As you spread his cheeks apart, you realise that he seems to be leaking some cum from an earlier encounter. Kinky, so this guy hunts dragons to ride them later. Feeling like teasing him, you align your cock and keep prodding his pucker. 'Come on, just push in already, or do you want me to do the work?' Obliging his wish you push in. Surprisingly your cock meets little resistance as you almost hilt with the first push. The dragon cum lubricating your dick definitely helps. Despite that he still feels tight enough on your cock.";
		say "     Seeing that he seems to be quite experienced with taking it from behind, you start humping in earnest straight away. Your partner sneaks one of his arm down to stimulate his twin shafts. You're practically fucking the shark into the sand, as he isn't able to keep himself up in his lust addled form. Suddenly you cry out and hilt one last time within the brawler, unloading your [cum load size of player] load inside him. This is enough to also set the shark off, whose shafts unload into the sand. You feel it's a shame that this virile load just goes to waste. As you push out, a bit of your added load flows out of his tailhole, mixed with the dragon cum. The fluids seemed to seep into your dick's skin quickly, trying to work its way into your system.";
		infect "Feral Sea Dragon";
		LineBreak;
	else:
		say "     You reach down with your long neck and give his tailhole experimental lick. To your surprise a bit of cum seeps out of his pucker. The taste permeates your taste buds, but remind you of these wonderful sea dragons. The strong taste driving you almost mad, you push your tongue into him, lapping up the cum of your predecessors. This brawler is just a slut after all, maybe he even submitted to some other dragons. This thought seems to drive a bit of your feral side out of you, as you pull your mouth away and roughly prod your [Cock Size Desc of player] cock against his opening. The warrior groans in discomfort, while you try to force your shaft into him. Eventually your shaft finds its halt within the sharks anus and you keep pressing forward. Finally your hips meet his and you rest on him for a brief period. Then you pick up your pace and fuck him roughly.";
		say "     The shark keeps panting, trying to adjust to your pace. As you're humping him you take note that the once confident and cocky shark is now grabbing onto you, even begging you to fuck him harder. Seeing the shark be reduced to a common whore is enough to set you off, hilting inside him, one last time. You unload your [cum load size of player] load into him, adding to the cum of the other dragons. You pull out of him and glance over the aftermath. The shark doesn't seem to have reached his climax yet, which leaves him begging you for more. You just push him back, content in having used him solely for your need. One other part of you is worried that this shark somehow was able to bring the worst out of you.";
		infect "Feral Sea Dragon";

To say tsw_ride:
	if tsw_fsd is 0:
		say "     You bite your lower lip, looking at these wonderful cocks. You need them inside you. 'Sure, dude,' the shark chimed, lying down on the sand. You take a seat on his lap, not bothering with more foreplay, convinced that his slippery dicks are lubricated enough. You grab one of his dicks and align your [if cunts of player > 0]cunt[else]own pucker[end if] to slowly sit down on it. You gasp, as the tip of his length slowly enters you - the shape making the ordeal easier. You take your time to get used to his girth and keep sinking down on his cock. The cock really is slippery, maybe he had fucked somebody else just before he engaged you. As you hilt on the shark's dick, you slowly rise up again, dictating the pace of the ride. The shark puts his hands on your hips, his claws teasing the skin on your ass. The shark helps you rise and sink on his cock, but over time he's getting carried away and ends up bucking his hips and hold you in place instead. You are too lost in pleasure to stop him and instead take the firm fucking.";
		say "     You gasp and moan ";
		if cunts of player > 0:
			say "with your pussy getting battered by the shark-like dick. You don't know how much time passes but this heavenly fuck goes on long enough, that you hit the point of no return. You quiver and grab onto him in your orgasm; your vaginal walls contracting on your partner's cock. ";
		else if cocks of player > 0:
			say "with your prostate getting battered by the shark-like dick. You don't know how much time passes but this heavenly fuck goes on long enough, that you hit the point of no return. Your cock pushes its load onto the shark, tainting his chest and also face. He doesn't seem too bothered by that, as he seems to be keen on finishing himself. ";
		else:
			say "with your anal walls getting pounded on. You don't know how much time passes but this heavenly fuck goes on long enough, that you are put over the edge. You quiver and grab onto him in your orgasm; your anal walls contracting on your partner's cock. ";
		say "The tiger shark is determined, driving his length into you in earnest with his other dick reaching into your groin. You grab his second leaking dick and stroke along it, feeling his pulse. With your added help he cried out in his climax, driving his claws into your ass. His dicks squirt their voluminous load into and onto you.";
		if cunts of player > 0:
			impregchance;
		else:
			mimpregchance;
	else:
		say "     You reach down with your long neck and give the tips poking out of his slit an experimental lick. The tips are slimy and leak precum already. His smell permeates your taste buds, but reminds you of these wonderful sea dragons. Driving you almost mad, you keep licking and sucking on his slit, coaxing out his hidden dicks. You need these inside you. Darting forward, you don't want to waste more time and align your behind with his crotch. Letting out a frustrated growl, you crouch down, trying to get his cock into your [if cunts of player > 0]pussy[else]tailhole[end if]. Realizing that dry humping him with your ass won't do anything, you do overcome yourself to muster up some patience. You grab one of his dicks and push their tip into your [if cunts of player > 0]lips[else]pucker[end if].";
		say "     While his cocks are lubricated, you still need some time to push the length into you the first time. Gritting your teeth, you still keep pushing downwards. This also seems to cause some discomfort to your shark toy. When you finally hilt on his shaft, you pick yourself up, causing the shark to exhale. This time you dropped your hips, impaling yourself on his dick again. With a rough pace, you keep fucking yourself on this marvellous rod, poking you in all the right spots. At some point the shark tries to grab your hips but you react in time, pinning his arms to his sides. You want to tell him that he isn't in control but all that comes out of you is an angry growl. You keep fucking him for quite some time, causing him to climax several times but you don't care, you are doing this for your own pleasure.";
		WaitLineBreak;
		say "     Thankfully his refractory period seems to be short enough that you can just keep fucking him after each climax. The aquatic hunk still writhes in painful pleasure from all of this overstimulation. His torture ends as with quivering legs you drop one final time, roaring out in your own orgasm. [If cunts of player > 0]Your cunt squeezes him tightly, flooding his groin with your juices.[else if cocks of player > 0]Your anal walls squeeze his dick tightly, as you shoot your load and aim for his face.[else]Your anal walls squeeze his dick tightly, while you drive your claws into the shark.[end if] You pull out of him and glance over the aftermath. The former cocky warrior is now just a mess, overwhelmed by all the orgasms he's had. You lap at his dicks, eager to lap up his salty, sticky cum. The shark can only whimper in response. You have to overcome yourself again to let go of him. Despite how you treated him before, you wait until the brawler recovers. As you are watching over the tiger shark you are concerned, how he was able to bring the worst out of you.";
		if cunts of player > 0:
			impregchance;
		else:
			mimpregchance;
		
Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Tiger Shark";
	now attack entry is "[one of]He drives his elbow forcefully into your chest.[or]You are hit by the tiger shark spinning around, smacking you with his heavy tail.[or]You don't react quickly enough and see an ochre fist punching you across the face.[or]The tiger shark grapples you from behind and sends you face forward into the sand.[or]The Tiger Shark catches you and bites down on your shoulder. While his teeth don't penetrate your skin it is enough to make you groan in pain.[at random]";
	now defeated entry is "[Tiger Shark loses]";
	now victory entry is "[Tiger Shark wins]";
	now desc entry is "[TigerSharkDesc]";
	now face entry is "triangular, streamlined face. You still breathe normally in and out of your nostrils that happen to be at the end of your snout. When you open your mouth you show several rows of razor sharp teeth, fit to bite off anything.";[ Face description, format as the text "You have a (your text) face."]
	now body entry is "bulky, but still flexible enough to manoeuvre well in the water. Your form is a sight to behold with its chiseled and well-toned form, adorned with a large fin on your back and anal fins on your crotch. Like everything else your arms are bulging with muscles and they end in clawed hands. [if breast size of player > 0]Your feminity is still accentuated with your hourglass-shape and your breasts.[end if] All is held up by two equally strong legs in a digitigrade stance. Your legs ends in elongated feet that are equipped with three clawed toes";
	now skin entry is "[one of]striped[or]ochre[or]smooth[or]tough[or]slippery[at random]"; [ format as the text "You have (your text) skin"]
	now tail entry is "From behind a large and finned tail is dragging along. It feels a little unnatural to not be using the tail to manoeuvre around.";[ write a whole Sentence or leave blank. ]
	now cock entry is "[one of]tapering[or]slick[or]pointed[or]shark[at random]";[ format as "You have a 'size' (your text) cock ]
	now face change entry is "it shifts, pushing out into a triangular shape. Your mouth enlarges along with your head. Painfully lots of sharp, pointy teeth push out of your jaw to occupy the extra space that has been created. Your tongue also becomes larger and pointed"; [ format as "Your face feels funny as (your text)" ]
	now body change entry is "you are subjected to the effects of your infection. The nanites burn away any fat you might have had. The void is quickly replaced by your muscles bulging out. At the same time the nanites worked to fit your body more into an aquatic lifestyle. Fins sprout on your body - a large one between your shoulder blades and two smaller ones surrounding your crotch. Toes fuse together until you are left with three. They are tipped with claws similar to your hands now, which thankfully did not reduce in numbers. The final changes lie in reforming the proportions of your feet and legs to assume a permanent digitigrade stance"; [  format as "Your body feels funny as (your text)" ]
	now skin change entry is "making you compulsively scratch the itchy spots. With shock you realize that the top layer is coming off. To your relief a new layer of smooth looking skin has grown underneath. You don't even need to peel it all away, as your nanites eat the rest of it away. Your new hide is ochre in colour and adorned with brown stripes, while the your front is a shade of creamy white. When you stroke along your new skin, you realize that your body feels like sandpaper, if you stroke away from your tail-end but smooth if you go towards it. That's going to need some getting used-to"; [ format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a tail snakes its way through your pants. You tumble over and take off your pants to make this process less painful. When your tail is done forming, you are left with a large shark-like tail. It has a pair of smaller fins along its underside, while your tip is equipped with a large tailfin"; [ format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it tapers towards its end and its skin becomes more flesh coloured. Your new tapering dick feels slippery on touch"; [ format as "Your cock feels funny as (your text)" ]
	now str entry is 35;
	now dex entry is 19;
	now sta entry is 30;
	now per entry is 14;
	now int entry is 11;
	now cha entry is 30;
	now sex entry is "Male";            [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 115;                   [ How many HP has the monster got? ]
	now lev entry is 12;                   [ Level of the Monster, you get this much HP if you win, or this much HP halved if you lose ]
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
	now body descriptor entry is "[one of]muscled[or]firm[or]strong[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "[one of]shark-like[or]aquatic[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	blank out the nocturnal entry;        [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";
	
Table of Game Objects (continued)
name	desc	weight	object
"Devil's Purse"	"A black casing resembling the egg capsule of a shark. It's empty but it still seems warms despite its slippery touch."	1	Devil's Purse

Devil's Purse is a grab object. It is part of the player. Understand "dpurse" as Devil's Purse.

The usedesc of Devil's Purse is "[DevilsPurseUsing]";

to say DevilsPurseUsing:
	say "You take out the empty egg casing, and give it an experimental lick. Despite the smell its taste is pretty pleasant, like a mix of fish and something sweet that you cannot quite pin. You engulf it entirely in your mouth and are invested in licking and chewing along the rubbery membrane. After some time you end up swallowing the tough and slippery skin, content with the effects it may have on you.";
	TigerSharkInfect;
	decrease hunger of player by 5;

instead of sniffing Devil's Purse:
	say "Like any remains you'd pick up on the beach it smells like fish and of the sea. It's not entirely pleasant.";

when play ends:
	if bodyname of player is "Tiger Shark":
		if humanity of player < 10:
			say "     REMOVE ME";
		else:
			say "     REMOVE ME";

Tiger Shark ends here.
