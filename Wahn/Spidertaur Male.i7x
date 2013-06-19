Version 2 of Spidertaur Male by Wahn begins here.
[Version 2 - Relationship progress through submitting, silk hammock]

"Adds a Spidertaur to Flexible Survival's Wandering Monsters table, with impregnation chance."
[Description text for this Extension.]

[ SpidertaurRelationship - relationship and quest variable         ] 
[   0: never met                                                   ]
[   1: initial encounter done, no player submission yet            ]
[   2: player submitted once                                       ]
[   3: player submitted twice                                      ]
[   4: player submitted three or more times                        ]
[   5: player got a spidersilk hammock as a present                ]

SpidertaurRelationship is a number that varies.

Section 1 - Monster Responses

when play begins:
	add { "Spidertaur" } to infections of guy;
	
to say Spidertaur_Wins:
	if hp of player > 0:    [player submits]
		if SpidertaurRelationship is 1:	[never submitted]
			say "     As you lower your hands and stop resisting, the spidertaur gives you an interested glance. 'Well well', he says 'what do we have here. You don't even want to struggle? Too weak - or do you maybe even like being tied up?' His large form scuttles closer on surprisingly quick, spidery legs until he's right in front of you. He then reaches out to stroke your chin and runs his hand down your chest. 'Not bad, prey.' he says, then adds 'Now how about you give me a nice little show.' with a small tug on your clothes.";
			say "     Under the watching eyes of the spidertaur, you slowly start to undress, taking of your clothes bit by bit and doing poses to show off your body. Seems like your striptease is giving the spidertaur quite a bit of arousal, as you can see the chitinous plates between his legs bulge outward a bit, then get pulled aside as his manhood rises to full hardness. And as horny as you've made him, he isn't in the mood to wait much longer. Before you're even completely naked, he starts spinning long strands of webbing with which he ties you up. You end up standing there in the alley, mostly naked, arms spread out to the sides, they and your body held by soft but surprisingly tough silk threads.";				
			say "     [SpidertaurAlleySex]";
			increase SpidertaurRelationship by 1;
		otherwise if SpidertaurRelationship is 2:	[submitted once]
			say "     As you lower your hands and stop resisting, the spidertaur gives you an interested glance. 'Well well', he says 'you just can't stay away, can you? Seems you like being tied up.' His large form scuttles closer on surprisingly quick, spidery legs until he's right in front of you. He then reaches out to stroke your chin and runs his hand down your chest. 'Not bad, prey.' he says, then adds 'Now how about you give me a nice little show.' with a small tug on your clothes.";
			say "     Under the watching eyes of the spidertaur, you slowly start to undress, taking of your clothes bit by bit and doing poses to show off your body. Seems like your striptease is giving the spidertaur quite a bit of arousal, as you can see the chitinous plates between his legs bulge outward a bit, then get pulled aside as his manhood rises to full hardness. And as horny as you've made him, he isn't in the mood to wait much longer. Before you're even completely naked, he starts spinning long strands of webbing with which he ties you up. You end up standing there in the alley, mostly naked, arms spread out to the sides, they and your body held by soft but surprisingly tough silk threads.";				
			say "     [SpidertaurAlleySex]";
			increase SpidertaurRelationship by 1;
		otherwise if SpidertaurRelationship is 3:	[submitted twice]
			say "     As you lower your hands and stop resisting, the spidertaur gives you a lusty grin. 'Back for more, my lovely little fly?' he says, scuttling closer on his eight legs and stroking his hand along your cheek. 'I knew you couldn't resist coming to me again. Come, I've got a surprise for you.' Taking you by the hand, he leads you towards a nearby abandoned building. After passing through a room stuffed full with enough furniture for two, you find yourself in a spidertaur's love nest. Many many strands of webbing a stretched all over the emptied out room, holding some bundles and cocooned objects. In the midst of it all is a kind of large silken sling, held in the air by quite a few of the resilient strands.";
			say "     'Here, feel that' the spider-hybrid says, putting your hand on the incredibly soft material of the sling. He undresses you, removing all your clothes and throwing them over nearby strands to keep them off the floor. Finally, with you now bare-ass naked, he twirls you around, pushing softly against your chest so you fall right into the sling. Then he takes your arms and binds them with several strands over your head, kissing your lips as he finishes and moves further down your body.";
			say "     [SpidertaurSlingSex]";
			increase SpidertaurRelationship by 1;	
		otherwise if SpidertaurRelationship > 3:	[submitted 3+ times]
			say "     As you lower your hands and stop resisting, Aelias says 'Not in the mood to play struggling prey today, my lovely little fly?' and scuttles closer on his eight legs to embrace you, his lips finding yours in an eagerly returned kiss while his hands roam over your body. As he comes up for air after a bit of making out, he continues with 'Well, then - come join me in my web', taking you by the hand and guiding you to a well-prepared love-nest in one of the nearby abandoned buildings.";
			say "     The room your spidertaur lover brings you to has many long web strands stretched all over it, most of them holding a large silken sling in the center. You let yourself be led towards it, with him pulling off your clothes as you go along, throwing them over nearby strands to keep them off the floor. Finally, when you're standing bare-ass naked in front of the sling, you slide into it, leaning back to lie on the incredibly soft, yet resilient material. Snuggling into the silky web, you let your gaze roam over Aelias hard cock and muscled upper body, then meet his eyes with a lusty, need-filled look. Smiling at your unspoken invitation, the spidertaur takes your arms and binds them with several strands over your head, kissing your lips as he finishes and moves further down your body.";
			say "     [SpidertaurSlingSex]";
	otherwise:	[player loses]	
		say "     As you fall to the ground beaten, the spidertaur pins you to the floor with his legs and quickly binds you down with strands of tough spidersilk. With you now helpless on your back, he stands over you as if to show off his half-arachnid body, a hungry smile on his face. You see chitinous plates between his legs bulge outward a bit, then get pulled aside as his manhood rises to full hardness.";				
		if SpidertaurRelationship is 1:	[never submitted]
			say "     He says 'You're caught, little fly. Now it's time for some fun' then lowers his body a bit and rubs his erection against your face. Not having much choice, you open up as he pushes it against your lips, then suck on his cock and run your tongue over it. 'Not bad, prey. Not bad. But let's see what else you have to offer.' With that, he turns around, first his legs and then the shiny black plates of his abdomen coming into your field of view. You feel him loosen several strands holding your lower body, followed by your legs being raised and spread.";
		otherwise if SpidertaurRelationship is 2:	[submitted once]
			say "     He says 'Still resisting, little fly? Just remember how good it felt to submit in my web...' He leers down at your body, then continues 'You'll learn in time, and until you do, your struggles just build my... appetite.' Looking down, you see his fully hard erection throb, making it very clear what hunger he wants you to sate.";
			say "     The spidertaur lowers his body a bit and rubs his cock against your face. Not having much choice, you open up as he pushes it against your lips, then suck on his cock and run your tongue over it. 'Not bad, prey. Not bad. But let's see what else you have to offer.' With that, he turns around, first his legs and then the shiny black plates of his abdomen coming into your field of view. You feel him loosen several strands holding your lower body, followed by your legs being raised and spread.";
		otherwise if SpidertaurRelationship is 3:	[submitted twice]
			say "     He says 'Here we go, my little fly. Haven't you learned yet that resistance is futile? But then, maybe you like this little game as much as I do.' He leers down at your body, then continues 'Fighting me, imagining you can win, then coming to struggle in my web strands in the end. Great fun to catch you, and that builds my... appetite.' Looking down, you see his fully hard erection throb, making it very clear what hunger he wants you to sate.";
			say "     The spidertaur lowers his body a bit and rubs his cock against your face. Not having much choice, you open up as he pushes it against your lips, then suck on his cock and run your tongue over it. 'Not bad, prey. Not bad. But let's see what else you have to offer.' With that, he turns around, first his legs and then the shiny black plates of his abdomen coming into your field of view. You feel him loosen several strands holding your lower body, followed by your legs being raised and spread.";			
		otherwise if SpidertaurRelationship > 3:	[submitted 3+ times]
			say "     He says 'You lose, my little fly. I love that you sometimes try to resist me, even after all the fun we had.' He leers down at your body, then leans forward and kisses your lips, stroking a hand along your cheek before he continues 'Let's go on with our little game then. I've caught you, prey. So now's the time to have some fun. Your struggles have built up my... appetite.' Trying to act in character, you struggle weakly against your bonds, though your anticipation must be very clear on your face as you looking down and see his fully hard erection throb.";
			say "     The spidertaur lowers his body a bit and rubs his cock against your face. Keeping up the play of being an unwilling participant, you keep your mouth closed for a few moments, then finally slide your lips over his shaft, sucking it and teasing it with the tip of your tongue. 'Not bad, prey. Not bad. But let's see what else you have to offer.' With that, he turns around, first his legs and then the shiny black plates of his abdomen coming into your field of view. You feel him loosen several strands holding your lower body, followed by your legs being raised and spread.";			
		say "[SpidertaurWinSex]";
		
