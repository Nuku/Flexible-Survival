Version 1 of Atlantis by Rikaeus begins here.
[Version 1 - New Area, New NPC, New Events]

[ PoseidonRelationship                                     ]
[   0: Hasnt acquired trident                              ]
[   1: Has acquired the trident                            ]
[   2: Has entered Atlantis                                ]
[   3: Has accepted the courtship                          ]
[   4: Has gone on first date                              ]
[   5: Has had sex with Poseidon/has been proposed to      ]
[   6: Has had wedding                                     ]
[  99: Has refused the courtship                           ]

[ FirstAtlantisVisit                                       ]
[   0: Hasnt visited Atlantis                              ]
[   1: Has visited Atlantis                                ]

[ TritonRelationship                                       ]
[   0: Hasnt met him                                       ]
[   1: Has met him                                         ]

[ AlanaRelationship                                        ]
[   0: Hasnt met her                                       ]
[   1: Has met her                                         ]

PoseidonRelationship is a number that varies.
FirstAtlantisVisit is a number that varies.
TritonRelationship is a number that varies.
AlanaRelationship is a number that varies.

Section 1 - Poseidon's Trident?

Lost Trident is a situation. The level of Lost Trident is 9.

The sarea of Lost Trident is "Beach".
When play begins:
	Add Lost Trident to badspots of furry;
	Add Lost Trident to badspots of guy;

Instead of resolving a Lost Trident:
	Say "     Walking along the beach you watch as the crashing waves of the sea bounce across the shore as the [if daytimer is day]sun rides along the sky[else]moon dances along the night skyline[end if] while listening to the soft intelligible sounds of marine life reverberate all around you. As the minutes pass by, the soothing sounds of the water lapping along the sands makes a sense of nostalgia surge up throughout you, mind lulling you almost to sleep. However, before you can become too lost in the all-encompassing feelings of sleep about to overtake you, you find your gaze drifting over to what looks like a bronze coloured trident free-floating like a abandoned surfboard along the waterline.";
	Say "     Curious as to where this strange thing came from, you shrug your backpack off and then walk into the sea to grab the weapon before it can drift further out into the [if daytimer is day]blue[else]black[end if] wonder of the ocean. Testing its weight you find that the trident is fairly light and has a well-worn grip around its smooth handle that fits your hand almost perfectly. Not sure, but not questioning the proverbial gift horse you begin to turn about your way to head back to the shore, but before you can get too far you hear the roar of a sea dragon behind you. Whipping your head around you find several sea dragons glaring at you as they raise themselves up out of the waters, the menacing looks on their faces makes you swallow thickly in turn.";
	WaitLineBreak;
	Say "     The instinctual need to run has your legs tensing and before you know it your trying to swim/run back to the shore, but before you can get too far you find the trident in your hands tugging you backwards to the way the sea dragons are. Blinking you look down at the weapon, then up to the oncoming dragons and then back to the beach.";
	say "     [bold type]Maybe you should just toss the thing and continue that run you were trying to go for?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Toss it.";
	say "     ([link]N[as]n[end link]) - Keep it.";
	If the player consents:
		LineBreak;
		Say "     Chucking the trident as far as you can you don't stop to watch what happens next with the sea dragons as you continue to swim/run to the shore. Grabbing your backpack and then beating feet as quick as you can you don't turn back even once to see what happens with the feral sea guardians. Had you, you would have seen a half naked male figure rising up out of the sea to take the trident into one of his meaty bronze hands.";
	else:
		LineBreak;
		Say "     Clutching the trident a little tighter into your grip you feel the strongest sense of possessiveness overcome you all of sudden making you unwilling to relinquish your newfound weapon. It would seem that the sea dragons can sense this and are about to make you regret your choice, however.";
		Challenge "Feral Sea Dragon";
		if fightoutcome >= 10 and fightoutcome <= 19:
			Challenge "Feral Sea Dragon";
			if fightoutcome >= 10 and fightoutcome <= 19:
				Challenge "Feral Sea Dragon";
				if fightoutcome >= 10 and fightoutcome <= 19:
					Challenge "Feral Sea Dragon";
					if fightoutcome >= 10 and fightoutcome <= 19:
						say "     Having beaten back the pack of feral dragons you experience a sense of well deserve pride overcome you as you watch the group of feral reptiles scampering away back into the sea. Despite you turning your attention to your prize you catch something out of the corner of your eyes. It is a half naked man with shoulder length black hair and stormy blue eyes. He appears to be looking at you inquisitively before he dives back down into the water. To your shock, a mermaid, or merman?, tail flops out of the water for a split second. From the direction of the ripples he swam towards the arc of rocks in the distance, though you believe he probably went further than that.";
						now carried of bronze trident is 1;
						increase score by 10;
						now PoseidonRelationship is 1;
						change west exit of Sunken Ship to Atlantis City Entrance;
						now Lost Trident is resolved;
		if fightoutcome >= 20:
			say "     Having lost to one of the feral sea dragons you find yourself being stripped of your newfound weapon and then casually dumped onto the beach by the creature you had just been defeated by. Grunting in utter humiliation you rest on the muddy sands for a minute while lamenting your own weakness. Looks like you know truly understand the meaning about the [italic type]one that got away[roman type] as you listen to the chatter of the feral sea dragons as the reptiles dive back into the sea with your commandeered treasure. Better luck next time.";

