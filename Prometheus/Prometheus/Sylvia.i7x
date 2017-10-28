Version 1 of Sylvia by Prometheus begins here.

[ hp of Sylvia - relationship variable with the player          ]
[   0: not met                                                  ]
[   1: told them her room number                                ]
[   2: watched her give a BJ + told them her room number        ]
[   3: met her in her room                                      ]
[   4: helped her recover from an unnatural heat                ]
[   5: ...                                                      ]
[   6: ...                                                      ]
[   7: ...                                                      ]
[ 100: refused her event, no further contact                    ]

[SylviaConv                                                     ]
[   0: not talked to                                            ]
[   1: One conversation                                         ]
[   2: Two conversations                                        ]
[   3: Three conversations                                      ]
[   4: Four conversations                                       ]

An everyturn rule:
	if a random chance of 1 in 2 succeeds: [present]
		move Sylvia to Sylvia's Room;
	else: [Away on an adventure.]
		remove Sylvia from play;

Section 1 - Room Declaration

Sylvia's Room is a room.
The description of Sylvia's Room is "[SylviasRoomDesc]".

to say SylviasRoomDesc:
	say "     The floor of Sylvia's room is clean. The walls, however, are covered in pictures of various canines. Wolves, foxes, corgis, border collies, the list goes on. If she didn't have a window, you would think that side would be plastered with them too. On a bookshelf, hundreds of books of various subject including biology and zoology. A desk is pushed against the wall in one corner with a dead laptop, a photo frame, a vase with some flowers, and two well-thumbed books. One is Charles Darwin's [']On the Origin of Species['], and the other is a children's book with dogs and a smiling family. Beside the window is a small armchair with a cushion depicting a border collie. Her bed is well made, but there are strands of fur on it, not all of it looks like hers...";

Section 2 - NPC Declaration

Sylvia is a woman. The hp of Sylvia is usually 0.
SylviaConv is a number that varies. SylviaConv is usually 0.
The description of Sylvia is "[SylviaDesc]".
The conversation of Sylvia is { "Woof woof" }.
The scent of Sylvia is "     The pretty collie smells mostly like a dog. Cleanish, but with undertones of other creatures.".

to say SylviaDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Sylvia] <- DEBUG[line break]";
	else:
		say "     Sylvia is a young anthro border collie. Her hind legs, paws, chest, muzzle, and the tip of her fluffy tail are white, while the rest of her fur is black. She gazes at you with green eyes, an abnormality in dogs. [if hp of Sylvia < 4]The shirt she wears does little to hide her two C cup breasts, but keeps them from the eyes of passing creatures. She is wearing a royal blue skirt that hides her thighs from view.[else]Her lack of clothing means you can see her two C cup breasts, covered in white fur. You can also see her canine vulva, a small amount of moisture glistening at the bottom. [end if]";
		LineBreak;
		say "     From the interactions you've had with her so far, Sylvia is a confident young lady, though your first encounter shows that she can be brought to despair. [if hp of Sylvia < 4]While she seems fairly sexually open, people that she is unfamiliar with must first earn her trust and respect before they can expect to be pleasured by the border collie. [else if hp of Sylvia > 3]Due to your help and time spent with her, she willingly will tend to some of your carnal needs. [end if] She looks back at you, striking a seductive pose, before sticking her tongue out light-heartedly.";

Section 3 - Talking

instead of conversing the Sylvia:
	say "     You approach Sylvia, whom seems pleased to see you. She indicates for you to sit on the bed with her and asks what you wish to talk about, her tail waving calmly.";
	WaitLineBreak;
	say "[SylviaTalkMenu]";

to say SylviaTalkMenu:
	say "[line break]";
	say "What do you wish to discuss with Sylvia?";	
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Herself";
	now sortorder entry is 1;
	now description entry is "Try to learn more about the collie girl.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Family";
	now sortorder entry is 2;
	now description entry is "Ask about her family.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Friends";
	now sortorder entry is 3;
	now description entry is "Ask about her friends.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Hobbies";
	now sortorder entry is 4;
	now description entry is "Ask what she does for fun.";
	[]
	If SylviaConv > 3:
		choose a blank row in table of fucking options;
		now title entry is "Her interest in biology";
		now sortorder entry is 5;
		now description entry is "Find out about where her interest in biology came from.";
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
				if (nam is "Herself"):
					say "[SylviaTalk1]";
					if SylviaConv < 4:
						increase SylviaConv by 1;
				if (nam is "Family"):
					say "[SylviaTalk2]";
					if SylviaConv < 4:
						increase SylviaConv by 1;
				if (nam is "Friends"):
					say "[SylviaTalk3]";
					if SylviaConv < 4:
						increase SylviaConv by 1;
				if (nam is "Hobbies"):
					say "[SylviaTalk4]";
					if SylviaConv < 4:
						increase SylviaConv by 1;
				if (nam is "Her interest in biology"):
					say "[SylviaTalk5]";
					if SylviaConv < 5:
						increase SylviaConv by 1;
				say "      Sylvia sits patiently, waiting to see whether you wish to continue the conversation";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You stand up, indicating an end to the conversation. Sylvia smiles at you, before looking out her window.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;
	
to say SylviaTalk1: [Talk about her]
	say "     'As I said, I'm on exchange with Tenvale College, all payed for by a scholarship. I've always been good at the sciences. Between the pushing of my father and a family friend, I was advanced several years at school. It did mean that I didn't get much time to do what normal girls do; ride horses, gossip, talk about cute boys... but I really enjoyed learning about animals so I focused on that,' Sylvia responds. 'I was accepted into university, studying animal biology. The material and experiences were thrilling, but by the time I started considering a doctorate, the pressure I was beginning to feel from my family and tutors, unintentional I'm sure, was getting unbearable. So, I asked to come here for a complete change of scenery. I wasn't expecting it to change [italic type]this [roman type]much,' the collie gestures at the city with a chuckle.";
	say "     'But you didn't really want to know about my education, did you? The day the city changed was mostly normal. I'd had lunch with some friends and was just sitting down in my room to work through some lab notes, when I heard roaring and screaming. Then I felt itchy and noticed I was growing fur. I don't remember much else from that day because I tripped over my chair trying to look out the window and knocked myself out. When I woke, I was the beautiful young lady you see before you.' Sylvia bats her eyelids at you. I would assume I was infected by the dog fur I always seem to have on my clothes, but who could complain about being changed into a sexy collie? After that I went to make sure my friends were still alright. As you probably saw when we first met, it nearly ruined my degree, if it hadn't been for Julian,' she trails off.";
	
to say SylviaTalk2: [Talk about her family]
	say "     'Wanting to learn about my family, are you? reckon you might like my brother more than me? Tough. He isn't here,' Sylvia jokes. 'My father was a soldier, but has now retired. My brother, however, had enlisted before I left for university. My sister and I were miserable the day he left, but he sent us letters fairly often. I don't know how he is now since, as you know, the mail stopped getting into the city. My family must be so worried about me,' the collie laments, looking at the photo on her desk. 'My mother was a housekeeper, yes we still have those in England, but the birth of my brother meant that she had to stay at home. When my sister and I were born she realised that that time of her life was over, and so she did baking for the village shop.' Sylvia sighs, fond memories of childhood in the fore of her mind.";
	say "     You cough politely, wanting to hear more. When you point out that she has yet to mention the family friend that encouraged her into science she snaps from her thoughts and continues. 'I was lucky to have a supportive family, even if I hadn't been interested in science, they would have been happy. However, a family friend, an entrepreneur, said that biologists could go far in the world, and would be willing to employ me once I had been to university. The family that my mother was maid for also were willing to help me, as I had grown up on their estate. I was a very lucky young lady growing up.' She smiles returning to her youth.";
	
to say SylviaTalk3: [Talk about her friends]
	say "     'My friends? Am I not good enough for you?' Sylvia teases. ' Well, you've already met Julian, he's a biochemist so we work together fairly often, especially as he used to be part of my laboratory group. Julian has a twisty mind, good at working out problems, a trait I'm sure you already saw when you met us. He is a little shy, though that may just be compared to me, I doubt everyone would just accept someone watching them touch someone's privates in broad daylight. He's from Canada, so of course, he's really nice. He claims he grew up among wolves, but that may just be an expression.";
	say "     'There are also Evelyn and Evenlyn who are twins. Why someone would name their children such similar names is beyond me, perhaps it's a London thing as that is where they were from. They were studying engineering I'm told. I met them after the changes when I was going to the lab to see how damaged it was. They were stealing from the rooms. I doubt the equipment is usable any more, but they seem to think the machines are still valuable. They're cats so I was surprised when they were willing to talk to me so quickly, really quite charismatic those two,' the collie contemplates, scratching her chin. I met Septus, the captain of the wolf football team, he seemed nice, but was slightly disappointed when I said I wasn't interested in becoming a cheerleader. He says hello if he sees me while looking for new recruits, so I'd consider him a friend.' Sylvia thinks for a minute, 'I think that's all.'";
	
to say SylviaTalk4: [Talk about her hobbies]
	say "     ' What do I do for fun? Well, I like knitting, moonlit walks on the beach, and plotting the downfall of the government,' Sylvia says seriously. Recognising humour, you wait for her to answer properly. 'Growing up, I learnt how to play badminton, I'm quite good at it too considering I was a national representative for a while. Withdrew from the team later in high school, but I carried on playing casually. I did sabre fencing during the winter, as badminton is a summer sport, wasn't quite as good at that, but Daddy says most people don't fight fair outside the strip, so I learnt self-defence too. My family allowed me to practice on them, even my mother. They considered it very important that I be able to protect myself. But the fencing means I can shank someone with a sword if I have mine at hand.' She explains, gesturing at a wooden case that is sticking out from under her bed.";
	say "     ' But besides sporting activities, I spend quite a bit of time reading, both studying biology and recreationally. You've probably noticed I have a fair few books. While I didn't used to socialise much, since making friends here, I spend a lot of time with them. The changes in the city affected our professors, meaning that we don't tend to have essays anymore, so we don't have that as a pressure any more. I collect tissue and fluid samples from people within the college as well as outside it, so that takes up a lot of time. The university is a lot safer, but the greater city area provides more diversity, which improves the information I gather. Or would gather if I had access to facilities that could analyse them. But yes, that is what I would describe as my hobbies.'";
	
