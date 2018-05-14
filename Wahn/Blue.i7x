Version 1 of Blue by Wahn begins here.
[ Version 1 - New Event Area ]

[ HP of Florence                                             ]
[   0: not known                                             ]
[   1: she said hello to the player, introductions done      ]
[   2: player talked about the reason for the condoms        ]
[   3: player got introduced to the goo collective           ]

[ HP of Blue Speaker                                         ]
[   0: no info learned                                       ]
[   1: player asked about the Blue commune                   ]
[   2: player talked about Blue personally                   ]

[ libido of Blue Speaker                                     ]
[   0: indeterminate gender                                  ]
[   1: female persona                                        ]
[   2: male persona                                          ]

BlueDesignator is a text that varies.

Section 1 - Location

North of Haven Community Center is Goo Refuge.
The description of Goo Refuge is "[GooRefugeDesc]".
Goo Refuge is sleepsafe.

to say GooRefugeDesc:
	say "     You are standing in a large room that holds a number of desks, once the workplaces of the travel agency's accounting staff, as well as three larger offices partitioned off by glass walls. One of the offices is translucent with a shifting aquamarine color, as it is literally filled to the ceiling with light blue colored goo. A number of oddly uniform goo people are always present, with some regularly coming and going from of the goo-filled office, just stepping out of the mass or melding into it when walking into the room. Interestingly, the humanoid creatures refrain from interacting with you, instead pointing out that you should talk to their Speaker.";

instead of going to Goo Refuge:
	if HP of Florence > 2:
		say "     Walking towards the goo people's domain, you give a nod to the large one that is guarding the doorway, who steps out of the way after a moment of hesitation. Passing them, you step into the administration office of the large travel agency. There are a number of other goo people nearby, though they mostly ignore you. Only one walks up to you in a direct way, stopping a few steps away. 'Welcome to our little refuge. I am the Blue Speaker. How can we help you?'";
		move player to Goo Refuge;
	else:
		say "     Walking towards the goo people's domain, you reach a quite large, aquamarine guard who stands in the doorway, blocking it. You can see other goo people around in the room beyond, visible past (and through) the guardian. 'For your own safety, please leave,' the androgynous-looking being says with a stoic expression on his or her face. Apparently, no amount of talking to the guard gets you anywhere either, forcing you to concede after trying for a while. You step away again from the open, yet blocked, door.";
		say "     [bold type]Maybe it'd help if Florence put in a good word for you. She and her sisters do regularly interact with the goo people.[roman type][line break]";

Section 2 - Blue Speaker

Blue Speaker is a man. Blue Speaker is in Goo Refuge.
The description of Blue Speaker is "[Blue SpeakerDesc]".
The conversation of Blue Speaker is { "<This is nothing but a placeholder!>" }.
The scent of Blue Speaker is "     The aquamarine goo person smells somewhat fruity, making you wonder if the goo would taste that way too.".

when play begins:
	SetNeutralPronouns for Blue Speaker;

to say Blue SpeakerDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Blue Speaker] <- DEBUG[line break]";
	if libido of Blue Speaker is 0: [neuter]
		say "     Blue is a humanoid goo person that usually stands about five feet tall. It has a totally androgynous appearance, making it impossible to tell if Blue is a male or female - though maybe there isn't really a difference when you body consists of malleable, semisolid goop. Never really straying far from you, it seems that this being is the designated person to talk to.";
	else if libido of Blue Speaker is 1: [male]
		say "     Blue is a humanoid goo person that usually stands about five feet tall. She has taken on a more feminine appearance, with a pretty face, shoulder-length hair and nice, perky breasts molded out of the transparent aquamarine goop that forms her body. This being is certainly eager and ready to make her visitors comfortable, up to and including molding her body to match a specific form. Never really straying far from you, it seems that she is the designated person to talk to among her kind.";
	else if libido of Blue Speaker is 2: [female]
		say "     Blue is a humanoid goo person that usually stands about five feet tall. He has taken on a more masculine appearance, with a handsome face, shoulder-length hair and actual abs molded out of the transparent aquamarine goop that forms his body. This being is certainly eager and ready to make his visitors comfortable, up to and including molding his body to match a specific form. Never really straying far from you, it seems that he is the designated person to talk to among his kind.";