Section 1a - Trident (Weapon)

Table of Game Objects (continued)
name	desc	weight	object
"bronze trident"	"A large, bronze three-pronged spear that is as lightweight as it is deadly."	5	bronze trident

bronze trident is an armament. It is part of the player. It has a weapon "[one of]your three-pronged spear[or]your deadly trident[or]your bronze spear[or]your majestic weapon of doom[at random]". The weapon damage of bronze trident is 10. The weapon type of bronze trident is "Melee". It is not temporary. the objsize of trident is 4.

instead of sniffing bronze trident:
	say "The trident smells like the sea, the moon, the stars and...a strong merman? Weird.";

Section 2 - Areas of Atlantis

West of Atlantis City Entrance is Atlantis City Center.
East of Atlantis City Market is Atlantis City Center.
South of Royal Palace Entrance is Atlantis City Center.
North of Atlantis City Residential is Atlantis City Center.
Atlantis City Center is a room.
The description of Atlantis City Center is "[AtlantisCenter]".

to say AtlantisCenter:
	say "     The beautiful city center is teeming with people of all kinds. You see a shark man talking with what looks to be a greenish-toned catfish like man. Also, you are surrounded by a lot of human-looking males and females. Although if you didn't know this already you'd think they were actual humans rather than the mermen and mermaids they are. What really hits you is the fact that the city appears to be so peaceful in such a hectic world, as if the apocalypse changed nothing for them. It really lives up to the legends of being a utopia. Looking around you notice to your north is the Royal Palace of the city, with stairs leading right up to it. To the south is the residential area of Atlantis, where the various citizens live. To your west is the marketplace where everyone trades goods and services. Lastly, to your east is where you came into the city.";

West of Atlantis City Center is Atlantis City Market.
Atlantis City Market is a room.
The description of Atlantis City Market is "[AtlantisMarket]".

to say AtlantisMarket:
	say "     Upon entering the market you are met with sounds of people talking and bartering. At a stall selling weapons you hear a Pirate Shark trying to reduce the price of the sword they're attempting to buy but to no avail. Over towards another one you see what you assume to be a mermaid couple wondering whether or not they should have fish for dinner. You're sure that at some point you can find something to buy here as well. To the east is the city center that you arrived from.";

South of Atlantis City Center is Atlantis City Reisdential.
Atlantis City Residential is a room.
The description of Atlantis City Residential is "[AtlantisResidential]".

