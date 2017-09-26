Version 1 of Gorilla by Wahn begins here.
[ Version 1 - Now on the College Campus]

"Adds a team of football gorillas to Flexible Survival's Wandering Monsters table, With Impreg chance"

[ GorillasMember - joining quest                                        ]
[   0: not started                                                      ]
[   1: started (return after a day to start the tryout)                 ]
[   2: minimum points at the tryout                                     ]
[ 3-4: moderate results in all challenges or a combination of fail+lose ]
[ 5-6: okay results in the challenges                                   ]
[   7: maximum points at the tryout                                     ]
[  99: declined a supporting role                                       ]
[ 100: quest failed by having sex instead                               ]


Section 1 - Monster Responses & Infection

when play begins:
	add { "Football Gorilla" } to infections of guy;
	add { "Football Gorilla" } to infections of furry;

GorillasVisited is a number that varies.
GorillasMember is a number that varies.
GorillasMemberQuestCounter is a number that varies.
tempGorillaName1 is a text that varies.
tempGorillaName2 is a text that varies.

to say Gorilla Wins:
	if inasituation is false: [regular scenes]
		if hp of player > 0: [player submits]
			say "     As you stop fighting and tell the mighty gorilla that he can do what he wants to you, he chuckles heartily. 'You don't want a demonstration of one of your star player's moves? Ha - I guess you just can't wait to get a demonstration of my other skills. Okay then... everything for the fans,' he chuckles, flexing his muscled arms.";
		else: [player beaten]
			say "     As you collapse at his feet, the mighty gorilla drums both hands on his chest and roars in an imposing spectacle. He grins down at you and says, 'And that's why the Gorillas are the top football team hereabouts. Our training and the moves I just showed you are unbeatable! Now then... with this little exercise getting the blood pumping, let's have some fun.' ";
		say "";
		say "     'Your turn - show me what you got [if player is female]baby[otherwise]dude[end if],' the gorilla grunts after pulling off the shoulder-pads and now stands before you in his full naked glory. Not having much choice in the matter, you strip for him, baring your body to his leering looks as piece after piece of clothing is taken off. ";
		if cunts of player > 0:
			if "submissive" is listed in feats of player:
				say "'Yeah, show me that pussy!' he grunts as your underwear comes off, stepping closer and reaching out to touch your crotch. His human-like fingers stroke over your nether lips, then find the sensitive clit at the top, rubbing it and making you pant in rising lust. 'That's a good girl - getting wet for me, I can feel it,' he says with a grin as he continues to stroke you. And the big primate is right - you're getting wetter by the second, with your nether lips swelling and opening up in anticipation of getting fucked by this strong male. Soon, he also grabs your head and pulls it up to his own, giving you a hungry kiss that you eagerly reply to.";
				WaitLineBreak;
				say "     'Time for the real fun to begin,' the gorilla jock grunts, then adds, 'Lie down and I'll show you what else one can do with the stamina a good football player brings to the field.' Panting excitedly, you get down on the grass and spread your legs, waiting for the football player to take you. Giving a lusty grunt that reverberates in his wide chest, the gorilla drops down on all fours and walks closer to stand over you. He looks down upon your naked form with victorious pride - absolutely certain that you're rightfully his to fuck and breed. Serving a powerful male like this one, even the thought of letting him mount you and fill with his load... turns you on quite a bit, playing exactly into your submissive urges.";
				say "     Leaning forward, the gorilla sticks out his tongue and runs it over your chest, [if breasts of player > 0]stopping at a nipple to lick it and take it into his mouth,[end if] then he moves on further up and kisses you deeply. It's amazing to feel the presence of this mighty primate so close to you, just inches above your stretched out body, and you can't help but wrap your arms around him, stroking his fur with both hands. The football player makes out with you for a moment longer, then reaches down to take hold of the hard shaft dangling between his legs. Guiding his manhood, he rubs it hotly against your nether lips before finally thrusting in with a forceful push that has you howling in lust.";
				WaitLineBreak;
				say "     'Oh yeah! You feel great babe,' the dominant jock grunts deeply, then pushes his upper body almost upright again. He proceeds to fuck you hard in that position, hips pumping his thick cock in and out of you in rapid succession while his long, strong arms hold you by the shoulders. Almost beside yourself from having someone who makes full use of you as a fucktoy, just as you so clearly deserve, you can't help but pant and moan as the human-like shaft hits your g-spot again and again. He might be a vainglorious bastard of an ape, but... this gorilla really knows what he's doing when a cock and pussy is involved. With his relentless pounding driving your libido into overdrive, you can't even tell how long you're kept in an aroused haze, with one orgasm rolling over into the next, before the gorilla finally comes close to the limits of his endurance.";
			else:
				say "'Yeah, show me that pussy!' he grunts as your underwear comes off, stepping closer and reaching out to touch your crotch. His human-like fingers stroke over your nether lips, then find the sensitive clit at the top, rubbing it and making you pant in rising lust. 'That's a good girl - getting wet for me, I can feel it,' he says with a grin as he continues to stroke you. And the big primate is right - despite being forced into this, your traitorous body can't help but get aroused from his touch, with your nether lips swelling and opening up, getting pretty moist as they do. Soon, he also grabs your head and pulls it up to his own, giving you a hungry kiss that you stoically endure.";
				WaitLineBreak;
				say "     'Time for the real fun to begin,' the gorilla jock grunts, then adds, 'Lie down and I'll show you what else one can do with the stamina a good football player brings to the field.' Biting your lip as you contemplate and dismiss the idea of trying to flee, you finally accept that this is happening no matter what and decide to get through it as best as you can. Lowering yourself on the grass, you spread your legs for the hungrily watching football player. Giving a lusty grunt that reverberates in his wide chest, the gorilla drops down on all fours and walks closer to stand over you. He looks down upon your naked form with victorious pride - absolutely certain that you're rightfully his to fuck and breed. You just hope that it'll at least be somewhat enjoyable and that he'll let you go after getting his rocks off.";
				say "     Leaning forward, the gorilla sticks out his tongue and runs it over your chest, [if breasts of player > 0]stopping at a nipple to lick it and take it into his mouth,[end if] then he moves on further up and kisses you deeply. You can't help but be awed by the presence of this mighty primate so close to you, just inches above your stretched out body, and something inside you makes you wrap your arms around him, stroking his fur with both hands. The football player makes out with you for a moment longer, then reaches down to take hold of the hard shaft dangling between his legs. Guiding his manhood, he rubs it hotly against your nether lips before finally thrusting in with a forceful push that makes you gasp with its suddenness.";
				WaitLineBreak;
				say "     'Oh yeah! You feel great babe,' the dominant jock grunts deeply, then pushes his upper body almost upright again. He proceeds to fuck you hard in that position, hips pumping his thick cock in and out of you in rapid succession while his long, strong arms hold you by the shoulders. Despite having been forced into this, you can't help but pant and moan as the human-like shaft hits your g-spot again and again. He might be a vainglorious bastard of an ape, but... this gorilla really knows what he's doing when a cock and pussy is involved. With his relentless pounding driving your libido into overdrive, you can't even tell how long you're kept in an aroused haze, with one orgasm rolling over into the next, before the gorilla finally comes close to the limits of his endurance.";
			say "     As the football jock's lust mounts up, his moans and pants become less and less human-like and start to resemble an ape's grunting instead, rising in volume and vehemence with each passing moment. Then finally, it is time - with one mighty thrust, the male buries his whole cock inside you one last time and starts to cum, spurting blast after blast of fertile seed directly into your womb. While his cock is still pulsing deep inside you, the gorilla sinks down on top of you, thankfully holding himself up a bit so he doesn't press against the ground with his muscled mass. Some short while later, as his orgasm winds down, the college jock moves his head again to give you another kiss, then murmurs, 'I love taking care of our fans. You can visit us in the [bold type]lockerroom[roman type] any time, sweet-cheeks. I'm more than sure all the guys would wanna 'meet' you.[if GorillasVisited is 0] It's over at the [bold type]football field[roman type] - you can't miss it. Just look for the big sign of our sponsor - [bold type]Astroslide[roman type][end if]' That said, he slowly pulls his cock out of you, then stands up and goes to collect his gear. 'See you later,' he says with a chuckle and a leer at your freshly bred body, then storms off, no doubt to boast about fucking you to anyone he can find.[fimpregchance]";
			now Astroslide Field Lockerroom is known;
		else:
			if "submissive" is listed in feats of player:
				say "'Yeah, bend over and spread those cheeks - I wanna see your hot hole!' he grunts as your underwear comes off, stepping closer and reaching out to touch your buttcheeks. His human-like fingers stroke up and down the crack of your ass, then find your pucker and rub it gently - almost teasingly. 'I can feel your muscle flex in anticipation, very nice dude,' he says with a grin and continues to stroke you. And the big primate is right - your pucker twitches at the thought of being spread open by this strong male's thick shaft. Soon, the sexy football player pulls you back around and gives you a hungry kiss that you eagerly reply to.";
				WaitLineBreak;
				say "     'Time for the real fun to begin,' the gorilla jock grunts, then adds, 'Get on your knees and I'll show you what else one can do with the stamina a good football player brings to the field.' Panting excitedly, you get down on the grass on all fours, spreading your legs and lowering your head to await him like a good little butt-slut. Giving a lusty grunt that reverberates in his wide chest, the gorilla drops to his fists, walking forward using his muscled forearms like front legs. He circles you, inspecting and touching your naked form with victorious pride - absolutely certain that you're rightfully his to use and fuck. Serving a powerful male like this one, even the thought of letting him mount you and fill with his load... turns you on quite a bit, playing exactly into your submissive urges.";
				say "     Coming to stand behind you again, the gorilla spreads your cheeks with both strong hands, then leans forward and gives your butt-crack a long lick before homing in on your back door. The tip of his stretched-out tongue touches your pucker, making you give a little sigh of pleasure, then it starts to press in, wiggling in a most stimulating manner. Having your head lowered while you grip the grass under you tightly means that you can only see a little bit of the ape doing such an amazing job of eating you out, but even so, the simple presence and proximity of this mighty primate so close to you makes your heart race with excitement. The football player continues giving you oral pleasure for a moment longer, then reaches down to take hold of the hard shaft dangling between his legs. Guiding his manhood, he rubs it hotly against your wet and by now very relaxed sphincter, then finally thrusts in with a forceful push that has you howling in lust.";
				WaitLineBreak;
				say "     'Oh yeah! You feel great dude,' the dominant jock grunts deeply, then pushes his upper body almost upright again. He proceeds to fuck you hard in that position, hips pumping his thick cock in and out of you in rapid succession while his long, strong arms hold you by the shoulders. Almost beside yourself from being in the power of someone who makes full use of you as a fucktoy, just as you so clearly deserve, you can't help but pant and moan as the human-like shaft hits your prostate again and again. He might be a vainglorious bastard of an ape, but... this gorilla really knows what he's doing when a cock and butthole are involved. With his relentless pounding driving your libido into overdrive, you can't even tell how long you're kept in an aroused haze, [if cocks of player > 0]blasting more than one load into the grass under you[otherwise]all tingly inside[end if], before the gorilla finally comes close to the limits of his endurance.";
			else:
				say "'Yeah, bend over and spread those cheeks - I wanna see your hot hole!' he grunts as your underwear comes off, stepping closer and reaching out to touch your buttcheeks. His human-like fingers stroke up and down the crack of your ass, then find your pucker and rub it gently - almost teasingly. 'I can feel your muscle flex in anticipation, very nice dude,' he says with a grin and continues to stroke you. And the big primate is right - your pucker twitches at the thought of being spread open by this strong male's thick shaft. Soon, the sexy football player pulls you back around and gives you a hungry kiss that you stoically endure.";
				WaitLineBreak;
				say "     'Time for the real fun to begin,' the gorilla jock grunts, then adds, 'Get on your knees and I'll show you what else one can do with the stamina a good football player brings to the field.' Biting your lip as you contemplate and dismiss the idea of trying to flee, you finally accept that this is happening no matter what and decide to get through it as best as you can. Lowering yourself on the grass, you get down on all fours, spreading your legs and trying to relax for what you know will come next. Giving a lusty grunt that reverberates in his wide chest, the gorilla drops to his fists, walking forward using his muscled forearms like front legs. He circles you, inspecting and touching your naked form with victorious pride - absolutely certain that you're rightfully his to use and fuck. You just hope that it'll at least be somewhat enjoyable and that he'll let you go after getting his rocks off.";
				say "     Coming to stand behind you again, the gorilla spreads your cheeks with both strong hands, then leans forward and gives your butt-crack a long lick before homing in on your back door. The tip of his stretched-out tongue touches your pucker, making you give a little sigh despite yourself, then it starts to press in, wiggling in a most stimulating manner. Having your head lowered while you grip the grass under you tightly means that you can only see a little bit of the ape doing such an amazing job of eating you out, but even so, the simple presence and proximity of this mighty primate so close to you makes your heart race with excitement. The football player continues giving you oral pleasure for a moment longer, then reaches down to take hold of the hard shaft dangling between his legs. Guiding his manhood, he rubs it hotly against your wet and by now very relaxed sphincter, then finally thrusts in with a forceful push that makes you gasp with its suddenness.";
				WaitLineBreak;
				say "     'Oh yeah! You feel great dude,' the dominant jock grunts deeply, then pushes his upper body almost upright again. He proceeds to fuck you hard in that position, hips pumping his thick cock in and out of you in rapid succession while his long, strong arms hold you by the shoulders. Despite having been forced into this, you can't help but pant and moan as the human-like shaft hits your prostate again and again. He might be a vainglorious bastard of an ape, but... this gorilla really knows what he's doing when a cock and butthole are involved. With his relentless pounding driving your libido into overdrive, you can't even tell how long you're kept in an aroused haze, [if cocks of player > 0]blasting more than one load into the grass under you[otherwise]all tingly inside[end if], before the gorilla finally comes close to the limits of his endurance.";
			say "     As the football jock's lust mounts up, his moans and pants become less and less human-like and start to resemble an ape's grunting instead, rising in volume and vehemence with each passing moment. Then finally, it is time - with one mighty thrust, the male buries his whole cock inside you one last time and starts to cum, spurting blast after blast of his fertile seed into your inner passage. While his cock is still pulsing deep inside you, the gorilla leans forward to rest against your back with his arms wrapped around you. He's heavy, with all that muscle mass and the burly build, but being on all fours, you have little problem in holding him up beside this. Some short while later, as his orgasm winds down, the college jock leans forward a little bit more, kissing your neck, then murmurs, 'I love taking care of our fans. You can visit us in the [bold type]lockerroom[roman type] any time, sweet-cheeks. I'm more than sure all the guys would wanna 'meet' you.[if GorillasVisited is 0] It's over at the [bold type]football field[roman type] - you can't miss it. Just look for the big sign of our sponsor - [bold type]Astroslide[roman type][end if]' That said, he slowly pulls his cock out of you, then stands up and goes to collect his gear. 'See you later,' he says with a chuckle and a leer at your freshly bred body, then storms off, no doubt to boast about fucking you to anyone he can find.[mimpregchance]";
			now Astroslide Field Lockerroom is known;
	else: [dealing with this on the event side which called for the fight]
		say "";