to say SpidertaurAlleySex:		
	say "[WaitLineBreak]";
	if cunts of player > 0:
		say "     Coming up from behind, the spidertaur puts his arms around you, running his hands over your chest and lightly pinching your nipples. You can feel his soft skin against your back and the warm rod of his cock poke your ass. He moves one of his hands down to your crotch, touching your sensitive pussy lips, then spreading them and pushing two fingers into your body, eliciting an involuntary moan from you. He chuckles, then says 'A sweet pussy, just waiting to be filled by me. I won't leave you waiting much longer...' and scuttles around you to get into position before you.";
		say "     [line break]";
		say "     Using his two front legs, he lifts your lower body from the ground, leaving you hanging from the webbing as he proceeds to pull off your last articles of clothing. When you're finally completely naked, he spreads your legs wide, grabbing your buttcheeks as he moves close against you. His hard rod pushes hotly against your pussy lips, then in between them, accompanied by the spidertaur's satisfied moan as he pushes forward and enters your body. He slides deeper slowly but surely, grinning at you as the feeling of his shaft rubbing your insides makes you gasp. Soon he's all the way in, his cock poking the entrance to your womb and you can feel the chitinous plates of his lower body against your crotch. Giving your buns a squeeze with his human hands, he then starts to thrust in and out, fucking you with deep strokes.";
		say "[WaitLineBreak]";		
		say "     Pulling out till only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum directly into your womb.[fimpregchance]";
	otherwise if cocks of player > 0:
		say "     Coming up from behind, the spidertaur puts his arms around you, running his hands over your chest and lightly pinching your nipples. You can feel his soft skin against your back and the warm rod of his cock poke your ass. He moves one of his hands down to your crotch, stroking over your cock and balls, then taking hold of your shaft and jerking it, getting you to full hardness quickly. [if cock length of player < 5]'A bit small, little man. I'll show you what a real cock feels like...'[otherwise if cock length of player < 12]'Nice equipment, prey. But today, you won't be using it...'[otherwise if cock length of player > 11]'Oh, a big boy indeed. Guys like you always squeal the loudest when I fuck them...'[end if] With that, he gives your balls a squeeze, then moves his hands back to grope your buns and pull them apart to reveal your hole.";
		say "     [line break]";
		say "     He puts two fingers in his mouth to wet them, then puts them against your pucker and presses forward, slowly increasing his pressure until your muscle yields and allows him in. Hanging from the silken web strands, you're treated to several minutes of him stretching and rubbing your insides, aching to have your hands free to stroke your own cock as it starts dribbling precum from the stimulation. Then suddenly, he pulls out his fingers in a swift move, with your sigh at the sudden empty feeling transformed into a loud gasp as he rams his hard cock in your open hole. Sliding into your body all the way until you can feel the chitinous plates of his lower body against your ass, he holds still like that for a moment.";
		say "     'Feel that, my little fly? It's extra hard for you - and you better get used to it quickly.' As he waits a little while for you to get used to the invading member in your ass, he strokes your chest with his hands and whispers into your ear. 'I love catching men. All those tough guys who think they can make it out on the streets, struggling in my web and creaming themselves as they get fucked.' He gives your cock a slow stroke, chuckling 'Let's see how you do...' Then your respite is over and the spider hybrid starts to thrust in and out, fucking you with deep strokes.";
		say "[WaitLineBreak]";		
		say "     Pulling out till only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation overwhelms your ability to hold back and as he bottoms out inside you again, your own cock starts to throb as spurt after spurt of cum jet from its tip, splattering on the ground of the alley.";
		say "     The spidertaur stops for a moment, leaning forward to look over your shoulder. 'See - you liked it, prey.' he says, then uses a finger to wipe the last fading spurt of cum from your slit and licks it off. He adds 'You taste quite nice too... too bad we're so far away from my lair - or I'd add to you my larder', then starts thrusting in and out again.";
		say "     After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.[mimpregchance]";
	otherwise:
		say "     Coming up from behind, the spidertaur puts his arms around you, running his hands over your chest and lightly pinching your nipples. You can feel his soft skin against your back and the warm rod of his cock poke your ass. He moves one of his hands down to your crotch, feeling for your genitals, then groping around some more as he doesn't find any. He scuttles around to your front, looking at your blank crotch. 'What the...? I thought you just had a small pussy, not... this. What strange prey you are, not even properly equipped. Well, at least there's still one hole I can enjoy. Let's start right now...' and scuttles around you to get back into position.";
		say "     [line break]";
		say "     Groping your buns, he spreads them a bit to reveal your hole. He puts two fingers in his mouth to wet them, then puts them against your pucker and presses forward, slowly increasing his pressure until your muscle yields and allows him in. Hanging from the silken web strands, you're treated to several minutes of him stretching and rubbing your insides, aching to have your hands free to stroke your body as it struggles with the increasing arousal that can't be expressed by a neuter. Then suddenly, the spidertaur pulls out his fingers in a swift move, with your sigh at the sudden empty feeling transformed into a loud gasp as he rams his hard cock in your open hole. Sliding into your body all the way until you can feel the chitinous plates of his lower body against your ass, he holds still like that for a moment.";		
		say "     'Feel that, my little fly? It's extra hard for you - and you better get used to it quickly.' As he waits a little while for you to get used to the invading member in your ass, he strokes your chest with his hands and whispers into your ear. 'So, you poor sexless beast - let me show you how to properly fuck someone. Maybe you get lucky and grow a cock after this.' Then your respite is over and the spider hybrid starts to thrust in and out, fucking you with deep strokes.";
		say "[WaitLineBreak]";			
		say "     Pulling out till only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.[mimpregchance]";
	say "     [line break]";
	say "     [SpidertaurPostSex]";
			
