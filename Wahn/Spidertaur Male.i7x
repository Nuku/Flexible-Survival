Version 3 of Spidertaur Male by Wahn begins here.
[Version 3 - Aelias NPC and lair]

"Adds a Spidertaur to Flexible Survival's Wandering Monsters table, with impregnation chance."

[ SpidertaurRelationship - relationship and quest variable         ]
[   0: never met                                                   ]
[   1: initial encounter done, no player submission yet            ]
[   2: player submitted once                                       ]
[   3: player submitted twice                                      ]
[   4: player submitted three or more times                        ]
[   5: player got a spidersilk hammock as a present                ]
[   6: player can nav to Aelias web                                ]

SpidertaurRelationship is a number that varies.

Section 1 - Creature Responses

to say Spidertaur_Wins:
	if HP of Player > 0: [player submits]
		if SpidertaurRelationship is 1:[never submitted]
			say "     As you lower your hands and stop resisting, the spidertaur gives you an interested glance. 'Well well,' he says, 'what do we have here. You don't even want to struggle? Too weak - or do you maybe even like being tied up?' His large form scuttles closer on surprisingly quick, spidery legs until he's right in front of you. He then reaches out to stroke your chin and runs his hand down your chest. 'Not bad prey,' he says, then adds, 'Now how about you give me a nice little show,' with a small tug on your clothes.";
			say "     Under the watching eyes of the spidertaur, you slowly start to undress, taking off your clothes bit by bit and doing poses to show off your body. Seems like your striptease is giving the spidertaur quite a bit of arousal, as you can see the chitinous plates between his legs bulge outward a bit, then get pulled aside as his manhood rises to full hardness. And as horny as you've made him, he isn't in the mood to wait much longer. Before you're even completely naked, he starts spinning long strands of webbing with which he ties you up. You end up standing there in the alley, mostly naked, arms spread out to the sides, they and your body held by soft but surprisingly tough silk threads.";
			say "     [SpidertaurAlleySex]";
			increase SpidertaurRelationship by 1;
		else if SpidertaurRelationship is 2:[submitted once]
			say "     As you lower your hands and stop resisting, the spidertaur gives you an interested glance. 'Well well,' he says, 'you just can't stay away, can you? Seems you like being tied up.' His large form scuttles closer on surprisingly quick, spidery legs until he's right in front of you. He then reaches out to stroke your chin and runs his hand down your chest. 'Not bad, prey,' he says, then adds, 'Now how about you give me a nice little show,' with a small tug on your clothes.";
			say "     Under the watching eyes of the spidertaur, you slowly start to undress, taking off your clothes bit by bit and doing poses to show off your body. Seems like your striptease is giving the spidertaur quite a bit of arousal, as you can see the chitinous plates between his legs bulge outward a bit, then get pulled aside as his manhood rises to full hardness. And as horny as you've made him, he isn't in the mood to wait much longer. Before you're even completely naked, he starts spinning long strands of webbing with which he ties you up. You end up standing there in the alley, mostly naked, arms spread out to the sides, they and your body held by soft but surprisingly tough silk threads.";
			say "     [SpidertaurAlleySex]";
			increase SpidertaurRelationship by 1;
		else if SpidertaurRelationship is 3:[submitted twice]
			say "     As you lower your hands and stop resisting, the spidertaur gives you a lusty grin. 'Back for more, my lovely little fly?' he says, scuttling closer on his eight legs and stroking his hand along your cheek. 'I knew you couldn't resist coming to me again. Come, I've got a surprise for you.' Taking you by the hand, he leads you towards a nearby abandoned building. After passing through a room stuffed full with enough furniture for two, you find yourself in a spidertaur's love nest. Many, many strands of webbing are stretched all over the emptied out room, holding some bundles and cocooned objects. In the midst of it all is a large silken sling, held in the air by quite a few of the resilient strands.";
			say "     'Here, feel that' the spider-hybrid says, putting your hand on the incredibly soft material of the sling. He undresses you, removing all your clothes and throwing them over nearby strands to keep them off the floor. Finally, with you now bare-ass naked, he twirls you around, pushing softly against your chest so you fall right into the sling. Then he takes your arms and binds them with several strands over your head, kissing your lips as he finishes and moves further down your body.";
			say "     [SpidertaurSlingSex]";
			increase SpidertaurRelationship by 1;
		else if SpidertaurRelationship > 3:[submitted 3+ times]
			say "     As you lower your hands and stop resisting, Aelias says 'Not in the mood to play struggling prey today, my lovely little fly?' and scuttles closer on his eight legs to embrace you, his lips finding yours in an eagerly returned kiss while his hands roam over your body. As he comes up for air after a bit of making out, he continues with 'Well, then - come join me in my web', taking you by the hand and guiding you to a well-prepared love-nest in one of the nearby abandoned buildings.";
			say "     The room your spidertaur lover brings you to has many long web strands stretched all over it, most of them holding a large silken sling in the center. You let yourself be led towards it, with him pulling off your clothes as you go along, throwing them over nearby strands to keep them off the floor. Finally, when you're standing bare-ass naked in front of the sling, you slide into it, leaning back to lie on the incredibly soft, yet resilient material. Snuggling into the silky web, you let your gaze roam over Aelias's hard cock and muscled upper body, then meet his eyes with a lusty, need-filled look. Smiling at your unspoken invitation, the spidertaur takes your arms and binds them with several strands over your head, kissing your lips as he finishes and moves further down your body.";
			say "     [SpidertaurSlingSex]";
	else:[player loses]
		say "     As you fall to the ground beaten, the spidertaur pins you to the floor with his legs and quickly binds you down with strands of tough spidersilk. With you now helpless on your back, he stands over you as if to show off his half-arachnid body, a hungry smile on his face. You see chitinous plates between his legs bulge outward a bit, then get pulled aside as his manhood rises to full hardness.";
		if SpidertaurRelationship is 1:[never submitted]
			say "     He says 'You're caught, little fly. Now it's time for some fun' then lowers his body a bit and rubs his erection against your face. Without having much choice, you open up as he pushes it against your lips, then suck on his cock and run your tongue over it. 'Not bad, prey. Not bad. But let's see what else you have to offer.' With that, he turns around, first his legs and then the shiny black plates of his abdomen coming into your field of view. You feel him loosen several strands holding your lower body, followed by your legs being raised and spread.";
		else if SpidertaurRelationship is 2:[submitted once]
			say "     He says 'Still resisting, little fly? Just remember how good it felt to submit in my web...' He leers down at your body, then continues 'You'll learn in time, and until you do, your struggles just build my... appetite.' Looking down, you see his fully hard erection throb, making it very clear what hunger he wants you to sate.";
			say "     The spidertaur lowers his body a bit and rubs his cock against your face. Without having much choice, you open up as he pushes it against your lips, then suck on his cock and run your tongue over it. 'Not bad, prey. Not bad. But let's see what else you have to offer.' With that, he turns around, first his legs and then the shiny black plates of his abdomen coming into your field of view. You feel him loosen several strands holding your lower body, followed by your legs being raised and spread.";
		else if SpidertaurRelationship is 3:[submitted twice]
			say "     He says 'Here we go, my little fly. Haven't you learned yet that resistance is futile? But then, maybe you like this little game as much as I do.' He leers down at your body, then continues 'Fighting me, imagining you can win, then coming to struggle in my web strands in the end. Great fun to catch you, and that builds my... appetite.' Looking down, you see his fully hard erection throb, making it very clear what hunger he wants you to sate.";
			say "     The spidertaur lowers his body a bit and rubs his cock against your face. Without having much choice, you open up as he pushes it against your lips, then suck on his cock and run your tongue over it. 'Not bad, prey. Not bad. But let's see what else you have to offer.' With that, he turns around, first his legs and then the shiny black plates of his abdomen coming into your field of view. You feel him loosen several strands holding your lower body, followed by your legs being raised and spread.";
		else if SpidertaurRelationship > 3:[submitted 3+ times]
			say "     He says 'You lose, my little fly. I love that you sometimes try to resist me, even after all the fun we've had.' He leers down at your body, then leans forward and kisses your lips, stroking a hand along your cheek before he continues 'Let's go on with our little game then. I've caught you, prey. So now's the time to have some fun. Your struggles have built up my... appetite.' Trying to act in character, you struggle weakly against your bonds, though your anticipation must be very clear on your face as you look down and see his fully hard erection throb.";
			say "     The spidertaur lowers his body a bit and rubs his cock against your face. Keeping up the play of being an unwilling participant, you keep your mouth closed for a few moments, then finally slide your lips over his shaft, sucking it and teasing it with the tip of your tongue. 'Not bad, prey. Not bad. But let's see what else you have to offer.' With that, he turns around, first his legs and then the shiny black plates of his abdomen coming into your field of view. You feel him loosen several strands holding your lower body, followed by your legs being raised and spread.";
		say "[SpidertaurWinSex]";

