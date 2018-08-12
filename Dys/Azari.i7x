Azari by Dys begins here.

"Moves the feral latex fox from the shag shack to his own file for expansion and additional content."

Section 0 - Variables

Azari_Met is a truth state that varies. Azari_Met is usually false.
Azari_Corruption is a number that varies. Azari_Corruption is usually 0.
[ 0: Not corrupted yet                                                      ]
[ 1: Corruption started. Player finds themselves desiring to be bred by the ]
[    fox                                                                    ]
[ 2: Corruption Stage 1. Player has lucid dreams of the fox                 ]
[ 3: Corruption Stage 2. Player finds a growing distaste for other mutants. ]
[    More vivid dreams                                                      ]
[ 4: Final stage. Player submits, becoming the fox's permanent breeding     ]
[    slave. Forced to return at least once a day to be bred                 ]

Section 1 - Location & NPC

Shag Shack Alley is a room.
North of Shag Shack Entrance is Shag Shack Alley.
The description of Shag Shack Alley is "[ShagShackAlley_Desc]".
The scent of Shag Shack Alley is "[ShagShackAlley_Scent]".

Azari is a man.
The description of Azari is "[Azari_Desc]".
The conversation of Azari is { "blah" }.
The scent of Azari is "[Azari_Scent]".

to say Azari_Desc:
	say "<placeholder>.";

to say Azari_Scent:
	say "<placeholder>.";

to say ShagShackAlley_Desc:
	if Azari_Met is false:
		say "     Stepping around the corner, you take in your new surroundings. It's clear that the alley hasn't been touched since the start of all of this mayhem, the dumpster nearly completely empty and the ground surprisingly clutter-free. Despite all this, you can't help but feel slightly unnerved by being here. Something about the dim, narrow space makes you tense up, expecting something to come at you at any moment, despite this being well within the safe area around the mall.";
	else:
		say "     <Description you get when Azari is here.>";

to say ShagShackAlley_Scent:
	say "<placeholder>.";

Section 2 - Scenes

to say Azari_Start:
	setmonster "Latex Fox";
	choose row monster from the table of random critters;
	if Azari_Met is false:
		say "[Azari_Intro]";
[	else:
		if Azari_Corruption is:
			--0: [Not corrupted yet. Just sex with the fox.]
			--1: [Corruption has started. Will likely progress at this point.]
			--2: [Corruption grows stronger.]
			--3: [Even more.]
			--4: [Final stage.]]

to say Azari_Intro:
	say "     As you look around the area, your eyes fall upon a door marked [']Staff Only['] against the rear wall of the store. A piece of paper is taped just below that, a scribbled warning talking about a feral latex fox. Curiosity piqued, you step towards the door, passing several of the shack's patrons and workers. The closer you get, the more you feel like people are watching you. Sure enough, a cursory glance reveals that a fair few people have stopped what they're doing to observe you. Just as you're about to open the door, you hear someone loudly clear their throat. 'I'd be wary of going into Azari's room.'";
	LineBreak;
	say "     Turning around, you see Jerome approaching you, a grimace on his face. 'That's what we call him - Azari. He's been there longer than we've been open, and we've only ever had one patron go in there. You should've seen the look on their face when they bolted.' You give a nod at the shark's words and reconsider your course of action.";
	say "     [bold type]Do you proceed anyway?[roman type]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes";
	LineBreak;
	say "     ([link]N[as]n[end link]) - No";
	LineBreak;
	if player consents:
		now Azari_Met is true;
		say "     You shake your head, resolving to stick with your original course of action. With a tug, the door swings open, and you step over the threshold into what appears to be some kind of old storeroom. Boxes are stacked in one corner, seemingly untouched for months. Hazy light filters in through a dust-covered window on the far wall. You take a few more steps, allowing the door to swing closed behind you as you look around for the fox. Nothing really seems to be here.";
		say "     [bold type]Surely you're not going to go down this easily. Do you struggle against the fox?[roman type]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes";
		LineBreak;
		say "     ([link]N[as]n[end link]) - No";
		LineBreak;
		if player consents:
			LineBreak;
			if scalevalue of player < 3:
				say "     Try as you might, you're just not big enough to get the fox off of you. He grins, and as you struggle, you notice his body becoming larger, before he's the size of a wolf. [Azari_Sex_SmallPlayer]";
			else if scalevalue of player is 3:
				say "     Attempting to use your size to your advantage, you struggle against the beast. Just as you begin to gain some leverage, however, the fox abruptly grows in size until he's slightly larger than a wolf, his new mass enough to keep you held in place. [Azari_Sex_AveragePlayer]";
			else if scalevalue of player > 3:
				say "     Using your [if scalevalue of player is 4]larger than average[else]massive[end if] size to your advantage, you throw the unruly rubber vulpine off of you, quickly rising to your feet. The fox lets out a startled yelp and you rapidly duck out of the room before he can recover.";
				say "     Making your way out of the Shack, you pass Jerome, who simple raises a brow at your sudden departure and says, 'No refunds'.";
		else:
			LineBreak;
			if scalevalue of player < 3:
				say "     Opting to let the larger beast have his way with you, you relax your body, attempting to show your submission. He seems to get the message and gently nuzzles you before he decides to get started. [Azari_Sex_SmallPlayer]";
			else if scalevalue of player is 3:
				say "     You decide that it's probably best to submit to the feral; after all, you did come here for sex. Sensing your submission to him, the fox gives you a quick nuzzle before he decides to get started. [Azari_Sex_AveragePlayer]";
			else if scalevalue of player > 3:
				say "     Even though you could likely overpower the smaller creature, you decide to submit instead, relaxing your muscles and letting out a deep breath. However, the fox doesn't seem to care about that. He growls and swipes across your chest, leaving three bleeding scratches before hopping off of you and returning to his sitting position. It seems the fox has no interest in you after all.";
	else:
		say "     You nod at the shark, heeding his warning. Entering a tiny room with a crazed feral probably isn't the best idea, anyway.";
		WaitLineBreak;
		say "[ShagShackSexMenu]";

to say Azari_Sex_SmallPlayer: [Sex scenes for a small player with the fox]
	if player is kinky:
		say "Eager to use you, the sex-crazed feral grabs your arm in his [one of]rubbery[or]latex[or]squeaky[at random] teeth, yanking you to the side and forcing you to roll over. This seems to be all the invitation he needs, as he quickly begins prodding at your ass with his large rubber cock. The pre dripping from his tip is enough for it to slip between your butt cheeks, and a few rough thrusts later, the tip finds it's way into your hole.";
		say "     With his shaft now inside you, the feral beings to make his body grow, increasing in size until he's larger than a lion, [if scalevalue of player < 2]completely dwarfing your minuscule body[else]more than large enough to cover your smaller body completely[end if]. After his body finishes growing, his [one of]latex[or]rubber[or]rubbery[at random] cock begins to expand as well, [if scalevalue of player < 2]the added inch of girth stretching your hole even more, much to your own agony[else]the added girth stretching you out rather painfully[end if]. You're pretty sure it also got a handful of inches longer, too...";
		WaitLineBreak;
		say "     The beast doesn't give you any time to adjust to his new size before pressing his larger cock into you further. His goopy precum provides just barely enough lubrication for him to get halfway inside you before he starts encountering resistance from your insides, [if scalevalue of player < 2]your stomach distending in a very clear silhouette of the fox's cock, pain searing through your ruined passage[else]your stomach bulging outwards heavily, evidence to the huge latex shaft that's stretching you painfully[end if]. Of course, the resistance isn't anywhere near enough to deter the determined vulpine, and he begins to press into you with renewed vigor, fully intent on bottoming out to his knot, regardless of your own well-being or enjoyment.";
		say "     Inch after agonizing inch sinks into you, the sex-crazed feral making slow, but steady progress, your insides shifting to make way for his massive tool. Eventually, after much agonizing pain, he manages to press his growing knot against your hole. [if scalevalue of player < 2]He's so deep inside you now that your fairly certain that he may be poking up into your chest, as impossible as that may seem[else]His cock is so massive that you a pillar of stretched flesh resides where your stomach should be[end if]. You only get a moment of reprieve, however, before the beast pulls his shaft out of you, inch by inch, until on his tip remains. Of course, he gives you no time to get ready for his next thrust. He pushes all the way back in, up to his knot, [if scalevalue of player < 2]sending waves of agony through you[else]causing pain to shoot through your body[end if].";
		WaitLineBreak;
		say "     He pulls out again, faster this time, before pushing in. Quickly, he picks up the pace, and before long he's rutting into you aggressively, growling possessively as he takes you. [if scalevalue of player < 2]You can't help but let out a scream of pain from this abuse. [end if]Somehow though, despite the intense agony your feeling, you're becoming aroused, your cock hardening and dripping pre. The feral vulpine seems to notice this, letting out an amused huff. He continues to fuck you relentlessly, pounding into you harder and faster with each second. Eventually, he switches to shorter, even harder movements, only pulling a few inches out of you before pushing back in. With each time his knot presses against your entrance, you can feel it's been growing. It seems like this crazed feral is intent on tying you to his tool!";
		say "     With each and every thrust, he puts in more and more force. [if scalevalue of player < 2]Your body is screaming in agony as you can feel his shaft beginning to poke into your throat. [end if]The knot doesn't seem like it'll ever fit, but that doesn't matter one bit to the vulpine. He just keeps pushing harder and harder until, suddenly, the knot pops in, the tip [if scalevalue of player < 2]coming into your mouth, all the way through your body[else]of his shaft pressing into the base of your throat[end if]. His knot begins to swell even wider, straining your hips to the point that they should be breaking. You reach your climax, but with the massive knot pressing against your prostate, you can't even release any semen. The feeling is as excruciating as it is amazing. Soon, the fox begins climaxing as well, his cum spilling into your [if scalevalue of player < 2]mouth directly[else]throat, before it begins to flood your mouth[end if]. The rubbery fluid doesn't get a chance to leak out, however, as the fox suddenly extends his tail, shoving it into your mouth like a plug.";
		WaitLineBreak;
		say "     The torrent of seed has nowhere to go but down your throat and into your stomach. It floods into you, almost instantly bulging you out distinctly. You very quickly begin to look like [if scalevalue of player < 2]you're nine-months pregnant with twins[else]you're several-months pregnant[end if], and it just keeps flowing. Rope after rope of latex cum fills you, spilling through stomach and into your bowels, until it comes across the knot. With both ends tightly plugged, the virile cream can do nothing but inflate you more. In the half an hour it takes for the feral's orgasm to end, you become so stuff that you could easily lay on your stomach alone, needing no support from your arms or legs.[mimpregchance]";
		say "     The fox finally elects to pull out of you, after his knot has deflated slightly, and you let out a squeak from the sudden flow of seed that spews from both your ass and your mouth. Lying there, you slowly begin to drift into a state of sleep, simply exhausted from all the strain, pain, and raw pleasure you've been subjugated to.";
	else:
		say "Eager to use you, the sex-crazed feral grabs your arm in his [one of]rubbery[or]latex[or]squeaky[at random] teeth, yanking you to the side and forcing you to roll over. This seems to be all the invitation he needs, as he quickly begins prodding at your ass with his large rubber cock. The pre dripping from his tip is enough for it to slip between your butt cheeks, and a few rough thrusts later, the tip finds it's way into your hole.";
		say "     You grit your teeth at the pain caused by the large intrusion, your hole having to stretch considerably to abide it. Of course, the feral doesn't give you any time to adjust, quickly forcing more of his length into you. [if scalevalue of player < 2]Your tiny body is already being stretched excruciatingly to accept the shaft, and he's only made it halfway in[else]By the time half of his shaft is inside of you, your small body is having to stretch painfully to accommodate its length and girth[end if]. He doesn't show any intent of stopping at this depth either. With much effort on his part, and pain on yours, he manages to push his shaft in, all the way to the top of his bulging knot. Your stomach [if scalevalue of player < 2]is distended painfully, the silhouette of a fox-cock is visible through your skin[else]is bulging outwards, evidence to the big cock inside you[end if]. Despite all the pain you're feeling, you can't help but feel a twinge of pleasure as well.";
		WaitLineBreak;
		say "     The feral seems to notice your mounting arousal, and he lets out an amused huff. Deciding you've had enough time to adjust to his size, he pulls his rubber hips back until only the tip of his latex shaft is inside you. Your relief from the pain only lasts a moment, however, before he harshly thrust back into you. You let out a gasp of pain, but this does the opposite of discouraging him. He begins to thrust in and out of your hole, treating you like his bitch. Somehow, amidst the pain, your cock has hardened and is now leaking pre, betraying your reluctant enjoyment of this.";
		say "     As the vulpine's knot batters against your entrance, you begin to feel it growing. It nears three inches in diameter as he grows increasingly determined to bury it into you. His thrusts become more and more chaotic and animalistic as he lets out a growl expressing his utter dominance of you. Eventually, the large bulb of rubber makes some progress, stretching your hole wider and wider, until it pops in with a wave of intense pain and pleasure. Almost instantly, you reach your climax, spilling your cum onto the ground. The fox doesn't seem like he's too far behind you, as he ruts you viciously, nearing his own orgasm. He lets out a yip of pleasure as he cums, spilling his rubbery seed into your bowels. Rope after rope of his virile, rubbery cum fill you, and your stomach [if scalevalue of player < 2]instantly bulges even further outward, the torrent of seed causing you to inflate a sizable amount[else]quickly bulges outwards even more, the torrent of virile seed causing you to inflate a decent amount[end if].";
		WaitLineBreak;
		say "     Eventually, the flow of cum slows, and your left feeling decently bloated. The feral, being done with you, begins to tug your hole with his knot, trying to free his shaft. Of course, this is rather painful for you, until he eventually manages to yank it out with a wet pop, a rush of his own seed following it out.[mimpregchance]";

to say Azari_Sex_AveragePlayer: [Sex scenes for an average player]
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1:[No growth / light cum inflation scene]
			say "Eager to use you, the vulpine grabs you by the arm with his teeth, and yanks you to the side, causing you to roll over. However, this seems to be exactly what he wanted as he lines his erect, drooling cock up with your ass, roughly thrusting against it a few times before his tip sinks inside.";
			say "     The pain from the mostly un-lubricated intrusion causes you to grit your teeth, but this doesn't deter the beast. He keeps pushing and pushing his [one of]rubbery[or]latex[at random] cock deeper and deeper, until his growing knot brushes against your entrance. You let out a groan, seeing the massive vulpine member distending your stomach. Against your will, your cock begins to harden, leaking pre and betraying your arousal. The fox lets out a pleasured growl and pulls back until only a quarter of his [one of]large[or]big[or]long[at random] is left inside you. The sex-crazed feral only gives you a moment of reprieve, however, before he thrusts his tool back in up to the knot. He pulls back much more quickly this time, and thrusts in again. Slowly but surely, the beast picks up the pace, slamming his knot against your strained hole repeatedly. Your own unattended [cock of player] penis bobs up and down from his rough thrusting jerking your body.";
			WaitLineBreak;
			say "     His thrusts keep getting rougher and faster, before he eventually stops pulling out as far as he has been, only pulling out a few inches now. The fox growls possessively as he batters your hole, and pushes his knot harder and harder against it. Your eyes widen as you realize amidst the pain and pleasure that he's going to try tying you! True to that assumption, he backs up one last time before his softball-sized knot slams into your hole with a vengeance. But unlike the previous thrusts, he doesn't stop pushing after his knot hits you. He pushes harder and harder, determined to impale you with his knot before he finally succeeds, the ball of rubbery flesh slipping into you with a wet squelch, and a yip of pleasure from the rubber vulpine.";
			say "     Even without getting any treatment, you own cock erupts, orgasm strained from the pressure against your prostate, which actually seems to be growing! The latex fox's knot is swelling larger, firmly tying you to him as he begins to cum. Rope after rope of [one of]rubbery[or]slick[at random] fox seed fills your bowels. Faster than you would have believed possible, your belly starts to distend from all the semen pumped inside it. You start to look rather plump before the flow finally slows to a dribble. Yanking harshly on his knot, the fox manages to pull it out of your abused hole, a torrent of seed following it.[mimpregchance]";
			say "     The vulpine seems to completely disregard you afterwards, returning to the position he was in when you entered. Collecting yourself, you shakily exit the room.";
		-- 2:[Light growth / moderate inflation, or heavy growth / inflation if player has "Kinky" feat]
			if player is kinky:
				say "Eager to use you, the vulpine grabs you by the arm with his teeth, and yanks you to the side, causing you to roll over. However, this seems to be exactly what he wanted as he lines his erect, drooling cock up with your ass, roughly thrusting against it a few times before his tip sinks inside.";
				say "     This doesn't seem to be enough to sate the sex-crazed feral, as he soon begins to grow, both his body and his cock increasing in size. His body keeps getting larger and larger, until he's bigger than a stallion, and his cock grows to be over two feet long and three inches thick! The massive intrusion, despite only being barely inserted is stretching you painfully, and the pain only increases as the feral vulpine pushes his shaft further into you, its passage barely lubricated by his copious amounts of thick precum. By the time he's impaled you with half of his length, you can already see your stomach bulging outwards. He growls in pleasure from the feeling of your insides resisting his massive latex cock and pushes even further still. You belly-bulge quickly becomes a massive protrusion as the beast nears its huge knot, but somehow, you're not being ripped apart by it. When the beast finally presses his six-inch knot against your hole, the pain is excruciating. However, something else is there with it. You begin to feel a twinge of pleasure amongst the pain.";
				WaitLineBreak;
				say "     Seeming to sense your mounting arousal, the fox lets out an amused huff before he begins to pull his shaft out of you. Eventually, only his tip remains inside your stretched hole. This isn't the case for long, though, as he quickly pushes all the way back in. The harsh penetration causes you to let out a gasp, and the fox seems to take great enjoyment in eliciting such noises from you. He pulls backward sooner this time, and thrusts back in again. His pacing continues rise, until soon, he's pounding into you at a feverish speed, battering your hole with his knot. Your own [cock of player] cock is hard and throbbing despite the pain you're in.";
				say "     With each thrust the sex-crazed feral makes, you feel impossibly full, and each time he draws back, a terrible emptiness fills you. Eventually, the beast switches to shorter thrusts, making rapid movements in and out. He's thrusting hard enough that your own body is rocking in sync with his, your cock bobbing up and down. Soon enough, his thrusts get even harder and shorter. He seems determined to bury his massive knot inside you to claim you as his own. Your hole doesn't seem to be able to stretch wide enough for it to fit, at least at first. The rubber vulpine's tool eventually begins to make some headway, with the knot stretching your ring impossibly wider with every push, before, finally, it passes its widest point and pops into place loudly.";
				WaitLineBreak;
				say "     You instantly climax from the sheer pressure and strain on your prostate, painting the ground with your [cum load size of player] load. The feral begins climaxing as well, his knot growing to nearly a foot wide, a torrent of thick, rubbery seed spilling into your bowels, almost instantly distending your stomach. The flow keeps coming, and your stomach is now so large that you look like you're nine-months pregnant. His climax doesn't stop there, however, as he continues to spill semen into you, thrusting renewed as well. By the time he stops, and the flow of semen comes to a crawl, you look like you're ready to give birth to quintuplets any day now.[mimpregchance]";
				say "     The fox takes no notice of your ruined body, and begins to tug his tool sharply. With it still expanded, it doesn't seem like it's going to come out any time soon, so he shrinks it down just enough for it to pop out of you with a loud, wet squelch. He dismounts you, leaving you on the floor where you eventually pass out from exhaustion.";
			else:
				say "Eager to use you, the vulpine grabs you by the arm with his teeth, and yanks you to the side, causing you to roll over. However, this seems to be exactly what he wanted as he lines his erect, drooling cock up with your ass, roughly thrusting against it a few times before his tip sinks inside.";
				say "     With his shaft inside you, he begins to grow both his body, and his cock. You grit your teeth in pain as the intrusion grows, spreading your ring out wider. The feral's weight also increases, pressing you into the ground with his mass. By the time he's done expanding, his cock is nearly an inch wider, four inches longer, and his body is close to the size of lion. Despite the increase in size, he's still able to push his rubbery vulpine tool further into your depths, lubricated just enough by his thick precum. After a lot of work on his part, and pain on yours, he manages to bottom out to his growing knot.";
				WaitLineBreak;
				say "     The fox doesn't give you any time to get used to the intrusion, however, as he rapidly pulls it back out till just the tip remains inside you. He thrusts back in, faster this time, and despite everything that's happening, you feel a twinge of pleasure from your prostate, his smooth latex shaft rubbing against it nicely. Seemingly noticing your mounting arousal, the beast lets out an amused huff before picking up the pace even further. This prolonged ritual continues for quite a while, your [cock of player] cock growing harder and beginning to drool pre. Of course, this only encourages him further, and he begins to rut much more aggressively against your hole. His massive knot repeatedly brushes against your entrance, and soon enough, he switches to shorter, harder thrusts, determined to tie you to his tool.";
				say "     Pushing harder and harder into you, his knot eventually starts to make headway, stretching you rather painfully with its girth, despite only a little bit of it slipping in. This doesn't stop the rubber creature, however. He continues to force his knot further in further in, letting out a possessive growl, before the massive sphere of rubber slides in past its widest point. You feel an intense pleasure as the huge beast finally manages to tie your stubborn hole. Your [cock of player] penis throbs as you struggle to cum, the strain his knot is putting on your prostate making it rather difficult. As you finally reach your peak, the fox does as well. He lets out a pleasured growl as his orgasm begins, his entire shaft rippling in waves as he fills you with rubbery fox cum. Very quickly, you begin to feel incredibly stuffed by his cream, but the release shows no signs of slowing down. More and more fertile, twisted cum spews into your bowels, and your belly begins to distend noticeably.";
				WaitLineBreak;
				say "     You begin to think he's done before he starts rutting rapidly against you, still releasing his seed. He keeps thrusting into you while his climax continues. This goes on for what feels like hours before the vulpine finally slows down, his torrent of cum beginning to cease it's flow as well. When he's finally done filling you up, your belly is heavily swollen, to the point that you look like you've eaten a whole water melon. He suddenly begins to jerk backwards, trying to pull his knot from your hole. You let out a yelp of pain from the tugging, but also pleasure from the feeling of the rubbery liquid sloshing around inside you. Eventually the vulpine manages to pop his tool out, and it's quickly followed by a rush of his virile seed.[mimpregchance]";
				say "     After he dismounts you, he gives your drenched backside a few licks before he decides to turn around and return to the position you found him in when you entered the room. His body quietly shrinks back to it's normal size, and you take that as your cue to exit the room.";


Azari ends here.