to say SpidertaurSlingSex:		
	say "[WaitLineBreak]";
	if cunts of player > 0:
		say "     Continuing going lower, he teases your nipples with his tongue, then strokes his hands along your sides and arrives at your pussy. Spreading it with his fingers, he sets to work eating you out, his tonguework making you moan in pleasure. Your bound arms tremble with the desire to stroke yourself as he stops from time to time, only running his hands slowly over your legs and chest and revelling in being in control over your pent-up need. Kept hot and bothered for quite a while, you're soon pleading, even begging for him to touch you. The spidertaur lets you continue for a moment longer, then chuckles and moves himself close against you, letting his erection rest hotly against your crotch.";
		say "     [line break]";
		say "      'You want this inside you?' he asks, putting the tip of his shaft against your pussy lips and rubbing it up and down over it. His touch against your sensitive folds makes you moan 'Yes! Fuck me!' as an answer, to the very satisfied grin of the spidertaur. He immediately takes hold of your legs and thrusts forward, sinking his manhood deep into your wet and ready pussy. Keeping going until he bottoms out, his cock poking the entrance to your womb and the chitinous plates of his lower body touching your crotch, he leans forward and gives you a kiss on the lips. Straightening his humanoid upper body again after that, he gives you a smile and starts to thrust in and out, fucking you with deep strokes.";
		say "[WaitLineBreak]";		
		say "     Pulling out till only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum directly into your womb.[fimpregchance]";
	otherwise if cocks of player > 0:
		say "     Continuing going lower, he teases your nipples with his tongue, then strokes his hands along your sides and arrives at your crotch. Stroking over your cock and balls, then taking hold of your shaft and jerking it, getting you to full hardness quickly. He continues to stroke you, fondling your balls with his other hand and getting you pretty fired up, with precum leaking from the tip of your shaft. Then he slows down, only lazily moving his hand, to keep you going at that level. As this continues for several minutes, you bound arms tremble with the desire to take over and jerk off, much to the amusement of the spidertaur as he revels in being in control over your pent-up need. Soon you're pleading, even begging for him to touch you some more. The spidertaur lets you continue for a moment longer, then chuckles and moves himself close against you, letting his erection rest hotly against your crotch.";
		say "     [line break]";
		say "      'You'll get off when I fuck you. Do you want me inside you?' he says, putting the tip of his shaft against your pucker and rubbing it up and down over it, then teasingly pressing against it. His touch makes you moan 'Yes! Fuck me!' as an answer, to the very satisfied grin of the spidertaur. He immediately takes hold of your legs and thrusts forward, sinking his manhood deep into your tight hole. Keeping going until he bottoms out, his cock resting deep inside your ass, he leans forward and makes out with you to give you some time to get used to having him inside you. After a while, he straightens his humanoid upper body again, giving you a smile as he starts to thrust in and out, fucking you with deep strokes.";
		say "[WaitLineBreak]";		
		say "     Pulling out till only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation overwhelms your ability to hold back and as he bottoms out inside you again, your own cock starts to throb as spurt after spurt of cum jet from its tip, splattering on your own chest.";
		say "     The spidertaur stops for a moment, leaning forward to put his face close to yours. 'Admit it - you love to get fucked by me.' As he thrusts forward again in just that moment, you can only moan in pleasure as an answer. He proceeds to take up some of your cum from your chest with his fingers, then licking it off them. 'Mmmmh, you're just an amazing catch.' he says, leaning forward to kiss you deeply, allowing you to taste your own cum on his lips.";
		say "     Getting back to fucking you hot and hard, it's not too much longer until he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.[mimpregchance]";
	otherwise:
		say "     Continuing going lower, he teases your nipples with his tongue, then strokes his hands along your sides and arrives at your crotch. Stroking over your pubic area, genderless but nevertheless quite sensitive, he gets you pretty fired up, a tingling feeling spreading through your whole body. Then he slows down, only lazily moving his hand, to keep you going at that level. As this continues for several minutes, you bound arms tremble with the desire to take over and stroke yourself, much to the amusement of the spidertaur as he revels in being in control over your pent-up need. Soon you're pleading, even begging for him to touch you some more. The spidertaur lets you continue for a moment longer, then chuckles and moves himself close against you, letting his erection rest hotly against your crotch.";
		say "     [line break]";
		say "      'You'll get off when I fuck you. Do you want me inside you?' he says, putting the tip of his shaft against your pucker and rubbing it up and down over it, then teasingly pressing against it. His touch makes you moan 'Yes! Fuck me!' as an answer, to the very satisfied grin of the spidertaur. He immediately takes hold of your legs and thrusts forward, sinking his manhood deep into your tight hole. Keeping going until he bottoms out, his cock resting deep inside your ass, he leans forward and makes out with you to give you some time to get used to having him inside you. After a while, he straightens his humanoid upper body again, giving you a smile as he starts to thrust in and out, fucking you with deep strokes.";
		say "[WaitLineBreak]";		
		say "     Pulling out till only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation causes an incredible feeling inside you to build, your whole body shaking as bliss fills every last bit of you.";
		say "     The spidertaur stops for a moment, leaning forward to put his face close to yours. 'Admit it - you love to get fucked by me.' As he thrusts forward again in just that moment, you can only moan in pleasure as an answer. 'Mmmmh, you're just an amazing catch.' he says, leaning forward to kiss you deeply.";
		say "     Getting back to fucking you hot and hard, it's not too much longer until he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.[mimpregchance]";
	say "     [WaitLineBreak]";
	say "     [SpidertaurPostSex]";	
									