to say SylviaTalk5: [Talk about her interest in biology]
	say "     'Are you sure you want to know, it's not quite as benevolent as many other people's reasons might be,' Sylvia questions you concernedly. 'Okay, I suppose I trust you enough. When I was young we had quite few dogs. Two border collies, a german shepherd, and two corgis. They were all male bar except one of the collies called Lucy whom I was especially attached to. I was about seven when I came home from school one day to find the german shepherd, Argus, mating with her. At that stage I didn't know what sex was and was curious what they were doing, so I asked my father. His response has stayed with me to this day. He told me that they were mating, trying to have puppies. and that was where children came from. I was seven when I was given the talk. He took me back into the room where they were, by which time Argus was tied. Daddy told me that this was an important part of life, and that I shouldn't be ashamed to watch nor be ashamed to discuss things such as sex.";
	say "     'Over the time we had her she mated with all of them, the tart,' Sylvia muses amusedly. From that day I was obsessed with animals. Where they lived, how their lives interacted with others of their species as well as those not. My first science project was on the importance of foxes for the rural ecosystem. One of my A level essays was on the social structure and mating habits of timber wolves. My teachers were concerned, but my family was proud of how much effort and passion I was devoting to biology. When I was sixteen I rescued a border collie puppy from drowning and promptly took it home. I was allowed to keep him, so I named him Ajax. He grew up to be big boy. I hope my parents are still looking after him and not spoiling him too much,' Sylvia says, tilting her head. 'But anyway, that's the gist of why I started studying biology. Saw dogs having sex, decided I would make a career where I might see more animals fornicating. Not the most noble of reasons, I know.";

Section 4 - Sex