to say SpidertaurAlleySex:
	WaitLineBreak;
	if Player is female:
		say "     Coming up from behind, the spidertaur puts his arms around you, running his hands over your chest and lightly pinching your nipples. You can feel his soft skin against your back and the warm rod of his cock poke your ass. He moves one of his hands down to your crotch, touching your sensitive pussy lips, then spreading them and pushing two fingers into your body, eliciting an involuntary moan from you. He chuckles, then says 'A sweet pussy, just waiting to be filled by me. I won't leave you waiting much longer...' and scuttles around you to get into position before you.";
		LineBreak;
		say "     Using his two front legs, he lifts your lower body from the ground, leaving you hanging from the webbing as he proceeds to pull off your last articles of clothing. When you're finally completely naked, he spreads your legs wide, grabbing your buttcheeks as he presses against you. His hard rod pushes hotly against your pussy lips, then in between them, accompanied by the spidertaur's satisfied moan as he pushes forward and enters your body. He slides deeper slowly but surely, grinning at you as the feeling of his shaft rubbing your insides makes you gasp. Soon he's all the way in, his cock poking the entrance to your womb and you can feel the chitinous plates of his lower body against your crotch. Giving your buns a squeeze with his human hands, he then starts to thrust in and out, fucking you with deep strokes.";
		WaitLineBreak;
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum directly into your womb.";
		NPCSexAftermath Player receives "PussyFuck" from Aelias;
	else if Player is male:
		say "     Coming up from behind, the spidertaur puts his arms around you, running his hands over your chest and lightly pinching your nipples. You can feel his soft skin against your back and the warm rod of his cock poke your ass. He moves one of his hands down to your crotch, stroking over your cock and balls, then taking hold of your shaft and jerking it, getting you to full hardness quickly. [if Cock Length of Player < 5]'A bit small, little man. I'll show you what a real cock feels like...'[else if Cock Length of Player < 12]'Nice equipment, prey. But today, you won't be using it...'[else if Cock Length of Player > 11]'Oh, a big boy indeed. Guys like you always squeal the loudest when I fuck them...'[end if] With that, he gives your balls a squeeze, then moves his hands back to grope your buns and pull them apart to reveal your hole.";
		LineBreak;
		project the figure of SpidertaurAlleySex_icon;
		LineBreak;
		say "     He puts two fingers in his mouth to wet them, then puts them against your pucker and presses forward, slowly increasing his pressure until your muscle yields and allows him in. Hanging from the silken web strands, you're treated to several minutes of him stretching and rubbing your insides, aching to have your hands free to stroke your own cock as it starts dribbling precum from the stimulation. Then suddenly, he pulls out his fingers in a swift move, with your sigh at the sudden empty feeling transformed into a loud gasp as he rams his hard cock in your open hole. Sliding into your body all the way until you can feel the chitinous plates of his lower body against your ass, he holds still like that for a moment.";
		say "     'Feel that, my little fly? It's extra hard for you - and you better get used to it quickly.' As he waits a little while for you to get used to the invading member in your ass, he strokes your chest with his hands and whispers into your ear. 'I love catching men. All those tough guys who think they can make it out on the streets, struggling in my web and creaming themselves as they get fucked.' He gives your cock a slow stroke, chuckling 'Let's see how you do...' Then your respite is over and the spider hybrid starts to thrust in and out, fucking you with deep strokes.";
		WaitLineBreak;
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation overwhelms your ability to hold back and as he bottoms out inside you again, your own cock starts to throb as spurt after spurt of cum jet from its tip, splattering on the ground of the alley.";
		say "     The spidertaur stops for a moment, leaning forward to look over your shoulder. 'See - you liked it, prey,' he says, then uses a finger to wipe the last fading spurt of cum from your slit and licks it off. He adds 'You taste quite nice too... too bad we're so far away from my lair - or I'd add to you my larder', then starts thrusting in and out again.";
		say "     After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.";
		NPCSexAftermath Player receives "AssFuck" from Aelias;
	else:
		say "     Coming up from behind, the spidertaur puts his arms around you, running his hands over your chest and lightly pinching your nipples. You can feel his soft skin against your back and the warm rod of his cock poke your ass. He moves one of his hands down to your crotch, feeling for your genitals, then groping around some more as he doesn't find any. He scuttles around to your front, looking at your blank crotch. 'What the...? I thought you just had a small pussy, not... this. What strange prey you are, not even properly equipped. Well, at least there's still one hole I can enjoy. Let's start right now...' and scuttles around you to get back into position.";
		LineBreak;
		say "     Groping your buns, he spreads them a bit to reveal your hole. He puts two fingers in his mouth to wet them, then puts them against your pucker and presses forward, slowly increasing his pressure until your muscle yields and allows him in. Hanging from the silken web strands, you're treated to several minutes of him stretching and rubbing your insides, aching to have your hands free to stroke your body as it struggles with the increasing arousal that can't be expressed by a neuter. Then suddenly, the spidertaur pulls out his fingers in a swift move, with your sigh at the sudden empty feeling transformed into a loud gasp as he rams his hard cock in your open hole. Sliding into your body all the way until you can feel the chitinous plates of his lower body against your ass, he holds still like that for a moment.";
		say "     'Feel that, my little fly? It's extra hard for you - and you better get used to it quickly.' As he waits a little while for you to get used to the invading member in your ass, he strokes your chest with his hands and whispers into your ear. 'So, you poor sexless beast - let me show you how to properly fuck someone. Maybe you get lucky and grow a cock after this.' Then your respite is over and the spider hybrid starts to thrust in and out, fucking you with deep strokes.";
		WaitLineBreak;
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.";
		NPCSexAftermath Player receives "AssFuck" from Aelias;
	LineBreak;
	say "     [SpidertaurPostSex]";

to say SpidertaurSlingSex:
	WaitLineBreak;
	if Player is female:
		say "     Continuing lower, he teases your nipples with his tongue, then strokes his hands along your sides and arrives at your pussy. Spreading it with his fingers, he sets to work eating you out, his tonguework making you moan in pleasure. Your bound arms tremble with the desire to stroke yourself as he stops from time to time, only running his hands slowly over your legs and chest and reveling in being in control over your pent-up need. Kept hot and bothered for quite a while, you're soon pleading, even begging for him to touch you. The spidertaur lets you continue for a moment longer, then chuckles and presses himself against you, letting his erection rest hotly against your crotch.";
		LineBreak;
		say "     'You want this inside you?' he asks, putting the tip of his shaft against your pussy lips and rubbing it up and down over it. His touch against your sensitive folds makes you moan in answer, calling on him to take you and fuck you deeply, which puts a very satisfied grin on the spidertaur's face. He immediately takes hold of your legs and thrusts forward, sinking his manhood deep into your wet and ready pussy. As he bottoms out, his cock poking the entrance to your womb and the chitinous plates of his lower body touching your crotch, he leans forward and gives you a kiss on the lips. Straightening his humanoid upper body again after that, he gives you a smile and starts to thrust in and out, fucking you with deep strokes.";
		WaitLineBreak;
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum directly into your womb.";
		NPCSexAftermath Player receives "PussyFuck" from Aelias;
	else if Player is male:
		say "     Continuing lower, he teases your nipples with his tongue, then strokes his hands along your sides and arrives at your crotch. He caresses your cock and balls, then takes hold of your shaft and jerks it, getting you to full hardness quickly. He continues to stroke you, fondling your balls with his other hand and getting you pretty fired up, with precum leaking from the tip of your shaft. Then he slows down, only lazily moving his hand, to keep you going at that level. As this continues for several minutes, your bound arms tremble with the desire to take over and jerk off, much to the amusement of the spidertaur as he revels in being in control over your pent-up need. Soon you're pleading, even begging for him to touch you some more. The spidertaur lets you continue for a moment longer, then chuckles and presses himself against you, letting his erection rest hotly against your crotch.";
		LineBreak;
		say "     'You'll get off when I fuck you. Do you want me inside you?' he says, putting the tip of his shaft against your pucker and rubbing it up and down over it, then teasingly pressing against it. His touch makes you moan in answer, calling on him to take you and fuck you deeply, which puts a very satisfied grin on the spidertaur's face. He immediately takes hold of your legs and thrusts forward, sinking his manhood deep into your tight hole. As he bottoms out, his cock resting deep inside your ass, he leans forward and makes out with you to give you some time to get used to having him inside you. After a while, he straightens his humanoid upper body again, giving you a smile as he starts to thrust in and out, fucking you with deep strokes.";
		WaitLineBreak;
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation overwhelms your ability to hold back and as he bottoms out inside you again, your own cock starts to throb as spurt after spurt of cum jet from its tip, splattering on your own chest.";
		say "     The spidertaur stops for a moment, leaning forward to put his face close to yours. 'Admit it - you love to get fucked by me.' As he thrusts forward again in just that moment, you can only moan in pleasure as an answer. He proceeds to take up some of your cum from your chest with his fingers, then licks it off. 'Mmmmh, you're just an amazing catch,' he says, leaning forward to kiss you deeply, allowing you to taste your own cum on his lips.";
		say "     Getting back to fucking you hot and hard, it's not too much longer until he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.";
		NPCSexAftermath Player receives "AssFuck" from Aelias;
	else:
		say "     Continuing going lower, he teases your nipples with his tongue, then strokes his hands along your sides and arrives at your crotch. Stroking over your pubic area, genderless but nevertheless quite sensitive, he gets you pretty fired up, a tingling feeling spreading through your whole body. Then he slows down, only lazily moving his hand, to keep you going at that level. As this continues for several minutes, your bound arms tremble with the desire to take over and stroke yourself, much to the amusement of the spidertaur as he revels in being in control over your pent-up need. Soon you're pleading, even begging for him to touch you some more. The spidertaur lets you continue for a moment longer, then chuckles and presses himself against you, letting his erection rest hotly against your crotch.";
		LineBreak;
		say "     'You'll get off when I fuck you. Do you want me inside you?' he says, putting the tip of his shaft against your pucker and rubbing it up and down over it, then teasingly pressing against it. His touch makes you moan in answer, calling on him to take you and fuck you deeply, which puts a very satisfied grin on the spidertaur's face. He immediately takes hold of your legs and thrusts forward, sinking his manhood deep into your tight hole. As he bottoms out, his cock resting deep inside your ass, he leans forward and makes out with you to give you some time to get used to having him inside you. After a while, he straightens his humanoid upper body again, giving you a smile as he starts to thrust in and out, fucking you with deep strokes.";
		WaitLineBreak;
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation causes an incredible feeling inside you to build, your whole body shaking as bliss fills every last bit of you.";
		say "     The spidertaur stops for a moment, leaning forward to put his face close to yours. 'Admit it - you love to get fucked by me.' As he thrusts forward again in just that moment, you can only moan in pleasure as an answer. 'Mmmmh, you're just an amazing catch,' he says, leaning forward to kiss you deeply.";
		say "     Getting back to fucking you hot and hard, it's not too much longer until he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.";
		NPCSexAftermath Player receives "AssFuck" from Aelias;
	WaitLineBreak;
	say "     [SpidertaurPostSex]";

to say SpidertaurWinSex:
	if Player is female:
		say "     Running one of his human hands over your crotch, then pushing two fingers into your pussy, he says 'A sweet pussy, just waiting to be filled by me. I won't leave you waiting any more...' and scuttles around you to get into position.";
		LineBreak;
		say "     You feel his hard rod against your pussy lips, pushing forward and entering your body. He slides deeper slowly but surely, grinning down at you as the feeling of his shaft rubbing your insides makes you moan. Soon he's all the way in, his cock poking the entrance to your womb and you can feel the chitinous plates of his lower body against your crotch. Stroking your legs with his human hands, he then starts to thrust in and out, fucking you with deep strokes.";
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum directly into your womb.";
		NPCSexAftermath Player receives "PussyFuck" from Aelias;
	else if Player is male:
		say "     Running one of his human hands over your crotch, then taking hold of your cock and stroking it a few times, he says 'It's always fun to see male prey moan and beg before they cream themselves when I fuck their asses. Let's start right now...' and scuttles around you to get into position.";
		LineBreak;
		say "     You feel his hard rod against your asshole, pushing forward until your pucker yields to the pressure and allows him in. He slides deeper slowly but surely, grinning down at you as the feeling of his shaft rubbing your insides makes you moan. Soon he's all the way in, his cock poking pleasure spots you didn't know you had, and you can feel the chitinous plates of his lower body against your crotch. Stroking your legs with his human hands, he then starts to thrust in and out, fucking you with deep strokes.";
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation overwhelms your ability to hold back and as he bottoms out inside you again, your own cock starts to throb as spurt after spurt of cum jet from its tip all over yourself and the silken bonds holding you.";
		say "     The spidertaur stops for a moment and leans his upper body forward to look into your face. 'See - you liked it, prey,' he says, then gathers some of your cum in his hand and licks it off. He adds 'You taste quite nice too... too bad we're so far away from my lair - or I'd add to you my larder', then starts thrusting in and out again.";
		say "     After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.";
		NPCSexAftermath Player receives "AssFuck" from Aelias;
	else:
		say "     Running one of his human hands over your smooth crotch, he says 'What the...? Strange prey, you aren't even properly equipped. Well, at least there's still one hole I can enjoy. Let's start right now...' and scuttles around you to get into position.";
		LineBreak;
		say "     You feel his hard rod against your asshole, pushing forward until your pucker yields to the pressure and allows him in. He slides deeper slowly but surely, grinning down at you as the feeling of his shaft rubbing your insides makes you moan. Soon he's all the way in, his cock poking pleasure spots you didn't know you had, and you can feel the chitinous plates of his lower body against your crotch. Stroking your legs with his human hands, he then starts to thrust in and out, fucking you with deep strokes.";
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.";
		NPCSexAftermath Player receives "AssFuck" from Aelias;
	WaitLineBreak;
	say "     [SpidertaurPostSex]";