to say SpidertaurWinSex:
	if cunts of player > 0:
		say "     Running one of his human hands over your crotch, then pushing two fingers into your pussy, he says 'A sweet pussy, just waiting to be filled by me. I won't leave you waiting any more...' and scuttles around you to get into position.";
		say "     [line break]";
		say "     You feel his hard rod against your pussy lips, pushing forward and entering your body. He slides deeper slowly but surely, grinning down at you as the feeling of his shaft rubbing your insides makes you moan. Soon he's all the way in, his cock poking the entrance to your womb and you can feel the chitinous plates of his lower body against your crotch. Stroking your legs with his human hands, he then starts to thrust in and out, fucking you with deep strokes.";
		say "     Pulling out till only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum directly into your womb.[fimpregchance]";
	otherwise if cocks of player > 0:
		say "     Running one of his human hands over your crotch, then taking hold of your cock and stroking it a few times, he says 'It's always fun to see male prey moan and beg before they cream themselves when I fuck their asses. Let's start right now...' and scuttles around you to get into position.";
		say "     [line break]";
		say "     You feel his hard rod against your asshole, pushing forward until your pucker yields to the pressure and allows him in. He slides deeper slowly but surely, grinning down at you as the feeling of his shaft rubbing your insides makes you moan. Soon he's all the way in, his cock poking pleasure spots you didn't know you had, and you can feel the chitinous plates of his lower body against your crotch. Stroking your legs with his human hands, he then starts to thrust in and out, fucking you with deep strokes.";
		say "     Pulling out till only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation overwhelms your ability to hold back and as he bottoms out inside you again, your own cock starts to throb as spurt after spurt of cum jet from its tip all over yourself and the silken bonds holding you.";
		say "     The spidertaur stops for a moment and leans his upper body forward to look into your face. 'See - you liked it, prey.' he says, then gathers some of your cum in his hand and licks it off. He adds 'You taste quite nice too... too bad we're so far away from my lair - or I'd add to you my larder', then starts thrusting in and out again.";
		say "     After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.[mimpregchance]";
	otherwise:
		say "     Running one of his human hands over your smooth crotch, he says 'What the...? Strange prey, you aren't even properly equipped. Well, at least there's still one hole I can enjoy. Let's start right now...' and scuttles around you to get into position.";
		say "     [line break]";
		say "     You feel his hard rod against your asshole, pushing forward until your pucker yields to the pressure and allows him in. He slides deeper slowly but surely, grinning down at you as the feeling of his shaft rubbing your insides makes you moan. Soon he's all the way in, his cock poking pleasure spots you didn't know you had, and you can feel the chitinous plates of his lower body against your crotch. Stroking your legs with his human hands, he then starts to thrust in and out, fucking you with deep strokes.";
		say "     Pulling out till only the tip of his cock remains inside you, then slamming it all the way in again, he has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. After some more hot and hard fucking, he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.[mimpregchance]";
	say "     [WaitLineBreak]";
	say "     [SpidertaurPostSex]";
	