instead of conversing the Blue Speaker:
	BlueSpeakerTalkMenu;

to BlueSpeakerTalkMenu:
	say "     Do you want to talk to Blue about something?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about the goo people";
	now sortorder entry is 1;
	now description entry is "Learn what you can about them";
	[]
	if HP of Blue Speaker > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask about the 'Speaker' title";
		now sortorder entry is 2;
		now description entry is "Learn what you can about them";
	[]
	if HP of Blue Speaker > 1 and libido of Blue Speaker < 2:
		choose a blank row in table of fucking options;
		now title entry is "Ask Blue to appear more masculine";
		now sortorder entry is 3;
		now description entry is "Let the goo person reshape themselves";
	[]
	if HP of Blue Speaker > 1 and libido of Blue Speaker is not 1:
		choose a blank row in table of fucking options;
		now title entry is "Ask Blue to appear more feminine";
		now sortorder entry is 5;
		now description entry is "Let the goo person reshape themselves";
	[]
	if HP of Blue Speaker > 1 and libido of Blue Speaker is not 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask Blue to appear more gender-neutral";
		now sortorder entry is 6;
		now description entry is "Let the goo person reshape themselves";
	[]
	if HP of Blue Speaker > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask about the goo-filled office";
		now sortorder entry is 7;
		now description entry is "Learn why there is a whole office filled with goo";
	[]
	if HP of Blue Speaker > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask about their need for bodily fluids";
		now sortorder entry is 8;
		now description entry is "Learn what the goo people eat";
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
				if (nam is "Ask about the goo people"):
					say "[BlueTalk_Background]";
				else if (nam is "Ask about the 'Speaker' title"):
					say "[BlueTalk_Speaker]";
				else if (nam is "Ask Blue to appear more masculine"):
					say "[BlueTalk_MaleForm]";
				else if (nam is "Ask Blue to appear more feminine"):
					say "[BlueTalk_FemaleForm]";
				else if (nam is "Ask Blue to appear more gender-neutral"):
					say "[BlueTalk_NeuterForm]";
				else if (nam is "Ask about the goo-filled office"):
					say "[BlueTalk_Office]";
				else if (nam is "Ask about their need for bodily fluids"):
					say "[BlueTalk_Cum]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the aquamarine goo person, shaking your head slightly as [SubjectPro of Blue Speaker] gives you a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say BlueTalk_Background:
	say "     Blue smiles as [SubjectPro of Blue Speaker] listens to your question, then nods. 'Of course. You must be wondering what is going on here. Let me explain. I am Blue, and so is she, and he, and they,' the friendly goo person explains, pointing out others moving around in the office all around you. 'We were human once, and alone, but since the change...' Blue says, raising a hand and looking through its clear, aquamarine shape at you. 'We have become one which contains everything. All the voices and thoughts are still there, but it can be difficult at times to tell who each belonged to originally. We do not worry about this, and it is nothing we want to be [']saved['] from. Blue just has become different than human.' The quick way that [SubjectPro of Blue Speaker] says the last sentences tells you that Blue must have had to explain this regularly to various people. As you nod in understanding, the goo person smiles in relief.";
	say "     'Living as Blue is nothing like we were before. All the voices talk in us, and those who decide to do something together form a shape. The Blue Guardian, for example,' Blue says with a nod towards the entrance door. 'They worry about infecting others and bringing possibly dissonant voices into the Blue. The Blue Tinkerer loves to craft things, and so on.' Looking around, you realize that most of the goo people wandering about are focused on a single task, giving that their full attention. 'And I am the Blue Speaker, here just for you and other contacts.'";
	if HP of Blue Speaker < 1:
		now HP of Blue Speaker is 1;

