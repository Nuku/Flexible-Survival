Version 1 of Danny by Wahn begins here.
[Version 1 - New NPC]

"Adds a mall rat npc to Flexible Survival"

[ Danny, the mall rat                                                                  ]
[                                                                                      ]
[ HP of Danny                                                                          ]
[   0: hasn't met the player yet                                                       ]
[   1: knows the player                                                                ]

[ libido of Danny                                                                      ]
[   0: not watched Nermine get fucked yet                                              ]
[   1: watched Nermine get fucked                                                      ]

[ lust of Danny                                                                        ]
[   0: no sex with the player yet                                                      ]
[   1: fucked the player                                                               ]
[   2: got fucked by the player                                                        ]
[   3: fucked and got fucked by the player                                             ]

[ Dexterity of Danny (photography quest)                                               ]
[   0: not started yet                                                                 ]
[ 100: player discouraged him from going out                                           ]


Section 1 - Description

Danny is a man. The HP of Danny is usually 0. Danny is in Mall Foodcourt.
The icon of Danny is Figure of Danny_clothed_icon.
The description of Danny is "[DannyDesc]".
The conversation of Danny is { "Woof." }.

to say DannyDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Danny], LIBIDO: [libido of Danny] <- DEBUG[line break]";
	say "     Danny is a young adult mall-rat, wearing his signature sleek and stylish long coat that hangs down to his knees and highlights his slender frame. His face is pretty cute, with a pointy nose and large ears, framed by unruly streaks of green-dyed hair. He usually has a shiny black smartphone in one of his fine-boned hands, using the precious piece of still-working technology to take photos and videos of just about anything he sees.";

The scent of Danny is "     Danny smells hip, like the coolest rat ever.".

Section 2 - Talking

instead of conversing the Danny:
	if HP of Danny is 0:
		project the figure of Danny_face_icon;
		say "     As you walk up to the slender mall-rat, he raises his smartphone and calls out 'smile', then takes a picture. Sliding the device into his pocket afterwards, the anthro rodent then holds a hand out for you to shake and says, 'Welcome to the mall and nice to meet you. I'm Danny.' The young man is pretty friendly and starts a conversation with you about how things stand outside the mall. He is clearly interested in what new types of beings now live in the city and eagerly shows you some of the pictures he took since the whole trouble with the nanites started. There clearly are quite a few more types of creatures than you had even realized, and those are just the ones peaceful enough to be allowed in the mall. After a while, the topic of conversation swings over to the mall itself and its inhabitants, from Danny's ratty compatriots to the more unique Santa Claws and even the mysterious Nermine. He warns you about the jackaless, saying that strange things go on in her store.";
		now HP of Danny is 1;
	else:
		say "[DannyTalkMenu]";

to say DannyTalkMenu:
	LineBreak;
	project the figure of Danny_face_icon;
	say "What do you want to talk with Danny about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Talk about what comes to mind";
	[]
	if HP of Santa Claws > 0: [player was at the Christmas village before, photography quest not turned down]
		choose a blank row in table of fucking options;
		now title entry is "Ask him about taking photographs";
		now sortorder entry is 2;
		now description entry is "Talk about his hobby";
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
					say "[DannyTalk1]";
				if (nam is "Ask him about taking photographs"):
					say "[DannyTalk2]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the young mall-rat, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say DannyTalk1:
	say "     Walking up to Danny again, you're greeted with a wide smile from the friendly anthro rodent, accompanied by a welcoming pat on your arm. 'Glad to see you here again!' he says in a genuine tone, then starts a conversation with you about how things stand outside the mall. He is clearly interested in what new types of beings now live in the city and eagerly shows you some of the pictures he took since the whole trouble with the nanites started. There clearly are quite a few more types of creatures than you had even realized, and those are just the ones peaceful enough to be allowed in the mall. After a while, the topic of conversation swings over to the mall itself and its inhabitants, from Danny's ratty compatriots to the more unique Santa Claws and even the mysterious Nermine. [if libido of Danny is 0]He warns you about the jackaless, saying that strange things go on in her store.[else]But then, you both know what happens in her store these days, and there's a whole other kind of grin being shared between you as he pulls out his mobile and flicks through the images of the sexy scene.[end if]";