to say SpidertaurPostSex:
	if hp of player > 0:    [player submits]
		if SpidertaurRelationship is 1:	[never submitted]
			if cunts of player > 0:
				say "     Satisfied, the spidertaur pulls out of you, lowering your legs to the ground, though it's debatable if you're really standing on your own or still hanging from the strands, as shaky as they are after that workout. Stalking backwards on eight spindly legs, he lets his gaze wander over you, a grin spreading over his face as he looks at the trickle of cum running out of your pussy and down your leg. 'You're a nice little catch - just right for me to fuck and so accommodating. Which puts me in a good mood right now.' With a sudden flash of movement, he cuts the web strands holding you with the claws at the end of a long spider-leg, making you collapse onto the pile of your clothes on the ground. 'There, you're free to go. And ready yourself for another round when we meet next.' With that, he scuttles up the wall and on top of the nearest building. With a last leering look down at your cum-dripping body, he vanishes over the edge of the roof.";
			otherwise:
				say "     Satisfied, the spidertaur pulls out of you, giving your ass a little slap before he moves around to stand in front of you. He lets his gaze wander over you, a grin spreading over his face as he looks at the trickle of cum running down the inside of your right leg and your softening erection. 'You're a nice little catch - just right for me to fuck and so accommodating. Which puts me in a good mood right now.' With a sudden flash of movement, he cuts the web strands holding you with the claws at the end of a long spider-leg, making you collapse onto the pile of your clothes on the ground. 'There, you're free to go. And ready yourself for another round when we meet next.' With that, he scuttles up the wall and on top of the nearest building. With a last leering look down at your cum-dripping body, he vanishes over the edge of the roof.";				
		otherwise if SpidertaurRelationship is 2:	[submitted once]
			if cunts of player > 0:			
				say "     Satisfied, the spidertaur pulls out of you, lowering your legs to the ground, though it's debatable if you're really standing on your own or still hanging from the strands, as shaky as they are after that workout. Stalking backwards on eight spindly legs, he lets his gaze wander over you, a grin spreading over his face as he looks at the trickle of cum running out of your pussy and down your leg. 'You're a nice little catch - just right for me to fuck and so accommodating. Which puts me in a good mood right now.' With a sudden flash of movement, he cuts the web strands holding you with the claws at the end of a long spider-leg, making you collapse onto the pile of your clothes on the ground. 'There, you're free to go. And ready yourself for another round when we meet next.' With that, he scuttles up the wall and on top of the nearest building. With a last leering look down at your cum-dripping body, he vanishes over the edge of the roof.";
			otherwise:
				say "     Satisfied, the spidertaur pulls out of you, giving your ass a little slap before he moves around to stand in front of you. He lets his gaze wander over you, a grin spreading over his face as he looks at the trickle of cum running down the inside of your right leg and your softening erection. 'You're a nice little catch - just right for me to fuck and so accommodating. Which puts me in a good mood right now.' With a sudden flash of movement, he cuts the web strands holding you with the claws at the end of a long spider-leg, making you collapse onto the pile of your clothes on the ground. 'There, you're free to go. And ready yourself for another round when we meet next.' With that, he scuttles up the wall and on top of the nearest building. With a last leering look down at your cum-dripping body, he vanishes over the edge of the roof.";	
		otherwise if SpidertaurRelationship is 3:	[submitted twice]
			say " Satisfied, the spidertaur pulls out of you, lowering your legs to dangle over the edge of the silken sling you're lying on and stroking your body. Then he reaches up to loosen the strands holding your arms, freeing them. He moves back a bit, allowing you to climb out of the soft spidertaur-silk construct. He plucks a towel from high up in the many strands in the room, handing it to you. As he watches your naked body move when you clean up a bit, he bites his lip, then seems to come to a decision. 'You've quickly become my favorite prey, you know. I'll tell you my name - I'm Aelias. You should know that I don't share that usually. Only with you.' Moving closer, he pulls you into an embrace, making out with you.";
			say "     Some time later, with you fully dressed again, the spidertaur leads you back to one of the main roads in this part of the city, then climbs a wall and vanishes over the edge of a roof.";
		otherwise if SpidertaurRelationship > 3:	[submitted 3+ times]
			say "     Satisfied, the spidertaur pulls out of you, lowering your legs to dangle over the edge of the silken sling you're lying on and stroking your body. Then he reaches up to loosen the strands holding your arms, freeing them, after which you pull him down on top of you, holding Aelias muscled body against your chest and stroking his soft skin. You moan 'You can tie me up anytime', rubbing yourself against him and the silken fabric under you. 'I'll hold you to that' he says, then moves back a bit, allowing you to climb out of the soft spidertaur-silk construct. Aelias plucks a towel from high up in the many strands in the room, handing it to you. As he watches your naked body move when you clean up a bit, he gives you an appreciative look. 'You're my absolutely favorite prey, you know. Handsome and amazing.' Moving closer, he pulls you into an embrace, making out with you.";
			if SpidertaurRelationship is 4:
				increase SpidertaurRelationship by 1;
				increase carried of silk hammock by 1;
				say "     [line break]";
				say "     Coming up for air after a while, he says 'I've got something for you.' and moves through the web strands to pull a bundle from up high between them. At first you think he's got something wrapped up in a large sheet of woven silk, then you recognize what it is by the two stabilizing rods at the ends - a hammock, made of real silk. 'Sleep well in this part of my web, my little fly.' he says as he hands it to you. The whole bundle is surprisingly light and you're sure it'll come in really handy when you're out in the city.";
			say "     [line break]";			
			say "     Some time later, with you fully dressed again, the spidertaur leads you back to one of the main roads in this part of the city. 'Until next time', you tell him, giving him a goodbye kiss, then watch as he climbs a wall and vanishes over the edge of a roof.";
	otherwise:	[player loses]	
		if SpidertaurRelationship is 1:	[never submitted]
			say "     Satisfied, the spidertaur pulls out of you, then steps over you again so you can see almost all of his hybrid body. 'You're a nice little catch - just right for me to fuck. You know what - I'll give you a chance... let's see if you can free yourself before another creature comes along.' With a quick move of one of his legs, he slashes the strands holding your left arm, then scuttles up the wall and on top of the nearest building. With a last leering look down at your cum-dripping body, he vanishes over the edge of the roof.";
			say "     Thankfully, you manage to free yourself from the tough strands of spiderweb before any new creature finds you. After cleaning up as good as you can, you continue your journey through the dangerous streets of the city.";
		otherwise if SpidertaurRelationship is 2:	[submitted once]
			say "     Satisfied, the spidertaur pulls out of you, then steps over you again so you can see almost all of his hybrid body. 'You're a nice little catch - just right for me to fuck, both when you struggle and when you submit. You know what - I like having prey like you around, so I'll give you a chance... let's see if you can free yourself before another creature comes along.' With a quick move of one of his legs, he slashes the strands holding your left arm, then scuttles up the wall and on top of the nearest building. With a last leering look down at your cum-dripping body, he vanishes over the edge of the roof.";
			say "     Thankfully, you manage to free yourself from the tough strands of spiderweb before any new creature finds you. After cleaning up as good as you can, you continue your journey through the dangerous streets of the city.";
		otherwise if SpidertaurRelationship is 3:	[submitted twice]
			say "     Satisfied, the spidertaur pulls out of you, then steps over you again so you can see almost all of his hybrid body. 'You're becoming my favorite prey. Finding you, then catching you or just having you join me for sex. I'm looking forward to next time...' he says, then slashes the strands holding your left arm with one of his long legs. As you start freeing yourself, he scuttles up the wall and on top of the nearest building. With a last leering look down at your cum-dripping body, he vanishes over the edge of the roof.";
		otherwise if SpidertaurRelationship > 3:	[submitted 3+ times]	
			say "     Satisfied, the spidertaur pulls out of you, then steps over you again so you can see almost all of his hybrid body. 'I love catching you, having you, fucking you, my little fly.' he says, then slashes the strands holding you one after another. Reaching down to help you up, he pulls you into a close embrace, making out with you hungrily while his left hand moves down to squeeze your ass. 'Can't wait for the next time you stray into my hunting grounds.' With that, Aelias scuttles up the wall and on top of the nearest building. With a last look down at your cum-dripping body and you waving goodbye, he vanishes over the edge of the roof.";