to say AtlantisResidential:
	say "     The living area of the city looks nice, just like the rest of the city. The houses are made out of various colors of coral and have a modern yet rustic look to them. Just like the other places in Atlantis there are people wandering around and some even just lounging out in front of their houses or apartment complexes. You're sure that you could meet some people who live here at a point in the future. To the north is the center of the city.";

North of Atlantis City Center is Royal Palace Entrance.
South of Royal Throne Room is Royal Palace Entrance.
Royal Palace Entrance is a room.
The description of Royal Palace Entrance is "[RoyalPalace]".

to say RoyalPalace:
	say "     The entrance to the royal palace of Atlantis is, in your opinion, the most beautiful thing in the world. It's appears to be made of dark blue stone and sapphire gems. The gates to the north are guarded by a couple of mermaid and merman guards, though they appear to be unconcerned about you, as if they were allowing you to go ahead. To the south of the palace is the center of the city.";

North of Royal Palace Entrance is Royal Throne Room.
South of Royal Bed Chambers is Royal Throne Room.
Royal Throne Room is a room.
The description of Royal Throne Room is "[ThroneRoom]".

to say ThroneRoom:
	say "     The throne room of the entire palace is as oppulent as the rest of the place, although at the back is a simple sapphire throne, as odd as that sounds. [if Poseidon is in Royal Throne Room]The friendly yet powerful god is sitting on said throne, overlooking the entire area.[end if] Behind it is a large golden trident that is hung on the wall Across the walls are various murals of ocean scenery. To your back is the hallway that leads to the outside, and just like the entrance is guarded by a couple guards. [if Poseidon is not in Royal Throne Room and PoseidonRelationship is 2]It appears that Poseidon is not here, perhaps he is in his room?[end if]";

Section 3 - Events

instead of going west from Sunken Ship while FirstAtlantisVisit is 0 and PoseidonRelationship is 1:
	say "     Upon swimming to the west you come upon a gigantic gorgeous city encased in a magical looking bubble on the ocean floor. You see hundreds of what look to be mermaids and mermen swimming around outside the bubble, having fun and playing around. Out of the corner of the eye you see some of them dive towards what looks to be a enormous golden gate. The gate opens up when they reach it and to your utter surprise, the mermen and mermaids' tails vanish and are replaced with legs. Upon closer examination you also notice they don't stay naked for long, putting on clothing that is handed to them by the guards. Intrigued by the whole thing, as you swore you saw that merman head in this direction, you swim down towards the gates.";
	say "     When you reach them, you are stopped by large spears that block your way and are held by an armored mermaid and merman who are standing inside the city. 'Halt stranger! You can't come in here without being vetted!' The female orders. Before you could say anything a deep voice interrupts them. 'That's enough Alana, Triton. Let them through,' the male-like voice says. You direct your attention to where the sound came from and are shocked to find a familiar looking face staring at you. It's the merman you saw staring at you when you got the trident! 'Yes King Poseidon!' 'Yes Father!' The mermaid and merman say respectively, causing you to raise a brow at the male. Poseidon nods and heads off, not before throwing you an interested look. Perhaps you should see him later.";
	WaitLineBreak;
	say "     Upon stepping into the city the gates close and you are beset upon by Triton. He gives you a friendly smile before speaking up. 'Welcome to the utopian City of Atlantis, that was my father Poseidon, God of the Sea,' he says, flourishing his hand in the direction of the beautiful city. You look around in awe before redirecting your attention to the man in front of you. You are able to take a closer look at him and see that he has long bright orange hair that goes down to just below his shoulderblades. You're also able to see that his weapon is not a spear but a trident, one that looks oddly familiar to you. The female on the other hand has vibrant red hair and dark brown eyes that look a bit serious to you. Her weapon however is still a spear. 'I'm not exactly sure why father has an interest in you but I do hope you enjoy your stay,' he says to you. You blurt out that you had been following him ever since you had acquired a trident from fighting feral sea dragons.";
	say "     That causes Triton to sputter out and stare at you in shock. 'T-that's why he's intrigued by you?' He stutters out, clearly surprised by this information. You swear that you hear Alana chuckling behind you as the prince blushes. You ask him why but it appears that what you said has temporarily put him out of commission. Instead it is the mermaid that answers your question. 'It's... probably better if you go see King Poseidon himself. Easier for him to explain,' she says, sighing. By the time the woman finishes, Triton has recovered and manages to say one last thing before you're on your way. 'If... you ever need me to explain things, I'll be glad to,' he manages to get out before waving you off.";
	now PoseidonRelationship is 2;
	move Triton to Atlantis City Entrance;
	now TritonRelationship is 1;
	now AlanaRelationship is 1;
	now FirstAtlantisVisit is 1;
	move Alana to Atlantis City Entrance;

