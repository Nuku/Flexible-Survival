Version 3 of Jackal Alpha by Gherod begins here.

[Version 1 - Created file]
[Version 2 - Added CV, Forced Butt-increase/fisting and Anal Fuck scenes]
[Version 3 - Added another CV scene with cock absorption and a bad end]

[Note: Bad End is only available if vorelevel > 1. Otherwise, it's blocked and will never trigger]

"Adds a Jackal Alpha enemy as a possible encounter"

JackalAlphaSubmitCount is a number that varies. [@Tag:NotSaved]
JackalAlphaSubmitCount is usually 0.

Section 1 - Encounter

to say Alpha Jackal Desc:
	setmongender 3;
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "     Approaching you comes a fairly large anthropomorphic jackal, tall and powerful, with bulging muscles being the predominant feature about this alpha male. The thing that makes his gender clear is the one oversized endowment dandling from one thick thigh to another, complete with an absolutely gigantic sack with swollen orbs that seem to be full to the brim with his seed, which already begins to ooze out of his soft sheath. His golden eyes turn their gaze to you, as his sleek jackal ears swivel around on top of his head to catch any noise in his surroundings. He has an especially wide jaw, an evidence of his hypermasculinity, which you only notice more when he starts speaking. 'I do not intend to harm you... But I would recommend submission. I shall make sure you are well prepared...'";
		say "     His tone is soft, albeit very deep, and has a mystic vibe to it. Complemented with the glowing light of hieroglyphs that cover his body, dimming strongly with every word, he manages to catch your full attention for a while, almost removing your will to fight in the moment. With that said, he comes closer...";

Section 1.1 - Defeat Scenes

to say Alpha Jackal Wins:
	if inasituation is true:
		say ""; [dealt with at the source]
	else if vorelevel > 1 and JackalAlphaSubmitCount is 6 and BodyName of player is "Jackal Femboy" and player is pure: [bad end, player is fully assimilated into the jackal's cock]
		say "[AlphaJBadEnd]";
	else if vorelevel > 1 and JackalAlphaSubmitCount >= 5 and a random chance of 1 in 2 succeeds and BodyName of player is "Jackal Femboy" and player is pure: [player is partially assimilated to the jackal's cock, corrupting their mind]
		say "[AlphaJWinsCV2]";
		now JackalAlphaSubmitCount is 6; [prepared for bad end if another loss follows]
	else if (JackalAlphaSubmitCount > 2 and a random chance of 1 in 2 succeeds) or JackalAlphaSubmitCount >= 5:
		say "     Unable to offer any resistance to the buff jackal, he approaches you unchallenged, his enormous equipment starting to twitch as the male canine, surprisingly effortlessly, given the oversized nature of his sheathed hose and dandling balls, walks towards you. A grin shows across his jackal face, hinting at something more wicked than his gentle words suggest, but his voice is calm and collected, so soft and soothing that you feel inclined to immediately trust him. 'Now now... You come here so often, inevitably ending up pleasuring me... Why don't we do something different, this time? I'm certain you would love to be able to truly make me feel... good.' he says, reaching towards you in a very tender manner as you helplessly give in.";
		WaitLineBreak;
		if vorelevel > 1 and scalevalue of player < 4 and a random chance of 1 in 2 succeeds: [CV]
			say "[AlphaJWinsCV]";
		else:
			say "[AlphaJWinsButtAugment]";
		WaitLineBreak;
		if humanity of player < 50:
			say "[AlphaJWinsAnalFuck]";
		else:
			AlphaJWinsEndScene;
	else:
		say "     Unable to offer any resistance to the buff jackal, he approaches you unchallenged, his enormous equipment starting to twitch as the male canine, surprisingly effortlessly, given the oversized nature of his sheathed hose and dandling balls, walks towards you. A grin shows across his jackal face, hinting at something more wicked than his gentle words suggest, but his voice is calm and collected, so soft and soothing that you feel inclined to immediately trust him. 'Just accept my gift, it is one of great prestige...' he says, reaching towards you in a very tender manner as you helplessly give in.";
		WaitLineBreak;
		if player is male:
			let randomnumber be a random number from 1 to 3;
			if randomnumber is:
				-- 1:
					say "[AlphaJWinsCockWorship]";
				-- 2:
					say "[AlphaJWinsRimming]";
				-- 3:
					say "[AlphaJWinsFacesitting]";
		else:
			say "[AlphaJWinsCockWorship]";
	if JackalAlphaSubmitCount < 5:
		increase JackalAlphaSubmitCount by 1;

to say AlphaJWinsCockWorship:
	say "     There is something about this creature that renders your resisting efforts useless, if they ever get a chance to occur. Must be something about the hieroglyphs drawn in patterns around his beautifully sculpted muscles, or in his hypermasculinity that takes you over like a fly to a light bulb. 'Come, now.' he begins to speak, pushing you gently to the ground as you lie down on your back, facing him from below with him walking just above you. He crouches down on top of your crotch, his expansive balls heavily resting against your body as his massive dick, poking out of its sheath and slowly rising to attention, keeps growing before your eyes, with a hanging string of precum bouncing wildly as his cock gives a few throbs.";
	say "     With some stroking, his manhood becomes fully erect, no longer obscuring his ballsack from your view, and to your amazement, even those have hieroglyphs painted across the skin, and a whole lot of them. Just looking at them makes your mind feel woozy, so you avoid that, which is not an entirely difficult task given the tremendously gigantic dick that is still growing, thicker than your head and going past it, right before you and catching your gaze. 'Hm... It seems I miscalculated. I did not expect to have gotten this big, already... You would not be able to pay tribute in this position...' he comments, rising to his feet with his now fully erect giant dong that could smother you with ease, and gesturing you to do the same, now that your lower half isn't being pinned down by his absurdly voluminous balls. His cock is so large and thick that it can't rise up all the way, even, and the only thing keeping it from squashing you is his powerful arm holding it in place.";
	WaitLineBreak;
	say "     Once you're in reach of his manhood, the alpha speaks. 'Embrace my cock. Let me feel your delicate body around my shaft and feast on my fluids.' His tone is calm and demanding, with his signature grin still drawn across his face, as he lets his massive dong fall on top of you, a nearly painful experience that dangerously shakes your bones as it collides against your body. The thick and heavy shaft throbs against you, warm and solid, and from the tip comes a large amount of precum that nearly manages to coat your entire face. He crosses his arms and looks down at you, the satisfaction of having pinned you down underneath his oversized equipment evident in his expression. 'Give in to it... I'm certain you will love its taste... You will find yourself wanting more and more as soon as you try it...' he makes the promise, pressing his dick against you harder while giving it a little bounce. It got so big that [if scalevalue of player <= 3]its shaft alone is thicker than your whole body[else]its shaft alone rivals your own body size, which is not by any means small per se[end if].";
	say "     You have no choice but to comply to the jackal's orders, else you want to risk getting crushed by his cock in the most humilliating way possible. Sticking your tongue and holding the vast, meaty shaft in your arms, you give it a tentative lick, only to realize how incredibly sweet his precum is. The taste is nearly addicting, and after just a moment, you find yourself compelled to wrap your arms around his giant cock and press your lips against the slit. 'That's it... You're such a good [boygirl]... Accept my gift and let-... Ooh... let it change you...' He keeps positively reinforcing your efforts, still observing you, but the look in his face looks more and more lost in bliss as you worship his shaft, caressing it in every possible inch with everything you can while gulping down the fluids he provides you.";
	WaitLineBreak;
	say "     But someone only can endure such pleasure for so long, and the alpha jackal is no different. All the rubbing, stroking and sucking you give to him eventually begins to draw the big canine towards the edge, his moans being an indicative of such thing growing closer to happen. 'Mmmh... You're about to empty my balls...' he warns, his cock starting to throb uncontrollably, trembling in your grasp, as if telling you that it is going to be a [bold type]big[roman type] load. Preparing yourself for what's to come, you attempt to readjust your position to have all that sweet cum bathe you in the best way possible, as helplessly compelled as you are to do so. He lets out a longer grunt than usual, leaving you with a final order 'Don't let my divine seed go to waste...' as he leans his head back in utter joy.";
	say "     Then, his cum comes blasting out of his cock like a geyser, hitting you right in the face and unforgivingly painting you in white. Even if you tried to swallow it all, you would fail. There was no way of achieving such a feat with that much cum simply exploding through his giant cock with that much force and quantity. His orgasm lasts for a couple of minutes, and there is so much jizz coming out that the world around you as you perceive it nearly turns completely into thick jackal cum, as you get dangerously close to drown in it. Nonetheless, its mere touch is enough to send you into a frenzy of lust, forcing you to hit your own climax right after it starts coating you, your skin having grown much more sensitive to pleasure, and also a lot smoother than before, even if for a time.";
	WaitLineBreak;
	say "     'Good [boygirl]... Soon you'll be ready.' he adds, retreating from the scene as you are left in a puddle of alpha jackal manjuice, too full and weak to move a muscle. It seems you can only wait until you are able to make a move again, and in the meantime, get to appreciate the changes such encounter made to you. It somehow feels so right to be in this place, and you cannot quite put your finger on why.";
	CreatureSexAftermath "Player" receives "OralCock" from "Jackal Alpha";

to say AlphaJWinsRimming:
	say "     There is something about this creature that renders your resisting efforts useless, if they ever get a chance to occur. Must be something about the hieroglyphs drawn in patterns around his beautifully sculpted muscles, or in his hypermasculinity that takes you over like a fly to a light bulb. 'Come, now.' he begins to speak, pushing you gently to the ground as you lie down on your back, facing him from below with him walking towards you. He crouches down just between your legs, and with an effortless push, he lifts your legs and makes you curl upwards, your thighs having been pushed all the way against your chest as your calves and feet remain hanging upwards. You feel his thick hand rub against your [cock of player] penis and balls, but only as a tease, since his finger then runs around your bits and across your perineum, ending rubbing against your pucker.";
	say "     'Before we proceed... I suppose I could offer you some pleasure of my own.' he says, as his powerful arms wrap around your legs, pulling you to him as you find yourself with a jackal face buried between your asscheeks. Then, a long, nimble tongue licks your anus, rubbing and wiggling against it, as the alpha caresses the sensitive flesh with the best of his abilities. It doesn't take a lot of time until he presses further inside your ass, tongue squirming around inside your inner fleshy tunnel, the canine man thoroughly eating your ass like a hungry beast devouring its prey, all figuratively. You cannot express how good that feels and how better it keeps filling, although perhaps that flask he keeps pouring into your hole could serve as an explanation for the enhanced sensitivity. Before you know it, you are wiggling your ass with his face, wanting more and more...";
	WaitLineBreak;
	say "     The alpha acknowledges your cravings, and pulls you even closer to him, doing his very best at rimming your hole with utmost enthusiasm. For some reason, your buttcheeks begin to feel heavier and more plump, as every single movement of his tongue manages to send you shivers of utter ecstacy all over your body. Helplessly, you let out several moans indicative of your submissiveness towards the jackal, who responds by further stimulating your anus. 'Mmh... you taste so good down here... I'm certain you shall fulfill your purpose well enough...' he says, as he pours yet another generous quantity of some sort of oil from that strange flask you saw just as while ago, and as soon as it hits your pucker, it sets you in a lust frenzy that makes your whole body squirm in pleasure.";
	say "     It is as if your ass drank the liquid, your pucker twitching and clenching as each drop fell into it, and the alpha simply used his tongue to further push more of the stuff in you. Your ass felt massive right now, so sensitive to the touch and the movement of his powerful hands feeling up your glutes from every angle and corner. He kept on feasting on your ass as if it was his own banquet, and you could only moan and endure the torturous pleasure he was giving you. Your cock was hard as a rock, able to blow with the faintest touch. Needless to say, the jackal knows of this, and with a single rub, he sets off your orgasm as you start cumming on your own face, each drop falling right on top of your mouth, nose and even eyes, which you close shut before you blind yourself.";
	WaitLineBreak;
	say "     'It seems you enjoy the anal pleasures... I shall further enhance them next time we meet.' he says, leaving you there with a swollen ass, craving for something to rub against its hole some more, despite you having gone through a climax. Somehow, it was stronger than you... but perhaps the effect is temporary. Nonetheless, it looks like this jackal really wants to turn you into some sort of buttslut with a gigantic ass...";
	CreatureSexAftermath "Player" receives "Other" from "Jackal Alpha";

to say AlphaJWinsFacesitting:
	say "     There is something about this creature that renders your resisting efforts useless, if they ever get a chance to occur. Must be something about the hieroglyphs drawn in patterns around his beautifully sculpted muscles, or in his hypermasculinity that takes you over like a fly to a light bulb. 'Come, now.' he begins to speak, pushing you gently to the ground as you lie down on your back, facing him from below with him walking just above you. He turns around, having you face his back - or rather, his magnificent, huge and muscular ass, hovering just above your head - and after a couple of seconds, he begins to squat over your face, his plump and meaty cheeks descending upon you. After that, he readjusts his position to take a comfortable seat right on your face, slipping it right between them with your lips pressed against his pucker.";
	say "     'Eat away.' he tells you, patting your head as he thoroughly makes it disappear under his huge butt, and you are left with no choice but to give it some good licking in return. Helplessly trapped underneath the alpha, he orders you to start licking as you feel his hands reaching over your junk, rubbing your [cock of player] cock with care as he strokes you to a full erection. His weight and volume makes it hard for you to breathe, especially when he starts wiggling his heavy rear with your face locked between his muscle asscheeks, clenching them both and holding you in. You feel completely dominated when he does that, and somehow, your dick keeps growing even harder... Actually, you feel it growing, throbbing and pulsing at an alarming rate, which gets much worse - or better - as you feel some sort of warm, slippery oil coating your shaft. He is pouring something onto your manhood, then stroking it...";
	WaitLineBreak;
	say "     You run out of breath plenty of times during this process, in which cases the jackal has to lift his ass just a bit to let you catch some much needed air, but sooner than you would have hoped, he bashes his rear right down, back to your face, each time harder than the last. With your tongue sticking out, he rubs his own hole against it, and makes you press against it to lick him deeper, causing a grunt of pleasure to be released from his mouth. Your dick feels huge, and not just that, even your balls feel enormous by now, swelling against your thighs the more the alpha caresses them. 'You're looking quite good over here... I wonder how big you could get if I just kept on making it grow...' he says to you, something that makes your manhood shake and tremble with pleasure, driving you really close to the edge.";
	say "     He strokes you faster as he pours more of his oil into your cock, and you swear you even feel it slipping inside your slit, as if it wanted to drink from it, an idea that disturbs you at first, but you quickly surrender to the sensations of utter bliss. It must be huge by now, and you cannot see it, only feel it being massaged and caressed by the jackal who is still smothering your face under his huge muscle ass. He is riding your face hard by now, humping and grinding it against you as he keeps stroking your expanded cock, as you feel a load coming that is much, much greater than your usual. 'Do you want to cum for your alpha, little [boygirl]? I bet you do...' he teases you, alternating between slow strokes when you get close, and fast ones once you stop feeling your orgasm wanting to burst.";
	WaitLineBreak;
	say "     It is agonizing the way he is edging you, torturous pleasure coming and going, and your dong only feels harder and more massive... The fact that you are not able to see it only drives you the craziest, as you are forced to pleasure the alpha jackal's ass which mercilessly claims your face at every second, only leaving you brief moments to catch your breath before, plenty of more times after that, hugging you tight between the muscle cheeks, then forcing you to press your tongue even deeper inside his hole. This continues for a long time, until you're squirming and wiggling your helpless body under him, as he feels the sound of your muffled moans vibrating against his pucker. Something tells you he actually likes that, and he's provoking you on purpose, but you cannot help it, you are about to go insane under these torturous conditions...";
	say "     'Maybe I should let you cum, now that you are all big and pumped...' he teases you once more, having you on the brink of orgasm for what seems to be an eternity, and you can't even beg him to let you blow with your mouth full of his ass. In fact, he rides you harder as he tightens his grip, then begins to stroke you faster than before. 'Let it all out, little [boygirl]...' his deep voice reaches your ears like a sweet melody, causing an immediate reaction on your body as you are brought over the edge, feeling your swollen balls rise... Then, with such an unfamiliar force, you shoot a thick, powerful spurt of jizz, followed by many others, chained together with each throb as they coat both of you. Even the jackal lets out a loud grunt as he feels you moaning into his ass, and it seems like he, too, was thoroughly enjoying his time, joining your load with his as both of you get coated in white.";
	WaitLineBreak;
	say "     Once both your orgasms subside, you are left with a huge shaft resting against your torso, still heavy and sticky. The alpha jackal stands up and looks at you with a grin on his face. 'You look much more beautiful now, pretty [boygirl]... I hope you keep coming to me, so I can keep offering my gifts to you. Perhaps someday, I shall take you.' he says to you, before turning around and walking away, leaving you in a puddle with both your loads. It seems that at least part of the size you have gained on your manhood will disappear, although some of it will certainly stay.";
	CreatureSexAftermath "Jackal Alpha" receives "Other" from "Player";

to say AlphaJWinsCV:
	say "     You notice the jackal approaching you differently, this time. And by different, you really mean... bigger. His male appendage seems thicker, meatier, heavier and throbbing harder than ever as he steps towards you. It all happens as if by magic, with not only the hieroglyphs around his muscular body glowing, but also the ones around his enormous balls, nearly dragging along the floor as they heavily swing on every movement. Once he is within reach of you, his cock has already surpassed the entirety of your being in length and girth, and is still hardening before your very eyes. The one thing you notice the most is the gaping slit at the tip, which is also getting closer and closer to you.";
	say "     'Why not give it a kiss? I'm sure it will like you back...' he asks, the grin on his face betraying the calming nature of his voice.";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Comply and kiss his cock.";
	say "     ([link]N[as]n[end link]) - Refuse.";
	if player consents:
		LineBreak;
		say "     The idea pleases you, or perhaps you see no way out of this but to please the jackal to his heart's content, so with all due care, you lean over the head of his cock and give it a big kiss. A huge spurt of precum leaks immediately as you caress the tip, coating your face in his sweet slick juice. 'Mmh, that's it...' he moans, and in your mind, you're begging for more as you indulge yourself in how addicting the whole experience feels...";
		SanLoss 15;
	else:
		Linebreak;
		say "     Before you could say anything, you find yourself face flat on his wet glans as he humps his cock towards you, the massive thick length pulsing with desire as soon as he feels you rubbing against its head. The scent of his strong pheromones and the taste of his precum caressing your tongue is enough to drop your defensive attitude, even though you try your best to hold onto your dear mind...";
		SanLoss 5;
	WaitLineBreak;
	say "     By placing your hands around his girth, you give him a slow stroke that sends trembling throbs all over his meat, which only seems to get more excited as you continue to give him what he wants. 'Give it some tongue... get a good lick around that slit, like the good [boygirl] you are...' he teases you, with a hint of a demeaning tone, but all in fair play. He just wants you to be making out with his dick, kissing and licking that slit with all the love you can give, and in return, you get drenched in more precum. At some point, it really is feeling like a great trade in your mind, and you find yourself mindlessly worshipping his giant dick the way he tells you to, having your actions under his control like a puppet's.";
	say "     Not only his manhood has grown to absurd disproportions, it is also throbbing and pulsing like mad the better you make it feel. The entire thing is making you want to kiss deeper, to slurp on all that sweet liquid that keeps pouring out of the slit, which is the only thing feeling softer as time passes. Your lips sink inside more easily, and you find the sensation exhilarating. So much in fact that you keep pushing without knowing what you are doing, the jackal releasing a prolonged grunt of ecstacy as his slit stretches to take your whole mouth in, feeling the movements you do with your tongue and lips sending pleasure all over. 'Ooh that's exactly it, [boygirl]... keep that up... a little deeper...'";
	WaitLineBreak;
	say "     He encourages you to keep going, pressing your mouth against his slit as you feel yourself sinking in just a bit more, and before you can realize what is happening, your whole face is being engulfed by the slippery meat, slurping at you at an alarming rate. 'Mmmmh... you're on your way there, now...'";
	say "     The sucking force is strong, and will only get worse...";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Don't resist.";
	say "     ([link]N[as]n[end link]) - Struggle.";
	if player consents:
		LineBreak;
		say "     There is no point in offering any resistance to something that feels so good to you. The slippery meat of his gigantic cock slurping at your face, only pulling you deeper into its warm embrace, where you can find more of that sweet thick precum just awaiting your arrival, is actually an unforgetful experience. The jackal seems happy at your obedience, and you can definitely feel that in the way his throbbing hits your head, once you're all the way in until your neck.";
		SanLoss 15;
	else:
		Linebreak;
		say "     No matter how much you attempt to pull out, the jackal's gigantic cock already has you in its hook. It only keeps pulling you deeper into its warm embrace, where you can find more of that sweet thick precum just awaiting your arrival. You wish you could just resist it, but after a while, you really don't anymore. It is taking your body and you mind, now your head being buried deep all the way in until your neck.";
		SanLoss 5;
	WaitLineBreak;
	say "     The alpha's dong doesn't let go of you, instead only intensifying the force it uses to pull you deeper. His ecstatic howls can be heard in the whole museum as his slit slides past your shoulders, enveloping your whole torso too quickly for any comfort. Without any options but to endure the whole process, you simply stay there, helpless, feeling yourself dragged inside deeper and deeper, the hard and throbbing walls of flesh constricting around your whole being as, quickly enogh, you're down to your waist, only your legs remaining visible on the outside of his shaft, kicking against the air.";
	say "     With all the joy in the world, the jackal leans back, enjoying your presence in his dick as he pulls you past the thighs, and then, with the volume made by his balls that are about to make space for your arrival, his cock raises up just enough to help your descent. It's so dark, warm and humid inside that you feel like melting already, and soon, his slit closes behind your feet, as they too disappear into the shaft. Your surroundings pulse and throb, pulling you even deeper as his orbs eagerly await you, desperate to be filled with a new presence. Your body movements and wiggling only further excites the alpha canine, who seems to be enjoying his time so much that he may find himself at a loss of words.";
	WaitLineBreak;
	say "     Soon enough, you are dropped into his balls, already carrying a generous amount of seed that bathes you in the instant you arrive at your destination. The soft walls embrace you, forcing you to a curling position since, despite their hyper size, his balls are still not large enough to hold you comfortably. Not that this is a problem for the jackal, however. Your body bulges visibly inside his sack, a defined, moving shape that is easily seen on the furred skin of his hanging orbs. 'Ohh you feel sooo good in there... I bet you can't wait to be made into a good slutty jackal femboy...' he finally speaks to you, his voice booming from every side as your mind is thrown into bliss.";
	say "     Within all the darkness, all you see is his thick cum sloshing around, trying to cover you entirely, and the glowing dimming light of his mystical hieroglyphs that you can still see from inside. They capture your gaze and make you feel so in peace... Like little lights drawing your full attention as they rub you to sleep, gently and tenderly...";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Give in.";
	say "     ([link]N[as]n[end link]) - Keep it together.";
	if player consents:
		LineBreak;
		say "     You lose all the will to fight, if you ever had any...";
		SanLoss 25;
	else:
		LineBreak;
		say "     ... But you can't let it take your mind like this. Even though everything feels so good, this tight space keeping you in a drug-like effect that oozes pure bliss and joy... The least you can do is attempt to not fall too low... as hard as it may be...";
		SanLoss 10;
	WaitLineBreak;
	say "     And with this feeling of pure ecstacy that assails you at every opportunity, comes change...";
	infect "Jackal Femboy";
	WaitLineBreak;
	say "     The longer you stay in his balls, the more his cum touches you...";
	infect "Jackal Femboy";
	WaitLineBreak;
	say "     Every second you spend submerged in his thick alpha seed, filling the dark space around you as time goes by...";
	infect "Jackal Femboy";
	WaitLineBreak;
	say "     Sloshing around, hitting your face, beckoning you to let it enter you, and you cannot help it...";
	infect "Jackal Femboy";
	WaitLineBreak;
	say "     You end up opening your mouth and feasting on that oh so sweet syrup that bathes you, an explosion of addictive flavor that makes you want more and more. Your senses are overwhelmed as your body keeps on changing with each gulp and each second, tempting you to lose your mind and give in to the alpha jackal...";
	infect "Jackal Femboy";
	infect "Jackal Femboy";
	infect "Jackal Femboy";
	WaitLineBreak;
	say "     Your captor huffs and grunts, pleasure being too much for him with your presence in his balls, and soon, you feel yourself being brought up through the passage you just arrived through. Completely submerged in his cum-filled orbs, you are then violently pushed outside, the world spinning around you with nothing but white covering your vision. It seems the jackal shot you so hard that you came flying a considerable distance from his position to the floor, which hits you with surprising cold. He howls in pleasure as he continues to cum for what seems to be a long minute, and while you attempt to grasp for freedom, more layers of canine spunk seem to form above and around you. Your newly shaped body is utterly covered in jizz, amidst a pool made of his load that only seems to increase in size.";
	CreatureSexAftermath "Player" receives "OralCock" from "Jackal Alpha";

to say AlphaJWinsButtAugment:
	say "     There is something about this creature that renders your resisting efforts useless, if they ever get a chance to occur. Must be something about the hieroglyphs drawn in patterns around his beautifully sculpted muscles, or in his hypermasculinity that takes you over like a fly to a light bulb. 'Come, now.' he begins to speak, flipping you over so you're lying down on the ground with your ass up, that he grabs generously. 'You come here so often that, in fact, I prepared something special for you...' he says, slapping your ass playfully as your cheeks wobble with more momentum than you're used to... 'It looks thirsty, my [boygirl]... How about we give it something to drink?'";
	say "     With a glance over your shoulder, you notice the jackal pouring a generous amount of the oil he carries in those small flasks on to his hands, rubbing them together as they gleam under the light, lubed up and ready. Then, you feel one of his fingers slide down your butthole, slipping inside so easily and feeling so... right... and good... that you reflexively let out a moan that excites the alpha. 'Glad you like it... I'm just preparing it for what is to come...' he teases you, playing with your pucker in ways that manage to make you [italic type]desperate[roman type] for more. Instinctively, you begin to wiggle your butt before you realize how low your mind is going, and the alpha takes the opportunity to follow up with another tease.";
	say "     'Beg for it... I might slide in another finger... and another... filling your hole more... and more...' his words just feel right on your ears as he keeps saying them...";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Beg.";
	say "     ([link]N[as]n[end link]) - Resist the urge.";
	if player consents:
		LineBreak;
		say "     And you beg, with all your might, that he continues to fill your begging ass, telling him how badly you want it and how much you need it. Perhaps you even went a bit overboard with it, but you cannot help it. You are that desperate.";
		SanLoss 15;
	else:
		Linebreak;
		say "     With a lot of effort and struggle, you manage to fight the urge to beg him for more, but instead, you end up letting out a few suggestive moans. 'Too shy to let me know you want it so badly, huh? That's alright... No pressure, my [boygirl]... I'll give it to you, anyway...'";
		SanLoss 5;
	WaitLineBreak;
	say "     He slides down another finger, moving and wiggling them against your sensitive butthole, rubbing against your moist fleshy tunnel as it continues to yearn for more. It's something you cannot resist, feeling that much pleasure focused on your ass, and you act as if your body had a mind of its own. He slides in another, filling your hole just a bit more, and it still feels like it is not enough... so he gives you yet another, and another... until all five are in. It feels so easy for you to take his whole fist inside, and you're so deep in pleasure that you only barely notice that your ass is no longer of the same size as it was when you arrived, but much, much bigger. Your cheeks bounce heavily as he rubs them, and are so swollen that his hands almost sink in your skin.";
	say "     'Such a hot sight...' he comments, as he seems to be stroking his own hypersized prick while working on your butt. Your clouded mind forces your focus on all that sweet sensation happening in your anus, as the jackal fists you with his slippery hand that continues to assail you, leaving you with insane amounts of bliss. You hump and wiggle back and forth, as if instinctively begging for more stimulation in there, unable to help yourself... and only satisfying the jackal more.";
	say "     'Could it be... that you want my second hand in?' he asks, without any brink of innocence visible, clearly provoking you on purpose. 'If you say please, I might do it...'";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Say [']please['].";
	say "     ([link]N[as]n[end link]) - Fight it.";
	if player consents:
		LineBreak;
		say "     You say it, more than once, as your butt wiggles enticingly. You can't help it, you need it... Badly.";
		SanLoss 15;
	else:
		Linebreak;
		say "     You can't go that low just yet, but your moans are suggestive enough. The jackal smiles at your apparent shyness.";
		SanLoss 5;
	WaitLineBreak;
	say "     And within a short moment, you feel his other hand entering your ass, which pulses in pleasure... or maybe in more size? It feels so heavy, yet so good... You don't want it to stop. You want more, being filled with all the things, your butthole stretched beyond measure. Your mind dwells in ideas of the biggest, fattest cocks fucking you over and over, filling you up with massive loads as your butt keeps yearning yet for more unending pleasure. The jackal's hands only sink in deeper, and you feel completely overtaken. 'Yesss... Oh, yes... You need more, a whole lot more...' he says, while slowly pulling his hands out of your ass, which cries as it feels its temporary emptiness...";
	say "     But the moment of loneliness doesn't last for long. The jackal gets a bigger flask of oil, opens it, and shoves it down your ass like a buttplug. You feel its contents pouring inside you, slowing and dropping right into your bowels, and it's such an explosion of sensations...! Your ass grows much, much bigger, and much hungrier... So much, that you can't physically bear it. It's so heavy that it drops to the floor, and you can't lift it anymore. And when you think it is about to stop, it surprises you with additional growth... You are given such a massive, colossal ass like one you never had before, nor thought possible... And behind you, the alpha jackal grunts as he strokes his also gigantic cock, the sight of your tranformation turning him on beyond measure.";
	say "     You simply cannot bear this amount of... thirst and pleasure...";
	infect "Jackal Femboy";
	infect "Jackal Femboy";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Beg him to fuck your ass.";
	say "     ([link]N[as]n[end link]) - Resist the temptation.";
	if player consents:
		say "     At the top of your lungs, you shout and beg for him to take your ass, to fill you up with his enormous cock, to let you feel it throb and pulse inside you as it fills you up, breeding you like the slut you are! 'Ohh... you...' he answers in a breathy tone, moaning and grunting as he strokes his gigantic hard-on, savoring your words and replaying them in his mind, probably imagining how good that would feel... and you can't help but do the same...";
		SanLoss 25;
	else:
		say "     You want his cock in your ass, or rather, your ass wants his cock inside you. It feels like it is taking over your brain, as you cannot process anything else but the image of that big strong jackal taking your colossal rear and breeding you full with his cum. But you still manage to hold onto your dear mind without saying it out loud, hoping to pass through this situation while retaining part of your sanity...";
		SanLoss 10;
	WaitLineBreak;
	say "     'It's... too hot... I can't hold... I need to...' he doesn't finish that sentence, and before you know it, you're being showered by an absurdly huge load, coating you completely from head to toe, that seems to be gushing for a long minute. His warm spunk forms a pool around you, and more layers continue to form all around your body as his howls echo through the halls of the museum. It seems the big jackal got so turned on at the sight of you changing before him that he was stroking himself whenever he could, now joyfully sighing at the sight of your marvelously huge butt.";

to say AlphaJWinsAnalFuck:
	say "     Looking at your state, the alpha jackal still approaches you, as you feel him coming to your position. You're trying to lift yourself from the ground, placing your elbow on the ground as you manage to bring your body to an all fours, but your rear feels incredibly heavy... Then, suddenly, an even heavier thud hits you right between your ass cheeks, which feel so, so sensitive... 'You like that? Feels good, right?' The jackal taunts you as he's rubbing his huge cock between your now oversized buttocks, so large that you almost can't believe you could possibly grow them like that. His dick is so hyper massive... and still hard, despite having orgasmed literally a few seconds ago.";
	say "     'Mmmh... I think I could go another round... And you seem very, very ready... all lubed up, too... with just the right size...' he grins, grinding his shaft across your soft pucker as he guides his enormous appendage towards it. Your shrug, then shake, and suddenly, a massive wave of pleasure strikes you like a thunder, as you feel your orifice stretch around that gigantic cock with surprising ease. It feels unbearably good, you find yourself squirming and moaning like a slut, unable to withstand the overwhelming sensation that takes you over in ways you cannot comprehend! 'Yesss...! I could fuck you forever... For all eternity... We were made for eachother...' he adds, shoving more than several inches inside your heavy and colossal ass, his meat throbbing at the rhythm of a fastened heartbeat.";
	WaitLineBreak;
	say "     He grunts ecstatically, fucking your hypersized ass like there was no tomorrow, humping and pounding you as if his dream came true, a butt with the perfect size for his gigantic dong, especially tailored to take him... And you feel so full, filled with that much meat inside your begging ass, yearning to be taken and owned by a true alpha worthy of your size, so sensitive to pleasure that you can't help but be moaning during the whole process. Your body only responds with further change as he unloads more and more of his jackal seed inside you, filling your insides to the point of swelling, making you crave more and more with each blast of thick juice that keeps assaulting you for another whole minute...";
	infect "Jackal Femboy";
	infect "Jackal Femboy";
	SanLoss 15;
	WaitLineBreak;
	say "     Once he is done filling you, the jackal pulls his manhood out while appreciating the mess he has done with you. 'Do keep coming back... I will fulfill your desires everytime...' he says, dropping some of that mystical tone in exchange for a more lustful one, especially as he eyes you from head to toe, completely coated in his spunk, with the obscene changes your body underwent while under his influence. You feel too weak to even move, and your hole is still twitching and blinking, which still manages to make the alpha canine's dick throb. 'How tempting it would be to take you again... but alas, I must retreat for now. Enjoy my gift, I expect to provide you more in the future... One day, you shall be fully ready, my [boygirl]...'";
	say "     With that said, he leaves you be, covered in his juices and leaving you to your thoughts. It takes you a long while to recover to your fullest, having to readjust to the world without him. It looks harder than you would like to admit... But at least, some of the most incapacitating features went away, with only another few persisting. It seems your body reacts more aggressively in his presence.";
	CreatureSexAftermath "Player" receives "AnalFuck" from "Jackal Alpha";

to AlphaJWinsEndScene:
	say "     As you are left in a puddle of warm liquid that still tingles at your body for a long while, the jackal simply walks away, leaving you to your body changes and thoughts. It takes you a long while to recover to your fullest, having to readjust to the world without him. It looks harder than you would like to admit... But at least, some of the most incapacitating features went away, with only another few persisting. It seems your body reacts more aggressively in his presence.";

to say AlphaJWinsCV2:
	say "     You notice the jackal approaching you differently, this time. And by different, you really mean... bigger. His male appendage seems thicker, meatier, heavier and throbbing harder than ever as he steps towards you. It all happens as if by magic, with not only the hieroglyphs around his muscular body glowing, but also the ones around his enormous balls, nearly dragging along the floor as they heavily swing on every movement. Once he is within reach of you, his cock has already surpassed the entirety of your being in length and girth, and is still hardening before your very eyes. The one thing you notice the most is the gaping slit at the tip, which is also getting closer and closer to you.";
	say "     This strikes you with an odd familiarity as memories of past similar situations fly by, the jackal having had done this to you before. There is a grin in his muzzle, filled with wicked intentions, but his voice remains as soothing as ever. 'You should know your place by now, little [boygirl]... Kiss it. Lick it... Embrace my manhood... Let it take you [italic type]in[roman type]...' His words ring in your mind like a sweet ballad, one that you cannot resist. Automatically, as if your body had a will of its own, you find yourself grabbing his gigantic cock, arms all around the exposed glans, as you bury your face between them licking at the soaked slit. He crosses his arms while observing you with the widest smile of satisfaction, savoring the visage of your broken self. 'Enjoying yourself? That's good...'";
	WaitLineBreak;
	say "     The alpha canine allows you to worship his enormous dong for a good long while, having drenched your face and body in precum with the immense droplets that keep oozing from his slit, which is opening wider the closer your lick. Something within you urges you to keep licking deeper into it as the jackal encourages you. 'Yesss... What a good [boygirl]... Lick it deeper...' he says, your tongue wiggling around the inner walls of his cock, and before you could even blink, your surroundings become a world of darkness as your head begins to get pulled in, the slit having slurped you in just enough to get a grasp on you. With each throb, more of you is taken inside the jackal's enormous cock, hardening even more with excitement, eventually having pulled you down to your waist and raised your feet off the ground like a hungry beast.";
	say "     With all the joy in the world, the jackal leans back, enjoying your presence in his dick as he pulls you past the thighs, and then, with the volume made by his balls that are about to make space for your arrival, his cock raises up just enough to help your descent. It's so dark, warm and humid inside that you feel like melting already, and soon, his slit closes behind your feet, as they too disappear into the shaft. Your surroundings pulse and throb, pulling you even deeper as his orbs eagerly await you, desperate to be filled with a new presence. Your body movements and wiggling only further excites the alpha canine, who seems to be enjoying his time so much that he may find himself at a loss of words.";
	WaitLineBreak;
	say "     Soon enough, you are dropped into his balls, already carrying a generous amount of seed that bathes you in the instant you arrive at your destination. The soft walls embrace you, forcing you to a curling position since, despite their hyper size, his balls are still not large enough to hold you comfortably. Not that this is a problem for the jackal, however. Your body bulges visibly inside his sack, a defined, moving shape that is easily seen on the furred skin of his hanging orbs. 'Feels like home, already... doesn't it?' he speaks to you, followed by a long pleased moan, his voice booming from every side as your mind is thrown into bliss.";
	say "     Within all the darkness, all you see is his thick cum sloshing around, trying to cover you entirely, and the glowing dimming light of his mystical hieroglyphs that you can still see from inside. They capture your gaze and make you feel so in peace... Like little lights drawing your full attention as they rub you to sleep, gently and tenderly... There is no way to resist this, not even if you wanted, as you find yourself entranced by the lack of willpower and the jackal's magic together. It just feels so right to be his, to follow his words and provide him the pleasure he seeks so deeply...! With these last thoughts, you doze off, entering a state of constant bliss that removes any ability of the mind for a brief time...";
	WaitLineBreak;
	say "     ...";
	say "     Once your consciousness returns, you feel your senses come back one by one, slowly... And something feels quite different than before. There is... a throbbing pleasure all over your body, and you feel hard... Very hard, in fact. You cannot help but want to contract and throb all the muscles in your body as you continue to drool something very sweet out of your mouth. Something is touching you, as well. It feels like a crowd of people with their hands all over you, and you cannot help but feel harder and bigger, even... hungrier. You attempt to move your arms, your legs, your head around, but they seem stuck at first. Then, it really feels like you no longer have them, and you feel yourself at a loss of ideas. Just what is happening, right now...?";
	say "     It is then when you hear the alpha jackal speak. Not verbally, this is not something you hear, but it is as your thoughts were his. They say 'I hope you enjoy the experience...', his words echoing in your mind, only leaving you with more doubt. Then, he makes it clear... 'Being turned into my cock is a great honor for such a good [boygirl] like you...' This strange sensation of being imprisoned in a cylindrical shape, unable to move, only feeling harder and so sensitive over your entire body can only lead to this conclusion, that you have been somehow been absorbed into the jackal's cock! But instead of panicking, you quickly embrace your new condition, albeit with the brief shock that translates only into a throb.";
	WaitLineBreak;
	say "     All the soft, tender hands rubbing at you, the alpha jackal's enormous manhood, feel beyond anything you have experienced until now. They follow your thick veins, your meaty length, and slick tongues find their way over to your sensitive head, the jackal's cock glans. These concepts feel more and more like the same to you, your former mind inclined to feel more like one with his dick, your thoughts merging with the canine's to a point they are no longer yours. All these people are jackal femboys, just like you were, eager to worship the alpha that made them his slaves. And you find yourself wanting them close to you, or to be inside their enormous hungry butts, You want to fuck them, you want to be inside them and stretch them wide, make them yours, and in the end, you contemplate pulling them within your depths...";
	say "     The joy is too much. There is no way to handle all of this, and you helplessly begin to throb and ooze, uncomfortably so. With so many hands and bodies rubbing against you, there is a surge of ultimate pleasure that makes your body harden more than you ever thought possible, and through your slit mouth, a deluge of thick cum is expelled at an absurd rate, covering the little femboys from head to toe as the alpha moans and squirms in bliss. He rubs his heavy paws at you, encouraging your climax to continue for a good couple of minutes, just coating everything and everyone in white, countless drops and spurts of jackal seed continuing to flow from within you... It feels overwhelmingly good, so much that you could scream in utter ecstacy, if only you had a voice left in you...";
	WaitLineBreak;
	follow the turnpass rule;
	say "     ...";
	say "     You wake up soon after, your senses coming back to you one by one. There's arms and legs, and you can move them. Actually, they are your arms and legs, and it feels like your thoughts are your own again. Your body is covered in dry spunk, but there is still a puddle around you full of the stuff. Still confused, you glance around, trying to find the jackal, as if you were unconsciously missing him. Immediately, you feel like attempting to find him again, beg him to stay, beg him to have you forever, but you stop there and take a deep breath... Wait, breathing in the smell of his cum was not a good idea, you end up missing him even more...! You have to get out of here before the last bit of sanity left in your mind is taken away by hopeless submission...";
	say "     And you do so, hardly enough. For a moment, you can think clearly again. It looks like all the jackal gave you was a dangerously realistic illusion of what could happen... And you feel like this was your [bold type]last chance[roman type]. You feel like [bold type]if you let the Alpha Jackal have his way with you one more time, you will lose yourself to him... forever[roman type]! Perhaps it wouldn't be a bad idea to stay away from him, or make sure you are able to defeat him the next time you meet, as that is the only thing that will save you from the fate he has in store for you.";
	SanLoss 50;

to say AlphaJBadEnd: [Bad End CV + total absorption scene]
	say "     Once again, the alpha jackal won, as he stands in front of your defeated self. Your mind feels so clouded near the big alpha that you are simply compelled to fall on your knees in front of the massive male with the gigantic dong, yearning for your attention. His enormous manhood is, by now, much bigger and thicker than your entire body, as if by the antecipation of what is to come. The jackal would have been showing his true colors to you perceptively enough were not for your weakened mental state, as his now very wicked grin threatens your very safety. 'Now now... After all this time coming at me, were you really thinking you still held a grasp on your mind?' he asks, his words merely causing you to squirm like some hopeless horny slut.";
	say "     'You've come so far, bringing me all the pleasure I seek, and being such a good jackal slut for me... Perhaps you're ready for the final step. You want to belong to me, don't you, my good [boygirl]?' He looks down at you, locking his gaze on yours as you nod helplessly, putting your hands around the exposed tip of his enormous manhood, and begin licking at it as much as you are able. The sweet taste of his precum gets you hooked up instantly as the large male observes you worshipping him. 'You really want this cock, don't you?' he asks, but his words fly by your ears like wind, as your mind is already far lost in depravity by now. You rub his veiny, throbbing shaft, licking and kissing at his sensitive tip, driving your tongue closer to the slit...";
	WaitLineBreak;
	say "     'Look at you... So eager to please me... It's so...' he doesn't finish his sentence, instead throwing in a laughter as you continue to raise your head to lick deeper inside the oozing exit, already feeling an urge to climb inside. 'So, so eager... Aren't you...? This time, once you're in...' he stops, as you struggle to look at him in his eyes, still lost in the overwhelming joy that you are feeling for being almost face buried inside his giant cock. '... there's no coming out.' While his words sounded final, everything that goes in your mind is how much you want to please this jackal, just how you want to satisfy all his cravings and desires, almost as much as your own submissive eagerness urges you to give yourself in. The big alpha grins once more, proud of his unbeatable effect on you...";
	say "     The alpha canine allows you to worship his enormous dong for a good long while, having drenched your face and body in precum with the immense droplets that keep oozing from his slit, which is opening wider the closer your lick. Something within you urges you to keep licking deeper into it as the jackal encourages you. 'You belong to me, now... Come on in... My balls are aching...' he says, your tongue wiggling around the inner walls of his cock, and before you could even blink, your surroundings become a world of darkness as your head begins to get pulled in, the slit having slurped you in just enough to get a grasp on you. With each throb, more of you is taken inside the jackal's enormous cock, hardening even more with excitement, eventually having pulled you down to your waist and raised your feet off the ground like a hungry beast.";
	WaitLineBreak;
	say "     With all the joy in the world, the jackal leans back, enjoying your presence in his dick as he pulls you past the thighs, and then, with the volume made by his balls that are about to make space for your arrival, his cock raises up just enough to help your descent. It's so dark, warm and humid inside that you feel like melting already, and soon, his slit closes behind your feet, as they too disappear into the shaft. Your surroundings pulse and throb, pulling you even deeper as his orbs eagerly await you, desperate to be filled with a new presence. Your body movements and wiggling only further excites the alpha canine, who seems to be enjoying his time so much that he may find himself at a loss of words.";
	say "     Soon enough, you are dropped into his balls, already carrying a generous amount of seed that bathes you in the instant you arrive at your destination. The soft walls embrace you, forcing you to a curling position since, despite their hyper size, his balls are still not large enough to hold you comfortably. Not that this is a problem for the jackal, however. Your body bulges visibly inside his sack, a defined, moving shape that is easily seen on the furred skin of his hanging orbs. 'Your home, now... There is no way out of what you are destined to become...' he speaks to you, followed by a long pleased moan, his voice booming from every side as your mind is thrown into bliss.";
	WaitLineBreak;
	say "     Within all the darkness, all you see is his thick cum sloshing around, trying to cover you entirely, and the glowing dimming light of his mystical hieroglyphs that you can still see from inside. They capture your gaze and make you feel so in peace... Like little lights drawing your full attention as they rub you to sleep, gently and tenderly... There is no way to resist this, not even if you wanted, as you find yourself entranced by the lack of willpower and the jackal's magic together. It just feels so right to be his, to follow his words and provide him the pleasure he seeks so deeply...! With these last thoughts, you doze off, entering a state of constant bliss that removes any ability of the mind for a brief time...";
	WaitLineBreak;
	say "     ...";
	say "     Once your consciousness returns, you feel your senses come back one by one, slowly... And something feels quite different than before. There is... a throbbing pleasure all over your body, and you feel hard... Very hard, in fact. You cannot help but want to contract and throb all the muscles in your body as you continue to drool something very sweet out of your mouth. Something is touching you, as well. It feels like a crowd of people with their hands all over you, and you cannot help but feel harder and bigger, even... hungrier. All this feels familiar to you... Too familiar. Your arms and legs are no more, and instead, your whole body has been replaced by a veiny long body that continues to pulse and throb with longing pleasure.";
	say "     The deep manly voice of the alpha jackal storms in your mind, speaking as if they were your own thoughts. 'How does it feel? To be one with me... to feel my pleasure as much as you provide me...? To have received the honor to become my cock... Not everyone is as lucky as you. Perhaps... I should demonstrate how good it feels before you are fully integrated...' For the first time during the whole process, you actually feel like you have crossed a point of no return and that you mind find yourself in great danger, but all the throbbing pleasurable sensations challenge you to forget all about it. A scene unfolds around you, much like the one you have experienced in the other illusion, except... this one seems very real.";
	WaitLineBreak;
	say "     The alpha jackal's whole body is being worshipped by a harem of needy femboy jackals, slightly smaller than him. Some are licking at his armpits and chest, others remain focused on this genitals, while the remaining stand only at his feet. And all you feel is what his cock feels, all the hands around you, rubbing and caressing the shaft that is now your body, all the friction delivering unending pleasure all over you as they yearn to feel the entirety of their alpha's length. You are unable to form your own thoughts as your mind is imprisoned by your current condition, only left to experience what the jackal allows, and your cravings resume to dominating every single one of these big butt canines, stretching their holes wide one after the other...";
	say "     Eventually, one of them is brave enough to bend over for the alpha, showing those colossal buttcheeks to the big male as he throws you, his cock, between them, to rub at those soft plump bubbles of furred meat that caress your sides, his shaft, before your head, that is his tip, slides into the moist donut hole that is the femboy's anus. He moans as you feel the tight entrance stretch all over your length, as your entirety slides in deep into those warm confines, pleasure storming through every inch of your body the deeper you go in, as you get to experience the concentrated focus of ecstacy there would be on a cock but through all of your senses. Every inch of you is covered by a slick, wiggling hot wall of flesh that constricts around you and gives you pleasure like none you have experienced until this day.";
	WaitLineBreak;
	say "     All the friction around your whole thick veiny body brings you closer and closer to a climax, until it finally causes an outburst. The sensation is the strangest one, an enormous avalanche of jackal cum leaving what would be your mouth, the slit of that enormous manhood, feeling like an overwhelming moment of ecstacy running through your very core, as the absurdly gigantic load begins to fill the femboy canine. He, of course, is not able to take it all inside, the force and sheer quantity of spunk being too much for the submissive jackal, and he ends up being shot away from the cock that was stretching his hole, catching a cumbath instead. Their alpha continues to enjoy his first orgasm unfazed, his balls still looking as full as they were, and his muscular body worshipped by the remaining entranced feminine jackal boys.";
	say "     His voice continues to invade your mind as if it was your own, his thoughts merging with yours, until your blissful consciousness threatens to disappear. You feel yourself struggling for the last few moments as yet, another eager bubbly butt impales itself on you, more of that overwhelming pleasure assaulting you, making you throb and harden with a craving for more... The fuck lasts for a couple of minutes as you feel yourself growing to an ever larger proportion, the alpha ordering the femboy to resume licking his shaft as you stand high and solid, your mouth opening as a reflex... which happens to be the alpha's cum slit, hungry to take someone inside. Without hesitation, the hole-stretched jackal throws himself onto the sensitive glans, licking and kissing it with vigor as you keep oozing the thickest drops of precum.";
	WaitLineBreak;
	say "     Suddenly, this hunger strikes you like none you have ever felt, the urge to feel someone inside you, wiggling within your body and aching to be filled... Or is that the alpha who is feeling this? Your doubts and confusion keep growing as it gets harder to process everything that is happening. Soon enough, your mouth is stretching around the jackal femboy's head as you slurp him inside you... Inside the jackal's cock, throbbing and pulsing at a gigantic size, simply swallowing the femboy until his shoulders, then his chest, down to his waist and beyond, as he continues to slide down your cavernous body as the alpha's balls make up space for their new arrival. The pleasure is unbelievable... as if an emptyness inside you was suddenly filled with the most sating reward, a rapturous bliss as you feel yourself, or what was left of you, slowly melt away into a one-dimensional being... It was just what you needed.";
	WaitLineBreak;
	say "     Your thoughts are his. Your senses are his... Your desires are his as well. There is no more you, there is only the alpha jackal. You are one with the other, and your only wishes are to be worshipped, to fuck and to devour whoever falls into your spells.";
	wait for any key;
	now battleground is "Void";
	the Player was ended by "Jackal Alpha";
	trigger ending "Player has died";
	end the story saying "You have been digested and absorbed into the Jackal Alpha's cock.";

Section 1.2 - Victory Scenes

to say Alpha Jackal Loses:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "     With the beating you gave the big alpha jackal, he has no way to make any further attempts at charming you. 'You could have just accepted my gift... I am offering it to you so freely... Why must you reject it?' he asks, and you can tell by the expression in his face that he is deeply offended. Perhaps you could make ammends and offer some friendly gesture that would leave him much happier, or just... Use him and his body as you see fit, since you just brought him to the ground, defeated and vulnerable.";
		WaitLineBreak;
		say "     How shall you make use of this situation, if you intend to do so?";
		Linebreak;
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Play with his massive cock";
		now sortorder entry is 1;
		now description entry is "Get your hands on his oversized equipment";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Gather some cum from the jackal";
		now sortorder entry is 2;
		now description entry is "Milk him for some cum";
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
					if (nam is "Play with his massive cock"):
						say "[AlphaJLosesCockPlay]";
					if (nam is "Gather some cum from the jackal"):
						say "[AlphaJLosesCumMilk]";
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     Perhaps it would be best to drop it here. No way to know the risks messing with such a creature could pose to you, and it is better to be safe than sorry.";
				if JackalAlphaSubmitCount > 0:
					now JackalAlphaSubmitCount is 0;
					say "     [bold type]Beating the alpha jackal once has released you from his magical influence completely[roman type]. You feel much more like yourself, now!";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say AlphaJLosesCockPlay:
	say "     Given the fact that he has such an especially large endowment, your mind wonders around the possibility of having some fun with it. Fortunately, the alpha won't be able to resist any of your moves, and you could potentially have your way with his cock free of any problematic situations. As you have made your choice already, you proceed to approach the mystic canine, who just blinks, incredulous at the fact you are coming closer to him with a certain naughty goal in mind. It seems like he can read through you. 'Even after all that, you still want to...?' he asks, not finished his sentence before you pull his legs to yourself, crouching next to him, and sliding your hands over his oversized sheathe, which immediately reacts to your touch, his meaty prick poking out of it and expanding forward with every movement.";
	say "     He simply observes you as you make his appendage harden, the more you rubbed and stroked. 'Or did you want to do this on your own terms...? It is peculiar that you still desire me, after having beaten me...' Turning to him, you let the jackal know you intend to beat him again, but in other ways, as your hands run over his manhood, caressing every inch of his gigantic cock. It grows and grows, each pulse prompting a surge in size, and you almost can't believe how big he actually is getting. The thing could wrap around your whole body if it wasn't all rock solid, and it's so heavy it curves downwards with the gravity. What is also worth mentioning is his enormous, heavy ballsack, so massive it could possibly fit a single person inside.";
	WaitLineBreak;
	say "     It happens to become a workout, giving attention to his full size. But you are not keen on giving up so soon, as you wrap your arms around his cock and, together with your chest, you provide him with enough friction to actually get him moaning. As you take charge of things, he says nothing, simply staring at you as you do all the work, although he says one thing with what is left of his audacity. 'Too big for you to handle? I guess you could use your mouth, too... It really works on making me bigger and harder, if that's what you're looking for...' Something in his words actually makes you consider his recommendation, however if you happen to ingest any of his fluids, you might risk infection... [bold type]How will you reply?[roman type][line break]";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Stick to handjob.";
	say "     ([link]N[as]n[end link]) - Take your chances and use your mouth.";
	if player consents:
		LineBreak;
		say "     Perhaps that was his last attempt at trying to transform you or something, but you saw right through it. Or perhaps you just feel like giving him a handjob, instead. Nonetheless, you shut him down, and proceed to use your hands only for the rest of the fun, grabbing his massive shaft and stroking its entirety along the way, since you are not too keen on risking a transformative effect on yourself. He shows a look of disappointment, but that is replaced with pure joy as you pick up the pace, using your hands, arms and even body to rub against his cock, but all from the safe angles. He surely precums a lot, and that is something you cannot avoid. Having such a huge cock to work with can surely get messy.";
		say "     With faster, deeper strokes, you begin to push the alpha closer to cumming, and you can definitely feel it coming closer with each pulse and throb his dick gives, and the way he seems to be moving is body suggests he might be really getting there. He whines and huffs like a needy, horny dog, almost betraying his status as an alpha, while you continue to stimulate his vast meatlog that only grows harder and longer. There is no telling how much bigger it can actually get, but you start thinking there might be some sort of magic into play at his size, were it not for the strange hieroglyphs scattered around his body and ballsack. Perhaps they are unrelated, but it is pretty unnatural to have a cock this big, drooling this much precum. Who knows how much the jackal may even cum...";
		WaitLineBreak;
		say "     But you are about to find out. Once you feel his heavy balls raising, despite the impossible weight they might be carrying inside, the jackal inhales deep as he lets it happen, an absurdly huge torrent of cum leaving his dick with the force of a geyser, so much that you even struggle to not get caught in it! Everything fixes itself as you are aiming forward with it, succesfully evading a cumbath as the jackal continues his climax for what seems to be full minutes, cumming with each throb as a puddle of spunk begins to from around the balls, together with the river ahead of them. Only when it starts to subside you decide to put his cock down, his oversized member slowly softening as you leave him there, lying on the ground.";
		if JackalAlphaSubmitCount > 0:
			now JackalAlphaSubmitCount is 0;
			say "     [bold type]Beating the alpha jackal once has released you from his magical influence completely[roman type]. You feel much more like yourself, now!";
	else:
		LineBreak;
		say "     Why not? Might as well get a taste of that massive piece of meat, since you are touching it already and so close to it. Seeing that you are considering his works, the jackal expresses a smile, seemingly a bit [italic type]too[roman type] happy with how you will be using your mouth to add to the overall stimulation. You might risk a sticky infection, but who cares if you just want to have a little fun? Needless to say, his expression is one of pure joy once you get to work, picking up the pace as you move to the front of his cock, positioning your lips right below the trip to catch all that delicious precum tht is oozing out. Using your hands, arms, body and tongue, you rub against his oversized manhood. Having such a huge cock to work with can surely get messy!";
		say "     With faster, deeper strokes, you begin to push the alpha closer to cumming, and you can definitely feel it coming closer with each pulse and throb his dick gives, and the way he seems to be moving is body suggests he might be really getting there. He whines and huffs like a needy, horny dog, almost betraying his status as an alpha, while you continue to stimulate his vast meatlog that only grows harder and longer. There is no telling how much bigger it can actually get, but you start thinking there might be some sort of magic into play at his size, were it not for the strange hieroglyphs scattered around his body and ballsack. Perhaps they are unrelated, but it is pretty unnatural to have a cock this big, drooling this much precum. Who knows how much the jackal may even cum...";
		WaitLineBreak;
		say "     But you are about to find out. You couldn't help but have swallowed much of his delicious juices, like sweet and thick syrup, and as you feel his heavy balls raising, despite the impossible weight they might be carrying inside, the jackal inhales deep as he lets it happen, with you right there on the danger zone. An absurdly huge torrent of cum leaves his dick with the force of a geyser, completely covering you from head to toe with thick globs of jackal seed sticking to you like hot cream, as it keeps coming out with each throb, up to a point where a puddle of spunk begins to form all around you. Only when the alpha jackal's orgasm begins to subside you decide to put his cock down, after having earned a free cumbath. There's a look of ecstacy in the jackal's face as you try to take your leave, still all drenched and sticky. Perhaps it would be for the best if you took the time to clean yourself.";
		if a random chance of 1 in 2 succeeds:
			infect "Jackal Femboy";
		if JackalAlphaSubmitCount < 5:
			increase JackalAlphaSubmitCount by 1;
		say "     His influence over you seems stronger... Perhaps you shouldn't have swallowed any of his amazingly tasty cum... Perhaps you shouldn't even think his cum is so irresistible... Nor find yourself craving it...";
		CreatureSexAftermath "Player" receives "OralCock" from "Jackal Alpha";

to say AlphaJLosesCumMilk:
	say "     Well, given his position, he doesn't get much say in the matter. You intend to collect some of his seed, and he will have to comply, willingly or not. With this in mind, you grab one of the empty flasks laying around the museum, and proceed to approach the jackal with your intent made clear. His eyes stare widely at you. 'You wouldn't dare to steal my cum like that...!' he asks, a more dramatic tone than what would be natural, but you don't give him much credit. Of course, you are not entirely heartless, you have to make sure he enjoys the process a little. Giving him a slow stroke at first, waiting until his cock rises to a decent - and oversized - erection, you give him all the time he needs to get in the mood for your collection purposes.";
	say "     Although, you know you will get more than you are asking for, no matter how slowly you take things. Despite his protests, the jackal ends up giving in to your caresses, getting harder and harder in your grasp as his manhood keep on expanding, a hyper-sized cock that knows no limits just continuing to grow before your eyes, reaching titanic proportions that anyone would consider unnatural. You give him a challenging look as you continue to stroke it, the dark furred canine trying to resist your advances, but to no avail. His libido betrays him, and the whole situation somehow seems to turn him on even more, for some reason. His hard member feels solid, hard like rock and throbbing at every second, your masterful touch being enough to take him close to the edge.";
	WaitLineBreak;
	say "     It doesn't take that long until he lets out his load, a huge, massive flood of cum threatening to bath you as it leaves through his giant shaft. Quickly, you attempt to take some of it into the flask, carefully so you don't get caught in the current. His geyser-like load continues for a couple of good minutes until it finally begins to subside, and you wonder if you could have actually gathered more than one single unit with that much quantity of seed laying on the ground. You guess you will have to live with only having added one flask of [bold type]jackal alpha cum[roman type] to your stash.";
	say "     The jackal has no energy left to say anything, he simply takes the moment to rest after having covered himself in spunk, as you take your leave carrying the spoils.";
	ItemGain alpha jackal cum by 1 silently;
	if JackalAlphaSubmitCount > 0:
		now JackalAlphaSubmitCount is 0;
		say "     [bold type]Beating the alpha jackal once has released you from his magical influence completely[roman type]. You feel much more like yourself, now!";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Jackal";
	add "Jackal Alpha" to infections of CanineList;
	add "Jackal Alpha" to infections of FurryList;
	add "Jackal Alpha" to infections of NatureList;
	add "Jackal Alpha" to infections of MaleList;
	add "Jackal Alpha" to infections of TaperedCockList;
	add "Jackal Alpha" to infections of KnottedCockList;
	add "Jackal Alpha" to infections of SheathedCockList;
	add "Jackal Alpha" to infections of BipedalList;
	add "Jackal Alpha" to infections of TailList;
	now Name entry is "Jackal Alpha";
	now enemy title entry is "Jackal Alpha";
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]He leaps forward and almost manages to grab you, but instead deals a painful strike on your head with his paw, which leaves the big jackal looking at you almost apologetically.[or]With surprisingly agility, the jackal dashes behind you and attempts a charge with his full weight on top of you! Looks like he intends to pin you down, but you manage to keep that from happening just yet, although the collision still hurt.[or]The jackal charges at you in an attempt to overpower you with his heavily muscled bulk. Fortunately, it was just a mildly painful tackle and you're still standing.[or]Leaping towards you, the huge canine wraps his arm around your neck, forcing your nose into his armpit. You barely manage to avoid the worst, but his masculine scent is stuck in your nostrils[or]He poses for a second, showing off his buff body and every inch of his bulging muscles, partially covered in glowing hieroglyphs. Inevitably, you stare at them for a second, leaving a grin on the big jackal's face as you start losing the will to fight.[or]He darts forward, but instead of attacking, he rubs his large physique up against your body, his arousing scent clinging to you even as he retreats back out of reach.[or]He stalks forward confidently, his only intention to make you stare at his absurdly oversized cock and balls hanging soft between his huge trunks for thighs. He rubs them teasingly, showing them off to you, and for a second, you forget about the fight with your eyes locked on the gigantic endowment.[or]The buff jackal looks at you with the biggest cocky grin, dick twitching with each step he gives, as he catches your gaze with the hieroglyphs around his body, glowing and mesmerizing you. Once he has your attention, he takes you in for a crushing bear hug and gives you a lick on your face. He's so powerful that you don't know how you managed to break free, but that was a very close one.[at random]";
	now defeated entry is "[Alpha Jackal Loses]";
	now victory entry is "[Alpha Jackal Wins]";
	now desc entry is "[Alpha Jackal Desc]";
	now face entry is "narrow canine head, with a long, sleek muzzle and a nicely flattened forehead. Your golden eyes seem to take in every aspect of the world around you as your sleek jackal ears swivel around on top of your head to catch the faintest noise. Your jawline is especially wide, even for a jackal, emphasizing your hypermasculinity";
	now body entry is "strong, muscular and thick, built like a true bodybuilder, with digitigrade legs and jackal-like feet.";
	now skin entry is "[one of]dark black[or]sleek black furred[or]jackal furred[at random]";
	now tail entry is "You have a fluffy, black-furred jackal's tail attached to your rear, swaying excitedly over your huge muscle ass with every step you take.";
	now cock entry is "[one of]canine[or]jackalboy[or]jackal-like[or]knotted[at random]";
	now face change entry is "as your mouth pushes forward into a sleek black muzzle, and your eyes blur as they shift in both color and position. New sounds and smells explode through your enhanced senses as your new jackal's muzzle finishes forming and your ears complete shifting into proper canine ears, swiveling around on top of your head like a proper jackal's";
	now body change entry is "it seems to bulk up, its form becoming both heavy and solidly muscular as it seems to enlarge significantly. You can feel your legs shift and change as well, causing you to stumble for a minute as your heels seem to shift upwards on your legs, shifting your weight forward onto the balls of your changing feet. Soon your feet finish their transformation and you find yourself balancing easily on your new jackal-like paws, as you stand on your thick digitigrade legs";
	now skin change entry is "a soft tingling sensation spreads across your body and soft, sleek, black jackal fur begins to push its way out of it. The fur quickly covers your body in a sexy coat of short dark fur, emanating a hypermasculine scent that makes even you, the bearer of it, excited";
	now ass change entry is "a strange tingling sensation seems to grow in your rear. It softens and flattens somewhat, then with a soft pulling sensation you feel a thin black canine tail slowly extend from your tailbone, lengthening until it is down past your knees before the changing stops. You can't help but notice that your buttocks seem quite heavier than before, made of such massive and solid muscle that makes it hard for you to walk, at first";
	now cock change entry is "its shaft thins and changes, the tip tapering to a point while its base seems to swell up slightly before being covered in a soft black sheath of fur. Funnily enough, it seems keen on growing further";
	now str entry is 28;
	now dex entry is 17;
	now sta entry is 20;
	now per entry is 15;
	now int entry is 13;
	now cha entry is 18;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 65;
	now lev entry is 11;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 14;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Museum";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 30;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 5;  [ Size of balls ]
	now Nipple Count entry is 2;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is false;
	now libido entry is 40;  [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "jackal alpha fur";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 50;  [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "jackal alpha cum";
	now TrophyFunction entry is "-";
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]altered[or]animalistic[at random]";  [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]canine[or]jackal[at random]";
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is "Jackal Femboy"; [sexually transmitted infection for when the player loses; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump";  [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Husky Alpha"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 8; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 2; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your ears are drawn upwards to the top of your head and a tooth-filled muzzle pushes forward to give you the head of a proud husky"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a husky with [Head Color of Player] fur"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "furred"; [one word descriptive adjective]
	now Head Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "white"; [one word color descriptor]
	now Hair Style entry is "buzzcut"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "blue"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 10; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 10;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "slobbery"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 7; [length in inches]
	now Torso Change entry is "grey and white fur sprouts all over it, giving you a warm and shining coat"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "covered in a warm coat of [Torso Color of Player] fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "pink"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into blunt claws and grey-white fur spreads over your paw-hands, then all the way up your arms"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] fur, ending in paw-hands with blunt claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of an anthro husky with thick grey and white fur and paws"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro husky, with thick [Legs Color of Player] fur covering them from your hips down to the clawed paws"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes well-rounded, with grey and white fur sprouting over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered thick grey and white fur"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "furry";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a mid-length canine tail sprouts from your tailbone, soon covered in grey and white fur"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "mid-length, [Tail Color of Player] tail"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 8; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "pink"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 4; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 9; [length in inches]
	now Cock Change entry is "it takes on a reddish color and canine shape, complete with a pointy tip, knot at the base and a sheath to protect it"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and has a pointy tip and a knot at the base, as well as a sheath to protect it when not erect"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cock Color entry is "red"; [one word color descriptor]
	now Ball Count entry is 2;
	now Ball Size entry is 3; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a furry, low-hanging sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a canine appearance, complete with a clit at the top"; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player]-colored and shaped like that of a canine bitch, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "pink"; [one word color descriptor]
	now Clit Size entry is 2; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Table of Game Objects (continued)
name	desc	weight	object
"jackal alpha fur"	"A tuft of dark fur that looks like it has been pulled out of the coat of a jackal. It's nicely soft."	0	jackal alpha fur

jackal alpha fur is a grab object.
Usedesc of jackal alpha fur is "[JackalAlphaFurUse]".

It is temporary.

to say JackalAlphaFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Jackal Alpha";

instead of sniffing jackal alpha fur:
	say "The fur has an intoxicatingly pleasant, hypermasculine animal-like scent.";

Table of Game Objects (continued)
name	desc	weight	object
"jackal alpha cum"	"An odd flask containing a moderate amount of milky white fluid. So this is probably what the alpha jackal refers to as [']oil['], or at least, might be related to it. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. But given its transformative effects, you might catch a change..."	1	jackal alpha cum

jackal alpha cum is a grab object. jackal alpha cum is cum.
jackal alpha cum is infectious. Strain of jackal alpha cum is "Jackal Femboy".
Usedesc of jackal alpha cum is "[jackal alpha cum use]";

to say jackal alpha cum use:
	say "Lifting the flask to your mouth, you take a drink from it, letting the creamy fluid cum run over your tongue and down your throat. Tastes rich, sweet and animal-like. Swishing it around in your mouth a little, you finish the flask off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing jackal alpha cum:
	say "You open the lid for a moment and take a sniff. You almost feel compelled to drink it once its mesmerizing scent gets caught in your nostrils, so you put it back down in that instant.";

Jackal Alpha ends here.