to say BlueTalk_Speaker:
	say "     As you ask about [ObjectPro of Blue Speaker] personally, Blue smiles and says, 'I am the collective eagerness to meet new people and talk. I am part of...' Blue scrunches [PosAdj of Blue Speaker] brow, mulling it over for a few seconds, then continues to say, 'Rafael, Josh, Jo, Cheryl, Clint, Lucia and Glenn. All of me love to chat. Which is why the others prefer to let me do it.' Giving a good-natured chuckle, Blue shrugs and looks around to the various goo people, then leans in conspiratorially. 'Clint, Jo and Rafael also like to do [']other['] things with special friends that I meet, which is why the Blue Guardian prefers me to stay inside. And I do, for the most part. We're all Blue, after all, and we have to live with each other.' Crossing [PosAdj of Blue Speaker] arms, Blue then gives you a wink and adds, 'By the way, if you'd prefer to see me in another shape, just let me know. The goo is nothing if not shapeable...' With that, Blue morphs [PosAdj of Blue Speaker] body through several variants of masculinity, femininity and genderlessness before returning to the shape you know.";
	if HP of Blue Speaker < 2:
		now HP of Blue Speaker is 2;

to say BlueTalk_MaleForm:
	say "     'My pleasure,' Blue replies, instantly reshaping [PosAdj of Blue Speaker] body to appear broad-shouldered and muscular, featuring a chiseled face and shoulder-length hair. He checks himself out for a little moment, making sure he didn't forget anything, then playfully flexes the bulges of his goo biceps.";
	SetMalePronouns for Blue Speaker;
	now BlueDesignator is "man";
	now libido of Blue Speaker is 2;

to say BlueTalk_FemaleForm:
	say "     'My pleasure,' Blue replies, instantly reshaping [PosAdj of Blue Speaker] body to appear more curvaceous, with a set of perky breasts and shapely buns that form an hourglass figure. She has a rather pretty face and shoulder-length hair, too. Checking herself out for a little moment, Blue makes sure she didn't forget anything, then smiles at you and wiggles her breasts to jiggle left and right.";
	SetFemalePronouns for Blue Speaker;
	now BlueDesignator is "woman";
	now libido of Blue Speaker is 1;

to say BlueTalk_NeuterForm:
	say "     'If that's what you prefer,' Blue replies, instantly reshaping [PosAdj of Blue Speaker] body to appear in a genderless humanoid form. With the arms, legs and torso appearing relatively undefined, the goo person can barely be differentiated from the various others in the room.";
	SetNeutralPronouns for Blue Speaker;
	now BlueDesignator is "being";
	now libido of Blue Speaker is 0;

to say BlueTalk_Office:
	say "     As you ask about the goo-filled office, Blue explains, 'Many of our voices just prefer to stay safe and together, talking things through among the Blue. That is where they stay, and where all of us return from time to time to share ourselves. Others might become like us in body, but to truly be Blue, they would have to enter and share themselves.'";

to say BlueTalk_Cum:
	say "     As you ask about the goo people's physical needs, Blue nods to you. 'Yeah, it's true. As I'm sure the sisters told you, we require cum and other bodily fluids to sustain the Blue. It only makes sense, because... well, you can see that there isn't anything like a stomach inside us.' Raising a hand, [SubjectPro of Blue Speaker] pokes the jiggly goo that makes up [PosAdj of Blue Speaker] humanoid form's midriff. 'Liquid or semisolid sustenance is just what we need, and we can absorb it with any part of our bodies. But of course, touching someone as they gave me their seed most of the time just brought a new voice into the Blue - which is why the Guardian mostly refuses to let me go out anymore. The sisters have been really nice about supplying our needs in a different way since that decision was made.' Looking at you, a teasing smile crosses Blue's face, and [SubjectPro of Blue Speaker] says with a wink, 'Now that you're in here with all of us though... wanna maybe give the Blue some love?'";

Instead of fucking the Blue Speaker:
	if HP of Blue Speaker is 0: [player never talked to Blue Speaker]
		say "     The mall is a bit more civilized than the dangerous streets of the city. In general, you should at least speak with someone and introduce yourself before broaching the subject of sex.";
	else:
		say "[BlueSpeakerSexMenu]";