to say DannyTalk2:
	if Dexterity of Danny is 0:
		say "     'You know, I saw you when you visited the Christmas village,' Danny says, smiling as you give him a puzzled look. 'Didn't realize I was there, did you? That's all because of this stupid thing.' With that said, he pulls an actual camera - of the old style with chemical film - out of his satchel and holds it up for you to look at. Looks rather plain, a bit scratched up and at least 20 years old. As you raise an inquisitive eyebrow, he goes on to explain, 'I think this thing is magic - or cursed or something. I got it from Nermine. You see...'";
		say "     [bold type]Do you listen to his tale how he got the old camera?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Nod for him to continue telling the story.";
		say "     ([link]N[as]n[end link]) - Wave him off. Just mentioning Nermine's name tells you that the camera has some weird properties.";
		if player consents:
			LineBreak;
			say "     Danny smiles at your interest and starts to lay out the details. 'Not long after all this started happening and the guards turned into wolverines, they got it into their heads that the mall was supposed to close at some point in the night... and they were ready to just shove everyone out the door till 'opening time' the next morning. Imagine that - all of our people helpless on the streets! You should have seen the chaos and panic that announcement created!";
			say "     The slender mall-rat shudders at the memory, then turns his attention back to you and says, 'Anyways, people were scrambling around and trying to find any reason at all that the guards would accept for them staying... there were fights for all of the stupid name batches of shops in here, I kid you not. Meanwhile, I kinda stumbled into the jackaless's strange shop, narrowly avoiding a wolverine. She was on me in a second, all smiles and friendly, greeting me. Before I knew it, she had this thing in her paws and was offering it to me - [']just what the dear customer needs['], she said.'";
			WaitLineBreak;
			say "     Danny turns the camera this way and that and looks at it, then says, 'I still don't know why I let her talk me into taking it. And pay for it by owing [']just a little favour['] to her. A minute later, I was back outside the shop, holding the camera... and the next wolverine coming along didn't even try to grab me, just grumbled something about getting back to work taking photos.' The mall-rat snorts at the memory, making grimaces as he mimes being a wolverine. 'Somehow I'm the official mall photographer in their eyes now. But there is more - this thing does kinda make people... not notice me.'";
			say "     'With the camera raised, anything at all at least a little bit interesting nearby comes before checking on the scrawny mall rat, hah. Eventually, the rat that got hold of the [']Mall Supervisor['] name badge talked the guards out of their stupid ideas by declaring an [']all night shopping madness['] special that runs all year. But until then, I had plenty of time to learn to enjoy using this antique. Not that a proper smartphone isn't better in just about everything.' Danny shows off his black mobile phone before sliding it back in his pocket, then continues, 'But the old way can be fun too...";
		else:
			LineBreak;
			say "     Danny falls silent as you wave him off, looking sad for a second that you don't want to listen, then gives a shrug a few seconds later. 'Fine. The short version then - people barely notice me when I use the camera. As long as there is anything else more interesting nearby at least.'";
		say "     Clearing his throat, the mall rat youngster says, 'You should've sat on Santa's lap. That would have been one amazing scene to catch! I may not need to be the [']official['] photograph anymore, but... I kinda am the rat doing that here now. I always was interested in being a photographer or cameraman. I was going to school for it but then this happened.' He points to his changed form and moves his hand across his body.";
		say "     'So as you can tell I won't have a university to attend for a while. But I still like to practice recording and taking photographs. I have taken quite a few of the monsters throughout the city. Not to toot my own horn or anything but I'm pretty good. What I really want to do is photograph all the monsters throughout the city, but I'm not strong enough to go outside and survive by myself. This magic camera doesn't make me invisible, just uninteresting, you know.'";
		LineBreak;
		say "     Danny's gaze lowers to the floor. Might be a good idea to tag along with you so you can keep him safe while he photographs different monsters. [bold type]'Would you mind helping me?'[roman type] he asks before you get a chance to offer or to even think it through.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Agree to help him out.";
		say "     ([link]N[as]n[end link]) - Talk him out of risking a trip out into the city.";
		if player consents: [agree]
			LineBreak;
			say "     You agree to help the young mall-rat out and remind him that it is dangerous outside and he needs to be careful. 'Don't worry about me,' he replies, 'I can run faster than you think.' You shake your head but don't say anything in response and instead ask him what creatures he would like to find first. 'I heard there was this thing that looked like a giant cock on legs. That would be pretty cool to see, or one of those things made from latex. Or pretty much anything else that would be cool to photograph.' You quickly run through a quick list of monsters you can remember. 'Wow there are that many!' he shouts with excitement, 'I had no idea.'";
			say "     Asking Danny which ones he wants to see first, the slender male replies, 'Well still the cock monster thing, and latex creature. But the gryphon would look majestic flying around, any demons, chocolate dog, the gooey monsters, and a reindeer. Maybe we could even bring the reindeer back and give it to Santa Claws that would put the finish in the malls little winter wonderland. This is so cool! We should try to get a photo of all of them but let's try our luck with these ones first to see what we can handle. Thank you so much. I got an idea how to repay you for all the effort too when we're done.' He gives you a subtle wink at the end of his last comment. You tell him to go and charge up his smartphone (since you're sure he'll want to take not only pictures but video too) and you'll grab him when you're ready. 'You got it boss,' he says before skipping away, overjoyed that he found someone to help him.";
			now Dexterity of Danny is 1; [agreed to go on the cock cannon hunt]
		else: [refuse]
			LineBreak;
			say "     You tell Danny that you wouldn't feel comfortable having to watch over him all the time and would feel bad if something were to happen to him. 'That's fine,' he replies, 'There are plenty of monsters that come in the mall so I should have more than enough photos soon.' Still, disappointment is clearly audible in his voice. You remind yourself that you did the right thing and say goodbye to the mall-rat twink.";
			now Dexterity of Danny is 100; [talked out of going into the city]
	else if Dexterity of Danny is 100: [talked out of going into the city]
		say "     Bringing up the topic of his photography again puts a smile on the male rodent's face. 'Glad to see you're interested in my art,' he says, then pulls a few photographs out of his satchel and gladly shows them off. There are a number of different creatures there, all of them of the more stable variety of city-dwellers. Who else would get past the wolverine guards after all - all of the pictures are taken inside the mall. 'As you can see, I've made a little bit of progress since we talked about this last time. Of course, going out into the city and actually seeing out interesting creatures would be a lot more fun. In more than one way...' He winks at you as he says that last sentence and suggestively runs a slim paw down the front of his chest. [bold type]Then Danny asks, 'Any chance you've changed your mind about helping me out?'[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Agree to help him out.";
		say "     ([link]N[as]n[end link]) - Talk him out of risking a trip out into the city.";
		if player consents:
			LineBreak;
			say "     You agree to help the young mall-rat out and remind him that it is dangerous outside and he needs to be careful. 'Don't worry about me,' he replies, 'I can run faster than you think.' You shake your head but don't say anything in response and instead ask him what creatures he would like to find first. 'I heard there was this thing that looked like a giant cock on legs. That would be pretty cool to see, or one of those things made from latex. Or pretty much anything else that would be cool to photograph.' You quickly run through a quick list of monsters you can remember. 'Wow there are that many!' he shouts with excitement, 'I had no idea.'";
			say "     Asking Danny which ones he wants to see first, the slender male replies, 'Well still the cock monster thing, and latex creature. But the gryphon would look majestic flying around, any demons, chocolate dog, the gooey monsters, and a reindeer. Maybe we could even bring the reindeer back and give it to Santa Claws that would put the finish in the malls little winter wonderland. This is so cool! We should try to get a photo of all of them but let's try our luck with these ones first to see what we can handle. Thank you so much. I got an idea how to repay you for all the effort too when we're done.' He gives you a subtle wink at the end of his last comment. You tell him to go and charge up his smartphone (since you're sure he'll want to take not only pictures but video too) and you'll grab him when you're ready. 'You got it boss,' he says before skipping away, overjoyed that he found someone to help him.";
			now Dexterity of Danny is 1; [agreed to go on the cock cannon hunt]
		else: [refuse]
			LineBreak;
			say "     You tell Danny that you wouldn't feel comfortable having to watch over him all the time and would feel bad if something were to happen to him. 'That's fine,' he replies, 'There are plenty of monsters that come in the mall so I should have more than enough photos soon.' Still, disappointment is clearly audible in his voice. You remind yourself that you did the right thing and say goodbye to the mall-rat twink.";
	else if Dexterity of Danny is 1: [ready for the cock cannon hunt]
		say "     You walk up to Danny and tell him you are ready to go. 'Thank you so much,' he says, wrapping his arms around you jumping up and down during his hug. 'You have no idea how excited I am,' the mall-rat says cheerfully, and you can't help but smile at his eagerness as you remind him that your trip won't be without danger. Putting a hand on Danny's shoulder, you give it a friendly squeeze and recommend that he calm down a little before you set out into the streets. The slender rodent closes his eyes and takes a couple deep breaths. 'Ok boss,' he says, 'I can't wait to capture all of these creatures on camera. Man this is so cool. But the fun will happen once we get back.' He yet again gives you a wink... a less than subtle one this time. You notice a slight bulge forming in his pants.";
		say "     You warn him not to count his chickens before they've come home to roost - the trip really could be dangerous. 'Don't worry about that,' he replies in an eager voice, 'I have a trick or two up my sleeve if we get stuck in a sticky situation. Besides, we'll be fine with you doing all the fighting.' You give him a quick rundown of what you want him to do when a monster attacks. It's mostly just him staying back while you do the dirty work. You just hope that your fighting skills hold up to the challenge - would be plain embarrassing to lose a fight that is being documented by the mall-rat. Also, Danny is going to need to take a photo fast otherwise he won't get a chance until the creatures been defeated.";
		WaitLineBreak;
		say "     'I hope we run into an orc - I heard they are huge,' Danny keeps babbling happily, then holds his paw-hands about a foot apart and adds, 'And I don't mean in size if you catch my drift.' You just sigh at his comment and tell him if the two of you make it through a few trips unscathed, you will help him take a photo of an orc eventually. 'You're the best,' he exclaims - totally oblivious to the danger he is putting you and himself in. 'Oh man am I so excited! I hope I get the best shots possible. Maybe I'll be known as the great apocalypse photographer.'";
		say "     If all things go well, you guess that this won't be the last time you escort him around the city for creatures to take pictures of. You also suspect you'll eventually have to do more than just protect him from these monsters. Shaking the thoughts out of your head, you tell yourself that you are being ridiculous and try to rein in your imagination. With the things you see going on all around every day, the things that it cooks up really have become quite racy. Turning your attention back to Danny, you tell him to stop babbling and get ready to leave. He checks his satchel for the old camera and several rolls of film, then quickly runs to grab his phone off the charger and says 'Let's get this show on the road.' You two make your way out into the infected city in search of creatures for the rat to photograph. You just hope nothing gets a hold of him and decides to break him in two...";
		WaitLineBreak;
		say "     Searching for the creature Danny wanted so see, you wind up going to the red light district. You creep around in the shadows and hide behind available cover, trying to find your target without getting into any other fights on the way. Danny follows close behind you. The search goes on for quite a while - stalking through the streets and checking out many a dark alley from which moaning emanates - you see countless creatures in all shapes and sizes who have come to enjoy a romp in the red light district. Then eventually, you come upon a large creature walking about on one of the main roads, casually strolling along as if to mock you for not finding it for so long. Taking in the thing's appearance, you see that it has human arms and legs - attached to a six foot tall cock.";
		say "     'Wow,' Danny whispers, 'That's one weird-looking creature. And I bet no one has taken a photo of one, ever! I'm going to get in for a closer shot.' Before you can grab a hold of him the rat is already out in the open creeping towards the giant cock. He has got his old camera out and holds it in both paws like a protective charm - and it seems to work, so far the monster hasn't noticed him. Danny is no more than ten feet away when he gets down on one knee and takes a close-up photo, then looks over his shoulder to you and grins widely. Sadly, he gets over-confident with his success and proceeds to whistle at the creature right after that. The walking cock whirls around, craning its purple head towards the mall-rat as it finally notices him.";
		WaitLineBreak;
		say "     As he himself explained to you before, the magic camera doesn't actually make Danny invisible, just keeps him below the level of interest of people and creatures - unless the user does something stupid like actively drawing their attention. The cock cannon rears up and you can see some twitching going through its balls, with the vertical slit on its head widening noticeably... uh oh, looks like it is preparing to blast your mall-rat friend off his feet with a giant spurt of cum! With you too far away to do anything about it, the only thing that saves the male rodent is the fact that he turns on the pretty bright flash of his camera, disorienting the cock cannon for a moment. By the time it gets back to its senses and lets loose with a titanic splurge of creamy cum, Danny has already retreated to a much safer distance - yet he stopped again to capture the eruption on film too.";
		say "     The cock cannon seems to 'blink' with its vertical cum-slit, surprised that there isn't a drenched mall-rat where it shot its big load. Then it rears up and seems to focus on where Danny is actually standing by now. It lets out a strange gurgling sound - possibly of displeasure at missing, and very likely signifying that it is preparing another cum blast - then starts sprinting after Danny. 'Aaah! Oh shit oh shit oh shit!' the young adult rodent calls out as he runs away from the large monster, heading in your direction. With a shake of your head at the inexperienced mall-rat having ignored all your previous warnings about being careful, you step out from behind the dumpster you were at and step into the path of the cock cannon to save his ass.";
		if "Female Preferred" is listed in feats of player:
			say "     The creature breaks off its charge to 'look' at you, aiming the cum-slit of its phallic head right towards you. Apparently, it must not like what it sees, because it immediately turns around and leaves.[line break](The creature won't fight you if you have the Female Preferred feat.)";
			say "     Danny comes over to you a moment later. 'Wow, that was exciting!' Danny says with a sparkle in his eyes, 'Thank you for distracting it so I could get away.' You shake your head and wave for him to follow, then start on your trek back to the mall. On the way, you have a word or three with him about not dashing forward without you and getting himself into trouble like with the cock cannon. It remains to be seen if the young rodent will take that to heart....";
		else:
			challenge "Cock Cannon";
			if fightoutcome >= 20 and fightoutcome <= 29: [lost]
				say "     As you stumble away, soaked through to your skin with cum and feeling stuffed with all the cum you gulped down, you soon are joined by Danny. He looks at you a bit wide-eyed and says, 'That was... wow! I didn't know those things could do such a thing. It just... slurped you up and went on its way. I followed it in a safe distance for quite a while before it, erm... blasted you out. Looked really strange, but also interesting. Wanna see?' He raises his smartphone and wiggles it a little, indicating that he actually took a video of your experience. Shaking your head at the fact that he apparently just kept filming without trying to help you, you decline and say that being on the receiving end of the creature's attention was enough for you today. No need to relive that right now.";
				say "     'Okay then,' Danny says with a nod and closes the vid he pulled up with a swipe of his finger. 'I guess that's one recording I won't be showing around, okay? At least not without you saying I can.' You shake your head and wave for him to follow, then start on your trek back to the mall. On the way, you have a word or three with him about not dashing forward without you and getting himself into trouble like with the cock cannon. It remains to be seen if the young rodent will take that to heart...";
			else if fightoutcome >= 30: [fled]
				say "     Having stepped in its path and stopped the cock cannon's charge, you glimpse to the side and see that Danny has reached a good distance before fleeing yourself. Taking off running, you catch up with him a short while later and the two of you leave the large abomination behind. 'Wow, that was exciting!' Danny says with a sparkle in his eyes, 'Thank you for distracting it so I could get away.' You shake your head and wave for him to follow, then start on your trek back to the mall. On the way, you have a word or three with him about not dashing forward without you and getting himself into trouble like with the cock cannon. It remains to be seen if the young rodent will take that to heart....";
			else if fightoutcome >= 10 and fightoutcome <= 19: [won]
				say "     Having won the fight and standing over the knocked-out cock cannon, you take a moment to catch your breath, just staring down at the defeated creature. Then a mechanical clicking sound makes you look up - and you see Danny, holding his smartphone in one hand and the old camera in the other, lowering it after taking a shot. Apparently he recorded the whole fight on video and now wanted to cap his photo series in the camera off with a victory shot. A simple thing like helping you fight didn't seem to occur to him at any point - but then, he isn't a brawler, that was clear from the start. With a shrug, you decide that it isn't worth getting annoyed over.";
				say "     'Wow, you sure showed the thing what's what!' Danny says with a sparkle in his eyes, 'You might be the hero of the apocalypse. I can't wait to show everyone the video of how good at cock-beating you are.' He snickers a little after his sentence and gives you a beaming smile. You shake your head and wave for him to follow, then start on your trek back to the mall. On the way, you have a word or three with him about not dashing forward without you and getting himself into trouble like with the cock cannon. It remains to be seen if the young rodent will take that to heart...";
		WaitLineBreak;
		say "     When the two of you arrive back at the mall and make your way to the back room of the local photo shop, Danny says, 'Thank you so much for your help!' Then he sprints over to his charger, plugging in the smartphone and setting it to download his newest video to the laptop standing right next on the table. 'I took some great photos on our trip and didn't get hurt. This was the best time ever!' You tell Danny to calm down, which has become a common phrase for you as of late. He looks at you with his sparkling eyes and says, 'We should do this again sometime. I had a really good time and you looked like a super hero stepping up to face the cock cannon when... erm, I got us into a bit of trouble with that thing. But yeah - you rock!' You hide a faint blush from his high praise. It isn't every day that someone says such things to you, especially with the current situation and whatnot. Feels pretty good.";
		say "     In fact... it feels so good that despite your better judgement, you can't help but agree as he asks, 'You are going to take me out there again sometime, right?' As you chuckle and nod, he throws his arms around you and gives you a tight hug. 'Wow you're the best,' Danny says happily, then adds, 'I'll come up with a whole list of monsters for us to find! And maybe we can have more than just images of them standing around... all the excitement at the end with the cock cannon gave me the idea that some... 'action shots' would be awesome too. You wouldn't mind appearing in those, would you?' He gives you a wink after finishing the last sentence.";
		WaitLineBreak;
		say "     Raising an eyebrow, you ask Danny what exactly he's planning to photograph in an 'action sequence'. The male rodent scratches the back of his neck and smiles suggestively, then replies, 'Oh, that. Just some... fun, okay? I bet you've done lots of things with the creatures out there before, right? We can see about specifics when we get out there - but before that I have to figure out what monsters I want to photograph next.' You don't reply and just stand there with your arms folded shaking your head. 'I'm sure you'll enjoy it,' the mall-rat goes on, 'So you'll help me out and have a lot of fun at the same time, alright?'";
		say "     You're still contemplating if you want to not only guide Danny to the creatures he seeks but also to... perform with them... when he leans in close and puts his hand on your chest. 'That reminds me,' he says with a smile, 'I do owe you a reward.' With little more warning than that, he kisses you right on the lips, his tongue darting in to wrestle with yours for a few seconds. After pulling back from kissing you, he says a moment later, 'I'm all yours if you want to have some fun.' With a nod over to the mattress set up in a corner of the room, Danny smiles at you confidently, then walks over to his work table and starts working on that list of monsters he wants to photograph.";
		now Dexterity of Danny is 2; [successfully got through the cock cannon scene]
	else if Dexterity of Danny is 2:
		say "    <WIP: The further chapters of Danny's quest are still in the works. Please do have some patience>";



