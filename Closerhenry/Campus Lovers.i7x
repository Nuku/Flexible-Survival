Version 2 of Campus Lovers by Closerhenry begins here.
[ Version 2 - Further Progress ]

[ CampusCoupleRelationship                                              ]
[   0: Have not met Jadako and Coach Weber                              ]
[   1: Have learned where the couple's room                             ]
[   100: Permanantly locked out of the two.                             ]

CampusLoversTrackingVariable is a number that varies.
CampusLoversProgressTurn is a number that varies.
CampusCoupleRelationship is a number that varies.
Campus Lovers is a situation.
The sarea of Campus Lovers is "Campus".

when play begins:
	add Campus Lovers to badspots of guy;
	add Campus Lovers to badspots of furry;
	
instead of going north from College Campus Entrance while (Campus Lovers is not resolved and CampusLoversTrackingVariable is 1 and CampusLoversProgressTurn - turns > 3):
	move player to College Fountain;
	CampusLoversEvent;
	
instead of going east from College Walkway Northwest while (Campus Lovers is not resolved and CampusLoversTrackingVariable is 1 and CampusLoversProgressTurn - turns > 3):
	move player to College Fountain;
	CampusLoversEvent;

instead of going west from College Walkway Northeast while (Campus Lovers is not resolved and CampusLoversTrackingVariable is 1 and CampusLoversProgressTurn - turns > 3):
	move player to College Fountain;
	CampusLoversEvent;
	
instead of going northeast from College Walkway East while (Campus Lovers is not resolved and CampusLoversTrackingVariable is 2 and CampusLoversProgressTurn - turns > 3):
	move player to Dorm Street;
	CampusLoversEvent;
	
instead of resolving Campus Lovers:
	CampusLoversEvent;
	
to CampusLoversEvent:
	if CampusLoversTrackingVariable is 0:
		say "     You are walking around the campus searching for anything interesting when you hear a yell. Thinking someone may be be in trouble, you turn in the direction to see a lithe feline running up to a tall dog morph. The sleek cat has a mixture of orange and black fur colors, surrounding the white fur on his belly. He looks young, maybe just short of twenty. Must have been one of the students here. He wears no clothes, allowing you to easily see his flaccid penis and golf-ball sized testes. The burly canine has scruffy, brown fur which highlights his chest, rippling with muscles. He wears an unzipped jacket with the college's logo on it, as well as some athletic shorts. The anthro student tries to embrace his older acquaintance, exclaiming 'Coach Weber!', but the canine softly pushes the cat away. 'Oh, Jadako! I, uh, don't think we should do that. I'm your teacher, and... well... you're naked...' he stutters sheepishly.";
		say "     [bold type]This sounds pretty juicy. Do you want to try to get closer and listen?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Try to edge closer while staying out of eyesight.";
		say "     [link](2)[as]2[end link] - Slip away before they see you.";
		say "     [link](3)[as]3[end link] - Slip away, and avoid these two from now on. (Will lock all further content with these two.)";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to watch, [link]2[end link] to leave or [link]3[end link] to avoid all further contact.";
		if calcnumber is 1: 
			Line Break;
			say "      You sneak closer to the two and hide around a corner within earshot, slowly peeking your head out to see. 'I never thought I'd see you again after all of this, Coach!' the feline expresses with relief. Coach Weber nods his head. 'Well, I'm glad you found me. Question is, how did you recognize me? I don't exactly look the same as I used to, I'm a dog!' the canine chuckles, his solid chest shaking with each laugh. Jadako lets out a little laugh, pointing to the large man's jacket. 'It's kinda hard to mistake your jacket.' 'Hey, speaking of clothes, don't you think you should put something on?' the transformed teacher asks with concern, gesturing to the former student's exposed crotch. 'No way, I feel great like this! Here...' The cat places his hands around his teacher's waist, pulling down his athletic shorts. You're sure the hound's face would be blushing if he were still human as his former pupil disrobes him, although he seems to enjoy it. His un-erect member slowly twitches, as it begins to swell and push out of its sheath. His baseball-sized nuts hang low in a full sack, already churning with cum.";
			say "      The transformed teen leans closer to the well-built anthro, running a hand down his chiseled, muscular chest. 'You know, sir, I always thought you were kind of... hot... With everything going on, we could always, you know...' he suggests, his own penis already at full erection. It looks much smaller than the dog's, only half as thick and a couple inches shorter, but still solid in it's own right. Coach Weber's throat rumbles, as he places a hand on the side of young man's face. 'You were always such a good student, Jadako... Why don't I give you a reward for all your hard work?' Tossing his jacket aside, the canine walks a few steps to where a nearby wall has a small decorative landing, sitting down on the low ledge and leaning back against the wall. With his muscular legs spread and his shaft standing proudly erect, the man pats the tops of his thighs invitingly. 'Come and get it, Jadako... Come and get your extra credit,' the dog commands, laughing a bit at his own joke.";
			WaitLineBreak;
			say "     Jadako trembles in anticipation as he turns away from the wall and stands over his former coach. He steadily squats down until his thin bottom reaches the coach's cock, a mixture of canine and human features. The rugged canine places a hand on anthro student's left thigh and the other on the teenager's side, holding the thin and wiry cat up in the air. The suspend cat turns his head to face Coach Weber, and the two slowly lock tongues the as large anthro gently lowers Jadako onto his cock. The lusty student's rear hungrily consumes the hot rod, until finally it looks as though the colorful feline is simply sitting atop the his lover's lap. Coach Weber slowly lifts the altered student, grunting in lust as Jadako's snugly fitting opening squeezes his shaft on the way up. When just the cock-head is left inside his former student, the man humps up against the cat-boy's buttocks, burying his shaft all the way inside with a satisfied bark.";
			say "     Starting the movements again and again after that, he builds a steady rhythm of fucking Jadako on his lap. The sleek feline takes steady breaths, softly gasping every time he hilts against the absolute stud. His eyes are locked shut in bliss as his mentor continues to lift him up and down off his cock. 'O-oh, Coach...' the cat moans. 'Y-you're so tight, Jadako... You n-need more practice! I'm just gonna have to keep t-training you until you're more flexible... much more flexible...' the canine coach mutters with deep breaths. Steadily beginning to fuck the teen faster, the anthro hound's fingers clutch harder at the feline. Jadako rubs his lover's meaty hands with his own thin ones, breathing quicker and quicker. He shifts his hands to his cock as he begins to jerk himself off.";
			WaitLineBreak;
			say "     Coach Weber keeps speeding up his movements, until finally he grits his teeth as he shoves the waiting feline all the way down, popping his knot into him. This pushes Jadako over the edge, and he lets out a wanton moan as his feline cock begins ejecting ropes of thick, white jizz. His entire body quakes as the burly canine let's out a loud growl as his balls quiver and churn. The coach's cock spasms inside the feline, painting Jadako's insides white with his load. The cat's body isn't able to contain all of it, and his teacher's cum slowly begins to drip out of his hole. The young man remains seated on his coach's cock, until he turns his head to face the his lover once again. The two caress each other and kiss sloppily as the horny teen's cock again begins to rise. Seeing they are going to go for another round, you take your opportunity and sneak away, worried that the commotion might attract other infected.";
			now CampusLoversTrackingVariable is 1;
		else if calcnumber is 2: 
			Line Break;
			say "     Not wanting to risk these two unknown morphs, you slowly back away. After you get far enough away and it seems they haven't notice you, you take a slight jog to put a greater distance between you and them. As you look back to make sure they aren't following you, you see the two against the wall, the cat slowly sliding onto the dog's cock. At least they aren't after you.";
		else: 
			Line Break;
			say "     Something just doesn't sit right with you about these two. You make sure to get away without being detected, before making a mental note to avoid all further contact with the two.";
			now CampusCoupleRelationship is 100;
			now Campus Lovers is resolved;
	else if CampusLoversTrackingVariable is 1: [second time]
		say "     You're out exploring the campus when you spot a group of people, most likely students, conversing next to the fountain. They seem sane enough, considering they're all fully clothed. The students are too far away for you to hear the specifics of their conversation, but the way they keep looking over their shoulders seems to imply they're gossiping.";
		say "     [bold type]Do you want to eavesdrop on their gossip?[roman type][line break]";
		Line Break;
		say "     ([link]Y[as]y[end link]) - A little listen couldn't hurt...";
		say "     ([link]N[as]n[end link]) - No way, who knows what they'd do if they caught you!";
		if player consents:
			Line Break;
			say "     You sneak closer, intent on hearing what- or who- the students are talking about. 'I knew that dude was a fag. Always stayed longer after practice too. Bet the old man has been boning him for years!' one student, a male rabbit morph, laughs. For some reason, the gossip is ringing a bell, but you can't place a finger on why until a different student, a German shepherd, cuts in. 'Man, you always were an idiot! Guess you were the only one Jer didn't come out to. None of us cared. And no, the coach always kept things professional. You know - like the amazing guy he is. But now... good for them. The city's gone to hell in a hand-basket, so I for one am glad that they found each other.' At that moment, it clicks, and you remember the student and coach couple you spied on earlier. You think the student's name was Jadako and he called his companion Coach Weber.";
			say "     'Whatever. All because people are turning into animals doesn't mean it's ok to go around fucking your teacher and being a complete fag,' the rabbit replies with disdain. The third student, a crow morph, lets out a groan. 'Rod, you're being a complete ass. I'm getting real tired of this shit you keep saying,' he huffs. 'Yeah, man. Just chill. No reason to say shit like that,' the German shepherd joins in. 'It's just a joke you too, no need to get on my case like that,' the rabbit complains. His friends aren't convinced, however. 'Listen, man, if you're gonna be all homophobic and shit we aren't gonna hang out with you anymore. Fix your attitude next time you wanna do anything, dude,' the shepherd states as he and his crow friend turn around and walk off. Rod stares after them with a scowl on his face for a few seconds, then angrily stalks off in the other direction. Glancing back, the canine student sees him go and shakes his head, then wraps his arm around the crow's shoulder, who reaches around his boyfriend's back to give him a squeeze in turn.";
			Line Break;
			say "     Looks like the two of them have been really careful about not showing what they feel - or Rod is just totally oblivious. As for the coach and student you observed earlier - word of their relationship is clearly getting around. Makes you wonder if that creates any problems for the two. Maybe you could try to find them?";
		else:
			Line Break;
			say "     You decide you don't want to risk finding out what these three students would do to you if they noticed you eavesdropping, so you quietly back off. Eventually, the group seems to get into a short argument and one of them storms off, leaving the other two alone. Huh, wonder what that was about.";
		now CampusLoversTrackingVariable is 2; [second event done]
	else if CampusLoversTrackingVariable is 2: [third time]
		say "     Setting out on the campus in search of anything interesting, your ventures bring you close to the dorms of the college. Some of the rooms are probably abandoned, so it might not be to bad of an idea to peek through the windows for any supplies. Unfortunately, it seems most of the rooms have nothing of value. Just as you are about to give up, you hear the faint sound of someone moaning from one of the windows ahead of you. You sneak along the side of the building to where you heard the noise, and have a little peek. Inside, you see a familiar looking feline and canine going at it. The cat is on his back, legs sticking out on both sides, while the dog is between them, thrusting inside of Jadako. 'O-oh yeah! Take me harder, Coach!' the lithe anthro moans, as you pull your head away from the window.";
		say "     [bold type]It looks pretty steamy in there. While you don't think you'll get anything out of it, do you want to stay and watch the action?[roman type][line break]";	
		Line Break;
		say "     ([link]Y[as]y[end link]) - Watch the two lovers get each other off.";
		say "     ([link]N[as]n[end link]) - Scram. It's a private moment!";
		if player consents:
			Line Break;
			say "     You decide to continue watching. [if player is male]Your [cock of player] cock is twitching already from the little you've seen.[else if player is female]Your vagina feels moist just from the little you've seen.[else if player is herm]Your [cock of player] is at full mast, and your pussy is dripping from excitement just from the little you've seen.[else]You can't help but feel the craving for one of their cocks in your tight hole.[end if] Poking your head back around, Coach Weber continues to thrust into Jadako, his bulky muscular frame dwarfing the slim feline. His beefy hands are wrapped around the colorful cat-morph's sides, with his dulled claws only slightly digging into him. Jadako is rocked by every thrust, and his slim cock and compact balls shake with every new penetration. The cat's claws dig into the mattress as his head rocks around with his eyes half rolled into the back of his head.";
			say "     'You're such a good learner, Jadako... You've been doing your stretches, I can tell,' the coach praises with his gruff voice, each word after a thrust spoken with emphasis. 'I just want to make you proud, Coach... Oh, please, give it to me harder!' Jadako moans, his feline dick leaking pre. Coach Weber complies, his thrusts growing stronger and quicker. Both of their breathing grows heavier and heavier, signaling they're both coming close to climax. The lithe feline let's out a wanton moan, as his cock starts spraying cum all over himself. He grabs his dick with one of his hands and aims it, shooting as much as he can into his own mouth. The teen's display sets off the old dog, who slams his shaft into the cat-morph, locking his knot into place. He let's out a groan of pleasure, as his balls churn out as much seed as they can, enough to thoroughly paint the student's insides white.";
			WaitLineBreak;
			say "     Now seems like a perfect opportunity to leave, with the two knotted together. You turn to begin sneaking away, but in a horrible turn of luck, a heavy object hits you on the side of your head. Letting out a cry of surprise, you to realize it's just a football. 'Sorry, dude! Could you throw that back to me?' a faroff athlete yells to you. A grumble escapes your throat as you angrily throw the leather ball back. The athlete flashes you a thumbs up before running off. You turn your head back towards the window to the couple both looking toward you. The Coach is trying to avoid eye-contact with you, clearly embarassed, however Jadako has a wide smile as he waves to you as he grinds on his lover's knot. 'Hey there, did you enjoy the show?' he asks humerously. You rub the back of your head as you apologize for peeping but the feline shakes his head. 'Nah, it's fine. If you wanna see more like this, you could always stop by again. Maybe do a little more than watch next time...' he suggests flirtatiously. ";
			Line Break;
			say "     'As soon as you enter the dorms, it's the room to your north. Come on by, we'll be happy to entertain you...' the slutty feline states. Coach Weber begins to protest, but Jadako turns and silences him with a kiss. The two seem to forget, or at least disregard, your presence as they roll around on the bed hugging and making out. You leave the two to their business, wondering when you might stop by again.";
			now Campus Lovers is resolved;
			now CampusCoupleRelationship is 1;
			move Joseph to Jadako's Room;
			move Jadako to Jadako's Room;
			change the south exit of Jadako's Room to Tenvale College Dorms;
			change the north exit of Tenvale College Dorms to Jadako's Room;
		else:
			Line Break;
			say "     As hot as this is, you don't really have time to watch the two fuck. You take care to break away without causing too much noise. As you leave, you hear the two moaning loudly. At least they are having a good time...";
			now Campus Lovers is resolved;
			now CampusCoupleRelationship is 1;
			move Joseph to Jadako's Room;
			move Jadako to Jadako's Room;
			change the south exit of Jadako's Room to Tenvale College Dorms;
			change the north exit of Tenvale College Dorms to Jadako's Room;
	now CampusLoversProgressTurn is turns; [saves the last turn in which their story progressed]


Campus Lovers ends here.