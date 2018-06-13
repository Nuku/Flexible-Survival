Version 1 of Mall Community Center by Wahn begins here.
[ Version 1 - New Event Area ]

[ HP of Florence                                             ]
[   0: not known                                             ]
[   1: she said hello to the player, introductions done      ]
[   2: player talked about the reason for the condoms        ]
[   3: player got introduced to the goo collective           ]

[ libido of Florence - other projects (goo people)           ]
[   0: not talked about it yet                               ]
[   1: player knows about the 'other' projects               ]

[ XP of FLorence (helping quests)                            ]
[   0: never helped                                          ]
[   1: helped once                                           ]
[   2: helped twice                                          ]
[   3: helped trice                                          ]
[   4: helped four times                                     ]
[   5: player was given quest to find their mother           ]
[   6+ progression of the mother quest                       ]

Section 1 - Events

Free Handouts is a situation.
The sarea of Free Handouts is "Smith Haven".

Instead of resolving a Free Handouts:
	FreeHandoutsEvent;

after going to Mall West Wing while (Free Handouts is not resolved):
	FreeHandoutsEvent;

to FreeHandoutsEvent:
	say "     Strolling through the mall, you encounter a long line of people, who wait more or less patiently to reach a desk set up in front of what looks like a former travel agency. The line is moving fast, but almost as soon as one person gets to the front and walks off after being handed something, one or more new people queue up at the end. Curious, you casually walk along the line next to everyone and have a look. Guarded by a stoically observing wolverine, the desk holds a series of plastic tubs, bearing signs reading 'Regular', 'Large', and 'Horse Cock'. You immediately recognize the flat, square, and often colorful plastic wrappers: they're condoms! Manning the desk is a trio of anthro antelope women, with petite figures that match the light-boned build of their species. They are dressed in tank tops and shorts, casual wear that keeps them modest and approachable. All three of them look remarkably similar to one another, enough so for you to guess them to be fraternal triplets.";
	say "     Noticing your interest, one of the three women steps out from behind the desk and approaches you, a friendly smile on her face. 'You're welcome to join the line, too. We're open for anyone to get what they need, even if you don't live in the mall,' she says and looks down the lone line of people waiting, seeming pleased with the turn-out. You introduce yourself [if player is not defaultnamed]as [name of player] [end if]and tell her that you came over to see what all the commotion was about. She puts a hand to her chest and chuckles, then says, 'Oh, sorry. I guess I've gotten used to everyone knowing about us at the mall. My name is Florence, and these are my sisters, Marie and Olivia. We run the Haven Community Center, doing initiatives like this handout right now, as well as several others. Please let me know if you have any more questions.'";
	WaitLineBreak;
	FlorenceTalkMenu;
	say "     Getting back to handing out condoms to the people standing in line, Florence and her sisters take care that everyone gets what they need, then eventually call it a day and move back into the former Travel Agency to the west.";
	if HP of Florence is 0:
		now HP of Florence is 1;
	now Free Handouts is resolved;

Section 2 - Locations

West of Mall West Wing is Haven Community Center.
The description of Haven Community Center is "[HavenCCRoomDesc]".
Haven Community Center is sleepsafe.

to say HavenCCRoomDesc:
	say "     The Haven Community Center fills the rooms of a former travel agency, its original purpose still recognizable by the many large and colorful pictures of tropical beaches, serene mountains, and vibrant cities. Yet where travel agents once sold their customers expensive trips all over the world, there are now groups of people, hanging out together, chatting, playing games, and also organizing supplies. One corner of the large office floor is sectioned off with a couple sheets, a sign reading 'Clinic' hung up next to it. Towards the north, you can see an open door with a sign on the wall that says, 'Accounting'. A large goo-person stands in it, blocking the way to a room beyond. Others of the aquanarine humanoids from time to time walk right through him, coming out to have a quiet word with one of the antelope sisters before returning into the back room. All of the goo people keep a respectful distance from anyone else in the center and even retreat when approached.";

Section 3 - Florence

Florence is a woman. Florence is in Haven Community Center.
The description of Florence is "[FlorenceDesc]".
The conversation of Florence is { "<This is nothing but a placeholder!>" }.
The scent of Florence is "     Florence smells of clean fur, with undertones that make you think of the endless expanse of the Savannah, grass swaying in the wind as it blows over the land.".

to say FlorenceDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Florence] <- DEBUG[line break]";
	say "     Florence is a young anthro antelope, standing about five feet tall from her hooves to the tips of her curved horns. She is fairly fine-boned and petite and dresses lightly too, with just a tank top and a pair of shorts. The young woman smiles as she notices your attention, giving a little wave with her right hand.";