to say BlueSpeakerSexMenu:
	say "     What do you want to do with the goo person?";
	choose row monster from the table of random critters;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "'Donate' some cum";
		now sortorder entry is 1;
		now description entry is "Jerk off on [ObjectPro of Blue Speaker]";
	[]
	if (cocks of player > 0 ):
		choose a blank row in table of fucking options;
		now title entry is "Fuck Blue's mouth";
		now sortorder entry is 2;
		now description entry is "Give the goo person a direct cum injection";
	[
	if (cocks of player > 0 and libido of Blue Speaker is 1): [female shape]
		choose a blank row in table of fucking options;
		now title entry is "Fuck Blue's pussy";
		now sortorder entry is 3;
		now description entry is "Pound the goo person's pussy";
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Fuck Blue's ass";
		now sortorder entry is 4;
		now description entry is "Pound the goo person's ass";
	[]
	if libido of Blue Speaker is 2: [male shape]
		choose a blank row in table of fucking options;
		now title entry is "Let Blue fuck your ass";
		now sortorder entry is 5;
		now description entry is "Let the goo person fuck your ass";
	[]
	if (cunts of player > 0 and libido of Blue Speaker is 2): [male shape]
		choose a blank row in table of fucking options;
		now title entry is "Let Blue fuck your pussy";
		now sortorder entry is 6;
		now description entry is "Let the goo person fuck your pussy";
	]
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
				if nam is "'Donate' some cum":
					say "[BlueSex1]";
				else if (nam is "Fuck Blue's mouth"):
					say "[BlueSex2]";
				else if (nam is "Fuck Blue's pussy"):
					say "[BlueSex3]";
				else if (nam is "Fuck Blue's ass"):
					say "[BlueSex4]";
				else if (nam is "Let Blue fuck your ass"):
					say "[BlueSex5]";
				else if (nam is "Let Blue fuck your pussy"):
					say "[BlueSex6]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the aquamarine goo person, shaking your head slightly as [SubjectPro of Blue Speaker] gives you a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say BlueSex1: [jerk off on Blue]
	say "     As you tell Blue that you want to 'donate' some of your cum to sustain [ObjectPro of Blue Speaker] and [PosAdj of Blue Speaker] people, the aquamarine goo person smiles eagerly at you and raises a hand to [PosAdj of Blue Speaker] chest. 'I had so hoped you'd say that. It's so much better fresh from an eager partner,' Blue tells you with a naughty wink, tracing one blue finger over ";
	if HP of Blue Speaker is 2: [female]
		say "the pleasantly round swell of her breasts, making them wiggle just for you. ";
	else if HP of Blue Speaker is 1: [male]
		say "the valleys and bumps of his flawless abs, before slapping one of his pecs and making it wiggle a little bit. ";
	else: [neuter]
		say "the flat front of its vaguely human torso, creating a streak of ripples through the goo. ";
	say "'Ooh yeah, give it to me[if player is not defaultnamed] [name of player][end if]! I know you don't just want to cum in a cup and give it to the Blue. You wouldn't have come here just for that.' With that said, the smiling goo [BlueDesignator] kneels in front of you, taking a quite enticing position. ";
	if HP of Blue Speaker is 2: [female]
		say "Blue cups the pair of her full breasts and squeezes them as she looks up at you, opening her mouth to wiggle a tongue made from blue goo. ";
	else if HP of Blue Speaker is 1: [male]
		say "Blue thumps his pecs with a fist, then pinches his nipples enticingly while he looks up at you, opening his mouth to wiggle a tongue made from blue goo. ";
	else: [neuter]
		say "Blue pinches its prodruding nipples enticingly while it looks up at you, opening its mouth to wiggle a tongue made from blue goo. ";
	say "Given such a show, you happily [SelfStripCrotch], then wrap your hand around your [cock of player] shaft.";
	say "     'What a nice piece of man-meat you have there[if player is not defaultnamed] [name of player][else] my friend[end if],' Blue says in a yearning tone, seemingly ready to engulf your cock at a moment's notice. The sound of a throat being cleared, coming from the Blue Guardian, seems the only thing that holds the thirsty goo [BlueDesignator] back, instead making [ObjectPro of Blue Speaker] settle on [ObjectPro of Blue Speaker] haunches to wait. Stroking the length of your [cock of player] erection, you step a little closer to Blue and play around a little with [ObjectPro of Blue Speaker], enjoying the way that your eager partner follows every little movement of your dickhead with [PosAdj of Blue Speaker] gaze. When the first drop of pre forms at the tip of your cock, [SubjectPro of Blue Speaker] even licks [PosAdj of Blue Speaker] lips in a show of anticipation, really boosting your enjoyment of jerking off by having an adoring watcher. The fires of arousal intensify to burn hotly inside you, pushing you to speed up your hand movements and get ever closer to the inevitable orgasm.";
	WaitLineBreak;
	say "     'Yeah, that's it baby. You want to - you need to - shoot that load you've got building. I want you to come all over me,' Blue gasps out in a eager and breathless voice, leaning forward to almost touch you. 'Oh yeah, do it!' the goo [BlueDesignator] calls out as [SubjectPro of Blue Speaker] sees in your eyes that you are about to cum, then opens [PosAdj of Blue Speaker] mouth and stretches a blue tongue out as far as [SubjectPro of Blue Speaker] can, ready to receive your seed. A first splash of white cum streaks over [PosAdj of Blue Speaker] blue face as climax breaks over you moments later, spoiling your aim in the moment of passion. Blue reacts right away, getting [PosAdj of Blue Speaker] head properly aligned again to catch the next splash in [PosAdj of Blue Speaker] open mouth, humming contently as [SubjectPro of Blue Speaker] swallows the creamy layer of cum on [PosAdj of Blue Speaker] tongue. While you are still jerking and shooting more cum to be caught in Blue's open mouth, you are strangely fascinated by seeing what happens to each swallowed glob of cum inside [ObjectPro of Blue Speaker].";
	say "     The splashes of your seed are white and milky in the goo [BlueDesignator]'s interior, staying bunched up for a little while before their edges get more and more diffuse. The blue goo of your friend takes on some of the opaqueness that the cum brings with it, before eventually becoming fully transparent again, and at the same time much more intensely blue. As [SubjectPro of Blue Speaker] swallows more and more of your 'donation', Blue almost seems to glow from the inside out, so intense gets the color of [PosAdj of Blue Speaker] infused goo. 'Mmmh, you taste amazing,' [SubjectPro of Blue Speaker] says with an ecstatic smile on ";
	if HP of Blue Speaker is 2: [female]
		say "her feminine face, smacking her full lips contently. 'Thank you, this is just what I needed. Oooh, I almost feel giddy from all the cum you gave me. I really must share this with the rest of the Blue!' With that said, she stands up and blows you a kiss, then saunters over to the goo-filled office, strolling right into the aquamarine mass and merging with it.";
	else if HP of Blue Speaker is 1: [male]
		say "his masculine face, smacking his lips contently and giving you a broad grin. 'Thank you, this is just what I needed. Oooh, I almost feel giddy from all the cum you gave me. I really must share this with the rest of the Blue!' With that said, he stands up and thumps his chest in a kind of salute, then struts over to the goo-filled office, walking right into the aquamarine mass and merging with it.";
	else: [neuter]
		say "its androgynous face, smacking its lips in satisfaction. 'Thank you, this is just what I needed. Oooh, I almost feel giddy from all the cum you gave me. I really must share this with the rest of the Blue!' With that said, it stands up and gives you a thumbs up before strolling over to the goo-filled office and walking right into the aquamarine mass to merge with it.";
	WaitLineBreak;
	say "     Satisfied about having both gotten your rocks off and also helping the goo people, you watch Blue go and join with the collective of [PosAdj of Blue Speaker] people. Streaks of more vibrant blue start diffusing through the large mass of blue goo in the office, spreading the nourishment of your seed throughout their unity. You can't help but grin as you [SelfDressCrotch], then stroll to the entrance of the goo people's refuge. The Blue Guardian lets you pass without commment, apparently distracted by his desire to join the others for their communion.";