to say Spidertaur_Loses:
	if SpidertaurRelationship is 1:	[never submitted]
		say "     As you land another blow on the spidertaur, he steps back and gives you a reluctant nod. Saying 'You're stronger than expected. Oh well, maybe another time...' he swiftly turns around and sprays webbing into your face. Even though you immediately rip it off again, the moment you couldn't see was enough time for the hybrid creature to climb the wall of the nearest building. With a last glare down at you, he vanishes over the edge and you hear his legs scuttle over the roof.";
	otherwise if SpidertaurRelationship is 2:	[submitted once]
		say "     As you land another blow on the spidertaur, he steps back and gives you a curious look. 'Why so tough now? Does the memory of spreading your legs for me haunt you? Oh well, I'll catch you another time and you'll learn how prey should act...' He swiftly turns around and sprays webbing into your face. Even though you immediately rip it off again, the moment you couldn't see was enough time for the hybrid creature to climb the wall of the nearest building. With a last glare down at you, he vanishes over the edge and you hear his legs scuttle over the roof.";
	otherwise if SpidertaurRelationship is 3:	[submitted twice]
		say "     As you land another blow on the spidertaur, he steps back and rubs his side, looking annoyed. 'What's with the mixed messages? One moment you're spreading your legs for me, then you try to beat me up. Well, I'm not into prey getting uppity, so decide what you want before the next time...' He swiftly turns around and sprays webbing into your face. Even though you immediately rip it off again, the moment you couldn't see was enough time for the hybrid creature to climb the wall of the nearest building. With a last glare down at you, he vanishes over the edge and you hear his legs scuttle over the roof.";
	otherwise if SpidertaurRelationship > 3:	[submitted 3+ times]
		say "     As you land another blow on the spidertaur, Aelias steps back and rubs his side, looking angry and annoyed. 'That actually hurt. Are you trying to beat me? This isn't how our game is supposed to go and I'm not having it!' He swiftly turns around and sprays webbing into your face. Even though you immediately rip it off again, the moment you couldn't see was enough time for the hybrid creature to climb the wall of the nearest building. With a last glare down at you, he vanishes over the edge and you hear his legs scuttle over the roof.";