instead of going to Royal Palace Entrance while PoseidonRelationship is 2:
	say "     Upon approaching the royal residence of the leader of this city, you are beset upon by two guards. 'Halt! You must be the person that King Poseidon is looking for,' one says, his stance firm, showing that he's going to hold his ground. You tilt your head curiously at them wondering what they're talking about. However, before you can voice your questions, the two step apart and gesture for you to continue on in. Shrugging your shoulders, you continue on into the palace. You soon come to a gorgeous throne room with a sapphire throne whose design could simply pass as a dining chair if the back and armrests weren't so high. Sitting on that seat is a familiar face, the merman you followed to this city, and the king of the place, Poseidon. Upon seeing you the man appears to be rather happy.";
	say "     'It's you! Perfect,' he says, standing up from his chair. You promptly ask the man why he is so intrigued by you, which causes a laugh to come from him. 'Well, simply put, it's because you past my test,' he says shrugging his shoulders as if it explained everything. You don't recall taking any kind of exam so you vocally request for him to explain. 'The fake trident, getting it was a trial to see if someone was eligible to be my spouse,' he tells you, making your mouth fall open in shock. Before you can regain your composure the kingly man asks you a question. 'Would you allow me to court you?' He asks. Figuring that you better answer now, you do.";
	say "     [bold type]Do you want to accept the courtship?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure, why not, it sounds fun.";
	say "     ([link]N[as]n[end link]) - No, I'm not a marrying-type of person.";
	if player consents:
		say "     Shrugging your shoulders you agree, causing the merman[']s face to light up. 'Great! It's official then!' He says with a smile. You ask him what this relationship will consist of, something that Poseidon promptly gives a response to. 'Simple, we go on dates, if it turns out well then perhaps marriage,' the buff male tells you. Well... you guess that was kind of obvious, causing you to wonder out loud when the first date will be. 'Oh, that, don[']t worry I[']ll plan the date and let you know when it[']s time,' he says, waving your concerns off. With a shrug you figure you should go on your way, heading back out of the palace, to the entrance.";
		move player to Royal Palace Entrance;
		now PoseidonRelationship is 3;
	else:
		say "     The merman gives you a frown but it quickly vanishes. 'I won[']t accept no for an answer, however I also will not push you. Instead I will ask that you let me know if you change your mind,' he says with a sigh. You nod your head at him and turn to leave, making your way to the Palace Entrance.";
		move player to Royal Palace Entrance;
		now PoseidonRelationship is 99;

Section 4 - NPCs

Triton is a man.
The description of Triton is "[TritonDesc]".
The conversation of Triton is { "<This is nothing but a placeholder!>" }.
The scent of Triton is "He smells of the ocean and a bit of musk. Though he has an underlying smell of spice.".

to say TritonDesc:
	say "     Triton is a well built male wearing tight pants covered in a shell like layer as well as a half-shirt armor piece made out of what looks to be coral. From the muscles you can tell that he probably works out every day though to be honest swimming as much as the mermen and mermids do is probably enough exercise for one person. He has below shoulder-length hair that is a bright orange that stands out in a crowd. When he sees you looking at him, he smiles at you.";