instead of fucking Sylvia:
	if (lastfuck of Sylvia - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     Sylvia looks at you, an amused expression gracing her face. 'Letting your instincts control you? Sorry, but you'll have to find someone else.' The then melodramatically places a hand to her forehead. 'For I have... a headache.'";
	else if hp of Sylvia < 4: [relationship not high enough]
		say "     'As attractive as you are, we got to know each other more in other ways before letting you ravish me.' She gasps, 'we could talk about BOYS.'";
	else: [ready for sex]
		say "     Looking around the room, you see the collie isn't paying attention to you, instead, gazing out the window with a book in hand. The moisture around her groin suggests she is ready though.'";
		WaitLineBreak;
		say "[SylviaSexMenu]";

to say SylviaSexMenu:
	say " [line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Receive Fellatio";
		now sortorder entry is 1;
		now description entry is "Ask Sylvia to give you a blowjob";
	[]
	if cunts of player > 0: [only females and herms can be eaten out.]
		choose a blank row in table of fucking options;
		now title entry is "Receive Cunnilingus";
		now sortorder entry is 2;
		now description entry is "Feel her tongue in your pussy";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give Cunnilingus";
	now sortorder entry is 3;
	now description entry is "Give some attention to her canine cunt";
	[]
	if cocks of player > 0: [only males and herms can mount her]
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 4;
		now description entry is "Mount her and pound that ass";
	[]
	if cunts of player > 0 and cocks of player is 0: [only females can trib]
		choose a blank row in table of fucking options;
		now title entry is "Tribadism";
		now sortorder entry is 5;
		now description entry is "Stimulate each other's pussy";
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
				if (nam is "Receive Fellatio"):
					say "[SylviaSex1]";
				if (nam is "Receive Cunnilingus"):
					say "[SylviaSex2]";
				if (nam is "Give Cunnilingus"):
					say "[SylviaSex3]";
				if (nam is "Anal"):
					say "[SylviaSex4]";
				if (nam is "Tribadism"):
					say "[SylviaSex5]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the collie girl, shaking your head slightly as she gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;
	
to say SylviaSex1: [Receive a blowjob]
	say "     Closing the door to avoid the eyes of other students, you sit down on the bed. Turning around at the sound of the door closing, Sylvia moves over to you, her eyes meeting yours. At your request for her to give you a blowjob, she licks her lips and kneels, her breasts brushing your exposed erection. Cupping your balls, she runs her wide tongue up your shaft, the trail of saliva causing a tingle as it cools. Pulling back, the collie asks you to stand, not wishing to dirty the bed covers. You do so, looking down at the dog on her knees between your legs. Stroking the side of her face, you thrust forward into her waiting mouth, your cock being enveloped in the soft, wet warmth within. She sighs, her tongue rotating around you as you penetrate her mouth. Eager to increase the pace, you grip the sides of her head and pound your groin against her face, the increase in roughness doing little to perturb the eager bitch whom whines needfully";
	say "     A paw creeps its way over your backside, before a digit wriggles into your anus, causing you to clench and your member to leap in her mouth. She gives a muffled giggle as you resume and continues to work her finger in and out of your rear. As a knuckle repeatedly stimulates against your prostate, you feel your orgasm nearing. As it crests, you push into her mouth until your scrotum is against her jaw before climaxing. Her eyes widen as your cum squirts down her throat and the muscles of your anus constrict and relax around her finger. As your orgasm recedes, you release her head and stroke over her ears, telling her what a good girl she is. Letting out a contented moan, she pulls her mouth of your penis, catching a few stray strings of sperm on her tongue, and nuzzles her cheek up against your groin. Patting her, you retrieve the clothes you brought and leave her savouring your taste, a sticky patch unnoticed on her cheek.";
	
to say SylviaSex2: [Be eaten out]
	say "     As much as an audience might excite you, you close the door before taking your clothes off and tossing them onto Sylvia's bed. Turning at the sound, the collie is greeted by your naked body, a sight she seems to find alluring. She slinks over to you, her tits swaying slightly. Seemingly knowing exactly what you want, Sylvia licks up your thigh, causing your pussy to twitch. Tracing her paws over your backside, she licks your gash enthusiastically, collecting your juices in her mouth. Despite your knees weakening at this treatment, between force of will and the surprising strength of the border collie. A claw traces over your back entrance, but continues over, teasing your tingling nerves. She looks up at you saucily, knowing exactly what she is doing and the effect that she is having on you with her ministrations.";
	say "     With each lick, her nose rubs against your clitoris, the friction heightening your growing arousal. With a squelch, the collie forces her tongue into your cunt, the surprise and sensation causing your pelvis to mash against her face, driving her even deeper. As she writhes her tongue around in your passage, she snuffles against your clit, ensuring that it remains unforgotten. After a short time of this treatment, your building orgasm overwhelms you, causing you climax around her tongue and over her face. Fem cum sprays against her mouth as she pulls back, replacing her tongue with a thrusting finger. She guides you to sit on her bed as he licks her lips, collecting your essence. As your climax comes to an end, she withdraws her finger and sticks it in her mouth, giving you a dirty wink as she sucks it, savouring your flavour. As you redress yourself, Sylvia returns to writing notes at her desk, her finger still in the corner of her mouth.";

to say sylviaSex3: [Eat her out]
	say "     Feeling that the collie deserves some attention, you close the door a step up behind her, caressing her shoulders. You whisper that you'd like to taste her doggy cunt, a request that causes her tail to start wagging, signalling her desire for it. You quickly remove what little you are wearing and place them on a chair, before turning back to the canine. You admire her toned body, not overly muscular, but a form that has been worked for. She sits on the edge of her bed and opens her legs, displaying her moist pussy. You kneel and trace your fingers over her spade, slipping a digit in. Content, you bring your mouth forward and give a tentative lick, before continuing confidently, her yips of pleasure spurring you on. She strokes the back of your head, applying subtle pressures to guide your tongue to more pleasing zones in her vagina.";
	say "     As you lick, her juices flow across your tongue, dripping onto her sheets or trickling into your mouth. Your hands grip her thighs, your thumbs rubbing around her genitals, adding extra stimulation. Realising you have forgotten her clit, you pull your tongue from her passage and purse your lips around it, sucking. This sends her over the edge, causing her hips to spasm and thrust against your face. Her fem cum shoots into your mouth as she caresses the back of your head, sighing and moaning in time with the contractions. Surprised at how quickly she climaxed, you sit up and look at her, allowing the last of her orgasm to drip onto the bed. She gives a weak smile and shakes her head, declining to speak further on the matter. Shrugging you stand up and re-dress. she gives you a quick thank you before lying back and relaxing.";
	
to say SylviaSex4: [Anal]
	say "     As Sylvia gazes out the window, her backside catches your eye. Covered in fur, its soft curve causes a carnal hunger to rise in your stomach. Closing the door, you creep up behind her mischievously, hoping to convince her to sate your desire. 'I can hear you, and I don't advise grabbing me,' Sylvia warns cheerfully, turning around. Seeing your erection, she blushes slightly before stepping next to you and grazing a palm across it. Hearing your request for anal, she smiles before crouching on all fours and flagging her tail. Her tail star twitches as she awaits your touch. Remembering last time, you take the bottle of lube out of her desk and slather your penis, before kneeling behind her. Applying some to your fingers, you press them against her anus, smearing the substance around your target, slipping two fingers in to ease internal passage as well. Ready, you align yourself behind her, a smile from her giving you consent.";
	say "     Gripping the base of her tail, you thrust forward penetrating her and causing a moan to burst from her mouth. The muscles in her anus squeeze around you, unsure whether to repulse the intruding appendage or draw it in. Your caresses of her bottom loosen the constriction, allowing you to withdraw for another thrust. As you eagerly couple, your shaft oscillating into her willing hole, Sylvia lets out the occasional grunt, moan, or yip, expressing the joy and pleasure that you are giving her. You too let out animalistic growls, a primal instinct urging you to make her your bitch. Opposing this instinct, a rational part of your mind reminds you to restrain yourself, lest you hurt her. Rationality wins out as you release your grip on her tail and instead move your hands to her waist as you continue to thrust into her bowels.";
	WaitLineBreak;
	say "     Sylvia turns her head, watching your penis appear and disappear from view. You can hear her tongue slapping in her mouth, mirroring the sound of your groin against her rear. You lean over her, bringing an arm up to cup the side of her face as she twists around to exchange a kiss with you. Breaking the kiss, she leans forward angling her body so that her chest is pressed against the ground with her rear raised in true canine fashion. You can hear the moisture dripping from her cunt splashing against the carpet, your actions greatly arousing the collie. You run a hand over her tummy, feeling the impacts of your thrusts through her body. Resuming your grip on either side of her hips, you increase the rate at which you pound into her";
	if cockname of player is listed in infections of Knotlist:
		say "     As you near climax, a strong urge to knot her arises. Desperately, you attempt to force your knot past her anal ring, each thrust swelling your knot further. In a last-ditch attempt, you grab her legs and pull back on her as you press forward. Sylvia lets out a cry of pure pleasure, her anus relenting enough for you to knot her. Not a moment afterwards your climax erupts, cum shooting deep into her bowels, setting off her own orgasm. You both let out howls of ecstasy as her ass squeezes around your [cock of player]cock and juices spray from her pussy onto your leg. Exhausted, you both lie there, waiting for hour penis to soften. Remembering her request last time, you grab a beaker and hold it beneath your bodies. As you pull out with a slurp, a steady flow of semen runs into the beaker. Sylvia collapses on her side before hauling herself to her feet. She takes the beaker from you and, giving you a wink, takes a sip. Shaking your head and chuckling, you stand up and dress yourself.";
	else:
		say "     Nearing climax, your grip tightens and you manage a last few powerful strokes before you cum inside her, setting of her own orgasm. You feel her ass squeeze around your [cock of player]cock as juices spray from her pussy onto your leg. You let out a sigh feeling your semen slosh against your tip as her muscles compress around you. Remembering her request last time, you grab a beaker and hold it beneath your bodies. As you pull out with a slurp, a steady flow of semen runs into the beaker. Sylvia collapses on her side before hauling herself to her feet. She takes the beaker from you and, giving you a wink, takes a sip. Shaking your head and chuckling, you stand up and dress yourself.";
	
to say SylviaSex5: [Tribbing]
	say "     Sitting down on the bed, your eyes start looking over Sylvia's naked body. As her tail wags idly, you catch a glimpse of her canine spade. You stand up and close the door before approaching the collie, an idea of what you want firm in your mind. Sylvia turns to face you having heard the door. Upon hearing your wish for lesbian fun, she smiles and agrees readily, her hand grasping your thigh as she leans in to kiss you. As your mouths meet, her tongue slips past your lips and begins caressing your own, the wide organ effortlessly tracing around your mouth. Breaking the kiss, you pull back and remove your clothes, before embracing her again, your breasts rubbing against each other causing warmth to grow in your loins.";
	say "     Her hand eases its way between your bodies, making its way to your pussy and slipping a digit in. Finding you already wet, Sylvia lies on her back and indicates for you to lie atop her with your face next to her cunt. Assuming this to be part of readying her for the main event, you do so, immediately sending your tongue to work on her vulva, arousing her further to allow for greater pleasure later. With each stroke of your tongue, the collie twitches and lets out a small moan, your efforts obviously appreciated. To ensure that your own arousal doesn't wane, Sylvia reciprocates your oral stimulation by running her tongue up and down your gash, occasionally flicking the skin around your anus. Mutually deciding that you are ready for tribbing, the canine helps you turn around and align your pussies with one another with her lying on her back with you atop her.";
	WaitLineBreak;
	say "     Smiling at you, Sylvia strokes her hand down your side until it connects with your ass. She gives it a squeeze, causing you to thrust forward in surprise, bringing your pussies together and sending a jolt through your bodies. You continue to rub up against her, a hand exploring her torso. Her own run up and down your back, feeling your shoulders, ribs and bottom, a few feeling your anal ring. You flinch in pleasure as your clitorises collide, a response which she mirrors accompanied by a gasp. You lean down and kiss her passionately, your teeth lightly gripping her lip for a moment. The collie looks at you lustfully, kneading your rear and pushing you down against her cunt. You pull your face back and suggest a change of position, perhaps one that doesn't press her against the floor. 'I do have a partiality for doggystyle, being a dog's natural stance,' she responds cheerfully.";
	say "     Sylvia rolls onto all fours and you kneel behind her. Gripping her hips, you start grinding your groins together, squelching noises filling the room. As you get closer to climax, you occasionally pull back and thrust against her, copying male actions. This seems to activate something in Sylvia's mind as she begins panting, and yipping, perhaps fulfilling her perceived role. As your orgasm crests, you cease thrusting and settle for grinding, your vulva spread against her own, contracting and spasming, squirting your fem cum into her puffed lips. Her own climax sprays her juices partially into you, the feeling causing you to quiver in hyper-sensitivity. Tired, but very satisfied, you both slump, breathing heavily. After relaxing for a short time, you stand, giving her a deep kiss before dressing and getting ready to return to the city.";

Section 5 - Events

Despairing Biologist is a situation.
The level of Despairing Biologist is 0.
The sarea of Despairing Biologist is "Campus".

when play begins:
	add Despairing Biologist to badspots of girl;
	add Despairing Biologist to badspots of guy;
	add Despairing Biologist to badspots of furry;

instead of going to College Walkway East while (Despairing Biologist is not resolved and a random chance of 1 in 2 succeeds and LastCampusWalkin - turns > 2):
	move player to College Walkway East;
	DespairingBiologistEvent;

Instead of resolving Despairing Biologist:
	DespairingBiologistEvent;

to DespairingBiologistEvent: [Meet Sylvia]
	say "     Walking through the college, you see the occupants still acting in ways that you might expect from students. Lying on the grass laughing with friends, chatting to each other as they walk carrying stacks of books, and standing in groups complaining about one thing or another. Among these activities are some that fit more with the recent events. A pretty pantheress on her knees treating several colleagues to handjobs, moaning from behind a bench as two students relieve some stress, and an elephant dressed in a groundskeeper uniform cleaning sperm from the lawns. Smirking, you continue down the path, thoughts of how the futures of these many people changed with the nanite outbreak.";
	say "     As you turn a corner you hear an argument. ' I don't want to swap my degree, I like biology, but the city has changed. Just yesterday I saw a lion being chased by a gazelle. Darwin doesn't cover that!' a female voice says exasperatedly. Looking over, you see a border collie girl talking to a male wolf, both wearing clothes unlike many of the other residents of the city. 'You don't have to change degree. Think off all the creatures running around the city, or even just the college. Did Darwin catalogue minotaurs or dragons? You could be the leading authority!' her companion replies enthusiastically. The collie tilts her head, 'I suppose so. Could be fun collecting the data, and there are a lot of never before seen animals...' she reasons.";
	WaitLineBreak;
	say "     Her friend gives her a hug, the show of friendship slightly ruined by the erection tenting his trousers. 'Really Julian? You’re that pleased for me? Or are you perhaps wanting something else?' she questions him in a sultry manner, her hand sneaking down his trousers to cup his bulge. By this time, you are standing in full view about five metres away. A fact that has been noticed by the wolf, Julian. 'Umm, Sylvia. There's someone right there, would we not be better going...' he remarks cautiously. The collie, whom you take to be Sylvia, turns around, but you notice she doesn't remove her hand from his pants. She studies you shortly, 'From the look of them, they've seen sex before, and besides, universities were rife with fornication and debauchery even before the changes.' Unfazed by your presence, she continues to play with the lupine's junk.";
	say "     [bold type]Do you wish to continue watching, or leave before this gets awkward?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Stay here, she seems fine with you watching.";
	say "     ([link]N[as]n[end link]) - Leave, this is between them.";
	if player consents: [Stay]
		LineBreak;
		say "     'I suppose I should introduce myself. I'm Sylvia, and this is Julian.' The wolf waves weakly, still taken aback at the turn of events. 'So, what brings you to the college? You aren't a student or lecturer, and I'm guessing you aren't with the military. Researcher? Resident?' the female canine questions you. You smirk and say that telling her would remove the air of mystery you've developed. Rolling her eyes in mock disgust, she removes her hand from his pants, Sylvia gestures for him to follow her down the side of a building away from the eyes of others. She gives you a glance, inviting you to follow too. You push aside the foliage of a bush, entering into a shady clearing between some trees, a seldom-used bench sheltered beside a rose bush.";
		WaitLineBreak;
		say "     Now that you are away from the eyes and wanderings of the college residents, Sylvia's restraint with her colleague diminishes. Within seconds, she has his trousers around his ankles and is admiring his erect penis. 'Fairly large I would say, though not necessarily for some of the roaming beasts', she observes. While he had swollen with pride at the beginning of her statement, the afterthought seems to damage his ego. Noticing this, the collie runs her hand up his shaft and consoles him as she kneels, 'It's the right size for me, I doubt I'd be able to fit something a foot wide in my mouth.' Excited at where this is going, the wolf's tail begins to wag, and pre begins to seep from his cock. Giving him a wink, the canine licks him from base to tip, her wide pink tongue folding around the sides of his shaft. Julian, perhaps because he is unsure what to do with his hands while receiving the blowjob, begins to stroke her head and ears. This attention causes Sylvia to cease licking and seal his member within her mouth.";
		say "     [bold type]Do you want to stay here, or are there places you need to be?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Stay here, their pleasure is yours.";
		say "     ([link]N[as]n[end link]) - Leave Julian to be pleasured in peace.";
		if player consents: [watch BJ]
			LineBreak;
			say "     Aroused by such a shameless display of gratitude, [if cocks of player is 1]your cock swells, pre drizzling from the tip [else if cocks of player > 1]your cocks swell, pre drizzling from the tips [else]fem-lube dribbles from your widening slit [end if]and you bring your hand down to soothe this growing desire. Looking up, you see that Julian has seated himself upon the bench, with Sylvia between his legs caressing his furry scrotum as her head bobs up and down in his lap. He leans back, a blissful expression on his face, groans escaping from his open mouth. In a rush of confidence, Julian holds the back of Sylvia's head and begins to piston his hips back and forth, taking control of his pleasure. The dog girl accepts this change in control and rests herself back on her thighs, relaxing a bit while still allowing the wolf access to thrust into her maw.";
			WaitLineBreak;
			say "     The male continues to hammer himself into the canine’s mouth, occasionally stroking the back of her head or scratching an ear. Noticing his imminent orgasm, the collie brings a hand up between her mouth and his knot, preventing its entrance to her mouth. Giving a few last thrusts, Julian cums inside Sylvia's mouth, his knot throbbing between her fingers. Short of breath, the biology student pulls back, semen oozing from her mouth as the lupine cock slips out, still contracting leaving trails of sperm on the ground. Swallowing the contents of her mouth, the collie stands up, dusting her knees off and straitening her skirt. 'Mmm, not bad for a first experience, I might even consider doing that again' she said brightly before kissing her companion on the nose.";
			say "     'But, fair is fair, I haven't had an orgasm,' she chuckles, playfully attempting to drag the lupine up. As you step forward to offer your services for such a task she looks at you and laughs good naturedly. 'I only met you a moment ago, what sort of girl would I be if I allowed anyone I met to watch me fellate a friend before allowing the stranger to go down on me.' Seeing your disappointment, she relents slightly. 'I'll tell you what, prove to me you're not just interested in me sexually. Talk to me later in my room when we aren't both horny, then I'll consider whether you are worth knowing. Room number 059, toodle pip.' Beginning to feel like a third wheel, you leave the two bonding, and continue through the college.";
			now hp of Sylvia is 2; [watched BJ, got room number]
		else: [do not watch]
			LineBreak;
			say "     Allowing the wolf to feel the attentions of the collie, you turn to leave. Sylvia pulls back from his cock momentarily and calls after you, 'I'm in room 059 of the female dormitory if you want to talk to me more. You seemed nice enough.' Noting the room in your head you push past the branches and continue through the college.";
			now hp of Sylvia is 1; [got room number]
		change the northeast exit of Tenvale College Female Dorms to Sylvia's Room; [connecting the location to the travel room]
		change the southeast exit of Sylvia's Room to Tenvale College Female Dorms; [connecting the location to the travel room]
	else:
		LineBreak;
		say "     Feeling slightly embarrassed at the willingness of the pair to let you watch, you mutter something about needing to be somewhere before walking hurriedly back the way you came, the collie giggling behind you.";
		now hp of Sylvia is 100; [event refused, no further contact with her]
	now Despairing Biologist is resolved; [It won't happen again]
	now LastCampusWalkin is turns;

instead of going northeast from Tenvale College Female Dorms while (hp of Sylvia is 2):
	Room059Event;
	
to Room059Event: [First time to Sylvia's room]
	say "     Seeing the room number that Sylvia had given you, you approach the door. However, when you knock, the door slowly swings open, revealing the collie leaning back in an armchair reading a book. her shirt is unbuttoned, but mostly covering her chest, only a glimpse of her breasts is visible. She notices you over the top of her book, placing it on a nearby desk. As the canine stands, she does up a few of the buttons on her shirt. 'That you came here at all suggests you aren't as sex driven as many of the cities occupants,' Sylvia exclaims, recognising you instantly. Motioning you in, she closes the door before patting the edge of her bed. 'Please, sit,' the student says cheerfully, returning to her armchair and smiling at you. Grateful to have a chance to rest your legs, you comply, the mattress sinking slightly, placing you at similar face heights.";
	say "     'So, you want to get to know me more?' Sylvia remarks, stroking her tail absent-mindedly. 'I'm on exchange from northern England, where my parents are. I have an older brother and a younger sister. I'm was studying zoology, but with the changes to the city, I plan to focus on the interactions of the infected with each other, especially groups.' You can see that she is really excited about this decision, contrasting with her breakdown to her friend. 'It will mean that I will have to go into the city at points, so I'm not sure whether to just try and sneak around, or get some help from the other students. Before I do that, I should be able to study the residents on campus.' Her hand creeps up her tail, sliding over her thigh before she notices and consciously moves it away from her groin, draping it over the arm of the chair.";
	WaitLineBreak;
	say "     The collie girl continues to tell you about her life in England. Memories such as family walks in the forests, and her siblings and her exploring the trees and bushes away from the common paths, bring tears glistening in the corners of her eyes. You reach a hand out and pat her shoulder in an attempt to console her. She turns her head and smiles at you, laying a hand on top of your own. 'Thank you for the concern, I would hope there are others like you in the city,' compliments Sylvia, gently tracing the tips of her fingers over your hand. 'But I don't want to seem too easy, so I'll give you a choice. Would you prefer a kiss or a hug?' While you may have been hoping for more, the offer is none the less not an unwelcome one.";
	say "     [bold type]Would you prefer a kiss or a hug from Sylvia?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - A kiss sounds nice. She did offer after all.";
	say "     ([link]N[as]n[end link]) - Perhaps a hug. Who knows where else that mouth has been?";
	if player consents: [kiss/lick]
		LineBreak;
		say "     You inform her that you would prefer a kiss, a request that makes her snicker. 'Doggy kiss it is then' Sylvia chuckles. You both stand and she steps up next to you before placing one hand on your hip and the other on your shoulder. Leaning down so the border collie can reach your mouth, you are extraordinarily surprised when she starts wildly licking the side of your face, bathing you in saliva. This tongue bath wasn't what you were expecting, but it gives you a sense of safety, making you feel like a puppy being cared for by its mother. Sylvia pulls back and observes your spit washed countenance. 'Not bad if I do say so myself. You may want to clean yourself more often, others might not like such a... gamey flavour,' she quips before returning to her seat.";
		say "     Wiping your hand over your face to remove the excess fluid, you sit down again and give her an accusatory stare. The collie snorts at your reaction. 'I'm a dog, normal kisses are more difficult. Plus, isn't it meant to be sexy when your partner uses tongue?' A short laugh escapes your mouth at her poor joke and the faux naivety in which she delivered it. 'Come and talk to me again at some point. For now though, I have things to study.' Sylvia dismisses you with a hand gesture. As you leave, you suddenly wonder whether she meant studying a book, herself, ... or others. You dismiss the thought and walk back down the dorm hallway.";
	else: [hug]
		say "     You step up next to her and encircle her within your arms. Smiling at how forward you are, she returns the hug, her soft chest pressed against your body. You can feel her heart beat, its percussion sounding at similar interval to your own. Suddenly, you feel the collie's hands squeeze your backside, causing you to jump away from her slightly. You give her an accusatory stare as she doubles over laughing. 'I thought that was what you wanted,' Sylvia says between sniggers. 'To feel my hands upon your body as we embraced. But it seems perhaps you aren't ready judging from that reaction to me only touching your rear.'";
		say "     Wanting revenge, you close the distance between you, her eyes carefully watching your movement but allowing your response. As you attempt to grab her, she sidesteps you before licking you behind your ear and dancing away as you swing your arm around in a vain attempt to catch her. 'Growing up a girl, I was taught how to avoid the grasps of overly enthusiastic men, with a few lessons from my brother and father,' Sylvia chides, tapping you on the nose as you straighten. 'Come and talk to me again at some point. For now though, I have things to study.' Sylvia dismisses you with a hand gesture. As you leave, you suddenly wonder whether she meant studying a book, herself, ... or others. You dismiss the thought and walk back down the dorm hallway.";
	now hp of Sylvia is 3; [Met her in her room]

instead of going northeast from Tenvale College Female Dorms while (SylviaConv is 5 and hp of Sylvia is 3 and a random chance of 1 in 4 succeeds):
	UnnaturalHeatEvent;

to UnnaturalHeatEvent: [Sylvia removes skirt]
	say "     Walking into the room, you notice that Sylvia isn't here. As you turn to leave, you notice a figure running full pelt toward you down the corridor. With a little more study, you realise that it is Sylvia, and leap out of the way as she hurtles through the door before sliding to a halt in front of her desk, her skirt riding up to reveal an absence of undergarments. The lips of her canine cunt are puffy and engorged, with a thin trickle of liquid glistening. As she scrabbles through a drawer, you step from beside the bed and ask her what the rush is. At the sound of your voice she flinches slightly and turns her head, a needy expression, that she seems to be fighting, on her face.";
	say "     'I was in the city collecting samples.' Sylvia states, turning back to the clutter in the drawer. 'Things like fur, blood, semen, etcetera. I was wearing rubber gloves but I stumbled while getting one sample and ripped one. It started trying to fuse to my hand so I quickly pulled it off, but losing some skin with it. I must have squeaked because then I could hear creatures approaching, so, foolishly, I ran. Realising that I would probably attract more pursuers if I continued trying to flee, I hid in an abandoned shop and waited for them to go past. I had completely forgotten that many animals hunt by scent as well as sight, so by the time I had remembered, they were outside, a husky pack of three bitches and one of those stupid alphas that think they're so great.";
	WaitLineBreak;
	say "     I knew that I wouldn't be able to escape the pack when they were that close, so I lay there expecting them to leap through the window and ravage me.' For once, Sylvia doesn't seem cheerful, desperation filling her voice as she scrabbles through her belongings. 'To make matters worse, the aroma of the shop became stronger and I realised that I had taken shelter in a sex shop and I was getting aroused. Luckily the buildings stench covered my own smell and the scent of my growing arousal. They left fairly quickly after that, but now I'm struggling not to present myself for mounting to any male that passes my fancy. For goodness sake, where is it,' Sylvia snaps, opening even more drawers in the futile attempt to find what she seeks. You ask her what she hopes to find, to which she replies 'I had something to suppress arousal should I ever need it, but I can't find it. Without it I fear I'll do something I later regret.";
	say "     [bold type]Do you let her continue searching, or check your bag to see whether you have any libido suppressant to give her?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Let her continue searching, she has to find it eventually.";
	say "     ([link]N[as]n[end link]) - Search your bag, time is of the essence.";
	if player consents: [Let her look]
		LineBreak;
		say "     Deciding that she has to find it eventually if she looks everywhere in her room, you kneel and begin to help her search. You peer under the desk and the bed, before joining her in searching the contents of her desk. She has a surprising number of objects stashed in the drawers, with things such as pens, USB drives, and a dildo crammed in together. Suddenly, a knock interrupts your search and you both turn around. In the doorway is a very concerned looking wolf whom you recognise as Julian. 'Are you alright Sylvia? I saw you dash through the campus, and you don't seem to have your satchel with you.' Julian enquires worriedly, casting curious glances at why you and the collie are scrabbling about on the floor. Sylvia hurriedly explains the same story she just told you, her paws creeping closer to her oozing pussy.";
		say "     Julian's eyes widen, and he steps into the room before closing the door, hiding the collie girl's predicament from any passers-by. He reaches into his pocket and passes her a small syringe filled with orange liquid. 'That's my last one. I'll ask the twins to make another hospital run, just in case.' Julian tells her. Relief flooding her face, Sylvia flicks the tip before pulling her skirt off and stabbing the needle into her thigh. While the effects of her arousal have lessened, the lips of her cunt are still damp with her juices, and she still pants with need. 'Julian, while I would have preferred that this wasn't so desperate, I'm going to need more help. Would you... mount me. I fear that I have been sent into heat,' the collie girl pleads, her pussy clenching. Shocked, Julian hesitantly agrees, pulling his trousers and shirt off and placing them on her bed. Sylvia then turns to you. 'Would you like some oral attention, you did try and help,' she offers, unbuttoning her blouse and throwing it atop Julian's clothes, 'otherwise could you give us some privacy.'";
		WaitLineBreak;
		say "     [bold type]Do you wish to take her up on the offer?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - You would love to feel the attentions of her tongue.";
		say "     ([link]N[as]n[end link]) - A threesome with them wasn't what you had in mind.";
		if player consents: [receive oral]
			LineBreak;
			if cocks of player > 0: [fellatio]
				say "     You remove your clothes, allowing your [cock of player]penis to harden and rise. Meanwhile, Sylvia is now on all fours, the position seeming natural despite her usual bipedal stance. You and Julian simultaneously kneel either end of her, an uneasy eye contact developing between you as you gauge each other's cocks. Grabbing a bottle of lube from the clutter that has developed on the floor, the collie tosses it to the wolf. 'I would prefer anal if you don't mind, I want it to be special when lose my virginity,' Sylvia requests. Julian assents, and begins slathering his exposed wolfhood before doing the same to the collie's exposed tailhole.";
				say "     Eager to begin, you push your penis forward, jabbing Sylvia in the nose and smearing your pre over her lip and nostrils. She inhales deeply and shudders pleasurably, your musk enhancing her soaring libido. She licks around her mouth before leaning forward and engulfing your [cock of player]cock within the wet warmth of her mouth. While she may have refused your advances so far, you can tell that either she is a natural, or that she has had experience on other people, as she loops her tongue around and slathers your shaft with each bob of her head. Occasionally she grazes her teeth over the soft tissue of your penis, the faux danger thrilling you, compelling you to accelerate your thrusts into her maw.";
				WaitLineBreak;
				say "     Julian's penetration of the collies back passage is heralded by her being pushed forward, [if cock length of player > 6]sending your shaft sliding down her throat. Surprisingly, she doesn't choke, instead letting out a muffled moan. [else]causing her jaw to rest against your groin. [end if]You work in synchrony, alternating your thrusts so that only one shaft is in her at a time, while leaving the tip to be stimulated by the muscles of her lips or anal ring. Meanwhile, Sylvia seems to be in immense pleasure, the fluids of her arousal steadily dripping from her shivering pussy onto her carpet, leaving a mark both to the eye as well as the nose. Her breath quickens, the attentions she is receiving soothing the fires of arousal that had been stoked in her excursion.";
				say "     Looking up from admiring the canine's capability at devouring your meat, your gaze rests on Julian. His paws are tracing the contours of Sylvia's backside, tracing their way over the swell of her buttocks and stroking her tail. The scene is completed by the knotted wolf cock pounding into her ass. A look of bliss is plastered across his face, head tilted back, eyes closed, and tongue lolling out to the side of his open mouth. As he thrusts, the currently fairly small bulge at the base of his penis grows, readying itself to lock him inside her body in the futile attempt to impregnate her. You too can feel your orgasm creeping closer, tingles travelling through your body.";
				WaitLineBreak;
				say "     Your eyes meet with Julian's and you silently agree to make Sylvia an orgasming wreck before you fill her with your spunk. One of the wolf's paws darts below his thrusting shaft and rubs her weeping pussy, the dextrous digits slipping from clit to gash more gracefully than you would have thought him capable of. Not wishing to be outdone, one of your own hands makes its way to the collie's breasts, caressing the soft flesh and tweaking her firm nipples. Closer to orgasm than you thought, the quartet of stimulations sends her over the edge. Squirting fem-cum around Julian's probing fingers, Sylvia's hips start thrusting, as her body is overtaken by euphoria. This in turn sends you and her friend into orgasm too, her throat and anus constricting around your shafts. Gripping her head, you push into her mouth completely, filling her gullet with spooge. At the same time, Julian gives a mighty shove, forcing his knot past her spasming tail ring, before erupting within her, his semen flooding her.";
				say "     Between you, true to your agreement, the collie lies suspended in a post-orgasmic daze. While your hands support her, so too does the knot keeping her ass raised, still twitching. Sperm trickles out of the corner of her mouth as your softening penis slips out. You sit on the bed and wait for the wolf's shaft to soften too. After some time, Sylvia seems to recover and she turns over, gasping as her anus rubs against the flesh inside her. The collie bids you pass her a beaker from the floor, to which you comply. Sufficiently yielding, Julian's shaft slips from her anus as they stand up together. Sylvia quickly moves the beaker in time to catch the gush of cum that rushes from her stretched rear.";
				WaitLineBreak;
				say "     She places the container on her desk before slumping back on the bed with you. Julian sits down beside her and squeezes the collie's hand. 'Feeling better now,' he enquires, to which the canine nods. 'Ahhh, that felt good enough to try again in future. Though next time hopefully without mind altering drugs,' Sylvia laughs, taking this development in her relationships with you both within her stride. 'Not having a skirt on makes me feel more liberated, I think I'll leave it off for now.' She stands before turning to you both and motions for you to stand. When you have done so, she hugs you both, a breast compressing into each of your sides. 'Thank you. I don't know what I would have done without you. Come back again soon, I want to spend more time with both of you. But for now, you should probably go, you'll have things to do and I need to clean my room,' the collie beamed. She bids you and Julian adieu before bending down to tidy her floor. This gives you both a view of her stretched anus, splashes of cum shining on her fur. You smirk at each other before walking out the door.";
			else: [cunnilingus]
				say "     You peel your clothes off, anticipation clouding your mind. Your [cockname of player in lower case] pussy is already damp and ready for a canine tongue to pamper it. Meanwhile, Sylvia is now on all fours, the position seeming natural despite her usual bipedal stance. You and Julian simultaneously kneel either end of her and the wolf gives you a cautious but appreciative look over. Grabbing a bottle of lube from the clutter that has developed on the floor, the collie tosses it to the wolf. 'I would prefer anal if you don't mind, I want it to be special when lose my virginity,' Sylvia requests. Julian assents, and begins slathering his exposed wolfhood before doing the same to the collie's exposed tailhole.";
				say "     Eager for her to begin, you seat yourself and spread your legs, granting her access to your intimate areas. Raising her rear as she bends forward to pleasure you, Sylvia inhales deeply and shudders pleasurably, your scent enhancing her soaring libido. She licks around her mouth before running her tongue up your gash, lingering as it rubs over your clit. While she may have refused your advances so far, you can tell that either she is a natural, or that she has had experience on other people, as she lathers her tongue around before driving it inside you. Occasionally she grazes her teeth over your clitoris, the faux danger thrilling you and compelling you to thrust against her ministrations.";
				WaitLineBreak;
				say "     Julian's penetration of the collies back passage is heralded by her being pushed forward, driving her snout into your muff. As she recovers from this, the wolf grips her hips and steadily thrusts, his fingers stroking her tummy as he gradually fits more of his shaft inside her. Each time he bottoms out, Sylvia's face is pressed against your groin, the air from her exhalations tickling and stimulating your moist hole. Meanwhile, the collie seems to be in immense pleasure, the fluids of her arousal steadily dripping from her shivering pussy onto her carpet, leaving a mark both to the eye as well as the nose. Her breath quickens, the attentions she is receiving soothing the fires of arousal that had been stoked in her excursion.";
				say "     Looking up from admiring the canine's enthusiasm in eating you out, your gaze rests on Julian. His paws are tracing the contours of Sylvia's backside, tracing their way over the swell of her buttocks and stroking her tail. The scene is completed by the knotted wolf cock pounding into her ass. A look of bliss is plastered across his face, head tilted back, eyes closed, and tongue lolling out to the side of his open mouth. As he thrusts, the currently fairly small bulge at the base of his penis grows, readying itself to lock him inside her body in the futile attempt to impregnate her. You too can feel your orgasm creeping closer, tingles travelling through your body.";
				WaitLineBreak;
				say "     Your eyes meet with Julian's and you silently agree to make Sylvia an orgasming wreck before he fills her with his spunk. One of the wolf's paws darts below his thrusting shaft and rubs her weeping pussy, the dextrous digits slipping from clit to gash more gracefully than you would have thought him capable of. Not wishing to be outdone, one of your own hands makes its way to the collie's breasts, caressing the soft flesh and tweaking her firm nipples. Closer to orgasm than you thought, the trio of stimulations sends her over the edge. Squirting fem-cum around Julian's probing fingers, Sylvia's hips start thrusting, as her body is overtaken by euphoria. This in turn sends you and her friend into orgasm too, the muscles of her anus clenching around the lupine's shaft as her tongue writhes within your vagina. Gripping her head, you push against her mouth, spasming as your own orgasm splashes against her snout. At the same time, Julian gives a mighty shove, forcing his knot past her spasming tail ring, before erupting within her, his semen flooding her.";
				say "     Between you, true to your agreement, the collie lies suspended in a post-orgasmic daze. While your hands support her, so too does the knot keeping her ass raised, still twitching. Saliva trickles out of the corner of her mouth as her tongue slips from your depths. You sit on the bed and wait for the wolf's shaft to soften too. After some time, Sylvia seems to recover and she turns over, gasping as her anus rubs against the flesh inside her. The collie bids you pass her a beaker from the floor, to which you comply. Sufficiently yielding, Julian's shaft slips from her anus as they stand up together. Sylvia quickly moves the beaker in time to catch the gush of cum that rushes from her stretched rear.";
				WaitLineBreak;
				say "     She places the container on her desk before slumping back on the bed with you. Julian sits down beside her and squeezes the collie's hand. 'Feeling better now,' he enquires, to which the canine nods. 'Ahhh, that felt good enough to try again in future. Though next time hopefully without mind altering drugs,' Sylvia laughs, taking this development in her relationships with you both within her stride. 'Not having a skirt on makes me feel more liberated, I think I'll leave it off for now.' She stands before turning to you both and motions for you to stand. When you have done so, she hugs you both, a breast compressing into each of your sides. 'Thank you. I don't know what I would have done without you. Come back again soon, I want to spend more time with both of you. But for now, you should probably go, you'll have things to do and I need to clean my room,' the collie beamed. She bids you and Julian adieu before bending down to tidy her floor. This gives you both a view of her stretched anus, splashes of cum shining on her fur. You smirk at each other before walking out the door.";
		else: [not interested]
			say "     You shake your head, helping her was enough. You wish them well and leave them to their coupling. As you close the door, you hear a yip of pleasure.";
	else: [search bag]
		LineBreak;
		if carried of libido suppressant > 0: [present]
			say "     Knowing that time is of the essence, you place your bag on the bed and start searching through. It doesn't take you long to find what you are looking for. Grabbing the syringe, you shout to Sylvia that you've got one. She quickly crawls over to you and grabs it from your proffered hand. Suddenly, a knock interrupts your search and you both turn around. In the doorway is a very concerned looking wolf whom you recognise as Julian. 'Are you alright Sylvia? I saw you dash through the campus, and you don't seem to have your satchel with you.' Julian enquires worriedly, casting curious glances at why you and the collie are scrabbling about on the floor. Sylvia hurriedly explains the same story she just told you, her paws fiddling with the syringe.";
			LineBreak;
			 say "[bold type]You lose one libido suppressant![roman type][line break]";
			 decrease carried of libido suppressant by 1;
			say "     Julian's eyes widen, and he steps into the room before closing the door, hiding the collie girl's predicament from any passers-by. Seeing what is in her hands, he lets out a sigh and relaxes slightly. 'It's a good thing your friend had some, I'm down to my last one. I'll ask the twins to make another hospital run, just in case.' Julian addresses the collie. With a grateful glance at you, Sylvia flicks the tip before pulling her skirt off and stabbing the needle into her thigh. While the effects of her arousal have lessened, the lips of her cunt are still damp with her juices, and she still pants with need. [if cocks of player > 0]'While I would have preferred that this wasn't so desperate, I'm going to need more help. Would you... mount me. I fear that I have been sent into heat,' the collie girl pleads with you, her pussy clenching. Sylvia then turns to Julian. 'Would you like some oral attention, you did try and help,' she offers, unbuttoning her blouse and throwing it onto the bed. Shocked, Julian hesitantly agrees, pulling his trousers and shirt off and placing them beside his friend's. [else]'Julian, while I would have preferred that this wasn't so desperate, I'm going to need more help. Would you... mount me. I fear that I have been sent into heat,' the collie girl pleads, her pussy clenching. Shocked, Julian hesitantly agrees, pulling his trousers and shirt off and placing them on her bed. Sylvia then turns to you. 'Would you like some oral attention, you did try and help,' she offers, unbuttoning her blouse and throwing it atop Julian's clothes. [end if]'Otherwise could you give us some privacy?'";
			WaitLineBreak;
			say "     [bold type]Do you wish to take her up on the offer?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Take advantage of the chance you have been given.";
			say "     ([link]N[as]n[end link]) - A threesome with them wasn't what you had in mind.";
			if player consents:
				LineBreak;
				if cocks of player > 0: [Give anal]
					say "     You remove your clothes, allowing your [cock of player]penis to harden and rise. Meanwhile, Sylvia is now on all fours, the position seeming natural despite her usual bipedal stance. You and Julian simultaneously kneel either end of her, an uneasy eye contact developing between you as you gauge each other's cocks. Grabbing a bottle of lube from the clutter that has developed on the floor, the collie tosses it to you. 'I would prefer anal if you don't mind, I want it to be special when lose my virginity,' Sylvia requests. You assent and begin slathering your exposed member before doing the same to the collie's exposed tailhole. ";
					say "     Eager to begin, Julian pushes his penis forward, jabbing Sylvia in the nose and smearing his pre over her lip and nostrils. She inhales deeply and shudders pleasurably, his musk enhancing her soaring libido. She licks around her mouth before leaning forward and engulfing wolfhood within the wet warmth of her mouth. You can tell that while she may have refused your advances so far, that either she is a natural, or that she has had experience on other people, as she loops her tongue around and slathers his shaft with each bob of her head. Occasionally she grazes her teeth over the soft tissue of his penis, the faux danger thrilling him, compelling him to accelerate his thrusts into her maw.";
					WaitLineBreak;
					say "     Deciding you have waited long enough, you align your penis with her lubed back passage and penetrate her. This pushes her forward, sending Julian's shaft sliding down her throat. Surprisingly, she doesn't choke, instead letting out a muffled moan, her nose pressed into his pubic fur. You work in synchrony, alternating your thrusts so that only one shaft is in her at a time, while leaving the tip to be stimulated by the muscles of her lips or anal ring. Meanwhile, Sylvia seems to be in immense pleasure, the fluids of her arousal steadily dripping from her shivering pussy onto her carpet, leaving a mark both to the eye as well as the nose. Her breath quickens, the attentions she is receiving soothing the fires of arousal that had been stoked in her excursion.";
					say "     As the walls of her anus massage and squeeze your invading tool, your hands trace the contours of Sylvia's backside, tracing their way over the swell of her buttocks and stroking her tail. The scene is completed by Julian's knotted wolf cock pounding into her mouth. A look of bliss is plastered across his face, head tilted back, eyes closed, and tongue lolling out to the side of his open mouth. As he thrusts, the currently fairly small bulge at the base of his penis grows, slapping against the collie girl's lips. You too can feel your orgasm creeping closer, tingles travelling through your body.";
					WaitLineBreak;
					say "     Your eyes meet with Julian's and you silently agree to make Sylvia an orgasming wreck before you fill her with your spunk. One of the wolf's paws darts below his thrusting shaft and rubs her breasts, the dextrous digits caressing the swell of her flesh and nipples more gracefully than you would have thought him capable of. Not wishing to be outdone, one of your own hands makes its way to the collie's clitoris, rubbing over her gash. Closer to orgasm than you thought, the quartet of stimulations sends her over the edge. Squirting fem-cum around your probing fingers, Sylvia's hips start thrusting, as her body is overtaken by euphoria. This in turn sends you and her friend into orgasm too, her throat and anus constricting around your shafts. Gripping her hips, you push into her completely, [if cockname of player is listed in infections of Knotlist]forcing your knot past her spasming tail ring, [end if]before erupting within her, your semen flooding her. At the same time, Julian firmly grips the back of her head and pushes into her mouth until his knot is pressed against her nose, before orgasming inside.";
					say "     Between you, true to your agreement, the collie lies suspended in a post-orgasmic daze. [if cockname of player is listed in infections of Knotlist]While your hands support her, so too does the knot keeping her ass raised, still twitching.[else]You both support her, your hands on her thighs, and the wolf's on her shoulders, all coming down from the rush of orgasm.[end if]Sperm trickles out of the corner of her mouth as Julian's softening penis slips out. He sits on the bed to wait for your shaft to soften too. After some time, Sylvia seems to recover and she turns over, gasping as her anus rubs against the flesh inside her. She bids the wolf pass her a beaker from the floor, to which he complies. Sufficiently yielding, your shaft slips from her anus as you stand up together. Sylvia quickly moves the beaker in time to catch the gush of cum that rushes from her stretched rear.";
					WaitLineBreak;
					say "     She places the container on her desk before slumping back on the bed with you. You sit down beside her and squeezes the collie's hand. 'Feeling better now,' he enquires, to which the canine nods. 'Ahhh, that felt good enough to try again in future. Though next time hopefully without mind altering drugs,' Sylvia laughs, taking this development in her relationships with you both within her stride. 'Not having a skirt on makes me feel more liberated, I think I'll leave it off for now.' She stands before turning to you both and motions for you to stand. When you have done so, she hugs you both, a breast compressing into each of your sides. 'Thank you. I don't know what I would have done without you. Come back again soon, I want to spend more time with both of you. But for now, you should probably go, you'll have things to do and I need to clean my room,' the collie beamed. She bids you and Julian adieu before bending down to tidy her floor. This gives you both a view of her stretched anus, splashes of cum shining on her fur. You smirk at each other before walking out the door.";
				else: [Sixty Nine]
					say "     You peel your clothes off, anticipation clouding your mind. Your [cockname of player in lower case] pussy is already damp and ready for a canine tongue to pamper it. You lie on the floor, your eyes looking up at the wolf's erect cock, and Sylvia's engorged pussy. Once you are comfortable, the collie kneels on all fours above you, the position seeming natural despite her usual bipedal stance. The scent of heat wafts into your nose as her cunt hovers in front of it. Looking past her tail, you see Julian giving you a cautious but appreciative look over, glimpses of your body visible as the collie shifts about. Grabbing a bottle of lube from the clutter that has developed on the floor, the collie tosses it to the wolf. 'I would prefer anal if you don't mind, I want it to be special when lose my virginity,' Sylvia requests. Julian assents, and begins slathering his exposed wolfhood before doing the same to the collie's exposed tailhole.";
					say "     Eager to begin, you trace your tongue around her vagina, teasing her and signalling your willingness to begin. Raising her rear as she bends forward to pleasure you, Sylvia inhales deeply and shudders pleasurably, your scent enhancing her soaring libido. She licks around her mouth before running her tongue up your gash, lingering as it rubs over your clit. While she may have refused your advances so far, you can tell that either she is a natural, or that she has had experience on other people, as she lathers her tongue around before driving it inside you. Occasionally she grazes her teeth over your clitoris, the faux danger thrilling you and compelling you to thrust against her ministrations. In tandem, you do similar things to her, the juices produced pleasant to the tongue.";
					WaitLineBreak;
					say "     Julian's penetration of the collie's back passage causes his scrotum to collide with your nose. While this causes you snuffle a bit, the smell is delightfully masculine and you take a deep breath to capture his scent. It also pushes her nose into your muff, driving her tongue deeper within you. As she recovers from this, the wolf grips her hips and steadily thrusts, his fingers stroking her tummy as he gradually fits more of his shaft inside her. Each time he bottoms out, Sylvia's face is pressed against your groin, the air from her exhalations tickling and stimulating your moist hole. Meanwhile, the collie seems to be in immense pleasure, the fluids of her arousal steadily dripping from her shivering pussy onto your taste buds. Her breath quickens, the attentions she is receiving soothing the fires of arousal that had been stoked in her excursion.";
					say "     You watch Julian's shaft oscillate in and out of Sylvia's rear avidly, his sac brushing your nose. The wolf's paws are tracing the contours of Sylvia's backside, tracing their way over the swell of her buttocks and stroking her tail. The scene is completed by the knotted wolf cock pounding into her ass just above your busily licking face. A look of bliss is plastered across his face, head tilted back, eyes closed, and tongue lolling out to the side of his open mouth. As he thrusts, the currently fairly small bulge at the base of his penis grows, readying itself to lock him inside her body in the futile attempt to impregnate her. You too can feel your orgasm creeping closer, tingles travelling through your body.";
					WaitLineBreak;
					say "     Your eyes meet with Julian's and you silently agree to make Sylvia an orgasming wreck before he fills her with his spunk. He leans forward, bringing one of his paws to her breasts, the dextrous digits caressing the swell of her flesh and nipples more gracefully than you would have thought him capable of. Not wishing to be found slacking in comparison, you increase your enthusiasm in driving your tongue through her canine spade. Closer to orgasm than you thought, the trio of stimulations sends her over the edge. Squirting fem-cum over your face, the zesty flavour filling your eager mouth. Sylvia's hips start thrusting, as her body is overtaken by euphoria, which in turn sends you and her friend into orgasm too, the muscles of her anus clenching around the lupine's shaft as her tongue writhes within your vagina. Unable to anchor her face to your spasming groin, your lower body twitches wildly, splashing her snout in your essence. At the same time, Julian gives a mighty shove, forcing his knot past her spasming tail ring, before erupting within her, his semen flooding her.";
					say "     Above you, true to your agreement, the collie lies suspended in a post-orgasmic daze. You can feel her resting on top of you, Julian's knot keeping her ass raised, still twitching. Saliva trickles out of the corner of her mouth as her tongue slips from your depths. You scrabble out from under her, not wishing to stay there for too long, and sit on the bed and wait for the wolf's shaft to soften too. After some time, Sylvia seems to recover and she turns over, gasping as her anus rubs against the flesh inside her. The collie bids you pass her a beaker from the floor, to which you comply. Sufficiently yielding, Julian's shaft slips from her anus as they stand up together. Sylvia quickly moves the beaker in time to catch the gush of cum that rushes from her stretched rear.";
					WaitLineBreak;
					say "     She places the container on her desk before slumping back on the bed with you. Julian sits down beside her and squeezes the collie's hand. 'Feeling better now,' he enquires, to which the canine nods. 'Ahhh, that felt good enough to try again in future. Though next time hopefully without mind altering drugs,' Sylvia laughs, taking this development in her relationships with you both within her stride. 'Not having a skirt on makes me feel more liberated, I think I'll leave it off for now.' She stands before turning to you both and motions for you to stand. When you have done so, she hugs you both, a breast compressing into each of your sides. 'Thank you. I don't know what I would have done without you. Come back again soon, I want to spend more time with both of you. But for now, you should probably go, you'll have things to do and I need to clean my room,' the collie beamed. She bids you and Julian adieu before bending down to tidy her floor. This gives you both a view of her stretched anus, splashes of cum shining on her fur. You smirk at each other before walking out the door.";
			else: [not interested]
				say "     You shake your head, Julian should be able to help her from now on. You wish them well and leave them to their coupling. As you close the door, you hear a yip of pleasure.";
		else: [none]
			LineBreak;
			say "     Knowing that time is of the essence, you place your bag on the bed and start searching through. It doesn't take you long to realise that you don't have any. Deciding that helping her look would be the next best option, you kneel and begin to help her search. You peer under the desk and the bed, before joining her in searching the contents of her desk. She has a surprising number of objects stashed in the drawers, with things such as pens, USB drives, and a dildo crammed in together. Suddenly, a knock interrupts your search and you both turn around. In the doorway is a very concerned looking wolf whom you recognise as Julian. 'Are you alright Sylvia? I saw you dash through the campus, and you don't seem to have your satchel with you.' Julian enquires worriedly, casting curious glances at why you and the collie are scrabbling about on the floor. Sylvia hurriedly explains the same story she just told you, her paws creeping closer to her oozing pussy.";
			say "     Julian's eyes widen, and he steps into the room before closing the door, hiding the collie girl's predicament from any passers-by. He reaches into his pocket and passes her a small syringe filled with orange liquid. 'That's my last one. I'll ask the twins to make another hospital run, just in case.' Julian tells her. Relief flooding her face, Sylvia flicks the tip before pulling her skirt off and stabbing the needle into her thigh. While the effects of her arousal have lessened, the lips of her cunt are still damp with her juices, and she still pants with need.' Julian, while I would have preferred that this wasn't so desperate, I'm going to need more help. Would you... mount me. I fear that I have been sent into heat,' the collie girl pleads, her pussy clenching. Shocked, Julian hesitantly agrees, pulling his trousers and shirt off and placing them on her bed. Sylvia then turns to you. 'Would you like some oral attention, you did try and help,' she offers, unbuttoning her blouse and throwing it atop Julian's clothes, 'otherwise could you give us some privacy.'";
		WaitLineBreak;
		say "     [bold type]Do you wish to take her up on the offer?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - You would love to feel the attentions of her tongue.";
		say "     ([link]N[as]n[end link]) - A threesome with them wasn't what you had in mind.";
		if player consents: [receive oral]
			LineBreak;
			if cocks of player > 0: [fellatio]
				say "     You remove your clothes, allowing your [cock of player]penis to harden and rise. Meanwhile, Sylvia is now on all fours, the position seeming natural despite her usual bipedal stance. You and Julian simultaneously kneel either end of her, an uneasy eye contact developing between you as you gauge each other's cocks. Grabbing a bottle of lube from the clutter that has developed on the floor, the collie tosses it to the wolf. 'I would prefer anal if you don't mind, I want it to be special when lose my virginity,' Sylvia requests. Julian assents and begins slathering his exposed wolfhood before doing the same to the collie's exposed tailhole.";
				say "     Eager to begin, you push your penis forward, jabbing Sylvia in the nose and smearing your pre over her lip and nostrils. She inhales deeply and shudders pleasurably, your musk enhancing her soaring libido. She licks around her mouth before leaning forward and engulfing your [cock of player]cock within the wet warmth of her mouth. While she may have refused your advances so far, you can tell that either she is a natural, or that she has had experience on other people, as she loops her tongue around and slathers your shaft with each bob of her head. Occasionally she grazes her teeth over the soft tissue of your penis, the faux danger thrilling you, compelling you to accelerate your thrusts into her maw.";
				WaitLineBreak;
				say "     Julian's penetration of the collie's back passage is heralded by her being pushed forward, [if cock length of player > 6]sending your shaft sliding down her throat. Surprisingly, she doesn't choke, instead letting out a muffled moan. [else]causing her jaw to rest against your groin. [end if]You work in synchrony, alternating your thrusts so that only one shaft is in her at a time, while leaving the tip to be stimulated by the muscles of her lips or anal ring. Meanwhile, Sylvia seems to be in immense pleasure, the fluids of her arousal steadily dripping from her shivering pussy onto her carpet, leaving a mark both to the eye as well as the nose. Her breath quickens, the attentions she is receiving soothing the fires of arousal that had been stoked in her excursion.";
				say "     Looking up from admiring the canine's capability at devouring your meat, your gaze rests on Julian. His paws are tracing the contours of Sylvia's backside, tracing their way over the swell of her buttocks and stroking her tail. The scene is completed by the knotted wolf cock pounding into her ass. A look of bliss is plastered across his face, head tilted back, eyes closed, and tongue lolling out to the side of his open mouth. As he thrusts, the currently fairly small bulge at the base of his penis grows, readying itself to lock him inside her body in the futile attempt to impregnate her. You too can feel your orgasm creeping closer, tingles travelling through your body.";
				WaitLineBreak;
				say "     Your eyes meet with Julian's and you silently agree to make Sylvia an orgasming wreck before you fill her with your spunk. One of the wolf's paws darts below his thrusting shaft and rubs her weeping pussy, the dextrous digits slipping from clit to gash more gracefully than you would have thought him capable of. Not wishing to be outdone, one of your own hands makes its way to the collie's breasts, caressing the soft flesh and tweaking her firm nipples. Closer to orgasm than you thought, the quartet of stimulations sends her over the edge. Squirting fem-cum around Julian's probing fingers, Sylvia's hips start thrusting, as her body is overtaken by euphoria. This in turn sends you and her friend into orgasm too, her throat and anus constricting around your shafts. Gripping her head, you push into her mouth completely, filling her gullet with spooge. At the same time, Julian gives a mighty shove, forcing his knot past her spasming tail ring, before erupting within her, his semen flooding her.";
				say "     Between you, true to your agreement, the collie lies suspended in a post-orgasmic daze. While your hands support her, so too does the knot keeping her ass raised, still twitching. Sperm trickles out of the corner of her mouth as your softening penis slips out. You sit on the bed and wait for the wolf's shaft to soften too. After some time, Sylvia seems to recover and she turns over, gasping as her anus rubs against the flesh inside her. The collie bids you pass her a beaker from the floor, to which you comply. Sufficiently yielding, Julian's shaft slips from her anus as they stand up together. Sylvia quickly moves the beaker in time to catch the gush of cum that rushes from her stretched rear.";
				WaitLineBreak;
				say "     She places the container on her desk before slumping back on the bed with you. Julian sits down beside her and squeezes the collie's hand. 'Feeling better now,' he enquires, to which the canine nods. 'Ahhh, that felt good enough to try again in future. Though next time hopefully without mind altering drugs,' Sylvia laughs, taking this development in her relationships with you both within her stride. 'Not having a skirt on makes me feel more liberated, I think I'll leave it off for now.' She stands before turning to you both and motions for you to stand. When you have done so, she hugs you both, a breast compressing into each of your sides. 'Thank you. I don't know what I would have done without you. Come back again soon, I want to spend more time with both of you. But for now, you should probably go, you'll have things to do and I need to clean my room,' the collie beamed. She bids you and Julian adieu before bending down to tidy her floor. This gives you both a view of her stretched anus, splashes of cum shining on her fur. You smirk at each other before walking out the door.";
			else: [cunnilingus]
				say "     You peel your clothes off, anticipation clouding your mind. Your [cockname of player in lower case]pussy is already damp and ready for a canine tongue to pamper it. Meanwhile, Sylvia is now on all fours, the position seeming natural despite her usual bipedal stance. You and Julian simultaneously kneel either end of her and the wolf gives you a cautious but appreciative look over. Grabbing a bottle of lube from the clutter that has developed on the floor, the collie tosses it to the wolf. 'I would prefer anal if you don't mind, I want it to be special when lose my virginity,' Sylvia requests. Julian assents, and begins slathering his exposed wolfhood before doing the same to the collie's exposed tailhole.";
				say "     Eager for her to begin, you seat yourself and spread your legs, granting her access to your intimate areas. Raising her rear as she bends forward to pleasure you, Sylvia inhales deeply and shudders pleasurably, your scent enhancing her soaring libido. She licks around her mouth before running her tongue up your gash, lingering as it rubs over your clit. While she may have refused your advances so far, you can tell that either she is a natural, or that she has had experience on other people, as she lathers her tongue around before driving it inside you. Occasionally she grazes her teeth over your clitoris, the faux danger thrilling you and compelling you to thrust against her ministrations.";
				WaitLineBreak;
				say "     Julian's penetration of the collies back passage is heralded by her being pushed forward, driving her snout into your muff. As she recovers from this, the wolf grips her hips and steadily thrusts, his fingers stroking her tummy as he gradually fits more of his shaft inside her. Each time he bottoms out, Sylvia's face is pressed against your groin, the air from her exhalations tickling and stimulating your moist hole. Meanwhile, the collie seems to be in immense pleasure, the fluids of her arousal steadily dripping from her shivering pussy onto her carpet, leaving a mark both to the eye as well as the nose. Her breath quickens, the attentions she is receiving soothing the fires of arousal that had been stoked in her excursion.";
				say "     Looking up from admiring the canine's enthusiasm in eating you out, your gaze rests on Julian. His paws are tracing the contours of Sylvia's backside, tracing their way over the swell of her buttocks and stroking her tail. The scene is completed by the knotted wolf cock pounding into her ass. A look of bliss is plastered across his face, head tilted back, eyes closed, and tongue lolling out to the side of his open mouth. As he thrusts, the currently fairly small bulge at the base of his penis grows, readying itself to lock him inside her body in the futile attempt to impregnate her. You too can feel your orgasm creeping closer, tingles travelling through your body.";
				WaitLineBreak;
				say "     Your eyes meet with Julian's and you silently agree to make Sylvia an orgasming wreck before he fills her with his spunk. One of the wolf's paws darts below his thrusting shaft and rubs her weeping pussy, the dextrous digits slipping from clit to gash more gracefully than you would have thought him capable of. Not wishing to be outdone, one of your own hands makes its way to the collie's breasts, caressing the soft flesh and tweaking her firm nipples. Closer to orgasm than you thought, the quartet of stimulations sends her over the edge. Squirting fem-cum around Julian's probing fingers, Sylvia's hips start thrusting, as her body is overtaken by euphoria. This in turn sends you and her friend into orgasm too, the muscles of her anus clenching around the lupine's shaft as her tongue writhes within your vagina. Gripping her head, you push against her mouth, spasming as your own orgasm splashes against her snout. At the same time, Julian gives a mighty shove, forcing his knot past her spasming tail ring, before erupting within her, his semen flooding her.";
				say "     Between you, true to your agreement, the collie lies suspended in a post-orgasmic daze. While your hands support her, so too does the knot keeping her ass raised, still twitching. Saliva trickles out of the corner of her mouth as her tongue slips from your depths. You sit on the bed and wait for the wolf's shaft to soften too. After some time, Sylvia seems to recover and she turns over, gasping as her anus rubs against the flesh inside her. The collie bids you pass her a beaker from the floor, to which you comply. Sufficiently yielding, Julian's shaft slips from her anus as they stand up together. Sylvia quickly moves the beaker in time to catch the gush of cum that rushes from her stretched rear.";
				WaitLineBreak;
				say "     She places the container on her desk before slumping back on the bed with you. Julian sits down beside her and squeezes the collie's hand. 'Feeling better now,' he enquires, to which the canine nods. 'Ahhh, that felt good enough to try again in future. Though next time hopefully without mind altering drugs,' Sylvia laughs, taking this development in her relationships with you both within her stride. 'Not having a skirt on makes me feel more liberated, I think I'll leave it off for now.' She stands before turning to you both and motions for you to stand. When you have done so, she hugs you both, a breast compressing into each of your sides. 'Thank you. I don't know what I would have done without you. Come back again soon, I want to spend more time with both of you. But for now, you should probably go, you'll have things to do and I need to clean my room,' the collie beamed. She bids you and Julian adieu before bending down to tidy her floor. This gives you both a view of her stretched anus, splashes of cum shining on her fur. You smirk at each other before walking out the door.";
		else: [not interested]
			say "     You shake your head, helping her was enough. You wish them well and leave them to their coupling. As you close the door, you hear a yip of pleasure.";
	now hp of Sylvia is 4; [helped with heat]

Charming Picnic is a situation.
The level of Charming Picnic is 0.
The sarea of Charming Picnic is "Campus".

instead of going to College Walkway East while (SylviaConv is 4 and hp of Sylvia > 3 and a random chance of 1 in 4 succeeds and LastCampusWalkin - turns > 2):
	move player to College Walkway East;
	CharmingPicnicEvent;
	
Instead of resolving Charming Picnic:
	CharmingPicnicEvent;
	
to CharmingPicnicEvent: [Picnic]
	say "     As you explore the college, with the occasional curious greeting from a passing student, you see a small group having a picnic on a clean piece of lawn. Getting closer, you see that it is Sylvia, Julian, and two felines whom you haven't seen before. They are sitting on a red tartan blanket, eating normal food and laughing. Where they found bread and cheese you wouldn't have a clue. Though with what you've heard about the cats, you're pretty sure you know who provided it. Not wanting to intrude on their gathering, you sit on a bench and watch from a distance, smiling at how friendships are able to be maintained or developed, even in such a dark time for the city. The feline twins are obviously very close, with them feeding each others morsels as the border collie tells them of a trip into the city which ended with her having to explain to an elderly crocodile, fairly red faced, why she was hiding in his bath tub.";
	say "     Julian sits next to her, eyeing some slices of ham, letting out chuckles as Sylvia continues her tale. All of them seem very fond of each other, casually touching each other as they pass food and express concern and support as they exchange stories. Julian tells them of his childhood, of walks through the snowy forests of Canada, and watching wolves hunt through his father's binoculars. The twins then regale them with how they convinced some soldiers to eat some peaches, leaving before they noticed the effects. You smile, glad that people still take the time for such activities as picnics, that would have been viewed as mundane before the outbreak, but now are a reminder of what was and the hope for the future. As you leave, you turn your head and watch as Julian finally grabs the ham, devouring it in three bites.";
	now LastCampusWalkin is turns;
	
Badminton One is a situation.
The level of Badminton One is 0.
The sarea of Badminton One is "Campus".

instead of going to College Walkway East while (SylviaConv is 4 and hp of Sylvia > 3 and a random chance of 1 in 4 succeeds and LastCampusWalkin - turns > 2):
	move player to College Walkway East;
	BadmintonOneEvent;
	
Instead of resolving Badminton One:
	BadmintonOneEvent;
	
to BadmintonOneEvent: [Game of badminton]
	say "     While walking down the path, you look over the lawn at the various students doing everyday activities such as studying, talking with friends, and jogging. In the middle, a net strung between two poles catches your eye, as well as the people playing what appears to be badminton. You recognise Sylvia and Julian, who seem to be playing against two near identical cats. Despite this being a casual game, a small gathering of people is spectating, noises of admiration and encouragement bubbling of them as they watch. The feline twins work in coordination with each other, never going for the shuttlecock at the same time nor getting in each other's way. The collie seems to be letting Julian take the lead, her skill meaning that she is capable of covering for any mistakes he makes, while still keeping the game fairly even, allowing them all to have fun.";
	say "     You approach the game, the crowd shuffling around to allow you a clear view. More than a few eyes are admiring the players more than the game, several bulges or damp patches showing through clothing. The game continues for quite a while longer, the rallies continuing for minutes as no one makes any effort to force their opponent to error. In fact, as they continue, the players begin acting theatrically, making some hits look dramatic, or flipping their racquets. The cats intermittently somersault acrobatically, while Sylvia twirls around and does trick shots, much to the applause of the spectators. The game is brought to a close when the wolf, out of canine instinct, grabs catches the shuttlecock in his mouth, causing everyone to burst into laughter, a few people joking that if he likes cock that much, perhaps he should follow them to their rooms. Further amusement is brought about by Sylvia telling him to drop it, before patting him and saying what a good boy he is. The game finished, you continue through the college.";
	now LastCampusWalkin is turns;
	
Sylvia ends here.

[Various Companions brought to Sylvia]

[Jogging Event]

[Study of others]