Section 3 - Sex

Instead of fucking the Danny:
	if HP of Danny is 0: [player never talked to Danny]
		say "     The mall is a bit more civilized than the dangerous streets of the city. In general, you should at least speak with someone and introduce yourself before approaching with sex in your mind...";
	else if Dexterity of Danny < 2 or Dexterity of Danny > 99: [player hasn't done his quest yet]
		say "     Danny smiles a little as you make your offer of having sex with him, then slowly shakes his head. 'Thank you, I'm flattered. But... I'm a little busy with my project to take photographs of all the creatures that came into existence in this chaos. I can't go out into the city since it is too dangerous, so hanging around here in the main corridor is my best shot at it. Sometimes you have to put aside your own pleasure for your art, you see?'";
		say "     Looks like you won't get into his pants that easily - not without helping Danny with his fond desire to become a famous photographer, or possibly bringing a nice and interesting pet along to draw him into some sexy fun...";
	else: [player did his quest and Danny likes him now]
		say "     Danny smiles broadly as you make your offer of having sex with him, then takes your hand and leads you into the back room of the nearby photo shop. He's made a next for himself here, with a comfortable mattress in one corner of the room and his technical and photography gear set up to be worked with.";
		say "[DannySexMenu]";

to say DannySexMenu:
	setmonster "Mall Rat";
	project the figure of Danny_naked_icon;
	say "     What do you want to do with the young adult mall-rat?";
	choose row monster from the table of random critters;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Danny's cock";
	now sortorder entry is 1;
	now description entry is "Give him a blow-job";
	[
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him suck your cock";
		now sortorder entry is 2;
		now description entry is "Get a blow-job";
	[]
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him eat you out";
		now sortorder entry is 3;
		now description entry is "Get a blow-job";
	]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "69 with Danny";
		now sortorder entry is 4;
		now description entry is "Share oral pleasures with your mall-rat friend";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Let Danny fuck your ass";
	now sortorder entry is 5;
	now description entry is "Let the mall-rat fill your ass with his seed";
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Danny's ass";
		now sortorder entry is 6;
		now description entry is "Fill the mall-rat's ass with your cock";
	[]
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Let Danny fuck your pussy";
		now sortorder entry is 7;
		now description entry is "Let the mall-rat breed you";
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
				if nam is "Suck Danny's cock":
					say "[DannySex1]";
				else if (nam is "Have him suck your cock"):
					say "[DannySex2]";
				else if (nam is "Have him eat you out"):
					say "[DannySex3]";
				else if (nam is "69 with Danny"):
					say "[DannySex4]";
				else if (nam is "Let Danny fuck your ass"):
					say "[DannySex5]";
				else if (nam is "Take Danny's ass"):
					say "[DannySex6]";
				else if (nam is "Let Danny fuck your pussy"):
					say "[DannySex7]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the mall-rat, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say DannySex1: [BJ for Danny]
	say "     Leaning in towards Danny you whisper into his ear that you would like to blow him. The slender mall-rat looks at you with a large grin on his face and responds, 'Oh really? That's a nice surprise! Let me just... err... put my phone on its charger.' With that, the slender mall-rat quickly steps over to his workbench and slides his smartphone into an upright stand connected to some cables. Interposing his body between you and the device, he flicks his finger over the screen a few times, turning on its recording function. Whirling back around to you, the mall-rat then steps up and pulls you into a deep kiss. Eventually coming back up for air, he taps your shoulders and points down. You quickly take the hint and kneel, now looking up at the slender rodent.";
	say "     Danny's pulls his long coat off and throws it over a nearby chair, quickly followed by the black t-shirt covering his chest. The young mall-rat has an attractive slender figure, with his usually brown fur lightening to an off-white shade down his front side, the border between the colors being just on the outside of Danny's cute pink nipples. And those are not the only thing that is pink on him - as the young man reveals a bright pink pair of skimpy briefs as he pushes down his shorts next. The undies show a quite respectable bulge at the front and Danny pulls their front down to hook it under his balls, leaving his erection bobbing right in front of your face. Flicking a streak of his bright green hair behind one of his big ears, the young adult rat grins down at you and says, 'Show me what you can do with that tongue of yours.'";
	WaitLineBreak;
	say "     Taking hold of his respectably sized cock - especially for such a twink of a mall-rat - you stroke it a few times, then hold it up to lick over the head. He pants in arousal at the first flick of your tongue, then lets out a full-throated moan as you follow up by licking all along his shaft from the base. 'Nnngh, that's good,' Danny groans, putting a hand on your head and keeping it there as you continue to worship his cock. 'Do my balls next please,' he pants somewhat breathlessly, pushing down on your head a little while at the same time pulling up his cock. The two orbs of his family jewels dangle just in front of your nose in their furry sack. You're happy to follow his instruction and stick out your tongue to lick his sack.";
	say "     As you do so, your nose gets pressed against Danny's crotch and you are treated to a heavy dose of his scent - which is pleasantly masculine, if underlain by a little bit of sweat. You can taste its slightly salty flavor as you take his left orb into your mouth and suckle on it, then switch to the other one to please them equally. Meanwhile, a very satisfied Danny leans his head back and moans out loud at the pleasure you're giving him, then looks down at you with a grin and gives the recording camera a thumbs up. After a little while of enjoying you suckling on his balls, Danny pants out, 'Good job. But let's get to the main bit now.' With that, he hooks a finger under your chin and pulls it up a little, holding out his hard cock right in front of your lips.";
	WaitLineBreak;
	say "     You take him into your mouth, then crane your neck a little bit to allow more of his manhood into your maw. Danny gives a slight chuckle as he gives a little thrust of his hips, pushing quite a bit deeper into your mouth suddenly. You take it all in stride, almost inhaling his length and allowing him to push as deep down your throat as possible. A grunted moan escapes his lips as you swallow reflexively and your muscles play over his length, squeezing his shaft. Chuckling around his prick, you continue to suck him like there's no tomorrow, happy to give this young rodent a good time.";
	say "     Soon his cock begins leaking noticeably large amounts of precum onto your tongue, with its nutty flavour enticing you to suckle on him even harder. This quickly pushes Danny to the limits of his endurance, and it isn't long before he lets out increasingly urgent grunts. A moment later, his cock starts to throb with the first long spurt of cum into your mouth, followed by more and more afterwards. You eagerly swallow Danny's tasty load and try not to miss a drop, while he grips your shoulders to hold on to something as his body is wracked by a breathtaking orgasm. The small room of his home is filled with slurps and grunts from your fun-times.";
	WaitLineBreak;
	say "     When the spurts of cum eventually ebb off, he looks down upon you with a grin and says, 'Wow, that was one excellent blowjob.' He chuckles as he pulls his prick out of your mouth and rubs its head over your lips for a few seconds, then he tugs his manhood back into the pink undies. Then he saunters over to his workbench, giving the phone a subtle wink before reaching over and turning it off with casual ease, leaving you none the wiser that you just starred in a sex video. 'We should try that again sometime,' he adds, 'I like having fun with you.'";

to say DannySex2: [BJ by Danny]
	say "     ...";

to say DannySex3: [Danny eats the player out]
	say "     ...";

to say DannySex4: [69 with Danny]
	say "     Leaning in towards Danny you whisper into his ear that you would like a blowjob. The slender mall-rat looks at you with a large grin on his face and responds, 'How about something a little more fun? Let's do each other at the same time.' With his hand resting on your crotch, stroking the bulge growing there, he doesn't have any problem in convincing you that this is a great idea. As you start stripping down to have some fun, piling your gear and clothes on a chair nearby, he casually places his smartphone in a spot where it overlooks his mattress. After a few quick swipes of his finger, the device is set to record - and that with you none the wiser about it. He turn to you to watch as you pull off the rest of your gear and clothes, giving your naked body eager looks before starting to put on a little strip-show himself.";
	say "     Danny's long coat is the first to go, being slipped off his shoulders and thrown aside, quickly followed by the black t-shirt covering Danny's chest. The young mall-rat has an attractive slender figure, with his usually brown fur lightening to an off-white shade down his front side, the border between the colors being just on the outside of Danny's cute pink nipples. And those are not the only thing that is pink on him - as the young man reveals a bright pink pair of skimpy briefs as he pushes down his shorts next. The undies show a quite respectable bulge at the front and Danny pulls their front down for a second to show off his already hard cock before tucking it back inside the stretched fabric with a grin. Flicking a streak of his bright green hair behind one of his big ears, the young adult rat strolls over to you, confident in his color choices and eager to have fun.";
	WaitLineBreak;
	say "     Coming to stand before you, Danny pulls you into a makeout session while rubbing his cock against yours with just the soft fabric of his underwear between you. After a little while of tongue-wrestling and grinding his crotch against yours, Danny eventually pulls away to catch his breath, then guides you over to the mattress by the hand. 'Lay down,' he says in a quite eager tone, grinning broadly as you follow his suggestion right away. Letting his eyes wander over your naked body, stretched out in his comfortable nest of blankets and a few pillows, the young mall-rat adds, 'This'll be so much fun!' Then he bends forward, fingers hooking under the elastic of his undies to push them down - all the while having his ass sticking out right towards the smartphone's camera (which is yet unnoticed by you).";
	say "     Danny steps out of his pink briefs and holds them dangling from his finger for a second, standing in front of you in confident nakedness. Then he throws the brightly colored piece of clothing at you with a playful laugh. For a second, your whole view goes pink as he actually manages to let them land right over your face. You raise your hand to pull the undies away, then hesitate a second, instead taking a deep breath. The fabric smells of your sexy rodent friend - clean, yet a little bit musky from holding his furry balls and eager cock. Not a bad smell to get closer acquainted with. Focused on the pink cloth in your hand and sniffing it, you don't even notice as Danny looks over at the recording device, giving it a sly wink.";
	WaitLineBreak;
	say "     Hopping onto the mattress and kneeling next to your body, Danny puts his hands back to work, touching and stroking your cock to get it all the way hard in no time at all. Then he goes on to climb on top of you, putting his knees to both sides of your head and his front end just over your crotch. Your field of vision is filled by his pink, crinkled hole directly in front of eyes and his furry sack dangling above your mouth. It doesn't take a rocket-scientist to realize what he wants next, especially as the slender young man wiggles his hips and causes his balls to swing back and forth. 'Give them a little attention, will ya?' he grunts out, then gives the head of your prick a slow lick that sends a tingle up your spine. Just the one though - seems like he's gonna tease you till you return the favour.";
	say "     Eager to get blown you simply act, starting to lick his sack. Nose pressing in against Danny's crotch, you are treated to a heavy dose of his scent - which is pleasantly masculine, if underlain by a little bit of sweat. You can taste its slightly salty flavor as you take his left orb into your mouth and suckle on it, then switch to the other one to please them equally. Meanwhile, a very satisfied Danny starts to reply in kind and moves his head even closer to your cock, licking up and down its side with the tip of his tongue in between lapping at your own balls. After a little while of sharing oral pleasure, Danny pants out, 'Good job. But let's get to the main bit now.' With that, he shimmies back a little bit more, pulling his balls out of your immediate reach, instead presenting his hard cock.";
	WaitLineBreak;
	say "     You can feel his breath against your hard manhood, then his lips wrap around its head, sliding down over your shaft. Eager to respond in kind, you lift your head up and take him into your mouth, then put a hand on his hips to pull them lower a little bit, allowing more of his manhood into your maw. Danny gives a slight chuckle as he gives a little thrust of his hips, pushing quite a bit deeper into your mouth suddenly. He himself isn't shy about following suit himself either - quickly pushing his lips down along your length until he has taken it all in one go, his cute whiskered nose pressed in against your crotch. His head starts to bob slowly up and down a heart-beat later, with Danny working his tongue over your shaft as he goes along.";
	say "     Wanting to return the favor your quicken up your pace as well and get his cock as deep down your throat as possible. Muffled moans escape both your lips around the hard cocks they are stretched around and your mutual sucking continues. Soon his cock begins leaking noticeably large amounts of precum onto your tongue, with its nutty flavour enticing you to suckle on him even harder. This quickly pushes Danny to the limits of his endurance, and it isn't long before he lets out increasingly urgent grunts. A moment later, his cock starts to throb with the first long spurt of cum into your mouth, followed by more and more afterwards. You're so eager for getting him off that you are almost bowled over by your own orgasm some heartbeats later, when Danny's eager sucking makes your dick gush its creamy load into his mouth.";
	WaitLineBreak;
	say "     You eagerly swallow Danny's tasty load and try not to miss a drop, even as he does the same for you, filling the small room with slurps and grunts. When the spurts of cum eventually ebb off, he removes your cock from his maw, leaving his resting in the comfort of yours, and says 'Not bad at all. Told ya it'd be a blast!' He chuckles and gives your cock a couple more licks before pushing himself up a bit more, lifting his hips and allowing his manhood to slip from your lips. His hand quickly snatches up the pink undies you let go off earlier and he steps into them as he gets up, tugging his softening cock and still somewhat wet balls inside. Then he saunters over to his workbench, giving the phone a subtle wink before reaching over and turning it off with casual ease, leaving you none the wiser that you just starred in a sex video. 'We should try that again sometime,' he adds, 'I like having fun with you.'";

to say DannySex5: [Danny fucks the player's ass]
	say "     'Why don't you strip down so we can have our fun,' he says with a grin, then waits till you're busy with that before he casually places his smartphone in a spot where it overlooks the mattress. After a few quick swipes of his finger, the device is set to record - and that with you none the wiser about it. He turns to you to watch as you pull off the rest of your gear and clothes, giving your naked body eager looks before starting to put on a little strip-show himself. His long coat is the first to go, being slipped off his shoulders and thrown over a nearby chair, quickly followed by the black t-shirt covering Danny's chest. The young mall-rat has an attractive slender figure, with his usually brown fur lightening to an off-white shade down his front side, the border between the colors being just on the outside of Danny's cute pink nipples.";
	say "     And those are not the only thing that is pink on him - as the young man reveals a bright pink pair of skimpy briefs as he pushes down his shorts next. The undies show a quite respectable bulge at the front and Danny pulls their front down for a second to show off his already hard cock before tucking it back inside the stretched fabric with a grin. Flicking a streak of his bright green hair behind one of his big ears, the young adult rat strolls over to you, confident in his color choices and eager to have fun. Coming to stand before you, he pulls you into a makeout session while rubbing his cock against yours with just the soft fabric of his underwear between you.";
	WaitLineBreak;
	say "     After a little while of tongue-wrestling and grinding his crotch against yours, Danny eventually pulls away to catch his breath, then guides you over to the mattress by the hand. He pushes softly on your shoulders until you sink down to your knees, then tells you to get down on all fours. Out of your line of sight - but very much in the focus of the camera - he poses a little while standing behind and over you, hands on his slender hips and humping the air with his bulged out pink undies. Then Danny playfully slides off his skimpy briefs, casually dropping them on the ground as he walks a few steps to grab a bottle of lube.";
	say "     Pouring a goodly amount of the slippery fluid on his cock, the twink of a mall-rat strokes himself and rubs it in, making sure that his well-sized pink shaft is lubed for what will come next. After putting away the bottle again and wagging his hard dick towards the camera with a grin, the mall-rat kneels down behind you and lines himself up with your waiting hole. 'This is great,' he chuckles, 'you being my hero - and a bottom at the same time.' Licking his lips in excitement, he brushes his tip over the opening of your hole once, then again and again, never quite penetrating. 'I would never have guessed before that I'll just get to fuck the hero of our own local nanite apocalypse! One always imagines someone like you to be butch and domineering, wanting to take charge...'";
	WaitLineBreak;
	say "     With as much as Danny enjoys teasing you, stretching out the time before he actually pushes in, you are getting increasingly frustrated at not having a hard cock inside you yet. Soon you can't hold back and look over your shoulder, telling him to fuck you already! The naked young man laughs, then finally starts pushing the tip of his cock against your pucker in earnest. You let out a long moan as it pops past the resistance of your back door, sliding into your waiting body. He continues to slowly sink himself further and further into you, filling the small room with your shared moans. Then finally, you feel the soft hairs of his furry nut-sack brush against your perineum - he's all the way inside you. For being such a twink of a rodent, Danny surely has a very nice piece of equipment. It is at least eight inches long - if not more, giving you a nice full feeling.";
	say "     'Man, that feels nice,' he says before slowly beginning to pump his hips back and forth. Danny takes slow shallow thrusts causing more moans to escape your lips. This low-intensity fucking lasts for a few short minutes before he begins pulling his cock all the way out to the tip, followed by smoothly pushing all the way back in, still keeping the same gentle speed as he did before. His long slow thrusts send a ripple of pleasure up your spine. For such a small guy he sure knows how to use his dick. Before long, his thrusts begin to rapidly pick up in pace as his arousal at being inside you soars higher and higher. Each thrust forces his average sized balls to slap up against [if cunts of player > 0]the base of your pussy[else if cocks of player > 0]your own[else]your perineum[end if].";
	WaitLineBreak;
	say "     Danny's fast thrusts cause [if cocks of player > 0]a trickle of pre to escape your rock hard cock[else if cunts of player > 0]a trickle of female juices to drip down from your increasingly moist nether lips[else]sweat to drip from your brow as you feel hotter and hotter[end if], along with more than a few lewd moans from your mouth. The sounds of your coupling - moans, the slap of his balls against you and the slurping noises of his wet cock abusing your asshole - get loud enough that anyone who passes by the photo shop must surely hear them. Especially since Danny left the doors standing open, something you clearly remember despite the lusty haze that has come over your mind.";
	say "     On occasion Danny changes the position he fucks you in - from kneeling to crouching over you, and back again, trying out a few different things in between - all of which serves to open up a whole new angle for his cock to push into you. With such eager and arousing experimentation, the male rodent soon finds an ideal position to grind against your prostate. His long cock rapidly rubs back and forth against your most sensitive spot, immensely intensifying your pleasure and the volume of your moans. Only a few minutes later you find yourself clenching your hole around his cock as [if cocks of player > 0]your own manhood starts spraying a heavy load all over the sheets of Danny's mattress[else if cunts of player > 0]femcum starts to gush out of your needy pussy, dripping down onto the sheets of Danny's mattress[else]your whole body is filled with the tingling sensation of a breathtaking orgasm[end if].";
	WaitLineBreak;
	say "     The rhythmic tightening of your hole is enough to push the young rat past the point of no return as well. He shouts, 'Oooh FUCK YEAH!' as his cock erupts deep inside you, painting your passage with spurt after spurt of his hot spunk. When his orgasm ebbs off after a little while, Danny pulls his spent cock from your ass slowly, creating a wet slurp as the tip slips out of your anus. He rests his dick between your buttocks for a moment, panting loudly, then takes a deep breath and proudly announces, 'I just bred the hero of the nanite apocalypse.' Confused about who he is talking to, you look over your shoulder and see Danny look to the side, a beaming smile on his face and raising his thumb. Following the line of his sight, you spot the smartphone and see the blinking red light at its corner, realizing that he filmed everything.";
	setmonster "Mall Rat";
	say "[mimpregchance]";
	say "     'Hope you don't mind,' Danny says, putting a hand on the small of your back in a try to keep you calm. 'I promise - the only person who will see that vid is me.' You don't even need to look to know that he has one hand behind his back with crossed finger as he says that. As you chuckle at the antics of your photo- and video-obsessed friend, a little bit of his cum starts to leak out of your hole. 'Wait - hold still for a moment,' Danny says excitedly, then jumps up to snatch his smartphone, bringing its camera close to your ass to focus on your creamy hole. Lowering his voice (but still clearly audible to you), the slender mall-rat talks to the smartphone, 'Look at that sight folks. The well-bred hero of the land. And bred by yours truly. Just look at the mess.' With that said, he brings his hand to your rear entrance and pushes two fingers inside, pumping them in and out a bit to make more and more cum squirt out.";
	WaitLineBreak;
	say "     After a few more moments of being fingered by Danny, he whispers to the camera, 'That's it for today.' Turning the smartphone off and setting it down, he then proceeds to grab a little towel and helps you to clean up. 'Hope I didn't get too carried away earlier, or did I?' he says while giving you a friendly smile afterwards. You can't really hold it against him - getting recorded during sex was almost assured with this cheeky mall-rat after all. Pulling him close to plant a kiss on his cute little nose, you tell Danny not to worry about it.";

to say DannySex6: [player fucks Danny's ass]
	say "     'So the local hero wants a piece of my ass, huh?' Danny asks with a chuckle, then wiggles his hips from side to side and winks at you with a grin. You give him a look laden with lust, puffing out your chest to strike a playful hero pose, then signal for him to remove his clothes. 'Fine,' he replies, 'But only because you helped me out. I'm not that easy.' With that said, he bounces over to the other side of the room and positions his phone so that it can record your rut. Walking back into the center of the room afterwards, he starts to strip, grinning at you and in between throwing a wink or two towards the camera. His long coat is the first to go, being slipped off his shoulders and thrown over a nearby chair, quickly followed by the black t-shirt covering Danny's chest. The young mall-rat has an attractive slender figure, with his usually brown fur lightening to an off-white shade down his front side, the border between the colors being just on the outside of Danny's cute pink nipples.";
	say "     And those are not the only thing that is pink on him - as the young man reveals a bright pink pair of skimpy briefs as he pushes down his shorts next. The undies show a quite respectable bulge at the front and Danny pulls their front down for a second to show off his already hard cock before tucking it back inside the stretched fabric with a grin. Flicking a streak of his bright green hair behind one of his big ears, the male rat strolls over to you, confident in his color choices and eager to have fun. Coming to stand before you, he pulls you into a makeout session while rubbing his cock against your crotch. Helped by the young rat's slender fingers tugging on clothing here and stroking your body there, you soon find yourself naked, hard and horny, entwined with the slender rodent while the unblinking eye of the smartphone captures it all. Libido aflame from all the build-up, you grab the back of his neck a moment later, pulling the two of you apart a little so you can take in his enticing body, then spin him around and push against Danny's back, making him fall onto his mattress on all fours.";
	WaitLineBreak;
	say "     You're behind your young friend in a second, kneeling on the crumpled blankets of his comfy bedding, eager hands shoving his pink undies down from the nice and compact ass they've been hiding. Hard cock leading the way, you push against him, sliding it up and down between firm, soft-furred buttocks. As you start to position yourself for a penetration, Danny wiggles his ass and comments in a provocative tone, 'Not even going to loosen me up a bit first? Someone's being a greedy top today.' You sigh in response and despite the urge to just pound yourself home into the depths of his squirming body, you spread Danny's ass-cheeks apart before repositioning yourself face first against his rear end. 'That's more like it,' he says as you start licking, clearly amused. Without even looking, you simply know that he was staring right at the camera with a broad grin when he said that.";
	say "     Pressing your tongue in between his cheeks, you start swirling it around the mall-rat's hole, teasing his pucker with soft touches and licks before plunging in and working at slipping your tongue inside. After few minutes of eating him out and making Danny pant breathlessly, you replace your tongue with a finger. Slowly prodding it in and out his back door, Danny soon lets a lust-filled moan slip out, followed by another, then the gasp of, 'Oooh, that feels great!' He's clearly ready for more, so you move up to two fingers, then after some more fingering and stretching eventually even a third one. Using your digits to push against the sides of his boy-pussy, you draw a groan from him as it is stretched a little bit further yet, then stroke the tip of your middle finger against his prostate to distract the mall-rat from the discomfort.";
	WaitLineBreak;
	say "     After a minute or two more of getting him loosened up, your patience eventually runs out and you withdraw your fingers with a sudden pull that leaves him gasping in surprise at its suddenness. Before Danny can react with anything more than that, you've repositioned yourself back right behind him and press the tip of your erection in against his winking hole. With the urgent push you give, your cock sinks easily into his loosened, yet still nicely tight chute, drawing a loud moan from Danny as you do so. Eager to fuck your mall-rat friend you sink your cock even deeper into his hole and Danny groans in arousal as you fill him with your manhood. Once you finally bottom out, Danny looks back to you and says, 'Damn, I could get used to feeling your balls against my ass. Maybe. Now show me how the hero of the apocalypse fucks.'";
	say "     Flexing his inner muscles around your prick, Danny entices you to begin thrusting in and out of his hole, setting a fast tempo for your coupling. His hole tightly grips your shaft and you especially like the feeling of the ring of his pucker encircling the base of your cock when you're all the way in. Danny moans beneath you as your thrusts start becoming faster and faster, your balls slapping hard against his ass. Despite everything you dish out, sawing in and out and deep-dicking the twink of a mall-rat, his hole never loses even an inkling of its oh so pleasant tightness - and before long, you feel the urge to cum rapidly approaching. With a satisfied bellow, you hammer your prick all the way in barely in time, then start flooding his insides with your heavy load, spurt after spurt of cum painting his insides white.";
	WaitLineBreak;
	say "     Feeling your manhood pulse and throb against his insides, as well as the growing sensation of fullness from being stuffed with your cum, Danny finds himself overwhelmed as well just moments later. He lets out a loud moan, digging his hands into the blankets of his bedding as he fires a load all over them. It is a pleasant sensation to be inside him as he comes, as Danny's inner muscles contract with each spurt of cum he blasts out. Eventually, after your own orgasm has subsided and the mall-rat's muscle spasms taper off too, no longer stimulating your cock to stay hard inside him, you pull out of his ass. A little gush of cum comes out with it before his pucker pulls tight again - you can't help but watch with a grin as it starts to run down between his cheeks.";
	say "     'Entranced by my great ass?' he chuckles and wiggles his hips side by side. In reply, you give him a light swat on the buttocks with your hand, prompting him to quip, 'I knew it - you can't even keep your hands off it!' After that, Danny stands up and saunters over to his phone, giving it time to take in his naked form on the way. Leaning over the phone, he says in a loud whisper, 'Well folks, as you've just seen - our hero fucks hard and deep. And he has a definite thing for butts - not that I'm complaining, hah. See you next time.' Shaking your head about becoming the starring member in a sex vid with Danny, you gather your things and head out.";

to say DannySex7: [Danny fucks the player's pussy]
	say "     'Why don't you strip down so we can have our fun,' he says with a grin, then waits till you're busy with that before he casually places his smartphone in a spot where it overlooks the mattress. After a few quick swipes of his finger, the device is set to record - and that with you none the wiser about it. He turns to you to watch as you pull off the rest of your gear and clothes, giving your naked body eager looks before starting to put on a little strip-show himself. His long coat is the first to go, being slipped off his shoulders and thrown over a nearby chair, quickly followed by the black t-shirt covering Danny's chest. The young mall-rat has an attractive slender figure, with his usually brown fur lightening to an off-white shade down his front side, the border between the colors being just on the outside of Danny's cute pink nipples.";
	say "     And those are not the only thing that is pink on him - as the young man reveals a bright pink pair of skimpy briefs as he pushes down his shorts next. The undies show a quite respectable bulge at the front and Danny pulls their front down for a second to show off his already hard cock before tucking it back inside the stretched fabric with a grin. Flicking a streak of his bright green hair behind one of his big ears, the male rat strolls over to you, confident in his color choices and eager to have fun. Coming to stand before you, he pulls you into a makeout session while rubbing his cock against [if cocks of player > 0]yours[else]your crotch[end if] with just the soft fabric of his underwear between you.";
	WaitLineBreak;
	say "     After a little while of tongue-wrestling and grinding his crotch against yours, Danny eventually pulls away to catch his breath, then guides you over to the mattress by the hand. He pushes softly on your shoulders until you sink down to your knees, then tells you to get down on all fours. 'Let's do it doggy-style,' he says, excitement clearly audible in his voice. Out of your line of sight - but very much in the focus of the camera - he poses a little while standing behind and over you, hands on his slender hips and humping the air with his bulged out pink undies. Then Danny playfully slides off his skimpy briefs, casually dropping them on the ground.";
	say "     After wagging his hard dick towards the camera with a grin, the mall-rat kneels down behind you and slides a hand between your legs, seeking out your pussy with his fingers. Rubbing over the slightly spread nether lips, he pushes his fingers into your drippingly wet vagina and pumps in and out a few times, then gets his dick wet with your juices by stroking it a few times. With his shaft glistening in femcum, he lines himself up with your waiting hole. 'This is great,' he chuckles, 'you being my hero - willing to let me fuck you at the same time.' Licking his lips in excitement, he brushes his tip over the folds of your nether lips once, then again and again, never quite penetrating. 'I would never have guessed before that I'll just get to fuck the hero of our own local nanite apocalypse! One always imagines someone like you refusing anyone but some rich and handsome hunk to have a go...'";
	WaitLineBreak;
	say "     With as much as Danny enjoys teasing you, stretching out the time before he actually pushes in, you are getting increasingly frustrated at not having a hard cock inside you yet. Soon you can't hold back and look over your shoulder, telling him to fuck you already! The naked young man laughs, then finally nudges apart your nether lips and slides the tip of his cock in between. You let out a long moan as it slides into your depths, soothing the fire of need that had been growing in your loins. He continues to slowly sink himself further and further into you, filling the small room with your shared moans. Then finally, you feel the soft hairs of his furry nut-sack brush against your crotch - he's all the way inside you. For being such a twink of a rodent, Danny surely has a very nice piece of equipment. It is at least eight inches long - if not more, giving you a nice full feeling.";
	say "     'Man, that feels great,' he says before slowly beginning to pump his hips back and forth. Danny takes slow shallow thrusts causing more moans to escape your lips. This low-intensity fucking lasts for a few short minutes before he begins pulling his cock all the way out to the tip, followed by smoothly pushing all the way back in, still keeping the same gentle speed as he did before. His long slow thrusts send a ripple of pleasure up your spine. For such a small guy he sure knows how to use his dick. Before long, his thrusts begin to rapidly pick up in pace as his arousal at being inside you soars higher and higher. Each thrust forces his average sized balls to slap up against [if cunts of player > 0]your pussy lips[else if cocks of player > 0]your own[else]your perineum[end if].";
	WaitLineBreak;
	say "     Danny's fast thrusts cause [if cocks of player > 0]a trickle of pre to escape your rock hard cock[else if cunts of player > 0]a trickle of female juices to drip down from your increasingly moist nether lips[else]sweat to drip from your brow as you feel hotter and hotter[end if], along with more than a few lewd moans from your mouth. The sounds of your coupling - moans, the slap of his balls against you and the slurping noises of his wet cock abusing your pussy - get loud enough that anyone who passes by the photo shop must surely hear them. Especially since Danny left the doors standing open, something you clearly remember despite the lusty haze that has come over your mind.";
	say "     On occasion Danny changes the position he fucks you in - from kneeling to crouching over you, and back again, trying out a few different things in between - all of which serves to open up a whole new angle for his cock to push into you. With such eager and arousing experimentation, the male rodent soon finds an ideal position to grind into your needy snatch. His long cock rapidly rubs back and forth against your most sensitive spots inside, immensely intensifying your pleasure and the volume of your moans. Only a few minutes later you find yourself clenching the muscles of your vagina around his thrusting cock as [if cocks of player > 0]your own manhood starts spraying a heavy load all over the sheets of Danny's mattress[else if cunts of player > 0]femcum starts to gush out of your needy pussy, dripping down onto the sheets of Danny's mattress[else]your whole body is filled with the tingling sensation of a breathtaking orgasm[end if].";
	WaitLineBreak;
	say "     The tremble of your inner muscles around his manhood is enough to push the young rat past the point of no return as well. He shouts, 'Oooh FUCK YEAH!' as his cock erupts deep inside you, breeding you with spurt after spurt of his hot spunk. When his orgasm ebbs off after a little while, Danny pulls his spent cock from your dripping pussy slowly, creating a wet slurp as the tip slips out between the swollen nether lips. He rests his dick between your buttocks for a moment, panting loudly, then takes a deep breath and proudly announces, 'I just bred the hero of the nanite apocalypse.' Confused about who he is talking to, you look over your shoulder and see Danny look to the side, a beaming smile on his face and raising his thumb. Following the line of his sight, you spot the smartphone and see the blinking red light at its corner, realizing that he filmed everything.";
	setmonster "Mall Rat";
	say "[fimpregchance]";
	say "     'Hope you don't mind,' Danny says, putting a hand on the small of your back in a try to keep you calm. 'I promise - the only person who will see that vid is me.' You don't even need to look to know that he has one hand behind his back with crossed finger as he says that. As you chuckle at the antics of your photo- and video-obsessed friend, a little bit of his cum starts to leak out of your pussy. 'Wait - hold still for a moment,' Danny says excitedly, then jumps up to snatch his smartphone, bringing its camera close to your rear end to focus on your creamy hole. Lowering his voice (but still clearly audible to you), the slender mall-rat talks to the smartphone, 'Look at that sight folks. The well-bred hero of the land. And bred by yours truly. Just look at the mess.[if player is impreg_able] Maybe I even knocked her up.[end if]' With that said, he brings his hand to your pussy and pushes two fingers inside, pumping them in and out a bit to make more and more cum squirt out.";
	WaitLineBreak;
	say "     After a few more moments of being fingered by Danny, he whispers to the camera, 'That's it for today.' Turning the smartphone off and setting it down, he then proceeds to grab a little towel and helps you to clean up. 'Hope I didn't get too carried away earlier, or did I?' he says while giving you a friendly smile afterwards. You can't really hold it against him - getting recorded during sex was almost assured with this cheeky mall-rat after all. Pulling him close to plant a kiss on his cute little nose, you tell Danny not to worry about it.";

Danny ends here.