instead of conversing the Triton:
	say "     The merman prince smiles at you before waiting for you to say something.";
	wait for any key;
	say "[TritonTalkMenu]";

to say TritonTalkMenu:
	LineBreak;
	say "What do you wish to talk about with Triton?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Atlantis";
	now sortorder entry is 1;
	now description entry is "Ask him about the city";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Mermaids and Mermen";
	now sortorder entry is 2;
	now description entry is "Ask him about his kind";
	[
	if PoseidonRelationship is 3:
		choose a blank row in table of fucking options;
		now title entry is "His Father and You";
		now sortorder entry is 3;
		now description entry is "Ask how he feels about the courtship";
	]
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
				if (nam is "Atlantis"):
					say "[TritonTalk1]";
				if (nam is "Mermaids and Mermen"):
					say "[TritonTalk2]";
				if (nam is "His Father and You"):
					say "[TritonTalk3]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You shake your head, which simply causes the merman to shrug and return to duty.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say TritonTalk1:
	say "     'Atlantis?' He asks, tilting a curious head at you. You nod your head, curious as to the history of the city, off-handedly mentioning the legends. The buff male hums before speaking up, answering your question. 'Well, those legends were true to a degree. Atlantis was a utopian city and still is, but it did not sink. No, rather my father decided to move the city after the Greek Era ended, as he was sure that the many kingdoms would want to attack, despite his strength,' Triton tells you, leaning against the wall by the gate. You nod once more, understanding what he's talking about. Seeing this, the man continues. 'Every century or so he relocated the city to prevent humans from finding us as they were a rather persistent species,' the prince adds on. That confuses you a bit, so you mention the current times, where there are people who used to be human visiting.";
	say "     'Ah, that. Well my father figured that with the human world going down whirlpool, so to speak, that it'd be best to open Atlantis again for an... asylum,' he says. You nod as that makes a bit of sense. Though you wonder out loud as to why he would care about the mortals. 'Well... he's always had a soft spot for you guys,' was his response to you. Shrugging you figure that it's best for you to end the conversation as you don't have anything else to talk about. So instead you turn away from him as the male goes back to guarding the gates to the city.";

to say TritonTalk2:
	say "     'Ohohoh, you want to know more about the amazing race of mermaids and mermen?' he asks, flexing his muscles. To the right of him you can hear his female guard partner groaning. 'You do that everytime someone asks Triton!' she complains, the sound of her voice making you think she's rolling her eyes. The merman prince ignores her and continues to speak to you. 'Well, simply put, you could say the mermaids and mermen are a creation of my father, if you consider him trying to fix a curse of one of his many siblings. Although, I'm a creation of my father and my mother, may she rest in peace,' he tells you, though the last bit is probably just to let you know his mother has passed.";
	say "     'Nevertheless, we're both aquatic and land based as a species, mostly for the sake of convenience since my father doesn't like to look like a merman twenty-four seven,' he says, shrugging his shoulders. You nod at that, as if you could change between certain forms you would rather not have a tail instead of legs all day everyday. He then follows up by explaining that because they change on the spot that they have to have a change of clothes so they're not running around nude. 'Despite how cool that'd be, it's frowned upon in public.' He says with a sigh. Suddenly a hand comes and hits him on the head. 'You're such a pervert Triton,' Alana says, rolling her eyes. That just causes the male to wiggle his brows at her. 'You know you like it,' he says suggestively. Once again the mermaid hits him. 'Ow! Abuse! I call abuse!' he shouts loudly at her. Seeing that this won't go away anytime soon, you head on your way.";
	
to say TritonTalk3:
	say "     ...";

instead of fucking Triton:
	say "     The buff male raises a brow at you, not offended by your offer but rather intrigued. 'As much as I would love to, Alana here would murder me if I scampered off to have fun with you,' he says.";