to say SpidertaurPostSex:
	if HP of Player > 0: [player submits]
		if SpidertaurRelationship is 1:[never submitted]
			if Player is female:
				say "     Satisfied, the spidertaur pulls out of you, lowering your legs to the ground, though it's debatable if you're really standing on your own or still hanging from the strands, as shaky as they are after that workout. Stalking backwards on eight spindly legs, he lets his gaze wander over you, a grin spreading over his face as he looks at the trickle of cum running out of your pussy and down your leg. 'You're a nice little catch - just right for me to fuck and so accommodating. Which puts me in a good mood right now.' With a sudden flash of movement, he cuts the web strands holding you with the claws at the end of a long spider-leg, making you collapse onto the pile of your clothes on the ground. 'There, you're free to go. And ready yourself for another round when we meet next.' With that, he scuttles up the wall and on top of the nearest building. With a last leering look down at your cum-dripping body, he vanishes over the edge of the roof.";
			else:
				say "     Satisfied, the spidertaur pulls out of you, giving your ass a little slap before he moves around to stand in front of you. He lets his gaze wander over you, a grin spreading over his face as he looks at the trickle of cum running down the inside of your right leg and your softening erection. 'You're a nice little catch - just right for me to fuck and so accommodating. Which puts me in a good mood right now.' With a sudden flash of movement, he cuts the web strands holding you with the claws at the end of a long spider-leg, making you collapse onto the pile of your clothes on the ground. 'There, you're free to go. And ready yourself for another round when we meet next.' With that, he scuttles up the wall and on top of the nearest building. With a last leering look down at your cum-dripping body, he vanishes over the edge of the roof.";
		else if SpidertaurRelationship is 2:[submitted once]
			if Player is female:
				say "     Satisfied, the spidertaur pulls out of you, lowering your legs to the ground, though it's debatable if you're really standing on your own or still hanging from the strands, as shaky as they are after that workout. Stalking backwards on eight spindly legs, he lets his gaze wander over you, a grin spreading over his face as he looks at the trickle of cum running out of your pussy and down your leg. 'You're a nice little catch - just right for me to fuck and so accommodating. Which puts me in a good mood right now.' With a sudden flash of movement, he cuts the web strands holding you with the claws at the end of a long spider-leg, making you collapse onto the pile of your clothes on the ground. 'There, you're free to go. And ready yourself for another round when we meet next.' With that, he scuttles up the wall and on top of the nearest building. With a last leering look down at your cum-dripping body, he vanishes over the edge of the roof.";
			else:
				say "     Satisfied, the spidertaur pulls out of you, giving your ass a little slap before he moves around to stand in front of you. He lets his gaze wander over you, a grin spreading over his face as he looks at the trickle of cum running down the inside of your right leg and your softening erection. 'You're a nice little catch - just right for me to fuck and so accommodating. Which puts me in a good mood right now.' With a sudden flash of movement, he cuts the web strands holding you with the claws at the end of a long spider-leg, making you collapse onto the pile of your clothes on the ground. 'There, you're free to go. And ready yourself for another round when we meet next.' With that, he scuttles up the wall and on top of the nearest building. With a last leering look down at your cum-dripping body, he vanishes over the edge of the roof.";
		else if SpidertaurRelationship is 3:[submitted twice]
			say " Satisfied, the spidertaur pulls out of you, lowering your legs to dangle over the edge of the silken sling you're lying on and stroking your body. Then he reaches up to loosen the strands holding your arms, freeing them. He moves back a bit, allowing you to climb out of the soft spidertaur-silk construct. He plucks a towel from high up in the many strands in the room, handing it to you. As he watches your naked body move when you clean up a bit, he bites his lip, then seems to come to a decision. 'You've quickly become my favorite prey, you know. I'll tell you my name - I'm Aelias. You should know that I don't share that usually. Only with you.' Moving closer, he pulls you into an embrace, making out with you.";
			say "     Some time later, with you fully dressed again, the spidertaur leads you back to one of the main roads in this part of the city, then climbs a wall and vanishes over the edge of a roof.";
		else if SpidertaurRelationship > 3:[submitted 3+ times]
			say "     Satisfied, the spidertaur pulls out of you, lowering your legs to dangle over the edge of the silken sling you're lying on and stroking your body. Then he reaches up to loosen the strands holding your arms, freeing them, after which you pull him down on top of you, holding Aelias's muscled body against your chest and stroking his soft skin. You moan that he can tie you up whenever he wants, rubbing yourself against him and the silken fabric under you. 'I'll hold you to that,' he says, then moves back a bit, allowing you to climb out of the soft spidertaur-silk construct. Aelias plucks a towel from high up in the many strands in the room, handing it to you. As he watches your naked body move when you clean up a bit, he gives you an appreciative look. 'You're my absolutely favorite prey, you know. Handsome and amazing.' Moving closer, he pulls you into an embrace, making out with you.";
			if SpidertaurRelationship is 4:
				increase SpidertaurRelationship by 1;
				ItemGain silk hammock by 1;
				LineBreak;
				say "     Coming up for air after a while, he says 'I've got something for you.' and moves through the web strands to pull a bundle hidden high above you. At first you think he's got something wrapped up in a large sheet of woven silk, then you recognize what it is by the two stabilizing rods at the ends - a hammock, made of real silk. 'Sleep well in this part of my web, my little fly,' he says as he hands it to you. The whole bundle is surprisingly light and you're sure it'll come in handy when you're out in the city.";
				LineBreak;
				say "     You gain a [bold type]Silk Hammock[roman type]! With it you can now rest almost anywhere.";
				LineBreak;
			else if SpidertaurRelationship is 5:
				say "     Coming up for air after a while, he says 'I... miss you, when you're not here, and always hope to find you in the streets when I go out.' Looking around for a moment, eyes wandering over the long strands of silk everywhere, he continues, 'My web feels empty without you - so, why don't you... stay? Playing predator and prey out in the city is fun, but I'd just as much - no, more even - like to just spend some time together here with you.'";
				AddNavPoint Spider's Web;
				increase SpidertaurRelationship by 1;
			LineBreak;
			say "     Some time later, with you fully dressed again, the spidertaur leads you back to one of the main roads in this part of the city. 'Until next time', you tell him, giving him a goodbye kiss, then watch as he climbs a wall and vanishes over the edge of a roof.";
	else:[player loses]
		if SpidertaurRelationship is 1:[never submitted]
			say "     Satisfied, the spidertaur pulls out of you, then steps over you again so you can see almost all of his hybrid body. 'You're a nice little catch - just right for me to fuck. You know what - I'll give you a chance... let's see if you can free yourself before another creature comes along.' With a quick move of one of his legs, he slashes the strands holding your left arm, then scuttles up the wall and on top of the nearest building. With a last leering look down at your cum-dripping body, he vanishes over the edge of the roof.";
			say "     Thankfully, you manage to free yourself from the tough strands of spiderweb before any new creature finds you. After cleaning up as good as you can, you continue your journey through the dangerous streets of the city.";
		else if SpidertaurRelationship is 2:[submitted once]
			say "     Satisfied, the spidertaur pulls out of you, then steps over you again so you can see almost all of his hybrid body. 'You're a nice little catch - just right for me to fuck, both when you struggle and when you submit. You know what - I like having prey like you around, so I'll give you a chance... let's see if you can free yourself before another creature comes along.' With a quick move of one of his legs, he slashes the strands holding your left arm, then scuttles up the wall and on top of the nearest building. With a last leering look down at your cum-dripping body, he vanishes over the edge of the roof.";
			say "     Thankfully, you manage to free yourself from the tough strands of spiderweb before any new creature finds you. After cleaning up as good as you can, you continue your journey through the dangerous streets of the city.";
		else if SpidertaurRelationship is 3:[submitted twice]
			say "     Satisfied, the spidertaur pulls out of you, then steps over you again so you can see almost all of his hybrid body. 'You're becoming my favorite prey. Finding you, then catching you or just having you join me for sex. I'm looking forward to next time...' he says, then slashes the strands holding your left arm with one of his long legs. As you start freeing yourself, he scuttles up the wall and on top of the nearest building. With a last leering look down at your cum-dripping body, he vanishes over the edge of the roof.";
		else if SpidertaurRelationship > 3:[submitted 3+ times]
			say "     Satisfied, the spidertaur pulls out of you, then steps over you again so you can see almost all of his hybrid body. 'I love catching you, having you, fucking you, my little fly,' he says, then slashes the strands holding you one after another. Reaching down to help you up, he pulls you into a close embrace, making out with you hungrily while his left hand moves down to squeeze your ass. 'Can't wait for the next time you stray into my hunting grounds.' With that, Aelias scuttles up the wall and on top of the nearest building. With a last look down at your cum-dripping body and you waving goodbye, he vanishes over the edge of the roof.";

