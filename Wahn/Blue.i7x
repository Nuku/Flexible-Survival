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
	say "     You are standing in a large room that holds a number of desks, once the workplaces of the travel agency's accounting staff, as well as three larger offices partitioned off by glass walls. One of the offices is translucent with a shifting aquamarine color, as it is literally filled to the ceiling with light-blue colored goo. A number of oddly uniform goo people are always present, with some regularly coming and going from the goo-filled office, just stepping out of the mass or melding into it when walking into the room. Interestingly, the humanoid creatures refrain from interacting with you, instead pointing out that you should talk to their Speaker.";

instead of going to Goo Refuge:
	if HP of Florence > 2:
		say "     Walking towards the goo people's domain, you give a nod to the large one that is guarding the doorway, who steps out of the way after a moment of hesitation. Passing them, you step into the administration office of the large travel agency. There are a number of other goo people nearby, though they mostly ignore you. Only one walks up to you in a direct way, stopping a few steps away. 'Welcome to our little refuge. I am the Blue Speaker. How can we help you?'";
		move player to Goo Refuge;
	else:
		say "     Walking towards the goo people's domain, you reach a quite large, aquamarine guard who stands in the doorway, blocking it. You can see other goo people in the room beyond, visible past (and through) the guardian. 'For your own safety, please leave,' the androgynous-looking being says with a stoic expression on his or her face. Apparently, no amount of talking to the guard gets you anywhere either, forcing you to concede after trying for a while. You step away again from the open, yet blocked, door.";
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
		say "     Blue is a humanoid goo person that usually stands about five feet tall. It has a totally androgynous appearance, making it impossible to tell if Blue is a male or female - though maybe there isn't really a difference when your body consists of malleable, semi-solid goop. Never really straying far from you, it seems that this being is the designated person to talk to.";
	else if libido of Blue Speaker is 1: [female]
		say "     Blue is a humanoid goo person that usually stands about five feet tall. She has taken on a more feminine appearance, with a pretty face, shoulder-length hair, and nice, perky breasts molded out of the transparent aquamarine goop that forms her body. This being is certainly eager and ready to make her visitors comfortable, up to and including molding her body to match a specific form. Never really straying far from you, it seems that she is the designated person to talk to among her kind.";
	else if libido of Blue Speaker is 2: [male]
		say "     Blue is a humanoid goo person that usually stands about five feet tall. He has taken on a more masculine appearance, with a handsome face, shoulder-length hair, and actual abs molded out of the transparent aquamarine goop that forms his body. This being is certainly eager and ready to make his visitors comfortable, up to and including molding his body to match a specific form. Never really straying far from you, it seems that he is the designated person to talk to among his kind.";

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
		now description entry is "Let the goo person reshape themself";
	[]
	if HP of Blue Speaker > 1 and libido of Blue Speaker is not 1:
		choose a blank row in table of fucking options;
		now title entry is "Ask Blue to appear more feminine";
		now sortorder entry is 5;
		now description entry is "Let the goo person reshape themself";
	[]
	if HP of Blue Speaker > 1 and libido of Blue Speaker is not 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask Blue to appear more gender-neutral";
		now sortorder entry is 6;
		now description entry is "Let the goo person reshape themself";
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
			if player consents:
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
	say "     As you ask about [ObjectPro of Blue Speaker] personally, Blue smiles and says, 'I am the collective eagerness to meet new people and talk. I am part of...' Blue scrunches [PosAdj of Blue Speaker] brow, mulling it over for a few seconds, then continues to say, 'Rafael, Josh, Jo, Cheryl, Clint, Lucia, and Glenn. All of me love to chat, which is why the others prefer to let me do it.' Giving a good-natured chuckle, Blue shrugs and looks around to the various goo people, then leans in conspiratorially. 'Clint, Jo, and Rafael also like to do [']other['] things with special friends that I meet, which is why the Blue Guardian prefers me to stay inside. And I do, for the most part. We're all Blue, after all, and we have to live with each other.' Crossing [PosAdj of Blue Speaker] arms, Blue then gives you a wink and adds, 'By the way, if you'd prefer to see me in another shape, just let me know. The goo is nothing if not shapeable...' With that, Blue morphs [PosAdj of Blue Speaker] body through several variants of masculinity, femininity, and genderlessness before returning to the shape you know.";
	if HP of Blue Speaker < 2:
		now HP of Blue Speaker is 2;

to say BlueTalk_MaleForm:
	say "     'My pleasure,' Blue replies, instantly reshaping [PosAdj of Blue Speaker] body to appear broad-shouldered and muscular, featuring a chiseled face and shoulder-length hair. He checks himself out for a little moment, making sure that he didn't forget anything, then playfully flexes the bulges of his goo biceps.";
	SetMalePronouns for Blue Speaker;
	now BlueDesignator is "man";
	now libido of Blue Speaker is 2;

to say BlueTalk_FemaleForm:
	say "     'My pleasure,' Blue replies, instantly reshaping [PosAdj of Blue Speaker] body to appear more curvaceous, with a set of perky breasts and shapely buns that form an hourglass figure. She has a rather pretty face and shoulder-length hair, too. Checking herself out for a little moment, Blue makes sure that she didn't forget anything, then smiles at you and wiggles her breasts to jiggle left and right.";
	SetFemalePronouns for Blue Speaker;
	now BlueDesignator is "woman";
	now libido of Blue Speaker is 1;

to say BlueTalk_NeuterForm:
	say "     'If that's what you prefer,' Blue replies, instantly reshaping [PosAdj of Blue Speaker] body to appear in a genderless humanoid form. With the arms, legs, and torso appearing relatively undefined, the goo person can barely be differentiated from the various others in the room.";
	SetNeutralPronouns for Blue Speaker;
	now BlueDesignator is "being";
	now libido of Blue Speaker is 0;

to say BlueTalk_Office:
	say "     As you ask about the goo-filled office, Blue explains, 'Many of our voices just prefer to stay safe and together, talking things through among the Blue. This is where they stay, and where all of us return from time to time to share ourselves. Others might become like us in body, but to truly be Blue, they would have to enter and share themselves.'";