Alana is a woman.
The description of Alana is "[AlanaDesc]".
The conversation of Alana is { "<This is nothing but a placeholder!>" }.
The scent of Alana is "     Alana smells like sweat and lavender oddly enough.".

to say AlanaDesc:
	say "     The mermaid guard is rather built for the average woman. She has a well defined six pack that shows from the small bit of stomach that you can see from her chest piece and on top of that her arms are well muscled, proving that she probably exercises every day, which you guess is expected of someone guarding the gates to the city. Her dark red hair falls down to the small of her back, something that you'd suggest to her would be detrimental to fighting if you weren't sure it'd get you a punch in the face. Of course, she doesn't look to be a violent person to begin with, but it'd be best not to say to a warrior that their hair is a problem. When she sees you staring at her the woman looks at you intently, though an underlying interest lie in her dark brown eyes.";

instead of conversing the Alana:
	say "     The mermaid guard raises a brow at you in interest as you approach her.";
	wait for any key;
	say "[AlanaTalkMenu]";

to say AlanaTalkMenu:
	LineBreak;
	say "What do you wish to talk about with Alana?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Triton";
	now sortorder entry is 1;
	now description entry is "Ask her about her partner, the prince";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Her Job";
	now sortorder entry is 2;
	now description entry is "Ask her about what she does at the gate";
	[]
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
				if (nam is "Triton"):
					say "[AlanaTalk1]";
				if (nam is "Her Job"):
					say "[AlanaTalk2]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You shake your head, which simply causes the mermaid to return back to work.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say AlanaTalk1:
	say "     'The spoiled brat?' she asked, a 'Hey!' coming from the male to your guys' right. She ignores it and continues speaking. 'I guess he's okay? I mean he does his work but he is a pervert,' Alana says, muttering the last part. Upon looking over to the prince you assume that this is a regular argument as he's just sticking his tongue out childishly at her, something that she doesn't respond to. 'Although I guess I wouldn't say he's truly spoiled. King Poseidon did make him work for everything,' she says. Once again you direct your attention to the buff male and see him nodding along. 'Yeah the old man had me prove myself to him that I wouldn't rely on his power or wealth. Was a pain in the ass to do,' he says, agreeing with her. From that you feel like that's all that is going to be told to you for now, so you leave her to her work.";

to say AlanaTalk2:
	say "     You ask the mermaid what her job at the gate consists of, something that she offers no resistance against on answering. 'Me and the brat over there guard the only entrance to Atlantis, which is this magical gate that King Poseidon made thousands of years ago,' she says, gesturing to the golden thing behind her. You ask her what's so special about it something that she replies to rather quickly. 'It's what generates the bubble you're in right now. Without it certain species or beings wouldn't be able to be in the city,' Alana says. You mention that to get down here requires to be able to breathe underwater in the first place. That prompts a surprising chuckle from her as she answers you. 'Only recently did it. After all, Atlantis wasn't here for that long. It was in other places before. Places that didn't require gills or something else to get to,' is her response to her. You nod, figuring that you understand it.";
	say "     You then ask her what would happen if the gate was destroyed. She raises a brow as if sizing you up on whether or not you'd do such a thing before shrugging. 'If that did happen then water would come rushing in. The buildings wouldn;t be destroyed as they're reinforced but people would be hurt,' Alana says to you. That actually makes sense, since the water wouldn't be displaced anymore. However before you can head off on your own, Triton makes a side comment. 'Even so, it's very unlikely for that to happen as the gate is extremely strong,' he says, swinging his trident at it for emphasis as it doesn't leave a mark. After he does so you decide to let them return to work as you've gotten all the information you could get.";

instead of fucking Alana:
	say "     The woman glares at you and behind her you can see Triton furiously shaking his head, practically telling you to stop that train of conversation. Perhaps it's best not to talk to her about this.";

An everyturn rule:
	if daytimer is night:
		remove Poseidon from play;
	else if daytimer is day:
		move Poseidon to Royal Throne Room;

