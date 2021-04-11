Version 3 of Korvin by Wahn begins here.
[ Original written by Stripes                                             ]
[ Version 2.1 - Korvin training/collaring                                 ]
[ Version 3 - Expanded by Wahn & moved                                    ]

[ GSD_pet                                                                 ]
[   0 = not met                                                           ]
[   1 = met him                                                           ]
[   2 = player lost                                                       ]
[   3 = lost again                                                        ]
[   4 = player locked                                                     ]
[  10 = player won                                                        ]
[  11 = won again                                                         ]
[  12 = recruited                                                         ]
[  13 = sexed up                                                          ]
[  14 = sexed up again                                                    ]
[  15 = pending collar                                                    ]
[  20-59 - subby                                                          ]
[  60-99 - confident                                                      ]
[ 100 = banished                                                          ]

[ Memory Traits                                                           ]
[ Dominant_Roleplay_Fuck - Korvin fucked the player in dom roleplay       ]
[ Dominant_Roleplay_Oral - Korvin face-fucked the player in dom roleplay  ]

[ Key Character points                                                                ]
[ Family man/dog, desires offspring with the player (if female/mpreg)                 ]
[ Has lots of offspring in the city                                                   ]
[ Moderate Pregnancy fetish                                                           ]
[ Job before transformation: Mechanic                                                 ]
[ doesn't like people bigger than himself (trust issue he was abused before)          ]
[ not into ferals                                                                     ]

[ "Relationship_Talk_Done"  - Relationship with Korvin defined (opens up the options below)                  ]

[ Relationship Memory Traits for Korvin:                                                                     ]
["Relationship_Bro" - Player and Korvin are buddies, might fuck someone together, no committed relationship  ]
["Relationship_Lover" - Player told Korvin they want more, committed relationship, etc.                      ]
["Relationship_Tool" - Player uses Korvin and expects him to do as he's told                                 ]

[ Sex Rules for Korvin in the Library + Bunker                                                               ]
["Library_free fucks" - Korvin may fuck anyone in the library freely - as long as he doesn't force it        ]
[   + "Relationship_Lover" + "Harem Master" Player Feat - lover may fuck your harem too                      ]
[   + "Relationship_Bro" + "Harem Master" Player Feat - bro may fuck your harem too                          ]
["Library_no fucks" - Korvin should not fuck anyone in the library                                           ]
[   + "Harem Master" feat for the player - no access for him                                                 ]
["Library_bitched out" - Korvin is free game for anyone                                                      ]
["Library_private lover" - Player wants to be the main partner of Korvin, only threesomes allowed (maybe)    ]
[   + "Harem Master" player feat - sharing the Harem together                                                ]


"Adds character specific info for Korvin the GSD pet."

a postimport rule: [bugfixing code]
	if gshep_postfight > 0 and gshep_sexscene > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 and gsd_pet < 15:
		now gsd_pet is 15;



to say gsd_recruited:
	increase score by 20;
	now gshep is tamed;
	add "Tamed" to Traits of gshep;
	move Korvin to Makeshift Rec Room;
	now HP of gshep is 1;
	now GShepLastScene is turns;
	say "     Looking around, you find some heavy rope and use that to make a temporary leash for the muzzle-scarred German shepherd. He tugs at it a few times, but leaves it alone when you tell him to stop pawing at it. You ask him if he's got a name he can remember, which throws him for a loop. 'What a stupid question? Of course I remember... my... name...' He ends up bemused for a time, scratching his ear with one paw as he tries to think. 'K-... Ka-? Ko-? Korvin? I think it was, I mean, it is Korvin.' He seems a little more self-assured again now that he's got a name. With a soft pull on the leash, you guide Korvin back to the library with you, explaining that it is his new home. Thinking about it for a moment, you decide to quarter him in one of the side rooms on the ground floor, the former Kidz Zone now turned into a Makeshift Rec Room. ";
	if (number of bunkered people + number of booked people > 1): [anyone there besides just Korvin]
		if (number of bunkered people + number of booked people > 2):
			say "Seeing some of the other people in the library as you walk around with your new companion following, you decide it might be best to call everyone in the building together and explain what's going on with Korvin now moving in. [bold type]Within a few minutes, everyone is gathered and you lay things out, to the following reactions:[roman type][line break]";
		else if (number of bunkered people + number of booked people is 2):
			say "Seeing some movement of the other inhabitant of the library, you decide it might be best to explain what's going on with Korvin now moving in. [bold type]Calling everyone together, you lay things out, to the following reactions:[roman type][line break]";
		LineBreak;
		if Alexandra is booked or Alexandra is bunkered:
			say "     Alexandra crosses her arms and looks Korvin up and down, her gaze lingering on his muscles and crotch. Despite the physical interest that she can't quite hide behind her tough bitch persona, the next words out of the ex-cop's mouth are snarky and mocking. 'Got some sort of dog fetish, boss? Dragging in a mangy street mutt. Looks like you roughed him up too!' Before you can think of a reply, Korvin's already barking back, 'Up yours, slut! I saw how you stared at my sheath!' He grabs his crotch suggestively, then raises the hand while turning it around, finishing up with a middle finger for Alexandra. She snorts, looking at her nails and just letting his shot back roll off her.";
			WaitBreakReactions;
		if Amy is booked or Amy is bunkered:
			say "     Amy strolls right up to German shepherd, standing very close and sniffing him, their noses almost touching. The young husky smiles prettily, tail wagging behind her back as says, 'Hello there, I love meeting other dogs!' Then suddenly, her expression falls a little and she cranes her neck to the side, looking at Korvin's scar with wide eyes. 'Oooh, what happened? Did that hurt?' Her paw-hand is half-raised to touch his muzzle before the German shepherd deflects it gently but firmly, shaking his head. 'Yeah, it did. Nothing I couldn't handle though. Real men don't shrink away from a little pain!' Korvin answers gruffly, then goes on to flex a bit, impressing Amy with his physique before she wanders off soon after.";
			WaitBreakReactions;
		if Brutus is booked or Brutus is bunkered:
			if DBCaptureQuestVar is 5: [controlled]
				[
				if "Master's Bite" is listed in Traits of demon brute:
					say "     <ask Luneth>";
				else
				]
				if Resolution of Demonic Redemption is 7: [somewhat pacified]
					say "     Brutus steps up, towering over Korvin. He gives the German shepherd a stare, as if measuring his strength and worth. 'I could take him, easily!' Seeing himself confronted with the sheer muscular bulk that the big purple demon brings to any brawl, Korvin's tough-guy resolve seems to waver a bit, with him saying, 'Eeeh - yeah, let's not test that. I believe you.' Brutus chuckles darkly about putting fear into the dog, no matter that Korvin is doing his best to hide it. Then the demon vanishes into a puff of smoke.";
				else: [standard hateful captive]
					say "     Brutus steps up, towering over Korvin. He gives the German shepherd a stare, as if measuring his strength and worth. 'Pathetic and weak! Let me have him instead, [master]! Some nice rapebait to drain my balls in!' Seeing himself confronted with the sheer muscular bulk that the big purple demon brings to any brawl, Korvin's tough-guy resolve seems to waver a bit, with him nervously looking aside to you and saying, 'You'll keep that thing away from me, right?' Snorting, you wave Brutus aside and tell him not to bother your new companion. Growling and showing his many, many sharp teeth, he can't do anything but obey.";
			else if DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99: [cleansed]
				say "     Brutus steps up, absolutely towering over Korvin, then lays a large, clawed hand on his shoulder and bares a smile filled with a worrying number of razor-sharp teeth. 'Welcome, dog. We will serve the [master] together.' Then the demon glances over to you, looking somewhat unsure of himself and if he did this right. As you nod, Brutus seems relieved. Gulping as he looks from the muscled, purple-skinned brute to you, Korvin raises one eyebrow as he comments, 'You didn't bring me here as his sparring partner, did you?' Snorting, you shake your head and pat Brutus's side, dismissing him for now.";
			WaitBreakReactions;
		if Candy is booked or Candy is bunkered:
			say "     'Hey handsome - wanna have a good time?' Candy calls out in a teasing tone, shaking his hips and tail as he saunters up to Korvin. 'Almost getting a sexy pirate vibe from you, with that scar!' the candy coon trap goes on to say, then starts to run a hand down the German shepherd's chest and soon hones in on his crotch. 'Hah! If you keep doing that, you'll have the skirt pushed up and this dick inside you before you know it! Eager little slut, aren't you?' Giggling, Candy brushes a hand down the side of his skirt, while the other cups Korvin's balls. You clear your throat and interrupt before this escalates any further. Laughing, Candy starts to skip away, stopping for a quick moment to wave to Korvin and say, 'Toodles! Later big boy!'";
			WaitBreakReactions;
		if Pink Raccoon is booked or Pink Raccoon is bunkered: [mindless Candy]
			say "     Your pink raccoon pet comes up to Korvin, looking at him with lustful eyes and going right in to squeeze the German shepherd's bulge. The next thing after that is him dropping to all fours, ass raised high and presenting his asshole to the muscled dog. Korvin snorts and grins, then says, 'You're gonna let me have a go humping this eager little slut, aren't you? He's just asking for it!' Chuckling without answering him, you shoo away the mostly mindless pet you allowed Dr. Mouse to create.";
			WaitBreakReactions;
		if Carl is booked or Carl is bunkered:
			if HP of Carl is 30: [beta carl]
				say "     Carl walks up to Korvin, letting his gaze wander up and down over the other dog as he approaches, taking in the scruffy fur and scar on his muzzle. 'New guy in the pack?' he asks you, indirectly broadcasting that he expects Korvin to be lower than him by not addressing him. This appears to rub Korvin the wrong way, with his hackles raising as he gets into Carl's face. 'What, am I not good enough for you? Want me to groom like a lapdog too, and put on pants? Tough luck, kinda like the freedom of having my big balls swing freely.' To empathize his words, he grabs between his legs and demonstratively cups his crotch. Carl watches the lewd display with a ruffled muzzle. 'Ohh - is that why you're hiding yours? Got snipped?' Carl lets out a low growl as he lowers the hand but refuses to be goaded by the German shepherd. With a respectful nod to you, he leaves soon after.";
			else:
				say "     Carl walks up to Korvin, letting his gaze wander up and down over the other dog as he approaches, taking in the scruffy fur and scar on his muzzle. It's not hard to recognize in his expression that he has some reservations about welcoming this street dog to live in the same building, but despite this, the husky soldier offers a hand to shake. Korvin simply looks at it, scrunching up his muzzle as he says with some snark, 'What, you worried that some of my street-dog dirt will rub off on ya? Want me to groom like a lapdog too, and put on pants? Tough luck, kinda like the freedom of having my big balls swing freely.' To empathize his words, he grabs between his legs and demonstratively cups his crotch. Carl watches the lewd display with a roll of his eyes, muttering 'Pervert' under his breath. Korvin shoots back immediately, 'Ohh - got a problem with that? Why are you hiding yours? Got snipped?' Carl lets out a low growl as he lowers the hand but refuses to be goaded by the German shepherd. With a respectful nod to you, he leaves soon after.";
			WaitBreakReactions;
		if Chris is booked or Chris is bunkered:
			if Libido of Chris is 0: [half-orc]
				say "     Chris strolls right up to Korvin, looking at the other man and offering him a hand to shake. 'Hey there! Glad to see another dude to hang out with!' Accepting the greeting, Korvin looks at him, then raises one eyebrow and asks in a half-joking tone, 'Mighty friendly and kinda small for an orc, aren't you? Bet you're just trying to lull me in to get at my ass!' Chuckling, Chris shrugs and rolls his eyes in an exaggerated way. 'Oh no, my evil plan is foiled! And speaking of small - I'm bigger than you, doggo! Guess I'll have to drink the beer cans I stashed away on my own then.' As the orc turns to leave, Korvin grabs him by the upper arm and says, 'Wait a moment! Beer you say? Now we're talking - but I'll watch out for you trying to pull up my tail, so you better keep your fingers to yourself!' With a grin, Chris pats the back of Korvin's hand, then walks off.";
			else if Libido of Chris is 1: [orc breeder]
				if "Breeder_Slut" is listed in Traits of Chris: [slut breeder]
					say "     Chris strolls right up to Korvin, looking at the other man and offering him a hand to shake. 'Hey there! Glad to see another dude to hang out with!' Accepting the greeting, Korvin looks at him, then raises one eyebrow and asks in a half-joking tone, 'Mighty friendly and kinda small for an orc, aren't you? Bet you're just trying to lull me in to get at my ass!' Biting his lip, Chris looks down at Korvin's crotch and replies, 'Other way around, really. I wanna know how that knot of yours feels!' Eyes widening, Korvin says, 'Oooh, you're a bottom! Might throw you a fuck, if the boss lets me.' Chris looks at you eagerly with a question on his lips, apparently wanting to put out for Korvin right away, but you wave him away for now."; [TODO: add mention of hunger for cum]
				else: [happy breeder]
					say "     Chris strolls right up to Korvin, looking at the other man and offering him a hand to shake. 'Hey there! Glad to see another dude to hang out with!' Accepting the greeting, Korvin looks at him, then raises one eyebrow and asks in a half-joking tone, 'Mighty friendly and kinda small for an orc, aren't you? Bet you're just trying to lull me in to get at my ass!' Chris blushes and shakes his head, then lets his gaze flick down to the German shepherd's crotch for a second before he looks up again. 'Not quite the part I'd be interested in. But seriously, I wasn't joking about the hanging out. Stashed away some beer cans I found, we could share that.' A grin appears on Korvin's muzzle and he gives the orc's upper arm a friendly slap. 'Now we're talking! Hell, with a brew or two downed, I might just allow you to go down on me too!' Chris looks amused about that, smiling as he says, 'Later!' and makes his exit.";
			else if Libido of Chris is 2: [orc warrior]
				if "Bro" is listed in Traits of Chris or "Bro with Benefits" is listed in Traits of Chris or "Dad with Benefits" is listed in Traits of Chris:
					say "     Chris strides up to Korvin, sizing the anthro up as he approaches. 'Sup, dude? You look like my type of guy!' The German shepherd's brows draw together and he begins to reply, 'Listen, I'm not -' but then the orc raises one arm, holding out his hand for a fist-bump and continues, 'I could use a bro and wingman when out on the streets. Someone to cut off a runner, ya know. And to share a piece of ass with afterwards, hah!' Closing his muzzle and swallowing what he was going to say, Korvin meet's Chris's gaze and a grin spreads over his face. 'You know, I think I [italic type]am[roman type] your type of guy!' He chuckles, then returns the offered fist-bump and gives the orc's upper arm a friendly slap or two. 'I'm down for that shit, provided it's not all guys, alright? Love me the feel of a fertile pussy around my cock!' Chris nods and replies, 'Bound to be some girlfriends or hanger-on sluts.' The two of them share a grinning nod, then say their goodbyes for now.";
				else: [dominant, rapy warrior Chris]
					say "     Chris strides up to Korvin, sizing the anthro up as he approaches. Then he glances at you and asks in a voice full of cocky arrogance, 'So, this one broken in as a male bitch yet? Just say the word and I'll take care of that - been wanting a new slut to drain my balls in!' Blustering at someone talking right over him, Korvin bares his teeth and lets out a low growl, then meets Chris's eyes in a staring contest. 'Better watch out you're not the one turned out as a boytoy, green-skin! Bet I've been fighting longer than you've been alive, you little shit!' Before their disagreement escalates further, you bring your hand up to your mouth and let out a sharp whistle, then pull Korvin to stand beside you and ask Chris to leave for now. 'Later, lapdog!' the orc says snarkily, with Korvin barking back aggressively, with you having to hold tightly onto his arm.";
			WaitBreakReactions;
		if Colleen is booked or Colleen is bunkered:
			if SarahSlut < 2: [not transformed, or only a little]
				say "     As Colleen walks closer, Korvin follows her with his gaze, directed towards her breasts more than the rest of the woman. She comes to a stop several feet away, cautiously eying the man unashamedly staring at her, then asks you, 'Are you sure about letting this guy in here? He seems pretty far gone, wild even.' Raising her eyebrows, she gives a sidelong nod towards the German shepherd, most likely to indicate his state of being bare-ass naked. Chuckling, Korvin interjects, 'Bet you like that, don't you?! An untamed man. Wanna let me show you how wild I can be? Woof woof!' Demonstratively grabbing his crotch, he wags his sheath at her, complete with the red-colored dickhead just starting to emerge from it. Clearing your throat, you make Korvin settle down and stop the lewd suggestions. Colleen leaves after saying, 'I'll keep my eye on you, dog.'";
			else if ColleenAlpha is 0:
				say "     Walking closer, Colleen gets right up close with Korvin, whose eyes are immediately drawn to wander over her naked body, lingering hungrily at her breasts and sex. 'Hey there, big guy,' she says in an eager, aroused tone, brushing her paw-hand along the side of his muscled arm. Nostrils flaring as he huffs the scent of the attractive bitch, Korvin steps forward and confidently slips a hand between her legs, fingers feeling for her wet snatch. The husky gives an audible pant as Korvin dips two digits into her pussy for a moment, then brings them up to his face to lick her juices off them. 'Guess this place isn't such a bad place to live, hah!' Korvin comments in a mixture of lust and amusement. You intervene before they actually start humping each other right before you, sending Colleen off while keeping Korvin standing by your side.";
			[
			else if ColleenAlpha > 0:
				say "..."; [TODO: write this]
			]
			WaitBreakReactions;
		if David is booked or David is bunkered:
			say "     Coming right up and offering his hand in an open, friendly way, David welcomes Korvin with the words, 'I'm Private David Jackson, but just call me David, will ya?' Chuckling, Korvin glances down at the hand, then at David's smiling face. 'This for real? You look like an all-American boy who collected all his merit badges and then went straight to the army!' The soldier's guileless reply of 'Yeah, I was in the Osprey Scouts, how did you know?' almost making the German shepherd double over in laughter. 'Okay then, nice to meet you David,' Korvin eventually gets out as he straightens up again, patting the soldier's arm in a friendly way. As David walks off soon after, Korvin asks you with a smirk, 'Think he'd be interested in earning some new knot-related merit badges? Like sucking on one or having it rammed up his rear?'";
			WaitBreakReactions;
		if Denise is booked or Denise is bunkered:
			say "     With a flutter of her wings, Denise lands on top of a nearby bookshelf, looking down at the German shepherd. He focuses on her in turn, mostly staring at the well-rounded breasts the blue gryphon calls her own and grinning broadly. 'Why don't you come down here babe, so we can get to know each other?' the anthro dog asks in a suggestive tone, which doesn't go over well with Denise at all. 'I know that look, from the guy who wanted to [']collect['] me after I transformed. No thanks.' With that said, she takes off again, flying up to a quiet spot all the way up in the rafters. 'Playing hard to get, eh? We'll see about that,' Korvin says, looking after her.";
			WaitBreakReactions;
		if (Elijah is booked or Elijah is bunkered) and HP of Elijah > 3:
			if HP of Elijah is 99: [evil]
				say "     Studying Korvin for a moment with a smirk on his face, Elijah asks, 'Got yourself a street-tough pet, eh? What're you gonna use him for? Just some muscle for in a fight, hunting-dog to bring down those who try to run, or is he your kind of dude for some sweaty humping? Maybe all three?' Korvin barks in annoyance, 'Wouldn't you like to know, you leather-slut Kyle-doll! With that perfect and unlined face, I bet you can't do shit but lie around all day and 'be pretty'!' Hackles raised, he growls at the dark angel, who suddenly spreads his large wings and gives a strong beat with them, creating a gush of wind that makes the German shepherd rock back momentarily. 'Cute when dog-puppies bark and yap like that. Almost like they want to say something. You might need to take a newspaper to this one though, to apply some training!' With an arrogant nod to you, the fallen angel turns around and wanders off. You're left behind, having to restrain Korvin with a hand on his chest to stop the anthro from running after Elijah.";
			else: [good]
				say "     Walking up to Korvin, Elijah gives the German shepherd a friendly smile and welcomes him with open arms. 'Welcome, and may you find peace here.' The German shepherd stares at him for a second, then lets out a derisive chuckle. 'Been snorting too many rainbows up in the clouds, eh? You do know what's going on in this city, right?' The angel deflates a little and says, 'I just meant that - er...' Korvin isn't done yet either, just rolling over what Elijah was struggling to say. 'As for me being here, the boss kept punching on me till I submit, then dragged me off on a leash. So you can shove the bullshit. If you wanna give me a proper welcome, how about you get on your knees and start sucking instead, eh?!' The anthro's abrasive words de-rail Elijah's train of thought completely, with him opening his mouth a few times, but no words coming out. Finally, he just shakes his head and whirls around, fleeing the uncomfortable situation. 'Was it something I said?' Korvin comments snarkily.";
			WaitBreakReactions;
		if Eric is booked or Eric is bunkered:
			if HP of Eric > 0 and HP of Eric < 21:
				say "     Walking up to Korvin, Eric gives a cautiously friendly smile half-raises his hand before hesitating. The German shepherd looks at him and reaches out to give the young man a firm handshake with his paw-hand, pulling him closer as he does to. With his nose almost touching Eric, Korvin gives a predatory grin as he asks, 'What, you afraid of dogs or something?' Eric squirms a little at the closeness, hastily replying, 'No, I love dogs. It's just - I, uhm...' At that point, Korvin's nostrils start flaring, and he sniffs Eric's scent with a curious expression, then lets out an amused grunt. 'For such a shy guy, you sure seem to be popular with the girls! Hell, did you just come from boning your girlfriend? I smell her all over you!' Becoming pale, Eric winds himself out of the canine's grasp and says, 'I gotta go!' Korvin laughs and shouts after him, 'Tell your girl to come visit me if she wants to be boned by a real dude for a change, eh?!'";
			else if HP of Eric > 20 and HP of Eric < 50: [horsecock/satyrcock/orccock]
				say "     Walking up to Korvin, Eric gives a friendly smile and shakes the German shepherd's paw-hand. 'Hi dude. You look pretty bad-ass with that scar!' he says in admiration, with Korvin chuckling and puffing out his chest a bit. 'Should have seen the other guy! Surviving on the streets isn't for the faint-hearted!' He seems to enjoy the impressed looks that Eric gives him and lays things on thick, boasting about the fights he won. As you snort a little when he starts yet another story, a moment later, Korvin is reminded of the fact that he lost against you, more than once. He quickly wraps up with Eric before you decide to bring that part of things up. Patting the young man on the shoulder, he says, 'I can tell you all about it later, eh?' With a smile and nod, Eric walks off after that.";
			else if HP of Eric is 99:
				say "     After looking over with a moderately frightened look on his face, your little sex slave Eric ducks out of sight. You can't quite tell if he was looking at Korvin or yourself. Maybe both, as he could be expecting this new male to join you in demanding sex from him. 'Bit shy, that one?' Korvin asks casually, nodding over to where the cuntboy vanished.";
			WaitBreakReactions;
		if Fang is booked or Fang is bunkered:
			say "     Fang pads closer, sniffing the air and looking at Korvin, with [PosAdj of Fang] tail raised at attention. Yet as the wolf approaches the German shepherd, Korvin extends one arm, paw-hand ready to push back. 'Oh no, that's enough! Keep your distance, you understand?!' Looking aside to you, Korvin explains, 'I don't really trust those male four-leggers. One moment they seem like proper pets, or even normal folks, the next they try to mount you. Guess once you're not human anymore, all the respect of these critters for their masters went poof!' Fang keeps standing nearby for a moment, looking [if HP of Fang is 3 or HP of Fang is 4]in annoyance at the anthro, then seems to decide that right now isn't the moment to address this and pads off, giving Korvin a hostile stare before turning a corner behind a bookshelf. [ReflexPro of Fang] confused at the rejection, then eventually pads off. [end if]Korvin watches Fang go with a wary expression on his face.";
			WaitBreakReactions;
		if HP of Fiona > 4:
			say "     Seemingly appearing from a dark corner in which she was hiding, Fiona stalks closer on all fours, her anthro form bent down close to the ground as she prowls Korvin. The German shepherd watches her close in and brush up against his leg, purring enticingly. He smiles and starts to bend down, only to suddenly pounce on the woman, grabbing a handful of fur behind her neck and pulling it firmly. The catgirl gives a surprised yip, but otherwise freezes in motion, leaving Korvin free to crouch next to her and cup one of her breasts with his free hand. 'I've messed around with girls like you before and know the tricks you play, hah! Well, let me tell you this - I'm game, but be ready to pay up!' With that said, he slides his hand further along her front, feeling for the catgirl's crotch. She lets out a breathless pant as he spreads her folds with two fingers and fingers the pussy for a moment, then brings the paw-hand to his muzzle and licks her juices off it. Chuckling, the German shepherd then releases Fiona, who dashes away.";
			WaitBreakReactions;
		if Gabriel is booked or Gabriel is bunkered:
			say "     Curious about the German shepherd, Gabriel comes closer and says hello. At the same time, Korvin takes in the angel's naked body, collar and the wrist- and ankle-cuffs, unashamedly staring and chuckling at the sexy presentation. 'So, you're the designated boytoy, eh? I wonder if the boss'll allow me to have some fun with you too. Maybe [SubjectPro of Player] likes to watch?' Reaching up to touch his collar, Gabriel lowers his head submissively and responds, 'If [master] wishes it so. [SubjectProCap of Player] has shown me what I was made for.' He stands there, with Korvin casually reaching out to stroke a paw-hand over his chest, then down to the crotch where he cups Gabriel's balls. Rolling the seraphim's obs between his fingers genrly, the German shepherd looks over to you, 'Wanna give your slut a ride on a doggy cock?' You postpone that decision to another time, then wave the angel away.";
			WaitBreakReactions;
		if Hayato is booked or Hayato is bunkered:
			say "     As Hayato walks up to Korvin, your German shepherd companion gets fairly nervous and appears to be scoping out ways of retreat. The towering oni picks up the anthro's discomfort and stops in his steps, giving Kovin a friendly wave instead. 'Hey there. I'm sorry my beastly appearance frightens you. I've turned into a monster, I know.' The gentle voice of Hayato seems to help Korvin relax at least a little, though he still keeps his distance. 'Yeah, eh - no offense, dude. I just had some bad experiences with giant folks. I'm sure you're a swell dude, but give me a bit of time to get to know ya!' Pressing his lips together, Hayato gives Korvin a sad nod, then says, 'Of course. See you later,' and walks away.";
			TraitGain "Giant Trouble" for Korvin;
			WaitBreakReactions;
		if Helen is booked or Helen is bunkered:
			say "     Dashing towards Korvin on all fours, Helen gives a yip in greeting goes in to sniff him, then licks his hand as he leans down to reach for her. 'What's this? Somone's doggy play fetish get away from them? Or do you train your girls like this?' the German shepherd asks, casually sliding a hand over Helen's skin, then under her to cup a breast and squeeze it gently. The human dog accepts this quite happily, even leaning into his touch. [if Lust of Helen > 3]'New friend?' she suddenly asks, followed by a happy bark as Korvin says, 'Sure, and sometime I can show you just how much of a friend I can be.' Him grabbing his sheath demonstratively shows exactly what he means. [end if]Afterwards, Helen happily runs off.";
			WaitBreakReactions;
		if Hobo is booked or Hobo is bunkered:
			say "     Hobo rushes up to greet Korvin with his tongue hanging out of the side of his mouth. Yet as the dog approaches the German shepherd, Korvin extends one arm, paw-hand ready to push back. 'Oh no, that's enough! Keep your distance, you understand?!' Looking aside to you, Korvin explains, 'I don't really trust those male four-leggers. One moment they seem like proper pets, or even normal folks, the next they try to mount you. Guess once you're not human anymore, all the respect of these critters for their masters went poof!' Hobo listens to the anthro's words almost as if he understands them, then lets out a huff of air through his nose and adds a friendly whine, raising his tail in a hopeful wag. As Korvin still doesn't relent, he pads off again, then lies down to doze in a comfortable spot.";
			WaitBreakReactions;
		if Honey is booked or Honey is bunkered: [TODO: Have Jay expand on this]
			say "     Honey buzzes through the air, stopping just inches away from Korvin's face and inspecting him before quickly saying, 'Hi there!' before giggling into her hands and flying away.";
			WaitBreakReactions;
		if Klauz is booked or Klauz is bunkered:
			say "     Klauz stays sitting on a nearby sofa for a long while, casually licking a paw and stroking it over his head-fur while throwing a sidelong glance or two in the direction of the German shepherd. Then eventually, he gets up and saunters closer, sniffing the air as he draws circles around Korvin. That's as far as he gets before Korvin extends one arm, paw-hand ready to push back. 'Oh no, that's enough! Keep your distance, you understand?!' Looking aside to you, Korvin explains, 'I don't really trust those male four-leggers. One moment they seem like proper pets, or even normal folks, the next they try to mount you. Guess once you're not human anymore, all the respect of these critters for their masters went poof!' The felinoid sits on his hindquarters where he is, acting as if he never had planned to come any closer and starts to groom himself right there, licking and stroking his paw over his fur some more. Only the way that his tail is swinging left and right in a forceful, unruly fashion shows that the big cat is rather annoyed right now.";
			WaitBreakReactions;
		if Malik is booked or Malik is bunkered:
			say "     Malik struts up to Korvin, nodding at the anthro and saying, 'Sup, dog-dude? Seen anything fun out in the city? Maybe we could do a circuit around the block sometime, eh?' Korvin grins and nods. 'I'd be down for that. We could go splits on what we find - you can have the guys, and I'll introduce the gals to my nice, thick cock and knot!' Before the two of them get any further into planning out trips with each other, you clear your throat as a reminder that Korvin is supposed to be [italic type]your[roman type] companion. Coming to attention, Korvin straightens himself after exchanging a fist-bump and a wink with Malik.";
			WaitBreakReactions;
		if Nadia is booked or Nadia is bunkered:
			say "     Nadia gives Korvin a shy smile and waves to him in greeting. 'Hello there. I - I hope you'll want to be a nice neighbor? Just want to have a nice, secure nest, you know.' Letting out a chuckle, Korvin replies, 'Lucky for you I'm not of a bird-hunting breed, eh? And I'll keep my desire for fresh omelets in check, alright?' The anthro bird's eyes widen and she puffs out her feathers in fright, with Korvin then waving a hand for her to calm down. 'I'm kidding, lady! Cool your tits!' Nadia gives him a long look, still appearing somewhat flustered, then finally says, 'I - okay. Just please stay out of my nest!' Korvin rolls his eyes as she leaves soon after.";
			WaitBreakReactions;
		if Rane is booked or Rane is bunkered:
			say "     Sauntering up to the anthro German shepherd with a smirk on his face, Rane nods to Korvin and says, 'Hey there, my dude. Name's Rane. What brings a cool dog with a dashing scar like that to this place?' Korvin snorts, raising one eyebrow as he looks up to the oni's face. 'Can the bullshitting, I'm not a mark to be talked into putting out! As for what brings me here - ask the boss about roughing me up and then dragging me here on a leash!' Besides showing his usual abrasive character, the anthro also seems to be scoping out ways of retreat from the oni. It seems that something about larger people rubs him the wrong way. 'Hah, fair enough. But I still think you'll want some of this before long,' Rane replies with a shug, then waves a hand to indicate his muscular, blue-skinned body. As he wanders off soon after, the oni gives Korvin a wink before stepping out of sight.";
			TraitGain "Giant Trouble" for Korvin;
			WaitBreakReactions;
		if Ryousei is booked or Ryousei is bunkered:
			say "     Ryousei walks up to Korvin with measured steps, then gives the German shepherd a cordial nod, respectful but fairly shallow. 'Welcome. So you're to be a new battle companion for your [master]? I can see you are not unfamiliar with brawling. My name is Ryousei.' Turning and giving yourself a friendly bow, the tiger adds, 'Please do let me know if you would like me to spar with your companion, and train him. It never is too late to learn higher combat skills.' Korvin's brows draw together as he looks at Ryousei, then he lets out a disrespectful bark. 'Yeah, no. Not doing that formal shit, bowing and playing around with words. Just talk normal, will ya, Stripey?' Ryousei looks at him, one eyebrow raised, and you can see his tail moving in twitching, annoyed movements. 'I am not from your world, dog, and I do not plan to remain here longer than neccessary. My apologies for mistaking you for someone who had more discipline than a tavern drunk.' With that, the tiger exuses himself from you and strides away.";
			WaitBreakReactions;
		if Tehuantl is booked or Tehuantl is bunkered:
			if Tehuantl is male:
				say "     Tehuantl steps into view from between the bookshelves, bearing his shield and Aztec sword as he walks up to the anthro German shepherd. The jaguar warrior comes to stand before him, sizing up Korvin for a long moment before giving him a smile that bares the feline's fangs. 'A brawler, I see. You can call me Tehuantl. If the [master] wishes it so, this warslave will train with you to work together in combat.' Having said what he wanted, the anthro feline turns and strides away, leaving Korvin looking after him with a smirk. 'That some cosplay nerd who got a few too many hits in the head? You should take more care not to scramble the minds of people you kidnap.' As you quickly explain where and how you met Tehuantl, and that he genuinely believes to be an authentic Aztec warrior, the anthro dog snorts, 'So he's a gen-u-ine primitive? Fine, I'll try not to confuse him with big words, hah!'";
			else:
				say "     Tehuantl steps into view from between the bookshelves, walking up to the German shepherd with her hips swaying side to side. She smiles at Korvin, holding her upper body in a pose that exposes her breasts quite nicely. 'Hello there,' the feline says in an enticing tone, and she is clearly amused as he gives her tits a long stare before glancing up to meet the jaguar-woman's gaze. 'Nice rack, kitty! Wouldn't mind doing a taste-test on them sometime...' She smiles and flutters her lashes at him, then says, 'I'm sure we'll see each other later.' With that, she turns around and struts off, giving a fairly nice show with swinging hips and tail as she does so.";
			WaitBreakReactions;
		if (Sarah is booked or Sarah is bunkered) and SarahCured > 3:
			say "     Sarah confidently strides up to Korvin and offers her hand in greeting. 'It's always good to see more sane people come here. I'm sure if we hold together we'll make it out of this too!' The German shepherd grins, his tail starting a hopeful wag as he shakes her hand-paw, 'Oh yeah, totally! I'll protect you from all those bad, bad guys out there. You just need to show you appreciate that, if you know what I mean.' As he glances down at her body, hungry lingering for a long moment on Sarah's breasts, she takes a step back and rolls her eyes. 'Oh, you're one of those guys. No thanks, I think I got things covered.' Slipping a hand into one pocket of her labcoat, she lets a can of pepper spray peek out for a quick moment while giving Korvin a hard gaze. 'Offer's still standing,' the German shepherd calls after her as she walks off.";
			WaitBreakReactions;
		if Spike is booked or Spike is bunkered: [Note: If Spike already exists, he can't be Korvin's son, as this is Korvin's first appearance in the playthrough]
			say "     Walking up to Korvin, Spike tries to make himself look a bit more muscular by puffing out his chest but still falls short of the German shepherd's physique. 'Hey there, you joining the crew too?' the young dobie asks the other dog in a friendly tone as he offers his paw-hand to shake. Korvin grabs Spike's hand and gives it a strong squeeze, feeling the need to try to establish dominance right away. 'Yeah, the boss decided to get a proper dog,' Korvin says, his tone more teasing than insulting as he stresses the word [']proper[']. 'If you play your cards right, I'll show you some tricks to help you bulk up.' Even as he is ribbing Spike, you can see that the German shepherd is eying the dobie's collar with a look that might best be described as envy. The two canines chat a little, before Spike soon wanders off again.";
			WaitBreakReactions;
		if Sven is booked or Sven is bunkered:
			if HP of Sven >= 30 and HP of Sven < 50:	[self-confident Sven]
				say "     Coming up to the German shepherd, Sven smiles at Korvin and says, 'Hello there, I hope we can be friends, despite the cat-dog thing, eh?' Bravely sticking out his hand in greeting, he shakes with Korvin, who chuckles at the quip. 'I don't know, maybe I should chase you up a tree or two first, to show you what's what!' His tone makes it clear that he's joking. Then Korvin asks, 'So, you sound foreign. Where're you from? Europe or something?' 'I'm from Norway and an exchange student,' Sven replies, followed by a little bit of chatting before he makes an exit, going back to what he was doing before.";
			else if HP of Sven > 7 and HP of Sven < 11: [collared sex pet]
				say "     Stepping out from behind a tall bookshelf, Sven saunters over towards Urik and yourself, swinging his hips a little as he does so. 'Hey doggo,' he says in a somewhat flirtatious tone as he reaches Korvin, letting his gaze wander down to the German shepherd's bulge. 'Got your private pussycat slut, eh?' Korvin asks you, grinning at Sven, who nods and starts to run his tongue along the edge of his muzzle, a purr starting in his chest. Before the two of them can wind each other any further, you clear your throat and tell Sven to get back to his place, for now. Korvin looks a little disappointed as the flirty sub does as ordered, but he readily accepts that you're the boss.";
			else:
				say "     Shily stepping out from behind a tall bookshelf, Sven keeps his extra long and thick tail raised before himself, partly hiding behind it. 'Hello there,' he says quietly, looking admiringly at Korvin's muscles. The German shepherd grins and shows off a little. Then Korvin asks, 'So, you sound foreign. Where're you from? Europe or something?' 'I'm from Norway and an exchange student,' Sven replies, followed by a little bit of chatting before he makes an exit, going back to what he was doing before.";
			WaitBreakReactions;
		if Urik is booked or Urik is bunkered:
			say "     Strolling up casually, Urik comes to tower over Korvin and looks down at the anthro's muscular body, and the nervous way in which Korvin seems to be scoping out lines of escape from the much bigger man. 'So, you got a dog, eh? At least he's a strong and sturdy one, but he seems a bit twitchy,' Urik says to you, never really addressing Korvin at all. Finding himself being talked across and not taken seriously, Korvin barks, 'Hey! I can rough you up plenty good, you overgrown asshole!' Snorting, the orc comments, 'Yeah, sure you can,' and walks off with a shrug. After he leaves, the anthro grabs your arm and says, 'Sorry for the outburst. I just had... a bad experience with someone big.'";
			TraitGain "Giant Trouble" for Korvin;
			WaitBreakReactions;
		if Xerxes is booked or Xerxes is bunkered:
			say "     Dashing towards Korvin on all fours, Xerxes goes in to sniff him, then licks his hand as he leans down to reach for him. 'What's this? Somone's doggy play fetish get away from them? Or do you train your pets like this?' the German shepherd comments at the human dog's nakedness, then slides a hand over the transformed canine's muscular back. Xerxes accepts this quite happily, even leaning into his touch. [if Lust of Xerxes > 3]'New friend?' he suddenly asks, followed by a happy bark as Korvin says, 'Sure, and sometime I can show you just how much of a friend I can be.' Him grabbing the bulge in his pants and adjusting it shows exactly what he means. [end if]Afterwards, Xerxes happily runs off. You can see Korvin is still curious about him, so you quickly explain that Xerxes is an actual dog, transformed into human form.";
			WaitBreakReactions;
		now IntroReactionCounter is 0; [reset]
	say "     (Korvin the German shepherd is now a possible ally! You can make him your active ally by typing [bold type][link]ally Korvin[end link][roman type] or [bold type][link]ally gshep[end link][roman type] and initiate sex with him while active by typing [bold type][link]fuck Korvin[end link][roman type]. You can see all the allies you have with the [bold type][link]allies[end link][roman type] command. Allies will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of an ally? Use [bold type][link]ally dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";

the linkaction of Korvin is "[korvinlinkaction]".

to say korvinlinkaction:
	say "Possible Actions: [link]talk[as]talk Korvin[end link], [link]smell[as]smell Korvin[end link], [link]fuck[as]fuck Korvin[end link][line break]";

Section 0 - GShep Pet

Table of GameCharacterIDs (continued)
object	name
gshep	"gshep"

gshep is a pet.
understand "Korvin" as gshep.
NPCObject of gshep is Korvin.
IDList of gshep is { "Korvin", "korvin", "dog", "gshep", "shepherd", "german shepherd", "German shepherd" }.
printed name of gshep is "Korvin".
Description of gshep is "[Korvindesc]".
Conversation of gshep is { "Bark!" }.
Weapon Damage of gshep is 15.
The level of gshep is 1.
Dexterity of gshep is 10.
The summondesc of gshep is "[SummonKorvin]".
The dismissdesc of gshep is "[DismissKorvin]".
The assault of gshep is "[gshep_attack]".
the scent of the gshep is "Korvin has a masculine scent of canine arousal.".
The fuckscene of gshep is "[korvinsexmenu]".
GShepLastScene is a number that varies. GShepLastScene is usually 255.
ScaleValue of gshep is 3. [human sized]
Cock Count of gshep is 1.
Cock Length of gshep is 9.
Ball Size of gshep is 3.
Ball Count of gshep is 2.
Cunt Count of gshep is 0.
Cunt Depth of gshep is 9.
Cunt Tightness of gshep is 2.
Nipple Count of gshep is 2. [2 nipples]
Breast Size of gshep is 0.
[Basic Interaction states as of game start]
PlayerMet of gshep is false.
PlayerRomanced of gshep is false.
PlayerFriended of gshep is false.
PlayerControlled of gshep is false.
PlayerFucked of gshep is false.
OralVirgin of gshep is false.
Virgin of gshep is true.
AnalVirgin of gshep is false.
PenileVirgin of gshep is false.
SexuallyExperienced of gshep is true.
MainInfection of gshep is "German Shepherd Male".

to say SummonKorvin:
	if Korvin is visible: [summoning while standing next to him]
		say "     Calling for Korvin, the German shepherd joins you at your side. He seems excited at the prospect of busting some heads.";
	else: [regular summoning]
		say "     Calling for Korvin, the German shepherd joins you at your side. He seems excited at the prospect of busting some heads.";

to say DismissKorvin:
	move Korvin to Makeshift Rec Room;
	if Player is not in Makeshift Rec Room: [regular dismiss]
		say "     With a curt nod, Korvin begins the run back to the abbey.";
	else: [dismissing him in the abbey]
		say "     With a shrug of his shoulders, Korvin goes back to doing whatever it is he does when passing the time.";

gshep_fights is a number that varies.
gshep_postfight is a number that varies. [post-fight argument]
gshep_sexscene is a number that varies. [sex-role argument]
gshep_bed_scene is a number that varies. [discipline argument]
gshep_inactive is a number that varies. [inactivity argument]

Table of GameCharacterIDs (continued)
object	name
Korvin	"Korvin"

Korvin is a man.
ScaleValue of Korvin is 3. [human sized]
Body Weight of Korvin is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Korvin is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Korvin is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Korvin is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Korvin is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Korvin is 5. [length in inches]
Breast Size of Korvin is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Korvin is 2. [count of nipples]
Asshole Depth of Korvin is 8. [inches deep for anal fucking]
Asshole Tightness of Korvin is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Korvin is 1. [number of cocks]
Cock Girth of Korvin is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Korvin is 9. [length in inches]
Ball Count of Korvin is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Korvin is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Korvin is 0. [number of cunts]
Cunt Depth of Korvin is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Korvin is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Korvin is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Korvin is false.
PlayerRomanced of Korvin is false.
PlayerFriended of Korvin is false.
PlayerControlled of Korvin is false.
PlayerFucked of Korvin is false.
OralVirgin of Korvin is false.
Virgin of Korvin is true.
AnalVirgin of Korvin is false.
PenileVirgin of Korvin is false.
SexuallyExperienced of Korvin is true.
TwistedCapacity of Korvin is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Korvin is false. [steriles can't knock people up]
MainInfection of Korvin is "German Shepherd Male".
Description of Korvin is "[KorvinDesc]".
Conversation of Korvin is { "Woof." }.


instead of fucking Korvin:
	say "[korvinsexmenu]";

instead of conversing the Korvin:
	if Player is in Makeshift Rec Room and Korvin is in Makeshift Rec Room:
		say "[KorvinTalk]";
	else if gshep is listed in companionList of Player:
		say "[KorvinTalk]";
	else:
		say "     Korvin isn't here.";

instead of conversing gshep:
	if gshep is not tamed:
		say "     Who?";
	else:
		if Player is in Makeshift Rec Room and Korvin is in Makeshift Rec Room:
			say "[KorvinTalk]";
		else if gshep is listed in companionList of Player:
			say "[KorvinTalk]";
		else:
			say "     Korvin isn't here.";

to say Korvindesc:
	if debugactive is 1:
		say "DEBUG - Korvin | LVL: [level of gshep], XP: [XP of gshep], DEX: [dexterity of gshep], DMG: [weapon damage of gshep].";
		say "DEBUG - Korvin | gsd_pet: [gsd_pet], lastfuck: [lastfuck of gshep], lastscene: [GShepLastScene].";
		say "DEBUG - Korvin | Scenes | Post-Fight: [gshep_postfight], Sex: [gshep_sexscene], Bed: [gshep_bed_scene], Inactive: [gshep_inactive].";
	if gsd_pet < 20:
		say "     Korvin, the anthro German shepherd you've trained to be your dog, stands nearby with his arms crossed and a stern look on his canine face. He's got the typical brown and black coat of the breed. He's buff and well-built, though not overly so. His most distinguishing feature is the ragged scar that runs along his cheek and muzzle. Such marks are rare, even with the amount of fighting between mutants in the city. He's also nude, wearing nothing save for the rope leash you've put around his neck[if gsd_pet is 15]. You should really look for a [bold type]pet shop[roman type] to find a replacement for that[else if gsd_pet is 16]. You recall that you've got a replacement for that. Go have a [bold type]talk[roman type] to him about it[end if]. Despite being tamed, his mind is definitely more corrupted than human, clearly only retaining shreds of his past life. Having put him in his place, he's come to accept you as his master and will follow your orders, even if does retain quite an independent streak.";
	else if gsd_pet >= 20 and gsd_pet < 60:	[Subby Korvin]
		if graphics is true:
			project the figure of Korvin_pinkcollar_icon;
		say "     Korvin, the anthro German shepherd you've trained to be your dog, stands nearby with his arms crossed and a stern look on his canine face. He's got the typical brown and black coat of the breed. He's buff and well-built, though not overly so. His most distinguishing feature is the ragged scar that runs along his cheek and muzzle. Such marks are rare, even with the amount of fighting between mutants in the city. He's also nude, wearing nothing save for the cute pink collar you've embarrassingly given him. It is a reminder to him that he may look like a big, bad dog, but he's to be your subby puppy pet as well.";
		say "     Despite being tamed, his mind is definitely more corrupted than human, clearly only retaining shreds of his past life. You've been able to train some of his bad habits out of him, making him obedient and sexually submissive to you. He still retains that aggressive streak toward others, but he accepts you as his alpha and master and will follow your orders like the trained dog he's become.";
	else:	[Confident Korvin, gsd_pet >= 60]
		if graphics is true:
			project the figure of Korvin_blackcollar_icon;
		say "     Korvin, the anthro German shepherd you've trained to be your dog, stands nearby with his arms crossed and a stern look on his canine face. He's got the typical brown and black coat of the breed. He's buff and well-built, though not overly so. His most distinguishing feature is the ragged scar that runs along his cheek and muzzle. Such marks are rare, even with the amount of fighting between mutants in the city. He's also nude, wearing nothing save for the black studded collar you've given him, adding to his air of menace.";
		say "     Despite being tamed, his mind is definitely more corrupted than human, clearly only retaining shreds of his past life. You've been able to help him better cope with that, letting him recover a little self-control. He still retains some of that independent streak of his, but he accepts you as his friend and master and will follow your orders fairly loyally.";
	if gshep is listed in companionList of Player:
		say "     [bold type]He is currently following you as your battle companion.[roman type][line break]";

to say gshep_attack:
	choose row MonsterID from the Table of Random Critters;
	say "[one of]Your dog[or]Korvin[or]Your German shepherd[at random] [one of]growls and swipes at your enemy with an open paw-like hand, leaving scratching with his dull claws[or]clamps down with his teeth on your foe with a growl[or]charges at your foe, bashing into [ghim][or]lands a fast punch on the [Name entry][or]barks and growls at your opponent while taking swings at them[at random].";

Section 1 - Dialog

to say KorvinTalk:
	if gsd_pet < 16:
		say "     [one of]'What do you want?'[or]The muzzle-scarred G-Shep scratches himself behind the ear with a foot. Noticing you watching him, he stops and tries to look more dignified.[or]'Where to now, oh wise and powerful Alpha?' he asks, rolling his eyes. A glare from you gets him to stop and hang his head.[or]'I can't wait for our next scrap, [K_Boss]. It'll feel good to smack some fools around with you.'[or]The G-Shep consents to let you pet and scritch him, he grumbles a little, but you can tell from the way his tail wags that he enjoys the attention from his alpha.[or]'You're my alpha now, so I'll follow you.'[at random]";
	else if gsd_pet is 16:
		if Player is neuter:
			say "     You consider giving Korvin his new collar, but without a gender of your own, you won't really be able to [']enjoy['] the moment.";
		else:
			say "[gsd_collar_scene]";
	else if gsd_pet >= 20 and gsd_pet < 60: [subby Korvin]
		if graphics is true:
			project the figure of Korvin_pinkcollar_face_icon;
		say "     [one of][if lastfuck of gshep - turns < 6]'What do you need, [K_Boss]?' he asks obediently[else]'Did you need anything of me, [K_Boss]?' he asks with a hint of longing in his tone[end if].[or]You give Korvin some scritching that turn into a tummy rub before ending in some playful groping of your subby puppy.[or]The muzzle-scarred G-Shep scratches himself behind the ear with a foot. Noticing you watching him, he stops and tries to look more dignified.[or]'Where to now, Alpha?' he asks, cracking his knuckles.[or]'I can't wait for our next scrap, [K_Boss]. It'll feel good to smack some fools around for you.'[or]The G-Shep pants happily as you pet and scritch him. From the way his tail wags, you can tell that he enjoys the attention from his alpha.[or]'You're my alpha now, so I'll follow you.'[or]'May we go out to beat up some mutants to... uhh... keep them from making trouble around here?'[or]'How can I help you, boss?'[or]'Just point me at someone and I'll make sure they regret giving you any trouble, my alpha.'[or]'It's not so bad being beta, long as it's to you.'[or]'I could sure go for a good fight[if lastfuck of gshep - turns >= 6]... or fuck,' he adds, posing as to offer himself to you.[else].'[end if][or]Taking his squeaky toy, you throw the pink bone for him to fetch a few times. It's amusing to watch the big, buff canine chase after it, much to his embarrassment and enjoyment.[at random]";
	else: [confident Korvin, gsd_pet >= 60]
		if Resolution of Trucker Bar is 3 and "KorvinPast_Convinced" is not listed in Traits of Korvin: [the player talked Korvin into staying with them]
			say "     As you approach Korvin in order to talk with him, the German shepherd suddenly looks at you with an intense expression on his face. 'Listen, [K_Boss]. I wanted to talk to you about what happened when we went to track down Eddie's place. Going through that picture album with her was... brutal, but I still felt like I owed it to Eddie, Wyatt, them both, them, to try to make it work. Damn, some of those pics just made me [italic type]itch[roman type] in my mind, with no chance to scratch it because I just couldn't remember. And yet, I was really fucking close to go in there with her. So... tempting, to be someone [italic type]real[roman type].' He blows out his breath, scratching the back of his neck. 'But you were right. That idea was doomed to fail. I'd have joined her, tried, but at some point she'd have learned that she invited a street dog inside. Most likely when I pinned her down to fuck her like any other random bitch.'";
			say "     Reaching out to put a paw-hand on your shoulder, Korvin squeezes it and continues, 'So, thanks for talking sense into me. And helping me BE me. Damn, while I was out there, feral in all but name, I didn't have a name. No one cared, including me. Eddie was already gone, but you MADE me Korvin.' Reaching up to touch his collar, the German shepherd looks you in the eyes, then leans in and licks you affectionately, his tongue brushing over your jaw, cheek and the side of your neck. He continues to do that for a few heartbeats, before pulling back and snorting in amusement about himself. 'Enough of that soppy stuff, eh? How about we make trouble somewhere instead?'";
			LineBreak;
			say "     [bold type]With his new confidence to guide him, and trust in you absolute, Korvin will now deal more damage in combat. His attack damage has increased by 3![roman type][line break]";
			increase weapon damage of gshep by 3;
			add "KorvinPast_Convinced" to Traits of Korvin;
		else if Resolution of Trucker Bar is 2 and "KorvinPast_OwnChoice" is not listed in Traits of Korvin: [the player let Korvin make the decision himself]
			say "     As you approach Korvin in order to talk with him, the German shepherd suddenly looks at you with an intense expression on his face. 'Listen, [K_Boss]. I wanted to talk to you about what happened when we went to track down Eddie's place. Going through that picture album with her was... brutal, but I still felt like I owed it to Eddie, Wyatt, them both, to try to make it work. Damn, some of those pics just made me [italic type]itch[roman type] in my mind, with no chance to scratch it because I just couldn't remember. And yet, I was really fucking close to go in there with her. So... tempting, to be someone [italic type]real[roman type].' He blows out his breath, scratching the back of his neck. 'But no, that idea was doomed to fail. I'd have joined her, tried, but at some point she'd have learned that she invited a street dog inside. Most likely when I pinned her down to fuck her like any other random bitch.'";
			say "     Reaching out to put a paw-hand on your shoulder, Korvin squeezes it and continues, 'So, thanks for helping me BE me. Damn, while I was out there, feral in all but name, I didn't have a name. No one cared, including me. Eddie was already gone, but you MADE me Korvin.' Reaching up to touch his collar, the German shepherd looks you in the eyes, then leans in and licks you affectionately, his tongue brushing over your jaw, cheek and the side of your neck. He continues to do that for a few heartbeats, ";
			if Player is female or Player is mpreg_ok:
				say "then leans his head against the crook of your neck, holding on to you for a little while. With him continuing this close contact between the two of you, there is a feel of something... more being offered, without him just outright saying anything, or pushing it on you. [bold type]Something to think about later, maybe. You gotta let the idea settle and see if it sprouts.[roman type][line break]";
				add "KorvinPast_Something_More" to Traits of Korvin;
			else:
				say "before pulling back and snorting in amusement about himself. 'Enough of that soppy stuff, eh? How about we make trouble somewhere instead?'";
			LineBreak;
			say "     [bold type]With his new confidence to guide him, and trust in you absolute, Korvin will now deal more damage in combat. His attack damage has increased by 3![roman type][line break]";
			increase weapon damage of gshep by 3;
			add "KorvinPast_OwnChoice" to Traits of Korvin;
		else:
			say "     [bold type]What exactly do you want to talk about with Korvin?[roman type][line break]";
			say "[conf_Korvin_talkmenu]";

to say K_Boss:
	say "[one of]boss[or]alpha[or][master][at random]";

to say conf_Korvin_talkmenu:
	let TalkDone be false;
	project the figure of Korvin_blackcollar_face_icon;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a little";
	now sortorder entry is 1;
	now description entry is "Talk about nothing in particular";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bring up his muzzle scar";
	now sortorder entry is 2;
	now description entry is "Ask where he got the scar";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bring up his transformation";
	now sortorder entry is 3;
	now description entry is "Ask him how he became a German shepherd";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bring up your relationship";
	now sortorder entry is 4;
	now description entry is "Talk about how things stand, between him and you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bring up his sexual preferences";
	now sortorder entry is 5;
	now description entry is "Talk about what gets him off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bring up the situation in the city as a whole";
	now sortorder entry is 6;
	now description entry is "Talk about how he sees things right now";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Wonder about what you should do next";
	now sortorder entry is 7;
	now description entry is "Talk about things to do";
	[
	if Intelligence of Carl is 54: [Korvin invited Carl to jump some passersby, and they had a moderate falling out]
		choose a blank row in table of fucking options;
		now title entry is "Bring up Carl";
		now sortorder entry is 20;
		now description entry is "Talk with him about his falling-out with the soldier";
	]
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
				if nam is "Just chat a little":
					say "[conf_Korvin_Talk01]";
				else if nam is "Bring up his muzzle scar":
					say "[conf_Korvin_Talk02]";
				else if nam is "Bring up his transformation":
					say "[conf_Korvin_Talk03]";
				else if nam is "Bring up your relationship":
					say "[conf_Korvin_Talk04]";
				else if nam is "Bring up his sexual preferences":
					say "[conf_Korvin_Talk05]";
				else if nam is "Bring up the situation in the city as a whole":
					say "[conf_Korvin_Talk06]";
				else if nam is "Wonder about what you should do next":
					say "[conf_Korvin_Talk07]";
				[
				else if nam is "Bring up Carl":
					say "[conf_Korvin_Talk_CarlDisagreement]";
				]
				if TalkDone is false: [didn't to any option that ends the conversation]
					LineBreak;
					say "     [bold type]What else do you want to talk about with Korvin?[roman type][line break]";
					say "[conf_Korvin_talkmenu]";
				else:
					wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the German shepherd, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say conf_Korvin_Talk01: [unspecific chatterbox]
	say "     [one of]'What do you need, [K_Boss]?'[or]The muzzle-scarred G-Shep scratches himself behind the ear with a foot. Noticing you watching him, he stops and tries to look more dignified.[or]'Where to now, Alpha?' he asks, cracking his knuckles.[or]'I can't wait for our next scrap, [K_Boss]. It'll feel good to smack some fools around with you.'[or]The G-Shep consents to let you pet and scritch him, he grumbles a little, but you can tell from the way his tail wags that he enjoys the attention from his alpha.[or]'You're my alpha now, so I'll follow you.'[or]'How about we go beat up some mutants to... uhh... keep them from making trouble around here?'[or]'What're you planning next, boss?'[or]'Just point me at someone and I'll make sure they regret giving you any trouble, chief.'[or]'It's not so bad being beta, long as it's to you.'[or]'I could sure go for a good fight[if lastfuck of gshep - turns >= 6] or fuck[end if].'[or]Taking his tug rope toy, [if FaceName of Player is listed in infections of caninelist]the two of you enjoy a good, canine tug-o-war over it, using your jaws to pull on each end[else]he enjoys a good, canine tug-o-war with you, pulling on it with his muzzle while you hold and yank on the other end[end if].[at random]";

to say conf_Korvin_Talk02: [scar talk]
	say "     As you bring up the mark on his muzzle, Korvin reaches up and rubs a finger along the scar. Given the rapid nanite healing, it's rare to see lasting damage, even from how intense some creatures may fight. 'Oh, I've had this bad boy for a long time; long before this whole fun mess. I...' he pauses for a bit, '...don't quite remember all the details, but I was out at a bar with my buds and some ass was really pissing us off. Stupid prick really needed to be put in his place. Well, during the fight, he got me with a bottle and left me with this. But don't worry, I gave him far worse than this in return,' he adds proudly.";
	if Trucker Bar is not active:
		say "     With your curiosity awakened, you follow up and ask if he remembers the name of the bar, or even just how it looked. 'Hm, no it was - just the bar we usually went to, you know. None of that pretentious crap there - just cheap drinks, pool table, TV with the newest game running on it. A trucker bar, you see? It was... err, somewhere a little off from the center of town, I think?' Hmm, with that description, you'd guess the bar could be in the outskirts of the downtown area, or maybe the warehouse district? [bold type]Maybe you should take Korvin there sometime and see if you can find it together?[roman type][line break]";
		now Trucker Bar is active;
	else if Trucker Bar is not resolved:
		say "     You remember that Korvin told you about the bar he was in. From his description you'd guess the bar could be in the outskirts of the downtown area, or maybe the warehouse district? [bold type]Maybe you should take Korvin there sometime and see if you can find it together?[roman type][line break]";

to say conf_Korvin_Talk03: [transformation talk]
	say "     As you mention an interest in how he got turned into a German shepherd, Korvin clears his throat and says, 'Story like any other, I guess. Everything's a bit fuzzy, ya'know. So, I was in that bar, ... err, somewhere a little off from the center of town, I think?' Not sure what kicked things off, but we were fighting. Good, honest barfight in one moment, the next I'm ducking a chair and see on the ground next to me a waitress scuffling with a trucker. Only it's not the burly dude trying to force her, but she's the one going for him! Tried to pull her off, to have her raise her head and give me a death-glare with those freaky, yellow, slitted eyes. She hissed at me, and I kid you not, she had scales and shit, trying to bite me with fangs as long as my little finger! Trucker Dude klonked her out with a beer mug to the side of the head and we ran. Made it out the back door, but that's where the luck ran out...'";
	say "     Lips peeling back from his teeth as he goes back to the memory in his mind, Korvin grimaces and lets out a grunt. Then he starts to gesture to illustrate his tale and continues, 'There were three, maybe four dog-dudes out there, waiting or butt-sniffing or something. Fuck, I'm just remembering bits of pieces of what happened next - must have ran smack-dab into the bunch I guess, and we kinda all went down in a heap. Didn't see Trucker Dude in the mix so maybe he got away, while I got held down for all the dogs to have a go, and another, and some thirds. If you think a normal hangover is bad, try waking up with dried cum sticking you to the dirty ground in an alley! And making your fur spiky and gross, fur you didn't even remember having before! Bastards fucked me and just left. Must have stolen my keys, wallet and whatnot too. Certainly didn't have any when I woke.' Holding up a paw-hand to look at it, furred skin and pads and blunt canine nails, Korvin taps the side of his muzzle and shrugs. 'Kinda stumbled out of there and never looked back, then lived on the streets until a certain someone rang my clock and put a collar on me.'";
	if Trucker Bar is not active:
		say "     With your curiosity awakened, you wonder if you might be able to find the bar where things went down for Korvin. Might provide some clues about his past. Given the description, you'd guess the bar could be in the outskirts of the downtown area, or maybe the warehouse district? [bold type]Maybe you should take Korvin there sometime and see if you can find it together?[roman type][line break]";
		now Trucker Bar is active;
	else if Trucker Bar is not resolved:
		say "     You remember that Korvin told you about the bar he was in. From his description you'd guess the bar could be in the outskirts of the downtown area, or maybe the warehouse district? [bold type]Maybe you should take Korvin there sometime and see if you can find it together?[roman type][line break]";

to say conf_Korvin_Talk04: [relationship talk]
	if Resolution of Trucker Bar is 0:
		say "     As you say that you want to talk about your relationship, Korvin looks at you in a mixture of confusion and wariness. 'Did I do something wrong, [K_Boss]?' he asks, with you telling him to calm down and stressing that you just wanted to get his view on things. There still is caution in his voice as he says, 'O-kay then. Well, I'm your dog all the way, you don't have to worry about that. I mean, yeah you kicked my ass, hard, more than once. But in the end, you didn't just... leave me, instead giving me this. Makes a guy feel appreciated, and all that.' Raising a paw-hand to his neck and running his fingertips over the studs of the collar there, his tail starts up a slow wag.";
		say "     Seeing the intensity of Korvin's conviction in his eyes, you recognize that he has a deep [italic type]need[roman type] to belong with someone (or maybe to someone?). You guess he must have had a tough time out on the streets, or maybe even before the nanite apocalypse. Taking him in and treating him as more than just a cum-dump has given you a immense status in his mind, and you don't think there's much of anything that he wouldn't do for you. The path you took has earned you an intensely loyal companion, and you can't help but feel good about how things turned out.";
	else if Resolution of Trucker Bar is 2: [player let Korvin make the decision himself]
		say "     As you say that you want to talk about your relationship, Korvin perks up immediately, a grin spreading over his muzzle. 'I'm your dog all the way, [K_Boss]!' Reaching up to proudly stroke along the studded outside of his collar, he goes on to say,  'Really happy you gave me this. Makes a guy feel appreciated, and all that. Then afterwards, when we went to track down Eddie's story, you were there for me. Let me think it through, make up my own mind. Yeah, really glad I'm with you.' His tail is wagging steadily behind his back, a clear indicator of the positive view the German shepherd holds for you.";
		if "KorvinPast_Something_More" is listed in Traits of Korvin:
			say "     Korvin lets his gaze stay focused on you for a little while longer after his last words have been spoken. You think you see his nostrils flare a little as he breathes in your scent, accompanied by an increase of his tail movements. He opens his mouth, as if to say something, then thinks better of it and just licks the sides of his muzzle before giving you a respectful nod. When the German shepherd then turns away, you see from the corner of your eye that he's half-hard, his cock having partly pushed out of his sheath. [bold type]Seems like the things you went through together have given Korvin some ideas beyond just being your trusted guard dog and battle companion. Still, it doesn't seem the right time yet to act on this, one way or another. Better let the matter germinate some more.[roman type][line break]";
	else if Resolution of Trucker Bar is 3: [player told Korvin to stay with them]
		say "     As you say that you want to talk about your relationship, Korvin perks up immediately, a grin spreading over his muzzle. 'I'm your dog all the way, [K_Boss]!' Reaching up to proudly stroke along the studded outside of his collar, he goes on to say,  'Really happy you gave me this. Makes a guy feel appreciated, and all that. Then afterwards, when we went to track down Eddie's story, you were there for me. Prevented me from almost making a mistake of trying to be him, instead of myself.' His tail is wagging steadily behind his back, a clear indicator of the positive view the German shepherd holds for you.";
	SanBoost 3;

to say conf_Korvin_Talk05: [gender preference talk]
	say "     As you ask Korvin what he prefers sexually, the German shepherd looks at you with a raised eyebrow, then lets out an amused bark? 'Why're you asking, [K_Boss]? Is this for [italic type]personal[roman type] use or are we maybe gonna go out and hunt down some fun?' Exuberant wagging of his tail tells you that he's eager for either option, but he feels a special desire for some one-on-one time with yourself. Reaching out to grip his muscled shoulder and give the anthro a squeeze, you chuckle and tell him that you'll decide what'll go down when the mood strikes you. 'Fair enough,' Korvin replies with a grin. 'Well, I gotta say I love me some boobs. Big, round, and swaying back and forth as I hammer into the bitch's pussy. That's really, really hot!' To underline his point, he grips the base of his cock suggestively. 'And the more bitches the better! God, I wanna pound them all and put puppies inside them!'";
	say "     Raising an arm to scratch the back of his neck, your canine bodyguard glances aside, looking at you from the corner of his eye and putting on a sly grin. 'As for... other options, I'd say a hole is a hole, ya see? I mean, I'm no fag, but when you're out on the streets, and you've got a boy-bitch on his knees, tail up and just begging for it, of course you drain your balls in that!' Looking down at his crotch, you see the canine's half-hard cock slide another inch from his sheath. 'And a few of em are different too. I mean, I caught a dude one time that had a full-on pussy down below, so you never know what you're gonna get. Fucked that sexy slit so hard and saw him the next day with a swollen belly! And another guy that was all dude, I could smell there was something different there. Almost like a bitch in heat, hah! He was some sort of breeding fag, and I'm pretty sure I put some butt-babies in there, that was sweet!'";
	LineBreak;
	say "     Korvin doesn't bring up any pairing in which he wasn't the top, so you can conclude that he prefers that role above others. Still, given the immense status you've got in his mind, you don't think that he'd hesitate even a second to submit to it if it was you who wanted to make use of him that way. For all of his bluster and throwing around the word 'fag' regularly, the canine appears well-used to homosexual pairings too, so the way one might describe him is a 'no homo' bisexual - ready to go for it, but seeking to keep his manly reputation intact.";

to say conf_Korvin_Talk06: [talk about the city/situation]
	say "     As you ask Korvin about his view of the city and the nanite apocalypse in general, the German shepherd lets out a chuckle and shrugs. 'We're fucked, that's the truth of it. I mean, I know that my marbles are a little scrambled, what with most memories being blurry as shit, but what I can recall of the before-time... that stuff isn't gonna fly anymore in the new world. Hell, imagine someone trying to do a nine to five job these days. Before he'd be out of his garden and at the car, I bet the postwoman or some other needy slut would have him sprawled on the grass, slamming her pussy down on his shaft!' Adding some hip-thrusts and gestures with his hands that mime guiding a broad-hipped woman against his crotch, Korvin seems to fall for his imaginary fuck for a little while, before shaking off the image and focusing back on you.";
	say "     'Nah, the old days are gone, I tell you. Now it's all survival of the fittest here, and if I may say it, you've got that down well, [K_Boss]! Looking forward to everything we'll do together, you and me by your side, yeah!' A wide grin spreads over his muzzle and he holds out a bunched paw-hand for a fistbump that you return, nodding knowingly as your eyes meet. 'I've seen some army guys in the streets at times, so I guess they're trying to move in and take over, but really - half the time those dudes were getting their asses handed to them. Might have - ehem, face-fucked one myself that was knotted and ass-to-ass with a feral wolf. So, not putting too much stock in them getting their shit together, and I think they should better keep out of the way and not interfere with any plans you got, [K_Boss]!'";

to say conf_Korvin_Talk07: [immediate plans talk]
	say "     As you wonder aloud about what you should do next, Korvin steps closer and scratches his furry chin. 'Well, how about getting some more supplies? Not sure how stocked with food and water we are. You don't have to worry about me for that calculation by the way. I've learned how to make it on the streets, and this sniffer here is a great tool for that.' Patting the side of his muzzle and wiggling his nose at you, the German shepherd smiles. 'I'll find something to sate me on my own, just let me scavenge a little when you don't need me right that minute. As for other needs-' He grips his crotch while saying this, 'I think we should find some sexy bitches to fuck. Regularly! Got a whole city to choose from, so there's lots of opportunities!";

[
to say conf_Korvin_Talk_CarlDisagreement: [TODO: Add more DEPTH]
	if "Carl_Disagreement_Might" is not listed in Traits of Korvin and "Carl_Disagreement_Rules" is not listed in Traits of Korvin: [neither decision made]
		say "     As you mention Carl, the German shepherd grimaces, one hand-paw balling to a fist. 'Saw that, eh? Bah! What's there left to say? One moment we're watching a sexy lizard chick get boned, the next we're arguing. Damn, if we're strong and can take what we want, why shouldn't we? That's what you do. To make them give in!' The muscular canine turns his head to you, eyes seeing to meet yours. 'Isn't it, [one of]alpha[or]boss[or][K_Boss][at random]?'";
		say "     [bold type]What do you reply?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Yeah, he's right. You picked a tough street dog as your companion and don't want him to change!";
		say "     [link](2)[as]2[end link] - No. He's part of a pack now, your pack, and that has rules.";
		say "     [link](3)[as]3[end link] - No comment. Shrug it off for now.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to agree with him, [link]2[end link] to tell Korvin there are rules to follow or [link]3[end link] to shrug it off.";
		if calcnumber is 1:
			say "     Nodding and stroking over Korvin's head, then gripping him by the nape of the neck, you tell the anthro that might makes right. Just like you bested him and made him yours. Carl might have some other ideas, but Korvin doesn't have to let that stop him. You might just take him along out into the city and have fun sometime, like in the old days.";
			add "Carl_Disagreement_Might" to Traits of Korvin;
		else if calcnumber is 2:
			say "     Shaking your head as you reach out to grasp Korvin's upper arm, you tell the German shepherd that he isn't on his own anymore. Being part of your pack comes with rules, and you decide what goes and what doesn't. Snatching people from just outside the library isn't on the list, so Carl was right. Nervously reaching up to hook a finger under his collar, Korvin says, 'Well, fuck. So I was planning to go against the [one of]alpha[or]boss[or][K_Boss][at random]'s wishes, and on top of that Carl thinks I'm a bastard now.' Telling him that the question isn't what happened, but what he's planning to do about it, you watch the wheels behind Korvin's eyes start turning. Finally, he grimaces and says, 'I'm gonna have to apologize to Carl, I guess. Can I have some time to go out into the city, to find something for him? Not when you need me, just... in between, you know.' As you agree, he looks down at his paws and adds, 'Thanks, [one of]alpha[or]boss[or][K_Boss][at random].'";
			add "Carl_Disagreement_Rules" to Traits of Korvin;
			now lastCarlKorvinInteraction is turns; [timer for him finding an apology item counts from now on]
		else:
			say "     With a noncommittal grunt and a shrug of your shoulders, you postpone answering that question for now.";
	else if "Carl_Disagreement_Might" is listed in Traits of Korvin: [player chose to support Korvin's position]
		say "     As you mention Carl, the German shepherd just shrugs. 'What about him? I see now that he's a bit of a tame lapdog. No wonder he's always hanging out in the library instead out with you in the city. You need the stones to take what you want out there!'";
	else if "Carl_Disagreement_Rules" is listed in Traits of Korvin: [player told Korvin that there are rules]
		if lastCarlKorvinInteraction - turns < 16:
			say "     As you mention Carl, the German shepherd scratches the back of his neck. 'Still searching for something to give him as an apology. Gotta be the right thing, and come from me, you know.' Hearing that last sentence, you put the thought of just supplying Korvin with something fitting out of your mind. Seems he just needs some time.";
		else:
			say "     As you mention Carl, the German shepherd reaches up to rub his scar distractedly. 'I think I found something he'll like. Just gotta have some free time in the library to have a talk with him now.'";
]

Section 2 - Sexy Times

to say korvinsexmenu:
	if lastfuck of Korvin - turns < 6:
		say "     You fooled around not too long ago with the German shepherd. Perhaps you should give him a bit of a break before having sex with him again.";
	else if gsd_pet is 12:
		say "     Your gaze shifts to the German shepherd and you feel a growing arousal. You run your eyes up and down the buff male. Deciding he should provide some relief for the state of arousal he's put you in, you call him over and tell him to put his muzzle to work [if Player is male]sucking you off[else]eating you out[end if].";
		say "     He pauses and looks at you. 'So that's how it's going to be, is it?' he says before kneeling and nosing into your crotch. Despite that bit of grumbling, he sets himself to task with enthusiasm. His tongue lashes across [if Player is herm]your cock[smn] and cunt[sfn][else if Player is male]your cock[smn][else]your cunt[sfn][end if] several times before [if Player is male]taking your manhood into his warm maw[else]wriggling that doggy tongue into your cunny[end if]. You place a hand on his head, petting him lightly. He growls a bit at this and dips his ears, but doesn't stop - also wagging his tail a bit at the touch.";
		if Player is male:
			say "     You let him go to town on your cock[smn] for a while[if Cock Count of Player > 1], enjoying it as he swaps between them periodically[end if]. His slathering tongue and sucking muzzle are very nice, building your arousal higher. Eventually though, as your climax approaches, you're ready to set the pace. Grabbing his head with both hands now, you hold it steady and start thrusting. You rock your hips with increasing speed. Your [Cock of Player] manhood throbs in his [if Cock Length of Player > 24]stretched muzzle and throat[else if Cock Length of Player > 12]muzzle and throat[else]muzzle[end if] as precum leaks messily from your shaft. With a groan of release, your shaft is driven fully in and your [Cum Load Size of Player] load is [if Ball Size of Player > 4]blasted[else if Ball Size of Player > 3] shot[else]spurted[end if] into him[if Cock Count of Player > 2]. Your additional cocks splatter semen onto him as well[else if Cock Count of Player is 2]. Your additional cock splatters semen onto him as well[end if]. Once he's been fed your seed, you pull out and wipe your cock across his muzzle. He seems a bit grumpy about the rough treatment, but licks his dripping muzzle and wags his tail all the same.";
		else:
			say "     You let him go to town at your snatch[esfn] for a while[if Cunt Count of Player > 1], enjoying it as he swaps between them periodically[end if]. That lapping tongue of his is very enjoyable, building your arousal higher. Eventually though, as your climax is approaching, you're ready to set the pace and direct his actions. Pushing him back onto the ground, you kneel over his head and ride his face, grinding firmly. Your hot juices leak messily onto his muzzle as you tell him to lick deeper, or harder, or over your clit, as your quivering cunn[yfn] demand[sfv]. With a moan of release, you cum hard, soaking his lapping tongue and canine muzzle with your feminine fluids. Once he's been made to lick you clean, you climb off of him. He seems a bit grumpy about the rough treatment, but licks his wet muzzle and wags his tail all the same.";
		now gsd_pet is 13;
		now lastfuck of gshep is turns;
	else if gsd_pet is 13:
		say "[gshep_sexargue]";
		if gsd_pet < 14:
			now gsd_pet is 14;
		now lastfuck of gshep is turns;
	else if gsd_pet is 14:
		say "<***repeats for now>";
		now lastfuck of gshep is turns;
	else if gsd_pet is 15:
		if ( gshep_postfight + gshep_sexscene + gshep_bed_scene + gshep_inactive ) >= 5:
			say "     You're reminded of the fact that you plan to find a proper collar for this rowdy pet of yours. You think you should go to a [bold type]pet shop[roman type] and find one to put him in his place before any more of that.";
		else:
			say "     You're reminded of the fact that you plan to find a proper collar for this rowdy attack dog of yours. You think you should go to a [bold type]pet shop[roman type] and find one for him before any of that.";
	else if gsd_pet is 16:
		say "[gsd_collar_scene]";
	else if gsd_pet >= 20 and gsd_pet < 60: [subby Korvin]
		say "[subby_Korvin_sexmenu]";
	else: [confident Korvin, with gsd_pet >= 60]
		say "[conf_Korvin_sexmenu]";


Section 3 - Learning his Place

to say gshep_postfightargue:		[Post-fight argument]
	say "     Korvin comes up to you after the fight, clearly upset [if fightoutcome >= 10 and fightoutcome <= 19]despite the victory[else]with the way it went[end if]. 'What was that? You kept getting in my way out there. You're such a sloppy fighter that I'm surprised you've even lasted this long. You should know by now how I fight and be able to let me do my thing.' He's growls and grumbles as he continues into what you're doing wrong.";
	say "     [bold type]How do you respond to this?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Discipline him for his attitude!";
	say "     ([link]N[as]n[end link]) - Take his feedback seriously.";
	if Player consents:
		LineBreak;
		say "     Deciding you don't want to take more of his backtalk, you surprise him by grappling his arm and pinning it behind his back. Within moments, he's face first on the ground. In a harsh voice, you ask him if he calls this move sloppy fighting too. Pulling on his limb and making him grunt, you tell him that you're his alpha, and in charge. If anyone should adjust their fighting style, it's him who should aim to work with you. After all, you beat the stuffing out of him plenty before, so he'd best pull his head out of his ass and learn to obey!' Korvin struggles at first, but has to relent as you keep the dog pinned, and he grunts through clenched teeth, 'Fine! I give! Let me go, please!' You hold him in the uncomfortable position for a little while longer, until you're sure he's well and truly cowed, then eventually let him up.";
		say "     Taking advantage of having Korvin intimidated, you decide to give him some training of your own. He's right that the two of you should be able to better coordinate, but he'll be taking his queues from you. In addition to drilling several signals and fighting patterns into him, you add in more mundane dog obedience. He's demeaned as you make him sit, beg, roll over, bark or fetch on command. And while he clearly rankles at this, he cannot object lest he face harsher punishment from you. Only once you're satisfied that he understands and will follow your instructions, as well as his doggy training, do you end the session. Having made sure he'll coordinate with you, Korvin will now be able to work more effectively with you in combat.";
		now gshep_postfight is 2;
	else:
		LineBreak;
		say "     As he's revving up to go on about your faults as a fighter, you tell him that you'll hear him out - but only if he cans the attitude. Your firm response and stance cause him to check himself for a moment. Remembering who's in charge, he tones it back while giving you his feedback on your recent battles together. There's plenty of good points mixed in there with his bluster and, with some changes from you, the two of you are able to work out some techniques and patterns that complement each other's strengths and cover for any weaknesses either of you have. By the time you're done, Korvin seems better behaved. The opportunity to be heard and work with you seems to have helped him learn to be a bit more stable as well. This has been another step on his road to recovery as well as improving your ability to fight together in the future.";
		now gshep_postfight is 1;
	increase dexterity of gshep by 1;
	increase weapon damage of gshep by 1;
	now GShepLastScene is turns;
	if ( gshep_postfight > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 ):
		if (PlayerFucked of Korvin is true and gshep_sexscene > 0): [if the player didn't recruit him nonsexually, this event is also required]
			say "[gshep_collar_prompt]";
		else if (PlayerFucked of Korvin is false): [skipping the sex role argument if the player didn't have any sex with Korvin before]
			say "[gshep_collar_prompt]";
	WaitLineBreak;

to say gshep_sexargue:				[Sex role argument]
	say "     Feeling a rush of arousal, you decide to have Korvin help you deal with it. You run your eyes appreciatively over the German shepherd's studly body and lick your lips. Setting aside your gear, you prop one leg up on [if location of Player is Bunker or location of Player is Grey Abbey Library or location of Player is Grey Abbey 2F]a chair[else]some debris[end if] with your thighs spread. With a come-hither motion, you tell him to put that [if Player is male]fine muzzle[else]doggy tongue[end if] of his to work. He eyes your crotch with some interest, but manages to pull his eyes away and glare at you defiantly. 'Why don't you try and make me, jerkface? I'm not just some silly lapdog to [if Player is male]suck you off[else]lick your snatch[end if] whenever you want. What am I getting out of it and when do I get my turn? I got plenty of tail out there on my own!' he responds even as he strides towards you.";
	say "     [bold type]How shall you react to this insubordination from him?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Put him in his place!";
	say "     ([link]N[as]n[end link]) - Have some mutual fun.";
	if Player consents:
		LineBreak;
		say "     Rather than tolerate his lip, you step off your perch and advance on him. He makes a grab for you, but you've fought him enough to see it coming. Grabbing his arm as he swings it, you [if Player is male]trip him down to the ground[else]flip him onto his back[end if] - hard. Briefly stunned by the hard fall you pin him down and snag his collar. Twisting the rope in you grip tightens it, keeping him down. In a harsh tone, you remind him that you're the [master], the alpha, the boss. He'll get his turn whenever you say, and not before! Holding him down firmly as you speak, you then ask if he understood you. At first, Korvin remains defiant, but soon enough he dips his ears with a doggy whimper of submission. Giving a nod, you tell him that that's more like an obedient dog should act.";
		if Player is male:
			say "     With Korvin pinned beneath you like this, you decide you'd prefer to take advantage of the situation and grind your crotch against his butt. He gives another whimper, but his rear raises what little it can and his doggy tail flips up. Having already freed your cock, you grind it against the German shepherd's rear a few times before lining it up with that crinkled hole of his. You prod it a few times, allowing your pre to leak out to slicken it up. As it relaxes, you work it open a little more until you're able to thrust into the buff dog's ass. As you begin fucking the anthro, he starts to pant with arousal even as he tries to stay tough. You spot one of Korvin's paws move toward his crotch and push it away even as you shove your hips hard against his own, drilling your cock firmly against his prostate. Bringing your mouth next to his ear, you tell him that he may not jerk himself off, as a punishment for talking back. Any pleasure he'll get right now will come only from your cock inside his ass.";
			WaitLineBreak;
			say "     You ride Korvin's ass hard and fast, always working for your own pleasure over his. He's clearly enjoying it as well, but soon you're rushing toward your release while he's only about halfway there. By this point, he's moaning with need as his butt squeezes and tugs at your [Cock of Player] cock. You grin at the sight of him reduced to such a state and bury your meat in him one last time before releasing your hot load into his clenching bowels. With his [if Ball Size of Player > 4]belly bloated by your [Cum Load Size of Player] output[else if Ball Size of Player > 3]belly visibly plumped by your [Cum Load Size of Player] output[else if Ball Size of Player > 2]bowels stuffed by your [Cum Load Size of Player] output[else]bowels marked by your sticky output[end if], you pull out and use his fluffy tail to wipe your dick off. Your semen [if Ball Size of Player > 4]flows[else]leaks[end if] from his well-fucked hole, sticking to the fur of his thighs.";
			say "     Getting off him, you pull Korvin to his knees. His doggy dick is rock hard and drooling precum steadily after the rough and rapid fucking he's just received. With a firm stare right in his eyes, you tell him to remember the feeling of being this wound up without any release yet. Maybe he'll remember to be more respectful in the future if he wants to avoid similar treatments. He gives a whimper of need, arms trembling a little as he holds himself back from grabbing his painfully hard cock. After waiting a little more to let the lesson sink in, you eventually give him permission to finish himself off, sending the anthro canine off with a light swat on his messy butt.";
			NPCSexAftermath Korvin receives "AssFuck" from Player;
		else:
			say "     With him pinned under you like this, you decide you'd prefer to take advantage of the situation and grind your crotch down onto his. He pants softly as his dick, already semi-hard, emerges further from its sheath. Having already bared your snatch, you grind it across his stiffening rod, getting it slick with your juices before lining up with its glans. You tease him, only allowing the barest tip of his dick into your vagina for several rolls of your hips before finally sinking down onto it. As you begin to ride him, he starts to pant with arousal even as he tries to stay tough. The moment he goes to grab your ass and moves to thrust up into you though, you pull off, denying him your hot pussy. Bringing your mouth next to his ear, you tell him that he may not move or jerk himself off, as a punishment for talking back. Any pleasure he'll get right now will come only from you.";
			WaitLineBreak;
			say "     You sink back down onto him slowly, drawing it out and getting a whimper of need from him. You set yourself back to riding his thick dog dick. There a couple more false starts like this where he tries to thrust up into your snatch. You keep pulling off when he does and add a tug on his collar, and soon enough he's cowed into letting you use his cock like a dildo. You slide your cunt up and down that pulsing rod of his at your own pace, shifting speed and position as you desire. You always work it for your own pleasure over his. He's clearly enjoying it as well, but soon you're rushing toward your release while he's only about halfway there. By this point, he's moaning with need as his canine cock throbs. His knot is full and you can feel its heat eat time your wet lips press against it, but you stay off of it, denying the tie he clearly desires, but is not allowed to take. You grin at the sight of him reduced to such a state and clench firmly around his pole as you soak it with your orgasmic juices.";
			say "     You ride out your orgasm on his throbbing rod. Your feminine juices run down his pole, over his knot and balls as your hot cunny quivers on his cock. Feeling you cumming on his pole's gotten him close, but without the tie, it's not enough, leaving him blue-balled. Once you've had your fun, you rise slowly off of him and make a show of spreading your folds to show off your recently-fucked cunt and it's not messy with any of his sloppy seed. With a firm stare right in his eyes, you tell him to remember the feeling of being this wound up without any release yet. Maybe he'll remember to be more respectful in the future if he wants to avoid similar treatments. He gives a whimper of need, arms trembling a little as he holds himself back from grabbing his painfully hard cock. After waiting a little more to let the lesson sink in, you eventually give him permission to finish himself off, sending the anthro canine off with a light swat on his messy butt.";
			NPCSexAftermath Player receives "PussyDildoFuck" from Korvin;
		now gshep_sexscene is 2;
	else:
		LineBreak;
		say "     Rather than wait for him, you step off your perch and advance on him. When you meet, you derail his attempt to start a fight with a kiss. The two of you lock lips and soon you're groping and fondling one another. It's not long after that before you end up on the floor together. Still lusting for that [if Player is male]muzzle[else]tongue[end if] of his, you shift around to bring your crotch to his face. This comes with the added perk of putting his rising cock right within reach of your mouth. Clearing your throat and announcing that he'd get a lot farther by working with you rather than trying to antagonize his alpha, you then add that you'll give him a demonstration of what some devoted service might get him. With that, you bend your neck and give his dick a slow lick. As Korvin gives a soft moan, you go ahead and envelop his hard meat in your mouth, then start sucking on it in earnest. 'Yes, [master],' he replies before setting his muzzle to task licking your waiting loins. His long tongue slides over you, slathering your crotch with doggy drool.";
		if Player is male:
			say "     The dog's tongue plays across your [cock size desc of Player] shaft, working it over with increasing eagerness. And when he takes it into his muzzle to blow you, you reach down and give the dog an ear scritch while sucking his cock harder in return. The two of you go at it, blowing each other with growing vigor. In addition to how good it feels to have that tongue and muzzle of his working you over, sucking him off reminds of just how fine of a cock he's got. You lap up his precum, savoring the taste of his musky pre before swallowing it down. You do your best to get the German shepherd off, working to get a nice, big load from him as he does the same to you in return[if Cock Count of Player > 2]. He even makes sure to swap occasionally between your shafts, sucking one while using his paw on the others[else if Cock Count of Player is 2]. He even makes sure to swap occasionally between your shafts, sucking one while using his paw on the other[end if][if Cunt Count of Player > 1]. Your cunts aren't left out either, getting fingered by the lustful canine[else if Cunt Count of Player is 1]. Your cunt isn't left out either, getting fingered by the lustful canine[end if].";
			WaitLineBreak;
			say "     After working each other over for quite a while, you're both about ready to pop. Sucking firmly on Korvin's shaft, you fondle his balls, urging him to feed you his hot load. The muscular dog's rod pulses in your mouth only a few heartbeats later, sending spurt after spurt of gooey seed across your tongue. The taste of the musky treat is that last bit you need to get yourself off and you pump your [Cum Load Size of Player] load down his throat in return. Once you both have found down from your respective orgasm, and have licked the last drops of cum from each other's softening cock, the two of you separate and get up. With things between you much more amicable now that you've 'made up', you laugh and give his furry ass a light swat as the canine comes to stand relatively close, resulting in his tail speeding up in its happy wag. Korvin helps you gather your clothes and equipment, being quite eager to please in his blissful afterglow.";
			NPCSexAftermath Korvin receives "OralCock" from Player;
			NPCSexAftermath Player receives "OralCock" from Korvin;
		else if Player is female:
			say "     The dog's tongue plays across your juicy snatch, working it over with obvious eagerness. Bending one leg to better spread your thighs allows him to dive deeper and wriggle that slobbery tongue into your cunt. As reward, you reach down and the dog an ear scritch and suck his cock harder in return. The two of you go at it, both orally pleasing the other with growing vigor. In addition to how good it feels to have that tongue lashing about inside you, sucking him off reminds of just how fine of a cock he's got. You lap up his precum, savoring the taste of his musky pre before swallowing it down. You do your best to get the shepherd off, working to get a nice, big load from him as he pushes you to several small climaxes in return[if Cunt Count of Player > 2]. He even makes sure to swap occasionally between your cunts, lapping into one while using his paw on the others[else if Cock Count of Player is 2]. He even makes sure to swap occasionally between your cunts, lapping into one while using his paw on the other[end if].";
			WaitLineBreak;
			say "     After working each other over for quite a while, you're both about ready to pop. Sucking firmly on his meat, you fondle his balls, urging him to feed you his hot load. His rod pulses in your mouth before sending spurt after spurt of gooey seed across your tongue. The taste of the musky treat is that last bit you need to drive you to a powerful final orgasm that has your cunt quivering around his tongue, soaking it in your femcum. Once you both have found down from your respective orgasm, and have licked each other's loins clean, the two of you separate and get up. With things between you much more amicable now that you've 'made up', you laugh and give his furry ass a light swat as the canine comes to stand relatively close, resulting in his tail speeding up in its happy wag. Korvin helps you gather your clothes and equipment, being quite eager to please in his blissful afterglow.";
			NPCSexAftermath Korvin receives "OralPussy" from Player;
			NPCSexAftermath Player receives "OralCock" from Korvin;
		now gshep_sexscene is 1;
		now GShepLastScene is turns;
	if ( gshep_postfight > 0 and gshep_sexscene > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 ): [all four scenes complete]
		say "[gshep_collar_prompt]";

instead of going down from the Grey Abbey Library while gshep is tamed and ( gsd_pet is 12 or gsd_pet is 13 or gsd_pet is 14 ) and GShepLastScene - turns >= 4 and player is not neuter and (gshep_bed_scene is 0 or gshep_inactive is 0) and a random chance of 2 in 3 succeeds: [Discipline argument / inactivity argument]
	move player to bunker;
	if debugactive is 1:
		say "     DEBUG -> Korvin scene on bunker entry - Gsd_pet: [Gsd_pet] <- DEBUG[line break]";
	if gshep_bed_scene is 0 and lastfuck of gshep - turns >= 4 and ( a random chance of 1 in 2 succeeds or gshep_inactive > 0 ):
		if debugactive is 1:
			say "     DEBUG -> Korvin discipline scene - Gsd_pet: [Gsd_pet] <- DEBUG[line break]";
		say "[gshep_bedcrumbs]";
	else if gshep_inactive is 0 and lastfight of gshep - turns >= 12:
		if debugactive is 1:
			say "     DEBUG -> Korvin inactive scene - Gsd_pet: [Gsd_pet] <- DEBUG[line break]";
		say "[gshep_inactive_scene]";

to say gshep_bedcrumbs:
	say "     Stepping back into the bunker, you notice that Korvin is already in there. He's munching on some dog biscuits and, giving you a quick glance, plops himself down on your bunk. He continues to munch away on his crunchy treats, getting crumbs on your bed. You need to decide how to deal with this behavior.";
	say "     [bold type]What do you want to do with Korvin?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Put him on the floor like the dog he is.";
	say "     [link](2)[as]2[end link] - Playfully tussle with him.";
	say "     [link](3)[as]3[end link] - Playfully tussle with and fuck him.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to punish Korvin, [link]2[end link] to wrestle or [link]3[end link] to wrestle and fuck.";
	if calcnumber is 1: [punish]
		LineBreak;
		say "     As you stomp over to your bunk, he tries to remain nonchalant, but you can see his ears dip. Grabbing him by the rope collar, you yank him off the bed and push him down to the floor. His box of dog treats spills and, as he reaches for one of them, you just stomp on it. Growling that he's a bad dog, you tell Korvin in no uncertain terms that he's not allowed on your bed unless you say so, and especially not if he's dirtying it with food. Throughout your admonition, you keep a tight grip on his collar, preventing him from raising his head off the ground. Harshly, you wonder out loud if he's a dog at all, or maybe some sort of dirty, furry pig instead. He glances away, ashamed to meet your gaze.";
		say "     [bold type]What form shall his disciplining take?[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Some sexually arousing foot licking!";
		say "     [link](2)[as]2[end link] - Oral sex!";
		say "     [link](3)[as]3[end link] - Just make him pick up every single crumb, by hand!";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to let him lick your feet, [link]2[end link] to get some oral or [link]3[end link] to to let him pick the crumbs one by one.";
		if calcnumber is 1:
			LineBreak;
			say "     Pulling away the blanket that had halfway tumbled from the bed with Korvin, you very deliberately grind your bare foot down onto the dog treat fragments on the floor. You then press your crumb-encrusted foot upon his muzzle. As you loudly proclaim that Korvin has made a mess, and he needs to be the one to clean it up, you press your foot to his muzzle again, reinforcing which of them you mean for him to clean. His ears dip and he gives a little whimper, but his tongue comes out and starts lapping at your foot. His long, slobbery tongue slides all over, chasing after those biscuit fragments. As his tongue cleans you, you casually [if Player is male]stroke your cock[smn][else]finger your puss[yfn][end if]. His eyes are drawn to this and his tongue gets wetter with drool at the appetizing sight, but you keep him licking at your foot until you're ready to cum. Taking your well-licked foot away, you ";
			if Player is male:
				say "aim your cock[smn] down at him and [if Ball Size of Player > 5]hose him down with your copious seed[else if Ball Size of Player > 4]spray your load across his head and upper body[else]spray your load across his face and muzzle[end if]. He's left on the messy floor, sticking with your cum and littered with spilt dog treats - several of which have now been flavored by your semen.";
			else:
				say "pull his head closer as you cum. Your puss[yfn] squirt[sfv], spraying musky femcum across his muzzle. He's left on the messy floor, sticky with your juices and littered with spilt dog treats - several of which have now been flavored by your splattered juices.";
		else if calcnumber is 2:
			LineBreak;
			say "     Stripping any obstructing coverings from it, you bare your crotch and take a seat at the edge of the bed. With a firm hand on his rope collar, you pull his muzzle between your legs and order him to lick you like the dog he is. His ears dip and he gives a little whimper, but his tongue comes out and starts lapping at your [if Player is herm]dick[smn] and cunt[sfn][else if Player is male]cock[smn][else]cunt[sfn][end if] with an eagerness that makes you wonder just how much the tough dog is enjoying being put in his place. But you don't have a chance to dwell on that further as his tongue-work quickly gets you [if Player is herm]hard and wet[else if Player is male]hard[else]wet[end if]. Keeping a firm hold on him, you have him lick you until you're ready to cum before ";
			if Player is male:
				say "pushing him back with your foot. You aim your cock[smn] down at him and [if Ball Size of Player > 5]hose him down with your copious seed[else if Ball Size of Player > 4]spray your load across his head and upper body[else]spray your load across his face and muzzle[end if]. He's left on the messy floor, sticking with your cum and littered with spilt dog treats - several of which have now been flavored by your semen.";
				NPCSexAftermath Korvin receives "OralCock" from Player;
			else:
				say "tug his head back a few inches from his prize while fingering yourself quickly to finish. Your puss[yfn] squirt[sfv], spraying musky femcum across his muzzle. He's left on the messy floor, sticky with your juices and littered with spilt dog treats - several of which have now been flavored by your splattered juices.";
				NPCSexAftermath Korvin receives "OralPussy" from Player;
		else if calcnumber is 3:
			say "     Pulling away the blanket that had halfway tumbled from the bed with Korvin and shaking it out, you stand over the anthro German shepherd and tell him that you expect the bunker floor to be spotless in short notice. And no, he may not use a broom. Between his sloppy chewing, the box of dog treats falling onto the ground and now crumbs being shook onto the floor, that means that the anthro has his work cut out for him. He looks up at you, maybe to protest, or beg for leniency, but your firm expression and the shake of your head tell him that there's no way around what he earned for himself. Under your watchful eye, he spends the next twenty minutes on all fours, picking up every little crumb anywhere and 'checking' beneath other beds just to make sure. By the end of it, the canine has somewhat messy, dusty fur, and is suitably cowed after annoying you.";
		now gshep_bed_scene is 2;
	else if calcnumber is 2: [playful wrestling]
		LineBreak;
		say "     Seeing a playful defiance in his attitude, you approach the bed and point to the floor. Then you tell him to get off the bed, and that he shouldn't get crumbs everywhere. Korvin meets your firm gaze with a huff and replies, 'Why don't you make me?' Then he exaggeratedly chomps on another dog treat while leaning back. Seeing how it's going to be, you shove him back onto the bunk and hold him down. This knocks the box of dog biscuits from his hand, spilling several on the floor. He gives a little growl at his and barks, 'Oh, now it's on!' while giving you a moderately strong push, aiming to make you fall onto the bed beside him. Soon the two of you are wrestling and play-fighting on and around your bed with the occasional snarl and light snap from the defiant canine.";
		say "     You've proven yourself his better in the past and now is no different. In the end, he can't beat you and ends up pinned face-down beneath you. You hold him with one hand on his shoulder and the other around that snapping muzzle. Your voice full of victorious glee, you ask if the anthro is ready to admit his defeat, with Korvin mumbling, 'Nevah!' through a mostly closed muzzle. Saying that he brought what comes next on himself, you then proceed to move both of your hands to his armpits and start to tickle him mercilessly, making the dog spasm and writhe under you, unable to escape the tickling fingers. The excitement of the mock-fight thus ends in laughter between the two of you, with Korvin eventually patting out and calling uncle for you to stop. His provocation with the dog treats thus has been quite effectively countered, as you made Korvin stop without any unduly harshness. In the end, he's grinning himself as he acknowledges your win, and even brushes what crumbs are visible on your bed off.";
		now gshep_bed_scene is 1;
	else if calcnumber is 3: [playful wrestling & sex]
		LineBreak;
		say "     Seeing a playful defiance in his attitude, you approach the bed and point to the floor. Then you tell him to get off the bed, and that he shouldn't get crumbs everywhere. Korvin meets your firm gaze with a huff and replies, 'Why don't you make me?' Then he exaggeratedly chomps on another dog treat while leaning back. Seeing how it's going to be, you shove him back onto the bunk and hold him down. This knocks the box of dog biscuits from his hand, spilling several on the floor. He gives a little growl at his and barks, 'Oh, now it's on!' while giving you a moderately strong push, aiming to make you fall onto the bed beside him. Soon the two of you are wrestling and play-fighting on and around your bed with the occasional snarl and snap from the defiant canine.";
		if Player is male:
			say "     You've proven yourself his better in the past and now is no different. In the end, he can't beat you and ends up pinned face down beneath you. You hold him with one hand on his shoulder and the other around that snapping muzzle. During the playful struggle, your gear and clothes have ended up being removed as well, leaving you free to grind your now stiff cock against his rear. With the excitement of the mock-fight to get his blood pumping, his tail raises out of the way as your dick prods his rear and even wags a little. You can't help but grin at the moan the tough dog tries to muffle as your [Cock of Player] cock sinks into his butt. Bottoming out inside him draws an aroused whine from Korvin, and you tease him that this must have been what he wanted in the first place. His ears dip at your words, and if he didn't have fur you think he'd be blushing right now. And with your hand clamped around his muzzle, he can't bluster or deny it either.";
			WaitLineBreak;
			say "     Continuing to tease him that you're giving him the doggy treat he really wanted, you grind your hips against his ass and bury your cock in him, eliciting another needy moan. While you may have started slow, you end up giving him the rough pounding he seems to desire. By the point you release his muzzle to better support yourself on the mattress for hard thrusting, he can only pant, whimper and moan like the horny hound he is. He pushes back into your thrusts, grinding his dick against the bedding and you know he must be rock hard. He even ends up cumming shortly before you, blushing all the more as you taunt the tough guy about it. After shooting your load into his clenching hole, he's left sticky with cum both on his front and his behind and your bunk is even more the mess. Giving his rope collar a tug, you order him to clean up the mess he's made of your bed.";
			say "     You wait for a little while to catch your breath, then get up and tell Korvin that he's had enough lazing about, giving his well-pounded rear a light slap. Korvin climbs out of the bed and obediently cleans up your bunk and the floor around it without delay or backtalk[if Ball Size of Player > 5]. For a while he ends up making more mess on the floor behind himself than he's cleaning up, as he leaves frequent dribbles of your semen behind himself as he goes[else if Ball Size of Player > 4], though he does have to go over some spots twice as he leaks semen from his well-used bottom for a time[end if].";
			NPCSexAftermath Korvin receives "AssFuck" from Player;
		else:
			say "     You've proven yourself his better in the past and now is no different. In the end, he can't beat you and ends up pinned on his back beneath you. You hold him with one hand on his shoulder and the other around that snapping muzzle. During the playful struggle, your gear and clothes have ended up being removed as well, leaving you free to grind your now wet pussy against canine shaft. With the excitement of the mock-fight to get his blood pumping, his dick's emerged and throbs harder as you press down onto it. You can't help but grin at the needy whimper the tough dog tries to muffle as your juicy cunt grinds against his shaft. Smiling as you tease him, you say that this must have been what he wanted in the first place. His ears dip at your words, and if he didn't have fur you think he'd be blushing right now. And with your hand clamped around his muzzle, he can't bluster or deny it either. Then you shift your hips to slide across his shaft again, eliciting another needy moan.";
			WaitLineBreak;
			say "     While you may have started with just the teasing grinding, you soon move to give his pulsing rod entry and start riding him hard. By the point you release his muzzle to better support yourself on his strong chest, he can only pant, whimper and moan like the horny hound he is. He thrusts up into you as you slam down, finally pressing his knot into your juicy cunt. Grabbing him by the rope collar, you order him to cum and, already at the edge of release, his body obeys. Feeling his hot load shooting into your cunt, you orgasm after the first few spurts and end up milking on his pulsing rod for all he's got. As soon as you're able to pull free from the knot, you pull off of the dog's dick. The excess semen flows out, much of it making a mess on and between his thighs as well as your bunk. Giving his rope collar a tug, you order him to clean up the mess he's made of your bed.";
			say "     You wait for a little while to catch your breath, then get up and tell Korvin that he's had enough lazing about, giving his well-rounded rear a light slap. Korvin climbs out of the bed and obediently cleans up your bunk and the floor around it without delay or backtalk.";
			NPCSexAftermath Player receives "PussyFuck" from Korvin;
		now gshep_bed_scene is 1;
	now GShepLastScene is turns;
	if ( gshep_postfight > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 ):
		if (PlayerFucked of Korvin is true and gshep_sexscene > 0): [if the player didn't recruit him nonsexually, this event is also required]
			say "[gshep_collar_prompt]";
		else if (PlayerFucked of Korvin is false): [skipping the sex role argument if the player didn't have any sex with Korvin before]
			say "[gshep_collar_prompt]";

to say gshep_inactive_scene:
	now GShepLastScene is turns;
	say "     Korvin had been staring out a window in the library, but rushes over to you as you enter the bunker. Grabbing your shoulder as you step onto the stairwell landing, he turns you around. 'What do you think you're doing going inside? The action's out there,' he growls, pointing toward the exit to the outdoors. 'Look! I agreed to this because I thought I'd get some action[if PlayerFucked of Korvin is true] - and not just sex[end if]. I want a fight. My talents are wasted just sitting around.'";
	say "     [bold type]What do you want to do with him?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Make him cool his jets.";
	say "     ([link]N[as]n[end link]) - Accept his request and take him out to find a fight.";
	if Player consents:
		LineBreak;
		say "     Rather than take his guff, you grab him by his rope collar and slam him back against the concrete wall. You can hear the old paint flaking from the wall as it gets caught in his fur. He seems about ready to fight you, but you glare at him hard and tighten your grip. Then you tell the anthro in no uncertain terms that you're in charge and decide if and when you'll go out. His attitude won't fly, not now and especially not if you eventually get out of the city. After giving Korvin a firm shake, you toss him to the floor and shout that if he's so ready for a fight, he can fight you, right here and now. But then, both of you know how that would go. Faced with the rage of his alpha, Korvin has to back down. He slinks back on all fours, head down and tail between his legs. He edges slowly out of the bunker as you stomp towards him and lay out that you expect obedience from the dog he is, to fight when you tell him to fight, to fetch your slippers when you say that[if PlayerFucked of Korvin is true] and to be ready for a fuck when you're in the mood for that too[end if]. You let that sink in for a few seconds before turning away, going back into my bunker.";
		now gshep_inactive is 2;
	else:
		LineBreak;
		say "     Seeing the way his paws are clenching into fists and how he's fidgeting from foot to foot, you decide he could use a chance to blow off some steam. You pause a bit to remind him that it's your decision before nodding and telling him to get ready. He gives a growl of anticipation and smacks a fist into his palm a few times. 'I've been ready all day.' You add that you'll agree this one time, but that he'll have to be more self-controlled in the future - he's not a wild dog anymore. He nods and takes a breath, settling down a little before fist-pumping. 'Come on! Let's do this thing!'";
		ForceCompanionJoin "Korvin";
		now battleground is "Outside";
		say "     Once outside, the dog goes sniffing for a fight, chasing after the first interesting trail he comes across. You follow him as he soon leads you to an encounter with a roaming denizen of the city.";
		WaitLineBreak;
		fight;
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Korvin seems quite pleased now that he's gotten out. The fight's taken the edge off that pent of energy of his and satisfied his aggressive streak for the moment. 'That was great, chief. It feels good to go out and bust some heads every now and again.' You remind him again that if he's going to be your dog, he's got to be able to rein that in... at least until you need to call on it. Once you're rescued, he'll be no good to you or anyone if he can't. 'Right, boss. Gotta save the fight for when it counts. Gotcha.' He seems to take your feedback to heart, recovering a bit of self-control over his infection's urges.";
		else if fightoutcome >= 20 and fightoutcome <= 29:
			say "     Korvin, driven back as the fight was lost, comes back to rejoin you. He helps you up and seems uncharacteristically nice. You have to guess he feels a bit guilty for getting you into a losing battle. You also suspect he'll keep a tighter rein on those aggressive urges from now on. You give him a soft pat on the back and ruffle his headfur and ears. He gives a laughing growl and elbows you in the ribs.";
		else:
			say "     When you fall back, Korvin's forced to flee as well. He seems upset about you running away and is about to snap at you when you just glare at him. It's his fault you ended up in that fight in the first place and he knows it. In the end, his ears drop and he lowers his head in hangdog expression. It's clear he knows he'll have to show more self-control over his aggressive urges if he's going to be of use to you.";
			decrease morale of Player by 5;
		say "     When the two of you return to the library, he goes to find somewhere to curl up. You know he won't always do so patiently, but you're confident he'll wait until called upon from now on. You continue on into the bunker, getting back to what you were doing before.";
		now gshep_inactive is 1;
		ForceCompanionDismiss "Korvin";
	if ( gshep_postfight > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 ):
		if (PlayerFucked of Korvin is true and gshep_sexscene > 0): [if the player didn't recruit him nonsexually, this event is also required]
			say "[gshep_collar_prompt]";
		else if (PlayerFucked of Korvin is false): [skipping the sex role argument if the player didn't have any sex with Korvin before]
			say "[gshep_collar_prompt]";


to say gshep_collar_prompt:
	if ( gshep_postfight + gshep_sexscene + gshep_bed_scene + gshep_inactive ) >= 5:
		say "     Thinking it over, you've done quite a bit of work training that independent streak out of Korvin. Perhaps it's time to find a proper collar for your cowed dog - something suitable to put the tough bitch in his place. You'll have to keep your eyes open for a [bold type]pet shop[roman type] where you might find one.";
	else:
		say "     Thinking it over, you've done quite a bit of work training Korvin to accepting his new role. Perhaps it's time to find a proper collar for your attack dog. He'd probably like something suitably butch to match his tough-guy attitude. You'll have to keep your eyes open for a [bold type]pet shop[roman type] where you might find one.";
	now gsd_pet is 15;

to say gsd_collar_scene:
	setmonster "German Shepherd Male";
	if ( gshep_postfight + gshep_sexscene + gshep_bed_scene + gshep_inactive ) >= 5:
		say "     Approaching Korvin, you pull out the bag holding his new collar and call him to heel. Thanks to your training, he knows to respond promptly. Showing the shepherd the frilly pink collar you've picked for him, his ears dip and he starts to object, but drops his head beneath your firm gaze. His ears dip lower as you notice how he's getting hard. His embarrassment grows, as does his erection. You slip the girly collar around his strong neck, adjusting it to fit. Clearing your throat, you tell him that it is a reminder of you owning him, and that no matter how much of a big, though dog he was out there on the streets, deep down he's your doggy toy now! You emphasize this last bit by fondling his manhood possessively while clicking the pink leash onto the collar.";
		WaitLineBreak;
		if graphics is true:
			project the figure of Korvin_pinkcollar_face_icon;
		if Player is male:
			say "     After running him through a few dog tricks, you finish it with 'Raise tail'. The once-obstinate dog moves obediently onto all fours and presents his ass to you. He looks back at you, blushing at the ears, but those ears are raised and his tail wags with obvious eagerness as well. You are quite pleased with his training and how he's come to accept his submissive position beneath you - in more ways than one. It doesn't take long for Korvin to start panting and moaning after you've mounted him and are thrusting into his toned butt. Despite his past protestations, you know the dog's a slut for a good ass-fucking and it's time he accept that fact. You thrust into him, varying from slow and sensual to fast and hard, making his body quiver all the while, but never quite enough to get him off.";
			WaitLineBreak;
			say "     You tease him throughout your fuck session, calling on Korvin to say that he loves his alpha's shaft up his rear, to admit that he's a slutty puppy and this is just what he needs. All the while, you keep a firm grip on his leash, tugging on it when you don't get the reply you want. In the past, he might have tried struggling to get you to get on top or at least get you to angry-fuck him to finish, but the obedience training holds. His arrogant nature has him resist the final admission, but eventually he has to give in, begging for you to fuck him until he cums. Demanding more, you grope and squeeze his balls while grinding your cock [if Cock Length of Player > 12]deep[else]fully[end if] inside him. 'I'm your subby puppy,' he moans. 'Please fuck your puppy, [master]!' With a victorious smile, you call him a good boy, and tell him that good boys get to cum. Taking his cock in hand, you pump it while pounding him. You're both pushed to a powerful orgasm that leaves him [if Ball Size of Player > 4]bloated with an outpouring of his virile alpha's seed[else if Ball Size of Player > 3]stuffed and leaking his alpha's plentiful seed[else]gooey with his alpha's seed slowly leaking from his rear[end if].";
			NPCSexAftermath Korvin receives "AssFuck" from Player;
		else:
			say "     After running him through a few dog tricks, you finish it with 'Roll over'. The once-obstinate dog moves obediently onto his back, baring his belly to you. He looks back at you, blushing at the ears as you pet his tummy like a common dog, but his ears are raised and his tail wags with obvious eagerness as well. You are quite pleased with his training and how he's come to accept his submissive position beneath you - in more ways than one. Straddling him, you grind down onto his stiffening member. With your hot pussy gliding wetly along his shaft, it's not long before he's panting and moaning, but you don't move to allow his cock entry. You vary your pace, sometimes slowly slipping along the throbbing member and other times holding in place and simply pressing down upon it. This teasing makes his body quiver and his doggy dick throb with need, but it's nowhere near enough to get him off.";
			WaitLineBreak;
			say "     You tease him throughout your fuck session, calling on Korvin to admit he'd love to bury his bone in his alpha's hot, needy snatch. And all he has to do to be allowed that is callout that his body is yours to play with, always. Continuing the tantalizing foreplay, you keep a firm grip on his leash all the while. In the past, he might have tried thrusting into you, but the obedience training holds. His arrogant nature has him resist the admission, but eventually he has to give in, begging for you to ride and use him. Demanding more, you reaching back to grope and squeeze his balls while grinding down onto his meaty shaft with your [if Cunt Tightness of Player > 18]ample[else if Cunt Tightness of Player > 6]wet[else]tight[end if] snatch. 'I'm your subby puppy,' he moans. 'Please fuck your puppy, [master].'";
			say "     With a victorious smile, you call him a good boy, and tell him that good boys get to fuck. Taking his cock in hand, you angle it up before sinking down onto it. Finally allowed entry into your hot depths, it's wonderfully hard and thick. You both want it bad at this point and so you ride him fast. You're both pushed to a powerful orgasm that has him fill your womb with so much of his gooey canine seed. It, along with plenty of your own juices, pours out across his knot and balls as you rise up off of his spent shaft.";
			NPCSexAftermath Player receives "PussyFuck" from Korvin;
		WaitLineBreak;
		say "     After taking a few moments to catch your breath after that long-delayed release, you notice the chew bone you'd gotten for him. You give it a few squeezes, making it squeak in front of his face. His ears perk up and his muzzle follows it around as you wave it in front of him. Giving it a toss, you tell him to go fetch it. He scrambles onto all fours and chases after it, snatching the little thing up in his muzzle and returning it. He's blushing at the ears with embarrassment at his actions, but he obediently drops the toy into your hand. Since you're both worn from the sex, you don't play long, but his tail's wagging strongly. This'll be a fun way to both tease the big dog and to let him burn off some of that excess energy when not going into the city.";
		now gsd_pet is 20; [Subby Korvin]
	else:
		say "     Approaching Korvin, you pull out the bag holding his new collar and call him over to you. Hearing your command, he responds promptly, eager for an opportunity to perhaps fight or fuck. Showing the German shepherd the studded leather collar you've picked for him, his ears perk up at the unexpected surprise. You smile at him and say that he earned something better than the frayed old rope leash, untying and replacing it with the leather collar. Putting your hand on his shoulder and squeezing it, you say that he's officially your attack dog now, and everyone will know that just by his new, shiny collar. Reaching up and feeling the leather band around his neck, Korvin's chest swells a little, and he strikes a pose full of swagger, as if trying it out for his next fight out on the streets.";
		WaitLineBreak;
		if graphics is true:
			project the figure of Korvin_blackcollar_face_icon;
		if PlayerFucked of Korvin is true: [fucked around before, so he expects and wants it]
			say "     Then suddenly, an uncertain expression flashes over his features and the anthro looks at you and licks his lips distractedly. 'Uhm... with this attack dog title and all. That doesn't mean that things are gonna change between us, right, Alpha?' he asks, trying to sound gruff about it, but there's a bit of hopeful eagerness in his tone that he can't quite hide. Your response is to attach the leash with one hand and fondle him with the other. His sheath grows firm and his cock quickly starts to emerge. ";
			if Player is male:
				say "It only takes a casual tug on his leash to get him to move onto all fours. Knowing what's being asked of him and eagerly reacting, he raises his tail and sets his paws firmly. Despite the fuss he sometimes makes, you know the butch dog likes having your cock in his ass, so you don't keep him waiting beyond a few light prods at his back door[if Cock Length of Player > 24]. As you push your [cock size desc of Player] meat into him, you give those firm buns of his a squeeze. You reassure him that he's a tough dog and can take your cock as you work to fully slide your large pole into him[else]. As you ease your [Cock of Player] cock into him, you give those firm buns of his a squeeze. You tell him proudly that he's a good dog as you bury your pole into him[end if]. He nods, accepting the praise and tightens those firm glutes, clenching around your shaft for a moment before releasing.";
				say "     Enjoying the warm grip of his butt, you move your hands to stroke his sides and then around to grip his manhood as you start thrusting. You work your hips steadily, sliding your cock in and out of the sexy dog. He starts to pant from the pleasure despite his attempts to hide it, but you know how much he's come to enjoy being taken by you. You tell him again that he's a good dog and thrust harder, delighting in how his cock stiffens up and his balls throb as you do so. The two of you enjoy a long, sensual rut while you play with the shepherd's manhood. He's hard and dripping the whole time, his cock twitching with every deep thrust into his clenching hole. As his climax is approaching, you tease your fingertip across his leaking glans.";
				WaitLineBreak;
				say "     Teasingly, you ask him to tell you how much he loves his alpha's dick[if Cock Length of Player > 24] and that he's such a good dog for taking it all[else] and that he's such a good dog for taking it like a champ[end if], all the while pounding into him hard and reducing any reply to just helpless moans. At this point, he's beyond trying to act aloof. 'So good, Alpha. Nggg... gotta cum,' he moans. True to his word, his asshole clamps down around your meat, practically milking at it as his balls draw up repeatedly and his shaft pulses. With each pulse, comes a powerful blast of canine semen that splatters across the ground beneath him. Having his hot hole squeezing your rod while the scent of doggy cum fills the air is more than enough to put you over the top and you cum hard into him. In the end, he's left [if Ball Size of Player > 4]bloated with an outpouring of his virile alpha's seed[else if Ball Size of Player > 3]stuffed and leaking his alpha's plentiful seed[else]gooey with his alpha's seed slowly leaking from his rear[end if] and obviously pleased with himself.";
				NPCSexAftermath Korvin receives "AssFuck" from Player;
			else:
				say "You strip down and move onto all fours before giving his leash a casual tug. Being allowed to mount you, he does so without hesitation. After a few grinds of his big doggy cock between your buns and across your folds, he lines up and sinks it into you. Moaning from taking his dick, you tell Korvin that he's a good boy and can expect rewards like this for obeying his alpha. As he pounds into you with his usual zeal, there is a greater attempt to please and satisfy you as well. One of his paw caresses your side, cups your breast, teases your nipple or rubs your clit at times, rather than the rough groping he's more prone to giving. He is really turning into a better canine companion.";
				say "     The two of you go at it like this, fucking like horny dogs, until he's about to blow. With an extra[if Cunt Tightness of Player < 6 or Cunt Depth of Player < 6]-strong[end if] push, he pops his thick know into you and unloads. You can feel every hot blast of the German shepherd's thick seed, loving how it pools warmly inside you, trapped by his knot. By the time meaty bulb has gone down, much of it has been [if gestation of child > 0]absorbed[else]drawn into your womb[end if], though there's still plenty left to leak out and show what a virile dog you have.";
				NPCSexAftermath Player receives "PussyFuck" from Korvin;
			WaitLineBreak;
		say "     Noticing the discarded rope, you tie several knots in it, turning it into a rope tug toy. Brushing it past the dog's muzzle entices a playful growl and a few snaps from him. Getting a good grip on it with his muzzle, you end up in a tugging match with him. [if PlayerFucked of Korvin is true]Since you're both worn from the sex, you don't play long, but [else]You continue to play for some time, and Korvin [end if]he seems to find it quite satisfying. It works quite well and should be a helpful means to let him burn off some of that excess energy and aggression when not going out into the city.";
		now gsd_pet is 60; [Confident Korvin]

Section 4 - Confident Korvin Sex

[----------------------------------]

to say conf_Korvin_sexmenu:
	say "     You motion Korvin over and ask him if he's in the mood for some fun. '[one of]Sure, boss!' he says with a lusty grin[or]Whatcha got in mind?' he asks cautiously, his tail unconsciously tucking over his rear[or]Alright, I guess,' he says, trying not to seem interested despite a raised and wagging tail[or]I guess I could go for a fuck,' he says, with an offhand shrug as his tail perks up[or]Definitely! This bad boy could use some relief,' he says, pointing down to his stiff doggy dick[at random]. He moves up beside you and runs a paw over your chest, waiting for you to decide what you're in the mood for.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him doggy style";
		now sortorder entry is 1;
		now description entry is "Get the buff dog on all fours and mount that tight ass of his";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Fuck him on his back";
		now sortorder entry is 2;
		now description entry is "Get the buff dog to roll over and take it";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ride that doggy pole (vaginal)";
		now sortorder entry is 3;
		now description entry is "Have a round bouncing on his canine cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride that doggy pole (anal)";
	now sortorder entry is 4;
	now description entry is "Stuff that canine cock of his into your ass";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to take you (vaginal)";
		now sortorder entry is 5;
		now description entry is "Give the buff dog the freedom to make use of your body";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tell him to take you (anal)";
	now sortorder entry is 6;
	now description entry is "Give the buff dog the freedom to make use of your body";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Blow job (receiving)";
		now sortorder entry is 7;
		now description entry is "Have him put that muzzle of his to use on your cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Blow job (giving)";
	now sortorder entry is 8;
	now description entry is "Reward your loyal dog by allowing him to face-fuck you";
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
				if nam is "Fuck him doggy style":
					say "[conf_Korvin_sex01]";
				else if nam is "Fuck him on his back":
					say "[conf_Korvin_sex02]";
				else if nam is "Ride that doggy pole (vaginal)":
					say "[conf_Korvin_sex03]";
				else if nam is "Ride that doggy pole (anal)":
					say "[conf_Korvin_sex04]";
				else if nam is "Tell him to take you (vaginal)":
					say "[conf_Korvin_sex05]";
				else if nam is "Tell him to take you (anal)":
					say "[conf_Korvin_sex06]";
				else if nam is "Blow job (receiving)":
					say "[conf_Korvin_sex07]";
				else if nam is "Blow job (giving)":
					say "[conf_Korvin_sex08]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the German shepherd, shaking your head slightly as he gives a questioning look.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	wait for any key;
	clear the screen and hyperlink list;

to say conf_Korvin_sex01: [fuck Korvin's ass doggystyle]
	say "     Wanting a go at the hot ass of the strong, confident canine, you move a hand to his butt and give it a squeeze. Korvin's ass is firm and muscular, with soft fur that feels quite nice under your fingers. Clipping his leash on with your other hand, you tell the tall anthro to get on all fours[one of]. His ears dip a bit, knowing what's coming, but his tail raises and he moves obediently enough into position[or]. 'Alright, ya big fag,' he grumbles as he moves into position with his tail already up and swaying[or]. 'Alpha's privilege,' he says with a nod and a sigh, though he's certainly speedy getting down onto the ground[at random]. You tease a finger across his pucker in a slow circle, teasing the tight ring a little. Korvin's up-turned tail starts to wag slowly as he reaches back to spread his cheeks, ass rising a little further in response to his [K_Boss]'s touch.";
	say "     Smiling at the thought what a good dog the former street thug has become, you gather a gob of spit, letting it drip onto your fingers to smear over Korvin's hole and lube him up at least a little bit. Then you move into position behind him, lining your [Cock of Player] cock up with the target of his quivering tail-star. With a lusty grunt, you ease your [cock size desc of Player] meat into him. Korvin replies with a [if Cock Length of Player > 24]moaning whimper at your great size, but his ass accepts you anyway[else if Cock Length of Player > 16]moaning whimper at your impressive size as you push into his ass[else if Cock Length of Player > 8]long moan as you push inch after inch into his ass[else]soft moan as your shaft slides into his ass[end if]. The anthro German shepherd's insides are hot and tight, but yield to his alpha's cock readily enough. At the same time, you reach around to fondle your companion's manhood and praise him about how great he feels around your cock. Korvin's ass gives your meat a squeeze in response and his hips push back a little. Knowing he's ready for more, you smile and start thrusting. His inner walls clench warmly around your dick at the end of every thrust.";
	WaitLineBreak;
	say "     While fucking your muscled doggie, you work your hand over that canine rod of his, enjoying the warmth of it lying in your grasp. In his arousal, Korvin's manhood throbs, starting to leak pre-cum and showing his pleasure at being fucked. You brush your fingertips across his pointed glans, getting them wet with the slick fluid before gliding them along his shaft and squeezing Korvin's knot. As the lustful romp progresses, his rod dribbles and more and more pre, which you smear over his red pole. You can tell he's really enjoying it, and more than just the hand job from the way his dick pulses at every prod across his prostate. [one of]'Damn, pound me alpha!' [or]'God, feels fucking great!' [or]'Master, ram my hole!' [at random]the German shepherd gasps, his tail by now swishing left and right in a clear show of pleasure.";
	say "     Feeling your own release coming, you hasten your pace and thrust energetically into the canine's rear. Up till now, he mostly managed to stifle his moans and panting, but with you driving your meat hard and fast into him, he can no longer fully restrain himself and starts panting through his open muzzle. Still, even at this point, he manages to hold back his own orgasm until your own. As your hot cum begins to flood into his ass, thick throbs of your erection delivering a creamy load to paint his insides, Korvin responds by cumming right along with you. His ass practically milks at your cock with every hard spurt of canine seed he shoots out onto the floor. You end up leaving your studly dog [if Ball Size of Player > 6]with a bloated belly of your cum by the time you're done and pull out[else if Ball Size of Player > 5]with a visible tummy bump because of all your cum by the time you pull out[else if Ball Size of Player > 3]stuffed and leaking your hot cum by the you're done and pull out[else]panting and sticky by the time you pull out[end if]. Making especially sure to pet the anthro dog, you praise him for being such a good pet and sweet fuck. He can't help but smile and give a happy tail wag. [one of]'Sure thing, master!' [or]'Anything for the alpha!' [or]'For you, I'd do anything!' [at random][line break]";
	NPCSexAftermath Korvin receives "AssFuck" from Player;

to say conf_Korvin_sex02:
	say "     Wanting a go at the hot ass of the strong, confident canine, you move a hand to his butt and give it a squeeze. Korvin's ass is firm and muscular, with soft fur that feels quite nice under your fingers. Clipping his leash on with your other hand, you tell the tall anthro to get on his back and spread those legs for you[one of]. His ears dip a bit, knowing what's coming, but a wagging tail betrays that he's actually fairly excited as he moves into position[or]. 'Alright, ya big fag,' he grumbles, mostly for show, as a wagging tail betrays that he's fairly excited as he moves into position[or]. 'Alpha's privilege,' he says with a nod and a sigh, though he's certainly speedy getting down onto the ground and his tail is wagging[at random]. You kneel between the muscular canine's legs and brush a finger across his pucker in a slow circle, teasing the tight ring a little. Korvin's tail starts to thump against the ground as he responds to his [K_Boss]'s touch and raises his hips invitingly.";
	say "     Smiling at the thought what a good dog the former street thug has become, you take hold of his red rocket of a canine cock, stroking up and down along its length. Korvin grunts as he starts getting jerked off, tongue lolling out of his muzzle as his arousal mounts rapidly. This brings with it a steady trickle of pre-cum welling up at the slit of his erection, which you wipe up with two fingers of your free hand and smear over his quivering tailstar. 'Man, that is super gay! Using me own pre to lube me up.' the though dog grumbles quietly, voice a little breathless and lust-filled. He hurriedly shakes his head as you ask if he'd prefer no lube instead, so you continue milking his dick for a little while and pushing your slick fingers against his back door, dipping inside more than a few times and teasing little spurts of pre from him as you lightly press his prostate.";
	WaitLineBreak;
	say "     After a long while of playing with your dog, you finally line your [Cock of Player] cock up with the target of his slick, relaxed hole. With a lusty grunt, you ease your [cock size desc of Player] meat into him, watching an expression of wanton need appear on his face. Korvin lets out a [if Cock Length of Player > 24]moaning whimper at your great size, but his ass accepts you anyway[else if Cock Length of Player > 16]moaning whimper at your impressive size as you push into his ass[else if Cock Length of Player > 8]long moan as you push inch after inch into his ass[else]soft moan as your shaft slides into his ass[end if]. The anthro German shepherd's insides are hot and tight, but yield to his alpha's cock readily enough. At the same time, you wrap your companion's manhood in a tight grasp and praise him about how great he feels around your cock. Korvin's ass gives your erection a squeeze in response and his lips curl up in a satisfied grin. Knowing he's ready for more, you smile and start thrusting. His inner walls clench warmly around your dick at the end of every thrust.";
	say "     While fucking your muscled doggie, you work your hand over that canine rod of his, enjoying the warmth of it lying in your grasp. In his arousal, Korvin's manhood throbs rhythmically and the additional pre-cum trickles over your fingers now that you're no longer wiping it off. You spread the slick fluids along his length, getting him lubed up with nothing more than his own fluids, all the way down to the base where you squeeze Korvin's knot. As the lustful romp progresses, his rod continues to dribble and more and more pre, telling you that he's really enjoying it, dick pulsing hard at every prod across his prostate. [one of]'Damn, pound me alpha!' [or]'God, feels fucking great!' [or]'Master, ram my hole!' [at random]the German shepherd gasps, his tail by now swishing left and right in a clear show of pleasure.";
	WaitLineBreak;
	say "     Feeling your own release coming, you hasten your pace and thrust energetically into the canine's rear. Up till now, he mostly managed to stifle his moans and panting, but with you driving your meat hard and fast into him, he can no longer fully restrain himself and starts panting through his open muzzle. Still, even at this point, he manages to hold back his own orgasm until your own. As your hot cum begins to flood into his ass, thick throbs of your erection delivering a creamy load to paint his insides, Korvin responds by cumming right along with you. His ass practically milks at your cock with every hard spurt of canine seed he shoots up over his chest, making a sticky mess out of his ab- and pec-fur. You end up leaving your studly dog [if Ball Size of Player > 6]with a bloated belly of your cum by the time you're done and pull out[else if Ball Size of Player > 5]with a visible tummy bump because of all your cum by the time you pull out[else if Ball Size of Player > 3]stuffed and leaking your hot cum by the you're done and pull out[else]panting and sticky by the time you pull out[end if]. Making especially sure to pet the anthro dog, you praise him for being such a good pet and sweet fuck. He can't help but smile and give a happy tail wag. [one of]'Sure thing, master!' [or]'Anything for the alpha!' [or]'For you, I'd do anything!' [at random][line break]";
	NPCSexAftermath Korvin receives "AssFuck" from Player;

to say conf_Korvin_sex03: [riding Korvin's cock (vaginal)]
	say "     Wanting to feel that big cock of your strong, muscular bodyguard in your snatch, you tell him to lay down while fingering your pussy. 'Your alpha wants to bury that hard bone of yours in her hot cunny, pup,' you say, petting his head and tugging on his neck-fur a little in a show of playful dominance. 'Hot damn!' Korvin exclaims in reply, and picking up on your challenging words and gesure, he meets your gaze and replies with some push-back. 'But I'm no pup, as your soon-to-be-wrecked pussy is going to find out,' he says, a broad grin on his face as he starts to work a paw over his rapidly hardening canine pole. With him being the confident dog you've encouraged him to be, a little play-talk is just the thing to get your doggy going! His arousal makes for a very appealing sight and you see no reason in waiting any further.";
	say "     Eagerly swatting Korvin's ass, you order him to get into position, [if Player is not naked]stripping down [else]touching yourself a little [end if]while he does so. Then you step forward over the canine, sinking down to straddle him and run your hands over his strong chest. Korvin strokes the side of your arm with one hand while his free hand wraps around the base of his dick, aiming it up towards your dripping cunt. You [if Cunt Depth of Player > 16]slam down onto it, your roomy vagina engulfing it[else if Cunt Depth of Player > 8]slam down onto it, pushing it into your hot vagina[else]lower yourself down onto it, working to take the whole of it into your vagina[end if] with an extended moan of ecstasy.";
	WaitLineBreak;
	say "     You ride the German shepherd's long, pointy cock, sliding up and down its length in a very pleasurable grind. Then suddenly, Korvin begins to buck his hips up in counterpoint, forcing the already a little enlarged knot-bulge at the base of his cock into you. [one of]'That feel like a pup's, [K_Boss]? I don't think so!' [or]'Yeah, moan my name! I know you like this bad boy all the way in there!' [or]'Ready to give it all to you, alpha!' [at random]His movements push him hard into you each time, often forcing moans or whimpers of sexual delight past your lips, as the virile male makes your lust soar. His canine penis feels great inside you, rubbing against so many sensitive spots as you wriggle and grind atop it.";
	say "     The two of you go at it hot and heavy, complete with him stroking and fondling your chest and [if player is male]erection[else]clit[end if]. With the flame of your lust burning in a sizzling inferno, it is only a question of time before Korvin finally groans out loud, blasting shot after shot of puppy batter into your clenching cunt while you cry out in orgasmic release. His knot swells up all the way, locking the two of you together and prolonging his orgasm from the tight squeeze of your hole around it. You do your best to push him even further, flexing your inner muscles around his cock and milking him for all he'll give before finally relaxing and sinking down over the panting male. After a moderately long while of just lying there with your trusty canine, his bulge eventually does down far enough for you to pull off his spend shaft. Making especially sure to pet the anthro dog, you praise him for being such a good pet and sweet fuck. He can't help but smile and give a happy tail wag.";
	NPCSexAftermath Player receives "PussyFuck" from Korvin;

to say conf_Korvin_sex04: [riding Korvin's cock (anal)]
	if Player is male or Player is neuter:
		say "     Feeling the desire to have that big cock of your strong, muscular bodyguard in up your ass, you tell him to lay down [if player is not naked]while starting to undress[else]while reaching back to run a finger up between your buttocks[one of]. His eyebrows rise a bit and Korvin shakes his head with a chuckle. 'You're one kinky bastard. Let's do it!' [or]. 'Alright, ya big fag,' he replies with an amused grumble. [or]. 'Alpha's privilege,' he says with a nod and a wag of his tail. [at random]With that said, the anthro German shepherd gets into position, sinking down to the ground and laying back, taking care to align his tail in a comfortable position. ";
	else: [player has a pussy]
		say "     Feeling the desire to have that big cock of your strong, muscular bodyguard in up your ass, you tell him to lay down [if player is not naked]while starting to undress[else]while reaching back to run a finger up between your buttocks[one of]. His eyebrows rise a bit and Korvin shakes his head with a chuckle. 'You're one kinky bitch. Let's do it!' [or]. 'Alright, but why don't we just use your other hole?' he replies with an amused grumble. [or]. 'Alpha's privilege,' he says with a nod and a wag of his tail. [at random]With that said, the anthro German shepherd gets into position, sinking down to the ground and laying back, taking care to align his tail in a comfortable position. ";
	say "Glancing up at you, he wraps a hand around the pointy canine shaft as it push out of his sheath more and more when getting hard. Looks like your canine companion is ready for some action! Stepping a little closer after dropping your gear, you tell him with a grin that he'll need to lube himself up for you. Korvin's eyebrows pull together for a second and he moves a hand as if to pat a pocket, the gesture being a holdover from the time before he was comfortable in just his own fur.";
	say "     'Er, I don't have any, and... oh!' the canine starts to say, then groans. 'You know, being able to suck yourself is great and all, but I'd still rather have a bitch or fag do it rather than smoke my own dick!' Despite a little eyeroll and protest, Korvin pushes himself up on his elbows, then further and further, curling his upper body forward. Showing an easy flexibility that proves he's far from human, the German shepherd brings his muzzle to his crotch and starts to lap at his erection, slathering it with spit. You watch him obediently prepare himself for a little while, then tell him that he's a good puppy and his alpha wants to ride the red rocket now. 'You and every bitch out there, hah!' Korvin exclaims in reply, meeting your gaze as he adds with a broad grin, 'But I'm no pup! Better watch out or you'll wreck your hole on his bad boy!'";
	WaitLineBreak;
	say "     Stretching back out on the floor, Korvin humps his hips up demonstratively and starts to work one paw over his slick canine pole. With him being the confident dog you've encouraged him to be, a little play-talk is just the thing to get your doggy going! His arousal makes for a very appealing sight and you see no reason in waiting any further. Eagerly moving to stand over him, you sink down to straddle your faithful dog and run your hands over his strong chest. Korvin strokes the side of your arm with one hand while his free hand wraps around the base of his dick, aiming it up towards your waiting hole. Lowering yourself just a little more, you feel the tip brush against your buttocks and be guided in, touching your pucker a second later. The pointy tip of his nonhuman cock serves very well to open up your hole, sliding past your pucker accompanied by a moan in both of your voices.";
	say "     You ride the German shepherd's long, pointy cock, sliding up and down its length in a very pleasurable grind[if player is male] that makes his shaft rub your prostate so very good[end if]. Then suddenly, Korvin begins to buck his hips up in counterpoint, forcing the already a little enlarged knot-bulge at the base of his cock into you. [one of]'That feel like a pup's, [K_Boss]? I don't think so!' [or]'Yeah, moan my name! I know you like this bad boy all the way in there!' [or]'Ready to give it all to you, alpha!' [at random]His movements push him hard into you each time, often forcing moans or whimpers of sexual delight past your lips, as the virile male makes your lust soar. His canine penis feels great inside you, rubbing against so many sensitive spots as you wriggle and grind atop it.";
	WaitLineBreak;
	say "     Going at it hot and heavy, Korvin proceeds to stroke and fondle your chest and [if player is male]erection[else]clit[end if]. With the flame of your shared lust burning in a sizzling inferno, it is only a question of time before Korvin finally groans out loud, blasting shot after shot of puppy batter into your trembling hole while you cry out in orgasmic release only a few heartbeats later. [if player is male]Your [cock of player] erection throbs with cum shooting up from your balls, painting white streaks across Korvin's heaving chest. [end if]At the same time, his knot swells up all the way, locking the two of you together and prolonging his orgasm from the tight squeeze of your hole around it. You do your best to push him even further, flexing your inner muscles around his cock and milking him for all he'll give before finally relaxing and sinking down over the panting male. After a moderately long while of just lying there with your trusty canine, his bulge eventually does down far enough for you to pull off his spend shaft. Making especially sure to pet the anthro dog, you praise him for being such a good pet and sweet fuck. He can't help but smile and give a happy tail wag. 'Anytime, [one of]alpha[or]boss[or][K_Boss][at random]!'";
	NPCSexAftermath Player receives "AssFuck" from Korvin;

to say conf_Korvin_sex05: [be fucked by Korvin (vaginal)]
	say "     In the mood for something a little wilder than just making use of the stud of a German shepherd you broke in to be your attack dog, you reach down and cup Korvin's balls. Fondling the anthro, you praise him for his virility and strength, which draws a chuckle from Korvin. 'What'cha doing, [one of]alpha[or]boss[or][K_Boss][at random]? You don't have to charm the pants off me, not wearing any!' With a smirk, you reply that you were wondering about his days out on the streets, with him going after whoever he liked. Sniffing a receptive bitch on the wind and hunting her down, then using those firm muscles you're feeling up right now to push his newest conquest onto the ground. 'Yeah, that's what it was like. Most of the time. Right up until a certain someone wiped the floor with me and, you know, put a collar on this doggo...' Meeting his gaze, you tell him that you'd kinda like to get the full experience of the old Korvin, just for a little while.";
	say "     Korvin lets out a puzzled grunt, 'Err, what? Are you messing with me now? Did I do something wrong?' In response, you run your hand along his shoulder and neck, saying that you actually want to reward him for being such a good bodyguard. Let him run wild to have fun. Looking at you, still hesitating, the canine replies, 'But things will still be the same between us afterward, right? Alpha and pack bro forever?' As you smile and nod, giving Korvin a comforting squeeze of the shoulder, he immediately relaxes and you feel his balls twitch under your fingers as his cock throbs in arousal. 'Man, life with you sure doesn't get boring! You sure you can handle me? I'm gonna go all out!' Visibly excited, tail wagging and cock standing proudly erect with a bead of pre-cum forming at the tip, the German shepherd's expression gains an undertone of lust and hunger as he looks you up and down.";
	say "     [bold type]Do you really want to do this?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Reach up and take the collar off him.";
	say "     ([link]N[as]n[end link]) - Change your mind and tell him you were just teasing him.";
	if Player consents:
		LineBreak;
		say "     After putting all of your gear into a little pile to the side, you return to Korvin, lean in and start to feel for the collar's clasp up behind his neck. While doing so, you wonder aloud just how many litters he put into all of his conquests, betting that there must have been a lot from such a virile dog as him. The German shepherd chuckles and nods his head, saying with a smirk, 'Oh yeah, always gave me a kick to see one of them girls a day later, carrying a swollen belly in front of them! Pounced on the bitch right then and there, because what's she gonna go? Waddle away? And a week or so later, there'd be all new little sluts in the neighborhood, ripe for the picking!' With the German shepherd licking his chops at the mere thought, you loosen the studded band around his neck, allowing Korvin to reach up and pull it off. The dog's grin widens and starts to show of his canine-like teeth while his eyes focus a hungry gaze at you.";
		say "     Korvin does take a few seconds to buckle the leather band again and goes to carefully set the symbol of both his own status, as well as submission, down on top of your gear. Then suddenly, the muscular dog whirls around, letting out a sharp bark that makes you twitch in surprise. 'What? Did you think I wouldn't smell what's between your legs as you stroll through my turf? [if Breast Size of Player is 0]Might almost look like a dude, with that flat chest and all, but you can't fool the nose! [end if]Damn, I love how needy and stupid you bitches get when you're in heat! Just strolling around and drawing the attention of every horny dude with a nose worth anything!' With that, the anthro dog struts up to you, clamping his paw-hand around your jaw and forcing you to look him in the eyes. 'Can't believe someone else hasn't snatched you up before, and filled that box with his pups! At least you were smart enough to not try to fight, so I [']might['] even let you go after we have some fun!'";
		WaitLineBreak;
		say "     [if player is not naked]Huffing out a breath, the German shepherd says, 'Let's see what we got!' he forcefully strips you down to the buff in a few moments, casually flinging your clothes to land somewhere close to your other gear. [else]'Huffing out a breath, the German shepherd says, 'Like to bare it all, eh? I like that in a slut, makes em['] so readily fuckable!' [end if]Korvin's hands wander over your body, his paw-pads a little rough on your skin as he feels you up. [if player is purefemale]'Not bad, street-bait! And already wet too! Knew you were just asking for it!' [else if Cock Length of Player < Cock Length of Korvin]'Not bad, street-bait! And already wet too! Admit it, on the inside you're just asking to be made a proper bitch. I'll make you forget that you even have that puny little dick!' [else]'Big bitch, eh? Well, that counts for shit if you're a needy slut on the inside. Damn, I can feel how wet you are, just asking to be fucked! I'll make you whimper my name!' [end if]Nodding down to his crotch where a well-sized, red, canine shaft is standing proudly erect, pointy tip down to the still fairly small bulge of what will become his knot, Korvin watches your reaction to the sight closely, a slight sneer on his face. 'On all fours... now! It's time to fuck!' he adds, giving you a little shove to get you moving.";
		say "     Dropping to your knees and lowering your front to assume the position, you hear the German shepherd chuckling behind you. 'Love me an obedient fucktoy!' Korvin adds, then gives your raised ass a moderately strong slap. A second later, you feel the hot length of his erection brush against your buns, followed by the muscular dog's shaft being bent down to the opening between your legs. With his pointy dickhead brushing over your wet folds and making you shiver in arousal, a needy moan passes your lips, drawing a chuckle from the male anthro. 'You know you want it!' he comments in a husky tone, followed by pushing his shaft into your body. 'Gonna spread that pussy wide!' he growls, sliding himself deep and making you gasp at the sudden invasion of your sex. 'Moan for me, [if Breast Size of Player is 0]cuntboy[else if player is male]boy-bitch[else]bitch[end if], and squeeze those muscles around my cock!' he growls in a lusty tone, blunt claws digging into the sides of your hips as he grinds his crotch against you. The weighty pair of nuts in his furry sack rub against your skin, promising a virile load soon to come.";
		WaitLineBreak;
		say "     In and out, Korvin starts to hump your rear with rapid thrusts, making use of his newest conquest to his heart's content. While he may be only focused in his own pleasure, having our pussy filled can't help but excite you, with that thick, warm shaft pounding in and our hard and hitting [if player is male]your prostate again and again[else if player is female]your clit with his swinging balls, stimulating you[end if]. 'They all fall into line, you know. Even the uppity bitches that try to resist!' Korvin says with audible amusement as he hears the rising pitch of your moans, followed by some especially deep thrusts to really push you. Without ever being touched, since you have to brace yourself against the ground to withstand the hammering you're receiving, [if player is male]your [cock of player] shaft goes as hard as it can down between your legs, drooling pre-cum from its cum-slit[else if player is female]you feel your clit tingle and femcum literally dripping from your moist folds[end if].";
		say "     The fact that you're giving in to him sexually all the way seems to motivate Korvin further, and where he was just thrusting his hips against you before, now the German shepherd lowers his whole anthro body on top of you. Arms wrapping around your chest from behind, [if Nipple Count of Player is 0]he [else if Breast Size of player is 0]he gropes your flat chest and pinches your nipples, then [else]he massages your [Breast Size Description of Player] [one of]breasts[or]boobs[or]tits[at random], then [end if]hooks both hands over your shoulders to get a good grip for a whole series of balls-deep thrusts. The soft fur of his toned chest rubs against your back and you can feel his breath warmly on your neck. Panting of the dominant canine fills your ears as he fucks you hard and oh so very deep, and his wet nose bumps into your skin more than a few times, so close is he pressing against you as he mounts his new bitch. Then suddenly, you feel his thrusts pause for a second and hear him take a deep, huffed breath.";
		WaitLineBreak;
		say "     [if player is mpreg_ok and player is not purefemale]'Mmmh! I can smell it on you, can't believe I didn't realize before! You're one of them breeding fags! One puppy-hole not enough for you, eh? Had to get an ass-pussy too, hah! Man, forget what I said before, you're staying right with me from now on. I'm gonna love breeding litters in you! I wonder if you can get knocked up front and back at the same time' A paw-hand slides down to your belly, feeling it possessively. 'Soon this will swell with my sons!' [else]'Hah, you smell like a needy little bitch! Maybe I should keep you after all! Make you pop out a whole harem of little sluts for me!' [end if]Korvin proceeds to lick your neck and behind your ear, as if to add another claim on top of the fact that he's balls-deep inside you. Then the pause is over and he jumps right back into power-fucking your vagina hard and deep, all the while keeping his muzzle right next to your head and filling your ears with grunts or gasped exclamations of 'Good bitch', 'Take it', 'Love that hot snatch' and the like. His relentless pace quickly builds up to an almost nonstop assault of your quivering opening, all leading up to the climactic moment in which he suddenly clamps his predator's teeth around the nape of your neck, the ultimate sign of canine dominance.";
		say "     A loud, lusty growl fills Korvin's throat and you can feel it vibrate through his chest, just as you can feel his erection pulse inside you as virile cum paints your insides white. With every twitch of his shaft, your hole stretches a little, pushing your arousal along. His furry balls rub your skin with every hard throb that goes through them, and the bulge at the base of his cock starts to fill out rapidly. With a frantic thrust, he forces it inside your hole, just in time for it to lock your bodies together and [if player is sterile]futilely [end if]trying to guarantee conception. The German shepherd keeps a very tight grip around your chest and his teeth on your neck hold you in place while he grinds his crotch against your rear. While in the process of breeding you, it seems that his instincts rule the man completely, and only animalistic growls of arousal pass his lips. Feeling yourself be claimed like this, with more of his seed filling second by second, you feel strongly submissive urges bubble up inside you[if player is not submissive] that you didn't know you had[end if].";
		WaitLineBreak;
		say "     Moments later, you tremble in the grasp of your new master and orgasm right along with him, [if player is male]your cock spewing long strings of cum to cover the ground beneath you[else if player is female]your pussy quivering and flexing as if wishing his cock was inside your other hole, and femcum gushing out, spattering the ground beneath[end if]. While you're still riding out the sensations of your climax, Korvin finds his words again and says, 'Yeah, that's right! Give in my little slut! Only I can make you cum like that! You, I'll not leave wandering the streets like those other casual bitches I've had. Gonna stay right with me from now on, because I want more of his!' followed by a series of licks over your neck and the side of your face. He keeps doing that for a long while, holding you, licking you and murmuring words into your ears, mostly about you belonging to him now and how good of a fuck you were.";
		say "     Eventually, when your individual orgasms have long died down and the blissful high of sex has made way for just the comfort of being held, you feel Korvin soften his grip and raise himself from laying on your back. While his knot has shrunk far enough to allow for an easy withdrawal, the dog still pulls out slowly, almost gently, accompanied by a gush of cum dripping from between your nether lips. Then suddenly, you can feel a warm, wet tongue brush over your folds and dip in between them. The sensations of being licked clean draw pleased pants from your lips and you push back against him, enjoying this very different finish to a wild romp with the muscular anthro. You can't help but sigh as he pulls back once satisfied that he licked you well, then stands up and walks over to the pile of your gear. You get to your feet just in time for Korvin to return, holding his collar in his hands as he sinks into a crouch before you.";
		WaitLineBreak;
		say "     'Was I a good dog?' he asks, looking up at you and offering the leather band with both hands, almost looking a little afraid that you might not put it back on him. The sight puts a warm smile on your face and you stroke Korvin's head, then firmly grab the back of his neck as you lean down to tell him that he was a [italic type]very[roman type] good dog. Taking the collar, you unclasp it and lay the band around his neck. Tightening it to snugly lie around your trusted bodyguard's neck, you stroke a finger along his jawline to make him look up and into your eyes, then squeeze his shoulder and nod for him to help you collect your gear from there it lies. With the studded collar again around his neck, Korvin's cocky attitude is back in a heartbeat, and he jumps up to follow your command with a grin and the words, 'Sure thing, [one of]alpha[or]boss[or][K_Boss][at random]!'";
		if "Dominant_Roleplay_Fuck" is not listed in Traits of Korvin: [memory of having fucked a willing player]
			add "Dominant_Roleplay_Fuck" to Traits of Korvin;
		NPCSexAftermath Player receives "PussyFuck" from Korvin;
	else:
		LineBreak;
		say "     With an annoyed groan, Korvin throws his hands up, then sighs. 'Man, you sure had me going there for a moment. Cruel thing to do to a guy, but then again, guess that's your right [one of]alpha[or]boss[or][K_Boss][at random].' Blowing out a deep breath, he wanders off for a little while, returning once he's taken care of his hardon.";

to say conf_Korvin_sex06: [be fucked by Korvin (anal)]
	say "     In the mood for something a little wilder than just making use of the stud of a German shepherd you broke in to be your attack dog, you reach down and cup Korvin's balls. Fondling the anthro, you praise him for his virility and strength, which draws a chuckle from Korvin. 'What'cha doing, [one of]alpha[or]boss[or][K_Boss][at random]? You don't have to charm the pants off me, not wearing any!' With a smirk, you reply that you were wondering about his days out on the streets, with him going after whoever he liked. Taking them down and using those firm muscles you're feeling up right now to push his newest conquest onto the ground. 'Yeah, that's what it was like. Most of the time. Right up until a certain someone wiped the floor with me and, you know, put a collar on this doggo...' Meeting his gaze, you tell him that you'd kinda like to get the full experience of the old Korvin, just for a little while.";
	say "     Korvin lets out a puzzled grunt, 'Err, what? Are you messing with me now? Did I do something wrong?' In response, you run your hand along his shoulder and neck, saying that you actually want to reward him for being such a good bodyguard. Let him run wild to have fun. Looking at you, still hesitating, the canine replies, 'But things will still be the same between us afterward, right? Alpha and pack bro forever?' As you smile and nod, giving Korvin a comforting squeeze of the shoulder, he immediately relaxes and you feel his balls twitch under your fingers as his cock throbs in arousal. 'Man, life with you sure doesn't get boring! You sure you can handle me? I'm gonna go all out!' Visibly excited, tail wagging and cock standing proudly erect with a bead of pre-cum forming at the tip, the German shepherd's expression gains an undertone of lust and hunger as he looks you up and down.";
	say "     [bold type]Do you really want to do this?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Reach up and take the collar off him.";
	say "     ([link]N[as]n[end link]) - Change your mind and tell him you were just teasing him.";
	if Player consents:
		LineBreak;
		say "     After putting all of your gear into a little pile to the side, you return to Korvin, lean in and start to feel for the collar's clasp up behind his neck. While doing so, you wonder aloud about all the people he must have fucked in the ass out there. The German shepherd grins at your words and gives a meaningful nod. Soon, the studded band around his neck loosens and Korvin reaches up to pull it off, his grin widening and starting to show of his canine-like teeth now. He does take a few seconds to buckle the leather band again and goes to carefully set the symbol of both his own status, as well as submission, down on top of your gear. Then suddenly, the muscular dog wirls around, letting out a sharp bark that makes you twitch in surprise. 'What? Did you think you could just stroll through my turf? Fat chance!' With that, the anthro dog struts up to you, clamping his paw-hand around your jaw and forcing you to look him in the eyes.";
		say "     'Can't believe someone else hasn't bitch-broken you before if you're just wandering around! At least you were smart enough to not try to fight, so I [']might['] even let you go after we have some fun!' [if player is not naked]Huffing out a breath and saying, 'Let's see what we got!' he forcefully strips you down to the buff in a few moments, casually flinging your clothes to land somewhere close to your other gear. [else]'Huffing out a breath and saying, 'Like to bare it all, eh? I like that in a slut, makes em['] so readily fuckable!' [end if]Korvin's hands wander over your body, his paw-pads a little rough on your skin as he feels you up. [if player is purefemale]'Not bad, street-bait! But I'm in the mood for some ass right now!' [else if player is neuter]'Not bad, street-meat!' [else if Cock Length of Player < Cock Length of Korvin]'Not bad, street-meat! Let's see how you take a [italic type]real[roman type] cock!' [else]'Big bitch, eh? Well, that counts for shit if you don't know how to use it. I'll make you whimper my name!' [end if]Nodding down to his crotch where a well-sized, red, canine shaft is standing proudly erect, pointy tip down to the still fairly small bulge of what will become his knot, Korvin watches your reaction to the sight closely, a slight sneer on his face. 'On all fours... now! It's time to fuck!' he adds, giving you a little shove to get you moving.";
		WaitLineBreak;
		say "     Dropping to your knees and lowering your front to assume the position, you hear the German shepherd chuckling behind you. 'Love me an obedient fucktoy!' Korvin adds, then gives your raised ass a moderately strong slap. A second later, a gob of spit lands in the crack between your buns, followed by the muscular dog's shaft being slapped against your rear. It gets lined up with your pucker and the tip of his red rocket brushes your opening in a warm, wet touch. This is your only warning before Korvin start to push inside you. 'Let's open this tight hole up for me!' he growls, pushing as fast as you can take it and making you gasp at the invasion of your rectum. 'Moan for me, [if player is male]boy-[end if]bitch, and squeeze those muscles around my cock!' he growls in a lusty tone, blunt claws digging into the sides of your hips as he grinds his crotch against you. The weighty pair of nuts in his furry sack rub against your skin, promising a virile load soon to come.";
		say "     In and out, Korvin starts to hump your ass with rapid thrusts, making use of his newest conquest to his heart's content. While he may be only focused in his own pleasure, somehow you can't help but feel pleasure start replacing the pain of his first entry before much longer, as the hard pounding he lays down hits [if player is male]your prostate again and again[else if player is female]your clit with his swinging balls, stimulating you[else]your crotch with his swinging balls, stimulating you[end if]. 'Knew you'd fall into line, slut!' Korvin says with audible amusement as he hears you moaning the first time, followed by some especially deep thrusts to really push you. Without ever being touched, since you have to brace yourself against the ground to withstand the hammering you're receiving, [if player is male]your [cock of player] shaft goes as hard as it can down between your legs, drooling pre-cum from its cum-slit[else if player is female]you feel your clit tingle and femcum literally dripping from your moist folds[else]you feel your pubic mound tingle like crazy, all without any outlet of your lusts due to your genderlessness[end if].";
		WaitLineBreak;
		say "     The fact that you're giving in to him sexually all the way seems to motivate Korvin further, and where he was just thrusting his hips against you before, now the German shepherd lowers his whole anthro body on top of you. Arms wrapping around your chest from behind, [if Nipple Count of Player is 0]he [else if Breast Size of player is 0]he gropes your flat chest and pinches your nipples, then [else]he massages your [Breast Size Description of Player] [one of]breasts[or]boobs[or]tits[at random], then [end if]hooks both hands over your shoulders to get a good grip for a whole series of balls-deep thrusts. The soft fur of his toned chest rubs against your back and you can feel his breath warmly on your neck. Panting of the dominant canine fills your ears as he fucks you hard and oh so very deep, and his wet nose bumps into your skin more than a few times, so close is he pressing against you as he mounts his new bitch. Then suddenly, you feel his thrusts pause for a second and hear him take a deep, huffed breath.";
		say "     [if player is mpreg_ok and player is not purefemale]'Mmmh! I can smell it on you, can't believe I didn't realize before! You're one of them breeding fags! Man, forget what I said before, you're staying right with me from now on. I'm gonna love breeding litters of pups in you!' A paw-hand slides down to your belly, feeling it possessively. 'Soon this will swell with my sons!' [else]'Hah, you smell like a needy little bitch! Maybe I should keep you after all! Make you pop out a whole harem of little sluts for me!' [end if]Korvin proceeds to lick your neck and behind your ear, as if to add another claim on top of the fact that he's balls-deep inside you. Then the pause is over and he jumps right back into power-fucking your ass hard and deep, all the while keeping his muzzle right next to your head and filling your ears with grunts or gasped exclaimations of 'Good bitch', 'Take it', 'Love that ass' and the like. His relentless pace quickly builds up to an almost nonstop assault of your quivering hole, all leading up to the climactic moment in which he suddenly clamps his predator's teeth around the nape of your neck, the ultimate sign of canine dominance.";
		WaitLineBreak;
		say "     A loud, lusty growl fills Korvin's throat and you can feel it vibrate through his chest, just as you can feel his erection pulse inside you as virile cum paints your insides white. With every throb of his shaft, your hole stretches a little, pushing your arousal along. His furry balls rub your skin with every hard throb that goes through them, and the bulge at the base of his cock starts to fill out rapidly. With a frantic thrust, he forces it inside your hole, just in time for it to lock your bodies together and [if player is not mpreg_ok]futilely [end if]trying to guarantee conception. The German shepherd keeps a very tight grip around your chest and his teeth on your neck hold you in place while he grinds his crotch against your rear. While in the process of breeding you, it seems that his instincts rule the man completely, and only animalistic growls of arousal pass his lips. Feeling yourself be claimed like this, with more of his seed filling second by second, you feel strongly submissive urges bubble up inside you[if player is not submissive] that you didn't know you had[end if].";
		say "     Moments later, you tremble in the grasp of your new master and orgasm right along with him, [if player is male]your cock spewing long strings of cum to cover the ground beneath you[else if player is female]your pussy quivering and flexing as if wishing his cock was inside your other hole, and femcum gushing out, spattering the ground beneath[else]sensations of pleasure pulsing through your body[end if]. While you're still riding out the sensations of your climax, Korvin finds his words again and says, 'Yeah, that's right! Give in my little slut! Only I can make you cum like that!' followed by a series of licks over your neck and the side of your face. He keeps doing that for a long while, holding you, licking you and murmuring words into your ears, mostly about you belonging to him now and how good of a fuck you were.";
		WaitLineBreak;
		say "     Eventually, when your individual orgasms have long died down and the blissful high of sex has made way for just the comfort of being held, you feel Korvin soften his grip and raise himself from laying on your back. While his knot has shrunk far enough to allow for an easy withdrawal, the dog still pulls out slowly, almost gently, with a small popping sound. Then suddenly, you can feel a warm, wet tongue brush over your skin and run along your crack. The sensations of being licked clean draw pleased pants from your lips and you push back against him, enjoying this very different finish to a wild romp with the muscular anthro. You can't help but sigh as he pulls back once satisfied that he licked you well, then stands up and walks over to the pile of your gear. You get to your feet just in time for Korvin to return, holding his collar in his hands as he sinks into a crouch before you.";
		say "     'Was I a good dog?' he asks, looking up at you and offering the leather band with both hands, almost looking a little afraid that you might not put it back on him. The sight puts a warm smile on your face and you stroke Korvin's head, then firmly grab the back of his neck as you lean down to tell him that he was a [italic type]very[roman type] good dog. Taking the collar, you unclasp it and lay the band around his neck. Tightening it to snugly lie around your trusted bodyguard's neck, you stroke a finger along his jawline to make him look up and into your eyes, then squeeze his shoulder and nod for him to help you collect your gear from there it lies. With the studded collar again around his neck, Korvin's cocky attitude is back in a heartbeat, and he jumps up to follow your command with a grin and the words, 'Sure thing, [one of]alpha[or]boss[or][K_Boss][at random]!'";
		if "Dominant_Roleplay_Fuck" is not listed in Traits of Korvin: [memory of having fucked a willing player]
			add "Dominant_Roleplay_Fuck" to Traits of Korvin;
		NPCSexAftermath Player receives "AssFuck" from Korvin;
	else:
		LineBreak;
		say "     With an annoyed groan, Korvin throws his hands up, then sighs. 'Man, you sure had me going there for a moment. Cruel thing to do to a guy, but then again, guess that's your right [one of]alpha[or]boss[or][K_Boss][at random].' Blowing out a deep breath, he wanders off for a little while, returning once he's taken care of his hardon.";

to say conf_Korvin_sex07: [receive BJ from Korvin]
	say "     Taking hold of your dick with one hand, you clip his leash on with the other and tell him to 'sit.' He does so [one of]readily[or]obediently[or]after arching his brow and giving you a look[or]with a little grumble[or]with a hungry look in his eyes[or]while licking his muzzle[at random] and gives your cock a nuzzle. Placing your hand on his head, you scritch his ear as he starts to lick your shaft. His doggy tongue slides along your hard pole, slathering it up and down.";
	say "     After some preliminary licking, his tongue plays across your glans before he takes your [cock size desc of Player] shaft into his muzzle. His canine maw [if Cock Length of Player > 24]has to stretch considerably to be able to fit your mighty cock, but he works at it until he's able to do it[else if Cock Length of Player > 16]has to open wide to be able to fit your mighty cock, but he does it to get that meaty treat in his mouth[else if Cock Length of Player > 8]provides extra depth to be able to fit your big cock, letting him get all that meaty treat in his mouth[else]welcomes your cock into it, enveloping it in wet warmth[end if]. While his doggy tongue continues to slide about, he starts bobbing his head and sucking your cock. The buff dog gets into it quickly, doing his best to suck off his alpha.";
	WaitLineBreak;
	say "     You let the gshep work his muzzle over your [Cock of Player] dick, quite pleased with how he's doing. There's no sign of any earlier reluctance he's shown about cocksucking, the dog clearly into it now that he's got your manhood in his muzzle. You continue to scritch and pet his head, telling him how good it feels and what a great job he's doing. That gets a tail wag from him and a paw fondling your nuts. With him working your shaft over like this, you're built up to a strong orgasm that has you groan loudly";
	if a random chance of 3 in 5 succeeds:
		say ". Your penis pulses hard with every shot, [if Ball Size of Player > 6]blasting your [Cum Load Size of Player] load down his throat and bulging that toned tummy of his [else if Ball Size of Player > 5]blasting your [Cum Load Size of Player] load down his throat to fill his stomach with a feast of your rich, hot semen[else if Ball Size of Player > 3]firing your [Cum Load Size of Player] load down his throat and providing him with a nice, hot meal of your semen[else]pumping the tasty treat of your hot load down his throat[end if]. He gulps it all down, releasing muffled moans while his tail wags wildly[if Cock Count of Player > 2] and your other dicks hose him down with white streaks[else if Cock Count of Player is 2] and your other dick hoses him down with white streaks[end if].";
	else:
		say ". After the first few shots of semen go down his throat, he pulls his muzzle off your [cock size desc of Player] cock and pumps your shaft with his paw[if Cock Length of Player > 16]s[end if]. Your penis[esmn] fire[smv] your remaining cum across his face and muzzle, [if Ball Size of Player > 6]plastering him in a coating[else if Ball Size of Player > 5]plastering him with wads[else if Ball Size of Player > 3]streaking him with large ribbons[else]streaking him with several more strands[end if] of sticky white goo.";
	say "     Once done, he licks his chops and grins up at you. '[one of]I hope that was good enough for you, ya big fag,' he teases[or]Not bad, alpha, but next time you should try mine,' he says[or][if Ball Size of Player > 5]Hmmph! Pretty impressive[else]Tasty[end if],' he says[or]My Alpha,' he states with a nod[or]That better be all. I got stuff to do,' he states, trying to recover some dignity[at random]. You let him get on his way while you take a moment to enjoy the blissful afterglow.";
	NPCSexAftermath Korvin receives "OralCock" from Player;

to say conf_Korvin_sex08: [receive facefuck from Korvin]
	say "     In the mood for something a little wilder than just making use of the stud of a German shepherd you broke in to be your attack dog, you reach down and cup Korvin's balls. Fondling the anthro, you praise him for his virility and strength, which draws a chuckle from Korvin. 'What'cha doing, [one of]alpha[or]boss[or][K_Boss][at random]? You don't have to charm the pants off me, not wearing any!' With a smirk, you reply that you like having him as your companion, a strong, though dog whom you can depend on. Clearly, he's a man to be reckoned with, having spent his days out on the streets, going after whoever he liked. Taking them down and using those firm muscles you're feeling up right now to push his newest conquest onto the ground. 'Yeah, that's what it was like. Most of the time. Right up until a certain someone wiped the floor with me and, you know, put a collar on this doggo...' Meeting his gaze, you tell him that even though you enjoy being his master now, you don't want him to change too much - become too tame.";
	say "     Korvin lets out a puzzled grunt, 'Err, what? Are you messing with me now? Did I do something wrong?' In response, you run your hand along his shoulder and neck, saying that you actually want to reward him for being such a good bodyguard. Give him a taste of his wild days. Looking at you, still hesitating, the canine replies, 'But things will still be the same between us afterward, right? Alpha and pack bro forever?' As you smile and nod, giving Korvin a comforting squeeze of the shoulder, he immediately relaxes and you feel his balls twitch under your fingers as his cock throbs in arousal. 'Man, life with you sure doesn't get boring! You sure you can handle me?' Visibly excited, tail wagging and cock standing proudly erect with a bead of pre-cum forming at the tip, the German shepherd's expression gains an undertone of lust and hunger as he looks you up and down.";
	WaitLineBreak;
	say "     With a smirk on your lips, you crouch down before the muscular German shepherd, stroking your hands over the soft fur covering his thighs. Reaching the right height for putting his erection at eye level, you stick out your tongue and run it up the underside of the red rocket, in the process raising your viewpoint to glance up at him submissively. As your eyes meet, Korvin's cock throbs noticably, a thick droplet of pre-cum welling up from its slit. With a grin, you tell the anthro canine to face-fuck you. His hand rising almost by its own volition, the dog touches his collar, as if to remind himself of his position of belonging and trust, then allows himself the freedom of following your roleplaying prompt. Both of his paw-hands sink down to the level of your head, with one taking hold of your head by the hair in a somewhat rough fashion, while the other grips your jaw. 'Yeah, I'm gonna enjoy face-fucking you,' Korvin grunts, pushing his thumb between your lips and prompting you to suck on it.";
	say "     The shepherd's paw-pad feels a little coarse as it presses down on your tongue, establishing dominance along with his iron grip of your head. 'I love fucking [if player is purefemale]street-bait! Making bitches take my cock as deep as I want!' [else if player is neuter]street-meat!' [else if Cock Length of Player < Cock Length of Korvin]street-meat! Let's see how you take a [italic type]real[roman type] cock!' [else]street-meat! Showing em that you don't just need a big cock, you gotta know how to use it!' [end if] With that, he withdraws his thumb from your mouth suddenly, creating a popping sound, and replaces it with his erection a heartbeat later. Now shifting his grip to clamp your head between his paws, he pushes you down on his shaft with a lusty grunt. Slipping further and further in between your lips in a demanding pace just slow enough that you don't choke on it, the muscled canine has your nose pressed into his crotch-fur in no time at all. Huffing the male dog's pubes and filling your mind with his scent, you're held firm in that position while he enjoys the tightness of your throat around his cock.";
	WaitLineBreak;
	say "     At some point reflexively swallowing around the big invader in your mouth, you draw the comment of, 'Nice! Squeeze my dick with those muscles!' from Korvin. A moment later, he begins to slide in and out, face-fucking you in a rapid tempo. You won't be able to tell afterwards that was the deciding factor - his masculine scent, the satisfaction of giving your bodyguard a well-deserved reward, those full balls swinging back and forth to slap your chin, the feeling of helpless submission as he just manhandles you, maybe just seeing stars a little when he keeps himself down your throat a little long, or all of the above - but in the moment, you sure enjoy the experience. Meanwhile, Korvin's also having a total blast, his grunts, pants and barks becoming louder and more urgent by the moment. Then suddenly, the extent of his endurance is reached and he humps your face hard, basically trying to cram every last inch he got down your throat as he begins to unload with thick, creamy spurts right into your stomach.";
	say "     You can feel Korvin's erection throb against your tongue with each new burst of semen shooting up from his balls, giving you a filling of pure protein. 'Take my load bitch!' he bellows, grinning down at you and showing his teeth in a very dominant, powerful pose, given that he's also holding your head in both hands, so you can't move it once inch. In the end, you have to pat out against his thigh to get him to withdraw, finally allowing you to gasp in a breath of fresh air, which is immediately followed by more spurts of his load to make a cum-spattered mess of your face. 'That's a good look for you,' he says with a chuckle, aiming his cock to cover you as much as he can with the ebbing shots, though taking care to avoid hitting you in the eyes. As Korvin's orgasm dies down eventually, he softens his grip on your head, allowing you to stand up once more.";
	WaitLineBreak;
	say "     Now that he no longer is looking down on you, a little bit of anxiousness seems to rise in Korvin. Hooking a finger over the edge of the collar around his neck, he looks down and asks tensely, 'Was I a good dog?' The sight puts a warm smile on your face and you stroke Korvin's head, then firmly grab the back of his neck as you tell him that he was a [italic type]very[roman type] good dog. You stroke a finger along his jawline to make him meet your gaze, then squeeze his shoulder and say that you could use a little help cleaning up though. Korvin's cocky attitude is back in a heartbeat, and he [if player is male]lets out a groan of 'That's so gay!' [else]grins at you [end if]before leaning in to lick his own load off your face without any further complaint. 'Anything for you, [one of]alpha[or]boss[or][K_Boss][at random]!'";
	if "Dominant_Roleplay_Oral" is not listed in Traits of Korvin: [memory of having fucked a willing player]
		add "Dominant_Roleplay_Oral" to Traits of Korvin;
	NPCSexAftermath Player receives "OralCock" from Korvin;

Section 5 - Subby Korvin Sex

to say subby_Korvin_sexmenu:
	if Player is male:
		say "     You call over your pet German shepherd and point at your crotch. Knowing what's expected of him, the dog gets on his knees and starts licking and sucking your cock. He blushes a bit and is initially a little reluctant, but soon enough the cock-slut going at it with enthusiasm. You make sure to scritch his ears and call him your good, cock-sucking puppy.";
		say "     After you feel his muzzle's gotten you good and ready, you tell him to get on all fours and present himself. The G-Shep shows none of his earlier arrogance or defiance and obediently raises his tail for his master. You tease your saliva-slick dick against his asshole before pushing into him. He gives a needy moan, his well-trained body knowing what it wants and knowing to give you what you need. His tight pucker yields to you, drawing a slutty moan from the buff dog. You grin at this and give his firm ass a swat, getting a second from him and also getting a satisfying squeeze from his [if Cock Length of Player > 24]over-[else if Cock Length of Player > 12]well [else if Cock Length of Player < 6]lightly [end if]stuffed hole.";
		WaitLineBreak;
		say "     You have your fun with him, thrusting into that clenching hole of his. After a few thrusts, he's grinding back into you with need, so you reach around and fondle his junk. This serves to encourage more of this kind of behavior from him in the future. And after a good fuck session, you're both more than ready to pop, so you slam [if Cock Length of Player > 16]fully[else]hard[end if] and unload[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load stuffs him so full his toned abdomen swells with your output[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load stuffs him so full his toned abdomen bulges with your output[else if Ball Size of Player > 3]. Your [Cum Load Size of Player] load fills his bowels with your sticky semen[else]. Your load fires into his bowels, once again stacking your claim on him as yours[end if]. Feeling this, your trained subby puppy stops holding back and cums as well, expending his virile seed onto the ground all while milking you for more or your own. Once done, you pull out, pat his messy ass and tell him what a good dog he is, much to your pet's pleasure before leaving him to recover.";
	else:
		say "***M/F subby Korvin sex.";
	now lastfuck of gshep is turns;

Section 6 - Events

[ Korvin sniffs after a female bull terrier -> see file Wahn/Mall Expansion.i7x]
[ Korvin meets a young adult beagle boy -> see file Speedlover/Extra College Events.i7x]
[ Korvin antagonizes Tehuantl -> see file Wahn/Tehuantl.i7x]
[ Korvin put in his place by Alpha Fang -> see file Prometheus/Fang.i7x]
[ Alpha Fang solidifies his position over Korvin sexually -> see file Prometheus/Fang.i7x]

Table of GameEventIDs (continued)
Object	Name
Trucker Bar	"Trucker Bar"

Trucker Bar is a situation.
ResolveFunction of Trucker Bar is "[ResolveEvent Trucker Bar]". Trucker Bar is inactive.
Sarea of Trucker Bar is "High".
The PrereqCompanion of Trucker Bar is gshep.

to say ResolveEvent Trucker Bar:
	if Resolution of Trucker Bar is 0: [first time]
		say "     Wandering through the outskirts of the downtown area, you reach a section of town that's just at the edge of the warehouse district. It is clearly more of a working class neighborhood over here, as there are 'regular' businesses instead of boutiques dominating the streetfront. Of course, most of the shops are closed with heavy iron shutters, and those that are not have already been looted. Turning a corner into another very similar-looking road, you realize that suddenly, a familiar presence is missing from your side. Looking around, you see that Korvin wandered off a few steps and is looking at his surroundings with a thoughtful expression. 'Wait a moment, [K_Boss]. I think this feels familiar! Can we go that way?'";
		say "     [bold type]What's your reply?[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Sure, let's see where his instinct takes you.";
		say "     [link](2)[as]2[end link] - Not right now. You've got places to be.";
		say "     [link](3)[as]3[end link] - No, and you don't care about that. He should forget it.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to follow Korvin, [link]2[end link] to postpone investigating or [link]3[end link] to refuse for good.";
		if calcnumber is 1:
			LineBreak;
			say "[InvestigateTruckerBar]";
		else if calcnumber is 2:
			LineBreak;
			say "     Taking some steps after Korvin, you pat him on the shoulder and say that you don't have time for this right this moment. He's got to have some patience, maybe you can come back and investigate further in the future. The muscular anthro glances down the street hesitantly, then nods and says, 'As you say, [K_Boss].'";
			now Resolution of Trucker Bar is 99; [postponed]
		else if calcnumber is 3:
			LineBreak;
			say "     With a shake of your head, you put two fingers in your mouth and whistle for Korvin, making the German shepherd trot back over to you and take his usual space. Then you tell him that you don't care to investigate this further, so he should just put it out of his mind. The muscular anthro glances down the street hesitantly, then nods and says, 'As you say, [K_Boss].'";
			now Resolution of Trucker Bar is 100; [refused]
			now Trucker Bar is resolved;
	else if Resolution of Trucker Bar is 99: [postponed before]
		say "     Wandering through the outskirts of the downtown area, you again reach the street that seemed familiar to Korvin when you passed this way before. 'Wait a moment, [K_Boss]. Can we maybe check this way? I think I remember the way somewhere!'";
		say "     [bold type]What's your reply?[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Sure, let's see where his instinct takes you.";
		say "     [link](2)[as]2[end link] - Not right now. You've got places to be.";
		say "     [link](3)[as]3[end link] - No, and you don't care about that. He should forget it.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to follow Korvin, [link]2[end link] to postpone investigating or [link]3[end link] to refuse for good.";
		if calcnumber is 1:
			LineBreak;
			say "[InvestigateTruckerBar]";
		else if calcnumber is 2:
			LineBreak;
			say "     Taking some steps after Korvin, you pat him on the shoulder and say that you don't have time for this right this moment. He's got to have some patience, maybe you can come back and investigate further in the future. The muscular anthro glances down the street hesitantly, then nods and says, 'As you say, [K_Boss].'";
			now Resolution of Trucker Bar is 99; [postponed]
		else if calcnumber is 3:
			LineBreak;
			say "     With a shake of your head, you put two fingers in your mouth and whistle for Korvin, making the German shepherd trot back over to you and take his usual space. Then you tell him that you don't care to investigate this further, so he should just put it out of his mind. The muscular anthro glances down the street hesitantly, then nods and says, 'As you say, [K_Boss].'";
			now Resolution of Trucker Bar is 100; [refused]
			now Trucker Bar is resolved;

to say InvestigateTruckerBar:
	say "     'Thank you,' the German shepherd says, smiling at you and wagging his tail. 'It's just that I feel like I walked past that building over there a bunch of times before, you know. Can't remember when or where I was going exactly, but it's something at least.' You reach out and give Korvin's upper arm a squeeze, telling him you want to know more about him too and are willing to spend a while exploring. With the decision made, you follow the anthro on a slow trek through the area, consisting of slowly walking where he leads, interspersed with Korvin stopping to look around, sniffing the air, sometimes even backtracking a little when he takes what he feels like a wrong turn. About three city blocks later, you cross diagonally through an abandoned lot, and the canine's pace becomes quicker, as he gets ever more sure that he's got the way down correctly now. You walk down another block at a right angle, then turn a corner and see... something:";
	say "     About 200 feet down the broad street ahead of you is a dead end, being formed by long-haul truck having been manouvered to stretch from the buildings left to right, not quite touching them. The remaining few feet of space beside the truck and underneath it have been closed off with wooden barricades, effectively cutting off this approach to what lies beyond. 'Hm, that's new,' Korvin says as he looks at the truck, then nods towards the next road at the crossing you just passed. 'Let's go around the block and see if we can get in from the other side. Following that plan, you do a bit more walking and eventually reach another barricade, this one consisting of two delivery trucks parked end to end, with a little bit of space in between them. A large board put up beside that passage has been spray-painted to read 'TRUCKTOWN' in large and bold letters, with a list of rules beneath: 'No begging. No stealing. Keep it in your pants!'";
	WaitLineBreak;
	say "     Two burly men stand guard at the entrance, one human and armed with a baseball bat, the other partially ursine, sporting immense, shaggy bear arms, complete with dangerous-looking claws. The two of them look at you suspiciously as you approach, calling out, 'Stop right there. Who are you?' The conversation that follows tells you that they're called Thomaz and Mikailovic and they're on post to make sure no out of control feral gets in. Past them, you can see a large paved lot full of trucks, RV's and even a yellow school-bus that somehow found its way into this industrial zone. A bunch of people in various states of infection are around, and there is a bar on the far end, just a little past the truck barricade that you and Korvin ran into before. Finally, after you convince the guards that you're not about to molest anyone if they let you in, and a quick stop at the 'pre-owned clothing' pile makes sure that neither you nor Korvin are letting your genitals dangle freely, you enter the protected settlement.'";
	say "     'Macey's Bar and Grill,' Korvin reads the sign of the bar out loud as you approach it. 'Yeah, I hung out in there for years, I think. Fuck, I remember the thursday special - fries and a whole plate of wings, perfect for watching the game. The steps of his paws on the asphalt quicken and you have to hurry to keep up. When Korvin pulls open the entrance door, someone is right beyond it, on his way out, a trucker with plenty of gray in his beard. The two men pass each other, but a heartbeat or two, the older man pauses and turns back, calling out, 'Hey! Is that you Eddie?' Korvin freezes on the spot, half a step inside the bar, then whirls around. 'Wait, I remember you being there for the fight! But my name is Korvin.' The trucker nods, 'That's what I'm saying, dude! Eddie Korvin, man if you didn't have that telltale scar on your mug, I'd never have recognized you!'";
	WaitLineBreak;
	say "     'Wait, so - we, we know each other? I - I don't remember your name,' Korvin says, his usual cocky attitude replaced by uncertainty. The trucker replies, 'I'm Cantrell Devine, that ring any bells?' As Korvin shakes his head, the man frowns and blows out his breath. 'Man, guess being transformed really rattled loose some things up in there, eh? Well, nice to meet you - again.' He holds out a hand to give both Korvin as well as yourself a very firm handshake, then nods over to the parking lot. 'Come on, let's not block the entrance while we talk.' A short walk later, the three of you are sitting in camping chairs around a fire pit made from a sawed-in-half oil barrel. 'So, let me update you about what happened here after we last saw each other. As humans and all that,' Cantrell says, waving a hand to indicate Korvin/Eddie's canine form.";
	say "     'It was total chaos, people getting jumped left and right and turning too. But we weren't ready to just give in. Can't claim that it was my idea or anything, but when I arrived back over here, the guys and I armed ourselves and formed a self-defense group. You know how rough it can be out on the roads, so everyone had some sort of weapon available to use. Not a second too soon, as some of the infected went for us fast! We learned quick that guns are a bad idea these days - first, because most people don't want to blow out the brains of their transformed neighbors and second because them ferals don't really fear the bullets anyways, or stay down all that long. And on top of that, when Mikailovic was using his shotgun to block a paw-strike, it just somehow... melted in his grip, and he grew those bear arms!'";
	WaitLineBreak;
	say "     Shaking his head in disbelief, Cantrell runs a hand over his salt-and-pepper beard. 'Just like Mika, not everyone got away without some shifts about their persons, but working as a group, we managed to fight the ferals off. They're almost all individuals and pretty focused on sex, you know. So if a feral grabbed one of us and wrestled him down, they straight away tried to fuck, to be clonked out by the next trucker or three. Those were some crazy hours and days. Fighting to clear the lot and streets around, blocking the approaches and all of that. But we managed, thank god, and with everything folks were hauling in their rigs, we plan to outlast this shit until the army moves in. Heard some talk of that on the radio.' Letting his gaze sweep over the community of people having found refuge away from the chaos outside this little enclave, Cantrell's bearded features pull into a satisfied smile. Then he looks at Korvin and asks, 'How about yourself and Wyatt? Figured you had gone home to last out this shit.'";
	say "     Korvin looks at the man in an almost stunned fashion, mumbling the name Wyatt to himself as he wracks his brain. You decide to jump in and tell Cantrell a little of what is going on, namely that Korvin can barely remember anything at all from when he was a human, and had been living on the streets for a while before you found him and the two of you joined up. By the time you finish, Korvin has found his words again, and he bursts out with, 'Tell me about Wyatt, and Eddie, please! All I got are some vague, blurry memories!' 'Sure. Wyatt is your girlfriend, Eddie. Talked to her once or twice when she came to the bar with ya. She's a tough cookie, totally hustled a few guys for money on the pool table. Hah, she shook those boobs just in time to distract them. But back to you now: Your name is Eddie Korvin, you're twenty-six and work as a mechanic at a garage downtown. Man, can you really not remember? Known you since you were about knee-high and you accompanied your dad in his truck the first time.'";
	WaitLineBreak;
	say "     The next twenty minutes or so are filled with a question and answer session between Cantrell and Korvin, by the end of which you've learned several facts and anecdotes about the German shepherd's human past, among which is his home adress, which Cantrell notes down on a notebook, ripping out the page and handing it to Korvin. The anthro dog thanks him, clutching the paper tightly in his paw-hand, saying his goodbyes and getting out of Trucktown with a new haste to his steps. As you hurry after him, you notice that he slows down after turning the next street corner and getting out of sight of the settlement. Seems like he mostly just wanted to get [italic type]away[roman type] from there, and now he's bracing with one hand against a wall and almost hyperventilating. 'Fuck! I don't really remember ANYTHING that Cantrell was so happy to recount! That... Eddie guy he knew, I don't know him! That's not me!'";
	say "     There's pain and fear in Korvin's voice, as he feels betrayed by his own memory upon learning that he's supposed to be someone else. His paw-hand is clutching the paper with the address in a death-grip and he seems to turn his head away from looking at it. Maybe he doesn't want to face what it represents and is regretting ever learning about his past?";
	say "     [bold type]It is clear that Korvin is in crisis, and you should say something. But what?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Tell him that he needs to face Eddie, find Wyatt and learn more. Otherwise he'll wonder forever what else there was.";
	say "     [link](2)[as]2[end link] - Tell him that he's Korvin. That's enough. He should put Eddie out of his mind.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to investigate further or [link]2[end link] to suggest he forget about Eddie and Wyatt.";
	if calcnumber is 1:
		LineBreak;
		say "     Reaching out to stroke the head-fur of your bodyguard in his moment of weakness, you tell him in a calm tone that he must investigate further. If he doesn't learn more about Eddie and Wyatt, it'll eat him up inside over time. Hearing your voice to guide him, the muscular canine relaxes a little. 'Thanks, [K_Boss]. I wouldn't know what I'd do without you!' he says in relief, then unfolds the crumpled paper to read it. 'I remember something about this. It's an apartment block, red bricks, fairly tall.'";
		if Red Apartment Building is known:
			say "     Having a look at the address yourself and hearing Korvin's description, you realize that you've actually been there before. It's the [link]red apartment building[as]nav red apartment building[end link]!";
		else:
			AddNavPoint Red Apartment Building;
		now Resolution of Trucker Bar is 1; [further investigation]
	else:
		LineBreak;
		say "     Reaching out to stroke the head-fur of your bodyguard in his moment of weakness, you tell him in a calm tone that Korvin is all you need. He said himself that he's not Eddie, so why chase after that ghost? He should put the guy out of his mind. Hearing your voice to guide him, the muscular canine relaxes a little. 'Thanks, [K_Boss]. I wouldn't know what I'd do without you!' he says in relief, slowly loosening the grip on the crumplied piece of paper, letting it fall to the ground. It seems like a great weight has been lifted off his shoulders, and the canine immediately starts to walk away from where he stood. 'Let's get out of here, alright?' he asks, and you assent, walking back the way you came to get here.";
		now Resolution of Trucker Bar is 101; [made Korvin give up further poking into his past]
	now Trucker Bar is resolved;

instead of navigating Red Apartment Building while (gshep is listed in companionList of Player and Resolution of Trucker Bar is 1):
	say "[NavCheck Red Apartment Building]";
	if NavCheckReturn is false, stop the action;
	move player to Red Apartment Building;
	if debugactive is 1:
		say "     DEBUG: Korvin finds his past[line break]";
	say "     Making your way through the city, you eventually arrive at a fairly modern apartment building block, four stories tall and painted in a light, friendly reddish tone. Looking up at it, your German shepherd companion scrunches up his features in a thoughtful expression, then shakes his head slowly. 'It's not ringing any bells in my mind. At all,' he says morosely, taking out the note with the address once more to look at it. 'This is the place, though. It says Eddie's apartment is on the fourth floor.' You give Korvin's shoulder a squeeze to lend your support, then allow him to lead on towards the building. Passing a few groups of partially infected people, the anthro dog gives them suspicious looks and hastens his steps, soon arriving at the entrance doors of the red apartment building. Stepping through the glass door, the two of you walk into what appears either to be the site of a large orgy, or the result of frequent sexual encounters in the building lobby, as clothes are scattered on the ground and the scent of cum hangs in the air.";
	say "     Noticing that all of the apartment doors around you have been either wrenched out of their frames or at least been broken into, your canine companion starts to become a little frantic. 'Man, look at this! I - I just had a thought. What if Eddie - err, I - had a picture of her in his wallet? You know, his girlfriend Wyatt? Or worse, those fucking dogs might even have known him! Then they'd know where to find themselves a pretty little bitch, and they wouldn't even need to break in either! Maybe they came here and r- fucked her. They might [italic type]still[roman type] be up there, taking turns!' Adam's apple bobbing visibly as he swallows, Korvin then breaks out into a run, sprinting up the stairway to the next floor. A sofa pushed into the way to block the upper end of the steps does little to slow his progress as the German shepherds leads you on a chase up three flights of stairs before finally coming to a stop on the top floor, panting.";
	WaitLineBreak;
	say "     Glancing once more at the note from Cantrell, your companion points at one door specifically. 'That one, 4F. I - damn, I can't even tell you how many of them there were, exactly. Three dog-dudes at least, or four, with one after another taking a turn on me. So... how about I go left, you go right if there's more than one of the fuckers in the first room, and we hit them in parallel? That sound good to you?' You nod to him, having already gone this far in the investigation of Korvin's past and wanting to see it through yourself. Giving you a grim, respectful nod, the German shepherd hurries over to the door, taking position against the wall beside it and leaving you to go to the other side, with neither standing right in front. Then he makes a fist and hits the door several times, the insistent knock surely heard in the whole apartment beyond.";
	say "     For several long, tense moments, there is no noticeable reaction, then you can hear the very faint scrape of the peephole cover being pulled aside by someone. Korvin smacks the door again and shouts, 'Open up already!' It is a woman's voice that replies, 'Who is this? Go away and leave me alone!' Your canine companion seems to freeze in shock and surprise as he hears that voice, so you quickly jump in and say that you aren't here to hurt her, calling out your name and saying that Eddie is here with you. 'What?!' the woman bursts out in response, followed by a short but loud scraping noise - furniture on the floor, you guess. Then the door opens, just a crack before it bumps against the heavy object that Wyatt must have placed on the inside to brace it. On top of that, it is secured by a chain. Through the narrow door slit, you can see a beautiful human woman with blond hair and blue eyes, looking out at you with a suspicious expression. A little lower, you see her hand, clutching a black and orange striped can of pepper spray.";
	WaitLineBreak;
	say "     'W-wyatt, you're okay!' Korvin says, stepping into her zone of vision. 'It's me, Korv- err, Eddie! Are you alone? No dogs in there with you? I - I was worried they might have come for you next.' 'Eddie? No, you can't be! You're - you're a dog!' Turning his head to show off the scar that marks him, your companion points at it and adds, 'It's me, look here!' The young woman's eyes go wide and she gasps, followed by the door being slammed shut. Not to shut you out though, but instead for her to undo the chain. There is more scraping of furniture, followed by the door opening a little further, allowing Wyatt to slip out. You notice that she's still got the can of pepper spray clutched tightly in her hand and is keeping two steps of distance to Korvin. Not exactly an exuberant welcome, but then, she's actually is still completely human too.";
	say "     'I thought you were dead, or... worse!' Wyatt bursts out, looking at Korvin with moisture welling up in the corners of her eyes even though she does her best to keep her composure. 'You were gone so long, Eddie! Why didn't you come back to me before?' The words are almost an accusation, making Korvin twitch as if he had been whipped, his tail dipping down between his legs. 'I - I didn't remember! I don't really recall much of him - me - Eddie! Or you. Cantrell gave us the address of this place just a little while ago, after we ran into him,' the anthro shoots back, getting quieter with each sentence. 'God, that's... horrific. So this infection, or whatever it is, messed up your mind?! What do you remember still?' 'Nothing much, it's all very blurry.' Going pale, Wyatt bites her lip and raises her hand, 'Wait, I got an idea!' She slips back inside the apartment, having go to side-on to fit through the crack as the door still is mostly blocked, leaving Korvin and yourself alone outside.";
	WaitLineBreak;
	say "     Clearing his throat and looking over to you, Korvin says quietly, 'She's pretty hot, but I could never have picked her out of a crowd. What does that say about me that I can't remember someone so important?' It's not an easy question to answer, leaving you scrambling for a reply. Before you manage to find it, Wyatt comes back, now holding an album in one hand, the pepper-spray in the other. 'Here, look at this,' she says, holding the book out to Korvin at the end of a stretched-out arm. Flipping the photo album open, he looks at it with a grim, fatalistic expression, flipping through a few pages. 'Wait, that one! Who's he? I swear I've seen that face before,' he says suddenly, pointing at an older man with white hair.' Wyatt's eyes widen as he shows her, and she says, 'That's your dad, Eddy. He died two years ago.' 'Or, er - her, the woman in this picture. Seems pretty friendly?'";
	say "     Pressing her lips together, the blonde woman explains, 'Inga, she's in my study group. You met her during a get-together last Christmas.' Paging through the collected memories of Eddie, Korvin's gaze flicks quickly over most pictures fairly quickly, without a hint of recognition. There are a few more back-and-forths between him and Wyatt, but other than telling him a few names, there are only one or two situations he fully recalls. Overall, this leaves everyone rather tense, as Wyatt must have hoped for more, and Korvin gets frustrated as he draws one blank after another. Finally, as Korvin reaches the last page and shuts the album again, the young woman seeks to escape the uncomfortable quiet that is left by directing a question to you instead. 'How do you fit into all of this by the way?'";
	WaitLineBreak;
	say "     In order not to complicate things, you give her a somewhat edited version of the events, with you 'meeting' Korvin and joining up with him for security as you make your way through the city. You're not completely sure that she buys it, as Wyatt's eyes flick over to Korvin - and his collar - more than a few times. As you finish your explanation, she nods slowly, then turns back to Korvin. 'So, Eddie. How about you come back home, into the guest room for now? There must be some way to make you remember your life! Maybe it'll just take time?' The German shepherd looks at her, opens his muzzle, then closes it again, looking back and forth between the girlfriend of his former self, and you. His hand comes up to touch the studded collar around his neck.";
	say "     [bold type]The muscled canine seems to be stuck, trying to come to a decision. Do you want to try to influence him?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Tell him to go to her. He'll remember being Eddie eventually, you're sure about that.";
	say "     [link](2)[as]2[end link] - Say nothing, and accept what comes of it. This is a decision that the anthro has to make for himself.";
	say "     [link](3)[as]3[end link] - Reason with them and explain why Korvin cannot stay. He isn't Eddie, that's for sure.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to encourage Eddie to stay, [link]2[end link] to wait for his decision, or [link]3[end link] to suggest he forgets Eddie.";
	if calcnumber is 1:
		LineBreak;
		say "     Reaching out to touch Korvin's arm, you nod to him, then go on to put your hands on his collar. With a few quick movements, the band slackens from its tight fit around his neck. Pulling it away and feeling the open ends brush against your palm has a feeling of finality, especially as he meets your gaze and says, 'Thanks[if Player is not defaultnamed]b- no, [name of Player][end if]! I never thought that running into you would lead here. We'll make it work, somehow.' With that said, he turns to Wyatt, tail wagging behind his back. The young woman lifts her gaze from the collar in your hand, pressing her lips together and pointedly not commenting, then smiles at the anthro dog and says, 'Come in Eddie, we've got so much to talk about. It's good to have you back!' She leads the way into the apartment, slipping through the crack before moving the blocking furniture further and allowing Eddie to walk inside without having to squeeze.";
		say "     With the words, 'Goodbye, be safe out there,' Wyatt shuts the door before you a moment later, and you hear her put the chain back on, locking it, and pushing whatever it is that blocked the door back into place. You're left standing by yourself on the 4th floor of the apartment building, feeling the conspicuous absence of your trusted bodyguard as you idly glance over to the giant stick insect sharing the room with you. It doesn't comment, or move even an inch, deepening your feeling of being all alone. With a shrug, you tell yourself that you did the right thing, and feel a bit more human for it.";
		SanBoost 30;
		now gshep is not tamed;
		remove gshep from companionList of Player;
		now Resolution of Trucker Bar is 50; [Korvin/Eddie stayed with Wyatt]
	else if calcnumber is 2:
		LineBreak;
		say "     Carefully holding your composure to show a neutral expression even while you watch Korvin closely, you see him meet your gaze, then look back over to Wyatt. Taking a deep breath, the anthro canine steps towards her, swallows visibly, and says, 'I - I'm sorry, but I'm not Eddy. I don't know him, or you, or anything you have gone through together. How long do you think it would take before you caught what made me this way, and lost yourself too? No, I must go.' He starts to hold out the album, then thinks better of it and instead props it against the wall, next to the apartment door. 'Maybe just... put that into a plastic bag or something, if you're gonna keep it.' Wyatt sniffles at his words, a single tear running down her pale, beautiful face as she holds her distance to the anthro.";
		say "     'I'm sorry too, Ed- no, you call yourself Korvin, right?' she replies, letting out a halting breath as Korvin nods. 'B-be safe out there, both of you.' With those words still in the air, the human woman slips through the door into her apartment and pushes the door shut.' The sound of a lock being turned, a chain rattling, then whatever it is that blocks the door thumping against it, gives the moment an air of finality. You're left standing on the 4th floor of the apartment building, with the comforting presence of your trusted bodyguard by your side. The giant stick insect sharing the room with you doesn't comment, or even move an inch, serving as a quiet witness of what happened. 'So, let's get going then?' Korvin asks you, consciously choosing to make his tail give a hopeful swish.";
		now Resolution of Trucker Bar is 2; [Korvin himself decided to stay with the player]
	else if calcnumber is 3:
		LineBreak;
		say "     Clearing your throat, you draw everyone's attention to yourself. Pointing at the album, you explain that it is the best proof they could have gotten that Eddie doesn't really exist anymore. Korvin recognized almost none of it, and that's not a good sign for inviting him into her place, you tell Wyatt. He's wild, almost feral, and has lived out on the streets for weeks. Without you to temper his instincts, he'd never have come here in the first place, and before long, there'd just be two canines in this apartment, neither of them being the persons they once were. Korvin is frozen as he listens, while Wyatt sniffles at your words, a single tear running down her pale, beautiful face. The two of them look at you, neither finding any words to refute the facts that you are laying out. Silence stretches out for a few heartbeats when you finish, then Korvin bends down to place the album on the floor. 'Maybe just... put that into a plastic bag or something, if you're gonna keep it.'";
		say "     'I'm sorry too, Ed- no, you call yourself Korvin, right?' she replies, letting out a halting breath as Korvin nods. 'B-be safe out there, both of you.' With those words still in the air, the human woman slips through the door into her apartment and pushes the door shut.' The sound of a lock being turned, a chain rattling, then whatever it is that blocks the door thumping against it, gives the moment an air of finality. You're left standing on the 4th floor of the apartment building, with the comforting presence of your trusted bodyguard by your side. The giant stick insect sharing the room with you doesn't comment, or even move an inch, serving as a quiet witness of what happened. 'So, let's get going then?' Korvin asks you, his tail hanging limply behind his back.";
		now Resolution of Trucker Bar is 3; [the player talked Korvin into staying with them]
	wait for any key;
	now Player is in Red Apartment 4th Floor;

Table of GameEventIDs (continued)
Object	Name
Dogs will be Dogs	"Dogs will be Dogs"

Dogs will be Dogs is a situation.
ResolveFunction of Dogs will be Dogs is "[ResolveEvent Dogs will be Dogs]".
Sarea of Dogs will be Dogs is "Outside".
Prereq1 of Dogs will be Dogs is Trucker Bar.
Prereq1Resolution of Dogs will be Dogs is { 50 }. [must have let Korvin stay with Wyatt]

to say ResolveEvent Dogs will be Dogs:
	say "     Roaming the streets of the inner city and making your way past wrecked cars, piles of rubble and trash while avoiding infected hunting for their next fuck, you eventually find yourself in front of a small grocery store in what seems to be a less prosperous area. Despite apparently having been locked up when the nanite apocalypse really hit its stride, the place looks trashed and looted already. Of the side-sliding security gratings that covered the door and two windows left and right of it, one of the window protectors has been broken out of its track at the bottom and levered away from the building. This allows access to the store's insides by ducking under it and climbing through the shattered window. You glance through the intact panes of the door and other window, not seeing anything move inside, so the building seems safe enough to explore.";
	say "     Even though the chance is slight that there will be anything left, you enter through the broken window and find yourself exploring the devastated store. All of the shelves have been emptied of almost everything - food of course, but also lots of other stuff that makes less direct sense. But then, who says that there aren't some creatures in the city now that do consume who knows what, or have other creative uses for the stuff. Scrunching your nose at the stinky bits of spoiled food breakage that resulted from someone being hasty in their looting, you're almost ready to give up, but then pause as your gaze falls upon a door that leads into a storeroom according to the sign on it. The door doesn't have a door handle, just a non-turning knob with a keyhole, but that of course didn't stop someone from kicking it in, judging from the splintered wood where the bolt would have been.";
	WaitLineBreak;
	say "     Pushing the door open, you have to shove a bit as the room beyond is filled knee-high with discarded carton boxes having been thrown every which way. The work of impatient looters shows again here, as all the boxes that must have sat in the shelves covering the left and right walls weren't carried off intact but are ripped or clawed, which must have getting the stuff out all the more difficult. Or maybe there was so sense of it after all - as the broken window on the back wall has solid bars across it, wide enough for loose items but not storage boxes. Someone could have handed the stuff to an accomplice waiting on the other side. Moving further into the room, you luck upon your first find as you bump something harder than just more carton. It's a can of... bacon? Bit of an odd thing to put in a can, but beggars can't be choosers and it should still be good.";
	say "     Continuing with your investigation of the room, you stomp flat some of the boxes after checking that they're empty, allowing a somewhat more thorough check and finding other stuff that the original looters missed. Like for example a soda bottle that rolled under the left-hand shelf (it's straining with pressure, you'll want to open that carefully) and a bag of candy that seems to have gotten stuck in its box when that was up-ended and then thrown aside. All in all you feel that it was a good decision to check out the store when you finally pack away your combined finds. Then, just as you're crouched over your backpack and about to zip it back up, you hear something from outside the window: Barking and grunting.";
	ItemGain food by 3;
	ItemGain soda by 1;
	ItemGain clean bandages by 1;
	WaitLineBreak;
	say "     Raising your head a little to peer over the windowsill, you see the dingy alley that the storeroom window opens up to, and in it a male anthro German shepherd, bent over a partially human woman that is on all fours on a piece of cardboard. You're seeing them mostly from behind, but given the way that he's grinding against her and the sounds the two of them make, the canine is burying his cock in her pussy and that is eagerly received. Maybe not for the first time today either, given that there's some wet squelching sounds when he rams himself into her. Almost ready to just shrug the scene off as just another example of wild rutting you'll see today, noticing one detail about the dog suddenly changes everything: a jagged scar, running along the side of the German shepherd's muzzle, visible for a second as he bends his head to lick the woman's shoulder. [bold type]It's Korvin![roman type][line break]";
	say "     Your mind flashes back to the bittersweet goodbye that you went through after finding out the details of Korvin/Eddie's former life, culminating at the door to the apartment he lived in with his girlfriend Wyatt. Making the decision to tell the former street dog that he should stay with her and try to reclaim what he lost, and pulling off the collar that you had given him to mark the dog as yours. The door to the apartment closing and being locked, leaving you outside alone, with little expectation of ever seeing your trusted bodyguard again. Yet now, he's here - back on the streets, fucking a half-transformed human! Is it Wyatt? Maybe, possibly. Knowing about the mental effect that the nanite infection has on people, you can guess what might have happened - but you still can't help but be curious about how and why exactly.";
	WaitLineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Call out to Korvin";
	now sortorder entry is 1;
	now description entry is "Draw the canine's attention";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just watch quietly";
	now sortorder entry is 2;
	now description entry is "He isn't your dog anymore after all, you told him to go. Still, it's a sexy thing to watch";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Rush from the storeroom and outside, then circle around to that alley";
	now sortorder entry is 3;
	now description entry is "Go to where Korvin and his bitch are, as quick as you can";
	[]
	if BodyName of Player is listed in infections of SlimeList and Player is pure:
		choose a blank row in table of fucking options;
		now title entry is "Push your gooey body through the bars and approach Korvin";
		now sortorder entry is 4;
		now description entry is "Those bars won't stop you (for long)";
	[]
	if Strength of Player > 30:
		choose a blank row in table of fucking options;
		now title entry is "Wrench the bars out of the window-frame and approach Korvin";
		now sortorder entry is 5;
		now description entry is "Those bars won't stop you (for long)";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Shrug and turn back to your loot";
	now sortorder entry is 6;
	now description entry is "He isn't your dog anymore after all, you told him to go";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
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
				if nam is "Call out to Korvin":
					say "[Korvin_Aftermath_Meeting01]";
				else if nam is "Just watch quietly":
					say "[Korvin_Aftermath_Meeting02]";
				else if nam is "Rush from the storeroom and outside, then circle around to that alley":
					say "[Korvin_Aftermath_Meeting03]";
				else if nam is "Push your gooey body through the bars and approach Korvin":
					say "[Korvin_Aftermath_Meeting04]";
				else if nam is "Wrench the bars out of the window-frame and approach Korvin":
					say "[Korvin_Aftermath_Meeting05]";
				else if nam is "Shrug and turn back to your loot":
					say "[Korvin_Aftermath_Meeting06]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	wait for any key;
	clear the screen and hyperlink list;
	now Dogs will be Dogs is resolved;

to say Korvin_Aftermath_Meeting01: [call out]
	say "     Clearing your throat, you call out Korvin's name, loud enough to be audible above the racket the two of them are making. The German shepherd immediately freezes in motion, then quickly pulls out of his bitch and wheels around, taking a combat-ready posture. The half-human woman he was fucking turns around as well, revealing that she is indeed Wyatt, still recognizable enough despite the canine ears now situated on top of her head, some fur having spread along her arms and legs, and the double-row of nipples running down her naked chest, ending just above a tummy swollen in obvious pregnancy. As the two of them focus on you, standing at your barred window, a mix of emotions flashes over their faces, mostly too quick to make out in detail. Still, you can see that Wyatt isn't exactly happy to see you, and Korvin appears conflicted for a second, opening his muzzle as if to reply to your call.";
	say "     Then the shape of his pregnant mate getting up in the corner of his eye draws the anthro dog's eye and he turns his head, to watch her. Korvin's tail starts wagging as he does so, and his hard cock twitches visibly upwards. Reaching out with a paw-hand to lay it on the baby bump, the furred male then strokes his fingers over his bitch's nipples and breasts, with her leaning into his touch. Nodding towards the other end of the alley - away from you - and letting out a meaningful bark, he sends Wyatt trotting that way and then starts to follow her after a last look back over his shoulder. You call out again, but he doesn't react to it, simply speeding up his steps to catch up with Wyatt.";
	WaitLineBreak;
	Korvin_Aftermath_Guess;
	say "With a last sigh, you turn away from the window and pick up your backpack, then leave the looted store.";
	now Resolution of Dogs will be Dogs is 1; [called out]

to say Korvin_Aftermath_Meeting02: [watch]
	say "     Quietly standing at the window, you watch Korvin fucking his partner in an eager joining, slamming himself home inside her again and again. Yet there is more to it than just mindless rutting, as at one point, he pauses and withdraws, followed by bending down to eat out his part-human partner's slick pussy. As they move around a little while doing that, you are able to confirm that she is indeed Wyatt, still recognizable enough despite the canine ears now situated on top of her head, some fur having spread along her arms and legs, and the double-row of nipples running down her naked chest, ending just above a tummy swollen in obvious pregnancy. They're back to full-on fucking in short notice after that, clearly both enjoying it as Korvin pops his pre-knot bulge in and out of her snatch. ";
	say "     Things heat up more and more, with Wyatt letting out high-pitched moans as she reaches orgasm and Korvin being clearly not too far behind. Yet the increased noise appears to have been a little too much, as a screech can be heard overhead, with the shape of a hawkman flashing through the sky for a second. Quickly clamping one hand over his mate's mouth to muffle her, Korvin freezes mid-thrust and waits tensely for a moment before relaxing again. Seems like the flying being didn't spot them, or had some better target. Then Korvin starts up fucking again, though he clearly makes some effort to keep quiet while doing so. This even goes so far that he wraps his fingers around the bulge of his shaft, avoiding to knot his bitch when he soon comes, likely not wanting to be tied to her and helpless in case they got to make a run for it. Once the German shepherd has gotten his rocks off, he pulls out with a sigh of not being able to take his time, and the two of them get up to walk down the alley and from your sight.";
	WaitLineBreak;
	Korvin_Aftermath_Guess;
	say "With a last sigh, you turn away from the window and pick up your backpack, then leave the looted store.";
	now Resolution of Dogs will be Dogs is 2; [watched them]

to say Korvin_Aftermath_Meeting03: [rush out]
	if Dexterity of Player < 20:
		say "     You whirl around and wade back through the only somewhat diminished amount of boxes strewn about in the storeroom, then rush towards the window you used to enter into the looted store. Your now fuller backpack snags for a second on the security grating, forcing you to unhook it impatiently before you can sprint around the building and find the entrance to the alleyway. Turning the corner, you come to see... nothing but an empty alley, sadly. The cardboard that what must have been Wyatt was kneeling on shows some trace of what happened - with dribs and drabs of cum-splatter and also some long splashes across it. Seems like Korvin pulled out in a hurry, just before or even while he was cumming in his mate. Disappointed, you quickly move on to the other end of the alley and look around there, but the two of them are not in sight anywhere. This leaves you none the wiser about Korvin and his bitch.";
	else:
		say "     You whirl around and wade back through the only somewhat diminished amount of boxes strewn about in the storeroom, then rush towards the window you used to enter into the looted store. Your now fuller backpack snags for a second on the security grating, forcing you to unhook it impatiently before you can sprint around the building and find the entrance to the alleyway. Turning the corner, gasping and out of breath, you're loud enough for Korvin to notice you. The German shepherd immediately freezes in motion, then quickly pulls out of his bitch and wheels around, taking a combat-ready posture. The half-human woman he was fucking turns around as well, revealing that she is indeed Wyatt, still recognizable enough despite the canine ears now situated on top of her head, some fur having spread along her arms and legs, and the double-row of nipples running down her naked chest, ending just above a tummy swollen in obvious pregnancy.";
		say "     As the two of them focus on you, standing at the end of the alley, a mix of emotions flashes over their faces, mostly too quick to make out in detail. Still, you can see that Wyatt isn't exactly happy to see you, and Korvin appears conflicted for a second, opening his muzzle as if to reply to your call. Then the shape of his pregnant mate getting up in the corner of his eye draws the anthro dog's eye and he turns his head, to watch her. Korvin's tail starts wagging as he does so, and his hard cock twitches visibly upwards. Reaching out with a paw-hand to lay it on the baby bump, the furred male then strokes his fingers over his bitch's nipples and breasts, with her leaning into his touch. Nodding towards the other end of the alley - away from you - and letting out a meaningful bark, he sends Wyatt trotting that way and then starts to follow her after a last look back over his shoulder. You call out again, but he doesn't react to it, simply speeding up his steps to catch up with Wyatt.";
	WaitLineBreak;
	Korvin_Aftermath_Guess;
	LineBreak;
	now Resolution of Dogs will be Dogs is 3; [rushed around]

to say Korvin_Aftermath_Meeting04: [goo move]
	say "     Quickly dropping any clothes and gear too solid to fit through, you pull yourself up to the window and start to push yourself through, grimacing a little as the bars part your gooey form in several places and you begin to slide past, merging together on the other side. It isn't exactly pleasant to shove several rusty bars through your body - and more than that, you find out that at least one anchoring point of the bars isn't in much better shape than they themselves, letting out a screech of strained metal as your weight hangs on the bars. This of course draws attention, with the German shepherd immediately freezing in motion, then quickly pulling out of his bitch and wheeling around, taking a combat-ready posture. The half-human woman he was fucking turns around as well, revealing that she is indeed Wyatt, still recognizable enough despite the canine ears now situated on top of her head, some fur having spread along her arms and legs, and the double-row of nipples running down her naked chest, ending just above a tummy swollen in obvious pregnancy.";
	say "     As the two of them focus on you, still in the process of gooping through the barred window, a mix of emotions flashes over their faces, mostly too quick to make out in detail. Still, you can see that Wyatt isn't exactly happy to see you, and Korvin appears conflicted for a second, opening his muzzle as if to say something. Then the shape of his pregnant mate getting up in the corner of his eye draws the anthro dog's eye and he turns his head, to watch her. Korvin's tail starts wagging as he does so, and his hard cock twitches visibly upwards. Reaching out with a paw-hand to lay it on the baby bump, the furred male then strokes his fingers over his bitch's nipples and breasts, with her leaning into his touch. Nodding towards the other end of the alley - away from you - and letting out a meaningful bark, he sends Wyatt trotting that way and then starts to follow her after a last look back over his shoulder. Still in the last stage of pulling free from the bars, you can do nothing but call after them, but Korvin doesn't react to it, simply speeding up his steps to catch up with Wyatt.";
	WaitLineBreak;
	Korvin_Aftermath_Guess;
	say "With a last sigh, you turn back to the window and repeat the process of flowing through the bars, then pick up your backpack and gear before leaving the looted store.";
	now Resolution of Dogs will be Dogs is 4; [goo window move attempted]

to say Korvin_Aftermath_Meeting05: [bar wrench move]
	say "     Looking at the rusty bars of the window and knowing your own strength, you decide that going through might be possible. Thus, you wrap your hands around the bars and give a sharp wrench, with all the might you have - which is a bit too much, apparently. The anchoring point of the bars seems to have been in a bad shape too, resulting in a loud screech of strained metal as you rip the hole set of bars out of the wall, followed by a shower of bricks coming down right along with it. As the resistance faltered unexpectantly quick, you fall over with the bar-grate in hand, crushing numerous empty boxes, with others slipping from the sides to halfway bury you in cardboard. This has the positive side-effect of protecting you from the falling bricks a little, but makes it harder to dig yourself out afterwards. By the time you manage it and step into the alley through the hole you created, there is no one there.";
	say "     The cardboard that what must have been Wyatt was kneeling on shows some trace of what happened - with dribs and drabs of cum-splatter and also some long splashes across it. Seems like Korvin pulled out in a hurry, just before or even while he was cumming in his mate. Disappointed, you quickly move on to the other end of the alley and look around there, but the two of them are not in sight anywhere. This leaves you none the wiser about Korvin and his bitch sadly.";
	WaitLineBreak;
	Korvin_Aftermath_Guess;
	say "With a last sigh, you return to the storeroom and collect your backpack before leaving the looted store.";
	now Resolution of Dogs will be Dogs is 5; [goo window move attempted]

to say Korvin_Aftermath_Meeting06: [bar wrench move]
	say "     Ignoring what isn't your business anymore, you turn back to your loot and put the backpack on. After that, you simply leave the store without looking back.";
	now Resolution of Dogs will be Dogs is 99; [ignored]

to Korvin_Aftermath_Guess:
	say "     Once they are gone, your imagination fills in your best guess of what happened: Korvin had been a relatively typical street dog when you took him as yours after all, only even remembering a name for himself after you gave his life rules - like obeying yourself - as well as structure, with his task of being your trusted bodyguard instead of just another horny beast roaming around. He seemed fine after that, enough so that you left him with Wyatt, trying to reclaim his former self. From what you just saw, this can't have lasted all that long. It might have started with Wyatt somehow coming in contact with him and beginning to be infected herself, but that's unlikely as you think about it more. If you're honest with yourself, Korvin likely slipped back to simply reacting on his urges, and what would be easier than walking back into the bedroom he once shared with Wyatt and taking her, then and there?";
	say "     It likely happened as she was sleeping, unaware of his approach and thus unable to appeal to his human self before Korvin began to push his nonhuman cock into her. After that, things would have escalated very quickly, ending up at what you saw in the alley. They likely left the apartment to avoid reminders of who they once were, giving in to just being a dog and his bitch, with a litter of puppies on the way. Blowing out your breath, you tell yourself that sometimes even the best of intentions go awry. ";

instead of navigating Grey Abbey Library while (gshep is tamed and gsd_pet >= 60 and Resolution of Trucker Bar is 2 or Resolution of Trucker Bar is 3 and number of bunkered people + the number of booked people > 3 and "Relationship_Talk_Done" is not listed in Traits of Korvin): [Korvin tamed, confident Korvin (blackcollar), learned about his past and made/let him stay, 4+ people in the library]
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Relationship talk with Korvin[line break]";
	if gshep is listed in companionList of Player: [Korvin is with the player]
		say "     Making your way through the city on the way back to your home base in the Grey Abbey Library, you soon see the familiar shape rise up before you. Thankfully your trip was fairly uneventful, as you managed to avoid the attention from the more hostile infected, and others went out of your way or were 'busy' fucking each other's brains out. Crossing the street [if Territory Marker is in Main & 7th Street]and walking past the territory marker for your 'tribe' that Urik put up[end if] you are about to start up the stairs to the library when you hear Korvin clear his throat behind you. 'Boss, can we talk for a second?' he asks when you turn around looking slightly unsure about himself as he does so. When you smile and nod to him, the anthro dog lets out the breath he had been holding and sits on the stairs, looking up to you.";
	else: [waiting in the library]
		say "     Making your way through the city on the way back to your home base in the Grey Abbey Library, you soon see the familiar shape rise up before you. Thankfully your trip was fairly uneventful, as you managed to avoid the attention from the more hostile infected, and others went out of your way or were 'busy' fucking each other's brains out. Crossing the street [if Territory Marker is in Main & 7th Street]and walking past the territory marker for your 'tribe' that Urik put up[end if] you are about to start up the stairs to the library when you see Korvin step out of the doors in front of you. 'Boss, can we talk for a second?' he asks, looking slightly unsure about himself as he does so. When you smile and nod to him, the anthro dog lets out the breath he had been holding and sits on the stairs, looking up to you.";
	say "     Touching his collar, almost as if to remind himself of the fact that you felt him worthy of it - with its supple black leather and shiny studs along the band - the German shepherd clears his throat, then says, 'So, couldn't help but notice that the place's filling up.' He points at the building behind him with a thumb and goes on to say, 'And it's not just... you and me. Uhm. So... what exactly am I, to you, and them?' As he tensely awaits your reply, you see Korvin's more vulnerable side show quite explicitly, not hidden as usual behind the cocky exterior he presents. Clearly, the choices you're about to make with your reply are very important to him.";
	LineBreak;
	say "     [bold type]What will you reply to his first question? (him and you) [roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "He's the awesome bro you always wanted";
	now sortorder entry is 1;
	now description entry is "Be best buds (nothing more and nothing less)";
	[]
	choose a blank row in table of fucking options;
	now title entry is "You want him, in every way possible";
	now sortorder entry is 2;
	now description entry is "By your side, in your bed, in your heart, you want it all! Will you tell him he's special to you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "He's your attack dog, serving well in that role";
	now sortorder entry is 3;
	now description entry is "Tell him he's just a useful tool to have";
	[]
	[Note: No sex toy option, as those would not have the black collar on]
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
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
				if nam is "He's the awesome bro you always wanted":
					say "[Korvin_Relationship01]";
				else if nam is "You want him, in every way possible":
					say "[Korvin_Relationship02]";
				else if nam is "He's your attack dog, serving well in that role":
					say "[Korvin_Relationship03]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	wait for any key;
	clear the screen and hyperlink list;
	LineBreak;
	say "     [bold type]What about the second question? (him and others in the library) [roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "You just want to save everyone you can, and don't want to be too controlling";
	now sortorder entry is 1;
	now description entry is "Tell him everyone's mostly free to choose what they do with each other";
	[]
	choose a blank row in table of fucking options;
	now title entry is "You just want to save everyone you can, and it would be best if things didn't devolve into rampant fucking like out in the city";
	now sortorder entry is 2;
	now description entry is "Put a damper on him having sex with others";
	[]
	if "Relationship_Tool" is listed in Traits of Korvin:
		choose a blank row in table of fucking options;
		now title entry is "You just want to save everyone you can, but if any of them want to make use of him, you're fine with that";
		now sortorder entry is 3;
		now description entry is "He's your dog, meant to serve. That can include your guests too";
	[]
	if "Relationship_Lover" is listed in Traits of Korvin:
		choose a blank row in table of fucking options;
		now title entry is "You just want to save everyone you can, and he shouldn't have eyes for them anyways";
		now sortorder entry is 4;
		now description entry is "After all, Korvin's your lover, and you don't want to share";
	[]
	choose a blank row in table of fucking options;
	now title entry is "You're building a private harem for only you personally to enjoy (and that includes him)";
	now sortorder entry is 5;
	now description entry is "If anyone's going to fuck around in the library, its better be with your express permission";
	[]
	if "Relationship_Bro" is listed in Traits of Korvin:
		choose a blank row in table of fucking options;
		now title entry is "You're building a harem and he's part of it. But as your bro, he's got special privileges";
		now sortorder entry is 6;
		now description entry is "Tell Korvin you won't be cross if he fucked around with someone else that belongs to you";
	[]
	if "Relationship_Lover" is listed in Traits of Korvin:
		choose a blank row in table of fucking options;
		now title entry is "You're building a harem, but wouldn't be cross if your lover had some fun with them";
		now sortorder entry is 7;
		now description entry is "Tell Korvin that his love is what counts for you, but he's free to live out some lust with the others";
	[]
	if "Relationship_Lover" is listed in Traits of Korvin:
		choose a blank row in table of fucking options;
		now title entry is "You're building a harem for both of you, yourself and your canine lover";
		now sortorder entry is 8;
		now description entry is "Tell Korvin that the two of you can use them, together";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
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
				if nam is "You just want to save everyone you can, and don't want to be too controlling":
					say "[Korvin_Relationship_Library01]";
				else if nam is "You just want to save everyone you can, and it would be best if things didn't devolve into rampant fucking like out in the city":
					say "[Korvin_Relationship_Library02]";
				else if nam is "You just want to save everyone you can, but if any of them want to make use of him, you're fine with that":
					say "[Korvin_Relationship_Library03]";
				else if nam is "You just want to save everyone you can, and he shouldn't have eyes for them anyways":
					say "[Korvin_Relationship_Library04]";
				else if nam is "You're building a private harem for only you personally to enjoy (and that includes him)":
					say "[Korvin_Relationship_Library05]";
				else if nam is "You're building a harem, but as your bro, he's free to use em too":
					say "[Korvin_Relationship_Library06]";
				else if nam is "You're building a harem, but wouldn't be cross if your lover had some fun with them":
					say "[Korvin_Relationship_Library07]";
				else if nam is "You're building a harem, which you'd be happy to share together with your canine lover":
					say "[Korvin_Relationship_Library08]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	wait for any key;
	add "Relationship_Talk_Done" to Traits of Korvin;
	clear the screen and hyperlink list;

[First Choice]

to say Korvin_Relationship01: [bro]
	say "     Stepping up and sitting down next to Korvin, you tell him that you like him, and having him around with you. He's your bro, always there for anything and ready to watch your back. It's like you're a tight, to-person fraternity or something. Then you hold out a fist for him to bump, earning a happy grin from the German shepherd as he does so, followed by gripping your forearm and squeezing it tightly. You can feel his tail thumping against your side from just how strongly he's wagging it. 'Man, I - almost can't believe it! I mean, I was just a fuckin['] street dog when you found me. Gonna pay back your trust, that's for sure!'";
	add "Relationship_Bro" to Traits of Korvin;

to say Korvin_Relationship02: [lover]
	say "     Stepping up and sitting down next to Korvin, you surprise him by sliding an arm around the middle of his back and pulling him closer to you. The canine looks a little caught off guard (in a good way) as you plant a quick peck on his nose, then break out into a beaming smile. As you go ahead to tell him that you want him, not just as a companion or bedwarmer, but far more than that, he is momentarily speechless, then finally gets his words out, 'Really? But I - I was just a fuckin['] street dog when you found me! ";
	if Player is Puremale:
		say "And I never really thought that way, about a dude I mean. It's just...' You give the conflicted anthro a comforting squeeze, bringing your other hand up to his chest and feeling the rapid beat of his heart through the warm fur. Staying quiet, not pushing or forcing him into this, you simply wait patiently, until he eventually says, [if Player is not mpreg_ok]'But, but maybe if it's you... that wouldn't be such a bad thing?'[else]'But, but maybe it wouldn't all be different, would it? I - I do want kids, in the future, and I kinda noticed that you've got a certain smell to you. You're fertile, as a guy, right? But w-would you even want to have my children? From a street mutt and all...'";
	else if Player is female:
		say "And... I do want kids, in the future. Do you really want a guy like me to be their father? Or maybe that's what you want? A bad boy?' As he says this, a little bit of his usual cockiness returns and Korvin gives you a smirk as he extracts his arm from between you, laying it around your shoulders.";
	say "     You lean in at that point, kissing Korvin straight on the scar crossing the side of his muzzle, showing that you're ready to accept all of him, everything from his past and former self, to any hangups, to that little imperfection. Then you tell him that he better believe you because you're serious about this, in between making out some more and wrestling his tongue with yours. He's only too happy to submit to your proclamation of affection, and you can feel his tail thumping against your side from just how strongly he's wagging it.";
	add "Relationship_Lover" to Traits of Korvin;

to say Korvin_Relationship03: [tool]
	say "     Stepping up and coming to stand over Korvin, you reach to hook a finger under his lower jaw and draw his head up by it, so he looks right into your eyes. Then you proceed to tell him that he's just what the collar marks him for. Yours. Your obedient attack dog, serving quite well in the role you picked for him. He needn't worry about anything else, just continue obeying you. Seeing the anthro canine's Adam's apple bob as he swallows, you pat his head possessively, with him saying, 'Yes, boss!' as you do so.";
	add "Relationship_Tool" to Traits of Korvin;

[Second Choice]

to say Korvin_Relationship_Library01: [free love]
	say "     Addressing Korvin's second question, about the people you've been bringing into the library, you tell him that you're simply saving those that are sane enough to still have any self-control. Not wanting to be a controlling taskmaster or anything, he's free to come to any arrangements that he wants with them. A lewd grin crosses Korvin's face and he starts to say, 'Oh, sweet! So I can -' You hastily add that he of course shouldn't fall back to his bad habits from being a street dog. He's better than that, as your dog. 'Sure boss, I'll do my best,' is his reply after that, which you reward by stroking his head.";
	add "Library_free fucks" to Traits of Korvin;

to say Korvin_Relationship_Library02: [no love]
	say "     Addressing Korvin's second question, about the people you've been bringing into the library, you tell him that you're simply saving those that are sane enough to still have any self-control. And while you don't really want to be a controlling taskmaster, it'd really be best if he didn't just come on to anyone. Otherwise your little sanctuary might devolve into just another local orgy like the rest of the city. A somewhat disappointed expression crosses Korvin's face and he blows out his breath, then nods to you. 'Sure boss, I'll do my best,' is his reply after that, which you reward by stroking his head, adding that things of course are different when you're exploring the city together. 'Oh yeah!' Korvin eagerly barks, his moping from earlier quickly forgotten.";
	add "Library_no fucks" to Traits of Korvin;

to say Korvin_Relationship_Library03: [Korvin's free game for anyone]
	say "     Addressing Korvin's second question, about the people you've been bringing into the library, you tell him that you're simply saving those that are sane enough to still have any self-control. Not wanting to be a controlling taskmaster or anything, they're free to come to any arrangements that they want with each other. As for himself, well if any of your guests are in need to let off some steam, they're free to make use of your dog. 'Even if it's a guy?!' he asks, and you tell him yes. A slightly sullen expression crosses Korvin's face, then smoothes out as he makes a conscious effort to suppress it. Finally, the German shepherd says, 'Oh, okay.' You nod at his acceptance of the role and tell him he's a good dog.";
	add "Library_bitched out" to Traits of Korvin;

to say Korvin_Relationship_Library04: [private lover]
	say "     Addressing Korvin's second question, about the people you've been bringing into the library, you tell him that you're simply saving those that are sane enough to still have any self-control. Not wanting to be a controlling taskmaster or anything, they're free to come to any arrangements that they want with each other. As for himself, well you care about him deeply and want to have him all for yourself. Planting another kiss on his muzzle, you show him some more affection before adding that there might perhaps be a threesome or two as a possibility, but you want him to focus on the two of you. 'Sure babe,' he replies, eyes watching you closely for how you react to this term of affection. As you simply smile and keep holding him, he seems relieved and happy, then says, 'I'll do my best.'";
	add "Library_private lover" to Traits of Korvin;

to say Korvin_Relationship_Library05: [harem, player focused only]
	say "     Addressing Korvin's second question, about the people you've been bringing into the library, you tell him that the nanite apocalypse has given you the perfect opportunity to build a harem with partners that catch your attention. But of course, this being YOUR harem, no one else is allowed to fuck around. You give him a serious look as you say this, wanting to really drive home the point. A slightly sullen expression crosses Korvin's face, then smoothes out as he makes a conscious effort to suppress it. Finally, the German shepherd says, 'Oh, okay.' You nod at his acceptance of the role and tell him he's a good dog, adding that things of course are different when you're exploring the city together and find some sexy street-meat. 'Oh yeah!' Korvin eagerly barks, his moping from earlier quickly forgotten.";
	add "Library_no fucks" to Traits of Korvin;
	FeatGain "Harem Master";

to say Korvin_Relationship_Library06: [harem, bro has free access]
	say "     Addressing Korvin's second question, about the people you've been bringing into the library, you tell him that the nanite apocalypse has given you the perfect opportunity to build a harem with partners that catch your attention. But of course, being your bro and all, you're perfectly fine if he made use of them too. You put a hand on his shoulder and give it a squeeze, sharing a broad grin with the German shepherd. 'Sweet!' he whoops in anticipation. You hastily add that he of course shouldn't fall back to his bad habits from being a street dog. He's better than that now, and should at least get some consent. 'Sure boss, I'll do my best,' is his reply after that, which you reward by stroking his head.";
	add "Library_free fucks" to Traits of Korvin;
	FeatGain "Harem Master";

to say Korvin_Relationship_Library07: [harem, lover has free access]
	say "     Addressing Korvin's second question, about the people you've been bringing into the library, you tell him that the nanite apocalypse has given you the perfect opportunity to build a harem for both of you with the best guys and bitches that catch your attention. And since he's your very special dog, that means that he's of course fine if he made use of them anytime too. Planting another kiss on his muzzle, you show him some more affection before adding that perhaps a threesome or two could be fun. 'Sure babe,' he replies, eyes watching you closely for how you react to this term of affection. As you simply smile and keep holding him, he seems relieved and happy, then says, 'I'll do my best.'";
	add "Library_free fucks" to Traits of Korvin;
	FeatGain "Harem Master";

to say Korvin_Relationship_Library08: [harem, shared together only]
	say "     Addressing Korvin's second question, about the people you've been bringing into the library, you tell him that the nanite apocalypse has given you the perfect opportunity to build a harem with partners that catch your attention. But of course, he himself is special to you, and you want to have him all for yourself. Planting another kiss on his muzzle, you show him some more affection before adding that there might perhaps be a threesome or two as a possibility, but you want him to focus on the two of you. 'Sure babe,' he replies, eyes watching you closely for how you react to this term of affection. As you simply smile and keep holding him, he seems relieved and happy, then says, 'I'll do my best.'";
	add "Library_private lover" to Traits of Korvin;
	FeatGain "Harem Master";

[ *** notes ]
[
Post-fight (2nd or 3rd fight)
Korvin bad-mouths the player, criticizing their fighting style/skill, kept getting in his way, glory hound
- Player can put him back in his place - "I beat you", pin him down and so on. Fuck him, maybe minor stat upgrade to K.
- Player listens to his feedback, maybe a bit of XP for player

Growls wants to go out and fight (if no combat in several rounds)
---- what are you doing coming in here? I want to go out and fight. ----
- Player can put in his place & set schedule
- Player can be understanding and go out for a fight - letting him get it out of his system. - Random fight

]


[ "Relationship_Talk_Done"  - Relationship with Korvin defined (opens up the options below)                  ]

[ Relationship Memory Traits for Korvin:                                                                     ]
["Relationship_Bro" - Player and Korvin are buddies, might fuck someone together, no committed relationship  ]
["Relationship_Lover" - Player told Korvin they want more, committed relatinship, etc.                       ]
["Relationship_Tool" - Player uses Korvin and expects him to do as he's told                                 ]

[ Sex Rules for Korvin in the Library + Bunker                                                               ]
["Library_free fucks" - Korvin may fuck anyone in the library freely - as long as he doesn't force it        ]
[   + "Relationship_Lover" + "Harem Master" Player Feat - lover may fuck your harem too                      ]
[   + "Relationship_Bro" + "Harem Master" Player Feat - bro may fuck your harem too                          ]
["Library_no fucks" - Korvin should not fuck anyone in the library                                           ]
[   + "Harem Master" feat for the player - no access for him                                                 ]
["Library_bitched out" - Korvin is free game for anyone                                                      ]
["Library_private lover" - Player wants to be the main partner of Korvin, only threesomes allowed (maybe)    ]
[   + "Harem Master" player feat - sharing the Harem together                                                ]

instead of navigating Grey Abbey Library while (gshep is tamed and gsd_pet >= 60 and Resolution of Trucker Bar is 2 or Resolution of Trucker Bar is 3 and Amy is booked and "Relationship_Talk_Done" is listed in Traits of Korvin and (HP of Amy is 11 or HP of Amy is 10 or HP of Amy is 101) and Lust of Amy is 0): [Korvin tamed, confident Korvin (blackcollar), learned about his past and made/let him stay, Amy Present, had relationship talk, Amy either fucked, ready for sex or player not interested in her, not pregnant]
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Korvin wants to chat up Amy[line break]";
	if gshep is listed in companionList of Player: [Korvin is with the player]
		say "     Making your way through the city on the way back to your home base in the Grey Abbey Library, you soon see the familiar shape rise up before you. Thankfully your trip was fairly uneventful, as you managed to avoid the attention from the more hostile infected, and others went out of your way or were 'busy' fucking each other's brains out. In those latter instances, Korvin actually stops and watches once or twice, grinning broadly as he takes in the action. 'Can't we stop and have a go too? Not like they're not in the mood, or could do much about it before we're right on them!' Shaking your head about his raging libido and rather direct approach to sex, you whistle and tell him to come to heel before moving on. Eventually arriving back, you cross the street[if Territory Marker is in Main & 7th Street] and walk past the territory marker for your 'tribe' that Urik put up, [else], [end if]then stride up the broad steps in front of the library door and enter your home base.";
		say "     As the double doors swing shut behind you and you let your gaze sweep over the interior of the expansive converted abbey, your gaze falls upon ";
	else: [waiting in the library]
		say "     Making your way through the city on the way back to your home base in the Grey Abbey Library, you soon see the familiar shape rise up before you. Thankfully your trip was fairly uneventful, as you managed to avoid the attention from the more hostile infected, and others went out of your way or were 'busy' fucking each other's brains out. Crossing the street [if Territory Marker is in Main & 7th Street]and walking past the territory marker for your 'tribe' that Urik put up[end if] you stride up the broad steps in front of the library door and find Korvin leaning against the wall besides it. 'Hey boss. Just hanging out and watching to keep the rabble away from messing up the place.' The German shepherd says in greeting, to which you respond to in kind, then push open the double doors and enter the building with him on your heels.";
		say "     Just as you are about to start chatting with Korvin though, your gaze is drawn to the side by some movement: It's ";
	say "Amy, lying on her front on one of the sofas, reading a book with visible excitement. Her tail is raised and wagging a little, and the young husky has her lower legs up too, waving her paws slowly back and forth without realizing it fully. The sight of a young bitch stretched out like that in the nude has a marked effect on Korvin, who seems to come to attention beside you, muscles tensing a little as his instincts kick into gear. The desire to pounce on a pretty bitch is clearly an ingrained part of his mind, but in taking him off the streets, you rained in the impulses and are giving him some stability. As if he had heard your thought, the German shepherd draws in the tongue that had slipped partly out of his muzzle and gulps, then looks over at you while lowering himself from the tiptoe of his paws, not standing as ready for a sprint anymore.";
	TraitGain "Feral Impulses" for Korvin; [TODO: Write a talk scene about this - he was drawn to rut Amy because she was a _bitch_ ...vs Wyatt, who was human, so it took longer for him to revert]
	WaitLineBreak;
	say "     'Damn, that looks like one sweet bitch,' escapes under Korvin's breath, followed by a ";
	if "Relationship_Bro" is listed in Traits of Korvin:
		say "grin spreading over his features and your bro wagging his eyebrows up and down. ";
	else if "Relationship_Lover" is listed in Traits of Korvin:
		say "flush of embarrassment overcoming him as he realizes you might not want to hear him gush over anyone besides yourself. ";
	else if "Relationship_Tool" is listed in Traits of Korvin:
		say "slightly unsure expression flashing over his features, remembering that you expect full obedience from him. ";
	say "'Uhm, I mean -' the German shepherd starts to say in a somewhat louder tone, which draws Amy's attention to the two of you. As the young bitch looks over, she pushes herself up while turning her upper half, creating a bit of a show with her sleep furry shape and those four nice and shapely breasts. If she wasn't so innocent a girl, you'd have to think she was doing it on purpose to rile someone up. 'Hey [if Player is not defaultnamed][name of Player] and Korvin[else]there[end if], you're back!' Amy calls out happily, her tail thumping against the backrest as she follows up with, 'Did either of you have any adventures? There must be lots of stuff going on outside!'";
	say "     The relatively clueless assumptions that her words betray draw a chuckle from Korvin, followed by him saying, 'It's a tough place. Wanna hear some stories about it?' ";
	if "Relationship_Tool" is listed in Traits of Korvin: [player doesn't see him as a person really - so no friendly chatting and whatnot]
		say "Clearing your throat at that point, you interrupt and proclaim that Korvin does have other things to do and should pay more attention to his duties. As they hear those words, Amy's excited expression drops in disappointment, while Korvin stiffens, cutting short his start of walking over to her. The muscular German shepherd gulps and replies, 'Of course, boss!' With that, he slinks off back towards the front door and steps outside. You go over to Amy and talk for a little while before she picks up her book again and gets back to reading.";
		TraitGain "Amy_Interaction_Stopped" for Korvin;
	else if "Relationship_Bro" is listed in Traits of Korvin: [NOTE: or Relationship with Amy -> this scene has the player mostly touching Amy]
		say "Then he sets out towards Amy with some swagger in his steps, though he still throws a look over his shoulder at you, almost seeming to be nervous about showing that he can have a simple talk with a sexy woman without forgetting himself. Giving him a thumbs-up to strengthen Korvin's self-confidence, you follow along and soon the three of you are sitting next to each other on the sofa, with Amy to your left and Korvin to your right. The young woman barely can sit still, with her tail wagging against the cushions and her excited gaze switching back and forth between you and your canine companion. 'Oh, this is so exciting! What is it like? Did you run into beautiful maidens and ravished them?'";
		WaitLineBreak;
		[
		if <Relationship with Amy>:
			say "     Turning your head to your husky girlfriend, you smile at her, stroking her upper arm gently as not to break the young woman from her romance-novel-like phantasies, even as you say that it's not quite as nice and friendly as she might imagine. From the corner of your eye, you can see Korvin leaning forward, then starting to say, ";
		else:
		]
		say "     Turning your head to your bro for a second, you share a knowing smile with the dog, knowing that things are far less romance-novel-like than Amy is imagining them. Amusement dances in his eyes, with the anthro giving your upper arm a squeeze as he leans forward and says, ";
		say "'Okay, how about this: A little while before I met [if Player is not defaultnamed][name of Player][else]the boss[end if], I came upon the scene of a robbery at the edge of the urban forest. Some dastardly ruffians had thrown down an elven maiden, and were scuffling over her belongings.' Amy ooohs at the scene he lays out, and she asks, 'Was she okay? And who attacked her?' Giving a serious expression, Korvin replies, 'Oh, they were terrible guys! Big and scruffy, half bear and half pig! But they were no match to me, hah! One mighty bark and the bandits ran off! I bet they're still hiding in their lair, trembling when they think back to it!'";
		say "     You can't help but chuckle at the fairly ridiculous tale that Korvin is spinning, knowing exactly that this wasn't how things went in reality. Guessing that he did in fact meet an elven woman, you somehow doubt there was anyone else involved, or if they were they might have been her companions. Korvin jumping a pretty bit of tail that he sniffed out seems far more likely for the tough and somewhat rape-y street dog that he was not so long ago. The German shepherd gives you a bit of side-eye as your outburst interrupts his story a little, then bumps you with his elbow to prompt you to play along. 'Yeah, even [if Player is not defaultnamed][name of Player][else]the boss[end if] is impressed by my might, and laughs about them running with the tails between their legs!' You suppress a smirk and nod to confirm Korvin's words, which impresses Amy even more.";
		WaitLineBreak;
		say "     With her eating up his every word, and you wanting to help your bro out, you slip out from between them, allowing the young husky to scooch up close to her storyteller while you sit down to her left now. This way you'll be out of her line of sight, letting her focus all her attention on the muscular dog. Korvin capitalizes on the opportunity immediately, showing off his bicep for her to feel before he goes on to say, 'The elven maiden was very thankful for the timely rescue, and took me to a hidden meadow deeper in the forest, wanting to show her appreciation on the soft, green grass.' Amy reacts to this wish a happy sigh of, 'Oooh! That's so romantic!' Meanwhile a mental image of an elf running away from a barking and chasing German shepherd flashes through your mind, with Korvin finally catching her in the spot he described, and pinning her down, then spreading her legs to get at his goal.";
		say "     Clearing his throat, Korvin adds, 'You know, now that I think of it, you're fairly similar to her. Beautiful, with a pretty smile, and your other delectable assets.' As he says this, the German shepherd moves one of his paw-hands to her side, just barely brushing his fingertips through her fur as he moves the hand along. After a light touch of the side of her breasts, he withdraws again leaving Amy trembling with excitement. 'We spent several unforgettable hours in the glade, at the end of which my elven maiden begged me to stay with her, but I could not. I had to go back into the city to do my duty, after all. In the end, she pleaded to at least keep a memento of me, sighing in pleasure as she let me fill her with my seed.' 'Wow! So you've got an elven baby?' the innocent husky asks with round eyes, and Korvin laughs as he adds, 'I sure hope so!'";
		WaitLineBreak;
		say "     Your traitor imagination plays up again, throwing in that in truth, the woman's pleas were most likely for him to pull out and not knock her up. Knowing Korvin's street dog self, you're absolutely sure that he'd have knotted her vigorously, ensuring that every last little drop of his virile seed filled the woman's womb. He'd have gotten off hard to the thoughts of fathering a litter of puppies in her - after all, that kink is still alive and well in even your somewhat more civilized 'reformed' Korvin. ";
		if "Library_free fucks" is listed in Traits of Korvin: [player is fine with him sleeping around]
			say "Amy is completely oblivious to the fact that what she was told is only a fanciful story, in the meantime. She's basically gushing over Korvin's heroics and the 'soo romantic' ending, and then it happens: The young woman moves her paw-hand to rest on the German shepherd's leg, feeling his muscles through the fur. Eager for more, she slides her fingers higher between his legs, and soon brushes against his balls.";
			say "     This is the signal he's been waiting for, and Korvin makes his move, drawing her muzzle towards his own and kissing Amy with his tongue wriggling into her mouth. A questing hand searches out and cups one of her breasts at the same time, showing that this horny dog is ready to go for broke, now that he's got his innocent listener all warmed up and aroused.";
			LineBreak;
			say "     [bold type]What do you want to do?[roman type][line break]";
			LineBreak;
			say "     [link](1)[as]1[end link] - Be a good wing-man and ensure that Korvin gets laid (staying close while they do it).";
			say "     [link](2)[as]2[end link] - Make an excuse to step away, observing what will happen next.";
			say "     [link](3)[as]3[end link] - Make an excuse to step away and leave them to sate their libido privately.";
			say "     [link](4)[as]4[end link] - Clear your throat and say that Amy must have touched him by accident.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 4:
				say "Choice? (1-4)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to stay up close and make Korvin fuck Amy, [link]2[end link] to be a voyeur when they fuck, [link]3[end link] to let them fuck in private, or [link]4[end link] to steer things to more tame results.";
			if calcnumber is 1:
				LineBreak;
				if HP of Amy is 101: [player has no interest in her personally]
					say "     Letting your eyes roam over Amy's body, you watch Korvin lean in and touch the side of her hips, then sliding one hand through the soft fur to her tummy before moving up to play with the nipples on her lower breasts. Now having the German shepherd fondling her, the young husky moans and trembles at all the attention she's getting. Korvin plays with her body, until the he soon bends his head to lick one of the young woman's breasts. 'I'll show you a really, really good time!' Korvin tells her with a grin and a nod to you. A little overwhelmed, Amy is quite willing and plyable, resulting in you coming to sit behind her on the sofa, your back propped up against the backrest where it has a 90° angle, with Amy sitting in front of you, leaning back against your chest.";
				else:
					say "     Letting your eyes roam over Amy's body, you lean in and touch the side of her hips, then sliding one hand through the soft fur to her tummy before moving up to play with the nipples on her lower breasts. Now having two people fondling her, the young husky moans and trembles at all the attention she's getting. Korvin and yourself play with her body, until the German shepherd soon bends his head to lick one of the young woman's breasts. 'I'll show you a really, really good time!' Korvin tells her with a grin and a nod to you. A little overwhelmed, Amy is quite willing and plyable for you, resulting in you coming to sit behind her on the sofa, your back propped up against the backrest where it has a 90° angle, with Amy sitting in front of you, leaning back against your chest.";
				say "     As you have your arms wrapped around her from behind, [if HP of Amy is 101]holding her around her waist and whispering comforting words into Amy's ears, [else]cupping the shapely forms of her breasts, and whispering sweet words into Amy's ears, [end if]Korvin goes on all fours, then lowers his head and starts to lap at her sex. 'OOooh! That's - that... oooh! That feels nice, you licking me there!' Amy moans loudly, with Korvin raising his head for a second to look at her, grinning as he meets your graze over her shoulder. The husky bitch pants[if HP of Amy is 101], [else]when you pinch her nipples the next moment, [end if]then lets out a full on shout of a moan when Korvin buries his muzzle between her nether lips, his floppy tongue pushing into her pussy. With a breathless gasp, Amy twitches and writhes in your grasp, her hands flying to hold onto Korvin's head and pushing it against her crotch. Despite being a former street dog and clearly more used to quick fucks, Korvin does take some time eating her out before doing anything else - which certainly makes him quite popular with Amy. Somehow, you can't help but think that you being here might have something to do with that restraint.";
				WaitLineBreak;
				say "     Soon, simply licking a pussy isn't enough for Korvin, and when he pushes himself up to just a kneeling pose, you can see his canine cock hard and erect, dripping pre-cum onto the sofa. He scooches forward on his knees until his thighs rub the underside of her spread legs. The muscular anthro grabs hold of his erection, slapping it against her crotch and rubbing the slick and leaking head through Amy's pubic fur. ";
				if Virgin of Amy is true:
					say "At that point, the young woman says innocently, 'It's my first time. Will you be gentle?' 'Don't worry babe, I know. I felt it. I'll make sure it doesn't hurt long, alright? Here, we can even have your special friend put it in,' he replies, taking hold of your hand [if HP of Amy is 101]and pulling it to his hard cock. It throbs in anticipation, with your hand spreading some slick pre-cum along its length as you stroke your canine companion a few times. [else]from where it is resting against Amy's breast and pulling it down to touch her pussy. It feels slick and open, both from the tonguing he gave her earlier as well as Amy's own juices. [end if]Something tells you that he won't be gentle at all, with this being his way of gaining your approval for what he's about to do.";
					say "     [if HP of Amy is 101]With Korvin being hard as a rock and leaking copious amounts of pre, he's more than ready to get his bitch right now. [else]Judging by how wet Amy is right now, and with her juices slick on your fingers, you doubt she'll be too cross about that though. [end if]Seeing the anthro give you a wink as he pushes his hips forward and rubs his erection against your hand, you bend his hard rod down a little, allowing its tip to slip in between her nether lips. Korvin leans over her to meet Amy's muzzle for a deep kiss, and while his tongue is snaking into her mouth, wrestling with Amy's own, the German shepherd slams his hips forward, hilting his red rocket inside her with one forceful push that bursts Amy's hymen in the blink of an eye. The young anthro bucks against you from the sudden pain of losing her virginity, with you holding onto her and stroking her cheek to distract Amy from the momentary discomfort. Meanwhile, Korvin doesn't move at all beyond this, letting his cock simply rest inside Amy to let her get used to its girth.";
					WaitLineBreak;
					say "     A moment or two later, he pulls back from kissing her, which allows some whimpers to escape Amy's throat, and him to say, 'Trust me, it's better this way. Get it over in a flash, eh?' With that said, Korvin begins to move his hips up and down, slowly starting to pump in and out of the freshly taken slit of his new bitch. It doesn't take long before the sensations of being fucked banish everything except lust from the forefront of Amy's mind, and she starts to moan in pleasure from having the virile anthro ramming into her. After this point, you have a ringside seat for the two of them starting to rut against each other's bodies, literally like dogs in heat as the instincts of their animal sides take over. ";
				else:
					say "Korvin seems to be ready to line himself up for fucking her, but then suddenly pauses, thinking better of it. Instead, he reaches for your hand [if HP of Amy is 101]and pulls it to his hard cock. It throbs in anticipation, with your hand spreading some slick pre-cum along its length as you stroke your canine companion a few times. [else]and pulling it down to touch Amy's pussy. It feels slick and open, both from the tonguing he gave her earlier as well as Amy's own juices. [end if] 'Think you can help me with this?' he asks, pushing his hips forward and rubbing his erection against your hand.";
					say "     You take it and bend the shaft down a little, allowing its tip to slip in between Amy's nether lips before you withdraw your hand. Korvin leans over her to meet Amy's muzzle for a deep kiss, and while his tongue is snaking into her mouth, wrestling with Amy's own, the German shepherd slams his hips forward, hilting his red rocket inside her with one forceful push that lets him bottom out with his balls pressed against her crotch. The young anthro bucks against you from the sudden deep penetration, with you holding her and stroking her cheek to distract her from the momentary discomfort. Meanwhile, Korvin doesn't move at all beyond this, letting his cock simply rest inside Amy to let her get used to its girth.";
					WaitLineBreak;
					say "     A moment or two later, while still making out with her, Korvin begins to move his hips up and down, slowly starting to pump in and out of the warm and tight slit of his current bitch. She begins moaning in pleasure almost immediately, raising her hips to meet the virile anthro ramming into her. After this point, you have a ringside seat for the two of them starting to rut against each other's bodies, literally like dogs in heat as the instincts of their animal sides take over. ";
				say "The mating of Korvin and Amy is a wild, tempestuous affair, full of deep thrusts and doggy tongues licking every which spot - mostly Amy's nipples and muzzle but also including your own hands as they get in the way, and you can feel the strength of Korvin's thrusts through Amy between you. It is quite an experience to get such close a view of them fucking, without being yourself involved in it, technically. A little while later, the husky suddenly lets out an urgent scream as she climaxes, her hands clutching onto Korvin's back so hard that she'd have left bloody streaks if not for the protection of his fur.";
				say "     With the sweet, tight pussy around his cock spasming wildly, Korvin joins Amy in completion moments later, their mating reaching an ecstatic crescendo. He rams himself as deep as he can one last time and hump her while his knot swells up to tie the two of them together. Eager to give your friend a little bit of an extra thrill, you slide your hand down to where their bodies meet, [if HP of Amy is 101]cupping the German shepherd's throbbing balls and giving them a light squeeze. Your touch seems to push the German shepherd's libido for an encore, as he lets out a lustful moan and you can feel his furry sack twitch hard as he gushes an extra thick spurt into Amy. [else]gently rubbing the young husky's clit. Your touch seems to push Amy's libido for an encore, as she lets out a lustful moan and you can feel her get even wetter than before. [end if]As the shared orgasms of your two canine companions ebb off, everyone more or less sinks down into a cuddle pile.";
				WaitLineBreak;
				say "     Amy pants rapidly until finally catching her breath and cooling down a bit, at which point she looks with a happy smile at Korvin and also reaches back to touch your side. 'That was just amazing! I can't believe how good the two of you made me feel!' Korvin grins broadly at the praise and leans in to lick the side of her muzzle before adding proudly, 'Of course baby girl, this dog always gets his lady where she wants to go!' He shifts a little on top of her to get into a bit more of a comfortable resting position, drawing a new moan from the husky as his knot tugs at her freshly bred pussy. Having freed up one arm, the German shepherd reaches out to give you a fist-bump, nodding gratefully at you helping him getting Amy laid. You smile right back, happy to have a faithful canine companion who'll be with you in bad times, so he deserves some good fun too.";
				say "     'Is this how it was for your elven maiden?' the young woman asks innocently at that point, with Korvin turning on the charm again as he replies, 'Well, mostly - you're certainly as pretty as any elven princess, Amy. No, wait - I lied... you're much prettier actually. I love your soft fur,' he says, stroking her body, '...and the slender lines of your muzzle,' Korvin adds, kissing it, then moves his free hand to play with one of her upper breasts, pinching its nipple lightly. 'You're very beautiful all around, and with you living right here, I can be the dog that [if Player is not defaultnamed][name of Player][else]the boss[end if] needs me to be and still see you. Wouldn't it be fun to do this again sometime soon?' He almost entrances her with his words, with Amy adding dreamily, 'And maybe we can have puppies too!' Her mentioning the possibility draws a lusty grunt from an excited Korvin, followed by the words, 'I'm ready to keep trying until you're pregnant, that's for sure!'";
				NPCSexAftermath Korvin receives "OralPussy" from Amy;
				NPCSexAftermath Amy receives "PussyFuck" from Korvin;
				now HP of Amy is 11; [was fucked]
				TraitGain "Amy_Interaction_Sexual_Wingman" for Korvin;
			else if calcnumber is 2:
				LineBreak;
				say "     Letting your eyes roam over Amy's body, now with both hands on her lower set of breasts and lightly pinching her own nipples, you casually say that you got to do something important and have to leave. Entranced as she is by Korvin's tales and with him kissing her quite vigorously, Amy barely reacts, only glancing aside and giving you a little wave. Patting Korvin on the shoulder as you're getting up, you give him a grin and nodding towards the husky, then stroll a little distance away before picking a spot to stand from which you have a good line of sight, without being too obvious. Korvin continues making out with her for a little while longer, then soon pushes gently against her chest, making the young husky woman lay back on the sofa.";
				say "     Stroking the insides of her furry thighs as he spreads them, he then lowers his head and starts to lap at her sex. 'OOooh! That's - that... oooh! That feels nice, you licking me there!' Amy moans loudly, with Korvin raising his head for a second to look at her, then minutely tilting his head to the side as he spots you and lets out a chuckle. The husky bitch starts to turn her head, curious about what Korvin is looking at, but he buries his muzzle between her nether lips at that point, his floppy tongue pushing into her pussy. With a breathless gasp, Amy twitches and writhes on the sofa, her hands flying to hold onto Korvin's head and pushing it against her crotch. Despite being a former street dog and clearly more used to quick fucks, Korvin does take some time eating her out before doing anything else - which certainly makes him quite popular with Amy. Somehow, you can't help but think that you being here might have something to do with that restraint.";
				WaitLineBreak;
				say "     Soon, simply licking a pussy isn't enough for Korvin, as you can see his canine cock hard and erect, dripping pre-cum onto the sofa. He pushes himself up from between her legs, then scooches forward on his knees until his thighs rub the underside of her spread legs. The muscular anthro grabs hold of his erection, slapping it against her crotch and rubbing the slick and leaking head through Amy's pubic fur, then lines himself up with her opening. ";
				if Virgin of Amy is true:
					say "At that point, the young woman says something, which draws a chuckle and open grin from Korvin. 'Speak up a little, sweetheart!' he teases her, at which point Amy repeats innocently, 'It's my first time. Will you be gentle?' 'Don't worry babe, I know. I felt it. I'll make sure it doesn't hurt long, alright?' he replies, sliding just the tip of his pointy shaft in between her nether lips. Then Korvin leans over her to meet Amy's muzzle for a deep kiss, and while his tongue is snaking into her mouth, wrestling with Amy's own, the German shepherd slams his hips forward, hilting his red rocket inside her with one forceful push that bursts Amy's hymen in the blink of an eye.";
					say "     The young anthro bucks under Korvin at the sudden pain of losing her virginity, with him easily pinning her arms down and making sure she doesn't hurt herself while flailing around and letting his cock simply rest inside her to let her get used to its girth. A moment or two later, he pulls back from kissing her, which allows some whimpers to escape Amy's throat, and him to say, 'Trust me, it's better this way. Get it over in a flash, eh?' With that said, Korvin begins to move his hips up and down, slowly starting to pump in and out of the freshly taken slit of his new bitch. It doesn't take long before the sensations of being fucked banish everything except lust from the forefront of Amy's mind, and she starts to moan in pleasure from having the virile anthro ramming into her. At this point, the two of them start to rut against each other's bodies, literally like dogs in heat as the instincts of their animal sides take over.";
				else:
					say "Korvin leans over her to meet Amy's muzzle for a deep kiss, and while his tongue is snaking into her mouth, wrestling with Amy's own, the German shepherd slams his hips forward, hilting his red rocket inside her with one forceful push that lets him bottom out with his balls pressed against her crotch. The young anthro bucks under Korvin at the sudden deep penetration, with him easily pinning her arms down and making sure she doesn't hurt herself while flailing around and letting his cock simply rest inside her to let her get used to its girth. A moment or two later, while still making out with her, Korvin begins to move his hips up and down, slowly starting to pump in and out of the warm and tight slit of his current bitch. She begins moaning in pleasure almost immediately, raising her hips to meet the virile anthro ramming into her. At this point, the two of them start to rut against each other's bodies, literally like dogs in heat as the instincts of their animal sizes take over.";
				say "     With the two of them fully busy with each other, this leaves you free to stroll closer and around the noisily fucking pair, taking position near the other end of the sofa. From here you have a good view of Amy's four breasts juggling with each hard thrust of Korvin, as well as his balls swinging up and down to slap against her crotch. As you keep watching, the husky suddenly lets out an urgent scream as she climaxes, her hands clutching onto Korvin's back so hard that she'd have left bloody streaks if not for the protection of his fur. With the sweet, tight pussy around his cock flexing wildly, Korvin joins Amy in completion moments later, their mating reaching an ecstatic crescendo. He rams himself as deep as he can one last time and humps her while his knot swells up to tie the two of them together. You can see his balls rise and throb as he floods Amy's pussy with a heavy load of virile canine cum. Then as their orgasms eventually abate, they sink into a cuddle pile on the sofa, lying together in comfortable closeness and sweet nothings with one another.";
				NPCSexAftermath Korvin receives "OralPussy" from Amy;
				NPCSexAftermath Amy receives "PussyFuck" from Korvin;
				now HP of Amy is 11; [was fucked]
				TraitGain "Amy_Interaction_Sexual_Voyeur" for Korvin;
			else if calcnumber is 3:
				LineBreak;
				say "     Letting your eyes roam over Amy's body, now with both hands on her breasts and lightly pinching her own nipples, you casually say that you got to do something important and have to leave. Entranced as she is by Korvin's tales, Amy barely reacts, only looking aside for a second to tell you, 'See you later then,' before she returns to looking at the German shepherd. You meet eyes with Korvin as you're getting up, giving him a grin and nodding towards the husky, then stroll away. Before you're even fully out of sight, you can hear a lusty little yip from Amy, followed by the words, 'OOooh! That's - that... oooh! That feels nice, you licking me there!' A chuckle and slurping sounds follow, and you pay no more attention to what is going on afterwards. Dogs will be dogs, and all that...";
				NPCSexAftermath Korvin receives "OralPussy" from Amy;
				NPCSexAftermath Amy receives "PussyFuck" from Korvin;
				now HP of Amy is 11; [was fucked]
				TraitGain "Amy_Interaction_Sexual_Notwatched" for Korvin;
			else if calcnumber is 4:
				LineBreak;
				say "     Clearing your throat and playing chaperone to stop the hot and heavy action before it even can begin, you say that Amy surely didn't mean to touch Korvin [italic type]there[roman type]. Pulling away from the German shepherd kissing her, the husky turns her head to look at you, looking embarrassed at the situation she was in. She's a good girl in her own mind after all. 'I - uhm... yes, it was an accident.' Amy quickly says, then looks back at Korvin before lowering her eyes. 'It was a really nice story though. Thank you for telling it to me, Korvin.' In response, he runs his finger along the side of her muzzle, raising it to look into her eyes as he says, 'Glad you liked the story, little lady. Though I think it's time for us to go now. You coming, boss?' With the last being addressed at you, the German shepherd gives Amy a smile, then gets up. Joining him, the two of you say goodbye to Amy and walk away, leaving her behind to swoon over the heroic dog.";
				say "     When you are well outside of earshot, Korvin turns to you and shrugs, but still with a smile on his face. 'That was fun! Wish I could have gone all the way with her, but maybe you were right. Still, a nice little trip down memory lane, hah!' You snort, replying that both of you know that it didn't happen as he told the tale. 'Eh, close enough,' the German shepherd replies with a grin.";
				TraitGain "Amy_Interaction_Friendly" for Korvin;
		else if "Library_no fucks" is listed in Traits of Korvin or "Library_bitched out" is listed in Traits of Korvin or "Library_private lover" is listed in Traits of Korvin: [player isn't okay with Korvin-initiated fuckery]
			say "Amy is completely oblivious to the fact that what she was told is only a fanciful story, in the meantime. She's basically gushing over Korvin's heroics and the 'soo romantic' ending, and you almost expect her to throw herself at him in the next few moments. Raising his head a little to look over the husky's head at you, Korvin gives you a knowing glance, which is full of wordless thanks that you let him have his fun, then looks down at Amy again.";
			say "     He runs his finger along the side of her muzzle, raising it to look into her eyes to say, 'Hope you liked the story, little lady. Though I think it's time for us to go now. You coming, boss?' With the last being addressed at you, the German shepherd gives Amy a smile, then gets up. Joining him, the two of you say goodbye to Amy and walk away, leaving her behind to swoon over the heroic dog. When you are well outside of earshot, Korvin turns to you and smiles. 'That was fun! Nice little trip down memory lane, hah!' You snort, replying that both of you know that it didn't happen as he told the tale. 'Eh, close enough,' the German shepherd replies with a grin.";
			TraitGain "Amy_Interaction_Friendly" for Korvin;
	else if "Relationship_Lover" is listed in Traits of Korvin: [TODO: Still needs to be adjusted]
		say "Then he sets out towards Amy with some swagger in his steps, though he still throws a look over his shoulder at you, almost seeming to be nervous about showing that he can have a simple talk with a sexy woman without forgetting himself. You step up to him with a smile on your face, taking his paw-hand in your own and walk together to join Amy on the sofa. Soon the three of you are sitting next to each other on the couch, with Korvin and yourself next to each other and Amy to his left. The young woman can barely sit still, with her tail wagging against the cushions and her excited gaze switching back and forth between you and your canine companion. 'Oh, this is so exciting! What is it like? Did you run into beautiful maidens and ravish them?'";
		WaitLineBreak;
		say "     Sliding an arm around the midriff of your German shepherd lover, you sink your fingers into his warm, soft fur, stroking Korvin's side. Then you give the anthro dog a teasing smile and tell Amy that Korvin was downright heroic, and he'll now tell her [italic type]all[roman type] the details. At the same time, you personally know full well that things are far less romance-novel-like than Amy is imagining them, but it'll be amusing to see what your man can come up with. Planting a peck on Korvin's cheek, you smile and tell him to get on with it, which the canine takes as a challenge and clears his throat. 'Okay, let me tell you what happened a little while before I met [if Player is not defaultnamed][name of Player][else]my better half[end if]! I came upon the scene of a robbery at the edge of the urban forest. Some dastardly ruffians had thrown down an elven maiden, and were scuffling over her belongings...'";
		say "     Amy ooohs at the scene he lays out, and she asks, 'Was she okay? And who attacked her?' Giving a serious expression, Korvin replies, 'Oh, they were terrible guys! Big and scruffy, half bear and half pig! But they were no match to me, hah! One mighty bark and the bandits ran off! I bet they're still hiding in their lair, trembling when they think back to it!' Jumping in to support him, you tell Amy to look at Korvin's muscular body, tracing a hand playfully over his firm pecs, then tugging on his arm to make the anthro raise and flex his bicep. He chuckles and kisses your cheek, then presents himself to Amy from his very best side. Even while you're arranging for the little show, your mind is running through possibilities of how things [italic type]really[roman type] went when Korvin met an elven woman: Likely, she was alone, or maybe had a companion that Korvin drove off. The tough and rape-y street dog that Korvin was then would have jumped at a pretty bit of tail that he sniffed out! Yeah, that seems to fit wild dog Korvin.";
		WaitLineBreak;
		say "     Looking proud about the admiring looks Amy is now heaping on his strong body, Korvin leans over to lick your cheek affectionately, then says, [if Player is not defaultnamed]'Even [name of Player] [else]'Everyone [end if]is impressed by my might and loves these muscles!' You nod in confirmation, moving your hand over to caressing his chest, which draws the impressed Amy's eyes downwards to his pecs and abs. With her eating up his every word, and you wanting to ramp up the fun a little, you make a beckoning gesture to Amy, inviting her to touch your canine lover. Korvin capitalizes on the opportunity immediately, puffing his chest out a little as he guides the husky's hand to it, then continuing the story while she feels him up. 'The elven maiden was very thankful for the timely rescue, and took me to a hidden meadow deeper in the forest, wanting to show her appreciation on the soft, green grass.' Amy reacts to this wish a happy sigh of, 'Oooh! That must have been beautiful!'";
		say "     Meanwhile a mental image of an elf running away from a barking and chasing German shepherd flashes through your mind, with Korvin finally catching her in the spot he described, and pinning her down, then spreading her legs to get at his goal. Clearing his throat, Korvin adds, 'You know, now that I think of it, you're fairly similar to her. Beautiful, with a pretty smile, and your other delectable assets.' As he says this, the German shepherd moves one of his paw-hands to her side, just barely brushing his fingertips through her fur as he moves the hand along. After a light touch of the side of her breasts, he withdraws again leaving Amy trembling with excitement. At that point, you stretch up to nibble playfully at Korvin's ear, then whisper into it that he's quite good at miming the hero while being a sexy, bad dog. Rubbing the side of his head affectionately against your touch, the German shepherd lets himself be distracted for a little while, before Amy clears her throat in a lady-like fashion and asks how the story goes on.";
		WaitLineBreak;
		say "     Suppressing his desire to just continue with you, Korvin then directs his attention back to the husky and says, 'We spent several unforgettable hours in the glade, at the end of which my elven maiden begged me to stay with her, but I could not. I had to go back into the city to do my duty, after all. In the end, she pleaded to at least keep a memento of me, sighing in pleasure as she let me fill her with my seed.' 'Wow! So you've got an elven baby?' the innocent husky asks with round eyes, and Korvin laughs as he adds, 'I sure hope so!' Your traitor imagination plays up again, throwing in that most likely, the woman's pleas were for him to pull out and not knock her up. Knowing Korvin's street dog self, you're absolutely sure that he'd have knotted her vigorously, ensuring that every last little drop of his virile seed filled the woman's womb. He'd have gotten off hard to the thoughts of fathering a litter of puppies in her - after all, that kink is still alive and well in even your somewhat more civilized 'reformed' Korvin.";
		if "Library_free fucks" is listed in Traits of Korvin: [player is fine with him sleeping around]
			say "     Meanwhile, Amy is completely oblivious to the fact that what she was told is only a fanciful story. She's basically gushing over Korvin's heroics and the 'soo romantic' ending, and then it happens: The young woman moves her paw-hand to rest on the German shepherd's leg, feeling his muscles through the fur. Eager for more, she slides her fingers higher between his legs, and soon brushes against his balls. You can feel the anthro stiffen beside you, almost as if he's embarrassed that his story worked this well with Amy, and tense about how you'll react to him being groped by her. He glances over his shoulder, for all intent looking like a dog expecting a kick, but you just give him a loving smile and hug him, then whisper in his ear that you pushed things along too and he doesn't need to worry. A relieved Korvin then makes his move, hooking a hand behind Amy's neck and drawing her in, kissing the young woman with his tongue wriggling into her open muzzle.";
			LineBreak;
			say "     [bold type]What do you want to do?[roman type][line break]";
			LineBreak;
			say "     [link](1)[as]1[end link] - Ensure that your canine boyfriend gets laid (staying up close and personal while they do it).";
			say "     [link](2)[as]2[end link] - Make an excuse to step away, observing what will happen next.";
			say "     [link](3)[as]3[end link] - Make an excuse to step away and leave them to sate their libido privately.";
			say "     [link](4)[as]4[end link] - Clear your throat and say that Amy must have touched him by accident.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 4:
				say "Choice? (1-4)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to stay up close and make Korvin fuck Amy, [link]2[end link] to be a voyeur when they fuck, [link]3[end link] to let them fuck in private, or [link]4[end link] to steer things to more tame results.";
			if calcnumber is 1:
				LineBreak;
				[
				if <Relationship with Amy>: [TODO: adjust to be nicer to Amy]
					say "     Letting your eyes roam over Amy's body, you stand up and get on the other side of her on the sofa. After sitting down quite close to the young woman, you lean in and touch the side of her hips, then slide it through the soft fur to her tummy before moving up to play with the nipples on her lower breasts. Now having two people fondling her, the young husky moans and trembles at all the attention she's getting. Korvin and yourself play with her body, until the German shepherd soon bends his head to lick one of the young woman's breasts. 'I'll show you a really, really good time!' Korvin tells her with a grin and shares a loving look with you for allowing him this bit of playing around. A little overwhelmed, Amy is quite willing and plyable for the two of you, resulting in you coming to sit behind her on the sofa, your back propped up against the backrest where it has a 90° angle, with Amy sitting in front of you, leaning back against your chest.";
					say "     As you have your arms wrapped around her from behind, cupping the shapely forms of her breasts, and whispering sweet words into Amy's ears, Korvin goes on all fours, then lowers his head and starts to lap at her sex. 'OOooh! That's - that... oooh! That feels nice, you licking me there!' Amy moans loudly, with Korvin raising his head for a second to look at her, grinning as he meets your graze over her shoulder. The husky bitch pants when you pinch her nipples the next moment, then lets out a full on shout of a moan when Korvin buries his muzzle between her nether lips, his floppy tongue pushing into her pussy. With a breathless gasp, Amy twitches and writhes in your grasp, her hands flying to hold onto Korvin's head and pushing it against her crotch. Despite being a former street dog and clearly more used to quick fucks, Korvin does take some time eating her out before doing anything else - which certainly makes him quite popular with Amy. You're certain that he's doing this to impress you, among other things, wanting to show his restraint.";
					WaitLineBreak;
					say "     Soon, simply licking a pussy isn't enough for Korvin, and when he pushes himself up to just a kneeling pose, you can see his canine cock hard and erect, dripping pre-cum onto the sofa. He scooches forward on his knees until his thighs rub the underside of her spread legs. The muscular anthro grabs hold of his erection, slapping it against her crotch and rubbing the slick and leaking head through Amy's pubic fur. ";
					if Virgin of Amy is true:
						say "At that point, the young woman says innocently, 'It's my first time. Will you be gentle?' 'Don't worry babe, I'll make sure it doesn't hurt long, alright? Here, we can even have your special friend put it in,' he replies, taking hold of your hand from where it is resting against Amy's breast and pulling it down to touch her pussy. It feels slick and open, both from the tonguing he gave her earlier as well as Amy's own juices. Something tells you that he won't be gentle at all, with this being his way of gaining your approval for what he's about to do.";
						say "     Judging by how wet Amy is right now, and with her juices slick on your fingers, you doubt she'll be too cross about that though. Seeing the anthro give you a wink as he pushes his hips forward and thus rubs his erection against your hand, you wrap your fingers around his shaft, giving him a stroke and feeling your man's hard length. Sharing a smile with the canine, you tell him to do you proud, then shift your grip and bend his hard rod down a little, allowing its tip to slip in between her nether lips before you withdraw your hand. Korvin leans over her to meet Amy's muzzle for a deep kiss, and while his tongue is snaking into her mouth, wrestling with Amy's own, the German shepherd slams his hips forward, hilting his red rocket inside her with one forceful push that bursts Amy's hymen in the blink of an eye. The young anthro bucks against you from the sudden pain of losing her virginity, with you holding onto her and stroking her cheek to distract Amy from the momentary discomfort. Meanwhile, Korvin doesn't move at all beyond this, letting his cock simply rest inside Amy to let her get used to its girth.";
						WaitLineBreak;
						say "     A moment or two later, he pulls back from kissing her, which allows some whimpers to escape Amy's throat, and him to say, 'Trust me, it's better this way. Get it over in a flash, eh?' With that said, Korvin begins to move his hips up and down, slowly starting to pump in and out of the freshly taken slit of his new bitch. It doesn't take long before the sensations of being fucked banish everything except lust from the forefront of Amy's mind, and she starts to moan in pleasure from having the virile anthro ramming into her. After this point, you have a ringside seat for the two of them starting to rut against each other's bodies, literally like dogs in heat as the instincts of their animal sides take over. ";
					else:
						say "Korvin seems to be ready to line himself up for fucking her, but then suddenly pauses, thinking better of it. Instead, he reaches for your hand, taking it off Amy's left breast and guiding it down to her crotch, to touch her pussy. It feels slick and open, both from the tonguing he gave her earlier as well as Amy's own juices. 'Think you can help me with this?' he asks, pushing his hips forward and thus rubbing his erection against your hand. You wrap your fingers around his shaft, giving him a stroke and feeling your man's hard length. Sharing a smile with the canine, you tell him to do you proud, then shift your grip and bend his hard rod down a little, allowing its tip to slip in between her nether lips.";
						say "     Korvin leans over her to meet Amy's muzzle for a deep kiss, and while his tongue is snaking into her mouth, wrestling with Amy's own, the German shepherd slams his hips forward, hilting his red rocket inside her with one forceful push that lets him bottom out with his balls pressed against her crotch. The young anthro bucks against you from the sudden deep penetration, with you holding her and stroking her cheek to distract her from the momentary discomfort. Meanwhile, Korvin doesn't move at all beyond this, letting his cock simply rest inside Amy to let her get used to its girth.";
						WaitLineBreak;
						say "     A moment or two later, while still making out with her, Korvin begins to move his hips up and down, slowly starting to pump in and out of the warm and tight slit of his current bitch. She begins moaning in pleasure almost immediately, raising her hips to meet the virile anthro ramming into her. After this point, you have a ringside seat for the two of them starting to rut against each other's bodies, literally like dogs in heat as the instincts of their animal sides take over. ";
					say "The mating of Korvin and Amy is a wild, tempestuous affair, full of deep thrusts and doggy tongues licking every which spot - mostly Amy's nipples and muscle but also including your own hands as they get in the way, and you can feel the strength of Korvin's thrusts through Amy between you. It is quite an experience to get such close a view of them fucking, without being yourself involved in it, technically. A little while later, the husky suddenly lets out an urgent scream as she climaxes, her hands clutching onto Korvin's back so hard that she'd have left bloody streaks if not for the protection of his fur.";
					say "     With the sweet, tight pussy around his cock flexing wildly, Korvin joins Amy in completion moments later, their mating reaching an ecstatic crescendo. He rams himself as deep as he can one last time and humps her while his knot swells up to tie the two of them together. Eager to give your friend a little bit of an extra thrill, you slide your hand down to where their bodies meet, cupping the German shepherd's throbbing balls and giving them a light squeeze. Your touch seems to push the German shepherd's libido for an encore, as he lets out a lustful moan and you can feel his furry sack twitch hard as he gushes an extra thick spurt into Amy. As the shared orgasms of your two canine companions ebb off, everyone more or less sinks down into a cuddle pile.";
					WaitLineBreak;
					say "     Amy pants rapidly until finally catching her breath and cooling down a bit, at which point she looks with a happy smile at Korvin and also reaches back to touch your side. 'That was just amazing! I can't believe how good the two of you made me feel!' Korvin grins broadly at the praise and leans in to lick the side of her muzzle before adding proudly, 'Of course baby girl, this dog always gets his lady where she wants to go!' He shifts a little on top of her to get into a bit more of a comfortable resting position, drawing a new moan from the husky as his knot tugs at her freshly bred pussy. Having freed up one arm, the German shepherd reaches out to hook his hand behind your neck, pulling you closer so he can give you a hot and heavy kiss. You wrestle with his tongue in your mouth, sharing your breath and being very happy to have such a loving and faithful canine companion who'll be with you in good and bad times.";
					say "     'Is this how it was for your elven maiden?' the young woman asks innocently at that point, with Korvin turning on the charm again as he replies, 'Well, mostly - you're certainly as pretty as any elven princess, Amy. No, wait - I lied... you're much prettier actually. I love your soft fur,' he says, stroking her body, '...and the slender lines of your muzzle,' Korvin adds, kissing it, then moves his free hand to play with one of her upper breasts, pinching its nipple lightly. 'You're very beautiful all around, and with you living right here, I can be the dog that [if Player is not defaultnamed][name of Player][else]the boss[end if] needs me to be and still see you. Wouldn't it be fun to do this again sometime soon?' He almost entrances her with his words, with Amy adding dreamily, 'And maybe we can have puppies too!' Her mentioning the possibility draws a lusty grunt from an excited Korvin, followed by the words, 'I'm ready to keep trying until you're pregnant, that's for sure!'";
					[... puppy options...]
					TraitGain "Korvin+Amy Family Breeding" for Amy;
				else:
				]
				say "     Sliding an arm around Korvin's chest from behind, fingers tracing over his abs and caressing his warm fur, you're right there with your man as he makes out with Amy. After being primed with the fairytale of Korvin's heroic feats and amorous skill, Amy basically melts into his embrace, more than ready to do anything he wants to do. With your other hand, you reach out to stroke her chest, cupping one breast, then another, lightly pinching her nipples as you do so. At one point, you bump up against the German shepherd's paw-hand that is also groping Amy and entwine your fingers with his, squeezing the paw and then guiding it to the husky's upper breasts, confirming to Korvin that you're in this very much together and you're fully on board with him getting lucky. He pulls back after another kiss with the young bitch, then turns his head to you and licks you lovingly. 'You're amazing, you know that?!' You simply grin in reply and let your tongues entwine for another moment of togetherness.";
				say "     Meanwhile, with both of you still fondling her and being a little overwhelmed actually, Amy moans and trembles, eyes still closed from her make-out session. When she opens them a few heartbeats later, the sight of you and Korvin entwined and kissing draws a bit of a fan-girl squeal from her. 'Oh my god, you guys are so hot together! Thank you for sharing this with me!' Glancing back over to her, Korvin chuckles and adds, 'Be right with you, princess! Just gotta give my better half their share, then I'll show you a really, really good time!' The two of you exchange some more eager kisses, then you stroke his cheek and tell him to go for it. Wiggling his eyebrows, the German shepherd then bends his head to lick one of the young woman's breasts, flicking his tongue over it before sucking on the tit. A pleased gasp escapes Amy's lips, followed by further moans as Korvin continues to worship her breasts, until finally sliding one hand behind her back, with the other on her chest, gently pushing her backwards to lie on the sofa.";
				WaitLineBreak;
				say "     Stroking the insides of her furry thighs as he spreads them, Korvin then lowers his head and starts to lap at her sex. 'OOooh! That's - that... oooh! That feels nice, you licking me there!' Amy moans loudly, with the German shepherd raising his head to smile at her, then going back to start eating her pussy some more. Meanwhile, you're left sitting behind the anthro dog, with him now being on all fours, tail raised high and wagging - which gives you a glorious view of his rear end, furry balls and the red rocket of his canine cock. Unable to keep your hands to yourself for long, you quickly move in to grope his buttocks, feeling his firm, furry buns for a little while before sliding a hand further down, to cup his balls. Even with his muzzle between Amy's nether lips and his floppy tongue pushing into her pussy, you can hear the pleased hum that your boyfriend lets out as you touch him. At the same time, Amy twitches and writhes on the sofa, her hands flying to hold onto Korvin's head and pushing it against her crotch.";
				say "     Despite being a former street dog and clearly more used to quick fucks, Korvin is more than happy to wait with penetrating Amy in this case, continuing to eat her out while you caress and stroke him. Your playful teasing of his cock and balls turns out to make him very appreciated by Amy, who can't get enough of his questing tongue licking her in very sensitive spots. This actually does push her to orgasm in short notice, grinding her crotch against his face as she writhes in pleasure. The young bitch lies on her back, panting ecstatically with her legs spread, a sight that makes Korvin's cock twitch [italic type]hard[roman type]. You know that well, as you're holding it wrapped in your fingers, throbbing in anticipation of a tight bitch to sheath himself in. The German shepherd shows restraint, throwing you an eager look over his shoulder, which you answer with a smiling nod, and an encouraging slap on his ass.";
				WaitLineBreak;
				say "     With his canine cock leaving a dripping trail of pre-cum on the cushions as Korvin crawls over Amy on all fours, his thighs soon rub the underside of her spread legs. The muscular anthro grabs hold of his erection, slapping it against her crotch and rubbing the slick and leaking head through Amy's pubic fur, then lines himself up with her opening. ";
				if Virgin of Amy is true:
					say "At that point, the young woman says something, which draws a chuckle and open grin from Korvin. 'Speak up a little, sweetheart!' he teases her, at which point Amy repeats innocently, 'It's my first time. Will you be gentle?' 'Don't worry babe, I know. I felt it. I'll make sure it doesn't hurt long, alright?' he replies, taking hold of your hand and pulling it to his hard cock. It throbs in anticipation, with your hand spreading some slick pre-cum along its length as you stroke your canine boyfriend a few times. Something tells you that he won't be gentle at all, with this being his way of gaining your approval for what he's about to do.";
					say "     With Korvin being hard as a rock and leaking copious amounts of pre, he's more than ready to get his bitch right now. Seeing the anthro give you a wink as he pushes his hips forward and rubs his erection against your hand, you bend his hard rod down a little, allowing its tip to slip in between her nether lips before you withdraw your hand. Korvin leans over her to meet Amy's muzzle for a deep kiss, and while his tongue is snaking into her mouth, wrestling with Amy's own, the German shepherd slams his hips forward, hilting his red rocket inside her with one forceful push that bursts Amy's hymen in the blink of an eye. The young anthro bucks underneath the muscular man, and you wrap your arms around him from behind, calming the horny man down a little so he doesn't succumb to just jack-hammering into her right away. Korvin accepts your guidance and doesn't move much beyond the initial penetration, letting his cock simply rest inside Amy to let her get used to its girth.";
					WaitLineBreak;
					say "     A moment or two later, he pulls back from kissing her, which allows some whimpers to escape Amy's throat, and him to say, 'Trust me, it's better this way. Get it over in a flash, eh?' With that said, Korvin begins to move his hips up and down, slowly starting to pump in and out of the freshly taken slit of his new bitch. It doesn't take long before the sensations of being fucked banish everything except lust from the forefront of Amy's mind, and she starts to moan in pleasure from having the virile anthro ramming into her. At this point, the two of them start to rut against each other's bodies, literally like dogs in heat as the instincts of their animal sides take over.";
				else:
					say "Korvin seems to be ready to enter her, but then suddenly pauses, thinking better of it. Instead, he reaches for your hand and pulls it to his hard cock. It throbs in anticipation, with your hand spreading some slick pre-cum along its length as you stroke your canine companion a few times. 'Think you can help me with this?' he asks, pushing his hips forward and rubbing his erection against your hand.";
					say "     You take it and bend the shaft down a little, allowing its tip to slip in between Amy's nether lips before you withdraw your hand. Korvin leans over her to meet Amy's muzzle for a deep kiss, and while his tongue is snaking into her mouth, wrestling with Amy's own, the German shepherd slams his hips forward, hilting his red rocket inside her with one forceful push that lets him bottom out with his balls pressed against her crotch. The young anthro bucks underneath the muscular man, and you wrap your arms around him from behind, calming the horny man down a little so he doesn't succumb to just jack-hammering into her right away. Korvin accepts your guidance and doesn't move much beyond the initial penetration, letting his cock simply rest inside Amy to let her get used to its girth.";
					WaitLineBreak;
					say "     A moment or two later, while still making out with her, Korvin begins to move his hips up and down, slowly starting to pump in and out of the warm and tight slit of his current bitch. Amy begins moaning in pleasure almost immediately, raising her hips to meet the virile anthro ramming into her. At this point, the two of them start to rut against each other's bodies, literally like dogs in heat as the instincts of their animal sides take over. ";
				say "Not to get in the way, you get up from where you were, crouching down next to the rutting pair on the sofa to be right there up close with them. The mating of Korvin and Amy is a wild, tempestuous affair, full of deep thrusts and doggy tongues licking every which spot - mostly Amy's nipples and muzzle but also including your own hands as they get close to Korvin's front, since you continue to touch and stroke him even while they fuck. It is quite an experience to be right there as they hump each other, without being yourself involved in it, technically. A little while later, the husky suddenly lets out an urgent scream as she climaxes a second time, her hands clutching onto Korvin's back so hard that she'd have left bloody streaks if not for the protection of his fur.";
				say "     With the sweet, tight pussy around his cock spasming wildly, Korvin lets out an urgent grunt of 'Gonna breed this bitch!' quickly followed by a lustful howl as he erupts into her depths. The anthro dog rams himself as deep as he can one last time and humps her while his knot swells up to tie the two of them together. Eager to give your boyfriend a little bit of an extra thrill, you slide your hand down to where their bodies meet, cupping the German shepherd's throbbing balls and giving them a light squeeze. Your touch seems to push his libido for an encore, as he lets out a lustful moan and you can feel his furry sack twitch hard as he gushes an extra thick spurt into Amy. As the shared orgasms of your two canine companions ebb off, everyone more or less sinks down into a cuddle pile afterwards.";
				WaitLineBreak;
				say "     Amy pants rapidly until finally catching her breath and cooling down a bit, at which point she looks with a happy smile at Korvin and yourself. 'That was just amazing! I can't believe how good Korvin feels in me! Thank you for sharing this amazing man with me!' Korvin grins broadly at the praise and looks over to you lovingly, then leans in to lick the side of Amy's muzzle before adding proudly, 'Of course baby girl, this dog always gets his lady where she wants to go!' He shifts a little on top of her to get into a bit more of a comfortable resting position, drawing a new moan from the husky as his knot tugs at her freshly bred pussy. Having freed up one arm, the German shepherd reaches out to hook his hand behind your neck, pulling you closer so he can give you a hot and heavy kiss. You wrestle with his tongue in your mouth, sharing your breath and being very happy to have such a loving and faithful canine companion who'll be with you in good and bad times.";
				say "     'Is this how it was for your elven maiden?' the young woman asks innocently at that point, with Korvin turning on the charm again as he replies, 'Well, mostly - you're certainly as pretty as any elven princess, Amy. No, wait - I lied... you're much prettier actually. I love your soft fur,' he says, stroking her body, '...and the slender lines of your muzzle,' Korvin adds, kissing it, then moves his free hand to play with one of her upper breasts, pinching its nipple lightly. 'You're very beautiful all around, and with you living right here, I can be the dog that [if Player is not defaultnamed][name of Player][else]the boss[end if] needs me to be and still see you. Wouldn't it be fun to do this again sometime soon?' He almost entrances her with his words, with Amy adding dreamily, 'And maybe we can have puppies too!' Her mentioning the possibility draws a lusty grunt from an excited Korvin, though he doesn't reply and instead looks to you for guidance.";
				LineBreak;
				say "     [bold type]What do you say?[roman type][line break]";
				LineBreak;
				say "     [link](1)[as]1[end link] - You'll leave that for him to decide. You trust your man.";
				say "     [link](2)[as]2[end link] - You want him to knot her any time he can.";
				say "     [link](3)[as]3[end link] - He can seed her, but maybe not knot from now on.";
				say "     [link](4)[as]4[end link] - He should pull out and finish outside in the future.";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 4:
					say "Choice? (1-4)>[run paragraph on]";
					get a number;
					if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
						break;
					else:
						say "Invalid choice. Type [link]1[end link] to let Korvin choose, [link]2[end link] to tell him to knot her, [link]3[end link] to let him shoot in her without knotting, or [link]4[end link] to tell Korvin to pull out.";
					if calcnumber is 1:
						LineBreak;
						say "     Sliding a hand over his head and caressing the fur of the German shepherd's neck, you lean in to kiss the side of his muzzle, saying lovingly that you trust him and he's free to do as he wants. If he knocks Amy up, you'll happily welcome their puppies and treat them as your own. 'That means a lot[if Player is not defaultnamed] [name of Player][else] to me[end if]! You're amazing, you know that?!' Amy also is beaming very happily at the words, smiling up from where she's lying underneath the other anthro still sending throbs of cum flooding into her womb. 'So we'd all be a family? Together?' the young woman says somewhat dreamily, reaching out with both arms to hug you and Korvin close.";
						TraitGain "Korvin Family Breeding (Amy)" for Korvin;
					else if calcnumber is 2:
						LineBreak;
						say "     Sliding a hand over his head and caressing the fur of the German shepherd's neck, you lean in to kiss the side of his muzzle, saying affectionately that you want your man to stud. He should knot her any time they fuck, with him properly breeding the little bitch. You wanna see some puppies, and soon. 'Oh yeah! That means a lot[if Player is not defaultnamed] [name of Player][else] to me[end if]!' Amy also gets excited at your words, smiling up from where she's lying underneath the other anthro still sending throbs of cum flooding into her womb. 'I want to have some cute puppies!' the young woman says somewhat dreamily.";
						TraitGain "Korvin Breeding (Amy)" for Korvin;
					else if calcnumber is 3:
						LineBreak;
						say "     Tapping the German shepherd's head, you stroke him a few times, then calmly say that you'd prefer for him to not knot Amy. He can shoot in her, no problem, but it'd be best if the knot stayed out, as you don't neccessarily want guaranteed puppies. Korvin is a little bit deflated as he hears this, but he brushes it off and smiles again a moment later, 'If you think that's best, of course.'";
						TraitGain "Korvin Seeding (Amy)" for Korvin;
					else if calcnumber is 4:
						LineBreak;
						say "     Tapping the German shepherd's head, you stroke him a few times, then calmly say that you'd prefer for him to pull out when fucking Amy. He can fuck her, no problem, but it'd be best if he didn't shoot in her, as you don't want any puppies from him fathered with Amy. Korvin is a little bit deflated as he hears this, but he brushes it off and smiles again a moment later, 'If you think that's best, of course.'";
						TraitGain "Korvin PullOut (Amy)" for Korvin;
				NPCSexAftermath Korvin receives "OralPussy" from Amy;
				NPCSexAftermath Amy receives "PussyFuck" from Korvin;
				now HP of Amy is 11; [was fucked]
				TraitGain "Amy_Interaction_Sexual_Couple" for Korvin;
			else if calcnumber is 2:
				LineBreak;
				say "     Letting your eyes roam over Amy's body, now with both hands on her lower set of breasts and lightly pinching her own nipples, you casually say that you got to do something important and have to leave. Entranced as she is by Korvin's tales and with him kissing her quite vigorously, Amy barely reacts, only glancing aside and giving you a little wave. Patting Korvin on the shoulder as you lean in and whisper in his ear to have fun, you then get up and stroll a little distance away before picking a spot to stand from which you have a good line of sight, without being too obvious. Korvin continues making out with her for a little while longer, then soon pushes gently against her chest, making the young husky woman lay back on the sofa.";
				say "     Stroking the insides of her furry thighs as he spreads them, he then lowers his head and starts to lap at her sex. 'OOooh! That's - that... oooh! That feels nice, you licking me there!' Amy moans loudly, with Korvin raising his head for a second to look at her, then minutely tilting his head to the side as he spots you and meets your eyes, giving a wink. 'Enjoying the show, eh?' he calls out provocatively, doing a playful hump and shake of his tail. The husky bitch starts to turn her head, curious about who Korvin is talking to, but at that point, he buries his muzzle between her nether lips, floppy tongue pushing into her pussy. With a breathless gasp, Amy twitches and writhes on the sofa, her hands flying to hold onto Korvin's head and pushing it against her crotch. Despite being a former street dog and clearly more used to quick fucks, Korvin does take some time eating her out before doing anything else - which certainly makes him quite popular with Amy. Somehow, you can't help but think that you being here might have something to do with that restraint.";
				WaitLineBreak;
				say "     Soon, simply licking a pussy isn't enough for Korvin, as you can see his canine cock hard and erect, dripping pre-cum onto the sofa. He pushes himself up from between her legs, then scooches forward on his knees until his thighs rub the underside of her spread legs. The muscular anthro grabs hold of his erection, slapping it against her crotch and rubbing the slick and leaking head through Amy's pubic fur, then lines himself up with her opening. ";
				if Virgin of Amy is true:
					say "At that point, the young woman says something, which draws a chuckle and open grin from Korvin. 'Speak up a little, sweetheart!' he teases her, at which point Amy repeats innocently, 'It's my first time. Will you be gentle?' 'Don't worry babe, I'll make sure it doesn't hurt long, alright?' he replies, sliding just the tip of his pointy shaft in between her nether lips. Then Korvin leans over her to meet Amy's muzzle for a deep kiss, and while his tongue is snaking into her mouth, wrestling with Amy's own, the German shepherd slams his hips forward, hilting his red rocket inside her with one forceful push that bursts Amy's hymen in the blink of an eye.";
					say "     The young anthro bucks under Korvin at the sudden pain of losing her virginity, with him easily pinning her arms down and making sure she doesn't hurt herself while flailing around and letting his cock simply rest inside her to let her get used to its girth. A moment or two later, he pulls back from kissing her, which allows some whimpers to escape Amy's throat, and him to say, 'Trust me, it's better this way. Get it over in a flash, eh?' With that said, Korvin begins to move his hips up and down, slowly starting to pump in and out of the freshly taken slit of his new bitch. It doesn't take long before the sensations of being fucked banish everything except lust from the forefront of Amy's mind, and she starts to moan in pleasure from having the virile anthro ramming into her. At this point, the two of them start to rut against each other's bodies, literally like dogs in heat as the instincts of their animal sides take over.";
				else:
					say "Korvin leans over her to meet Amy's muzzle for a deep kiss, and while his tongue is snaking into her mouth, wrestling with Amy's own, the German shepherd slams his hips forward, hilting his red rocket inside her with one forceful push that lets him bottom out with his balls pressed against her crotch. The young anthro bucks under Korvin at the sudden deep penetration, with him easily pinning her arms down and making sure she doesn't hurt herself while flailing around and letting his cock simply rest inside her to let her get used to its girth. A moment or two later, while still making out with her, Korvin begins to move his hips up and down, slowly starting to pump in and out of the warm and tight slit of his current bitch. She begins moaning in pleasure almost immediately, raising her hips to meet the virile anthro ramming into her. At this point, the two of them start to rut against each other's bodies, literally like dogs in heat as the instincts of their animal sizes take over.";
				say "     With the two of them fully busy with each other, this leaves you free to stroll closer and around the noisily fucking pair, taking position near the other end of the sofa. From here you have a good view of Amy's four breasts juggling with each hard thrust of Korvin, as well as his balls swinging up and down to slap against her crotch. As you keep watching, the husky suddenly lets out an urgent scream as she climaxes, her hands clutching onto Korvin's back so hard that she'd have left bloody streaks if not for the protection of his fur. With the sweet, tight pussy around his cock flexing wildly, Korvin joins Amy in completion moments later, their mating reaching an ecstatic crescendo. He rams himself as deep as he can one last time and hump her while his knot swells up to tie the two of them together. You can see his balls rise and throb as he floods Amy's pussy with a heavy load of virile canine cum. Then as their orgasms eventually abate, they sink into a cuddle pile on the sofa, lying together in comfortable closeness and sweet nothings with one another.";
				WaitLineBreak;
				say "     You give the two of them some time to cool down, then casually wander back into sight, not making any big scene out of them being in the ebbing throes of sex. While you approach, you can hear Amy ask, 'Is this how it was for your elven maiden?' the young woman asks innocently at that point, with Korvin turning on the charm again as he replies, 'Well, mostly - you're certainly as pretty as any elven princess, Amy. No, wait - I lied... you're much prettier actually. I love your soft fur,' he says, stroking her body, '...and the slender lines of your muzzle,' Korvin adds, kissing it, then moves his free hand to play with one of her upper breasts, pinching its nipple lightly. 'You're very beautiful all around, and with you living right here, I can be the dog that [if Player is not defaultnamed][name of Player][else]my better half[end if] needs me to be and still see you. Wouldn't it be fun to do this again sometime soon?' He almost entrances her with his words, with Amy adding dreamily, 'And maybe we can have puppies too!' Her mentioning the possibility draws a lusty grunt from an excited Korvin, though he doesn't reply and instead looks to you for guidance.";
				LineBreak;
				say "     [bold type]What do you say?[roman type][line break]";
				LineBreak;
				say "     [link](1)[as]1[end link] - You'll leave that for him to decide. You trust your man.";
				say "     [link](2)[as]2[end link] - You want him to knot her any time he can.";
				say "     [link](3)[as]3[end link] - He can seed her, but maybe not knot from now on.";
				say "     [link](4)[as]4[end link] - He should pull out and finish outside in the future.";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 4:
					say "Choice? (1-4)>[run paragraph on]";
					get a number;
					if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
						break;
					else:
						say "Invalid choice. Type [link]1[end link] to let Korvin choose, [link]2[end link] to tell him to knot her, [link]3[end link] to let him shoot in her without knotting, or [link]4[end link] to tell Korvin to pull out.";
					if calcnumber is 1:
						LineBreak;
						say "     Sliding a hand over his head and caressing the fur of the German shepherd's neck, you lean in to kiss the side of his muzzle, saying lovingly that you trust him and he's free to do as he wants. If he knocks Amy up, you'll happily welcome their puppies and treat them as your own. 'That means a lot[if Player is not defaultnamed] [name of Player][else] to me[end if]! You're amazing, you know that?!' Amy also is beaming very happily at the words, smiling up from where she's lying underneath the other anthro still sending throbs of cum flooding into her womb. 'So we'd all be a family? Together?' the young woman says somewhat dreamily, reaching out with both arms to hug you and Korvin close.";
						TraitGain "Korvin Family Breeding (Amy)" for Korvin;
					else if calcnumber is 2:
						LineBreak;
						say "     Sliding a hand over his head and caressing the fur of the German shepherd's neck, you lean in to kiss the side of his muzzle, saying affectionately that you want your man to stud. He should knot her any time they fuck, with him properly breeding the little bitch. You wanna see some puppies, and soon. 'Oh yeah! That means a lot[if Player is not defaultnamed] [name of Player][else] to me[end if]!' Amy also gets excited at your words, smiling up from where she's lying underneath the other anthro still sending throbs of cum flooding into her womb. 'I want to have some cute puppies!' the young woman says somewhat dreamily.";
						TraitGain "Korvin Breeding (Amy)" for Korvin;
					else if calcnumber is 3:
						LineBreak;
						say "     Tapping the German shepherd's head, you stroke him a few times, then calmly say that you'd prefer for him to not knot Amy. He can shoot in her, no problem, but it'd be best if the knot stayed out, as you don't neccessarily want guaranteed puppies. Korvin is a little bit deflated as he hears this, but he brushes it off and smiles again a moment later, 'If you think that's best, of course.'";
						TraitGain "Korvin Seeding (Amy)" for Korvin;
					else if calcnumber is 4:
						LineBreak;
						say "     Tapping the German shepherd's head, you stroke him a few times, then calmly say that you'd prefer for him to pull out when fucking Amy. He can fuck her, no problem, but it'd be best if he didn't shoot in her, as you don't want any puppies from him fathered with Amy. Korvin is a little bit deflated as he hears this, but he brushes it off and smiles again a moment later, 'If you think that's best, of course.'";
						TraitGain "Korvin PullOut (Amy)" for Korvin;
				NPCSexAftermath Korvin receives "OralPussy" from Amy;
				NPCSexAftermath Amy receives "PussyFuck" from Korvin;
				now HP of Amy is 11; [was fucked]
				TraitGain "Amy_Interaction_Sexual_Voyeur" for Korvin;
			else if calcnumber is 3:
				LineBreak;
				say "     Letting your eyes roam over Amy's body, now with both hands on her lower set of breasts and lightly pinching her own nipples, you casually say that you got to do something important and have to leave. Entranced as she is by Korvin's tales and with him kissing her quite vigorously, Amy barely reacts, only glancing aside and giving you a little wave. Patting Korvin on the shoulder as you lean in and whisper in his ear to have fun, you then get up and stroll away. Before you're even fully out of sight, you can hear a lusty little yip from Amy, followed by the words, 'OOooh! That's - that... oooh! That feels nice, you licking me there!' A chuckle and slurping sounds follow, and you pay no more attention to what is going on afterwards. Dogs will be dogs, and all that...";
				NPCSexAftermath Korvin receives "OralPussy" from Amy;
				NPCSexAftermath Amy receives "PussyFuck" from Korvin;
				now HP of Amy is 11; [was fucked]
				TraitGain "Korvin Seeding (Amy)" for Korvin;
				TraitGain "Amy_Interaction_Sexual_Notwatched" for Korvin;
			else if calcnumber is 4:
				LineBreak;
				say "     Clearing your throat and letting a tiny bit of envy at having your man make eyes at a young woman off the leash, you stop the hot and heavy action before it even can begin. Schooling your words so they're not too harsh, you say that Amy surely didn't mean to touch Korvin [italic type]there[roman type]. She immediately pulls away from the German shepherd kissing her, looking embarrassed at the situation she was in. She's a good girl in her own mind after all. 'I - uhm... yes, it was an accident,' Amy says quickly, then looks back at Korvin before lowering her gaze. 'It was a really nice story though. Thank you for telling it to me, Korvin.' In response, he runs his finger along the side of her muzzle, raising it to look into her eyes as he says, 'Glad you liked the story, little lady. Though I think it's time for us to go now. You coming, [if Player is not defaultnamed][name of Player][else]boss[end if]?' With the last being addressed at you, the German shepherd gives Amy a smile, then gets up. Joining him, the two of you say goodbye to Amy and walk away, leaving her behind to swoon over the heroic dog.";
				say "     When you are well outside of earshot, Korvin turns to you and shrugs, but still with a smile on his face. 'That was fun! Wish I could have gone all the way with her, but I'm also happy just being your special dog! Still, a nice little trip down memory lane, hah!' You snort, replying that both of you know that it didn't happen as he told the tale. 'Eh, close enough,' the German shepherd replies with a grin, then pulls you close to give you a long and loving kiss.";
				TraitGain "Amy_Interaction_Friendly" for Korvin;
		else if "Library_no fucks" is listed in Traits of Korvin or "Library_bitched out" is listed in Traits of Korvin or "Library_private lover" is listed in Traits of Korvin: [player isn't okay with Korvin-initiated fuckery]
			say "     Meanwhile, Amy is completely oblivious to the fact that what she was told is only a fanciful story. She's basically gushing over Korvin's heroics and the 'soo romantic' ending, and you almost expect her to throw herself at him in the next few moments. Glancing over his shoulder to meet your eyes in a knowing glance, which is full of wordless thanks that you let him have his fun, then looks down at Amy again. He runs his finger along the side of her muzzle, raising it to look into her eyes to say, 'Hope you liked the story, little lady. Though I think it's time for us to go now. You coming, [if Player is not defaultnamed][name of Player][else]boss[end if]?' With the last being addressed at you, the German shepherd gives Amy a smile, then gets up. Joining him, the two of you say goodbye to Amy and walk away, leaving her behind to swoon over the heroic dog. When you are well outside of earshot, Korvin turns to you and smiles. 'That was fun! Nice little trip down memory lane, hah!' You snort, replying that both of you know that it didn't happen as he told the tale. 'Eh, close enough,' the German shepherd replies with a grin, then pulls you close to give you a long and loving kiss.";
			TraitGain "Amy_Interaction_Friendly" for Korvin;

[
to say AmyKorvinThreesomeMenu:
	LineBreak;
	say "     [bold type]What do you want to do with your two canines?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if Virgin of Amy is true:
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Take her virginity yourself and let Korvin fuck her mouth";
			now sortorder entry is 1;
			now description entry is "Spitroast Amy with Korvin";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Let Korvin take her virginity while you fuck her mouth";
			now sortorder entry is 2;
			now description entry is "Spitroast Amy with Korvin";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Let Korvin take her virginity while you ride her face";
		now sortorder entry is 3;
		now description entry is "Spitroast Amy with Korvin (well, kinda)";
		[]
	else:
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Take her pussy and let Korvin fuck her mouth";
			now sortorder entry is 1;
			now description entry is "Spitroast Amy with Korvin";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Let Korvin take her pussy while you fuck her mouth";
			now sortorder entry is 2;
			now description entry is "Spitroast Amy with Korvin";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Let Korvin take her pussy while you ride her face";
		now sortorder entry is 3;
		now description entry is "Spitroast Amy with Korvin (well, kinda)";
		[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
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
				if (nam is "Take her virginity yourself and let Korvin fuck her mouth"):
					say "[AmyKorvinThreesome_PAK]";
				else if (nam is "Let Korvin take her virginity while you fuck her mouth"):
					say "[AmyKorvinThreesome_KAP_M]";
				else if (nam is "Let Korvin take her virginity while you ride her face"):
					say "[AmyKorvinThreesome_KAP_FN]";
				else if (nam is "Take her pussy and let Korvin fuck her mouth"):
					say "[AmyKorvinThreesome_PAK]";
				else if (nam is "Let Korvin take her pussy while you fuck her mouth"):
					say "[AmyKorvinThreesome_KAP_M]";
				else if (nam is "Let Korvin take her pussy while you ride her face"):
					say "[AmyKorvinThreesome_KAP_FN]";
				wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say AmyKorvinThreesome_PAK:
	say "...";
	NPCSexAftermath Amy receives "OralCock" from Korvin;
	NPCSexAftermath Amy receives "PussyFuck" from Player;

to say AmyKorvinThreesome_KAP_M:
	say "...";
	NPCSexAftermath Amy receives "OralCock" from Player;
	NPCSexAftermath Amy receives "PussyFuck" from Korvin;

to say AmyKorvinThreesome_KAP_FN:
	say "...";
	if Player is female:
		NPCSexAftermath Amy receives "OralPussy" from Player;
	NPCSexAftermath Amy receives "PussyFuck" from Korvin;
]

[ *** DEBUGGER ]

Section 8 - Debugger - Not for release

gsdpettesting is an action applying to nothing.
understand "gsdpettest" as gsdpettesting.

carry out gsdpettesting:
	say "Now set to test Korvin.";
	now gsd_pet is 12;
	now gshep is tamed;
	add "Tamed" to Traits of gshep;
	now weapon damage of gshep is 5;
	now level of gshep is 3;
	now dexterity of gshep is 13;
	now lastfight of gshep is turns;
	now GShepLastScene is turns;
	now lastfuck of gshep is turns + 6;
	now gshep_fights is 0;
	now gshep_postfight is 0; [post-fight argument]
	now gshep_sexscene is 0; [sex-role argument]
	now gshep_bed_scene is 0; [discipline argument]
	now gshep_inactive is 0; [inactivity argument]

Korvin ends here.