to say Gorilla Loses:
	if inasituation is false: [regular scenes]
		say "     The gorilla jock staggers from your last blow, stumbling back and falling on his ass. 'Whew - you wanted to show your own stuff off too, hm? Nice moves and you're plenty strong enough.' He shakes his head to clear the stars he's seeing, then looks back at you and adds in a jovial, if slightly defensive tone, 'Of course, I was only trying to give you a playful demonstration, not going full out, you know. So don't let this go to your head. But... you've certainly got the right stuff. I bet you'd be able to make the team when we next have an opening. For now - you've 'beaten' a member of the Tenvale Gorillas - that's worth a reward. If you wanna... play a different little game with me, I'd be more than alright in my book.'";
		say "     Do you want to get it on with this simian college jock?";
		if player consents:
			say "[GorillaOral]";
		else:
			Line Break;
			say "     Declining his offer, you leave the disappointed football gorilla to pick himself up and walk away.";
	else: [dealing with this on the event side which called for the fight]
		say "";

to say GorillaOral:
	if cocks of player > 0:  [male + herm]
		say "     Smiling down at the sitting ape, you open up the front of your pants and whip out a rapidly hardening [cock of player] manhood. The football player looks at it with a grin and licks his lips, then pulls the protective helmet on his head off, setting it down on the grass. Raising a long arm, he waves you closer. Quickly dropping your pants completely, followed by your gear and the rest of your clothing, you walk up to the defeated simian and come to stand over him. The college jock's strong fingers stroke over the [skin of player] skin on your thighs as he puts an arm around your hips to pull you closer, opening his wide mouth to eagerly take your manhood inside. Lips closing tightly around your hard shaft as the gorilla looks up at you, he then starts to use his tongue to rub against your erection, teasing its sensitive head and lapping the sides.";
		say "     It's clear that this ape is far from a novice in giving blowjobs... and you'd bet that there are quite interesting times to be had in this team's locker-room. But those are only secondary thoughts in your head - as your main focus is on how really really awesome he makes you feel, bobbing on your shaft, licking and teasing. And the big ape's hands aren't idle either - strong fingers cup your balls and give them a gentle massage, while the other hand rests on your right buttock, squeezing it appreciatively from time to time. With such a... stimulating treatment, it doesn't take all that long until your rising libido brings you to the edge of orgasm - but the gorilla backs off, letting you cool down a little bit to prolong your pleasure, then starts going down on you again.";
		WaitLineBreak;
		say "     He does this multiple times, always skirting by closely to sending you over the edge, until you finally can't take it anymore and grab the college athlete's head to fuck his face. Thrusting fast and deep, revelling in the slurping sounds of his lips on your shaft, you let your orgasm build and reach an amazing climax moments later. Gripping the gorilla's head tightly by his short hair, you hold on to him as your balls churn and send out blast after blast of rich semen directly into his stomach. One, two, three, four pulses shoot into the muscled ape's gullet, then you pull back a little bit and cover his tongue with the rest of your load.";
		say "     When you finally pull out and stumble back from him on shaky knees, you notice for the first time that the simian jock has his own shorts pulled down and is jerking off in a frantic pace. Just moments later, he reaches the point of no return and comes, giving somewhat muffled grunts from your cum still held in his mouth. Using a big hand to catch his load, he then brings it up to his face to slurps up the cum with obvious gusto. Sticking out his tongue to show you a white, creamy mixture of your cum, the gorilla then demonstratively swallows it all, smacking his lips after licking them clean. 'Mmmh - I love finding new candidates for the team,' he hums contently, then gives you a nod, 'See you later. I'll just... catch my breath a bit.' That said, the big ape lays back, resting on the grass and staring at the sky with a goofy grin on his face.";
	else if cunts of player > 0: [female]
		say "     Smiling down at the sitting ape, you open up the front of your pants and show him the already a bit wet and swollen lips of your [cock of player] pussy. The football player looks at it with a grin and licks his lips, then pulls the protective helmet on his head off, setting it down on the grass. Raising a long arm, he waves you closer. Quickly dropping your pants completely, followed by your gear and the rest of your clothing, you walk up to the defeated simian and come to stand over him. The college jock's strong fingers stroke over the [skin of player] skin on your thighs as he puts an arm around your hips to pull you closer, opening his wide mouth to lap at your crotch. Tongue playing over your nether lips and finding your clit, he teases its sensitive little nub with the tip, driving you wild with arousal.";
		say "     It's clear that this ape is far from a novice in performing oral sex... and you'd bet that there are quite interesting times to be had in this team's locker-room. But those are only secondary thoughts in your head - as your main focus is on how really really awesome he makes you feel, licking and nibbling your sensitive parts. And the big ape's hands aren't idle either - strong fingers stroke the inside of your thighs in gentle massage, while the other hand rests on your right buttock, squeezing it appreciatively from time to time. With such a... stimulating treatment, it doesn't take all that long until your rising libido brings you to the edge of orgasm - but the gorilla backs off, letting you cool down a little bit to prolong your pleasure, then starts going down on you again.";
		WaitLineBreak;
		say "     He does this multiple times, always skirting by closely to sending you over the edge, until you finally can't take it anymore and grab the college athlete's head to hold him close and really go all out. Immediately getting what you want from him, the gorilla redoubles his efforts and does a neat little trick with his tongue that has you gasping in lust, then reach an amazing climax moments later as he does it a second time. Gripping the gorilla's head tightly by his short hair, you hold on to him as your body trembles and squirts of femcum gush over his wiggling tongue.";
		say "     When your orgasm finally winds down a bit and you stumble back from him on shaky knees, you notice for the first time that the simian jock has his own shorts pulled down and is jerking off in a frantic pace. Just moments later, he reaches the point of no return and comes, giving somewhat muffled grunts from your femcum still held in his mouth. Using a big hand to catch his load, he then brings it up to his face to slurp up the cum with obvious gusto. Sticking out his tongue to show you a white, creamy mixture of your femcum and his own cum, the gorilla then demonstratively swallows it all, smacking his lips after licking them clean. 'Mmmh - I love finding new candidates for the team,' he hums contently, then gives you a nod, 'See you later. I'll just... catch my breath a bit.' That said, the big ape lays back, resting on the grass and staring at the sky with a goofy grin on his face.";
	else: [neuter]
		say "     Smiling down at the sitting ape, you open up the front of your pants and show him the smooth and sexless expanse of your crotch. The football player looks at it in surprise, then shrugs and wiggles his tongue at you anyways, pulling the protective helmet on his head off a moment later before setting it down on the grass. Raising a long arm, he waves you closer. Quickly dropping your pants completely, followed by your gear and the rest of your clothing, you walk up to the defeated simian and come to stand over him. The college jock's strong fingers stroke over the [skin of player] skin on your thighs as he puts an arm around your hips to pull you closer, opening his wide mouth to lap at your crotch. Tongue playing over the sensitive skin of your sexless body, he teases it with the tip, driving you wild with arousal as he finds just where the most responsive spots are.";
		say "     It's clear that this ape is far from a novice in performing oral sex... and you'd bet that there are quite interesting times to be had in this team's locker-room. But those are only secondary thoughts in your head - as your main focus is on how really really awesome he makes you feel, licking and nibbling your genderless parts. And the big ape's hands aren't idle either - strong fingers stroke the inside of your thighs in gentle massage, while the other hand rests on your right buttock, squeezing it appreciatively from time to time. With such a... stimulating treatment, it doesn't take all that long until your rising libido brings you to the edge of orgasm - but the gorilla backs off, letting you cool down a little bit to prolong your pleasure, then starts going down on you again.";
		WaitLineBreak;
		say "     He does this multiple times, always skirting by closely to sending you over the edge, until you finally can't take it anymore and grab the college athlete's head to hold him close and really go all out. Immediately getting what you want from him, the gorilla redoubles his efforts and does a neat little trick with his tongue that has you gasping in lust, then reach an amazing climax moments later as he does it a second time. Gripping the gorilla's head tightly by his short hair, you hold on to him as your body trembles.";
		say "     When your orgasm finally winds down a bit and you stumble back from him on shaky knees, you notice for the first time that the simian jock has his own shorts pulled down and is jerking off in a frantic pace. Just moments later, he reaches the point of no return and comes, giving loud grunts as he does so. Using a big hand to catch his load, he then brings it up to his face to slurp up the cum with obvious gusto. Sticking out his tongue to show you a white, creamy load of his own cum, the gorilla then demonstratively swallows it all, smacking his lips after licking them clean. 'Mmmh - I love finding new candidates for the team,' he hums contently, then gives you a nod, 'See you later. I'll just... catch my breath a bit.' That said, the big ape lays back, resting on the grass and staring at the sky with a goofy grin on his face.";