Poseidon is a man.
The description of Poseido is "[PoseidonDesc]".
The conversation of Poseidon is { "<This is nothing but a placeholder!>" }.
The scent of Poseidon is "He smells heavily of the sea and the earth. It's an odd combination but it works for him".

to say PoseidonDesc:
	say "     Poseidon is a strong looking man with a visible six pack and muscular arms. The king of Atlantis is different than most mermen in the fact that he doesn't appear to wear a shirt. The god-like male has shoulder length black hair and stormy blue eyes that could and probably do, draw attention. He has a powerful aura emanating from him, clearly letting everyone know that he has strength. When he notices you looking at him, he smiles at you.";

instead of conversing the Poseidon:
	say "     The merman king smiles at you before waiting for you to say something.";
	wait for any key;
	say "[PoseidonTalkMenu]";

to say PoseidonTalkMenu:
	LineBreak;
	say "What do you wish to talk about with Triton?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if PoseidonRelationship is 99:
		choose a blank row in table of fucking options;
		now title entry is "Courtship";
		now sortorder entry is 1;
		now description entry is "Ask him about the courtship";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Siblings";
	now sortorder entry is 2;
	now description entry is "Ask him about his siblings";
	[]
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
				if (nam is "Courtship"):
					say "[PoseidonTalk1]";
				if (nam is "Siblings"):
					say "[PoseidonTalk2]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You shake your head, which simply causes the king to return to whatever he was doing.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say PoseidonTalk1:
	say "     Recalling what the buff male asked of you last time, a question pops into your head.";
	say "     [bold type]Do you wish to accept the courtship this time?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - It wouldn't hurt to give it a try.";
	say "     ([link]N[as]n[end link]) - No, I'm not a marrying-type of person.";
	if player consents:
		say "     Shrugging your shoulders mentally you voice that you want to accept his courtship. This causes the merman[']s face to light up. 'Great! It's official then!' He says with a smile. You ask him what this relationship will consist of, something that Poseidon promptly gives a response to. 'Simple, we go on dates, if it turns out well then perhaps marriage,' the buff male tells you. Well... you guess that was kind of obvious, causing you to wonder out loud when the first date will be. 'Oh, that, don[']t worry I[']ll plan the date and let you know when it[']s time,' he says, waving your concerns off. With a shrug you figure you should go on your way, heading back out of the palace, to the entrance.";
		move player to Royal Palace Entrance;
		now PoseidonRelationship is 3;
	else:
		say "     You mentally shake your head and tell him that you didn[']t have anything to say and apologize. The king shrugs his shoulders at you and goes on with his business.";

to say PoseidonTalk2:
	say "     You ask the king if he[']s actually the god of the sea and earthquakes and if so, what about his siblings. The causes him to chuckle softly. 'In the eyes of you mortals, we'd be gods but we really aren[']t. We were just humans like you who got immense power and were called such by others,' he says, shaking his head in mirth. 'Of course for some of us it went to our heads, like my brother Zeus, who basically forced Hera into a marriage. Others it made people think differently of, like Hades who people were terrified of because he gained control over souls,' Poseidon tells you. You nod at that, vaguely remembering the various myths surrounding the Greek Gods.Curius, you ask him where they are now. 'Well, I only really keep track of the ones I like. For example, Aphrodite has been roaming around as a matchmaker and Hestia has taken in refugees from this event,' the man explains. You get the feeling that this is a rough subject so you leave it be for now, stepping away from him.";

instead of fucking Poseidon:
	if PoseidonRelationship is 99:
		say "     The king looks at you oddly before shaking his head. 'I won[']t bed you unless we're courting, it wouldn't be fair to you,' he says firmly, causing you to sigh.";
	else if PoseidonRelationship is 3:
		say "     The king chuckles at you and smiles. 'Sorry my dear but not until we're further into the courtship,' he tells you waving you off. You shrug your shoulders and figure you can wait.";

Atlantis ends here.