instead of conversing the Florence:
	FlorenceTalkMenu;

to FlorenceTalkMenu:
	say "     Do you want to talk to Florence about something?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about her and her sisters";
	now sortorder entry is 1;
	now description entry is "Learn a bit about their background";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about the condom handouts";
	now sortorder entry is 2;
	now description entry is "Why are they spending so much time supplying everyone with cock-sheaths";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Volunteer to help at the free condom desk";
	now sortorder entry is 3;
	now description entry is "Spend some time with the sisters as they give their handouts to the mall population";
	[]
	if HP of Florence > 1:
		choose a blank row in table of fucking options;
		now title entry is "Ask what she thinks of the pregnancy issue";
		now sortorder entry is 4;
		now description entry is "What is Florence's view on the topic";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about their other projects";
	now sortorder entry is 5;
	now description entry is "Learn what else they might be doing";
	[]
	if HP of Florence is 2:
		choose a blank row in table of fucking options;
		now title entry is "Ask to meet the goo people";
		now sortorder entry is 6;
		now description entry is "Maybe she can get you past the door guard blocking access to the Goo Refuge";
	[]
	if libido of Florence > 0 and player is male and cock width of player > 4 and HP of Florence > 1:
		choose a blank row in table of fucking options;
		now title entry is "Offer to donate some fluids";
		now sortorder entry is 7;
		now description entry is "If they need cum, you could help them out";
	[
	if libido of Florence > 0:
		choose a blank row in table of fucking options;
		now title entry is "Volunteer at the clinic";
		now sortorder entry is 8;
		now description entry is "Help out where you can";
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
				if (nam is "Ask about her and her sisters"):
					say "[FlorenceTalk_Background]";
				else if (nam is "Ask about the condom handouts"):
					say "[FlorenceTalk_Condoms]";
				else if (nam is "Volunteer to help at the free condom desk"):
					say "[FlorenceTalk_CondomVolunteer]";
				else if (nam is "Ask what she thinks of the pregnancy issue"):
					say "[FlorenceTalk_Pregnancies]";
				else if (nam is "Ask about their other projects"):
					say "[FlorenceTalk_Projects]";
				else if (nam is "Ask to meet the goo people"):
					say "[FlorenceTalk_GooIntroduction]";
				else if (nam is "Offer to donate some fluids"):
					say "[FlorenceTalk_FluidDonation]";
				else if (nam is "Volunteer at the clinic"):
					say "[FlorenceTalk_ClinicVolunteer]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the petite antelope, shaking your head slightly as she gives you a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say FlorenceTalk_Background:
	say "     Smiling at your interest in her sisters and herself, yet somewhat sad at the same time, Florence says, 'We were born two weeks ago, to Jenevive Supinet as he was fleeing towards the Smith Haven Mall. You see, our mother is a veterinarian from the Vancouver Zoo, and she was here accompanying a rhinoceros cow being exchanged between zoos for a breeding program. I'm sure I don't have to explain how she got pregnant, with such fell acts being all too common these days.' Letting out a sigh at this point, she stays silent for a few seconds, then continues with a frown, 'Things didn't go well for mom after that either, as contractions set in long before she reached the mall. She had to find a quiet place to give birth in and suckle us until we were able to walk an hour or two later. Then, when we got on the road afterwards, it was a mad scramble to reach the Mall. We almost did, but barely two blocks away, a leopardman suddenly stepped into our way.'";
	say "     Florence scrunches up her muzzle in disgust, then says, 'He chuckled about his luck at getting four bitches in one go, then pointed out the order in which he was gonna fuck us. Mom hit him in the face with a long burst from a deodorant spray, and we ran like hell, but he quickly got on our tail. It was clear that he'd run us down, so she... she split off from us to lead him another way. Everything to let her little girls escape. And that's the last we've seen from her since.' After another deep sigh that speaks of her longing to be reunited with the mother she only briefly knew, the petite antelope shakes off her glum mood by focusing on her surroundings again, resting her gaze on a colorful image of a tropical beach. 'We've been doing our best to make use of the gifts that mom passed on to us. Drinking up a vet's experience with your mother's milk definitively came to our advantage here in the Mall.'";

to say FlorenceTalk_Condoms:
	say "     Florence listens to your question and nods, then indicates the desk for the condom handouts[if player is in Haven Community Center] outside[end if]. 'If you want to know the reason for that, just look around you as you walk through the Mall, and the streets outside. This world, the world that me and my sisters have been born into and that shocks people from the before-time so much, it plays by hard and fast rules. Actions have consequences, and where once some stupid youngsters might perhaps have had to face the reality of a pregnancy months later, now they can fill an apartment complex with one weekend of humping.' Brushing a steak of hair out of her face and shaking her head at such foolishness, the antelope draws her lips into a line, then takes a deep breath before she adds, 'I've got a question for you: Where do you think all the ferals out there come from?'";
	say "     Looking at her a little puzzled, you start to say that they're those who transformed and succumbed, but the pretty antelope in front of you shakes her head with a sad expression. 'People tend to underestimate just how many humans simply died when the outbreak started, and how harsh life on the outside really is. Only through the unrestrained breeding going on everywhere is the population of ferals being upheld - and the newly born are often only feral in the first place because they are abandoned as soon as they are weaned.' [if player is in Haven Community Center]Glancing at the desk outside and seemingly imagining the long line of people who regularly flock to it, [else]Looking at the long line of people waiting to get their condoms, [end if]Florence nods to herself, an expression of conviction that she and her sisters are changing the world for the better on her face.";
	WaitLineBreak;
	say "     Shaking herself out of her thoughts, the antelope focuses on you again and adds, 'And the second reason for doing this, besides saving beings from abandonment and a feral fate, is more pragmatic. It's simple sustainability, to be honest. No one knows for certain why many pregnancies rush to their conclusion within hours or days at best, and others have a traditional progression, but this definitively is a fact of life these days. And we simply cannot afford the risk that the first type of pregnancy holds for the Smith Haven Mall as a whole. The place is packed as it is, and unrestrained growth of the population could spell out doom for all of us.'";

to say FlorenceTalk_CondomVolunteer:
	if HP of Florence is 0: [during the initial event]
		say "     Florence thanks you with a smile as you volunteer to help out. 'Thank you, I'm sure you'll be a great help.' Joining the three antelope women behind the desk, you help ensure that people get the right size of cock-sheath, and you restock the tubs more than once with additional condoms from a storage room back in the former travel agency. During this work, you chat with all three of the antelopes, which means that you actually have a fairly nice and interesting time. By the time that the sisters call it quits for the day and the crowd slowly disperses, you are filled with the knowledge that you did a good thing today. This strengthens the connection to your own humanity, and also is rewarded by Olivia, who hands you a chocolate bar and a bottle of water as thanks for your efforts.";
		LineBreak;
		SanBoost 15;
		say "[bold type]You gain 1 food![roman type][line break]";
		increase carried of food by 1;
		say "[bold type]You gain 1 water bottle![roman type][line break]";
		increase carried of water bottle by 1;
		follow the turnpass rule;
		follow the turnpass rule;
	else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
		say "     Florence thanks you with a smile as you volunteer to help out. 'Thank you, I'm sure you'll be a great help. Come on, you can help me set up.' Joining the three antelope women behind the desk as a line of people starts to form, you help ensure that people get the right size of cock-sheath, and you restock the tubs more than once with additional condoms from a storage room back in the travel agency. During this work, you chat with all three of the antelopes, which means that you actually have a fairly nice and interesting time. By the time that the sisters call it quits for the day and the crowd slowly disperses, you are filled with the knowledge that you did a good thing today. This strengthens the connection to your own humanity, and also is rewarded by Olivia, who hands you a chocolate bar and a bottle of water as thanks for your efforts.";
		LineBreak;
		SanBoost 15;
		say "[bold type]You gain 1 food![roman type][line break]";
		increase carried of food by 1;
		say "[bold type]You gain 1 water bottle![roman type][line break]";
		increase carried of water bottle by 1;
		follow the turnpass rule;
		follow the turnpass rule;
	else:
		say "     Florence thanks you with a smile as you volunteer to help out. 'Thank you, I'm sure you'll be a great help the next time we open the handout desk. Just come by around noon, that's when we set up.'";

to say FlorenceTalk_Pregnancies:
	say "     Clearing her throat, the slender antelope says, 'I've got a theory, if you want to hear it.' As you nod, she starts to explain, 'From most reports that we have of the outside, and my own knowledge of the pregnancy progression that mom went through, the rapid onset and conclusion of pregnancies on the streets is almost universal. Here in the mall, on the other hand, there is a wild mix of results: from slow cookers, like the humans in the before-time, to children being born quick but staying little, to insta-birth and growing up right away.' She gestures to underline what comes next. 'I think the difference is stress of the parent, and survivability for the child. The outside is so wild and harsh that any parent really can't be weighed down by carrying their offspring inside them too long. And a helpless child would never make it there.'";
	say "     Pantomiming the shell of the mall, with people inside, Florence adds, 'Meanwhile, inside this place, the infection doesn't seem to push things to quite the extremes that happen outside. But because of the worry for the future, post-traumatic stress, and tight confines, it still is a bit of a mixed bag, so it's anyone's guess what exactly will happen if someone gets pregnant even here.' She studies your reaction to what she just said for a moment, then adds, 'Please do remember: this is just a theory. It seems to match the facts, but we just can't be sure in the end. Which is why we're doing the condom project, not stress relief classes for new mothers. Sometimes one has to stay with what works for sure.'";

to say FlorenceTalk_Projects:
	say "     Florence smiles at your interest and says, 'We've got a few more projects and initiatives going on right now. For example, there are lessons for younger residents - both those who grow at human rates, as well as the adult sized ones. Just because your parent passes on a bunch of knowledge doesn't mean that you know everything you need in life. Your mom or dad might have been totally disinterested in something critical. And the transfer isn't always complete, either. For example, Marie got a lot more medical knowledge than either Olivia or myself. That's why she leads the tiny [']clinic['] that we run to help people. Thankfully, the transformed do not stay hurt for long from most things that can happen to them. Still, humans and hybrids keep her busy, as well as people who are having problems with their new bodies.'";
	say "     With that said, Florence glances over to an anthro parakeet with patchy feathers [if player is in Haven Community Center]just coming in for a check-up[else]standing in line for some condoms[end if]. Looks like hasn't quite figured out how to properly care for himself and is going through molting right now. Another thing that Florence points out next is an unobtrusive cooler box standing beside the condom handout desk. It bears the sign [']Returns['], and from time to time people come up to the box and quietly drops something inside. Looking closer the next time that this happens, you can make out that they are dropping in used condoms, filled with often quite significant deposits and tied together at the top. 'A number of our residents are quite extraordinary and do require special sustenance. Since they are wary of passing on an infection that makes people into humanoid blobs of goo, we've worked out this method of gathering the required fluids...'";
	if HP of Florence is 1:
		now HP of Florence is 2;

to say FlorenceTalk_GooIntroduction:
	say "     The anthro antelope smiles as you tell her that you want to meet the goo people. 'You want to meet them? That's nice - it'll do Blue good to talk to someone new. But I have to warn you. They are quite infective, and therefore do their best to keep their distance, ever since... some unfortunate incidents. Please don't go into their refuge if you're not ready to deal with that. They are still people, despite the strange appearance, and being stared at like freaks hurts them.' Nodding to Florence, you reply that you know how to behave yourself, after which she [if player is in Haven Community Center]goes have a quiet word with the goo person guarding the entrance to their refuge[else]goes into the community center and has a quiet word with a goo-person guarding a door in the back[end if]. Coming back after a little while, she nods to you and says, 'You can go and talk to them now. I've convinced Blue to let you in.'";
	now HP of Florence is 3;

to say FlorenceTalk_FluidDonation:
	say "     Secure in the knowledge that your balls are ready for a sizable 'donation' of fresh cum, you give Florence a confident smile and tell her that you want to help out in supplying their goo people. She raises her eyebrows at how direct you are in this matter, then glances down to your crotch and gives a little giggle as she sees the growing bulge of your cock. 'Oh dear. Someone definitively is ready to make good of [PosAdj of player] offers. Um, how did you want to do this?'";
	LineBreak;
	say "     [link](1)[as]1[end link] - Just ask for a condom and a little privacy to fill it up.";
	say "     [link](2)[as]2[end link] - Maybe she could help you put a condom on and milking your dick into it.";
	say "     [link](3)[as]3[end link] - You shoot the most with a sexy partner wrapped around your cock. Offer to fill a condom to the brink - while fucking her.";
	say "     [link](4)[as]4[end link] - Approach the goo people for a 'personal' donation.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to jerk into a condom, [link]2[end link] to ask her to jerk you off into a condom, [link]3[end link] to fuck her with a condom on, or [link]3[end link] to take things directly to the goo people.";
	if calcnumber is 1:
		LineBreak;
		say "     As you tell her what you need, Florence gives you an evaluating look, then quickly collects a condom of suitable size from one of the storage tubs. Handing it to you with a smile, she guides you to the 'clinic' set up in one corner of the former travel agency. Drawing the flimsy curtains shut after you step into one of the examination areas, she leaves you to do your thing. Quickly sliding off your clothes, you pull out your [cock of player] shaft and unroll the condom over its length, then concentrate on an especially sexy image in your mind to jerk off to. Chuckling a little about pleasuring yourself for a good cause, you stroke and squeeze your manhood, quickly building up your arousal. It doesn't take all that long before some skillful self-pleasure brings the familiar feeling of tightness settling into your balls. Finishing yourself off with a burst of speed at the end, you let out a satisfied grund as your balls start to unload into the condom.";
		say "     You watch in satisfaction as the reservoir section of the condom is filled with spurt after spurt of creamy cum, bulging out a little as more sprays into the receptable. Milking your cock to make sure as much cum as possible ends up in the condom, you eventually pull the flexible sheath off your erection and put a knot on it. After getting dressed again, you deliver your packaged load to the cooler that Florence and her sisters have set up. The antelopes smile at you and give their thanks for your donation[if HP of Florence is 0], then turn back to dealing with the people standing in line[end if].";
	else if calcnumber is 2:
		LineBreak;
		say "     As you tell her what you need, Florence gives you an evaluating look, then quickly collects a condom of suitable size from one of the storage tubs. Handing it to you with a smile, she guides you to the 'clinic' set up in one corner of the former travel agency. ";
		if XP of Florence < 6: [player doesn't know her well enough]
			say "You step into one of the sections divided off by flimsy curtains, thinking that she will follow you, but the antelope just stays behind and gives you an amused expression and shake of her head. 'I'll leave you to it then. A big [boygirl] like you surely can handle [ReflexPro of player],' Florence says in a good-natured tease, then pulls the curtain to give you some privacy. Even though you're a little disappointed that she didn't go for your offer after all, you shrug to yourself and guess that you maybe need to get to know the young woman better to have some fun together. For now, jerking off on your own will have to do.";
			say "     Quickly sliding off your clothes, you pull out your [cock of player] shaft and unroll the condom over its length, then concentrate on an especially sexy image in your mind to jerk off to. Chuckling a little about pleasuring yourself for a good cause, you stroke and squeeze your manhood, quickly building up your arousal. It doesn't take all that long before some skillful self-pleasure brings the familiar feeling of tightness settling into your balls. Finishing yourself off with a burst of speed at the end, you let out a satisfied grund as your balls start to unload into the concom. You watch in satisfaction as the reservoir section of the condom is filled with spurt after spurt of creamy cum, bulging out a little as more sprays into the receptable. Milking your cock to make sure as much cum as possible ends up in the condom, you eventually pull the flexible sheath off your erection and put a knot on it. After getting dressed again, you deliver your packaged load to the cooler that Florence and her sisters have set up. The antelopes smile at you and give their thanks for your donation[if HP of Florence is 0], then turn back to dealing with the people standing in line[end if].";
		else:
			say "     WIP";
	else if calcnumber is 3:
		LineBreak;
		say "     As you offer to fuck her, Florence looks at you wide-eyed before quickly collecting herself again and replying, 'I - um, that's certainly an interesting offer, ";
		if XP of Florence < 6: [player doesn't know her well enough]
			say "but I'll have to pass. Sorry about it. You're a good-looking [guygal] and sex sure is fun, but somehow it feels 'cheap' if you just have it with anyone that is horny and walks up to you. Don't you want to have your encounters mean something and be with people you actually know and like?'";
		else:
			say "";
	else:
		LineBreak;
		if HP of Florence < 3:
			say "     As you tell her that you want to give the goo people your fluid donation in person, Florence looks at you with a raised eyebrow. 'I'll have to warn you. They are quite infective, and therefore do their best to keep their distance, ever since... some unfortunate incidents. Please don't go into their refuge if you're not ready to deal with that. They are still people, in their own way, and being stared at like freaks hurts them.' Nodding to Florence, you reply that you know how to behave yourself, after which she [if player is in Haven Community Center]goes have a quiet word with the goo person guarding the entrance to their refuge[else]goes into the community center and has a quiet word with a goo-person guarding a door in the back[end if]. Coming back after a little while, she nods to you and says, 'You can go and talk to them now.'";
			now HP of Florence is 3;
		else:
			say "     As you tell her that you want to give the goo people your fluid donation in person, Florence looks at you with a raised eyebrow, then nods. 'Just remember, they are quite infective by touch. But if you still want to do it, go into the back room in the community center. It'll be good for Blue to talk to someone.'";

to say FlorenceTalk_ClinicVolunteer:
	say "     ...";

instead of fucking the Florence:
	say "     As you offer to have sex with her, Florence looks at you wide-eyed before quickly collecting herself again and replying, 'I - um, that's certainly an interesting offer, ";
	if XP of Florence < 6: [player doesn't know her well enough]
		say "but I'll have to pass. Sorry about it. You're a good-looking [guygal] and sex sure is fun, but somehow it feels 'cheap' if you just have it with anyone that is horny and walks up to you. Don't you want to have your encounters mean something and be with people you actually know and like?'";
	else:
		say "";

Mall Community Center ends here.