to say Gorilla Desc:
	setmongender 3;
	if inasituation is false: [regular scenes]
		if bodyname of player is "Football Gorilla" and player is pure:
			say "     A burly and muscular gorilla steps into your line of sight. He is dressed in shorts, football shoulder pads and wears a helmet, all of them bearing the local team's colors. As the gorilla spots you, a smile spreads over his face and he drops on all fours, using his long arms as support as he quickly rushes towards you. [if cunts of player > 0 and cocks of player is 0]'Hey girl, nice to meet'cha. That fur suits you really well. You're from our female companion team? Tenvale Gorillas for the win - in both leagues!' He hits his chest and grunts loudly to honor the team, then gives you another long look - a pretty leering one. 'You know what's expected for the real stars in the main team. So - wanna have some fun right now, or should I show you some moves first?'[otherwise]'Hey dude, nice to meet'cha. You're from the pledge recruiting team that we have? Looking good, keep working at it and you'll be in the real Tenvale Gorillas soon.' He hits his chest and grunts loudly to honor the team, then gives you another long look - a pretty leering one. 'You know what's expected from pledges. So - wanna have some fun right now, or should I show you some moves first?'[end if]";
			say "     Looks like this simian jock is fully committed to the idea that you're a subordinate teammate, whom he can order around - and that there is little doubt he intends to have sex with you. You don't think there's any chance to convince him of anything else, so you ready yourself for a fight.";
		else if bodyname of player is "Football Wolfman" and player is pure:
			say "     A burly and muscular gorilla steps into your line of sight. He is dressed in football shoulder pads and wears a helmet, both painted in the local team's colors. As the gorilla spots you, a smile spreads over his face and he drops on all fours, using his long arms as support as he quickly rushes towards you. 'Hey [if cunts of player > 0 and cocks of player is 0]girl[otherwise]dude[end if], nice to meet'cha. Did you finally see that the Tenvale Gorillas are the better team and wanna join our fan-base? Can't go wrong with the Gorillas!' He hits his chest and grunts loudly to honor the team, then gives you another long look - a pretty leering one. 'Always nice to see new fans. So - wanna have some fun right now, or should I show you some moves first?";
			say "     Looks like this simian jock is fully committed to the idea that you're a devoted fan, who can't wait to service him - and that there is little doubt he intends to have sex with you. You don't think there's any chance to convince him of anything else, so you ready yourself for a fight.";
		else:
			say "     A burly and muscular gorilla steps into your line of sight. He is dressed in football shoulder pads and wears a helmet, both painted in the local team's colors. As the gorilla spots you, a smile spreads over his face and he drops on all fours, using his long arms as support as he quickly rushes towards you. [if cunts of player > 0 and cocks of player is 0]'Hey girl, nice to meet'cha. I was hoping to run into some hotties today - and there you are, lucky enough to meet one of your team's stars. [otherwise]'Hey dude, nice to meet'cha. I was hoping to run into some hotties today - and there you are, lucky enough to meet one of your team's stars. [end if]Yup, I'm in the Tenvale Wildcats - well, Tenvale Gorillas now, anything else would be silly. So - wanna have some fun right now, or should I show you some moves first?'";
			say "     Looks like this simian jock is fully committed to the idea that just about everyone he meets is a devoted fan of his football team and that they can't wait to service him. You don't think you'd be able to convince him of anything else, so you ready yourself for a fight.";
	else: [dealing with this on the event side which called for the fight]
		say "";