to say Spidertaur_Loses:
	if SpidertaurRelationship is 1:[never submitted]
		say "     As you land another blow on the spidertaur, he steps back and gives you a reluctant nod. Saying 'You're stronger than expected. Oh well, maybe another time...' he swiftly turns around and sprays webbing into your face. Even though you immediately rip it off again, the moment you couldn't see was enough time for the hybrid creature to climb the wall of the nearest building. With a last glare down at you, he vanishes over the edge and you hear his legs scuttle over the roof.";
	else if SpidertaurRelationship is 2:[submitted once]
		say "     As you land another blow on the spidertaur, he steps back and gives you a curious look. 'Why so tough now? Does the memory of spreading your legs for me haunt you? Oh well, I'll catch you another time and you'll learn how prey should act...' He swiftly turns around and sprays webbing into your face. Even though you immediately rip it off again, the moment you couldn't see was enough time for the hybrid creature to climb the wall of the nearest building. With a last glare down at you, he vanishes over the edge and you hear his legs scuttle over the roof.";
	else if SpidertaurRelationship is 3:[submitted twice]
		say "     As you land another blow on the spidertaur, he steps back and rubs his side, looking annoyed. 'What's with the mixed messages? One moment you're spreading your legs for me, then you try to beat me up. Well, I'm not into prey getting uppity, so decide what you want before the next time...' He swiftly turns around and sprays webbing into your face. Even though you immediately rip it off again, the moment you couldn't see was enough time for the hybrid creature to climb the wall of the nearest building. With a last glare down at you, he vanishes over the edge and you hear his legs scuttle over the roof.";
	else if SpidertaurRelationship > 3:[submitted 3+ times]
		say "     As you land another blow on the spidertaur, Aelias steps back and rubs his side, looking angry and annoyed. 'That actually hurt. Are you trying to beat me? This isn't how our game is supposed to go and I'm not having it!' He swiftly turns around and sprays webbing into your face. Even though you immediately rip it off again, the moment you couldn't see was enough time for the hybrid creature to climb the wall of the nearest building. With a last glare down at you, he vanishes over the edge and you hear his legs scuttle over the roof.";