to say BlueTalk_Cum:
	say "     As you ask about the goo people's physical needs, Blue nods to you. 'Yeah, it's true. As I'm sure the sisters told you, we require cum and other bodily fluids to sustain the Blue. It only makes sense, because... well, you can see that there isn't anything like a stomach inside of us.' Raising a hand, [SubjectPro of Blue Speaker] pokes the jiggly goo that makes up [PosAdj of Blue Speaker] humanoid form's midriff. 'Liquid or semisolid sustenance is just what we need, and we can absorb it with any part of our bodies. But of course, touching someone as they gave me their seed most of the time just brought a new voice into the Blue - which is why the Guardian mostly refuses to let me go out anymore. The sisters have been really nice about supplying our needs in a different way since that decision was made.' Looking at you, a teasing smile crosses Blue's face, and [SubjectPro of Blue Speaker] says with a wink, 'Now that you're in here with all of us though... wanna maybe give the Blue some love?'";

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
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "[']donate['] some cum";
		now sortorder entry is 1;
		now description entry is "Jerk off on [ObjectPro of Blue Speaker]";
	[]
	if (player is male ):
		choose a blank row in table of fucking options;
		now title entry is "Fuck Blue's mouth";
		now sortorder entry is 2;
		now description entry is "Give the goo person a direct cum injection";
	[
	if (player is male and libido of Blue Speaker is 1): [female shape]
		choose a blank row in table of fucking options;
		now title entry is "Fuck Blue's pussy";
		now sortorder entry is 3;
		now description entry is "Pound the goo person's pussy";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Blue's ass";
		now sortorder entry is 4;
		now description entry is "Pound the goo person's ass";
	[]
	if libido of Blue Speaker is 2 and player is not neuter: [male shape and gendered player]
		choose a blank row in table of fucking options;
		now title entry is "Let Blue fuck your ass";
		now sortorder entry is 5;
		now description entry is "Let the goo person fuck your ass";
	[]
	if (player is female and libido of Blue Speaker is 2): [male shape]
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
				if nam is "[']donate['] some cum":
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
			if player consents:
				now sextablerun is 1;
				say "     You step back from the aquamarine goo person, shaking your head slightly as [SubjectPro of Blue Speaker] gives you a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say BlueSex1: [jerk off on Blue]
	say "     As you tell Blue that you want to [']donate['] some of your cum to sustain [ObjectPro of Blue Speaker] and [PosAdj of Blue Speaker] people, the aquamarine goo person smiles eagerly at you and raises a hand to [PosAdj of Blue Speaker] chest. 'I had so hoped that you'd say that. It's so much better fresh from an eager partner,' Blue tells you with a naughty wink, tracing one blue finger over ";
	if HP of Blue Speaker is 1: [female]
		say "the pleasantly round swell of her breasts, making them wiggle just for you. ";
	else if HP of Blue Speaker is 2: [male]
		say "the valleys and bumps of his flawless abs. ";
	else: [neuter]
		say "the flat front of its vaguely human torso, creating a streak of ripples through the goo. ";
	say "'I knew that you didn't just want to cum in a cup and give it to the Blue. You wouldn't have come here just for that.' With that said, the smiling goo [BlueDesignator] kneels down in front of you. ";
	if HP of Blue Speaker is 1: [female]
		say "Blue cups her full breasts and squeezes them as she looks up at you, opening her mouth to show off her dripping blue tongue. ";
	else if HP of Blue Speaker is 2: [male]
		say "Blue thumps his pecs with a fist, then pinches his nipples enticingly while he looks up at you, opening his mouth to show off his dripping blue tongue. ";
	else: [neuter]
		say "Blue pinches its protruding nipples enticingly while it looks up at you, opening its mouth to show off its dripping blue tongue. ";
	say "Enticed by [PosAdj of Blue Speaker] wanton display, you happily [SelfStripCrotch], then wrap your hand around your [cock of player] shaft.";
	say "     'What a nice piece of meat you have there[if player is not defaultnamed], [name of player][else], my friend[end if],' Blue says in a yearning tone, seemingly ready to engulf your cock at a moment's notice. The sound of the Blue Guardian clearing their throat seems to be the only thing that holds the thirsty goo [BlueDesignator] back, instead making [ObjectPro of Blue Speaker] settle on [PosAdj of Blue Speaker] haunches to wait. Stroking the length of your [cock of player] erection, you step a little closer to Blue and tease [ObjectPro of Blue Speaker] with the sight, enjoying the way that your eager partner follows every little movement of your dickhead with [PosAdj of Blue Speaker] gaze. [SubjectProCap of Blue Speaker] licks [PosAdj of Blue Speaker] lips with anticipation as pre forms at the tip of your cock, the goo's lascivious gaze spurring your arousal to new heights. Over time, the pace of your pumping increases, shocks of pleasure coursing through your loins as the goo's lips part to pant and plead for your essence.";
	WaitLineBreak;
	say "     'Yeah, that's it, baby. You want to - you need to - shoot that load you've got building up. I want you to come all over me!' Blue gasps out in an eager and breathless voice, leaning forward to almost touch you. 'Yes, do it!' the goo [BlueDesignator] calls out, then stretches [PosAdj of Blue Speaker] blue tongue out as far as [SubjectPro of Blue Speaker] can, ready to receive your seed. The lascivious offer drives you right over the edge, and your body tenses up as the first spurt of cum streaks over [PosAdj of Blue Speaker] blue face, spoiling your aim in the moment of passion. Blue reacts right away, getting [PosAdj of Blue Speaker] head properly aligned to catch the next rope in [PosAdj of Blue Speaker] open mouth, humming contently as [SubjectPro of Blue Speaker] swallows each thick, creamy blast in rapid succession.";
	say "     While you empty your balls into Blue's open mouth, your attention is drawn to the spectacle of your seed spreading through [PosAdj of Blue Speaker] body, the white and milky substance diffusing like smoke. The blue goo of your friend takes on some of the opaqueness that your cum brings with it, and [SubjectPro of Blue Speaker] quivers with desire as [SubjectPro of Blue Speaker] swallows more and more of your [']donation[']. The material eventually becomes fully transparent again, though you could swear that it's also more intensely blue now, [PosAdj of Blue Speaker] cum-infused form so bright that it almost seems to glow. 'Mmmh, you taste amazing,' [SubjectPro of Blue Speaker] says with an ecstatic smile on ";
	if HP of Blue Speaker is 1: [female]
		say "her feminine face, smacking her full lips contently. 'Thank you, this is just what I needed. Oooh, I almost feel giddy from all that cum that you gave me. I really must share this with the rest of the Blue!' With that said, she stands up and blows you a kiss, then saunters over to the goo-filled office, strolling right into the aquamarine mass and merging with it.";
	else if HP of Blue Speaker is 2: [male]
		say "his masculine face, smacking his lips contently and giving you a broad grin. 'Thank you, this is just what I needed. Oooh, I almost feel giddy from all that cum that you gave me. I really must share this with the rest of the Blue!' With that said, he stands up and thumps his chest in a kind of salute, then struts over to the goo-filled office, walking right into the aquamarine mass and merging with it.";
	else: [neuter]
		say "its androgynous face, smacking its lips contentedly. 'Thank you, this is just what I needed. Oooh, I almost feel giddy from all that cum that you gave me. I really must share this with the rest of the Blue!' With that said, it stands up and gives you a thumbs up before strolling over to the goo-filled office and walking right into the aquamarine mass to merge with it.";
	WaitLineBreak;
	say "     Satisfied now that you've gotten your rocks off and helped the goo people, you watch Blue join with the collective of [PosAdj of Blue Speaker] people. Streaks of more vibrant blue start diffusing through the large mass of blue goo in the office, spreading the nourishment of your seed throughout their unity. You can't help but grin as you [SelfDressCrotch], then stroll to the entrance of the goo refuge. The Blue Guardian lets you pass without comment, apparently distracted by his desire to join the others for their communion.";

to say BlueSex2: [mouth fuck for Blue]
	say "     As you tell Blue that you want to [']donate['] some of your cum to sustain [ObjectPro of Blue Speaker] and [PosAdj of Blue Speaker] people, the aquamarine goo person smiles eagerly at you and raises a hand to [PosAdj of Blue Speaker] chest. 'I had so hoped that you'd say that. It's so much better fresh from an eager partner,' Blue tells you with a naughty wink, tracing one blue finger over ";
	if HP of Blue Speaker is 1: [female]
		say "the pleasantly round swell of her breasts, making them wiggle just for you. ";
	else if HP of Blue Speaker is 2: [male]
		say "the valleys and bumps of his flawless abs. ";
	else: [neuter]
		say "the flat front of its vaguely human torso, creating a streak of ripples through the goo. ";
	say "'I knew that you didn't just want to cum in a cup and give it to the Blue. You wouldn't have come here just for that.' With that said, the smiling goo [BlueDesignator] kneels down in front of you. ";
	if HP of Blue Speaker is 1: [female]
		say "Blue cups her full breasts and squeezes them as she looks up at you, opening her mouth to show off her dripping blue tongue. ";
	else if HP of Blue Speaker is 2: [male]
		say "Blue thumps his pecs with a fist, then pinches his nipples enticingly while he looks up at you, opening his mouth to show off his dripping blue tongue. ";
	else: [neuter]
		say "Blue pinches its protruding nipples enticingly while it looks up at you, opening its mouth to show off its dripping blue tongue. ";
	say "Enticed by [PosAdj of Blue Speaker] wanton display, you happily [SelfStripCrotch], then wrap your hand around your [cock of player] shaft.";
	say "     'What a nice piece of meat you have there[if player is not defaultnamed], [name of player][else], my friend[end if],' Blue says in a yearning tone, seemingly ready to engulf your cock at a moment's notice. The sound of the Blue Guardian clearing their throat seems to be the only thing holding the thirsty goo [BlueDesignator] back, but you're having none of that and quickly grab [ObjectPro of Blue Speaker] by the back of the neck to ram your [cock of player] rod into [PosAdj of Blue Speaker] mouth. Given the suddenness of your thrust, Blue doesn't actually have the time to form a throat within [PosAdj of Blue Speaker] gooey mass, meaning that you're just fucking the wet and squishy innards of [PosAdj of Blue Speaker] head for a couple seconds until [SubjectPro of Blue Speaker] can adjust to give you a more human-like experience.";
	WaitLineBreak;
	say "     The shape of a tight and gripping throat forms around your hard shaft. It looks odd, but also fascinating, to literally see the cavity inside of Blue's body, extending just far enough to take your deepest thrusts. Your partner is definitely quite resourceful with that malleable body of [PosPro of Blue Speaker]. Eager sounds come from Blue as [SubjectPro of Blue Speaker] takes your face-fucking with obvious joy, and [SubjectPro of Blue Speaker] even wraps [PosAdj of Blue Speaker] arms around your hips to pull you in for deeper thrusts. Ramming into [ObjectPro of Blue Speaker] again and again, you are so focused on the pleasure of [PosAdj of Blue Speaker] suckling throat that your mind empties of all but the need to drive yourself as far as you can within that smooth, exotic channel. While most partners would go blue in the face from your fervent pounding, the animate goo has no such worries, gingerly humming around your cock as [PosAdj of Blue Speaker] insides ripple and flow over every sensitive nerve.";
	say "     The pleasure of having what amounts to a completely insatiable cum-slut as a partner drives you to really make the most of the amazing experience. You slam home into Blue's throat, then rest your hard length inside of the tight confines of [PosAdj of Blue Speaker] neck for longer than any human could withstand. The undulating pressure sliding over every inch of your manhood drives your pleasure to new heights, and it's not long before a familiar tingle builds in your balls. You wrap your hands around Blue's head to ram your whole length into [PosAdj of player] mouth, your orbs slapping against the goo [BlueDesignator]'s chin. Sucking in a sharp breath, you ride the crest of pleasure for a moment before unloading into Blue, spurt after spurt of creamy cum blasting into the aquamarine mass of [PosAdj of Blue Speaker] body.";
	WaitLineBreak;
	say "     While you saw back and forth in Blue's welcoming throat, your attention is drawn to the spectacle of your seed spreading through [PosAdj of Blue Speaker] body, the white and milky substance diffusing like smoke. The blue goo of your friend takes on some of the opaqueness that your cum brings with it, and [SubjectPro of Blue Speaker] quivers with desire as [SubjectPro of Blue Speaker] swallows more and more of your [']donation[']. The material eventually becomes fully transparent again, though you could swear that it's also more intensely blue now, [PosAdj of Blue Speaker] cum-infused form so bright that it almost seems to glow. 'Mmmh, you taste amazing,' [SubjectPro of Blue Speaker] says with an ecstatic smile on ";
	if HP of Blue Speaker is 1: [female]
		say "her feminine face, smacking her full lips contently after finally pulling off your shaft. 'Thank you, this is just what I needed. Oooh, I almost feel giddy from all that cum that you gave me. I really must share this with the rest of the Blue!' With that said, she stands up and blows you a kiss, then saunters over to the goo-filled office, strolling right into the aquamarine mass and merging with it.";
	else if HP of Blue Speaker is 2: [male]
		say "his masculine face, smacking his lips contently and giving you a broad grin after finally pulling off your shaft. 'Thank you, this is just what I needed. Oooh, I almost feel giddy from all that cum that you gave me. I really must share this with the rest of the Blue!' With that said, he stands up and thumps his chest in a kind of salute, then struts over to the goo-filled office, walking right into the aquamarine mass and merging with it.";
	else: [neuter]
		say "its androgynous face, smacking its lips contentedly after finally pulling off your shaft. 'Thank you, this is just what I needed. Oooh, I almost feel giddy from all that cum that you gave me. I really must share this with the rest of the Blue!' With that said, it stands up and gives you a thumbs up before strolling over to the goo-filled office and walking right into the aquamarine mass to merge with it.";
	say "     Satisfied now that you've gotten your rocks off and helped the goo people, you watch Blue join with the collective of [PosAdj of Blue Speaker] people. Streaks of more vibrant blue start diffusing through the large mass of blue goo in the office, spreading the nourishment of your seed throughout their unity. You can't help but grin as you [SelfDressCrotch], then stroll to the entrance of the goo refuge. The Blue Guardian lets you pass without comment, apparently distracted by his desire to join the others for their communion.";
	infect "Blue Goo";

to say BlueSex3: [pussy fuck for Blue]
	say "     As you tell Blue that you want to [']donate['] some of your cum to sustain her and her people, the aquamarine goo person smiles eagerly at you and raises a hand to her chest. 'I had so hoped that you'd say that. It's so much better fresh from an eager partner,' Blue tells you with a naughty wink, tracing one blue finger over the pleasantly round swell of her breasts, making them wiggle just for you. 'I knew that you didn't just want to cum in a cup and give it to the Blue. You wouldn't have come here just for that.' The smiling goo woman saunters over to one of the many desks in this room, lifting herself up to sit on it and spreading her legs in a rather enticing display. Using both hands to smoosh her breasts together and play with their nipples, she gives you an inviting smile and then calls out, 'Come and take me!' Enticed by her wanton display, you happily [SelfStripCrotch], then wrap your hand around your [cock of player] shaft.";
	say "     'What a nice piece of meat you have there[if player is not defaultnamed], [name of player][else], my friend[end if],' Blue says in a yearning tone as she watches you walk closer. The Blue Guardian clears their throat, showing some discontent at the thirsty goo woman's slutty behavior, but even though Blue falls silent, you're already in the mood for a nice fuck. After a few quick steps forward, you smack your hard, [cock of player] shaft against the nether lips she starts to mold out of the blue goo of her crotch. Moaning eagerly, Blue moves a hand to the freshly formed clit at the top of her pussy, then spreads her folds, allowing you to see the opening get deeper by the second. But aroused as you are, you just can't hold back for the process to conclude and quickly ram yourself into your partner's body. Given the suddenness of your thrust, Blue hasn't actually made any of the deeper internal structures to take you, meaning that you're just fucking the wet and squishy innards of her middle for a couple seconds until she can adjust to give you a more human-like experience.";
	WaitLineBreak;
	say "     The shape of a yielding, yet still quite tight and gripping pussy forms around your hard shaft. It looks odd, but also fascinating, to literally see the cavity inside of Blue's body, at first extending just far enough to take your deepest thrusts. She doesn't stop just there though, and before long, you can see the shape of a cervix and a goo 'womb'. Your partner is definitely quite resourceful with that malleable body of hers. Eager sounds come from Blue as she takes your thrusts with obvious joy, and she even wraps her legs around your hips to pull you in for deeper thrusts. Ramming into her again and again, you wrap your arms around Blue to steady yourself, each thrust sending an echo of the impact through Blue's whole body. Your partner releases pleasured moans and gasps throughout, making it clear that she's enjoying being fucked so roughly.";
	say "     The pleasure of having what amounts to a completely insatiable cum-slut as a partner drives you to really make the most of the amazing experience. Taking a break from your zealous pounding, you rest your hard length inside of the tight confines of her sex, reveling in the fact that you can actually see just how deep you are inside of her: just half an inch from the opening to her womb at the deepest penetration. The undulating pressure sliding over every inch of your manhood drives your pleasure to new heights, and it's not long before a familiar tingle builds in your balls. You move your mouth next to her ear and moan to Blue that you'll breed her now. Balls slapping wetly against the goo woman's crotch, you let out a grunt and start to unload into Blue, spurt after spurt of creamy cum blasting against the cervix that you can so clearly see inside of her, with each spurt increasing the pressure against that chokepoint.";
	WaitLineBreak;
	say "     While you saw back and forth in the depths of Blue's pussy, your attention is drawn to the spectacle of your seed finally overwhelming the ring of her cervix and gushing into Blue's womb. The white and milky substance sloshes around in her rippling cavity, churned up by the continuous thrusts that you are giving your partner. Blue bites her lip as you continue to fill her up, a look of concentration on her face, soon followed by an ecstatic moan and a tremble going through the whole mass of your fuck buddy. 'Couldn't hold back anymore,' she gasps out as the white mass of your seed starts to diffuse like smoke into her insides. The blue goo of your friend takes on some of the opaqueness that your cum brings with it, and she quivers with desire as she absorbs more and more of your [']donation[']. The material eventually becomes fully transparent again, though you could swear that it's also more intensely blue now, her cum-infused form now being so bright that it almost seems to glow.";
	say "     'Mmmh, I can feel you inside of me. It's soo goood,' she says with an ecstatic smile on her feminine face, looking at you and moaning with every new spurt until they eventually ebb off and you're done. 'Thank you, this is just what I needed. Oooh, I almost feel giddy from all that cum that you gave me. I really must share this with the rest of the Blue!' With that said, she pulls off of your slowly softening shaft and turns around to kiss you, then saunters over to the goo-filled office, strolling right into the aquamarine mass and merging with it. Satisfied now that you've gotten your rocks off and helped the goo people, you watch Blue join with the collective of her people. Streaks of more vibrant blue start diffusing through the large mass of blue goo in the office, spreading the nourishment of your seed throughout their unity. You can't help but grin as you [SelfDressCrotch], then stroll to the entrance of the goo refuge. The Blue Guardian lets you pass without comment, apparently distracted by his desire to join the others for their communion.";
	infect "Blue Goo";

to say BlueSex4: [ass fuck for Blue]
	say "     As you tell Blue that you want to [']donate['] some of your cum to sustain [ObjectPro of Blue Speaker] and [PosAdj of Blue Speaker] people, the aquamarine goo person smiles eagerly at you and raises a hand to [PosAdj of Blue Speaker] chest. 'I had so hoped that you'd say that. It's so much better fresh from an eager partner,' Blue tells you with a naughty wink, tracing one blue finger over ";
	if HP of Blue Speaker is 1: [female]
		say "the pleasantly round swell of her breasts, making them wiggle just for you. ";
	else if HP of Blue Speaker is 2: [male]
		say "the valleys and bumps of his flawless abs. ";
	else: [neuter]
		say "the flat front of its vaguely human torso, creating a streak of ripples through the goo. ";
	say "'I knew that you didn't just want to cum in a cup and give it to the Blue. You wouldn't have come here just for that.' The smiling goo [BlueDesignator] saunters over to one of the many desks in this room, bending over it to present [PosAdj of Blue Speaker] ass in a rather enticing display. Reaching back with both hands to grab the rounded curves of [PosAdj of Blue Speaker] behind, Blue spreads them to show off the cleave of [PosAdj of Blue Speaker] ass, then calls out, 'Come and take me!' Enticed by [PosAdj of Blue Speaker] wanton display, you happily [SelfStripCrotch], then wrap your hand around your [cock of player] shaft.";
	say "     'What a nice piece of meat you have there[if player is not defaultnamed], [name of player][else], my friend[end if],' Blue says in a yearning tone as [SubjectPro of Blue Speaker] looks over [PosAdj of Blue Speaker] shoulder at you. The Blue Guardian clears their throat, showing some discontent at the thirsty goo [BlueDesignator]'s slutty behavior, but even though Blue falls silent, you're already in the mood for a nice fuck. After a few quick steps forward, you smack your hard, [cock of player] shaft against the wet crack so eagerly presented, making Blue's ass wiggle even more. Moaning eagerly, Blue grinds back against your hips. When you see the details of a wrinkled pucker start to take form from the mass of aquamarine goo, nothing can hold you back, and you ram yourself into your partner's body. Given the suddenness of your thrust, Blue doesn't actually have the time to form any kind of internal structure to take you, meaning that you're just fucking the wet and squishy innards of [PosAdj of Blue Speaker] middle for a couple seconds until [SubjectPro of Blue Speaker] can adjust to give you a more human-like experience.";
	WaitLineBreak;
	say "     The shape of a yielding, yet still quite tight and gripping asshole forms around your hard shaft. It looks odd, but also fascinating, to literally see the cavity inside of Blue's body, extending just far enough to take your deepest thrusts. Your partner is definitely quite resourceful with that malleable body of [PosAdj of Blue Speaker]. Eager sounds come from Blue as [SubjectPro of Blue Speaker] takes your thrusts with obvious joy, and [SubjectPro of Blue Speaker] even wraps [PosAdj of Blue Speaker] arms around your hips to pull you in for deeper thrusts. Ramming into [ObjectPro of Blue Speaker] again and again, you wrap your arms around [ObjectPro of Blue Speaker] from behind to steady yourself, each thrust sending an echo of the impact through Blue's whole body. Your partner releases pleasured moans and gasps throughout, making it clear that [SubjectPro of Blue Speaker]'s enjoying being fucked so roughly.";
	say "     The pleasure of having what amounts to a completely insatiable cum-slut as a partner drives you to really make the most of the amazing experience. Taking a break from your zealous pounding, you rest your hard length inside of the tight confines of [PosAdj of Blue Speaker] asshole, reveling in the fact that you can actually see just how deep you are inside of [ObjectPro of Blue Speaker]. The undulating pressure sliding over every inch of your manhood drives your pleasure to new heights, and it's not long before a familiar tingle builds in your balls. You pull Blue's upper body tight against your chest to moan into [PosAdj of Blue Speaker] ear that you'll breed [ObjectPro of Blue Speaker] now. Balls slapping wetly against the goo [BlueDesignator]'s rear, you let out a grunt and start to unload into Blue, spurt after spurt of creamy cum blasting into the aquamarine mass of [PosAdj of Blue Speaker] body.";
	WaitLineBreak;
	say "     While you saw back and forth in the depths of Blue's asshole, your attention is drawn to the spectacle of your seed spreading through [PosAdj of Blue Speaker] body, the white and milky substance diffusing like smoke. The blue goo of your friend takes on some of the opaqueness that your cum brings with it, and [SubjectPro of Blue Speaker] quivers with desire as [SubjectPro of Blue Speaker] gets filled with more and more of your [']donation[']. The material eventually becomes fully transparent again, though you could swear that it's also more intensely blue now, [PosAdj of Blue Speaker] cum-infused form now being so bright that it almost seems to glow. 'Mmmh, I can feel you inside of me. It's soo goood,' [SubjectPro of Blue Speaker] says with an ecstatic smile on ";
	if HP of Blue Speaker is 1: [female]
		say "her feminine face, looking at you with her head turned around and moaning with every spurt until they eventually ebb off and you're done. 'Thank you, this is just what I needed. Oooh, I almost feel giddy from all that cum that you gave me. I really must share this with the rest of the Blue!' With that said, she pulls off of your slowly softening shaft and turns around to kiss you, then saunters over to the goo-filled office, strolling right into the aquamarine mass and merging with it.";
	else if HP of Blue Speaker is 2: [male]
		say "his masculine face, looking at you with his head turned around and grunting lustfully at every spurt until they eventually ebb off and you're done. 'Thank you, this is just what I needed. Oooh, I almost feel giddy from all that cum that you gave me. I really must share this with the rest of the Blue!' With that said, he pulls off your slowly softening shaft and thumps his chest in a kind of salute, then struts over to the goo-filled office, walking right into the aquamarine mass and merging with it.";
	else: [neuter]
		say "its androgynous face, looking at you with its head turned around and moaning with every spurt until they eventually ebb off and you're done. 'Thank you, this is just what I needed. Oooh, I almost feel giddy from all that cum that you gave me. I really must share this with the rest of the Blue!' With that said, it pulls off your slowly softening shaft and gives you a thumbs up before strolling over to the goo-filled office and walking right into the aquamarine mass to merge with it.";
	say "     Satisfied now that you've gotten your rocks off and helped the goo people, you watch Blue join with the collective of [PosAdj of Blue Speaker] people. Streaks of more vibrant blue start diffusing through the large mass of blue goo in the office, spreading the nourishment of your seed throughout their unity. You can't help but grin as you [SelfDressCrotch], then stroll to the entrance of the goo people's refuge. The Blue Guardian lets you pass without comment, apparently distracted by his desire to join the others for their communion.";
	infect "Blue Goo";

to say BlueSex5: [ass fucked by Blue]
	setmonster "Blue Goo";
	say "     As you tell Blue that you want to [']donate['] some of your [if player is male]cum[else]fluids[end if] to sustain him and his people, the aquamarine goo person smiles eagerly at you and raises a hand to his chest. 'I had so hoped that you'd say that. It's so much better fresh from an eager partner,' Blue tells you with a naughty wink, tracing one blue finger over the valleys and bumps of his flawless abs. 'I knew that you didn't just want to cum in a cup and give it to the Blue. You wouldn't have come here just for that.' With that said, the smiling goo man starts to kneel down in front of you - only to be stopped by your hand on his arm. His transparent brows rise, and an eager grin spreads over his face as you add that you want him to fuck your [']donation['] out of you, then slide a hand down to his crotch and give the slick length of his cock a squeeze. It throbs against your touch and quickly hardens, coming to stand erect and poking you in the stomach. Enticed by his obvious eagerness, you happily [SelfStripCrotch], then saunter over to one of the empty desks and lay back on it, your ass just at the edge of the table.";
	say "     'You need it bad, don't you [if player is not defaultnamed], [name of player][else], my friend[end if]?' Blue asks in a yearning tone, walking up to you with his hard cock leading the way. The sound of the Blue Guardian clearing their throat does little to distract the horny man from his target, and he crouches down in front of you, extending a moist, aquamarine-blue tongue to lick along your crack and prepare your hole for entry. ";
	if player is herm:
		say "Continuing to work his appendage upwards in teasing brushes against your skin, Blue quickly arrives at your pussy and teases its sensitive lips. Then the goo man kisses his way up along your hard shaft, eventually catching its head between his lips and suckling on it for a little while. 'I can hardly wait to taste your load,' he adds after pulling off of your dick with an intentionally loud pop, then gets up to stand between your legs. ";
	else if player is male:
		say "Continuing to work his appendage upwards in teasing brushes against your skin, Blue quickly arrives at your cock and kisses his way up along your hard shaft, eventually catching its head between his lips and suckling on it for a little while. 'I can hardly wait to taste your load,' he adds after pulling off of your dick with an intentionally loud pop, then gets up to stand between your legs. ";
	else if player is female:
		say "Continuing to work his appendage upwards in teasing brushes against your skin, Blue quickly arrives at your pussy and teases its sensitive lips. Then the goo man proceeds to push in deeper between them, wiggling his tongue inside of your body and going back and forth between that and lapping at your clit for a while. 'I hope that you're a squirter,' he adds with a naughty grin after eventually pulling away, then gets up to stand between your legs. ";
	say "Looking down, you see him stroking his long shaft, a transparent hand wrapped around as it slides along his length.";
	WaitLineBreak;
	say "     Blue moves his hips closer to your body and bends his cock down to line up with your asshole, then pushes in against your pucker. This is where it really pays off that you chose a gooey lover to fuck you, as his erection literally is as slick as it can be and slips into you with surprising ease. The aquamarine-blue man grunts in pleasure as the tight confines of your ass squeeze around his manhood. 'Fuck yeah, it feels great to be inside of you! The parts of me that were women are almost out of their minds right now,' Blue groans as he sinks himself deeper into your body, only stopping when his hips are flush against your buttocks. The goo person grins down at you with a teasing expression and adds, 'Now, let's see how you like me doing THIS!' Before you have a chance to ask what he is planning, you can already feel something changing in you, and the pleasantly full feeling of having Blue's cock up your chute is pushed to its extreme as his whole dick noticeably gains in girth.";
	say "     You writhe on the desk that you are lying on as Blue's goo cock throbs and pulses hard, first just expanding as if to try how much your inner walls stretch, then ebbing back to its original size and sending waves of expansion down its length. The long spear of his manhood ripples with movement against your sensitive insides, massaging you even though the goo man himself isn't moving, just pressing against your body and tracing his hands along your sides. 'Good, eh?' he asks, chuckling as you nod mid-moan. 'I so seldom have the opportunity to try this. Any of the Blue just meld with my body, you know. Solidity has its perks too, I tell you. But how about something more traditional now? I'll leave some ridges for you though.' A pleasant tingle goes through your insides as Blue's anal massage slowly ebbs off, followed by his shaft forming some more firm structures. He's now literally ribbed for your pleasure!";
	WaitLineBreak;
	say "     Blue's stroking hands now move to grip you by the hips, followed by him pulling his slick shaft out of your body. Your ass feels strangely empty for a few moments after the sudden exit of his shaft, its pucker squeezing shut and then opening again as if unsure what it should do now. Then just as it starts to pull tighter for another contraction, Blue's cock is back, hammering into you with a vengeance. His rapid thrust only stops when he's balls-deep inside of you again, hips slamming against your ass. Both transparent, blue arms holding you swell, and his hands grip on tight to prevent you from sliding back on the table's surface. Blue looks at you with an impish grin and says, 'Sorry for the delay. I had to have a little discussion with myself, and Clint convinced all of me that this was the way to go. You like a good hard fuck, right?' It is nothing but a rhetorical question, as the next pull back and hard thrust comes right away, never giving you a second to reply before you groan in lust at the next penetration.";
	say "     The horny goo man saws his shaft in and out of your body, driving you to new heights with his relentless lovemaking and really making good use of those ridges on his cock. The way that they tug at your hole with every retraction of his cock makes you all tingly inside in a very good way, and you can feel yourself getting quite close to orgasm. As you gasp out a warning to tell Blue this, the blue goo reacts by shifting his left hand to your shoulder so that he can keep a hold of you while his other hand ";
	if player is herm:
		say "wraps itself around your erection and strokes along its length. Having run out of hands, Blue forms a third appendage with a little concentration, this one more vague and tentacle-like since it lies outside of the human shapes that he is used to. It moves to stroke over your pussy, then slides its tip into it, exploring your depths.";
	else if player is male:
		say "wraps itself around your erection and strokes along its length. His fingers are slick and warm against your skin, rubbing you in just the right way to drive you crazy.";
	else if player is female:
		say "strokes over your pussy, then slips in two fingers and rubs your clit with the thumb. His touch is slick and warm against your skin, rubbing you in just the right way to drive you crazy.";
	WaitLineBreak;
	say "     Having made his preparations for your impending orgasm, Blue breaks out all of the stops and gets back to fucking you with hard thrusts, rubbing you at the same time. With the [if player is herm]triple[else]double[end if] stimulation, you are soon pushed right over the edge. Sucking in a sharp breath and writhing on the desk, you feel the orgasm crashing over you like a wave. Your gooey partner quickly ";
	if player is herm:
		say "clamps his hand over the head of your hard cock and bends the tentacle still deep inside of you to cover your clit too. This is just in time for the first spurts of cum and femcum. It looks kinda funny to see a glob of your seed create a bulge in the back of his hand, the force of its blast barely contained by the relatively thin layer of goo there. Then the milky-white fluid is redirected to flow up along the very center of Blue's forearm, making its way towards the main mass of his body. Your femcum meanwhile has less distance to go, just up a fairly short tentacle, creating a visible but fairly transparent flow there.";
	else if player is male:
		say "clamps his hand over the head of your hard cock, just in time for the first spurt of cum. It looks kinda funny to see a glob of your seed create a bulge in the back of his hand, the force of its blast barely contained by the relatively thin layer of goo there. Then the milky white fluid is redirected to flow up along the very center of Blue's forearm, making its way towards the main mass of his body.";
	else if player is female:
		say "clamps his hand even tighter to your crotch, its fingers wriggling inside your pussy to prolong your orgasm and milk you of your femcum. Squirts of it suffuse the appendage of your nonhuman partner, then are redirected to flow up along the very center of Blue's forearm, making their way towards the main mass of his body. ";
	say "     As delirious in pleasure as you are right now, your attention is still drawn to the spectacle of your [if player is herm]seed and femcum[else if player is male]seed[else]femcum[end if] spreading through Blue's body, the white and milky substance diffusing like smoke. The blue goo of your friend takes on some of the opaqueness that your fluids bring with it, and he quivers with desire as his body absorbs your [']donation[']. The material eventually becomes fully transparent again, though you could swear that it's also more intensely blue now, his infused form so bright that it almost seems to glow. 'Mmmh, you taste amazing,' Blue says with an ecstatic smile on his masculine face, followed by a primal grunt and an intense look filling his eyes. He doesn't waste any more time on words and instead just hammers into you hard and fast for a few more times, then lets out a burbling growl and explodes into your depths. No longer in any directed shape or anything, it is simply the raw goo of his being that floods your insides, full of desire to bond with you.";
	WaitLineBreak;
	say "     Between your own climax and the sudden anal invasion of what feels like quite a lot of Blue's goo, you tremble and thrash on the table, driven past the point of conscious thought. Your whole world is lust and pleasure, plus the weird feelings of having some living other thing gushing into your insides and stimulating who knows what spots. Only when your last spurts of [if player is herm]seed and femcum[else if player is male]seed[else]femcum[end if] ebb off does Blue eventually gain control of himself again, pulling the parts of his mass that invaded your person out again. A sheepish expression crosses his face, and he apologizes, 'Uhm, I... couldn't hold myself back there, if I got to be honest. Hope that it doesn't freak you out that I know you inside and out now.' The last sentence is added with a teasing grin and a wiggle of his eyebrows, making you chuckle.[mimpregchance]";
	say "     'Thank you, this was even more fun than I had expected, and I almost feel giddy from what you gave me. I really must share this with the rest of the Blue!' With that said, Blue pulls out of your ass [if player is female]and pussy[end if], then thumps his chest in a kind of salute and struts over to the goo-filled office, walking right into the aquamarine mass and merging with it. Satisfied now that you've gotten your rocks off and helped the goo people, you watch Blue join with the collective of his people. Streaks of more vibrant blue start diffusing through the large mass of blue goo in the office, spreading the nourishment of your seed throughout their unity. You can't help but grin as you [SelfDressCrotch], then stroll to the entrance of the goo refuge. The Blue Guardian lets you pass without comment, apparently distracted by his desire to join the others for their communion.";

to say BlueSex6: [pussy fucked by Blue]
	setmonster "Blue Goo";
	say "     As you tell Blue that you want to [']donate['] some of your [if player is male]cum[else]fluids[end if] to sustain him and his people, the aquamarine goo person smiles eagerly at you and raises a hand to his chest. 'I had so hoped that you'd say that. It's so much better fresh from an eager partner,' Blue tells you with a naughty wink, tracing one blue finger over the valleys and bumps of his flawless abs. 'I knew that you didn't just want to cum in a cup and give it to the Blue. You wouldn't have come here just for that.' With that said, the smiling goo man starts to kneel down in front of you - only to be stopped by your hand on his arm. His transparent brows rise, and an eager grin spreads over his face as you add that you want him to fuck your [']donation['] out of you, then slide a hand down to his crotch and give the slick length of his cock a squeeze. It throbs against your touch and quickly hardens, coming to stand erect and poking you in the stomach. Enticed by his obvious eagerness, you happily [SelfStripCrotch], then saunter over to one of the empty desks and lay back on it, your ass just at the edge of the table.";
	say "     'You need it bad, don't you [if player is not defaultnamed], [name of player][else], my friend[end if]?' Blue asks in a yearning tone, walking up to you with his hard cock leading the way. The sound of the Blue Guardian clearing their throat does little to distract the horny man from his target, and he crouches down in front of you, extending a moist, aquamarine-blue tongue to lick along the folds of your pussy. ";
	if player is male: [herm]
		say "Continuing to work his appendage upwards in teasing brushes against your skin, Blue quickly arrives at your cock and kisses his way up along your hard shaft, eventually catching its head between his lips and suckling on it for a little while. 'I can hardly wait to taste your load,' he adds after pulling off of your dick with an intentionally loud pop, then gets up to stand between your legs. ";
	else: [female]
		say "Soon continuing to work his appendage upwards in teasing brushes against your skin, Blue quickly arrives at your cock and kisses his way up along your hard shaft, eventually catching its head between his lips and suckling on it for a little while. 'I can hardly wait to taste your load,' he adds after pulling off of your dick with an intentionally loud pop, then gets up to stand between your legs. ";
	say "Looking down, you see him stroking his long shaft, a transparent hand wrapped around as it slides along his length.";
	WaitLineBreak;
	say "     Blue moves his hips closer to your body and bends his cock down to line up with your pussy, then pushes in between the nether lips. You're already wet and ready for his cock, moaning in pleasure as his slick shaft slips into you with ease. The aquamarine-blue man grunts in pleasure as the tight confines of your cave squeeze around his manhood. 'Fuck yeah, it feels great to be inside of you! The parts of me that were women are almost out of their minds right now,' Blue groans as he sinks himself deeper into your body, only stopping when his hips are flush against your buttocks. The goo person grins down at you with a teasing expression and adds, 'Now, let's see how you like me doing THIS!' Before you have a chance to ask what he is planning, you can already feel something changing in you - and the pleasantly full feeling of having Blue's cock in your pussy is pushed to its extreme as his whole dick noticeably gains in girth.";
	say "     You writhe on the desk that you are lying on as Blue's goo cock throbs and pulses hard, first just expanding as if to try how much your inner walls stretch, then ebbing back to its original size and sending waves of expansion down its length. The long spear of his manhood ripples with movement against your sensitive insides, massaging you even though the goo man himself isn't moving, just pressing against your body and tracing his hands along your sides. 'Good, eh?' he asks, chuckling as you nod mid-moan. 'I so seldom have the opportunity to try this. Any of the Blue just meld with my body, you know. Solidity has its perks too, I tell you. But how about something more traditional now? I'll leave some ridges for you though.' A pleasant tingle goes through your insides as Blue's vaginal massage slowly ebbs off, followed by his shaft forming some more firm structures. He's now literally ribbed for your pleasure!";
	WaitLineBreak;
	say "     Blue's stroking hands now move to grip you by the hips, followed by him pulling his slick shaft out of your body. Your pussy feels strangely empty for a few moments after the sudden exit of his shaft, gaping open slightly as if to beg him to return. Then just as you start to wonder what is going on, Blue's cock is back, hammering into you with a vengeance. His rapid thrust only stops when he's balls-deep inside of you again, hips slamming against your ass. Both transparent, blue arms holding you swell, and his hands grip on tight to prevent you from sliding back on the table's surface. Blue looks at you with an impish grin and says, 'Sorry for the delay. I had to have a little discussion with myself, and Clint convinced all of me that this was the way to go. You like a good, hard fuck, right?' It is nothing but a rhetorical question, as the next pull back and hard thrust comes right away, never giving you a second to reply before you groan in lust at the next penetration.";
	say "     The horny goo man saws his shaft in and out of your body, driving you to new heights with his relentless lovemaking and really making good use of those ridges on his cock. The way that they tug at your opening and inner walls with every retraction of his cock makes you all tingly inside in a very good way, and you can feel yourself getting quite close to orgasm. As you gasp out a warning to tell Blue this, the blue goo reacts by shifting his left hand to your shoulder so that he can keep a hold of you while his other hand ";
	if player is male: [herm]
		say "wraps itself around your erection and strokes along its length. His fingers are slick and warm against your skin, rubbing you in just the right way to drive you crazy.";
	else: [female]
		say "gets placed on your pussy, rubbing your clit between his fingers. His touch is slick and warm against your skin, stimulating you in just the right way to drive you crazy.";
	WaitLineBreak;
	say "     Having made his preparations for your impending orgasm, Blue breaks out all of the stops and gets back to fucking you with hard thrusts, rubbing you at the same time. With the double stimulation, you are soon pushed right over the edge. Sucking in a sharp breath and writhing on the desk, you feel the orgasm crashing over you like a wave. Your gooey partner quickly ";
	if player is male: [herm]
		say "clamps his hand over the head of your hard cock, just in time for the first spurt of cum. It looks kinda funny to see a glob of your seed create a bulge in the back of his hand, the force of its blast barely contained by the relatively thin layer of goo there. Then the milky-white fluid is redirected to flow up along the very center of Blue's forearm, making its way towards the main mass of his body. Your femcum meanwhile has less distance to go, soaking into his cock and wandering up along its length, creating a visible but fairly transparent flow there.";
	else: [female]
		say "clamps his hand even tighter to your crotch, its fingers wriggling against your clit to prolong your orgasm and milk you of your femcum. Squirts of it soak into the length of his cock, then are redirected to flow up along the mid-line of its shaft, making their way towards the main mass of his body. ";
	say "     As delirious in pleasure as you are right now, your attention is still drawn to the spectacle of your [if player is herm]seed and femcum[else]femcum[end if] spreading through Blue's body, the white and milky substance diffusing like smoke. The blue goo of your friend takes on some of the opaqueness that your fluids bring with it, and he quivers with desire as his body absorbs your [']donation[']. The material eventually becomes fully transparent again, though you could swear that it's also more intensely blue now, his infused form so bright that it almost seems to glow. 'Mmmh, you taste amazing,' Blue says with an ecstatic smile on his masculine face, followed by a primal grunt and an intense look filling his eyes. He doesn't waste any more time on words and instead just hammers into you hard and fast for a few more times, then lets out a burbling growl and explodes into your depths. No longer in any directed shape or anything, it is simply the raw goo of his being that floods your insides, full of desire to bond with you.";
	WaitLineBreak;
	say "     Between your own climax and the sudden invasion of what feels like quite a lot of Blue's goo flowing into your womb, you tremble and thrash on the table, driven past the point of conscious thought. Your whole world is lust and pleasure, plus the weird feelings of having some living other thing gushing into your insides and stimulating who knows what spots. Only when your last spurts of [if player is herm]seed and femcum[else]femcum[end if] ebb off does Blue eventually gain control of himself again, pulling the parts of his mass that invaded your person out again. A sheepish expression crosses his face and he apologizes, 'Uhm, I... couldn't hold myself back there, if I got to be honest. Hope that it doesn't freak you out that I know you inside and out now.' The last sentence is added with a teasing grin and a wiggle of his eyebrows, making you chuckle.[fimpregchance]";
	say "     'Thank you, this was even more fun than I had expected, and I almost feel giddy from what you gave me. I really must share this with the rest of the Blue!' With that said, Blue pulls out of your and pussy, then thumps his chest in a kind of salute and struts over to the goo-filled office, walking right into the aquamarine mass and merging with it. Satisfied now that you've gotten your rocks off and helped the goo people, you watch Blue join with the collective of his people. Streaks of more vibrant blue start diffusing through the large mass of blue goo in the office, spreading the nourishment of your seed throughout their unity. You can't help but grin as you [SelfDressCrotch], then stroll to the entrance of the goo refuge. The Blue Guardian lets you pass without comment, apparently distracted by his desire to join the others for their communion.";
	infect "Blue Goo";

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
	now skin change entry is "a ripple of tingles rushes through your entire body as you sink towards the ground, then rise again, wobbling along the way. A glance at a hand shows that you can see right through your now jello-like flesh, aquamarine-blue in color";
	now ass change entry is "you get an odd feeling, and it takes on normal human shape";
	now cock change entry is "your [cock size desc of player] dick gives a powerful lurch as strange fluid rushes up into it, making it swell a moment before the former color drains, leaving the new, somewhat flexible, gelatin behind. A squeeze confirms that it is still quite solid enough to get the job done";
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
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 20; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 20; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "flowing"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "gelatinous"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


Blue ends here.