Section A - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Football Gorilla";      
	now attack entry is "[one of]The gorilla throws himself on you in a tackle that drives the air out of your lungs.[or]Calling out, 'Come on, let's have some fun,' the gorilla claps his strong hand against your back, with a strength that leaves you somewhat stunned.[or]You get thrown aside and fall down as the gorilla demonstrates one of his moves - by running at you at full steam and striping you with his armored shoulder-pad.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Gorilla Loses]";   [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Gorilla Wins]";    [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[Gorilla Desc]";            [ Description of the creature when you encounter it. ]
	now face entry is "that of a gorilla, with a very wide, thin-lipped mouth, almost as wide and flat nose and human-like eyes under heavy brows. Short fur covers your whole head with the exception of your inner facial area";
	now body entry is "relatively wide and burly, with strong muscles that allow you to move and run pretty fast despite the large bulk. The curve of your spine and two elongated arms make it easy to drop to all fours to do so, but you're still capable of upright walking if you chose to do so";
	now skin entry is "[one of]black furred[or]densely furred[or]furred[at random]";
	now tail entry is "You have a wide and meaty butt, ideally cushioned to sit down on if you want to rest your bulky shape.";  [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "[one of]human[or]human-like[at random]";
	now face change entry is "it reshapes itself into a gorilla's simian visage, with a wide and very flat nose, pretty thin-lipped mouth and protruding brows over human-like eyes. Short fur sprouts everywhere but the innermost facial area"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it morphs into burly shape of a big gorilla, large-boned and with considerable bulk, but also a set of strong muscles to go with all that. Your arms end up being a bit longer than your legs, which allows for easy walking on all fours from, now on, if you so choose."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "dense black fur spreads rapidly over your form"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it gets meaty and well-cushioned, perfect to rest a heavy body on when you sit down"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your member grows thicker and gains a dark black skin color and human-like shape"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 30;
	now dex entry is 12;
	now sta entry is 20;
	now per entry is 14;
	now int entry is 8;
	now cha entry is 12;
	now sex entry is "Male";            [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 100;                [ The monster's starting hit points. ]
	now lev entry is 12;                [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 16;               [ Monster's average damage when attacking. ]
	now area entry is "Campus";         [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 16;        [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 8;          [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;             [ Number of breasts the infection will give a player. ]
	now breast size entry is 0;         [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;         [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;          [ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;             [ Target libido the infection will rise towards. ]
	now loot entry is "";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;          [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]burly[or]powerful[at random]";
	now type entry is "simian";
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;      [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";   [ Row used to designate any special combat features, "default" for standard combat. ]

Section 2 - Location

Finding the Football Field is a situation. The level of Finding the Football Field is 5.
The sarea of Finding the Football Field is "Campus".

instead of resolving Finding the Football Field:
	say "     Exploring the Tenvale campus, you find your way its playing field and building dedicated to American football. Your eyes are immediately drawn to a giant neon blue banner saying 'Astroslide', with the smaller caption 'It's out of this world - Feel the universe!' under it. It is proudly displayed above the main entrance of the building adjoining the football field itself, clearly demonstrating who paid for the brand new and first class setup - high stands for lots of spectators, several luxury sky-boxes and a roof above, with who knows what additional facilities in the building underneath. You vaguely remember some controversy a few years back when some conservatives unsuccessfully protested having a producer of sexual lubricants as a sponsor... and from what you can see, the college didn't regret sticking with the admittedly unconventional backer.";
	say "     There seems to be a lot going on right now - with players on the field, being cheered on by a crowd of onlookers - both gorillas as well as all kinds of fans from other species who mill around the complex. As is typical these days, various kinds of sexual activity are being performed in open view too - for example, right next to the entrance of the gorilla's locker-room, there is [one of]a fan-girl giving one grinning football player a blowjob[or]a fan-boy giving one grinning football player a blowjob[or]a football player grunting loudly as he humps a moaning fan-girl[or]a football player grunting loudly as he humps a moaning fan-girl[at random].";
	Line Break;
	say "     Overall, the impression you get is that of a bustling, yet peaceful locale. People of all shapes come and go freely and no one's being forced into anything. Do you want to want to go in the gorilla's locker room and see what goes on in there?";
	if player consents:
		move player to Astroslide Field Lockerroom;
	else:
		say "     Better safe than sorry, you turn around and leave the building behind. Who knows into what situation you would have walked in there... maybe just explore the [bold type]Astroslide Field Lockerroom[roman type] another time.";
	change west exit of Athletic Street to Astroslide Field Lockerroom;
	change east exit of Astroslide Field Lockerroom to Athletic Street;
	now Finding the Football Field is resolved;

Astroslide Field Lockerroom is a room. It is private.
The description of Astroslide Field Lockerroom is "[Astroslidedesc]".

to say Astroslidedesc:
	say "     You're standing in the expansive locker-room of the Tenvale Gorillas team, with quite a few players and fans all around you. Looks like the gorilla strain has spread very easily among the athletically minded students of this college, swelling the ranks of the team to unprecedented numbers. It's good that this place was built so generously sized, otherwise the bustling crowd would never fit in here... especially with the whole lot of activity that is going on right now - looks like everything that can be done in a lockerroom is being done, and at the same time. You see players gearing up for play while others come in from out on the field, all sweaty and pumped up from a good game, over there in the corner is a lively discussion of tactics going on, the sounds of running water and laughing voices echo over from the showers, and of course there's a wild variety of sexual acts being performed, right in the midst of everything. Fan-girls and -boys sucking off gorillas or being fucked, as well as the players themselves pounding each other on the benches or against the rows of lockers. No one is batting an eye at it - instead, they cheer or even join in. In here, everything goes, from what you can see.";

instead of navigating Astroslide Field Lockerroom:
	say "[NavCheck Astroslide Field Lockerroom]";
	if NavCheckReturn is false, stop the action;
	say "     As you make your way towards the large football field at one end of the Tenvale College Campus, your eyes are immediately drawn to the giant neon blue banner saying 'Astroslide', with the smaller caption 'It's out of this world - Feel the universe!' under it. It is proudly displayed above the main entrance of the building adjoining the football field itself, clearly demonstrating who paid for the brand new and first class setup - high stands for lots of spectators, several luxury sky-boxes and a roof above, with who knows what additional facilities in the building underneath. You vaguely remember some controversy a few years back when some conservatives unsuccessfully protested having a producer of sexual lubricants as a sponsor... and from what you can see, the college didn't regret sticking with the admittedly unconventional backer.";
	say "     There seems to be a lot going on right now - with players on the field, being cheered on by a crowd of onlookers - both gorillas as well as all kinds of fans from other species who mill around the complex. As is typical these days, various kinds of sexual activity are being performed in open view too - for example, as you walk up to the entrance of the gorilla's locker-room, you pass [one of]a fan-girl giving one grinning football player a blowjob[or]a fan-boy giving one grinning football player a blowjob[or]a football player grunting loudly as he humps a moaning fan-girl[or]a football player grunting loudly as he humps a moaning fan-girl[at random].";
	wait for any key;
	move player to Astroslide Field Lockerroom;
	if Finding the Football Field is not resolved:
		now Finding the Football Field is resolved;

Gorilla Team-Members is a man.
The description of Gorilla Team-Members is "A highly variable number of gorillas is present at all times in their team locker-room, in all states of dress and undress, as well as sexual arousal. It would be an understatement to say that all these hunky guys are 'just interested' in football - it's more like the whole center of their existence, as you can see from the fact that an adjoining storage room has been totally cleared out to set up numerous bunk beds. Looks like these guys now live right here next to the field. The gorillas are a definitively are a jovial bunch, and you can hear almost constant chatting, laughing and more than a few aroused moans from all around you.".
The conversation of Gorilla Team-Members is { "Yap!" }.
Gorilla Team-Members is in Astroslide Field Lockerroom.

instead of sniffing Gorilla Team-Members:
	say "     The attractive male scent of gorillas hangs in the air, with slight undertones of furry musk, cum and sweat.";

instead of conversing the Gorilla Team-Members:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Chat them up";
		now sortorder entry is 1;
		now description entry is "Talk with the guys about stuff";
	[]
	if (GorillasMember is 0):
		choose a blank row in table of fucking options;
		now title entry is "Ask to become a member";
		now sortorder entry is 2;
		now description entry is "Tell people around that you want to join";
	[]
	if (GorillasMember >  69 and GorillasMember < 91):
		choose a blank row in table of fucking options;
		now title entry is "Do the team's laundry";
		now sortorder entry is 3;
		now description entry is "Get to work cleaning up after the team";
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
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Chat them up":
					say "[GorillaTeamTalk1]";
				if nam is "Ask to become a member":
					say "[GorillaTeamTalk2]";
				if nam is "Do the team's laundry":
					say "[GorillaLaundryService]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the gorilla you almost talked to, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say GorillaTeamTalk1:
	say "     Joining the gorilla team-members in their reveling, what you wanted to say or ask is soon forgotten and you find yourself embroiled in [one of]a discussion about new strategies on the field. Despite them having a lot more experience in those matters, your tries to contribute something worthwhile are readily accepted, making you feel welcomed and almost as part of the team.[or]a group of the guys retelling raunchy stories about past conquests. This escalates after a short while, then a gorilla draws an eager fan-girl to his chest from the crowd and proceeds to... demonstrate his technique. Before long, there's a proper little orgy going on as more fans eagerly flock towards the group or the hunky males just pair up with each other.[at random]";

to say GorillaTeamTalk2:
	say "     Asking around, you eventually find the team captain, who gives you a glance up and down, nodding slowly. 'So you want to join the big leagues huh?' he asks, putting one of his big hands on your arm to feel your muscles. 'Fine, we can always use more members... but it's got to be the right people, you understand? We'll have another try-out in which you can and the other hopefuls can show their stuff. Come back sometime tomorrow and you can have a go.' The gorilla pats your shoulder, then turns back to the crowd and starts a discussion about game strategies with the other members.";
	now GorillasMember is 1; [quest to join started]
	now GorillasMemberQuestCounter is turns;

to say GorillaWaterService:
	say "     ";
		
to say GorillaLaundryService:
	say "     You make stop by the team captain and report for laundry duty, then make your way around the locker room, taking in the state of it - dirty clothes are scattered across the floor and lockers. There is all sorts of stuff - everything from jock-straps to jerseys, as well as some more intimate pieces - several bras and even a tiger-pattern thong with a well-sized pouch at the front are strewn about too. Looks like the guys had lots of fun with some fans who came in here. The players are still practicing, so you find a cart in the corner of the room and begin taking any dirty clothes and dumping them into the cart.";
	say "     Once you are about halfway done the players come back in and start removing their gear. You can't help but look around at the undressing gorillas. It is quite a sight - with their rippling muscles clearly outlined beneath short, often sweat-matted fur. Snapping back to reality after catching yourself staring at a player's rock hard abs for a little bit too long, you continue picking up the gear. Once the floor is clean, you notice some of the players are leaving, and others headed towards the showers. Soon, the last of them present pulls off his jock, just dropping it to the ground as he strolls over to the shower with his balls and cock swinging freely.";
	WaitLineBreak;
	say "     Tired of cleaning up and with no one in sight, you decide to take a quick break. Sitting on one of the benches, you idly glance around in the room and listen to the scraps of banter you can hear coming from the showers. Then your gaze falls upon the jock strap you saw dumped on the ground. Something about it draws you closer, and you find yourself standing over the flimsy bit of fabric...";
	Line Break;
	say "     ([link]Y[as]y[end link]) - Take it and bury your nose in the gorilla's used underwear.";
	say "     ([link]N[as]n[end link]) - Put it in the laundry cart with the rest of the dirty clothes.";
	if player consents:
		Line Break;
		say "     Taking the jock-strap, you press it up towards your nose. You take a large whiff, getting the smell of the gorilla's sweat and musk in your nose. Somehow, this makes your arousal soar, [if player is male]your dick growing hard during your inhale[else if player is female]your pussy getting wet and tingly as a result[otherwise]sending a shiver of lust up and down your spine[end if]. You decide to remove your gear and strip down, then begin touching yourself. Knowing you'll get caught if you don't hurry you rapidly stoke [if player is male]up and down over your cock[else if player is female]over your sensitive clit[otherwise]over the sensitive skin of your crotch[end if] while still smelling the musky jockstrap. Before long you reach a climax, panting hard as you [if player is male]blow your load all over the ground[else if player is female]squirt femcum all over the ground[otherwise]ride out the high[end if]. Luckily you manage to keep quiet - partly by moaning into the crumpled jockstrap held against your face.";
		say "     After taking one last sniff you turn to throw the jock into the cart. When you turn around, a large gorilla is just strolling into the room from the showers, dripping water from his freshly washed fur. You panic a little at being caught nude and breathless from the orgasm only just ebbing off. 'Enjoy yourself?' he says in a teasing tone. You simply nod, accepting the fact that you've been caught. 'Smells good doesn't it?' the large primate says as he walks up to you, grinning widely as you nod again. Grabbing his crotch, he leans over you and whispers in your ear, 'Next time catch me before I shower, and you can smell the real thing all you want.' [if player is male]Your cock grows hard again causing the large gorilla to laugh[else if player is female]Your pussy throbs with another little spurt of femcum, dripping to the floor as the large gorilla watches and laughs[otherwise]Your body trembles in lust as the large gorilla watches and laughs[end if]. After giving you a friendly grope, he returns to his locker and puts on normal clothing before leaving.";
		WaitLineBreak;
		say "     After quickly getting your clothes back on, you decide it's best to get back to work and proceed to finish cleaning the room, adding a load of wet towels to your cart too. After manoevering the by now quite heavy cart to the laundry room, you sort the stuff, then put it in several big machines in parallel, hanging it all up to air dry before making your way out. Exhausting work, but worth it for your favourite football team.";
		if GorillasMember is 70: [laundry boy basic]
			now GorillasMember is 71; [laundry boy jock sniffer]
	else:
		Line Break;
		say "     With a shrug, you bend down to take the jock and fling it over towards the laundry cart, hitting its opening on the first try. 'Not a bad throw,' someone says from behind you - it is the same gorilla whose jock you just picked up, now clean and dripping with water from his wet fur. He grins widely as you can't help but take in his magnificent naked form - a well-trained muscular body on full display. The moment stretches out for a few more seconds, him standing there and you staring hungrily - then more team-members come out of the showers and the room gets filled with their chatter.";
		say "     You decide it's best to get back to work and proceed to finish cleaning the room, adding a load of wet towels to your cart too. After manoevering the by now quite heavy cart to the laundry room, you sort the stuff, then put it in several big machines in parallel, hanging it all up to air dry before making your way out. Exhausting work, but worth it for your favourite football team.";

instead of fucking the Gorilla Team-Members:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Join in for a cum-bath (giving)";
		now sortorder entry is 1;
		now description entry is "Take position in a circle of masturbating males and spray your load all over a gorilla hunk";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Join in for a cum-bath (receiving)";
	now sortorder entry is 2;
	now description entry is "Take position in a circle of masturbating males and let them bathe you in their cum";
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Join a chain fuck";
		now sortorder entry is 3;
		now description entry is "Line up behind two guys fucking already";
	[]
	if (GorillasMember is 0):
		choose a blank row in table of fucking options;
		now title entry is "Ask to become a member";
		now sortorder entry is 4;
		now description entry is "Line up behind two guys fucking already";
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
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Join in for a cum-bath (giving)":
					say "[GorillaTeamSex1]";
				if nam is "Join in for a cum-bath (receiving)":
					say "[GorillaTeamSex2]";
				if nam is "Join a chain fuck":
					say "[GorillaTeamSex3]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the gorilla you almost asked to have sex with, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say GorillaTeamSex1: [bukkake (giving)]
	say "     Stepping up to a handsome gorilla just sitting on one of the locker-room benches and jerking his own cock, you push down your own pants and bare your already hardening [cock of player] manhood to him. 'Nice equipment you have there,' the hunky primate replies, looking you up and down and then reaching out to stroke his fingers along your shaft. 'Did you just wanna show off or can I help you with anything?' His eyes widen and you think you see his cock getting even harder than it was before as you tell him that you want to have some bukkake action. He chuckles and says, 'Now that's an awesome idea! And it's well past time to initiate [one of]Barry[or]Greg[or]Bryson[or]Steve[or]Marty[or]Clyde[or]John[or]Gavin[or]Reg[at random] properly anyways.' The gorilla gives your cock a few quick jerks, then stands up and calls out, 'Hey Guys! Let's give one of the new guys his team shower!'";
	say "     It only takes moments for quite a few gorillas to gather around the two of you - many already naked, some still in their gear and sweaty from playing and even a few who drip all over the floor after rushing over from the showers. There's aroused grunting between the young men and more than a bit of posing as they jerk their cocks and wiggle them at each other to show off, then soon a wide-eyed gorilla is let through to step into the center of the gathered group. Your original gorilla hunk clears his throat and says to the new guy, 'You've proved that you can really play and are a good mate - so now it's time to fully initiate you into the team! Kneel and get ready to receive the essence of the Tenvale Gorillas!'";
	WaitLineBreak;
	say "     Widely grinning and obviously knowing what awaits him, the new gorilla pulls off his shirt and pants without hesitation and throws them aside, then kneels with an eager expression on his face. His hands fly to his crotch, jerking his own cock a few times until the first of the surrounding gorillas steps up and holds out his manhood. As the new guy takes it in his mouth and eagerly starts to bob his head, you feel a hand close around your own cock - it's the gorilla next to you, starting to slowly jerk you off and saying, 'We're going clockwise, with everyone having a turn at his mouth, so it'll be a bit. How about we... take care of each other in the meantime?'";
	say "     With him already doing a very nice job of handling your manhood and his other hand running up your side before moving on to stroke over your nipples, you have no intention of saying no to this offer. Reaching out, you take your neighbour's erection in hand and start giving him a slow and long-lasting wank while getting busy feeling up his muscled body. It's quite nice to touch someone and be touched in this way and you close your eyes and moan silently while it lasts - until eventually, you hear your partner say, 'Your turn,' just as he pulls his hand away and the cocksucking newbie's lips close around your cock. It's clear that this guy has had quite a bit of experience in taking care of other guys, as he expertly deep-throats you and plays his tongue over just the right spots of the shaft and cock-head.";
	WaitLineBreak;
	say "     You can't help but take hold of the gorilla's head and pump in and out of his throat a few times, but eventually let go again and allow the kneeling athlete to move on to your jerking buddy. Your neighbour gives a lusty groan of, 'Oh yeah! He's a real pro with that sweet mouth of his! No wonder you took your time,' while at the same time putting a hand on your shoulder to steady himself. Eventually, the kneeling gorilla moves on to take care of the next guy and you move back to a mutual jerk-off with your buddy, continuing until the cocksucker has done a whole round pleasing everyone waiting for his attention. Then suddenly, the gorilla jerking you off grunts loudly, 'Let's paint him white boys,' and his hand starts to really pump your cock.";
	say "     Replying in kind and joining the frantic fapping all around, you have a little bit of a competition with your partner to see who can get the other off first... and you win. It's a pretty close thing, with just seconds between the grunted bellow signifying his first splash of cum spraying out over the kneeling gorilla's arm and your own orgasm, pumping out a long streak of your creamy load to hit the newbie on the shoulder. The gathered simian wankers don't let their target wait long either, and within moments, he is soaked to the bone in warm and sticky cum. After the short while they need to finish coming and catching their breaths, the freshly cum-bathed gorilla is lifted by many hands, gripping him securely despite his slipperiness, then carried off to the showers with a chant of, 'One of us! One of us!'";
	WaitLineBreak;
	say "     'I love this tradition,' your wanking partner says, then wipes a finger over your cockhead and brings it to his mouth to lick off. 'Have a nice day, and see ya,' he adds with a chuckle and gives your bare ass a playful swat before joining the others in the shower.";

to say GorillaTeamSex2: [bukkake (receiving)]
	say "     Eager to get some nice bukkake action going, you step up to a gorilla currently undressing in front of his open locker and reach out to cup his full, fur-covered balls. 'Hey there baby,' the football player replies, looking you up and down while you continue to fondle him. 'What can I do for you?' he asks, and a lusty grin appears on his face as you offer yourself for a cum-bath. Not mincing any words after that, the horny primate pulls you closer against him to give you a hungry kiss, then his hands start to work undoing your belt and pulling off any articles of clothing you're currently wearing. Soon, you're bare-ass naked before your eager gorilla and he lightly pushes down on your shoulders to make you kneel.";
	say "     Now at just the right height for the football player's erect, human-like cock, you lean forward and lick its shaft, then take the cockhead into your mouth and start going down on him. The gorilla lets you service him for a minute or two, gently pulling on your head to make you go deeper and deeper until you're deep-throating with your nose buried in his bushy pubes, then you can hear him call out, 'Hey guys - need some help giving this cock-sucking [if cocks of player > 0]stud what he wants [otherwise]beauty what she wants [end if]- time for a cum-bath again.' A cheer from many deep gorilla voices goes through the room and someone even calls for the guys in the shower, 'not to miss out this sweet bukkake action.'";
	WaitLineBreak;
	say "     As you slowly slide your lips off your gorilla's long pole, playing your tongue over the veins along its length, you become aware of quite a crowd gathering all around you. With a wet pop, you pull off a second later, looking around to see many muscled, college-age studs stand ready in a tight bunch. They're mostly gorillas in all states of dress and undress - from freshly showered and still dripping water to wearing full gear and being a bit sweaty and pumped from playing football - but in between you also see some hunks of different species... with a magnificent stallion-guy taking the top spot for longest cock. There is a brief moment of indecision and throat-clearing between the young men, with many cocks being wagged at you and hands reaching out to touch you, then a voice from the back of the crowd calls out, 'Let's go clockwise, then everyone has a turn!'";
	say "     Eagerly agreeing to the proposition because he's the next in line, the right-hand guy from your original gorilla stud puts his hand on your head and pulls you towards his crotch, sliding his rock-hard prick between your welcoming lips with an aroused grunt. What follows is a very hot time in which you service countless men, with your whole reality pulling in to the small cock-filled circle all around you - long and short, thick and thin, cut or uncut, even flared and with a sheath in the case of the horseman - you take them all one by one, suckling hard and eagerly to taste their sweet pre-cum. The fapping sound of many hands stroking erect cocks fill the air around you as the horny studs jerk off in anticipation of their turn, with many also taking their teammates['] cocks in hand and giving them some attention too.";
	WaitLineBreak;
	say "     You can't say how long it takes, with all of your attention focused on the current shaft of man-meat in your mouth, but eventually something seems familiar about the hard cock being held out before you. Looking up, you realize that it's the original primate hunk with whom you started. As his strong hands grasp your head and he starts to face-fuck you with eager grunts, the gorilla soon roars, 'Unnngh - getting really close! Brothers, let's paint this bitch white, inside and out!' After another handful of frenzied thrusts that make his heavy balls smack your chin, the young man suddenly bellows out loud and you can feel his cock pulse inside your throat as spurt after spurt of his seed is pumped directly into your stomach.";
	say "     Just moment later, the first of all the other guys jerking off on you joins him in orgasm, blasting your body with his white, creamy cum. Another follows before that guy's third shot, then another three at the same time, then more or less all the rest. From the corner of your eye, you see the horseman stud clasp his neighbouring gorilla's shoulder tightly as a breathtaking climax rocks his body - turning his proudly flared shaft into almost a garden-hose of cum, drenching your whole front in his mighty load. You don't think there is any part of you that is not drenched in someone's seed - an amazing feeling that sends your own libido into overdrive. Now that they're no longer busy handling one cock after another, your hands fly to your own crotch[if cocks of player > 0], grasping your own manhood and wanking it in a frenzied pace. As wound up as you're are, it's only a matter of moments before you reach the point of no return, adding some splashes of your own cum to the large puddle all around you.[else if cunts of player > 0], sinking your fingers into your pussy and rubbing the little nub of your clit in a frenzy. As wound up as you're are, it's only a matter of moments before you reach the point of no return, adding some splashes of your own femcum to the large puddle all around you.[otherwise], rubbing your genderless, but quite sensitive crotch in a frenzied pace. As wound up as you're are, it's only a matter of moments before you reach the point of no return, trembling all over as an orgasm rocks through your body.[end if]";
	WaitLineBreak;
	say "     'Nice job,' a familiar voice tells you, then you feel the soft touch of a towel wiping at your face. Your original gorilla stud uses it to clean you up - but soon the towel is totally drenched and he gives a resigned chuckle before dropping it. 'Let's get you clean in the showers,' he says a moment later, giving you a hand to help you stand up in the slippery state you are in. You are guided into the shower room next and soon find yourself under a warm spray of water, with your gorilla and two others washing you down, all the while giving you some lusty gropes. The warm and wet fun in the shower continues for a while, without going any further than just touching and rubbing, until you eventually leave the gorillas behind, walking out to dry yourself off and put your clothes back on.";
	infect "Football Gorilla";

to say GorillaTeamSex3: [chain fuck]
	let randomnumber be a random number from 1 to 5;
	if randomnumber is:
		-- 1:
			now TempGorillaName1 is "Bradley";
		-- 2:
			now TempGorillaName1 is "Brian";
		-- 3:
			now TempGorillaName1 is "Gavin";
		-- 4:
			now TempGorillaName1 is "Nate";
		-- 5:
			now TempGorillaName1 is "Andy";
	let randomnumber be a random number from 1 to 5;
	if randomnumber is:
		-- 1:
			now TempGorillaName2 is "Ike";
		-- 2:
			now TempGorillaName2 is "Vinny";
		-- 3:
			now TempGorillaName2 is "Reid";
		-- 4:
			now TempGorillaName2 is "Tom";
		-- 5:
			now TempGorillaName2 is "Everett";
	say "     Rubbing the bulge in your pants in anticipation of fucking a hot and tight hole, you let your eyes roam through the locker-room, soon finding the perfect target for your lusts. There is a pair of hunky gorillas over there, both naked, with one of them leaning forward against the wall while his buddy is crouched down behind him, lapping at his back door and showing off a very nice and shapely butt to the whole room. As you start moving towards them, the standing gorilla gives a needy moan of, 'Fuck me, [tempGorillaName1]! I'm ready!' - and his buddy is instantly on his feet to rub his hard shaft up and down the waiting primate's crack. You arrive beside them just in time to see him line up his cockhead with the other gorilla's ass and pump his hips forward, thrusting in more than half his length in one quick move.";
	say "     [tempGorillaName1] gives his friend a moment to get used to the thick piece of man-meat impaling his ass, using the time to put his arms around and play with his nipples, then he slowly pushes in further and further until his crotch is rubbing against the bottoming gorilla's furry ass. 'Man, [tempGorillaName2] - you've really got one of the best asses in the whole team. Soo welcoming and tight - no matter how often it's getting pounded each day!' With that, the young man starts to pull back and slide in again, fucking [tempGorillaName2] in a steady rhythm of deep thrusts that has the bottom whimper and moan in lust.";
	WaitLineBreak;
	say "     You watch the two of them go at it for a while, pulling off your clothes and getting more and more aroused as you do so, then eventually walk up behind [tempGorillaName1] and grab his shapely butt with your hands, giving the furry cheeks a nice squeeze. The gorilla moans at your touch, not at all surprised that someone would just come up and want to join in - but then, with what you've seen in here already, that seems to be the norm. Stopping the thrusts of his hips when he's balls-deep in his partner, the athletic student turns his head and chest far enough around to give your naked form an appreciative look, then says, 'Wanna mount me like I'm doing with [tempGorillaName2] right now, cowboy? I'm game for a nice and hard [cock of player] shaft buried in my ass!'";
	say "     Who could refuse such a nice offer? You certainly won't, as it's just what you wanted. Taking hold of your erection with one hand, you softly whack it against [tempGorillaName1]'s ass a few times, then gather a bit of spit and let it drip on your cock, rubbing it all over to help with the penetration. Guiding your cockhead to his quivering pucker next, you push forward gently but steadily and pop into his hole a moment later. 'Oh yeah, a tight hole around my cock and a hard shaft in my ass - now that's just as I like it!' the gorilla groans with lust in his voice, then starts to move again, pounding into [tempGorillaName2] and at the same time fucking himself on your manhood.";
	WaitLineBreak;
	say "     Having an awesome time with these two hot hunks, your arms wrapped around the broad chest of [tempGorillaName1] while thrusting into his ass, you don't pay much attention to the room around you until someone suddenly reaches between your buttcheeks, rubbing thick fingers over your pucker. Unsurprisingly, someone else decided that he wants a piece of the action going on here and now there's yet another horny gorilla standing right behind you, giving you a lewd grin and demonstratively wagging his long and hard cock for you to see.";
	Line Break;
	say "     What now?";
	say "     ([link]Y[as]y[end link]) Take the gorilla's cock and continue the fuck-chain.";
	say "     ([link]N[as]n[end link]) Shake your head to him to show that you're not in the mood to get fucked right now.";
	if player consents:
		say "     Moaning for him to take that hole, you reach back and spread your asscheeks in open invitation - resulting in an impressively thick piece of man-meat pressing into you an eye-blink later, then pop in and spread your passage wide around its girth. It's a lot to take - but somehow, that makes it even better... with the very full and warm feeling the gorilla gives you as he starts to slide in and out, rubbing sensitive spots deep inside you. Moans and grunts fill the locker-room, intermixed with the slaps of horny men's balls against their willing bottom's butts, and the fuck-chain acquires several more members before eventually, [tempGorillaName2] reaches the point of no return and blasts his load, hitting the wall with audible splats. That first orgasm then leads to a kind of chain reaction, as the trembling and twitching hunk's inner muscles squeeze [tempGorillaName1]'s cock and make him cum too, followed moments later by yourself as his chute tightens to a vice-like grip around your erection.";
		say "     You're still in the throes of your own orgasm, with your balls pulsating as they send splashes of seed deep into [tempGorillaName1], when you register a nicely warm and squishy feeling in your insides. Your own gorilla fucker is unloading his massive load directly into your ass, really filling you up in a hot bit of cream-pie action. When the last member of the long fuck-line has blown his load and the ones at your end have already caught your breaths, some helpful team-members hand out towels, allowing everyone to clean up - starting with the guy they fucked. Mostly, the young men use the towels for that, but after you wipe down [tempGorillaName1] and go to pick up your clothes again, you can see that others are eagerly eating out their partners, which will most likely result in another round of fucking very soon.[mimpregchance]";
	else:
		say "     Looking back at the guy and giving a slow shake of your head, you make clear to him that you don't want to get fucked - which he accepts, if a bit sullenly. As the gorilla moves off to find someone else to have fun with, you concentrate on your partner more fully, thrusting into him with new energy and changing up the angle of your movements to keep him on his toes. Moans and grunts from all three of you fill the locker-room, intermixed with the slaps of horny men's balls against their willing bottom's butts. It's great fun and you'd have loved to keep going for a long time, but eventually, [tempGorillaName2] reaches the point of no return and blasts his load, hitting the wall with audible splats. That first orgasm then leads to a kind of chain reaction, as the trembling and twitching hunk's inner muscles squeeze [tempGorillaName1]'s cock and make him cum too, followed moments later by yourself as his chute tightens to a vice-like grip around your erection.";
		say "     When your worn-out trio has caught their breaths, some helpful team-members hand out towels, allowing you to clean up by wiping down the part of your cum that leaks from [tempGorillaName1]'s freshly bred hole. Though as you move on to dab at your own cock, you notice that the two gorillas didn't do so - they just used the towel to wipe away sweat and now [tempGorillaName2] is having his ass eaten out. It'll most likely result in another round of fucking very soon...";
	infect "Football Gorilla";

instead of navigating Astroslide Field Lockerroom while (GorillasMember is 1 and GorillasMemberQuestCounter - turns > 8):
	say "[NavCheck Astroslide Field Lockerroom]";
	if NavCheckReturn is false, stop the action;
	move player to Astroslide Field Lockerroom;
	if debugactive is 1:
		say "     DEBUG: Gorilla Quest Tryouts - GorillasMember: [GorillasMember][line break]";
	say "     As you enter the lockerroom, the gorilla team captain points you out to the rest of them and calls out, 'Look, another hopeful has shown up.' Murmuring and more or less friendly banter about your suitability immediately starts up among the crowd. The team captain pats one of his players on the shoulder and points your way, assigning him to take care of you. Pushing himself through the throng of people, the player soon takes you aside a little and explains, 'We got everything set up for the tryouts today. It's a simple test of people's abilities. You'll go through the standard 40 yard dash, bench press, and a mile run. Do well on these you will get a chance to show us what position you would like.'";
	say "     One of the nearby team-members interrupts with the comment, 'Or you can just skip all that and choose a different position - missionary or doggy-style for example. I'll help you fit right in with those.' He grins widely at you and puts a hand on his jockstrap, cupping the bulge of it. The Gorillas around him laugh and turn to you, looking interested at how you'll reply.";
	Line Break;
	say "     ([link]Y[as]y[end link]) - No way! You're here to play - or hm... maybe play and fuck. But football definitively comes first.";
	say "     ([link]N[as]n[end link]) - The offer sounds tempting... so much so that you're willing to blow off your shot at membership. Get fucked!";
	if player consents: [do the tryout]
		say "     Calling out your decision for the guy and everyone around him to hear, you get a reply of, 'Too bad, but hey... if you make it, definitively look me up sometime after practice, will ya?' Then you turn your attention back to your gorilla escort, who gives an appreciative nod. 'Good choice. We need people who can keep it in their pants at least till the game is over, hah. Let's go out onto the field and start with the 40 yard dash then.'";
		say "[GorillaCheck1]"; [Dexterity]
		WaitLineBreak;
		say "     Guiding you back inside, your companion brings you to an exercise room and points at a lifting bench. 'Alright, this one should be easy - just lift the weights as many times as possible,' he says, trying to sound supportive. You lay down onto the cold surface of the weight bench and position yourself underneath the bar, then grab hold of it with both hands. Two more gorillas standing behind it help lift the weights off their rack and keep watch so that you'll not hurt yourself.";
		say "[GorillaCheck2]"; [Strength]
		WaitLineBreak;
		say "     Stepping out of the building, your gorilla escort points at a building in the distance - the Welcome Center at the entrance of the college. 'Alright, this drill is self-explanatory - all you have to do is run a mile. You will be judged based off your time... assuming you make it back,' the Gorilla says as you take your place at the starting line. 'Just get to that building and back. There'll be information leaflets in holders all over the place, so bring one to prove you've been there. You will be on your own out there, but don't worry - we'll allow a certain bit of 'being distracted' and have a fairly easy target time set. Doesn't mean you shouldn't give your best of course.'";
		say "[GorillaCheck3]"; [Stamina]
		now GorillasMemberQuestCounter is turns; [to count the time till the next stage]
	else: [get fucked]
		say "     Throwing your ambitions of joining the football team overboard, you leave your other gorilla escort behind (shaking his head at your flightiness) and step up to the one who offered you sex. He laughs lustily and draws you close, kissing you full on the mouth. 'Show me what you got [if player is female]baby[otherwise]dude[end if],' the gorilla grunts after pulling back from you a moment later, then pushes his jockstrap down to fall to the ground at his feet. The manhood dangling between his legs is quite well sized and already more than half-hard. Seems like he's more than ready to make good on his promises. Not wanting to be outdone, you quickly strip for him, baring your body to his leering looks as piece after piece of clothing is taken off.";
		if cunts of player > 0:
			if "submissive" is listed in feats of player:
				say "'Yeah, show me that pussy!' he grunts as your underwear comes off, stepping closer and reaching out to touch your crotch. His human-like fingers stroke over your nether lips, then find the sensitive clit at the top, rubbing it and making you pant in rising lust. 'That's a good girl - getting wet for me, I can feel it,' he says with a grin as he continues to stroke you. And the big primate is right - you're getting wetter by the second, with your nether lips swelling and opening up in anticipation of getting fucked by this strong male. Soon, he also grabs your head and pulls it up to his own, giving you a hungry kiss that you eagerly reply to.";
				WaitLineBreak;
				say "     'Time for the real fun to begin,' the gorilla jock grunts, then adds, 'Lie down and I'll show you what else one can do with the stamina a good football player brings to the field.' Panting excitedly, you get down on a lockerroom bench, hastily cleared by the players who had been sitting on it to give their buddy some room to do his thing. Giving a lusty grunt that reverberates in his wide chest, the gorilla drops down on all fours and walks closer to stand over you. He looks down upon your naked form with victorious pride - absolutely certain that you're rightfully his to fuck and breed. Serving a powerful male like this one, even the thought of letting him mount you and fill with his load... turns you on quite a bit, playing exactly into your submissive urges.";
				say "     Leaning forward, the gorilla sticks out his tongue and runs it over your chest, [if breasts of player > 0]stopping at a nipple to lick it and take it into his mouth,[end if] then he moves on further up and kisses you deeply. It's amazing to feel the presence of this mighty primate so close to you, just inches above your stretched out body, and you can't help but wrap your arms around him, stroking his fur with both hands. The football player makes out with you for a moment longer, then reaches down to take hold of the hard shaft dangling between his legs. Guiding his manhood, he rubs it hotly against your nether lips before finally thrusting in with a forceful push that has you howling in lust.";
				WaitLineBreak;
				say "     'Oh yeah! You feel great babe,' the dominant jock grunts deeply, then pushes his upper body almost upright again. He proceeds to fuck you hard in that position, hips pumping his thick cock in and out of you in rapid succession while his long, strong arms hold you by the shoulders. Almost beside yourself from having someone who makes full use of you as a fucktoy, just as you so clearly deserve, you can't help but pant and moan as the human-like shaft hits your g-spot again and again. He might be a vainglorious bastard of an ape, but... this gorilla really knows what he's doing when a cock and pussy is involved. With his relentless pounding driving your libido into overdrive, you can't even tell how long you're kept in an aroused haze, with one orgasm rolling over into the next, before the gorilla finally comes close to the limits of his endurance.";
			else:
				say "'Yeah, show me that pussy!' he grunts as your underwear comes off, stepping closer and reaching out to touch your crotch. His human-like fingers stroke over your nether lips, then find the sensitive clit at the top, rubbing it and making you pant in rising lust. 'That's a good girl - getting wet for me, I can feel it,' he says with a grin as he continues to stroke you. And the big primate is right - you get increasingly aroused from his touch, with your nether lips swelling and opening up, getting pretty moist as they do. Soon, he also grabs your head and pulls it up to his own, giving you a hungry kiss that you eagerly reply to.";
				WaitLineBreak;
				say "     'Time for the real fun to begin,' the gorilla jock grunts, then adds, 'Lie down and I'll show you what else one can do with the stamina a good football player brings to the field.' Panting excitedly, you get down on a lockerroom bench, hastily cleared by the players who had been sitting on it to give their buddy some room to do his thing. Giving a lusty grunt that reverberates in his wide chest, the gorilla drops down on all fours and walks closer to stand over you. He looks down upon your naked form with victorious pride - absolutely certain that you're rightfully his to fuck and breed.";
				say "     Leaning forward, the gorilla sticks out his tongue and runs it over your chest, [if breasts of player > 0]stopping at a nipple to lick it and take it into his mouth,[end if] then he moves on further up and kisses you deeply. You can't help but be awed by the presence of this mighty primate so close to you, just inches above your stretched out body, and something inside you makes you wrap your arms around him, stroking his fur with both hands. The football player makes out with you for a moment longer, then reaches down to take hold of the hard shaft dangling between his legs. Guiding his manhood, he rubs it hotly against your nether lips before finally thrusting in with a forceful push that makes you gasp with its suddenness.";
				WaitLineBreak;
				say "     'Oh yeah! You feel great babe,' the dominant jock grunts deeply, then pushes his upper body almost upright again. He proceeds to fuck you hard in that position, hips pumping his thick cock in and out of you in rapid succession while his long, strong arms hold you by the shoulders. You can't help but pant and moan as the human-like shaft hits your g-spot again and again. He might be a vainglorious bastard of an ape, but... this gorilla really knows what he's doing when a cock and pussy is involved. With his relentless pounding driving your libido into overdrive, you can't even tell how long you're kept in an aroused haze, with one orgasm rolling over into the next, before the gorilla finally comes close to the limits of his endurance.";
			say "     As the football jock's lust mounts up, his moans and pants become less and less human-like and start to resemble an ape's grunting instead, rising in volume and vehemence with each passing moment. Then finally, it is time - with one mighty thrust, the male buries his whole cock inside you one last time and starts to cum, spurting blast after blast of fertile seed directly into your womb. While his cock is still pulsing deep inside you, the gorilla sinks down on top of you, thankfully holding himself up a bit so he doesn't press you flat on the bench with his muscled mass. Some short while later, as his orgasm winds down, the college jock moves his head again to give you another kiss, then murmurs, 'I love taking care of our fans. This is where you belong.' That said, he slowly pulls his cock out of you, then stands up and goes to high-five with his friends. 'See you later,' he says with a chuckle and a leer at your freshly bred body, joins the throng of players preparing for the next game.[fimpregchance]";
			now Astroslide Field Lockerroom is known;
		else:
			if "submissive" is listed in feats of player:
				say "'Yeah, bend over and spread those cheeks - I wanna see your hot hole!' he grunts as your underwear comes off, stepping closer and reaching out to touch your buttcheeks. His human-like fingers stroke up and down the crack of your ass, then find your pucker and rub it gently - almost teasingly. 'I can feel your muscle flex in anticipation, very nice dude,' he says with a grin and continues to stroke you. And the big primate is right - your pucker twitches at the thought of being spread open by this strong male's thick shaft. Soon, the sexy football player pulls you back around and gives you a hungry kiss that you eagerly reply to.";
				WaitLineBreak;
				say "     'Time for the real fun to begin,' the gorilla jock grunts, then adds, 'Get into position and I'll show you what else one can do with the stamina a good football player brings to the field.' Panting excitedly, you get down on a lockerroom bench, hastily cleared by the players who had been sitting on it to give their buddy some room to do his thing. With raised ass and lowered head, you await him like a good little butt-slut. Giving a lusty grunt that reverberates in his wide chest, the gorilla drops to his fists, walking forward using his muscled forearms like front legs. He circles you, inspecting and touching your naked form with victorious pride - absolutely certain that you're rightfully his to use and fuck. Serving a powerful male like this one, even the thought of letting him mount you and fill with his load... turns you on quite a bit, playing exactly into your submissive urges.";
				say "     Coming to stand behind you again, the gorilla spreads your cheeks with both strong hands, then leans forward and gives your butt-crack a long lick before homing in on your back door. The tip of his stretched-out tongue touches your pucker, making you give a little sigh of pleasure, then it starts to press in, wiggling in a most stimulating manner. Having your head lowered while you grip the grass under you tightly means that you can only see a little bit of the ape doing such an amazing job of eating you out, but even so, the simple presence and proximity of this mighty primate so close to you makes your heart race with excitement. The football player continues giving you oral pleasure for a moment longer, then reaches down to take hold of the hard shaft dangling between his legs. Guiding his manhood, he rubs it hotly against your wet and by now very relaxed sphincter, then finally thrusts in with a forceful push that has you howling in lust.";
				WaitLineBreak;
				say "     'Oh yeah! You feel great dude,' the dominant jock grunts deeply, then pushes his upper body almost upright again. He proceeds to fuck you hard in that position, hips pumping his thick cock in and out of you in rapid succession while his long, strong arms hold you by the shoulders. Almost beside yourself from being in the power of someone who makes full use of you as a fucktoy, just as you so clearly deserve, you can't help but pant and moan as the human-like shaft hits your prostate again and again. He might be a vainglorious bastard of an ape, but... this gorilla really knows what he's doing when a cock and butthole are involved. With his relentless pounding driving your libido into overdrive, you can't even tell how long you're kept in an aroused haze, [if cocks of player > 0]blasting more than one load into the grass under you[otherwise]all tingly inside[end if], before the gorilla finally comes close to the limits of his endurance.";
			else:
				say "'Yeah, bend over and spread those cheeks - I wanna see your hot hole!' he grunts as your underwear comes off, stepping closer and reaching out to touch your buttcheeks. His human-like fingers stroke up and down the crack of your ass, then find your pucker and rub it gently - almost teasingly. 'I can feel your muscle flex in anticipation, very nice dude,' he says with a grin and continues to stroke you. And the big primate is right - your pucker twitches at the thought of being spread open by this strong male's thick shaft. Soon, the sexy football player pulls you back around and gives you a hungry kiss that you eagerly return.";
				WaitLineBreak;
				say "     'Time for the real fun to begin,' the gorilla jock grunts, then adds, 'Get into position and I'll show you what else one can do with the stamina a good football player brings to the field.' Panting excitedly, you get down on a lockerroom bench, hastily cleared by the players who had been sitting on it to give their buddy some room to do his thing. With raised ass and lowered head, you await him like a good little butt-slut. Giving a lusty grunt that reverberates in his wide chest, the gorilla drops to his fists, walking forward using his muscled forearms like front legs. He circles you, inspecting and touching your naked form with victorious pride - absolutely certain that you're rightfully his to use and fuck. You just hope that it'll at least be somewhat enjoyable and that he'll let you go after getting his rocks off.";
				say "     Coming to stand behind you again, the gorilla spreads your cheeks with both strong hands, then leans forward and gives your butt-crack a long lick before homing in on your back door. The tip of his stretched-out tongue touches your pucker, making you give a little sigh despite yourself, then it starts to press in, wiggling in a most stimulating manner. Having your head lowered while you grip the grass under you tightly means that you can only see a little bit of the ape doing such an amazing job of eating you out, but even so, the simple presence and proximity of this mighty primate so close to you makes your heart race with excitement. The football player continues giving you oral pleasure for a moment longer, then reaches down to take hold of the hard shaft dangling between his legs. Guiding his manhood, he rubs it hotly against your wet and by now very relaxed sphincter, then finally thrusts in with a forceful push that makes you gasp with its suddenness.";
				WaitLineBreak;
				say "     'Oh yeah! You feel great dude,' the dominant jock grunts deeply, then pushes his upper body almost upright again. He proceeds to fuck you hard in that position, hips pumping his thick cock in and out of you in rapid succession while his long, strong arms hold you by the shoulders. You can't help but pant and moan as the human-like shaft hits your prostate again and again. He might be a vainglorious bastard of an ape, but... this gorilla really knows what he's doing when a cock and butthole are involved. With his relentless pounding driving your libido into overdrive, you can't even tell how long you're kept in an aroused haze, [if cocks of player > 0]blasting more than one load into the grass under you[otherwise]all tingly inside[end if], before the gorilla finally comes close to the limits of his endurance.";
			say "     As the football jock's lust mounts up, his moans and pants become less and less human-like and start to resemble an ape's grunting instead, rising in volume and vehemence with each passing moment. Then finally, it is time - with one mighty thrust, the male buries his whole cock inside you one last time and starts to cum, spurting blast after blast of his fertile seed into your inner passage. While his cock is still pulsing deep inside you, the gorilla leans forward to rest against your back with his arms wrapped around you. He's heavy, with all that muscle mass and the burly build, but being on all fours, you have little problem in holding him up beside this. Some short while later, as his orgasm winds down, the college jock leans forward a little bit more, kissing your neck, then murmurs, 'I love taking care of our fans. You can visit us in the [bold type]lockerroom[roman type] any time, sweet-cheeks. I'm more than sure all the guys would wanna 'meet' you.[if GorillasVisited is 0] It's over at the [bold type]football field[roman type] - you can't miss it. Just look for the big sign of our sponsor - [bold type]Astroslide[roman type][end if]' That said, he slowly pulls his cock out of you, then stands up and goes to collect his gear. 'See you later,' he says with a chuckle and a leer at your freshly bred body, then storms off, no doubt to boast about fucking you to anyone he can find.[mimpregchance]";
		now GorillasMember is 100; [quest thrown overboard for sex]

to say GorillaCheck1:
	let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]21[roman type] (Dexterity Check):[line break]";
	increase diceroll by bonus;
	if diceroll < 11:
		say "     You take your place at the start line and wait for the signal to start. After a few moments wait you hear the shrill shriek of a whistle and burst forward. During your first stride one of your feet slides beneath you causing you to fall. The Gorillas watching burst into laughter. Trying to save yourself the embarrassment you get up and finish the test as quickly as you can.";
	else if diceroll < 21:
		say "     You take your place at the start line and wait for the signal to start. After a few moments wait you hear the shrill shriek of a whistle and burst forward. You focus on keeping yourself from slipping and try to run in a straight line. After a few seconds you lunge your way past the finish line. 'Not bad,' your gorilla escort says, holding out his hand as he goes on to add, 'Not great, but not bad. We can work with that.'";
		increase GorillasMember by 1;
	else:
		say "     You take your place at the start line and wait for the signal to start. After a few moments wait you hear the shrill shriek of a whistle and burst forward. Reaching your stride after the first few fast steps, you make it to the finish line in near record time. 'I have to admit,' your gorilla escort says, holding out his hand to congratulate you, 'That was damned impressive for a rookie.'";
		increase GorillasMember by 2;

to say GorillaCheck2:
	let bonus be (( the Strength of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]21[roman type] (Strength Check):[line break]";
	increase diceroll by bonus;
	if diceroll < 11:
		say "     Once the gorillas let go of the bar you try your hardest to keep the bar up. Not even a second after they back away your arms can no longer hold the weight and the bar comes crashing down onto your chest. A roar of laughter comes from behind you as you struggle to push the bar off your chest. Before too long the same two gorillas help to pull it off you, allowing you to breathe freely and place the weights back on the rack. 'Well, that was a bit underwhelming,' your escort says, clearly disappointed. After a minute of rest you get back up and prep for the next test.";
	else if diceroll < 21:
		say "     Once the gorillas step away from the bar you quickly drop the bar down to your chest and push it back up again. Your arms begin to grow more tired with each rep. After ten or so reps your arms start to uncontrollably shake and you are forced to place the bar back on the rack. After a minute of rest you get back up and prep for the next test.";
		increase GorillasMember by 1;
	else:
		say "     Once the gorillas step back from the bar you let the bar drop to just above your chest before fully extending your arms again. After ten reps your pace starts to slow down, and your arms slowly become weaker. Yet you keep going, and it is another five reps before your arms become to tired and you are forced to put the bar back on the rack. 'Damn,' your escort says, 'You must been pumping a lot of iron before this.' After a minute of rest you get back up and prep for the next test.";
		increase GorillasMember by 2;

to say GorillaCheck3:
	let bonus be (( the Stamina of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Stamina Check):[line break]";
	increase diceroll by bonus;
	if diceroll < 16: [fail]
		say "     Then your gorilla escort blows his whistle and with its piercing shriek, you're off - at a light pace to begin with. Yet somehow, this just isn't your day. Not even out of sight of the gorillas, you start feeling exhaustion creep into your muscles. Maybe you've been pushing yourself too hard out on the streets in the last little while, or you should have trained harder before trying this. No matter which, your legs start to burn - first a little, then more and more, eventually beginning to feel like... well, basically like melting gummy-bears left in a car standing in the summer sun. You see the welcome center ahead of you, and there's an info-column stuffed with leaflets!";
		say "     The relief at (almost) having made it half-way is short-lived, as putting all your attention forward has you miss a little irregularity in the old paving stones, sending tumbling to sprawl to the ground. Ouch! You bump your head hard against the stones. Feeling wetness on your forehead, you dab at it with your fingers and feel a stinging pain at the touch, drawing your fingers back red with blood. Nnngh, you feel a bit woozy. Starting to push yourself up as best as you can next, you can't help but notice a pair of little green feet quite close before you. 'I did intend to just pick up some loo- err... souvenirs at the welcome center, but it seems today is my lucky day,' the owner of those bare feet says - a goblin with a platinum blond mohawk and more than a few golden earrings.";
		WaitLineBreak;
		say "     Standing before you with both hands on his hips, a total of three feet in height, the little green man doesn't look unattractive - yet somehow, the predatory gleam in his eyes is a bit disconcerting since their gaze rests right on you. Trying to get your feet back under you by pushing off from the ground with both arms, you find your strength break halfway through it and can just barely catch yourself before doing another face-plant on the stones. 'Let's have a look at you,' the goblin says, grabbing your head relatively roughly to glance at your forehead. 'Looks like the only thing dripping out is a little blood, nothing worse. How many fingers am I holding up?' Uncrossing your eyes, you can tell it is one - his middle finger waving left and right through your line of sight.";
		say "     As you start to grumble about him giving you the finger, the goblin lets go of you and nods. 'You'll be alright then - even if you got a concussion, those little metal thingys we all got in us will patch you up soon-ish. Which means I better use the opportunity now before it's over!' Something about his tone tells you that - yup, he's pulling his loincloth aside, gripping a rapidly hardening dick. 'Start sucking,' comes a command given with a broad grin. Weak as a kitten right now, you've got no options but to plead with him - only to get a throbbing member pushed into your mouth as you open it.";
		WaitLineBreak;
		say "     With your physical and mental faculties a little bit compromised right now, it seems almost like your body moves on its own to react to the demand for oral sex. Is this a 'present' from the ever-present nanites infecting you like anyone else in the city? Programmed muscle memory that guides people to having more sex? Whatever it is - you find yourself licking around the tip of the little goblin's cock a couple times before wrapping your lips around it. Sliding his cock deeper into your mouth, soon you can feel his little nut-sack bump against your chin. As your tongue plays over his manhood, following the veins along its shaft, you start feeling a bit more clear-headed. Yet are you well enough to fight the guy off? Better just continue and get this over with so you don't lose massive amounts of time...";
		say "     Shrugging, you begin to slide his cock in and out of your mouth. As you blow the goblin, you keep playing your tongue over his cock, sometimes wrapping it around as far as you can get. After a few minutes of this, your head is pushed off his cock and the little green man begins to rapidly jerk off. It doesn't take long before he throws his head back, shouting in pleasure as he starts to come all over your face. Spurt after spurt of cum splashes your features wetly, leaving streaks that feel warm on your skin. For someone his size, the guy blasts you with a massive load, liberally coating your face with his cum. 'Suits you,' the goblin says with a grin, then gives a little wave with his hand. 'Okay then, I'm off - got some offices to ransack, you know.' After that, he trots off into the distance, leaving you to sink down on the ground once more.";
		WaitLineBreak;
		say "     After wiping your face as good as possible, it still takes a little while longer for you to recover enough to stand. With a sigh, you walk over to the information column and pull out a colorful leaflet playing up the advantages of Tenvale College. Then you do your best to make it back to the football field as fast as possible. Upon your return the gorilla notes down the time from his stopwatch and comments, 'Wow, that took a while. I said you had some time, but... hey, what's that on your chin?' You wipe a hand over your face and realize that you missed a little bit of cum from your incident with the goblin. Too embarrassed you explain, you just duck past the football player to make your way to the locker room and wash up. With a shrug, he calls after you, 'Fine, then don't talk about it. Come back in a day or so, we'll have everyone's results then.'";
		increase GorillasMember by 1;
	else: [succeed]
		say "     Then your gorilla escort blows his whistle and with its piercing shriek, you're off - at a light pace to begin with. The buildings and areas of the college campus seem to streak past you as you keep going in a smooth jog, bypassing groups of creatures (friendly or not) as you do your best to get a good time. Soon, you arrive at the welcome center and make a beeline for an information column, snatching a colorful leaflet as you zoom past. On your way back you begin to notice that you're getting a little winded - but you are able to outlast your exhaustion and make it to the football field with no problems. Upon your return the gorilla notes down the time from his stopwatch and comments, 'Great work - not everyone who tries out makes it back. And in a quite good time too.' He accepts the leaflet from you with a grin, then pats you on the shoulder. 'It'll take a little while for us to evaluate all of the guys and gals who were in the tryout. Come back a tomorrow and we'll let you know if you made the team.' You give a quick thanks in return and make your way back to the locker room.";
		increase GorillasMember by 2;

instead of navigating Astroslide Field Lockerroom while (GorillasMember > 1 and GorillasMember < 10 and GorillasMemberQuestCounter - turns > 8):
	say "[NavCheck Astroslide Field Lockerroom]";
	if NavCheckReturn is false, stop the action;
	move player to Astroslide Field Lockerroom;
	if debugactive is 1:
		say "     DEBUG: Gorilla Quest Tryouts End - GorillasMember: [GorillasMember][line break]";
	say "     As you enter the lockerroom, the gorilla team captain notices you. He shouts some instructions to the unruly throng of football players all around, sending some of them to train on the field while cheering on those who're currently involved in a gangbang on the other side of the room. After calling out, 'I'll be over in a moment, hold me a place in the line to fuck her!' he walks over and turns his attention to you. 'Hey there,' he says in greeting and pats you on the shoulder.";
	if GorillasMember is 7: [maximum points]
		say "     'You really wowed us out there,' the primate says with a broad grin and holds out his hand in congratulation. Accepting a firm grip on your forearm and returning the same on his powerful furry limb, you are told, 'When we put everyone's data on the planning board, it immediately became clear that we had to have you on the team. Hell, you were at the top in front of everyone else. That'll make a fine addition to our team!' Waving his hand to indicate the large locker room, he goes on to say, 'Go ahead and pick any free locker you like. And be sure to come by regularly to watch our games, get a feel for the tactics and all that. Once you feel ready, you can tell us what position you would like to play.' You thank him and walk into the midst of the gathered football players, getting a very warm welcome (and a few friendly gropes) from the guys. Eventually, you pick a locker in the back right corner and after just a few minutes more, someone slaps a sign with your name on it.";
		now GorillasMember is 20; [star player]
	otherwise	if GorillasMember > 4: [okay results]
		say "     'Congratulations you made the team,' the primate says with a grin and holds out his hand in congratulation. Accepting a firm grip on your forearm and returning the same on his powerful furry limb, you are told, 'When we put everyone's data on the planning board, you rated well in the upper third. Didn't take much convincing for everyone to agree that you deserve a shot on the team.' Waving his hand to indicate the large locker room, he goes on to say, 'Go ahead and pick any free locker you like. And be sure to come by regularly to watch our games, get a feel for the tactics and all that. Once you feel ready, you can tell us what position you would like to play.' You thank him and walk into the midst of the gathered football players, getting a very warm welcome (and a few friendly gropes) from the guys. Eventually, you pick a locker in the back right corner and after just a few minutes more, someone slaps a sign with your name on it.";
		now GorillasMember is 10; [player]
	else: [moderate to bad results]
		say "     'Listen, we had a look at your results and... made a team decision that you will not be joining as a player,' the primate tells you with a somewhat apologetic expression. Yet as you bow your head in shame and begin turning to walk away, he grabs hold of your arm and adds, 'Wait I haven't finished yet. I thought it was brave of you to do the tryouts, no matter what came of it, so... I have an offer for you. A way you can still be part of the team and help out. You could be a [if player is female]water girl or laundry girl[otherwise]water boy or laundry boy[end if].";
		say "     [bold type]Well, this isn't what you set out to do in this team, but it'd be a foot in the door. There might be an opportunity to show your stuff later on if you improve your performance - and sexy times with the team-members are definitively in the cards if you agree to join up.[roman type][line break]";
		Line Break;
		say "     ([link]Y[as]y[end link]) - Take on a supporting position on the team.";
		say "     ([link]N[as]n[end link]) - Decline the offer. You wanted to be a player, not a flunky.";
		if player consents:
			Line Break;
			say "     The team captain gives you a broad smile as you agree, then says, 'That's great, we can always use more help. So, which job did you want?'";
			Line Break;
			say "     ([link]Y[as]y[end link]) - Water [if player is female]Girl[otherwise]Boy[end if].";
			say "     ([link]N[as]n[end link]) - Laundry [if player is female]Girl[otherwise]Boy[end if].";
			if player consents:
				Line Break;
				say "     <WIP>";
				now GorillasMember is 50; [water boy]
			else:
				Line Break;
				say "     <WIP>";
				now GorillasMember is 70; [laundry boy]
		else:
			Line Break;
			say "     The team captain shrugs as you decline his offer and turn towards the exit. As you walk off, he calls after you, 'If you change your mind you are always welcome back. Just let one of us know.";
			now GorillasMember is 99; [declined a supporting role]
			move player to College Campus;


	
Section 8 - Endings

when play ends:
	if bodyname of player is "Football Gorilla":
		if humanity of player is less than 10:
			say "     As you lose your last shreds of humanity, you feel the need to join your team supplant all other concerns. Roaming the campus until you run into one of the other gorillas, you let him guide you to their club headquarters and join in for almost constant training and practice games - with some sexy fun between the players themselves and any fans coming along being thrown in. When the military finally moves in, soldiers try to evacuate the campus and attempt to interrupt a game - which doesn't go over well. It's only a matter of moments before your organized team has overwhelmed the squad of men and takes an 'ah, it's almost half-time and we got these guys on our hands' break - which involves you [if cocks of player > 0]sinking your manhood into a tight soldier's ass[otherwise]riding a soldier's cock while holding him down[end if] in a wild gangbang.";
			say "     There aren't any attempts to move you from the campus for a while after that, until a smooth-talking businessman comes along one day and tells you about the creation of the 'Shifted American Football League' - totally wrapping all the gorillas around his finger with stories of athletic battle and glory. Soon, the whole team agrees to lets him manage them and follows him readily to the military's medical holding facility for a 'pre-game' checkup. After being prodded and poked, then given injections to make you noninfectious, your manager leads you off to become one of the top teams in the league - with him cashing in almost all the profits. Though at least he has to work hard to keep this exploitation going - keeping under control a whole team of wild and boisterous gorillas who'll want to fuck anyone they encounter...";
			stop the action;
		else:
			say "     When rescue comes, you're poked and prodded a bit in a medical holding facility outside the city, then declared non-infectious and let go. Looking around among the other released people, you do realize that there are virtually no gorillas among them. Strange - there were quite a few on the college campus. This animates you to go check with a somewhat sympathetic medic - who explains that the football players gang-banged the last rescue team and that they're excluded from the evacuation now. Further questions reveal that the soldiers did try to drag your fellow apes out in the middle of a game - an obvious and fatal mistake, as you well know.";
			say "     At that point, your involvement with the Tenvale Gorillas might have been over, but the news about the creation of the 'Shifted American Football League' the very next day gives you an idea. With some effort, you manage to convince a football fan among the soldiers to sneak you back into the city - where you seek out the gorillas on the campus. Being as convincing as you can, you present them with the opportunity of joining the new league, drawing them in with stories of athletic battles and glory. And you succeed - before long, you're picked as the new team manager of the Gorillas and lead your new buddies out to the military's medical holding facility for a 'pre-game' checkup. After being prodded and poked, then given injections to make them noninfectious, you lead the unruly bunch off - doing your best to rein in their ideas of showing all the 'fans' they meet a good time.";
			say "     It's not easy, but with as you really apply yourself, you manage to educate your fellow gorillas on some acceptable and unacceptable things to do and not do. As the team does well in the first few games and quite a few spectators get very enthusiastic about them, establishing an actual fan club is the next step - including a 'VIP fan' level for people who really really want to meet their heroes. The resulting orgies are a lot of fun, and you do join in yourself whenever you can spare the time. Judging from the resulting string of pregnancies in every city where a game is run, you won't have any trouble recruiting new teammates in the future either. Eventually, the Tenvale Gorillas become one of the top contenders in the league, and you as their manager earn a tidy bonus for all the hard work...";

Gorilla ends here.