to say Spidertaur_Desc:
	say "     You hear something above you and look up - just in time to see a large spidertaur as he drops down behind you from the wall of the nearest building. His lower body consists of the legs and abdomen of a big spider, sheathed in gleaming black chitin, while his upper body looks human, with rippling muscles under black skin. He has pale-white hair, bound together as a long ponytail behind his back.";		
	if SpidertaurRelationship is 0: [first meeting]
		say "     A grin spreads over his sharp features as he sees you get ready to defend yourself 'Excellent - I like when the prey struggles a bit.'";
		now SpidertaurRelationship is 1;
	otherwise if SpidertaurRelationship is 1:	[never submitted]
		say "     A cruel expression runs over his sharp features as he recognizes you. 'You can struggle if you want, prey - it'll make catching you even sweeter in the end.'";
	otherwise if SpidertaurRelationship is 2 or SpidertaurRelationship is 3:	[submitted once/twice]
		say "     A lusty grin comes over his sharp features as he recognizes you. 'You again, little prey. Have you learned to submit by now, or do I have to catch you? Not that I don't enjoy both...'";
	otherwise if SpidertaurRelationship > 3:	[submitted 3+ times]	
		say "     A lusty grin comes over Aelias sharp features as he recognizes you. 'If it isn't my very favorite prey. What will it be this time - will you fight me or skip straight to the good part? Not that I don't love your struggles when I have to catch you...'";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Spidertaur";
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
	now dex entry is 20; 				[ Lots of legs! ]
	now sta entry is 16;					
	now per entry is 22; 				[ Lots of eyes! ]
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male"; 							[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 90;										[ How many HP has the monster got? ]
	now lev entry is 12;									[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 12;									[ Amount of Damage monster Does when attacking.]
	now area entry is "Warehouse";				[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;									[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 16;					[ Length infection will make cock grow to if cocks]
	now cock width entry is 6;						[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;								[ Number of Breasts infection will give you. ]
	now breast size entry is 0;						[ Size of breasts infection will try to attain ]
	now male breast size entry is 0;			[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;									[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;						[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;						[ Width of female sex  infection will try and give you ] 
	now libido entry is 25;								[ Amount player Libido will go up if defeated ]
	now loot entry is "spidertaur hair";	[ Loot monster drops, ]
	now lootchance entry is 75;						[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;									[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strange[or]hybrid[or]mutated[at random]";
	now type entry is "[one of]arachnid[or]spider-person[at random]";
	now magic entry is false;							[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;					[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;				[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";			[ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname of player is "Spidertaur":
		if humanity of player is less than 10:
			if cocks of player > 0:
				say "Your predatory instincts take over and you make your lair in one of the many empty buildings in the city. Capturing creatures out on the streets, you drag them into your web, proudly hanging them up in cocoons of sticky silk strands. Females and some choicy males you keep to impregnate and have some fun with, the rest just serve as stored food for when you get hungry.";
			otherwise if cunts of player > 0 and "Sterile" is not listed in feats of player:
				say "Your predatory instincts take over and you make your lair in one of the many empty buildings in the city. Capturing creatures out on the streets, you drag them into your web, proudly hanging them up in cocoons of sticky silk strands. Keeping some choicy males to impregnate you and help grow your brood of little spiderlings, the rest just serve as stored food for when you get hungry.";
			otherwise:
				say "Your predatory instincts take over and you make your lair in one of the many empty buildings in the city. Capturing creatures out on the streets, you drag them into your web, proudly hanging them up in cocoons of sticky silk strands. Keeping some choicy males and females to have fun with, the rest just serve as stored food for when you get hungry.";
		otherwise:
			say "When the military moves in, you're brought to a holding facility where you get checked out and they give you a shot to make you non-infectious. As your arachnid form's abilities are perfect for exploring ruined buildings and you know your way around, you volunteer to accompany a squad of soldiers back into the city. After several weeks of helping rescue quite a few people and using your webs to subdue others so they can be treated, you're awarded a civilian service medal. Joining a group specialized in disaster rescue afterwards, your heroic deeds all over the world do a lot to improve the reputation of spiders in general, away from the 'creepy-crawley to be squished' image.";
	if humanity of player > 10:
		if SpidertaurRelationship is 2:
			say "     Sometimes at night in your dreams, your thoughts stray back to the encounter you had with the spidertaur in the city. Reliving him fucking you you in an incredibly erotic dream, you awaken breathless and horny, the memory of his silken strands against your skin fresh in your mind, incredibly soft yet holding you tightly. You almost wish you could meet him again...";
			say "     Without knowing anything about him, not even his name or if he made it out of the city at all, sadly, it remains a futile thought. The only thing you can do, in the end, is buy some silken sheets for your bed, to meet him again in your dreams.";		
		otherwise if SpidertaurRelationship is 3:
			say "     At night in your dreams, your thoughts often stray back to the encounters you had with the spidertaur in the city. Reliving him fucking you you in incredibly erotic dreams, you awaken breathless and horny, the memory of his silken strands against your skin fresh in your mind, incredibly soft yet holding you tightly. You almost wish you could meet him again...";
			say "     Without knowing anything about him, not even his name or if he made it out of the city at all, sadly, it remains a futile thought. Some time later, as you're out to buy some things, you find yourself thinking about sex with the spidertaur again, prompting you to get several beautiful silk ropes. They serve you well in spicing up your sex life with other partners, although you still dream about getting together with your spidertaur lover.";
		otherwise if SpidertaurRelationship > 3:
			say "     At night in your dreams, your thoughts often stray back to your encounters with Aelias the spidertaur. Reliving him fucking you you in an incredibly erotic dreams, you awaken breathless and horny, the memory of his silken strands against your skin fresh in your mind, incredibly soft yet holding you tightly. The urge - the need - to see him again, feel him inside you once more, drives you to go back to the containment zone around the city.";
			say "     Being among the untold thousands searching for people they lost, it takes days, then weeks, for you to check the records and talk to people at each of the multiple holding facilities set up around the city. You find your hopes dashed again and again, almost breaking off the search - until you meet a pair of army medics in one of the local bars. 'Spider-hybrid you say, big guy, white hair? Wasn't there someone like that a while ago, Jimmy?' 'Yeah, he was pretty intense too. The counselors had quite a time explaining to him he can't just grab anyone off the streets whenever he wants. Then suddenly Danny, that private from the 5th, spoke up and told spidy about a club for people who like bondage and ...stuff. Never knew he swung that way.'";
			say "     After that, it's just a question of following the trail. That very night, you make your way to the entrance of a popular nightclub called 'Arachne's Web', joining the crowd dancing to loud, rhythmic music. There are several platforms anchored with many web strands in the upper reaches of the main room and you can see large, eight-legged shapes moving on them, entwined with human or at least humanoid others. Then you hear someone call your name, which draws your attention to the bar, where Aelias is just handing someone his drink, then moves out from behind it to meet you. In a reunion that doesn't need words, you embrace each other, then start making out right in the middle of the crowd. Coming up for air, he asks 'Will you walk into my parlor, my lovely fly?', shouting to be heard above the music.";
			say "     Hand in hand with your spidertaur lover, you walk to his nearby place, fearlessly entering the dominant male's web. Being with him again after your temporary separation feels amazing, more than fulfilling your needs and desires. It's a night to remember, and you return again and again on other days to join him in his silken nest, or let him 'catch' you in his parlor.";
		

Table of Game Objects(continued)
name	desc	weight	object
"spidertaur hair"	"A few long strands of pale-white hair."	1	spidertaur hair
"silk hammock"	"A large but surprisingly light hammock, made from real spidertaur silk. It has two wooden stability rods at the ends, as well as sticky holding strands to hang it up pretty much anywhere. So you can [bold type]rest[roman type] in comfort wherever you like!"	10	silk hammock

instead of sniffing spidertaur hair:
	say "Doesn't smell of anything, really.";

spidertaur hair is a grab object.
the usedesc of spidertaur hair is "[spidertaur hair use]";

to say spidertaur hair use:
	say "Playing a bit with the long strands of hair, you twirl them around your finger. After a while, they suddenly disintegrate into a fine powder which just seems to melt into your skin...";
	SpidertaurInfect;

to SpidertaurInfect:
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Spidertaur":
			now monster is y;
			break;
	now non-infectious entry is false;
	infect "Spidertaur";
	now non-infectious entry is true;	
	
spidertaur hair is infectious. The strain of spidertaur hair is "Spidertaur".

instead of sniffing silk hammock:
	say "It doesn't have any noticeable smell, really. Just a bit of silken fabric, in the end";
	
silk hammock is a grab object. It is a part of the player. It is not temporary.	
understand "use hammock" as resting.



Spidertaur Male ends here.
