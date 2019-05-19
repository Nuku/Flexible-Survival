Version 3 of Sylvia by Prometheus begins here.

[Version 1: Original - By Prometheus]
[Version 2: Added gender preference paths - By Prometheus]
[Version 3: Bad Breakup and Cheat's Retribution events added - By Prometheus]

[ hp of Sylvia - relationship variable with the player          ]
[   0: not met                                                  ]
[   1: told you her room number                                 ]
[   2: watched her give a BJ + told them her room number        ]
[   3: met her in her room                                      ]
[   4: helped her recover from an unnatural heat                ]
[   5: Met at beach                                             ]
[   6: Interactions with pets and companions open.              ]
[   7: Discussed her virginity.                                 ]
[   8: ...                                                      ]
[   9: ...                                                      ]
[   10: ...                                                     ]
[   100: refused her event, no further contact                  ]

[ hpM of Sylvia - relationship variable with the player preferring male interactions   ]
[   0: not met                                                  ]
[   1: told you her room number                                 ]
[   2: met her in her room                                      ]
[   3: helped her recover from an unnatural heat                ]
[   4: Met at beach                                             ]
[   5: Interactions with pets and companions open.              ]
[   6: Discussed her virginity.                                 ]
[   100: refused her event, no further contact                  ]

[ hpF of Sylvia - relationship variable with the player preferring female interactions   ]
[   0: not met                                                  ]
[   1: told you her room number                                 ]
[   2: met her in her room                                      ]
[   3: helped her recover from an unnatural heat                ]
[   4: Met at beach                                             ]
[   5: Interactions with pets and companions open.              ]
[   6: Discussed her virginity.                                 ]
[   100: refused her event, no further contact                  ]

[SylviaConv                                                     ]
[   0: not talked to                                            ]
[   1: One conversation                                         ]
[   2: Two conversations                                        ]
[   3: Three conversations                                      ]
[   4: Four conversations                                       ]

[SylviaVirginCheck - Not used anymore                           ]
[   0: Sylvia's virginity intact                                ]
[   1: Refused to take Sylvia's virginity                       ]
[   2: Took Sylvia's virginity                                  ]

[SylviaTrapVar                                                  ]
[   0: Retribution not started                                  ]
[   1: Did not take part in Ethan's Punishment                  ]
[   2: Took part in Ethan's Punishment                          ]


[QUEST LOG]
to SylviaQuestLog:
	if hp of Sylvia is:
		-- 0:
			say "     You should not see this.";
		-- 1:
			say "[bold type]Sylvia Quest: [roman type]The border collie you met told me her room number. She lives in room 059 in the female dormitory. Perhaps I should visit her at some point.";
		-- 2:
			say "[bold type]Sylvia Quest: [roman type]The border collie I watched give her friend a blowjob told me her room number. She lives in room 059 in the female dormitory. Perhaps I should visit her at some point.";
		-- 3:
			say "[bold type]Sylvia Quest: [roman type]I met Sylvia in her room. She was bus at the time, but invited me to come back later to talk.";
		-- 4:
			say "[bold type]Sylvia Quest: [roman type]I helped Sylvia overcome a heat that was induced by her time in the city. Perhaps I should get to know the wolf more if I want to continue spending time with them.";
		-- 5:
			say "[bold type]Sylvia Quest: [roman type]I met Sylvia and her friends at the beach. She invited me to help her with studying the residents of the city. I should go and see her in her room at some point.";
		-- 6:
			say "[bold type]Sylvia Quest: [roman type]I agreed to help Sylvia with her project. Should I come across anyone friendly, she may be interested in meeting them.";
		-- 7:
			say "[bold type]Sylvia Quest: [roman type]Quest Limit.";
	if hpM of Sylvia is:
		-- 1:
			say "[bold type]Sylvia Quest: [roman type]The border collie you met told me her room number. She lives in room 059 in the female dormitory. Perhaps I should visit her at some point.";
		-- 2:
			say "[bold type]Sylvia Quest: [roman type]I met Sylvia in her room. She was bus at the time, but invited me to come back later to talk.";
		-- 3:
			say "[bold type]Sylvia Quest: [roman type]I left Julian to help Sylvia overcome a heat that was induced by her time in the city. Perhaps I should get to know the wolf more if I want to continue spending time with them.";
		-- 4:
			say "[bold type]Sylvia Quest: [roman type]I met Sylvia and her friends at the beach. She invited me to help her with studying the residents of the city. I should go and see her in her room at some point.";
		-- 5:
			say "[bold type]Sylvia Quest: [roman type]I agreed to help Sylvia with her project. Should I come across anyone friendly, she may be interested in meeting them.";
	if hpF of Sylvia is:
		-- 1:
			say "[bold type]Sylvia Quest: [roman type]The border collie you met told me her room number. She lives in room 059 in the female dormitory. Perhaps I should visit her at some point.";
		-- 2:
			say "[bold type]Sylvia Quest: [roman type]I met Sylvia in her room. She was bus at the time, but invited me to come back later to talk.";
		-- 3:
			say "[bold type]Sylvia Quest: [roman type]I helped Sylvia overcome a heat that was induced by her time in the city. Perhaps I should get to know the wolf more if I want to continue spending time with them.";
		-- 4:
			say "[bold type]Sylvia Quest: [roman type]I met Sylvia and her friends at the beach. She invited me to help her with studying the residents of the city. I should go and see her in her room at some point.";
		-- 5:
			say "[bold type]Sylvia Quest: [roman type]I agreed to help Sylvia with her project. Should I come across anyone friendly, she may be interested in meeting them.";
		-- 6:
			say "[bold type]Sylvia Quest: [roman type]Quest Limit.";


SylviaRoomConnection is a number that varies.[@Tag:NotSaved]

an everyturn rule:
	if Despairing Biologist is resolved and (Resolution of Despairing Biologist is 1 or Resolution of Despairing Biologist is 2 or Resolution of Despairing Biologist is 3) and SylviaRoomConnection is 0:
		change the northeast exit of Tenvale College Female Dorms to Sylvia's Room; [connecting the location to the travel room]
		change the southeast exit of Sylvia's Room to Tenvale College Female Dorms; [connecting the location to the travel room]
		now SylviaRoomConnection is 1; [room connected]
	if a random chance of 1 in 2 succeeds: [present]
		move Sylvia to Sylvia's Room;
	else: [Away exploring]
		now Sylvia is nowhere;

Section 1 - Room Declaration

Table of GameRoomIDs (continued)
Object	Name
Sylvia's Room	"Sylvia's Room"

Sylvia's Room is a room.
The description of Sylvia's Room is "[SylviasRoomDesc]".

to say SylviasRoomDesc:
	say "     The floor of Sylvia's room is clean. The walls, however, are covered in pictures of various canines. Wolves, foxes, corgis, border collies, the list goes on. If she didn't have a window, you would think that side would be plastered with them too. On a bookshelf, there are hundreds of books on various subjects, including biology and mythology. A desk is pushed against the wall in one corner with a dead laptop, a photo frame, a vase with some flowers, and two well-thumbed books. One is Charles Darwin's [']On the Origin of Species['], and the other is a children's book with dogs and a smiling family. Beside the window is a small armchair with a cushion depicting a border collie. Her bed is well made, but there are strands of fur on it, not all of it looks like hers...";

Section 2 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Sylvia	"Sylvia"

Sylvia is a woman. The hp of Sylvia is usually 0.
[Physical details as of game start]
ScaleValue of Sylvia is 3. [human sized]
SleepRhythm of Sylvia is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Sylvia is 0. [no cock]
Cock Length of Sylvia is 0. [no cock length]
Ball Size of Sylvia is 0. [no ball size]
Ball Count of Sylvia is 0. [no balls]
Cunt Count of Sylvia is 1. [1 pussy]
Cunt Depth of Sylvia is 8. [gets stretched a bit by an alpha husky]
Cunt Tightness of Sylvia is 3. [gets stretched a bit by an alpha husky]
Nipple Count of Sylvia is 2. [2 nipples]
Breast Size of Sylvia is 3. [C cup at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Sylvia is false. [can take oversized members without pain]
Sterile of Sylvia is true.
PlayerMet of Sylvia is false.
PlayerRomanced of Sylvia is false.
PlayerFriended of Sylvia is false.
PlayerControlled of Sylvia is false.
PlayerFucked of Sylvia is false.
OralVirgin of Sylvia is false.
Virgin of Sylvia is false.
AnalVirgin of Sylvia is false.
PenileVirgin of Sylvia is true.
SexuallyExperienced of Sylvia is true.
MainInfection of Sylvia is "".
[Custom Variables]
hpM of Sylvia is a number that varies. hpM of Sylvia is usually 0.
hpF of Sylvia is a number that varies. hpF of Sylvia is usually 0.
SylviaConv is a number that varies. SylviaConv is usually 0.
SylviaVirginCheck is a number that varies. SylviaVirginCheck is usually 0.
SylviaTrapVar is a number that varies. SylviaTrapVar is usually 0.
The description of Sylvia is "[SylviaDesc]".
The conversation of Sylvia is { "Woof woof" }.
The scent of Sylvia is "     The pretty collie smells mostly like a dog. Cleanish, but with undertones of other creatures.".

to say SylviaDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Sylvia] <- DEBUG[line break]";
	else:
		say "     Sylvia is a young anthro border collie. Her hind legs, paws, chest, muzzle, and the tip of her fluffy tail are white, while the rest of her fur is black. She gazes at you with green eyes, an abnormality in dogs. [if (hp of Sylvia < 4) or (hpM of Sylvia > 0) or (hpF of Sylvia < 3)]The shirt she wears does little to hide her two C cup breasts, but keeps them from the eyes of passing creatures. She is wearing a royal blue skirt that hides her thighs from view[else]Her lack of clothing means that you can see her two C cup breasts, covered in white fur. You can also see her canine vulva, a small amount of moisture glistening at the bottom[end if].";
		LineBreak;
		say "     From the interactions you've had with her so far, Sylvia is a confident young lady, though your first encounter shows that she can be brought to despair. [if (hp of Sylvia < 4) or (hpM of Sylvia > 0) or (hpF of Sylvia < 3)]While she seems fairly sexually open, people that she is unfamiliar with must first earn her trust and respect before they can expect to be pleasured by the border collie[else]Due to your help and time spent with her, she willingly will tend to some of your carnal needs[end if]. She looks back at you, striking a seductive pose, before sticking her tongue out lightheartedly.";

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
	now description entry is "Try to learn more about the collie girl";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Family";
	now sortorder entry is 2;
	now description entry is "Ask about her family";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Friends";
	now sortorder entry is 3;
	now description entry is "Ask about her friends";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Hobbies";
	now sortorder entry is 4;
	now description entry is "Ask what she does for fun";
	[]
	If SylviaConv > 3:
		choose a blank row in table of fucking options;
		now title entry is "Her interest in biology";
		now sortorder entry is 5;
		now description entry is "Find out about where her interest in biology came from";
	[]
	If (hp of Sylvia > 5) or (hpM of Sylvia > 4) or (hpF of Sylvia > 4):
		choose a blank row in table of fucking options;
		now title entry is "Help with research";
		now sortorder entry is 6;
		now description entry is "Take Sylvia to see someone willing to help her research";
	[]
	If SylviaTrapVar > 0:
		choose a blank row in table of fucking options;
		now title entry is "Trap Expertise";
		now sortorder entry is 7;
		now description entry is "Ask her how she knows how to make such effective traps";
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
				if (nam is "Help with research"):
					say "[SylviaTalk6]";
				if (nam is "Trap Expertise"):
					say "[SylviaTalk7]";
				WaitLineBreak;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You stand up, indicating an end to the conversation. Sylvia smiles at you, before looking out her window.";
			WaitLineBreak;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SylviaTalk1: [Talk about her]
	say "     'As I said, I'm on exchange with Tenvale College, all paid for by a scholarship. I've always been good at the sciences. Between the pushing of my father and a family friend, I was advanced several years at school. It did mean that I didn't get much time to do what normal girls do; ride horses, gossip, talk about cute boys... but I really enjoyed learning about animals, so I focused on that,' Sylvia responds. 'I was accepted into university, studying animal biology. The material and experiences were thrilling, but by the time I started considering a doctorate, the pressure I was beginning to feel from my family and tutors, unintentional I'm sure, was getting unbearable. So, I asked to come here for a complete change of scenery. I wasn't expecting it to change [italic type]this[roman type] much,' the collie gestures at the city with a chuckle.";
	say "     'But you didn't really want to know about my education, did you? The day the city changed was mostly normal. I'd had lunch with some friends and was just sitting down in my room to work through some lab notes, when I heard roaring and screaming. Then I felt itchy and noticed that I was growing fur. I don't remember much else from that day because I tripped over my chair trying to look out the window and knocked myself out. When I woke, I was the beautiful young lady you see before you.' Sylvia bats her eyelids at you. 'I would assume that I was infected by the dog fur that I always seem to have on my clothes, but who could complain about being changed into a sexy collie? After that, I went to make sure that my friends were still alright. As you probably saw when we first met, it nearly ruined my degree. If it hadn't been for Julian...' she trails off.";

to say SylviaTalk2: [Talk about her family]
	say "     'Wanting to learn about my family, are you? Do you reckon that you might like my brother more than me? Tough. He isn't here,' Sylvia jokes. 'My father was a soldier but has now retired. My brother, however, had enlisted before I left for university. My sister and I were miserable the day he left, but he sent us letters fairly often. I don't know how he is now since, as you know, the mail stopped getting into the city. My family must be so worried about me,' the collie laments, looking at the photo on her desk. 'My mother was a housekeeper. Yes, we still have those in England, but the birth of my brother meant that she had to stay at home. When my sister and I were born, she realized that things needed to change, and so she started baking for the village shop.' Sylvia sighs, fond memories of childhood in the fore of her mind.";
	say "     You cough politely, wanting to hear more. When you point out that she has yet to mention the family friend that encouraged her into science, she snaps from her thoughts and continues. 'I was lucky to have a supportive family. Even if I hadn't been interested in science, they would have been happy. However, a friend of the family, an entrepreneur, said that biologists could go far in the world, and would be willing to employ me once I had been to university. The family that my mother was housekeeper for were also willing to help me, as I had grown up on their estate. I was a very lucky young lady growing up.' She smiles returning to her youth.";

to say SylviaTalk3: [Talk about her friends]
	say "     'My friends? Am I not good enough for you?' Sylvia teases. 'Well, you've already met Julian. He's a biophysicist, so we work together fairly often, especially since he used to be part of my laboratory group. Julian has a twisty mind and is good at working out problems, a trait that I'm sure you already saw when you met us. He is a little shy, though that may just be compared to me. I doubt that everyone would just accept someone watching them touch someone's privates in broad daylight. He's from Canada, so, of course, he's really nice. He claims he grew up among wolves, but that may just be an expression.";
	say "     'There are also Evelyn and Evenlyn, who are twins. Why someone would name their children such similar names is beyond me. Perhaps it's a London thing as that is where they were from. They were studying engineering I'm told. I met them after the changes when I was going to the lab to see how damaged it was. They were stealing from the rooms. I doubt that the equipment is usable anymore, but they seem to think that the machines are still valuable. They're cats, so I was surprised when they were willing to talk to me so quickly. Really quite charismatic those two,' the collie contemplates, scratching her chin. 'I met Septus, the captain of the wolf football team. He seemed nice, but was slightly disappointed when I said I wasn't interested in becoming a cheerleader. He says hello if he sees me while looking for new recruits, so I'd consider him a good acquaintance.' Sylvia thinks for a minute. 'I think that's all.'";
	WaitLineBreak;
	say "     'Though I suppose Madeleine is sort of my friend. We have a rivalry over who can do better in various things. Science, sports, friendships... if I express an interest in something she will try and outdo me and I can't let that happen, especially as she is French. If you aren't familiar with history, France and England have quite a record of hostility towards each other, but have more similarities than many would admit. The interactions between us are fairly similar to this. If she gets an A in an assignment, then I have to get and A+. If I participate in a fencing tournament, she makes it her mission to defeat me. Don't tell her I said this, but she's is probably more charismatic than me and I'm lucky I have as amazing a friend as Julian. If she would just accept I'm better than her we might be able to spend more time together, she isn't exactly hard on the eyes.' From the way she delivers this last statement, you can tell that she enjoys the competition.";
	if SylviaTrapVar > 0:
		say "     'You remember Chloe too, don't you? Cute fennec girl who's good with computers. Telling you about my friends wouldn't be complete without including her. Her ex-boyfriend still makes for a better mongoose than gorilla and she gets to be free from such a disappointment. I'm considering including her in my research group. We're getting to be quite a few of us aren't we? Though considering the number of people you get to meet, my circle of friends may expand even further. Getting to know people has become so much easier since becoming animals, something which I've mentioned in my dissertation if you're interested. I really must get around to asking about you at some point, I don't feel I know much about you...'";

to say SylviaTalk4: [Talk about her hobbies]
	say "     'What do I do for fun? Well, I like knitting, moonlit walks on the beach, and plotting the downfall of the government,' Sylvia says, attempting to look serious. Recognising humor, you give a snort before waiting for her to answer properly. She smirks at you for a second before saying, 'Growing up, I learnt how to play badminton. I'm quite good at it too, enough so that I was a national representative for a while. Withdrew from the team later in high school, but I carried on playing casually. I did sabre fencing during the winter, as badminton is a summer sport. I wasn't quite as good at that, but Daddy says most people don't fight fair outside of the strip, so I learnt self-defense too. My family allowed me to practice on them, even my mother. They considered it very important that I be able to protect myself, but the fencing means that I can shank someone with a sword if I have mine at hand,' she explains, gesturing at a wooden case that is sticking out from under her bed.";
	say "     'But besides sporting activities, I spend quite a bit of time reading, both studying biology and recreationally. You've probably noticed that I have a fair few books. While I didn't used to socialize much, since making friends here, I spend a lot of time with them. The changes in the city affected our professors, meaning that we don't tend to have essays anymore, so we don't have that as a pressure anymore. I collect tissue and fluid samples from people within the college as well as outside of it, so that takes up a lot of time. The university is a lot safer, but the greater city area provides more diversity, which improves the information I gather. Or would gather if I had access to facilities that could analyze them. But yes, that is what I would describe as my hobbies.'";

to say SylviaTalk5: [Talk about her interest in biology]
	say "     'Are you sure that you want to know? It's not quite as benevolent as many other people's reasons might be,' Sylvia questions you concernedly. You tell her that you are still interested, and she slowly nods. 'Okay, I suppose that I trust you enough. When I was young, we had quite a few dogs. Two border collies, a German shepherd, and two corgis. They were all male except for one of the collies called Lucy, whom I was especially attached to. I was about seven when I came home from school one day to find the German shepherd, Argus, mating with her. At that stage I didn't know what sex was, and was curious what they were doing, so I asked my father. His response has stayed with me to this day. He told me that they were mating, trying to have puppies, and that was where children came from. I was seven when I was given the talk. He took me back into the room where they were, by which time Argus was tied. Daddy told me that this was an important part of life, and that I shouldn't be ashamed to watch nor be ashamed to discuss things such as sex.";
	say "     'Over the time we had her, she mated with all of them, the tart,' Sylvia muses amusedly. 'From that day, I was obsessed with animals. Where they lived, how their lives interacted with others of their species as well as those that aren't. My first science project was on the importance of foxes for the rural ecosystem. One of my A level essays was on the social structure and mating habits of timber wolves. My teachers were concerned, but my family was proud of how much effort and passion I was devoting to biology. When I was sixteen, I rescued a border collie puppy from drowning and promptly took it home. I was allowed to keep him, so I named him Ajax. He grew up to be big boy. I hope that my parents are still looking after him and not spoiling him too much,' Sylvia says, tilting her head. 'But anyway, that's the gist of why I started studying biology. Saw dogs having sex, decided I would make a career where I might see more animals fornicating. Not the most noble of reasons, I know.";

[Tests on NPCs]

to say SylviaTalk6: [Samples from friends]
	LineBreak;
	say "Who do you wish to take Sylvia to?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if AngieAroused > 1 and female is not banned and herm is not banned and female is not warded and herm is not warded:
		choose a blank row in table of fucking options;
		now title entry is "Angie";
		now sortorder entry is 1;
		now description entry is "Have a trip to the zoo and see the herm panther";
	[]
	[if hp of Blanche > 2 and female is not banned and male is not banned and female is not warded and male is not warded:
		choose a blank row in table of fucking options;
		now title entry is "Blanche";
		now sortorder entry is 2;
		now description entry is "Visit the wolf woman in her den";]
	[]
	if Bubble is booked and female is not banned and female is not warded:
		choose a blank row in table of fucking options;
		now title entry is "Bubble";
		now sortorder entry is 3;
		now description entry is "Take the collie to see the inflatable vixen";
	[]
	if companion of Player is cute crab:
		choose a blank row in table of fucking options;
		now title entry is "Crab";
		now sortorder entry is 4;
		now description entry is "See whether the crab will help her";
	[]
	if companion of Player is little fox:
		choose a blank row in table of fucking options;
		now title entry is "Dash";
		now sortorder entry is 5;
		now description entry is "Ask the baby fox to be brave and give a sample";
	[]
	if companion of Player is gryphoness:
		choose a blank row in table of fucking options;
		now title entry is "Denise";
		now sortorder entry is 6;
		now description entry is "Ask the Gryphoness for a sample";
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
				if (nam is "Angie"):
					say "[AngieSample]";
				[if (nam is "Blanche"):
					say "[BlancheSample]";]
				if (nam is "Bubble"):
					say "[BubbleSample]";
				if (nam is "Crab"):
					say "[CrabSample]";
				if (nam is "Dash"):
					say "[DashSample]";
				if (nam is "Denise"):
					say "[DeniseSample]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You stand up, indicating an end to the conversation. Sylvia smiles at you, before looking out her window.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AngieSample: [Sylvia X Angie]
	say "     Your thoughts go to Angie, the panther-herm at the zoo, and you suggest to Sylvia that she may be willing to provide a sample. The collie quickly slides a few things into her bag and slings it over her shoulder. Your journey through the city is uneventful, with the most exciting moment being a stray dog rushing into an alleyway, an old bone grasped firmly between its teeth. As you near the gates of the zoo, the cries and calls of its occupants greet your ears along with the smell of hundreds of animals that had been confined. Sylvia looks around with interest as you walk towards the gift shop, her enthusiasm about non-human beings undulled by the nanite outbreak. When you enter the room, Angie looks up, [if AngieAroused is 50]the majestic panther, Midnight, curled up in a corner deep asleep[else]a stack of books detailing the mating habits of tigers in plain sight on the counter[end if]. She greets you warmly and looks curiously at the collie following you, disappointed at her lack of feline features but nonetheless appreciative of the canine's physique.";
	say "     You quickly explain who Sylvia is, with her piping in to explain what she wants and why. 'I'll happily reward you for your help, whether it is with food, water, or release.' The black feline smirks at this, the groin of her shorts stirring as her length stiffens. 'That sounds like a good deal. So you want a sample of fur and sexual fluid?' She questions, before brushing a few strands off the counter. 'You can collect the semen yourself as part of payment.' The collie chuckles at her reply, 'Nothing beats collecting sperm by hand.' 'Who said anything about using your hands?' Angie responds, pushing the surprised student's back over a chair before circling around and positioning her hardening cock in front of the canine's mouth. Sylvia lets out a soft murr as the shaft baps her in the nose before sliding into her open mouth.";
	WaitLineBreak;
	say "     The zookeeper doesn't wait before pressing her penis deeper, the collie's throat bulging around its girth. You question how Sylvia is able to do this without gagging or showing any discomfort. She seems to be taking the [']no hands['] policy seriously, not stimulating her dripping pussy as her face is used by the horny feline. 'Mmm, where did you find this girl? She knows how to treat a cock that's for sure,' Angie moans. As if feeling that that sells her short, Sylvia sneaks her tongue out and traces it over the kitty's balls each time she bottoms out. The feline's hands play over the collie's breasts in reward for this treatment, caressing the swell of flesh and tweaking the nipples. 'I don't think I'm going to last much longer. Your throat is [italic type]tight[roman type].' Giving a few final thrusts, Angie withdraws as she begins to cum. The first few spurts shoot into the canine's mouth and esophagus, the following jets splattering over her face and chest. 'I hope you can still use those as samples,' the pantheress says with slight worry. 'Not that I would mind having to do this again.'";
	say "     As Sylvia sits up, she is quite the sight. Semen drips from her breasts upwards, matting her fur. 'I think there's plenty of sample material here, don't you think[if Player is not defaultnamed] [name of Player][end if]?' You have to agree, there is probably enough cum on her to fill a glass. You pass her one of the vials from her backpack and she scrapes a decent pool from her nose into it. 'You'd put many of the men at the campus to shame with that release. I might be back to continue this another time if that's alright with you Angie,' the collie says as she tightens the lid of the vial. The feline blushes beneath her fur and mumbles that that should be fine [if AngieAroused is 50]as long as Midnight can join in too[else]and that perhaps they could do more[end if]. Collecting a few strands of fur from the pantheress's arm, Sylvia stores the samples and slings her backpack over her shoulder again. You both wave goodbye to Angie and walk back to the campus. The zoology student is going to need a long shower later, but gives you a bottle of water in payment first.";
	say "[bold type]You gain a water bottle![roman type][line break]";
	increase carried of water bottle by 1;
	NPCSexAftermath Sylvia receives "OralCock" from Angie;

[to say BlancheSample: [Julian X Blanche]
	say "     You remember the mature white wolf that you saved in the Capitol District and are about to suggest her as a potential sample donor when Julian enters the room behind you. 'Fancy seeing you here[if Player is not defaultnamed] [name of Player][end if]. Helping Sylvia with her research?' he asks as the collie walks over and gives him a loving hug. 'They're indispensable, I don't know what I would do without either of you. But I believe [if Player is herm]they [else if Player is male]he [else]she [end if]was about to say something before you came in,' Sylvia says, and expectant look directed at you. You tell them about Blanche and how you saved her from Drakes and helped her back to her den. 'She sounds nice. I think I'll come along too,' the dark-furred wolf responds. 'Nice, Julian. Expressing interest in another woman in front of your girlfriend,' the collie dryly replies. 'I didn't mean it exactly like that, and anyway, I thought we were polyamorous?' the lupine says, ears flat against his head in embarrassment.";
	say "     'Don't worry, we are. I just like teasing you about it. Not many people were open about such relationships before the outbreak and I like to feel that I was ahead of the trend. But we should go and meet this wolf woman before our friend here decides we need some privacy.' They don't take long to pack the necessary equipment and soon you are walking across the campus and towards the gate. 'Would you like to take point on this expedition Julian. Because I wouldn't want you to miss out on experiencing how [']nice['] Blanche is. You might sulk,' Sylvia asks, smiling like a coal-scuttle. 'I graciously accept your offer, feel free to observe,' the wolf replies, bowing extravagantly, causing a few passersby to look on curiously. The collie snorts and pushes him forward. 'Well then, lead dear alpha.' You escort them as you trudge through the city, ensuring that you aren't taken by surprise, the two of them remaining relaxed and looking around as you travel. Before long, you are outside Blanche's makeshift den and you knock before entering, the scientists following you inside.";
	WaitLineBreak;
	say "     Blanche looks up as you descent the stairs into the basement, her tail wagging slowly behind her as she sees that it is you, though it slows for a moment as she sees that you have company. 'Who are they?,' she cautiously asks while eying them warily. [if hp of Blanche > 6]'And please keep your voices down. The children are sleeping.' [end if]Before you can reply, Sylvia steps forward, hands held up in an unthreatening manner. 'Hello, my name is Sylvia, and this is my friend Julian. We met [if Player is not defaultnamed][name of Player] [else]your rescuer [end if]at the college. I'm a biologist doing research on the forms that the nanite plague has changed people into. And I was wondering whether you would be willing to provide a sample of biological material for study?' Blanche waves for her to lower her hands, but still looks wary of the two students.";
	say "     'Where are our manners? Would you like something to eat or drink?' Julian interjects. 'I would be interested in talking to you for a bit if you don't mind, even if you would prefer not to take part in our research, and you can never have too much food or drink when the outside can be so dangerous.' Blanche reacts with a small smile at the black wolf's offer, eyeing him up, though you are unsure whether it is to gauge whether he is a threat or a potential lover. 'That sounds very civilized. I don't see why I can't at least allow you to convince me of the merits of your proposal, and you seem an interesting couple so I would be lying if I said I wasn't interested in knowing more about you. Come. I'll clear one of the desks and share what food you can spare,' the white wolf replies. She brushes some papers from a table while you collect some chairs and the two students lay out the selection of sandwiches and cans of drink from a backpack.";
	WaitLineBreak;
	say "     As you seat yourselves, Sylvia apologizes to Blanche. 'I'm sorry for behaving like I was more concerned about the science than I was about you. I haven't met too many people in the city who thought of me as a person as opposed to a potential receptacle for breeding, so I try and explain what I want before they try and jump me. I'm glad that Julian appears to remember proper etiquette when I can't.'";]

to say BubbleSample: [Take sample from Bubble. Sylvia X Latex Vixen]
	say "     Wondering whether Sylvia would be interested in meeting Bubble, you inform her of the latex vixen living on the upper floors of the library. The collie happily collects her equipment in a bag and follows you through the city. Luckily, there are no attacks, and you arrive at the library safely. 'I do like the smell of books,' the canine confesses as you walk over to the stairs. Upon reaching the second floor, you are greeted by Bubble, whom is lounging around on a chair, her legs spread and a paw rubbing over her gash. She looks up, but doesn't stop masturbating. 'Oh, hi. I didn't realize we were having anyone new here today. Where'd they find you?' The two women look at each other, though Sylvia doing so with more scrutiny as she makes mental notes of interesting features and qualities. 'Your friend here,' the collie gestures at you, 'has agreed to help me with my research into the infection of the city. Would you be willing to provide a sample, perhaps some of the lubrication that seems to be pouring from your vagina?'";
	say "     'Ooh, someone's confident. Perhaps you could earn it. With your tongue, say?' Bubble responds cheekily. Unfazed, Sylvia drops to her knees, collecting a small amount of the secretion before pressing her mouth up against the vixen's leaking vulva. The sound of slurping and moaning fills the library, both participants caring little if anyone else knows what they are doing. A paw strokes over the vixen's rubbery skin, feeling the bulge of her breasts before returning to spread her pussy wide for the finale. With a gasp, Bubble begins squirting her lube across the floor, the collie quickly moving her face out of the way, though keeping her fingers pistoning in and out. 'Mmm, you definitely earnt your sample,' the vixen tiredly mumbles. With all parties satisfied, Sylvia stands up and collects her belongings. Just to make sure of her safety, you escort her back to her room, chatting about how you met Bubble. 'Thank you, I'll be sure to compare Bubble's sample with those of other latex creatures,' the collie says, tossing you a water bottle";
	say "[bold type]You gain a water bottle![roman type][line break]";
	increase carried of water bottle by 1;
	NPCSexAftermath Bubble receives "OralPussy" from Sylvia;

to say CrabSample: [Take sample from crab. Non-sexual.]
	say "     Hoping that the crab can be of help to the collie, you lift her onto the bed. Sylvia instantly squeaks in surprise and falls to her knees next to it. 'She's so adorable! What's her name? Please say that you have named for her. She's so cute.' You are slightly taken aback by how enthusiastic she is being about the crab, but you have to admit, the crab is rather sweet. The student pulls a tin of fish food out of a bag and sprinkles some on her palm, before offering it to the crab. If her eyes could go out on stalks even more, then you are sure that the crustacean would do so as she quickly scuttles onto the canine's paw. While she feeds, Sylvia brushes her back with a cotton swab, collecting any detritus that may have collected there. Once the food is finished, the collie returns your companion to you, along with a bottle of clean water in thanks.";
	say "[bold type]You gain a water bottle![roman type][line break]";
	increase carried of water bottle by 1;

to say DashSample: [Sylvia, Julian and fox. Non-sexual]
	say "     You lift the small fox onto Sylvia's bed and ask him to sit still and be brave while Sylvia gets a fur sample. However, he doesn't listen and begins to snuffle around on her duvet, taking in all the interesting smells that permeate the fabric. You hear the door open behind you and someone enter. 'Oh, hello. Who's the handsome fellow on the bed? You haven't found yourself a new man have you Sylvia?' they ask, their voice identifying them as Julian. Sylvia lets out a snort. 'I think he's a bit young for me. Maybe when he's older,' she jokes back. 'When he's tired of exploring and hopefully before finding some of the items I keep under my bed, Dash here is going to donate some fur for my research.' Julian sits on the bed, startling the young fox for a moment before the vulpine begins to nudge the dark-furred wolf, familiarizing himself with his scent. 'He's so adorable! Where did you find him?' Julian asks you, stroking the smaller canidae's back. You explain that you found him in the park and gave him some food and since then the little fox had wanted to be with you.";
	say "     As you tell the tale, Sylvia sits on the other side of the kit who is basking in being the center of attention. 'I'd consider kidnapping him from you and keeping him for myself, but I haven't checked the college's rules on pets since the outbreak,' the collie teases you while scritching under his chin. Judging from his current behavior you might wonder whether the fox would accept this, but you know him better than that and you imagine it would take a greater bribe than mere attention to separate him from you. Giving the cute fur donor a kiss on his snout, Sylvia stands up again and brushes the fur that has collected in her palm into a clear plastic bag and labels it. 'Julian, let the puppy go. He has important business in the city that we are keeping him from. He and his sidekick are going to save the world,' she mock scolds the wolf. With a sigh he too stands up. 'Fine. I came to tell you that Dr. Vayne wanted to discuss some of your research. Bye[if Player is not defaultnamed] [name of Player][end if].' 'Another successful sample taken but I should go and talk to Dr. Vayne. Here. Have a water bottle in payment. Make sure you share it with Dash,' the collie says as she brushes any loose fur from her clothes.";
	say "[bold type]You gain a water bottle![roman type][line break]";
	increase carried of water bottle by 1;

to say DeniseSample: [Take sample from Denise. Sylvia X Gryphoness]
	say "     You gesture to the hermaphrodite gryphon following you and introduce her to the collie. 'You have such pretty feathers,' Sylvia croons, stroking a paw over the vibrant, blue plumage. Denise leans towards the attention, enjoying the affection. 'Would you mind if I took two feathers? One can be molted, but I would like a fresh one for comparison,' the student requests, her hand getting closer to the gryphon's back end. While initially hesitant, your companion agrees when Sylvia's hand reaches her genitals, a thumb rubbing over her pussy while her palm cups her balls. Pleased at such easy consent, Sylvia stoops and picks a feather off of the floor before grasping one on the gryphoness's neck. With a sharp pull, a feather comes away in her hand, though not without a pained squawk from Denise. The collie quickly stores her samples in two vials before turning back to you both. 'Now that that's out of the way, perhaps I can reward such a pretty bird for her bravery.'";
	say "     Denise is keen, and you don't have any problem with that. After all, being plucked must hurt. Sylvia goes down between the gryphon's legs, grasping her cock in one hand and massaging her cunt with the other. Denise lets out a warble and begins thrusting her hips forward, pushing the collie's fingers into her slit and her shaft through the canine's grip. Content to just watch, you sit on the bed and allow them to continue. With a slurp, Sylvia takes the avian's shaft into her mouth, her tongue dancing over its length as it is withdrawn. This continues for several minutes, the thrusts speeding up as Denise closes on orgasm. Pulling out of the collie's mouth, your gryphoness companion squirts her cum over the collie, who sits there, allowing herself to be splattered with spooge. When Denise has finished, the canine collects some of the semen in a vial and adds it to her collection. Overall, a very productive session. Sylvia tosses you a bottle of water in thanks.";
	say "[bold type]You gain a water bottle![roman type][line break]";
	increase carried of water bottle by 1;
	NPCSexAftermath Sylvia receives "OralCock" from Denise;


to say SylviaTalk7: [Traps]
	say "     'I had wondered if this question would come up. I didn't tell you when you asked about my interests because it isn't a socially acceptable pastime. It tends to cause people to drift away from me, and I enjoy your company. But you asked, so I shall answer. You may have noticed that I'm not as physically capable as many of the other people in the city, and I wasn't any stronger or tough as a human. What I do have is my mind, a platitude my father was fond of telling me, though he gave me a solution as well. He told me that indirectly fighting someone reduces the chances of coming to harm and that a trap may give me some deniability if I planned it well. A sort of incentive for excellence in its own way. He started off by teaching me some of the tricks he learned in the military, but it didn't take me long to start experimenting and improvising beyond bear traps and tripwires. The trick was to make it look like someone was careless, unlucky, or that you couldn't have been involved. I'm proud to say that I never got caught and any accusations came to nothing.'";
	say "     'Now I tend to play to my strengths, using all of the sciences, rather than just physics, and the changes in the city give me a large variety of materials to work with. I can use bodily fluids, fur, or use the infected against each other. That time it activated my heat was an outlier, I assure you. I'd misplaced my backup muscle relaxants and paralyzers, but I'm usually much better prepared than that. Obviously, I don't use my traps on other students very often. They're more for establishing safe points for me within the city, especially if I find somewhere that might make a good base of operations for extended research trips. Though the soldiers have stumbled into some of them unfortunately, and when the traps are potent enough to repel and incapacitate the transformed, humans tend to get a bit more than they can handle without changing. Luckily, they seem to blame a coyote that's in the city rather than me, or I may face consequences if the soldiers succeed in [']taming['] the city.' She goes silent after that and you take it as the end of the conversation.";


Section 4 - Sex

instead of fucking Sylvia:
	if (lastfuck of Sylvia - turns < 6): [she got fucked in the last 18 hours = 6 turns]
		say "     Sylvia looks at you, an amused expression gracing her face. 'Letting your instincts control you? Sorry, but you'll have to find someone else.' She then melodramatically places a hand to her forehead. 'For I have... a headache.'";
	else if ((hp of Sylvia < 4) and (hpM of Sylvia < 3) and (hpF of Sylvia < 3)): [relationship not high enough]
		say "     'As attractive as you are, we got to know each other more in other ways before I let you ravish me.' She gasps. 'We could talk about BOYS.'";
	else: [ready for sex]
		say "     Looking around the room, you see the collie isn't paying attention to you, instead, gazing out the window with a book in hand. The moisture around her groin suggests that she is ready though.'";
		WaitLineBreak;
		say "[SylviaSexMenu]";

to say SylviaSexMenu:
	say " [line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Receive Fellatio";
		now sortorder entry is 1;
		now description entry is "Ask Sylvia to give you a blowjob";
	[]
	if Player is female: [only females and herms can be eaten out.]
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
	if Player is male: [only males and herms can mount her]
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 4;
		now description entry is "Mount her and pound that ass";
	[]
	if Cunt Count of Player > 0 and Cock Count of Player is 0: [only females can trib]
		choose a blank row in table of fucking options;
		now title entry is "Tribadism";
		now sortorder entry is 5;
		now description entry is "Stimulate each other's pussies";
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
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the collie girl, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SylviaSex1: [Receive a blowjob]
	say "     Closing the door to avoid the eyes of other students, you sit down on the bed. Turning around at the sound of the door closing, Sylvia moves over to you, her eyes meeting yours. At your request for her to give you a blowjob, she licks her lips and kneels, her breasts brushing your exposed erection. Cupping your balls, she runs her wide tongue up your shaft, the trail of saliva causing a tingle as it cools. Pulling back, the collie asks you to stand, not wishing to dirty the bed covers. You do so, looking down at the dog on her knees between your legs. Stroking the side of her face, you thrust forward into her waiting mouth, your cock being enveloped in the soft, wet warmth within. She sighs, her tongue rotating around you as you penetrate her mouth. Impatient to increase the pace, you grip the sides of her head and pound your groin against her face, the increase in roughness doing little to perturb the eager bitch, whom whines needfully";
	say "     A paw creeps its way over your backside, before a digit wriggles into your anus, causing you to clench and your member to leap in her mouth. She gives a muffled giggle as you resume and continues to work her finger in and out of your rear. As a knuckle repeatedly stimulates against your prostate, you feel your orgasm nearing. As it crests, you push into her mouth until your scrotum is against her jaw before climaxing. Her eyes widen as your cum squirts down her throat, and the muscles of your anus constrict and relax around her finger. As your orgasm recedes, you release her head and stroke over her ears, telling her what a good girl she is. Letting out a contented moan, she pulls her mouth of your penis, catching a few stray strings of sperm on her tongue, and nuzzles her cheek up against your groin. Patting her, you retrieve the clothes you brought and leave her savoring your taste, a sticky patch unnoticed on her cheek.";
	NPCSexAftermath Sylvia receives "OralCock" from Player;

to say SylviaSex2: [Be eaten out]
	say "     As much as an audience might excite you, you close the door before taking your clothes off and tossing them onto Sylvia's bed. Turning at the sound, the collie is greeted by your naked body, a sight she seems to find alluring. She slinks over to you, her tits swaying slightly. Seemingly knowing exactly what you want, Sylvia licks up your thigh, causing your pussy to twitch. Stroking her paws over your backside, she licks your gash enthusiastically, collecting your juices in her mouth, causing your knees to weaken. Luckily, between force of will and the surprising strength of the border collie, you manage to continue standing. A claw traces over your back entrance, but continues over, teasing your tingling nerves. She looks up at you saucily, knowing exactly what she is doing and the effect that she is having on you with her ministrations.";
	say "     With each lick, her nose rubs against your clitoris, the friction heightening your growing arousal. With a squelch, the collie forces her tongue into your cunt, the surprise and sensation causing your pelvis to mash against her face, driving her even deeper. As she writhes her tongue around in your passage, she snuffles against your clit, ensuring that it remains unforgotten. After a short time of this treatment, your building orgasm overwhelms you, causing you to climax around her tongue and over her face. Fem-cum sprays against her mouth as she pulls back, replacing her tongue with a thrusting finger. She guides you to sit on her bed as he licks her lips, collecting your essence. As your climax comes to an end, she withdraws her finger and sticks it in her mouth, giving you a dirty wink as she sucks it, savoring your flavor As you redress yourself, Sylvia returns to writing notes at her desk, her finger still in the corner of her mouth.";
	NPCSexAftermath Player receives "OralPussy" from Sylvia;

to say SylviaSex3: [Eat her out]
	say "     Feeling that the collie deserves some attention, you close the door and step up behind her, caressing her shoulders. You whisper that you'd like to taste her doggy cunt, a request that causes her tail to start wagging, signaling her desire for it. You quickly remove what little you are wearing and place them on a chair, before turning back to the canine. You admire her toned body, not overly muscular, but a form that has been worked for. She sits on the edge of her bed and opens her legs, displaying her moist pussy. You kneel and trace your fingers over her spade, slipping a digit in. Content, you bring your mouth forward and give a tentative lick, before continuing confidently, her yips of pleasure spurring you on. She strokes the back of your head, applying subtle pressures to guide your tongue to more pleasing zones in her vagina.";
	say "     As you lick, her juices flow across your tongue, dripping onto her sheets or trickling into your mouth. Your hands grip her thighs, your thumbs rubbing around her genitals, adding extra stimulation. Realizing that you have forgotten her clit, you pull your tongue from her passage and purse your lips around it, sucking. This sends her over the edge, causing her hips to spasm and thrust against your face. Her fem-cum shoots into your mouth as she caresses the back of your head, sighing and moaning in time with the contractions. Surprised at how quickly she climaxed, you sit up and look at her, allowing the last of her orgasm to drip onto the bed. She gives a weak smile and shakes her head, declining to speak further on the matter. Shrugging, you stand up and redress. She gives you a quick thank you before lying back and relaxing.";
	NPCSexAftermath Player receives "OralPussy" from Sylvia;

to say SylviaSex4: [Anal]
	say "     As Sylvia gazes out of the window, her backside catches your eye. Covered in fur, its soft curve causes a carnal hunger to rise in your stomach. Closing the door, you creep up behind her mischievously, hoping to convince her to sate your desire. 'I can hear you, and I don't advise grabbing me,' Sylvia warns cheerfully, turning around. Seeing your erection, she blushes slightly before stepping next to you and grazing a palm across it. Hearing your request for anal, she smiles before crouching on all fours and flagging her tail. Her tail star twitches as she awaits your touch. Remembering last time, you take the bottle of lube out of her desk and slather your penis, before kneeling behind her. Applying some to your fingers, you press them against her anus, smearing the substance around your target, slipping two fingers in to ease the internal passage as well. Ready, you align yourself behind her, a smile from her giving you consent.";
	say "     Gripping the base of her tail, you thrust forward, penetrating her and causing a moan to burst from her mouth. The muscles in her anus squeeze around you, unsure whether to repulse the intruding appendage or draw it in. Your caresses on her bottom loosen the constriction, allowing you to withdraw for another thrust. As you eagerly couple, your shaft oscillating into her willing hole, Sylvia lets out the occasional grunt, moan, or yip, expressing the joy and pleasure that you are giving her. You too let out animalistic growls, a primal instinct urging you to make her your bitch. Opposing this instinct, a rational part of your mind reminds you to restrain yourself, lest you hurt her. Rationality wins out as you release your grip on her tail and instead move your hands to her waist as you continue to thrust into her bowels.";
	WaitLineBreak;
	say "     Sylvia turns her head, watching your penis appear and disappear from view. You can hear her tongue slapping in her mouth, mirroring the sound of your groin against her rear. You lean over her, bringing an arm up to cup the side of her face as she twists around to exchange a kiss with you. Breaking the kiss, she leans forward, angling her body so that her chest is pressed against the ground with her rear raised in true canine fashion. You can hear the moisture dripping from her cunt splashing against the carpet, your actions greatly arousing the collie. You run a hand over her tummy, feeling the impacts of your thrusts through her body. Resuming your grip on either side of her hips, you increase the rate at which you pound into her";
	if Player is knotted:
		say "     As you near climax, a strong urge to knot her arises. Desperately, you attempt to force your knot past her anal ring, each thrust swelling your knot further. In a last-ditch attempt, you grab her legs and pull back on her as you press forward. Sylvia lets out a cry of pure pleasure, her anus relenting enough for you to knot her. Not a moment afterwards, your climax erupts, cum shooting deep into her bowels, setting off her own orgasm. You both let out howls of ecstasy as her ass squeezes around your [Cock of Player] cock, and juices spray from her pussy onto your leg. Exhausted, you both lie there, waiting for your penis to soften. Remembering her request from last time, you grab a beaker and hold it beneath your bodies. As you pull out with a slurp, a steady flow of semen runs into the beaker. Sylvia collapses on her side before hauling herself to her feet. She takes the beaker from you and, giving you a wink, takes a sip. Shaking your head and chuckling, you stand up and dress yourself.";
	else:
		say "     Nearing climax, your grip tightens, and you manage a last few powerful strokes before you cum inside of her, setting off her own orgasm. You feel her ass squeeze around your [Cock of Player] cock as juices spray from her pussy onto your leg. You let out a sigh, feeling your semen slosh against your tip as her muscles compress around you. Remembering her request from last time, you grab a beaker and hold it beneath your bodies. As you pull out with a slurp, a steady flow of semen runs into the beaker. Sylvia collapses on her side before hauling herself to her feet. She takes the beaker from you and, giving you a wink, takes a sip. Shaking your head and chuckling, you stand up and dress yourself.";
	NPCSexAftermath Sylvia receives "AssFuck" from Player;

to say SylviaSex5: [Tribbing]
	say "     Sitting down on the bed, your eyes start looking over Sylvia's naked body. As her tail wags idly, you catch a glimpse of her canine spade. You stand up and close the door before approaching the collie, an idea of what you want firm in your mind. Sylvia turns to face you, having heard the door. Upon hearing your wish for lesbian fun, she smiles and agrees readily, her hand grasping your thigh as she leans in to kiss you. As your mouths meet, her tongue slips past your lips and begins caressing your own, the wide organ effortlessly tracing around your mouth. Breaking the kiss, you pull back and remove your clothes, before embracing her again, your breasts rubbing against each other, causing warmth to grow in your loins.";
	say "     Her hand eases its way between your bodies, making its way to your pussy and slipping a digit in. Finding you already wet, Sylvia lies on her back and indicates for you to lie atop her with your face next to her cunt. Assuming this to be part of readying her for the main event, you do so, immediately sending your tongue to work on her vulva, arousing her further to allow for greater pleasure later. With each stroke of your tongue, the collie twitches and lets out a small moan, your efforts obviously appreciated. To ensure that your own arousal doesn't wane, Sylvia reciprocates your oral stimulation by running her tongue up and down your gash, occasionally flicking the skin around your anus. Mutually deciding that you are ready for tribbing, the canine helps you turn around and align your pussies with one another with her lying on her back and you atop of her.";
	WaitLineBreak;
	say "     Smiling at you, Sylvia strokes her hand down your side until it connects with your ass. She gives it a squeeze, causing you to thrust forward in surprise, bringing your pussies together and sending a jolt through your bodies. You continue to rub up against her, a hand exploring her torso. Her own runs up and down your back, feeling your shoulders, ribs, and bottom, a few fingers rubbing your anal ring. You flinch in pleasure as your clitorises collide, a response which she mirrors, accompanied by a gasp. You lean down and kiss her passionately, your teeth lightly gripping her lip for a moment. The collie looks at you lustfully, kneading your rear and pushing you down against her cunt. You pull your face back and suggest a change of position, perhaps one that doesn't press her against the floor. 'I do have a partiality for doggystyle, being a dog's natural stance,' she responds cheerfully.";
	say "     Sylvia rolls onto all fours, and you kneel behind her. Gripping her hips, you start grinding your groins together, squelching noises filling the room. As you get closer to climax, you occasionally pull back and thrust against her, copying male actions. This seems to activate something in Sylvia's mind as she begins panting and yipping, perhaps fulfilling her perceived role. As your orgasm crests, you cease thrusting and settle for grinding. Contracting and spasming, your vulva spreads against her own, squirting your fem-cum into her puffed lips. Her own climax sprays her juices partially into you, the feeling causing you to quiver in hypersensitivity. Tired, but very satisfied, you both slump, breathing heavily. After relaxing for a short time, you stand, giving her a deep kiss, before dressing and getting ready to return to the city.";
	NPCSexAftermath Sylvia receives "PussyFuck" from Player;
	NPCSexAftermath Player receives "PussyFuck" from Sylvia;

Section 5 - Events

Table of GameEventIDs (continued)
Object	Name
Despairing Biologist	"Despairing Biologist"

Despairing Biologist is a situation.
The level of Despairing Biologist is 0.
The sarea of Despairing Biologist is "Campus".

when play begins:
	add Despairing Biologist to badspots of furry;

instead of going to College Walkway East while (Despairing Biologist is active and Despairing Biologist is not resolved and a random chance of 1 in 2 succeeds and LastCampusWalkin - turns > 2):
	move player to College Walkway East;
	DespairingBiologistEvent;

Instead of resolving Despairing Biologist:
	DespairingBiologistEvent;

to DespairingBiologistEvent: [Meet Sylvia]
	say "     Walking through the college, you see the occupants still acting in ways that you might expect from students: lying on the grass laughing with friends, chatting to each other as they walk carrying stacks of books, and standing in groups complaining about one thing or another. Among these activities are some that fit more with the recent events: a pretty pantheress on her knees treating several colleagues to handjobs, moaning from behind a bench as two students relieve some stress, and an elephant dressed in a groundskeeper uniform cleaning sperm from the lawns. Smirking, you continue down the path, thoughts of how the futures of these many people changed with the nanite outbreak.";
	say "     As you turn a corner, you hear an argument. 'I don't want to swap my degree. I like biology, but the city has changed. Just yesterday, I saw a lion being chased by a gazelle. Darwin doesn't cover that!' a female voice says exasperatedly. Looking over, you see a border collie girl talking to a male wolf, both wearing clothes unlike many of the other residents of the city. 'You don't have to change degrees. Think of all of the creatures running around the city, or even just the college. Did Darwin catalog minotaurs or dragons? You could be the leading authority!' her companion replies enthusiastically. The collie tilts her head. 'I suppose so. Could be fun collecting the data, and there are a lot of never before seen animals...' she reasons.";
	WaitLineBreak;
	if (female is warded or female is banned or male is warded or male is banned):
		say "     Her friend gives her a hug, the affection clearly visible to any onlookers such as yourself. 'Thank you Julian. I really needed that support and I do have an interest in mythological creatures so that sounds like a good career path for now,' the collie gratefully tells her friend. She then continues sultrily, 'I might even reward you for that later, but for now we have an observer. Both their eyes are on you by now, the wolf's hand lightly grasping the canine's waist. 'As you seem to be staring at us for a while I suppose we better introduce ourselves. I'm Sylvia, and this is Julian.' The wolf waves weakly, seemingly shy of you. 'So, what brings you to the college? You weren't a student or lecturer before the changes, and I'm guessing you aren't with the military. Researcher? Resident?' the female canine questions you.";
		say "     You smirk and say that telling her would remove the air of mystery you've developed. Rolling her eyes in mock disgust and sitting on a bench, she gestures for you to sit down beside them. 'As you probably heard from our conversation, I was a biology student, though now our knowledge of biology is likely to change with what's happened to the city. I mainly focused on zoology, but I kept my options open,' the collie informs you, giving her companion's hand another squeeze in thanks for his support earlier. 'And Julian here is a physicist just to be dull. Though he is studying biophysics so he has some redeeming qualities.' The wolf sticks his tongue out at her in response to this, making her giggle. 'But you probably have places to go, so if you want to talk to me any further my room number is 059 in the female dormitories. You seemed nice enough so I look forward to seeing you again.' Noting the room in your head, you stand up and walk away, recognizing that they would like some privacy.";
		if male is warded or male is banned:
			now hpF of Sylvia is 1; [got room number]
		else:
			now hpM of Sylvia is 1; [got room number]
		now Resolution of Despairing Biologist is 1; [banned / warded option]
		change the northeast exit of Tenvale College Female Dorms to Sylvia's Room; [connecting the location to the travel room]
		change the southeast exit of Sylvia's Room to Tenvale College Female Dorms; [connecting the location to the travel room]
	else:
		say "     Her friend gives her a hug, the show of friendship slightly ruined by the erection tenting his trousers. 'Really, Julian? You're that pleased for me? Or are you perhaps wanting something else?' she questions him in a sultry manner, her hand sneaking down his trousers to cup his bulge. By this time, you are standing in full view about five meters away. A fact that has been noticed by the wolf, Julian. 'Umm, Sylvia. There's someone right there. Would we not be better going...' he remarks cautiously. The collie, whom you take to be Sylvia, turns around, but you notice that she doesn't remove her hand from his pants. She studies you shortly. 'From the look of them, they've seen sex before, and besides, universities were rife with fornication and debauchery even before the changes.' Unfazed by your presence, she continues to play with the lupine's junk.";
		say "     [bold type]Do you wish to continue watching, or leave before this gets awkward?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Stay here. She seems fine with you watching.";
		say "     ([link]N[as]n[end link]) - Leave. This is between them.";
		if Player consents: [Stay]
			LineBreak;
			say "     'I suppose I should introduce myself. I'm Sylvia, and this is Julian.' The wolf waves weakly, still taken aback at the turn of events. 'So, what brings you to the college? You aren't a student or lecturer, and I'm guessing that you aren't with the military. Researcher? Resident?' the female canine questions you. You smirk and say that telling her would remove the air of mystery you've developed. Rolling her eyes in mock disgust, Sylvia removes her hand from Julian's pants and gestures for him to follow her down the side of a building away from the eyes of others. She gives you a glance, inviting you to follow too. You push aside the foliage of a bush, entering into a shady clearing between some trees, a seldom-used bench sheltered beside a rose bush.";
			say "     Now that you are away from the eyes and wanderings of the college residents, Sylvia's restraint with her colleague diminishes. Within seconds, she has his trousers around his ankles and is admiring his erect penis. 'Fairly large I would say, though not necessarily for some of the roaming beasts', she observes. While he had swollen with pride at the beginning of her statement, the afterthought seems to damage his ego. Noticing this, the collie runs her hand up his shaft and consoles him as she kneels. 'It's the right size for me. I doubt that I'd be able to fit something a foot wide in my mouth.' Excited at where this is going, the wolf's tail begins to wag, and pre begins to seep from his cock. Giving him a wink, the canine licks him from base to tip, her wide, pink tongue folding around the sides of his shaft. Julian, perhaps because he is unsure what to do with his hands while receiving the blowjob, begins to stroke her head and ears. This attention causes Sylvia to cease licking and seal his member within her mouth.";
			say "     [bold type]Do you want to stay here, or are there places you need to be?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Stay here. Their pleasure is yours.";
			say "     ([link]N[as]n[end link]) - Leave Julian to be pleasured in peace.";
			if Player consents: [watch BJ]
				LineBreak;
				say "     Aroused by such a shameless display of gratitude, [if Cock Count of Player is 1]your cock swells, pre drizzling from the tip[else if Cock Count of Player > 1]your cocks swell, pre drizzling from the tips[else]fem-lube dribbles from your widening slit[end if] and you bring your hand down to soothe this growing desire. Looking up, you see that Julian has seated himself upon the bench, with Sylvia between his legs, caressing his furry scrotum as her head bobs up and down in his lap. He leans back, a blissful expression on his face, groans escaping from his open mouth. In a rush of confidence, Julian holds the back of Sylvia's head and begins to piston his hips back and forth, taking control of his pleasure. The dog girl accepts this change in control and rests herself back on her thighs, relaxing a bit while still allowing the wolf access to thrust into her maw.";
				say "     The male continues to hammer himself into the canine's mouth, occasionally stroking the back of her head or scratching an ear. Noticing his imminent orgasm, the collie brings a hand up between her mouth and his knot, preventing its entrance to her mouth. Giving a few last thrusts, Julian cums inside Sylvia's mouth, his knot throbbing between her fingers. Short of breath, the biology student pulls back, semen oozing from her mouth as the lupine cock slips out, still contracting and leaving trails of sperm on the ground. Swallowing the contents of her mouth, the collie stands up, dusting her knees off and straightening her skirt. 'Mmm, not bad for a first experience. I might even consider doing that again,' she says brightly before kissing her companion on the nose.";
				say "     'But, fair is fair, I haven't had an orgasm,' she chuckles, playfully attempting to drag the lupine up. As you step forward to offer your services for such a task, she looks at you and laughs good naturedly. 'I only met you a moment ago. What sort of girl would I be if I allowed anyone I met to watch me fellate a friend before allowing the stranger to go down on me.' Seeing your disappointment, she relents slightly. 'I'll tell you what, prove to me that you're not just interested in me sexually. Talk to me later in my room when we aren't both horny, then I'll consider whether you are worth knowing. Room number 059, toodle pip.' Beginning to feel like a third wheel, you leave the two bonding, and continue through the college.";
				NPCSexAftermath Sylvia receives "OralCock" from Julian;
				now hp of Sylvia is 2; [watched BJ, got room number]
				now Resolution of Despairing Biologist is 2; [watched BJ]
			else: [do not watch]
				LineBreak;
				say "     Allowing the wolf to feel the attentions of the collie, you turn to leave. Sylvia pulls back from his cock momentarily and calls after you, 'I'm in room 059 of the female dormitory if you want to talk to me more. You seemed nice enough.' Noting the room in your head, you push past the branches and continue through the college.";
				NPCSexAftermath Sylvia receives "OralCock" from Julian;
				now Resolution of Despairing Biologist is 3; [didn't watch BJ]
				now hp of Sylvia is 1; [got room number]
			add "Sylvia Quest" to OpenQuests of Player;
			change the northeast exit of Tenvale College Female Dorms to Sylvia's Room; [connecting the location to the travel room]
			change the southeast exit of Sylvia's Room to Tenvale College Female Dorms; [connecting the location to the travel room]
		else:
			LineBreak;
			say "     Feeling slightly embarrassed at the willingness of the pair to let you watch, you mutter something about needing to be somewhere before walking hurriedly back the way you came, the collie giggling behind you.";
			now Resolution of Despairing Biologist is 99; [disinterest]
			now hp of Sylvia is 100; [event refused, no further contact with her]
	add "Sylvia Quest" to OpenQuests of Player;
	now Despairing Biologist is resolved; [It won't happen again]
	now LastCampusWalkin is turns;

Table of GameEventIDs (continued)
Object	Name
Room 059	"Room 059"

Room 059 is a situation.
Prereq1 of Room 059 is Despairing Biologist.
Prereq1Resolution of Room 059 is { 1, 2, 3 }.
The level of Room 059 is 0.
The sarea of Room 059 is "Nowhere".

instead of going northeast from Tenvale College Female Dorms while (Room 059 is active and Room 059 is PrereqComplete and Room 059 is not resolved and (hp of Sylvia is 1 or hp of Sylvia is 2) or (hpM of Sylvia is 1) or (hpF of Sylvia is 1)):
	move player to Tenvale College Female Dorms;
	Room059Event;

to Room059Event: [First time to Sylvia's room]
	say "     Seeing the room number that Sylvia had given you, you approach the door. However, when you knock, the door slowly swings open, revealing the collie leaning back in an armchair reading a book. Her shirt is unbuttoned, but mostly covering her chest, only a glimpse of her breasts is visible. She notices you over the top of her book, placing it on a nearby desk. As the canine stands, she does up a few of the buttons on her shirt. 'That you came here at all suggests that you aren't as sex-driven as many of the city's occupants,' Sylvia exclaims, recognizing you instantly. Motioning you in, she closes the door before patting the edge of her bed. 'Please, sit,' the student says cheerfully, returning to her armchair and smiling at you. Grateful to have a chance to rest your legs, you comply, the mattress sinking slightly, placing you at similar face heights. 'I don't believe you have told me your name,' she says looking expectantly at you. [if Player is not defaultnamed]You introduce yourself as [name of Player], to which the collie smiles and waves her fingers cutely[else]You shake your head and state that your name isn't important. The collie looks at you cautiously, but decides to continue[end if].";
	say "     'So, you want to get to know me more?' Sylvia remarks, stroking her tail absent-mindedly. 'I'm on exchange from Northern England, where my parents are. I have an older brother and a younger sister. I am studying zoology, but with the changes to the city, I plan to focus on the interactions of the infected with each other, especially groups.' You can see that she is really excited about this decision, contrasting with her breakdown to her friend. 'It will mean that I will have to go into the city at points, so I'm not sure whether to just try and sneak around, or get some help from the other students. Before I do that, I should be able to study the residents on campus.' Her hand creeps up her tail, sliding over her thigh before she notices that and consciously moves it away from her groin, draping it over the arm of the chair.";
	WaitLineBreak;
	say "     The collie girl continues to tell you about her life in England. Memories such as family walks in the forests, and her siblings, and her exploring the trees and bushes away from the common paths bring tears glistening in the corners of her eyes. You reach a hand out and pat her shoulder in an attempt to console her. She turns her head and smiles at you, laying a hand on top of your own. 'Thank you for the concern. I would hope that there are others like you in the city,' compliments Sylvia, gently tracing the tips of her fingers over your hand. 'But I don't want to seem too easy, so I'll give you a choice. Would you prefer a kiss or a hug?' While you may have been hoping for more, the offer is nonetheless not an unwelcome one.";
	if hpM of Sylvia is 1:
		say "     You tell her that you would prefer a hug to which she responds by opening her arms and waiting for you. You step up next to her and encircle her within your arms. Smiling at you, she returns the hug, her soft chest pressed against your body. You can feel her heartbeat, its percussion sounding at similar intervals to your own. 'Mmm, hugs are nice don't you agree?' she mumbles in your ear as you embrace. She releases you and sits on the edge of her bed looking at you. I like talking to you, you seem the strong silent type. Unfortunately you've sort of caught me at a bad time and I have to do some study so it may be better if I am alone.' Sylvia dismisses you with a hand gesture. As you leave, you suddenly wonder whether she meant studying a book, herself, ... or others. You dismiss the thought and walk back down the dorm hallway.";
	else: [Open to female content]
		say "     [bold type]Would you prefer a kiss or a hug from Sylvia?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - A kiss sounds nice. She did offer after all.";
		say "     ([link]N[as]n[end link]) - Perhaps a hug. Who knows where else that mouth has been?";
		if Player consents: [kiss/lick]
			LineBreak;
			say "     You inform her that you would prefer a kiss, a request that makes her snicker. 'Doggy kiss it is then.' Sylvia chuckles. You both stand, and she steps up next to you before placing one hand on your hip and the other on your shoulder. Leaning down so the border collie can reach your mouth, you are extraordinarily surprised when she starts wildly licking the side of your face, bathing you in saliva. This tongue bath wasn't what you were expecting, but it gives you a sense of safety, making you feel like a puppy being cared for by its mother. Sylvia pulls back and observes your spit-washed countenance. 'Not bad, if I do say so myself. You may want to clean yourself more often. Others might not like such a... gamey flavor,' she quips before returning to her seat.";
			say "     Wiping your hand over your face to remove the excess fluid, you sit down again and give her an accusatory stare. The collie snorts at your reaction. 'I'm a dog. Normal kisses are more difficult. Plus, isn't it meant to be sexy when your partner uses tongue?' A short laugh escapes your mouth at her poor joke and the faux naivety in which she delivered it. 'Come and talk to me again at some point. For now though, I have things to study,' Sylvia dismisses you with a hand gesture. As you leave, you suddenly wonder whether she meant studying a book, herself, ... or others. You dismiss the thought and walk back down the dorm hallway.";
			now resolution of Room 059 is 1; [kiss]
		else: [hug]
			say "     You step up next to her and encircle her within your arms. Smiling at how forward you are, she returns the hug, her soft chest pressed against your body. You can feel her heartbeat, its percussion sounding at similar intervals to your own. Suddenly, you feel the collie's hands squeeze your backside, causing you to jump away from her slightly. You give her an accusatory stare as she doubles over laughing. 'I thought that was what you wanted,' Sylvia says between sniggers, 'to feel my hands upon your body as we embraced, but it seems that perhaps you aren't ready, judging from that reaction to me only touching your rear.'";
			say "     Wanting revenge, you close the distance between you, her eyes carefully watching your movement but allowing your response. As you attempt to grab her, she sidesteps before licking you behind your ear and dancing away as you swing your arm around in a vain attempt to catch her. 'Growing up a girl, I was taught how to avoid the grasps of overly enthusiastic men, with a few lessons from my brother and father,' Sylvia chides, tapping you on the nose as you straighten. 'Come and talk to me again at some point. For now though, I have things to study,' Sylvia dismisses you with a hand gesture. As you leave, you suddenly wonder whether she meant studying a book, herself, ... or others. You dismiss the thought and walk back down the dorm hallway.";
			now resolution of Room 059 is 2; [Hug]
	if hpM of Sylvia is 1:
		now hpM of Sylvia is 2;
	else if hpF of Sylvia is 1:
		now hpF of Sylvia is 2;
	else:
		now hp of Sylvia is 3; [Met her in her room]
	now Room 059 is resolved;

Table of GameEventIDs (continued)
Object	Name
Unnatural Heat	"Unnatural Heat"

Unnatural Heat is a situation.
Prereq1 of Unnatural Heat is Room 059.
Prereq1Resolution of Unnatural Heat is { 1, 2 }.
The level of Unnatural Heat is 0.
The sarea of Unnatural Heat is "Nowhere".

instead of going northeast from Tenvale College Female Dorms while (Unnatural Heat is active and Unnatural Heat is PrereqComplete and Unnatural Heat is not resolved and SylviaConv is 5 and (hp of Sylvia is 3 or hpM of Sylvia is 2 or hpF of Sylvia is 2) and a random chance of 1 in 4 succeeds):
	move player to Tenvale College Female Dorms;
	UnnaturalHeatEvent;

to UnnaturalHeatEvent: [Sylvia removes skirt]
	if hpM of Sylvia is 2:
		say "[MalePrefUnnaturalHeatEvent]";
	else if hpF of Sylvia is 2:
		say "[FemPrefUnnaturalHeatEvent]";
	else:
		say "     Walking into the room, you notice that Sylvia isn't here. As you turn to leave, you notice a figure running full pelt toward you down the corridor. With a little more study, you realize that it is Sylvia, and you leap out of the way as she hurtles through the door before sliding to a halt in front of her desk, her skirt riding up to reveal an absence of undergarments. The lips of her canine cunt are puffy and engorged, with a thin trickle of liquid glistening. As she scrabbles through a drawer, you step from beside the bed and ask her what the rush is. At the sound of your voice she flinches slightly and turns her head, a needy expression that she seems to be fighting on her face.";
		say "     'I was in the city collecting samples,' Sylvia states, turning back to the clutter in the drawer. 'Things like fur, blood, semen, etcetera. I was wearing rubber gloves, but I stumbled while getting one sample and ripped one. It started trying to fuse to my hand, so I quickly pulled it off, but losing some skin with it. I must have squeaked because then I could hear creatures approaching. So, foolishly, I ran. Realizing that I would probably attract more pursuers if I continued trying to flee, I hid in an abandoned shop and waited for them to go past. I had completely forgotten that many animals hunt by scent as well as sight, so by the time I had remembered, they were outside, a husky pack of three bitches and one of those stupid alphas that think they're so great.";
		WaitLineBreak;
		say "     I knew that I wouldn't be able to escape the pack when they were that close, so I lay there, expecting them to leap through the window and ravage me.' For once, Sylvia doesn't seem cheerful, desperation filling her voice as she scrabbles through her belongings. 'To make matters worse, the aroma of the shop became stronger, and I realized that I had taken shelter in a sex shop, and I was getting aroused. Luckily, the building's stench covered my own smell and the scent of my growing arousal. They left fairly quickly after that, but now I'm struggling not to present myself for mounting to any male that passes my fancy. For goodness sake, where is it?!' Sylvia snaps, opening even more drawers in the futile attempt to find what she seeks. You ask her what she hopes to find, to which she replies, 'I had something to suppress arousal, should I ever need it, but I can't find it. Without it, I fear that I'll do something I will later regret.";
		say "     [bold type]Do you let her continue searching, or check your bag to see whether you have any libido suppressant to give her?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Let her continue searching. She has to find it eventually.";
		say "     ([link]N[as]n[end link]) - Search your bag. Time is of the essence.";
		if Player consents: [Let her look]
			LineBreak;
			say "     Deciding that she has to find it eventually if she looks everywhere in her room, you kneel and begin to help her search. You peer under the desk and the bed, before joining her in searching the contents of her desk. She has a surprising number of objects stashed in the drawers, with things such as pens, USB drives, and a dildo crammed in together. Suddenly, a knock interrupts your search, and you both turn around. In the doorway is a very concerned looking wolf, whom you recognize as Julian. 'Are you alright, Sylvia? I saw you dash through the campus, and you don't seem to have your satchel with you.' Julian enquires worriedly, casting curious glances at why you and the collie are scrabbling about on the floor. Sylvia hurriedly explains the same story she just told you, her paws creeping closer to her oozing pussy.";
			say "     Julian's eyes widen, and he steps into the room before closing the door, hiding the collie girl's predicament from any passerby. He reaches into his pocket and passes her a small syringe filled with orange liquid. 'That's my last one. I'll ask the twins to make another hospital run, just in case,' Julian tells her. Relief flooding her face, Sylvia flicks the tip before pulling her skirt off and stabbing the needle into her thigh. While the effects of her arousal have lessened, the lips of her cunt are still damp with her juices, and she still pants with need. 'Julian, while I would have preferred that this wasn't so desperate, I'm going to need more help. Would you... mount me? I fear that I have been sent into heat,' the collie girl pleads, her pussy clenching. Shocked, Julian hesitantly agrees, pulling his trousers and shirt off and placing them on her bed. Sylvia then turns to you. 'Would you like some oral attention? You did try and help,' she offers, unbuttoning her blouse and throwing it atop Julian's clothes, 'otherwise, could you give us some privacy?'";
			WaitLineBreak;
			say "     [bold type]Do you wish to take her up on the offer?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - You would love to feel the attentions of her tongue.";
			say "     ([link]N[as]n[end link]) - A threesome with them wasn't what you had in mind.";
			if Player consents: [receive oral]
				LineBreak;
				if Player is male: [fellatio]
					say "     You remove your clothes, allowing your [Cock of Player] penis to harden and rise. Meanwhile, Sylvia is now on all fours, the position seeming natural despite her usual bipedal stance. You and Julian simultaneously kneel down on either end of her, an uneasy eye contact developing as you gauge each other's cocks. Grabbing a bottle of lube from the clutter that has developed on the floor, the collie tosses it to the wolf. 'I would prefer anal, if you don't mind. I want it to be special when I lose my virginity,' Sylvia requests. Julian assents and begins slathering his exposed wolfhood before doing the same to the collie's exposed tailhole.";
					say "     Eager to begin, you push your penis forward, jabbing Sylvia in the nose and smearing your pre over her lip and nostrils. She inhales deeply and shudders pleasurably, your musk enhancing her soaring libido. She licks her lips before leaning forward and engulfing your [Cock of Player] cock within the wet warmth of her mouth. While she may have refused your advances so far, you can tell that either she is a natural, or that she has had experience with other people, as she loops her tongue around and slathers your shaft with each bob of her head. Occasionally, she grazes her teeth over the soft tissue of your penis, the faux danger thrilling you, compelling you to accelerate your thrusts into her maw.";
					WaitLineBreak;
					say "     Julian's penetration of the collie's back passage is heralded by her being pushed forward, [if Cock Length of Player > 6]sending your shaft sliding down her throat. Surprisingly, she doesn't choke, instead letting out a muffled moan[else]causing her jaw to rest against your groin[end if]. You work in synchrony, alternating your thrusts so that only one shaft is in her at a time while leaving the tip to be stimulated by the muscles of her lips or anal ring. Meanwhile, Sylvia seems to be in immense pleasure, the fluids of her arousal steadily dripping from her shivering pussy onto her carpet, leaving a mark both to the eye as well as the nose. Her breath quickens, the attentions she is receiving soothing the fires of arousal that had been stoked in her excursion.";
					say "     Looking up from admiring the canine's capability at devouring your meat, your gaze rests on Julian. His paws are tracing the contours of Sylvia's backside, tracing their way over the swell of her buttocks and stroking her tail. The scene is completed by the knotted wolf cock pounding into her ass. A look of bliss is plastered across his face: head tilted back, eyes closed, and tongue lolling out to the side of his open mouth. As he thrusts, the small bulge at the base of his penis grows, readying itself to lock him inside of her body in the futile attempt to impregnate her. You too can feel your orgasm creeping closer, tingles traveling through your body.";
					WaitLineBreak;
					say "     Your eyes meet with Julian's, and you silently agree to make Sylvia an orgasming wreck before you fill her with your spunk. One of the wolf's paws darts below his thrusting shaft and rubs her weeping pussy, the dexterous digits slipping from clit to gash more gracefully than you would have thought him capable of. Not wishing to be outdone, one of your own hands makes its way to the collie's breasts, caressing the soft flesh and tweaking her firm nipples. Closer to orgasm than you thought, the quartet of stimulations sends her over the edge. Squirting fem-cum around Julian's probing fingers, Sylvia's hips start thrusting, as her body is overtaken by euphoria. This, in turn, sends you and her friend into orgasm too, her throat and anus constricting around your shafts. Gripping her head, you push into her mouth completely, filling her gullet with spooge. At the same time, Julian gives a mighty shove, forcing his knot past her spasming tail ring, before erupting within her, his semen flooding her.";
					say "     Between you, true to your agreement, the collie lies suspended in a post-orgasmic daze. While your hands support her, so too does the knot keeping her ass raised, still twitching. Sperm trickles out of the corner of her mouth as your softening penis slips out. You sit on the bed and wait for the wolf's shaft to soften too. After some time, Sylvia seems to recover, and she turns over, gasping as her anus rubs against the flesh inside her. The collie bids you to pass her a beaker from the floor, to which you comply. Sufficiently yielding, Julian's shaft slips from her anus as they stand up together. Sylvia quickly moves the beaker in time to catch the gush of cum that rushes from her stretched rear.";
					WaitLineBreak;
					say "     She places the container on her desk before slumping back on the bed with you. Julian sits down beside her and squeezes the collie's hand. 'Feeling better now?' he enquires, to which the canine nods. 'Ahhh, that felt good enough to try again in future. Though next time, hopefully without mind-altering drugs,' Sylvia laughs, taking this development in her relationships with you both within her stride. 'Not having a skirt on makes me feel more liberated. I think that I'll leave it off for now.' She stands before turning to you both and motions for you to stand. When you have done so, she hugs you both, a breast compressing into each of your sides. 'Thank you. I don't know what I would have done without you. Come back again soon. I want to spend more time with both of you, but for now, you should probably go. You'll have things to do, and I need to clean my room,' the collie beamed. She bids you and Julian adieu before bending down to tidy her floor. This gives you both a view of her stretched anus, splashes of cum shining on her fur. You smirk at each other before walking out the door.";
					NPCSexAftermath Sylvia receives "OralCock" from Player;
					NPCSexAftermath Sylvia receives "AssFuck" from Julian;
					now resolution of Unnatural Heat is 1; [Let her look, Male, Received Oral]
				else: [cunnilingus]
					say "     You peel your clothes off, anticipation clouding your mind. Your [CockName of Player in lower case] pussy is already damp and ready for a canine tongue to pamper it. Meanwhile, Sylvia is now on all fours, the position seeming natural despite her usual bipedal stance. You and Julian simultaneously kneel down on either end of her, and the wolf gives you a cautious, but appreciative, look over. Grabbing a bottle of lube from the clutter that has developed on the floor, the collie tosses it to the wolf. 'I would prefer anal, if you don't mind. I want it to be special when I lose my virginity,' Sylvia requests. Julian assents and begins slathering his exposed wolfhood before doing the same to the collie's exposed tailhole.";
					say "     Eager for her to begin, you seat yourself and spread your legs, granting her access to your intimate areas. Raising her rear as she bends forward to pleasure you, Sylvia inhales deeply and shudders pleasurably, your scent enhancing her soaring libido. She licks around her mouth before running her tongue up your gash, lingering as it rubs over your clit. While she may have refused your advances so far, you can tell that either she is a natural, or that she has had experience with other people, as she lathers her tongue around before driving it inside you. Occasionally, she grazes her teeth over your clitoris, the faux danger thrilling you and compelling you to thrust against her ministrations.";
					WaitLineBreak;
					say "     Julian's penetration of the collie's back passage is heralded by her being pushed forward, driving her snout into your muff. As she recovers from this, the wolf grips her hips and steadily thrusts, his fingers stroking her tummy as he gradually fits more of his shaft inside her. Each time he bottoms out, Sylvia's face is pressed against your groin, the air from her exhalations tickling and stimulating your moist hole. Meanwhile, the collie seems to be in immense pleasure, the fluids of her arousal steadily dripping from her shivering pussy onto her carpet, leaving a mark both to the eye as well as the nose. Her breath quickens, the attentions she is receiving soothing the fires of arousal that had been stoked in her excursion.";
					say "     Looking up from admiring the canine's enthusiasm in eating you out, your gaze rests on Julian. His paws are tracing the contours of Sylvia's backside, tracing their way over the swell of her buttocks and stroking her tail. The scene is completed by the knotted wolf cock pounding into her ass. A look of bliss is plastered across his face: head tilted back, eyes closed, and tongue lolling out to the side of his open mouth. As he thrusts, the small bulge at the base of his penis grows, readying itself to lock him inside of her body in the futile attempt to impregnate her. You too can feel your orgasm creeping closer, tingles traveling through your body.";
					WaitLineBreak;
					say "     Your eyes meet with Julian's, and you silently agree to make Sylvia an orgasming wreck before he fills her with his spunk. One of the wolf's paws darts below his thrusting shaft and rubs her weeping pussy, the dexterous digits slipping from clit to gash more gracefully than you would have thought him capable of. Not wishing to be outdone, one of your own hands makes its way to the collie's breasts, caressing the soft flesh and tweaking her firm nipples. Closer to orgasm than you thought, the trio of stimulations sends her over the edge. Squirting fem-cum around Julian's probing fingers, Sylvia's hips start thrusting, as her body is overtaken by euphoria. This, in turn, sends you and her friend into orgasm too, the muscles of her anus clenching around the lupine's shaft as her tongue writhes within your vagina. Gripping her head, you push against her mouth, twitching as your own orgasm splashes against her snout. At the same time, Julian gives a mighty shove, forcing his knot past her spasming tail ring, before erupting within her, his semen flooding her.";
					say "     Between you, true to your agreement, the collie lies suspended in a post-orgasmic daze. While your hands support her, so too does the knot keeping her ass raised, still twitching. Saliva trickles out of the corner of her mouth as her tongue slips from your depths. You sit on the bed and wait for the wolf's shaft to soften too. After some time, Sylvia seems to recover, and she turns over, gasping as her anus rubs against the flesh inside her. The collie bids you to pass her a beaker from the floor, to which you comply. Sufficiently yielding, Julian's shaft slips from her anus as they stand up together. Sylvia quickly moves the beaker in time to catch the gush of cum that rushes from her stretched rear.";
					WaitLineBreak;
					say "     She places the container on her desk before slumping back on the bed with you. Julian sits down beside her and squeezes the collie's hand. 'Feeling better now?' he enquires, to which the canine nods. 'Ahhh, that felt good enough to try again in future. Though next time, hopefully without mind-altering drugs,' Sylvia laughs, taking this development in her relationships with you both within her stride. 'Not having a skirt on makes me feel more liberated. I think that I'll leave it off for now.' She stands before turning to you both and motions for you to stand. When you have done so, she hugs you both, a breast compressing into each of your sides. 'Thank you. I don't know what I would have done without you. Come back again soon. I want to spend more time with both of you, but for now, you should probably go. You'll have things to do, and I need to clean my room,' the collie beamed. She bids you and Julian adieu before bending down to tidy her floor. This gives you both a view of her stretched anus, splashes of cum shining on her fur. You smirk at each other before walking out the door.";
					NPCSexAftermath Sylvia receives "OralPussy" from Player;
					NPCSexAftermath Sylvia receives "AssFuck" from Julian;
					now resolution of Unnatural Heat is 2; [Let her look, Female, Received Oral]
			else: [not interested]
				say "     You shake your head. Helping her was enough. You wish them well and leave them to their coupling. As you close the door, you hear a yip of pleasure.";
				now resolution of Unnatural Heat is 3; [Let her look, Not interested]
		else: [search bag]
			LineBreak;
			if carried of libido suppressant > 0: [present]
				say "     Knowing that time is of the essence, you place your bag on the bed and start searching through it. It doesn't take you long to find what you are looking for. Grabbing the syringe, you shout to Sylvia that you've got one. She quickly crawls over to you and grabs it from your proffered hand. Suddenly, a knock interrupts your search, and you both turn around. In the doorway is a very concerned looking wolf, whom you recognize as Julian. 'Are you alright, Sylvia? I saw you dash through the campus, and you don't seem to have your satchel with you.' Julian enquires worriedly, casting curious glances at why you and the collie are scrabbling about on the floor. Sylvia hurriedly explains the same story she just told you, her paws fiddling with the syringe.";
				LineBreak;
				say "[bold type]You lose one libido suppressant![roman type][line break]";
				decrease carried of libido suppressant by 1;
				say "     Julian's eyes widen, and he steps into the room before closing the door, hiding the collie girl's predicament from any passerby. Seeing what is in her hands, he lets out a sigh and relaxes slightly. 'It's a good thing that your friend had some. I'm down to my last one. I'll ask the twins to make another hospital run, just in case,' Julian addresses the collie. With a grateful glance at you, Sylvia flicks the tip before pulling her skirt off and stabbing the needle into her thigh. While the effects of her arousal have lessened, the lips of her cunt are still damp with her juices, and she still pants with need. [if Player is male]'While I would have preferred that this wasn't so desperate, I'm going to need more help. Would you... mount me? I fear that I have been sent into heat,' the collie girl pleads with you, her pussy clenching. Sylvia then turns to Julian. 'Would you like some oral attention? You did try and help,' she offers, unbuttoning her blouse and throwing it onto the bed. Shocked, Julian hesitantly agrees, pulling his trousers and shirt off and placing them beside his friend's[else]'Julian, while I would have preferred that this wasn't so desperate, I'm going to need more help. Would you... mount me? I fear that I have been sent into heat,' the collie girl pleads, her pussy clenching. Shocked, Julian hesitantly agrees, pulling his trousers and shirt off and placing them on her bed. Sylvia then turns to you. 'Would you like some oral attention? You did try and help,' she offers, unbuttoning her blouse and throwing it atop Julian's clothes[end if]. 'Otherwise, could you give us some privacy?'";
				WaitLineBreak;
				say "     [bold type]Do you wish to take her up on the offer?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Take advantage of the chance you have been given.";
				say "     ([link]N[as]n[end link]) - A threesome with them wasn't what you had in mind.";
				if Player consents:
					LineBreak;
					if Player is male: [Give anal]
						say "     You remove your clothes, allowing your [Cock of Player] penis to harden and rise. Meanwhile, Sylvia is now on all fours, the position seeming natural despite her usual bipedal stance. You and Julian simultaneously kneel down on either end of her, an uneasy eye contact developing between you as you gauge each other's cocks. Grabbing a bottle of lube from the clutter that has developed on the floor, the collie tosses it to you. 'I would prefer anal, if you don't mind. I want it to be special when I lose my virginity,' Sylvia requests. You assent and begin slathering your exposed member before doing the same to the collie's exposed tailhole.";
						say "     Eager to begin, Julian pushes his penis forward, jabbing Sylvia in the nose and smearing his pre over her lip and nostrils. She inhales deeply and shudders pleasurably, his musk enhancing her soaring libido. She licks her lips before leaning forward and engulfing wolfhood within the wet warmth of her mouth. You can tell that while she may have refused your advances so far, that either she is a natural, or that she has had experience with other people, as she loops her tongue around and slathers his shaft with each bob of her head. Occasionally, she grazes her teeth over the soft tissue of his penis, the faux danger thrilling him, compelling him to accelerate his thrusts into her maw.";
						WaitLineBreak;
						say "     Deciding you have waited long enough, you align your penis with her lubed back passage and penetrate her. This pushes her forward, sending Julian's shaft sliding down her throat. Surprisingly, she doesn't choke, instead letting out a muffled moan, her nose pressed into his pubic fur. You work in synchrony, alternating your thrusts so that only one shaft is in her at a time while leaving the tip to be stimulated by the muscles of her lips or anal ring. Meanwhile, Sylvia seems to be in immense pleasure, the fluids of her arousal steadily dripping from her shivering pussy onto her carpet, leaving a mark both to the eye as well as the nose. Her breath quickens, the attentions she is receiving soothing the fires of arousal that had been stoked in her excursion.";
						say "     As the walls of her anus massage and squeeze your invading tool, your hands trace the contours of Sylvia's backside, tracing their way over the swell of her buttocks and stroking her tail. The scene is completed by Julian's knotted wolf cock pounding into her mouth. A look of bliss is plastered across his face: head tilted back, eyes closed, and tongue lolling out to the side of his open mouth. As he thrusts, the small bulge at the base of his penis grows, slapping against the collie girl's lips. You too can feel your orgasm creeping closer, tingles traveling through your body.";
						WaitLineBreak;
						say "     Your eyes meet with Julian's, and you silently agree to make Sylvia an orgasming wreck before you fill her with your spunk. One of the wolf's paws darts below his thrusting shaft and rubs her breasts, the dexterous digits caressing the swell of her flesh and nipples more gracefully than you would have thought him capable of. Not wishing to be outdone, one of your own hands makes its way to the collie's clitoris, rubbing over her gash. Closer to orgasm than you thought, the quartet of stimulations sends her over the edge. Squirting fem-cum around your probing fingers, Sylvia's hips start thrusting, as her body is overtaken by euphoria. This, in turn, sends you and her friend into orgasm too, her throat and anus constricting around your shafts. Gripping her hips, you push into her completely, [if Player is knotted]forcing your knot past her spasming tail ring, [end if]before erupting within her, your semen flooding into her. At the same time, Julian firmly grips the back of her head and pushes into her mouth until his knot is pressed against her nose, before orgasming inside.";
						say "     Between you, true to your agreement, the collie lies suspended in a post-orgasmic daze. [if Player is knotted]While your hands support her, so too does the knot keeping her ass raised, still twitching[else]You both support her, your hands on her thighs and the wolf's on her shoulders, all coming down from the rush of orgasm[end if]. Sperm trickles out of the corner of her mouth as Julian's softening penis slips out. He sits on the bed to wait for your shaft to soften too. After some time, Sylvia seems to recover, and she turns over, gasping as her anus rubs against the flesh inside her. She bids the wolf to pass her a beaker from the floor, to which he complies. Sufficiently yielding, your shaft slips from her anus as you stand up together. Sylvia quickly moves the beaker in time to catch the gush of cum that rushes from her stretched rear.";
						WaitLineBreak;
						say "     She places the container on her desk before slumping back on the bed with you. Julian sits down beside her and squeezes the collie's hand. 'Feeling better now?' he enquires, to which the canine nods. 'Ahhh, that felt good enough to try again in future. Though next time, hopefully without mind-altering drugs,' Sylvia laughs, taking this development in her relationships with you both within her stride. 'Not having a skirt on makes me feel more liberated. I think that I'll leave it off for now.' She stands before turning to you both and motions for you to stand. When you have done so, she hugs you both, a breast compressing into each of your sides. 'Thank you. I don't know what I would have done without you. Come back again soon. I want to spend more time with both of you, but for now, you should probably go. You'll have things to do, and I need to clean my room,' the collie beamed. She bids you and Julian adieu before bending down to tidy her floor. This gives you both a view of her stretched anus, splashes of cum shining on her fur. You smirk at each other before walking out the door.";
						NPCSexAftermath Sylvia receives "OralCock" from Julian;
						NPCSexAftermath Sylvia receives "AssFuck" from Player;
						now resolution of Unnatural Heat is 4; [Searched your bag, Suppressant found, Male, Pitched Anal]
					else: [Sixty Nine]
						say "     You peel your clothes off, anticipation clouding your mind. Your [CockName of Player in lower case] pussy is already damp and ready for a canine tongue to pamper it. You lie on the floor, your eyes looking up at the wolf's erect cock, and Sylvia's engorged pussy. Once you are comfortable, the collie kneels on all fours above you, the position seeming natural despite her usual bipedal stance. The scent of heat wafts into your nose as her cunt hovers in front of it. Looking past her tail, you see Julian giving you a cautious, but appreciative, look over, glimpses of your body visible as the collie shifts about. Grabbing a bottle of lube from the clutter that has developed on the floor, the collie tosses it to the wolf. 'I would prefer anal, if you don't mind. I want it to be special when I lose my virginity,' Sylvia requests. Julian assents and begins slathering his exposed wolfhood before doing the same to the collie's exposed tailhole.";
						say "     Eager to begin, you trace your tongue around her vagina, teasing her and signaling your willingness to begin. Raising her rear as she bends forward to pleasure you, Sylvia inhales deeply and shudders pleasurably, your scent enhancing her soaring libido. She licks around her mouth before running her tongue up your gash, lingering as it rubs over your clit. While she may have refused your advances so far, you can tell that either she is a natural, or that she has had experience with other people, as she lathers her tongue around before driving it inside you. Occasionally, she grazes her teeth over your clitoris, the faux danger thrilling you and compelling you to thrust against her ministrations. In tandem, you do similar things to her, the juices produced pleasant to the tongue.";
						WaitLineBreak;
						say "     Julian's penetration of the collie's back passage causes his scrotum to collide with your nose. While this causes you to snuffle a bit, the smell is delightfully masculine, and you take a deep breath to capture his scent. It also pushes her nose into your muff, driving her tongue deeper within you. As she recovers from this, the wolf grips her hips and steadily thrusts, his fingers stroking her tummy as he gradually fits more of his shaft inside of her. Each time he bottoms out, Sylvia's face is pressed against your groin, the air from her exhalations tickling and stimulating your moist hole. Meanwhile, the collie seems to be in immense pleasure, the fluids of her arousal steadily dripping from her shivering pussy onto your taste buds. Her breath quickens, the attentions she is receiving soothing the fires of arousal that had been stoked in her excursion.";
						say "     You watch Julian's shaft oscillate in and out of Sylvia's rear avidly, his sac brushing your nose. The wolf's paws are tracing the contours of Sylvia's backside, tracing their way over the swell of her buttocks and stroking her tail. The scene is completed by the knotted wolf cock pounding into her ass just above your busily licking face. A look of bliss is plastered across his face, head tilted back: eyes closed, and tongue lolling out to the side of his open mouth. As he thrusts, the small bulge at the base of his penis grows, readying itself to lock him inside of her body in the futile attempt to impregnate her. You too can feel your orgasm creeping closer, tingles traveling through your body.";
						WaitLineBreak;
						say "     Your eyes meet with Julian's, and you silently agree to make Sylvia an orgasming wreck before he fills her with his spunk. He leans forward, bringing one of his paws to her breasts, the dexterous digits caressing the swell of her flesh and nipples more gracefully than you would have thought him capable of. Not wishing to be found slacking in comparison, you increase your enthusiasm in driving your tongue through her canine spade. Closer to orgasm than you thought, the trio of stimulations sends her over the edge. Squirting fem-cum over your face, the zesty flavor fills your eager mouth. Sylvia's hips start thrusting, as her body is overtaken by euphoria, which, in turn, sends you and her friend into orgasm too, the muscles of her anus clenching around the lupine's shaft as her tongue writhes within your vagina. Unable to anchor her face to your groin, your lower body twitches wildly, splashing her snout in your essence. At the same time, Julian gives a mighty shove, forcing his knot past her contracting tail ring, before erupting within her, his semen flooding her.";
						say "     Above you, true to your agreement, the collie lies suspended in a post-orgasmic daze. You can feel her resting on top of you, Julian's knot keeping her ass raised, still twitching. Saliva trickles out of the corner of her mouth as her tongue slips from your depths. You scrabble out from under her, not wishing to stay there for too long, and sit on the bed and wait for the wolf's shaft to soften too. After some time, Sylvia seems to recover, and she turns over, gasping as her anus rubs against the flesh inside her. The collie bids you to pass her a beaker from the floor, to which you comply. Sufficiently yielding, Julian's shaft slips from her anus as they stand up together. Sylvia quickly moves the beaker in time to catch the gush of cum that rushes from her stretched rear.";
						WaitLineBreak;
						say "     She places the container on her desk before slumping back on the bed with you. Julian sits down beside her and squeezes the collie's hand. 'Feeling better now?' he enquires, to which the canine nods. 'Ahhh, that felt good enough to try again in future. Though next time, hopefully without mind-altering drugs,' Sylvia laughs, taking this development in her relationships with you both within her stride. 'Not having a skirt on makes me feel more liberated. I think that I'll leave it off for now.' She stands before turning to you both and motions for you to stand. When you have done so, she hugs you both, a breast compressing into each of your sides. 'Thank you. I don't know what I would have done without you. Come back again soon. I want to spend more time with both of you, but for now, you should probably go. You'll have things to do, and I need to clean my room,' the collie beamed. She bids you and Julian adieu before bending down to tidy her floor. This gives you both a view of her stretched anus, splashes of cum shining on her fur. You smirk at each other before walking out the door.";
						NPCSexAftermath Sylvia receives "OralPussy" from Player;
						NPCSexAftermath Player receives "OralPussy" from Sylvia;
						NPCSexAftermath Sylvia receives "AssFuck" from Julian;
						now resolution of Unnatural Heat is 5; [Searched your bag, Suppressant found, Female, 69ed]
				else: [not interested]
					say "     You shake your head. Julian should be able to help her from now on. You wish them well and leave them to their coupling. As you close the door, you hear a yip of pleasure.";
					now resolution of Unnatural Heat is 6; [Searched your bag, Suppressant found, Not interested]
			else: [none]
				LineBreak;
				say "     Knowing that time is of the essence, you place your bag on the bed and start searching through it. It doesn't take you long to realize that you don't have any. Deciding that helping her look would be the next best option, you kneel and begin to help her search. You peer under the desk and the bed, before joining her in searching the contents of her desk. She has a surprising number of objects stashed in the drawers, with things such as pens, USB drives, and a dildo crammed in together. Suddenly, a knock interrupts your search, and you both turn around. In the doorway is a very concerned looking wolf, whom you recognize as Julian. 'Are you alright, Sylvia? I saw you dash through the campus, and you don't seem to have your satchel with you.' Julian enquires worriedly, casting curious glances at why you and the collie are scrabbling about on the floor. Sylvia hurriedly explains the same story she just told you, her paws creeping closer to her oozing pussy.";
				say "     Julian's eyes widen, and he steps into the room before closing the door, hiding the collie girl's predicament from any passerby. He reaches into his pocket and passes her a small syringe filled with orange liquid. 'That's my last one. I'll ask the twins to make another hospital run, just in case,' Julian tells her. Relief flooding her face, Sylvia flicks the tip before pulling her skirt off and stabbing the needle into her thigh. While the effects of her arousal have lessened, the lips of her cunt are still damp with her juices, and she still pants with need. 'Julian, while I would have preferred that this wasn't so desperate, I'm going to need more help. Would you... mount me? I fear that I have been sent into heat,' the collie girl pleads, her pussy clenching. Shocked, Julian hesitantly agrees, pulling his trousers and shirt off and placing them on her bed. Sylvia then turns to you. 'Would you like some oral attention? You did try and help,' she offers, unbuttoning her blouse and throwing it atop Julian's clothes, 'otherwise, could you give us some privacy?'";
				WaitLineBreak;
				say "     [bold type]Do you wish to take her up on the offer?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - You would love to feel the attentions of her tongue.";
				say "     ([link]N[as]n[end link]) - A threesome with them wasn't what you had in mind.";
				if Player consents: [receive oral]
					LineBreak;
					if Player is male: [fellatio]
						say "     You remove your clothes, allowing your [Cock of Player] penis to harden and rise. Meanwhile, Sylvia is now on all fours, the position seeming natural despite her usual bipedal stance. You and Julian simultaneously kneel down on either end of her, an uneasy eye contact developing as you gauge each other's cocks. Grabbing a bottle of lube from the clutter that has developed on the floor, the collie tosses it to the wolf. 'I would prefer anal, if you don't mind. I want it to be special when I lose my virginity,' Sylvia requests. Julian assents and begins slathering his exposed wolfhood before doing the same to the collie's exposed tailhole.";
						say "     Eager to begin, you push your penis forward, jabbing Sylvia in the nose and smearing your pre over her lip and nostrils. She inhales deeply and shudders pleasurably, your musk enhancing her soaring libido. She licks her lips before leaning forward and engulfing your [Cock of Player] cock within the wet warmth of her mouth. While she may have refused your advances so far, you can tell that either she is a natural, or that she has had experience with other people, as she loops her tongue around and slathers your shaft with each bob of her head. Occasionally, she grazes her teeth over the soft tissue of your penis, the faux danger thrilling you, compelling you to accelerate your thrusts into her maw.";
						WaitLineBreak;
						say "     Julian's penetration of the collie's back passage is heralded by her being pushed forward, [if Cock Length of Player > 6]sending your shaft sliding down her throat. Surprisingly, she doesn't choke, instead letting out a muffled moan[else]causing her jaw to rest against your groin[end if]. You work in synchrony, alternating your thrusts so that only one shaft is in her at a time while leaving the tip to be stimulated by the muscles of her lips or anal ring. Meanwhile, Sylvia seems to be in immense pleasure, the fluids of her arousal steadily dripping from her shivering pussy onto her carpet, leaving a mark both to the eye as well as the nose. Her breath quickens, the attentions she is receiving soothing the fires of arousal that had been stoked in her excursion.";
						say "     Looking up from admiring the canine's capability at devouring your meat, your gaze rests on Julian. His paws are tracing the contours of Sylvia's backside, tracing their way over the swell of her buttocks and stroking her tail. The scene is completed by the knotted wolf cock pounding into her ass. A look of bliss is plastered across his face: head tilted back, eyes closed, and tongue lolling out to the side of his open mouth. As he thrusts, the small bulge at the base of his penis grows, readying itself to lock him inside of her body in the futile attempt to impregnate her. You too can feel your orgasm creeping closer, tingles traveling through your body.";
						WaitLineBreak;
						say "     Your eyes meet with Julian's, and you silently agree to make Sylvia an orgasming wreck before you fill her with your spunk. One of the wolf's paws darts below his thrusting shaft and rubs her weeping pussy, the dexterous digits slipping from clit to gash more gracefully than you would have thought him capable of. Not wishing to be outdone, one of your own hands makes its way to the collie's breasts, caressing the soft flesh and tweaking her firm nipples. Closer to orgasm than you thought, the quartet of stimulations sends her over the edge. Squirting fem-cum around Julian's probing fingers, Sylvia's hips start thrusting, as her body is overtaken by euphoria. This, in turn, sends you and her friend into orgasm too, her throat and anus constricting around your shafts. Gripping her head, you push into her mouth completely, filling her gullet with spooge. At the same time, Julian gives a mighty shove, forcing his knot past her spasming tail ring, before erupting within her, his semen flooding her.";
						say "     Between you, true to your agreement, the collie lies suspended in a post-orgasmic daze. While your hands support her, so too does the knot keeping her ass raised, still twitching. Sperm trickles out of the corner of her mouth as your softening penis slips out. You sit on the bed and wait for the wolf's shaft to soften too. After some time, Sylvia seems to recover, and she turns over, gasping as her anus rubs against the flesh inside her. The collie bids you to pass her a beaker from the floor, to which you comply. Sufficiently yielding, Julian's shaft slips from her anus as they stand up together. Sylvia quickly moves the beaker in time to catch the gush of cum that rushes from her stretched rear.";
						WaitLineBreak;
						say "     She places the container on her desk before slumping back on the bed with you. Julian sits down beside her and squeezes the collie's hand. 'Feeling better now?' he enquires, to which the canine nods. 'Ahhh, that felt good enough to try again in future. Though next time, hopefully without mind-altering drugs,' Sylvia laughs, taking this development in her relationships with you both within her stride. 'Not having a skirt on makes me feel more liberated. I think that I'll leave it off for now.' She stands before turning to you both and motions for you to stand. When you have done so, she hugs you both, a breast compressing into each of your sides. 'Thank you. I don't know what I would have done without you. Come back again soon. I want to spend more time with both of you, but for now, you should probably go. You'll have things to do, and I need to clean my room,' the collie beamed. She bids you and Julian adieu before bending down to tidy her floor. This gives you both a view of her stretched anus, splashes of cum shining on her fur. You smirk at each other before walking out the door.";
						NPCSexAftermath Sylvia receives "OralCock" from Player;
						NPCSexAftermath Sylvia receives "AssFuck" from Julian;
						now resolution of Unnatural Heat is 7; [Searched your bag, Suppressant not found, Male, Received Oral]
					else: [cunnilingus]
						say "     You peel your clothes off, anticipation clouding your mind. Your [CockName of Player in lower case] pussy is already damp and ready for a canine tongue to pamper it. Meanwhile, Sylvia is now on all fours, the position seeming natural despite her usual bipedal stance. You and Julian simultaneously kneel down on either end of her, and the wolf gives you a cautious, but appreciative, look over. Grabbing a bottle of lube from the clutter that has developed on the floor, the collie tosses it to the wolf. 'I would prefer anal, if you don't mind. I want it to be special when I lose my virginity,' Sylvia requests. Julian assents and begins slathering his exposed wolfhood before doing the same to the collie's exposed tailhole.";
						say "     Eager for her to begin, you seat yourself and spread your legs, granting her access to your intimate areas. Raising her rear as she bends forward to pleasure you, Sylvia inhales deeply and shudders pleasurably, your scent enhancing her soaring libido. She licks around her mouth before running her tongue up your gash, lingering as it rubs over your clit. While she may have refused your advances so far, you can tell that either she is a natural, or that she has had experience with other people, as she lathers her tongue around before driving it inside you. Occasionally, she grazes her teeth over your clitoris, the faux danger thrilling you and compelling you to thrust against her ministrations.";
						WaitLineBreak;
						say "     Julian's penetration of the collie's back passage is heralded by her being pushed forward, driving her snout into your muff. As she recovers from this, the wolf grips her hips and steadily thrusts, his fingers stroking her tummy as he gradually fits more of his shaft inside her. Each time he bottoms out, Sylvia's face is pressed against your groin, the air from her exhalations tickling and stimulating your moist hole. Meanwhile, the collie seems to be in immense pleasure, the fluids of her arousal steadily dripping from her shivering pussy onto her carpet, leaving a mark both to the eye as well as the nose. Her breath quickens, the attentions she is receiving soothing the fires of arousal that had been stoked in her excursion.";
						say "     Looking up from admiring the canine's enthusiasm in eating you out, your gaze rests on Julian. His paws are tracing the contours of Sylvia's backside, tracing their way over the swell of her buttocks and stroking her tail. The scene is completed by the knotted wolf cock pounding into her ass. A look of bliss is plastered across his face: head tilted back, eyes closed, and tongue lolling out to the side of his open mouth. As he thrusts, the small bulge at the base of his penis grows, readying itself to lock him inside of her body in the futile attempt to impregnate her. You too can feel your orgasm creeping closer, tingles traveling through your body.";
						WaitLineBreak;
						say "     Your eyes meet with Julian's, and you silently agree to make Sylvia an orgasming wreck before he fills her with his spunk. One of the wolf's paws darts below his thrusting shaft and rubs her weeping pussy, the dexterous digits slipping from clit to gash more gracefully than you would have thought him capable of. Not wishing to be outdone, one of your own hands makes its way to the collie's breasts, caressing the soft flesh and tweaking her firm nipples. Closer to orgasm than you thought, the trio of stimulations sends her over the edge. Squirting fem-cum around Julian's probing fingers, Sylvia's hips start thrusting, as her body is overtaken by euphoria. This, in turn, sends you and her friend into orgasm too, the muscles of her anus clenching around the lupine's shaft as her tongue writhes within your vagina. Gripping her head, you push against her mouth, twitching as your own orgasm splashes against her snout. At the same time, Julian gives a mighty shove, forcing his knot past her spasming tail ring, before erupting within her, his semen flooding her.";
						say "     Between you, true to your agreement, the collie lies suspended in a post-orgasmic daze. While your hands support her, so too does the knot keeping her ass raised, still twitching. Saliva trickles out of the corner of her mouth as her tongue slips from your depths. You sit on the bed and wait for the wolf's shaft to soften too. After some time, Sylvia seems to recover, and she turns over, gasping as her anus rubs against the flesh inside her. The collie bids you to pass her a beaker from the floor, to which you comply. Sufficiently yielding, Julian's shaft slips from her anus as they stand up together. Sylvia quickly moves the beaker in time to catch the gush of cum that rushes from her stretched rear.";
						WaitLineBreak;
						say "     She places the container on her desk before slumping back on the bed with you. Julian sits down beside her and squeezes the collie's hand. 'Feeling better now?' he enquires, to which the canine nods. 'Ahhh, that felt good enough to try again in future. Though next time, hopefully without mind-altering drugs,' Sylvia laughs, taking this development in her relationships with you both within her stride. 'Not having a skirt on makes me feel more liberated. I think that I'll leave it off for now.' She stands before turning to you both and motions for you to stand. When you have done so, she hugs you both, a breast compressing into each of your sides. 'Thank you. I don't know what I would have done without you. Come back again soon. I want to spend more time with both of you, but for now, you should probably go. You'll have things to do, and I need to clean my room,' the collie beamed. She bids you and Julian adieu before bending down to tidy her floor. This gives you both a view of her stretched anus, splashes of cum shining on her fur. You smirk at each other before walking out the door.";
						NPCSexAftermath Sylvia receives "OralPussy" from Player;
						NPCSexAftermath Sylvia receives "AssFuck" from Julian;
						now resolution of Unnatural Heat is 8; [Searched your bag, Suppressant not found, Female, Received Oral]
				else: [not interested]
					say "     You shake your head, helping her was enough. You wish them well and leave them to their coupling. As you close the door, you hear a yip of pleasure.";
					now resolution of Unnatural Heat is 9; [Searched your bag, Suppressant not found, Not interested]
		now hp of Sylvia is 4; [helped with heat]
		now hp of Julian is 1;
	now Unnatural Heat is resolved;

Table of GameEventIDs (continued)
Object	Name
Beach Field Research	"Beach Field Research"

Beach Field Research is a situation.
Prereq1 of Beach Field Research is Unnatural Heat.
Prereq2 of Beach Field Research is Julian's Room Event.
Prereq1Resolution of Beach Field Research is { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 }.
Prereq2Resolution of Beach Field Research is { 0, 1 }.
The level of Beach Field Research is 0.
The sarea of Beach Field Research is "Beach".

after going to Public Beach while (Beach Field Research is active and Beach Field Research is PrereqComplete and Beach Field Research is not resolved and daytimer is day and hp of Julian is 3 and a random chance of 1 in 2 succeeds):
	move player to Public Beach;
	BeachFieldResearchEvent;

Instead of resolving Beach Field Research:
	BeachFieldResearchEvent;

to BeachFieldResearchEvent: [Meet the group up close]
	say "     While walking through the sandy dunes, you watch the many beach-goers relaxing or running around laughing. The sea sparkles under the sun's rays, completing the picture-perfect scene. A voice shouts your name, and you turn to see Sylvia waving to you, seated on a picnic rug with her friends. They are all wearing swimwear and appear to be eating sandwiches. You walk towards them, weaving your way past people prone in deck chairs. The collie girl gestures for you to sit with them, and you notice that they have been writing things in notepads. 'Large groups seem to discourage hostile infected activity. Requires further study.' you see written in a notebook in front of Sylvia. It would seem that this is more than a recreational excursion. Julian smiles at you and offers you a ham sandwich. 'We're observing the wildlife in its natural habitat,' he whispers conspiratorially and winking. 'Learning the behavior of the different species could be important for future research,' Sylvia elaborates, snickering at the wolf's explanation.";
	say "     The male cat sitting with them extends a paw. 'I don't believe we've met. I'm Evenlyn, and this is my sister, Evelyn.' You shake his paw and introduce yourself as [name of Player], smiling at them both. The other feline smiles and waves her fingers in greeting. 'We're here more for fun than being of much help scientifically,' he continues. 'Nonsense. The more people making observations of behavior, the better,' Sylvia protests, drawing the attention of a passing horse-morph. Eyeing up the collie, he saunters over, a substantial bulge visible in his shorts. 'If you're a scientist, then perhaps you could do some closer study of me, particularly the crotch region,' he drawls, fully expecting the young collie to swoon. [if hpF of Sylvia is not 3]To his delight, she turns to face him with a giggle and indicates for him to sit down opposite of her. With a grin, the horse pulls his shorts off, freeing his shaft. It slaps against his stomach before waving in the air in front of the canine's face as he sits down[else]I'm very sorry, but we're not interested. Perhaps someone else somewhere on the beach would be willing. The horse-morph begins to protest but Sylvia interrupts him, her voice now cold. 'I said no. If you carry on I'm going to make you regret it. Nothing permanent, but you'll be walking funny for a while.' He takes the hint and hastily walks away[end if].";
	if hpF of Sylvia is not 3: [Not female preferred]
		WaitLineBreak;
		say "     Opening to a new page in her notebook, Sylvia starts writing as her eyes rove over the subject's muscular form. 'Equine male seems eager for sexual pleasures. Opened interaction using a sleazy pick up line. Suggests lack of satiation or poor mental capabilities. Beyond being bipedal, anatomy is similar to that of a horse. Requires little further study.' You realize that the equine is unable to see what is being written and is more focused on the many eyes on his body. 'I'm very sorry, but your form and behavior aren't of much use to our study. Unless anyone here can vouch for you, I don't think that you'll be getting lucky here,' Sylvia informs him. Her colleagues are shaking their heads before they all look to you, waiting for your response.";
		say "     [bold type]Do you take pity on the horseman and give him the release he wants?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - He seems friendly enough, if perhaps a little overconfident. Give him a [italic type]hand[roman type].";
		say "     ([link]N[as]n[end link]) - Make him try his luck elsewhere.";
		if Player consents: [Horsey Handjob]
			LineBreak;
			say "     Seeing how much the horse wants it, you mutter that you can help him relieve some tension. He looks momentarily disappointed that the pretty collie won't be the one handling his shaft, but his enthusiasm quickly returns at your offer. Sylvia shuffles out of the way, allowing you to kneel between the equine's legs, the flared tip of his penis throbbing in front of your face and drizzling ooze onto the sand. You tentatively reach out a hand, running your fingers over the slick flesh, feeling the warm organ against your palm. Wrapping your hand as far around as you can, you begin rubbing up and down his length, causing a gasp to escape from his mouth. The science students watch raptly with Julian, shockingly, taking notes. While you are curious to see what he is writing, the task at hand demands your attention as the horse-morph begins thrusting, the tip producing copious amounts of pre-cum and occasionally nudging you in the face.";
			say "     Bringing your other hand around so as to fully encircle his sizable girth, you vigorously masturbate the horse, your hands sliding easily over his length. He seems unsure whether he wants to grasp your shoulders or keep his arms supporting him as he leans back. You can tell that he is edging closer to orgasm by the increased frequency of the spurts of pre. Determined to give him a finish that he won't soon forget, you speed up, his thrusts causing his balls to slap against your arms. With a loud neigh that attracts the attention of other beach-goers, he begins ejaculating. You quickly angle his cock away from your friends, causing the torrent of cum that shoots from it to splatter against the sand near a sunbathing otter. 'What did I tell you kids about splashing me while making a sand castle? Closer to the sea would be better anyway,' the mustelid mumbles sleepily, not bothering to open his eyes.";
			say "     His orgasmic high over, the horse slumps back against the sand, his phallus softening and drooping. He lies there for a moment before a polite cough catches his attention. 'I wondered where you had got to, Paul. I go to buy us ice cream and turn around to find you gone. And, where are you? Being manually stimulated like a jock behind the gym!' a hawk-woman says irritably, though it sounds it is more out of annoyance than anger. 'I should probably go...' the equine says meekly, redressing and standing up. As the pair walks away, the bird chastising her partner for 'leaving her getting ice cream when they could have both been enjoying themselves,' you turn back to your group of new friends. Evelyn passes you a paper napkin to wipe your slimy hands on while all four of them smirk at you. 'It would seem time in the city really does increase sex drive,' Sylvia jokes. 'Then you shouldn't be going there, Sylv. You're bad enough already,' Evenlyn says, mocking her good-naturedly, causing you all to burst into laughter.";
			WaitLineBreak;
			now Resolution of Beach Field Research is 1; [handjob given]
		else: [Reject him]
			say "     Not really in the mood to pleasure a complete stranger, you shake your head. The horseman looks irritated and begins to bluster about how you all led him on, but a growl from Julian quickly quiets him. Muttering, he stands up, sulkily pulling his shorts back on over a softening shaft. You watch as he leaves, pleased to see a hawk woman meet him and offer an ice cream. It would appear that he had prior engagements anyway, you think, letting out a sigh of relief. A furry hand on your leg draws your attention back to your group. The female cat, Evelyn is offering you a piece of cheesecake on a plate with a fork. Where they found it, you wouldn't know, but a rumble from your stomach suggests that now is not the time to look a gift horse in the mouth. You join in their inconsequential conversation, laughing at jokes and offering your opinion when necessary.";
			now Resolution of Beach Field Research is 2; [handjob refused]
	WaitLineBreak;
	say "     Sylvia raises a cup with lemonade, causing the group to quieten down. 'We came together because we all agreed that studying the changes in the city could benefit society, but also be fun for us. We may not be the most selfless of people, but our research could be none the less important. While there are most likely others studying in similar fashion to us, we should not let this hinder or discourage us. Without Julian, I may never have gone along this path. For that, I give him thanks,' Sylvia intones. Julian dips his head in recognition but blushes slightly at Evelyn's jab of 'I thought that you'd already rewarded him.' They all chuckle, the wolf included, before Sylvia continues. 'While, yes, Julian has been given certain 'benefits', if not for him and [name of Player], who joined us for this picnic, I may have been just another needy bitch in the city, at the mercy of my heat and the many virile males. For this reason, I think that they could be of use to our project. Do you all agree?";
	say "     They all assent enthusiastically, all of their eyes appraising you. 'If you could all raise your glasses,' the collie requests, which you all do. 'To friendship and science,' she toasts, joined by your voices. Soon after the celebration, you all begin clearing up the picnic, gathering bottles, plates, and cutlery into the wicker basket. As you help them, Sylvia kneels next to you, 'Come by my room at some point, then I'll explain how you can help us. It also means that I get to see you, though I'm sure the knowledge that you are helping advance science is all that you need,' the collie jokes before continuing, 'Don't feel rushed though. We all know that you have other things to do, and we have things we can do without you anyway. I would offer whether you wanted to walk back with us, but you look like you have things you want to do while you're here. So, bye for now,' she says sweetly, causing the others to call farewell too. As they leave, you think how lucky you have been finding friendly people in a city full of those overcome by the nanites.";
	now hp of Sylvia is 5;
	now hp of Julian is 4;
	now hpM of Sylvia is 4;
	now hpF of Sylvia is 4;
	now Beach Field Research is resolved;

instead of going northeast from Tenvale College Female Dorms while (hp of Sylvia is 5 or hpM of Sylvia is 4 or hpF of Sylvia is 4):
	SylviaJobProp;

to SylviaJobProp: [Opens up interactions between Sylvia and Pets/Companions]
	say "     As you walk into Sylvia's room, you are greeted by the soft curves of her rear as she bends over, looking through a duffel bag. Letting out a polite cough, you casually lean against the wall, watching her. Without looking up, the collie calls, 'Please [name of Player], enjoy the view. I'm just looking for the syringes.' Straightening up, she turns to you with a smile, a sealed packet with a syringe inside grasped in her paw. 'I'm glad that you can still appreciate my backside, considering you probably see them all the time wandering around the city,' she teases. 'Though it did take you long enough to get here, so perhaps you don't have time to admire the scenery. As I've explained before, I wish to study interactions of the infected with each other, especially groups. As such, we believe that you may be in a position to help, considering that you roam around the city meeting all sorts of people in various states of mind.";
	say "     'So, if you find any friendly residents of the city that would be willing to donate biological material, whatever they're comfortable with, could you tell me? Julian will be helping in this too, so we can all go together to collect the sample. The twins mainly requisition equipment and food, but they may join us sometimes.' As if on cue, Julian enters the room, nodding as he sees you. 'Explaining how they can help?' the wolf inquires. Sylvia nods before continuing, 'We can pay you in food or water if you would like, though sometimes, we may have something more interesting to give you if you're lucky. I think that sums it up. Now, if you could leave, Julian and I have some planning to do. Yes, I literally mean planning. If we were about to have sex, I'd invite you, but we have to decide which areas are safe enough to reconnoiter while still being of use to the study. Now go and find us some sexy beasts to study.' She bids you farewell with a wink.";
	now hp of Sylvia is 6;
	now hpM of Sylvia is 5;
	now hpF of Sylvia is 5;
	now Sylvia's Reward is active;

Table of GameEventIDs (continued)
Object	Name
Sylvia's Reward	"Sylvia's Reward"

Sylvia's Reward is a situation.
Sylvia's Reward is inactive.
Prereq1 of Sylvia's Reward is Beach Field Research.
Prereq1Resolution of Sylvia's Reward is { 1, 2 }.
The level of Sylvia's Reward is 0.
The sarea of Sylvia's Reward is "Nowhere".

instead of going northeast from Tenvale College Female Dorms while (Sylvia's Reward is active and Sylvia's Reward is PrereqComplete and Sylvia's Reward is not resolved and (hp of Sylvia is 6 or hpF of Sylvia is 5) and a random chance of 1 in 2 succeeds):
	move player to Tenvale College Female Dorms;
	SylviasReward;

to SylviasReward: [Sylvia willing to allow you to mate with her]
	say "     As you walk into the collie's room, you see Sylvia standing in the middle of the room, head bowed, her crossed hands obscuring her sex. This change from her normal lively self, concerns you as you hastily close the door and rest a hand on her shoulder, asking her whether she is alright. She looks up at you shyly. 'Would you like to have sex with me?' she asks quietly. Her question surprises you despite how common sex is in the city. Usually, it is you asking, or someone just taking what carnal pleasures they want. 'When we first met, I said that you had to prove your interest in me was more than sexual attraction. You've continued to come and see me, and now you're helping with my study, so I thought that you deserve a reward, something to show how much I trust you.' Her hands move away from her sex, revealing her canine spade, your reward";
	say "     [bold type]Do you wish to accept her offer and mate with the bitch properly?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes. She wants this, and so do you.";
	say "     ([link]N[as]n[end link]) - No. Let someone else take it. It doesn't feel right to you.";
	if Player consents: [Do it.]
		LineBreak;
		if Player is knotted and player is pure and player is male: [Special. For canidae]
			say "     The canine's desires speak to you on a lower level. Before you, a bitch is in need of mating and such an act is desirable for you as well. As you step towards her, shedding your clothes, the gleam in your eye causes her to shiver in anticipation. But as you reach her, Sylvia places a hand on your chest, 'I want to enjoy the buildup as well, so could we take this slowly?' While the animalistic instincts may be strong, your mind is stronger. You agree to take your time and ensure that she enjoys it. The young student beams at you and gazes appreciatively over the contours of your body and traces a finger over your torso. 'I've been looking forward to this,' she says sensually. 'You have such an aura of mystery that I'm sure attracts other people to you too,' the collie says, lightly grasping your knotted cock.";
			say "     As she grips your member, you admire the collie's slim, toned body, your eyes spending extra seconds over her breasts and pussy. A small amount of fluid gathers on her outer lips, proof of her developing arousal. Your musings are cut short by Sylvia dropping to her knees and beginning to masturbate you, causing you to begin thrusting lightly against her fist, the stimulus that she provides being felt throughout your body. Thoughts of a long, amorous [if daytimer is day]day[else]night[end if] ahead of you fill your mind. You can feel the fur on the collie's paws as she caresses your balls and rubs your shaft, her eyes meeting your own with a needy expression. You are only too keen to oblige, pulling your length from her grasp before grabbing her head and plunging into her maw, hilting yourself on the first thrust.";
			WaitLineBreak;
			say "     You can feel your canid instincts influencing your mind, pushing you towards action and wanting to dominate the eager canine student. She doesn't seem to mind the vigorous treatment, letting out contented moans as your tip pushes into her throat and your developing knot bumps against her lips. She swirls her tongue around the shaft, savoring the full flavor that your sweat and pre-cum provide. You can feel her breath across your loins, enthusiastically tickling your skin. With one hand, she holds the base of your [Cock of Player] cock, squeezing and stroking in time with the movements of her head. With her other paw, she fondles your balls, gauging the amount of mess that they are likely to produce.";
			say "     Sylvia adeptly pleasures you, mouth enveloping your warm erection, and her hands caressing your scrotum. It would seem that the collie is savoring the buildup to being mounted and penetrated as she enthusiastically presses her head firmly against your groin. A slippery finger brushes over your pucker before working its way in, causing you to jerk forward, squeezing your knot into her mouth and making Sylvia gag before she recovers. Not wanting to tie with her face, you pull the bulb out again and continue thrusting. She continues to push her finger in, boosting your pleasure from yet another angle. It all becomes too much. With a cry of ecstasy, you climax, the collie bitch's eyes widening as a torrent of semen squirts down her throat, your shaft throbbing in her mouth. You slowly pull out, still ejaculating, giving her a taste of the spooge before the last few squirts splatter her face. Through determination and aid from the nanites, you maintain your erection, ready for more.";
			WaitLineBreak;
			say "     Barely giving you a chance to recover, Sylvia drops to all fours on the floor. She flags her tail, revealing her tailhole and engorged vulva. The student turns her head to face you, panting with lust, her eyes begging for you to breed her. Not requiring any further lubrication, you forcefully mount her, your slick cock slipping into her cunt effortlessly. Her insides are wet and warm, embracing your organ as you thrust into her, loud squelching proving how aroused she is. You grip her hips to anchor yourself as you penetrate her with enough force to make her breasts shake. Each time your groins meet, a small yelp breaks from her mouth, and her walls contract around your knotted cock. You slow, concerned that you are hurting her, but she whimpers and begs for you to continue, lost in the ecstasy of being a bitch beneath her alpha. You return to pounding into the collie, reveling in the sense of control and power provided by your coupling.";
			say "     Deciding to vary how you touch the collie, you release her hips. With one hand, you begin stroking her tail, feeling how fluffy and silky it is. With the other, you trace your nails down her spine, feeling her twitching at the contrasting feelings provided by your stroking, tickling, and thrusting. Her gasps coalesce with the sound of your balls impacting with her pubic mound, a carnal duet to spur you on. Determined to tie with her, you grasp her flanks, pulling her towards you as you push against her. Your knot squeezes in, and with a howl, the collie bitch orgasms intensely, her fem-cum squirting against your bulb but unable to escape. Her entire body shudders, and her walls contract around your firmly lodged penis. This, in turn, causes you to climax too, your shaft erupting inside of her, filling her womb with your cum and leaving it no escape. Paralyzed by post-orgasmic bliss, you hunch over her, breathing heavily and waiting for your shaft to soften.";
			WaitLineBreak;
			say "     Exhausted, you collapse on your side behind her, your softening cock slipping from her pussy with a loud squelch. A torrent of cum and juices spills forth, drenching the fur of your groin and tummy, cementing your scents on your body. Noticing what has happened to you, Sylvia scoops up some and smears it across her own groin. 'A keepsake of our mating,' she says, nuzzling up against you. 'That was invigorating. Mmm, definitely have to do that again,' she says, placing a hand on your thigh. 'I have something that might spice up next time, but you'll have to wait for then.' You raise your eyebrow, suspicious of such a statement. 'I did a favor for the jackal shopkeeper in the mall, and she gave me something.' Knowing that Nermine doesn't do anything for free, you wonder what she did in payment, but dare not ask. Sylvia stands up and tosses a towel onto the pool of sexual fluids before collapsing onto the bed. 'I'm going to need some time to recover, but come back again. I'd love to further explore our relationship, and don't forget about helping with my research either.' You leave, closing the door behind you and returning to the lobby. There is more to Sylvia than meets the eye.";
			NPCSexAftermath Sylvia receives "OralCock" from Player;
			NPCSexAftermath Sylvia receives "PussyFuck" from Player;
			now Resolution of Sylvia's Reward is 1; [Mated as pure male canine]
		else:
			if Cock Count of Player is 1 and Cunt Count of Player is 0: [Male, Single Penis]
				say "     You hastily remove your clothes, eager to fulfil this desire of the collie. Your hardening shaft catches her eye, her tongue lolling out of her mouth as she gazes at it lustfully. She looks over your body, admiring the contours, and traces a finger over your torso. 'I've been looking forward to this,' she says sensually. 'You have such an aura of mystery that I'm sure attracts other people to you too.' She takes her hand away and catches your eye before speaking again. 'While I may want to be mated, I would like some buildup to it. The anticipation will magnify the pleasure and make it more fulfilling.'";
				say "     You grip your cock, lightly stroking it as you observe the collie's slim, toned body, your eyes spending extra seconds over her breasts and pussy. A small amount of fluid gathers on her outer lips, proof of her developing arousal. Your musings are cut short by Sylvia dropping to her knees and knocking your hand out of the way. She grasps your erection firmly and begins to masturbate you, causing you to begin thrusting lightly against her fist, the stimulus that she provides being felt throughout your body. Thoughts of a long, amorous [if daytimer is day]day[else]night[end if] ahead of you fill your mind. You can feel the fur on the collie's paws as she caresses your balls and rubs your shaft, her eyes meeting your own with a needy expression. You are only too keen to oblige, pulling your length from her grasp before grabbing her head and plunging into her maw, hilting yourself on the first thrust.";
				WaitLineBreak;
				say "     You can feel the nanites and hormones influencing your mind, pushing you towards action and wanting to dominate the eager canine student. She doesn't seem to mind the vigorous treatment, letting out contented moans as the head pushes into her throat. She whirls her tongue around the shaft, savoring the full flavor that your sweat and pre-cum provide. You can feel her breath across your loins, enthusiastically tickling your skin. With one hand, she holds the base of your [Cock of Player] cock, squeezing and stroking in time with the movements of her head. With her other paw, she fondles your balls, gauging the amount of mess that they are likely to produce.";
				say "     Sylvia adeptly pleasures you, mouth enveloping your warm erection, and her hands caressing your scrotum. It would seem that the collie student has forgotten about wishing to be mounted and penetrated as she enthusiastically presses her head firmly against your groin. A slippery finger brushes over your pucker before working its way in, causing you to jerk forward, making Sylvia gag before recovering. She continues to push her finger in, boosting your pleasure from yet another angle. It all becomes too much. With a cry of ecstasy, you climax, the collie bitch's eyes widening as a torrent of semen squirts down her throat, your shaft throbbing in her mouth. You slowly pull out, still ejaculating, giving her a taste of the spooge before the last few squirts splatter her face. Through determination and aid from the nanites, you maintain your erection, ready for more.";
				WaitLineBreak;
				say "     Puffing from your orgasm, you sit on the bed next to Sylvia, a strand of cum trickling down her face. To your surprise, the collie straddles you, her snout in front of your face. With a paw, she aligns your cock with her cunt, before hilting herself in one push, her walls squeezing around your sensitive shaft. She seems to be taking control this round, letting you rest after pounding her face. You content yourself with stroking her body, your hands caressing her shoulders, over her tummy, and finally resting on her waist as she pumps herself up and down, moaning in time with her descent. Her pussy feels better than either her mouth or ass, its muscles seemingly under her control as different areas squeeze in time with where your tip is. You lean forward and kiss her, reveling in the feeling of her tight passage sliding over your length. She eagerly reciprocates, her tongue weaving its way around in your mouth.";
				say "     Deciding to vary how you touch the collie, you release her hips. With one hand, you begin stroking her tail, feeling how fluffy and silky it is. With the other, you trace your nails down her spine, feeling her twitching at the contrasting feelings provided by your stroking, tickling, and thrusting. Wishing to return the earlier favor, your hand reaches the base of her tail next to your colliding bodies. You coat your thumb in the copious fluids dripping from her pussy, before pressing it into her ass. This sends her over the edge. With a howl, the collie bitch orgasms intensely, her fem-cum squirting onto your testicles as she impales herself one last time. Her entire body shudders, and her anus squeezes around the invading digit. This, in turn, causes you to climax too, your shaft erupting inside of her. You hang onto Sylvia to prevent her from falling off of your lap, your mixed fluids pouring from your joining and pooling on the floor beside your feet.";
				WaitLineBreak;
				say "     Still panting from the carnal exercise, Sylvia slowly lifts herself off of your softening penis and sits down beside you. 'That was invigorating. Mmm, definitely have to do that again,' she says, placing a hand on your thigh. 'I have something that might spice up next time, but you'll have to wait for then.' You raise your eyebrow, suspicious of such a statement. 'I did a favor for the jackal shopkeeper in the mall, and she gave me something.' Knowing that Nermine doesn't do anything for free, you wonder what she did in payment, but dare not ask. Sylvia stands up and tosses a towel onto the pool of sexual fluids before collapsing back onto the bed again. 'I'm going to need some time to recover, but come back again. I'd love to further explore our relationship, and don't forget about helping with my research either.' You leave, closing the door behind you and returning to the lobby. There is more to Sylvia than meets the eye.";
				NPCSexAftermath Sylvia receives "OralCock" from Player;
				NPCSexAftermath Sylvia receives "PussyFuck" from Player;
				now Resolution of Sylvia's Reward is 2; [Mated as single-penised male]
			else if Cock Count of Player > 1 and Cunt Count of Player is 0: [Male, Multiple Penises]
				say "     You hastily remove your clothes, eager to fulfil this desire of the collie. Your hardening shafts catch her eye, her tongue lolling out of her mouth as she gazes at them lustfully. She looks over your body, admiring the contours, and traces a finger over your torso. 'I've been looking forward to this,' she says sensually. 'You have such an aura of mystery that I'm sure attracts other people to you too.' She takes her hand away and catches your eye before speaking again. 'While I may want to be mated, I would like some buildup to it. The anticipation will magnify the pleasure and make it more fulfilling.'";
				say "     You grip one of your cocks, lightly stroking it as you observe the collie's slim, toned body, your eyes spending extra seconds over her breasts and pussy. A small amount of fluid gathers on her outer lips, proof of her developing arousal. Your musings are cut short by Sylvia dropping to her knees and knocking your hand out of the way. She grasps your erections firmly and begins to masturbate you, causing you to begin thrusting lightly against her fist, the stimulus that she provides being felt throughout your body. Thoughts of a long, amorous [if daytimer is day]day[else]night[end if] ahead of you fill your mind. You can feel the fur on the collie's paws as she caresses your balls and rubs your shafts, her eyes meeting your own with a needy expression. You are only too keen to oblige, pulling your length from her grasp before grabbing her head and plunging into her maw, hilting yourself on the first thrust.";
				WaitLineBreak;
				say "     You can feel the nanites and hormones influencing your mind, pushing you towards action and wanting to dominate the eager canine student. She doesn't seem to mind the vigorous treatment, letting out contented moans as a head pushes into her throat. She whirls her tongue around the shafts, savoring the full flavor that your sweat and pre-cum provide. You can feel her breath across your loins, enthusiastically tickling your skin. With one hand, she alternates holding the bases of your [Cock of Player] cocks, squeezing and stroking in time with the movements of her head. With her other paw, she fondles your balls, gauging the amount of mess that they are likely to produce.";
				say "     Sylvia adeptly pleasures you, mouth enveloping your warm erections, and her hands caressing your scrotum. It would seem that the collie student has forgotten about wishing to be mounted and penetrated as she enthusiastically presses her head firmly against your groin. A slippery finger brushes over your pucker before working its way in, causing you to jerk forward, making Sylvia gag before recovering. She continues to push her finger in, boosting your pleasure from yet another angle. It all becomes too much. With a cry of ecstasy, you climax, the collie bitch's eyes widening as a torrent of semen squirts down her throat, your shafts throbbing in her mouth. You slowly pull out, still ejaculating, giving her a taste of the spooge before the last few squirts splatter her face. Through determination and aid from the nanites, you maintain your erections, ready for more.";
				WaitLineBreak;
				say "     Keen to feel the collie girl's holes around your shafts, you lift Sylvia to her feet, before pushing her against the wall, her tail flagged to the side. Your cocks already slippery, you thrust against her rear, one sliding into her pussy while the other rubs over her bottom. Keeping one hand pressing the canine against the wall, you align your penis to properly penetrate her anus. Her insides are wet and warm, embracing your organs as you thrust into her, loud squelching proving how aroused she is. You grip her hips to anchor yourself as you penetrate her with enough force to make her breasts wobble. Each time your groins meet, a small yelp breaks from her mouth, and her walls contract around you. You slow, concerned that you are hurting her, but she whimpers and begs for you to continue, lost in the ecstasy provided by you and your penises. You return to pounding into the collie, reveling in the sense of control and power provided by your coupling.";
				say "     Deciding to vary how you touch the collie, you release her hips. With one hand, you begin stroking her tail, feeling how fluffy and silky it is. With the other, you trace your nails down her spine, feeling her twitching at the contrasting feelings provided by your stroking, tickling, and thrusting. You can feel your shafts through the thin wall of flesh dividing her front and back passages. With a howl, the collie bitch orgasms intensely, her fem-cum squirting around your still hammering penis. Her entire body shudders, and her anus squeezes around your invading member. This, in turn, causes you to climax too, your shafts erupting inside of her, throbbing against each other. You hang onto her to support yourself as a mixture of cum and juices pour out of the joining, forming a puddle on the floor beside your feet.";
				WaitLineBreak;
				say "     Still panting from the carnal exercise, Sylvia straightens up, your twin cocks slipping from her holes. 'That was invigorating. Mmm, definitely have to do that again,' she says, placing a hand on your thigh. 'I have something that might spice up next time, but you'll have to wait for then.' You raise your eyebrow, suspicious of such a statement. 'I did a favor for the jackal shopkeeper in the mall, and she gave me something.' Knowing that Nermine doesn't do anything for free, you wonder what she did in payment, but dare not ask. Sylvia stands up and tosses a towel onto the pool of sexual fluids before collapsing back onto the bed again. 'I'm going to need some time to recover, but come back again. I'd love to further explore our relationship, and don't forget about helping with my research either.' You leave, closing the door behind you and returning to the lobby. There is more to Sylvia than meets the eye.";
				NPCSexAftermath Sylvia receives "OralCock" from Player;
				NPCSexAftermath Sylvia receives "PussyFuck" from Player;
				NPCSexAftermath Sylvia receives "AssFuck" from Player;
				now Resolution of Sylvia's Reward is 3; [Mated as multi-penised male]
			else if Player is herm: [Herm]
				say "     You hastily remove your clothes, eager to fulfil this desire of the collie. Your hardening shaft[smn] and oozing puss[yfn] catch her eye, her tongue lolling out of her mouth as she gazes at them lustfully. She looks over your body, admiring the contours, and traces a finger over your torso. 'I've been looking forward to this,' she says sensually. 'You have such an aura of mystery that I'm sure attracts other people to you too.' She takes her hand away and catches your eye before speaking again. 'While I may want to be mated, I would like some buildup to it. The anticipation will magnify the pleasure and make it more fulfilling.'";
				say "     You grip your cock[smn], lightly stroking [itthemm] as you observe the collie's slim, toned body, your eyes spending extra seconds over her breasts and pussy. A small amount of fluid gathers on her outer lips, proof of her developing arousal. Your musings are cut short by Sylvia dropping to her knees and knocking your hand out of the way. She grasps your erection[smn] firmly and begins to masturbate you, causing you to begin thrusting lightly against her fist, the stimulus that she provides being felt throughout your body. Thoughts of a long, amorous [if daytimer is day]day[else]night[end if] ahead of you fill your mind. You can feel the fur on the collie's paws as she caresses your balls and rubs your shaft[smn], her eyes meeting your own with a needy expression. You are only too keen to oblige, pulling your length[smn] from her grasp before grabbing her head and plunging into her maw, hilting yourself on the first thrust.";
				WaitLineBreak;
				say "     You can feel the nanites and hormones influencing your mind, pushing you towards action and wanting to dominate the eager canine student. She doesn't seem to mind the vigorous treatment, letting out contented moans as the head pushes into her throat. She whirls her tongue around the shaft, savoring the full flavor that your sweat and pre-cum provide. You can feel her breath across your loins, enthusiastically tickling your skin. With one hand, she holds the base of your [Cock of Player] cock, squeezing and stroking in time with the movements of her head. With her other paw, she fingers your cunt, ensuring that it doesn't get left forgotten.";
				say "     Sylvia adeptly pleasures you, mouth enveloping your warm erection, and her hands caressing your genitals. It would seem that the collie student has forgotten about wishing to be mounted and penetrated as she enthusiastically presses her head firmly against your groin. A slippery finger brushes over your pucker before working its way in, causing you to jerk forward, making Sylvia gag before recovering. She continues to push her finger in, boosting your pleasure from yet another angle. It all becomes too much. With a cry of ecstasy, you climax, the collie bitch's eyes widening as a torrent of semen squirts down her throat[if Cock Count of Player > 1] and over her face[end if], your shaft throbbing in her mouth. You slowly pull out, still ejaculating, giving her a taste of the spooge before the last few squirts splatter her face. Through determination and aid from the nanites, you maintain your erection, ready for more.";
				WaitLineBreak;
				say "     Puffing from your orgasm, you place your hands on your knees, bending over to focus on breathing. You look at Sylvia, a strand of cum trickling down her face. To your surprise, the collie pushes you over, causing you to end up on your back upon the floor. She straddles you, aligning her cunt with your cock using a paw, before hilting herself in one push, her walls squeezing around your sensitive shaft. She seems to be taking control this round, letting you rest after pounding her face. You content yourself with just lying there, gazing at the rising and falling collie as she penetrates herself on your rod while a paw rubs over your slit. Her pussy feels better than either her mouth or ass, its muscles seemingly under her control as different areas squeeze in time with where your tip is.";
				say "     Deciding to vary how you touch the collie, you stretch your arms out to touch her. With one hand, you begin stroking her tail, feeling how fluffy and silky it is. With the other, you trace your nails down her spine, feeling her twitching at the contrasting feelings provided by your stroking, tickling, and thrusting. Wishing to return the earlier favor, your hand reaches the base of her tail next to your colliding bodies. You coat your thumb in the copious fluids dripping from her pussy, before pressing it into her ass. This sends her over the edge. With a howl, the collie bitch orgasms intensely, her fem-cum squirting onto your testicles as she impales herself one last time. Her entire body shudders, and her anus squeezes around the invading digit. This, in turn, causes you to climax too, your shaft[smn] erupting inside of her [if Cock Count of Player > 1]as well as over the both of you [end if]and your cunt spasming around her fingers. You hang onto Sylvia to prevent her from falling off of your lap, your mixed fluids pouring from your joining and pooling on the floor between your thighs.";
				WaitLineBreak;
				say "     Still panting from the carnal exercise, Sylvia slowly lifts herself off of your softening penis and sits down beside you. 'That was invigorating. Mmm, definitely have to do that again,' she says, placing a hand on your thigh. 'I have something that might spice up next time, but you'll have to wait for then.' You raise your eyebrow, suspicious of such a statement. 'I did a favor for the jackal shopkeeper in the mall, and she gave me something.' Knowing that Nermine doesn't do anything for free, you wonder what she did in payment, but dare not ask. Sylvia stands up and tosses a towel onto the pool of sexual fluids before collapsing onto the bed. 'I'm going to need some time to recover, but come back again. I'd love to further explore our relationship, and don't forget about helping with my research either.' You leave, closing the door behind you and returning to the lobby. There is more to Sylvia than meets the eye.";
				NPCSexAftermath Sylvia receives "OralCock" from Player;
				NPCSexAftermath Sylvia receives "PussyFuck" from Player;
				now Resolution of Sylvia's Reward is 4; [Mated as herm]
			else if Cock Count of Player is 0 and Cunt Count of Player > 0: [Female]
				say "     Looking confused, you undress and gesture to your pussy, with its distinct absence of a penis. Now that you have accepted her offer, the collie is back to her usual self. She laughs and pulls a dildo out of her bag. 'I did a favor for the jackal shopkeeper in the mall. She assures me that this doesn't have any side effects, and she seems the sort to keep her word.' The dildo is fairly large, (by pre-crisis standards) and shaped like a wolf's cock, complete with a knot. 'She said to hold it against your groin, and it will temporarily fuse, allowing you to pretend to be male. While I enjoy the touch of a woman too, our first mating should be you thrusting into me, so if you wouldn't mind...' she says, offering it to you. It feels warm to the touch, and a strange urge to lick it lurks at the edge of your mind. You give it a small lick, the flavor of wolf spunk filling your mouth, before you press it against your groin, just above your slit.";
				say "     A pleasant warmth, like slipping into a hot bath, emanates from your loins as the toy fuses with your body, the warm silicone transmuting into flesh. With a gasp, you notice your vulva disappearing, being replaced by a furry scrotum with heavy balls. The process complete, you trace your fingers over the lupine erection between your legs, before Sylvia drops to her knees and knocks your hand out of the way, grasping the wolf cock firmly. As she begins to masturbate you, you begin thrusting lightly against her fist, the stimulation that she provides being felt throughout your body. It would seem the mystical dildo has increased the pleasure you feel, thoughts of a long, amorous [if daytimer is day]day[else]night[end if] ahead of you. You can feel the fur on the collie's paws as she caresses your balls and rubs your shaft, her eyes meeting your own with a needy expression. You are only too keen to oblige, pulling your length from her grasp before grabbing her head and plunging into her maw, hilting yourself on the first thrust.";
				WaitLineBreak;
				say "     You get the impression that the phallus is influencing you, pushing you towards action and wanting to dominate the eager canine student. She doesn't seem to mind the vigorous treatment, letting out contented moans as the head pushes into her throat. She whirls her tongue around the shaft, savoring the full flavor that you had but a single lick of. You might be jealous if you weren't the one with an attractive young woman between your legs. With one hand, she holds the base of your newly acquired cock, squeezing and stroking in time with the movements of her head. With her other paw, she fondles your balls, gauging the amount of mess that they are likely to produce.";
				say "     Sylvia adeptly pleasures you, mouth enveloping your firm lupine shaft, and her hands caressing your scrotum. It would seem that the collie student has forgotten about wishing to be mounted and penetrated as she enthusiastically presses her head firmly against your groin. A slippery finger brushes over your pucker before working its way in, causing you to jerk forward, making Sylvia gag before recovering. She continues to push her finger in, boosting your pleasure from yet another angle. It all becomes too much. With a cry of ecstasy, you climax, the collie bitch's eyes widening as a torrent of semen squirts down her throat, your shaft throbbing in her mouth. You slowly pull out, still ejaculating, giving her a taste of the spooge before the last few squirts splatter her face. To your surprise, the mystical wolf dildo is still erect, ready for more.";
				WaitLineBreak;
				say "     Foreplay over, you bend Sylvia over the edge of her bed. She flags her tail, revealing her tailhole and engorged vulva. The student turns her head to face you, panting with lust, her eyes begging for you to breed her. Not requiring any further lubrication, you forcefully mount her, your slick cock slipping into her cunt effortlessly. Her insides are wet and warm, embracing your organ as you thrust into her, loud squelching proving how aroused she is. You grip her hips to anchor yourself as you penetrate her with enough force to make her breasts shake. Each time your groins meet, a small yelp breaks from her mouth, and her walls contract around the fused dildo. You slow, concerned that you are hurting her, but she whimpers and begs for you to continue, lost in the ecstasy provided by you and the wolf phallus. You return to pounding into the collie, reveling in the sense of control and power provided by your coupling.";
				say "     Deciding to vary how you touch the collie, you release her hips. With one hand, you begin stroking her tail, feeling how fluffy and silky it is. With the other, you trace your nails down her spine, feeling her twitching at the contrasting feelings provided by your stroking, tickling, and thrusting. Wishing to return the earlier favor, your hand reaches the base of her tail next to your colliding bodies. You coat your thumb in the copious fluids dripping from her pussy, before pressing it into her ass. This sends her over the edge. With a howl, the collie bitch orgasms intensely, her fem-cum squirting around your still hammering penis. Her entire body shudders, and her anus squeezes around the invading digit. This, in turn, causes you to climax too, your shaft erupting inside of her before you have a chance to knot. You hang onto her to support yourself as a mixture of cum and juices pour out of the joining, forming a puddle on the floor beside your feet.";
				WaitLineBreak;
				say "     Still panting from the carnal exercise, Sylvia rolls over and sits up. 'That was invigorating. Mmm, definitely have to do that again.' She reaches across to you and grasps your erect shaft and pulls softly. To your astonishment, the dildo comes away, your vagina present on your groin again. Noticing your shock, the collie student explains, 'It's connected to me. I can do what I want with it, within limits of course.' You really wonder what she did in payment for it, but dare not ask. Sylvia stands up and tosses a towel onto the pool of sexual fluids before collapsing back onto the bed again. 'I'm going to need some time to recover, but come back again. I'd love to further explore our relationship, and don't forget about helping with my research either.' You leave, closing the door behind you and returning to the lobby. There is more to Sylvia than meets the eye.";
				NPCSexAftermath Sylvia receives "PussyDildoFuck" from Player;
				now Resolution of Sylvia's Reward is 5; [Mated as female]
			else: [none]
				say "     Looking confused, you undress and gesture to your complete absence of genitalia. Now that you have accepted her offer, the collie is back to her usual self. She laughs and pulls a dildo out of her bag. 'I did a favor for the jackal shopkeeper in the mall. She assures me that this doesn't have any side effects, and she seems the sort to keep her word.' The dildo is fairly large, (by pre-crisis standards,) and shaped like a wolf's cock, complete with a knot. 'She said to hold it against your groin, and it will temporarily fuse, allowing you to pretend to be male. While I'm sure I could enjoy the touch of a neuter too, our first mating should be you thrusting into me, so if you wouldn't mind...' she says, offering it to you. It feels warm to the touch, and a strange urge to lick it lurks at the edge of your mind. You give it a small lick, the flavor of wolf spunk filling your mouth, before you press it against your groin where your genitals should be.";
				say "     A pleasant warmth, like slipping into a hot bath, emanates from your loins as the toy fuses with your body, the warm silicone transmuting into flesh. The process complete, you trace your fingers over the lupine erection between your legs, before Sylvia drops to her knees and knocks your hand out of the way, grasping the wolf cock firmly. As she begins to masturbate you, you begin thrusting lightly against her fist, the stimulation that she provides being felt throughout your body. It would seem the mystical dildo has increased the pleasure you feel, thoughts of a long, amorous [if daytimer is day]day[else]night[end if] ahead of you. You can feel the fur on the collie's paws as she caresses your balls and rubs your shaft, her eyes meeting your own with a needy expression. You are only too keen to oblige, pulling your length from her grasp before grabbing her head and plunging into her maw, hilting yourself on the first thrust.";
				WaitLineBreak;
				say "     You get the impression that the phallus is influencing you, pushing you towards action and wanting to dominate the eager canine student. She doesn't seem to mind the vigorous treatment, letting out contented moans as the head pushes into her throat. She whirls her tongue around the shaft, savoring the full flavor that you had but a single lick of. You might be jealous if you weren't the one with an attractive young woman between your legs. With one hand, she holds the base of your newly acquired cock, squeezing and stroking in time with the movements of her head. With her other paw, she fondles your balls, gauging the amount of mess that they are likely to produce.";
				say "     Sylvia adeptly pleasures you, mouth enveloping your firm lupine shaft, and her hands caressing your scrotum. It would seem that the collie student has forgotten about wishing to be mounted and penetrated as she enthusiastically presses her head firmly against your groin. A slippery finger brushes over your pucker before working its way in, causing you to jerk forward, making Sylvia gag before recovering. She continues to push her finger in, boosting your pleasure from yet another angle. It all becomes too much. With a cry of ecstasy, you climax, the collie bitch's eyes widening as a torrent of semen squirts down her throat, your shaft throbbing in her mouth. You slowly pull out, still ejaculating, giving her a taste of the spooge before the last few squirts splatter her face. To your surprise, the mystical wolf dildo is still erect, ready for more.";
				WaitLineBreak;
				say "     Foreplay over, you bend Sylvia over the edge of her bed. She flags her tail, revealing her tailhole and engorged vulva. The student turns her head to face you, panting with lust, her eyes begging for you to breed her. Not requiring any further lubrication, you forcefully mount her, your slick cock slipping into her cunt effortlessly. Her insides are wet and warm, embracing your organ as you thrust into her, loud squelching proving how aroused she is. You grip her hips to anchor yourself as you penetrate her with enough force to make her breasts shake. Each time your groins meet, a small yelp breaks from her mouth, and her walls contract around the fused dildo. You slow, concerned that you are hurting her, but she whimpers and begs for you to continue, lost in the ecstasy provided by you and the wolf phallus. You return to pounding into the collie, reveling in the sense of control and power provided by your coupling.";
				say "     Deciding to vary how you touch the collie, you release her hips. With one hand, you begin stroking her tail, feeling how fluffy and silky it is. With the other, you trace your nails down her spine, feeling her twitching at the contrasting feelings provided by your stroking, tickling, and thrusting. Wishing to return the earlier favor, your hand reaches the base of her tail next to your colliding bodies. You coat your thumb in the copious fluids dripping from her pussy, before pressing it into her ass. This sends her over the edge. With a howl, the collie bitch orgasms intensely, her fem-cum squirting around your still hammering penis. Her entire body shudders, and her anus squeezes around the invading digit. This, in turn, causes you to climax too, your shaft erupting inside of her before you have a chance to knot. You hang onto her to support yourself as a mixture of cum and juices pour out of the joining, forming a puddle on the floor beside your feet.";
				WaitLineBreak;
				say "     Still panting from the carnal exercise, Sylvia rolls over and sits up. 'That was invigorating. Mmm, definitely have to do that again.' She reaches across to you and grasps your erect shaft and pulls softly. To your astonishment, the dildo comes away, revealing your featureless groin again. Noticing your shock, the collie student explains, 'It's connected to me. I can do what I want with it, within limits of course.' You really wonder what she did in payment for it, but dare not ask. Sylvia stands up and tosses a towel onto the pool of sexual fluids before collapsing back onto the bed again. 'I'm going to need some time to recover, but come back again. I'd love to further explore our relationship, and don't forget about helping with my research either.' You leave, closing the door behind you and returning to the lobby. There is more to Sylvia than meets the eye.";
				NPCSexAftermath Sylvia receives "PussyDildoFuck" from Player;
				now Resolution of Sylvia's Reward is 6; [Mated as neuter]
	else: [Refused]
		say "     You softly shake your head, stepping away from the shocked collie. You don't really think about her in that way. After all, you have a considerable amount to do in the city and may not have the time to spend with her in future. 'Well then. This is surprising. Could I have some time alone please?' You feel slightly guilty doing this to the student, but when you aren't attracted to her, sex just wouldn't do it for you. You leave, quietly closing the door, but not quite quick enough to avoid hearing a sniffle.";
		now Resolution of Sylvia's Reward is 7; [Refused]
	now hp of Sylvia is 7;
	now Sylvia's Reward is resolved;

Table of GameEventIDs (continued)
Object	Name
Bad Breakup	"Bad Breakup"

Bad Breakup is a situation.
Prereq1 of Bad Breakup is Beach Field Research.
Prereq1Resolution of Bad Breakup is { 1, 2 }.
The sarea of Bad Breakup is "Nowhere".

instead of going north from Dorm Street while (Bad Breakup is active and Bad Breakup is PrereqComplete and Bad Breakup is not resolved and a random chance of 1 in 2 succeeds and LastCampusWalkin - turns > 0):
	move player to Tenvale College Female Dorms;
	BadBreakupEvent;

instead of resolving Bad Breakup:
	BadBreakupEvent;

to BadBreakupEvent: [Cheating Boyfriend]
	say "     As you enter the building, you are greeted by the distraught shouting of a couple having an argument in the foyer. There is an inconspicuous absence of people other than the sobbing fennec and her gorilla boyfriend. They don't seem to notice you arrive, and you hastily duck behind an ornamental bush and continue to watch. 'Why, Ethan? I thought that you loved me. Why would you do this to me?' the young woman asks through tears. 'You're the one breaking up with me, so this is hardly my fault,' the gorilla replies in exasperation, earning a glare from his soon to be ex-girlfriend. 'My fault? How is you sleeping around with seven or so other girls my fault? Do please explain,' she hisses. 'They let me do way kinkier shit to them than you would even consider. You're so bland now that the city has changed. It took you months before you would even try anal. They accepted as readily as if I was asking for a glass of water. You don't do what I want when I want it,' the primate fires back.";
	say "     'The yoga instructor can bend in interesting ways. You can't. The athlete has stamina to match mine. You don't. Laura is prettier than you, and Megan doesn't mind sharing her friends with me. Do you see where I am going with this? You are boring. The only things that you're good at are computers and drawing, neither of which is exactly useful in the current situation, so consider yourself dumped. I have better woman to entertain myself with.' His speech is delivered with such dismissiveness that you can feel the pain from just watching the female student slide to the floor by the front desk, tears glistening on her fur. 'I helped you with your tests and took time to be with you. My friends warned me that you had a mean streak, but I didn't believe them. I suppose this serves me right then,' she whimpers.";
	WaitLineBreak;
	say "     The simian looks contemptuously down at her before continuing, 'Also, I want the nightwear I gave you back. It may as well go to someone worthy.' The fox looks up at him, 'But that was a birthday present. You gave it to me, and it's pretty. Please don't take it. I like it. Please.' The ape lifts her to her feet and pulls the sobbing young woman down a corridor, with you following unnoticed. They stop outside of a door decorated with various pictures. 'Open it!' he snaps as she continues to sniffle. As she brings the key up to the lock, the door behind her opens and a familiar collie steps out. 'Oh, Chloe. I didn't expect to see you here. Are you alright? Did Ethan break up with you? Come in here and talk. I'm sure Rose won't mind,' Sylvia offers, putting an arm around the crying fennec's shoulders. 'Actually, she and I are busy,' the simian interjects, 'so if you could just go, that would be great. Thanks.'";
	say "     'Nonsense. I'm sure that she has time to talk to me, or are you in such a rush to walk off with her belongings? I could hear you through the door, as I'm sure many other people can. You aren't a particularly kind-hearted soul, are you?' the collie says gently taking the key out of the fox's paw. 'Fuck off, you stupid bitch. Keep your nose out of our business, or I'll make you regret it. And Chloe will regret it even more.' The gorilla's outburst is met by a cold smile from Sylvia. 'Don't you know you should never treat a girl like that? Threatening me is one thing. I have faced abuse a lot, but Chloe hasn't done anything to deserve this.' She meets the primate's glare, and he looks ready to hit her. Concerned about the possible outcome of this altercation, you decide to make your presence known, letting out a cough. 'I was wondering when you would decide to step in[if Player is not defaultnamed], [name of Player][end if]. Well, Ethan, still want to start something you won't win?' The hulking ape growls before barging past you, muttering that this isn't over.";
	WaitLineBreak;
	say "     Now that the ex-boyfriend has left, Sylvia unlocks the fox girl's door and guides her inside with you following behind. The miserable student collapses into her bed weeping, Sylvia only leaving her for a moment to re-lock the door. 'You barely know me. Why are you doing this?' the fennec asks the collie. The canine sits beside her and hugs the fox's head to her chest. 'Because I care enough and because you deserve to be loved,' is the reply. 'I would like to be your friend, but I would understand if you don't want anything to do with me at the moment. I can get Rose to come and sit with you while you recover.' Hiccupping between sobs, the fennec clings to Sylvia, managing to utter, 'No, I want you here. No one else cared about me out there.' The collie looks pained at witnessing such desperation and kisses the top of the fox's head. 'I'll stay, dear, but I'll warn you now. Ethan will face retribution for this, Nemesis as my witness.'";
	say "     You agree with the sentiment, even if you find the oath strange, and ask whether there is anything she would like you to help with. Sylvia looks at you darkly. 'Oh no. This one's personal. I'll get the materials myself and make him feel pain equivalent to what he has inflicted on Chloe here. I might even try some new contraptions out.' The tone in which she says this makes you uncomfortable, and you almost feel some fear for the unfaithful ex-boyfriend. 'Don't kill him. Please. I'm not worth that,' Chloe pleads. 'I won't kill him, but don't think yourself so worthless. You're smart, pretty, and kind-hearted,' the collie reassures her as she strokes her hair. Glancing at you, she adds, '[if Player is not defaultnamed][name of Player], you[else]You[end if] can go if you want. I'll stay with Chloe for now. As you turn and leave, she mutters,' He will pay for this,' and you hope the fennec didn't hear that. Despite the heartbreak Ethan has caused her, the fox is drowning in misery too much to want revenge at the moment.";
	now resolution of Bad Breakup is 1;
	now Bad Breakup is resolved;
	now LastCampusWalkin is turns;

Table of GameEventIDs (continued)
Object	Name
Cheat's Retribution	"Cheat's Retribution"

Cheat's Retribution is a situation.
Prereq1 of Cheat's Retribution is Bad Breakup.
Prereq1Resolution of Cheat's Retribution is { 1 }.
The sarea of Cheat's Retribution is "Campus".

instead of going to College Walkway East while (Cheat's Retribution is active and Cheat's Retribution is PrereqComplete and Cheat's Retribution is not resolved and a random chance of 1 in 2 succeeds and LastCampusWalkin - turns > 8):
	move player to Tenvale College Female Dorms;
	CheatsRetributionEvent;

instead of resolving Cheat's Retribution:
	CheatsRetributionEvent;

to CheatsRetributionEvent: [Ethan's Punishment]
	say "     While walking along the path, a tap on your shoulder makes you turn around. Behind you is Chloe, the fennec fox that you met in the female dorms breaking up with her boyfriend. She looks at you shyly, clasping her paws in front of her. 'Um, hi. I'm not sure if you remember me...' You quickly say that you do and ask how she is coping. 'I'm fine, thank you for asking. Sylvia has been keeping me company quite a lot recently, when she's not working on a way to punish my ex-boyfriend. She seems very protective of me. That's sort of the reason I'm here. She requests that you come and see her. I suspect that she's ready for whatever it is she has been planning.' You follow her as she walks towards the woman's dormitory, continuing chatting with you. 'I'm still not sure I want Ethan to [']face her vengeance['] or however she is phrasing it today, but a part of me wants him to be punished for making me feel so awful. Does that make me a bad person?'";
	say "     She holds the door open for you as you enter the foyer of the dormitory and indicates for you to enter what looks like a conference room. Through the slightly ajar door, you can see Sylvia packing a few small cases into a backpack. You enter, and she looks up at you, giving a brief nervous smile. Julian and the twins, Evelyn and Evenlyn, are here too, sitting around a table. They give you a brief wave before returning to a hushed discussion. 'I still think that there must be a safer way of teaching him a lesson,' you hear the wolf say. 'I agree he deserves what he has coming, but Sylvia might face disciplinary action.' The collie looks saddened at this before replying, 'I accept that. The worst they can do is exclude me from the university, but this is necessary. I didn't get ethics approval for my research, I'm hardly likely to get it for this either,' she says as a joke.";
	WaitLineBreak;
	say "     Anyone who doesn't wish to be involved, you may leave now. I won't hold it against you. This is far from being my most morally acceptable decision.' No one moves, all determined to stick with their friend despite any risk to themselves or their academic welfare. 'You don't need to be a part of this[if Player is not defaultnamed], [name of Player][end if] I just wanted you to know that this was happening so that you wouldn't end up getting caught up in the end result. But do you want to see the cheat's retribution?";
	say "     [bold type]Do you wish to be witness to Ethan's punishment?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes. You are curious to see what Sylvia has prepared for him.";
	say "     ([link]N[as]n[end link]) - No. While you won't interfere, you are concerned that Sylvia may be going too far.";
	if Player consents: [See the punishment]
		say "     'Well then. Now that the gang's all here, how about I reveal what I have concocted? Ethan will be going to the campus sauna in just under an hour, a ritual he has done for the last few days. He should be alone, allowing me to teach him a lesson for how he treated Chloe without risking harming anyone else. I have placed several traps for him which you will see when they are sprung. I don't want to ruin the surprise, but they are quite varied. If all goes well, he will emerge a better person for it. You are all here to observe. There is nothing any of you are required to do as most of it is automated. The bits that aren't, I have a remote for, courtesy of the twins and several hardware shops. Just to give us plenty of time to prepare, we'll head there now and make sure we are sufficiently hidden.";
		say "     The walk through the college is uneventful, though your group gets a few curious glances from people as you pass. The twins chuckle mischievously together, Sylvia and Julian talk in hushed tones, and Chloe gives the occasional admiring glance at them. Hidden behind the gym, you reach the sauna, the area seemingly quiet. 'When we go in, make sure not to stand on any mats, I've modified some of them,' the collie says. 'There is a side room that I prepared for us to watch Ethan get his just desserts through some miniature cameras that I installed.' Sylvia brings up the rear as you enter the building, the cats apparently knowing where you are supposed to be going. The canine student carefully drags some suspiciously lush mats away from the walls and into the path of anyone heading to the sauna room. Julian sticks his head around the corner and loudly whispers, 'You should hurry up. If he's early, you don't want to get caught.'";
		WaitLineBreak;
		say "     You find yourselves in a decently sized room used for storing towels. However, it wasn't designed for six people to be in there at once so it feels fairly snug. At the end, there is a desk with a working computer, the screen split into windows showing different shots of the sauna building. You can see the entrance hall, the steam room, and the area just outside. It would seem that you got here just in time as you can see a gorilla swaggering towards the doors to the building, a bag slung over a shoulder. Sylvia pulls a chair next to the monitor and sits down, pulling a remote from her backpack and placing it on the desk before her. 'And so it begins,' she whispers as the ape enters the sauna. 'I will admit that this is experimental, but the first stage is for him to stand on any of the mats. They have spines coated with a transformation primer that should ready his body to be changed when he reaches stage three. Once he transforms, he is unlikely to be playing American football anymore.'";
		say "     Chloe looks uncomfortable at this, but the collie quickly continues, 'He may find some other sport, but I think it's unlikely that they will allow a woman on the college football team.' Realization crosses the fennec's face along with a small smile. 'You're taking something important from him and giving him a chance to experience what I have gone through,' she murmurs. 'Let's see how his new girlfriends like him after this.' You have to agree that this seems like poetic justice, even if you are unsure about the manner in which it is coming about. A silence drops over the room as Ethan walks towards the steam room. He immediately walks along the mats, a frown forming as he feels something different on his bare feet. 'These must be new, they feel stiffer than usual,' you hear him mumble. It seems that you have audio as well as visual, making you wonder whether the twins set it up or whether Sylvia has experience setting up surveillance equipment.";
		WaitLineBreak;
		say "     Ethan disappears from view for a few minutes, presumably stripping for the steam room. Your group remains silent, not wanting him to hear you. After a while, the gorilla appears on screen again, a towel wrapped around his broad waist, going into the steam room. 'Stage two requires him to apply the lotion that he uses each time he comes here. I've made some additions to it, namely the main transformative solution. It doesn't do much without the other two parts, the primer and the catalyst, just in case it came into contact with someone else. I didn't want someone else suffering for his crime,' Sylvia explains. As she expected, he removes a bottle from his bag and begins to apply it over his hair, unwrapping the towel exposing his groin, and tossing it onto the seating beside him. You watch as he thoroughly smears it everywhere. You realize that he didn't stand a chance as soon as he earned Sylvia's ire. Scary.";
		say "     The room starts to fill with an increasing amount of steam as Ethan throws some water on the stones, obscuring his muscular form. 'Now for the final step. Would you like the honors?' the collie asks Chloe, offering her the remote. 'Press the button to release an aphrodisiac gas laced with the catalyst for the transformation. But once you do, we'll only have a few minutes before we need to leave. Otherwise, I'm likely to face consequences for this.' The fennec fox takes the remote and stares at her ex-boyfriend relaxing in the steam for a moment before pressing the button. You barely see any change on the screen, a slight disturbance in the steam's motion the only clue that something may have changed. 'Time to go. We will get a better view of the result from outside. Also, consequences, just to remind everyone,' Sylvia says, making sure she hasn't left anything incriminating behind while Evelyn and Evenlyn head outside to make sure the coast is clear.";
		WaitLineBreak;
		say "     Chloe wipes the surveillance program from the computer, her expertise being put to use, and pocketing some of the wires from the back. 'We only have seconds left. Move,' Sylvia whispers urgently, she and Julian putting on thick-looking gloves. You briskly walk towards the exit, the two canines hastily rolling the mats up as you pass and cramming them together in a large canvas bag that the wolf slings over his shoulder. As you pass through the front door, you hear a startled yell from behind you. It sounds like Ethan's transformation has begun. The feline twins are about fifty meters away outside what looks like a study room gesturing for you all to hurry, making sure that no one else is in sight. Your group dashes over, Evenlyn closing the door moments before a creature you assume is Ethan breaks from the sauna. The room is soundproof, so you can't hear him shouting, but he definitely looks distressed.";
		say "     Or should that be her? While Ethan used to be a buff male gorilla, he is now thin, shorter, and definitely female. 'She makes for quite the cute mongoose, don't you think?' Sylvia comments, placing a pad of paper covered in scientific mumbo-jumbo on the table. Chloe gazes out at the frantic feliform for several minutes, the room remaining silent while she commits this moment to memory. She turns away as other students appear and rush to the mongoose's aid. Mouthing [']thank you['] at the collie, the vulpine woman sits beside Sylvia and rests her head on her shoulder. Chloe and Sylvia have bonded considerably since when you first met them, and you can't help but smile. Ethan's punishment may have been morally questionable, but the scene in front of you makes you feel like it was worth it. 'Should we go out and see? It might seem suspicious if we don't go out and check,' Julian asks, receiving a nod in response.";
		WaitLineBreak;
		say "     Repacking her notes, Sylvia brings up the rear as you leave the room again and approach the growing mass of onlookers. A mature-looking lion blocks your path. 'Please don't get any closer. A student has just transformed, and we aren't sure whether they are contagious at the moment. I suspect that it was a practical joke, but for now, the area is going to be quarantined, and this student will be taken to the medical office for an examination,' the tall feline informs you. Giving a nod, your group walks back towards the dormitories, the assorted size packs on their backs remaining unquestioned. Once you reach the room where you met them earlier today, they collapse into the chairs, hours of buried stress coming to the surface and exhausting everyone. 'We'll talk about this more another time,' Sylvia says, slouched against the wall. 'But for now, I need to find a safe place to dump the mats and then I want a nap. Well done, everyone, you all did very well.' Taking this as a dismissal, you return to the foyer and wonder what to do next.";
		now Resolution of Cheat's Retribution is 1; [watched]
		now SylviaTrapVar is 2;
	else: [No part in this]
		say "     'That's fine,' Sylvia says. 'You are allowed to have your own opinion on the matter. Just stay away from the college sauna. You do not want to get caught up in this. Especially if we get caught.' She doesn't seem upset by your decision, but you imagine that she might have been happier if you had agreed to be a part of her scheme. You leave the room again, leaving the friends to carry out their plan. You might hear about the outcome anyway. Hopefully they don't get in too much trouble.";
		now Resolution of Cheat's Retribution is 2; [stayed out of it]
		now SylviaTrapVar is 1;
	now Cheat's Retribution is resolved;

Table of GameEventIDs (continued)
Object	Name
Charming Picnic	"Charming Picnic"

Charming Picnic is a situation.
Prereq1 of Charming Picnic is Unnatural Heat.
Prereq1Resolution of Charming Picnic is { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 }.
The level of Charming Picnic is 0.
The sarea of Charming Picnic is "Campus".

instead of going to College Walkway East while (Charming Picnic is active and Charming Picnic is PrereqComplete and Charming Picnic is not resolved and (hp of Sylvia > 3 or hpM of Sylvia > 2 or hpF of Sylvia > 2) and a random chance of 1 in 4 succeeds and LastCampusWalkin - turns > 2):
	move player to College Walkway East;
	CharmingPicnicEvent;

Instead of resolving Charming Picnic:
	CharmingPicnicEvent;

to CharmingPicnicEvent: [Picnic]
	say "     As you explore the college, with the occasional curious greeting from a passing student, you see a small group having a picnic on a clean piece of lawn. Getting closer, you see that it is Sylvia, Julian, and two felines whom you haven't seen before. They are sitting on a red tartan blanket, eating normal food and laughing. Where they found bread and cheese, you wouldn't have a clue. Though with what you've heard about the cats, you're pretty sure that you know who provided it. Not wanting to intrude on their gathering, you sit on a bench and watch from a distance, smiling at how friendships are able to be maintained or developed, even in such a dark time for the city. The feline twins are obviously very close, with them feeding each other morsels, as the border collie tells them of a trip into the city which ended with her having to explain to an elderly crocodile, fairly red faced, why she was hiding in his bathtub.";
	say "     Julian sits next to her, eying some slices of ham, letting out chuckles as Sylvia continues her tale. All of them seem very fond of each other, casually touching each other as they pass food and express concern and support as they exchange stories. Julian tells them of his childhood, of walks through the snowy forests of Canada and watching wolves hunt through his father's binoculars. The twins then regale them with how they convinced some soldiers to eat some peaches, leaving before they noticed the effects. You smile, glad that people still take the time for such activities as picnics, that would have been viewed as mundane before the outbreak, but now are a reminder of what was and the hope for the future. As you leave, you turn your head and watch as Julian finally grabs the ham, devouring it in three bites.";
	now Charming Picnic is resolved;
	now LastCampusWalkin is turns;

Table of GameEventIDs (continued)
Object	Name
Badminton One	"Badminton One"

Badminton One is a situation.
Prereq1 of Badminton One is Unnatural Heat.
Prereq1Resolution of Badminton One is { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 }.
The level of Badminton One is 0.
The sarea of Badminton One is "Campus".

instead of going to College Walkway East while (Badminton One is active and Badminton One is PrereqComplete and Badminton One is not resolved and (hp of Sylvia > 3 or hpM of Sylvia > 2 or hpF of Sylvia > 2) and a random chance of 1 in 4 succeeds and LastCampusWalkin - turns > 2):
	move player to College Walkway East;
	BadmintonOneEvent;

Instead of resolving Badminton One:
	BadmintonOneEvent;

to BadmintonOneEvent: [Game of badminton]
	say "     While walking down the path, you look over the lawn at the various students doing everyday activities such as studying, talking with friends, and jogging. In the middle, a net strung between two poles catches your eye, as well as the people playing what appears to be badminton. You recognize Sylvia and Julian, who seem to be playing against two near identical cats. Despite this being a casual game, a small gathering of people is spectating, noises of admiration and encouragement bubbling from them as they watch. The feline twins work in coordination with each other, never going for the shuttlecock at the same time nor getting in each other's way. The collie seems to be letting Julian take the lead, her skill meaning that she is capable of covering for any mistakes he makes while still keeping the game fairly even, allowing them all to have fun.";
	say "     You approach the game, the crowd shuffling around to allow you a clear view. More than a few eyes are admiring the players more than the game, several bulges or damp patches showing through clothing. The game continues for quite a while longer, the rallies continuing for minutes as no one makes any effort to force their opponent to error. In fact, as they continue, the players begin acting theatrically, making some hits look dramatic or flipping their racquets. The cats intermittently somersault acrobatically while Sylvia twirls around and does trick shots, much to the applause of the spectators. The game is brought to a close when the wolf, out of canine instinct, catches the shuttlecock in his mouth, causing everyone to burst into laughter. A few people joke that if he likes cock that much, perhaps he should follow them to their rooms. Further amusement is brought about by Sylvia telling him to drop it, before patting him and saying what a good boy he is. The game finished, you continue through the college.";
	now Badminton One is resolved;
	now LastCampusWalkin is turns;

[Gender Preference Events]

to say MalePrefUnnaturalHeatEvent: [MalePref Alternative]
	say "     Walking into the room, you notice that Sylvia isn't here. As you turn to leave, you notice a figure running full pelt toward you down the corridor. With a little more study, you realize that it is Sylvia, and leap out of the way as she hurtles through the door before sliding to a halt in front of her desk, her skirt riding up to reveal an absence of undergarments. You quickly avert your eyes, not wanting to make her feel embarrassed. As she scrabbles through a drawer, you step from beside the bed and ask her what the rush is. At the sound of your voice she flinches slightly and turns her head, a needy expression that she seems to be fighting, on her face.";
	say "     'I was in the city collecting samples.' Sylvia states, turning back to the clutter in the drawer. 'Things like fur, blood, semen, etcetera. I was wearing rubber gloves but I stumbled while getting one sample and ripped one. It started trying to fuse to my hand so I quickly pulled it off, but losing some skin with it. I must have squeaked because then I could hear creatures approaching. So, foolishly, I ran. Realizing that I would probably attract more pursuers if I continued trying to flee, I hid in an abandoned shop and waited for them to go past. I had completely forgotten that many animals hunt by scent as well as sight, so by the time I had remembered, they were outside, a husky pack of three bitches and one of those stupid alphas that think they're so great.";
	WaitLineBreak;
	say "     I knew that I wouldn't be able to escape the pack when they were that close, so I lay there expecting them to leap through the window and ravage me.' For once, Sylvia doesn't seem cheerful, desperation filling her voice as she scrabbles through her belongings. 'To make matters worse, the aroma of the shop became stronger and I realized that I had taken shelter in a sex shop and I was getting aroused. Luckily the buildings stench covered my own smell and the scent of my growing arousal. They left fairly quickly after that, but now I'm struggling not to present myself for mounting to any male that passes my fancy. For goodness sake, where is it,' Sylvia snaps, opening even more drawers in the futile attempt to find what she seeks. You ask her what she hopes to find, to which she replies 'I had something to suppress arousal should I ever need it, but I can't find it. Without it I fear I'll do something I later regret.";
	say "     [bold type]Do you let her continue searching, or check your bag to see whether you have any libido suppressant to give her?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Let her continue searching, she has to find it eventually.";
	say "     ([link]N[as]n[end link]) - Search your bag, time is of the essence.";
	if Player consents: [Let her look]
		LineBreak;
		say "     Deciding that she has to find it eventually if she looks everywhere in her room, you kneel and begin to help her search. You peer under the desk and the bed, before joining her in searching the contents of her desk. She has a surprising number of objects stashed in the drawers, with things such as pens, USB drives, and a dildo crammed in together. Suddenly, a knock interrupts your search and you both turn around. In the doorway is a very concerned looking wolf whom you recognize as Julian. 'Are you alright Sylvia? I saw you dash through the campus, and you don't seem to have your satchel with you.' Julian enquires worriedly, casting curious glances at why you and the collie are scrabbling about on the floor. Sylvia hurriedly explains the same story she just told you, her paws creeping closer to her groin.";
		say "     Julian's eyes widen, and he steps into the room before closing the door, hiding the collie girl's predicament from any passers-by. He reaches into his pocket and passes her a small syringe filled with orange liquid. 'That's my last one. I'll ask the twins to make another hospital run, just in case.' Julian tells her. Relief flooding her face, Sylvia flicks the tip before pulling her skirt up and stabbing the needle into her thigh. While the visible effects of her arousal have lessened, she still pants with need. 'Julian, while I would have preferred that this wasn't so desperate, I'm going to need more help. Would you... mount me. I fear that I have been sent into heat,' the collie girl pleads. Shocked, Julian hesitantly agrees, pulling his trousers and shirt off and placing them on her bed. Sylvia then turns to you. 'Could you give us some privacy as I don't think you have much of an interest in me and this may be passionate.'";
		WaitLineBreak;
		say "     You wish them well and leave them to their coupling. As you close the door, you hear a yip of pleasure.";
		now resolution of Unnatural Heat is 10; [MPref, Let her look]
	else: [search bag]
		LineBreak;
		if carried of libido suppressant > 0: [present]
			say "     Knowing that time is of the essence, you place your bag on the bed and start searching through. It doesn't take you long to find what you are looking for. Grabbing the syringe, you shout to Sylvia that you've got one. She quickly crawls over to you and grabs it from your proffered hand. Suddenly, a knock interrupts your search and you both turn around. In the doorway is a very concerned looking wolf whom you recognize as Julian. 'Are you alright Sylvia? I saw you dash through the campus, and you don't seem to have your satchel with you.' Julian enquires worriedly, casting curious glances at why you and the collie are scrabbling about on the floor. Sylvia hurriedly explains the same story she just told you, her paws fiddling with the syringe.";
			LineBreak;
			say "[bold type]You lose one libido suppressant![roman type][line break]";
			decrease carried of libido suppressant by 1;
			say "     Julian's eyes widen, and he steps into the room before closing the door, hiding the collie girl's predicament from any passers-by. Seeing what is in her hands, he lets out a sigh and relaxes slightly. 'It's a good thing your friend had some, I'm down to my last one. I'll ask the twins to make another hospital run, just in case.' Julian addresses the collie. With a grateful glance at you, Sylvia	pulls her skirt up and stabs the needle into her thigh. While the visible effects of her arousal have lessened, she still pants with need. 'Julian, while I would have preferred that this wasn't so desperate, I'm going to need more help. Would you... mount me. I fear that I have been sent into heat,' the collie girl pleads. Shocked, Julian hesitantly agrees, pulling his trousers and shirt off and placing them on her bed. Sylvia then turns to you. 'Could you give us some privacy as I don't think you have much of an interest in me and this may be passionate.'";
			say "     You wish them well and leave them to their coupling. As you close the door, you hear a yip of pleasure.";
			now resolution of Unnatural Heat is 11; [MPref, Searched your bag, Suppressant found]
		else: [none]
			LineBreak;
			say "     Knowing that time is of the essence, you place your bag on the bed and start searching through. It doesn't take you long to realize that you don't have any. Deciding that helping her look would be the next best option, you kneel and begin to help her search. You peer under the desk and the bed, before joining her in searching the contents of her desk. She has a surprising number of objects stashed in the drawers, with things such as pens, USB drives, and a dildo crammed in together. Suddenly, a knock interrupts your search and you both turn around. In the doorway is a very concerned looking wolf whom you recognize as Julian. 'Are you alright Sylvia? I saw you dash through the campus, and you don't seem to have your satchel with you.' Julian enquires worriedly, casting curious glances at why you and the collie are scrabbling about on the floor. Sylvia hurriedly explains the same story she just told you, her paws creeping closer to her oozing pussy.";
			say "     Julian's eyes widen, and he steps into the room before closing the door, hiding the collie girl's predicament from any passers-by. He reaches into his pocket and passes her a small syringe filled with orange liquid. 'That's my last one. I'll ask the twins to make another hospital run, just in case.' Julian tells her. Relief flooding her face, Sylvia flicks the tip before pulling her skirt up and stabbing the needle into her thigh. While the visible effects of her arousal have lessened, she still pants with need. 'Julian, while I would have preferred that this wasn't so desperate, I'm going to need more help. Would you... mount me. I fear that I have been sent into heat,' the collie girl pleads. Shocked, Julian hesitantly agrees, pulling his trousers and shirt off and placing them on her bed. Sylvia then turns to you. 'Could you give us some privacy as I don't think you have much of an interest in me and this may be passionate.'";
			WaitLineBreak;
			say "     You wish them well and leave them to their coupling. As you close the door, you hear a yip of pleasure.";
			now resolution of Unnatural Heat is 12; [MPref, Searched your bag, Suppressant not found]
	now hpM of Sylvia is 3; [helped with heat]

to say FemPrefUnnaturalHeatEvent: [Sylvia removes skirt]
	say "     Walking into the room, you notice that Sylvia isn't here. As you turn to leave, you notice a figure running full pelt toward you down the corridor. With a little more study, you realize that it is Sylvia, and you leap out of the way as she hurtles through the door before sliding to a halt in front of her desk, her skirt riding up to reveal an absence of undergarments. The lips of her canine cunt are puffy and engorged, with a thin trickle of liquid glistening. As she scrabbles through a drawer, you step from beside the bed and ask her what the rush is. At the sound of your voice she flinches slightly and turns her head, a needy expression that she seems to be fighting on her face.";
	say "     'I was in the city collecting samples,' Sylvia states, turning back to the clutter in the drawer. 'Things like fur, blood, semen, etcetera. I was wearing rubber gloves, but I stumbled while getting one sample and ripped one. It started trying to fuse to my hand, so I quickly pulled it off, but losing some skin with it. I must have squeaked because then I could hear creatures approaching. So, foolishly, I ran. Realizing that I would probably attract more pursuers if I continued trying to flee, I hid in an abandoned shop and waited for them to go past. I had completely forgotten that many animals hunt by scent as well as sight, so by the time I had remembered, they were outside, a husky pack of three bitches and one of those stupid alphas that think they're so great.";
	WaitLineBreak;
	say "     I knew that I wouldn't be able to escape the pack when they were that close, so I lay there, expecting them to leap through the window and ravage me.' For once, Sylvia doesn't seem cheerful, desperation filling her voice as she scrabbles through her belongings. 'To make matters worse, the aroma of the shop became stronger, and I realized that I had taken shelter in a sex shop, and I was getting aroused. Luckily, the building's stench covered my own smell and the scent of my growing arousal. They left fairly quickly after that, but now I'm struggling not to present myself for mounting to any male that passes my fancy. For goodness sake, where is it?!' Sylvia snaps, opening even more drawers in the futile attempt to find what she seeks. You ask her what she hopes to find, to which she replies, 'I had something to suppress arousal, should I ever need it, but I can't find it. Without it, I fear that I'll do something I will later regret.";
	say "     [bold type]Do you let her continue searching, or check your bag to see whether you have any libido suppressant to give her?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Let her continue searching. She has to find it eventually.";
	say "     ([link]N[as]n[end link]) - Search your bag. Time is of the essence.";
	if Player consents: [Let her look]
		LineBreak;
		say "     Deciding that she has to find it eventually if she looks everywhere in her room, you kneel and begin to help her search. You peer under the desk and the bed, before joining her in searching the contents of her desk. She has a surprising number of objects stashed in the drawers, with things such as pens, USB drives, and a dildo crammed in together. Suddenly, a knock interrupts your search, and you both turn around. In the doorway is a very concerned looking wolf, whom you recognize as Julian. 'Are you alright, Sylvia? I saw you dash through the campus, and you don't seem to have your satchel with you.' Julian enquires worriedly, casting curious glances at why you and the collie are scrabbling about on the floor. Sylvia hurriedly explains the same story she just told you, her paws creeping closer to her oozing pussy.";
		say "     Julian's eyes widen, and he steps into the room before closing the door, hiding the collie girl's predicament from any passerby. He reaches into his pocket and passes her a small syringe filled with orange liquid. 'That's my last one. I'll ask the twins to make another hospital run, just in case,' Julian tells her. Relief flooding her face, Sylvia flicks the tip before pulling her skirt off and stabbing the needle into her thigh. While the effects of her arousal have lessened, the lips of her cunt are still damp with her juices, and she still pants with need. 'Julian, while I would have preferred that this wasn't so desperate, I'm going to need more help. Would you... mount me? I fear that I have been sent into heat,' the collie girl pleads, her pussy clenching. Shocked, Julian hesitantly agrees, pulling his trousers and shirt off and placing them on her bed. Sylvia then turns to you. 'I'm very grateful for your help but I think I'm going to need Julian to help me and from your previous reactions I gather you won't want to be involved so could we have some privacy? I'll make it up to you later.";
		WaitLineBreak;
		say "     You wish them well and leave them to their coupling. As you close the door, you hear a yip of pleasure.";
		now resolution of Unnatural Heat is 13; [FPref, Let her look]
	else: [search bag]
		LineBreak;
		if carried of libido suppressant > 0: [present]
			say "     Knowing that time is of the essence, you place your bag on the bed and start searching through. It doesn't take you long to find what you are looking for. Grabbing the syringe, you shout to Sylvia that you've got one. She quickly crawls over to you and grabs it from your proffered hand. Suddenly, a knock interrupts your search and you both turn around. In the doorway is a very concerned looking wolf whom you recognize as Julian. 'Are you alright Sylvia? I saw you dash through the campus, and you don't seem to have your satchel with you.' Julian enquires worriedly, casting curious glances at why you and the collie are scrabbling about on the floor. Sylvia hurriedly explains the same story she just told you, her paws fiddling with the syringe.";
			LineBreak;
			say "[bold type]You lose one libido suppressant![roman type][line break]";
			decrease carried of libido suppressant by 1;
			say "     Julian's eyes widen, and he steps into the room before closing the door, hiding the collie girl's predicament from any passers-by. Seeing what is in her hands, he lets out a sigh and relaxes slightly. 'It's a good thing your friend had some, I'm down to my last one. I'll ask the twins to make another hospital run, just in case.' Julian addresses the collie. With a grateful glance at you, Sylvia flicks the tip before pulling her skirt off and stabbing the needle into her thigh. While the effects of her arousal have lessened, the lips of her cunt are still damp with her juices, and she still pants with need. 'Julian, while I would have preferred that this wasn't so desperate, I'm going to need more help. Would you... mount me. I fear that I have been sent into heat,' the collie girl pleads, her pussy clenching. Shocked, Julian hesitantly agrees, pulling his trousers and shirt off and placing them on her bed. Sylvia then turns to you. 'I'm very grateful for your help but I think I'm going to need Julian to help me and from your previous reactions I gather you won't want to be involved so could we have some privacy? I'll make it up to you later.";
			say "     You wish them well and leave them to their coupling. As you close the door, you hear a yip of pleasure.";
			now resolution of Unnatural Heat is 14; [FPref, Searched your bag, Suppressant found]
		else: [none]
			LineBreak;
			say "     Knowing that time is of the essence, you place your bag on the bed and start searching through. It doesn't take you long to realize that you don't have any. Deciding that helping her look would be the next best option, you kneel and begin to help her search. You peer under the desk and the bed, before joining her in searching the contents of her desk. She has a surprising number of objects stashed in the drawers, with things such as pens, USB drives, and a dildo crammed in together. Suddenly, a knock interrupts your search and you both turn around. In the doorway is a very concerned looking wolf whom you recognize as Julian. 'Are you alright Sylvia? I saw you dash through the campus, and you don't seem to have your satchel with you.' Julian enquires worriedly, casting curious glances at why you and the collie are scrabbling about on the floor. Sylvia hurriedly explains the same story she just told you, her paws creeping closer to her oozing pussy.";
			say "     Julian's eyes widen, and he steps into the room before closing the door, hiding the collie girl's predicament from any passers-by. He reaches into his pocket and passes her a small syringe filled with orange liquid. 'That's my last one. I'll ask the twins to make another hospital run, just in case.' Julian tells her. Relief flooding her face, Sylvia flicks the tip before pulling her skirt off and stabbing the needle into her thigh. While the effects of her arousal have lessened, the lips of her cunt are still damp with her juices, and she still pants with need.' Julian, while I would have preferred that this wasn't so desperate, I'm going to need more help. Would you... mount me. I fear that I have been sent into heat,' the collie girl pleads, her pussy clenching. Shocked, Julian hesitantly agrees, pulling his trousers and shirt off and placing them on her bed. Sylvia then turns to you. 'I'm very grateful for your help but I think I'm going to need Julian to help me and from your previous reactions I gather you won't want to be involved so could we have some privacy? I'll make it up to you later.";
			WaitLineBreak;
			say "     You wish them well and leave them to their coupling. As you close the door, you hear a yip of pleasure.";
			now resolution of Unnatural Heat is 15; [FPref, Searched your bag, Suppressant not found]
	now hpf of Sylvia is 3; [helped with heat]

[
Table of GameEventIDs (continued)
Object	Name
Sylvia City Research One	"Sylvia City Research One"

Sylvia City Research One is a situation. [Huskies]
Prereq1 of Sylvia City Research One is Beach Field Research.
Prereq1Resolution of Sylvia City Research One is { 1, 2 }.
The sarea of Sylvia City Research One is "Outside".

Instead of resolving Sylvia City Research One:
	SylviaCityResearchOneEvent;

to say SylviaCityResearchOneEvent:
	say "     As you wander along down the street, you notice ";
	[remember to cater for male of female being banned]

Table of GameEventIDs (continued)
Object	Name
Sylvia City Research Two	"Sylvia City Research Two"

Sylvia City Research Two is a situation. [Hyenas]
Prereq1 of Sylvia City Research Two is Beach Field Research.
Prereq1Resolution of Sylvia City Research Two is { 1, 2 }.
The sarea of Sylvia City Research Two is "Outside".

Instead of resolving Sylvia City Research Two:
	SylviaCityResearchTwoEvent;

to say SylviaCityResearchTwoEvent:
	say "     ";


[ Beach - Feral Sea Dragons, Otters ] [3]
[ Campus - Football Wolfman (Septus), Satyrs and Naiads ] [1]
[ Capitol - Ebonflame Draken, Orc ] [5]
[ Forest - Wolves, Elves ] [2]
[ High Rise - Peacock, Poodle ] [2]
[ Hospital - Jaguar Orderly, Vixen Nurse ] [3]
[ Junkyard - Feral Mutt, Hydra ] [4]
[ Sewer - Demon Brute, Komodo Dragon ] [5]
[ Museum - Feral Gryphon, Greek Nymph ] [2]
[ Outside - Huskies, Hyenas, Wyverns ] [1]
[ Park - Felinoid and Felines, Black Equinoid ] [3]
[ Plains - Centaur, Minotaur, Behemoth ] [4]
[ Red Light District - Kobolds, Snow Leopard ] [2]
[ Warehouse - Pegasus, Spidertaur ] [2]
[ Zoo - Cheetahs, Bird of Paradise ] [3]
]
Sylvia ends here.


[Various Companions brought to Sylvia]

[Jogging Event]

[Study of others]

[Buying a dog]
