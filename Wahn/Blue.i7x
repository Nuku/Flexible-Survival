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

Section 1 - Location

Goo Refuge is North of Haven Community Center.
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

Blue Speaker is a man.
The description of Blue Speaker is "[Blue SpeakerDesc]".
The conversation of Blue Speaker is { "<This is nothing but a placeholder!>" }.
The scent of Blue Speaker is "     The aquamarine goo person smells somewhat fruity, making you wonder if the goo would taste that way too.".

when play begins:
	SetNeutralPronouns for Blue Speaker;

to say Blue SpeakerDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Blue Speaker] <- DEBUG[line break]";
	if HP of Blue Speaker is 0:
		say "     Blue is a humanoid goo person that usually stands about five feet tall. It has a totally androgynous appearance, making it impossible to tell if Blue is a male or female - though maybe there isn't really a difference when you body consists of malleable, semisolid goop. Never really straying far from you, it seems that this being is the designated person to talk to.";
	else if HP of Blue Speaker is 1:
		say "     Blue is a humanoid goo person that usually stands about five feet tall. He has taken on a more masculine appearance, with a handsome face, shoulder-length hair and actual abs molded out of the transparent aquamarine goop that forms his body. This being is certainly eager and ready to make his visitors comfortable, up to and including molding his body to match a specific form. Never really straying far from you, it seems that he is the designated person to talk to among his kind.";
	else if HP of Blue Speaker is 2:
		say "     Blue is a humanoid goo person that usually stands about five feet tall. She has taken on a more feminine appearance, with a pretty face, shoulder-length hair and nice, perky breasts molded out of the transparent aquamarine goop that forms her body. This being is certainly eager and ready to make her visitors comfortable, up to and including molding her body to match a specific form. Never really straying far from you, it seems that she is the designated person to talk to among her kind.";

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

to say BlueTalk_Speaker:
	say "     As you ask about [ObjectPro of Blue Speaker] personally, Blue smiles and says, 'I am the collective eagerness to meet new people and talk. I am part of...' Blue scrunches [PosAdj of Blue Speaker] brow, mulling it over for a few seconds, then continues to say, 'Rafael, Josh, Jo, Cheryl, Clint, Lucia and Glenn. All of me love to chat. Which is why the others prefer to let me do it.' Giving a good-natured chuckle, Blue shrugs and looks around to the various goo people, then leans in conspiratorially. 'Clint, Jo and Rafael also like to do ']other['] things with special friends that I meet, which is why the Blue Guardian prefers me to stay inside. And I do, for the most part. We're all Blue, after all, and we have to live with each other.' Crossing [PosAdj of Blue Speaker] arms, Blue then gives you a wink and adds, 'By the way, if you'd prefer to see me in another shape, just let me know. The goo is nothing if not shapeable...' With that, Blue morphs [PosAdj of Blue Speaker] body through several variants of masculinity, femininity and genderlessness before returning to the shape you know.";

to say BlueTalk_MaleForm:
	say "     'My pleasure,' Blue replies, instantly reshaping [PosAdj of Blue Speaker] body to appear broad-shouldered and muscular, featuring a chiseled face and shoulder-length hair. He checks himself out for a little moment, making sure he didn't forget anything, then playfully flexes the bulges of his goo biceps.";
	SetMalePronouns for Blue Speaker;
	now libido of Blue Speaker is 2;

to say BlueTalk_FemaleForm:
	say "     'My pleasure,' Blue replies, instantly reshaping [PosAdj of Blue Speaker] body to appear more curvaceous, with a set of perky breasts and shapely buns that form an hourglass figure. She has a rather pretty face and shoulder-length hair, too. Checking herself out for a little moment, Blue makes sure she didn't forget anything, then smiles at you and wiggles her breasts to jiggle left and right.";
	SetFemalePronouns for Blue Speaker;
	now libido of Blue Speaker is 1;

to say BlueTalk_NeuterForm:
	say "     'If that's what you prefer,' Blue replies, instantly reshaping [PosAdj of Blue Speaker] body to appear in a genderless humanoid form. With the arms, legs and torso appearing relatively undefined, the goo person can barely be differentiated from the various others in the room.";
	SetNeuterPronouns for Blue Speaker;
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
	[]
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

to say BlueSex1:
	say "     ...";

to say BlueSex2:
	say "     ...";

to say BlueSex3:
	say "     ...";

to say BlueSex4:
	say "     ...";

to say BlueSex5:
	say "     ...";

to say BlueSex6:
	say "     ...";

Blue ends here.
