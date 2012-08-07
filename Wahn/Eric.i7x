Version 1 of Eric by Wahn begins here.
[Version 0.4: Sex scenes now written]
[Todo: endings, possibly npc interactions & more conversation]
"Adds an NPC named Eric to the Flexible Survival game"

[ HP states of Eric                                                  ]
[   0: Holed up in the lockerroom                                    ]
[   1: Cuntboy virgin, in the Bunker                                 ] 
[  10: Accepted being a cuntboy, in the Bunker                       ] 
[  11: Accepted being a cuntboy, had sex with player, in the Bunker  ] 
[  20: Hoping for a cure, virgin, in the Bunker                      ] 
[  21: now with horsecock, virgin, in the Bunker                     ] 
[  22: now with horsecock, had sex with player, in the Bunker        ] 
[  99: Taken advantage of -> fucked cuntboy, in the Bunker           ] 
[ 100: Stacy's girlfriend now, pregnant (no longer available)        ] 

[ Thirst states of Eric (for the smell)                              ]
[   0: Smells male & something the player can't identify             ]
[   1: Smells male + fertile pussy                                   ]
[  11: Smells male + pregnant pussy                                  ]
[  21: Smells male + horse musk                                      ]

[ NPC Connection summary for endings :                               ] 
[                                                                    ]

Section 1 - Meeting Event

Barricaded Lockerroom is a situation. The level of Barricaded Lockerroom is 8.
The sarea of Barricaded Lockerroom is "Campus";
when play begins:
	add Barricaded Lockerroom to badspots of hermaphrodite;      [cuntboy]

Instead of resolving a Barricaded Lockerroom:
	say "     While exploring the sports arena on the campus, you come upon the closed door to the men's locker room, looking rather battered with lots of claw scratches on it. When you try the doorhandle, it opens only a crack before bumping into something heavy - accompanied by a loud clanking noise. A man's voice can be heard from inside a moment later: 'Stay away you crazy critters! I'm warning you - I've got a baseball bat and am willing to use it. You're not getting another bite out of me!'";
	say "     [line break]";
	say "     Do you want to try to talk the guy into letting you in? (Y/N)";
	if the player consents:
		let bonus be (( charisma of player minus 10 ) divided by 2);
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] vs 20 and score [dice plus bonus]: ";
		if dice + bonus is greater than 19:
			say "[line break]     After some quick talking, you manage to convince the person inside the lockerroom that you're another survivor and not just a feral infectee. You hear some scraping noises from the other side of the door, then it opens and a young man hurriedly waves you inside. He pushes one of the heavy 3-locker units in front of the door to make sure you're not followed.";
			say "     'Hi, I'm Eric,' the man says, shaking your hand. 'Nice to see not everyone has gone totally bonkers in this city. I couldn't believe the stuff going on out there at first... saw my roommate transform into a big furry thing right in front of my eyes. There wasn't anything human left in him - he even bit me!' He shows you his bandaged arm.";
			move player to Campus Arena Lockerroom;
			Now Barricaded Lockerroom is resolved;
		otherwise:
			say "[line break]     As you're trying to explain, the person behind the door shouts 'I don't believe you. You're just one of those strange creatures who wants to trick me!' Then the door is pushed closed from the other side.";
	
Campus Arena Lockerroom is a room. It is fasttravel. It is private. 
The description of Campus Arena Lockerroom is "[lroomdesc]";

instead of sniffing Campus Arena Lockerroom:
	say "You don't smell anything noteworthy. With a nanite virus apocalypse going on right outside the door, there haven't been any large numbers of sweaty athletes in here for some time now.";

to say lroomdesc:
	if (hp of Eric is 0):                         [Starting state]
		say "     This is the men's lockerroom of the sports arena in the Fairhaven campus. Looks like someone has made camp here - you see an improvised bed out of lots and lots of towels and empty bottles and wrappers of energy drinks and bars. Not a bad defensive spot either - the few existing windows are high up on the walls and the row of lockers pulled in front of the door should keep out all but the most determined intruders.";
		say "[line break]";
		say "     Eric has sat down on one of the benches in the room and is looking over to you attentively.";
	if (hp of Eric > 0) and (hp of Eric < 100):   [Eric was brought to the bunker after a quick stop here, something followed the scent]
		say "     This is the men's lockerroom of the sports arena in the Fairhaven campus. Eric's former camp has been ransacked, the towels of the improvised bed strewn about among empty bottles, energy bar wrappers and ripped clothing. Looks like something followed the scent trail left when you brought Eric back from his encounter with Stacy and was a bit annoyed that he wasn't still here.";
	if (hp of Eric is 100):                       [Eric never came back from Stacy's dorm]
		say "     This is the men's lockerroom of the sports arena in the Fairhaven campus. Looks like someone has made camp here - you see an improvised bed out of lots and lots of towels and empty bottles and wrappers of energy drinks and bars. Not a bad defensive spot either - the few existing windows are high up on the walls and pushing one of the lockers in front of the door should keep out all but the most determined intruders.";

Section 2 - Eric the Cuntboy Athlete

[Smells, Description, Conversation and NPC Interaction]

Eric is a man.  Eric is in Campus Arena Lockerroom.  The hp of Eric is normally 0.
The description of Eric is "[Ericdesc]";
The conversation of Eric is { "Mew!" }.
lastEricfucked is a number that varies.  lastEricfucked is normally 555.

instead of sniffing Eric:
	if thirst of Eric is 0:    [Starting state]
		say "Eric has a pretty nice, masculine smell. Although there's a slight undertone of something else.";
	if (thirst of Eric is 1):    [pussy revealed]
		say "Eric has a pretty nice, masculine smell. Underlying that, there's a slight hint of the state of his female genitalia - fertile and ready.";
	if (thirst of Eric is 11):   [pregnant]
		say "Eric has a pretty nice, masculine smell. Underlying that, there's a slight hint of the state of his female genitalia - it's notably different than when you first met him. Could it be he's expecting?";
	if (thirst of Eric is 21):   [now with a horse-cock]
		say "Eric has a pretty nice, masculine smell. Underlying that, there's a hint of animal-like musk, a bit like a horse.";

to say ericdesc:
	if (hp of Eric is 0):   [starting state]
		say "     Eric is a college age young man with ginger hair, light skin and quite a few freckles. His unlined face has a boyish charm to it and he often smiles while talking. He's wearing a black t-shirt and red running shorts, showing his runner's build - nicely muscled legs and upper body, while still being lithe and lean overall. His left underarm is bandaged.";
		say "[line break]";
		say "     At the moment, he's sitting on one of the benches of the lockerroom in the Fairhaven campus sports arena, watching you attentively. His gaze moves over to the barricaded door from time to time, just to check it's still secure.";
	if ((hp of Eric is 1) or (hp of Eric is 20)):   [pussy revealed, in the bunker, virgin]
		say "     Eric is a college age young man with ginger hair, light skin and quite a few freckles. Or at least he looks like it - you know better that he's got a pussy hidden away under his shorts. His unlined face has a boyish charm to it and he often smiles while talking. He's wearing a black t-shirt and red running shorts, showing his runner's build - nicely muscled legs and upper body, while still being lithe and lean overall. His left underarm is bandaged.";
		say "[line break]";
		say "     At the moment, he's sitting on a bunk in the bunker, watching you a bit apprehensively. Looks like he feels uncomfortable at you knowing his gender state.";
	if (hp of Eric is 10):   [pussy accepted, in the bunker]
		say "     Eric is a college age young man with ginger hair, light skin and quite a few freckles. Or at least he looks like it - you know better that he's got a pussy hidden away under his shorts. His unlined face has a boyish charm to it and he often smiles while talking. He's wearing a black t-shirt and red running shorts, showing his runner's build - nicely muscled legs and upper body, while still being lithe and lean overall. His left underarm is bandaged.";
		say "[line break]";
		say "     He's lived himself in in the bunker by now, and it looks like he has gone out and brought some more of his stuff in here in the meantime. Besides his bunk there are several sports bags full of clothing and supplies, and a baseball bat rests against it for when he goes outside. You often see him stretching and working out - like right now for example, as you stop and watch him move his inviting lithe body. Eric notices you standing there, and gives you a shy smile, then goes on with his exercises.";
	if (hp of Eric is 11):   [pussy accepted, in the bunker, had sex with the player]
		say "     Eric is a college age young man with ginger hair, light skin and quite a few freckles. Or at least he looks like it - you know better that he's got a pussy hidden away under his shorts. His unlined face has a boyish charm to it and he often smiles while talking. He's wearing a black t-shirt and red running shorts, showing his runner's build - nicely muscled legs and upper body, while still being lithe and lean overall. His left underarm is bandaged.";
		say "[line break]";
		say "     He's lived himself in in the bunker by now, and it looks like he has gone out and brought some more of his stuff in here in the meantime. Besides his bunk there are several sports bags full of clothing and supplies, and a baseball bat rests against it for when he goes outside. You often see him stretching and working out - like right now for example, as you stop and watch him move his inviting lithe body. Eric notices you standing there, and gives you a seductive smile, doing some suggestive stretches before he goes on with his exercises.";
	if (hp of Eric is 21):   [now with horsecock, in the bunker]
		say "     Eric is a college age young man with ginger hair, light skin and quite a few freckles. He looks fully human, but you know that he's packing a horse's cock and balls inside his shorts. His unlined face has a boyish charm to it and he often smiles while talking. He's wearing a black t-shirt and red running shorts, showing his runner's build - nicely muscled legs and upper body, while still being lithe and lean overall. His left underarm is bandaged.";
		say "[line break]";
		say "     He's lived himself in in the bunker by now, and it looks like he has gone out and brought some more of his stuff in here in the meantime. Besides his bunk there are several sports bags full of clothing and supplies, and a baseball bat rests against it for when he goes outside. You often see him stretching and working out - like right now for example, as you stop and watch him move his inviting lithe body. Eric notices you standing there, and gives you a shy smile, then goes on with his exercises.";
	if (hp of Eric is 21):   [now with horsecock, in the bunker, had sex with the player]
		say "     Eric is a college age young man with ginger hair, light skin and quite a few freckles. He looks fully human, but you know that he's packing a horse's cock and balls inside his shorts. His unlined face has a boyish charm to it and he often smiles while talking. He's wearing a black t-shirt and red running shorts, showing his runner's build - nicely muscled legs and upper body, while still being lithe and lean overall. His left underarm is bandaged.";
		say "[line break]";
		say "     He's lived himself in in the bunker by now, and it looks like he has gone out and brought some more of his stuff in here in the meantime. Besides his bunk there are several sports bags full of clothing and supplies, and a baseball bat rests against it for when he goes outside. You often see him stretching and working out - like right now for example, as you stop and watch him move his inviting lithe body. Eric notices you standing there, and gives you a wink and a smile smile, rubbing the bulge in his pants suggestively before going on with his exercises.";
	if (hp of Eric is 99):   [pussy revealed, in the bunker, fucked]
		say "     Eric is a college age young man with ginger hair, light skin and quite a few freckles. Or at least he looks like it - you know better that he's got a pussy hidden away under his shorts. His unlined face has a bit of a wary expression on it, as he watches you and wonders when he'll be fucked next. He's wearing a black t-shirt and red running shorts, showing his runner's build - nicely muscled legs and upper body, while still being lithe and lean overall. His left underarm is bandaged.";
		say "[line break]";
		say "     He's taken the bunk farthest from yours in the bunker and does his best not to attract your attention.";
	if (hp of Eric is 100):
		say "ERROR-Eric-1A: He should be being impregnated by his hulk girlfriend by now! Please report what you did to see this.";

instead of conversing the Eric:
	if (hp of Eric is 0):   [starting state]
		say "     Eric tells you what happened to him when the plague hit - with people shifting all around and his best friend taking a bite out of his arm, he moved in here and barricaded himself in. Since then, he's only left a few times, sneaking outside at night when most creatures are sleeping to gather some supplies. You in turn tell him of all the things you've seen and witnessed out in the city, making him go pale as he listens.";
		say "     When you finish, Eric asks you 'You're a pretty resilient person from your stories... could you maybe help me save Stacy, my girlfriend? Well, ex-girlfriend I guess - she broke up with me a day before the plague hit... but that doesn't matter now. I've tried to find her and bring her here, but there was a massive green creature moving around her dorm building every time I checked. I just couldn't fight something that big, so I snooker off before it noticed me. Please, help me save her from there!";
		if the player consents:   [going on a rescue mission]
			say "     Eric arms himself with a baseball bat and you move out together, mostly staying behind buildings and sneaking through the bushes. It goes pretty well, until you arrive at one of the main thoroughfare of the campus and have to step onto a large open area to move on. You almost make it, then hear a female voice behind you. Turning around, you see a succubus and incubus stand there, eying you like pieces of meat.";
			say "     'It's just like you promised Aidan - a whole campus of pretty young things ripe for the plucking. How about you take that one,' she says with a nod to you, '- and I ride the redhead.'";
			challenge "Incubus";
			if lost is 1:
				say "     The incubus leaves you lying on the ground as he struts off with his demonic partner. You collect your strewn-about belongings and are joined by Eric a moment later, who got pulled behind a bush and is looking a bit disheveled. He says 'Let's get out of here.' and leads on towards your goal.";
			otherwise:
				say "     Having beaten the incubus, you look around where the succubus and Eric are. There's some movement in the bushes in one direction, so you rush over there and find Eric half-dressed with the succubus running her hands all over him. She whirls around as she notices you, hissing at the distraction. As she comes closer, you ready yourself for an attack - and then Eric hits her with his bat from behind, ending the fight early. He says 'Let's get out of here.' and leads on towards your goal.";
				increase score by 10;
			say "     Arriving at a large dorm building, Eric guides you to the back entrance. You quietly make your way into the building, passing lots of empty rooms - and one with two naked bunny jocks in it, completely absorbed in stroking each other's cocks as they make out. Moving on, you arrive at a stairwell and go up two stories, then enter the hallway with Stacy's room in it. Finally you get to it, and Eric excitedly storms in - only to find it empty. He shouts 'Stacy? Where are you? Call out if you can hear me!', then throws open the door to the small bathroom in the back of the room. His frantic searching has you distracted for a moment, so that you notice the hulking presence behind you too late. A large green humanoid steps through the entrance door into the room behind you, giving you a backhanded slap that throws you across the room and into a wall.";
			say "     The hulking green figure has recognizably female features and a pair of ample breasts. The rest of her - or him rather, as you can see a thick cock dangling between her legs from where you lie groggily on the ground - isn't quite as feminine. She's at least nine feet tall, her bulging muscles stretching a white crop top tightly over her large frame. Around her hips, you see a very short skirt that does almost nothing to hide her crotch and the male equipment there.";
			say "     'Well well - here comes the cheating boyfriend and his newest little buddy.' She looks down at you in contempt. 'S-Stacy? Is that you? I told you, I didn't cheat on you - Diana kissed me just as you came in, not the other way around! I didn't do anything wrong!'";
			say "     A scowl on her face, the former Stacy steps over your prone body and grabs Eric by the neck, holding him up in front of her face. 'Now listen you little - I know exactly...' suddenly she stops and sniffs the air, then lowers her head to Eric's crotch. 'Wait a minute - what's this? You're a girl now? Then I do know a way you can make it up to me - I'll take your virginity and forget about you and that bitch.' You see her cock lengthen and fill out a bit from below. Laying Eric down on the bed, Stacy just rips off his clothing, revealing his lean physique - and a pussy where his cock and balls should be. She holds him down with one hand, the other rubbing his pussy lips, making him moan at the unfamiliar sensations.";
			say "[line break]";
			say "     Your head clears a bit and the stars in front of your eyes vanish. With Stacy the cheerleader hulk distracted, now would be a good time to take her on and save Eric from the tender mercies of the girlfriend he intended to rescue. Or you could just stay right here and watch - on the floor right behind Stacy, you got a ringside seat for the action. Her cock is long enough that you could reach out and touch it, and you got a nice sight of Eric's pussy at the edge of the bed from here. (Y = save him; N = watch them)";
			if the player consents:   [save him]
				say "     You wait a moment longer, watching Stacy as she fingers Eric's pussy, making him gasp and moan and open his legs wide as new instincts take over. She continues to rub and stroke him until she's pretty wet, putting her fingers in her mouth to taste his female juices. 'Yes, you're ready. Now I'll show you what it means to be a woman!' she says, stroking her cock and moving closer to Eric. Then, as she's completely distracted, holding up her long erection close to Eric's folds, you rush at her and attack.";	     	
				challenge "Cheerleader Hulk";
				if lost is 1:
					say "     With another hard slap, the hulking cheerleader sends you flying against the wall of the room, putting you in a world of hurt. You can only lie there and hold your aching body when she turns back to Eric.";	      
					say "     Stacy pushes her massive erection against her ex-boyfriends folds, groaning as they spread and she sinks inside. You see her stop for a moment, presumably at his hymen, and say 'Ssh, hold still. It'll be over soon.' to him. There is a small pained yelp from Eric as she breaks through, but soon his lustful moans start up again as her hard shaft rubs against his insides. Going slow at first, then faster and faster, the gender-switched cheerleader starts fucking him in earnest, giving satisfied grunts each time she bottoms out in Eric's pussy. ";
					say "     Not much later, Eric gasps as he has his first female orgasm, and you see his pussy juices glistening on Stacy's thrusting cock. She stops for a moment and looks down at the writhing cuntboy, then starts up again, harder and faster than before.";
					say "     In between wild fucking, Stacy stops several times to pace herself and manages to last almost forty minutes, driving Eric to multiple more orgasms. As he is in the throes of another, she asks 'Do you like my cock inside you? Does it make you feel good?', and getting a moaned 'Yes' as an answer from him. She continues, 'Will you stay with me from now on? And let me fuck you anytime I want? And bear my children?', thrusting deep after each question and making Eric moan 'Yes, yes, yes.'";
					say "     Thrusting in deep several more times, she then gives a satisfied grunt and you see her balls twitch and pulse as she blows her load into Eric's womb. As she fills her ex-boyfriend-now-girlfriend with fertile seed, Stacy leans down, holding him tight and gives him a deep kiss.";
					say "     [line break]";
					say "     You crawl out of the room and make your escape while she's still busy with Eric, having no choice but to concede him to her. With him having accepted being her girlfriend and likely already pregnant from her, there won't be any reason to come back here.";
					now hp of Eric is 100;
					remove Eric from play;          
				otherwise:
					say "     With one last hit, the transformed woman collapses on the ground, leaving you the only person standing in her by now totally trashed room. You look over at Eric, who's been reduced to lying on the bed moaning, completely lost in the feelings his changed body is giving him. Seeing him there, legs spread and one hand rubbing the lips of his pussy, two possible choices come to mind. You could just take his virginity now while you can, or do the right thing and bring him to safety in the bunker under the library. (Y = fuck him, N = save him)";	      
					if the player consents:   [take advantage and take him to the bunker]
						say "     This is an opportunity you don't want to miss - the cuntboy is hot and ready, lying there on the bed with spread legs and just waiting for it...";	      
						if(cocks of player > 0):
							say "     Your cock springs to attention as you step closer, then kneel on the bed between Eric's legs. Running your hands over his muscular legs, you arrive at his drippingly wet pussy and push two fingers inside, making him moan as you wiggle them. Inside, you feel the soft flesh of his hymen under your fingers - nice, he really is a virgin. The thought of taking his cherry on the bed of his former girlfriend makes your cock twitch in anticipation. You aim your manhood at his moist folds, rubbing its tip against his pussy lips, then push forward, sinking your shaft into his body until you reach his maidenhead and stop for a moment.";	      
							say "     Running your hands over Eric's flat chest you play with his nipples, distracting him for the moment you pull back and then thrust in deep, piercing his hymen in one go. He whimpers at your forceful intrusion in his innermost being, but soon the pleasure able feelings of your hard member rubbing his insides outweigh the pain and he starts moaning again with lust. Holding his legs up with your hands you thrust in and out, revelling in his tight embrace around your shaft as you make a real woman - or rather cuntboy - out of him.";
							say "     Not much later, Eric gasps as he has his first female orgasm, his pussy getting really wet around your thrusting cock. You stop for a moment and look down at the writhing cuntboy you're inside of, then start up again, harder and faster than before.";
							say "     Pacing yourself, you manage to last another half hour, giving Eric another orgasm, before you feel your balls tightening with your impending climax. With one last thrust as deep as you can go inside him, you reach your goal, shooting burst after burst of your seed deep inside his womb.";
							say " [line break]";
							say "     Such a nice little cuntboy, you decide to take Eric along to the bunker to have some fun with again later. After having a quick look around, you pick up a bathrobe that's only a little too small for Eric. You bundle him up in it, then lead him by the arm out of the building, still rather out of it and dripping your cum and female juices on the floor. This time you manage to avoid any creatures as you make your way back to the sports arena. Well, mostly - at one point a male german shepherd began sniffing the ground some way behind you and picked up the trail, but a passing incubus took an interest in him...";
						otherwise:
							say "     This is an opportunity you don't want to miss - the cuntboy is hot and ready, lying there on the bed with spread legs and just waiting for it...";
							say "     A quick search through Stacy's dresser reveals a long pink dildo - and a vibrating one too. You take it and climb on the bed with Eric, rubbing his moist pussy lips slowly with your fingers, then spreading them to have a look. Ah, perfect - he really is a virgin. The thought of taking his cherry on the bed of his former girlfriend makes you grin in anticipation. You rub the dildo's tip against his pussy lips for a moment, then push forward, sinking it slowly into his body until you reach his maidenhead.";
							say "     Running your hands over Eric's flat chest you play with his nipples, distracting him for the moment you pull back and then thrust in deep, piercing his hymen in one go. He whimpers at your forceful intrusion in his innermost being, but as you flip the switch and move the vibrating dildo in and out of him, pleasure able feelings soon outweigh the pain and he starts moaning again with lust. Running a hand over his lithe body as you fuck him with the dildo, you revel in his pants and gasps as you make a real woman - or rather cuntboy - out of him.";
							say "     Not much later, Eric gasps as he has his first female orgasm, his pussy getting really wet around the dildo and leaking female juices on the mattress. You stop for a moment and look down at the writhing cuntboy you're made cum, then start up again, harder and faster than before.";
							say "     Taking your time, you keep going with the dildo for another forty minutes, giving Eric two more screaming orgasms. Then a groggy groan from the cheerleader hulk on the floor reminds you that you sadly don't have all the time in the world and should leave before she fully wakes up or something else comes along.";
							say " [line break]";
							say "     Such a nice little cuntboy, you decide to take Eric along to the bunker to have some fun with again later. After having a quick look around, you pick up a bathrobe that's only a little too small for Eric. You bundle him up in it, then lead him by the arm out of the building, still rather out of it and dripping female juices on the floor. This time you manage to avoid any creatures as you make your way back to the sports arena. Well, mostly - at one point a male german shepherd began sniffing the ground some way behind you and picked up the trail, but a passing incubus took an interest in him...";
						say "     The howls of your almost-encounter as he's being fucked by the demon remind you that many creatures out here will be able to follow Eric's trail easily. You soon reach the lockerroom and give Eric some time to come down from his highly aroused state, then tell him to get dressed and that you're taking him to your bunker. Ten minutes later, he steps out from behind a row of lockers, dressed in shorts and a t-shirt and hefting a backpack with his most important gear and supplies. Departing towards the bunker, Eric walks with you but a step apart, silently thinking about what you did to him.";
						now hp of Eric is 99;
						move Eric to bunker;
					otherwise:                [really save him]
						say "     After having a quick look around, you pick up a bathrobe that's only a little too small for Eric. You bundle him up in it, then lead him by the arm out of the building, still rather out of it and dripping female juices on the floor. This time you manage to avoid any creatures as you make your way back to the sports arena. Well, mostly - at one point a male german shepherd began sniffing the ground some way behind you and picked up the trail, but a passing incubus took an interest in him...";
						say "     The howls of your almost-encounter as he's being fucked by the demon remind you that many creatures out here will be able to follow Eric's trail easily. The lockerroom won't be safe much longer. You give him some time to come down from his highly aroused state, then tell him to get dressed and that you're taking him to your bunker. Eric thanks you, at the same time getting very red in the face as he realizes you saw... all of him. Twenty minutes later, he steps out from behind a row of lockers, dressed in shorts and a t-shirt and hefting a backpack with his most important gear and supplies. Soon you depart towards the bunker, Eric still rather silent besides you as he thinks about what happened to him.";	      
						now hp of Eric is 1;
						move Eric to bunker;
			otherwise:                [watch them fuck]
				say "     Having been hit by her once already, you decide you want to avoid that from happening again - and have some fun in the meantime. You silently crawl a bit closer and sit on the floor from where you have a nice view.";	      
				say "     [line break]";
				say "     Stacy pushes her massive erection against her ex-boyfriends folds, groaning as they spread and she sinks inside. You see her stop for a moment, presumably at his hymen, and say 'Ssh, hold still. It'll be over soon.' to him. There is a small pained yelp from Eric as she breaks through, but soon his lustful moans start up again as her hard shaft rubs against his insides. Going slow at first, then faster and faster, the gender-switched cheerleader starts fucking him in earnest, giving satisfied grunts each time she bottoms out in Eric's pussy. ";
				say "     Not much later, Eric gasps as he has his first female orgasm, and you see his pussy juices glistening on Stacy's thrusting cock. She stops for a moment and looks down at the writhing cuntboy, then starts up again, harder and faster than before.";
				say "     In between wild fucking, Stacy stops several times to pace herself and manages to last almost forty minutes, driving Eric to multiple more orgasms. As he is in the throes of another, she asks 'Do you like my cock inside you? Does it make you feel good?', and getting a moaned 'Yes' as an answer from him. She continues, 'Will you stay with me from now on? And let me fuck you anytime I want? And bear my children?', thrusting deep after each question and making Eric moan 'Yes, yes, yes.'";
				say "     Thrusting in deep several more times, she then gives a satisfied grunt and you see her balls twitch and pulse as she blows her load into Eric's womb. As she fills her ex-boyfriend-now-girlfriend with fertile seed, Stacy leans down, holding him tight and gives him a deep kiss.";
				say "     [line break]";
				say "     You crawl out of the room and make your escape while she's still busy with Eric, having no choice but to concede him to her. With him having accepted being her girlfriend and likely already pregnant from her, there won't be any reason to come back here.";
				now hp of Eric is 100;
				remove Eric from play;          
		otherwise:   [try it later]
			say "     Eric looks visibly deflated as you decline. 'Oh... if you change your mind, I'll be here. But we really should hurry - who knows what's happening to Stacy...'";
	otherwise if (hp of Eric is 1):   [virgin in the bunker]
		say "     You sit down beside Eric on a bunk and talk to him, trying to get him to open up about his... gender issues. He's very embarrassed about it all, rubbing his bandaged arm absentmindedly as he stockingly says 'After Danny bit me and nothing strange happened, I first thought I was immune to whatever is doing all this. But then later, as I was running away from him and through the chaos out in the campus, there was a wrenching feeling inside me and I fell down as my cock vanished and a vagina and womb formed.'";
		say "     'I hid in the lockerroom and tried to ignore it, hoping something could be done if the military or someone came - but with what happened with Stacy - I'm not sure if I can do that any longer. The feelings I had were... strange and amazing, and I couldn't do anything to resist them. If you hadn't pulled her off me in time...";
		say "     He takes a deep breath, then looks at you and shyly asks 'Do you think something can be done to change me back?' Wondering which answer he hopes for, you think for a moment what to answer. (Y = you'll search a cure; N = he should accept it)";
		if player consents:   [search for a cure]
			say "     You tell Eric that you'll have an eye out for a way to make him a man again. Maybe the cum of some creature that's fully male and still somewhat human would do the trick... and there surely will be centaurs somewhere in this city by now.";
			now hp of Eric is 20;
		otherwise:            [make him accept his pussy]
			say "     Putting a hand on Eric's arm, you tell him to accept what happened to him and be grateful that he's still human. You remind him how good he felt when Stacy rubbed his pussy, so maybe he could try it with someone he trusts...";
			now hp of Eric is 10;
	otherwise if (hp of Eric is 10):   [accepted his pussy]
		say "     He says 'Having a pussy still feels strange to me. Since that thing with Stacy, it keeps getting moist and swollen all the time.'";
	otherwise if (hp of Eric is 11):   [accepted his pussy, had sex with player]
		say "     He says 'Being part woman is better than I expected. Thank you for helping me accept this new me.' then steps closer, running a hand over your arm and whispers in your ear 'Wanna do another round in bed? I love being with you.'";
	otherwise if (hp of Eric is 20):   [hoping for a cure]
		if ("centaur cum" is not listed in invent of player):
			say "     He says 'Do you think you'll have something to cure me soon? You said something about centaurs the last time. Please hurry, I don't know how long I can hold out any more. Since that thing with Stacy, my pussy keeps getting moist and swollen all the time.'";
		otherwise:
			say "     You hand your bottle of centaur stallion cum to Eric, who puts it to his lips after a nod of encouragement from you and takes a deep pull. You wait several minutes, during which his hopeful expression slowly begins to wane as nothing happens - until suddenly, he's wracked by a convulsion. You hold Eric tightly so he doesn't fall off his bunk until he relaxes s short time later. Looking down at the new bulge in his shorts, it's clear at least something happened.";
			say "     Opening the zipper of his shorts, you pull them down to reveal his crotch - now pussy-less, but with a new blunt-tipped horse's cock and large balls. To help Eric accept being an - almost human - male again, you grab his erect newly grown member with both hands and pump them up and down on it. Encouraged by his lustful moans, you keep jerking him off and play with his balls with one hand. Pretty soon, his thick shaft pulses in your hand, and large globs of white seed blast out of the tip of his horsecock and all over Eric's chest. As he lies back on his bunk, you hear him pant 'Thank you.'";
			now hp of Eric is 21;
	otherwise if (hp of Eric is 21):   [now with a horsecock]
		say "     He says 'Man, this cock is something else. A bit strange that it's not human, but it's thicker and longer than my old one was. Thank you for this. Would you maybe want to try it out with me?'";
	otherwise if (hp of Eric is 22):   [now with a horsecock, had sex with the player]
		say "     He smiles, giving you an embrace and a quick kiss on the lips. 'How about another round in bed? I still can't get over this amazing cock you got me.'";
	otherwise if (hp of Eric is 99):   [cuntboy, taken advantage of]
		say "     He looks at you with a resigned expression, saying [one of]'I won't struggle if you fuck me - just please don't throw me out on the street.'[or]'I should hate you for what you did to me - but it felt so good. My traitor body constantly sends me urges to be fucked.'[at random]";
	otherwise if (hp of Eric is 100):   [lost to cheerleader girlfriend]
		say "ERROR-Eric-1B: He shouldn't be available to talk any longer! Please report how you got to this message.";

Section 3 - Fucking Eric

Instead of fucking the Eric:
	if (hp of Eric is 0):   [virgin - in the lockerroom]
		if(cocks of player > 0):
			say "     As you approach Eric and ask him if he wants some fun, his gaze drops down to your crotch and he hesitates. Swallowing hard and turning rather red in the face, he then shakes his head, saying 'I - I can't - I mean - I'm not gay. But thanks for the offer.'";
		otherwise if(cunts of player > 0):
			say "     Eric approaches you smiling as you make him an offer for some good time together. But then suddenly, he remembers something and his face turns red in embarrassment. Stuttering 'I - I'm sorry, I'm not in the mood.' he steps back, turning away from you.";
	if (hp of Eric is 1):   [virgin in the bunker]
		say "     Eric is rather evasive as you offer to take him to bed, his face getting red in embarrassment about his situation. Maybe you should talk to him about it a bit first.";
	if (hp of Eric is 10):   [virgin, accepted being a cuntboy]
		if(cocks of player > 0):
			say "     Stepping up to Eric, you embrace him and give him a deep kiss. When you come back up for air, you look deep into his eyes and say 'Please let me be your first - I'll be careful and go slow.' There's only a short moment of hesitation, then Eric nods and leans his head forward to kiss you back.";
			say "     You two make out for a moment, holding on to each other. In between playful tongue-wrestling, you let your hands wander all over him, feeling up his slender but muscled body and giving the nice firm buns of his ass a slight squeeze. No matter what he may be packing inside his shorts, Eric still has the build of a young male athlete. Eager to get get to know him more intimately, you grab him by the hand and lead him to your bunk.";
			say "     Eric quickly takes off his shoes and socks, then pulls off his shirt and throws it aside, revealing a nicely defined chest. You follow suit, rapidly sliding off your own clothing, then step close to your waiting partner. Running your hands over his chest, you make him gasp for a second as you brush over his nipples. Seems like your handsome cuntboy has gotten quite sensitive there. With a smile on your face you lean down and run your tongue over his chest, then circle each of his nipples with its tip and finally suck on them. Making Eric pant in lust is a lot of fun, and with your nose pressed against his warm skin you also take a deep breath of his masculine scent with its underlying female note.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     Feeling Eric's readiness to move on, you soon push him back softly to make him sit, then lie on your bunk bed. Then you move your hands to the band of his shorts, pulling them down over his long runner's legs as he raises his ass a bit to let the fabric slide over it. Under them, a flimsy white tanga comes into view, making Eric show a moment of embarrassment again as he says 'My old briefs were too... roomy ... in the front.' You lean in for a quick kiss, telling him 'You look really hot in them.' and then slide the thin underwear off him too.";
			say "     Now fully naked, Eric looks up from the bunk to you, his yes inevitably drawn to your by now rock-hard cock. With an inviting smile he spreads his legs for you, the lips of his slightly swollen pussy glistening with his female juices. Eagerly, you climb on the bunk with him, stroking his smooth legs as you kneel between them. Eric gasps as your dick touches his pussy the first time, followed by rapid panting as you rub up and down against its folds. Then you put your cockhead against his opening and slowly push forward, moaning in lust yourself as his nether lips spread for you, enveloping your shaft in a warm tight embrace.";
			say "     Sliding deeper into him, your progress soon meets resistance as your cock pushes against a soft flexible barrier inside him - Eric's hymen. You lean down and put your arms around him then find his lips with yours and give him a deep kiss. While distracting him with some playful tongue-wrestling, you push forward with your hips, increasing the pressure until you break through the thin flesh and make a real woman - or rather cuntboy - out of him.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     You rest your hard shaft inside Eric for a moment to allow him to get used to it, then start moving in and out, moaning in unison with your handsome athlete. His legs wrap around your hips and pull you tight against him with each of your thrusts. Fucking this tight virgin pussy has you incredibly aroused and you have to control yourself pretty hard to last a bit longer. And you're not the only one - soon Eric's moans and groans rise to a pretty noisy climax and you feel the femcum in his pussy around your cock. He pulls you down on top of him, going for a breathtaking kiss, then whispers 'Finish it - come inside me.'";
			say "     Giving him another quick kiss on the lips, you eagerly follow his request and pump your hips up and down rapidly, thrusting hard and deep into his body. With your cock already primed and ready to go, it takes just a few more thrusts for the cum to boil up from your balls and pulse through your cock in spurt after spurt. You fill Eric's pussy with your fertile seed, feeling a deep satisfaction as you imagine the millions of little swimmers invading his womb in search of an egg.";
			say "     Your cock still inside him, the two of you move to lie on your sides on the bunk, holding each other and reveling in post-coital bliss. Lying there, Eric softly strokes your side and says 'That was amazing - thank you.'";
		otherwise:  
			say "     Stepping up to Eric, you embrace him and give him a deep kiss. He practically melts into your arms as you hold him, eagerly returning your attentions with more kisses while his hands roam over your body. Looks like he's ready and willing to lose his virginity now - too bad you don't have the right 'equipment' for that right now... better try again later once you've gotten a cock to fuck him with.";
	if (hp of Eric is 11):   [cuntboy repeat sex]
		say "     You walk over to Eric, who immediately starts smiling as he sees the lust-filled twinkle in your eyes. Throwing his arms around you his lips find yours for a quick kiss, then he suggestively nods over to his bunk.";
		say "[EricSexMenu]";
		now lastEricfucked is turns; 
	if (hp of Eric is 20):   [virgin, hoping for a cure]
		say "     Eric is rather evasive as you offer to take him to bed, his face getting red in embarrassment about his situation. 'I- I thought you were going to get me a cure? Or did you check and there no way to fix this? I worry I might get stuck like this if I - you know - use it...'";
		say "     Do you want to tell Eric to hold out a little longer and that you'll find him something to make him a man again? Or should he learn to accept his new shape? (Y = hold out; N = accept the pussy)";
		if player consents:   [search for a cure]
			say "     You exchange some calming words with Eric, telling him that you'll of course find a cure for him. He nods to you then goes back to his bunk to lie down, still looking a bit worried.";
		otherwise:		        [make him accept being a cuntboy]
			say "     You calmly tell Eric that there is no sure way back for him and that it might be best to accept what he's become. His face falls as you say that, his expression showing disappointment and fear. To cheer him up a bit again, you remind him how good he felt when Stacy rubbed his pussy, to which he reluctantly agrees. Best to give him some time to think about it - maybe he'll be ready for some fun later.";
			now hp of Eric is 10;
	if (hp of Eric is 21):   [male with virgin horse-cock]
		say "     Stepping up to Eric, you lower your hand to the front of his shorts and rub against the bulge in its fabric, feeling his balls and flaccid cock. It doesn't stay that way for long though, growing into a truly impressive trouser snake as his body reacts to your touch.";
		say "     'Why don't we take this bad boy for a little spin - make you a real man again.' you tell him as you slide your hand under the band of his shorts and grab grab hold of his thick cock. Eric can only pant and nod eagerly as you fondle the organ where all the blood for his brain went. With a big smile on your face you lead him to his bunk and peel all clothing off Eric's athletic human body.";
		say "     Well, mostly human - the cock between his legs looks like it belongs to a horse... it's pretty long, with an animalistic pattern of black and white and shows a band of skin around the lower third that must be Eric's equine's sheath. The tip flares outwards proudly at the end, making you wonder how it will compare to a human manhood. Two massive black balls hang below it, looking ready to deliver a deluge of cum.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     Eager to take the virginity of Eric's new equipment, you softly push him down to lie on the bunk and grab hold of his horsecock with both hands. It's an impressive piece of anatomy, firm and warm in your hands as you stroke up and down on it. Not wanting to wait any longer, you quickly remove your clothes, then climb up on the bunk with Eric.";
		if cocks of player > 0 and cunts of player > 0:   [herms may choose]
			say "     Kneeling over him with your legs both sides of his hips, you feel the warmth radiating off his proudly erect cock. What do you want to use to deflower Eric? (Y = pussy, N = ass)";
			if player consents:
				say "     You grab hold of his thick shaft and hold it up so the flared head strokes your nether lips and slowly lower yourself on it, gasping as he enters your body. It's just amazing to feel his animalistic member slide up against your insides, which has both of you moaning and panting in lust. Then, as he bottoms out and you feel his massive balls against your skin, you lean down and give him a deep kiss.";
				say "     Sitting back up, you moan 'Let's ride, horseboy.' and start sliding up and down on Eric's long shaft. With its inhuman shape and the length and girth his horsecock has, you get rubbed in spots you barely know you had and have a very pleasant sensation of fullness. Below you, Eric is panting and moaning deeply, obviously overwhelmed by the novel experience of fucking with a horsecock. He grabs your hips, pulling you down harder against himself with each slide down and meeting your hips with an upwards thrust of his own.";
				say "     After a pleasant time riding his cock, Eric pulls you to a stop with his cock buried all the way inside you and asks you to get on all fours on the bunk. Looks like he's inherited some urges from the centaur donor of his 'cure'. With a satisfied grunt, Eric mounts your pussy from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he bottoms out inside you. Then he starts all-out rutting, his shaft sliding in and out of your pussy hard and deep. You climax from this animalistic fuck, having a mind-blowing orgasm that leaves your pussy dripping with female juices. Not too long after, Eric follows suit, filling your womb with a massive load of his fertile seed.";
				say "     [fimpregchance]";
				say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bunk together. In between panting for breath, he gives you another kiss on the neck and says 'That was... wow. Thank you so much for helping me fix this.' followed by a last little thrust of his manhood into you.";
			otherwise:
				say "     You grab hold of his thick shaft and hold it up so the flared head strokes against your asshole and slowly lower yourself on it, gasping as he enters your body. It's just amazing to feel his animalistic member slide up against your insides, which has both of you moaning and panting in lust. Then, as he bottoms out and you feel his massive balls against your skin, you lean down and give him a deep kiss.";
				say "     Sitting back up, you moan 'Let's ride, horseboy.' and start sliding up and down on Eric's long shaft. With its inhuman shape and the length and girth his horsecock has, you get rubbed in spots you barely know you had and have a very pleasant sensation of fullness. Below you, Eric is panting and moaning deeply, obviously overwhelmed by the novel experience of fucking with a horsecock. He grabs your hips, pulling you down harder against himself with each slide down and meeting your hips with an upwards thrust of his own.";
				say "     After a pleasant time riding his cock, Eric pulls you to a stop with his cock buried all the way inside you and asks you to get on all fours on the bunk. Looks like he's inherited some urges from the centaur donor of his 'cure'. With a satisfied grunt, Eric mounts your ass from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he bottoms out inside you. Then he starts all-out rutting, his shaft sliding in and out of your tight hole in hard and deep moves. You quickly climax from this animalistic fuck, having a mind-blowing orgasm that makes you spray your load all over the sheets of the bunk. Not too long after, Eric follows suit, filling your hole with a massive load of his fertile seed.";
				say "     [mimpregchance]";
				say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bunk together. In between panting for breath, he gives you another kiss on the neck and says 'That was... wow. Thank you so much for helping me fix this.' followed by a last little thrust of his manhood into you.";
		otherwise if cocks of player > 0:    [male]
			say "     You grab hold of his thick shaft and hold it up so the flared head strokes against your asshole and slowly lower yourself on it, gasping as he enters your body. It's just amazing to feel his animalistic member slide up against your insides, which has both of you moaning and panting in lust. Then, as he bottoms out and you feel his massive balls against your skin, you lean down and give him a deep kiss.";
			say "     Sitting back up, you moan 'Let's ride, horseboy.' and start sliding up and down on Eric's long shaft. With its inhuman shape and the length and girth his horsecock has, you get rubbed in spots you barely know you had and have a very pleasant sensation of fullness. Below you, Eric is panting and moaning deeply, obviously overwhelmed by the novel experience of fucking with a horsecock. He grabs your hips, pulling you down harder against himself with each slide down and meeting your hips with an upwards thrust of his own.";
			say "     After a pleasant time riding his cock, Eric pulls you to a stop with his cock buried all the way inside you and asks you to get on all fours on the bunk. Looks like he's inherited some urges from the centaur donor of his 'cure'. With a satisfied grunt, Eric mounts your ass from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he bottoms out inside you. Then he starts all-out rutting, his shaft sliding in and out of your tight hole in hard and deep moves. You quickly climax from this animalistic fuck, having a mind-blowing orgasm that makes you spray your load all over the sheets of the bunk. Not too long after, Eric follows suit, filling your hole with a massive load of his fertile seed.";
			say "     [mimpregchance]";
			say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bunk together. In between panting for breath, he gives you another kiss on the neck and says 'That was... wow. Thank you so much for helping me fix this.' followed by a last little thrust of his manhood into you.";
		otherwise if cunts of player > 0:    [female]      
			say "     You grab hold of his thick shaft and hold it up so the flared head strokes your nether lips and slowly lower yourself on it, gasping as he enters your body. It's just amazing to feel his animalistic member slide up against your insides, which has both of you moaning and panting in lust. Then, as he bottoms out and you feel his massive balls against your skin, you lean down and give him a deep kiss.";
			say "     Sitting back up, you moan 'Let's ride, horseboy.' and start sliding up and down on Eric's long shaft. With its inhuman shape and the length and girth his horsecock has, you get rubbed in spots you barely know you had and have a very pleasant sensation of fullness. Below you, Eric is panting and moaning deeply, obviously overwhelmed by the novel experience of fucking with a horsecock. He grabs your hips, pulling you down harder against himself with each slide down and meeting your hips with an upwards thrust of his own.";
			say "     After a pleasant time riding his cock, Eric pulls you to a stop with his cock buried all the way inside you and asks you to get on all fours on the bunk. Looks like he's inherited some urges from the centaur donor of his 'cure'. With a satisfied grunt, Eric mounts your pussy from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he bottoms out inside you. Then he starts all-out rutting, his shaft sliding in and out of your pussy hard and deep. You climax from this animalistic fuck, having a mind-blowing orgasm that leaves your pussy dripping with female juices. Not too long after, Eric follows suit, filling your womb with a massive load of his fertile seed.";
			say "     [fimpregchance]";
			say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bunk together. In between panting for breath, he gives you another kiss on the neck and says 'That was... wow. Thank you so much for helping me fix this.' followed by a last little thrust of his manhood into you.";
		otherwise:                           [neuter]
			say "     You grab hold of his thick shaft and hold it up so the flared head strokes against your asshole and slowly lower yourself on it, gasping as he enters your body. It's just amazing to feel his animalistic member slide up against your insides, which has both of you moaning and panting in lust. Then, as he bottoms out and you feel his massive balls against your skin, you lean down and give him a deep kiss.";
			say "     Sitting back up, you moan 'Let's ride, horseboy.' and start sliding up and down on Eric's long shaft. With its inhuman shape and the length and girth his horsecock has, you get rubbed in spots you barely know you had and have a very pleasant sensation of fullness. Below you, Eric is panting and moaning deeply, obviously overwhelmed by the novel experience of fucking with a horsecock. He grabs your hips, pulling you down harder against himself with each slide down and meeting your hips with an upwards thrust of his own.";
			say "     After a pleasant time riding his cock, Eric pulls you to a stop with his cock buried all the way inside you and asks you to get on all fours on the bunk. Looks like he's inherited some urges from the centaur donor of his 'cure'. With a satisfied grunt, Eric mounts your ass from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he bottoms out inside you. Then he starts all-out rutting, his shaft sliding in and out of your tight hole in hard and deep moves. You quickly climax from this animalistic fuck, your body shaking from the pleasant sensations. Not too long after, Eric follows suit, filling your hole with a massive load of his fertile seed.";
			say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bunk together. In between panting for breath, he gives you another kiss on the neck and says 'That was... wow. Thank you so much for helping me fix this.' followed by a last little thrust of his manhood into you.";
		now hp of Eric is 22;
	if (hp of Eric is 22):   [male with horse-cock repeats]
		say "     You walk over to Eric, who immediately starts smiling as he sees the lust-filled twinkle in your eyes. Throwing his arms around you, his lips find yours for a quick kiss, then he suggestively nods over to his bunk.";
		say "[EricSexMenu]";
		now lastEricfucked is turns; 
	if (hp of Eric is 99):   [moderately unwilling cuntboy repeats]	
		say "     'Time to have sex with your personal gender-switched freak again?' Eric says, looking at you in disdain. 'I should hate you for making me do this - but my pussy gets wet just thinking about it...' With a sigh, he strips off his clothing and looks to you, waiting for orders.";
		say "[EricSexMenu]";
		now lastEricfucked is turns;    

to say EricSexMenu:
	blank out the whole of table of fucking options;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him blow your cock";
		now sortorder entry is 1;
		now description entry is "Put your pussyboy's mouth to good use.";
		now toggle entry is EricSex rule;
	if (hp of Eric is 22):
		choose a blank row in table of fucking options;
		now title entry is "Suck Eric's cock";
		now sortorder entry is 2;
		now description entry is "Put Eric's long horsecock in your mouth.";
		now toggle entry is EricSex rule;		
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him lick your pussy";
		now sortorder entry is 3;
		now description entry is "Put your pussyboy's mouth to good use.";
		now toggle entry is EricSex rule;
	if (hp of Eric is 11):		
		choose a blank row in table of fucking options;
		now title entry is "Finger his pussy";
		now sortorder entry is 4;
		now description entry is "Finger-fuck Eric's pussy to make him cum.";
		now toggle entry is EricSex rule;		
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Fuck his pussy";
		now sortorder entry is 5;
		now description entry is "Fill the pussyboy with your cock.";
		now toggle entry is EricSex rule;
	if (hp of Eric is 22):
		choose a blank row in table of fucking options;
		now title entry is "Let him fuck your pussy";
		now sortorder entry is 6;
		now description entry is "Ride Eric's long horsecock.";
		now toggle entry is EricSex rule;		
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Eric's ass";
		now sortorder entry is 7;
		now description entry is "Fill the pussyboy's ass with your cock.";
		now toggle entry is EricSex rule;
	if (hp of Eric is 22):
		choose a blank row in table of fucking options;
		now title entry is "Let him fuck your ass";
		now sortorder entry is 8;
		now description entry is "Ride Eric's long horsecock.";
		now toggle entry is EricSex rule;			
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the EricSex rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Have him blow your cock"):
			say "[EricSex1]";
		if (nam is "Suck Eric's cock"):
			say "[EricSex2]";	
		otherwise if (nam is "Have him lick your pussy"):
			say "[EricSex3]";
		otherwise if (nam is "Finger his pussy"):
			say "[EricSex4]";
		otherwise if (nam is "Fuck his pussy"):
			say "[EricSex5]";
		otherwise if (nam is "Let him fuck your pussy"):
			say "[EricSex6]";		
		otherwise if (nam is "Take Eric's ass"):
			say "[EricSex7]";
		otherwise if (nam is "Let him fuck your ass"):
			say "[EricSex8]";
		wait for any key;

to say EricSex1:    [cock sucked by Eric]
	if(hp of Eric is 11):   [cuntboy repeat sex]
		say "     Staying right where you are, you give Eric's shoulders a soft push to make him crouch down before you. Pulling down your rapidly hardening cock, you stroke it a few times and then hold it out for him.";		  
		say "     Eric licks it, then takes it into his mouth without any hesitation, clearly eager to satisfy your lust. Him looking up at you adoringly with your manhood sliding in and out of his mouth is quite a sight. You stroke his neck, then run your hand through his red hair and grab hold of his head. Pulling his mouth deeper onto your shaft, you start fucking his face, going slow at first for him to get used to it, then speed up and go deeper and deeper.";		  
		say "     His soft lips and warm mouth around your cock give you an amazing feeling, making you moan in lust. He might be new to sucking cocks, but having been a male himself not too long ago, he clearly knows how to please you orally. And he's very eager and willing to learn, even going for a few deep throat moments after taking deep breaths.";		  
		say "     With such a handsome cuntboy eager to please, it doesn't take long until your balls tighten and your cock pulses with burst after burst of cum it's depositing onto Eric's tongue. He sticks it out for a moment for you to see your white load, then closes his mouth and swallows it all down. Standing up, he puts his arms around you and gives you a quick kiss, leaving you with a warm feeling and the taste of cum on your lips.";		  
	otherwise if(hp of Eric is 22):   [male with horse-cock repeats]
		say "     Staying right where you are, you give Eric's shoulders a soft push to make him crouch down before you. Pulling down your rapidly hardening cock, you stroke it a few times and then hold it out for him.";		  
		say "     He looks at it for a second, then takes it into his hand and slowly runs his tongue over the head. You don't think he had any gay encounters before all this, but with being a woman in between and you saving his bacon, he's clearly willing to try anything with you now. After getting over the first moment of restraint, he jumps right into the action, licking your shaft and then taking it into his mouth. Him looking up at you adoringly with your manhood sliding in and out of his mouth is quite a sight. You stroke his neck, then run your hand through his red hair and grab hold of his head. Pulling his mouth deeper onto your shaft, you start fucking his face, going slow at first for him to get used to it, then speed up and go deeper and deeper.";		  
		say "     His soft lips and warm mouth around your cock give you an amazing feeling, making you moan in lust. He might be new to sucking cocks, but he clearly knows how to please a man orally from his own experiences as the receiver. And he's very eager and willing to learn doing it himself, even going for a few deep throat moments after taking deep breaths.";		  
		say "     With such a handsome guy eager to please, it doesn't take long until your balls tighten and your cock pulses with burst after burst of cum it's depositing onto Eric's tongue. He sticks it out for a moment for you to see your white load, then closes his mouth and swallows it all down. Standing up, he puts his arms around you and gives you a quick kiss, leaving you with a warm feeling and the taste of cum on your lips.";		  
	otherwise if(hp of Eric is 99):   [moderately unwilling cuntboy]	  
		say "     Staying right where you are, you push down on Eric's shoulders and make him kneel in front of you. Pulling down your rapidly hardening cock, you stroke it a few times and then hold it out for him.";		  
		say "     He looks hesitantly at it until you reach out and grab his head, pulling him towards your crotch. You push against his lips with the tip of your cock, then hear a soft sigh as he opens his mouth and takes you in. You don't think he had any gay encounters before all this and you have to remind him not to touch your rod with his teeth, but soon you got him sucking on your cock correctly. Seeing your manhood sliding in and out of his mouth gives you a sense of power that fuels your rising lust, making you grab his head tightly with both your hands and start face-fucking him. Pulling his mouth deeper onto your shaft, there is a moment or two in which he gags for air, but soon he gets used to it and you can slide deep inside his throat.";		  
		say "     His soft lips and warm mouth around your cock give you an amazing feeling, making you moan in lust. He might be new to sucking cocks, but he'll learn over time and you get off on making him do it.";		  
		say "     It doesn't take long until your balls tighten and your cock pulses with burst after burst of cum it's depositing onto Eric's tongue. He starts turning his head to spit it out, but you grab him and order him to swallow it all. After having him stick out his tongue so you can check it's all gone, you give him a pat on his head, saying 'Good boy.'";		  
	otherwise:
		say "ERROR-Eric-1C: He isn't in one of the states he should be in! Please report how you got to this message.";
			
to say EricSex2:    [sucking Eric's cock]
	if(hp of Eric is 22):   [male with horse-cock repeats]
		say "     Pulling him into a tight embrace, your then let your hand wander down his body until it reaches his crotch. You stroke his already quite large bulge through the fabric for a moment, then push your hands under his shirt and pull it over his head. Hooking your hands over the bands of his shorts and briefs, you pull them down in one go. Now fully naked, Eric looks delicious to your eyes, with his lithe human body and large equine cock and balls.";		  
		say "     Eagerly you kneel down, taking his manhood in both hands and lick over its wide flared head. He throws his head back and moans 'Yes! Suck it please - I need it.' Grinning, you give him a few more slow strokes up and down his long shaft until he's almost shaking with arousal, then slide your lips over his horsecock. Sucking on his erect member, you get a taste of his pre-cum and smell the animal-like musk of his crotch. It makes you want more, and you go faster and faster, soon bobbing rapidly up and down on his cock.";		  
		say "     At some point, Eric takes over and holds your head while face-fucking his cock in and out of you - but you don't really care, totally concentrated on the feeling of him sliding in and out of your throat and the taste of him. You reach up, taking hold of his large balls with your hands and massage them softly, making Eric grunt in pleasure. After a short while and a bit of oral attention more, you feel the balls pulse in your hands as Eric blows his load deep into your moth, the first blast going right down your throat into your stomach. Then he pulls back a bit and shoots thick ropes of cum onto your tongue, filling your mouth with its animalistic taste.";		  
		say "     You softly suck on him and run your tongue over his cock as it shoots more cum, then pull off it when he stops and stand up. Running a hand through Eric's red hair, you pull him close and start making out with him. His eyes widen a bit when you push some of his cum into his mouth with your tongue, but he takes it in stride, continuing your kissing and wrestling your tongue with his own. As you pull back for some air, he smiles at you, pushing out his cum-covered tongue then demonstratively swallows what you gave him. Looks like he likes the taste himself."; 
	otherwise:
		say "ERROR-Eric-1D: He shouldn't have a cock right now! Please report how you got to this message.";
	
to say EricSex3:    [cunt licked by Eric]
	if(hp of Eric is 11):   [cuntboy repeat sex]
		say "     Strolling towards the bunk you slide off your clothing, then lie down on it and spread your legs, telling Eric to give you pleasure with his tongue. He kneels down in front of the bunk and moves one hand forward to spread your nether lips, then licks over them. 'Stacy always said I'm good at oral sex. And I... practiced a bit with my own...'";
		say "     And it's true - your eager cuntboy licks and fondles your sex expertly, making you moan in rising arousal. Looks like becoming a woman has given him an insight on the whole matter. After a quite pleasurable time where he rubs erogenous zones inside your pussy you barely knew existed, you moan loudly and orgasm, dripping female juices over his fingers. Eric keeps going, fondling your lips as you shiver in pleasure and slurps up your femcum. Finally he stands up again, giving you a kiss tasting of your own pussy juice.";
	otherwise if(hp of Eric is 22):   [male with horse-cock repeats]
		say "     Strolling towards the bunk you slide off your clothing, then lie down on it and spread your legs, telling Eric to give you pleasure with his tongue. He kneels down in front of the bunk and moves one hand forward to spread your nether lips, then expertly licks over them. 'Stacy always said I'm good at oral sex. And I... practiced a bit before you made me a man again.";
		say "     And it's true - your eager runner licks and fondles your sex expertly, making you moan in rising arousal. Looks like his short stint as a woman has given him an insight on the whole matter. After a quite pleasurable time where he rubs erogenous zones inside your pussy you barely knew existed, you moan loudly and orgasm, dripping female juices over his fingers. Eric keeps going, fondling your lips as you shiver in pleasure and slurps up your femcum. Finally he stands up again, giving you a kiss tasting of your own pussy juice.";
	otherwise if(hp of Eric is 99):   [moderately unwilling cuntboy]	  
		say "     Strolling towards the bunk you slide off your clothing, then lie down on it and spread your legs, ordering Eric to come over and get licking. He reluctantly kneels down in front of the bunk, looking at your pussy. Not wanting for him to make up his mind, you just grab his head, pushing him down to your crotch and holding him there until he opens up and starts licking your folds.";
		say "     Despite the slow start, he gets more into servicing you pretty soon, licking and fondling your female sex. And he's rather good at it too - looks like becoming a woman has given him an insight on the whole matter. After a quite pleasurable time where he rubs erogenous zones inside your pussy you barely knew existed, you moan loudly and orgasm, dripping female juices over his fingers. Eric keeps going, fondling your lips as you shiver in pleasure and slurps up your femcum. You look down at him kneeling in front of you, then run a hand over your cunt and rub in the female juices all over Eric's face. 'Just admit to yourself that you like it.'";
	otherwise:
		say "ERROR-Eric-1C: He isn't in one of the states he should be in! Please report how you got to this message.";
	
to say EricSex4:    [Eric's cunt licked/fingered]
	if(hp of Eric is 11):   [cuntboy repeat sex]
		say "     Taking Eric by the hand, you lead him over to his bunk and push your hands under his shirt. Feeling up his firm chest muscles for a moment, next you take hold of the shirt and pull it off him. Then it's time for his shorts, which you slide down his long runner's legs, stroking over his skin as you go. Now your handsome athlete is almost naked before you, just wearing a skimpy white tanga already showing a little damp spot at the front.";
		say "     Running your hands over his body, you pull Eric in for another quick kiss, then softly push him backwards against the bunk and make him lie down on it. You stroke over the thin fabric of his panties with your fingers, making him moan needily. Looks like your cuntboy is about ready... you pull the panties off his body, revealing his swollen pussy with its open, glistening lips.";
		say "     Kneeling down, you give him a careful lick and taste his juices, then really go to town on him - licking and fondling his female bits until he's panting and squirming in arousal, his hands grabbing the sheets tightly. You keep going for quite a bit until suddenly he gives a lustful scream and orgasms, dripping femcum from his spread pussy. You sit beside him on the bunk, softly stroking his body as he rides out the sexual high. When he finally comes down to normal a while later, he pulls you down to lie beside him and gives you a kiss. 'If I had known it'd be like this, I'd have jumped you the moment you came to me. Who wouldn't want to be a woman with you...'";
	otherwise if(hp of Eric is 22):   [male with horse-cock repeats]
		say "ERROR-Eric-1D: This option shouldn't be available since he has no cunt in the current form. Please report how you got to this message.";
	otherwise if(hp of Eric is 99):   [moderately unwilling cuntboy]	  
		say "     Deciding your cuntboy needs a bit of help accepting his womanhood, you pull him along to the bunk and fondle his body, playing with his sensitive nipples. Then you push him backwards so he falls down onto the bunk on his back and tell him to spread his legs.";
		say "     Between them, his pussy comes into sight, moisture glistening between its swollen lips. Looks like your cuntboy is about ready... ";
		say "     Kneeling down, you give him a lick and taste his juices, then really go to town on him - licking and fondling his female bits until he's panting and squirming in arousal, his hands grabbing the sheets tightly. You keep going for quite a bit until suddenly he gives a lustful scream and orgasms, dripping femcum from his spread pussy. You sit beside him on the bunk, fondling his lithe body as he rides out the sexual high. When he finally comes down to normal a while later, he says 'Damn, it shouldn't feel so good when you use me like this. I can't believe I came like that.'";
	otherwise:
		say "ERROR-Eric-1C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say EricSex5:    [Eric's pussy fucked by player]
	if(hp of Eric is 11):   [cuntboy repeat sex]
		say "     Taking Eric by the hand, you lead him over to his bunk and push your hands under his shirt. Feeling up his firm chest muscles for a moment, next you take hold of the shirt and pull it off him. Then it's time for his shorts, which you slide down his long runner's legs, stroking over his skin as you go. Now your handsome athlete is almost naked before you, just wearing a skimpy white tanga already showing a little damp spot at the front.";
		say "     Running your hands over his body, you pull Eric in for another quick kiss, then softly push him backwards against the bunk and make him lie down on it. You stroke over the thin fabric of his panties with your fingers, making him moan needily. Looks like your cuntboy is about ready... you pull the panties off his body, revealing his swollen pussy with its open, glistening lips.";
		say "     Quickly stripping off your own clothing, you climb on the bunk with him and kneel between his spread legs. He just looks so delicious, lying before you with his athletic body and that eager expression on his face. You barely manage to control the impulse to just plunge in and take him then and there, instead going slow and rubbing the tip of your cock up and down over his pussy lips, making him pant in need. After pushing softly against his opening several times, then going back to more rubbing, Eric moans 'Please - I need you in me.'";
		say "     Following your handsome cuntboy's needful request, you aim your shaft and push forward, giving both your bodies the unity they craved for. As you sink deeper inside him, you lean down and make out with Eric, moaning into each other's mouth when you bottom out inside him. With the warm, tight hole around your cock, all restraint is soon forgotten and you start fucking him hard and deep. Eric gives lustful grunts to accompany the sound of your hips slapping against his crotch and wraps his arms and legs around you in an intimate embrace.";
		say "     You fuck each other like sex-starved bunnies for at least an hour, only stopping for a moment when you cum inside him and fill his womb with your fertile seed, then make out a bit until you're ready to go on. It's a wild ride, but finally - after him and you coming three times - you come to lie on the bunk together in each other's arms. Eric gives you a soft kiss on the lips, murmuring 'I love you.' before dozing off. You kiss his forehead and wish you could stay like this forever, your arms around him and your softening cock still inside his cum-filled pussy. With a last thought you imagine your cum exploring his womb for an egg to create life with, then fall asleep yourself.";
	otherwise if(hp of Eric is 22):   [male with horse-cock repeats]
		say "ERROR-Eric-1D: This option shouldn't be available since he has no cunt in the current form. Please report how you got to this message.";
	otherwise if(hp of Eric is 99):   [moderately unwilling cuntboy]	  
		say "     Deciding it's time to fuck your cuntboy, you pull him along to the bunk and fondle his body, playing with his sensitive nipples. Then you push him backwards so he falls down onto the bunk on his back and tell him to spread his legs. Between them, his pussy comes into sight, moisture glistening between its swollen lips. Looks like your cuntboy is about ready to be used...";
		say "     Quickly stripping off your own clothing, you climb on the bunk with him and kneel between his spread legs. He just looks so delicious, lying before you with his athletic body and that inviting pussy open to you. A thought of going slow quickly evaporates before your boiling lust and you aim your shaft and then plunge into Eric's body in one go, making him groan as your cock suddenly spreads his pussy lips. He whimpers a bit as you slide deeper, but soon starts to moan in lust as you bottom out and start going in and out, rubbing against his inner walls.";
		say "     You fuck each other like sex-starved bunnies for at least an hour, only stopping for a moment when you cum inside him and fill his womb with your fertile seed, then rest a moment on top of him until you're ready to go on. It's a wild ride, but finally - after him and you coming three times - you come to lie on the bunk side by side, your softening erection still inside him. Eric murmurs to himself 'I can't believe how much this gets me off. Three times. What does he want to do - use me as a breeding bitch?' before dozing off. Not a bad idea, you think for yourself before sleep claims you too.";
	otherwise:
		say "ERROR-Eric-1C: He isn't in one of the states he should be in! Please report how you got to this message.";
	
to say EricSex6:    [player's pussy fucked by Eric]
	if(hp of Eric is 22):   [male with horse-cock repeats]
		say "     Pulling him into a tight embrace, your then let your hand wander down his body until it reaches his crotch. You stroke his already quite large bulge through the fabric for a moment, then push your hands under his shirt and pull it over his head. Hooking your hands over the bands of his shorts and briefs, you pull them down in one go. Now fully naked, Eric looks delicious to your eyes, with his lithe human body and large equine cock and balls.";		  
		say "     Taking him by the hand, you lead him to your bunk and quickly strip off your own clothing, then lie back on the bed and spread your legs invitingly. Not having to be asked twice, Eric eagerly joins you on the bunk, kneeling between your legs. He takes his massive horsecock in one hand, guiding it towards your nether lips and rubs the flared head of his cock against them. Encouraged by your lustful moans, he aims right at your pussy and pushes forward, your folds stretching wide around his thick blunt-tipped maleness.";		  
		say "     It's just amazing how good he makes you feel with his long and thick inhumanly shaped cock. He fucks you with regular strokes, plunging deep inside you while his hands stroke your body. Then, after a while he leans down to make out with you, his cock all the way inside as he wrestles your tongue with his. Coming up for air, he moans 'Get on all fours please - I want to fuck you from behind.'";		  
		say "     Looks like he's inherited some urges from the centaur donor of his 'cure'... but hey, it's been amazing fucking him so far, so you readily roll over and get on all fours when he pulls out of you. With a satisfied grunt, Eric mounts your ass from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he sinks his shaft all the way inside. Then he starts all-out rutting, the thick horsecock sliding in and out of your tight hole in hard and deep moves. You quickly climax from this animalistic fuck, your body shaking from the pleasant sensations. Not too long after, Eric follows suit, filling your hole with a massive load of his fertile seed.";
		say "     [fimpregchance]";
		say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bunk together. In between panting for breath, he gives you another kiss on the neck and says 'Wow. You're the best.' followed by a last little thrust of his manhood into you.";
	otherwise:
		say "ERROR-Eric-1D: He shouldn't have a cock right now! Please report how you got to this message.";
	
to say EricSex7:    [fucking Eric's ass]
	if(hp of Eric is 11):   [cuntboy repeat sex]
		say "     Taking Eric by the hand, you lead him over to his bunk and push your hands under his shirt. Feeling up his firm chest muscles for a moment, next you take hold of the shirt and pull it off him. Then it's time for his shorts, which you slide down his long runner's legs, stroking over his skin as you go. Now your handsome athlete is almost naked before you, just wearing a skimpy white tanga already showing a little damp spot at the front.";
		say "     Running your hands over his body, you pull Eric in for another quick kiss, then softly push him backwards against the bunk and make him lie down on it. You stroke over the thin fabric of his panties with your fingers, making him moan needily. Looks like your cuntboy is about ready... you pull the panties off his body, revealing his swollen pussy with its open, glistening lips - and below that, his tight pucker, winking invitingly from between his butt-cheeks.";
		say "     Quickly stripping off your own clothing, you climb on the bunk with him and kneel between his spread legs. He just looks so delicious, lying before you with his athletic body and that eager expression on his face. You barely manage to control the impulse to just plunge in and take him then and there, instead going slow and rubbing the tip of your cock up and down over his pussy lips and down the crack of his ass, making him pant in need.";
		say "     When you start pushing softly against his rear opening, Eric's eyes looking up at you get very round for a second. You don't think he had any gay encounters with anal sex before all this, but with becoming a woman his readiness to take cocks into his body increased a lot and he's willing to try anything with you. After the moment of hesitation, he smiles up at you, indicating to go on.";
		say "     With your handsome cuntboy now ready for it, you aim your shaft and push forward, giving both your bodies the unity they crave for. As you sink deeper inside him, you lean down and make out with Eric, moaning into each other's mouth when you bottom out inside his tight ass. With the warm hole around your cock, all restraint is soon forgotten and you start fucking him hard and deep. Eric gives lustful grunts to accompany the sound of your hips slapping against his and wraps his arms and legs around you in an intimate embrace.";
		say "     You fuck each other like sex-starved bunnies for at least an hour, only stopping for a moment when you cum inside him and fill his ass with your fertile seed, then make out a bit until you're ready to go on. It's a wild ride, but finally - after him and you coming three times - you come to lie on the bunk together in each other's arms. Eric gives you a soft kiss on the lips, murmuring 'I love you.' before dozing off. You kiss his forehead and wish you could stay like this forever, your arms around him and your softening cock still inside his cum-filled hole. Then you too fall asleep.";
	otherwise if(hp of Eric is 22):   [male with horse-cock repeats]
		say "     Taking Eric by the hand, you lead him over to his bunk and push your hands under his shirt. Feeling up his firm chest muscles for a moment, next you take hold of the shirt and pull it off him. Then it's time for his shorts, which you slide down his long runner's legs, stroking over his skin as you go. Now your handsome athlete is almost naked before you, just wearing white briefs, bulging at the front with his cock and balls.";
		say "     Running your hands over his body, you pull Eric in for another quick kiss, then softly push him backwards against the bunk and make him lie down on it. You stroke over the thin fabric of his briefs with your fingers, making him moan needily and the bulge grow a bit. Looks like your horseboy is about ready... you pull the briefs off his body, freeing the long horsecock and his large round balls - and below that, revealing his tight pucker, winking invitingly from between his butt-cheeks.";
		say "     Quickly stripping off your own clothing, you climb on the bunk with him and kneel between his spread legs. He just looks so delicious, lying before you with his athletic body and that eager expression on his face. You barely manage to control the impulse to just plunge in and take him then and there, instead going slow and rubbing the tip of your cock up and down the crack of his ass.";
		say "     When you start pushing softly against his rear opening, Eric's eyes looking up at you get very round for a second. You don't think he had any gay encounters with anal sex before all this, but with the temporary gender confusion his readiness to take cocks into his body increased a lot and he's willing to try anything with you now for saving his bacon. After the moment of hesitation, he smiles up at you, indicating to go on.";
		say "     With your handsome athlete ready for it, you aim your shaft and push forward, giving both your bodies what they crave for. As you sink deeper inside him, you lean down and make out with Eric, moaning into each other's mouth when you bottom out inside his tight ass. With the warm hole around your cock, all restraint is soon forgotten and you start fucking him hard and deep. Eric gives lustful grunts to accompany the sound of your hips slapping against his and wraps his arms and legs around you in an intimate embrace.";
		say "     You fuck each other like sex-starved bunnies for at least an hour, only stopping for a moment when you cum inside him and fill his ass with your fertile seed, then make out a bit until you're ready to go on. It's a wild ride, but finally - after him and you coming three times - you come to lie on the bunk together in each other's arms. Eric gives you a soft kiss on the lips, murmuring 'I love you.' before dozing off. You kiss his forehead and wish you could stay like this forever, your arms around him and your softening cock still inside his cum-filled hole. Then you too fall asleep.";
	otherwise if(hp of Eric is 99):   [moderately unwilling cuntboy]	  
		say "     Deciding it's time to fuck your cuntboy, you pull him along to the bunk and fondle his body, playing with his sensitive nipples. Then you push him backwards so he falls down onto the bunk on his back and tell him to spread his legs. Between them, his pussy comes into sight, moisture glistening between its swollen lips - and below, a tight pucker winks invitingly at you. Looks like your cuntboy is about ready to be used...";
		say "     Quickly stripping off your own clothing, you climb on the bunk with him and kneel between his spread legs. He just looks so delicious, lying before you with his athletic body and that tight ass ready for you. A thought of going slow quickly evaporates before your boiling lust and you aim your shaft and then plunge into Eric's body in one go, making him groan as your cock suddenly pops through his pucker and invades his asshole. He whimpers a bit as you slide deeper, but soon starts to moan in lust as you bottom out and start going in and out, rubbing against his inner walls.";
		say "     You fuck each other like sex-starved bunnies for at least an hour, only stopping for a moment when you cum inside him and fill his ass with your seed, then rest a moment on top of him until you're ready to go on. It's a wild ride, but finally - after him and you coming three times - you come to lie on the bunk side by side, your softening erection still inside him. Eric murmurs to himself 'I can't believe how much this gets me off. Three times.' before dozing off. You grind your hips against his one last time, then fall asleep yourself soon afterwards..";
	otherwise:
		say "ERROR-Eric-1C: He isn't in one of the states he should be in! Please report how you got to this message.";
	
to say EricSex8:    [player's ass fucked by Eric]
	if(hp of Eric is 22):   [male with horse-cock repeats]
		say "     Giving him a smile, you move over to his bunk and do a little strip-show, pulling off your clothes and doing some poses. Then you climb on the bunk, resting on all fours and wiggle your ass at Eric invitingly. 'Want a ride, horseboy?'";		  
		say "     He looks a bit dumbstruck at you for a second, then has to bend over to take the strain off his rapidly growing erection trapped inside his shorts. You don't think he had any gay encounters before all this, but the temporary gender confusion and new urges to mount anyone from behind he inherited from the centaur donor of his 'cure', it seems his body is ready for it. And with the fun you're having together and him being incredibly thankful for saving him, you're sure he'll get over his last hangups soon too. After getting over the first moment of restraint, he almost rips his shirt off, then slides down his shorts and undies to free the massive erection dangling between his legs.";
		say "     Turning you over a bit so your butt is right at the edge of the bunk, he stands behind you and rubs his horsecock up and down your crack. Taking hold of his shaft, he then aims the flared tip at your opening and pushes against it slow and steady until it opens up and he pops inside. You gasp as he enters your body, then quickly start moaning as the pain of the initial penetration fades against the feelings of his thick cock rubbing against your inner walls as he slides deeper. Holding on to your hips with both hands, Eric sinks himself into you, holding still a moment as he bottoms out. Then he starts fucking in and out of you - first slowly, then faster and faster as his arousal rises.";		  
		say "     Grunting in satisfaction of mounting someone from behind, he puts his arms around you, feeling up your chest and kissing your neck as he sinks his shaft all the way inside. Then he starts all-out rutting, the thick horsecock sliding in and out of your tight hole in hard and deep moves. You quickly climax from this animalistic fuck, your body shaking as you [if cocks of player > 0]shoot spurt after spurt of cum onto the sheets[otherwise if cunts of player > 0]drip a copious amount of femcum onto the sheets[otherwise]have an orgasm.[end if]. Not too long after, Eric follows suit, filling your hole with a massive load of his fertile seed from his large horse balls.";
		say "     [mimpregchance]";
		say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bunk together. In between panting for breath, he gives you another kiss on the neck and says 'Wow. You're the best.' followed by a last little thrust of his manhood into you.";
	otherwise:
		say "ERROR-Eric-1D: He shouldn't have a cock right now! Please report how you got to this message.";

Section 4 - Endings

when play ends:
	say "     ...";

Eric ends here.