to say Spidertaur_Desc:
	setmongender 3;
	say "     You hear something above you and look up - just in time to see a large spidertaur as he drops down behind you from the wall of the nearest building. His lower body consists of the legs and abdomen of a big spider, sheathed in gleaming black chitin, while his upper body looks human, with rippling muscles under black skin. He has pale-white hair, bound together as a long ponytail behind his back.";
	if SpidertaurRelationship is 0: [first meeting]
		say "     A grin spreads over his sharp features as he sees you get ready to defend yourself 'Excellent - I like when the prey struggles a bit.'";
		now SpidertaurRelationship is 1;
	else if SpidertaurRelationship is 1:[never submitted]
		say "     A cruel expression runs over his sharp features as he recognizes you. 'You can struggle if you want, prey - it'll make catching you even sweeter in the end.'";
	else if SpidertaurRelationship is 2 or SpidertaurRelationship is 3:[submitted once/twice]
		say "     A lusty grin comes over his sharp features as he recognizes you. 'You again, little prey. Have you learned to submit by now, or do I have to catch you? Not that I don't enjoy both...'";
	else if SpidertaurRelationship > 3:[submitted 3+ times]
		say "     A lusty grin comes over Aelias's sharp features as he recognizes you. 'If it isn't my very favorite prey. What will it be this time - will you fight me or skip straight to the good part? Not that I don't love your struggles when I have to catch you...'";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Spidertaur";
	add "Spidertaur Male" to infections of InsectList;
	add "Spidertaur Male" to infections of HybridList;
	add "Spidertaur Male" to infections of OctapedalList;
	add "Spidertaur Male" to infections of MythologicalList;
	add "Spidertaur Male" to infections of MaleList;
	add "Spidertaur Male" to infections of InternalCockList;
	add "Spidertaur Male" to infections of OviImpregnatorList;
	now Name entry is "Spidertaur Male";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is "Aelias";
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]Sweeping one of his front legs, he leaves a long, but surprisingly shallow, slash in your flesh with the underarm-length claw at the end of it.[or]He crawls up the nearest wall, then drops down on you.[or]He leaps to one side and turns his abdomen to face you, and sticky strands spray over your form![or]He suddenly charges and knocks you down with the weight of his body, then stands over you and sprays webbing over your prone form![at random]";
	now defeated entry is "[Spidertaur_Loses]";
	now victory entry is "[Spidertaur_Wins]";
	now desc entry is "[Spidertaur_Desc]";
	now face entry is "that of a handsome human male, with sharp features and long white hair to frame it";
	now body entry is "a nicely muscled human male's from the waist up, with everything below shaped like a giant spider, with eight long legs and a spider's abdomen covered in gleaming black chitin. Your genitals are hidden beneath protective chitin plates at the front of your spider body";
	now skin entry is "night-black";
	now tail entry is "Nestled in your backside are several spinnerets, ready to spin web at a moment's notice.";
	now cock entry is "armor-protected";
	now face change entry is "it takes on the sharp features of a handsome human male and you grow pale-white hair to hang down over your shoulders";
	now body change entry is "you fall to the ground, your lower torso flowing and bulging with creaks and pops, swelling into a bulging spider's abdomen. It sprouts chitinous armor and then eight legs, giving you an arachnid shape. Your upper body becomes human in the meantime, taking on the form of a nicely muscled man's chest with defined abs and strong arms.";
	now skin change entry is "all blemishes and hairs vanish, leaving you with flawless night-black skin";
	now ass change entry is "intricate glands swell within it, developing into spinnerets; you can even feel a bit of webbing ready to be spun";
	now cock change entry is "it shifts and lengthens, the base roughening and sprouting black plates of armor that reach up to conceal and cover it";
	now str entry is 16;
	now dex entry is 20;
	now sta entry is 16;
	now per entry is 22;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male";            [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 90;                 [ How many HP has the monster got? ]
	now lev entry is 12;                [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12;               [ Amount of Damage monster Does when attacking.]
	now area entry is "Warehouse";      [ Case sensitive]
	now Cock Count entry is 1;          [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 16;
	now Ball Size entry is 5;           [ Size of balls ]
	now Nipple Count entry is 2;        [ Number of nipples. ]
	now Breast Size entry is 0;         [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;          [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;      [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 65;             [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "spidertaur hair";[ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 75;         [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 4;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strange[or]hybrid[or]mutated[at random]";
	now type entry is "[one of]arachnid[or]spider-person[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "Spidertaur";
	now Name entry is "Spidertaur Male"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 6; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 2; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "they take on the appearance of an attractive human with almost porcelain-pale skin "; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "of an attractive human with [Head Color of Player] skin"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "human"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is "pale"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 20; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "white"; [one word color descriptor]
	now Hair Style entry is "back-length"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 1; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "purple"; [one word color descriptor]
	now Eye Adjective entry is "slitted"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 5; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "forked"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 6; [length in inches]
	now Torso Change entry is "it becomes that of a regular human, if somewhat slender in build. Pale, almost porcelain-like skin with a dusting of white body hair quickly spreads over it"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "that of a regular human and somewhat slender in build"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "human"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "pale"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "taffy"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "pale skin spreads down over them from your shoulders, all the way to the tips of now slender human fingers"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "about the size of a regular human's, with [Arms Color of Player] skin covering the whole length up to the tips of your slender fingers"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "pale"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "octapedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they contort and flex, dividing into four, then eight separate limbs. Growing quickly to become long and spindly, the skin on all of your legs hardens into plates of midnight black chitin, with all eight of them ending in sharp points as dangerous as short swords"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "plated in hard chitin plates, [Legs Color of Player] with spiky protrusions and ending in sharp points as dangerous as short swords"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "chitin-plated"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "midnight black"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes a bulging insectile abdomen, soon covered in quickly hardening black plates of chitin"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "and bulging insectile abdomen plated in glistening-black plates of curved chitin"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "chitinous";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "midnight-black"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 5; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 20; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "glistening black"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 4; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 16; [length in inches]
	now Cock Adjective entry is "[one of]spidertaur[or]nonhuman[or]ridged[at random]"; [one word adjective: avian/canine/...]
	now Cock Change entry is "it takes on a nonhuman shape, with a pointy tip as well as a series of ridges on the underside"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and has a pointy tip as well as a series of ridges on the underside, promising a receiving partner a wild ride"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is "dark almond"; [one word color descriptor]
	now Ball Count entry is 2; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 4; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a snug, leathery sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 2; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is "it withdraws a little into your body, with chitinous plates forming around it in a little shield. With a little concentration, you can pull them aside to reveal the delicate folds of your nether lips"; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player]-colored and protected by chitinous armor plates, with the delicate folds of your nether lips and an averagely sized clit hidden beneath"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is "glistening black"; [one word color descriptor]
	now Clit Size entry is 3; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Section 3 - Items

Table of Game Objects (continued)
name	desc	weight	object
"spidertaur hair"	"A few long strands of pale-white hair."	1	spidertaur hair
"silk hammock"	"A large but surprisingly light hammock, made from real spidertaur silk. It has two wooden stability rods at the ends, as well as sticky holding strands to hang it up pretty much anywhere. So you can [bold type]rest[roman type] in comfort wherever you like! You can be sure that it is more restful than any old sleeping bag and the like."	5	silk hammock

instead of sniffing spidertaur hair:
	say "Doesn't smell of anything, really.";

spidertaur hair is a grab object.
Usedesc of spidertaur hair is "[spidertaur hair use]";

to say spidertaur hair use:
	say "Playing a bit with the long strands of hair, you twirl them around your finger. After a while, they suddenly disintegrate into a fine powder which just seems to melt into your skin...";
	SpidertaurInfect;

to SpidertaurInfect:
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Spidertaur Male":
			now MonsterID is y;
			break;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	infect "Spidertaur Male";
	now non-infectious entry is true;

spidertaur hair is infectious. Strain of spidertaur hair is "Spidertaur Male".

instead of sniffing silk hammock:
	say "It doesn't have any noticeable smell, really. Just a bit of silken fabric, in the end";

silk hammock is a grab object. It is not temporary.
understand "use hammock" as resting.

Section 4 - NPC

Table of GameRoomIDs (continued)
Object	Name
Spider's Web	"Spider's Web"

Spider's Web is a room. It is a fasttravel. Spider's Web is private. Spider's Web is sleepsafe.
Description of Spider's Web is "[WebDesc]".

to say WebDesc:
	say "     Aelias's web lies in one of the abandoned buildings at the edge of the warehouse district. From the looks of it, it was a warehouse or industrial building itself at some point in the past, then got rebuilt into a loft-apartment. Now it has been transformed again, the spidertaur having removed all the furniture and building his home and love-nest in here. Between the hardwood floor and the thick wooden beams high on the ceiling, he's put up what must be hundreds if not thousands of thick silk strands, forming elaborate structures with flowing lines. Some are simply functional, like the storage cocoons stuck to the walls and ceiling, but others speak of Aelias's artistic side - decorative objects dangling from the ceiling as well as geometric patterned webs stretched over one wall. And then there's, of course, the sex sling in which you've had quite a few pleasant experiences...";

Instead of sniffing Spider's Web:
	say "     The air smells fresh, with a slight undertone of wood and wax. Seems like Aelias from time to time puts in the work to maintain the polished surface of his home's hardwood floor.";

Table of GameCharacterIDs (continued)
object	name
Aelias	"Aelias"

Aelias is a man.
ScaleValue of Aelias is 4. [human+ sized]
Body Weight of Aelias is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Aelias is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Aelias is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Aelias is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Aelias is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Aelias is 4. [length in inches]
Breast Size of Aelias is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Aelias is 2. [count of nipples]
Asshole Depth of Aelias is 14. [inches deep for anal fucking]
Asshole Tightness of Aelias is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Aelias is 1. [number of cocks]
Cock Girth of Aelias is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Aelias is 16. [length in inches]
Ball Count of Aelias is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Aelias is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Aelias is 0. [number of cunts]
Cunt Depth of Aelias is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Aelias is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Aelias is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Aelias is false.
PlayerRomanced of Aelias is false.
PlayerFriended of Aelias is false.
PlayerControlled of Aelias is false.
PlayerFucked of Aelias is false.
OralVirgin of Aelias is false.
Virgin of Aelias is true.
AnalVirgin of Aelias is false.
PenileVirgin of Aelias is false.
SexuallyExperienced of Aelias is true.
TwistedCapacity of Aelias is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Aelias is false. [steriles can't knock people up]
MainInfection of Aelias is "Spidertaur Male".
Aelias is in Spider's Web.
Description of Aelias is "[AeliasDesc]".
Conversation of Aelias is { "You're welcome to stay here as long as you want, my lovely little fly. To rest, or have fun..." }.
lastfuck of Aelias is usually 555.

to say AeliasDesc:
	if debugactive is 1:
		say "DEBUG -> SPIDERTAURRELATIONSHIP: [SpidertaurRelationship] <- DEBUG[line break]";
	say "     Aelias the spidertaur does certainly have an impressive form - with a lower body that consists of the legs and abdomen of a spider, sheathed in gleaming black chitin and large enough for a small horse, while his upper body looks human, with rippling muscles under black skin and a handsome face with sharp features. He has pale-white hair, gathered together as a long ponytail behind his back.";
	say "     As he notices your eyes on him, he [one of]smiles and does a full turn to give you a really good look from all sides, accompanied by the clicking sound of his leg-claws on the wooden floor[or]lets his own gaze wander over your body in turn, then gives a meaningful nod to the sex swing[or]gives you a knowing wink, then starts sorting items into a storage cocoon, allowing you to watch his muscles stretch and move in a nice little show[at random].";

instead of sniffing Aelias:
	say "     Aelias has a nice smell, strong and masculine, with a bit of a spicy undertone.";

Instead of fucking Aelias:
	setmonster "Spidertaur Male";
	choose row MonsterID from the Table of Random Critters;
	if (lastfuck of Aelias - turns < 5):
		say "     Aelias chuckles and says 'Just give me a moment to catch my breath, little fly...'";
	else:
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Let Aelias fuck you in the sling";
		now sortorder entry is 1;
		now description entry is "Let the spidertaur fuck you in the sex sling";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Let Aelias fuck you while standing";
		now sortorder entry is 2;
		now description entry is "Let the spidertaur tie you up and fuck you";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Let Aelias fuck you on the floor";
		now sortorder entry is 3;
		now description entry is "Let the spidertaur tie you up and fuck you";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Turn the tables and fuck him";
			now sortorder entry is 4;
			now description entry is "Tie him up and have some fun with Aelias butt";
		[]
		if Player is female:
			choose a blank row in table of fucking options;
			now title entry is "Turn the tables and mount his cock";
			now sortorder entry is 5;
			now description entry is "Tie him up and have some fun";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Turn the tables and ride Aelias while jerking him off";
		now sortorder entry is 6;
		now description entry is "Tie him up and have some fun getting him off";
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
					if nam is "Let Aelias fuck you in the sling":
						say "[AeliasSex1]";
					if nam is "Let Aelias fuck you while standing":
						say "[AeliasSex2]";
					if nam is "Let Aelias fuck you on the floor":
						say "[AeliasSex3]";
					if nam is "Turn the tables and fuck him":
						say "[AeliasSex4]";
					if nam is "Turn the tables and mount his cock":
						say "[AeliasSex5]";
					if nam is "Turn the tables and ride Aelias while jerking him off":
						say "[AeliasSex6]";
					wait for any key;
					now lastfuck of Aelias is turns;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You step back from the spidertaur, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say AeliasSex1: [player gets fucked in the sex sling]
	say "     Deciding to have some fun with your spidertaur lover, you walk towards him, lust gleaming in your eyes. Aelias says 'Wanna play in my net, my lovely little fly?' and scuttles closer on his eight legs to embrace you, his lips finding yours in an eagerly returned kiss while his hands roam over your body. As he comes up for air after a bit of making out, he continues with 'Your silk bedding awaits,' while pointing towards the sex sling you know so well. You let yourself be led towards it, with him pulling off your clothes as you go along, throwing them over nearby strands to keep them off the floor. Finally, when you're standing bare-ass naked in front of the sling, you slide into it, leaning back to lie on the incredibly soft, yet resilient material. Snuggling into the silky web, you let your gaze roam over Aelias's hard cock and muscled upper body, then meet his eyes with a need-filled look. Smiling at your unspoken invitation, the spidertaur takes your arms and binds them with several strands over your head, kissing your lips as he finishes and moves further down your body.";
	if Player is female:
		say "     Continuing going lower, he teases your nipples with his tongue, then strokes his hands along your sides and arrives at your pussy. Spreading it with his fingers, he sets to work eating you out, his tonguework making you moan in pleasure. Your bound arms tremble with the desire to stroke yourself as he stops from time to time, only running his hands slowly over your legs and chest and reveling in being in control over your pent-up need. Kept hot and bothered for quite a while, you're soon pleading, even begging for him to touch you. The spidertaur lets you continue for a moment longer, then chuckles and presses himself against you, letting his erection rest hotly against your crotch.";
		WaitLineBreak;
		say "     'You want this inside you?' he asks, putting the tip of his shaft against your pussy lips and rubbing it up and down over it. His touch against your sensitive folds makes you moan in answer, calling on him to take you and fuck you deeply, which puts a very satisfied grin on the spidertaur's face. He immediately takes hold of your legs and thrusts forward, sinking his manhood deep into your wet and ready pussy. As he bottoms out, his cock poking the entrance to your womb and the chitinous plates of his lower body touching your crotch, he leans forward and gives you a kiss on the lips. Straightening his humanoid upper body again after that, he gives you a smile and starts to thrust in and out, fucking you with deep strokes.";
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum directly into your womb.";
		NPCSexAftermath Player receives "PussyFuck" from Aelias;
	else if Player is male:
		say "     Continuing lower, he teases your nipples with his tongue, then strokes his hands along your sides and arrives at your crotch. Stroking over your cock and balls, then taking hold of your shaft and jerking it, getting you to full hardness quickly. He continues to stroke you, fondling your balls with his other hand and getting you pretty fired up, with precum leaking from the tip of your shaft. Then he slows down, only lazily moving his hand, to keep you going at that level. As this continues for several minutes, your bound arms tremble with the desire to take over and jerk off, much to the amusement of the spidertaur as he revels in being in control over your pent-up need. Soon you're pleading, even begging for him to touch you some more. The spidertaur lets you continue for a moment longer, then chuckles and presses himself against you, letting his erection rest hotly against your crotch.";
		WaitLineBreak;
		say "     'You'll get off when I fuck you. Do you want me inside you?' he says, putting the tip of his shaft against your pucker and rubbing it up and down over it, then teasingly pressing against it. His touch makes you moan in answer, calling on him to take you and fuck you deeply, which puts a very satisfied grin on the spidertaur's face. He immediately takes hold of your legs and thrusts forward, sinking his manhood deep into your tight hole. As he bottoms out, his cock resting deep inside your ass, he leans forward and makes out with you to give you some time to get used to having him inside you. After a while, he straightens his humanoid upper body again, giving you a smile as he starts to thrust in and out, fucking you with deep strokes.";
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation overwhelms your ability to hold back and as he bottoms out inside you again, your own cock starts to throb as spurt after spurt of cum jet from its tip, splattering on your own chest.";
		WaitLineBreak;
		say "     The spidertaur stops for a moment, leaning forward to put his face close to yours. 'Admit it - you love to get fucked by me.' As he thrusts forward again in just that moment, you can only moan in pleasure as an answer. He proceeds to take up some of your cum from your chest with his fingers, then licks it off. 'Mmmmh, you're just an amazing catch,' he says, leaning forward to kiss you deeply, allowing you to taste your own cum on his lips.";
		say "     Getting back to fucking you hot and hard, it's not too much longer until he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.";
		NPCSexAftermath Player receives "AssFuck" from Aelias;
	else:
		say "     Continuing lower, he teases your nipples with his tongue, then strokes his hands along your sides and arrives at your crotch. Stroking over your pubic area, genderless but nevertheless quite sensitive, he gets you pretty fired up, a tingling feeling spreading through your whole body. Then he slows down, only lazily moving his hand, to keep you going at that level. As this continues for several minutes, your bound arms tremble with the desire to take over and stroke yourself, much to the amusement of the spidertaur as he revels in being in control over your pent-up need. Soon you're pleading, even begging for him to touch you some more. The spidertaur lets you continue for a moment longer, then chuckles and presses himself against you, letting his erection rest hotly against your crotch.";
		WaitLineBreak;
		say "     'You'll get off when I fuck you. Do you want me inside you?' he says, putting the tip of his shaft against your pucker and rubbing it up and down over it, then teasingly pressing against it. His touch makes you moan in answer, calling on him to take you and fuck you deeply, which puts a very satisfied grin on the spidertaur's face. He immediately takes hold of your legs and thrusts forward, sinking his manhood deep into your tight hole. Keeping going until he bottoms out, his cock resting deep inside your ass, he leans forward and makes out with you to give you some time to get used to having him inside you. After a while, he straightens his humanoid upper body again, giving you a smile as he starts to thrust in and out, fucking you with deep strokes.";
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation causes an incredible feeling inside you to build, your whole body shaking as bliss fills every last bit of you.";
		WaitLineBreak;
		say "     The spidertaur stops for a moment, leaning forward to put his face close to yours. 'Admit it - you love to get fucked by me.' As he thrusts forward again in just that moment, you can only moan in pleasure as an answer. 'Mmmmh, you're just an amazing catch,' he says, leaning forward to kiss you deeply.";
		say "     Getting back to fucking you hot and hard, it's not too much longer until he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.";
		NPCSexAftermath Player receives "AssFuck" from Aelias;
	WaitLineBreak;
	say "     Satisfied, the spidertaur pulls out of you, lowering your legs to dangle over the edge of the silken sling you're lying on and stroking your body. Then he reaches up to loosen the strands holding your arms, freeing them, after which you pull him down on top of you, holding Aelias's muscled body against your chest and stroking his soft skin. You moan that he can tie you up whenever he wants, rubbing yourself against him and the silken fabric under you. 'I'll hold you to that,' he says, then moves back a bit, allowing you to climb out of the soft spidertaur-silk construct. Aelias plucks a towel from high up in the many strands in the room, handing it to you. As he watches your naked body move when you clean up a bit, he gives you an appreciative look. 'You're my absolutely favorite prey, you know. Handsome and amazing.' Moving closer, he pulls you into an embrace, giving you a deep kiss, then hands you your clothes as you dress again.";

to say AeliasSex2: [player gets tied/fucked standing]
	say "     Deciding to have some fun with your spidertaur lover, you walk towards him, lust gleaming in your eyes. Aelias says 'Wanna play in my net, my lovely little fly?' and scuttles closer on his eight legs to embrace you, his lips finding yours in an eagerly returned kiss while his hands roam over your body. As he comes up for air after a bit of making out, he continues with 'You like being tied up, don't you. But how about you give me a nice little strip-show first? Can't let all those clothes get in the way...'";
	say "     Under Aelias's watching eyes, you slowly start to undress, taking off your clothes bit by bit and doing poses to show off your body. Seems like your striptease is giving the spidertaur quite a bit of arousal, as you can see the chitinous plates between his legs bulge outward a bit, then get pulled aside as his manhood rises to full hardness. And as horny as you've made him, he isn't in the mood to wait much longer. Before you're even completely naked, he starts spinning long strands of webbing with which he ties you up. You end up standing where you were, mostly naked, arms spread out to the sides, they and your body held by soft but surprisingly tough silk threads.";
	WaitLineBreak;
	if Player is female:
		say "     Coming up from behind, Aelias puts his arms around you, running his hands over your chest and lightly pinching your nipples. You can feel his soft skin against your back and the warm rod of his cock poke your ass. He moves one of his hands down to your crotch, touching your sensitive pussy lips, then spreading them and pushing two fingers into your body, eliciting an involuntary moan from you. He chuckles, then says 'A sweet pussy, just waiting to be filled by me. I won't leave you waiting much longer...' and scuttles around you to get into position before you.";
		say "     Using his two front legs, he lifts your lower body from the ground, leaving you hanging from the webbing as he proceeds to pull off your last articles of clothing. When you're finally completely naked, he spreads your legs wide, grabbing your buttcheeks as he presses against you. His hard rod pushes hotly against your pussy lips, then in between them, accompanied by the spidertaur's satisfied moan as he pushes forward and enters your body. He slides deeper slowly but surely, grinning at you as the feeling of his shaft rubbing your insides makes you gasp. Soon he's all the way in, his cock poking the entrance to your womb and you can feel the chitinous plates of his lower body against your crotch. Giving your buns a squeeze with his human hands, he then starts to thrust in and out, fucking you with deep strokes.";
		WaitLineBreak;
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum directly into your womb.";
		NPCSexAftermath Player receives "PussyFuck" from Aelias;
	else if Player is male:
		say "     Coming up from behind, the spidertaur puts his arms around you, running his hands over your chest and lightly pinching your nipples. You can feel his soft skin against your back and the warm rod of his cock poke your ass. He moves one of his hands down to your crotch, caresses your cock and balls, then takes hold of your shaft and jerks it, getting you to full hardness quickly. [if Cock Length of Player < 5]'A bit small, little man. I'll show you what a real cock feels like...'[else if Cock Length of Player < 12]'Nice equipment, prey. But today, you won't be using it...'[else if Cock Length of Player > 11]'Oh, a big boy indeed. Guys like you always squeal the loudest when I fuck them...'[end if] With that, he gives your balls a squeeze, then moves his hands back to grope your buns and pull them apart to reveal your hole.";
		LineBreak;
		project the figure of SpidertaurAlleySex_icon;
		WaitLineBreak;
		say "     He puts two fingers in his mouth to wet them, then puts them against your pucker and presses forward, slowly increasing his pressure until your muscle yields and allows him in. Hanging from the silken web strands, you're treated to several minutes of him stretching and rubbing your insides, aching to have your hands free to stroke your own cock as it starts dribbling precum from the stimulation. Then suddenly, he pulls out his fingers in a swift move, with your sigh at the sudden empty feeling transformed into a loud gasp as he rams his hard cock in your open hole. Sliding into your body all the way until you can feel the chitinous plates of his lower body against your ass, he holds still like that for a moment.";
		say "     'Feel that, my little fly? It's extra hard for you - and you better get used to it quickly.' As he waits a little while for you to get used to the invading member in your ass, he strokes your chest with his hands and whispers into your ear. 'I love catching men. All those tough guys who think they can make it out on the streets, struggling in my web and creaming themselves as they get fucked.' He gives your cock a slow stroke, chuckling 'Let's see how you do...' Then your respite is over and the spider hybrid starts to thrust in and out, fucking you with deep strokes.";
		WaitLineBreak;
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation overwhelms your ability to hold back and as he bottoms out inside you again, your own cock starts to throb as spurt after spurt of cum jet from its tip, splattering on the hardwood floor of Aelias's lair.";
		say "     The spidertaur stops for a moment, leaning forward to look over your shoulder. 'I love making you cum, my little fly,' he says, then uses a finger to wipe the last spurt of cum from your slit and licks it off. He adds 'And you're quite tasty too...,' then starts thrusting in and out again. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.";
		NPCSexAftermath Player receives "AssFuck" from Aelias;
	else:
		say "     Coming up from behind, the spidertaur puts his arms around you, running his hands over your chest and lightly pinching your nipples. You can feel his soft skin against your back and the warm rod of his cock poke your ass. He moves one of his hands down to your crotch, feeling for your genitals, then groping around some more as he doesn't find any. He scuttles around to your front, looking at your blank crotch. 'Hmm... I don't think I like this genderless state you're in, little fly. There is so much more fun to be had if you had a proper cock or pussy. Oh well, at least there's still one hole I can enjoy. Let's start right now...' and scuttles around you to get back into position.";
		say "     Groping your buns, he spreads them a bit to reveal your hole. He puts two fingers in his mouth to wet them, then puts them against your pucker and presses forward, slowly increasing his pressure until your muscle yields and allows him in. Hanging from the silken web strands, you're treated to several minutes of him stretching and rubbing your insides, aching to have your hands free to stroke your body as it struggles with the increasing arousal that can't be expressed by a neuter. Then suddenly, the spidertaur pulls out his fingers in a swift move, with your sigh at the sudden empty feeling transformed into a loud gasp as he rams his hard cock in your open hole. Sliding into your body all the way until you can feel the chitinous plates of his lower body against your ass, he holds still like that for a moment.";
		WaitLineBreak;
		say "     'Feel that, my little fly? It's extra hard for you...' As he waits a little while for you to get used to the invading member in your ass, he strokes your chest with his hands and whispers into your ear. 'My poor sexless prey - let me show you how to properly fuck someone. Maybe you'll get lucky and grow a cock after this.' Then your respite is over and the spider hybrid starts to thrust in and out, fucking you with deep strokes.";
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.";
		NPCSexAftermath Player receives "AssFuck" from Aelias;
	WaitLineBreak;
	say "     Satisfied, Aelias pulls out of you, giving your ass a last appreciative grope before he scuttles back a few steps. Standing before you in all his naked glory, the spidertaur ogles you, grinning at your tied-up state and his cum slowly dripping out of your freshly-bred hole. 'I'm really tempted to just keep you like that, my little fly. You do make a very decorative addition to my web and are so... accessible like that.' For a moment, you think he actually might do that, but then he steps forward again and starts to loosen the strands holding your arms. 'No, you've shown me how much more fun it is to have a... friend to play predator and prey with, who even freely enters my web.'";
	say "     After you're free, you pull him against you, holding Aelias's muscled body against your chest and stroking his soft skin. You moan that he can tie you up whenever he wants. 'I'll hold you to that,' he says, then moves to pluck a towel from high up in the many strands in the room, giving it to you. As he watches your naked body move when you clean up a bit, he gives you an appreciative look. 'You're my absolutely favorite prey, you know. Handsome and amazing.' Moving closer, he pulls you into an embrace, giving you a deep kiss, then hands you your clothes as you dress again.";

to say AeliasSex3: [player gets tied/fucked on the floor]
	say "     Deciding to have some fun with your spidertaur lover, you walk towards him, lust gleaming in your eyes. Aelias says 'Wanna play in my net, my lovely little fly?' and scuttles closer on his eight legs to embrace you, his lips finding yours in an eagerly returned kiss while his hands roam over your body. As he comes up for air after a bit of making out, he continues with 'You like being tied up, don't you. But how about you give me a nice little strip-show first? Can't let all those clothes get in the way...' Under Aelias watching eyes, you slowly start to undress, taking off your clothes bit by bit and doing poses to show off your body.";
	say "     Seems like your striptease is giving the spidertaur quite a bit of arousal, as you can see the chitinous plates between his legs bulge outward a bit, then get pulled aside as his manhood rises to full hardness. And as horny as you've made him, he isn't in the mood to even wait until you're fully naked. Stepping up to you, Aelias pulls you against his chest, then lowers you to the floor on your back, tying your arms and body to the ground with strong silk bands in just a few moments. He leers down at your body, then leans down to kiss your lips, stroking a hand along your cheek before he continues 'Let's play a game - I'll be the predator and you my weak, helpless, tied-up prey. Seeing someone squirm in their bindings builds up my... appetite.' Trying to act in character, you struggle weakly against your bonds, though your anticipation must be very clear on your face as you look down and see his fully hard erection throb.";
	WaitLineBreak;
	say "     The spidertaur lowers his body a bit and rubs his cock against your face. Keeping up the play of being an unwilling participant, you keep your mouth closed for a few moments, then finally slide your lips over his shaft, sucking it and teasing it with the tip of your tongue. 'Not bad, prey. Not bad. But let's see what else you have to offer.' With that, he turns around, first his legs and then the shiny black plates of his abdomen coming into your field of view. You feel him loosen several strands holding your lower body, followed by your underwear being removed and both legs being raised and spread.";
	if Player is female:
		say "     Running one of his human hands over your crotch, then pushing two fingers into your pussy, he says 'A sweet pussy, just waiting to be filled by me. I won't leave you waiting any more...' and scuttles around you to get into position.";
		LineBreak;
		say "     You feel his hard rod against your pussy lips, pushing forward and entering your body. He slides deeper slowly but surely, grinning down at you as the feeling of his shaft rubbing your insides makes you moan. Soon he's all the way in, his cock poking the entrance to your womb and you can feel the chitinous plates of his lower body against your crotch. Stroking your legs with his human hands, he then starts to thrust in and out, fucking you with deep strokes.";
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum directly into your womb.";
		NPCSexAftermath Player receives "PussyFuck" from Aelias;
	else if Player is male:
		say "     Running one of his human hands over your crotch, then taking hold of your cock and stroking it a few times, he says 'It's always fun to see male prey moan and beg before they cream themselves when I fuck their asses. Let's start right now...' and scuttles around you to get into position.";
		LineBreak;
		say "     You feel his hard rod against your asshole, pushing forward until your pucker yields to the pressure and allows him in. He slides deeper slowly but surely, grinning down at you as the feeling of his shaft rubbing your insides makes you moan. Soon he's all the way in, his cock poking pleasure spots you didn't know you had, and you can feel the chitinous plates of his lower body against your crotch. Stroking your legs with his human hands, he then starts to thrust in and out, fucking you with deep strokes.";
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation overwhelms your ability to hold back and as he bottoms out inside you again, your own cock starts to throb as spurt after spurt of cum jet from its tip all over yourself and the silken bonds holding you.";
		say "     The spidertaur stops for a moment, leaning forward to look over your shoulder. 'I love making you cum, my little fly,' he says, then uses a finger to wipe the last spurt of cum from your slit and licks it. He adds 'And you're quite tasty too...,' then starts thrusting in and out again. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.";
		NPCSexAftermath Player receives "AssFuck" from Aelias;
	else:
		say "     Running one of his human hands over your smooth crotch, he says 'Hmm... I don't think I like this genderless state you're in, little fly. There is so much more fun to be had if you had a proper cock or pussy. Oh well, at least there's still one hole I can enjoy. Let's start right now...' and scuttles around you to get back into position.";
		LineBreak;
		say "     You feel his hard rod against your asshole, pushing forward until your pucker yields to the pressure and allows him in. He slides deeper slowly but surely, grinning down at you as the feeling of his shaft rubbing your insides makes you moan. Soon he's all the way in, his cock poking pleasure spots you didn't know you had, and you can feel the chitinous plates of his lower body against your crotch. Stroking your legs with his human hands, he then starts to thrust in and out, fucking you with deep strokes.";
		say "     Pulling out until only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.";
		NPCSexAftermath Player receives "AssFuck" from Aelias;
	WaitLineBreak;
	say "     Satisfied, Aelias pulls out of you, giving your ass a last appreciative grope before he scuttles back a few steps. Standing before you in all his naked glory, the spidertaur ogles you, grinning at your tied-up state and his cum slowly dripping out of your freshly-bred hole. 'I'm really tempted to just keep you like that, my little fly. You do make a very decorative addition to my web and are so... accessible like that.' For a moment, you think he actually might do that, but then he steps forward again and starts to loosen the strands holding your arms. 'No, you've shown me how much more fun it is to have a... friend to play predator and prey with, who even freely enters my web.'";
	say "     After you're free, you pull him against you, holding Aelias's muscled body against your chest and stroking his soft skin. You moan that he can tie you up whenever he wants. 'I'll hold you to that,' he says, then moves to pluck a towel from high up in the many strands in the room, giving it to you. As he watches your naked body move when you clean up a bit, he gives you an appreciative look. 'You're my absolutely favorite prey, you know. Handsome and amazing.' Moving closer, he pulls you into an embrace, giving you a deep kiss, then hands you your clothes as you dress again.";

to say AeliasSex4: [Aelias gets fucked]
	say "     Deciding that you want to be the one calling the shots this time, you stealthily walk over to where Aelias keeps a number of coiled up silk ropes and grab one of them. Putting a slip-knot noose on the lightweight rope's end while the spidertaur isn't looking, you hold the bundle behind your back and walk towards him. As he sees you come closer with lust gleaming in your eyes, Aelias says 'Wanna play in my net, my lovely little fly?' He eagerly scuttles closer on his eight legs and you pull his head to yours to share a kiss. Then, while having him distracted with a very pleasurable bit of tongue-wrestling, you bring out the rope and slip it over his wrists, pulling the noose tight with a quick movement.";
	say "     The black-skinned man's white eyebrows rise and a whimsical expression spreads over his face at finding himself tied up like this. He doesn't struggle but simply observes as you then throw the rope over one of the wooden ceiling beams, catching the end and tying it to one of the pipes leading to the bank of radiators under the windows. Stepping back from doing so, you turn to look at the handsome spidertaur, now standing with his human arms pulled above his head. Lightly pulling on the strand holding his wrists and finding it securely anchored, Aelias laughs. 'Trapping a spider in his own web? Ha, I like how you think my little fly. Let's see what you do now that you've got me.' His legs clack on the hardwood floor as he takes a relaxed stance, just waiting for you to take your next step.";
	WaitLineBreak;
	say "     You go and give Aelias a hungry kiss, your tongues exploring each other's mouths. Making out with him is great and you almost forget what you were planning to do, only reluctantly pulling back from the spidertaur's lips. Running your hands down over his muscular human chest, then lower and lower, you cup Aelias's balls and give his hard cock a few slow strokes, then move further back along his body. Smooth skin gives way to even smoother chitin plates, their hard black surfaces shining in the light. Running your hand along his flank, you feel the overlapping plates of his bulging abdomen, moving against each other as he breathes. Finally, you arrive at Aelias's hind end, where you find two soft-looking areas revealing themselves as the protective plates over them are pulled back. The tied-up spidertaur gives you a grin over his shoulder, then theatrically intones in a high-pitched falsetto 'Oh no - someone help me! I'm bound and totally helpless against him! No doubt he'll rub his cock against my spinnerets, knowing how very - very - sensitive they are, then stick his hard cock up my ass! Help!'";
	say "     Following Aelias's playfully delivered instructions, you take your erection in hand and push it against the lower opening in his armor plates, where six small bumps form the silk-producing organ of the spidertaur. They're very soft and sensitive, feeling quite nice against your cock, and Aelias starts to pant and moan the moment you first touch them. Small drops of clear liquid form at the tops of each bump, creating a slippery film on your shaft as you rub up against him. While you grind your crotch against the spidertaur's abdomen, your hands search out the hole a bit further up and push against his pucker, soon sliding in as he relaxes his muscle a bit. You revel in his initial 'Oh? Oh!' and the gasps that follow as you finger his asshole, rising in pitch and urgency until he groans 'I'm soo horny - please, stick it in already!'";
	WaitLineBreak;
	say "     Who could resist such an invitation? Quickly throwing off your clothes, you stand a bit straighter and push down against his abdomen, bringing his opening into perfect alignment for you to enter. With your rock hard [Cock of Player] in hand, you tease the spidertaur a bit - rubbing the tip up and down over his hole and along the edges where skin meets chitin, then pushing slightly against his opening before going back to more rubbing. Only when you have him so hot and bothered that he literally begs you to fuck him do you plunge in, thrusting deep into his back passage in one go. Due to the large size of his arachnid body, his hole is large too, but Aelias manages to grip your shaft pretty tightly with his anal muscles. All in all, your shaft pushing into his body feels quite nice, and as you start thrusting in and out faster, you evoke a whole new level of moans from Aelias.";
	say "     Hitting all the sensitive spots deep inside him, the spidertaur gasps, then shouts for you to fuck him harder. Eagerly complying, you fuck Aelias with abandon, your hips slapping loudly against his arachnid body with the force of your thrusts. Soon, the wild ride you're giving him pushes the spidertaur over the edge and he orgasms, his sphincter gripping your shaft like a vise as a huge load of cum spurts from his human cock in high arches, splashing down on the hardwood floor in a soft patter, creating small sticky puddles. With Aelias's hot hole tight around your cock and creating breathtaking sensations as you fuck him, you soon feel a familiar tingle rise in your balls. Plunging in one last time, you grind your hips against his smooth-plated abdomen and hold on tight as you come, shooting burst after burst of cum deep into his asshole.";
	NPCSexAftermath Aelias receives "AssFuck" from Player;
	WaitLineBreak;
	say "     Panting, you lean against Aelias's bulging abdomen to catch your breath, then slowly pull out and walk around back to his front. As you do so, the spidertaur raises one of his front legs and cuts the strand holding his wrists with one effortless slash, then pulls you against his chest in a tight embrace and starts to make out with you. In between deep kisses, he pants, 'A fun game, my cunning little fly. You're welcome to 'trick' and tie me up again soon...'";

to say AeliasSex5: [player ties Aelias up and jumps his cock]
	say "     Deciding that you want to be the one calling the shots this time, you stealthily walk over to where Aelias keeps a number of coiled up silk ropes and grab one of them. Putting a slip-knot noose on the lightweight rope's end while the spidertaur isn't looking, you hold the bundle behind your back and walk towards him. As he sees you come closer with lust gleaming in your eyes, Aelias says 'Wanna play in my net, my lovely little fly?' He eagerly scuttles closer on his eight legs and you pull his head to yours to share a kiss. Then, while having him distracted with a very pleasurable bit of tongue-wrestling, you bring out the rope and slip it over his wrists, pulling the noose tight with a quick movement.";
	say "     The black-skinned man's white eyebrows rise and a whimsical expression spreads over his face at finding himself tied up like this. He doesn't struggle but simply observes as you then throw the rope over one of the wooden ceiling beams, catching the end and tying it to one of the pipes leading to the bank of radiators under the windows. Stepping back from doing so, you turn to look at the handsome spidertaur, now standing with his human arms pulled above his head. Lightly pulling on the strand holding his wrists and finding it securely anchored, Aelias laughs. 'Trapping a spider in his own web? Ha, I like how you think my little fly. Let's see what you do now that you've got me.' His legs clack on the hardwood floor as he takes a relaxed stance, just waiting for you to take your next step.";
	WaitLineBreak;
	say "     You go and give Aelias a hungry kiss, your tongues exploring each other's mouths. Making out with him is great and you almost forget what you were planning to do, only reluctantly pulling back from the spidertaur's lips. Running your hands down over his muscular human chest, then lower and lower, you cup Aelias's balls and give his hard cock a few slow strokes. Next, you take a step back and quickly strip before quite literally jumping the handsome man, wrapping your arms and legs around him in a tight embrace against his chest. It feels great to be this close together with him - from the muscled shape of his body pressing against yours, the enticing masculine scent, up to the hot and hard presence of his erection poking your crotch. The spidertaur looks down with a grin, then says 'Let me help you with that.' In almost the same moment, you can feel something cool and hard press against your back and buttocks - it's the spider-hybrid's two front legs, carefully working to support you.";
	say "     Aelias holding you like that allows you to lean back against his supporting limbs, freeing up a hand to reach down and take hold of his hard cock. Aligning it with your opening, you slide down on his long shaft, gasping as it spreads the swollen lips of your pussy. 'Yeah, take my dick deep,' the spidertaur moans, eagerly thrusting with his hips to drive his erection all the way into you. After taking a moment to get used to the delightfully full feeling you're getting from having his cock inside to the hilt, you start to rock back and forth, lifting your hips and then grinding them tightly against his crotch again. Riding Aelias's manhood like this makes you both pant and moan in lusty unison, mumbling and gasping how good it feels to be coupled like this. His cock hotly pokes the entrance to your womb in the deeper thrusts and you can feel the chitinous plates of his lower body rubbing against your crotch, always reminding you that it's not just any handsome human you're fucking.";
	WaitLineBreak;
	say "     After being perfectly happy with letting you have the upper hand for quite a while, grinding against him to maximize your own pleasure and reaching your climax twice, at some point the spidertaur gasps 'I'm really close. Gonna fill you up!' With that, you feel his arachnid legs hold on to you tighter, now pushing you to do what he wants - what he needs - instead of just supporting your own movements. Pulling out until only the tip of his cock remains inside you, Aelias then slams it all the way in again and holds you pressed right against his crotch gasping as his cock pulses deep inside you and blasts spurt after spurt of his fertile seed directly into your womb.";
	NPCSexAftermath Aelias receives "PussyFuck" from Player;
	say "     Raising one long leg to effortlessly slash the strand holding his wrists, Aelias frees himself and puts his arms around you, just holding on to you for a while and making out with you. In between deep kisses, he pants, 'A fun game, my cunning little fly. You're welcome to 'trick' and tie me up again soon...'";

to say AeliasSex6: [player ties Aelias up and jerks him off]
	say "     Deciding that you want to be the one calling the shots this time, you stealthily walk over to where Aelias keeps a number of coiled up silk ropes and grab one of them. Putting a slip-knot noose on the lightweight rope's end while the spidertaur isn't looking, you hold the bundle behind your back and walk towards him. As he sees you come closer with lust gleaming in your eyes, Aelias says 'Wanna play in my net, my lovely little fly?' He eagerly scuttles closer on his eight legs and you pull his head to yours to share a kiss. Then, while having him distracted with a very pleasurable bit of tongue-wrestling, you bring out the rope and slip it over his wrists, pulling the noose tight with a quick movement.";
	say "     The black-skinned man's white eyebrows rise and a whimsical expression spreads over his face at finding himself tied up like this. He doesn't struggle but simply observes as you then throw the rope over one of the wooden ceiling beams, catching the end and tying it to one of the pipes leading to the bank of radiators under the windows. Stepping back from doing so, you turn to look at the handsome spidertaur, now standing with his human arms pulled above his head. Lightly pulling on the strand holding his wrists and finding it securely anchored, Aelias laughs. 'Trapping a spider in his own web? Ha, I like how you think my little fly. Let's see what you do now that you've got me.' His legs clack on the hardwood floor as he takes a relaxed stance, just waiting for you to take your next step.";
	WaitLineBreak;
	say "     Stepping in front of him, you do a slow and teasing striptease that leaves the spider-hybrid hot and horny, with a small bead of precum forming at the tip of his shaft and then dripping down on the wooden floor. Confident in your nakedness from the feeling of power it gives you to have the big male panting after you and tied up, you walk towards him with a spring in your step. Putting a hand on his balls, you give them a quick fondle, then move on up to his nipples, which you stroke and softly pitch till they're standing out as hard little nibs on his chest. It's fun to be able to play with him like this, seeing the usually dominant man stretch and squirm as you're pulling back from each little teasing touch and caress, needy for more.";
	say "     As you've tamed yourself a taur (at least in play), you decide to use Aelias as a mount. Grinning widely, you pull yourself up against one of his arachnid legs, then swing up to sit on his back, coming to rest in the natural little dent between his humanoid chest and the bulging abdomen of his rear end. The chitin plates you're sitting on are even relatively comfortable, with a certain flexibility in them, even if they're somewhat cool to the touch. Settling into your position as spidertaur-rider, you stroke your hands down Aelias's muscled back, then slide them around his chest, embracing him from behind.";
	WaitLineBreak;
	say "     Getting back to the light, teasing touches, you pinch your arachnid lover's nipples and caress his muscles, then slowly work your way further down his front. His washboard abs feel pretty nice under your fingers, hard and taut, soon followed by the quite hard and warm pole of his erection as you brush against it and wrap your hand around. You can literally feel a tremble go through Aelias's whole body as you start to jerk him off, tense muscles softening a bit as relief from all his pent-up lust comes into sight. 'Get me off, my lovely prey. I need it,' the spidertaur moans, giving you yourself a nice little tingle of arousal at being in control for once. While your hand grips and moves over his erection, [if Player is male]you grind your own against his lower back, reveling in the silky smooth feeling of his hairless skin[else if Player is female]you start rubbing your pussy with the other hand[else]you grind your genderless crotch against his lower back, reveling in the silky smooth feeling of his hairless skin[end if].";
	say "     It doesn't take much longer before you drive Aelias over the point of no return, gasping and shaking as his cock starts to blast away with thick spurt after spurt of creamy cum, which land with audible splats on the hardwood floor. Just moments after him, you reach your own climax, [if Player is male]your hand gripping your manhood tightly as you spurt your creamy load against Aelias's back, the white cum showing a sexy contrast to his almost black skin[else if Player is female]fingers still deep inside you as you spurt and drip femcum all over his armor-plated back[else]trembling in the grip of lust[end if]. While you're still panting, leaning against the spidertaur's human back as you catch your breath, Aelias raises one long arachnid leg and effortlessly slashes the strand holding his arms, freeing himself. Then he turns his upper body to hook and arm around you, pulling you off his back and around, to hold you against his chest for a deep kiss, which escalates into a small make-out session. In between hungry kisses, he pants, 'A fun game, my cunning little fly. You're welcome to 'trick' and tie me up again soon...'";

Section 5 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Spidertaur Male Infection"	"Infection"	""	Spidertaur Male Infection rule	1000	false

This is the Spidertaur Male Infection rule:
	if Player has a body of "Spidertaur Male":
		trigger ending "Spidertaur Male Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			if Player is male:
				say "Your predatory instincts take over and you make your lair in one of the many empty buildings in the city. Capturing creatures out on the streets, you drag them into your web, proudly hanging them up in cocoons of sticky silk strands. Keeping some females and choice males to impregnate and have some fun with, the rest just serve as stored food for when you get hungry.";
			else if Player is female and "Sterile" is not listed in feats of Player:
				say "Your predatory instincts take over and you make your lair in one of the many empty buildings in the city. Capturing creatures out on the streets, you drag them into your web, proudly hanging them up in cocoons of sticky silk strands. Keeping some choice males to impregnate you and help grow your brood of little spiderlings, the rest just serve as stored food for when you get hungry.";
			else:
				say "Your predatory instincts take over and you make your lair in one of the many empty buildings in the city. Capturing creatures out on the streets, you drag them into your web, proudly hanging them up in cocoons of sticky silk strands. Keeping some choice males and females to have fun with, the rest just serve as stored food for when you get hungry.";
		else:
			say "When the military moves in, you're brought to a holding facility where you get checked out and they give you a shot to make you non-infectious. As your arachnid form's abilities are perfect for exploring ruined buildings and you know your way around, you volunteer to accompany a squad of soldiers back into the city. After several weeks of helping rescue quite a few people and using your webs to subdue others so they can be treated, you're awarded a civilian service medal. Joining a group specialized in disaster rescue afterwards, your heroic deeds all over the world do a lot to improve the reputation of spiders in general, away from the 'creepy-crawly to be squished' image.";
	if humanity of Player > 10:
		if SpidertaurRelationship is 2:
			say "     Sometimes at night in your dreams, your thoughts stray back to the encounter you had with the spidertaur in the city. Reliving him fucking you in an incredibly erotic dream, you awaken breathless and horny, the memory of his silken strands against your skin fresh in your mind, incredibly soft yet holding you tightly. You almost wish you could meet him again...";
			say "     Without knowing anything about him, not even his name or if he made it out of the city at all, sadly, it remains a futile thought. The only thing you can do, in the end, is buy some silken sheets for your bed, to meet him again in your dreams.";
		else if SpidertaurRelationship is 3:
			say "     At night in your dreams, your thoughts often stray back to the encounters you had with the spidertaur in the city. Reliving him fucking you in incredibly erotic dreams, you awaken breathless and horny, the memory of his silken strands against your skin fresh in your mind, incredibly soft yet holding you tightly. You almost wish you could meet him again...";
			say "     Without knowing anything about him, not even his name or if he made it out of the city at all, sadly, it remains a futile thought. Some time later, as you're out to buy some things, you find yourself thinking about sex with the spidertaur again, prompting you to get several beautiful silk ropes. They serve you well in spicing up your sex life with other partners, although you still dream about getting together with your spidertaur lover.";
		else if SpidertaurRelationship > 3:
			say "     At night in your dreams, your thoughts often stray back to your encounters with Aelias the spidertaur. Reliving him fucking you in an incredibly erotic dream, you awaken breathless and horny, the memory of his silken strands against your skin fresh in your mind, incredibly soft yet holding you tightly. The urge - the need - to see him again, feel him inside you once more, drives you to go back to the containment zone around the city.";
			say "     Being among the untold thousands searching for people they lost, it takes days, then weeks, for you to check the records and talk to people at each of the multiple holding facilities set up around the city. You find your hopes dashed again and again, almost breaking off the search - until you meet a pair of army medics in one of the local bars. 'Spider-hybrid you say, big guy, white hair? Wasn't there someone like that a while ago, Jimmy?' 'Yeah, he was pretty intense too. The counselors had quite a time explaining to him he can't just grab anyone off the streets whenever he wants. Then suddenly Danny, that private from the 5th, spoke up and told spidy about a club for people who like bondage and... stuff. Never knew he swung that way.'";
			say "     After that, it's just a question of following the trail. That very night, you make your way to the entrance of a popular nightclub called 'Arachne's Web', joining the crowd dancing to loud, rhythmic music. There are several platforms anchored with many web strands in the upper reaches of the main room and you can see large, eight-legged shapes moving on them, entwined with human or at least humanoid others. Then you hear someone call your name, which draws your attention to the bar, where Aelias is just handing someone his drink, then moves out from behind it to meet you. In a reunion that doesn't need words, you embrace each other, then start making out right in the middle of the crowd. Coming up for air, he asks 'Will you walk into my parlor, my lovely fly?', shouting to be heard above the music.";
			say "     Hand in hand with your spidertaur lover, you walk to his nearby place, fearlessly entering the dominant male's web. Being with him again after your temporary separation feels amazing, more than fulfilling your needs and desires. It's a night to remember, and you return again and again on other days to join him in his silken nest, or let him 'catch' you in his parlor.";

Spidertaur Male ends here.