to say BlueSex2: [mouth fuck for Blue]
	say "     As you tell Blue that you want to 'donate' some of your cum to sustain [ObjectPro of Blue Speaker] and [PosAdj of Blue Speaker] people, the aquamarine goo person smiles eagerly at you and raises a hand to [PosAdj of Blue Speaker] chest. 'I had so hoped you'd say that. It's so much better fresh from an eager partner,' Blue tells you with a naughty wink, tracing one blue finger over ";
	if HP of Blue Speaker is 2: [female]
		say "the pleasantly round swell of her breasts, making them wiggle just for you. ";
	else if HP of Blue Speaker is 1: [male]
		say "the valleys and bumps of his flawless abs, before slapping one of his pecs and making it wiggle a little bit. ";
	else: [neuter]
		say "the flat front of its vaguely human torso, creating a streak of ripples through the goo. ";
	say "'Ooh yeah, give it to me[if player is not defaultnamed] [name of player][end if]! I know you don't just want to cum in a cup and give it to the Blue. You wouldn't have come here just for that.' With that said, the smiling goo [BlueDesignator] kneels in front of you, taking a quite enticing position. ";
	if HP of Blue Speaker is 2: [female]
		say "Blue cups the pair of her full breasts and squeezes them as she looks up at you, opening her mouth to wiggle a tongue made from blue goo. ";
	else if HP of Blue Speaker is 1: [male]
		say "Blue thumps his pecs with a fist, then pinches his nipples enticingly while he looks up at you, opening his mouth to wiggle a tongue made from blue goo. ";
	else: [neuter]
		say "Blue pinches its prodruding nipples enticingly while it looks up at you, opening its mouth to wiggle a tongue made from blue goo. ";
	say "Given such a show, you happily [SelfStripCrotch], then wrap your hand around your [cock of player] shaft.";
	say "     'What a nice piece of man-meat you have there[if player is not defaultnamed] [name of player][else] my friend[end if],' Blue says in a yearning tone, seemingly ready to engulf your cock at a moment's notice. The sound of a throat being cleared, coming from the Blue Guardian, holds the thirsty goo [BlueDesignator] back - but you're having none of that and quickly grab [ObjectPro of Blue Speaker] by the back of the neck to ram [PosAdj of Blue Speaker] your [cock of player] rod into [PosAdj of Blue Speaker] mouth. Given the suddenness of your thrust, Blue doesn't actually have the time to form a throat or anything from [PosAdj of Blue Speaker] gooey mass, meaning that you're literally just fucking the wet and squishy innards of [PosAdj of Blue Speaker] head for a little while until [SubjectPro of Blue Speaker] can adjust to give you a more human-like experience.";
	WaitLineBreak;
	say "     The shape of a tight and gripping throat forms around your hard shaft. It looks odd, but also fascinating, to literally see the cavity inside Blue's body, extending just far enough to take your deepest thrusts. Your partner is definitively quite resourceful with that morphable body of [PosAdj of Blue Speaker]. Eager sounds come from Blue as [SubjectPro of Blue Speaker] takes your face-fucking with obvious joy and even wraps [PosAdj of Blue Speaker] arms around your hips to pull you in for deeper thrusts. Ramming into [ObjectPro of Blue Speaker] again and again, you are so concentrated on the pleasure of the fuck that it takes a while for you to remember that cocksuckers need to breathe. Or maybe they just usually do, as Blue shows no sign of needing even the shortest break from serving as your private cock-sheath.";
	say "     The pleasure of having what amounts to be a completely insatiable cum-slut as a partner drives you to make the most of it, really pounding Blue's throat deep in one moment, then resting your hard length inside the tight confines of [PosAdj of Blue Speaker] neck for longer than a normal human could have let you. All in all, face-fucking Blue is an amazing experience, pushing your arousal to new heights in short order. It doesn't take long before a familiar tingle builds in your balls, and you put both hands on Blue's head to ram your whole length into [PosAdj of player] mouth. Balls slapping against the goo [BlueDesignator]'s chin, you let out a grunt and start to unload into Blue, with spurt after spurt of creamy cum jetting into the aquamarine mass of [PosAdj of Blue Speaker] body. While you are still humping back and forth and shooting more cum into the depths of Blue's throat, you are strangely fascinated by seeing what happens to each swallowed glob of cum inside [ObjectPro of Blue Speaker].";
	say "     The splashes of your seed are white and milky in the goo [BlueDesignator]'s interior, staying bunched up for a little while before their edges get more and more diffuse. The blue goo of your friend takes on some of the opaqueness that the cum brings with it, before eventually becoming fully transparent again, and at the same time much more intensely blue. As more and more of your 'donation' is pumped into [ObjectPro of Blue Speaker], Blue almost seems to glow from the inside out, so intense gets the color of [PosAdj of Blue Speaker] infused goo. 'Mmmh, you taste amazing,' [SubjectPro of Blue Speaker] says with an ecstatic smile on ";
	if HP of Blue Speaker is 2: [female]
		say "her feminine face, smacking her full lips contently after finally pulling off your shaft. 'Thank you, this is just what I needed. Oooh, I almost feel giddy from all the cum you gave me. I really must share this with the rest of the Blue!' With that said, she stands up and blows you a kiss, then saunters over to the goo-filled office, strolling right into the aquamarine mass and merging with it.";
	else if HP of Blue Speaker is 1: [male]
		say "his masculine face, smacking his lips contently and giving you a broad grin after finally pulling off your shaft. 'Thank you, this is just what I needed. Oooh, I almost feel giddy from all the cum you gave me. I really must share this with the rest of the Blue!' With that said, he stands up and thumps his chest in a kind of salute, then struts over to the goo-filled office, walking right into the aquamarine mass and merging with it.";
	else: [neuter]
		say "its androgynous face, smacking its lips in satisfaction after finally pulling off your shaft. 'Thank you, this is just what I needed. Oooh, I almost feel giddy from all the cum you gave me. I really must share this with the rest of the Blue!' With that said, it stands up and gives you a thumbs up before strolling over to the goo-filled office and walking right into the aquamarine mass to merge with it.";
	WaitLineBreak;
	say "     Satisfied about having both gotten your rocks off and also helping the goo people, you watch Blue go and join with the collective of [PosAdj of Blue Speaker] people. Streaks of more vibrant blue start diffusing through the large mass of blue goo in the office, spreading the nourishment of your seed throughout their unity. You can't help but grin as you [SelfDressCrotch], then stroll to the entrance of the goo people's refuge. The Blue Guardian lets you pass without commment, apparently distracted by his desire to join the others for their communion.";
	infect "Blue Goo";

