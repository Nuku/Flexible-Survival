Version 3 of Eric by Wahn begins here.
[Version 3.1: Satyr-hung Eric variation - Stripes]

"Adds an NPC named Eric to the Flexible Survival game"

[ HP states of Eric                                                  ]
[   0: Holed up in the lockerroom                                    ]
[   1: Cuntboy virgin, in the Bunker                                 ] 
[  10: Accepted being a cuntboy, in the Bunker                       ] 
[  11: Accepted being a cuntboy, had sex with player, in the Bunker  ] 
[  20: Hoping for a cure, virgin, in the Bunker                      ] 
[  21: now with horsecock, virgin, in the Bunker                     ] 
[  22: now with horsecock, had sex with player, in the Bunker        ] 
[  31: now with satyrcock, virgin, in the Bunker                     ] 
[  32: now with satyrcock, had sex with player, in the Bunker        ] 
[  99: Taken advantage of -> submissive cuntboy, in the Bunker       ] 
[ 100: Stacy's girlfriend now, pregnant (no longer available)        ] 

[ Thirst states of Eric (for the smell)                              ]
[   0: Smells male & something the player can't identify             ]
[   1: Smells male + fertile pussy                                   ]
[  11: Smells male + pregnant pussy                                  ]
[  21: Smells male + horse musk                                      ]
[  31: Smells male + satyr musk                                      ]

[ Libido states of Eric (for reactions against a player furling)     ]
[   0: Eric has never seen the player in Furling shape		           ]
[   1: Eric has seen the player in Furling shape - is not frightened ]
	
[ Lust states of Eric (for sex with David) 												   ]
[   0: starting state																			           ]
[   1: talked with David about Eric       										 			 ]
[   2: David talked with Eric / sub Eric's opinion doesn't matter		 ]
[   3: ready for sex with David																			 ]
[   4: had sex with David																						 ]
	
to say WaitLineBreak:   [little bit of often used code]
	if waiterhater is 0:
		wait for any key; [skips waiting if it's not wanted]
		if hypernull is 0, say "[line break]";	[adds a break after the 'more']
	otherwise:
		say "[line break]"; [people who don't want to wait at least get a break]

Section 1 - Meeting Event

Barricaded Lockerroom is a situation. The level of Barricaded Lockerroom is 8.
The sarea of Barricaded Lockerroom is "Campus";
when play begins:
	add Barricaded Lockerroom to badspots of hermaphrodite;      [cuntboy, later a fight against a hulking cheerleader]

Instead of resolving a Barricaded Lockerroom:
	say "     While exploring the sports arena on the campus, you come upon the closed door to the men's locker room, looking rather battered with lots of claw scratches on it. When you try the doorhandle, it opens only a crack before bumping into something heavy - accompanied by a loud clanking noise. A man's voice can be heard from inside a moment later: 'Stay away you crazy critters! I'm warning you - I've got a baseball bat and am willing to use it. You're not getting another bite out of me!'";
	say "     [line break]";
	say "     Do you want to try to talk the guy into letting you in? (Y/N)";
	if the player consents:
		let bonus be (( charisma of player minus 10 ) divided by 2);
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] vs 15 and score [dice plus bonus]: ";
		if dice + bonus >= 15:
			if bodyname of player is "Furling":
				say "[line break]     After some quick talking, you almost had him convinced, but then he opens the door a bit more and peeks outside. After a short gasp from behind the door, it gets slammed shut again, with noises of something heavy pushed against it for good measure. 'Ah, you're one of them - go away, creature!'";
				say "     Hm, sounds like he really doesn't like your current looks. Maybe you should try this again in a different shape...";
			otherwise:	
				say "[line break]     After some quick talking, you manage to convince the person inside the lockerroom that you're another survivor and not just a feral infectee. You hear some scraping noises from the other side of the door, then it opens and a young man hurriedly waves you inside. He pushes one of the heavy 3-locker units in front of the door to make sure you're not followed.";
				say "     'Hi, I'm Eric,' the man says, shaking your hand. 'Nice to see not everyone has gone totally bonkers in this city. I couldn't believe the stuff going on out there at first... saw my roommate transform into a big furry thing right in front of my eyes. There wasn't anything human left in him - he even bit me!' He shows you his bandaged arm.";
				move player to Sports Arena Lockerroom;
				now Sports Arena Lockerroom is known;
				Now Barricaded Lockerroom is resolved;
		otherwise:
			say "[line break]     As you're trying to explain, the person behind the door shouts 'I don't believe you. You're just one of those strange creatures who wants to trick me!' Then the door is pushed closed from the other side.";
	otherwise:
		say "     Deciding not to bother with the crazed fellow further, you head off before anything else notices you poking around.";
		now Barricaded Lockerroom is resolved;

Sports Arena Lockerroom is a room. It is fasttravel. It is private.
The description of Sports Arena Lockerroom is "[lroomdesc]";

instead of sniffing Sports Arena Lockerroom:
	say "You don't smell anything noteworthy. With a nanite virus apocalypse going on right outside the door, there haven't been any large numbers of sweaty athletes in here for some time now.";

to say lroomdesc:
	if (hp of Eric is 0):                         [Starting state]
		say "     This is the men's lockerroom of the sports arena in the Fairhaven campus. Looks like someone has made camp here - you see an improvised bed out of lots and lots of towels and empty bottles and wrappers of energy drinks and bars. Not a bad defensive spot either - the few existing windows are high up on the walls and the row of lockers pulled in front of the door should keep out all but the most determined intruders.";
		say "[line break]";
		say "     Eric has sat down on one of the benches in the room and is looking over to you attentively.";
	otherwise if (hp of Eric > 0) and (hp of Eric < 100):   [Eric was brought to the bunker after a quick stop here, something followed the scent]
		say "     This is the men's lockerroom of the sports arena in the Fairhaven campus. Eric's former camp has been ransacked, the towels of the improvised bed strewn about among empty bottles, energy bar wrappers and ripped clothing. Looks like something followed the scent trail left when you brought Eric back from his encounter with Stacy and was a bit annoyed that he wasn't still here.";
	otherwise if (hp of Eric is 100):                       [Eric never came back from Stacy's dorm]
		say "     This is the men's lockerroom of the sports arena in the Fairhaven campus. Looks like someone has made camp here - you see an improvised bed out of lots and lots of towels and empty bottles and wrappers of energy drinks and bars. Not a bad defensive spot either - the few existing windows are high up on the walls and pushing one of the lockers in front of the door should keep out all but the most determined intruders.";

instead of going inside from the Grey Abbey Library while (libido of Eric is 0 and bodyname of player is "Furling"):
	move player to Bunker;
	say "     As you enter the bunker and come into Eric's sight he gets pale, saying 'Aaah! It's one of - wait a minute, it's you isn't it? Don't frighten me like that - you look like one of my buddies at the college after they transformed.'";
	now libido of Eric is 1;
	
instead of navigating Sports Arena Lockerroom while (libido of Eric is 0 and bodyname of player is "Furling"):
	move player to Sports Arena Lockerroom;
	say "     As you enter the lockerroom and come into Eric's sight he gets pale, saying 'Aaah! It's one of - wait a minute, it's you isn't it? Don't frighten me like that - you look like one of my buddies in the dorm after they transformed.'";
	now libido of Eric is 1;

Section 2 - Eric the Cuntboy Athlete

[Smells, Description, Conversation and NPC Interaction]

Eric is a man.  Eric is in Sports Arena Lockerroom.  The hp of Eric is normally 0.
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
	if (thirst of Eric is 31):   [now with a satyr-cock]
		say "Eric has a pretty nice, masculine smell. Underlying that, there's a hint of a stronger, satyr-like musk.";

to say ericdesc:
	if (hp of Eric is 0):   [starting state]
		say "     Eric is a college age young man with ginger hair, light skin and quite a few freckles. His unlined face has a boyish charm to it and he often smiles while talking. He's wearing a black t-shirt and red running shorts, showing his runner's build - nicely muscled legs and upper body, while still being lithe and lean overall. His left underarm is bandaged.";
		say "			[line break]";
		say "     At the moment, he's sitting on one of the benches of the lockerroom in the Fairhaven campus sports arena, watching you attentively. His gaze moves over to the barricaded door from time to time, just to check it's still secure.";
	otherwise if ((hp of Eric is 1) or (hp of Eric is 20)):   [pussy revealed, in the bunker, virgin]
		say "     Eric is a college age young man with ginger hair, light skin and quite a few freckles. Or at least he looks like it - you know better that he's got a pussy hidden away under his shorts. His unlined face has a boyish charm to it and he often smiles while talking. He's wearing a black t-shirt and red running shorts, showing his runner's build - nicely muscled legs and upper body, while still being lithe and lean overall. His left underarm is bandaged.";
		say "			[line break]";
		say "     At the moment, he's sitting on a camp bed in the bunker, watching you a bit apprehensively. Looks like he feels uncomfortable at you knowing his gender state.";
	otherwise if (hp of Eric is 10):   [pussy accepted, in the bunker]
		say "     Eric is a college age young man with ginger hair, light skin and quite a few freckles. Or at least he looks like it - you know better that he's got a pussy hidden away under his shorts. His unlined face has a boyish charm to it and he often smiles while talking. He's wearing a black t-shirt and red running shorts, showing his runner's build - nicely muscled legs and upper body, while still being lithe and lean overall. His left underarm is bandaged.";
		say "			[line break]";
		say "     He's lived himself in in the bunker by now, and it looks like he has gone out and brought some more of his stuff in here in the meantime. Besides his camp bed there are several sports bags full of clothing and supplies, and a baseball bat rests against it for when he goes outside. You often see him stretching and working out - like right now for example, as you stop and watch him move his inviting lithe body. Eric notices you standing there, and gives you a shy smile, then goes on with his exercises.";
	otherwise if (hp of Eric is 11):   [pussy accepted, in the bunker, had sex with the player]
		say "     Eric is a college age young man with ginger hair, light skin and quite a few freckles. Or at least he looks like it - you know better that he's got a pussy hidden away under his shorts. His unlined face has a boyish charm to it and he often smiles while talking. He's wearing a black t-shirt and red running shorts, showing his runner's build - nicely muscled legs and upper body, while still being lithe and lean overall. His left underarm is bandaged.";
		say "			[line break]";
		say "     He's lived himself in in the bunker by now, and it looks like he has gone out and brought some more of his stuff in here in the meantime. Besides his camp bed there are several sports bags full of clothing and supplies, and a baseball bat rests against it for when he goes outside. You often see him stretching and working out - like right now for example, as you stop and watch him move his inviting lithe body. Eric notices you standing there, and gives you a seductive smile, doing some suggestive stretches before he goes on with his exercises.";
	otherwise if hp of Eric is 21 or hp of Eric is 31:   [now with horsecock/satyrcock, in the bunker]
		say "     Eric is a college age young man with ginger hair, light skin and quite a few freckles. He looks fully human, but you know that he's packing a [if hp of Eric is 22]horse[otherwise]satyr[end if][']s cock and balls inside his shorts. His unlined face has a boyish charm to it and he often smiles while talking. He's wearing a black t-shirt and red running shorts, showing his runner's build - nicely muscled legs and upper body, while still being lithe and lean overall. His left underarm is bandaged.";
		say "			[line break]";
		say "     He's lived himself in in the bunker by now, and it looks like he has gone out and brought some more of his stuff in here in the meantime. Besides his camp bed there are several sports bags full of clothing and supplies, and a baseball bat rests against it for when he goes outside. You often see him stretching and working out - like right now for example, as you stop and watch him move his inviting lithe body. Eric notices you standing there, and gives you a shy smile, then goes on with his exercises.";
	otherwise if hp of Eric is 22 or hp of Eric is 32:   [now with horsecock/satyrcock, in the bunker, had sex with the player]
		say "     Eric is a college age young man with ginger hair, light skin and quite a few freckles. He looks fully human, but you know that he's packing a [if hp of Eric is 22]horse[otherwise]satyr[end if][']s cock and balls inside his shorts. His unlined face has a boyish charm to it and he often smiles while talking. He's wearing a black t-shirt and red running shorts, showing his runner's build - nicely muscled legs and upper body, while still being lithe and lean overall. His left underarm is bandaged.";
		say "			[line break]";
		say "     He's lived himself in in the bunker by now, and it looks like he has gone out and brought some more of his stuff in here in the meantime. Besides his camp bed there are several sports bags full of clothing and supplies, and a baseball bat rests against it for when he goes outside. You often see him stretching and working out - like right now for example, as you stop and watch him move his inviting lithe body. Eric notices you standing there, and gives you a wink and a smile smile, rubbing the bulge in his pants suggestively before going on with his exercises.";
	otherwise if (hp of Eric is 99):   [pussy revealed, in the bunker, fucked]
		say "     Eric is a college age young man with ginger hair, light skin and quite a few freckles. Or at least he looks like it - you know better that he's got a pussy hidden away under his shorts. His unlined face has a bit of a wary expression on it, as he watches you and wonders when he'll be fucked next. He's wearing a black t-shirt and red running shorts, showing his runner's build - nicely muscled legs and upper body, while still being lithe and lean overall. His left underarm is bandaged.";
		say "			[line break]";
		say "     He's taken the camp bed farthest from yours in the bunker and does his best not to attract your attention.";
	otherwise if (hp of Eric is 100):
		say "ERROR-Eric-100A: He should be being impregnated by his hulk girlfriend by now! Please report what you did to see this.";

instead of conversing the Eric:
	if (hp of Eric is 0):   [starting state]
		say "     Eric tells you what happened to him when the plague hit - with people shifting all around and his best friend taking a bite out of his arm, he moved in here and barricaded himself in. Since then, he's only left a few times, sneaking outside at night when most creatures are sleeping to gather some supplies. You in turn tell him of all the things you've seen and witnessed out in the city, making him go pale as he listens.";
		say "     When you finish, Eric asks you 'You're a pretty resilient person from your stories... could you maybe help me save Stacy, my girlfriend? Well, ex-girlfriend I guess - she broke up with me a day before the plague hit... but that doesn't matter now. I've tried to find her and bring her here, but there was a massive green creature moving around her dorm building every time I checked. I just couldn't fight something that big, so I sneaked away before it noticed me. Please, help me save her from there!'";
		if the player consents:   [going on a rescue mission]
			say "     Eric arms himself with a baseball bat and you move out together, mostly staying behind buildings and sneaking through the bushes. It goes pretty well, until you arrive at one of the main thoroughfare of the campus and have to step onto a large open area to move on. You almost make it, then hear a female voice behind you. Turning around, you see a succubus and incubus stand there, eying you like pieces of meat.";
			say "     'It's just like you promised Aidan - a whole campus of pretty young things ripe for the plucking. How about you take that one,' she says with a nod to you, '- and I ride the redhead.'";
			challenge "Incubus";
			if lost is 1:
				say "     The incubus leaves you lying on the ground as he struts off with his demonic partner. You collect your strewn-about belongings and are joined by Eric a moment later, who got pulled behind a bush and is looking a bit disheveled. He says 'Let's get out of here.' and leads on towards your goal.";
			otherwise:
				say "     Having beaten the incubus, you look around where the succubus and Eric are. There's some movement in the bushes in one direction, so you rush over there and find Eric half-dressed with the succubus running her hands all over him. She whirls around as she notices you, hissing at the distraction. As she comes closer, you ready yourself for an attack - and then Eric hits her with his bat from behind, ending the fight early. He says 'Let's get out of here.' and leads on towards your goal.";
				increase score by 10;
			say "[line break]";
			say "     Arriving at a large dorm building, Eric guides you to the back entrance. You quietly make your way into the building, passing lots of empty rooms - and one with two naked bunny jocks in it, completely absorbed in stroking each other's cocks as they make out. Moving on, you arrive at a stairwell and go up two stories, then enter the hallway with Stacy's room in it. Finally you get to it, and Eric excitedly storms in - only to find it empty. He shouts 'Stacy? Where are you? Call out if you can hear me!', then throws open the door to the small bathroom in the back of the room. His frantic searching has you distracted for a moment, so that you notice the hulking presence behind you too late. A large green humanoid steps through the entrance door into the room behind you, giving you a backhanded slap that throws you across the room and into a wall.";
			say "     The hulking green figure has recognizably female features and a pair of ample breasts. The rest of her - or him rather, as you can see a thick cock dangling between her legs from where you lie groggily on the ground - isn't quite as feminine. She's at least nine feet tall, her bulging muscles stretching a white crop top tightly over her large frame. Around her hips, you see a very short skirt that does almost nothing to hide her crotch and the male equipment there.";
			say "     'Well well - here comes the cheating boyfriend and his newest little buddy.' She looks down at you in contempt. 'S-Stacy? Is that you? I told you, I didn't cheat on you - Diana kissed me just as you came in, not the other way around! I didn't do anything wrong!'";
			say "     A scowl on her face, the former Stacy steps over your prone body and grabs Eric by the neck, holding him up in front of her face. 'Now listen you little - I know exactly...' suddenly she stops and sniffs the air, then lowers her head to Eric's crotch. 'Wait a minute - what's this? You're a girl now? Then I do know a way you can make it up to me - I'll take your virginity and forget about you and that bitch.' You see her cock lengthen and fill out a bit from below. Laying Eric down on the bed, Stacy just rips off his clothing, revealing his lean physique - and a pussy where his cock and balls should be. She holds him down with one hand, the other rubbing his pussy lips, making him moan at the unfamiliar sensations.";
			say "     [WaitLineBreak]";
			say "     Your head clears a bit and the stars in front of your eyes vanish. With Stacy the cheerleader hulk distracted, now would be a good time to take her on and save Eric from the tender mercies of the girlfriend he intended to rescue. Or you could just stay right here and watch - on the floor right behind Stacy, you got a ringside seat for the action. Her cock is long enough that you could reach out and touch it, and you got a nice sight of Eric's pussy at the edge of the bed from here. (Y = save him; N = watch them) ";
			if the player consents:   [save him]
				say "     You wait a moment longer, watching Stacy as she fingers Eric's pussy, making him gasp and moan and open his legs wide as new instincts take over. She continues to rub and stroke him until she's pretty wet, putting her fingers in her mouth to taste his female juices. 'Yes, you're ready. Now I'll show you what it means to be a woman!' she says, stroking her cock and moving closer to Eric. Then, as she's completely distracted, holding up her long erection close to Eric's folds, you rush at her and attack.";
				if CheerleaderFirstEncounter is 0:
					now CheerleaderFirstEncounter is 2;
					challenge "Hulking Cheerleader";
					now CheerleaderFirstEncounter is 0;
				otherwise:
					now CheerleaderFirstEncounter is 2;
					challenge "Hulking Cheerleader";
					now CheerleaderFirstEncounter is 1;
				if lost is 1:
					say "     With another hard slap, the hulking cheerleader sends you flying against the wall of the room, putting you in a world of hurt. You can only lie there and hold your aching body when she turns back to Eric.";
					say "     Stacy pushes her massive erection against her ex-boyfriends folds, groaning as they spread and she sinks inside. You see her stop for a moment, presumably at his hymen, and say 'Ssh, hold still. It'll be over soon.' to him. There is a small pained yelp from Eric as she breaks through, but soon his lustful moans start up again as her hard shaft rubs against his insides. Going slow at first, then faster and faster, the gender-switched cheerleader starts fucking him in earnest, giving satisfied grunts each time she bottoms out in Eric's pussy. ";
					say "     Not much later, Eric gasps as he has his first female orgasm, and you see his pussy juices glistening on Stacy's thrusting cock. She stops for a moment and looks down at the writhing cuntboy, then starts up again, harder and faster than before.";
					say "     In between wild fucking, Stacy stops several times to pace herself and manages to last almost forty minutes, driving Eric to multiple more orgasms. As he is in the throes of another, she asks 'Do you like my cock inside you? Does it make you feel good?', and getting a moaned 'Yes' as an answer from him. She continues, 'Will you stay with me from now on? And let me fuck you anytime I want? And bear my children?', thrusting deep after each question and making Eric moan 'Yes, yes, yes.'";
					say "     Thrusting in deep several more times, she then gives a satisfied grunt and you see her balls twitch and pulse as she blows her load into Eric's womb. As she fills her ex-boyfriend-now-girlfriend with fertile seed, Stacy leans down, holding him tight and gives him a deep kiss.";
					say "     [WaitLineBreak]";
					say "     You crawl out of the room and make your escape while she's still busy with Eric, having no choice but to concede him to her. With him having accepted being her girlfriend and likely already pregnant from her, there won't be any reason to come back here.";
					now hp of Eric is 100;
					remove Eric from play;
				otherwise:
					say "     A moment later, the transformed woman collapses on the ground, leaving you the only person standing in her by now totally trashed room. You look over at Eric, who's been reduced to lying on the bed moaning, completely lost in the feelings his changed body is giving him. Seeing him there, legs spread and one hand rubbing the lips of his pussy, two possible choices come to mind. You could just take his virginity now while you can, or do the right thing and bring him to safety in the bunker under the library. (Y = fuck him, N = save him) ";	      
					if the player consents:   [take advantage and take him to the bunker]
						say "     [line break]";
						say "     This is an opportunity you don't want to miss - the cuntboy is hot and ready, lying there on the bed with spread legs and just waiting for it...";
						if(cocks of player > 0):
							say "     Your cock springs to attention as you step closer, then kneel on the bed between Eric's legs. Running your hands over his muscular legs, you arrive at his drippingly wet pussy and push two fingers inside, making him moan as you wiggle them. Inside, you feel the soft flesh of his hymen under your fingers - nice, he really is a virgin. The thought of taking his cherry on the bed of his former girlfriend makes your cock twitch in anticipation. You aim your manhood at his moist folds, rubbing its tip against his pussy lips, then push forward, sinking your shaft into his body until you reach his maidenhead and stop for a moment.";
							say "     Running your hands over Eric's flat chest you play with his nipples, distracting him for the moment you pull back and then thrust in deep, piercing his hymen in one go. He whimpers at your forceful intrusion in his innermost being, but soon the pleasure able feelings of your hard member rubbing his insides outweigh the pain and he starts moaning again with lust. Holding his legs up with your hands you thrust in and out, revelling in his tight embrace around your shaft as you make a real woman - or rather cuntboy - out of him.";
							say "     Not much later, Eric gasps as he has his first female orgasm, his pussy getting really wet around your thrusting cock. You stop for a moment and look down at the writhing cuntboy you're inside of, then start up again, harder and faster than before.";
							say "     Pacing yourself, you manage to last another half hour, giving Eric another orgasm, before you feel your balls tightening with your impending climax. With one last thrust as deep as you can go inside him, you reach your goal, shooting burst after burst of your seed deep inside his womb.";
							say "     [WaitLineBreak]";
							say "     Such a nice little cuntboy, you decide to take Eric along to the bunker to have some fun with again later. After having a quick look around, you pick up a bathrobe that's only a little too small for Eric. You bundle him up in it, then lead him by the arm out of the building, still rather out of it and dripping your cum and female juices on the floor. This time you manage to avoid any creatures as you make your way back to the sports arena. Well, mostly - at one point a male german shepherd began sniffing the ground some way behind you and picked up the trail, but a passing incubus took an interest in him...";
						otherwise:
							say "     A quick search through Stacy's dresser reveals a long pink dildo - and a vibrating one too. You take it and climb on the bed with Eric, rubbing his moist pussy lips slowly with your fingers, then spreading them to have a look. Ah, perfect - he really is a virgin. The thought of taking his cherry on the bed of his former girlfriend makes you grin in anticipation. You rub the dildo's tip against his pussy lips for a moment, then push forward, sinking it slowly into his body until you reach his maidenhead.";
							say "     Running your hands over Eric's flat chest you play with his nipples, distracting him for the moment you pull back and then thrust in deep, piercing his hymen in one go. He whimpers at your forceful intrusion in his innermost being, but as you flip the switch and move the vibrating dildo in and out of him, pleasure able feelings soon outweigh the pain and he starts moaning again with lust. Running a hand over his lithe body as you fuck him with the dildo, you revel in his pants and gasps as you make a real woman - or rather cuntboy - out of him.";
							say "     Not much later, Eric gasps as he has his first female orgasm, his pussy getting really wet around the dildo and leaking female juices on the mattress. You stop for a moment and look down at the writhing cuntboy you're made cum, then start up again, harder and faster than before.";
							say "     Taking your time, you keep going with the dildo for another forty minutes, giving Eric two more screaming orgasms. Then a groggy groan from the cheerleader hulk on the floor reminds you that you sadly don't have all the time in the world and should leave before she fully wakes up or something else comes along.";
							say "     [WaitLineBreak]";
							say "     Such a nice little cuntboy, you decide to take Eric along to the bunker to have some fun with again later. After having a quick look around, you pick up a bathrobe that's only a little too small for Eric. You bundle him up in it, then lead him by the arm out of the building, still rather out of it and dripping female juices on the floor. This time you manage to avoid any creatures as you make your way back to the sports arena. Well, mostly - at one point a male german shepherd began sniffing the ground some way behind you and picked up the trail, but a passing incubus took an interest in him...";
						say "     The howls of your almost-encounter as he's being fucked by the demon remind you that many creatures out here will be able to follow Eric's trail easily. You soon reach the lockerroom and give Eric some time to come down from his highly aroused state, then tell him to get dressed and that you're taking him to your bunker. Ten minutes later, he steps out from behind a row of lockers, dressed in shorts and a t-shirt and hefting a backpack with his most important gear and supplies. Departing towards the bunker, Eric walks with you but a step apart, silently thinking about what you did to him.";
						now hp of Eric is 99;
						now thirst of Eric is 1;
						move Eric to bunker;
						move player to bunker;
					otherwise:                [really save him]
						say "     [line break]";
						say "     After having a quick look around, you pick up a bathrobe that's only a little too small for Eric. You bundle him up in it, then lead him by the arm out of the building, still rather out of it and dripping female juices on the floor. This time you manage to avoid any creatures as you make your way back to the sports arena. Well, mostly - at one point a male german shepherd began sniffing the ground some way behind you and picked up the trail, but a passing incubus took an interest in him...";
						say "     The howls of your almost-encounter as he's being fucked by the demon remind you that many creatures out here will be able to follow Eric's trail easily. The lockerroom won't be safe much longer. You give him some time to come down from his highly aroused state, then tell him to get dressed and that you're taking him to your bunker. Eric thanks you, at the same time getting very red in the face as he realizes you saw... all of him. Twenty minutes later, he steps out from behind a row of lockers, dressed in shorts and a t-shirt and hefting a backpack with his most important gear and supplies. Soon you depart towards the bunker, Eric still rather silent besides you as he thinks about what happened to him.";
						now hp of Eric is 1;
						now thirst of Eric is 1;
						move Eric to bunker;
						move player to bunker;
			otherwise:                [watch them fuck]
				say "     Having been hit by her once already, you decide you want to avoid that from happening again - and have some fun in the meantime. You silently crawl a bit closer and sit on the floor from where you have a nice view.";	      
				say "     [WaitLineBreak]";
				say "     Stacy pushes her massive erection against her ex-boyfriends folds, groaning as they spread and she sinks inside. You see her stop for a moment, presumably at his hymen, and say 'Ssh, hold still. It'll be over soon.' to him. There is a small pained yelp from Eric as she breaks through, but soon his lustful moans start up again as her hard shaft rubs against his insides. Going slow at first, then faster and faster, the gender-switched cheerleader starts fucking him in earnest, giving satisfied grunts each time she bottoms out in Eric's pussy. ";
				say "     Not much later, Eric gasps as he has his first female orgasm, and you see his pussy juices glistening on Stacy's thrusting cock. She stops for a moment and looks down at the writhing cuntboy, then starts up again, harder and faster than before.";
				say "     In between wild fucking, Stacy stops several times to pace herself and manages to last almost forty minutes, driving Eric to multiple more orgasms. As he is in the throes of another, she asks 'Do you like my cock inside you? Does it make you feel good?', and getting a moaned 'Yes' as an answer from him. She continues, 'Will you stay with me from now on? And let me fuck you anytime I want? And bear my children?', thrusting deep after each question and making Eric moan 'Yes, yes, yes.'";
				say "     Thrusting in deep several more times, she then gives a satisfied grunt and you see her balls twitch and pulse as she blows her load into Eric's womb. As she fills her ex-boyfriend-now-girlfriend with fertile seed, Stacy leans down, holding him tight and gives him a deep kiss.";
				say "     [WaitLineBreak]";
				say "     You crawl out of the room and make your escape while she's still busy with Eric, having no choice but to concede him to her. With him having accepted being her girlfriend and likely already pregnant from her, there won't be any reason to come back here.";
				now hp of Eric is 100;
				remove Eric from play;     
		otherwise:   [try it later]
			say "     Eric looks visibly deflated as you decline. 'Oh... if you change your mind, I'll be here. But we really should hurry - who knows what's happening to Stacy...'";
	otherwise if (hp of Eric is 1):   [virgin in the bunker]
		say "     You sit down beside Eric on a camp bed and talk to him, trying to get him to open up about his... gender issues. He's very embarrassed about it all, rubbing his bandaged arm absentmindedly as he stockingly says 'After Danny bit me and nothing strange happened, I first thought I was immune to whatever is doing all this. But then later, as I was running away from him and through the chaos out in the campus, there was a wrenching feeling inside me and I fell down as my cock vanished and a vagina and womb formed.'";
		say "     'I hid in the lockerroom and tried to ignore it, hoping something could be done if the military or someone came - but with what happened with Stacy - I'm not sure if I can do that any longer. The feelings I had were... strange and amazing, and I couldn't do anything to resist them. If you hadn't pulled her off me in time...";
		say "     He takes a deep breath, then looks at you and shyly asks 'Do you think something can be done to change me back?' Wondering which answer he hopes for, you think for a moment what to answer. (Y = you'll search a cure; N = he should accept it) ";
		if player consents:   [search for a cure]
			say "     [line break]";
			say "     You tell Eric that you'll have an eye out for a way to make him a man again. Maybe the cum of some creature that's fully male and still somewhat human would do the trick... and there surely will be centaurs or satyrs or something of the like in this city by now.";
			now hp of Eric is 20;
		otherwise:            [make him accept his pussy]
			say "     [line break]";
			say "     Putting a hand on Eric's arm, you tell him to accept what happened to him and be grateful that he's still human. You remind him how good he felt when Stacy rubbed his pussy, so maybe he could try it with someone he trusts...";
			now hp of Eric is 10;
	otherwise if (hp of Eric is 10):   [accepted his pussy]
		say "     He says 'Having a pussy still feels strange to me. Since that thing with Stacy, it keeps getting moist and swollen all the time.'";
	otherwise if (hp of Eric is 11):   [accepted his pussy, had sex with player]
		if lust of Eric is 2:
			say "     So what do you want? Just chat a bit [link](1)[as]1[end link], talk him into getting fucked by David [link](2)[as]2[end link] or not say anything after all [link](3)[as]3[end link]?";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				otherwise:
					say "Invalid choice.  Type [link]1[end link] to chat, [link]2[end link] to talk him into getting fucked by David or [link]3[end link] to break off talking.";
			if calcnumber is 1:								[chat]
				say "     He says 'Being part woman is better than I expected. Thank you for helping me accept this new me.' then steps closer, running a hand over your arm and whispers in your ear 'I can barely wait for our next round in bed. I love being with you.'";
			otherwise if calcnumber is 2:			[convince him for sex with David]
				say "     You hug Eric close to you and give him a kiss. Then you say 'You've seen my friend David around - he looks pretty good, doesn't he?' 'Sure, but not as good as you.' Eric answers and gives you a peck on the lips. Smiling, you run a hand down Eric's flat chest, pushing it under the band of his shorts. As you start to fondle Eric's sensitive pussy lips, you continue 'You see, he's a really, really good friend of mine, and...' - you push a finger into Eric's vagina, making him gasp in lust - '...I'd really like the three of us to have some fun together.'";
				say "     With that, you add another finger, pushing them in and out of Eric's hole and stroking his inner passage. Making out with him as you fondle Eric, you drive his arousal higher and higher, then ask 'So what do you say, babe? Want to have some fun with David too?' as you speed up your manual stimulation of his pussy even more. 'Yes. Yes. YESSS.' your hot little cuntboy gasps as you drive him over the edge to orgasm, his femcum running down over your fingers. After catching his breath a moment later, Eric says 'Yes. Whatever you want. That soldier friend of yours really is quite a looker, now that I think of it...'";
				now lust of Eric is 3;
			otherwise:												[break off]
				say "     You wave Eric off and turn away.";					
		otherwise:
			say "     He says 'Being part woman is better than I expected. Thank you for helping me accept this new me.' then steps closer, running a hand over your arm and whispers in your ear 'I can barely wait for our next round in bed. I love being with you.'";
	otherwise if (hp of Eric is 20):   [hoping for a cure]
		if centaur cum is not owned and Satyr Wine is not owned:
			say "     He says 'Do you think you'll have something to cure me soon? You said something about centaurs and satyrs the last time. Please hurry, I don't know how long I can hold out any more. Since that thing with Stacy, my pussy keeps getting moist and swollen all the time.'";
		otherwise if centaur cum is owned and Satyr Wine is owned:
			say "     Remembering that you have found some centaur cum and some satyr wine, either of which might provide a possible cure for Eric's condition, shall you offer one of them to him?  If so, which - the [link]centaur cum (1)[as]1[end link], the [link]satyr wine (2)[as]2[end link] or [link]neither (0)[as]0[end link]?";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 2:
				say "Choice? (0-2)>[run paragraph on]";
				get a number;
			if calcnumber is 1:
				say "[centaurcum_eric]";
			otherwise if calcnumber is 2:
				say "[satyrwine_eric]";
			otherwise if calcnumber is 0:
				say "     Undecided about trying out some infected substance, you let him know that you're still looking.  He seems a little disappointed, but nods and tells you to keep looking.  If you're not certain about giving him one of them, you muse on instead just helping him to accept his new form.";
		otherwise if centaur cum is owned:
			say "     Remembering that you have found some centaur cum which might provide a possible cure for Eric's condition, shall you offer it to him?";
			if the player consents:
				say "[centaurcum_eric]";
			otherwise:
				say "     Uncertain about trying out some infected substance, you let him know that you're still looking.  He seems a little disappointed, but nods and tells you to keep looking.  You recall considering finding some satyrs as well.  Perhaps they might have something.  Though if you're not certain about giving him one of them, you muse on instead just helping him to accept his new form.";
		otherwise if Satyr Wine is owned:
			say "     Remembering that you have found some satyr wine which might provide a possible cure for Eric's condition, shall you offer it to him?";
			if the player consents:
				say "[satyrwine_eric]";
			otherwise:
				say "     Uncertain about trying out some infected substance, you let him know that you're still looking.  He seems a little disappointed, but nods and tells you to keep looking.  You recall considering finding some centaurs as well.  Perhaps they might have something.  Though if you're not certain about giving him one of them, you muse on instead just helping him to accept his new form.";
	otherwise if hp of Eric is 21 or hp of Eric is 31:   [now with a horsecock/satyrcock]
		say "     He says 'Man, this cock is something else. A bit strange that it's not human, but it's thicker and longer than my old one was. Thank you for this. Would you maybe want to try it out with me?'";
	otherwise if hp of Eric is 22 or hp of Eric is 32:   [now with a horsecock/satyrcock, had sex with the player]
		if lust of Eric is 2:
			say "     So what do you want? Just chat a bit [link](1)[as]1[end link], talk him into fucking David [link](2)[as]2[end link] or not say anything after all [link](3)[as]3[end link]?";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				otherwise:
					say "Invalid choice.  Type [link]1[end link] to chat, [link]2[end link] to talk him into fucking David or [link]3[end link] to break off talking.";
			if calcnumber is 1:								[chat]
				say "     He smiles, giving you an embrace and a quick kiss on the lips. 'How about another round in bed? I still can't get over this amazing cock you got me.'";
			otherwise if calcnumber is 2:			[convince him for sex with David]
				say "     You hug Eric close to you and give him a kiss. Then you say 'You've seen my friend David around - he looks pretty good, doesn't he?' 'Sure, but not as good as you.' Eric answers and gives you a peck on the lips. Smiling, you run a hand down Eric's flat chest, pushing it under the band of his shorts. As you start to fondle Eric's manhood, you continue 'You see, he's a really, really good friend of mine, and...' - his cock has filled out a bit and come from its sheath, allowing you to grab it and jerk your hand up and down its length - '...I'd really like the three of us to have some fun together.'";
				say "     With that, you speed up jerking him a bit, and move your other hand to stroke his balls. Making out with him as you fondle Eric, you drive his arousal higher and higher, then ask 'So what do you say, babe? Want to use this badboy to have some fun with David too?' as you speed up your manual stimulation even more. 'Yes. Yes. YESSS.' your [if hp of Eric is 22]horse[otherwise if hp of Eric is 32]satyr[end if]-hung athlete gasps as you drive him over the edge to orgasm and he shoots long strings of cum down the left leg of his shorts. After catching his breath a moment later, Eric says 'Yes. Whatever you want. That soldier friend of yours really is quite a looker, now that I think of it...'";
				if lust of David is 0:
					say "     [line break]";
					say "     Ok, that's Eric taken care of - ready and willing to have a go fucking David. But you really should break the soldier boy in yourself before you try arranging him to take Eric's [if hp of Eric is 22]horsemeat[otherwise]satyr cock[end if] ...";
				now lust of Eric is 3;
			otherwise:												[break off]
				say "     You wave Eric off and turn away.";					
		otherwise:
			say "     He smiles, giving you an embrace and a quick kiss on the lips. 'How about another round in bed? I still can't get over this amazing cock you got me.'";
	otherwise if (hp of Eric is 99):   [cuntboy, taken advantage of]
		if lust of Eric is 2:
			say "     So what do you want? Just chat a bit [link](1)[as]1[end link], tell him your plan to get him fucked by David [link](2)[as]2[end link] or not say anything after all [link](3)[as]3[end link]?";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				otherwise:
					say "Invalid choice.  Type [link]1[end link] to chat, [link]2[end link] to talk him into getting fucked by David or [link]3[end link] to break off talking.";
			if calcnumber is 1:								[chat]
				say "     He looks at you with a resigned expression, saying [one of]'I won't struggle if you fuck me - just please don't throw me out on the street.'[or]'I should hate you for what you did to me - but it felt so good. My traitor body constantly sends me urges to be fucked.'[at random]";
			otherwise if calcnumber is 2:			[tell him the plan for sex with David]
				say "     You pull Eric close and kiss him aggressively. Then you say 'It's time that you start putting out for my friends too. David could use a little time in your cunt.' Eric looks flustered, and tries to pull away, but you hold him tight. 'But - I thought it'd be only you, for letting me stay here.' 'Well, you thought wrong. Little bitches like you are meant to be fucked by everyone. And don't try to tell me you don't like it.' With that, you put your hand in his shorts and stick two fingers in Eric's already moist pussy. Pushing them in and out of Eric's hole and stroking his inner passage, you watch him bite his lip, then give up on that and openly moan in lust, closing his eyes as he gives in to the feelings.";
				say "     [line break]";
				say "     'There you go - didn't I tell you this is what you need?' Fondling Eric, you drive his arousal higher and higher until he's close to orgasm, then... stop. The cuntboy's eyes find yours and give you a pleading look as he begs 'Please, get me off. I need it!' Having him right where you wanted now, you ask 'So what do you say, bitch? Will you obey and put out for David too?' When Eric quickly nods, you resume your manual stimulation of his pussy and soon drive the hot little cuntboy over the edge to orgasm, with his femcum running down over your fingers.";
				say "     Bringing your wet hand up to Eric's mouth to have him lick off his own juices, you explain your plan to him. 'David's got a few hangups about fucking you, so this is what we'll do. I'll put him on a bed, blindfold him and get him all hot and ready - and then you'll come over and mount his shaft. Don't leave me waiting when it's time, you hear?' Eric finishes cleaning your hand, then nods submissively.";
				now lust of Eric is 3;
			otherwise:												[break off]
				say "     You wave Eric off and turn away.";					
		otherwise:		
			say "     He looks at you with a resigned expression, saying [one of]'I won't struggle if you fuck me - just please don't throw me out on the street.'[or]'I should hate you for what you did to me - but it felt so good. My traitor body constantly sends me urges to be fucked.'[at random]";
	otherwise if (hp of Eric is 100):   [lost to cheerleader girlfriend]
		say "ERROR-Eric-100B: He shouldn't be available to talk any longer! Please report how you got to this message.";

to say centaurcum_eric:
	say "     You hand your bottle of centaur stallion cum to Eric, who puts it to his lips after a nod of encouragement from you and takes a deep pull. You wait several minutes, during which his hopeful expression slowly begins to wane as nothing happens - until suddenly, he's wracked by a convulsion. You hold Eric tightly so he doesn't fall off his camp bed until he relaxes s short time later. Looking down at the new bulge in his shorts, it's clear at least something happened.";
	say "     Opening the zipper of his shorts, you pull them down to reveal his crotch - now pussy-less, but with a new blunt-tipped horse's cock and large balls. To help Eric accept being an - almost human - male again, you grab his erect newly grown member with both hands and pump them up and down on it. Encouraged by his lustful moans, you keep jerking him off and play with his balls with one hand. Pretty soon, his thick shaft pulses in your hand, and large globs of white seed blast out of the tip of his horsecock and all over Eric's chest. As he lies back on his bed, you hear him pant 'Thank you.'";
	delete centaur cum;
	now hp of Eric is 21;
	now thirst of Eric is 21;

to say satyrwine_eric:
	say "     You hand your bottle of satyr wine to Eric, who puts it to his lips after a nod of encouragement from you and takes a deep pull. You wait several minutes, during which his hopeful expression slowly begins to wane as nothing happens - until suddenly, he's wracked by a convulsion. You hold Eric tightly so he doesn't fall off his camp bed until he relaxes s short time later. Looking down at the new bulge in his shorts, it's clear at least something happened.";
	say "     Opening the zipper of his shorts, you pull them down to reveal his crotch - now pussy-less, but with a new capric, goat-like cock and large balls. To help Eric accept being an - almost human - male again, you grab his erect newly grown member with both hands and pump them up and down on it. Encouraged by his lustful moans, you keep jerking him off and play with his balls with one hand. Pretty soon, his thick shaft pulses in your hand, and large globs of white seed blast out of the tip of his satyrcock and all over Eric's chest. As he lies back on his bed, you hear him pant 'Thank you.'";
	delete Satyr Wine;
	now hp of Eric is 31;
	now thirst of Eric is 31;


Section 3 - Fucking Eric

Instead of fucking the Eric:
	if hp of Eric is 21 or hp of Eric is 22:
		setmonster "Centaur Stallion";
	otherwise if hp of Eric is 31 or hp of Eric is 32:
		setmonster "Satyr";
	if (hp of Eric is 0):   [virgin - in the lockerroom]
		if(cocks of player > 0):
			say "     As you approach Eric and ask him if he wants some fun, his gaze drops down to your crotch and he hesitates. Swallowing hard and turning rather red in the face, he then shakes his head, saying 'I - I can't - I mean - I'm not gay. But thanks for the offer.'";
		otherwise if(cunts of player > 0):
			say "     Eric approaches you smiling as you make him an offer for some good time together. But then suddenly, he remembers something and his face turns red in embarrassment. Stuttering 'I - I'm sorry, I'm not in the mood.' he steps back, turning away from you.";
	otherwise if (hp of Eric is 1):   [virgin in the bunker]
		say "     Eric is rather evasive as you offer to take him to bed, his face getting red in embarrassment about his situation. Maybe you should talk to him about it a bit first.";
	otherwise if (hp of Eric is 10):   [virgin, accepted being a cuntboy]
		if(cocks of player > 0):
			say "     Stepping up to Eric, you embrace him and give him a deep kiss. When you come back up for air, you look deep into his eyes and say 'Please let me be your first - I'll be careful and go slow.' There's only a short moment of hesitation, then Eric nods and leans his head forward to kiss you back.";
			say "     You two make out for a moment, holding on to each other. In between playful tongue-wrestling, you let your hands wander all over him, feeling up his slender but muscled body and giving the nice firm buns of his ass a slight squeeze. No matter what he may be packing inside his shorts, Eric still has the build of a young male athlete. Eager to get get to know him more intimately, you grab him by the hand and lead him to your bunk.";
			say "     Eric quickly takes off his shoes and socks, then pulls off his shirt and throws it aside, revealing a nicely defined chest. You follow suit, rapidly sliding off your own clothing, then step close to your waiting partner. Running your hands over his chest, you make him gasp for a second as you brush over his nipples. Seems like your handsome cuntboy has gotten quite sensitive there. With a smile on your face you lean down and run your tongue over his chest, then circle each of his nipples with its tip and finally suck on them. Making Eric pant in lust is a lot of fun, and with your nose pressed against his warm skin you also take a deep breath of his masculine scent with its underlying female note.";
			say "     [WaitLineBreak]";
			say "     Feeling Eric's readiness to move on, you soon push him back softly to make him sit, then lie on your camp bed. Then you move your hands to the band of his shorts, pulling them down over his long runner's legs as he raises his ass a bit to let the fabric slide over it. Under them, a flimsy white tanga comes into view, making Eric show a moment of embarrassment again as he says 'My old briefs were too... roomy ... in the front.' You lean in for a quick kiss, telling him 'You look really hot in them.' and then slide the thin underwear off him too.";
			say "     Now fully naked, Eric looks up from the bed to you, his yes inevitably drawn to your by now rock-hard cock. With an inviting smile he spreads his legs for you, the lips of his slightly swollen pussy glistening with his female juices. Eagerly, you climb on the bed with him, stroking his smooth legs as you kneel between them. Eric gasps as your dick touches his pussy the first time, followed by rapid panting as you rub up and down against its folds. Then you put your cockhead against his opening and slowly push forward, moaning in lust yourself as his nether lips spread for you, enveloping your shaft in a warm tight embrace.";
			say "     Sliding deeper into him, your progress soon meets resistance as your cock pushes against a soft flexible barrier inside him - Eric's hymen. You lean down and put your arms around him then find his lips with yours and give him a deep kiss. While distracting him with some playful tongue-wrestling, you push forward with your hips, increasing the pressure until you break through the thin flesh and make a real woman - or rather cuntboy - out of him.";
			say "     [WaitLineBreak]";
			say "     You rest your hard shaft inside Eric for a moment to allow him to get used to it, then start moving in and out, moaning in unison with your handsome athlete. His legs wrap around your hips and pull you tight against him with each of your thrusts. Fucking this tight virgin pussy has you incredibly aroused and you have to control yourself pretty hard to last a bit longer. And you're not the only one - soon Eric's moans and groans rise to a pretty noisy climax and you feel the femcum in his pussy around your cock. He pulls you down on top of him, going for a breathtaking kiss, then whispers 'Finish it - come inside me.'";
			say "     Giving him another quick kiss on the lips, you eagerly follow his request and pump your hips up and down rapidly, thrusting hard and deep into his body. With your cock already primed and ready to go, it takes just a few more thrusts for the cum to boil up from your balls and pulse through your cock in spurt after spurt. You fill Eric's pussy with your fertile seed, feeling a deep satisfaction as you imagine the millions of little swimmers invading his womb in search of an egg.";
			say "     Your cock still inside him, the two of you move to lie on your sides on the bed, holding each other and reveling in post-coital bliss. Lying there, Eric softly strokes your side and says 'That was amazing - thank you.'";
			now hp of Eric is 11;
			now thirst of Eric is 11;
		otherwise:  
			say "     Stepping up to Eric, you embrace him and give him a deep kiss. He practically melts into your arms as you hold him, eagerly returning your attentions with more kisses while his hands roam over your body. Looks like he's ready and willing to lose his virginity now - too bad you don't have the right 'equipment' for that at the moment... better try again later once you've gotten a cock to fuck him with.";
	otherwise if (hp of Eric is 11):   [cuntboy repeat sex]
		if (lastEricfucked - turns < 6):
			say "     As you approach Eric, he immediately sees the lust-filled twinkle in your eyes. Running a hand up the side of your arm and stroking your cheek, he says 'I love you baby, but I need some rest in between. Can we play another time?' He gives you a soft kiss on the lips as you nod, already thinking about what you want to do with him later.";
		otherwise:
			say "     You walk over to Eric, who immediately starts smiling as he sees the lust-filled twinkle in your eyes. Throwing his arms around you, his lips find yours for a quick kiss, then he suggestively nods over to his bunk.";
			wait for any key;
			say "[EricSexMenu]";
			now lastEricfucked is turns; 
	otherwise if (hp of Eric is 20):   [virgin, hoping for a cure]
		say "     Eric is rather evasive as you offer to take him to bed, his face getting red in embarrassment about his situation. 'I- I thought you were going to get me a cure? Or did you check and there no way to fix this? I worry I might get stuck like this if I - you know - use it...'";
		say "     Do you want to tell Eric to hold out a little longer and that you'll find him something to make him a man again? Or should he learn to accept his new shape? (Y = hold out; N = accept the pussy)";
		if player consents:   [search for a cure]
			say "     You exchange some calming words with Eric, telling him that you'll of course find a cure for him. He nods to you then goes back to his camp bed to lie down, still looking a bit worried.";
		otherwise:		        [make him accept being a cuntboy]
			say "     You calmly tell Eric that there is no sure way back for him and that it might be best to accept what he's become. His face falls as you say that, his expression showing disappointment and fear. To cheer him up a bit again, you remind him how good he felt when Stacy rubbed his pussy, to which he reluctantly agrees. Best to give him some time to think about it - maybe he'll be ready for some fun later.";
			now hp of Eric is 10;
	otherwise if (hp of Eric is 21):   [male with virgin horse-cock]
		say "     Stepping up to Eric, you lower your hand to the front of his shorts and rub against the bulge in its fabric, feeling his balls and flaccid cock. It doesn't stay that way for long though, growing into a truly impressive trouser snake as his body reacts to your touch.";
		say "     'Why don't we take this bad boy for a little spin - make you a real man again.' you tell him as you slide your hand under the band of his shorts and grab grab hold of his thick cock. Eric can only pant and nod eagerly as you fondle the organ where all the blood for his brain went. With a big smile on your face you lead him to his bed and peel all clothing off Eric's athletic human body.";
		say "     Well, mostly human - the cock between his legs looks like it belongs to a horse... it's pretty long, with an animalistic pattern of black and white and shows a band of skin around the lower third that must be Eric's equine sheath. The tip flares outwards proudly at the end, making you wonder how it will compare to a human manhood. Two massive black balls hang below it, looking ready to deliver a deluge of cum.";
		say "     [WaitLineBreak]";
		say "     Eager to take the virginity of Eric's new equipment, you softly push him down to lie on the bed and grab hold of his horsecock with both hands. It's an impressive piece of anatomy, firm and warm in your hands as you stroke up and down on it. Not wanting to wait any longer, you quickly remove your clothes, then climb up on the bed with Eric.";
		if cocks of player > 0 and cunts of player > 0:   [herms may choose]
			say "     Kneeling over him with your legs both sides of his hips, you feel the warmth radiating off his proudly erect cock. What do you want to use to deflower Eric? (Y = pussy, N = ass)";
			if player consents:
				say "     You grab hold of his thick shaft and hold it up so the flared head strokes your nether lips and slowly lower yourself on it, gasping as he enters your body. It's just amazing to feel his animalistic member slide up against your insides, which has both of you moaning and panting in lust. Then, as he bottoms out and you feel his massive balls against your skin, you lean down and give him a deep kiss.";
				say "     Sitting back up, you moan 'Let's ride, horseboy.' and start sliding up and down on Eric's long shaft. With its inhuman shape and the length and girth his horsecock has, you get rubbed in spots you barely know you had and have a very pleasant sensation of fullness. Below you, Eric is panting and moaning deeply, obviously overwhelmed by the novel experience of fucking with a horsecock. He grabs your hips, pulling you down harder against himself with each slide down and meeting your hips with an upwards thrust of his own.";
				say "     [WaitLineBreak]";
				say "     After a pleasant time riding his cock, Eric pulls you to a stop with his cock buried all the way inside you and asks you to get on all fours on the bunk. Looks like he's inherited some urges from the centaur donor of his 'cure'. With a satisfied grunt, Eric mounts your pussy from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he bottoms out inside you. Then he starts all-out rutting, his shaft sliding in and out of your pussy hard and deep. You climax from this animalistic fuck, having a mind-blowing orgasm that leaves your pussy dripping with female juices. Not too long after, Eric follows suit, filling your womb with a massive load of his fertile seed.[fimpregchance]";
				say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bed together. In between panting for breath, he gives you another kiss on the neck and says 'That was... wow. Thank you so much for helping me fix this.' followed by a last little thrust of his manhood into you.";
			otherwise:
				say "     You grab hold of his thick shaft and hold it up so the flared head strokes against your asshole and slowly lower yourself on it, gasping as he enters your body. It's just amazing to feel his animalistic member slide up against your insides, which has both of you moaning and panting in lust. Then, as he bottoms out and you feel his massive balls against your skin, you lean down and give him a deep kiss.";
				say "     Sitting back up, you moan 'Let's ride, horseboy.' and start sliding up and down on Eric's long shaft. With its inhuman shape and the length and girth his horsecock has, you get rubbed in spots you barely know you had and have a very pleasant sensation of fullness. Below you, Eric is panting and moaning deeply, obviously overwhelmed by the novel experience of fucking with a horsecock. He grabs your hips, pulling you down harder against himself with each slide down and meeting your hips with an upwards thrust of his own.";
				say "     [WaitLineBreak]";
				say "     After a pleasant time riding his cock, Eric pulls you to a stop with his cock buried all the way inside you and asks you to get on all fours on the bunk. Looks like he's inherited some urges from the centaur donor of his 'cure'. With a satisfied grunt, Eric mounts your ass from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he bottoms out inside you. Then he starts all-out rutting, his shaft sliding in and out of your tight hole in hard and deep moves. You quickly climax from this animalistic fuck, having a mind-blowing orgasm that makes you spray your load all over the sheets of the bunk. Not too long after, Eric follows suit, filling your hole with a massive load of his fertile seed.[mimpregchance]";
				say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bed together. In between panting for breath, he gives you another kiss on the neck and says 'That was... wow. Thank you so much for helping me fix this.' followed by a last little thrust of his manhood into you.";
		otherwise if cocks of player > 0:    [male]
			say "     You grab hold of his thick shaft and hold it up so the flared head strokes against your asshole and slowly lower yourself on it, gasping as he enters your body. It's just amazing to feel his animalistic member slide up against your insides, which has both of you moaning and panting in lust. Then, as he bottoms out and you feel his massive balls against your skin, you lean down and give him a deep kiss.";
			say "     Sitting back up, you moan 'Let's ride, horseboy.' and start sliding up and down on Eric's long shaft. With its inhuman shape and the length and girth his horsecock has, you get rubbed in spots you barely know you had and have a very pleasant sensation of fullness. Below you, Eric is panting and moaning deeply, obviously overwhelmed by the novel experience of fucking with a horsecock. He grabs your hips, pulling you down harder against himself with each slide down and meeting your hips with an upwards thrust of his own.";
			say "     [WaitLineBreak]";
			say "     After a pleasant time riding his cock, Eric pulls you to a stop with his cock buried all the way inside you and asks you to get on all fours on the bunk. Looks like he's inherited some urges from the centaur donor of his 'cure'. With a satisfied grunt, Eric mounts your ass from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he bottoms out inside you. Then he starts all-out rutting, his shaft sliding in and out of your tight hole in hard and deep moves. You quickly climax from this animalistic fuck, having a mind-blowing orgasm that makes you spray your load all over the sheets of the bunk. Not too long after, Eric follows suit, filling your hole with a massive load of his fertile seed.[mimpregchance]";
			say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bed together. In between panting for breath, he gives you another kiss on the neck and says 'That was... wow. Thank you so much for helping me fix this.' followed by a last little thrust of his manhood into you.";
		otherwise if cunts of player > 0:    [female]      
			say "     You grab hold of his thick shaft and hold it up so the flared head strokes your nether lips and slowly lower yourself on it, gasping as he enters your body. It's just amazing to feel his animalistic member slide up against your insides, which has both of you moaning and panting in lust. Then, as he bottoms out and you feel his massive balls against your skin, you lean down and give him a deep kiss.";
			say "     Sitting back up, you moan 'Let's ride, horseboy.' and start sliding up and down on Eric's long shaft. With its inhuman shape and the length and girth his horsecock has, you get rubbed in spots you barely know you had and have a very pleasant sensation of fullness. Below you, Eric is panting and moaning deeply, obviously overwhelmed by the novel experience of fucking with a horsecock. He grabs your hips, pulling you down harder against himself with each slide down and meeting your hips with an upwards thrust of his own.";
			say "     [WaitLineBreak]";
			say "     After a pleasant time riding his cock, Eric pulls you to a stop with his cock buried all the way inside you and asks you to get on all fours on the bunk. Looks like he's inherited some urges from the centaur donor of his 'cure'. With a satisfied grunt, Eric mounts your pussy from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he bottoms out inside you. Then he starts all-out rutting, his shaft sliding in and out of your pussy hard and deep. You climax from this animalistic fuck, having a mind-blowing orgasm that leaves your pussy dripping with female juices. Not too long after, Eric follows suit, filling your womb with a massive load of his fertile seed.[fimpregchance]";
			say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bed together. In between panting for breath, he gives you another kiss on the neck and says 'That was... wow. Thank you so much for helping me fix this.' followed by a last little thrust of his manhood into you.";
		otherwise:                           [neuter]
			say "     You grab hold of his thick shaft and hold it up so the flared head strokes against your asshole and slowly lower yourself on it, gasping as he enters your body. It's just amazing to feel his animalistic member slide up against your insides, which has both of you moaning and panting in lust. Then, as he bottoms out and you feel his massive balls against your skin, you lean down and give him a deep kiss.";
			say "     Sitting back up, you moan 'Let's ride, horseboy.' and start sliding up and down on Eric's long shaft. With its inhuman shape and the length and girth his horsecock has, you get rubbed in spots you barely know you had and have a very pleasant sensation of fullness. Below you, Eric is panting and moaning deeply, obviously overwhelmed by the novel experience of fucking with a horsecock. He grabs your hips, pulling you down harder against himself with each slide down and meeting your hips with an upwards thrust of his own.";
			say "     [WaitLineBreak]";
			say "     After a pleasant time riding his cock, Eric pulls you to a stop with his cock buried all the way inside you and asks you to get on all fours on the bunk. Looks like he's inherited some urges from the centaur donor of his 'cure'. With a satisfied grunt, Eric mounts your ass from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he bottoms out inside you. Then he starts all-out rutting, his shaft sliding in and out of your tight hole in hard and deep moves. You quickly climax from this animalistic fuck, your body shaking from the pleasant sensations. Not too long after, Eric follows suit, filling your hole with a massive load of his fertile seed.";
			say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bed together. In between panting for breath, he gives you another kiss on the neck and says 'That was... wow. Thank you so much for helping me fix this.' followed by a last little thrust of his manhood into you.";
		now hp of Eric is 22;
	otherwise if (hp of Eric is 22):   [male with horse-cock repeats]
		if (lastEricfucked - turns < 6):
			say "     As you approach Eric, he immediately sees the lust-filled twinkle in your eyes. Pulling you close against his body, he gives you a deep kiss, playfully wrestling your tongue with his. But then as you lower your hands to stroke the bulge in his shorts, he pulls away, taking your hand in his and giving you an apologetic look. 'I'd love to, baby... but honestly, I need a break. With the size of this bad boy you've gotten me, I get a bit woozy if I use it too many hours a day. There's only so much blood to go around in a man, you know...'";
		otherwise:
			say "     You walk over to Eric, who immediately starts smiling as he sees the lust-filled twinkle in your eyes. Throwing his arms around you, his lips find yours for a quick kiss, then he suggestively nods over to his bunk.";
			wait for any key;
			say "[EricSexMenu]";
			now lastEricfucked is turns; 
	otherwise if (hp of Eric is 31):   [male with virgin satyr-cock]
		say "     Stepping up to Eric, you lower your hand to the front of his shorts and rub against the bulge in its fabric, feeling his balls and flaccid cock. It doesn't stay that way for long though, growing into a truly impressive trouser snake as his body reacts to your touch.";
		say "     'Why don't we take this bad boy for a little spin - make you a real man again.' you tell him as you slide your hand under the band of his shorts and grab grab hold of his thick cock. Eric can only pant and nod eagerly as you fondle the organ where all the blood for his brain went. With a big smile on your face you lead him to his bed and peel all clothing off Eric's athletic human body.";
		say "     Well, mostly human - the cock between his legs looks like it belongs to a satyr... it's pretty long, with an animalistic shape and scent, and shows a bundle of red-furred skin around the lower third that must be Eric's goat-like sheath. The tip comes to a bit of a point, jutting forwards proudly at the end, making you wonder how it will compare to a human manhood. Two massive balls, also covered in red fur, hang below it, looking ready to deliver a deluge of cum.";
		say "     [WaitLineBreak]";
		say "     Eager to take the virginity of Eric's new equipment, you softly push him down to lie on the bed and grab hold of his satyrcock with both hands. It's an impressive piece of anatomy, firm and warm in your hands as you stroke up and down on it. Not wanting to wait any longer, you quickly remove your clothes, then climb up on the bed with Eric.";
		if cocks of player > 0 and cunts of player > 0:   [herms may choose]
			say "     Kneeling over him with your legs both sides of his hips, you feel the warmth radiating off his proudly erect cock. What do you want to use to deflower Eric? (Y = pussy, N = ass)";
			if player consents:
				say "     You grab hold of his thick shaft and hold it up so the leaking head strokes your nether lips and slowly lower yourself on it, gasping as he enters your body. It's just amazing to feel his animalistic member slide up against your insides, which has both of you moaning and panting in lust. Then, as he bottoms out and you feel his massive balls against your skin, you lean down and give him a deep kiss.";
				say "     Sitting back up, you moan 'Give it to me, satyrboy.' and start sliding up and down on Eric's long shaft. With its inhuman shape and the added length his satyrcock has, you get rubbed in spots you barely know you had and have a very pleasant sensation of fullness. Below you, Eric is panting and moaning deeply, obviously overwhelmed by the novel experience of fucking with a goat cock. He grabs your hips, pulling you down harder against himself with each slide down and meeting your hips with an upwards thrust of his own.";
				say "     [WaitLineBreak]";
				say "     After a pleasant time riding his cock, Eric pulls you to a stop with his cock buried all the way inside you and asks you to get on all fours on the bunk. Looks like he's inherited some added virility from the satyr wine. With a satisfied grunt, Eric mounts your pussy from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he bottoms out inside you. Then he starts all-out rutting, his shaft sliding in and out of your pussy hard and deep. You climax from this animalistic fuck, having a mind-blowing orgasm that leaves your pussy dripping with female juices. Not too long after, Eric follows suit, filling your womb with a massive load of his fertile seed.[fimpregchance]";
				say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bed together. In between panting for breath, he gives you another kiss on the neck and says 'That was... wow. Thank you so much for helping me fix this.' followed by a last little thrust of his manhood into you.";
			otherwise:
				say "     You grab hold of his thick shaft and hold it up so the leaking head strokes against your asshole and slowly lower yourself on it, gasping as he enters your body. It's just amazing to feel his animalistic member slide up against your insides, which has both of you moaning and panting in lust. Then, as he bottoms out and you feel his massive balls against your skin, you lean down and give him a deep kiss.";
				say "     Sitting back up, you moan 'Give it to me, satyrboy.' and start sliding up and down on Eric's long shaft. With its inhuman shape and the added length his satyrcock has, you get rubbed in spots you barely know you had and have a very pleasant sensation of fullness. Below you, Eric is panting and moaning deeply, obviously overwhelmed by the novel experience of fucking with a goat cock. He grabs your hips, pulling you down harder against himself with each slide down and meeting your hips with an upwards thrust of his own.";
				say "     [WaitLineBreak]";
				say "     After a pleasant time riding his cock, Eric pulls you to a stop with his cock buried all the way inside you and asks you to get on all fours on the bunk. Looks like he's inherited some added virility from the satyr wine. With a satisfied grunt, Eric mounts your ass from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he bottoms out inside you. Then he starts all-out rutting, his shaft sliding in and out of your tight hole in hard and deep moves. You quickly climax from this animalistic fuck, having a mind-blowing orgasm that makes you spray your load all over the sheets of the bunk. Not too long after, Eric follows suit, filling your hole with a massive load of his fertile seed.[mimpregchance]";
				say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bed together. In between panting for breath, he gives you another kiss on the neck and says 'That was... wow. Thank you so much for helping me fix this.' followed by a last little thrust of his manhood into you.";
		otherwise if cocks of player > 0:    [male]
			say "     You grab hold of his thick shaft and hold it up so the leaking head strokes against your asshole and slowly lower yourself on it, gasping as he enters your body. It's just amazing to feel his animalistic member slide up against your insides, which has both of you moaning and panting in lust. Then, as he bottoms out and you feel his massive balls against your skin, you lean down and give him a deep kiss.";
			say "     Sitting back up, you moan 'Give it to me, satyrboy.' and start sliding up and down on Eric's long shaft. With its inhuman shape and the added length his satyrcock has, you get rubbed in spots you barely know you had and have a very pleasant sensation of fullness. Below you, Eric is panting and moaning deeply, obviously overwhelmed by the novel experience of fucking with a goat cock. He grabs your hips, pulling you down harder against himself with each slide down and meeting your hips with an upwards thrust of his own.";
			say "     [WaitLineBreak]";
			say "     After a pleasant time riding his cock, Eric pulls you to a stop with his cock buried all the way inside you and asks you to get on all fours on the bunk. Looks like he's inherited some added virility from the satyr wine. With a satisfied grunt, Eric mounts your ass from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he bottoms out inside you. Then he starts all-out rutting, his shaft sliding in and out of your tight hole in hard and deep moves. You quickly climax from this animalistic fuck, having a mind-blowing orgasm that makes you spray your load all over the sheets of the bunk. Not too long after, Eric follows suit, filling your hole with a massive load of his fertile seed.[mimpregchance]";
			say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bed together. In between panting for breath, he gives you another kiss on the neck and says 'That was... wow. Thank you so much for helping me fix this.' followed by a last little thrust of his manhood into you.";
		otherwise if cunts of player > 0:    [female]      
			say "     You grab hold of his thick shaft and hold it up so the leaking head strokes your nether lips and slowly lower yourself on it, gasping as he enters your body. It's just amazing to feel his animalistic member slide up against your insides, which has both of you moaning and panting in lust. Then, as he bottoms out and you feel his massive balls against your skin, you lean down and give him a deep kiss.";
			say "     Sitting back up, you moan 'Give it to me, satyrboy.' and start sliding up and down on Eric's long shaft. With its inhuman shape and the added length his satyrcock has, you get rubbed in spots you barely know you had and have a very pleasant sensation of fullness. Below you, Eric is panting and moaning deeply, obviously overwhelmed by the novel experience of fucking with a goat cock. He grabs your hips, pulling you down harder against himself with each slide down and meeting your hips with an upwards thrust of his own.";
			say "     [WaitLineBreak]";
			say "     After a pleasant time riding his cock, Eric pulls you to a stop with his cock buried all the way inside you and asks you to get on all fours on the bunk. Looks like he's inherited some added virility from the satyr wine. With a satisfied grunt, Eric mounts your pussy from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he bottoms out inside you. Then he starts all-out rutting, his shaft sliding in and out of your pussy hard and deep. You climax from this animalistic fuck, having a mind-blowing orgasm that leaves your pussy dripping with female juices. Not too long after, Eric follows suit, filling your womb with a massive load of his fertile seed.[fimpregchance]";
			say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bed together. In between panting for breath, he gives you another kiss on the neck and says 'That was... wow. Thank you so much for helping me fix this.' followed by a last little thrust of his manhood into you.";
		otherwise:                           [neuter]
			say "     You grab hold of his thick shaft and hold it up so the leaking head strokes against your asshole and slowly lower yourself on it, gasping as he enters your body. It's just amazing to feel his animalistic member slide up against your insides, which has both of you moaning and panting in lust. Then, as he bottoms out and you feel his massive balls against your skin, you lean down and give him a deep kiss.";
			say "     Sitting back up, you moan 'Give it to me, satyrboy.' and start sliding up and down on Eric's long shaft. With its inhuman shape and the added length his satyrcock has, you get rubbed in spots you barely know you had and have a very pleasant sensation of fullness. Below you, Eric is panting and moaning deeply, obviously overwhelmed by the novel experience of fucking with a goat cock. He grabs your hips, pulling you down harder against himself with each slide down and meeting your hips with an upwards thrust of his own.";
			say "     [WaitLineBreak]";
			say "     After a pleasant time riding his cock, Eric pulls you to a stop with his cock buried all the way inside you and asks you to get on all fours on the bunk. Looks like he's inherited some added virility from the satyr wine. With a satisfied grunt, Eric mounts your ass from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he bottoms out inside you. Then he starts all-out rutting, his shaft sliding in and out of your tight hole in hard and deep moves. You quickly climax from this animalistic fuck, your body shaking from the pleasant sensations. Not too long after, Eric follows suit, filling your hole with a massive load of his fertile seed.[mimpregchance]";
			say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bed together. In between panting for breath, he gives you another kiss on the neck and says 'That was... wow. Thank you so much for helping me fix this.' followed by a last little thrust of his manhood into you.";
		now hp of Eric is 32;
	otherwise if hp of Eric is 32:   [male with satyr-cock repeats]
		if lastEricfucked - turns < 6:
			say "     As you approach Eric, he immediately sees the lust-filled twinkle in your eyes. Pulling you close against his body, he gives you a deep kiss, playfully wrestling your tongue with his. But then as you lower your hands to stroke the bulge in his shorts, he pulls away, taking your hand in his and giving you an apologetic look. 'I'd love to, baby... but honestly, I should take a break. While this thing is really randy, it might be trouble if I keep fucking over and over.  It feels like I just might never want to stop the party if I go too often, you know...'";
		otherwise:
			say "     You walk over to Eric, who immediately starts smiling as he sees the lust-filled twinkle in your eyes. Throwing his arms around you, his lips find yours for a quick kiss, then he suggestively nods over to his bunk.";
			wait for any key;
			say "[EricSexMenu]";
			now lastEricfucked is turns; 
	otherwise if (hp of Eric is 99):   [sex slave cuntboy repeats]
		if (lastEricfucked - turns < 3):
			say "     As you approach Eric, he immediately sees the lust-filled twinkle in your eyes and takes a step back, an annoyed look on his face. 'Again? Can't you at least let me have some breaks? I'm not a blow-up-doll you can use any time you like, you know...' He stomps off to his bed to sulk.";
		otherwise:
			say "     'Time to have sex with your personal gender-switched freak again?' Eric says, looking at you in disdain. 'I should hate you for making me do this - but my pussy gets wet just thinking about it...' With a sigh, he strips off his clothing and looks to you, waiting for orders.";
			wait for any key;
			say "[EricSexMenu]";
			now lastEricfucked is turns;    

to say EricSexMenu:
	blank out the whole of table of fucking options;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him blow your cock";
		now sortorder entry is 1;
		now description entry is "Put your [if hp of Eric is 22 or hp of Eric is 32]horny friend's[otherwise]pussyboy's[end if] mouth to good use.";
		now toggle entry is EricSex rule;
	if hp of Eric is 22 or hp of Eric is 32:
		choose a blank row in table of fucking options;
		now title entry is "Suck Eric's cock";
		now sortorder entry is 2;
		now description entry is "Put Eric's [if hp of Eric is 22]long horsecock[otherwise if hp of Eric is 32]musky satyrcock[end if] in your mouth.";
		now toggle entry is EricSex rule;		
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him lick your pussy";
		now sortorder entry is 3;
		now description entry is "Put his mouth to good use.";
		now toggle entry is EricSex rule;
	if (hp of Eric is 11 or hp of Eric is 99):		
		choose a blank row in table of fucking options;
		now title entry is "Finger his pussy";
		now sortorder entry is 4;
		now description entry is "Finger-fuck Eric's pussy to make him cum.";
		now toggle entry is EricSex rule;		
	if ((hp of Eric is 11 or hp of Eric is 99) and cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Fuck his pussy";
		now sortorder entry is 5;
		now description entry is "Fill the pussyboy with your cock.";
		now toggle entry is EricSex rule;
	if (hp of Eric is 22 or hp of Eric is 32) and cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Let him fuck your pussy";
		now sortorder entry is 6;
		now description entry is "Ride Eric's [if hp of Eric is 22]long horsecock[otherwise if hp of Eric is 32]virile satyrcock[end if].";
		now toggle entry is EricSex rule;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Eric's ass";
		now sortorder entry is 7;
		now description entry is "Fill your [if hp of Eric is 22 or hp of Eric is 32]horny friend's[otherwise]pussyboy's[end if] ass with your cock.";
		now toggle entry is EricSex rule;
	if hp of Eric is 22 or hp of Eric is 32:
		choose a blank row in table of fucking options;
		now title entry is "Let him fuck your ass";
		now sortorder entry is 8;
		now description entry is "Ride Eric's long cock.";
		now toggle entry is EricSex rule;
	if lust of Eric is 3 and hp of Eric is 99 and hp of David is 4 and lastfuck of David - turns >= 6:	[Eric ready for sex with David, sex-slave cuntboy, David in the bunker and ready]
		choose a blank row in table of fucking options;
		now title entry is "Trick David into fucking Eric";
		now sortorder entry is 9;
		now description entry is "Make the cuntboy ride David's cock.";
		now toggle entry is EricSex rule;
	if lust of Eric is 3 and (hp of Eric is 22 or hp of Eric is 32) and hp of David is 4 and lastfuck of David - turns >= 6 and lust of David > 0:	[Eric ready for sex with David, non-virgin male, David in the bunker and ready, David ass fucked before]
		choose a blank row in table of fucking options;
		now title entry is "Have Eric fuck David";
		now sortorder entry is 10;
		now description entry is "Make the soldier boy ride Eric's horsecock.";
		now toggle entry is EricSex rule;
	if lust of Eric is 3 and hp of Eric is 11 and hp of David is 4 and lastfuck of David - turns >= 6:	[Eric ready for sex with David, non-virgin cuntboy, David in the bunker and ready]
		choose a blank row in table of fucking options;
		now title entry is "Have David fuck Eric's pussy";
		now sortorder entry is 11;
		now description entry is "Make the soldier boy fuck Eric.";
		now toggle entry is EricSex rule;
	if lust of Eric is 4 and hp of David is 4 and lastfuck of David - turns >= 6:		[David+Eric had sex, David in the bunker and ready]
		choose a blank row in table of fucking options;
		now title entry is "Threesome with David and Eric";
		now sortorder entry is 12;
		now description entry is "Have some fun with both of them together.";
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
		otherwise if (nam is "Trick David into fucking Eric"):
			say "[EricSex9]";			
		otherwise if (nam is "Have Eric fuck David"):
			say "[EricSex10]";			
		otherwise if (nam is "Have David fuck Eric's pussy"):
			say "[EricSex11]";			
		otherwise if (nam is "Threesome with David and Eric"):
			say "[EricSex12]";						
		wait for any key;

to say EricSex1:    [cock sucked by Eric]
	if(hp of Eric is 11):  						[cuntboy repeat sex]
		say "     Staying right where you are, you give Eric's shoulders a soft push to make him crouch down before you. Pulling down your rapidly hardening cock, you stroke it a few times and then hold it out for him.";
		say "     Eric licks it, then takes it into his mouth without any hesitation, clearly eager to satisfy your lust. Him looking up at you adoringly with your manhood sliding in and out of his mouth is quite a sight. You stroke his neck, then run your hand through his red hair and grab hold of his head. Pulling his mouth deeper onto your shaft, you start fucking his face, going slow at first for him to get used to it, then speed up and go deeper and deeper.";
		say "			[WaitLineBreak]";
		say "     His soft lips and warm mouth around your cock give you an amazing feeling, making you moan in lust. He might be new to sucking cocks, but having been a male himself not too long ago, he clearly knows how to please you orally. And he's very eager and willing to learn, even going for a few deep throat moments after taking deep breaths.";
		say "     With such a handsome cuntboy eager to please, it doesn't take long until your balls tighten and your cock pulses with burst after burst of cum it's depositing onto Eric's tongue. He sticks it out for a moment for you to see your white load, then closes his mouth and swallows it all down. Standing up, he puts his arms around you and gives you a quick kiss, leaving you with a warm feeling and the taste of cum on your lips.";
	otherwise if hp of Eric is 32 and cockname of player is "Satyr":	[satyr-cock Eric + satyr+cock player]
		say "     Even as you're guiding Eric down towards your crotch, he starts to sniff, catching the scent of your musky cock, which excites something in him.  Face to face with your throbbing satyr maleness, he licks his lips.  'Oh, is this for me?' he asks with a growing smile on his face.";
		say "     Taking it in hand, he rubs his other hand over your balls and starts sliding his slick tongue across your glans.  You don't think he had any gay encounters before all this, but with everything else that happened to him and now a satry cock much like his own in front of him, he doesn't hesitate to throw himself into sucking you off.  Him looking up at you adoringly with your manhood sliding in and out of his mouth is quite a sight.  You stroke his neck, then run your hand through his red hair and grab hold of his head. Pulling his mouth deeper onto your shaft, you start fucking his face, going slow at first for him to get used to it, then speed up and go deeper and deeper.";
		say "			[WaitLineBreak]";
		say "     His soft lips and warm mouth around your cock give you an amazing feeling, making you moan in lust.  He might be new to sucking cocks, but he clearly knows how to please a man orally from his own experiences as the receiver.  And he's very eager and willing to learn doing it himself, even going for a few deep throat moments after taking deep breaths.";
		say "     With such a handsome guy eager to please, it doesn't take long until your balls tighten and your cock pulses with burst after burst of cum it's depositing onto Eric's tongue.  He sticks it out for a moment for you to see your white load, then closes his mouth and swallows it all down.  'Mmm... almost as good as a fine wine,' he says with a laugh as he stands up.  He puts his arms around you and gives you a quick kiss, leaving you with a warm feeling and the taste of cum on your lips.";
	otherwise if hp of Eric is 22 or hp of Eric is 32:   [male with horse-cock/satyr-cock repeats]
		say "     Staying right where you are, you give Eric's shoulders a soft push to make him crouch down before you. Pulling down your rapidly hardening cock, you stroke it a few times and then hold it out for him.";
		say "     He looks at it for a second, then takes it into his hand and slowly runs his tongue over the head. You don't think he had any gay encounters before all this, but with being a woman in between and you saving his bacon, he's clearly willing to try anything with you now. After getting over the first moment of restraint, he jumps right into the action, licking your shaft and then taking it into his mouth. Him looking up at you adoringly with your manhood sliding in and out of his mouth is quite a sight. You stroke his neck, then run your hand through his red hair and grab hold of his head. Pulling his mouth deeper onto your shaft, you start fucking his face, going slow at first for him to get used to it, then speed up and go deeper and deeper.";
		say "			[WaitLineBreak]";
		say "     His soft lips and warm mouth around your cock give you an amazing feeling, making you moan in lust. He might be new to sucking cocks, but he clearly knows how to please a man orally from his own experiences as the receiver. And he's very eager and willing to learn doing it himself, even going for a few deep throat moments after taking deep breaths.";
		say "     With such a handsome guy eager to please, it doesn't take long until your balls tighten and your cock pulses with burst after burst of cum it's depositing onto Eric's tongue. He sticks it out for a moment for you to see your white load, then closes his mouth and swallows it all down. Standing up, he puts his arms around you and gives you a quick kiss, leaving you with a warm feeling and the taste of cum on your lips.";		  
	otherwise if(hp of Eric is 99):   [sex slave cuntboy]
		say "     Staying right where you are, you push down on Eric's shoulders and make him kneel in front of you. Pulling down your rapidly hardening cock, you stroke it a few times and then hold it out for him.";
		say "     He looks hesitantly at it until you reach out and grab his head, pulling him towards your crotch. You push against his lips with the tip of your cock, then hear a soft sigh as he opens his mouth and takes you in. You don't think he had any gay encounters before all this and you have to remind him not to touch your rod with his teeth, but soon you got him sucking on your cock correctly. Seeing your manhood sliding in and out of his mouth gives you a sense of power that fuels your rising lust, making you grab his head tightly with both your hands and start face-fucking him. Pulling his mouth deeper onto your shaft, there is a moment or two in which he gags for air, but soon he gets used to it and you can slide deep inside his throat.";
		say "			[WaitLineBreak]";
		say "     His soft lips and warm mouth around your cock give you an amazing feeling, making you moan in lust. He might be new to sucking cocks, but he'll learn over time and you get off on making him do it.";
		say "     It doesn't take long until your balls tighten and your cock pulses with burst after burst of cum it's depositing onto Eric's tongue. He starts turning his head to spit it out, but you grab him and order him to swallow it all. After having him stick out his tongue so you can check it's all gone, you give him a pat on his head, saying 'Good boy. I'll teach you to behave properly yet.'";		  
	otherwise:
		say "ERROR-Eric-[hp of Eric]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say EricSex2:    [sucking Eric's cock]
	if hp of Eric is 22:					[male with horse-cock repeats]
		say "     Pulling him into a tight embrace, your then let your hand wander down his body until it reaches his crotch. You stroke his already quite large bulge through the fabric for a moment, then push your hands under his shirt and pull it over his head. Hooking your hands over the bands of his shorts and briefs, you pull them down in one go. Now fully naked, Eric looks delicious to your eyes, with his lithe human body and large equine cock and balls.";
		say "     Eagerly you kneel down, taking his manhood in both hands and lick over its wide flared head. He throws his head back and moans 'Yes! Suck it please - I need it.' Grinning, you give him a few more slow strokes up and down his long shaft until he's almost shaking with arousal, then slide your lips over his horsecock. Sucking on his erect member, you get a taste of his pre-cum and smell the animal-like musk of his crotch. It makes you want more, and you go faster and faster, soon bobbing rapidly up and down on his cock.";
		say "			[WaitLineBreak]";
		say "     At some point, Eric takes over and holds your head while face-fucking his cock in and out of you - but you don't really care, totally concentrated on the feeling of him sliding in and out of your throat and the taste of him. You reach up, taking hold of his large balls with your hands and massage them softly, making Eric grunt in pleasure. After a short while and a bit of oral attention more, you feel the balls pulse in your hands as Eric blows his load deep into your mouth, the first blast going right down your throat into your stomach. Then he pulls back a bit and shoots thick ropes of cum onto your tongue, filling your mouth with its animalistic taste.";
		say "     You softly suck on him and run your tongue over his cock as it shoots more cum, then pull off it when he stops and stand up. Running a hand through Eric's red hair, you pull him close and start making out with him. His eyes widen a bit when you push some of his cum into his mouth with your tongue, but he takes it in stride, continuing your kissing and wrestling your tongue with his own. As you pull back for some air, he smiles at you, pushing out his cum-covered tongue then demonstratively swallows what you gave him. Looks like he likes the taste himself.";
	otherwise if hp of Eric is 32 and facename of player is "Greek Nymph":		[satyr-cock Eric + satyr+cock player]
		say "     Pulling him into a tight embrace, your then let your hand wander down his body until it reaches his crotch.  As you're stroking the growing bulge through the fabric for a moment, he pulls you into a wild, passionate kiss, his tongue diving into your mouth and his hands reaching down to grab your ass.  'Oh, you have such a pretty face,' he says when the kiss is finally broken.  Grinning, you respond that it'll look even prettier with his cock between your lips, which has him laugh.  Having divested him of his shorts and briefs during the long kiss, you eye his satyr cock with a growing hunger and lust, wanting to taste that throbbing goat meat and suck those hefty, red-furred balls of his dry.";
		say "     Eagerly you kneel down, taking his manhood in both hands and lick over its dribbling head, lusting after the taste of it.  He throws his head back and moans 'Oh yes!  Suck it please - I want those beautiful lips aroooohhh yeah!'  Unable to hold back any longer, you're stuffing it into your mouth even before he's had a chance to finish talking.  Sucking on his erect member, you get a taste of his pre-cum and smell the virile musk of his crotch.  Thirsty for more and wanting the even richer finish you know is coming, you go faster and faster, soon bobbing rapidly up and down on his cock.";
		say "			[WaitLineBreak]";
		say "     At some point, Eric takes over and holds your head with one hand so he can increase the pace while while face-fucking his cock in and out of you.  His other hand runs lightly over your lovely, nymph-like face and through your long, flowing hair.  Wildly excited by the taste and feel of his cock sliding in and out of your mouth and throat, you reach up and take hold of his large balls with both hands.  Massaging them softly and reaching back to rub at his taint, you draw a long moan of pleasure out of Eric.  After a short while and a bit of oral attention more, you feel the balls pulse in your hands as Eric blows his load deep into your mouth, the first blast going right down your throat into your stomach.  He then pulls back a bit and shoots thick ropes of cum onto your tongue, filling your mouth with its musky taste[if cunts of player > 0 or cocks of player > 0].  This sends one of your hands down between your legs so you can masturbate yourself to a moaning orgasm just as he's about to finish up, exciting a few extra spurts out of him[end if].";
		say "     You make sure to lick his cock clean of every drop of that strong, virile cum of his, finding its taste incredibly exciting to your palate.  Only once you've gotten it all do you reluctantly release it and stand up.  Running a hand over Eric's chest, [if a random chance of 1 in 2 succeeds]you move in to kiss him again, but then turn away at the last moment on an impulse and dash away giggling[otherwise]you are surprised when Eric grabs you and presses your body and lips to his, kissing your beautiful, nymph face with another, wild and untamed kiss.  When he releases you, you giggle softly and he chuckles, giving your ass a swat as you go[end if].";
	otherwise if hp of Eric is 32:			[male with satyr-cock repeats]
		say "     Pulling him into a tight embrace, your then let your hand wander down his body until it reaches his crotch. You stroke his already growing bulge through the fabric for a moment, then push your hands under his shirt and pull it over his head. Hooking your hands over the bands of his shorts and briefs, you pull them down in one go. Now fully naked, Eric looks delicious to your eyes, with his lithe human body and throbbing satyr cock to go with his hefty, red-furred balls.";
		say "     Eagerly you kneel down, taking his manhood in both hands and lick over its dribbling head. He throws his head back and moans 'Yes! Suck it please - I need it.' Grinning, you give him a few more slow strokes up and down his throbbing shaft until he's almost shaking with arousal, then slide your lips over his satyrcock. Sucking on his erect member, you get a taste of his pre-cum and smell the virile musk of his crotch. It makes you want more, and you go faster and faster, soon bobbing rapidly up and down on his cock.";
		say "			[WaitLineBreak]";
		say "     At some point, Eric takes over and holds your head while face-fucking his cock in and out of you - but you don't really care, totally concentrated on the feeling of him sliding in and out of your throat and the taste of him. You reach up, taking hold of his large balls with your hands and massage them softly, making Eric grunt in pleasure. After a short while and a bit of oral attention more, you feel the balls pulse in your hands as Eric blows his load deep into your mouth, the first blast going right down your throat into your stomach. Then he pulls back a bit and shoots thick ropes of cum onto your tongue, filling your mouth with its musky taste.";
		say "     You softly suck on him and run your tongue over his cock as it shoots more cum, then pull off it when he stops and stand up. Running a hand through Eric's red hair, you pull him close and start making out with him. His eyes widen a bit when you push some of his cum into his mouth with your tongue, but he takes it in stride, continuing your kissing and wrestling your tongue with his own. As you pull back for some air, he smiles at you, pushing out his cum-covered tongue then demonstratively swallows what you gave him. Looks like he likes the taste himself.";
	otherwise:
		say "ERROR-Eric-[hp of Eric]D: He shouldn't have a cock right now! Please report how you got to this message.";
	
to say EricSex3:    [cunt licked by Eric]
	if(hp of Eric is 11):   					[cuntboy repeat sex]
		say "     Strolling towards the bed you slide off your clothing, then lie down on it and spread your legs, telling Eric to give you pleasure with his tongue. He kneels down in front of the bed and moves one hand forward to spread your nether lips, then licks over them. 'Stacy always said I'm good at oral sex. And I... practiced a bit with my own...'";
		say "     And it's true - your eager cuntboy licks and fondles your sex expertly, making you moan in rising arousal. Looks like becoming a woman has given him an insight on the whole matter. After a quite pleasurable time where he rubs erogenous zones inside your pussy you barely knew existed, you moan loudly and orgasm, dripping female juices over his fingers. Eric keeps going, fondling your lips as you shiver in pleasure and slurps up your femcum. Finally he stands up again, giving you a kiss tasting of your own pussy juice.";
	otherwise if hp of Eric is 32 and cockname of player is "Greek Nymph":   [satyr-cock Eric + nymph+cunt player]
		say "     Strolling towards the bed you slide off your clothing, then lie down on it and spread your legs, telling Eric to give you pleasure with his tongue.  He kneels down in front of the bed and moves one hand forward to spread your nether lips, moaning softly in anticipation as he takes in your scent, something about it is particularly exciting for him.  Without further delay, he dives in, licking at your pussy wildly, though with considerable skill as well.";
		say "     Your eager runner licks and fondles your sex with excessive zeal, making you moan in rising arousal at his performance.  It's clear he's had plenty of practice at this as is quite good, as that shines through even given his wild enthusiasm for eating you out.  Between his clear lust for your juices and his personal experience by having a pussy of his own for a while, you find yourself having several powerful, crashing orgasms as he licks, kisses, rubs, nibbles and a startling array of other sensual touches up your erogenous zones.  By the time you can take no more, your thighs and his face are soaked in your juices and he's stroked himself to orgasm twice as well.  You have to push him away for him to finally stop, though he makes a show of licking your femcum from his lips.";
	otherwise if hp of Eric is 22 or hp of Eric is 32:	[male with horse-cock/satyr-cock repeats]
		say "     Strolling towards the bed you slide off your clothing, then lie down on it and spread your legs, telling Eric to give you pleasure with his tongue. He kneels down in front of the bed and moves one hand forward to spread your nether lips, then expertly licks over them. 'Stacy always said I'm good at oral sex. And I... practiced a bit before you made me a man again.";
		say "     And it's true - your eager runner licks and fondles your sex expertly, making you moan in rising arousal. Looks like his short stint as a woman has given him an insight on the whole matter. After a quite pleasurable time where he rubs erogenous zones inside your pussy you barely knew existed, you moan loudly and orgasm, dripping female juices over his fingers. Eric keeps going, fondling your lips as you shiver in pleasure and slurps up your femcum. Finally he stands up again, giving you a kiss tasting of your own pussy juice.";
	otherwise if(hp of Eric is 99):	[sex slave cuntboy]
		say "     Strolling towards the bed you slide off your clothing, then lie down on it and spread your legs, ordering Eric to come over and get licking. He reluctantly kneels down in front of the bed, looking at your pussy. Not wanting for him to make up his mind, you just grab his head, pushing him down to your crotch and holding him there until he opens up and starts licking your folds.";
		say "     Despite the slow start, he gets more into servicing you pretty soon, licking and fondling your female sex. And he's rather good at it too - looks like becoming a woman has given him an insight on the whole matter. After a quite pleasurable time where he rubs erogenous zones inside your pussy you barely knew existed, you moan loudly and orgasm, dripping female juices over his fingers. Eric keeps going, fondling your lips as you shiver in pleasure and slurps up your femcum. You look down at him kneeling in front of you, then run a hand over your cunt and rub in the female juices all over Eric's face. 'Just admit to yourself that you like it.'";
	otherwise:
		say "ERROR-Eric-[hp of Eric]C: He isn't in one of the states he should be in! Please report how you got to this message.";
	
to say EricSex4:    [Eric's cunt licked/fingered]
	if(hp of Eric is 11):   					[cuntboy repeat sex]
		say "     Taking Eric by the hand, you lead him over to his bed and push your hands under his shirt. Feeling up his firm chest muscles for a moment, next you take hold of the shirt and pull it off him. Then it's time for his shorts, which you slide down his long runner's legs, stroking over his skin as you go. Now your handsome athlete is almost naked before you, just wearing a skimpy white tanga already showing a little damp spot at the front.";
		say "     Running your hands over his body, you pull Eric in for another quick kiss, then softly push him backwards against the bed and make him lie down on it. You stroke over the thin fabric of his panties with your fingers, making him moan needily. Looks like your cuntboy is about ready... you pull the panties off his body, revealing his swollen pussy with its open, glistening lips.";
		say "			[WaitLineBreak]";
		say "     Kneeling down, you give him a careful lick and taste his juices, then really go to town on him - licking and fondling his female bits until he's panting and squirming in arousal, his hands grabbing the sheets tightly. You keep going for quite a bit until suddenly he gives a lustful scream and orgasms, dripping femcum from his spread pussy. You sit beside him on the camp bed, softly stroking his body as he rides out the sexual high. When he finally comes down to normal a while later, he pulls you down to lie beside him and gives you a kiss. 'If I had known it'd be like this, I'd have jumped you the moment you came to me. Who wouldn't want to be a woman with you...'";
	otherwise if hp of Eric is 22 or hp of Eric is 32:   [male with horse-cock/satyr-cock repeats]
		say "ERROR-Eric-1D: This option shouldn't be available since he has no cunt in the current form. Please report how you got to this message.";
	otherwise if(hp of Eric is 99):   [sex slave cuntboy]
		say "     Deciding your cuntboy needs a bit of help accepting his womanhood, you pull him along to the bed and fondle his body, playing with his sensitive nipples. Then you push him backwards so he falls down onto the bed on his back and tell him to spread his legs.";
		say "     Between them, his pussy comes into sight, moisture glistening between its swollen lips. Looks like your cuntboy is about ready...";
		say "			[WaitLineBreak]";
		say "     Kneeling down, you give him a lick and taste his juices, then really go to town on him - licking and fondling his female bits until he's panting and squirming in arousal, his hands grabbing the sheets tightly. You keep going for quite a bit until suddenly he gives a lustful scream and orgasms, dripping femcum from his spread pussy. You sit beside him on the camp bed, fondling his lithe body as he rides out the sexual high. When he finally comes down to normal a while later, he says 'Damn, it shouldn't feel so good when you use me like this. I can't believe I came like that.'";
	otherwise:
		say "ERROR-Eric-[hp of Eric]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say EricSex5:    [Eric's pussy fucked by player]
	if(hp of Eric is 11): 					  [cuntboy repeat sex]
		say "     Taking Eric by the hand, you lead him over to his bed and push your hands under his shirt. Feeling up his firm chest muscles for a moment, next you take hold of the shirt and pull it off him. Then it's time for his shorts, which you slide down his long runner's legs, stroking over his skin as you go. Now your handsome athlete is almost naked before you, just wearing a skimpy white tanga already showing a little damp spot at the front.";
		say "     Running your hands over his body, you pull Eric in for another quick kiss, then softly push him backwards against the bed and make him lie down on it. You stroke over the thin fabric of his panties with your fingers, making him moan needily. Looks like your cuntboy is about ready... you pull the panties off his body, revealing his swollen pussy with its open, glistening lips.";
		say "			[WaitLineBreak]";
		say "     Quickly stripping off your own clothing, you climb on the bed with him and kneel between his spread legs. He just looks so delicious, lying before you with his athletic body and that eager expression on his face. You barely manage to control the impulse to just plunge in and take him then and there, instead going slow and rubbing the tip of your cock up and down over his pussy lips, making him pant in need. After pushing softly against his opening several times, then going back to more rubbing, Eric moans 'Please - I need you in me.'";
		say "     Following your handsome cuntboy's needful request, you aim your shaft and push forward, giving both your bodies the unity they craved for. As you sink deeper inside him, you lean down and make out with Eric, moaning into each other's mouth when you bottom out inside him. With the warm, tight hole around your cock, all restraint is soon forgotten and you start fucking him hard and deep. Eric gives lustful grunts to accompany the sound of your hips slapping against his crotch and wraps his arms and legs around you in an intimate embrace.";
		say "			[WaitLineBreak]";
		say "     You fuck each other like sex-starved bunnies for at least an hour, only stopping for a moment when you cum inside him and fill his womb with your fertile seed, then make out a bit until you're ready to go on. It's a wild ride, but finally - after him and you coming three times - you come to lie on the bed together in each other's arms. Eric gives you a soft kiss on the lips, murmuring 'I love you.' before dozing off. You kiss his forehead and wish you could stay like this forever, your arms around him and your softening cock still inside his cum-filled pussy. With a last thought you imagine your cum exploring his womb for an egg to create life with, then fall asleep yourself.";
	otherwise if hp of Eric is 22 or hp of Eric is 32:   [male with horse-cock/satyr-cock repeats]
		say "ERROR-Eric-[hp of Eric]D: This option shouldn't be available since he has no cunt in the current form. Please report how you got to this message.";
	otherwise if(hp of Eric is 99):   [sex slave cuntboy repeats]
		say "     Deciding it's time to fuck your cuntboy, you pull him along to the bed and fondle his body, playing with his sensitive nipples. Then you push him backwards so he falls down onto the bed on his back and tell him to spread his legs. Between them, his pussy comes into sight, moisture glistening between its swollen lips. Looks like your cuntboy is about ready to be used...";
		say "     Quickly stripping off your own clothing, you climb on the bed with him and kneel between his spread legs. He just looks so delicious, lying before you with his athletic body and that inviting pussy open to you. A thought of going slow quickly evaporates before your boiling lust and you aim your shaft and then plunge into Eric's body in one go, making him groan as your cock suddenly spreads his pussy lips. He whimpers a bit as you slide deeper, but soon starts to moan in lust as you bottom out and start going in and out, rubbing against his inner walls.";
		say "			[WaitLineBreak]";
		say "     You fuck each other like sex-starved bunnies for at least an hour, only stopping for a moment when you cum inside him and fill his womb with your fertile seed, then rest a moment on top of him until you're ready to go on. It's a wild ride, but finally - after him and you coming three times - you come to lie on the bed side by side, your softening erection still inside him. Eric murmurs to himself 'I can't believe how much this gets me off. Three times he's made me cum and filled me. What does he want to do - use me as a breeding bitch?' before dozing off. Not a bad idea, you think for yourself before sleep claims you too.";
	otherwise:
		say "ERROR-Eric-[hp of Eric]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say EricSex6:    [player's pussy fucked by Eric]
	if(hp of Eric is 22):						[male with horse-cock repeats]
		say "     Pulling him into a tight embrace, your then let your hand wander down his body until it reaches his crotch. You stroke his already quite large bulge through the fabric for a moment, then push your hands under his shirt and pull it over his head. Hooking your hands over the bands of his shorts and briefs, you pull them down in one go. Now fully naked, Eric looks delicious to your eyes, with his lithe human body and large equine cock and balls.";
		say "     Taking him by the hand, you lead him to your bed and quickly strip off your own clothing, then lie back on the bed and spread your legs invitingly. Not having to be asked twice, Eric eagerly joins you on the bed, kneeling between your legs. He takes his massive horsecock in one hand, guiding it towards your nether lips and rubs the flared head of his cock against them. Encouraged by your lustful moans, he aims right at your pussy and pushes forward, your folds stretching wide around his thick blunt-tipped maleness.";
		say "			[WaitLineBreak]";
		say "     It's just amazing how good he makes you feel with his long and thick inhumanly shaped cock. He fucks you with regular strokes, plunging deep inside you while his hands stroke your body. Then, after a while he leans down to make out with you, his cock all the way inside as he wrestles your tongue with his. Coming up for air, he moans 'Get on all fours please - I want to fuck you from behind.'";
		say "     Looks like he's inherited some urges from the centaur donor of his 'cure'... but hey, it's been amazing fucking him so far, so you readily roll over and get on all fours when he pulls out of you. With a satisfied grunt, Eric mounts your ass from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he sinks his shaft all the way inside. Then he starts all-out rutting, the thick horsecock sliding in and out of your tight hole in hard and deep moves. You quickly climax from this animalistic fuck, your body shaking from the pleasant sensations. Not too long after, Eric follows suit, filling your hole with a massive load of his fertile seed.[fimpregchance]";
		say "			[WaitLineBreak]";
		say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bed together. In between panting for breath, he gives you another kiss on the neck and says 'Wow. You're the best.' followed by a last little thrust of his manhood into you.";
	otherwise if hp of Eric is 32 and bodyname of player is "Greek Nymph":		[male with satyr-cock repeats]	[***]
		say "     Pulling him into a tight embrace, your then let your hand wander down his body until it reaches his crotch. You stroke his already growing bulge through the fabric for a moment, then push your hands under his shirt and pull it over his head. Hooking your hands over the bands of his shorts and briefs, you pull them down in one go. Now fully naked, Eric looks delicious to your eyes, with his lithe human body and throbbing satyr cock to go with his hefty, red-furred balls.";
		say "     Taking him by the hand, you lead him to your bed and quickly strip off your own clothing, then lie back on the bed and spread your legs invitingly. Not having to be asked twice, Eric eagerly joins you on the bed, kneeling between your legs. He takes his throbbing satyrcock in one hand, guiding it towards your nether lips and rubs the dribbling head of his cock against them. Encouraged by your lustful moans, he aims right at your pussy and pushes forward, your folds stretching wide around his long, capric maleness.";
		say "			[WaitLineBreak]";
		say "     It's just amazing how good he makes you feel with his long, inhumanly-shaped cock. He fucks you with regular strokes, plunging deep inside you while his hands stroke your body. Then, after a while he leans down to make out with you, his cock all the way inside as he wrestles your tongue with his. Coming up for air, he moans 'Get on all fours please - I want to fuck you from behind.'";		  
		say "     Looks like he's inherited some added virility from the satyr wine... but hey, it's been amazing fucking him so far, so you readily roll over and get on all fours when he pulls out of you. With a satisfied grunt, Eric mounts your ass from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he sinks his shaft all the way inside. Then he starts all-out rutting, the pulsing satyrcock sliding in and out of your tight hole in hard and deep moves. You quickly climax from this animalistic fuck, your body shaking from the pleasant sensations. Not too long after, Eric follows suit, filling your hole with a massive load of his fertile seed.[fimpregchance]";
		say "			[WaitLineBreak]";
		say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bed together. In between panting for breath, he gives you another kiss on the neck and says 'Wow. You're the best.' followed by a last little thrust of his manhood into you.";
	otherwise if hp of Eric is 32:				[male with satyr-cock repeats]
		say "     Pulling him into a tight embrace, your then let your hand wander down his body until it reaches his crotch. You stroke his already growing bulge through the fabric for a moment, then push your hands under his shirt and pull it over his head. Hooking your hands over the bands of his shorts and briefs, you pull them down in one go. Now fully naked, Eric looks delicious to your eyes, with his lithe human body and throbbing satyr cock to go with his hefty, red-furred balls.";
		say "     Taking him by the hand, you lead him to your bed and quickly strip off your own clothing, then lie back on the bed and spread your legs invitingly. Not having to be asked twice, Eric eagerly joins you on the bed, kneeling between your legs. He takes his throbbing satyrcock in one hand, guiding it towards your nether lips and rubs the dribbling head of his cock against them. Encouraged by your lustful moans, he aims right at your pussy and pushes forward, your folds stretching wide around his long, capric maleness.";
		say "			[WaitLineBreak]";
		say "     It's just amazing how good he makes you feel with his long, inhumanly-shaped cock. He fucks you with regular strokes, plunging deep inside you while his hands stroke your body. Then, after a while he leans down to make out with you, his cock all the way inside as he wrestles your tongue with his. Coming up for air, he moans 'Get on all fours please - I want to fuck you from behind.'";		  
		say "     Looks like he's inherited some added virility from the satyr wine... but hey, it's been amazing fucking him so far, so you readily roll over and get on all fours when he pulls out of you. With a satisfied grunt, Eric mounts your ass from behind, just as his body is telling him it's supposed to go. He puts his arms around you, feeling up your chest and kissing your neck as he sinks his shaft all the way inside. Then he starts all-out rutting, the pulsing satyrcock sliding in and out of your tight hole in hard and deep moves. You quickly climax from this animalistic fuck, your body shaking from the pleasant sensations. Not too long after, Eric follows suit, filling your hole with a massive load of his fertile seed.[fimpregchance]";
		say "			[WaitLineBreak]";
		say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bed together. In between panting for breath, he gives you another kiss on the neck and says 'Wow. You're the best.' followed by a last little thrust of his manhood into you.";
	otherwise:
		say "ERROR-Eric-[hp of Eric]D: He shouldn't have a cock right now! Please report how you got to this message.";
	
to say EricSex7:    [fucking Eric's ass]
	if(hp of Eric is 11):   					[cuntboy repeat sex]
		say "     Taking Eric by the hand, you lead him over to his bed and push your hands under his shirt. Feeling up his firm chest muscles for a moment, next you take hold of the shirt and pull it off him. Then it's time for his shorts, which you slide down his long runner's legs, stroking over his skin as you go. Now your handsome athlete is almost naked before you, just wearing a skimpy white tanga already showing a little damp spot at the front.";
		say "     Running your hands over his body, you pull Eric in for another quick kiss, then softly push him backwards against the bed and make him lie down on it. You stroke over the thin fabric of his panties with your fingers, making him moan needily. Looks like your cuntboy is about ready... you pull the panties off his body, revealing his swollen pussy with its open, glistening lips - and below that, his tight pucker, winking invitingly from between his butt-cheeks.";
		say "			[WaitLineBreak]";
		say "     Quickly stripping off your own clothing, you climb on the bed with him and kneel between his spread legs. He just looks so delicious, lying before you with his athletic body and that eager expression on his face. You barely manage to control the impulse to just plunge in and take him then and there, instead going slow and rubbing the tip of your cock up and down over his pussy lips and down the crack of his ass, making him pant in need.";
		say "     When you start pushing softly against his rear opening, Eric's eyes looking up at you get very round for a second. You don't think he had any gay encounters with anal sex before all this, but with becoming a woman his readiness to take cocks into his body increased a lot and he's willing to try anything with you. After the moment of hesitation, he smiles up at you, indicating to go on.";
		say "     With your handsome cuntboy now ready for it, you aim your shaft and push forward, giving both your bodies the unity they crave for. As you sink deeper inside him, you lean down and make out with Eric, moaning into each other's mouth when you bottom out inside his tight ass. With the warm hole around your cock, all restraint is soon forgotten and you start fucking him hard and deep. Eric gives lustful grunts to accompany the sound of your hips slapping against his and wraps his arms and legs around you in an intimate embrace.";
		say "			[WaitLineBreak]";
		say "     You fuck each other like sex-starved bunnies for at least an hour, only stopping for a moment when you cum inside him and fill his ass with your fertile seed, then make out a bit until you're ready to go on. It's a wild ride, but finally - after him and you coming three times - you come to lie on the bed together in each other's arms. Eric gives you a soft kiss on the lips, murmuring 'I love you.' before dozing off. You kiss his forehead and wish you could stay like this forever, your arms around him and your softening cock still inside his cum-filled hole. Then you too fall asleep.";
	otherwise if hp of Eric is 22 or hp of Eric is 32:   [male with horse-cock/satyr-cock repeats]
		say "     Taking Eric by the hand, you lead him over to his bed and push your hands under his shirt. Feeling up his firm chest muscles for a moment, next you take hold of the shirt and pull it off him. Then it's time for his shorts, which you slide down his long runner's legs, stroking over his skin as you go. Now your handsome athlete is almost naked before you, just wearing white briefs, bulging at the front with his cock and balls.";
		if hp of Eric is 22:			[horsecock]
			say "     Running your hands over his body, you pull Eric in for another quick kiss, then softly push him backwards against the bed and make him lie down on it. You stroke over the thin fabric of his briefs with your fingers, making him moan needily and the bulge grow a bit. Looks like your horseboy is about ready... you pull the briefs off his body, freeing the long horsecock and his large round balls - and below that, revealing his tight pucker, winking invitingly from between his butt-cheeks.";
		otherwise if hp of Eric is 32:	[satyrcock]
			say "     Running your hands over his body, you pull Eric in for another quick kiss, then softly push him backwards against the bed and make him lie down on it. You stroke over the thin fabric of his briefs with your fingers, making him moan needily and the bulge grow a bit. Looks like your satyrboy is about ready... you pull the briefs off his body, freeing the erect satyrcock and his large, red-furred balls - and below that, revealing his tight pucker, winking invitingly from between his butt-cheeks.";
		say "			[WaitLineBreak]";
		say "     Quickly stripping off your own clothing, you climb on the bed with him and kneel between his spread legs. He just looks so delicious, lying before you with his athletic body and that eager expression on his face. You barely manage to control the impulse to just plunge in and take him then and there, instead going slow and rubbing the tip of your cock up and down the crack of his ass.";
		say "     When you start pushing softly against his rear opening, Eric's eyes looking up at you get very round for a second. You don't think he had any gay encounters with anal sex before all this, but with the temporary gender confusion, his readiness to take cocks into his body increased a lot and he's willing to try anything with you now for saving his bacon. After the moment of hesitation, he smiles up at you, indicating to go on.";
		say "     With your handsome athlete ready for it, you aim your shaft and push forward, giving both your bodies what they crave for. As you sink deeper inside him, you lean down and make out with Eric, moaning into each other's mouth when you bottom out inside his tight ass. With the warm hole around your cock, all restraint is soon forgotten and you start fucking him hard and deep. Eric gives lustful grunts to accompany the sound of your hips slapping against his and wraps his arms and legs around you in an intimate embrace.";
		say "			[WaitLineBreak]";
		say "     You fuck each other like sex-starved bunnies for at least an hour, only stopping for a moment when you cum inside him and fill his ass with your fertile seed, then make out a bit until you're ready to go on. It's a wild ride, but finally - after him and you coming three times - you come to lie on the bed together in each other's arms. Eric gives you a soft kiss on the lips, murmuring 'I love you.' before dozing off. You kiss his forehead and wish you could stay like this forever, your arms around him and your softening cock still inside his cum-filled hole. Then you too fall asleep.";
	otherwise if(hp of Eric is 99):   [sex slave cuntboy repeats]
		say "     Deciding it's time to fuck your cuntboy, you pull him along to the bed and fondle his body, playing with his sensitive nipples. Then you push him backwards so he falls down onto the bed on his back and tell him to spread his legs. Between them, his pussy comes into sight, moisture glistening between its swollen lips - and below, a tight pucker winks invitingly at you. Looks like your cuntboy is about ready to be used...";
		say "     Quickly stripping off your own clothing, you climb on the bed with him and kneel between his spread legs. He just looks so delicious, lying before you with his athletic body and that tight ass ready for you. A thought of going slow quickly evaporates before your boiling lust and you aim your shaft and then plunge into Eric's body in one go, making him groan as your cock suddenly pops through his pucker and invades his asshole. He whimpers a bit as you slide deeper, but soon starts to moan in lust as you bottom out and start going in and out, rubbing against his inner walls.";
		say "			[WaitLineBreak]";
		say "     You fuck each other like sex-starved bunnies for at least an hour, only stopping for a moment when you cum inside him and fill his ass with your seed, then rest a moment on top of him until you're ready to go on. It's a wild ride, but finally - after him and you coming three times - you come to lie on the bed side by side, your softening erection still inside him. Eric murmurs to himself 'I can't believe how much this gets me off. Three times he's made me cum.' before dozing off. You grind your hips against his one last time, then fall asleep yourself soon afterwards.";
	otherwise:
		say "ERROR-Eric-[hp of Eric]C: He isn't in one of the states he should be in! Please report how you got to this message.";
	
to say EricSex8:    [player's ass fucked by Eric]
	if hp of Eric is 22:  						[male with horse-cock repeats]
		say "     Giving him a smile, you move over to his camp bed and do a little strip-show, pulling off your clothes and doing some poses. Then you climb on the bed, resting on all fours and wiggle your ass at Eric invitingly. 'Want a ride, horseboy?'";
		say "			[WaitLineBreak]";
		say "     He looks a bit dumbstruck at you for a second, then has to bend over to take the strain off his rapidly growing erection trapped inside his shorts. You don't think he had any gay encounters before all this, but after the temporary gender confusion and new urges to mount anyone from behind he inherited from the centaur donor of his 'cure', it seems his body is ready for it. And with the fun you're having together and him being incredibly thankful for saving him, you're sure he'll get over his last hangups soon too. After getting over the first moment of restraint, he almost rips his shirt off, then slides down his shorts and undies to free the massive erection dangling between his legs.";
		say "     Turning you over a bit so your butt is right at the edge of the bed, he stands behind you and rubs his horsecock up and down your crack. Taking hold of his shaft, he then aims the flared tip at your opening and pushes against it slow and steady until it opens up and he pops inside. You gasp as he enters your body, then quickly start moaning as the pain of the initial penetration fades against the feelings of his thick cock rubbing against your inner walls as he slides deeper. Holding on to your hips with both hands, Eric sinks himself into you, holding still a moment as he bottoms out. Then he starts fucking in and out of you - first slowly, then faster and faster as his arousal rises.";
		say "     Grunting in satisfaction of mounting someone from behind, he puts his arms around you, feeling up your chest and kissing your neck as he sinks his shaft all the way inside. Then he starts all-out rutting, the thick horsecock sliding in and out of your tight hole in hard and deep moves. You quickly climax from this animalistic fuck, your body shaking as you [if cocks of player > 0]shoot spurt after spurt of cum onto the sheets[otherwise if cunts of player > 0]drip a copious amount of femcum onto the sheets[otherwise]have an orgasm.[end if]. Not too long after, Eric follows suit, filling your hole with a massive load of his fertile seed from his large horse balls.[mimpregchance]";
		say "			[WaitLineBreak]";
		say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bed together. In between panting for breath, he gives you another kiss on the neck and says 'Wow. You're the best.' followed by a last little thrust of his manhood into you.";
	otherwise if hp of Eric is 32:			[satyr Eric repeats]
		say "     Giving him a smile, you move over to his camp bed and do a little strip-show, pulling off your clothes and doing some poses. Then you climb on the bed, resting on all fours and wiggle your ass at Eric invitingly. 'Climb on, satyrboy?'";
		say "			[WaitLineBreak]";
		say "     He looks a bit dumbstruck at you for a second, then has to bend over to take the strain off his rapidly growing erection trapped inside his shorts. You don't think he had any gay encounters before all this, but after the temporary gender confusion and new urges to mount anyone from behind he inherited from his satyr cock, it seems his body is ready for it. And with the fun you're having together and him being incredibly thankful for saving him, you're sure he'll get over his last hangups soon too. After getting over the first moment of restraint, he almost rips his shirt off, then slides down his shorts and undies to free the massive erection dangling between his legs.";
		say "     Turning you over a bit so your butt is right at the edge of the bed, he stands behind you and rubs his satyrcock up and down your crack. Taking hold of his shaft, he then aims the dribbling tip at your opening and pushes against it slow and steady until it opens up and he pops inside. You gasp as he enters your body, then quickly start moaning as the pain of the initial penetration fades against the feelings of his thick cock rubbing against your inner walls as he slides deeper. Holding on to your hips with both hands, Eric sinks himself into you, holding still a moment as he bottoms out. Then he starts fucking in and out of you - first slowly, then faster and faster as his arousal rises.";
		say "     Grunting in satisfaction of mounting someone from behind, he puts his arms around you, feeling up your chest and kissing your neck as he sinks his shaft all the way inside. Then he starts all-out rutting, the throbbing satyrcock sliding in and out of your tight hole in hard and deep moves. You quickly climax from this animalistic fuck, your body shaking as you [if cocks of player > 0]shoot spurt after spurt of cum onto the sheets[otherwise if cunts of player > 0]drip a copious amount of femcum onto the sheets[otherwise]have an orgasm of full-bodied pleasure[end if]. Not too long after, Eric follows suit, filling your hole with a massive load of his fertile seed from his large goat balls.[mimpregchance]";
		say "			[WaitLineBreak]";
		say "     With the thick shaft of his cock still pulsing softly inside you as it spurts more cum, Eric pulls you down to lie on your sides on the bed together. In between panting for breath, he gives you another kiss on the neck and says 'Wow. You're the best.' followed by a last little thrust of his manhood into you.";
	otherwise:
		say "ERROR-Eric-[hp of Eric]D: He shouldn't have a cock right now! Please report how you got to this message.";

to say EricSex9:	    [trick David into fucking submissive Eric]
	if(hp of Eric is 99):   					[sex-slave cuntboy]
		say "     Deciding it's the right time for your little switch & fuck plan, you meet Eric's eyes with a meaningful glance and nod over to David. The submissive cuntboy gives a sigh, then lowers a hand to his crotch to play with himself and get ready for a fuck. Good - you make a last stop to pick up the ribbons of soft fabric you cut a shawl from library lost and found into, then walk over to David.";
		say "			[WaitLineBreak]";
		say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss, then let your hands wander down to his crotch. Through the fabric you feel his manhood already filling out, as his body reacts to you kiss and touch. As you make out with him some more, you slide your hands under his shirt and feel your way up his hard-muscled chest, then pull the fabric up and over his head. Leaning down a bit you run your tongue over his nipples, playfully sucking on first one, then the other. From David's lustful moans, he's ready and itching to get going.";
		say "     Opening up the zipper of his pants and letting them drop down, you free his raging hard-on, standing proudly erect in your direction. Guiding the naked man to a nearby cot, you push him to sit down on it, then take in hand your ribbons. With a grin, you tell him 'Let's play a bit this time.' and stroke the ribbon softly over his skin before you put it around his eyes as a blindfold. Then you push the smiling man back to lie on the cot and bind first his legs, then his arms raised over his head to its frame. Stroking his body, slowly and sensually, you keep him aroused - without ever touching his cock.";
		say "			[WaitLineBreak]";
		say "     Going on like that, you keep him all hot and bothered for five, six, seven minutes until he starts pleading, then begging for a jerk-off, blowjob, or someone riding his dick. Grinning, you lean over him and give him a kiss, then reach out and grab his hard shaft. 'As you wish, let's put this thing to good use.' As you start turning around to look over to Eric's camp bed, you notice he's already standing just two steps behind you, naked. Letting your eyes wander over him, you check out his slender frame, nicely defined chest, long legs, and of course he slightly swollen and pretty moist pussy. Perfect.";
		say "     As you guide Eric onto the bed and he moves to kneel over the soldier, you tell David 'Get ready for an amazing fuck.' Then Eric is in position, ready pussy poised directly over Eric's hard shaft, biting his lip and looking at you. As you nod to him and motion him downwards, he takes a deep breath, then sinks himself onto David's manhood. The soldier gives a satisfied gasp, then moans as Eric sinks deeper and deeper until finally all of David's length is inside him. Then he pulls up a bit again before thrusting down, fucking himself on the hard cock.";
		say "			[WaitLineBreak]";
		say "     You let them continue for a bit, watching their coupling and stroking yourself. When it looks like David's getting close, you kneel besides the cot and ask him 'Doesn't fucking that hole feel good?' 'Amazing - you're so ho... wait a minute! What's... who is... what is going on here?' David sputters, as he realizes you can't talk to him from the side while you're on top of him. As he starts pulling on his bindings, you tell him 'Let me show you whom you've been fucking for twenty minutes now.' and loosen his blindfold. David's eyes widen as he sees Eric on top of him, still grinding their hips together and moaning in lust.";
		say "     Getting on the bed, you pull Eric's head to yours and kiss him deeply. Demonstratively stroking the cuntboy's chest and playing with his nipples, you say to David 'He needs good fuckings regularly and loves you inside him. Don't you, Eric?' The cuntboy just moans, lost in a sexual buzz. Looking down, you see David thrust up against Eric, trying to get his cock deeper in his pussy. Seems like you've successfully made him forget those silly notions about not taking advantage of your submissive cuntboy...";
		say "			[WaitLineBreak]";
		say "     With David now eagerly thrusting into Eric, it doesn't take much longer until the additional stimulation drives the young athlete over the edge. Gasping and moaning, he holds onto you as his whole body shudders in lust, and you see quite a bit of femcum run down over David's thrusting cock. Bending down a bit, you grab David's balls and start fondling them, meanwhile 'Come in his pussy, David. That's what it's made for.'";
		say "     Whether it was your command or maybe the stroking of his balls, something gave the young soldier the final push. With a lust-filled shout, he starts shooting his cum into Eric's vagina, his balls pulsing under your finger with each squirt. When Eric pulls off and flops down on the cot to cuddle up against David, you loosening the bindings, freeing the soldier. Looks like your plan worked perfectly - having fucked him once, David should be ready for more fun with Eric. But for now, you leave them lying together on the cot to rest.";
		now lust of Eric is 4;
	otherwise:
		say "ERROR-Eric-[hp of Eric]D: He shouldn't have a cock right now! Please report how you got to this message.";
	
to say EricSex10:  	  [have Eric fuck David's ass  - first time]
	if(hp of Eric is 21 or hp of Eric is 22):  [horse-hung Eric]
		say "     'Ready for some fun with David? You'll love it, I'm sure.' He smiles, nodding before giving you a quick kiss on the lips. While groping his crotch through the fabric of his trousers, you say 'Just come over and join us when I got him ready.' Then you saunter over to David's camp bed, where the soldier boy is just taking a nap.";
		say "     Carefully pulling the blanket from the bed, you reveal David's sleeping body, clad in just a t-shirt and some boxer briefs. He looks pretty hot, lying there peacefully. Sitting next to him on the bed, you softly stroke his arm, then tuck up the shirt a bit and reveal his well-defined abs. David stirs a bit, maybe from the colder air touching him, then calms down again, still asleep. Moving your hand down, you stroke the inside of his legs, then softly fondle his cock and balls through his undies. A small moan escapes from the sleeping man and you feel his cock getting noticeably harder under your fingers. You'd bet that you just put an interesting turn in whatever he is dreaming about...";
		say "			[WaitLineBreak]";
		say "     As nice as playing with David's body and giving him sexy dreams is, you got bigger plans, so you lean down over your sleeping beauty and give him a deep kiss. Just like in a fairytale, his eyes open almost immediately and after David sees it's you, he returns your kiss with one of his own. 'Rise and shine, sleepyhead. Oh wait, one part of you already has.' you say as you reach down and push your hand under the band of his undies, cupping his cock and balls. 'Oh - that must be because of my dream. The last thing I remember is being out in a snowy forest, with a person made of ice suddenly appearing and...' *he blushes a bit* '...having his way with me.'";
		say "     Smiling at David, you say 'Then let's make your dreams come true.' and pull the t-shirt up and over his head. Running your hands down over his chest, you then move on to his underwear, sliding it down his legs to leave the soldier naked on the bed. You grab his erect cock and jerk it slowly, with your other hand playing with his hole, teasing it and pushing a finger inside. In no time at all, you have David panting and moaning at your ministrations, his anal muscles almost hungrily gripping your finger. 'Have you ever thought about... getting fucked by someone else? Eric, for example...' you ask, to which David replies 'I wouldn't cheat on you, but - yes. He is pretty cute, and that dick of his...' *you unobtrusively wave Eric over* '...is quite something. Why do you - oh!' David says as the college athlete steps into his sight, naked and with his horsecock dangling fully erect between his legs.";
		say "			[WaitLineBreak]";
		say "     'I'd love to see you two have some fun. And maybe later we can take a go at it together, all three of us.' you tell them, then take Eric by the hand and guide him to the bottom of the bunk. His looks wander up along David's legs, puckering hole and erect manhood, his defined chest and handsome face. Then their eyes meet, and you can almost feel a spark of sexual tension jumping over. With no further words necessary, you watch Eric climb onto the bed and start kissing David's lips, his body on top of the soldier's larger one. Quite a nice show, with them hungrily making out as their cocks rub against each other.";
		say "     Soon, Eric slides back a bit and pulls David's legs up, then guides his thick horsecock to the young man's waiting hole. Slowly pressing forward, his cock's flared head pops inside David. Waiting for a moment so the soldier can get used to it, Eric leans back forward to give him another kiss, then continues sinking his shaft deeper and deeper into the tight hole it's in. A few minutes of slow penetration finally results in their hips meeting, with both of the men gasping from the feelings they give each other. Then they start to fuck, with Eric's long cock thrusting deep into David and the slapping noises of his large horse's balls hitting the soldier's cheeks.";
		say "			[WaitLineBreak]";
		say "     Not wanting to get between those two in their first time together, you decide to just watch the soldier and college kid for now. Stroking your own [if cocks of player > 0]cock[otherwise if cunts of player > 0]cunt[otherwise]body[end if] excitedly as you watch their hot coupling, your thoughts already fly to being on the bed with them the next time.";
		say "     With the... enthusiasm those two show for fucking each other, it doesn't surprise you that not much later, Eric's gasps rise to lust-filled screams as he announces 'I'm... *gasp* ...coming!' With that, he throws his head back, hands gripping David's legs as his balls unload one of his typical huge loads into the soldier's ass. The thick shaft inside him pulsing with bursts of cum drives the young soldier over the edge too just moments later, cum shooting from his human cock to splat down on his muscled chest. After a moment where they catch their breath, your two friends resume hugging and kissing each other.";
		say "			[WaitLineBreak]";
		say "     What a hot show. You leave the two of them alone to lie together on the bed, kissing and still connected by Eric's slowly softening cock...";
		now lust of Eric is 4;
	otherwise if hp of Eric is 31 or hp of Eric is 32:	[satyr-hung Eric]
		say "     'Ready for some fun with David? You'll love it, I'm sure.' He smiles, nodding before giving you a quick kiss on the lips. While groping his crotch through the fabric of his trousers, you say 'Just come over and join us when I've got him ready.' You then saunter over to David's camp bed, where the soldier boy is just taking a nap.";
		say "     Carefully pulling the blanket from the bed, you reveal David's sleeping body, clad in just a t-shirt and some boxer briefs. He looks pretty hot, lying there peacefully. Sitting next to him on the bed, you softly stroke his arm, then tuck up the shirt a bit and reveal his well-defined abs. David stirs a bit, maybe from the colder air touching him, then calms down again, still asleep. Moving your hand down, you stroke the inside of his legs, then softly fondle his cock and balls through his undies. A small moan escapes from the sleeping man and you feel his cock getting noticeably harder under your fingers. You'd bet that you just put an interesting turn in whatever he is dreaming about...";
		say "			[WaitLineBreak]";
		say "     As nice as playing with David's body and giving him sexy dreams is, you got bigger plans, so you lean down over your sleeping beauty and give him a deep kiss. Just like in a fairytale, his eyes open almost immediately and after David sees it's you, he returns your kiss with one of his own. 'Rise and shine, sleepyhead. Oh wait, one part of you already has.' you say as you reach down and push your hand under the band of his undies, cupping his cock and balls. 'Oh - that must be because of my dream. The last thing I remember is being out in a snowy forest, with a person made of ice suddenly appearing and...' *he blushes a bit* '...having his way with me.'";
		say "     Smiling at David, you say 'Then let's make your dreams come true.' and pull the t-shirt up and over his head. Running your hands down over his chest, you then move on to his underwear, sliding it down his legs to leave the soldier naked on the bed. You grab his erect cock and jerk it slowly, with your other hand playing with his hole, teasing it and pushing a finger inside. In no time at all, you have David panting and moaning at your ministrations, his anal muscles almost hungrily gripping your finger. 'Have you ever thought about... getting fucked by someone else? Eric, for example...' you ask, to which David replies 'I wouldn't cheat on you, but - yes. He is pretty cute, and that dick of his...' *you unobtrusively wave Eric over* '...is quite something. Why do you - oh!' David says as the college athlete steps into his sight, naked and with his satyrcock jutting fully erect in front of him.";
		say "			[WaitLineBreak]";
		say "     'I'd love to see you two have some fun. And maybe later we can take a go at it together, all three of us.' you tell them, then take Eric by the hand and guide him to the bottom of the bunk. His looks wander up along David's legs, puckering hole and erect manhood, his defined chest and handsome face. Then their eyes meet, and you can almost feel a spark of sexual tension jumping over. With no further words necessary, you watch Eric climb onto the bed and start kissing David's lips, his body on top of the soldier's larger one. Quite a nice show, with them hungrily making out as their cocks rub against each other.";
		say "     Soon, Eric slides back a bit and pulls David's legs up, then guides his throbbing satyrcock to the young man's waiting hole. Slowly pressing forward, his tapered head pops inside David. Waiting for a moment so the soldier can get used to it, Eric leans back forward to give him another kiss, then continues sinking his shaft deeper and deeper into the tight hole it's in. When the slow penetration finally results in their hips meeting, both of the men gasp from the feelings they give each other. Then they start to fuck, with Eric's long cock thrusting deep into David and the slapping noises of his heavy goat balls hitting the soldier's cheeks.";
		say "			[WaitLineBreak]";
		say "     Not wanting to get between those two in their first time together, you decide to just watch the soldier and college kid for now. Stroking your own [if cocks of player > 0]cock[otherwise if cunts of player > 0]cunt[otherwise]body[end if] excitedly as you watch their hot coupling, your thoughts already fly to being on the bed with them the next time.";
		say "     With the... enthusiasm those two show for fucking each other, it doesn't surprise you that not much later, Eric's gasps rise to lust-filled screams as he announces 'I'm... *gasp* ...coming!' With that, he throws his head back, hands gripping David's legs as his balls unload one of his typical huge loads into the soldier's ass. The capric shaft inside him pulsing with bursts of cum drives the young soldier over the edge too just moments later, cum shooting from his human cock to splat down on his muscled chest. After a moment where they catch their breath, your two friends resume hugging and kissing each other.";
		say "			[WaitLineBreak]";
		say "     What a hot show. You leave the two of them alone to lie together on the bed, kissing and still connected by Eric's slowly softening cock...";
		now lust of Eric is 4;
	otherwise:
		say "ERROR-Eric-[hp of Eric]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say EricSex11:   	[have David fuck Eric's pussy - first time]
	if(hp of Eric is 11):  [cuntboy Eric]
		say "     'Ready for some fun with David? You'll love it, I'm sure.' He smiles, nodding before giving you another quick kiss on the lips. Taking Eric by the hand, you lead him over to David's camp bed and push your hands under his shirt. After feeling up his firm chest muscles for a moment, next you take hold of the shirt and pull it off him. Then it's time for the shorts, which you slide down his long runner's legs, stroking over his soft skin as you go. Now your handsome athlete is almost naked before you and an interestedly watching David, just wearing a skimpy white tanga already showing a little damp spot at the front.";
		say "     Running your hands over his body, you pull Eric in for another quick kiss, then softly push him backwards against the bed and make him lie down on it. You stroke over the thin fabric of his panties with your fingers, making him moan needily. Looks like your cuntboy is about ready... you pull the wisp of fabric off his body, revealing a ready pussy with open, glistening lips. Turning to David, whose looks are just roaming over Eric's naked body and his moist opening, you say 'How about you show my friend here a bit of a good time? Come on, he's just waiting for you.' and emphasize it by stroking Eric's sensitive pussy lips, making him moan loudly.";
		say "			[WaitLineBreak]";
		say "     You can see a wide-eyed David moisten his lips and swallow, then he breaks through the hesitation and steps up, taking your place between Eric's legs. He brings his hands forward, stroking Eric's lips, and is rewarded by a pleased moan by the young athlete. Emboldened by that, the soldier lowers his head and starts licking Eric's pussy. Standing besides the bed, you watch your two friends have oral sex, with David doing an admirable job of licking and fondling Eric, bringing him to a higher and higher state of arousal. Soon the handsome cuntboy's moans and gasps reach a new level of urgency, one you recognize as the need to get fucked.";
		say "     Stepping up behind David, you whisper to him 'He's ready. Time to get in there, soldier-boy.' and pull his shirt up and over his head. Then you reach around him to undo his pants, freeing his raging boner as you pull them down to his knees. Giving the young man a soft push and a playful slap on the bare ass, you start him moving forwards, climbing up on the bed between Eric's spread legs. With a sift and sure move, he does what comes natural next, sinking his manhood deep into Eric's warm folds and covering the slender athlete's body with his. Their moans get a bit muffled after that as they make out with each other hungrily.";
		say "			[WaitLineBreak]";
		say "     Not wanting to get between those two in their first time together, you just watch the soldier and college athlete wrestle with each other's tongues, then start fucking in earnest. David proves to be well versed in pleasing women ...or cuntboys - thrusting deep into Eric, adjusting his angle to hit just the right spots and knowing when it's best just to rest his shaft inside his pussy and lean in for a kiss. You stroke your own [if cocks of player > 0]cock[otherwise if cunts of player > 0]cunt[otherwise]body[end if] excitedly as you watch their hot coupling, thoughts already wandering to possible future threesomes.";
		say "     With the... enthusiasm those two show for fucking each other, it doesn't surprise you that not much later, Eric's gasps rise to lust-filled screams as he announces 'Ah. Ah! I'm... *gasp* ...coming!' With that, he throws his head back, eyes closed and tightly clutches on to David to ride out his orgasm. The young soldier stops for a while to give Eric a moment to catch his breath, then kisses him deeply while his hips grind against the cuntboy's crotch in a need-filled burst for the finish line. With a grunt, he suddenly stops with his shaft buried deep inside Eric's pussy, and bending down to look, you can see his balls twitch as they deliver burst after burst of his cum deep into Eric's womb.";
		say "			[WaitLineBreak]";
		say "     What a hot show. You leave the two of them alone to lie together on the bed, kissing and still connected by David's slowly softening cock...";
		now lust of Eric is 4;
	otherwise:
		say "ERROR-Eric-[hp of Eric]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say EricSex12:   	[threesome with David+Eric]		
	if hp of Eric is 12:							[cuntboy Eric]
		say "     >.< This is where a hot threesome scene with both your cuntboy friend Eric and the soldier boy David will at some point be. When it's written... for now - would you like to enjoy a repeat of the inital scene with both of them?";
		if player consents:
			say "[EricSex11]";
	otherwise if hp of Eric is 22:		[horse hung Eric]
		say "     >.< This is where a hot threesome scene with both your well-hung friend Eric and the soldier boy David will at some point be. When it's written... for now - would you like to enjoy a repeat of the inital scene with both of them?";
		if player consents:
			say "[EricSex10]";
	otherwise if hp of Eric is 32:		[satyr-cocked Eric]
		say "     >.< This is where a hot threesome scene with both your satyr-cocked friend Eric and the soldier boy David will at some point be. When it's written... for now - would you like to enjoy a repeat of the inital scene with both of them?";
		if player consents:
			say "[EricSex10]";
	otherwise if hp of Eric is 99:		[sex slave cuntboy Eric]
		say "     >.< This is where a hot threesome scene with both your sex-slave cuntboy Eric and the soldier boy David will at some point be. When it's written... for now - would you like to enjoy a repeat of the inital scene with both of them?";
		if player consents:
			say "[EricSex9]";
	otherwise:
		say "ERROR-Eric-[hp of Eric]C: He isn't in one of the states he should be in! Please report how you got to this message.";

Section 4 - Endings

when play ends:
	if (hp of Eric is 0) and Sports Arena Lockerroom is known and humanity of player > 9:
		say "     When the soldiers come through the city to rescue survivors, you're all taken to a containment facility for medical evaluation and quarantine. There you meet Eric again, still rather distraught that he couldn't save or even find his girlfriend. Later, when it's time for prodding and probing you survivors, there's a bit of a commotion after Eric gets called into the examination room. Several doctors and scientists are called in and Eric gets moved to another wing of the facility and you don't see him again after that. You wonder what's so special about him.";	
	otherwise if ((Eric is in the bunker) and (hp of Eric is 1 or hp of Eric is 10 or hp of Eric is 20)): [cuntboy virgin Eric]
		if (humanity of player < 10):
			if (cocks of player > 0): 
				say "     When you succumb to your infection, you make your way back to the bunker, and jump the virgin Eric you know is waiting there for you. Coming in at night, you're on his bed and plunge your shaft inside him before he even knows you're there. You keep fucking him for hours, filling his pussy with load after load of your potent cum until you finally have to rest and fall into an exhausted sleep. Slowly inching out from under you so you don't wake up, Eric flees out into the city, carrying with him your offspring already developing in his womb.";
			otherwise:
				say "     When you succumb to your infection, you forget about Eric, turning to other things instead. Abandoned in the bunker, he stays there as long as he can, scavenging the area around it for food. On one of the trips, a pack of huskies sniff him out and he's wrestled down by several females and brought before their alpha male. The horny dog-morph forcefully takes his virginity, then breeds him at least three times a day for weeks. When some soldiers finally come by and save Eric from captivity, he's already showing a quite visible baby bump from the litter of four half-human puppies growing inside him.";
		otherwise:
			say "     When the soldiers come through the city to rescue survivors, you're all taken to a containment facility for medical evaluation and quarantine. Eric receives special notice as he's proven immune to shifts in species, but susceptible to gender transformation. They keep him locked up for testing and prodding, and it's several weeks after you're released until you hear from him again. He meets you at a bar for a drink, thanking you again for saving him and taking him in during the time in the city. Then he moves back to his family's farm in the hinterland to take some quiet time to come to terms with being a woman now.";
	otherwise if ((Eric is in the bunker) and (hp of Eric is 11)): [cuntboy Eric]
		if (humanity of player < 10):
			if (cocks of player > 0): 
				say "     When you succumb to your infection, you make your way back to the bunker, and jump Eric before he realizes anything is amiss. You keep fucking him for hours, filling his pussy with load after load of your potent cum until you finally have to rest and fall into an exhausted sleep. Having fallen in love with you before the infection wiped away your sanity, he hesitates a long time but finally decides he can't stay with you. Slowly inching out from under you so you don't wake up, Eric flees out into the city, carrying with him your offspring already developing in his womb.";
			otherwise:
				say "     When you succumb to your infection, you forget about Eric, turning to other things instead. Abandoned in the bunker, he stays there as long as he can, searching for you and scavenging the area around it for food. On one of the trips, a pack of huskies sniff him out and he's wrestled down by several females and brought before their alpha male. The horny dog-morph forcefully takes his pussy, then breeds him at least three times a day for weeks. When some soldiers finally come by and save Eric from captivity, he's already showing a quite visible baby bump from the litter of four half-human puppies growing inside him.";
		otherwise:
			say "     When the soldiers come through the city to rescue survivors, you're all taken to a containment facility for medical evaluation and quarantine. Eric receives special notice as he's proven immune to shifts in species, but susceptible to gender transformation. They keep him locked up for testing and prodding for several weeks in an isolated environment, only allowing you to speak over the phone.";
			say "     When he's finally released, he throws his arms around you and kisses you deeply as he comes out of the exit where you're waiting for him. Taking your hand and guiding it to his belly, he says 'I didn't want to say it on the phone, so... you're going to be a father. I'm pregnant.' He look of apprehension at your reaction quickly vanishes as you smile happily and give him another kiss. You walk away from the holding facility hand in hand, thoughts wandering to where to put a nursery in a shared home.";
	otherwise if ((Eric is in the bunker) and (hp of Eric is 21)): [horsecocked virgin Eric]
		if (humanity of player < 10):
			if (cocks of player > 0): 
				say "     When you succumb to your infection, you forget about Eric, turning to other things instead. Abandoned in the bunker, he stays there as long as he can, scavenging the area around it for food. On one of the trips, he runs into a succubus who uses her alluring shape to draw Eric in and bind him to her will. Riding his cock till he fills her with his seed, she then calls in some friends and soon a whole pack of demons takes the thick horsecock into their pussies and asses. Not satisfied to wait for a ride on his manhood, several Incubi take Eric's ass and mouth instead. When the whole gang-bang ebbs out and everyone is in a sweaty pile on the floor, the demons decide they want to keep Eric - permanently - and carry him off to their infernal realm.";
			otherwise:
				say "     When you succumb to your infection, you make your way back to the bunker, and jump the Eric before he realizes anything is amiss. Rubbing up against his quickly hardening horsecock, you take away his ability to resist and fuck him for hours, filling your pussy with load after load of his potent cum. You're relentless in riding him, stroking him to hardness even as he begs for a break. He might have loved it at first, but when you fall asleep in exhaustion later, he slowly inches away from you so you don't wake up, then flees out into the city.";
		otherwise:
			say "     When the soldiers come through the city to rescue survivors, you're all taken to a containment facility for medical evaluation and quarantine. Eric receives special notice as he's proven immune to shifts in species, but susceptible to gender transformation. They keep him locked up for testing and prodding, and it's several weeks after you're released until you hear from him again. He meets you at a bar for a drink, thanking you again for saving him and taking him in during the time in the city. Then he moves back to his family's farm in the hinterland to take some quiet time to come to terms with what happened in the city.";
			say "     He invites you to visit a while later and spend some peaceful time out in the countryside. It's quite nice out there and Eric even shows you how to ride. When you two later go for a riding and camping trip in a nearby forest, you awake in the middle of the night when you hear one of the horses whinny. Curious, you step out of the tent and look around in the moonlight, finding Eric behind some nearby trees, fucking one of the two mares you rode out here with his long horsecock. Looks like he inherited a few urges from the centaur donor of his 'cure'. You step out behind the trees, tilling him you understand and continue to watch them until he breeds the mare with a huge load of his cum.";
			say "     You visit Eric and the farm from time to time after that and see several horses bellies bulge with pregnancies over the coming months. Most are the results of normal equine couplings, but the two mares you had with you on that camping trip later give birth to two beautiful centaur foals, a boy and a girl, making Eric a very proud father.";
	otherwise if ((Eric is in the bunker) and (hp of Eric is 22)): [horsecocked Eric]
		if (humanity of player < 10):
			if (cunts of player > 0): 
				say "     When you succumb to your infection, you make your way back to the bunker, and jump the Eric before he realizes anything is amiss. Rubbing up against his quickly hardening horsecock, you take away his ability to resist and fuck him for hours, filling your pussy with load after load of his potent cum. You're relentless in riding him, stroking him to hardness even as he begs for a break. He might have loved it at first, but when you fall asleep in exhaustion later, he slowly inches away from you so you don't wake up, then flees out into the city.";
			otherwise:
				say "     When you succumb to your infection, you forget about Eric, turning to other things instead. Abandoned in the bunker, he stays there as long as he can, searching for you and scavenging the area around it for food. On one of the trips, he runs into a succubus who uses her alluring shape to draw Eric in and bind him to her will. Riding his cock till he fills her with his seed, she then calls in some friends and soon a whole pack of demons takes the thick horsecock into their pussies and asses. Not satisfied to wait for a ride on his manhood, several Incubi take Eric's ass and mouth instead. When the whole gang-bang ebbs out and everyone is in a sweaty pile on the floor, the demons decide they want to keep Eric - permanently - and carry him off to their infernal realm.";
		otherwise:
			say "     When the soldiers come through the city to rescue survivors, you're all taken to a containment facility for medical evaluation and quarantine. Eric receives special notice as he's proven immune to shifts in species, but susceptible to gender transformation. They keep him locked up for testing and prodding for several weeks in an isolated environment, only allowing you to speak over the phone.";
			say "     When he's finally released, he throws his arms around you and kisses you deeply as he comes out of the exit where you're waiting for him. After some hot and heavy sex in celebration of your reunion, you drive out to his family's farm out in the countryside to get some peace and quiet for a while. It's quite nice out there and Eric even shows you how to ride.";
			say "     A while later, you two go for a riding and camping trip in a nearby forest, during which you're awoken in the middle of the night by Eric. Sporting an almost painfully hard cock, he confesses that he just can't stop thinking about fucking the mares you two rode out there. Looks like he inherited a few urges from the centaur donor of his 'cure'. You tell him you understand and accompany him outside, where he fucks both horses and fills them with his seed.";
			say "     From then on, you return to the farm from time to time, having amazing sex as the mare's pheromones put Eric's libido into overdrive. He also keeps on fucking both Claire and Brenda, your 'special' mares from that first night. After a while, their bellies start swelling in obvious pregnancies, and about ten months later, two beautiful little centaur foals are born. With Eric's son and daughter joining the family, you think it's about time to add a stable to your own house back home and move them and their mothers there...";
	otherwise if Eric is in the bunker and hp of Eric is 31: [satyr virgin Eric]
		if humanity of player < 10:
			if cocks of player > 0: 
				say "     When you succumb to your infection, you forget about Eric, turning to other things instead. Abandoned in the bunker, he stays there as long as he can, scavenging the area around it for food. On one of the trips, he runs into a succubus who uses her alluring shape to draw Eric in and bind him to her will. Riding his cock till he fills her with his seed, she then calls in some friends and soon a whole pack of demons takes the virile satyrcock into their pussies and asses. Not satisfied to wait for a ride on his manhood, several Incubi take Eric's ass and mouth instead. When the whole gang-bang ebbs out and everyone is in a sweaty pile on the floor, the demons decide they want to keep Eric - permanently - and carry him off to their infernal realm.";
			otherwise:
				say "     When you succumb to your infection, you make your way back to the bunker, and jump the Eric before he realizes anything is amiss. Rubbing up against his quickly hardening satyrcock, you take away his ability to resist and fuck him for hours, filling your pussy with load after load of his potent cum. You're relentless in riding him, stroking him to hardness even as he begs for a break. He might have loved it at first, but when you fall asleep in exhaustion later, he slowly inches away from you so you don't wake up, then flees out into the city.";
		otherwise:
			say "     When the soldiers come through the city to rescue survivors, you're all taken to a containment facility for medical evaluation and quarantine. Eric receives special notice as he's proven immune to shifts in species, but susceptible to gender transformation. They keep him locked up for testing and prodding, and it's several weeks after you're released until you hear from him again. He meets you at a bar for a drink, thanking you again for saving him and taking him in during the time in the city. After having been stuck in the camp for so long, he's eager to get a drink and soon he's partying it up.  What was going to be a quick drink turns into one after another as you start going from bar to bar.";
			say "     At one particularly lively club, you lose track of your friend for a while, but are too drunk yourself to really worry about it.  It's not until some time later that you spot him in a secluded, shadowy corner with a very hot chick, banging away at her quite vigorously.  Catching sight of you, he grins and winks, flashing for you to give him another five.  About twenty minutes later, he and his new girlfriend join you in a booth, snuggling and kissing as they fill you in.  It seems she was in the city as well during the outbreak.  Once a guy, she ran afoul of some voluptuous women at the museum and transformed into a sexy nymph like them.  Had it not been for a timely interruption by a sudden and heated battle between some amazons and ninjas, she'd not have made her escape at all.  Feeling a strong connection to one another and able to symphathize with the plights each other has been through, they make for a very happy couple.";
	otherwise if Eric is in the bunker and hp of Eric is 32: [satyr Eric]
		if humanity of player < 10:
			if cunts of player > 0: 
				say "     When you succumb to your infection, you make your way back to the bunker, and jump the Eric before he realizes anything is amiss. Rubbing up against his quickly hardening horsecock, you take away his ability to resist and fuck him for hours, filling your pussy with load after load of his potent cum. You're relentless in riding him, stroking him to hardness even as he begs for a break. He might have loved it at first, but when you fall asleep in exhaustion later, he slowly inches away from you so you don't wake up, then flees out into the city.";
			otherwise:
				say "     When you succumb to your infection, you forget about Eric, turning to other things instead. Abandoned in the bunker, he stays there as long as he can, searching for you and scavenging the area around it for food. On one of the trips, he runs into a succubus who uses her alluring shape to draw Eric in and bind him to her will. Riding his cock till he fills her with his seed, she then calls in some friends and soon a whole pack of demons takes the virile satyrcock into their pussies and asses. Not satisfied to wait for a ride on his manhood, several Incubi take Eric's ass and mouth instead. When the whole gang-bang ebbs out and everyone is in a sweaty pile on the floor, the demons decide they want to keep Eric - permanently - and carry him off to their infernal realm.";
		otherwise:
			say "     When the soldiers come through the city to rescue survivors, you're all taken to a containment facility for medical evaluation and quarantine. Eric receives special notice as he's proven immune to shifts in species, but susceptible to gender transformation. They keep him locked up for testing and prodding for several weeks in an isolated environment, only allowing you to speak over the phone.";
			say "     When he's finally released, he throws his arms around you and kisses you deeply as he comes out of the exit where you're waiting for him. After some hot and heavy sex in celebration of your reunion, he suggests you go out for a few drinks to unwind after everything you've been through.  What you thought might be a quick drink turns into one after another as you start going from bar to bar.";
			say "     Going from club to club, Eric drinks and parties very heartily.  He sneaks off with you for sex at least once at every stop and usually manages to snag a quick fuck from some other lover while he's there as well.  Enjoying yourself as well, you're often there beside him with some lover of the moment.  Eric's good looks and growing confidence make him very popular, and your sure his strong, virile musk doesn't hurt his chances either.  Eric becomes quite the party animal, very popular and always fun to go hang out with, though he's often a little sauced as well.  But even then, he's still always able to attract a few lovers for you both the share in some secluded spot whenever you go out on the town together.";
	otherwise if ((Eric is in the bunker) and (hp of Eric is 99)): [sex slave cuntboy]
		if (humanity of player < 10):
			if (cocks of player > 0): 
				say "     When you succumb to your infection, you make your way back to the bunker, and jump Eric. Coming in at night, you're on his bed and plunge your shaft inside him before he even knows you're there. You keep fucking him for hours, filling his pussy with load after load of your potent cum until you finally have to rest and fall into an exhausted sleep. Slowly inching out from under you so you don't wake up, Eric flees out into the city, carrying with him your offspring already developing in his womb.";
			otherwise:
				say "     When you succumb to your infection, you forget about Eric, turning to other things instead. Abandoned in the bunker, he stays there as long as he can, scavenging the area around it for food. On one of the trips, a hermaphrodite gryphon spots him from the air and swoops down on him. Quickly overpowering the cuntboy, sie then takes him to her nest on top of a nearby building and fucks him hard and often, filling his womb with hir eggs. When some soldiers finally come by several weeks later and save Eric from captivity, he's holding two speckled eggs warm with a few blankets, another one almost ready inside his bulging belly.";
		otherwise:
			say "     When the soldiers come through the city to rescue survivors, you're all taken to a containment facility for medical evaluation and quarantine. Eric receives special notice as he's proven immune to shifts in species, but susceptible to gender transformation. They keep him locked up for testing and prodding, and it's several weeks after you're released until you hear from him again. He seeks you out one night, knocking at your door. A bit hesitantly he says 'Please fuck me, I - I need it - and you.' and opens up his coat, showing he's naked beneath. You wave him inside, then close the door and guide your submissive cuntboy towards the bedroom...";
	otherwise if (hp of Eric is 100):	 [Stacy's girlfriend now]
		if humanity of player > 9:
			say "     When the soldiers come through the city to rescue survivors, you're all taken to a containment facility for medical evaluation and quarantine. While waiting for the doctors to examine and clear you, you hear soldiers talk about a huge green humanoid in the campus area accompanied by a massively pregnant human. Sounds like Stacy and Eric. Apparently she took out a full squad of soldiers when they wanted to 'rescue' her boy/girl-friend, adding two female soldiers to her breeding partners and leaving the rest to be picked up by horny bunny jocks.";
	otherwise if Sports Arena Lockerroom is known:
		say "ERROR-Eric-[hp of Eric]E: He should have had one of the other endings by now. Please report under which circumstances you got to see this.";
			

Eric ends here.
