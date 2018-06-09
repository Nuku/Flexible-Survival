Version 1 of Carl by Wahn begins here.
[Version 1.1 - Small Fix]

"Adds a husky npc to Flexible Survival, entering the game as an aftermath of the soldier squad events"

[ Carl, the husky                                                                      ]
[                                                                                      ]
[ HP of Carl                                                                           ]
[   0: starting state, not transformed yet                                             ]
[   1: Allen fucked Carl, made him a husky                                             ]
[   2: player helped him escape and brought him into the library                       ]
[   3: talked with Carl in the library                                                 ]
[  10: Carl got a grip of himself, making him his own person, just in a canine body    ]
[  30: Carl got pushed into subby Beta behavior by the player fucking him very soon   ]
[  50: player helped him escape, then sent him off alone                               ]
[  90: he got caught by Allen and was broken in by him                                 ]
[ 100: removed from the game (lost somewhere)                                          ]
[                                                                                      ]
[ Level of Carl - interaction with Fang                                                ]
[   0: nothing happened yet                                                            ]
[   1: kicked Beta Fang's ass and fucked him to show him what's what - player watched  ]
[   2: kicked Beta Fang's ass and fucked him to show him what's what - not watched     ]
[  50: normal Carl got fucked by Alpha Fang                                            ]
[  51: sub Carl got fucked by Beta Fang - player watched                               ]
[  51: sub Carl got fucked by Beta Fang - not watched                                  ]
[                                                                                      ]
[ Libido of Carl - interaction with Helen                                              ]
[   0: nothing happened yet                                                            ]
[   1: normal Carl fucked Helen                                                        ]
[  50: sub Carl fucked Helen                                                           ]
[ 100: declined Carl starting something with Helen                                     ]
[                                                                                      ]
[ Dexterity of Carl - interaction with Xerxes                                          ]
[   0: nothing happened yet                                                            ]
[   1: normal Carl fucked Xerxes                                                       ]
[  50: sub Carl fucked Xerxes                                                          ]
[ 100: declined Carl starting something with Xerxes                                    ]
[                                                                                      ]
[ Thirst of Carl - interaction with David                                              ]
[   0: not talked with David yet                                                       ]
[   1: player encouraged Carl to start things with David                               ]
[  99: player discouraged Carl to start things with David                              ]
[                                                                                      ]
[ lust of Carl - interaction with Candy                                                ]
[   0: nothing happened yet                                                            ]
[   1: Candy came up to Carl and got fucked - player watched                           ]
[   2: Candy came up to Carl and got fucked - player didn't watch                      ]
[ 100: player told Carl to cut it out with Candy                                       ]
[                                                                                      ]
[ CarlShower - bunker shower tracking                                                  ]
[   0: nothing happened yet                                                            ]
[   1: Told Carl he can shower downstairs                                              ]

CarlShower is a number that varies.

Section 1 - Description

Carl is a man. The HP of Carl is usually 0.
The icon of Carl is Figure of Carl_clothed_icon.
The description of Carl is "[CarlDesc]".
The conversation of Carl is { "Woof." }.
CarlLibraryEntry is a number that varies. [when he was brought in]

to say CarlDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Carl], LEVEL: [level of Carl], LIBRARY ENTRY TURN: [CarlLibraryEntry], Libido: [libido of Carl], Dexterity: [dexterity of Carl], Thirst: [thirst of Carl], Lust: [lust of Carl] <- DEBUG[line break]";
	if HP of Carl is 2 or HP of Carl is 3:
		say "     Carl Banning is a well-built young male soldier, now transformed into an anthropomorphic husky. He wears a dark undershirt and the camo pattern pants of a normal military uniform, though he had to give up on boots since his digitigrade paws wouldn't fit in them. [if CarlLibraryEntry - turns < 17]His behavior shows that he's a bit unsure of himself, unnerved by the automatic reactions and inherent mannerisms of his body, like movements of his tail and ears. Maybe he just needs some time to get used to it all.[else]By now, he's found an equilibrium with his new shape, using his tail and ears to express himself while still maintaining most of his humanity.[end if]";
	else if HP of Carl > 9 and HP of Carl < 30:
		say "     Carl Banning is a well-built young male soldier, now transformed into an anthropomorphic husky. He wears a dark undershirt and the camo pattern pants of a normal military uniform, though he had to give up on boots since his digitigrade paws wouldn't fit in them. By now, he's found an equilibrium with his new shape, using his tail and ears to express himself while still maintaining most of his humanity. As he sees you looking at him, he gives you a broad smile, followed by a salacious wink.";
	else if HP of Carl > 29 and HP of Carl < 50:
		say "     Carl Banning is a well-built young male soldier, now transformed into an anthropomorphic husky. He wears a dark undershirt and the camo pattern pants of a normal military uniform, though he had to give up on boots since his digitigrade paws wouldn't fit in them. By now, he's become a lot more dog-like in his mannerisms, often acting and reacting in canine ways more than human ones. As he sees you looking at him, he lowers his head a bit and only looks at you from the corner of his eye, showing his submissiveness to you.";
	say "     Having carried up a mattress from the bunker and set it up as his bed near one of the front-side windows of the library, he spends much of his time on lookout over the approaches to the building, ready to give warning should any dangerous creatures approach.";

The scent of Carl is "     Carl smells like a husky - and clearly a male one at that.".

to say CarlStatus: [for use in texts - normal Carl or sub Carl]
	if HP of Carl > 9 and HP of Carl < 30:
		say "friend ";
	else:
		say "beta ";

Section 2 - Talking

instead of conversing the Carl:
	if graphics is true:
		project the figure of Carl_face_icon;
	if (HP of Carl is 2):
		say "     Carl says 'Listen, I really appreciate the risk you took in helping me. Mighty decent to take in someone with everything that's been going on.' His lips twitch for a moment as he tries to smile, something a canine's muzzle isn't quite meant to do, then he gives a little shrug and his tail starts wagging slowly. 'Now I want to do my part in getting us through this, so I'm gonna take position up here at the window and keep watch for anything approaching the building. Just get ready for a fight if you hear me shouting, ok?'";
		now HP of Carl is 3;
	else if HP of Carl > 2:
		say "[CarlTalkMenu]";
	else:
		say "ERROR-Carl-[HP of Carl]C: He isn't in one of the states she should be in! Please report how you got to this message.";

to say CarlTalkMenu:
	LineBreak;
	say "What do you want to talk with Carl about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Talk about what comes to mind";
	[]
	if (CarlShower is 0 and library computer is powered):
		choose a blank row in table of fucking options;
		now title entry is "The showers in the bunker";
		now sortorder entry is 2;
		now description entry is "Tell the husky soldier that you got the showers to work";
	[]
	if lust of Carl > 0:
		choose a blank row in table of fucking options;
		now title entry is "Bring up Candy";
		now sortorder entry is 3;
		now description entry is "Talk to Carl about his relationship with the gay raccoon";
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
				now sextablerun is 1;
				if (nam is "Just chat a bit"):
					say "[CarlTalk1]";
				if (nam is "The showers in the bunker"):
					say "[CarlTalk2]";
				if (nam is "Bring up Candy"):
					say "[CarlTalk3]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the husky soldier, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say CarlTalk1:
	say "     Carl says '[one of]There was a gryphon who circled above the area for a while. He's gone now, but be on the lookout when you go out...'[or]A pack of huskies came through the street not long ago. One of them looked like she wanted to check out the library, but in the end her mate just fucked her down on the stairs and they moved on afterwards.'[or]Watch out if you go out there, I saw a huge wyvern fly over the area not too long ago.'[or]Quite a few of the infected pass by the library and barely give it a second glance - seems like reading is the last thing on their mind and they don't expect to find any good loot in here.'[at random]";

to say CarlTalk2:
	say "     As you tell Carl that the showers downstairs are working now, the soldier gives you a happy grin and wags his tail. 'They are? Great! I've been tired of smelling... well, like a sweaty dog. One learns to make do on a mission, but it's not something you expect when deployed to an american city. So thanks a lot for that. Can't wait to freshen up!'";
	now CarlShower is 1;