to say BlueSex3: [pussy fuck for Blue]
	say "     ...";

to say BlueSex4: [ass fuck for Blue]
	say "     ...";

to say BlueSex5: [ass fucked by Blue]
	say "     ...";

to say BlueSex6: [pussy fucked by Blue]
	say "     ...";
	
Section 3 - Infection 

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Blue Goo";
	now attack entry is "<Noncombat Infection>";
	now defeated entry is "<Noncombat Infection>";
	now victory entry is "<Noncombat Infection>";
	now desc entry is "<Noncombat Infection>";
	now face entry is "fairly human-looking, although it has a little bit of an indistinct, unfinished appearance without too many fine details";
	now body entry is "human-like, but very flexible and 'squishy'"; 
	now skin entry is "[one of]jellied[or]gelatin-like[or]translucent[at random] blue"; 
	now tail entry is ""; 
	now cock entry is "[one of]partially fluid[or]flexibly semi-solid[or]jellied[at random]";
	now face change entry is "it is reshaped into human proportions";
	now body change entry is "it changes to flow into a humanoid shape. Strangely, the feeling of being 'squishy' inside never really goes away even after your current form stabilizes";
	now skin change entry is "a ripple of tingles rushes through your entire body as you sink towards the ground, then rise again, wobbling along the way. A glance at a hand shows that you can see right through your now jello-like flesh, aquamarine blue in colour";
	now ass change entry is "you get an odd feeling, and it takes on normal human shape";
	now cock change entry is "your [cock size desc of player] dick gives a powerful lurch as strange fluid rushes up into it, making it swell a moment before the former colour drains, leaving the new, somewhat flexible, gelatin behind. A squeeze confirms that it is still quite solid enough to get the job done";
	now str entry is 8;
	now dex entry is 10; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 10;
	now int entry is 10;
	now cha entry is 5;
	now sex entry is "Nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 30;
	now lev entry is 2; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 6; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of breasts the infection will give a player. ]
	now breast size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 20; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 20; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "flowing"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "gelatinous"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


Blue ends here.