to say CarlTalk3:
	if lust of Carl > 0 and lust of Carl < 100: [he's set to bone Candy]
		say "     You take Carl aside and talk to him, explaining that it is getting... distracting to find the two of them fucking around with no warning. The husky soldier's tail droops as he hears your complaint and a shame-faced expression crosses his muzzle. 'Erm... okay, sorry about that. I - um - I'll keep things on the down-low, alright?' As you nod and pat his shoulder, saying that you appreciate this, he lets out a sigh of relief and turns back to watching the road outside.";
		now lust of Carl is 100; [lockout for Carl+Candy]
	else if lust of Carl is 100:
		say "     You take Carl aside and talk to him, explaining that you've changed your mind about him and Candy. Sometimes, walking in on your canine friend boning a worshipful gay raccoon is just the distraction you need after a tiring day of battling it out with who knows what in the city. The husky soldier's eyebrows rise as he hears you talk, followed by a broad grin spreading over his muzzle and his bushy tail wagging up a storm. 'Erm... okay then. If you're fine with it, I - um, am eager to spend a little more time with Candy.' As you nod and pat his shoulder, saying that you hope he has fun, he chuckles and turns back to watching the road outside.";
		now lust of Carl is 1; [Carl and Candy are set to bone]

Section 3 - Sex

Instead of fucking the Carl:
	if HP of Carl is 2:
		say "     Maybe you should talk to him a bit first. After all, he ran away from someone just wanting to fuck and control him not too long ago.";
	else if HP of Carl is 3:
		if CarlLibraryEntry - turns < 17: [he's still unsure about himself]
			say "     Pulling off your clothes and gear and setting them down in a near pile, you stroll over to the transformed soldier. As you step up to Carl and offer to have sex with him, you see an eager expression come over his face, his ears perking up and his gaze hungrily wandering over your body. He starts breathing harder, panting with a half-open mouth, and the bulge of his pants starts growing noticeably. Then suddenly, he steps back, breaking out of the moment and shaking his head. He says 'I'd love to, but I - I don't think I should do that. Not now, so soon after Allen changed me. I felt it in me, you know, the urge to just let him do what he wants, submit to the alpha like a good dog.' He shudders as he notices that his tail started wagging for that last bit, something inside him clearly approving of what happened. Concentrating to make it stop, he continues 'Just - give me some time to come to terms with all this, okay?'";
			LineBreak;
			if graphics is true:
				project the figure of Carl_knot_icon;
			say "     Even though he managed to suppress his immediate urges, the flare-up of lust is clearly still bubbling strongly inside Carl's canine body.";
			say "     [bold type]Do you want to... give him a little push over the edge?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				LineBreak;
				if cocks of player > 0 and cunts of player > 0:
					say "     [bold type]Do you want to fuck him or ride him?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Fuck him.";
					say "     ([link]N[as]n[end link]) - Ride him.";
					if player consents:
						LineBreak;
						say "[SubCarl_Assfuck]";
					else:
						LineBreak;
						say "[SubCarl_PussyRide]";
				else if cocks of player > 0:
					say "     ";
					say "     [bold type]Do you want to fuck him or ride him?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Fuck him.";
					say "     ([link]N[as]n[end link]) - Ride him.";
					if player consents:
						LineBreak;
						say "[SubCarl_Assfuck]";
					else:
						LineBreak;
						say "[SubCarl_AssRide]";
				else if cunts of player > 0:
					say "[SubCarl_PussyRide]";
				else:
					say "[SubCarl_AssRide]";
				now HP of Carl is 30; [subby Beta]
			else:
				LineBreak;
				say "     Nodding, you touch Carl's arm and tell him that you understand. As even that touch made him breathe a little harder, you just step away from him for now and leave the transformed soldier to deal with his inner conflicts.";
		else: [he's come to terms with being a husky, acts like his own person with some canine mannerisms]
			say "     Pulling off your clothes and gear and setting them down in a near pile, you stroll over to the transformed soldier. As you step up to Carl and offer to have sex with him, you see an eager expression come over his face, his ears perking up and his gaze hungrily wandering over your body. He starts breathing harder, panting with a half-open mouth, and the bulge of his pants starts growing noticeably. Then suddenly, Carl looks behind him with a curious tilt of his eyebrows and starts to chuckle at his exuberantly wagging tail. 'You know what - I'm okay with being a dog now. This body feels strong and pretty amazing - though there are some things I still need to get the hang of.' After a last quick look at his tail, his gaze moves to the bulge in his pants, then to you. In a husky voice he adds 'If you wanna explore some of them with me, I'm game', then pulls his shirt up and over his head, revealing a furry and toned chest.";
			if graphics is true:
				project the figure of Carl_knot_icon;
			if cocks of player > 0 and cunts of player > 0:
				say "     [bold type]Do you want to fuck Carl or get fucked by him?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Fuck Carl.";
				say "     ([link]N[as]n[end link]) - Get fucked.";
				if player consents:
					LineBreak;
					say "[Carl_Assfuck]";
				else:
					LineBreak;
					say "[Carl_FucksPlayerPussy]";
			else if cocks of player > 0:
				say "     [bold type]Do you want to fuck Carl or get fucked by him?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Fuck Carl.";
				say "     ([link]N[as]n[end link]) - Get fucked.";
				if player consents:
					LineBreak;
					say "[Carl_Assfuck]";
				else:
					LineBreak;
					say "[Carl_FucksPlayerAss]";
			else if cunts of player > 0:
				LineBreak;
				say "[Carl_FucksPlayerPussy]";
			else:
				LineBreak;
				say "[Carl_FucksPlayerAss]";
			now HP of Carl is 10; [human in canine shape]
	else if (lastfuck of Carl - turns < 6):
		if HP of Carl > 9 and HP of Carl < 30:
			say "     As you walk up to Carl, he recognizes your eager stride and immediately pulls you into an embrace and a kiss. As he comes up for air, he says 'Frisky, aren't you? I'm afraid I can't quite hold your pace on that - though maybe that's a good thing, or I'd try to tempt you into staying here all day, you sexy beast.' With a chuckle, he takes his hands off you again, then silently adds 'Later, ok?'";
		else:
			say "     As you walk up to Carl with lust in your eyes, he submissively lowers his head and says 'I'm sorry Alpha, but I'm not ready for another round yet. Please, I need some more time.'";
	else:
		if graphics is true:
			project the figure of Carl_knot_icon;
		if HP of Carl > 9 and HP of Carl < 30:
			say "     As you walk up to Carl, he recognizes your eager stride and immediately pulls you into an embrace and a kiss. As he comes up for air, he says 'Frisky, aren't you? What did you have in mind, you sexy beast?'";
		else:
			say "     As you walk up to Carl, he recognizes your eager stride and immediately and waits for you with his head lowered submissively 'What can I do for you, Alpha?'";
		WaitLineBreak;
		say "[CarlSexMenu]";

to say SubCarl_Assfuck:
	say "     Ignoring the transformed man's plea, you step up to him and start rubbing the bulge in his trousers, breaking what control he had over his urges. He moans as you continue to stroke and touch him, then slide a hand into his pants and fondle the husky's canine shaft and furry balls. Soon you've got him panting loudly in lust and wagging his tail - which gets even more exuberant as you tell him to be a good dog now and strip for you. Obediently, he pulls off his shirt and lets his trousers drop, baring his well-toned anthro body to you. Then he drops to all fours, expecting the same treatment that Allen gave him from you, his butt raised a bit and tail held to the side to expose his quivering pucker.";
	say "     Instantly hard at the submissive display, you quickly get rid of your own clothes, then kneel behind Carl on the carpeted floor of the library and line up your cock with his asshole. Gripping his furry hips tightly, you pull him against your hard shaft, increasing the pressure slowly until he gives a tiny whimper as your manhood pops into the transformed soldier. Having been a virgin to anal sex not long ago, Carl's hole is delightfully tight, closely gripping your shaft as it slides deeper and deeper into him. When you finally bottom out and your balls touch his cheeks, you have to stop for a moment to not lose it right then and there.";
	WaitLineBreak;
	say "     After taking several deep breaths and cooling down a bit, you start pulling back and thrusting back in, fucking the submissive soldier with slow but deep strokes. He moans loudly as your hard shaft rubs his insides and soon starts to rock back and meets each of your thrusts in an effort to make you go harder and even deeper. Wound up as much as you already were, it doesn't take all that long until fucking the athletic canine drives you over the edge and the need to cum boils up in your balls. With a grunt, you drive your shaft inside him all the way, then claim Carl as yours with blast after blast of a massive load gushing into him.";
	say "     Telling the transformed soldier how good a dog he was for you while your cock still pulses with spurts of cum pumping into him, you reach around Carl and grab his own raging boner. The canine shaft with its pointy tip and swollen knot rests hotly in your hand as you jerk him off, soon twitching as he comes and his seed sprays over the carpet below. Pulling out your shaft from his freshly fucked asshole, you watch a trickle of cum run down from it and soak into Carl's fur, then tell him to expect more action like this in the future. 'Yes, Alpha,' he replies, now fully locked into his role as a submissive member of your pack.";
	now lastfuck of Carl is turns;

to say SubCarl_AssRide:
	setmonster "Alpha Husky";
	choose row monster from the table of random critters;
	if cocks of player > 0:
		say "     Ignoring the transformed man's plea, you step up to him and start rubbing the bulge in his trousers, breaking what control he had over his urges. He moans as you continue to stroke and touch him, then slide a hand into his pants and fondle the husky's canine shaft and furry balls. Soon you've got him panting loudly in lust and wagging his tail - which gets even more exuberant as you tell him to be a good dog now and strip for you. Obediently, he pulls off his shirt and lets his trousers drop, baring his well-toned anthro body to you. Then he drops to all fours, expecting the same treatment that Allen gave him from you, his butt raised a bit and tail held to the side to expose his quivering pucker.";
		say "     Instantly hard at the submissive display, you quickly get rid of your own clothes, then tell Carl to lie on his back instead. The surprised but very willing husky does as he's told and lies spread out before you moments later, his hard shaft standing proudly erect. Grinning at the submissive canine just waiting to be claimed, you move to kneel over his hips and reach down to take hold of his cock. Lining it up with your pucker, you slowly lean back, sinking your asshole down on his shaft. The transformed soldier gasps as the pointy tip of his manhood slides deeper and deeper into your body until soon his balls touch your butt and he's all the way inside. Gripping his canine shaft tightly with your inner muscles, you stop for a moment and revel in the delicious feeling of fullness it gives you.";
		WaitLineBreak;
		say "     After taking several deep breaths until you can go on without immediately blowing your load, you start rocking back and forth, sliding yourself up and down on Carl's hard cock. Fucking yourself on the submissive soldier's prick, you take him hard and deep, rubbing your most sensitive spots deep inside. It feels amazing to be able to use him for your lust and amusement, your very own hunk who does exactly what you want. As horny as the two of you are, it doesn't take all that long until your hot and heavy coupling drives Carl over the edge. He gives a deep, lust-filled growl and thrusts up his hips out of instinct, making sure that his knot is inside you as it swells up and binds the two of you together. Then his hard shaft starts to pulse as it blasts spurt after spurt of his canine seed deep into your body.[mimpregchance]";
		say "     Carl's first load as a submissive doggie - your submissive doggie - fills you with a warm feeling and tickles your aroused body in just the right way to drive you to your own orgasm. Giving a satisfied grunt, you quickly grab your hard cock, holding it tightly as you blow long spurts of white cum all over the prone husky under you. While you sit down on Carl's hips and wait for his knot to go down enough for you to separate, you tell him to expect more action like this in the future. 'Yes, Alpha,' he replies, now fully locked into his role as a submissive member of your pack.";
	else:
		say "     Ignoring the transformed man's plea, you step up to him and start rubbing the bulge in his trousers, breaking what control he had over his urges. He moans as you continue to stroke and touch him, then slide a hand into his pants and fondle the husky's canine shaft and furry balls. Soon you've got him panting loudly in lust and wagging his tail - which gets even more exuberant as you tell him to be a good dog now and strip for you. Obediently, he pulls off his shirt and lets his trousers drop, baring his well-toned anthro body to you. Then he drops to all fours, expecting the same treatment that Allen gave him from you, his butt raised a bit and tail held to the side to expose his quivering pucker.";
		say "     Instantly aroused by the submissive display, you quickly get rid of your own clothes, then tell Carl to lie on his back instead. The surprised but very willing husky does as he's told and lies spread out before you moments later, his hard shaft standing proudly erect. Grinning at the submissive canine just waiting to be claimed, you move to kneel over his hips and reach down to take hold of his cock. Lining it up with your pucker, you slowly lean back, sinking your asshole down on his shaft. The transformed soldier gasps as the pointy tip of his manhood slides deeper and deeper into your body until soon his balls touch your butt and he's all the way inside. Gripping his canine shaft tightly with your inner muscles, you stop for a moment and revel in the delicious feeling of fullness it gives you.";
		WaitLineBreak;
		say "     After taking several deep breaths until you can go on without coming right then and there, you start rocking back and forth, sliding yourself up and down on Carl's hard cock. Fucking yourself on the submissive soldier's prick, you take him hard and deep, rubbing your most sensitive spots deep inside. It feels amazing to be able to use him for your lust and amusement, your very own hunk who does exactly what you want. As horny as the two of you are, it doesn't take all that long until your hot and heavy coupling drives Carl over the edge. He gives a deep, lust-filled growl and thrusts up his hips out of instinct, making sure that his knot is inside you as it swells up and binds the two of you together. Then his hard shaft starts to pulse as it blasts spurt after spurt of his canine seed deep into your body.[mimpregchance]";
		say "     Carl's first load as a submissive doggie - your submissive doggie - fills you with a warm feeling and tickles your aroused body in just the right way to drive you to your own orgasm. Your whole body starts to tremble and shiver as a tingly feeling of satisfaction runs through you, making you pant and moan from its intensity. While you sit down on Carl's hips and wait for his knot to go down enough for you to separate, you tell him to expect more action like this in the future. 'Yes, Alpha,' he replies, now fully locked into his role as a submissive member of your pack.";
	now lastfuck of Carl is turns;

to say SubCarl_PussyRide:
	setmonster "Alpha Husky";
	choose row monster from the table of random critters;
	say "     Ignoring the transformed man's plea, you step up to him and start rubbing the bulge in his trousers, breaking what control he had over his urges. He moans as you continue to stroke and touch him, then slide a hand into his pants and fondle the husky's canine shaft and furry balls. Soon you've got him panting loudly in lust and wagging his tail - which gets even more exuberant as you tell him to be a good dog now and strip for you. Obediently, he pulls off his shirt and lets his trousers drop, baring his well-toned anthro body to you. Then he drops to all fours, unthinkingly taking the same position as he did when Allen used him, his butt raised a bit and tail held to the side to expose his quivering pucker.";
	say "     Instantly aroused by the submissive display, you quickly get rid of your own clothes, then tell Carl to lie on his back instead. The surprised but very willing husky does as he's told and lies spread out before you moments later, his hard shaft standing proudly erect. Grinning at the submissive canine just waiting to be claimed, you move to kneel over his hips and reach down to take hold of his cock. Lining it up with your pussy, you slowly lower yourself, sinking your swollen pussy lips down over his shaft. The transformed soldier gasps as the pointy tip of his manhood slides deeper and deeper into your body until soon his balls touch your crotch and he's all the way inside. Gripping his canine shaft tightly with your inner muscles, you stop for a moment and revel in the delicious feeling of fullness it gives you.";
	WaitLineBreak;
	say "     After taking several deep breaths until you can go on without immediately orgasming, you start rocking back and forth, sliding yourself up and down on Carl's hard cock. Fucking yourself on the submissive soldier's prick, you take him hard and deep, rubbing your most sensitive spots deep inside. It feels amazing to be able to use him for your lust and amusement, your very own hunk who does exactly what you want. As horny as the two of you are, it doesn't take all that long until your hot and heavy coupling drives Carl over the edge. He gives a deep, lust-filled growl and thrusts up his hips out of instinct, making sure that his knot is inside you as it swells up and binds the two of you together. Then his hard shaft starts to pulse as it blasts spurt after spurt of his canine seed straight into your womb.[fimpregchance]";
	say "     Carl's first load as a submissive doggie - your submissive doggie - fills you with a warm feeling and tickles your aroused body in just the right way to drive you to your own orgasm. Giving a satisfied moan, you start squirting femcum all over Carl's crotch where it soaks into his thick fur. While you sit down on Carl's hips and wait for his knot to go down enough for you to separate, you tell him to expect more action like this in the future. 'Yes, Alpha,' he replies, now fully locked into his role as a submissive member of your pack.";
	now lastfuck of Carl is turns;

to say Carl_Assfuck:
	say "     Opening up the button of his pants, Carl lets them drop, revealing his already half-hard canine shaft. Taking hold of it and stroking his hand up and down its length, he remarks 'Looks a bit different than a human one, doesn't it?' and lets his fingers wander a bit, teasing the slightly pointy tip and the small bulge at its base that will swell up to a knot. Then his eyes seek out yours as he says 'Why don't you get a little taste?' With the soft push of Carl's hand on your shoulder guiding you, you kneel down in front of him and play your tongue over the underside of his shaft, then take the tip between your lips and start blowing him off. As you go down on him, your nose gets pressed into the dense fur of his crotch, making you inhale his very masculine, musky scent that stokes the fires of your lust ever brighter.";
	say "     While you're bobbing on Carl's erect manhood, you let your hands wander around to his backside, cupping the firm curves of his butt. After giving his cheeks an appreciative squeeze, you pull them apart a bit and feel for what lies between them, brushing over the canine soldier's pucker with your fingers. Carefully teasing the muscle a bit first to keep it relaxed, you slowly work a finger in Carl's back door, pushing it deep enough to rub his prostate - which makes the transformed man pant in lust. After taking a deep breath, he says 'You know, although it pains me to admit it - I really got off from Allen pounding my ass quite a bit. So, I... I guess I don't have any problems in doing it with you now.'";
	WaitLineBreak;
	say "     With a wry little chuckle, Carl adds 'Almost can't believe I'm gonna do this', then gently pulls your mouth off his cock and crouches down to give you a kiss. Then he lets himself sink back to lie on the floor, spreading his legs and pulling them up with both hands to expose his asshole to you. Instantly rock-hard at the display the ready and willing man gives you, you quickly move into position between his legs, then line up your shaft with his hole. There is a small sigh of indrawn breath from Carl as you touch his pucker, then that is replaced by pants and moans as your manhood slides in, stretching his inner passage around itself. Taking your time for him to get used to having your invading member inside him, you sink yourself into Carl's ass bit by bit, then lean forward to give him a deep kiss as your balls touch his furry butt.";
	say "     Pulling out a bit, then thrusting back in all the way, you fervently fuck the transformed soldier, filling the library with the sounds of your urgent coupling. Most of that is Carl showing how much he's getting off on taking your cock in a very vocal manner, gasping and shouting loudly with each of your thrusts and wrapping his legs around your hips to pull you against him harder. A few minutes later though, you suddenly feel his strong hand against your chest, and in between moans he gasps 'Wait...' As you freeze your movements, he takes a deep breath and wiggles off your cock with a sigh, then gives a playful grin and continues with '...I want you to take me doggy style now.'";
	WaitLineBreak;
	say "     Barely able to hold back from just continuing to pound into the handsome soldier, you watch him roll around and get on all fours, then eagerly move into position behind him. As you plunge your shaft back into Carl's butt, both of you gasp from the novel sensations the different angle brings with it, then get right back into a steady rhythm of fucking. It's not all that much longer until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he shouts for you to fuck him harder. Then his whole body stiffens as the knot at the base of his shaft swells up and long strings of his cum start splattering over the carpeted floor below. You can feel each burst as a jerk of the husky's inner muscles, almost as someone was jerking you off while you're inside his ass. That added stimulation is the last little bit you need to reach your own climax, and with a groan you unload your fertile seed deep into Carl's warm passage.";
	say "     After both of you finish coming and have a moment to come down from the rush of orgasm, Carl pulls off your shaft and turns around on all fours. In a strangely flat voice he barks 'Woof! Woof! Good Master!' and pounces you, giving you a slobbering kiss before falling on his ass laughing. Grinning, he says 'Just kidding! Thought I'd gone soft in the head over a little sex, didn't you - you should have seen the face you made.' Then he sobers up a bit again and reaches up to pull your lips to his and make out. In between kisses he adds 'But all jokes aside - that was great! Feeling you inside me made me rock-hard. I wouldn't mind playing good little doggie again sometime and let you mount me.'";
	now lastfuck of Carl is turns;

to say Carl_FucksPlayerPussy:
	setmonster "Alpha Husky";
	choose row monster from the table of random critters;
	say "     Opening up the button of his pants, Carl lets them drop, revealing his already half-hard canine shaft. Taking hold of it and stroking his hand up and down its length, he remarks 'Looks a bit different than a human one, doesn't it?' and lets his fingers wander a bit, teasing the slightly pointy tip and the small bulge at its base that will swell up to a knot. Then his eyes seek out yours as he says 'Why don't you get a little taste?' With the soft push of Carl's hand on your shoulder guiding you, you kneel down in front of him and play your tongue over the underside of his shaft, then take the tip between your lips and start blowing him off. As you go down on him, your nose gets pressed into the dense fur of his crotch, making you inhale his very masculine, musky scent that stokes the fires of your lust ever brighter.";
	say "     After some time of you bobbing on his erect manhood, Carl gently holds your head as he pulls out, then crouches down to give you a deep and hungry kiss. Coming up for air after that he gives you a lust-filled growl and moves forward, pushing you down on your back in a gentle but assertive manner. You find yourself under the male husky, with his muscular arms lightly holding yours to the floor while he passionately makes out with you. While your tongues wrangle with each other, you feel your legs being spread a bit further as his hips move into position, then his hot, hard shaft pokes you in the crotch.";
	WaitLineBreak;
	say "     'You're so hot - can't wait to fuck you' Carl moans in between kisses and brushes the tip of his manhood over your sensitive pussy lips. Then he pushes forward, nudging them apart with his hard shaft and starts sinking himself into your body. The two of you moan in unison as more and more of Carl's member pushes into you, your inner folds rubbing against his cock. Then there is a small pause as the slight bulge of his not yet swollen knot presses against you, to be popped in with a lusty grunt from Carl after a bit more pressure. Groaning 'Aah, you feel amazing baby. Such a warm, tight hole...' the transformed soldier grinds his hips against yours, his whole cock now inside you and his balls rubbing your crotch.";
	say "     Carl starts to pull back and plunge back in, fucking you with deep thrusts. Having his muscular form on top of you arouses you to no end, his hand-paws still holding down your arms while he pounds your pussy and his muzzle dipping down to give you hungry kisses from time to time. Then suddenly, he pulls out, leaving an almost shocking feeling of emptiness inside you that has you give a needy whine for him to continue. Planting a kiss on your mouth, Carl says 'Shh, baby. You'll get more - just... turn around and get on all fours. I wanna do it doggy style.'";
	WaitLineBreak;
	say "     Eager to continue your coupling with the husky soldier, you roll over and get on your hands and knees, immediately feeling the warm, furry shape of Carl behind you and on your back. His arms wrap around you from behind, stroking your chest, and you can feel him kiss your neck, then his hard canine shaft finds your pussy opening again and thrusts right in. With this new angle, Carl's manhood rubs your sensitive spots even more intensely than before, clearly showing that it was made for this style of fucking. Now pounding into you in a way that just feels right to him, the strong husky really takes out all the stops, mounting you with a truly animal-like intensity that just takes your breath away in the sensations it creates.";
	say "     Being his first time fucking someone in this new body, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against you. The knot at the base of his shaft swells up to lock your bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into your womb. Feeling the warm pulse of his cum into your body, filling you up, is the last straw that pushes you over the edge right with him, panting loudly as you climax. Your pussy gets really wet around his cock and femcum starts to drip out of it down onto the floor.[fimpregchance]";
	WaitLineBreak;
	say "     After a while of just holding you from behind and slowly stroking your body while waiting for his knot to go down, Carl says in a gruff voice 'You know this makes you my bitch, don't you?' As you stiffen at the sudden announcement, thoughts racing to come up with a reply, he nibbles on your earlobe and chuckles in a much lighter tone 'Just kidding. I wouldn't do something like that to you.' With a tickling kiss against your neck he adds 'Though I wouldn't mind playing at being top dog with you some more. You feel amazing, doggy style.'";
	now lastfuck of Carl is turns;

to say Carl_FucksPlayerAss:
	setmonster "Alpha Husky";
	choose row monster from the table of random critters;
	if cocks of player > 0:
		say "     Opening up the button of his pants, Carl lets them drop, revealing his already half-hard canine shaft. Taking hold of it and stroking his hand up and down its length, he remarks 'Looks a bit different than a human one, doesn't it?' and lets his fingers wander a bit, teasing the slightly pointy tip and the small bulge at its base that will swell up to a knot. Then his eyes seek out yours as he says 'Why don't you get a little taste?' With the soft push of Carl's hand on your shoulder guiding you, you kneel down in front of him and play your tongue over the underside of his shaft, then take the tip between your lips and start blowing him off. As you go down on him, your nose gets pressed into the dense fur of his crotch, making you inhale his very masculine, musky scent that stokes the fires of your lust ever brighter.";
		say "     After some time of you bobbing on his erect manhood, Carl gently holds your head as he pulls out, then crouches down to give you a deep and hungry kiss. Coming up for air after that he gives you a lust-filled growl and moves forward, pushing you down on your back in a gentle but assertive manner. You find yourself under the male husky, with his muscular arms lightly holding yours to the floor while he passionately makes out with you. While your tongues wrangle with each other, you feel your legs being spread a bit further as his hips move into position, then his hot, hard shaft pokes you in the crotch.";
		WaitLineBreak;
		say "     Carl moans in between kisses and rubs his cock against yours, then says, 'You're so hot - can't wait to fuck you.' After that, he reaches down to take hold of your legs, pulling them up a bit to expose your asshole and get it into the right position. With one hand, he lines up his canine cock with your pucker, then pushes forward, nudging your back door until it yields and the tip of his shaft starts sinking into your body. The two of you moan in unison as more and more of Carl's member pushes into you, your inner walls rubbing against his cock. Then there is a small pause as the slight bulge of his not yet swollen knot presses against you, to be popped in with a lusty grunt from Carl after a bit more pressure. Groaning 'Aah, you feel amazing baby. Such a warm, tight hole...' the transformed soldier grinds his hips against yours, his whole cock now inside you and his furry balls rubbing against your ass.";
		say "     Carl starts to pull back and plunge back in, fucking you with deep thrusts. Having his muscular form on top of you arouses you to no end, his hand-paws still holding down your arms while he pounds your ass and his muzzle dipping down to give you hungry kisses from time to time. Then suddenly, he pulls out, leaving an almost shocking feeling of emptiness inside you that has you give a needy groan for him to continue. Planting a kiss on your mouth, Carl says, 'Shh, baby. You'll get more - just... turn around and get on all fours. I wanna do it doggy style.'";
		WaitLineBreak;
		say "     Eager to continue your coupling with the husky soldier, you roll over and get on your hands and knees, immediately feeling the warm, furry shape of Carl behind you and on your back. His arms wrap around you from behind, stroking your chest, and you can feel him kiss your neck, then his hard canine shaft finds your pucker again and thrusts right in. With this new angle, Carl's manhood rubs your sensitive spots even more intensely than before, clearly showing that it was made for this style of fucking. Now pounding into you in a way that just feels right to him, the strong husky really takes out all the stops, mounting you with truly animal-like intensity that just takes your breath away in the sensations it creates.";
		say "     Being his first time fucking someone in this new body, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against you. The knot at the base of his shaft swells up to lock your bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into your insides. Feeling the warm pulse of his cum into your body, filling you up, is the last straw that pushes you over the edge right with him, panting loudly as you climax. Your own cock twitches as you come, spraying the carpet below with your seed.[mimpregchance]";
		WaitLineBreak;
		say "     After a while of just holding you from behind and slowly stroking your body while waiting for his knot to go down, Carl says in a gruff voice 'You know this makes you my bitch, don't you?' As you stiffen at the sudden announcement, thoughts racing to come up with a reply, he nibbles on your earlobe and chuckles in a much lighter tone 'Just kidding. I wouldn't do something like that to you.' With a tickling kiss against your neck he adds 'Though I wouldn't mind playing at being top dog with you some more. You feel amazing, doggy style.'";
	else: [neuters]
		say "     Opening up the button of his pants, Carl lets them drop, revealing his already half-hard canine shaft. Taking hold of it and stroking his hand up and down its length, he remarks 'Looks a bit different than a human one, doesn't it?' and lets his fingers wander a bit, teasing the slightly pointy tip and the small bulge at its base that will swell up to a knot. Then his eyes seek out yours as he says 'Why don't you get a little taste?' With the soft push of Carl's hand on your shoulder guiding you, you kneel down in front of him and play your tongue over the underside of his shaft, then take the tip between your lips and start blowing him off. As you go down on him, your nose gets pressed into the dense fur of his crotch, making you inhale his very masculine, musky scent that stokes the fires of your lust ever brighter.";
		say "     After some time of you bobbing on his erect manhood, Carl gently holds your head as he pulls out, then crouches down to give you a deep and hungry kiss. Coming up for air after that he gives you a lust-filled growl and moves forward, pushing you down on your back in a gentle but assertive manner. You find yourself under the male husky, with his muscular arms lightly holding yours to the floor while he passionately makes out with you. While your tongues wrangle with each other, you feel your legs being spread a bit further as his hips move into position, then his hot, hard shaft pokes you in the crotch.";
		WaitLineBreak;
		say "     Carl moans in between kisses and rubs his cock against your featureless pubic area, then says, 'You're so hot - can't wait to fuck you.' After that, he reaches down to take hold of your legs, pulling them up a bit to expose your asshole and get it into the right position. With one hand, he lines up his canine cock with your pucker, then pushes forward, nudging your back door until it yields and the tip of his shaft starts sinking into your body. The two of you moan in unison as more and more of Carl's member pushes into you, your inner walls rubbing against his cock. Then there is a small pause as the slight bulge of his not yet swollen knot presses against you, to be popped in with a lusty grunt from Carl after a bit more pressure. Groaning 'Aah, you feel amazing baby. Such a warm, tight hole...' the transformed soldier grinds his hips against yours, his whole cock now inside you and his furry balls rubbing against your ass.";
		say "     Carl starts to pull back and plunge back in, fucking you with deep thrusts. Having his muscular form on top of you arouses you to no end, his hand-paws still holding down your arms while he pounds your ass and his muzzle dipping down to give you hungry kisses from time to time. Then suddenly, he pulls out, leaving an almost shocking feeling of emptiness inside you that has you give a needy groan for him to continue. Planting a kiss on your mouth, Carl says 'Shh, baby. You'll get more - just... turn around and get on all fours. I wanna do it doggy style.'";
		WaitLineBreak;
		say "     Eager to continue your coupling with the husky soldier, you roll over and get on your hands and knees, immediately feeling the warm, furry shape of Carl behind you and on your back. His arms wrap around you from behind, stroking your chest, and you can feel him kiss your neck, then his hard canine shaft finds your pucker again and thrusts right in. With this new angle, Carl's manhood rubs your sensitive spots even more intensely than before, clearly showing that it was made for this style of fucking. Now pounding into you in a way that just feels right to him, the strong husky really takes out all the stops, mounting you with truly animal-like intensity that just takes your breath away in the sensations it creates.";
		say "     Being his first time fucking someone in this new body, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against you. The knot at the base of his shaft swells up to lock your bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into your insides. Feeling the warm pulse of his cum into your body, filling you up, is the last straw that pushes you over the edge right with him, panting loudly as you climax. A warm feeling of satisfaction begins to flood your whole being, making you twitch and moan in pleasure.[mimpregchance]";
		WaitLineBreak;
		say "     After a while of just holding you from behind and slowly stroking your body while waiting for his knot to go down, Carl says in a gruff voice 'You know this makes you my bitch, don't you?' As you stiffen at the sudden announcement, thoughts racing to come up with a reply, he nibbles on your earlobe and chuckles in a much lighter tone 'Just kidding. I wouldn't do something like that to you.' With a tickling kiss against your neck he adds 'Though I wouldn't mind playing at being top dog with you some more. You're an amazing lay and I love doing you doggy style.'";
	now lastfuck of Carl is turns;

to say CarlSexMenu:
	setmonster "Alpha Husky";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Carl's cock";
	now sortorder entry is 1;
	now description entry is "Give him a blow-job";
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him suck your cock";
		now sortorder entry is 2;
		now description entry is "Get a blow-job";
	[
	if (cocks of player > 0 or cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "69 with Carl";
		now sortorder entry is 3;
		now description entry is "Share oral pleasures with your male husky";
	]
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Let Carl fuck your pussy";
		now sortorder entry is 4;
		now description entry is "Let the husky breed you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Let Carl fuck your ass";
	now sortorder entry is 5;
	now description entry is "Let the husky fill your ass with his seed";
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Carl's ass";
		now sortorder entry is 6;
		now description entry is "Fill the husky's ass with your cock";
	[]
	if ((HP of Eric is 11 or HP of Eric is 13 or HP of Eric is 15) and (CarlEricInteraction > 5 and CarlEricInteraction < 50)):
		choose a blank row in table of fucking options;
		now title entry is "Threesome with Eric and Carl";
		now sortorder entry is 7;
		now description entry is "Have some fun with both of them together";
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
				now sextablerun is 1;
				if nam is "Suck Carl's cock":
					say "[CarlSex1]";
				else if (nam is "Have him suck your cock"):
					say "[CarlSex2]";
				else if (nam is "69 with Carl"):
					say "[CarlSex3]";
				else if (nam is "Let Carl fuck your pussy"):
					say "[CarlSex4]";
				else if (nam is "Let Carl fuck your ass"):
					say "[CarlSex5]";
				else if (nam is "Take Carl's ass"):
					say "[CarlSex6]";
				else if (nam is "Threesome with Eric and Carl"):
					say "[CarlSex7]";
				now lastfuck of Carl is turns;
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the anthro husky, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say CarlSex1: [player sucks him]
	if HP of Carl > 9 and HP of Carl < 30:
		say "     Opening up the button of his pants, you crouch down in front of the transformed soldier and pull them down as you go, revealing his muscular legs and his crotch with an already half-hard canine shaft. He smiles at your eager move and remarks 'So you want a taste of this doggie's bone?' while he lets his fingers wander, teasing the slightly pointy tip and the small bulge at its base that will swell up to a knot. Then Carl demonstratively holds it out for you and says 'Here you go.' Leaning forward a bit, you play your tongue over the underside of his shaft, then take the tip between your lips and start blowing him off. As you go down on him, your nose gets pressed into the dense fur of his crotch, making you inhale his very masculine, musky scent that stokes the fires of your lust ever brighter.";
		say "     As you go along bobbing on his erect manhood, Carl's moans and lustful barks get louder and more urgent, showing his increasing excitement. Some short while later, you feel the base of his shaft swell even more and pull back a bit, watching as it grows into an impressively large and pretty red bulge. The urgent plea 'Keep going, keep going!' from Carl snaps you out of staring at his knot and you instantly jump back into going down on him, giving him the last little push he needed to orgasm. The large husky throws his head back and gives a loud howl while his hands grip your head tightly and hold it tight to his crotch. You can feel his manhood pulse against your tongue as blast after blast of his seed shoots straight down your throat and into your stomach.";
		WaitLineBreak;
		say "     Breathing heavily and still twitching a bit with the last few spurts of cum, Carl pants 'That was amazing. You give great blowjobs, baby.' Then he slowly pulls his now slowly softening shaft out of your mouth and helps you stand up before pulling you into a deep kiss. 'Can't believe how much fun I'm having in this crazy situation,' he adds with a grin, then gets right back to making out with you a moment later.";
	else:
		say "     Opening up the button of his pants, you crouch down in front of the transformed soldier and pull them down as you go, revealing his muscular legs and his crotch with an already half-hard canine shaft. He smiles hopefully at your move and reaches for his manhood, letting his fingers wander, teasing the slightly pointy tip and the small bulge at its base that will swell up to a knot. Leaning forward a bit, you play your tongue over the underside of his shaft, then take the tip between your lips and start blowing him off. As you go down on him, your nose gets pressed into the dense fur of his crotch, making you inhale his very masculine, musky scent that stokes the fires of your lust ever brighter.";
		say "     As you go along bobbing on his erect manhood, Carl's moans and lustful barks get louder and more urgent, showing his increasing excitement. Some short while later, you feel the base of his shaft swell even more and pull back a bit, watching as it grows into an impressively large and pretty red bulge. The urgent plea 'Keep going, Alpha. Please!' from Carl snaps you out of staring at his knot and you instantly jump back into going down on him, giving him the last little push he needed to orgasm. The large husky throws his head back and gives a loud howl while his hands grip your head tightly and hold it tight to his crotch. You can feel his manhood pulse against your tongue as blast after blast of his seed shoots straight down your throat and into your stomach.";
		WaitLineBreak;
		say "     Breathing heavily and still twitching a bit with the last few spurts of cum, Carl pants 'That was amazing. Thank you, Alpha. You're so good to me.'";

to say CarlSex2: [he sucks the player]
	if HP of Carl > 9 and HP of Carl < 30: [normal Carl]
		say "     Pulling Carl close to yourself, you give him a deep kiss while your hands work their way under his shirt, stroking his soft fur and muscular chest. Then you pull the shirt off him in one quick move and get to work on his pants, popping the button and pulling down his zipper. As the handsome soldier's pants drop, you're treated to a full view of his nude husky body and his already half-hard canine shaft. The man proudly stands in front of you in the buff, relishing your looks, a wide grin on his face and his tail wagging excitedly behind him. Even though you're eager to have some fun with him, you take your time as you're playfully pulling off your clothes bit by bit - much to the pleasure of an avidly watching canine giving you salacious looks and doing wolf whistles as you strip. Finally you're both standing in front of each other completely naked, with sexual tension almost crackling in the air between you.";
		say "     As you put a hand on your [cock of player] shaft and stroke it, holding it out demonstratively, Carl openly pants at you and says 'You're giving this doggie a nice, hard bone to play with? Why, thank you!' Then he almost pounces on you, sinking down to his knees and leaning forward to lap at your crotch. His long, wide tongue seeks out your balls first, carefully playing over them and making you gasp at the sensations. Moving on from there, he licks the underside of your cock, then takes the whole of it in his muzzle, careful to keep his teeth away from it.";
		WaitLineBreak;
		say "     Even though you doubt that he had many - if any - sexual experiences with men before coming to this city, Carl is amazingly good at giving head. Maybe he's a natural, or it's a little tweak in his skill-set you've got the nanites to thank for. No matter which it is, the eager canine has you panting and moaning from his oral attention in no time. You use your hands to brush over his head appreciatively as he goes down on you, rubbing behind his ears and stroking his short fur. It doesn't take all that much longer of his expert sucking until you can feel the urge to cum rise in you and shout out a warning that you're about to come. Turning his efforts up another notch, Carl just keeps on sucking and hungrily swallows your load as it blasts into his mouth a moment later. He goes on suckling on your manhood to get the last little spurts while at the same time jerking off his own canine cock in a rapid pace. Not long after, Carl orgasms, adding quite a splatter of cum-stains to the library's carpeted floor.";
		say "     After a moment of catching his breath, the husky soldier looks up at you and smiles, then licks his lips and says 'Hmm - tasty!' He stands up and wraps his arms around you in a tight embrace, then goes on to make out with you for a bit.";
	else: [sub Carl]
		say "     Opening your pants and letting them drop, you pull out your [cock of player] shaft and demonstratively hold it out to the submissive husky. Carl looks to you, then down to your crotch, panting openly at the thought of pleasing his Alpha. Then he quickly comes over, sinking down to his knees and leaning forward to lap at your crotch. His long, wide tongue seeks out your balls first, carefully playing over them and making you gasp at the sensations. Moving on from there, he licks the underside of your cock, then takes the whole of it in his muzzle, careful to keep his teeth away from it. Even though you doubt that he had many - if any - sexual experiences with men before coming to this city, the transformed soldier is amazingly good at giving head. Maybe he's a natural, or it's a little tweak in his skill-set you've got the nanites to thank for. No matter which it is, the eager canine has you panting and moaning from his oral attention in no time. You use your hands to brush over his head appreciatively as he goes down on you, rubbing behind his ears and stroking his short fur.";
		say "     It doesn't take all that much longer of his expert sucking until you can feel the urge to cum rise in you and shout out a warning that you're about to come. Turning his efforts up another notch, Carl just keeps on sucking and hungrily swallows your load as it blasts into his mouth a moment later. He goes on suckling on your manhood to get the last little spurts while at the same time jerking off his own canine cock in a rapid pace. Not long after, Carl orgasms, adding quite a splatter of cum-stains to the library's carpeted floor. After a moment of catching his breath, the husky soldier looks up at you and smiles, then licks his lips and says 'Hmm - thank you, Alpha.'";

to say CarlSex3: [69 with Carl]
	if HP of Carl > 9 and HP of Carl < 30: [normal Carl]
		say "     A";
	else: [sub Carl]
		say "     B";

to say CarlSex4: [player pussy fucked]
	if HP of Carl > 9 and HP of Carl < 30: [normal Carl]
		say "     Pulling Carl close to yourself, you give him a deep kiss while your hands work their way under his shirt, stroking his soft fur and muscular chest. Then you pull the shirt off him in one quick move and get to work on his pants, popping the button and pulling down his zipper. As the handsome soldier's pants drop, you're treated to a full view of his nude husky body and his already half-hard canine shaft. The man proudly stands in front of you in the buff, relishing your looks, a wide grin on his face and his tail wagging excitedly behind him. Even though you're eager to have some fun with him, you take your time as you're playfully pulling off your clothes bit by bit - much to the pleasure of an avidly watching canine giving you salacious looks and doing wolf whistles as you strip. Finally you're both standing in front of each other completely naked, with sexual tension almost crackling in the air between you.";
		WaitLineBreak;
		say "     As he notices how intently you stare at his canine shaft and the part that will swell up to form his knot, Carl grins and says 'I know that look. You want me to bury my bone deep inside you, don't you?' His tail wags excitedly as he reaches down to grab his cock, jerking his hand up and down its length slowly. With a somewhat commanding tone he continues 'Be a good little doggie and get into position - down on all fours with your ass held high.' Eager to be taken by him, you immediately comply, getting down on Carl's mattress over by the window. Moments later, you can feel him behind you, his member hotly poking against your butt and his body warm against your back as he leans over you to pant 'You're so hot - can't wait to fuck you.'";
		say "     With that, he lines up his canine cock with your pussy lips, then pushes forward, nudging them apart as he starts sinking himself into your body. The two of you moan in unison as more and more of Carl's member pushes into you, your inner folds rubbing against his cock. Then there is a small pause as the slight bulge of his not yet swollen knot presses against you, to be popped in with a lusty grunt from Carl after a bit more pressure. Groaning 'Aah, you feel amazing baby. Such a warm, tight hole...' the transformed soldier grinds his hips against yours, his whole cock now inside you and his balls rubbing your crotch.";
		WaitLineBreak;
		say "     Now in a position that just feels 'right' to him in his canine form, the strong husky really takes out all the stops and starts to pound your pussy, mounting you with truly animal-like intensity that just takes your breath away in the sensations it creates. With the wild ride he's giving you, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against you. The knot at the base of his shaft swells up to lock your bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into your womb. Feeling the warm pulse of his cum into your body, filling you up, is the last straw that pushes you over the edge right with him, panting loudly as you climax. Your pussy gets really wet around his cock and femcum starts to drip out of it down onto the sheets[if cocks of player > 0] and your cock sprays a heavy load onto the mattress too[end if].[fimpregchance]";
		WaitLineBreak;
		say "     After a while of just holding you from behind and slowly stroking your body while waiting for his knot to go down, Carl says in a gruff voice 'You know this makes you my bitch, don't you?' The sudden announcement is followed by a chuckle showing that he's only play-acting, and with a tickling kiss against your neck he adds 'Kidding, of course! Though I wouldn't mind playing at being top dog with you some more. You feel amazing, doggy style.'";
	else: [sub Carl]
		say "     Opening your pants and letting them drop, you start rubbing your sex demonstratively in front of the submissive husky. Carl looks to you, then down to your crotch, panting openly at the thought of pleasing his Alpha. Commanding him to strip, you watch him hurriedly taking off his clothes and come to stand before you, where you touch and stroke his naked body appreciatively. Giving his canine shaft a slow stroke, you tell him that you want him to mount and fuck you. Then you get on all fours on his mattress, followed by a very eager transformed soldier, his tail wagging excitedly as he gets into position behind you.";
		say "     Rubbing his hot, hard shaft against your crack for a moment, Carl lines up its tip with your pussy and presses forward, giving a gasped 'Oooh, Alpha!' nudges apart your pussy lips and slides into your tight hole. The two of you moan in unison as more and more of Carl's member pushes into you, your inner folds rubbing against his cock. Then there is a small pause as the slight bulge of his not yet swollen knot presses against you, to be popped in with a lusty grunt from Carl after a bit more pressure. Groaning 'Soo warm, tight...' the transformed soldier grinds his hips against yours, his whole cock now inside you and his furry balls rubbing your crotch.";
		say "     Carl starts to pull back and plunge back in, really getting into fucking you this way very quickly, as doggy style is literally the natural position for his canine body. In fact, he even seems to forget his usually much more submissive behavior and soon starts to really pound into you, taking out all the stops and mounting you with truly animal-like intensity that just takes your breath away with all the sensations it creates. With the wild time he's having, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against you. The knot at the base of his shaft swells up to lock your bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into your womb. Feeling the warm pulse of his cum into your body, filling you up, is the last straw that pushes you over the edge right with him, panting loudly as you climax. Your pussy gets really wet around his cock and femcum starts to drip out of it down onto the sheets[if cocks of player > 0] and your cock sprays a heavy load onto the mattress too[end if].[fimpregchance]";
		WaitLineBreak;
		say "     After a while of just holding you from behind and slowly stroking your body while waiting for his knot to go down, Carl says 'Thank you for letting me fuck you, Alpha. You're the best.'";

to say CarlSex5: [player ass fucked]
	if HP of Carl > 9 and HP of Carl < 30: [normal Carl]
		if cocks of player > 0: [male+herm]
			say "     Pulling Carl close to yourself, you give him a deep kiss while your hands work their way under his shirt, stroking his soft fur and muscular chest. Then you pull the shirt off him in one quick move and get to work on his pants, popping the button and pulling down his zipper. As the handsome soldier's pants drop, you're treated to a full view of his nude husky body and his already half-hard canine shaft. The man proudly stands in front of you in the buff, relishing your looks, a wide grin on his face and his tail wagging excitedly behind him. Even though you're eager to have some fun with him, you take your time as you're playfully pulling off your clothes bit by bit - much to the pleasure of an avidly watching canine giving you salacious looks and doing wolf whistles as you strip. Finally you're both standing in front of each other completely naked, with sexual tension almost crackling in the air between you.";
			WaitLineBreak;
			say "     As he notices how intently you stare at his canine shaft and the part that will swell up to form his knot, Carl grins and says 'I know that look. You want me to bury my bone deep inside you, don't you?' His tail wags excitedly as he reaches down to grab his cock, jerking his hand up and down its length slowly. With a somewhat commanding tone he continues 'Be a good little doggie and get into position - down on all fours with your ass held high.' Eager to be taken by him, you immediately comply, getting down on Carl's mattress over by the window. Moments later, you can feel him behind you, his member hotly poking against your butt and his body warm against your back as he leans over you to pant 'You're so hot - can't wait to fuck you.'";
			say "     With that, he lines up his canine cock with your pucker, then pushes forward, nudging your back door until it yields and the tip of his shaft starts sinking into your body. The two of you moan in unison as more and more of Carl's member pushes into you, your inner walls rubbing against his cock. Then there is a small pause as the slight bulge of his not yet swollen knot presses against you, to be popped in with a lusty grunt from Carl after a bit more pressure. 'Aah, you feel amazing baby. Such a warm, tight hole...' the transformed soldier groans and grinds his hips against you from behind, his whole cock now inside you and his furry balls rubbing against your ass.";
			WaitLineBreak;
			say "     Now in a position that just feels 'right' to him in his canine form, the strong husky really takes out all the stops and starts to pound your ass, mounting you with truly animal-like intensity that just takes your breath away in the sensations it creates. With the wild ride he's giving you, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against you. The knot at the base of his shaft swells up to lock your bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into your insides. Feeling the warm pulse of his cum into your body, filling you up, is the last straw that pushes you over the edge right with him, panting loudly as you climax. Your own cock twitches as you come, spraying your seed over his sheets below.[mimpregchance]";
			WaitLineBreak;
			say "     After a while of just holding you from behind and slowly stroking your body while waiting for his knot to go down, Carl says in a gruff voice 'You know this makes you my bitch, don't you?' The sudden announcement is followed by a chuckle showing that he's only play-acting, and with a tickling kiss against your neck he adds 'Kidding, of course! Though I wouldn't mind playing at being top dog with you some more. You feel amazing, doggy style.'";
		else if cunts of player > 0: [female]
			say "     Pulling Carl close to yourself, you give him a deep kiss while your hands work their way under his shirt, stroking his soft fur and muscular chest. Then you pull the shirt off him in one quick move and get to work on his pants, popping the button and pulling down his zipper. As the handsome soldier's pants drop, you're treated to a full view of his nude husky body and his already half-hard canine shaft. The man proudly stands in front of you in the buff, relishing your looks, a wide grin on his face and his tail wagging excitedly behind him. Even though you're eager to have some fun with him, you take your time as you're playfully pulling off your clothes bit by bit - much to the pleasure of an avidly watching canine giving you salacious looks and doing wolf whistles as you strip. Finally you're both standing in front of each other completely naked, with sexual tension almost crackling in the air between you.";
			WaitLineBreak;
			say "     As he notices how intently you stare at his canine shaft and the part that will swell up to form his knot, Carl grins and says 'I know that look. You want me to bury my bone deep inside you, don't you? Ah, and there's more - my horny bitch wants to take it in the ass this time - I can see it quite clearly.' His tail wags excitedly as he reaches down to grab his cock, jerking his hand up and down its length slowly. With a somewhat commanding tone he continues 'Be a good little doggie and get into position - down on all fours with your ass held high.' Eager to be taken by him, you immediately comply, getting down on Carl's mattress over by the window. Moments later, you can feel him behind you, his member hotly poking against your butt and his body warm against your back as he leans over you to pant 'You're so hot - can't wait to fuck you.'";
			say "     With that, he lines up his canine cock with your pucker, then pushes forward, nudging your back door until it yields and the tip of his shaft starts sinking into your body. The two of you moan in unison as more and more of Carl's member pushes into you, your inner walls rubbing against his cock. Then there is a small pause as the slight bulge of his not yet swollen knot presses against you, to be popped in with a lusty grunt from Carl after a bit more pressure. 'Aah, you feel amazing baby. Such a warm, tight hole...' the transformed soldier groans and grinds his hips against you from behind, his whole cock now inside you and his furry balls rubbing against your ass.";
			WaitLineBreak;
			say "     Now in a position that just feels 'right' to him in his canine form, the strong husky really takes out all the stops and starts to pound your ass, mounting you with truly animal-like intensity that just takes your breath away in the sensations it creates. With the wild ride he's giving you, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against you. The knot at the base of his shaft swells up to lock your bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into your insides. Feeling the warm pulse of his cum into your body, filling you up, is the last straw that pushes you over the edge right with him, panting loudly as you climax. Your pussy twitches as you come, spraying femcum over his sheets below.[mimpregchance]";
			WaitLineBreak;
			say "     After a while of just holding you from behind and slowly stroking your body while waiting for his knot to go down, Carl says in a gruff voice 'You know this makes you my bitch, don't you?' The sudden announcement is followed by a chuckle showing that he's only play-acting, and with a tickling kiss against your neck he adds 'Kidding, of course! Though I wouldn't mind playing at being top dog with you some more. You feel amazing, doggy style.'";
		else: [neuters]
			say "     Pulling Carl close to yourself, you give him a deep kiss while your hands work their way under his shirt, stroking his soft fur and muscular chest. Then you pull the shirt off him in one quick move and get to work on his pants, popping the button and pulling down his zipper. As the handsome soldier's pants drop, you're treated to a full view of his nude husky body and his already half-hard canine shaft. The man proudly stands in front of you in the buff, relishing your looks, a wide grin on his face and his tail wagging excitedly behind him. Even though you're eager to have some fun with him, you take your time as you're playfully pulling off your clothes bit by bit - much to the pleasure of an avidly watching canine giving you salacious looks and doing wolf whistles as you strip. Finally you're both standing in front of each other completely naked, with sexual tension almost crackling in the air between you.";
			WaitLineBreak;
			say "     As he notices how intently you stare at his canine shaft and the part that will swell up to form his knot, Carl grins and says 'I know that look. You want me to bury my bone deep inside you, don't you?' His tail wags excitedly as he reaches down to grab his cock, jerking his hand up and down its length slowly. With a somewhat commanding tone he continues 'Be a good little doggie and get into position - down on all fours with your ass held high.' Eager to be taken by him, you immediately comply, getting down on Carl's mattress over by the window. Moments later, you can feel him behind you, his member hotly poking against your butt and his body warm against your back as he leans over you to pant 'You're so hot - can't wait to fuck you.'";
			say "     With that, he lines up his canine cock with your pucker, then pushes forward, nudging your back door until it yields and the tip of his shaft starts sinking into your body. The two of you moan in unison as more and more of Carl's member pushes into you, your inner walls rubbing against his cock. Then there is a small pause as the slight bulge of his not yet swollen knot presses against you, to be popped in with a lusty grunt from Carl after a bit more pressure. 'Aah, you feel amazing baby. Such a warm, tight hole...' the transformed soldier groans and grinds his hips against you from behind, his whole cock now inside you and his furry balls rubbing against your ass.";
			WaitLineBreak;
			say "     Now in a position that just feels 'right' to him in his canine form, the strong husky really takes out all the stops and starts to pound your ass, mounting you with truly animal-like intensity that just takes your breath away in the sensations it creates. With the wild ride he's giving you, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against you. The knot at the base of his shaft swells up to lock your bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into your insides. Feeling the warm pulse of his cum into your body, filling you up, is the last straw that pushes you over the edge right with him, panting loudly as you climax. A warm feeling of satisfaction begins to flood your whole being, making you twitch and moan in pleasure.[mimpregchance]";
			WaitLineBreak;
			say "     After a while of just holding you from behind and slowly stroking your body while waiting for his knot to go down, Carl says in a gruff voice 'You know this makes you my bitch, don't you?' The sudden announcement is followed by a chuckle showing that he's only play-acting, and with a tickling kiss against your neck he adds 'Kidding, of course! Though I wouldn't mind playing at being top dog with you some more. You feel amazing, doggy style.'";
	else: [sub Carl]
		if cocks of player > 0: [male+herm]
			say "     Opening your pants and letting them drop, you pull out your [cock of player] shaft and demonstratively jerk it in front of the submissive husky. Carl looks to you, then down to your crotch, panting openly at the thought of pleasing his Alpha. Commanding him to strip, you watch him hurriedly taking off his clothes and come to stand before you, where you touch and stroke his naked body appreciatively. Giving his canine shaft a slow stroke, you tell him that you want him to mount and fuck you. Then you get on all fours on his mattress, followed by a very eager transformed soldier, his tail wagging excitedly as he gets into position behind you.";
			say "     Rubbing his hot, hard shaft against your crack for a moment, Carl lines up its tip with your pucker and presses forward, giving a gasped 'Oooh, Alpha!' as he slides into your tight hole. The two of you moan in unison as more and more of Carl's member pushes into you, your inner walls rubbing against his cock. Then there is a small pause as the slight bulge of his not yet swollen knot presses against you, to be popped in with a lusty grunt from Carl after a bit more pressure. Groaning 'Soo warm, tight...' the transformed soldier grinds his hips against yours, his whole cock now inside you and his furry balls rubbing against your ass.";
			say "     Carl starts to pull back and plunge back in, really getting into fucking you this way very quickly, as doggy style is literally the natural position for his canine body. In fact, he even seems to forget his usually more submissive behavior and soon starts to really pound into you, taking out all the stops and mounting you with truly animal-like intensity that just takes your breath away with all the sensations it creates. With the wild time he's having, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against you. The knot at the base of his shaft swells up to lock your bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into your insides. Feeling the warm pulse of his cum into your body, filling you up, is the last straw that pushes you over the edge right with him, panting loudly as you climax. Your own cock twitches as you come, spraying the sheets of the mattress below with your seed.[mimpregchance]";
			WaitLineBreak;
			say "     After a while of just holding you from behind and slowly stroking your body while waiting for his knot to go down, Carl says 'Thank you for letting me fuck you, Alpha. You're the best.'";
		else if cunts of player > 0: [female]
			say "     Opening your pants and letting them drop, you start rubbing your sex demonstratively in front of the submissive husky. Carl looks to you, then down to your crotch, panting openly at the thought of pleasing his Alpha. Commanding him to strip, you watch him hurriedly taking off his clothes and come to stand before you, where you touch and stroke his naked body appreciatively. Giving his canine shaft a slow stroke, you tell him that you want him to mount and fuck you. Then you get on all fours on his mattress, followed by a very eager transformed soldier, his tail wagging excitedly as he gets into position behind you.";
			say "     Rubbing his hot, hard shaft against your crack for a moment, Carl lines up its tip with your pucker and presses forward, giving a gasped 'Oooh, Alpha!' as he slides into your tight hole. The two of you moan in unison as more and more of Carl's member pushes into you, your inner walls rubbing against his cock. Then there is a small pause as the slight bulge of his not yet swollen knot presses against you, to be popped in with a lusty grunt from Carl after a bit more pressure. Groaning 'Soo warm, tight...' the transformed soldier grinds his hips against yours, his whole cock now inside you and his furry balls rubbing against your ass.";
			say "     Carl starts to pull back and plunge back in, really getting into fucking you this way very quickly, as doggy style is literally the natural position for his canine body. In fact, he even seems to forget his usually more submissive behavior and soon starts to really pound into you, taking out all the stops and mounting you with truly animal-like intensity that just takes your breath away with all the sensations it creates. With the wild time he's having, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against you. The knot at the base of his shaft swells up to lock your bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into your insides. Feeling the warm pulse of his cum into your body, filling you up, is the last straw that pushes you over the edge right with him, panting loudly as you climax. Your pussy twitches as you come, spraying femcum over his sheets below.[mimpregchance]";
			WaitLineBreak;
			say "     After a while of just holding you from behind and slowly stroking your body while waiting for his knot to go down, Carl says 'Thank you for letting me fuck you, Alpha. You're the best.'";
		else:
			say "     Opening your pants and letting them drop, you start rubbing your smooth (but nevertheless quite sensitive) crotch demonstratively in front of the submissive husky. Carl looks to you, then down to your crotch, panting openly at the thought of pleasing his Alpha. Commanding him to strip, you watch him hurriedly taking off his clothes and come to stand before you, where you touch and stroke his naked body appreciatively. Giving his canine shaft a slow stroke, you tell him that you want him to mount and fuck you. Then you get on all fours on his mattress, followed by a very eager transformed soldier, his tail wagging excitedly as he gets into position behind you.";
			say "     Rubbing his hot, hard shaft against your crack for a moment, Carl lines up its tip with your pucker and presses forward, giving a gasped 'Oooh, Alpha!' as he slides into your tight hole. The two of you moan in unison as more and more of Carl's member pushes into you, your inner walls rubbing against his cock. Then there is a small pause as the slight bulge of his not yet swollen knot presses against you, to be popped in with a lusty grunt from Carl after a bit more pressure. Groaning 'Soo warm, tight...' the transformed soldier grinds his hips against yours, his whole cock now inside you and his furry balls rubbing against your ass.";
			say "     Carl starts to pull back and plunge back in, really getting into fucking you this way very quickly, as doggy style is literally the natural position for his canine body. In fact, he even seems to forget his usually more submissive behavior and soon starts to really pound into you, taking out all the stops and mounting you with truly animal-like intensity that just takes your breath away with all the sensations it creates. With the wild time he's having, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against you. The knot at the base of his shaft swells up to lock your bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into your insides. Feeling the warm pulse of his cum into your body, filling you up, is the last straw that pushes you over the edge right with him, panting loudly as you climax. Your whole body shudders and twitches as you come and a warm feeling of satisfaction spreads through it.[mimpregchance]";
			WaitLineBreak;
			say "     After a while of just holding you from behind and slowly stroking your body while waiting for his knot to go down, Carl says 'Thank you for letting me fuck you, Alpha. You're the best.'";

to say CarlSex6: [Carl's ass fucked]
	if HP of Carl > 9 and HP of Carl < 30: [normal Carl]
		say "     Pulling Carl close to yourself, you give him a deep kiss while your hands work their way under his shirt, stroking his soft fur and muscular chest. Then you pull the shirt off him in one quick move and get to work on his pants, popping the button and pulling down his zipper. As the handsome soldier's pants drop, you're treated to a full view of his nude husky body and his already half-hard canine shaft. The man proudly stands in front of you in the buff, relishing your looks, a wide grin on his face and his tail wagging excitedly behind him. Even though you're eager to have some fun with him, you take your time as you're playfully pulling off your clothes bit by bit - much to the pleasure of an avidly watching canine giving you salacious looks and doing wolf whistles as you strip. Finally you're both standing in front of each other completely naked, with sexual tension almost crackling in the air between you.";
		WaitLineBreak;
		say "     As you put a hand on your [cock of player] shaft and stroke it, Carl grins at you and says 'I know that look. You want to bury that bone of yours somewhere warm and tight, don't you?' His tail wags excitedly as he turns a bit, showing off by rubbing his firm, furry buttcheek before strolling over to his mattress and getting on it on all fours. You eagerly follow, kneeling down behind him and lining up your cock with his asshole. There is a small sigh of indrawn breath from Carl as you touch his pucker, then that is replaced by pants and moans as your manhood slides in, stretching his inner passage around itself. Taking your time for him to get used to having your invading member inside him, you sink yourself into Carl's ass bit by bit, then lean forward to stroke behind his ears as your balls touch his furry butt.";
		say "     Pulling out almost all the way, then thrusting back in, you fervently fuck the transformed soldier, filling the library with the sounds of your urgent coupling. Most of that is Carl showing how much he's getting off on taking your cock in a very vocal manner, gasping and shouting loudly with each of your thrusts and moving his hips back to meet yours. It's not all that much longer until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he shouts for you to fuck him harder. Then his whole body stiffens as the knot at the base of his shaft swells up and long strings of his cum start splattering over the sheets on his mattress below. You can feel each burst as a jerk of the husky's inner muscles, almost as if someone was jerking you off while you're inside his ass. That added stimulation is the last little bit you need to reach your own climax, and with a groan you unload your fertile seed deep into Carl's warm passage.";
		WaitLineBreak;
		say "     After both of you finish coming and have a moment to come down from the rush of orgasm, Carl pulls off your shaft and turns around to wrap his arms around your chest and make out with you. In between kisses he says 'That was great! Feeling you inside me made me rock-hard. Can't wait for the next time of playing good little doggie again sometime and letting you mount me.'";
	else: [sub Carl]
		say "     Opening your pants and letting them drop, you pull out your [cock of player] shaft and demonstratively jerk it in front of the submissive husky. Carl looks to you, then down to your crotch, panting openly at the thought of pleasing his Alpha. Commanding him to strip, you watch him hurriedly taking off his clothes and come to stand before you, where you touch and stroke his naked body appreciatively. Giving one of his firm furred buttcheeks a squeeze, you tell him to get on all fours on his mattress, which the transformed soldier eagerly does, his tail wagging excitedly as he gets into position butt raised high.";
		say "     Aroused at the submissive display, you quickly get rid of the rest of your own clothes, then kneel behind Carl on his mattress and line up your cock with his asshole. Gripping his furry hips tightly, you pull him against your hard shaft, increasing the pressure slowly until he gives a tiny whimper as your manhood pops into the transformed soldier. Having been a virgin to anal sex not long ago, Carl's hole is delightfully tight, closely gripping your shaft as it slides deeper and deeper into him. When you finally bottom out and your balls touch his cheeks, you have to stop for a moment to not lose it right then and there.";
		WaitLineBreak;
		say "     After taking several deep breaths and cooling down a bit, you start pulling back and thrusting back in, fucking the submissive soldier with slow but deep strokes. He moans loudly as your hard shaft rubs his insides and soon starts to rock back and meets each of your thrusts in an effort to make you go harder and even deeper. Wound up as much as you already were, it doesn't take all that long until fucking the athletic canine drives you over the edge and the need to cum boils up in your balls. With a grunt, you drive your shaft inside him all the way, then stake your claim on Carl being yours with blast after blast of a massive load gushing into him.";
		say "     Telling the transformed soldier how good a dog he was for you while your cock still pulses with spurts of cum pumping into him, you reach around Carl and grab his own raging boner. The canine shaft with its pointy tip and swollen knot rests hotly in your hand as you jerk him off, soon twitching as he comes and his seed sprays over the sheets on the mattress below. Pulling out your shaft from his freshly fucked asshole, you watch a trickle of cum run down from it and soak into Carl's fur, then tell him to expect more action like this in the future. 'Of course - thank you, Alpha,' he replies, smiling up at you obediently.";

to say CarlSex7: [threesome with Eric]
	if HP of Carl > 9 and HP of Carl < 30: [normal Carl]
		say "     Stroking a hand down Carl's side, you slide it around his body to squeeze his firm ass, then whisper into his ear that you want to get it on with him and Eric together. 'A threesome? Mmmh, let me think about that...' the husky says in reply, playfully overacting the need to ponder your idea. Of course, the rapidly wagging tail sticking out the back of his shorts gave his true feelings away the instant you made the offer... so it isn't a big surprise that he ends up giving you a beaming grin and says, 'Deal! Let's go for it!' Eager to get some action, he throws an arm around your shoulders and gets both of you moving on the way downstairs and into the bunker.";
		say "     As it turns out, you don't have that far to go to find Eric - he's in the library, sitting cross-legged on a large sofa with an open book on his lap. Before you can even greet him, Carl has already dashed over and happily barks out, 'Hey Eric!' As the young man raises his head, Carl gently slides the book out from under his hands, setting a bookmark at the open page before putting it aside. Then Carl leans in and whispers something into Eric's ear. The slender redhead's eyes go wide as he listens to his canine friend and a blush spreads over his face as he looks back and forth between Carl and yourself. 'Come on, it'll be fun,' the husky says next and pulls off his clothes, dropping them casually to the floor. Giggling about just how quickly the soldier got buck naked, Eric gets over his initial hesitation in record time and starts stripping himself. A few moments later, during which the anthro husky kneeled down to 'help' Eric pull off his panties, they're both naked and visibly excited.";
		WaitLineBreak;
		say "[EricCarlThreesome Sex Menu]";
	else: [sub Carl]
		say "     Stroking a hand down Carl's side, you slide it around his body to squeeze his firm ass, then look him in the eye and tell him that you want to have a threesome with him and Eric. Carl's tail starts wagging immediately and he pants openly at the thought of pleasing his alpha. 'Thank you,' he adds submissively, then lets himself be led towards the stairs down to the ground floor of the library and the bunker below.";
		say "     As it turns out, you don't have that far to go to find Eric - he's in the library, sitting cross-legged on a large sofa with an open book on his lap. Before you can even greet him, Carl has already dashed over and happily barks out, 'Hey Eric!' As the young man raises his head, Carl gently slides the book out from under his hands, setting a bookmark at the open page before putting it aside. Then Carl leans in and whispers something into Eric's ear. The slender redhead's eyes go wide as he listens to his canine friend and a blush spreads over his face as he looks back and forth between Carl and yourself. 'Come on, it'll be fun,' the husky says next and pulls off his clothes, dropping them casually to the floor. Giggling about just how quickly the soldier got buck naked, Eric gets over his initial hesitation in record time and starts stripping himself. A few moments later, during which the anthro husky kneeled down to 'help' Eric pull off his panties, they're both naked and visibly excited.";
		WaitLineBreak;
		say "[EricCarlThreesome Sex Menu]";

Section 4 - Events

instead of navigating Grey Abbey Library while (HP of Carl > 3 and HP of Carl < 50 and level of Carl is 0 and Carl is in Grey Abbey 2F and Fang is in Grey Abbey Library and HP of Fang > 1 and (lastfuck of Fang - turns) > 12):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: FANG ATTACKS CARL - SEX WALK-IN - HP OF FANG: [HP of Fang], HP OF CARL: [HP of Carl], LEVEL OF CARL: [level of Carl][line break]";
	if HP of Carl > 9 and HP of Carl < 30: [normal Carl]
		if HP of Fang is 2: [Beta Fang - Carl wins]
			say "     Coming into the library, you notice that Fang isn't at his usual spot and as you look around, you just catch sight of the end of his tail as he vanishes up the stairs further back in the building. Curious what's going on, you hurriedly follow the feral wolf to the library's upper level. After rushing up the stairs, you catch sight of Fang's dark shape again - in the moment his he starts to raise his hackles and growl at Carl, the husky soldier you brought here. Standing up from where he was just sorting through his backpack, the transformed soldier turns around and looks at the wolf's aggressive stance. Then he snarls 'So you think I'll just submit and roll over for you because you growl a bit? Though luck, you feral mutt. Scram! I'm nobody's bitch!' and balls his paw-hands to fists.";
			say "     The hostile stares between them continue for a few seconds more, then suddenly the moment breaks and Fang jumps forward with bared teeth, intent on proving that he as a big wolf is dominant to a dog. Though Carl is more than ready for his attack - dodging to the side, the soldier grabs the wolf and gives him a strong push, making the beast run face-first into the library wall not far behind him. A short struggle follows, in which Fang gets whacked several times with a heavy library book, until finally Carl's on top of him, Fang's head held tight under his arm and both hands wrapped around the wolf's muzzle. The wolf tries to get out of the soldier's grip for a moment more, then stops struggling and gives a defeated whine.";
			WaitLineBreak;
			say "     When Carl lets the wolf go and starts to and straightens out his somewhat ripped clothing, Fang starts to limp away with his tail between his legs - only to be stopped by a hand grabbing the scruff of his neck. 'Not so fast, furball! I know how this pack thinking works - you'll just jump me again and again until I show you who's the real boss of you!' With that, Carl grabs Fang's tail, pulling it up as he steps behind the wolf's large shape. Then he starts to undo his pants...";
			say "     [bold type]Do you want to watch Carl fuck Fang?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				LineBreak;
				say "     Unobtrusively making your way closer, you watch the husky soldier drop his pants and kick them over to his mattress, moments later followed by his shirt. Then the muscular anthro strokes his canine shaft to full hardness and steps up behind Fang. Holding the dark-furred wolf's tail up, he rubs his cock against Fang's pucker, then slides inside easily, mounting him like so many did before. Fang whimpers softly but takes his fate readily enough, nudged down a step in the local hierarchy. Having accepted his submissive position, he starts pressing back against Carl's thrusting hips, growling in lustful pleasure at getting fucked hard and deep.";
				say "     Getting off quite a bit on mounting Fang in the doggy style position that just feels 'right' to him in his canine form, the husky soldier really takes out all the stops and pounds the wolf, mounting him with truly animal-like intensity that fills the library with grunts and howls from both of them. With the wild time he's having, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him grunting deeply as he grinds his hips against Fang's butt. The knot at the base of his shaft swells up to lock their bodies together and Carl's canine member starts to spurt blast after blast of his thick load into the wolf, cementing his dominance over him.";
				WaitLineBreak;
				say "     Breathing heavily, Carl rests against Fang's back for a moment, shuddering with the last few shots of cum going into the wolf. Then he says 'There - that's one lesson you will remember.' and pats Fang's head softly. 'And here's another one...' he continues, then reaches around the wolf's body and takes hold of his erect cock. Stroking the throbbing, knotted shaft, he quickly has Fang panting in lust, followed by the wolf's cock spraying his own load all over the library carpet below. '...just because you're under me in the pack doesn't mean I'll be an ass. You've got a nice tight hole on you furball, so I'll tap that again, you can bet on that - but I'll get you off too when I do.' Some minutes later, after stroking the beast's fur a bit, Carl pulls his knot out of Fang and leaves the wolf to pad away.";
				now level of Carl is 1;
			else:
				LineBreak;
				say "     Leaving the two canines to sort out their dominance issues, you walk back down the library stairs, not even looking back as you hear a yowl and rhythmic slapping noises from behind you.";
				now level of Carl is 2;
			now lastfuck of Carl is turns;
			now lastfuck of Fang is turns;
		else if HP of Fang > 2: [Alpha Fang - Fang wins]
			say "     Coming into the library, you notice that Fang isn't at his usual spot and as you look around, you just catch sight of the end of his tail as he vanishes up the stairs further back in the building. Curious what's going on, you hurriedly follow the feral wolf to the library's upper level. After rushing up the stairs, you catch sight of Fang's dark shape again - in the moment his he starts to raise his hackles and growl at Carl, the husky soldier you brought here. Standing up from where he was just sorting through his backpack, the transformed soldier turns around and looks at the wolf's aggressive stance. Then he snarls 'So you think I'll just submit and roll over for you because you growl a bit? Though luck, you feral mutt. Scram! I'm no one's bitch!' and balls his paw-hands to fists.";
			say "     The hostile stares between them continue for a few seconds more, then suddenly the moment breaks and Fang jumps forward with bared teeth, intent on proving that he as a big wolf is dominant to a dog. Though Carl is more than ready for his attack - dodging to the side, the soldier grabs the wolf and gives him a strong push, making the beast run face-first into the library wall not far behind him. A short struggle follows, in which Carl gives Fang a few whacks with a heavy library book, though finally Fang manages to trip him and comes to stand over the husky with his teeth bared. Realizing he's not in a position to continue fighting, Carl ceases resisting and gives all the right signs of canine submission while growling 'You win, feral furball. Let's get this over with.'";
			LineBreak;
			say "     [bold type]Do you want to watch Fang fuck Carl?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				LineBreak;
				say "     Sounds of ripping cloth and growls fill the silence in the aftermath of the dominance struggle, with Fang making short work of Carl's already partly ripped clothing. Then the transformed soldier sullenly takes position on all fours and is mounted by the wolf a second later. Standing over him and carefully taking hold of the scruff of Carl's neck with his teeth, Fang presses the tip of his length against the man's asshole, giving a victorious growl as he thrusts in. Carl gasps as his hole is forced wide open, with the wolf bucking fast and hard against him right from the start. Wanting to break in his new bitch, Fang fucks Carl with unrestrained animalistic vigor, just pounding him as deep as he can.";
				say "     It's not long until Fang's growing arousal makes his knot fill out and he starts to ram his thick bulge against Carl's tight ring. The man struggles with all that's left in him, begging the wolf not to try and force it in. All that gets him is a rumbling growl from Fang and an even more powerful thrust against his hole, making Carl's mouth gape open, speechless and gasping for breath as the wolf uses all his strength to spread him wide open and pop his knot in. He then starts to pound the man's ass with all his strength, the tight hole quickly bringing him to climax as he howls out, filling the husky with his seed.";
				WaitLineBreak;
				say "     Satisfied, now that he's proven his dominance and got his rocks off, Fang pants lightly as he relaxes on top of Carl for a few quiet minutes. He even gently nuzzles the man's back and sides with his muzzle, instinctively realizing that an eclectic pack like this is held together not only with force, but with affection as well. Finally he gives a soft chuff in Carl's ear, then pulls free of him with a wet pop. Sniffing the transformed soldier's freshly fucked butt, he licks up some of his own seed trickling out of it, then pads off, leaving Carl to sag on the floor and clean himself up.";
			else:
				LineBreak;
				say "     Leaving the two canines to sort out their dominance issues, you walk back down the library stairs, not even looking back as you hear a yowl and rhythmic slapping noises from behind you.";
			now level of Carl is 50;
			now lastfuck of Carl is turns;
			now lastfuck of Fang is turns;
	else if HP of Carl > 29 and HP of Carl < 50: [sub Carl]
		say "     Coming into the library, you notice that Fang isn't at his usual spot and as you look around, you just catch sight of the end of his tail as he vanishes up the stairs further back in the building. Curious what's going on, you hurriedly follow the feral wolf to the library's upper level. After rushing up the stairs, you catch sight of Fang's dark shape again - in the moment his he starts to raise his hackles and growl at Carl, the husky soldier you brought here. Standing up from where he was just sorting through his backpack, the transformed soldier turns around and looks at the wolf's aggressive stance. Following his nature, he then immediately starts to show the signs of canine submission, falling down on all fours and making himself smaller and lowering his head before the dominant pack-mate.";
		say "     Giving a self-satisfied chuff at the effortless subjugation of this other male, Fang pads closer and rests his head on the back of Carl's for a moment, then moves on to thoroughly inspect his new bitch. The anthro husky just obediently stays standing there as the dark-furred wolf moves around him, sniffing and poking his muzzle under his arm and between his legs. After a while of this, Fang then proceeds to push the soldier's shirt up a bit with his muzzle and lightly nip at his pants. Realizing that the wolf wants to mount him, Carl gives a submissive whine and pulls off his shirt, throwing it over to his mattress, then starts to undo his pants...";
		LineBreak;
		say "     [bold type]Do you want to watch Fang fuck Carl?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			say "     Unobtrusively making your way closer, you watch the soon fully naked husky soldier ready himself for getting fucked by raising his ass a bit more. Rearing up and sliding on Carl's back, Fang carefully takes hold of the scruff of the anthro husky's neck with his teeth and presses the tip of his length against the man's asshole, giving a satisfied growl as he thrusts in. Carl gasps as his hole is forced wide open, with the wolf bucking fast and hard against him right from the start. Wanting to break in his new bitch, Fang fucks Carl with unrestrained animalistic vigor, just pounding him as deep as he can.";
			say "     It's not long until Fang's growing arousal makes his knot fill out and he starts to ram his thick bulge against Carl's tight ring. Biting his lip at the somewhat painful stretching sensations that come with that, the man readies himself for what will come next. Then there is a rumbling growl from Fang and an even more powerful thrust against his hole, making Carl's mouth gape open, speechless and gasping for breath as the wolf uses all his strength to spread him wide open and pop his knot in. He then starts to pound the man's ass with all his strength, the tight hole quickly bringing him to climax as he howls out, filling the husky with his seed.";
			WaitLineBreak;
			say "     Satisfied now that he's gotten his rocks off, Fang pants lightly as he relaxes on top of Carl for a few quiet minutes. He even gently nuzzles the man's back and sides with his muzzle, instinctively realizing that an eclectic pack like this is held together not only with force, but with affection as well. Finally he gives a soft chuff in Carl's ear, then pulls free of him with a wet pop. Sniffing the transformed soldier's freshly fucked butt, he licks up some of his own seed trickling out of it, then pads off, leaving Carl to sag on the floor and clean himself up.";
			now level of Carl is 51;
		else:
			LineBreak;
			say "     Leaving the two canines to sort out their dominance issues, you walk back down the library stairs, not even looking back as you hear a yowl and rhythmic slapping noises from behind you.";
			now level of Carl is 52;
		now lastfuck of Carl is turns;
		now lastfuck of Fang is turns;

instead of navigating Grey Abbey Library while (HP of Carl > 3 and HP of Carl < 50 and (level of Carl is 1 or level of Carl is 2) and Carl is in Grey Abbey 2F and Fang is in Grey Abbey Library and HP of Fang is 2 and (lastfuck of Carl - turns) > 12 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: NORM CARL FUCKS BETA FANG - SEX WALK-IN - HP OF FANG: [HP of Fang], HP OF CARL: [HP of Carl], LEVEL OF CARL: [level of Carl][line break]";
	if level of Carl is 1:
		say "     Coming into the library, you walk in on Carl - who's just about to have some fun with your pet wolf Fang. The transformed soldier is naked and fully erect, already dripping precum from the pointy tip of his canine shaft. 'Hope you're ready to get fucked, wolfie - because I'm gonna pound your ass now,' Carl says with a chuckle, then steps up close to Fang's rear end and kneels down. Holding the dark-furred wolf's tail up, he rubs his cock against Fang's pucker, then slides inside easily, mounting him like so many did before. Fang whimpers softly but takes his fate readily enough, bowing to a higher ranked male's privilege over himself. Having accepted his submissive position, he starts pressing back against Carl's thrusting hips, growling in lustful pleasure at getting fucked hard and deep.";
		say "     Getting off quite a bit on mounting Fang in the doggy style position that just feels 'right' to him in his canine form, the husky soldier really takes out all the stops and pounds the wolf, mounting him with truly animal-like intensity that fills the library with grunts and howls from both of them. With the wild time he's having, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him grunting deeply as he grinds his hips against Fang's butt. The knot at the base of his shaft swells up to lock their bodies together and Carl's canine member starts to spurt blast after blast of his thick load into the wolf, cementing his dominance over him.";
		WaitLineBreak;
		say "     Breathing heavily, Carl rests against Fang's back for a moment, shuddering with the last few shots of cum going into the wolf. Then he says 'That's a good wolf - you really have an awesome ass on you, Fang.' and pats Fang's head softly. 'Let's reward you for being such an obedient puppy...' he continues, then reaches around the wolf's body and takes hold of his erect cock. Stroking the throbbing, knotted shaft, Carl slowly jerks Fang off and keeps him hard and panting in lust until his own knot softens enough to be pulled out of the wolf's ass with a wet slurp. Patting Fang's back, he then orders your pet to lie down. After rolling the wolf over on his back, Carl leans over and slides his muzzle over Fang's shaft, going down on his feral playmate.";
		say "     With the husky soldier bobbing up and down on Fang's cock and also starting to finger the dark-furred wolf's freshly bred asshole, it doesn't take long at all until he drives your pet over the edge. Giving a lust-fulled howl, Fang shudders and twitches as his cock sprays a big load right into Carl's mouth, to be eagerly swallowed by the anthro husky. After waiting for the wolf to finish coming and milking the last drops out of him, Carl gives Fang an affectionate belly-rub, then stands and goes to pick up his clothes.";
		now lastfuck of Carl is turns;
		now lastfuck of Fang is turns;
	else if level of Carl is 2:
		say "     Coming into the library, you walk in on Carl - kneeling behind Fang's rear end and with one hand on the wolf's hard cock. Judging from the way his crotch is pressed against your pet wolf's ass, the transformed soldier fucked the feral wolf and knotted him. A puddle of cum on the ground under Fang shows that he returned the favor afterwards, jerking Fang off. They stay in that position for about a minute more, then Carl pulls out of Fang's cum-filled ass with a wet slurp and pats him on the head. 'That's a good wolf - you really have an awesome ass on you, Fang.' With that, the husky collects his clothes and leaves to freshen up.";
		now lastfuck of Carl is turns;
		now lastfuck of Fang is turns;

instead of navigating Grey Abbey Library while (HP of Carl > 3 and HP of Carl < 50 and (level of Carl is 51 or level of Carl is 52) and Carl is in Grey Abbey 2F and Fang is in Grey Abbey Library and (lastfuck of Fang - turns) > 12 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: FANG FUCKS SUB CARL - SEX WALK-IN - HP OF FANG: [HP of Fang], HP OF CARL: [HP of Carl], LEVEL OF CARL: [level of Carl][line break]";
	if level of Carl is 1:
		say "     Coming into the library, you notice that Fang isn't at his usual spot. As you look around for him and listen, you hear grunts and low growls coming from the upper floor of the building. Already suspecting what might be happening, you quickly make your way up the stairs and soon come into view of Carl's mattress, currently occupied by the husky soldier, naked and on all fours, with Fang standing right behind him. Unobtrusively making your way closer, you watch Carl ready himself for getting fucked by raising his ass a bit more and bending his tail to the side. Rearing up and sliding on Carl's back, Fang carefully takes hold of the scruff of the anthro husky's neck with his teeth and presses the tip of his length against the man's asshole, giving a satisfied growl as he thrusts in. Carl gasps as his hole is forced wide open, with the wolf bucking fast and hard against him right from the start. Wanting to really give it to his male bitch, Fang fucks Carl with unrestrained animalistic vigor, just pounding him as deep as he can.";
		say "     It's not long until Fang's growing arousal makes his knot fill out and he starts to ram his thick bulge against Carl's tight ring. Biting his lip at the somewhat painful stretching sensations that come with that, the man readies himself for what will come next. Then there is a rumbling growl from Fang and an even more powerful thrust against his hole, making Carl's mouth gape open, speechless and gasping for breath as the wolf uses all his strength to spread him wide open and pop his knot in. He then starts to pound the man's ass with all his strength, the tight hole quickly bringing him to climax as he howls out, filling the husky with his seed.";
		WaitLineBreak;
		say "     Satisfied now that he's gotten his rocks off, Fang pants lightly as he relaxes on top of Carl for a few quiet minutes. He even gently nuzzles the man's back and sides with his muzzle, instinctively realizing that an eclectic pack like this is held together not only with force, but with affection as well. Finally he gives a soft chuff in Carl's ear, then pulls free of him with a wet pop. Sniffing the transformed soldier's freshly fucked butt, he licks up some of his own seed trickling out of it, then pads off, leaving Carl to sag on the floor and clean himself up.";
		now lastfuck of Carl is turns;
		now lastfuck of Fang is turns;
	else if level of Carl is 2:
		say "     Coming into the library, you notice that Fang isn't at his usual spot. As you look around for him and listen, you hear grunts and low growls coming from the upper floor of the building. You've got a good suspicion what might be happening up there, which is confirmed a moment later when you recognize Carl and Fang as the source of the noises. Leaving Fang to enjoy the submissive soldier's ass in peace, you turn your attention to other things.";
		now lastfuck of Carl is turns;
		now lastfuck of Fang is turns;

instead of navigating Grey Abbey Library while (HP of Carl > 3 and HP of Carl < 50 and level of Carl is 50 and Carl is in Grey Abbey 2F and Fang is in Grey Abbey Library and HP of Fang > 2 and (lastfuck of Fang - turns) > 12 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: ALPHA FANG MOUNTS NORM CARL - SEX WALK-IN - HP OF FANG: [HP of Fang], HP OF CARL: [HP of Carl], LEVEL OF CARL: [level of Carl][line break]";
	say "     Coming into the library, you notice Carl crouched down beside one of the large bookshelves, browsing and pulling this or that book to check it out. Unseen by the husky soldier, your Alpha wolf Fang is just trotting up to him from behind, the erect canine cock dangling between his legs making clear what he has in mind. Taking up position in a proudly dominant stance close to the Carl, Fang chuffs at him, attracting the man's attention. As he looks back and sees the wolf expectantly stand there, Carl groans 'Oh, not again. Stay away from me, you stupid mutt!' Then he tries to get up - but Fang isn't having any of that. He pounces on the husky with a growl, bowling him right over and sending the books Carl was holding flying. Finding the alpha wolf standing over him a second later, teeth bared and a low growl in his throat, the husky soldier can't help but give in and starts showing the right signs of canine submission. As Fang gives a satisfied huff, Carl grunts 'Okay okay - you win, feral furball. Let's get this over with already.'";
	LineBreak;
	say "     Do you want to watch Fang fuck Carl? ";
	if player consents:
		LineBreak;
		say "     Nipping lightly at him to push Carl to hurry up, Fang waits behind the soldier as the man undoes his pants, sliding them down to bare his ass to him. Then the transformed soldier sullenly takes position on all fours and is mounted by the wolf a second later. Standing over him and carefully taking hold of the scruff of Carl's neck with his teeth, Fang presses the tip of his length against the husky's asshole, giving a victorious growl as he thrusts in. Carl gasps as his hole is forced wide open, with the wolf bucking fast and hard against him right from the start. Wanting to remind him that he's the powerful wolf's bitch, Fang fucks Carl with unrestrained animalistic vigor, just pounding him as deep as he can.";
		say "     It's not long until Fang's growing arousal makes his knot fill out and he starts to ram his thick bulge against Carl's tight ring. The man struggles with all that's left in him, begging the wolf not to try and force it in. All that gets him is a rumbling growl from Fang and an even more powerful thrust against his hole, making Carl's mouth gape open, speechless and gasping for breath as the wolf uses all his strength to spread him wide open and pop his knot in. He then starts to pound the man's ass with all his strength, the tight hole quickly bringing him to climax as he howls out, filling the husky with his seed.";
		WaitLineBreak;
		say "     Satisfied, now that he's proven his dominance and got his rocks off, Fang pants lightly as he relaxes on top of Carl for a few quiet minutes. He even gently nuzzles the man's back and sides with his muzzle, instinctively realizing that an eclectic pack like this is held together not only with force, but with affection as well. Finally he gives a soft chuff in Carl's ear, then pulls free of him with a wet pop. Sniffing the transformed soldier's freshly fucked butt, he licks up some of his own seed trickling out of it, then pads off, leaving Carl to sag on the floor and clean himself up.";
	else:
		LineBreak;
		say "     Leaving the two canines to sort out their dominance issues, you walk to another part of the library and don't look back as you hear a yowl and rhythmic slapping noises coming from behind you.";
	now lastfuck of Carl is turns;
	now lastfuck of Fang is turns;

instead of navigating Grey Abbey Library while (HP of Carl > 3 and HP of Carl < 50 and libido of Carl is 0 and Carl is in Grey Abbey 2F and Helen is in Grey Abbey Library and a random chance of 1 in 4 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: CARL & HELEN - SEX WALK-IN - HP OF CARL: [HP of Carl], LIBIDO OF CARL: [libido of Carl][line break]";
	if HP of Carl > 9 and HP of Carl < 30: [normal Carl]
		say "     Coming into the library, you notice Carl standing at the foot of the stairs leading up, with Helen circling and sniffing him. The husky soldier waves to you and asks 'What kind of dog did you say she originally was? Because she certainly seems very friendly and... interested in my furry self.' Walking over to them, you tell the transformed soldier that Helen once was a German Shepherd. As she hears your voice, the human dog stops sniffing Carl's crotch and almost pounces on you, eagerly greeting her master and[if lust of Helen >= 4 and a random chance of 2 in 5 succeeds] saying 'Carl nice' with a cheeky grin[else] giving a few happy yips and barks, looking from you to Carl[end if]. Eyes glued to Helen's shapely and naked form, especially with the unobstructed view of her slightly swollen pussy she's giving him right now, Carl suddenly feels the urgent need to adjust the growing bulge in his pants. Visibly swallowing, he then looks up at you and gives a hopeful wag of his tail. 'Your... doggie really has some very nice curves on her. Any chance I could have some fun with Helen? She certainly seems willing enough.'";
		LineBreak;
		say "     [bold type]Allow Carl spend some time with Helen?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			say "     [bold type]Do you want to watch?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				LineBreak;
				say "     Stroking Helen's head, you calmly tell her that she should go with Carl for now and obey him. As the naked woman moves over to the husky soldier and starts to sniff and nuzzle his crotch again, he gives you his thanks and leads Helen up the stairs, closely followed by yourself. Soon, Carl has Helen sitting next to him on his mattress near the windows. She smiles at him and yips happily as the soldier reaches out to gently touch her, caressing her soft skin with a paw-hand before cupping Helen's well-rounded breasts. Leaning forward, Carl then lifts her head a finger under her chin and kisses her on the lips... which immediately devolves into her licking his muzzle and affectionately rubbing her head against his furry cheeks.";
				say "     After some more playful touching and nuzzling with Helen, Carl sits back and pulls his shirt off, then starts to undo his zipper. Your human dog watches him intently as he does so, yipping eagerly as Carl pushes his pants down and his erect cock comes into view[if lust of Helen >= 4 and a random chance of 2 in 5 succeeds]. Finding the right words after a moment of concentration, Helen even asks 'Carl sex?' [else]. Giving the soldier a questioning bark [end if], to which he answers 'Oh yeah - I'm gonna fuck you good, girl.' Clearly understanding what he was saying, Helen immediately takes position on all fours, legs spread slightly as she prepares herself to be mounted.";
				WaitLineBreak;
				say "     The soon fully naked Carl reaches over to touch Helen, letting his hands stray deeper and under her [if lust of Helen >= 7]tattooed [end if]body, cupping her shapely breasts and fondling them some more before moving on to her moist pussy. Helen gives a pleased yip, dripping female juices over his fingers as he spreads her nether lips. Bringing his hand to his muzzle, Carl licks it clean, then pants 'You're so hot, Helen!' and gets into position on his knees behind her. As Carl's hard, canine shaft touches the human's swollen pussy lips for the first time, his animal instincts kick in with a vengeance and the husky drives his cock into her in one deep thrust. Moaning loudly at the tightly gripping feel of her pussy, he immediately starts fucking her in the typical 'doggie-style' position, with Helen panting and yipping in lust as he slides in and out[if lust of Helen >= 4]. 'Feels nice,' she moans, pressing her rear back into Carl's thrusts[end if]. She obviously likes getting mounted by the dog-morph a lot, with her body producing copious amounts of femcum to lube their coupling.";
				say "     Carl runs his paw-hands over Helen's sexy body, caressing her lovely skin[if lust of Helen >= 7] and running his fingers along her collar tattoo[end if] as he leans over her. This draws added moans and yips of pleasure from the human dog and she pushes herself back into Carl's thrusts, her pussy squeezing along his shaft as he fucks her like a dog. The soldier plays with her breasts and fingers her clit while fucking Helen, whispering in her ear what a good girl she is. As he continues thrusting into Helen in a position that just feels 'right' to him in his canine form, the strong husky soon really takes out all the stops and starts to pound her pussy hard, mounting the young woman with truly animal-like intensity that has her panting nonstop.";
				WaitLineBreak;
				say "     With the wild ride he's giving Helen, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against her naked body. The knot at the base of his shaft swells up to lock their bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into Helen's womb. Feeling the warm pulse of his cum into her body, filling her up, seems to have been the last straw for Helen herself, as she orgasms just moments later, panting loudly and yipping in lust as she squirts femcum all over the sheets on Carl's mattress.";
				say "     After a while of just holding Helen from behind and slowly stroking her body while waiting for his knot to go down, Carl says 'You're an amazing, sexy bitch, Helen. I hope you're ready to be fucked all the time, because I'm certainly gonna use every chance I get to do you...'";
			else:
				LineBreak;
				say "     Stroking Helen's head, you calmly tell her that she should go with Carl for now and obey him. As the naked woman moves over to the husky soldier and starts to sniff and nuzzle his crotch again, he gives you his thanks, then leads Helen up the stairs. Judging from the moans and yips starting to echo down to your ears not too long after, they're having quite a bit of fun with each other.";
			if thirst of Helen is 0: [not pregnant]
				now thirst of Helen is 1; [pregnant]
				now libido of Helen is 6; [...by Carl]
				now HelenPregnant is 1; [pregnancy timer]
			now libido of Carl is 1;
		else:
			LineBreak;
			say "     As you silently shake your head, Carl's tail and ears dip a bit in disappointment, then he gives a shrug and says 'Oh well, I just had to ask. She's certainly a pretty sweet pet to have and I see why you don't want to share.' With that, he gives Helen an affectionate pat on the head and walks back up the stairs.";
			now libido of Carl is 100;
	else if HP of Carl > 29 and HP of Carl < 50: [sub Carl]
		say "     Coming into the library, you notice Carl standing at the foot of the stairs leading up, with Helen circling and sniffing him. The husky soldier waves to you and lowers his head submissively as he sees you looking. 'Alpha,' he greets you, then asks, 'What kind of dog did you say Helen originally was? Because she certainly seems very friendly and... interested in my furry self.' Walking over to them, you tell the transformed soldier that Helen once was a German Shepherd. As she hears your voice, the human dog stops sniffing Carl's crotch and almost pounces on you, eagerly greeting her master and[if lust of Helen >= 4 and a random chance of 2 in 5 succeeds] saying 'Carl nice' with a cheeky grin[else] giving a few happy yips and barks, looking from you to Carl[end if]. Eyes glued to Helen's shapely and naked form, especially with the unobstructed view of her slightly swollen pussy she's giving him right now, Carl suddenly feels the urgent need to adjust the growing bulge in his pants. Visibly swallowing, he then looks up at you and gives a hopeful wag of his tail. 'May I... have some fun with your bitch too, alpha?', comes his question a moment later, respectfully delivered with a lowered head.";
		LineBreak;
		say "     [bold type]Allow Carl spend some time with Helen?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			say "     [bold type]Do you want to watch?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				LineBreak;
				say "     Stroking Helen's head, you calmly tell her that she should go with Carl for now and obey him. As the naked woman moves over to the husky soldier and starts to sniff and nuzzle his crotch again, he gives you exuberant thanks and leads Helen up the stairs, closely followed by yourself. Soon, Carl has Helen sitting next to him on his mattress near the windows. She smiles at him and yips happily as the soldier reaches out to gently touch her, caressing her soft skin with a paw-hand before cupping Helen's well-rounded breasts. Leaning forward, Carl then lifts her head a finger under her chin and kisses her on the lips... which immediately devolves into her licking his muzzle and affectionately rubbing her head against his furry cheeks.";
				say "     After some more playful touching and nuzzling with Helen, Carl sits back and pulls his shirt off, then starts to undo his zipper. Your human dog watches him intently as he does so, yipping eagerly as Carl pushes his pants down and his erect cock comes into view[if lust of Helen >= 4 and a random chance of 2 in 5 succeeds]. Finding the right words after a moment of concentration, Helen even asks 'Carl sex?' [else]. Giving the soldier a questioning bark [end if], to which he answers 'Oh yeah - our alpha allowed me to fuck you good, girl.' Clearly understanding what he was saying, Helen immediately takes position on all fours, legs spread slightly as she prepares herself to be mounted.";
				WaitLineBreak;
				say "     The soon fully naked Carl reaches over to touch Helen, letting his hands stray deeper and under her [if lust of Helen >= 7]tattooed [end if]body, cupping her shapely breasts and fondling them some more before moving on to her moist pussy. Helen gives a pleased yip, dripping female juices over his fingers as he spreads her nether lips. Bringing his hand to his muzzle, Carl licks it clean, then pants 'You're so hot, Helen!' and gets into position on his knees behind her. As Carl's hard, canine shaft touches the human's swollen pussy lips for the first time, his animal instincts kick in with a vengeance and the husky drives his cock into her in one deep thrust. Moaning loudly at the tightly gripping feel of her pussy, he immediately starts fucking her in the typical 'doggie-style' position, with Helen panting and yipping in lust as he slides in and out[if lust of Helen >= 4]. 'Feels nice,' she moans, pressing her rear back into Carl's thrusts[end if]. She obviously likes getting mounted by the dog-morph a lot, with her body producing copious amounts of femcum to lube their coupling.";
				say "     Carl runs his paw-hands over Helen's sexy body, caressing her lovely skin[if lust of Helen >= 7] and running his fingers along her collar tattoo[end if] as he leans over her. This draws added moans and yips of pleasure from the human dog and she pushes herself back into Carl's thrusts, her pussy squeezing along his shaft as he fucks her like a dog. The soldier plays with her breasts and fingers her clit while fucking Helen, whispering in her ear what a good girl she is. As he continues thrusting into Helen in a position that just feels 'right' to him in his canine form, the strong husky soon really takes out all the stops and starts to pound her pussy hard, mounting the young woman with truly animal-like intensity that has her panting nonstop.";
				WaitLineBreak;
				say "     With the wild ride he's giving Helen, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against her naked body. The knot at the base of his shaft swells up to lock their bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into Helen's womb. Feeling the warm pulse of his cum into her body, filling her up, seems to have been the last straw for Helen herself, as she orgasms just moments later, panting loudly and yipping in lust as she squirts femcum all over the sheets on Carl's mattress.";
				say "     After a while of just holding Helen from behind and slowly stroking her body while waiting for his knot to go down, Carl says 'You're an amazing, sexy bitch, Helen. As long as the alpha allows it, I'm gonna use every chance I get to do you...'";
			else:
				LineBreak;
				say "     Stroking Helen's head, you calmly tell her that she should go with Carl for now and obey him. As the naked woman moves over to the husky soldier and starts to sniff and nuzzle his crotch again, he gives you exuberant thanks, then leads Helen up the stairs. Judging from the moans and yips starting to echo down to your ears not too long after, they're having quite a bit of fun with each other.";
			if thirst of Helen is 0: [not pregnant]
				now thirst of Helen is 1; [pregnant]
				now libido of Helen is 6; [...by Carl]
				now HelenPregnant is 1; [pregnancy timer]
			now libido of Carl is 1;
		else:
			LineBreak;
			LineBreak;
			say "     As you silently shake your head, Carl's tail and ears dip a bit in disappointment. Still, you're his alpha, so he obediently lets the matter drop and goes back to his lookout-spot up on the upper library level.";
			now libido of Carl is 100;

instead of navigating Grey Abbey Library while (HP of Carl > 3 and HP of Carl < 50 and Dexterity of Carl is 0 and Carl is in Grey Abbey 2F and Xerxes is in Grey Abbey Library and a random chance of 1 in 4 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: CARL & XERXES - SEX WALK-IN - HP OF CARL: [HP of Carl], DEXTERITY OF CARL: [dexterity of Carl][line break]";
	if HP of Carl > 9 and HP of Carl < 30: [normal Carl]
		say "     Coming into the library, you notice Carl standing at the foot of the stairs leading up, with Xerxes circling and sniffing him. The husky soldier waves to you and asks 'What kind of dog did you say he originally was? Because he certainly seems very friendly and... interested in my furry self.' Walking over to them, you tell the transformed soldier that Xerxes once was a German Shepherd. As he hears your voice, the human dog stops sniffing Carl's crotch and almost pounces on you, eagerly greeting his master and[if lust of Xerxes >= 4 and a random chance of 2 in 5 succeeds] saying 'Carl nice' with a cheeky grin[else] giving a few happy yips and barks, looking from you to Carl[end if]. Eyes glued to Xerxes['] muscular and naked form, especially with the unobstructed view of his asshole and dangling cock he's giving him right now, Carl suddenly feels the urgent need to adjust the growing bulge in his pants. Visibly swallowing, he then looks up at you and gives a hopeful wag of his tail. 'Your... doggie really has a very nice body. Any chance I could have some fun with Xerxes? He certainly seems willing enough.'";
		LineBreak;
		say "     [bold type]Allow Carl spend some time with Xerxes?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			say "     [bold type]Do you want to watch?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				LineBreak;
				say "     Stroking Xerxes['] head, you calmly tell him that he should go with Carl for now and obey him. As the naked man moves over to the husky soldier and starts to sniff and nuzzle his crotch again, Carl gives you his thanks and leads Xerxes up the stairs, closely followed by yourself. Soon, Carl has Xerxes sitting next to him on his mattress near the windows. The human dog smiles at him and yips happily as the soldier reaches out to gently touch him, feeling his soft skin with a paw-hand and caressing his muscled chest. Leaning forward, Carl then lifts his head a finger under his chin and kisses Xerxes on the lips... which immediately devolves into the human dog licking his muzzle and affectionately rubbing his head against Carl's furry cheeks.";
				say "     After some more playful touching and nuzzling with Xerxes, Carl sits back and pulls his shirt off, then starts to undo his zipper. Your human dog watches him intently as he does so, yipping eagerly as Carl pushes his pants down and his erect cock comes into view[if lust of Xerxes >= 4 and a random chance of 2 in 5 succeeds]. Finding the right words after a moment of concentration, Xerxes even asks 'Carl sex?' [else]. Giving the soldier a questioning bark [end if], to which he answers 'Oh yeah - I'm gonna fuck you good, boy.' Clearly understanding what he was saying, Xerxes immediately takes position on all fours, ass raised and legs spread slightly as he prepares himself to be mounted.";
				WaitLineBreak;
				say "     The soon fully naked Carl reaches over to touch Xerxes, letting his hands stray deeper and under his [if lust of Xerxes >= 7]tattooed [end if]body, feeling his muscles and playing with Xerxes nipples a moment before moving on to his dangling, erect cock. Xerxes gives a pleased yip as the soldier jerks his cock a few times and fondles his balls. Before long, beads of clear pre-cum start to form at the tip of Xerxes cock, to be wiped up by Carl's fingers. Bringing his hand to his muzzle, Carl licks it clean, then pants 'I like your taste, Xerxes. Such a hot guy!' and gets into position on his knees behind him. Quickly getting his cock wet with a bit of spit, the soldier then aims for Xerxes pucker and pushes his hips forward. As Carl's hard, canine shaft touches the human's welcoming hole for the first time, his animal instincts kick in with a vengeance and the husky drives his cock into him in one deep thrust. Moaning loudly at the tightly gripping feel of Xerxes asshole around his manhood, he immediately starts fucking the young man in the typical 'doggie-style' position, with Xerxes panting and yipping in lust as he slides in and out[if lust of Xerxes >= 4]. 'Feels nice,' he moans, pressing his rear back into Carl's thrusts[end if]. He obviously likes getting mounted by the dog-morph a lot, with his body producing copious amounts of precum that drip onto the floor to form a small puddle.";
				say "     Carl runs his paw-hands over Xerxes['] sexy body, caressing his lovely skin[if lust of Xerxes >= 7] and running his fingers along his collar tattoo[end if] as he leans over him. This draws added moans and yips of pleasure from the human dog and he pushes himself back into Carl's thrusts, his boy-pussy squeezing Carl's shaft tightly as he fucks Xerxes like a dog. The soldier plays with his nipples and gives Xerxes a reacharound while fucking him, whispering in his ear what a good boy he is. As he continues thrusting into Xerxes in a position that just feels 'right' to him in his canine form, the strong husky soon really takes out all the stops and starts to pound his ass hard, mounting the young man with truly animal-like intensity that has him panting nonstop.";
				WaitLineBreak;
				say "     With the wild ride he's giving Xerxes, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against the human's naked body. The knot at the base of his shaft swells up to lock their bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into Xerxes['] insides. Feeling the warm pulse of cum filling him up seems to have been the last straw for Xerxes himself, as he orgasms just moments later, panting loudly and yipping in lust as he blows a big load all over the sheets on Carl's mattress.";
				say "     After a while of just holding Xerxes from behind and slowly stroking his body while waiting for his knot to go down, Carl says 'You're an amazing, sexy guy, Xerxes. I hope you're ready to be fucked all the time, because I'm certainly gonna use every chance I get to do you...'";
			else:
				LineBreak;
				say "     Stroking Xerxes['] head, you calmly tell him that he should go with Carl for now and obey him. As the naked man moves over to the husky soldier and starts to sniff and nuzzle his crotch again, Carl gives you his thanks, then leads Xerxes up the stairs. Judging from the moans and yips starting to echo down to your ears not too long after, they're having quite a bit of fun with each other.";
			now Dexterity of Carl is 1;
		else:
			LineBreak;
			say "     As you silently shake your head, Carl's tail and ears dip a bit in disappointment, then he gives a shrug and says 'Oh well, I just had to ask. He's certainly a pretty sweet pet to have and I see why you don't want to share.' With that, he gives Xerxes an affectionate pat on the head and walks back up the stairs.";
			now Dexterity of Carl is 100;
	else if HP of Carl > 29 and HP of Carl < 50: [sub Carl]
		say "     Coming into the library, you notice Carl standing at the foot of the stairs leading up, with Xerxes circling and sniffing him. The husky soldier waves to you and lowers his head submissively as he sees you looking. 'Alpha,' he greets you, then asks, 'What kind of dog did you say Xerxes originally was? Because he certainly seems very friendly and... interested in my furry self.' Walking over to them, you tell the transformed soldier that Xerxes once was a German Shepherd. As he hears your voice, the human dog stops sniffing Carl's crotch and almost pounces on you, eagerly greeting his master and[if lust of Xerxes >= 4 and a random chance of 2 in 5 succeeds] saying 'Carl nice' with a cheeky grin[else] giving a few happy yips and barks, looking from you to Carl[end if]. Eyes glued to Xerxes['] muscular and naked form, especially with the unobstructed view of his asshole and dangling cock he's giving him right now, Carl suddenly feels the urgent need to adjust the growing bulge in his pants. Visibly swallowing, he then looks up at you and gives a hopeful wag of his tail. 'May I... have some fun with your pet too, alpha?', comes his question a moment later, respectfully delivered with a lowered head.";
		LineBreak;
		say "     [bold type]Allow Carl spend some time with Xerxes?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			say "     [bold type]Do you want to watch?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				LineBreak;
				say "     Stroking Xerxes['] head, you calmly tell him that he should go with Carl for now and obey him. As the naked man moves over to the husky soldier and starts to sniff and nuzzle his crotch again, Carl gives you his thanks and leads Xerxes up the stairs, closely followed by yourself. Soon, Carl has Xerxes sitting next to him on his mattress near the windows. The human dog smiles at him and yips happily as the soldier reaches out to gently touch him, feeling his soft skin with a paw-hand and caressing his muscled chest. Leaning forward, Carl then lifts his head a finger under his chin and kisses Xerxes on the lips... which immediately devolves into the human dog licking his muzzle and affectionately rubbing his head against Carl's furry cheeks.";
				say "     After some more playful touching and nuzzling with Xerxes, Carl sits back and pulls his shirt off, then starts to undo his zipper. Your human dog watches him intently as he does so, yipping eagerly as Carl pushes his pants down and his erect cock comes into view[if lust of Xerxes >= 4 and a random chance of 2 in 5 succeeds]. Finding the right words after a moment of concentration, Xerxes even asks 'Carl sex?' [else]. Giving the soldier a questioning bark [end if], to which he answers 'Oh yeah - I'm gonna fuck you good, boy.' Clearly understanding what he was saying, Xerxes immediately takes position on all fours, ass raised and legs spread slightly as he prepares himself to be mounted.";
				WaitLineBreak;
				say "     The soon fully naked Carl reaches over to touch Xerxes, letting his hands stray deeper and under his [if lust of Xerxes >= 7]tattooed [end if]body, feeling his muscles and playing with Xerxes nipples a moment before moving on to his dangling, erect cock. Xerxes gives a pleased yip as the soldier jerks his cock a few times and fondles his balls. Before long, beads of clear pre-cum start to form at the tip of Xerxes, to be wiped up by Carl's fingers. Bringing his hand to his muzzle, Carl licks it clean, then pants 'I like your taste, Xerxes. Such a hot guy!' and gets into position on his knees behind him. Quickly getting his cock wet with a bit of spit, the soldier then aims for Xerxes pucker and pushes his hips forward. As Carl's hard, canine shaft touches the human's welcoming hole for the first time, his animal instincts kick in with a vengeance and the husky drives his cock into him in one deep thrust. Moaning loudly at the tightly gripping feel of Xerxes asshole around his manhood, he immediately starts fucking the young man in the typical 'doggie-style' position, with Xerxes panting and yipping in lust as he slides in and out[if lust of Xerxes >= 4]. 'Feels nice,' he moans, pressing his rear back into Carl's thrusts[end if]. He obviously likes getting mounted by the dog-morph a lot, with his body producing copious amounts of precum that drip onto the floor to form a small puddle.";
				say "     Carl runs his paw-hands over Xerxes['] sexy body, caressing his lovely skin[if lust of Xerxes >= 7] and running his fingers along his collar tattoo[end if] as he leans over him. This draws added moans and yips of pleasure from the human dog and he pushes himself back into Carl's thrusts, his boy-pussy squeezing Carl's shaft tightly as he fucks Xerxes like a dog. The soldier plays with his nipples and gives Xerxes a reacharound while fucking him, whispering in his ear what a good boy he is. As he continues thrusting into Xerxes in a position that just feels 'right' to him in his canine form, the strong husky soon really takes out all the stops and starts to pound his ass hard, mounting the young man with truly animal-like intensity that has him panting nonstop.";
				WaitLineBreak;
				say "     With the wild ride he's giving Xerxes, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against the human's naked body. The knot at the base of his shaft swells up to lock their bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into Xerxes['] insides. Feeling the warm pulse of his cum into his body, filling his up, seems to have been the last straw for Xerxes herself, as he orgasms just moments later, panting loudly and yipping in lust as he blows a big load all over the sheets on Carl's mattress.";
				say "     After a while of just holding Xerxes from behind and slowly stroking his body while waiting for his knot to go down, Carl says 'You're an amazing, sexy guy, Xerxes. As long as the alpha allows it, I'm gonna use every chance I get to do you...'";
			else:
				LineBreak;
				say "     Stroking Xerxes['] head, you calmly tell him that he should go with Carl for now and obey him. As the naked man moves over to the husky soldier and starts to sniff and nuzzle his crotch again, Carl gives you his thanks, then leads Xerxes up the stairs. Judging from the moans and yips starting to echo down to your ears not too long after, they're having quite a bit of fun with each other.";
			now Dexterity of Carl is 1;
		else:
			LineBreak;
			say "     As you silently shake your head, Carl's tail and ears dip a bit in disappointment. Still, you're his alpha, so he obediently lets the matter drop and goes back to his lookout-spot up on the upper library level.";
			now Dexterity of Carl is 100;

instead of going up from Grey Abbey Library while (HP of Carl > 9 and HP of Carl < 50 and Carl is in Grey Abbey 2F and (lastfuck of Carl - turns) > 12 and ((libido of Carl > 0 and libido of Carl < 100) or (dexterity of Carl > 0 and dexterity of Carl < 100)) and a random chance of 1 in 4 succeeds):
	move player to Grey Abbey 2F;
	if debugactive is 1:
		say "     DEBUG: CARL/HUMAN DOG SEX WALKIN [line break]";
	now lastfuck of Carl is turns + 4;
	if Helen is in Grey Abbey Library and libido of Carl > 0 and libido of Carl < 100:
		say "     Coming up the library stairs, you walk in on Carl having sex with Helen. The husky soldier has her on his mattress near the windows on all fours and is mounting her from behind, arms wrapped around her chest while he grinds his hips against hers. Your pet human moans and gives loud yips of pleasure as he does so, her pussy stretched tight around Carl's canine shaft as he fucks her like a dog. The soldier plays with her breasts and fingers her clit while fucking Helen, whispering in her ear what a good girl she is. As he continues thrusting into her in a position that just feels 'right' to him in his canine form, the strong husky soon really takes out all the stops and starts to pound her pussy hard, mounting the young woman with truly animal-like intensity that has her panting nonstop.";
		say "     With the wild ride he's giving Helen, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against her naked body. The knot at the base of his shaft swells up to lock their bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into Helen's womb. Feeling the warm pulse of his cum into her body, filling her up, seems to have been the last straw for Helen herself, as she orgasms just moments later, panting loudly and yipping in lust as she squirts femcum all over the floor under her.";
		if HP of Carl is 10:
			say "     After a while of just holding Helen from behind and slowly stroking her body while waiting for his knot to go down, Carl says 'You're an amazing, sexy bitch, Helen. I hope you're ready to be fucked all the time, because I'm certainly gonna use every chance I get to do you...'";
		else if HP of Carl is 30:
			say "     After a while of just holding Helen from behind and slowly stroking her body while waiting for his knot to go down, Carl says 'You're an amazing, sexy bitch, Helen. As long as the alpha allows it, I'm gonna use every chance I get to do you...'";
	else if Xerxes is in Grey Abbey Library and dexterity of Carl > 0 and dexterity of Carl < 100:
		say "     Coming up the library stairs, you walk in on Carl having sex with Xerxes. The husky soldier has him on his mattress near the windows on all fours and is mounting the human dog from behind, arms wrapped around his chest while he grinds his hips against Xerxes['] ass. Your pet human moans and gives loud yips of pleasure as he does so, his hole stretched tight around Carl's canine shaft as he fucks him like a dog. The soldier plays with his nipples and gives Xerxes a reacharound while fucking him, whispering in his ear what a good boy he is. As he continues thrusting into Xerxes in a position that just feels 'right' to him in his canine form, the strong husky soon really takes out all the stops and starts to pound his ass hard, mounting the young man with truly animal-like intensity that has him panting nonstop.";
		say "     With the wild ride he's giving Xerxes, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against the human's naked body. The knot at the base of his shaft swells up to lock their bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed into Xerxes['] insides. Feeling the warm pulse of his cum into his body, filling his up, seems to have been the last straw for Xerxes herself, as he orgasms just moments later, panting loudly and yipping in lust as he blows a big load all over the sheets on Carl's mattress.";
		if HP of Carl is 10:
			say "     After a while of just holding Xerxes from behind and slowly stroking his body while waiting for his knot to go down, Carl says 'You're an amazing, sexy guy, Xerxes. I hope you're ready to be fucked all the time, because I'm certainly gonna use every chance I get to do you...'";
		else if HP of Carl is 30:
			say "     After a while of just holding Xerxes from behind and slowly stroking his body while waiting for his knot to go down, Carl says 'You're an amazing, sexy guy, Xerxes. As long as the alpha allows it, I'm gonna use every chance I get to do you...'";

instead of navigating Grey Abbey Library while (HP of Carl > 9 and HP of Carl < 50 and Carl is in Grey Abbey 2F and lust of Carl is 0 and (lastfuck of Carl - turns) > 8 and Candy is in Bunker):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: CARL/CANDY INITIAL SEX WALKIN [line break][line break]";
	say "     Coming into the library, you see a gray and pink striped tail swish through the air as its owner vanishes up the stairs to the upper library level. What is Candy doing up there, you wonder, so your curiosity drives you to hurriedly follow the coon upstairs. Soon, you catch sight of the effeminate male in his candy striper uniform, just walking up to where Carl is holding watch at one of the windows. 'Hello there soldier. I'm Candy,' the raccoon says in his sweet voice, swishing his hips a bit as the husky turns to watch him come closer. 'Oh hey, I'm Carl. Nice to meet you,' Carl replies and shakes the raccoon's hand, then continues 'What can I do for you?'";
	say "     Moving his long tail to lightly rub against Carl's leg, Candy giggles 'Oh, nonono - it's what I can do for YOU, honey. Since you're such a brave and strong man, helping to keep us all safe here, I thought I'd show my full... appreciation for our military. At your service, sir!' Giving a playful salute, the cute coon then pushes right into Carl's personal space, rubbing his body against the larger male's form. Momentarily surprised at the pretty forward move of the effeminate candy striper, Carl gets over it quickly as Candy awakens his libido by rubbing and stroking his crotch. The transformed soldier gives a lusty rumble from his throat and puts his arms around Candy, slipping them under the pink raccoon's skirt and groping his butt.";
	LineBreak;
	say "     This is going fast in the direction Candy undoubtedly planned for it.";
	say "     [bold type]Do you want to watch Carl fuck him?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		LineBreak;
		say "     Unobtrusively making your way closer, you watch the husky soldier lower his head to give Candy's muzzle a lick, then say 'Sexy little minx, aren't you. I think I'll take you up on that offer.' Sliding his hand under the band of Candy's thin, lace-trimmed panties, Carl rubs a finger up and down his crack, then pushes it in - making the pink raccoon sigh in pleasure. After a few moments more of tongue-wrestling and fingering, Carl gives an urgent grunt of 'Get on all fours,' then undoes and drops his pants, moments later followed by his shirt. Keeping his own outfit on, Candy drops on all fours on Carl's mattress, then waves his rear at the husky soldier. Flicking his tail up, he raises his skirt, revealing the shapely butt barely covered by the thin fabric of his panties.";
		say "     As the girly candy striper moans, 'Mmm... come on... Fill your sweet Candy,' Carl immediately falls to his knees behind him and pulls Candy's underwear down to his knees. Then he lines up his erect, canine cock with the coon's pucker before thrusting in with a wild growl. Carl grips his bubble-butt firmly and starts pounding away at him, much to the coon's delight. Even though Candy's tailhole took Carl quite easily, he seems to be pretty snug around the husky's shaft, making Carl moan and grunt about how good it feels to be inside him. The cute raccoon's tail swishes about as he pushes back into each of the soldier's thrusts with a soft moan, his flesh soft and warm around Carl's thrusting cock.";
		WaitLineBreak;
		say "     While being mounted from behind and squeezing his inner muscles to make Carl wild, the girly raccoon reaches down to wrap his paw around his own hot-pink cock. He strokes himself as Carl pounds away at his ass, driving his knotted cock into the coon's tight asshole again and again. Eventually, the feel of Candy's warm, gripping bottom around his cock and the sight of such a sexy girly boytoy beneath him, moaning cute little sounds, becomes too much for Carl to hold in any longer. Squeezing Candy's fuzzy rump with both hands, he drives his shaft deep inside him, unleashing his hot load of canine seed and knotting the candy striper's ass as his knot expands to full size. Getting creamed with a fresh load of cum and feeling Carl's knot grow inside him is enough to set off Candy himself, spraying his pink cum onto the sheets of the mattress below and filling the air with the scent of cotton candy.";
		say "     'Wow - that was great!' Candy pants after catching his breath, then continues with, 'I wouldn't mind 'visiting the troops' more often. Wanna make this a regular thing?' There is not even a second of hesitation before Carl barks out 'Definitively! Can't wait to sink my bone into this tight little bun the next time.' At that, he moves his hips a little bit, lightly pulling against the inside of Candy's pucker with the still fully hard knot inside him and making the coon gasp in lust from the sensation. Then he relents and pushes forward again, grinding his loins against the candy striper's butt while waiting for his knot to go down. You leave the two of them like that and go back down into the library.";
		now lust of Carl is 1; [watched]
	else:
		LineBreak;
		say "     Leaving the girly coon to show his... appreciation to Carl in private, you walk back down the library stairs, not even looking back as you hear a lustful gasp, followed by rhythmic slapping noises from behind you.";
		now lust of Carl is 2; [didn't watch]
	now lastfuck of Candy is turns;
	now lastfuck of Carl is turns;

instead of going up from Grey Abbey Library while (HP of Carl > 9 and HP of Carl < 50 and Carl is in Grey Abbey 2F and lust of Carl > 0 and lust of Carl < 100 and (lastfuck of Carl - turns) > 8 and Candy is in Bunker and a random chance of 1 in 5 succeeds):
	move player to Grey Abbey 2F;
	if debugactive is 1:
		say "     DEBUG: CARL/CANDY REPEAT SEX WALKIN [line break][line break]";
	say "     Going up the stairs to the upper level of the library, you hear gasps and moans as you go along. Arriving on the second floor, you see that it's Carl and Candy, having fun with each other on Carl's mattress. The pink and gray raccoon is on all fours and is getting fucked, still in his candy striper uniform though with the skirt pushed up and his panties pulled down to his knees. Carl kneels behind him, both his paw-hands tightly gripping Candy's hips as he pounds into the effeminate male under him with intense thrusts.";
	say "     While being mounted from behind and squeezing his inner muscles to make Carl wild, the girly raccoon reaches down to wrap his paw around his own hot-pink cock. He strokes himself as Carl pounds away at his ass, driving his knotted cock into the coon's tight asshole again and again. Eventually, the feel of Candy's warm, gripping bottom around his cock and the sight of such a sexy girly boytoy beneath him, moaning cute little sounds, becomes too much for Carl to hold in any longer. Squeezing Candy's fuzzy rump with both hands, he drives his shaft deep inside him, unleashing his hot load of canine seed and knotting the candy striper's ass as his knot expands to full size. Getting creamed with a fresh load of cum and feeling Carl's knot grow inside him is enough to set off Candy himself, spraying his pink cum onto the sheets of the mattress below and filling the air with the scent of cotton candy.";
	WaitLineBreak;
	say "     'Wow - that was great!' Candy pants after catching his breath, then continues with, 'You're a sexy beast with that knotted cock of yours.' In reply, Carl barks out 'Yeah, what can I say - your tight little hole brings out my wild side! Can't wait to sink my bone into this shapely bun the next time.' At that, he moves his hips a little bit, lightly pulling against the inside of Candy's pucker with the still fully hard knot inside him and making the coon gasp in lust from the sensation. Then he relents and pushes forward again, grinding his loins against the candy striper's butt while waiting for his knot to go down. You leave the two of them like that and go back down into the library.";
	now lastfuck of Candy is turns;
	now lastfuck of Carl is turns;

instead of navigating Grey Abbey Library while (HP of Carl > 3 and HP of Carl < 30 and thirst of Carl is 0 and Carl is in Grey Abbey 2F and David is in Bunker):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: CARL & DAVID - WALK-IN - HP OF CARL: [HP of Carl], THIRST OF CARL: [thirst of Carl][line break]";
	say "     Coming into the library, you walk in on David just finishing a conversation with Carl, then saluting him and starting back towards the stairs down into the bunker. The husky soldier watches his human compatriot walk off, eyes lingering on David's shapely butt for a moment before he notices your presence. Turning to face you, Carl says, 'Hello, my friend. Had a little talk with David and he told me about everything you did for him. Thank you for that. The demon sounded like a nasty customer...' He looks over to watch David walk through the cellar door, then puts a hand-paw on your arm and continues in a low tone. 'I have to admit that - well - some of my canine urges kicked in hard when I met David. He's a damned handsome guy - and just a private, while I'm a corporal, you know. Under me in the pack - err, the military. Half my mind was busy imagining bending him over and pounding his ass while we were talking.'";
	say "     Carl shrugs and says 'I wasn't sure how he'd take it if I suggested anything, so I kept silent for now. Wouldn't want such a nice guy think I'm feral and just want to get in his pants... even though I really, really do.' He wags his tail subconsciously at that thought, then focuses on you again with a hopeful expression 'Say, you've spent some time with David - what do you think his reaction would be?";
	say "     [bold type] Think I've got a shot for some no-strings-attached fun with him, or should I better suppress those urges and keep things on a just friendly level?'[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - No strings fun.";
	say "     ([link]N[as]n[end link]) - Suppress.";
	if player consents:
		LineBreak;
		say "     Encouraging Carl to approach David, you make the husky's day and put a beaming smile on his face. Tail wagging exuberantly, he pats you on the shoulder and says thanks, then quickly starts up the stairs. Judging from the growing bulge in his pants, his thoughts are already circling about a certain human soldier...";
		now thirst of Carl is 1;
	else:
		LineBreak;
		say "     Carl's ears droop a bit in disappointment as you tell him to hold back, but he accepts your advice nonetheless. With a sigh, he rubs the bulge in his pants and says 'Guess I'll have to masturbate in the future before going to see him if I don't want to give myself away. Thanks anyways.'";
		now thirst of Carl is 99;

instead of navigating Grey Abbey Library while (HP of Carl > 3 and HP of Carl < 30 and thirst of Carl is 1 and Carl is in Grey Abbey 2F and (lastfuck of Carl - turns) > 4 and David is in Bunker):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: CARL & DAVID - SEX WALK-IN - HP OF CARL: [HP of Carl], THIRST OF CARL: [thirst of Carl][line break]";
	say "     Coming into the library, you see Carl and David stroll along the long rows of bookshelves in the back of the building, talking to one another. From the gestures the husky soldier is making, you suspect their topic is past girlfriends and conquests, something that's confirmed as you walk a bit closer and overhear '...really, she had the most massive tits you can imagine. This big - and all natural, no implants.' David is visibly astounded by the size Carl indicates at that, and it's clear their talk has gotten him quite a bit excited. When the men reach the end of the room and turn to walk on between the bookshelves, you can see a distinct bulge in the front of his pants...";
	say "     [bold type]Do you want to follow them and observe what will happen next?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		LineBreak;
		say "     Stealthily going after them, you reach the spot they walked out of sight a moment later and peek around the corner of the bookshelf. The two men haven't gone all that far down the between the bookshelf and the back wall of the library, which means you've got a pretty good view of Carl making his move. Stepping up close to David, the anthro husky boldly reaches out and puts a hand on the other man's crotch, then says 'Seems you've got a small - or not so small - problem here. How about I help you out with that?' Rubbing David's bulge, Carl makes him moan and pant at getting touched, though it's clear that the human is still a bit unsure about all of this. Then Carl starts undoing the button and zipper of David's trousers and pants to him 'Come on - just a bit of innocent fun among friends. We all have to blow off steam sometimes...'";
		say "     Wound up as he is, David's last resistance finally crumbles as Carl pushes a hand down the front of his briefs. Breathlessly moaning 'Ah *pant* - yeah, okay,' as the anthro dog fondles him, he slides both his uniform trousers and underwear down over his hips, letting them fall to pool at his feet. A victorious smile on his muzzle, Carl immediately follows up by taking hold of David's shirt and pulling it over his head too, leaving the young man completely naked above the knees. He then crouches down and laps at David's balls, taking the young man's hard cock in his muzzle a moment later.";
		WaitLineBreak;
		say "     Moans fill the air in this part of the library as Carl goes down on David, bobbing his long muzzle on the human's manhood and teasing it with his tongue. While doing so, the anthro dog also uses his hands to caress David's lower body - first stroking along the outside of his legs and reaching around to squeeze his buttcheeks, then moving on to the inside of his thighs and fondling his balls. Soon he lets his hand wander lower and lower, fingers moving past David's sac to rub between his legs and then finally dipping in to brush over his pucker. A moment later, a small gasp shows that the husky has pushed a finger in and is now probing his human partner's hole. Carl fingers David for a moment, then suddenly stands up and pulls the human into a deep kiss. As the two of them make out, the husky soldier slowly guides his now very ply-able compatriot over to the library wall. Then, coming up from another hungry kiss, he opens the zipper of his own camo shorts, revealing a fully erect canine shaft, then lets them drop to the ground. Giving a low growl laden with lust, the husky soldier says, 'Let's fuck - I wanna feel your tight hole around my cock.'";
		if lust of David is 0: [anal virgin]
			say "     David looks up and blushes slightly, saying 'I - I haven't...' before he gets interrupted by Carl kissing him again and reaching down to jerk his cock. The husky says in a soothing voice, 'Don't worry, I'll be gentle,' then gently turns David around, taking his hands to set them against the wall in a bracing position. The horny canine puts his hands on the round cheeks of David's bubble butt, then pulls them apart, baring the young man's hole. As aroused as David is, he can't do anything but moan as Carl brings the tip of his cock to the tight opening. Pushing forward with increasing pressure, David's pucker resists him for a moment, then opens up and allows the pointy cockhead to slide into the tight embrace of his ass. Carl gives a very satisfied grunt at being the first to explore that virgin territory - and from David's lust-filled groans as he slowly slides deeper into him, the husky is very well received.";
			WaitLineBreak;
			say "     As Carl bottoms out inside David's ass, he gives the young man's cock a few strokes and lets him get used to the invading member up his butt, then soon moves his hands back to David's hips. Holding on tightly, the husky gives in to his urges, pulling out almost all the way and hammering his shaft back inside him in quick deep strokes, filling the library with slapping noises as his hips meet the human's butt. Mounting someone from behind just feels 'right' to the man in his canine form, and the strong husky soon takes out all the stops, pounding David's ass hard, mounting the other soldier with truly animal-like intensity that has him panting nonstop.";
			say "     It doesn't take long until getting a really wild fuck takes the handsome Private past the point of no return, and with a gasp, David starts shooting his load all over the wall in front of him. As his human bitch's inner muscles quiver and flex with each shot of his seed, Carl is driven over the edge right along with David. With a throaty roar, the husky buries his shaft in his partner all the way, flooding his insides with a huge load of canine seed. At the same time, Carl's knot swells up inside David, holding the two of them together in a (futile) effort to ensure impregnation.";
			WaitLineBreak;
			say "     Literally tied to David by his cock, Carl just stays standing like that, though he puts his arms around the human, holding him and whispering in his ear. As the action is over, you decide to leave them alone in their intimate moment and wander over towards the open area near the entrance.";
			now lust of David is 52;
		else: [repeat anal]
			say "     David gives a lusty moan and turns around, bending forward slightly and supporting himself with both hands on the wall. The husky says in an eager voice, 'Can't wait to take you - hard,' then puts his hands on the round cheeks of David's bubble butt, pulling them apart and baring the young man's hole. As aroused as David is, he can't do anything but moan as Carl brings the tip of his cock to the tight opening. Pushing forward with increasing pressure, David's pucker resists him for a moment, then opens up and allows the pointy cockhead to slide into the tight embrace of his ass.";
			WaitLineBreak;
			say "     As Carl bottoms out inside David's ass, he gives the young man's cock a few strokes and lets him get used to the invading member up his butt, then soon moves his hands back to David's hips. Holding on tightly, the husky gives in to his urges, pulling out almost all the way and hammering his shaft back inside him in quick deep strokes, filling the library with slapping noises as his hips meet the human's butt. Mounting someone from behind just feels 'right' to the man in his canine form, and the strong husky soon takes out all the stops, pounding David's ass hard, mounting the other soldier with truly animal-like intensity that has him panting nonstop.";
			say "     It doesn't take long until getting a really wild fuck drives the handsome Private over the edge, and with a gasp, David starts shooting his load all over the wall in front of him. As his human bitch's inner muscles quiver and flex with each shot of his seed, Carl is driven over the edge right along with David. With a throaty roar, the husky buries his shaft in his partner all the way, flooding his insides with a huge load of canine seed. At the same time, Carl's knot swells up inside David, holding the two of them together in a (futile) effort to ensure impregnation.";
			WaitLineBreak;
			say "     Literally tied to David by his cock, Carl just stays standing like that, though he puts his arms around the human, holding him and whispering in his ear. As the action is over, you decide to leave them alone in their intimate moment and wander over towards the open area near the entrance.";
	else:
		LineBreak;
		say "     You decide to give them their privacy and just walk back to the main area of the library, though you can't help but hear a few gasped moans echo from back where the two soldiers went. Seems like Carl's approach paid off and he's having some nice time with David...";
	if lust of David is 0:
		now lust of David is 52;
	now thirst of Carl is 2;
	now lastfuck of Carl is turns;
	now lastfuck of David is turns;

instead of navigating Grey Abbey Library while (HP of Carl > 3 and HP of Carl < 30 and thirst of Carl is 2 and Carl is in Grey Abbey 2F and David is in Bunker and (lastfuck of Carl - turns > 8) and (lastfuck of David - turns > 8) and a random chance of 1 in 6 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: CARL & DAVID - SEX WALK-IN - HP OF CARL: [HP of Carl], THIRST OF CARL: [thirst of Carl][line break]";
	say "     Coming into the library, you see Carl and David at the back of the main room, quietly talking to each other. You can't help but notice how close Carl is leaning to the human soldier as he whispers something, awakening your curiosity about what's going on, so you inconspicuously wander a bit closer. Then, before you've taken more than a few steps, it becomes obvious - as Carl sets his paw-hand on David's crotch and starts to rub it through his pants. The anthro husky leans in and brings his muzzle against his friend's skin just a moment later, then gives David's neck a long and sensuous lick. Quietly observing and getting closer and closer, you're in position to hear their next exchange:[line break]";
	say "     Carl pants, 'I really wanna fuck you again, soldier. How about we have some fun behind the bookshelves?' David's answer is a bit hard to understand, being more moaned than said, but you think it was 'Yes sir. Can't wait to feel your knot inside me.' One thing is for sure, they're pretty into each other and distracted with all the touching, licking and kissing - so much so that they don't even notice you as first David, then Carl stroll over and walk behind the bookshelves in the back row. Carl's gaze is almost glued to the human soldier's shapely ass, and judging from the big bulge in his uniform pants, he's fully erect and ready to go.";
	say "     [bold type]Do you want to follow them and observe what will happen next?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		LineBreak;
		say "     Stealthily going after them, you reach the spot they walked out of sight a moment later and peek around the corner of the bookshelf. Just barely out of sight from the main room, the two men didn't go down the aisle more than a few steps before starting a full-out makeout session against the wall. You see that David is now standing with his back against the wall, while Carl is pressed against his front, sharing kisses and licks with him while holding the human's arms above his head. Before much longer, the anthro husky slides a paw-hand under David's shirt, then even further down and into his pants.";
		say "     Wound up as he is, David just gives a breathless moan of 'Ah *pant* - yeah!' as the anthro dog fondles him and undoes the button of his uniform trousers. One quick pull later, both the pants and David's underwear are down at his knees and fall to the ground, pooling at his feet. A lusty smile on his muzzle, Carl immediately follows up by taking hold of David's shirt and pulling it over his head too, leaving the young man completely naked. The husky then crouches down and laps at David's balls, taking the human soldier's hard cock in his muzzle a moment later.";
		WaitLineBreak;
		say "     Moans fill the air in this part of the library as Carl goes down on David, bobbing his long muzzle on the human's manhood and teasing it with his tongue. While doing so, the anthro dog also uses his hands to caress David's lower body - first stroking along the outside of his legs and reaching around to squeeze his buttcheeks, then moving on to the inside of his thighs and fondling his balls. Soon he lets his hand wander lower and lower, fingers moving past David's sac to rub between his legs and then finally dipping in to brush over his pucker. A moment later, a small gasp shows that the husky has pushed a finger in and is now probing his human partner's hole. Carl fingers David for a moment, then suddenly stands up and pulls the human into a deep kiss.";
		say "     Coming back up for air, the husky soldier takes hold of David's body and gently turns him around, pulling his hips towards him and pushing against his back to make him lean forward a bit. Giving David's naked ass a lusty look, Carl undoes his pants and lets them drop while his friend puts both hands on the wall to support himself. Next, the husky says in an eager voice, 'Can't wait to take you - hard,' gripping the round cheeks of David's bubble butt with his hand-paws, pulling them apart and baring the young man's hole. As aroused as David is, he can't do anything but moan as Carl brings the tip of his cock to the tight opening. Pushing forward with increasing pressure, David's pucker resists him for a moment, then opens up and allows the pointy cockhead to slide into the tight embrace of his ass.";
		WaitLineBreak;
		say "     As Carl bottoms out inside David's ass, he gives the young man's cock a few strokes and lets him get used to the invading member up his butt, then soon moves his hands back to David's hips. Holding on tightly, the husky gives in to his urges, pulling out almost all the way and hammering his shaft back inside him in quick deep strokes, filling the library with slapping noises as his hips meet the human's butt. Mounting someone from behind just feels 'right' to the man in his canine form, and the strong husky soon takes out all the stops, pounding David's ass hard, mounting the other soldier with truly animal-like intensity that has him panting nonstop.";
		say "     It doesn't take long until getting a really wild fuck drives the handsome Private over the edge, and with a gasp, David starts shooting his load all over the wall in front of him. As his human bitch's inner muscles quiver and flex with each shot of his seed, Carl is driven over the edge right along with David. With a throaty roar, the husky buries his shaft in his partner all the way, flooding his insides with a huge load of canine seed. At the same time, Carl's knot swells up inside David, holding the two of them together in a (futile) effort to ensure impregnation.";
		WaitLineBreak;
		say "     Literally tied to David by his cock, Carl just stays standing like that, though he puts his arms around the human, holding him and whispering in his ear. As the action is over, you decide to leave them alone in their intimate moment and wander over towards the open area near the entrance.";
	else:
		LineBreak;
		say "     You decide to give them their privacy and not go after them, though you can't help but hear a few gasped moans echo from back where the two soldiers went. Seems like they're having quite a bit of fun with each other...";
	now lastfuck of Carl is turns;
	now lastfuck of David is turns;

instead of going to Bunker while (HP of David is 4 and HP of Carl > 3 and HP of Carl < 30 and thirst of Carl is 2 and Carl is in Grey Abbey 2F and David is in Bunker and (lastfuck of Carl - turns > 8) and (lastfuck of David - turns > 8) and a random chance of 1 in 4 succeeds):
	move player to Bunker;
	if debugactive is 1:
		say "     DEBUG: CARL & DAVID - SEX WALK-IN - HP OF CARL: [HP of Carl], THIRST OF CARL: [thirst of Carl][line break]";
	say "     Coming down the stairs into the bunker, you walk in on David and Carl, enjoying each other's company on one of the many beds down here. The human soldier is on all fours, tightly gripping the bedsheets as his husky compatriot pounds into him from behind. Carl holds on to David's hips tightly as he fucks him, pulling out almost all the way and hammering his shaft back inside him in quick deep strokes, filling the bunker with slapping noises as his hips meet the human's butt. Mounting someone from behind just feels 'right' to the man in his canine form, and the strong husky soon takes out all the stops, pounding David's ass hard, mounting the other soldier with truly animal-like intensity that has him panting nonstop.";
	say "     It doesn't take long until getting a really wild fuck drives the handsome Private over the edge, and with a gasp, David starts shooting his load all over the bedsheets. As his human bitch's inner muscles quiver and flex with each shot of his seed, Carl is driven over the edge right along with David. With a throaty roar, the husky buries his shaft in his partner all the way, flooding his insides with a huge load of canine seed. At the same time, Carl's knot swells up inside David, holding the two of them together in a (futile) effort to ensure impregnation.";
	WaitLineBreak;
	say "     Literally tied to David by his cock, Carl stays like that, hips pressed against the young man's cheeks, but they do lie down on their sides in a bit more comfortable a position. 'Feels good to let off some steam, doesn't it?' Carl softly says to David and strokes his chest, who chuckles and replies 'Oh yeah - as crazy as it feels to say that. Before all this, I'd never have believed someone telling me that I'd let myself be mounted by a male superior, and a dog to boot. But having your knot in me sure feels nice...'";
	now lastfuck of Carl is turns;
	now lastfuck of David is turns;


Carl ends here.
