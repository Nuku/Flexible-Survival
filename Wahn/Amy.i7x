Version 1 of Amy by Wahn begins here.
[Version 1 - Put into its own file]


[ Amy, the husky                                                        ]
[                                                                       ]
[ HP of Amy                                                             ]
[   0: starting state, not born yet                                     ]
[   1: in the library, still young mentally                             ]
[   2: in the library, matured                                          ]
[  10: in the library, told the player she's horny                      ]
[  11: in the library, fucked                                           ]
[  12: in the library, has puppies                                      ]
[  90: in the abandoned house, virgin                                   ]
[  91: in the abandoned house, player fucked her for the first time     ]
[ 100: removed from the game (lost somewhere)                           ]
[                                                                       ]
[ Lust of Amy (pregnancy timer)                                         ]
[     0: not pregnant                                                   ]
[  1-12: visibly pregnant by the player                                 ]
[ 13-24: invisibly pregnant by the player                               ]
[                                                                       ]
[ Libido of Amy (puppy counter)                                         ]
[                                                                       ]
[ Thirst of Amy (relationship with Xerxes)                              ]
[   0: nothing happened                                                 ]
[   1: Xerxes fucked her                                                ]
[  99: player forbade Xerxes to get close to Amy                        ]
[                                                                       ]
[ level of Amy (relationship with the Felinoid)                         ]
[   0: nothing happened                                                 ]
[   1: he fucked her                                                    ]
[  99: player warned Amy about the felinoid's musk                      ]
[                                                                       ]
[ Xp of Amy (relationship with Fang)                                    ]
[   0: nothing happened                                                 ]
[   1: Fang fucked her                                                  ]
[  99: player forbade Beta Fang to get close to Amy                     ]
[                                                                       ]
[ Dexterity of Amy (relationship with Elijah)                           ]
[   0: nothing happened                                                 ]
[   1: Good Elijah had sex with her                                     ]
[  51: Evil Elijah had sex with her                                     ]
[  99: player didn't approve Elijah/Amy sex                             ]
[                                                                       ]
[ SvenAmySex (relationship with Sven)                                   ]
[   0: nothing happened                                                 ]
[   1: Sven got ordered to satisfy Amy's needs                          ]
[  99: Sven sent off without sex when he was watching Amy               ]
[                                                                       ]
[ BrutusAmySex (relationship with Brutus)                               ]
[   0: nothing happened                                                 ]
[   1: cleansed Brutus fucked her                                       ]
[  51: she got to use evil Brutus as a sex toy                          ]
[                                                                       ]
[ SnowAmySex (relationship with Brutus)                                 ]
[   0: nothing happened                                                 ]
[   1: Snow fucked her                                                  ]
[  99: player stepped in before Snow could fuck Amy                     ]


Amy is a woman. The hp of Amy is usually 0.
The description of Amy is "[AmyDesc]";
The conversation of Amy is { "Woof." };
lastfuck of Amy is usually 555.
AmyNewPuppies is a number that varies. AmyNewPuppies is usually 0.
lastAmySpotted is a number that varies. lastAmySpotted is usually 255.
AmyMaturityCounter is a number that varies.
SvenAmySex is a number that varies.
BrutusAmySex is a number that varies.
SnowAmySex is a number that varies.
IcarusAmySex is a number that varies.

instead of conversing the Amy:
	if (hp of Amy is 1):   [child-like]
		say "     Amy says [one of]'This place is soo big. I wouldn't have believed it can exist if you hadn't brought me here.'[or]'You're really nice.'[or]'Woof!'[or]'I like you.'[or]'Some of the books here smell funny.'[at random]";
	otherwise if hp of Amy is 2 or hp of Amy is 10:    [matured]    
		say "     Amy says [one of]'Thanks for bringing me here. I realize now how dangerous our trip through the city was.'[or]'I wonder how mother is doing. I wasn't with her all that long, but now that I think back, she didn't have anything on her mind except... well, sex.'[or]'Woof! Woof!' Then she laughs and adds 'Just kidding.'[or]'So much interesting stuff to read in here...'[or]'How were things before the nanites spread? The stories in the books seem... more peaceful, mostly.'[at random]";
	otherwise if (hp of Amy is 11):		[fucked]
		say "     Amy says [one of]'Thanks for bringing me here. I realize now how dangerous our trip through the city was.'[or]'I wonder how mother is doing. I wasn't with her all that long, but now that I think back, she didn't have anything on her mind except... well, sex.'[or]'Woof! Woof!' Then she laughs and adds 'Just kidding.'[or]'So much interesting stuff to read in here...'[or]'How were things before the nanites spread? The stories in the books seem... more peaceful, mostly.'[or]I can't stop thinking about the last time with you. Could we do that again?[or]I sometimes get all wet just thinking about sex. I guess that's something I inherited from mom, hm?[at random]";
	otherwise if (hp of Amy is 12):		[has puppies]
		say "     Amy says [one of]'Thanks for bringing me here. I realize now how dangerous our trip through the city was.'[or]'I wonder how mother is doing. I wasn't with her all that long, but now that I think back, she didn't have anything on her mind except... well, sex.'[or]'Woof! Woof!' Then she laughs and adds 'Just kidding.'[or]'So much interesting stuff to read in here...'[or]'How were things before the nanites spread? The stories in the books seem... more peaceful, mostly.'[or]'I can't stop thinking about the last time with you. Could we do that again?'[or]'I sometimes get all wet just thinking about sex. I guess that's something I inherited from mom, hm?'[or]'One of the pups shredded a book - I hope that's not too bad.'[or]'Aren't the little ones cute?'[or]'I can't wait to do it again with you.'[or]'One of the pups shredded a book - I hope that's not too bad.'[or]'Aren't the little ones cute?'[or]'Thanks for knocking me up - I love having your puppies.'[at random]";
	otherwise:
		say "ERROR-Amy-[hp of Amy]C: She isn't in one of the states she should be in! Please report how you got to this message.";
	
to say AmyDesc:
	say "     Amy is a young and beautiful anthro canine, her body covered in soft, snowy fur. She has a slim, feminine muzzle and perky, overly large ears along with a large, fluffy husky tail. [if hp of Amy < 12]Her chest bears two firm and grope-able B cup breasts along with two smaller A cup pairs of breasts underneath them. [otherwise]Her chest bears two firm and grope-able C cup breasts along with two smaller B cup pairs of breasts underneath them. They all ooze small droplets of milk. [end if][if Lust of Amy > 12]There is a kind of special glow to her, and she seems to be very happy and fulfilled right now. [otherwise if Lust of Amy > 0]Her belly bulges in obvious pregnancy, making her a very content and happy husky.[end if][line break]";
	if hp of Amy is 1:
		say "     Her character is rather child-like, which might have something to do with having been born not all that long ago. She doesn't wear any clothing and usually moves around on all fours like a real dog.";
	otherwise:
		say "      Having had time to read quite a bit in the library, Amy has visibly matured compared to how she acted when you brought her here. By now, she's taken up acting more like a normal human, a glint of intelligence in her eyes. She also no longer moves on all fours, but walks on her two digitigrade legs - although she still doesn't seem to see the point in clothing, preferring to be naked except for her fur.";
	if hp of Amy is 12:
		if Libido of Amy is 1:
			say "     On and around the mattress that serves as Amy's bedding, her firstborn puppy capers about, playfully exploring and looking for new interesting things. His mother[if Lust of Amy > 0 and Lust of Amy < 13], already pregnant with a new litter,[end if] is busy watching over him, but also immensely happy at having a child.";
		otherwise if Libido of Amy > 1:
			say "     On and around the mattress that serves as Amy's bedding, her [Libido of Amy] puppies caper about, playing with each other and exploring for new interesting things. Their mother[if Lust of Amy > 0 and Lust of Amy < 13], already pregnant with the next litter[end if] is quite busy riding herd on them all, but also immensely happy at having these children.";
		
The scent of Amy is "     Amy smells a bit of husky - and a ready and fertile one at that. The scent makes you pretty horny - especially after she licks your face when you come close to smell her.";

An everyturn rule:
	if Lust of Amy is 1:
		now AmyNewPuppies is a random number between 1 and 3;
		if player is in the Grey Abbey Library:
			say "     Suddenly, Amy calls 'It's time!' and can be heard panting loudly. You rush over to the mattress serving as her bedding and see her lying on it, holding her bulging belly. There's a large patch of wetness under her spread legs, amniotic fluid from her womb showing that this isn't a false alarm. With nothing else you can do to help, you just sit beside Amy, holding her hand-paw and stroking her fur.";
			if AmyNewPuppies is 1:
				say "     Soon, her contractions come quicker and quicker, and then a single puppy slides out of her stretched vagina. It's rather large for a dog, but then - Amy isn't a normal husky either. You quickly grab a towel and wipe the newborn down, then put it up against the husky woman's breasts to drink. Hungrily sucking up milk, the little one quickly grows, arriving at early teen development before slowing down again.";
			otherwise if AmyNewPuppies is 2:
				say "     Soon, her contractions come quicker and quicker, and then a puppy slides out of her stretched vagina, quickly followed by another. They're rather large for newborn dogs, but then - Amy isn't a normal husky either. You quickly grab a towel and wipe the two down, then put them up against the husky woman's breasts to drink. Hungrily sucking up milk, the little ones quickly grow, arriving at early teen development before slowing down again.";
			otherwise if AmyNewPuppies is 3:
				say "     Soon, her contractions come quicker and quicker, and then a puppy slides out of her stretched vagina, quickly followed by another and another. They're rather large for newborn dogs, but then - Amy isn't a normal husky either. You quickly grab a towel and wipe the three down, then put them up against the husky woman's breasts to drink. Hungrily sucking up milk, the little ones quickly grow, arriving at early teen development before slowing down again.";
		otherwise:
			say "     You have a strange feeling in your body, as if you somehow just know that a new life has entered this world. Maybe you should go check on Amy in the library...";
		increase Libido of Amy by AmyNewPuppies;
		now AmyNewPuppies is 0;
		now hp of Amy is 12;
		increase score by a random number between 5 and 10;
		now Lust of Amy is 0;
	if Lust of Amy > 1:
		decrease Lust of Amy by 1;
	if AmyMaturityCounter is 1:
		now hp of Amy is 2;
		now AmyMaturityCounter is 0;
	if AmyMaturityCounter > 1:
		decrease AmyMaturityCounter by 1;
		
instead of going outside from Bunker while (hp of Amy is 1 and lastAmySpotted - turns > 3):
	move player to Grey Abbey Library;
	now lastAmySpotted is turns;
	if AmyMaturityCounter > 16:		[child-like]
		say "     As you come out of the bunker, you spot Amy standing on all fours over a book lying on the floor, just flipping a page with one of her paw-hands. It's a children's book, with many colorful pictures, but from the looks of it she's actually reading the descriptions too...";
	otherwise if AmyMaturityCounter > 8:
		say "     As you come out of the bunker, you see Amy sitting on her mattress, reading a book. Stepping a bit closer, you catch a glimpse of its cover - it's a [one of]detective story for younger teenagers, judging from the picture of a group of adolescents on it, one of whom brandishes a large magnifying glass.[or]book about fairy tales, containing collected stories from all kinds of places.[at random]";
	otherwise if AmyMaturityCounter > 1:
		say "     As you come out of the bunker, you see Amy sitting at one of the tables in the library, reading a book. Stepping a bit closer, you catch a glimpse of its cover - it's a a schoolbook. High school from the looks of, specifically [one of]a history[or]a biology[or]a chemistry[or]a physics[at random] book.";
				
instead of navigating Grey Abbey Library while (hp of Amy is 1 and lastAmySpotted - turns > 3):
	move player to Grey Abbey Library;
	now lastAmySpotted is turns;
	if AmyMaturityCounter > 16:		[child-like]
		say "     As you enter the library, you spot Amy standing on all fours over a book lying on the floor, just flipping a page with one of her paw-hands. It's a children's book, with many colorful pictures, but from the looks of it she's actually reading the descriptions too...";
	otherwise if AmyMaturityCounter > 8:
		say "     As you enter the library, you see Amy sitting on her mattress, reading a book. Stepping a bit closer, you catch a glimpse of its cover - it's a [one of]detective story for younger teenagers, judging from the picture of a group of adolescents on it, one of whom brandishes a large magnifying glass.[or]book about fairy tales, containing collected stories from all kinds of places.[at random]";
	otherwise if AmyMaturityCounter > 1:
		say "     As you enter the library, you see Amy sitting at one of the tables in the library, reading a book. Stepping a bit closer, you catch a glimpse of its cover - it's a a schoolbook. High school from the looks of, specifically [one of]a history[or]a biology[or]a chemistry[or]a physics[at random] book.";

instead of going outside from Bunker while ((hp of Amy > 1 and hp of Amy < 90) and (lastfuck of Amy - turns) > 12):
	move player to Grey Abbey Library;
	now lastfuck of Amy is turns + 4;
	if hp of Amy is 2:    [mature virgin]
		say "     As you come out of the bunker, Amy walks up to you, something clearly on her mind. She says 'I've been feeling some... urges lately, and read up a bit about that. There were some novels over in that section -' At that, she points to a large bookcase over on a nearby wall, bearing a sign with 'Romance' on it. As she does so, Amy's arm brushes against her breast, causing the young husky to moan before she can stop herself. Biting her lip, she continues 'I-I... would you be my first? It's supposed to be with someone you care for and - you saved me from those ferals out on the streets, brought me here, allowed me to learn so much.'";
		say "     The young husky woman is clearly aching to be fucked - but before you can say anything about it, she turns her head a bit and says 'Oh, but you were just going somewhere, weren't you? I don't want to distract you, so I'll just... be here and if you ever want to spend some time with me.'";
		now hp of Amy is 10;
	otherwise if hp of Amy is 10:
		say "     As you come out of the bunker, you see Amy sitting on her mattress, reading one of those romance novels with a pirate and a half-dressed woman on the front. She's slowly rubbing her breasts, moaning silently - which makes you remember her coming to talk to you about losing her virginity. The young husky woman is clearly aching to be fucked - you should probably just follow her invitation and take care of her - sometime soon.";
	otherwise:
		say "     As you come out of the bunker, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Maybe you should help her out with that...";
		
instead of navigating Grey Abbey Library while (lastAmySpotted - turns > 24 and libido of Amy > 3 and NadiaChickCounter > 3 and a random chance of 1 in 3 succeeds):
	now lastAmySpotted is turns;
	if Char-C of Nadia is "0":
		now Char-C of Nadia is "1";
		say "[npcNadiaintUpdate]";	
	move player to Grey Abbey Library;
	say "     Entering the library, you're treated to the sight of Nadia having descended to the library's first floor, the colourful avian woman having left the familiar comforts of her nest. The reason for that soon becomes clear: massed in front of her in what used to be an old reading area are a number of both Amy and Nadia's younger children, and the latter is putting her education to good use, holding an impromptu class of sorts. She reads to the youngsters from an array of books, teaching them some basic mathematics while Amy acts as her teaching assistant, nipping rowdy canine and avian kids alike into line and supplying her with class materials from the stacks. The husky herself watches the class between such activities, clearly intent on learning as much as she can, too.";
	say "     The sight of the odd impromptu class, carried out by the two mothers, is quite encouraging. Compared to the numerous feral mutants in the city, it's nice to know that at least some of the next generation are having what humanity they were born with reinforced as opposed to the other way around.";
			
instead of navigating Grey Abbey Library while (lastNadiaSpotted - turns > 12 and lust of Amy > 1 and lust of Amy < 13 and NadiaPregVisibility > 1):
	now lastNadiaSpotted is turns;
	move player to Grey Abbey Library;
	say "     Nadia's left her nest and come to the library's second floor, where she's fussing with Amy. The latter seems a little nervous, like a young woman being fitted for a particularly fine dress, and as it turns out, that's not too far from the truth.";
	say "     The two of them are standing a little way away from Amy's mattress, half-hidden by some shelves, and as you draw closer you realise what their secret little meeting is all about. Both of them are far along enough in their pregnancies that they're showing quite well. Nadia is obviously quite happy to have found another breeder as good-natured as she is, and hums happily to herself measuring the size of Amy's baby bump with a measuring tape she's found somewhere in the library. The husky fidgets nervously as Nadia fits the tape snugly about her waist, blushing when Nadia tells her how big she is around now.";
	say "     [WaitLineBreak]";
	say "     'I'm sure mine's bigger than yours!' Amy says, before taking the tape from Nadia and returning the favour.";
	say "     [line break]";
	say "     'No, I'm sure mine's bigger than yours!' Nadia retorts, but practically preens in pleasure when Amy tells her how much her pregnancy's grown.";
	say "     [line break]";
	say "     The back-and-forth goes on for a little while, both ladies clearly proud of their coming children, although the entire argument is quite playful - they're obviously teasing each other. As you leave, though, you catch a few snippets of their conversation:[line break]";
	let randomnumber be a random number from 1 to 6;
	if randomnumber is:
		-- 1:		
			say "     'I'll be bigger than you are before the puppies are born!'";
			say "     [line break]";
			say "     'That's not fair, you can have a whole litter at a go while I only have one egg at a time!'";
			say "     [line break]";
			say "     Amy sticks out her tongue at Nadia. 'Well, you do get extra heavy and get a head start on the next one as well, so we'll call it even on that.'";
		-- 2:		
			say "     'I've been feeling really, really hungry of late,' Nadia says, fluffing her feathers. 'Anything the chicks bring back in from the city is gone before I know it.'";
			say "     [line break]";
			say "     'But your tummy aside, you don't seem to have put on much weight.'";
			say "     [line break]";
			say "     Nadia pats her pregnancy happily. 'What can I say? I suppose I don't waste anything when I go about turning tasty treats into children.'";
		-- 3:		
			say "     'Recently, I've had a strange desire to have ice-cream,' Amy tells Nadia. 'But I'm not sure if I could even recognise it if I saw some. I mean, I've only seen pictures and read about it in the library's books. It's supposed to be delicious.'";
			say "     [line break]";
			say "     'It is, and it's quite a pity. It's likely that any ice-cream still out there in the city will have melted by now. Maybe we can have some after we're rescued.'";
			say "     [line break]";
			say "     Amy looks a little upset by this news, but nods. 'It's just odd. I've never seen or even smelled it for real, but somehow I know what it is, and that I should have some...'";
		-- 4:		
			say "     'The puppies are really pushing down on me,' Amy says as she runs her paws over the swell of her pregnancy. 'How do you stand getting so big so often?'";
			say "     [line break]";
			say "     'I'm not quite sure myself, let alone if it's something that can be learned,' Nadia replies. 'My body just handles each chick easier than the last.'";
			say "     [line break]";
			say "     'I'm sort of jealous.'";
		-- 5:		
			say "     '...So, you learned everything you know just from reading the books in the library?'";
			say "     [line break]";
			say "     Amy looks confused at Nadia's question. 'Yes. Is that so surprising?'";
			say "     [line break]";
			say "     'My word. I-I'm not exactly sure how I should feel about this...'";
		-- 6:		
			say "     'Have you ever experienced...you know, when you're trying to sleep at night and the puppies just won't quiet down inside you?'";
			say "     [line break]";
			say "     'It doesn't bother me, really,' Nadia says happily. 'In fact, it's actually quite comforting and reassuring, especially when I close my eyes and feel my little ones snuggling up inside me. Maybe you just need to think of it in a new light.'";
			say "     [line break]";
			say "     'All right then, I'll give it a try.' Amy sounds pretty unsure, though.";	
			
instead of navigating Grey Abbey Library while ((hp of Amy > 1 and hp of Amy < 90) and (lastfuck of Amy - turns) > 12):
	move player to Grey Abbey Library;
	now lastfuck of Amy is turns + 4;
	if hp of Amy is 2:		[mature virgin]
		say "     As you enter the library, Amy walks up to you, something clearly on her mind. She says 'I've been feeling some... urges lately, and read up a bit about that. There were some novels over in that section -' At that, she points to a large bookcase over on a nearby wall, bearing a sign with 'Romance' on it. As she does so, Amy's arm brushes against her breast, causing the young husky to moan before she can stop herself. Biting her lip, she continues 'I-I... would you be my first? It's supposed to be with someone you care for and - you saved me from those ferals out on the streets, brought me here, allowed me to learn so much.'";
		say "     The young husky woman is clearly aching to be fucked - but before you can say anything about it, she turns her head a bit and says 'Oh, but you were just going somewhere, weren't you? I don't want to distract you, so I'll just... be here and if you ever want to spend some time with me.'";
		now hp of Amy is 10;
	otherwise if hp of Amy is 10:		[mature virgin, told the player she's horny]
		say "     As you enter the library, you see Amy sitting on her mattress, reading one of those romance novels with a pirate and a half-dressed woman on the front. She's slowly rubbing her breasts, moaning silently - which makes you remember her coming to talk to you about losing her virginity. The young husky woman is clearly aching to be fucked - you should probably just follow her invitation and take care of her - sometime soon.";
	otherwise if hp of Amy > 10 and Xerxes is in Grey Abbey Library and thirst of Amy is 0:	[first interest of Xerxes in her]
		say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. A fact that hasn't gone unnoticed by someone else... you can see Xerxes standing on all fours not too far from the young husky, his eyes riveted on her naked form. The erection visible under his toned body shows that he's very interested indeed. Nevertheless, your well-behaved and trained dog doesn't act on his desires, just watching her intently.";
		say "     As you walk up besides him, the human dog gives you an exuberant greeting and licks your hand, then gives a little pleading whine[if lust of Xerxes > 2] followed by the question 'Master's Friend - Sex?'[end if] and another hungry look over at Amy. It seems pretty obvious that he'd love to be the one to fulfill Amy's current need.";
		say "     [line break]";
		say "Do you allow it and go ask Amy if she'd like to spend some time with your pet (Y), or forbid Xerxes to get close to her (N)?";
		if player consents:		[Amy+Xerxes Sex]
			say "     [line break]";
			say "     Walking towards Amy, she finally notices you when you're just a few steps away. She gives a high-pitched 'Oh', pulling her hands away from her crotch and sitting up before continuing sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand that she has these urges, then explain that she doesn't have to deal with them on her own if she'd rather have company. With a whistle, you call Xerxes, the human dog immediately appearing at your side, looking attentively from you to Amy. The young husky's eyes are immediately drawn to his hard cock and her libido flares up again. She gives you a beaming smile and a nod, then rolls over and gets on all fours, spreading her legs a bit as she presents herself to the transformed dog.";
			if lust of Xerxes >= 4:		[awesome/intelligent Xerxes]
				say "     You pat Xerxes shoulder and say 'Go for it' with a grin. Having gained intelligence to go along with his canine mind, he is able to hold back his instinctive desire to rut you hard and fast for a while, taking the time to run his hands over Amy's back and female curves first. He leans close against her back to cup two of the husky's breasts with his hands while moving his hips to position his shaft at her opening. Then, with a quick thrust accompanied by two persons very satisfied moans, he sinks his manhood into her drippingly moist pussy. Xerxes takes slower thrusts at first, enjoying the feel of Amy's hot, wet hole around his pulsing shaft. His hands roam over her[if lust of Xerxes < 7] almost as if he were petting Amy[otherwise], stroking and caressing Amy's body with growing adeptness[end if].  He nuzzles at the back of the young husky's neck, panting with a growing excitement that has his pace quicken in response.";
				say "     Xerxes fucks Amy with a relentless wild energy, his hard thrusts hitting very sensitive spots again and again, making her pant and yip in pleasure. This soon drives Amy's arousal to the max, giving her a mind-blowing orgasm that moistens Xerxes cock with even more slippery femcum. He obviously likes the feeling of that, as his growls of lust increase and he speeds up before plunging in one last time and filling Amy's womb with his human seed.";
			otherwise:	[basic Xerxes]
				say "     Almost before you're finished saying 'Go for it, boy', Xerxes is on top of Amy, his muscular chest against her back as he hugs her tightly and grinds his crotch against her body. Being a natural in the typical 'doggie-style', his shaft quickly finds her dripping opening and plunges deep into the husky's body. Xerxes fucks Amy with a relentless wild energy, his hard thrusts hitting very sensitive spots again and again, making her pant and yip in pleasure. This soon drives Amy's arousal to the max, giving her a mind-blowing orgasm that moistens Xerxes cock with slippery femcum. He obviously likes the feeling of that, as his growls of lust increase and he speeds up before plunging in one last time and filling Amy's womb with his human seed.";
			say "     As his cock and balls keep twitching with blast after blast of cum into his sexual partner, Xerxes just keeps holding on to Amy, panting with his head over her shoulder. Exhausted, the husky lowers herself to lie on her bedding, taking your human dog with her so they end up cuddled together on the mattress[if lust of Xerxes >= 4].  Raising his head to look at you for a moment, Xerxes mumbles 'Mmm... Master-Friend Amy nice' to you, then snuggles up to her with his arms around the young woman's chest[end if].";
			if Lust of Amy is 0:
				let AmyPregchance be a random number from 1 to 20;
				if AmyPregchance > 13:
					now Lust of Amy is 24;
			now lastfuck of Amy is turns;
			now lastfuck of Xerxes is turns;
			now thirst of Amy is 1;
		otherwise:		[Xerxes forbidden]
			say "     [line break]";
			say "     Shaking your head to the dog in the body of a human teenager, you take Xerxes to his cot, some distance away from Amy. After having him sit on it, you continue to tell him that he should stay away from Amy. Your pet gives a somewhat sad yip as he looks over at the naked husky again, then accepts his master's orders and lies down.";
			now thirst of Amy is 99;  [Xerxes/Amy sex forbidden]
	otherwise if hp of Amy > 10 and Felinoid Companion is tamed and level of Amy is 0:  [first interest of the Felinoid in her]
		say "     Entering the library, you see Amy walking towards her bedding with a book in hand, reading intently. Then suddenly, your felinoid companion moves into her way, giving a welcoming growl as he circles the young husky, rubbing his flank against her hips. Amy gives a pleased giggle at his presence and reaches down to pet him, rubbing behind his ears and down over his back, making the large feline purr almost as loud as an idling motor. He luxuriates in her touch, stretching so she can get to the best spots and brushing against her as often as he can. You can see Amy take a deep breath through her nose, giving a soft moan as she does so. Before long, the young husky is crouched down besides the big cat, her book lying forgotten on the ground while she strokes under his chin, her other hand on her crotch, caressing her open and quickly swelling pussy lips.";
		say "     [line break]";
		say "     Having been close to the felinoid and been in the influence of his stimulating musk yourself, you can see where this is going from a mile away. Do you let Amy get her first sexual experience with the large cat, or should you move in and put a stop to this? (Y = allow it, N = stop this) ";
		if player consents:  [felinoid fucks Amy]
			say "     [line break]";
			say "     Spellbound by the soothing purr, the soft touch of the felinoid's fur and his stimulating musk, Amy's arousal mounts higher and higher by the minute. It doesn't take much longer until she moves into position on all fours, her legs spread and tail held high to allow the felinoid access to her pussy. Giving a satisfied rumbling purr, the large cat moves to sniff Amy's pussy, then licks over her female parts with its wide tongue. Several licks later, he moves further up, running his tongue over the young husky's back fur and then her neck.";
			say "     Now standing over the smaller shape of Amy, his belly-fur touching her back, the felinoid is in the perfect position to fuck her. Lowering his hind legs a bit, your feline companion rubs his spined cock up and down the inside of husky girl's legs until he soon finds Amy's tight opening and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking her with powerful and deep thrusts. Moans, barks and growls of lust fill the library and you move a bit closer to watch the show.";
			say "     [WaitLineBreak]";
			say "     After quite a while of hot and heavy fucking, Amy's moans and noises rise up to a loud pleased yip, announcing her orgasm to anyone in hearing range. Visibly satisfied in making her come, the felinoid isn't far behind, burying his hard cock all the way in the young husky's pussy and holding still, only his balls pulsing as they fill her up with his seed. When he finishes cumming, the big cat pulls out and throws himself on the floor right at that spot to lounge in satisfaction. Amy kneels down beside him to lick his cock clean, then joins him on the floor, snuggling up against his warm furred shape.";
			if Lust of Amy is 0:	[not pregnant]
				let AmyPregchance be a random number from 1 to 20;
				if AmyPregchance > 13:
					now Lust of Amy is 24;  [24 turns till birth]
			now lastfuck of Amy is turns;
			now level of Amy is 1;
		otherwise:  [stop this]
			say "     [line break]";
			say "     Quickly walking over there, you take Amy softly be the arm, pulling her up and walking some distance away from the felinoid with her. As she stands there, no longer in the immediate influence of your feline companion, she starts to wind down again, though she is still breathing rather heavily and stroking over her breasts with her fingers as you go pick up her book. The felinoid purrs and rubs his shoulder against you as you do so, and knowing him, you just give him a quick pat on the head, holding your breath until you stand back up. 'Not her', you tell your companion, who gives a disappointed mew, then stalks off. As you're sure that he'll try again no matter what, you warn Amy not to get too close to him in the future when you give her the book back.";
			now level of Amy is 99;
	otherwise if hp of Amy > 10 and Fang is in Grey Abbey Library and XP of Amy is 0:	[first interest of Fang in her]			
		say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Her head is leaned back, eyes closed, and she moans silently to herself. Looks like she's pretty horny, aching for a fuck. A fact that hasn't gone unnoticed by someone else... close to her, slowly stalking forward is Fang, his canine shaft hanging erect under his black-furred body. Then suddenly, he pounces the young husky, making her give a surprised yip that leads over to a lust-filled gasp as the wolf sinks his cock deep into her pussy with the first thrust. As deep in the grip of her own libido as she is, Amy just accepts the virile male on top of her, moaning as he starts rutting her with urgent movements.";
		if hp of Fang < 3:  [Beta Fang can be stopped]
			say "     [line break]";
			say "     Do you allow your pet wolf to fuck Amy, or do you want to put an end to this? (Y = let him, N = stop him) ";
			if player consents:	[Fang gets to fuck her]
				say "     [line break]";
				say "     Walking up to them, you pat the wolf's back and lean down to rub his furry balls as he thrusts into her again and again, feeling them lie heavy in your hand, full of the load he's got prepared for Amy's womb. 'Mmm... yes,' the aroused husky girl cries out as the wolf keeps pounding into her like a wild animal, 'Harder! Faster!' You slip your fingers to Amy's wet folds, caressing them as Fang's hard canine cock slides in and out.";
				if cocks of player > 0 and anallevel > 1:  [male/herm and anal sex allowed]
					say "     Being so close to the hot action of their mating, your own lust rears its head, giving you an almost painfully hard cock tenting your pants. The urge to bury it into the gripping embrace of Fang's tight asshole rises inside you. Do you do so? ";
					if player consents:  [player fucks Fang]
						say "     [line break]";
						say "     Quickly pulling off your clothes and moving in behind Fang, you get your throbbing cock lined up with his tailhole, then push it into his tight pucker. Fang releases a soft whimper, but takes your cock easily enough in his experienced hole and doesn't let up at with his own thrusts into the wet pussy under him. Amy, meanwhile, moans loudly as your pounding against Fang's ass presses the wolf's shaft even deeper into her body. She rubs her hand-paws over his neck and ears, pulling his head down to trade licks, muzzle to muzzle.";
						say "     Fang licks her face and fucks her even harder, slamming his swollen knot against Amy's sore pussy until it stretches open enough to let that oversized knot pop in and tie with her. The black wolf howls triumphantly when this happens, unleashing a hot rush of semen into Amy, filling your husky girl with his ample load as he drains his large, virile balls into her. She writhes beneath him in ecstasy, cumming hard as well from taking your pet wolf's seed. On his back-end, you feel the wolf's insides twitch around your manhood with each burst of his cum into Amy, quickly driving you towards your own orgasm. As his muscles almost jerk you off as he spurts another and another blast of his seed, you can hold back no longer and blow your load deep into the wolf's bowels, claiming him once more as your own.";
					otherwise:  [just watch and touch]
						say "     [line break]";
						say "     Being content to just watch and touch them a bit for now, you stay right beside Fang and Amy on the mattress, caressing her breasts and body as well as his balls. He pounds into her hard and fast while the young husky's needy cunt grips and squeezes around that feral wolf cock. She moans about how strong your pet wolf is, how virile, to breed her like the bitch she is. Clearly pleased by those words, Fang licks her face and fucks her even harder, slamming his swollen knot against Amy's sore pussy until it stretches open enough to let that oversized knot pop in and tie with her. The black wolf howls triumphantly when this happens, unleashing a hot rush of semen into Amy, filling your husky girl with his ample load as he drains his large, virile balls into her. She writhes beneath him in ecstasy, cumming hard as well from taking his canine seed. When his knot goes down, he pops his cock from her, letting his excess semen flow out to soak into the mattress, leaving the scent of it upon Amy and her bedding as a reminder to you and others that he bred her.";
				otherwise:  [just watch and touch]
					say "     Being content to just watch and touch them a bit for now, you stay right beside Fang and Amy on the mattress, caressing her breasts and body as well as his balls. He pounds into her hard and fast while the young husky's needy cunt grips and squeezes around that feral wolf cock. She moans about how strong your pet wolf is, how virile, to breed her like the bitch she is. Clearly pleased by those words, Fang licks her face and fucks her even harder, slamming his swollen knot against Amy's sore pussy until it stretches open enough to let that oversized knot pop in and tie with her. The black wolf howls triumphantly when this happens, unleashing a hot rush of semen into Amy, filling your husky girl with his ample load as he drains his large, virile balls into her. She writhes beneath him in ecstasy, cumming hard as well from taking his canine seed. When his knot goes down, he pops his cock from her, letting his excess semen flow out to soak into the mattress, leaving the scent of it upon Amy and her bedding as a reminder to you and others that he bred her.";
				if Lust of Amy is 0:	[not pregnant]
					let AmyPregchance be a random number from 1 to 20;
					if AmyPregchance > 13:
						now Lust of Amy is 24;  [24 turns till birth]
				now lastfuck of Amy is turns;
				now XP of Amy is 1;  [he fucked her and may do it again]
			otherwise:	[stop Fang]
				say "     [line break]";
				say "     Rushing forward, you grab Fang by the scruff of his neck and on his back, pulling him off the young husky under him and throwing him back from her. Snarling at being stopped from mounting a horny female, the black wolf shows his teeth for a second, then whines and tucks in his tail in submission a moment later as you give him your best domineering stare and remind him of his position as your Beta. Turning to Amy, you ask if she's okay, getting a moaned 'Yes, but I need someone to fuck me - now!' as an answer. Getting hammered by a randy wolf for a moment sent Amy's body into overdrive and she really needs someone to take up the slack, and quickly.";
				if cocks of player > 0:
					say "     [WaitLineBreak]";
					say "     Well, you can't just leave her hanging now, can you? Quickly sliding off your clothes, you step up and kneel between Amy's legs, then lean over her. As you start making out hungrily, your [cock of player] shaft comes to rest hotly against her pubic mound. Amy moans as you take hold of your cock, rubbing its head over her pussy lips, then put its tip between them. Sliding into her wet and tight vagina in one smooth move, you grunt deeply as you bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, meanwhile seeking out Fang with a hard stare and growling to him to show that Amy is yours. Then you start pulling out a bit and thrusting back in, fucking the young husky.";
					say "     Amy is a very enthusiastic sex-partner, holding you close with her arms and making out as you pound into her. She even wraps her legs around your hips to pull your crotch down harder against her, moaning as your balls hit her buttcheeks when you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [cock of player] shaft inside her pussy[if cock length of player > 10] until it pushes against her cervix[otherwise].[end if] Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
					say "     [line break]";
					say "  	  Immensely satisfied, you stay like that on top of her for a while, then pull your softening cock out and lie down with Amy. Spooning her, you run a hand through her soft belly fur, circling her nipples with your finger, then just hold her.";
					if Lust of Amy is 0:	[not pregnant]
						let AmyPregchance be a random number from 1 to 20;
						if AmyPregchance > 13:
							now Lust of Amy is 24;  [24 turns till birth]
					now lastfuck of Amy is turns;
					now XP of Amy is 99;  [no Amy-pussy for Fang]
				otherwise:
					say "     [WaitLineBreak]";
					say "     Well, you can't just leave her hanging now, can you? Quickly sliding off your clothes, you step up and kneel between Amy's legs, then lean over her. As you start making out hungrily, you move your hand down her naked body, stroking over her breasts and soft-furred stomach to arrive at her crotch. Carefully spreading the husky's sensitive pussy lips with your fingers, you rub over her clit, making her moan in pleasure. While you proceed to push your fingers into her wet pussy, stroking the aroused husky's insides, you look over at Fang, still standing nearby in his submissive stance. 'Fetch' you call out to him, pointing at the dildo you keep on a nearby shelf for use on Amy. The black wolf complies, delivering the rubber sex toy to you, though not without a whine that it'll go where he's been forbidden.";
					say "     Grinning, you hold out the dildo to Fang to have him lick it, then send him off to his usual spot with a wave of your hand. He's only a pet after all, something he clearly needs a reminder of. Bringing the dildo to Amy's crotch next, you rub its head over her pussy lips and push it in between them, going deeper and deeper. She moans loudly as you sink the whole rubber shaft into her, up till the balls as its base touch her crotch. Taking hold of the sex toy there, you pull it out halfway again, then thrust it back into her, fucking Amy with it and rubbing her inner walls with the hard rubber shaft. Fucking the husky woman is a lot of fun, though a bit tiring for your arm, so you switch off your left and right hands as you take care of the insatiably horny husky. Accompanied by moans and gasps to go harder and faster, Amy's libido builds up higher and higher and her arousal finally culminates in a pretty noisy orgasm. Giving a lust-filled howl as she comes, Amy writhes on her mattress, her femcum glistening wetly on the rubber shaft of the dildo you're fucking her with.";
					say "     [line break]";
					say "  	  Satisfied in having taken care of her, you leave the dildo buried in her pussy and lie down with Amy on her mattress. Spooning her, you run a hand through her soft belly fur, circling her nipples with your finger, then just hold her.";
					now lastfuck of Amy is turns;
					now XP of Amy is 99;  [no Amy-pussy for Fang]
		otherwise:  [Alpha Fang fucks her for sure]
			say "     You stand there and watch as Fang mounts Amy, as is his right as Alpha over you - and now her as well. He pounds into her hard and fast while the young husky's needy cunt grips and squeezes around that feral wolf cock. She moans about how strong your big alpha is, how virile, to breed her like the bitch she is. Clearly pleased by those words, Fang licks her face and fucks her even harder, slamming his swollen knot against Amy's sore pussy until it stretches open enough to let that oversized knot pop in and tie with her. The black wolf howls triumphantly when this happens, unleashing a hot rush of semen into Amy, filling your husky girl with his ample load as he drains his large, virile balls into her. She writhes beneath him in ecstasy, cumming hard as well from taking your master's seed. When his knot goes down, he pops his cock from her, letting his excess semen flow out to soak into the mattress, leaving the scent of it upon Amy and her bedding as a reminder to you and others that she belongs to him now.";
			if Lust of Amy is 0:	[not pregnant]
				let AmyPregchance be a random number from 1 to 20;
				if AmyPregchance > 13:
					now Lust of Amy is 24;  [24 turns till birth]
			now lastfuck of Fang is turns;
			now lastfuck of Amy is turns;
			now XP of Amy is 1;
	otherwise if hp of Amy > 10 and Elijah is bunkered and hp of Elijah > 3 and Dexterity of Amy is 0:	[first interest of Elijah in her]
		if hp of Elijah is 99:  [evil Elijah]
			say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. As you stand there, eyes riveted on her naked form, you suddenly hear a voice from behind you say 'Quite a horny bitch, the little husky you've brought here.' Elijah steps into view besides you a second later, giving you the usual expression of vain handsomeness, with his Adonis-like body only dressed in skin-tight leather pants and the pair of large black wings behind his back slightly spread. He claps a hand on your shoulder in an artificially comradely gesture, continuing with an awfully chummy-sounding 'I'm sure you don't have any problems with your good buddies having a go with her either? No? Good.' Having said that last bit in one go, without waiting a second for a response, he then starts walking towards the aroused husky, one hand rubbing his crotch through the tight leather pants.";
			say "     [line break]";
			say "Do you just stand back and watch the fallen angel approach Amy (Y), or explain to your 'buddy' that he should keep his distance from her (N)?";
			if player consents:		[Amy+Evil Elijah Sex]
				say "     [line break]";
				say "     Pulling off his boots, quickly followed by his leather pants, the now completely naked Elijah silently walks over to Amy. With her head leaned back and eyes closed as she revels in lustful fantasies, Amy doesn't even know the fallen angel is there until he's kneeling between her legs and reaches out to cup one of her breasts. With a surprised yip, Amy asks 'Who are you, what' - then she can't help but moan as he brings his other hand against her pussy, stroking her nether lips and clit with skillful fingers. 'Hush, my sweet little bitch. I'm here to give you what you need...' Elijah replies, then presses a kiss on the husky girl's lips as she tries to say something, just melting away any resistance she might have had left.";
				say "     As Amy starts to eagerly make out with him, the fallen angel aligns his erect shaft with her swollen and dripping pussy, then thrusts forward, sinking himself deep into her. There is a combined grunt and yip from the both of them as Elijah slides into Amy, rubbing against all the right spots. They gasp in lust as their hips touch, all of him now deep inside the young husky's body. Pushing his upper body up on his arms, the fallen angel gives a wide grin at Amy, then starts moving his hips, thrusting his cock into her again and again. He soon starts giving lustful grunts as he starts to pound more forcefully into her, driving his shaft deep in rapid movements. It's rather overwhelming for Amy, reducing her to gasping and moaning in pleasure as he starts using all kinds of other tricks, stroking her body in just the right spots while his cock finds pleasure zones she didn't even know she had. Must be something he learned from all those incubi and succubi he often picks up out in the city.";
				say "     [WaitLineBreak]";
				say "     Elijah indulges himself with Amy for a long time, keeping her in a pleasant lustful buzz and giving her more than one orgasm, but at some point his self-control just is at an end. Giving a final satisfied moan, he drives his cock into her pussy as deep as he can and fills Amy's womb with spurt after spurt of his fertile seed. With a satisfied sigh, he pulls out of her and gets up, his load trickling out of her stretched pussy to soak into her bedding. Not even looking back as he leaves her, the dark angel then picks up his pants and boots, sauntering over to you in absolutely shameless nakedness. He gives you a wide grin and says 'Nice pussy, can't wait for the next time. Oh, and you really should put a collar and leash on her... wouldn't want such a fine bitch to run off.' With that, he walks away to go clean himself up.";
				if Lust of Amy is 0:
					let AmyPregchance be a random number from 1 to 20;
					if AmyPregchance > 13:
						now Lust of Amy is 24;
				now lastfuck of Amy is turns;
				now lastfuck of Elijah is turns;
				now Dexterity of Amy is 51;
			otherwise:		[Evil Elijah forbidden]
				say "     [line break]";
				say "     Shaking off the effects of his slick charm and quick-talking, you hurriedly step forward, grabbing Elijah by the arm before he's more than a third towards Amy. Bringing the dark angel to a stop, you tell him in no uncertain terms that he should keep his hands off Amy. For a second, annoyance and anger flicker over his handsome face, then his features smooth out again as he brings himself under control. 'As you wish. And of course, she's not really trained yet after all. No leash or even a collar.' He shrugs and continues 'I guess I'm off a bit then, gonna hunt me down some sweet little thing and give her - or him - a good pounding.' With that, the dark angel saunters to the library entrance and goes out.";
				now Dexterity of Amy is 99;  [Elijah/Amy sex forbidden]
		otherwise:  [good Elijah]
			say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. As you stand there, eyes riveted on her naked form, you suddenly hear a voice from your left say 'How was it out there today? Not to bad, I hope? Hey, what are you looking at -' It's Elijah, walking up between two long bookshelves. As he clears the shelf blocking his view on Amy and turns his head towards her, his eyes get wide and he can't take his gaze off her. Which leads to him literally bumping into you as he's still walking while staring at the husky girl. 'Oh, err - sorry. I was just...' Elijah stammers, his cheeks getting a bit red as he looks over to Amy again, then quickly down - which only draws your attention to the boner that has sprung up in his jeans, tenting them quite a bit. 'I - I got to go. Later...' he brings out, then starts turning, no doubt wanting to run off to hide his arousal and beat off somewhere quiet.";
			say "     [line break]";
			say "Do you want to stop him and introduce Elijah - intimately - to Amy (Y), or just let him go (N)?";
			if player consents:		[Amy+Elijah Sex]
				say "     [line break]";
				say "     Grabbing Elijah by the arm, you hold on to him until he stops to weakly pull away, then say that you'll introduce him with a wink. Accompanied by the still blushing angel, you walk towards Amy and she finally notices you when the two of you are just a few steps away. She gives a high-pitched 'Oh', pulling her hands away from her crotch and sitting up before continuing sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand and it's nothing to be ashamed of. Then you push Elijah a step forward and introduce the two of them to each other. With the young husky looking up at him, the angel stammers out 'Hi - you - you're beautiful'.";
				say "     There's a moment of silence as they just look at each other, with sexual tension almost palpable in the air between them, then you've got your arms around Elijah from behind and are undoing the button and zipper of his jeans. A quick pull downward later, your handsome angel stands bare-ass naked - and quite erect - in front of Amy. Telling Amy that she doesn't have to deal with her natural needs alone, you give Elijah a playful slap on the butt and tell them to have fun together. Then you move over to a nearby reading table, grab one of the chairs and sit down in a spot with a good view.";
				say "     [WaitLineBreak]";
				say "     Amy is the first to respond to your sudden exposure of Elijah's hard shaft, moaning softly as she lays eyes on his heavenly perfect manhood. Her hands move to brush over her four breasts and she means loudly, spreading her legs a bit and exposing her moist and swollen pussy for him. Now quickly succumbing to the grasp of his arousal, Elijah just gives a lustful pant, then sinks to his knees in front of the female husky and leans over her. Their lips meet and they start kissing hungrily, with his erection coming to lie hotly against her crotch. It's just a matter of moments until his rocking back and forth in their make-out-session puts the angel's cock right between her dripping pussy lips and he instinctively thrusts forward, sinking himself deep into her pussy.";
				say "     There is a combined grunt and yip from the both of them as Elijah slides into Amy, rubbing against all the right spots. They gasp in lust as their hips touch, all of Elijah now deep inside the young husky's body. After taking a deep breath, the handsome angel leans down again, giving Amy another kiss on the lips while his hips start moving, thrusting his cock into her again and again. And he's quite skillful in fucking her too - stroking and caressing her body as he goes along, nuzzling her four breasts and switching up with different positions that make his partner pant and howl in pleasure. Makes you wonder if he's found a copy of the Kama Sutra somewhere in the library or if he's just a natural...";
				say "     [WaitLineBreak]";
				say "     Elijah indulges Amy's needs for a long time, keeping her in a pleasant lustful buzz and giving her more than one orgasm, but at some point his self-control just is at an end. Giving a final satisfied moan, he drives his cock into her pussy as deep as he can and fills Amy's womb with spurt after spurt of his fertile seed. With a satisfied sigh, he just holds her against his chest afterwards, staying with the young husky to cuddle a bit on her mattress.";
				if Lust of Amy is 0:
					let AmyPregchance be a random number from 1 to 20;
					if AmyPregchance > 13:
						now Lust of Amy is 24;
				now lastfuck of Amy is turns;
				now lastfuck of Elijah is turns;
				now Dexterity of Amy is 1;
			otherwise:
				say "     [line break]";
				say "     Grinning at the antics of your handsome angel, you just let him go, though your thoughts stray to what he'll be doing to himself soon, sending a tingle of lust through your body. Maybe you should fuck him a bit more often, if just the sight of a masturbating Amy gets him this hot and bothered. Though it is quite a nice view, you have to admit...";
				now Dexterity of Amy is 99;
	otherwise if hp of Amy > 10 and Sven is bunkered and hp of Sven > 5 and hp of Sven < 50 and SvenAmySex is 0:	[first interest of Sven in her]				
		say "     Entering the library, you see Amy, sitting at one of the reading tables that have the library entrance in view with a book in her hands. When she notices you, she puts it down and gets up, walking towards you with something clearly on her mind. Judging from the cover of the book she was reading - a steamy romance novel with a pirate and a woman on the front - and the pronounced sway of her hips, you'd say she's in one of her frequent heat periods and pretty wound up with arousal. Coming to a stop before you that bounces her four breasts enticingly, the husky girl says 'Welcome back. I wanted to ask you what's up with the snow-leopard guy who seems to be living in the cellar. I've seen him a few times from a distance, browsing books and cleaning up, but he always runs away when I go to talk to him.' Then she adds with a sigh 'Too bad, because he's really cute. I've tried to catch him on the way back to the stairs today, but he's escaped and now is hiding somewhere back there.'";
		say "     [WaitLineBreak]";
		say "     Telling Amy that the snowmeow is your pet kitty Sven, you explain that he's rather shy, but that his behaviour to her still is a bit strange and you'll go talk to him. The young husky nods to you, then goes to pick up her book, taking it to her mattress to indulge in some more romantic fantasies. Meanwhile, you make your way along the long rows of bookshelves, looking around until you find the hiding Sven eventually, peeking around the other end of a bookshelf. Coming up behind him silently, you give him quite a fright as you say his name. As the transformed exchange student whirls around quickly, you see a look of embarrassment on his face - and from the way he holds his bushed-out tail in front of himself, wringing the end with his hands, you can guess why...";
		say "     After patting his head and scritching behind Sven's ears a bit to calm him down, you then order your pet to explain himself. He says 'The husky woman up here is... very pretty. And every time I get close to her and smell her, I...' and then he moves his tail a bit to the side, revealing his almost painfully hard cock. Giving him some more time to mumble his explanations, you see the whole problem - the smell of Amy's heat arouses Sven to no end and he's far too embarrassed at having his boner sticking out at her to even talk to the husky. That's why he's been trying to avoid her at all costs."; 
		say "     [line break]";
		say "Well, you see two possibilities how you might resolve this situation. Do you want to introduce the two of them to each other (intimately) and show Sven he doesn't have to be embarrassed about his feelings towards Amy (Y), or do you just send him into the bunker and tell him to simply jerk off a few times before coming back up here so he doesn't get as affected by her as he is now (N)?";
		if player consents:
			say "     [line break]";
			say "     Ordering Sven to follow, you walk back to Amy's mattress and introduce them to each other, then motion to Sven to explain himself. He looks up from the floor to Amy, then stammers 'You're - very pretty, and you smell so nice that I always get... aroused when I'm close to you.' Smiling, you reach out for his tail that he was holding in front of himself again, pulling it to the side to reveal Sven's hard manhood. Amy's eyes go wide and she moans a little 'Oh', obviously quite interested in the snowmeow's hard and ready equipment. Sitting down besides her, Sven shyly chats a bit with Amy, but even then neither of them brings the topic of the quite obvious mounting sexual tension between them up on their own.";
			say "     With both of them rather submissive in temperament, it takes a suggestion from you till Amy makes the first step, reaching out for the big, grey cock of your snowmeow and wrapping her fingers around it. Sven shifts over and stretches out on his back, allowing her to straddle him as she moves into position over his hard rod. She lines up her opening with his cock, while he softly mewls his desire to fuck and fill her hot pussy. The husky girl sinks herself down over his big cock with ease, letting it fill her wide cunt slowly until he's all the way inside. Then she starts riding it, rocking back and forth on his pole while caressing your kitty's ears and scratching his cheeks. Sven purrumbles in pleasure, bucking lightly up into Amy as she rides him, but letting her set the pace. From her moans and pants, it's quite obvious how much Amy likes his long, thick and hard cock inside her. And she doesn't hold back in telling him that either, saying that he's a good and sexy kitty.";
			say "     [WaitLineBreak]";
			say "     Amy has a good, long fuck session with your fucktoy, reducing him to a mewling slut by the time her climax comes. Her pussy clamps down around his shaft, milking and tugging at it as her femcum soaks his crotch fur. The feel of a warm and wet cunt spasming around his throbbing rod is too much and Sven yowls in lust as he sprays his hot load into Amy moments later. The ample supply from his large balls flows up into her, causing the husky girl's tummy to swell as it fills her womb. Visibly pleased with the full feeling that gives her, Amy lies down on top of Sven, just keeping his cock inside her as she snuggles with him on her mattress. Only when his cock softens enough to plop out on its own does his load start leaking out of her, soaking into his fur and the bedding below the cuddling couple.";
			if Lust of Amy is 0:
				let AmyPregchance be a random number from 1 to 20;
				if AmyPregchance > 13:
					now Lust of Amy is 24;
			now lastfuck of Amy is turns;
			now lastfuck of Sven is turns;
			now SvenAmySex is 1;
		otherwise:
			say "     Telling Sven that while he's right in saving himself for your pleasure, it still doesn't excuse him being rude to Amy by not even talking to her. With the admonition that he should jerk off a few times before each time he wants to come up here so he can meet her without springing a hardon every time, you send him back down into the bunker.";
			now SvenAmySex is 99;
	otherwise if hp of Amy > 10 and demon brute is tamed and companion of player is demon brute and BrutusAmySex is 0 and DemonBruteStatus < 2 and (DBCaptureQuestVar is 5 or DBCaptureQuestVar is 7):	[first interest of Brutus in her]
		if DBCaptureQuestVar is 5:  [evil Brutus]
			say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. As you stand there, eyes riveted on her naked form, you suddenly feel warmth radiate from right beside you. Turning your head, you see that its source is your captive demon brute, or rather his enormous cock, fully erect as it is right now. A lusty rumble comes from the beast's throat and his clawed hands twitch a bit as he is held back from what he'd love to do now by the amulet's magic.";
			say "     [line break]";
			say "As horny as she is, Amy might perhaps enjoy a round on your demonic slave's thick pole. To you offer her your pet to mount for her own enjoyment?";
			if player consents:		[Amy+Evil Brutus Sex]
				say "     [line break]";
				say "     Accompanied by the muscular demon, you walk towards Amy and she finally notices you when the two of you are just a few steps away. She gives a high-pitched 'Oh', pulling her hands away from her crotch and sitting up before continuing sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand and it's nothing to be ashamed of and that she could make use of your demon companion if she wanted to. Amy's eyes get wide as she turns her gaze on the large, muscled demon and you order him to pose for her. Soon your husky friend is rubbing her pussy lips again, watching as you take your slave through a nude dancer's routine bit by bit.";
				say "     As she continues masturbating and gets drippingly wet down below, you guess that Amy is ready for the next step now and command the demon to lie down. The young husky can barely take her eyes off his thick pole standing erect above the humanoid beast's crotch. Though even with her being aroused as hell, she still is rather submissive in temperament, so it takes a suggestion from you before Amy makes the first step, reaching for the massive cock and jerking it a few times with both her hands on the shaft. The controlled demon twists and stretches on his back, fighting against the magic that keeps him from raping both you and her, then lies still as you command him, helpless against his master's wishes.";
				say "     [WaitLineBreak]";
				say "     Meanwhile, Amy moves to straddle him, getting in position over the hard rod. She lines up her opening with his cock, then slowly sinks herself down on top of it, gasping as the tip nudges apart her nether lips. It's big - very big, stretching her pussy lips wide around it, then sliding deeper and deeper into Amy's body, making the husky moan and gasp as the bumps on his shaft rub her inner walls. Even with her copious amount of female juices lubricating Amy, it's a lot to take, and she has to stop several times to get used to it before she can continue. Some time later, she finally takes all of it in her husky body, his two large cum-factories resting against her crotch. It's still a bit surprising to you that all of him actually fit inside her, and you can only guess how Amy must be feeling right now.";
				say "     A few minutes of deep, relaxing breathing later, Amy starts to fuck herself on the thick cock - slowly. Riding it, sliding up and down on the long shaft, Amy takes her time to enjoy the demon to the fullest extent bringing herself to more than one orgasm in the long fuck session that follows. Your slave meanwhile isn't lucky enough to get off himself, as you tell him several times that he only may cum when you want him to. As Amy's fun with him goes on and on, the demon's angry grunts at your control first take on a pleading tone, then lead over into whimpers begging for release. You let this continue for another good little while, until the by then rather tired Amy reaches another orgasm. Finally relenting on the big brute, you allow the seriously blue-balled demon to come. And oh does he do it. His large balls visibly pulse as the demon's cock erupts, pumping Amy's insides full of his seed. With the head of his shaft pushing open her cervix, he easily fills her womb and vagina, with the remaining cum squirting out around the thick cock. When he finally finishes shooting and Amy pulls herself off his cock with a wet slurp, her stomach looks distended from the sheer amount of cum he has injected into her, with more of it leaking from her stretched hole to create a white-ish puddle on the ground below.";						
				if Lust of Amy is 0:
					let AmyPregchance be a random number from 1 to 20;
					if AmyPregchance > 13:
						now Lust of Amy is 24;
				now lastfuck of Amy is turns;
				now BrutusAmySex is 51;
			otherwise:		[Brutus forbidden]
				say "     [line break]";
				say "     No, perhaps better not. You wouldn't want the demon to get any ideas, and his shaft might just be a bit much to handle even for your horny husky friend...";
				now BrutusAmySex is 99;  [Brutus/Amy sex forbidden]
		otherwise if DBCaptureQuestvar is 7:  [cleansed Brutus]
			say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. As you stand there, eyes riveted on her naked form, you suddenly feel warmth radiate from right beside you. Turning your head, you see that its source is Brutus, or rather his enormous cock, fully erect as it is right now. A lusty rumble comes from your demon companion's throat and he openly watches the beautiful husky on her mattress, appreciating the view. Just grabbing and raping people may be a thing of the past for him, though he is still a pretty horny creature.";
			say "     [line break]";
			say "You think Amy might enjoy a round of sex with Brutus, getting fucked by his massive cock, and you're sure Brutus would love to breed the young husky. Do you want to introduce them to each other?";
			if player consents:		[Amy+Brutus Sex]
				say "     [line break]";
				say "     Accompanied by the muscular demon, you walk towards Amy and she finally notices you when the two of you are just a few steps away. She gives a high-pitched 'Oh', pulling her hands away from her crotch and sitting up before continuing sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand and it's nothing to be ashamed of. Then you push Brutus a step forward and introduce the two of them to each other. With the young husky looking up at him, wide eyed at his big cock, the purple demon says 'Hi - you're really hot.'";
				say "     There's a moment of silence as they just ogle each other, with sexual tension almost palpable in the air between them, and you can see that Brutus is clearly at a loss for wards, not used to actually talking to people he finds attractive as compared to just raping them. Then, just as you think you've got to step in, the demon asks Amy 'So, wanna fuck? I - I'll be gentle.' That rather blunt invitation is enough to get a needy pant and urgent nod from the husky, who's swept up into Brutus muscular arms seconds later. Holding the much smaller Amy against his wide chest, Brutus licks over her breasts with his forked tongue, then kisses her deeply.";
				say "     [WaitLineBreak]";
				say "     Smiling at how well-behaved the formerly ravenous beast has become, you watch Brutus touch Amy's body while they make out, stroking softly to give her pleasure for some time before he directs his attention towards her pussy. By that time, she's well and truly drippingly wet, the fur of her crotch matted with female juices. Running a finger over Amy's sensitive pussy lips, Brutus licks it off sensuously, then reaches down to hold his shaft up and lowers the husky until its tip touches her pussy. With an eager, lust-filled grunt, the demon pulls her down further, nudging apart her nether lips and entering Amy with his cock. And it's big - very big, stretching her pussy lips wide around it, then sliding deeper and deeper into Amy's body, making the husky moan and gasp as the bumps on his shaft rub her inner walls. Even then, it's a lot to take, and Brutus has to stop several times for her to get used to it, which he takes in stride and understanding, making as out with her in the meantime. Finally he bottoms out inside the young husky's pussy, hard shaft buried all the way and his two large cum-factories resting against her crotch. It's still a bit surprising to you that all of him actually fit inside her, and you can only guess how Amy must be feeling right now.";
				say "     [WaitLineBreak]";
				say "     A few minutes of making out with Brutus later, Amy tell him to continue - slowly. Holding her with his large hands as he moves in and out of her, the bumps on his cock rub against her stretched insides, making the young husky shudder with rising lust. Over time, it becomes easier for her to have him inside, with the demon leaking more and more precum and her muscles being stretched out and getting used to it. Which allows your companion to speed up his thrusts, going faster and faster, the slapping noises of his balls against Amy's hips now coming in rapid succession. Soon, this drives her arousal over the edge and with a loud moan, the anthro canine orgasms, femcum running down from her stretched cunt.";
				say "     The demon gives something like a very deep purr, his satisfaction at actually giving pleasure and not just taking it for himself quite obvious. He keeps fucking Amy while she rides out her orgasm, getting even faster than before in his urge to join her. Soon, he reaches his own climax - and with a loud grunt, he begins to pump Amy's insides full of his seed. With the head of his shaft pushing open her cervix, he easily fills your womb and vagina, with the remaining cum squirting out around Brutus thick cock as he thrusts into Amy a few more times. When he finally pulls her off his cock with a wet slurp, Amy's stomach looks distended from the sheer amount of cum he has injected into her, with more of it leaking from her stretched hole to create a white-ish puddle under her on the ground.";				
				if Lust of Amy is 0:
					let AmyPregchance be a random number from 1 to 20;
					if AmyPregchance > 13:
						now Lust of Amy is 24;
				now lastfuck of Amy is turns;
				now BrutusAmySex is 1;
			otherwise:
				say "     [line break]";
				say "     Hm, perhaps better not. Brutus might just be a bit much to handle even for your horny husky friend...";
				now BrutusAmySex is 99;
	otherwise if (hp of Amy > 10 and Snow is in the Grey Abbey Library and SnowAmySex is 0):	[first interest of Snow in her]
		say "     Entering the library, you see Amy on her bedding, sitting besides Snow and listening intently to the squirrel girl. Curious what Amy starts giggling about a moment later, you step a bit closer and overhear '...really, he was this long and...' followed by a detailed and intimate description of Snow's last encounter with a minotaur out in the city. As she continues with the raunchy tale, you see Amy spread her legs a bit, revealing an already a bit moist pussy that shows her obvious arousal.";
		say "     [line break]";
		say "Well, you can see where this is going from a mile away. As Snow moves her hand to rub the hard cock barely contained in her pants, you... (Y = stand back and watch your two friends fuck, N = walk up to them and interrupt) ";
		if player consents:		[Amy+Snow Sex]
			say "     [line break]";
			say "     Snow leans over, running her hand up the inside of Amy's thigh until she gets to her crotch, then stroking a finger over the husky's sensitive pussy lips, making her moan loudly. 'You need it bad, don't you,' the squirrel herm says to Amy with a husky tone, then continues 'Let me take care of you' and pulls Amy's paw-hand over on the increasingly large and throbbing, bulge in her pants. The only answer from Amy is lustful panting as she caresses Snow's bulge with one hand, while the other moves in between her legs. The horny squirrel enjoys the hand on her package some moments longer, then pops open the button of her pants, followed by its zipper sliding down. That frees her massive cock from its confinement, to stand fully erect in front of a suddenly wide-eyed Amy.";
			say "     Lightly turning Amy's muzzle to give her a kiss, Snow says softly 'Now don't you worry none. I'll be right gentle.' and squirms out of her pants. She puts her hand on the huge member, bulging with thick veins along its human shaped but inhumanly pink and massive, length. A noticeable trickle of precum runs down from the slit on its tip, towards her heavy, grapefruit sized, balls. Jerking herself a few times, the herm squirrel lubes her shaft with the precum, then moves over in front of Amy. After another hot bit of tongue-wrestling that leaves both of them a bit breathless, she softly pushes against the husky's chest, making her lie back on the mattress.";
			say "     [WaitLineBreak]";
			say "     Snow brushes the tip of the member against Amy's drippingly wet nethers, teasing her for a long moment before she eases into her, giving a playful growl as she does so. 'You know,' she says, suddenly looking thoughtful even as she plunges into the young husky under her, '[one of]I cannot remember if I was a girl or a boy to start - but I sure love this[or]You feel amazing, baby[or]Will you bear my child? You would make an awesome mom, I bet[or]Maybe next time you can be on top[at random].' As the moment of glib passes, she grips Amy's hips more firmly, starting to rock against her in deep, urgent, pushes, pistoning against the husky's wet sex as she leans in over her.";
			say "     The big squirrel's breasts as absolutely huge, swaying in the air as she grinds against Amy and even rubbing the husky's smaller but more numerous breasts when Snow leans forward a bit more. Gasps of pleasure from Amy fill the library, combined with Snow's own moaning as her heavy balls slap against Amy's thighs with every rapid pierce into her antho canine body. Snow's hands eagerly caress her partner, exploring your every contour. Then, with a sudden lurch, she seals herself against Amy, holding her tight against herself as pulsing waves of rich squirrel seed erupt into the husky girl's body.";
			say "     [WaitLineBreak]";			
			say "     As she rides out her orgasm and with her member still pulsing with spurt after spurt of cum painting Amy's womb white, Snow rolls the two of them over to lie on their sides on the mattress. The squirrel and husky start making out and keep going for quite a while, their hands stroking and caressing each other while they kiss.";			
			if Lust of Amy is 0:
				let AmyPregchance be a random number from 1 to 20;
				if AmyPregchance > 13:
					now Lust of Amy is 24;
			now lastfuck of Amy is turns;
			now lastfuck of Snow is turns;
			now SnowAmySex is 1;
		otherwise:
			say "     [line break]";
			say "     Moving over to the two of them, you greet Amy and Snow and chat a bit with them about mundane topics, breaking the mood building between them. After some minutes of talking, Snow gives Amy a friendly hug and excuses herself with wanting to get some fresh air outside. From the still pretty big bulge in her pants, you presume she'll go pick up one of the feral huskies out there and fuck the girl senseless.";
			now SnowAmySex is 99;				
	otherwise if hp of Amy > 10 and Icarus is in the Grey Abbey Library and IcarusAmySex is 0:	[first interest of Icarus in her]
		if hp of Icarus > 49:  [dom Icarus]
			say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny and has taken to masturbation, her head resting on a pillow with closed eyes as she imagines... well, most likely you. As you stand there, eyes riveted on her naked form, a sudden flutter of wings in the air above you heralds the arrival of Icarus. The dominant blue chaffinch lands right next to you and gives Amy a hungry look. 'Horny little bitch you have there. I think I'll try her out and maybe make her mine instead.' Grabbing his balls suggestively while giving you an overbearing grin, Icarus then starts to strut towards the unsuspecting husky.";
			say "     [line break]";
			say "Do you want to watch as Icarus take Amy (Y), or would you rather turn away and not watch (N)? ";
			if player consents:		[Amy+dom Icarus Sex]
				say "     [line break]";
				say "     With Amy totally concentrated on her fantasy and her eyes closed, she doesn't notice the anthro bird coming up to her and then kneel on the mattress. With little preamble, he gets his stiff cock lined up with her pussy and pulls the young husky's hand out of the way. His taloned hangs grip her hips tightly as she opens her eyes in surprise, then he thrusts into her with his avian rod. The slick, tapered cock pushes into Amy easily, causing her first shocked yelp to run over into a moan of pleasure at getting fucked. Soon the feathered fellow is drilling her hard, chirping occasionally as he does.";
				say "     Amy grows increasingly aroused as the mating continues, with Icarus soft feathers rubbing against her thighs, crotch and pussy lips as he thrusts into her. With her not resisting his advances, just gripping the sheets with her paw-hands as waves of lust run through her body, Icarus is free to let his taloned hands roam over Amy's soft-furred body. Between the soft feathers rubbing against her and the hard cock pumping inside her needy pussy, it's not much longer until both of them finally climax loudly, his chirping and moaning joining her lust-filled barks. Icarus spreads his feathers a bit and gives you a smug nod as his hot seed pumps into Amy's cunt and flows into her womb.";
				say "     When he's done, Icarus dismounts and gives Amy's breasts a grope before flying off with a chuckle. She's left lying there with his cum leaking from her stuffed pussy, exhausted and somewhat dazed by the avian male's sudden appearance and actions.";
				if Lust of Amy is 0:
					let AmyPregchance be a random number from 1 to 20;
					if AmyPregchance > 13:
						now Lust of Amy is 24;
				now lastfuck of Amy is turns;
				now lastfuck of Icarus is turns;
				now IcarusAmySex is 50;  [dom Icarus + Amy sex will come up in the future]
			otherwise:		[don't watch]
				say "     [line break]";
				say "     Being dominated by Icarus is one thing, watching him take Amy another, so you turn away and decide to stroll deeper into the library. As you pass row after row of shelves, the sounds of their coupling get a bit muffled, but even as you reach the back wall, still some of the moans and grunts reach you. In the end, you pick a book at random and read a bit of it to distract yourself before going back, where you find the freshly fucked Amy dozing on her mattress, with Icarus cum slowly leaking out of her pussy.";
				now IcarusAmySex is 51;  [not watching Icarus/Amy sex in the future]
		otherwise if hp of Icarus > 0 and hp of Icarus < 50:  [sub Icarus]
			say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny and has taken to masturbation, her head resting on a pillow with closed eyes as she imagines... well, most likely you. As you stand there, eyes riveted on her naked form, a sudden flutter of wings in the air above you heralds the arrival of Icarus. The submissive blue chaffinch lands right next to you and gives Amy an appreciative look. 'She's really hot. I'd love to take that doggie for a ride.' he chirps and you notice his avian cock quickly hardening. As you're looking at him, Icarus suddenly remembers that he's now just supposed to be your slutty pet bird and gets a bit flustered, chirping nervously as he adds 'I - I mean...'";
			say "     [line break]";
			say "Do you want to allow Icarus to indulge in some of his old behaviour (Y), or do you send him off to await your pleasure when you want to make use of him (N)? ";
			if player consents:		[Amy+sub Icarus Sex]
				say "     [line break]";
				say "     You tell Icarus Amy's name and give him your permission to fuck her - if she lets him. The horny chaffinch thanks you and hurries over to the husky before you can change your mind. Kneeling before her, he ruffles his feathers to look as impressive as possible, then chirps a nice and short little song at her. Until now totally concentrated on her fantasy, Amy opens her eyes with a suprised expression on her face, seeing the blue chaffinch in all his feathered glory kneeling between her legs. Before she can say anything, Icarus continues with 'Hello there, beautiful. Why dream about things when you can have me in reality?' while leaning over her to run his hands along her curves and cup her breasts. And it works - seems like her nipples were just the right buttons to caress, as the thoroughly aroused Amy just pants and lets her head sink back down, giving herself over to the anthro bird.";
				say "     With a satisfied chirp, Icarus smoothly moves forward on top of Amy, lining his stiff cock up with her pussy. His taloned hangs grip her hips tightly, then he thrusts into her with his avian rod. The slick, tapered cock pushes into Amy easily, causing her to moan loudly at being filled by his manhood. Soon the feathered fellow is drilling her hard, chirping occasionally as he does.";
				say "     [WaitLineBreak]";
				if cocks of player > 0:
					say "     Watching your little birdy fuck Amy, his tight butt moving up and down as he pounds her, your own member gets quite hard and ready for some action too. Maybe you should... join them, taking Icarus ass to remind him of his place. Do you do so? ";
					if player consents:
						say "     [line break]";
						say "     Quickly dropping your gear and clothes on the ground as you go along, you're completely naked before you're more than halfway to the fucking couple. Pounding into the increasingly aroused and noisy Amy under him, Icarus doesn't notice you coming up behind him, erect cock leading the way. As you suddenly push up his tailfeathers and expose his white-feathered bottom, he lets out a surprised chirp, then moans as you rub your hard shaft against his crack and get your cock lined up with his pucker. Gripping him tightly around the hips, you push forward, forcing his tight hole to spread open for your [cock size desc of player] [cock of player] phallus.";
						say "     As you start humping away, you push Icarus own cock deeper into Amy's pussy, making the passerine chirp in pure lust from the double sensations of fucking while being fucked. With the husky under him panting loudly and Icarus begging for more, you go faster and faster, pounding his ass hard and deep. Teasing him for being such a puny, little slut, - even while fucking a woman - you grin as he moans and nods in agreement, loving being a horny cock slut now.";
						say "     You keep it up, something in the weak bird's behaviour egging you on to be rough with him. And certainly, he loves it as well. The gasps and chirps from him rising in pitch and the way his asshole tightens around you suddenly is all the warning you get before the stuffed bird cums hard, pumping his hot seed into Amy's cunt to flow into her womb. You cum a few moments later, claiming his ass once again[if cock width of player > 35]. Your [cum load size of player] load leaves the poor songbird so bloated and full of your cum that some leaks out of his beak. His body is left rounded like a feathery balloon from it all. He can only give a weak chirp as you pull out and your hot cum pours of his stretched and stuffed ass, slowly deflating[otherwise if cock width of player > 25]. Your [cum load size of player] load leaves the poor songbird rounded like a feathery balloon. When you pull out, he gives a weak chirp as your hot cum pours of his stretched and stuffed ass, slowly deflating[otherwise if cock width of player > 15]. Your [cum load size of player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed. When you pull out, he gives a weak chirp as hot cum leaks from his stretched and stuffed ass[otherwise]. He gives a weak chirp when you pull out, hot cum leaking from his stretched and creamy ass[end if].  While taking a moment to check that your birdie pet's still fine, you wipe your cock clean on his blue tailfeathers before heading off, leaving him and Amy there to eventually recover.";
					otherwise:
						say "     [line break]";
						say "     Nah, you decide to let him have his fun for now and just watch them go at it.";	
						say "     Amy grows increasingly aroused as the mating continues, with Icarus soft feathers rubbing against her thighs, crotch and pussy lips as he thrusts into her. With her not resisting his advances, just gripping the sheets with her paw-hands as waves of lust run through her body, Icarus is free to let his taloned hands roam over Amy's soft-furred body. Between the soft feathers rubbing against her and the hard cock pumping inside her needy pussy, it's not much longer until both of them finally climax loudly, his chirping and moaning joining her lust-filled barks. Icarus spreads his feathers a bit and gives a smug grin as his hot seed pumps into Amy's cunt and flows into her womb.";
						say "     When he's done, the blue chaffinch rubs his feathered head against Amy's cheek, then dismounts and gives Amy's breasts a grope before flying off with a chuckle. She's left lying there with his cum leaking from her stuffed pussy, exhausted and somewhat dazed by the avian male's sudden appearance and actions.";
				otherwise:
					say "     Amy grows increasingly aroused as the mating continues, with Icarus soft feathers rubbing against her thighs, crotch and pussy lips as he thrusts into her. With her not resisting his advances, just gripping the sheets with her paw-hands as waves of lust run through her body, Icarus is free to let his taloned hands roam over Amy's soft-furred body. Between the soft feathers rubbing against her and the hard cock pumping inside her needy pussy, it's not much longer until both of them finally climax loudly, his chirping and moaning joining her lust-filled barks. Icarus spreads his feathers a bit and gives a smug grin as his hot seed pumps into Amy's cunt and flows into her womb.";
					say "     When he's done, the blue chaffinch rubs his feathered head against Amy's cheek, then dismounts and gives Amy's breasts a grope before flying off with a chuckle. She's left lying there with his cum leaking from her stuffed pussy, exhausted and somewhat dazed by the avian male's sudden appearance and actions.";
				if Lust of Amy is 0:
					let AmyPregchance be a random number from 1 to 20;
					if AmyPregchance > 13:
						now Lust of Amy is 24;
				now lastfuck of Amy is turns;
				now lastfuck of Icarus is turns;
				now IcarusAmySex is 1;  [sub Icarus + Amy sex will come up in the future]
			otherwise:		[no sex for Icarus]
				say "     [line break]";
				say "     Gripping Icarus by the feathers on his head, you give him a strict look and tell him that he's yours and that you decide what he does or doesn't do. Then you tell him that he may - no he must - watch Amy play with herself and get fucked... and that he's forbidden from joining her or even masturbating. There, that should wind the little slut up some, making him especially needy for your touch. With a grin, you give his feathered butt a squeeze, then grab a chair from a nearby table and watch him a while, standing there to observe Amy and sometimes twitching a bit as he has to hold himself back from touching his increasingly aroused body.";
				now IcarusAmySex is 99;  [Icarus/Amy sex forbidden]
	otherwise if Xerxes is in Grey Abbey Library and (lastfuck of Xerxes - turns) > 12 and thirst of Amy is 1 and a random chance of 1 in 5 succeeds:
		say "     Entering the library, you see Amy - on all fours on her bedding, with Xerxes mounting her from behind. Looks like she felt the need to get some relief from her mounting arousal again. You human dog's firmly muscled ass moves back and forth as he pounds her pussy with a relentless wild energy, his hard thrusts obviously hitting just the right spots, judging from Amy's pants and pleased yips. This soon drives Amy's libido to the max, giving her a mind-blowing orgasm that moistens Xerxes cock with slippery femcum. He obviously likes the feeling of that, as his growls of lust increase and he speeds up before plunging in one last time and filling Amy's womb with his human seed.";
		say "     As his cock and balls keep twitching with blast after blast of cum into his sexual partner, Xerxes just keeps holding on to Amy, panting with his head over her shoulder. Exhausted, the husky lowers herself to lie on her bedding, taking your human dog with her so they end up cuddled together on the mattress[if lust of Xerxes >= 4].  Raising his head to look at you for a moment, Xerxes mumbles 'Mmm... Master-Friend Amy nice' to you, then snuggles up to her with his arms around the young woman's chest[end if].";
		if Lust of Amy is 0:
			let AmyPregchance be a random number from 1 to 20;
			if AmyPregchance > 13:
				now Lust of Amy is 24;
		now lastfuck of Amy is turns;
		now lastfuck of Xerxes is turns;
	otherwise if Felinoid Companion is tamed and (lastfuck of felinoid companion - turns) > 12 and level of Amy is 1 and a random chance of 1 in 5 succeeds:
		say "     Entering the library, you see Amy - on all fours on her bedding, with your felinoid companion standing over her, his legs bent a bit as he mounts her from behind. She's clearly under his influence again, all wound up and horny to be fucked hard. Mating her with powerful and deep thrusts, the felinoid doesn't hold back in any way. Moans, barks and growls of lust fill the library and you move a bit closer to watch the show.";
		say "     After quite a while of hot and heavy fucking, Amy's moans and noises rise up to a loud pleased yip, announcing her orgasm to anyone in hearing range. Visibly satisfied in making her come, the felinoid isn't far behind, burying his hard cock all the way in the young husky's pussy and holding still, only his balls pulsing as they fill her up with his seed. When he finishes cumming, the big cat pulls out and throws himself on her bedding to lounge in satisfaction. Amy kneels down beside him to lick his cock clean, then joins him on the mattress, snuggling up against his warm furred shape.";
		if Lust of Amy is 0:
			let AmyPregchance be a random number from 1 to 20;
			if AmyPregchance > 13:
				now Lust of Amy is 24;
		now lastfuck of Amy is turns;
		now lastfuck of felinoid companion is turns;
	otherwise if Fang is in Grey Abbey Library and (lastfuck of Fang - turns) > 12 and XP of Amy is 1 and a random chance of 1 in 5 succeeds:
		if hp of Fang < 3:  [Beta Fang]
			say "     Entering the library, you see Amy - on all fours on her bedding, with Fang mounting her from behind. Looks like she felt the need to get some relief from her mounting arousal again and he was only too happy to fuck the horny husky. The black wolf pounds into her hard and fast while the young husky's needy cunt grips and squeezes around that feral wolf cock. She moans about how strong your pet wolf is, how virile, to breed her like the bitch she is. Clearly pleased by those words, Fang takes the fur of her neck between his teeth in a careful bite and fucks her even harder, slamming his swollen knot against Amy's sore pussy until it stretches open enough to let that oversized knot pop in and tie with her. The black wolf howls triumphantly when this happens, unleashing a hot rush of semen into Amy, filling the husky girl with his ample load as he drains his large, virile balls into her. She writhes beneath him in ecstasy, cumming hard as well from taking your wolf's seed. When his knot goes down, he pops his cock from her, letting his excess semen flow out to soak into the mattress, leaving the scent of it upon Amy and her bedding as a reminder to you and others that he bred her.";
		otherwise:  [Alpha Fang]
			say "     Entering the library, you see Amy - on all fours on her bedding, with Fang mounting her from behind. As he should be - as Alpha, he's got the right to take any female - or male - he likes, whenever he wants. He pounds into her hard and fast while the young husky's needy cunt grips and squeezes around that feral wolf cock. She moans about how strong your big alpha is, how virile, to breed her like the bitch she is. Clearly pleased by those words, Fang takes the fur of her neck between his teeth in a careful bite and fucks her even harder, slamming his swollen knot against Amy's sore pussy until it stretches open enough to let that oversized knot pop in and tie with her. The black wolf howls triumphantly when this happens, unleashing a hot rush of semen into Amy, filling the husky girl with his ample load as he drains his large, virile balls into her. She writhes beneath him in ecstasy, cumming hard as well from taking your master's seed. When his knot goes down, he pops his cock from her, letting his excess semen flow out to soak into the mattress, leaving the scent of it upon Amy and her bedding as a reminder to you and others that she belongs to him.";
		if Lust of Amy is 0:
			let AmyPregchance be a random number from 1 to 20;
			if AmyPregchance > 13:
				now Lust of Amy is 24;
		now lastfuck of Amy is turns;
		now lastfuck of Fang is turns;
	otherwise if Elijah is bunkered and hp of Elijah > 3 and Dexterity of Amy > 0 and Dexterity of Amy < 99 and a random chance of 1 in 5 succeeds:	[repeat sex between Elijah and Amy]
		if hp of Elijah is 99:  [evil Elijah]
			say "     Entering the library, you see Amy - lying on her bedding and panting loudly as Elijah thrusts his hard cock into her in a rapid pace. He's holding her legs spread apart, hands gripping her fur tightly as he really pounds her pussy, filling the library with slapping sounds of his hips hitting her crotch. Looks like the two of them have been going at it for a while now, judging from the cum-soaked spot on the mattress under Amy's hips and the wet squishing noises as Elijah slams into her, making one of his previous loads ooze out around his shaft. Wanting to get a closer look, you move in and watch from behind a nearby bookshelf, observing their movements against each other and listening to the pants and moans as they come quicker and quicker. It's obvious that Elijah is getting close to another climax quickly and he suddenly grips Amy by the hips, holding her tight against himself as his balls twitch again, sending pulse after pulse of his seed deep into the husky's womb. Amy writhes beneath him in ecstasy, cumming hard as well from taking even more of the dark angel's seed.";
			say "     With a satisfied sigh, he pulls out of her and gets up, his fresh load trickling out of her stretched pussy to soak into her bedding. Not even looking back as he leaves her, the dark angel then picks up his pants and boots, grinning at you as he stands up, having obviously spotted you. He saunters over in absolutely shameless nakedness and says 'Nice pussy, can't wait for the next time. Oh, and you really should put a collar and leash on her... wouldn't want such a fine bitch to run off.' With that, he walks away to go clean himself up.";
		otherwise:
			say "     Entering the library, you see Amy - straddling the hips of a naked Elijah as he lies on her bedding. She rocks back and forth, moaning loudly as his hard cock moves inside her while Elijah has his arms stretched up, hands caressing her breasts. Looks like the two of them have been going at it for a while now, taking care of each other's needs. Not wanting to disturb their eager coupling, you just watch them from behind a nearby bookshelf, observing their movements against each other and listening to the pants and moans as they come quicker and quicker. It's obvious that Elijah's climax quickly approaches and he suddenly grips Amy by the hips, rolling the two of them around so she's now under him. He thrusts into her a few more times with urgent movements, then suddenly stiffens, grunting as his balls twitch and unload his fertile seed deep in the husky girl's pussy. Amy writhes beneath him in ecstasy, cumming hard as well from taking your angelic friend's seed. With a satisfied sigh, he just holds her against his chest afterwards, staying with the young husky to cuddle a bit on her mattress.";
		if Lust of Amy is 0:
			let AmyPregchance be a random number from 1 to 20;
			if AmyPregchance > 13:
				now Lust of Amy is 24;
		now lastfuck of Amy is turns;
		now lastfuck of Elijah is turns;
	otherwise if Sven is bunkered and hp of Sven > 5 and hp of Sven < 50 and SvenAmySex is 1 and a random chance of 1 in 5 succeeds:	[repeat sex between Sven and Amy]
		say "     Entering the library, you see Amy - with Sven under her on her mattress, both of them moaning as she fucks him in the cowgirl position. Looks like she decided to use your pet kitty for her own pleasure again. She rocks back and forth on his pole while caressing your snowmeow's ears and scratching his cheeks. Sven purrumbles in pleasure, bucking lightly up into Amy as she rides him, but letting her set the pace. From her moans and pants, it's quite obvious how much Amy likes his long, thick and hard cock inside her. And she doesn't hold back in telling him that either, saying that he's a good and sexy kitty.";
		say "     Amy has a good, long fuck session with your fucktoy, reducing him to a mewling slut by the time her climax comes. Her pussy clamps down around his shaft, milking and tugging at it as her femcum soaks his crotch fur. The feel of a warm and wet cunt spasming around his throbbing rod is too much and Sven yowls in lust as he sprays his hot load into Amy moments later. The ample supply from his large balls flows up into her, causing the husky girl's tummy to swell as it fills her womb. Visibly pleased with the full feeling that gives her, Amy lies down on top of Sven, just keeping his cock inside her as she snuggles with him on her mattress. Only when his cock softens enough to plop out on its own does his load start leaking out of her, soaking into his fur and the bedding below the cuddling couple.";
		if Lust of Amy is 0:
			let AmyPregchance be a random number from 1 to 20;
			if AmyPregchance > 13:
				now Lust of Amy is 24;
		now lastfuck of Amy is turns;
		now lastfuck of Sven is turns;
	otherwise if Snow is in the Grey Abbey Library and SnowAmySex is 1 and a random chance of 1 in 5 succeeds:	[repeat sex between Snow and Amy]		
		say "     Entering the library, you see Amy - gripping the sheets on her mattress tightly and moaning as Snow pounds away at her needy pussy. The squirrel herm's thick veiny member thrusts in and out of your husky friend, with Snow's heavy, grapefruit sized balls audibly smacking against Amy's hips each time. Snow pants '[one of]I cannot remember if I was a girl or a boy to start - but I sure love this[or]You feel amazing, baby[or]Will you bear my child? You would make an awesome mom, I bet[at random].'";
		say "     The big squirrel's breasts as absolutely huge, swaying in the air as she grinds against Amy and even rubbing the husky's smaller but more numerous breasts when Snow leans forward a bit more. Gasps of pleasure from Amy fill the library, combined with Snow's own moaning as her heavy balls slap against Amy's thighs with every rapid pierce into her antho canine body. Then, with a sudden lurch, she seals herself against Amy, holding her tight against herself as pulsing waves of rich squirrel seed erupt into the husky girl's body.";
		say "     As she rides out her orgasm and with her member still pulsing with spurt after spurt of cum painting Amy's womb white, Snow rolls the two of them over to lie on their sides on the mattress. The squirrel and husky start making out and keep going for quite a while, their hands stroking and caressing each other while they kiss.";
		if Lust of Amy is 0:
			let AmyPregchance be a random number from 1 to 20;
			if AmyPregchance > 13:
				now Lust of Amy is 24;
		now lastfuck of Amy is turns;
		now lastfuck of Snow is turns;
	otherwise if hp of Amy > 10 and Icarus is in the Grey Abbey Library and IcarusAmySex > 0 and IcarusAmySex < 99 and a random chance of 1 in 5 succeeds:	[repeat sex between Icarus and Amy]
		if IcarusAmySex is 50:  [dom Icarus]
			say "     Entering the library, you see Amy - lying on her bedding and panting loudly as Icarus thrusts into her with his avian rod. The feathered fellow is drilling her hard with his tapered, slick cock, chirping occasionally as he does. With this having gone on for a while obviously, Amy is quite aroused by him mating her, with Icarus soft feathers rubbing against her thighs, crotch and pussy lips as he fucks her. She's not resisting his advances, just gripping the sheets with her paw-hands as waves of lust run through her body and Icarus is free to let his taloned hands roam over Amy's soft-furred body. Between the soft feathers rubbing against her and the hard cock pumping inside her needy pussy, it's not much longer until both of them finally climax loudly, his chirping and moaning joining her lust-filled barks. Icarus spreads his feathers a bit and gives you a smug nod as his hot seed pumps into Amy's cunt and flows into her womb.";
			say "     When he's done, Icarus dismounts and gives Amy's breasts a grope before flying off with a chuckle. She's left lying there with his cum leaking from her stuffed pussy, exhausted by the hot fuck he just gave her.";
			if Lust of Amy is 0:
				let AmyPregchance be a random number from 1 to 20;
				if AmyPregchance > 13:
					now Lust of Amy is 24;
			now lastfuck of Amy is turns;
			now lastfuck of Icarus is turns;			
		otherwise if IcarusAmySex is 51:		[don't watch]
			say "     Entering the library, you see Amy - lying on her bedding and panting loudly, with her fur a bit matted by sweat. The fur on her crotch looks wet and a trickle of white cum is leaking out between her nether lips to soak into the mattress. Clearly she's been well fucked and bred not too long ago, and a few small blue feathers on the mattress around her show who did it too. Icarus had some fun with her, filling the husky's womb with his seed.";
		otherwise if IcarusAmySex is 1:    [sub Icarus + Amy]
			say "     Entering the library, you see Amy - lying on her bedding and panting loudly as Icarus thrusts into her with his avian rod. The feathered fellow is drilling her hard with his tapered, slick cock, chirping occasionally as he does. With this having gone on for a while obviously, Amy is quite aroused by him mating her, with Icarus soft feathers rubbing against her thighs, crotch and pussy lips as he fucks her. She's not resisting his advances, just gripping the sheets with her paw-hands as waves of lust run through her body and Icarus is free to let his taloned hands roam over Amy's soft-furred body. Between the soft feathers rubbing against her and the hard cock pumping inside her needy pussy, it's not much longer until both of them finally climax loudly, his chirping and moaning joining her lust-filled barks. Icarus spreads his feathers a bit and gives a smug grin as his hot seed pumps into Amy's cunt and flows into her womb.";
			say "     When he's done, the blue chaffinch rubs his feathered head against Amy's cheek, then dismounts and gives Amy's breasts a grope before flying off with a chuckle. She's left lying there with his cum leaking from her stuffed pussy, exhausted by the hot fuck he just gave her.";	
			if Lust of Amy is 0:
				let AmyPregchance be a random number from 1 to 20;
				if AmyPregchance > 13:
					now Lust of Amy is 24;
			now lastfuck of Amy is turns;
			now lastfuck of Icarus is turns;
	otherwise:
		say "     As you enter the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Maybe you should help her out with that...";

Instead of fucking the Amy:
	if hp of Amy is 1:   [child-like]
		say "     With her being not even a week old and rather child-like in temperament, it doesn't seem right to just fuck Amy. You decide you'd rather not do that right now.";
	otherwise if hp of Amy is 2:    [matured]
		say "     Deciding that you'll just be straightforward about things, you walk up to Amy and tell her you'd like to have sex with her. 'Oh', the young husky says, looking to the side for a moment to a bookcase a sign above denounces to be filled with romance novels. 'I've read a bit about that when I started getting some funny feelings. So you want to... be my first? It's supposed to be someone special, a prince or a pirate or... a hero.' With that, she smiles at you. 'You saved me when we were out in the streets, brought me here and have been pretty nice, so sure - let's do it.' She takes you by the hand, leading you over to her mattress and sitting down on it.";
		say "     [AmyFirstFuck]";
		now lastfuck of Amy is turns;
		now hp of Amy is 11;
	otherwise if (HP of Amy is 10):   [she told the player she wanted them to fuck her]
		say "     Deciding that you'll just be straightforward about things, you walk up to Amy and tell her you'd like to have sex with her. The young husky happily embraces you, moaning a bit as her four breasts rub against your chest. 'Thank you for making me the happiest girl in the world. It'll be just like in the books, with you my hero.' She takes you by the hand, leading you over to her mattress and sitting down on it.";
		say "     [AmyFirstFuck]";
		now lastfuck of Amy is turns;
		now hp of Amy is 11;
	otherwise:   [repeat sex]
		if (lastfuck of Amy - turns < 2):
			say "     As you approach Amy, the young husky bitch looks at you and sighs. 'I want to have sex with you, but I'm pretty exhausted from last time. Please give me a moment to rest, ok?'";
		otherwise:
			say "     You walk over to Amy, who immediately starts smiling and stroking her breasts as she sees the lust-filled twinkle in your eyes.";
			wait for any key;
			say "[AmySexMenu]";
			now lastfuck of Amy is turns;

to say AmyFirstFuck:
	if(cocks of player > 0):      [males+herm]
		say "     After quickly stripping off your clothes, you let your gaze wander over Amy's naked form, your manhood hardening as you look at her female curves. The husky knowingly smiles, arching her back a bit to present her four breasts to you, sensually stroking over them. 'I'm waiting for you', she coos, giving you her best 'come hither' look. Kneeling down beside her, you bring your mouth to hers and kiss her, your hands roaming over her body, then holding her to lower her onto her back. Lying on top of her, you make out with the hot little husky, bringing her arousal she hasn't felt before. Then you move lower, cupping her breasts and playfully sucking on her nipples before going even further down her body and arriving at her pussy. Carefully spreading the husky's sensitive pussy lips, you put your tongue to it and lick, paying close attention to her clit. Amy gasps loudly as she experiences oral sex for the first time.";
		say "     [WaitLineBreak]";
		say "     Teasing the virgin husky with your tongue, you get her really wet down there in no time at all, with Amy just writhing on the mattress as you take her to new heights. Hearing her nonstop panting and moaning, you decide it's time to take this one step further and show her what really getting fucked is like. Holding open her legs, your hands rubbing Amy's soft fur, you move up until your [cock of player] shaft rests hotly against her pubic mound. Leaning over her, you kiss the aroused husky and slowly slide your head into her, soon pushing against her hymen.";
		say "     [WaitLineBreak]";
		say "  	   Wanting to distract her from the pain of losing her virginity, you give her another deep kiss, move your hands to cup her top two breasts - and then make a quick downward thrust, only stopping as your crotch touches hers. There is only a short yip from Amy as her hymen is broken by your invading member, the moment of pain drowned out almost instantly by the pleasurable sensations of being kissed, touched and fucked. She starts moaning again as you move inside her, rubbing her inner walls with your hard shaft. Fucking the husky woman feels great, with the warm and tight vagina around your cock and her soft-furred female body in your arms. Being her first time having sex, and your first time in her, it's not too much longer until your coupling culminates in two pretty noisy orgasms. Amy is the first to reach her goal, giving a lust-filled howl as she comes, her femcum making your shaft even wetter than before. After a few more deep thrusts, you follow her to the other side, body shuddering as your balls release burst after burst of cum to splash into the husky's womb.";
		say "     [WaitLineBreak]";
		say "  	  Satisfied, you stay like that with Amy for a while, listening to her comparing what you just did to the books she read, mostly in terms of '...soo much better than I had imagined, even after reading about Lady Catherine and Lord Malcomb...' Running you hands through her soft belly fur, circling a nipple with your finger, you soon start making out with your canine mate, telling her she doesn't need those books now as there's lots more interesting stuff to do with you in reality.";
		let AmyPregchance be a random number from 1 to 20;
		if AmyPregchance > 7:
			now Lust of Amy is 24;
	otherwise if (cunts of player > 0):  [females]
		say "     After quickly stripping off your clothes, you let your gaze wander over Amy's naked form, a shiver of excitement going through you as you look at her female curves. The husky knowingly smiles, arching her back a bit to present her four breasts to you, sensually stroking over them. 'I'm waiting for you', she coos, giving you her best 'come hither' look. Kneeling down beside her, you bring your mouth to hers and kiss her, your hands roaming over her body, then holding her to lower her onto her back. Lying on top of her, you make out with the hot little husky, bringing her arousal she hasn't felt before. Then you move lower, cupping her breasts and playfully sucking on her nipples before going even further down her body and arriving at her pussy. Carefully spreading the husky's sensitive pussy lips, you put your tongue to it and lick, paying close attention to her clit. Amy gasps loudly as she experiences oral sex for the first time.";
		say "     [WaitLineBreak]";
		say "     Teasing the virgin husky with your tongue, you get her really wet down there in no time at all, with Amy just writhing on the mattress as you take her to new heights. Hearing her nonstop panting and moaning, you decide it's time to take this one step further and show her what really getting fucked is like. Grabbing the dildo you brought for this purpose from between the pile of your cast-off clothing, you kiss Amy, then hold the rubber sex top up for her to see. As she takes it from you to put it in her mouth, you spread open her legs, your hands rubbing Amy's soft fur, then rub your fingers over her pussy mound and downwards, stroking her sensitive nether lips. Leaning over her, you take the now wet and ready dildo from her, you rub its head over her pussy lips and start to slowly push it in between them, soon bumping against her hymen.";
		say "     [WaitLineBreak]";
		say "  	   Wanting to distract her from the pain of losing her virginity, you give her another deep kiss, move a hand to cup one of her upper breasts - and then make a quick downward thrust with the dildo, only stopping as the rubber balls at its base touch her crotch. There is only a short yip from Amy as her hymen is broken by the invading member, the moment of pain drowned out almost instantly by the pleasurable sensations of being kissed, touched and fucked. She starts moaning again as you move the toy inside her, rubbing her inner walls with the hard rubber shaft. Fucking the husky woman is a lot of fun, though you ache for some release of your own, so you get on top of her in 69 position. Without any prompting, Amy starts licking you again, driving you to higher and higher arousal. Being her first time having sex, and you already aroused from taking care of Amy, it's not too much longer until your coupling culminates in two pretty noisy orgasms. Amy is the first to reach her goal, giving a lust-filled howl as she comes, her femcum glistening wetly on the rubber shaft of the dildo you're fucking her with. Just moments later, you experience your own climax, the young husky's talented tongue driving you over the edge.";
		say "     [WaitLineBreak]";
		say "  	  Satisfied, you stay like that with Amy for a while, listening to her comparing what you just did to the books she read, mostly in terms of '...soo much better than I had imagined, even after reading about Lady Catherine and Lord Malcomb...' Running you hands through her soft belly fur, circling a nipple with your finger, you soon start making out with your canine mate, telling her she doesn't need those books now as there's lots more interesting stuff to do with you in reality.";
	otherwise:       [neuter]
		say "     After quickly stripping off your clothes, you let your gaze wander over Amy's naked form, a shiver of excitement going through you as you look at her female curves. The husky knowingly smiles, arching her back a bit to present her four breasts to you, sensually stroking over them. 'I'm waiting for you', she coos, giving you her best 'come hither' look. Kneeling down beside her, you bring your mouth to hers and kiss her, your hands roaming over her body, then holding her to lower her onto her back. Lying on top of her, you make out with the hot little husky, bringing her arousal she hasn't felt before. Then you move lower, cupping her breasts and playfully sucking on her nipples before going even further down her body and arriving at her pussy. Carefully spreading the husky's sensitive pussy lips, you put your tongue to it and lick, paying close attention to her clit. Amy gasps loudly as she experiences oral sex for the first time.";
		say "     [WaitLineBreak]";
		say "     Teasing the virgin husky with your tongue, you get her really wet down there in no time at all, with Amy just writhing on the mattress as you take her to new heights. Hearing her nonstop panting and moaning, you decide it's time to take this one step further and show her what really getting fucked is like. Grabbing the dildo you brought for this purpose from between the pile of your cast-off clothing, you kiss Amy, then hold the rubber sex top up for her to see. As she takes it from you to put it in her mouth, you spread open her legs, your hands rubbing Amy's soft fur, then rub your fingers over her pussy mound and downwards, stroking her sensitive nether lips. Leaning over her, you take the now wet and ready dildo from her, you rub its head over her pussy lips and start to slowly push it in between them, soon bumping against her hymen.";
		say "     [WaitLineBreak]";
		say "  	   Wanting to distract her from the pain of losing her virginity, you give her another deep kiss, move a hand to cup one of her upper breasts - and then make a quick downward thrust with the dildo, only stopping as the rubber balls at its base touch her crotch. There is only a short yip from Amy as her hymen is broken by the invading member, the moment of pain drowned out almost instantly by the pleasurable sensations of being kissed, touched and fucked. She starts moaning again as you move the toy inside her, rubbing her inner walls with the hard rubber shaft. Fucking the husky woman is a lot of fun, though with it being her first time having sex, it's not too much longer until you drive the husky girl to a pretty noisy orgasm. As Amy reaches her goal, she gives a lust-filled howl and comes, her femcum glistening wetly on the rubber shaft of the dildo you're fucking her with.";
		say "     [WaitLineBreak]";
		say "  	  Satisfied, you stay like that with Amy for a while, listening to her comparing what you just did to the books she read, mostly in terms of '...soo much better than I had imagined, even after reading about Lady Catherine and Lord Malcomb...' Running you hands through her soft belly fur, circling a nipple with your finger, you soon start making out with your canine mate, telling her she doesn't need those books now as there's lots more interesting stuff to do with you in reality.";
		
to say AmySexMenu:
	blank out the whole of table of fucking options;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have her blow your cock";
		now sortorder entry is 1;
		now description entry is "Put the husky's mouth to good use.";
		now toggle entry is AmySex rule;
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have her lick your pussy";
		now sortorder entry is 2;
		now description entry is "Put the husky's mouth to good use.";
		now toggle entry is AmySex rule;
	choose a blank row in table of fucking options;
	now title entry is "Finger her pussy";
	now sortorder entry is 3;
	now description entry is "Finger-fuck Amy's pussy to make her cum.";
	now toggle entry is AmySex rule;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Fuck her pussy";
		now sortorder entry is 4;
		now description entry is "Fill the husky bitch with your cock.";
		now toggle entry is AmySex rule;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Amy's ass";
		now sortorder entry is 5;
		now description entry is "Fill the husky bitch's ass with your cock.";
		now toggle entry is AmySex rule;
	if (cocks of player > 0 and thirst of Amy is 1 and Xerxes is in the Grey Abbey Library):
		choose a blank row in table of fucking options;
		now title entry is "Have a threesome with Amy and Xerxes";
		now sortorder entry is 6;
		now description entry is "Have sex with both your human dog and horny husky.";
		now toggle entry is AmySex rule;
	if (cocks of player > 0 and level of Amy is 1 and felinoid companion is tamed):
		choose a blank row in table of fucking options;
		now title entry is "Have a threesome with Amy and the Felinoid";
		now sortorder entry is 7;
		now description entry is "Have sex with both your felinoid companion and horny husky.";
		now toggle entry is AmySex rule;
	if (cocks of player > 0 and XP of Amy is 1 and Fang is in the Grey Abbey Library):
		choose a blank row in table of fucking options;
		now title entry is "Have a threesome with Amy and Fang";
		now sortorder entry is 8;
		now description entry is "Have sex with both the black wolf and horny husky.";
		now toggle entry is AmySex rule;
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the AmySex rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Have her blow your cock"):
			say "[AmySex1]";
		otherwise if (nam is "Have her lick your pussy"):
			say "[AmySex2]";
		otherwise if (nam is "Finger her pussy"):
			say "[AmySex3]";
		otherwise if (nam is "Fuck her pussy"):
			say "[AmySex4]";
		otherwise if (nam is "Take Amy's ass"):
			say "[AmySex5]";
		otherwise if (nam is "Have a threesome with Amy and Xerxes"):
			say "[AmySex6]";
		otherwise if (nam is "Have a threesome with Amy and the Felinoid"):
			say "[AmySex7]";
		otherwise if (nam is "Have a threesome with Amy and Fang"):
			say "[AmySex8]";
		wait for any key;
		
to say AmySex1:    [cock sucked by Amy]
	say "     A smile on your face as you walk up to her, you grab the bulge in your pants and ask her if she could help you it with it. No longer the innocent little husky you first found, she grins at you and licks her lips, then kneels before you. Pulling out your [cock of player] cock, you hold it out with one hand, allowing Amy to put it in her muzzle and suck on it. She really is a natural at giving blowjobs, holding her lips tight around your shaft and teasing it with her tongue...";
	say "     Before too much longer, the husky girl's enthusiastic sucking drives your arousal through the roof. As she goes down on your cock again, you hold her head against your crotch, shooting long blasts of cum into her mouth. When she pulls off your cock after you're done, Amy shows you the large load on her tongue, then swallows it demonstratively. Jokingly, you call her a 'Good dog', tousling her hair, then softly pull Amy to her feet, give her a deep kiss and thank her.";
			
to say AmySex2:    [cunt licked by Amy]
	say "     A smile on your face as you walk up to her, you rub the crotch of your pants and ask her if she could help you it with it. No longer the innocent little husky you first found, she grins at you and licks her lips, then kneels before you. Pulling off your pants, you show your already a bit moist pussy, allowing Amy to put her muzzle between your legs and lick. She really is a natural at stimulating you with that tongue of hers, pushing it into your vagina and teasing your clit with its tip...";
	say "     Before too much longer, the husky girl's enthusiastic oral attention drives your arousal through the roof. As she goes down on you to lick your pussy again, you hold her head against your crotch, breathing deeply as the husky girl slurps up the femcum running down your legs. Jokingly, you call her a 'Good dog', tousling her hair, then softly pull Amy to her feet, give her a deep kiss and thank her.";
	
to say AmySex3:    [Amy's cunt licked/fingered]
	say "     Walking up close to Amy, you put your arms around her and give her a hug. As your lips find hers for a kiss, your hands move down over her naked body, softly stroking her curves. Coming back up for air, you start rubbing over her sensitive pussy lips, making Amy give a needful moan.";
	say "     Guiding the aroused husky over to her bedding, you kneel between her legs as she lies down on her back. Her pussy, already a bit swollen and moist in anticipation, lies ready for you between the canine girl's legs. Leaning forward, you bring your mouth to it, licking over her crotch, then playing with Amy's clit with the tip of your tongue. It's a lot of fun to hear her gasp and moan under your ministrations and you switch up between fingering her and licking.";
	say "     Under your skilled fingers and tongue, it doesn't take long until Amy's moans get louder and louder and the female husky pants almost nonstop. Then suddenly, she arches her back, hands flying to hold your head in place as she climaxes. Your face is a bit wet with squirts of her femcum as you move on top of Amy afterwards to give her a deep kiss. The young husky smiles and licks your face, her arms around your body to hold you close.";

to say AmySex4:    [Amy's pussy fucked by player]
	if(Lust of Amy > 1 and Lust of Amy < 12):    [pregnant version]
		say "     Walking up close to Amy, you put your arms around her and give her a hug. As your lips find hers for a kiss, your hands move down over her naked body, softly stroking her curves and carefully touching her pregnant belly. Coming back up for air, you tell her how hard thinking about fucking her makes you. 'You're not the only one', she coos back at you, taking your hand and putting it between her legs to feel her sex already a bit moist, open and swollen. As you start stroking over her sensitive pussy lips with a finger, Amy moves up against you closely, rubbing her breasts against your body. The two of you enjoy touching each other for a bit, you fondling her breasts and Amy rubbing your cock, until the building arousal between you can no longer be contained. Holding you by her paw-hand, Amy almost pulls you over to her mattress, where she gets on all fours, showing her ass and the dripping vagina between her legs invitingly.";
		say "     [WaitLineBreak]";
		say "     Quickly sliding off your clothes, you step up and kneel behind Amy, then lean over her. As wrap your arms around her from behind, fondling her four breasts and rubbing the bulging pregnant belly, your [cock of player] shaft comes to rest hotly against her furred ass. Amy moans as you take hold of your cock, pushing it down a bit and rubbing its head over her pussy lips, then put its tip between them. Sliding into her wet and tight vagina in one smooth move, you grunt deeply as you bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, then start pulling out a bit and thrusting back in, fucking the young husky.";
		say "     Amy is a very enthusiastic sex-partner, rocking back to meet you with her hips as you pound into her. In between moans and pants, she groans 'Harder. Harder!', only satisfied when your balls smack against her buttcheeks with an audible thud each time you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [cock of player] shaft inside her pussy[if cock length of player > 10] until it pushes against her cervix[otherwise].[end if] Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
		say "     [WaitLineBreak]";
		say "  	  Immensely satisfied, you stay like that on top of her for a while, then pull your softening cock out and lie down with Amy. Spooning her, you run a hand through her soft belly fur, feeling the rounded curve of her body that bulges with the new life growing inside her.";
	otherwise:   						   [regular version]
		say "     Walking up close to Amy, you put your arms around her and give her a hug. As your lips find hers for a kiss, your hands move down over her naked body, softly stroking her curves. Coming back up for air, you tell her how hard thinking about fucking her makes you. 'You're not the only one', she coos back at you, taking your hand and putting it between her legs to feel her sex already a bit moist, open and swollen. As you start stroking over her sensitive pussy lips with a finger, Amy moves up against you closely, rubbing her breasts against your body. The two of you enjoy touching each other for a bit, you fondling her breasts and Amy rubbing your cock, until the building arousal between you can no longer be contained. Holding you by her paw-hand, Amy almost pulls you over to her mattress,  where she lies down on her back, spreading her legs invitingly.";
		say "     [WaitLineBreak]";
		say "     Quickly sliding off your clothes, you step up and kneel between Amy's legs, then lean over her. As you start making out hungrily, your [cock of player] shaft comes to rest hotly against her pubic mound. Amy moans as you take hold of your cock, rubbing its head over her pussy lips, then put its tip between them. Sliding into her wet and tight vagina in one smooth move, you grunt deeply as you bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, then start pulling out a bit and thrusting back in, fucking the young husky.";
		say "     Amy is a very enthusiastic sex-partner, holding you close with her arms and making out as you pound into her. She even wraps her legs around your hips to pull your crotch down harder against her, moaning as your balls hit her buttcheeks when you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [cock of player] shaft inside her pussy[if cock length of player > 10] until it pushes against her cervix[otherwise].[end if] Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
		say "     [WaitLineBreak]";
		say "  	  Immensely satisfied, you stay like that on top of her for a while, then pull your softening cock out and lie down with Amy. Spooning her, you run a hand through her soft belly fur, circling her nipples with your finger, then just hold her.";
		if Lust of Amy is 0:
			let AmyPregchance be a random number from 1 to 20;
			if AmyPregchance > 10:
				now Lust of Amy is 24;

to say AmySex5:    [Amy's ass fucked by player]
	if(Lust of Amy > 1 and Lust of Amy < 12):    [pregnant version]
		say "     Walking up close to Amy, you put your arms around her and give her a hug. As your lips find hers for a kiss, your hands move down over her naked body, softly stroking her curves. Coming back up for air, you tell her how hard thinking about fucking her makes you. 'You're not the only one', she coos back at you, taking your hand and putting it between her legs to feel her sex already a bit moist, open and swollen. As you start stroking over her sensitive pussy lips with a finger, Amy moves up against you closely, rubbing her breasts against your body. The two of you enjoy touching each other for a bit, you fondling her breasts and Amy rubbing your cock, until the building arousal between you can no longer be contained. Holding you by her paw-hand, Amy almost pulls you over to her mattress, where she gets on all fours, showing her ass and the dripping vagina between her legs invitingly.";
		say "     [WaitLineBreak]";
		say "     Quickly sliding off your clothes, you step up and kneel behind Amy, then lean over her. As wrap your arms around her from behind, fondling her four breasts and rubbing the bulging pregnant belly, your [cock of player] shaft comes to rest hotly against her furred ass. Amy moans as you take hold of your cock, pushing it down a bit and rubbing its head over her pussy lips to get it all slippery and wet with her juices just dripping out of it. Then you move back up and put the tip between her buttcheeks, right against the young husky's pucker. Slowly and carefully, you increase the pressure against it until the muscle yields and allows your shaft into her tight and warm passage. Sinking deeper into her hole, stretching it around your hard manhood, you grunt deeply as you finally bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member, then start pulling out a bit and thrusting back in, fucking the young husky's ass.";
		say "     Amy is a very enthusiastic sex-partner, rocking back to meet you with her hips as you pound into her. In between moans and pants, she groans 'Harder. Harder!', only satisfied when your balls smack against her buttcheeks with an audible thud each time you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [cock of player] shaft in her butt. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's insides. The feeling of a male's cum filling her gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her own orgasm.";
		say "     [WaitLineBreak]";
		say "  	  Immensely satisfied, you stay like that on top of her for a while, then pull your softening cock out and lie down with Amy. Spooning her, you run a hand through her soft belly fur, feeling the rounded curve of her body that bulges with the new life growing inside her.";
	otherwise:   						   [regular version]
		say "     Walking up close to Amy, you put your arms around her and give her a hug. As your lips find hers for a kiss, your hands move down over her naked body, softly stroking her curves and carefully touching her pregnant belly. Coming back up for air, you tell her how hard thinking about fucking her makes you. 'You're not the only one', she coos back at you, taking your hand and putting it between her legs to feel her sex already a bit moist, open and swollen. As you start stroking over her sensitive pussy lips with a finger, Amy moves up against you closely, rubbing her breasts against your body. The two of you enjoy touching each other for a bit, you fondling her breasts and Amy rubbing your cock, until the building arousal between you can no longer be contained. Holding you by her paw-hand, Amy almost pulls you over to her mattress, where she gets on all fours, showing her ass and the dripping vagina between her legs invitingly.";
		say "     [WaitLineBreak]";
		say "     Quickly sliding off your clothes, you step up and kneel behind Amy, then lean over her. As wrap your arms around her from behind, fondling her four breasts and rubbing her soft belly-fur, your [cock of player] shaft comes to rest hotly against her furred ass. Amy moans as you take hold of your cock, pushing it down a bit and rubbing its head over her pussy lips to get it all slippery and wet with her juices just dripping out of it. Then you move back up and put the tip between her buttcheeks, right against the young husky's pucker. Slowly and carefully, you increase the pressure against it until the muscle yields and allows your shaft into her tight and warm passage. Sinking deeper into her hole, stretching it around your hard manhood, you grunt deeply as you finally bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member, then start pulling out a bit and thrusting back in, fucking the young husky's ass.";
		say "     Amy is a very enthusiastic sex-partner, rocking back to meet you with her hips as you pound into her. In between moans and pants, she groans 'Harder. Harder!', only satisfied when your balls smack against her buttcheeks with an audible thud each time you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [cock of player] shaft in her butt. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's insides. The feeling of a male's cum filling her gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her own orgasm.";
		say "     [WaitLineBreak]";
		say "  	  Immensely satisfied, you stay like that on top of her for a while, then pull your softening cock out and lie down with Amy. Spooning her, you run a hand through her soft belly fur, circling her nipples with your finger, then just hold her.";

to say AmySex6:    [Xerxes+Amy+Player Threesome]
	say "     Stepping by Xerxes bunk, you ruffle the human dog's hair and say 'Come on, boy', then make your way to Amy's bedding accompanied by him. Walking up close to Amy, you put your arms around her and give her a hug. As your lips find hers for a kiss, your hands move down over her naked body, softly stroking her curves[if Lust of Amy > 1 and Lust of Amy < 12] and carefully touching her pregnant belly[end if]. Coming back up for air, you tell her how hard thinking about fucking her makes you. 'You're not the only one', she coos back at you, giving a smiling nod down to Xerxes, who's busy sniffing her already a bit moist, open and swollen pussy. She crouches down[if Lust of Amy > 1 and Lust of Amy < 12] with a bit of help from you, pregnant as she is[end if], then sits on her mattress and pulls the human dog's head to hers, exchanges some licks and kisses with him too.";
	say "     Joining the two of them on the mattress, Amy sitting and Xerxes on all fours, you start stroking over the husky's sensitive pussy lips with a finger, your other hand cupping and caressing her breasts. There's quite a bit of touching, kissing and licking going on between the three of you for a while, then Amy's mounting arousal can no longer be contained. Getting up on her knees, the young husky moves around on the mattress, then takes a position on all fours, showing her ass and the dripping vagina between her legs invitingly.";
	say "     [WaitLineBreak]";
	say "     Your human dog sniffs the air, taking in Amy's female scent, and is quite obviously rock hard and almost trembling with the desire to mount her right now. Nevertheless, he obediently waits on all fours besides you, his training overcoming his natural urges even now. Though he does give you an incredibly hard to resist pleading puppy dog look[if lust of Xerxes >= 4] as he says 'Me fuck Amy?'[end if] - amazing that that still works, even though he's in the body of a teenage human.";
	say "     [line break]";
	say "     So - do you allow Xerxes to mount Amy, or take that position yourself? Who shall fuck her? (Y = you, N = Xerxes) ";
	if player consents:  [player mounts her]
		say "     [line break]";
		say "     Shaking your head at Xerxes, you quickly strip off your clothes, then hold your already quite hard shaft out for him. With a happy yip, he starts licking it, running his talented tongue along your shaft, then lapping at your balls before returning to the tip of your cock and taking it in his mouth. After Xerxes bobs up and down on your cock a few times, you smile and tussle his hair, then pull out and move to kneel behind Amy. One hand on your slick and wet manhood, you rub its tip over the young husky's swollen nether lips, then press in between them. Sliding into her tight vagina in one smooth move, you grunt deeply as you bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, then start pulling out a bit and thrusting back in, fucking the young husky.";
		say "     [line break]";
		say "     Not forgetting about your human dog, in between moans you tell him to... (Y = mount you, N = move to get sucked off by Amy) ";
		if player consents:  [Xerxes fucks the player]
			say "     [line break]";
			say "     You wiggle your ass at Xerxes and reach back to spread your cheeks invitingly, to which the human dog pounces on your ass and starts lapping up and down your crack. Already hot and ready from his lust for Amy, that quickly leads over to him mounting you from behind in typical doggie-style, hugging your chest has his hips grind against you. His hard shaft pokes your ass and rubs up and down your crack until he finally finds your hole and presses in against you. As your pucker yields to Xerxes invading member, he plunges deep into your body, giving a lustful growl as he bottoms out in one thrust.";
			if lust of Xerxes >= 4:
				say "     Having gained intelligence to go along with his canine mind, he is able to hold back his instinctive desire to rut you hard and fast for a while, taking the time to run his hands over your [one of][bodytype of player][or][if cocks of player > 0 and cunts of player > 0]herm[otherwise if cocks of player > 0]male[otherwise if cunts of player > 0]female[otherwise]genderless[end if][as decreasingly likely outcomes] body as he takes slower thrusts at first, enjoying the feel of your hot, tight hole around his pulsing shaft. His hands roam over you[if lust of Xerxes < 7] almost as if he were petting you[otherwise], stroking and caressing your [bodydesc of player] body with growing adeptness[end if]. He nuzzles at the back of your neck, panting with a growing excitement that has his pace quicken in response. As he thrusts harder, you moan what a good boy he is.";
			say "     [WaitLineBreak]";
			say "     Xerxes fucks you with a relentless wild energy, his hard thrusts rubbing very sensitive and pleasurable spots inside you, just as you pound the very enthusiastic Amy in front of yourself. In between moans and pants, she groans 'Harder. Harder!', only satisfied when your balls smack against her buttcheeks with an audible thud each time you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [cock of player] shaft inside her pussy[if cock length of player > 10] until it pushes against her cervix. [otherwise]. [end if]Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
			say "     In the grip of your own climax, your anal muscles twitch around Xerxes cock, which obviously excites him, making his growls of lust increase and him speed up before plunging in one last time and filling your asshole with his human seed. As his cock and balls keep twitching with blast after blast of cum into you, Xerxes just keeps holding on to you, panting with his head over your shoulder. Turning your head, you pull his lips to yours, kissing him and sticking your tongue in his mouth. Holding him against you with one arm, the other one on Amy, you pull your little trio down to lie on the mattress, where you enjoy each other's warmth and closeness for a while as you come down from your respective orgasms[if lust of Xerxes >= 4]. 'Mmm... Master good fuck,' he mumbles softly, snuggling up to your back lovingly[end if].";
			setmonster "human";
			choose row monster from the table of random critters;
			say "     [mimpregchance]";
		otherwise:  [Xerxes gets sucked off by Amy]
			say "     [line break]";
			say "     Telling[if lust of Xerxes >= 4] Xerxes to get a blowjob from Amy, you watch the naked body of the human dog as he rushes around to her front, then kneels in front of her, his erect cock sticking up straight in front of her face. [otherwise] Xerxes to go to Amy, you watch the naked body of the human dog as moves to her front, then throws himself on the ground in front of her, rolling on his back with spread legs to allow her to suck his shaft. [end if]The young husky takes it in her muzzle, carefully keeping her teeth away as she starts bobbing up and down. While Xerxes is getting an amazing blowjob, you fuck Amy's tight pussy, pounding into the very enthusiastic young husky. In between moans and pants, she groans 'Harder. Harder!', only satisfied when your balls smack against her buttcheeks with an audible thud each time you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [cock of player] shaft inside her pussy[if cock length of player > 10] until it pushes against her cervix. [otherwise]. [end if]Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
			say "     After a moment, when the feelings of just having come ebb out, Amy continues the blowjob she was giving Xerxes and before too much longer, the husky girl's enthusiastic sucking drives his lust through the roof. As she goes down on the human dog's cock again, he[if lust of Xerxes >= 4] moans 'Aaah - Good Amy' and[end if] yips as he comes, shooting long blasts of cum into her mouth. When she pulls off his cock after he's done, Amy shows you the large load on her tongue, then swallows it demonstratively. Jokingly, you call her and Xerxes both 'Good dog', tousling their hair, then pull Amy's head to yours and give her a deep kiss. Lying down on the mattress with your two friends after that, you enjoy each other's warmth and closeness for a while[if lust of Xerxes >= 4]. 'Mmm... Amy and Master nice,' Xerxes mumbles softly, snuggling up to your back lovingly[end if].";
	otherwise:	[Xerxes gets on Amy]
		say "     [line break]";
		if lust of Xerxes >= 4:		[awesome/intelligent Xerxes]
			say "     You pat Xerxes shoulder and say 'Go for it' with a grin. Having gained intelligence to go along with his canine mind, he is able to hold back his instinctive desire to rut you hard and fast for a while, taking the time to run his hands over Amy's back and female curves first. He leans close against her back to cup two of the husky's breasts with his hands while moving his hips to position his shaft at her opening. Then, with a quick thrust accompanied by two persons very satisfied moans, he sinks his manhood into her drippingly moist pussy. Xerxes takes slower thrusts at first, enjoying the feel of Amy's hot, wet hole around his pulsing shaft. His hands roam over her[if lust of Xerxes < 7] almost as if he were petting Amy[otherwise], stroking and caressing Amy's body with growing adeptness[end if]. He nuzzles at the back of the young husky's neck, panting with a growing excitement that has his pace quicken in response.";
			say "     [line break]";
			say "     Having quickly gotten rid of your clothes and gear while your two companions got into fucking each other, you now stand naked besides them, your cock hard and ready for action. How do you want to join in on their coupling? (Y = have Amy suck you, N = fuck Xerxes ass) ";
		otherwise:	[basic Xerxes]
			say "     Almost before you're finished saying 'Go for it, boy', Xerxes is on top of Amy, his muscular chest against her back as he hugs her tightly and grinds his crotch against her body. Being a natural in the typical 'doggie-style', his shaft quickly finds her dripping opening and plunges deep into the husky's body. Quickly stripping off your own clothes as they start fucking each other, you now stand naked besides them, your cock hard and ready for action. How do you want to join in on their coupling? (Y = have Amy suck you, N = fuck Xerxes ass) ";
		if player consents:  [have Amy blow the player]
			say "     [line break]";
			say "     Walking around the two of them till you're in front of Amy, you sit down and hold your hard shaft out for her. The young husky takes it in her muzzle, carefully keeping her teeth away as she starts bobbing up and down. She really is a natural at giving blowjobs, holding her lips tight around your shaft and teasing it with her tongue. While you're getting an amazing blowjob, Xerxes fucks Amy with a relentless wild energy, his hard thrusts hitting very sensitive spots again and again, making her pant and yip in pleasure. This soon drives Amy's arousal to the max, giving her a mind-blowing orgasm that moistens Xerxes cock with even more slippery femcum. He obviously likes the feeling of that, as his growls of lust increase and he speeds up before plunging in one last time and filling Amy's womb with his human seed.";
			say "     After a moment of riding out her own orgasm, Amy continues the blowjob she was giving you and before too much longer, the husky girl's enthusiastic sucking drives your lust through the roof. As she goes down on your cock again, you hold her head against your crotch, shooting long blasts of cum into her mouth. When she pulls off your cock after you're done, Amy shows you the large load on her tongue, then swallows it demonstratively. Jokingly, you call her and Xerxes both 'Good dog', tousling their hair, then pull Amy's head to yours and give her a deep kiss. Lying down on the mattress with your two friends after that, you enjoy each other's warmth and closeness for a while[if lust of Xerxes >= 4]. 'Mmm... Amy good fuck,' Xerxes mumbles softly, snuggling up to your back lovingly and nuzzling your neck[end if].";
		otherwise:  [assfuck for Xerxes]
			say "     [line break]";
			say "     Walking around the two of them till you're behind Xerxes, you kneel down and quickly lube up your shaft. Running your hands down the muscular back of your human dog, from up on his shoulders down to his hips, you grip them tightly to hold him still for a moment and bring your hard cock against his pucker. Telling him in soft tones to relax, you push forward and slide into his body. Xerxes hole is incredibly warm and tight - no wonder, with only Mike and maybe one or two of the other human dogs having been in there before you. You take a moment to appreciate the tightly gripping feel of his ass as you bottom out, then start fucking him, with Xerxes panting and yipping in lust as you slide in and out[if lust of Xerxes >= 4]. 'Good master,' he moans, pressing his rear back into your thrusts[end if]. As you pound into him from behind, your pet's shaft gets pushed deeper into Amy's pussy in turn, making her pants and moans join Xerxes. That almost makes you feel like you're fucking them both at the same time...";
			say "     You run your hands over Xerxes sexy body, caressing his lovely skin[if lust of Xerxes >= 7] and running your fingers along his collar tattoo[end if] as you lean overtop of him. This draws added moans and yips of pleasure from him and he pushes himself back into your thrusts, his ass squeezing along your shaft as you fuck him like a dog. You play with his nipples while fucking him, whispering in his ear what a good boy he is.";
			say "     [WaitLineBreak]";
			say "     Getting shafted while being in Amy himself soon drives Xerxes over the edge, and as you do another deep thrust into his tight ass he gives a deep grunt and climaxes, squirting blast after blast of his human seed directly into the young husky's womb. With the flexing of his anal muscles around your shaft with each of his spurts, you're close behind him, moaning loudly as you cream his asshole with your sperm. With your cock twitching inside, painting his insides white, you pull Xerxes upper body against your chest and give him a deep kiss. Then, after your last shot, you pull your little trio down to lie on Amy's mattress, where you enjoy each other's warmth and closeness for a while as you come down from your respective orgasms[if lust of Xerxes >= 4]. 'Mmm... Amy nice. Master fuck Xerxes good,' he mumbles softly, snuggling up to you lovingly[end if][if lust of Xerxes >= 7] as you kiss along the tattooed collar ringing his neck[end if].";
	if Lust of Amy is 0:  [not pregnant yet]
		let AmyPregchance be a random number from 1 to 20;
		if AmyPregchance > 13:
			now Lust of Amy is 24;  [someone has knocked her up - either the player or Xerxes]
	now lastfuck of Amy is turns;
	now lastfuck of Xerxes is turns;

to say AmySex7:    [Felinoid+Amy+Player Threesome]
	say "     Accompanied by your felinoid companion, you walk over to the mattress you put up here in the library for Amy. The large cat sniffs the female husky's bedding with interest, then turns his head to you and gives a questioning rumble from his throat. Running both hands through his warm fur and scratching him affectionately behind the ears, you answer 'Yeah, lets have some fun with her.'";
	say "     Soon after, Amy comes into sight from among the long bookshelves in the library, walking towards you slowly, the stack of books in her hands so high that she can't actually see what is in front of her. As she comes closer, you walk up to her and take more than half of the books from her. She says 'Thank you, that's very nice of you.' - then she notices the look of lust in your eyes and the felinoid's presence. 'Oh', she says in an amused tone and sets down her books on the ground, then continues with 'Were you boys waiting for me? I wonder why...' in a playfully innocent tone. A moment later, she betrays that she's no blushing virgin as she moves up close to you, her hand feeling up the tent in your pants. With a lustful wink, she then saunters over to her bedding, swishing her tail while demonstratively shaking her hips.";
	say "     [WaitLineBreak]";
	say "     Quickly adding the books in your hands to the pile on the floor, you follow her over to the mattress, pulling off your clothes and dropping them as you go along. Soon you're sitting beside her, as naked as she herself always is, with the felinoid standing right beside you. The large cat circles you both, giving a pleasantly rumbling purr and rubbing the side of his furred body against yours, his long tail lazily flicking through the air in front of your faces. The effects of his touch and heady musk take effect almost immediately, with both Amy's and your breathing becoming quicker as you start panting in rising lust. Her pussy gets moist and ready for sex, a fact easily visible as she spreads her nether lips with her fingers and starts rubbing them.";
	say "     Suddenly stopping behind Amy, the felinoid puts his head over her shoulder, rubbing the side of his furry face against hers. Then he lifts a paw, softly pushing against her back while giving suggestive rumbles from his throat. Taking the hint, the young husky gets up from the mattress to move around on it and gets into a position on all fours, her legs spread a bit and tail raised high, presenting her ready and dripping pussy.";
	say "     [WaitLineBreak]";
	say "     After circling around you once more, the felinoid moves to Amy's backside, licking her crotch with his rough tongue a few times. Then he continues further up, licking over the arched back of the husky girl and continuing to her neck. Standing over the smaller shape of Amy, his belly-fur touching her back, the felinoid now is in the perfect position to fuck her. Lowering his hind legs a bit, the feline rubs his spined cock up and down the anthro husky's crotch until he soon finds Amy's swollen pussy lips and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library.";
	say "     [line break]";
	say "     What would you like to do now?  Do you let Amy blow you and feed her your load (Y), or do you want to fuck and come in the felinoid's ass (N)? ";
	if player consents:     [sucked by Amy]
		say "     [line break]";
		say "     Your own libido awakened by the images of the large cat on top of the human-like Amy, as well as the felinoid's touch and musk, you quickly decide that it's time to join in. Putting a hand on your raging [cock of player] hardon, you stroke it a few times before moving into position and holding it out for Amy. The young husky takes it in her muzzle, carefully keeping her teeth away as she starts bobbing up and down. She really is a natural at giving blowjobs, holding her lips tight around your shaft and teasing it with her tongue. While you're getting an amazing blowjob, the felinoid fucks Amy with a relentless wild energy, his hard thrusts hitting very sensitive spots again and again, making her pant and yip in pleasure.";
		say "     Even though he is a quite virile male, everyone's stamina has its limits. When Amy suddenly gives a pleased yip and orgasms, her female juices dripping down to soak into her bedding, that gives large cat the last nudge too. A deep rumble of satisfaction vibrates in the felinoid's throat as he pushes his member as deep as it will go and fills Amy's womb with his seed.";
		say "     [WaitLineBreak]";
		say "     After a moment of riding out her own orgasm, Amy continues the blowjob she was giving you and before too much longer, the husky girl's enthusiastic sucking drives your lust through the roof. As she goes down on your cock again, you hold her head against your crotch, shooting long blasts of cum into her mouth. When she pulls off your cock after you're done, Amy shows you the large load on her tongue, then swallows it demonstratively. Jokingly, you call her a 'Good dog', tousling their hair, then pull Amy's head to yours and give her a deep kiss. Lying down on the mattress with your two friends after that, you enjoy each other's warmth and closeness for a while, accompanied by the felinoid's rumbling purr.";
	otherwise:              [fucking the Felinoid]
		say "     [line break]";
		say "     Your own libido awakened by the images of the large cat on top of the human-like Amy, as well as the felinoid's touch and musk, you quickly decide that it's time to join in. Putting a hand on your raging [cock of player] hardon, you grab the bottle of lube you've got lying around not too far way. After spreading some of the slick substance on your shaft, you step up behind the large shape of the rutting felinoid. Running your hands up through the soft fur on his lower back, you grab the feline's hips tightly then slam forward, burying your cock to the hilt in his warm, tight cave. Roaring at the sudden anal intrusion, the felinoid stops thrusting into Amy for a moment, looking back over his shoulder with partly bared teeth. That doesn't last long, though - moving in and out of his hole, your shaft stimulates his sensitive prostrate, and soon your big cat is purring in satisfaction and fucking Amy again.";
		say "     Even though you'd wish your threesome could last forever, everyone's stamina has its limits. When Amy suddenly gives a pleased yip and orgasms, her female juices dripping down to soak into her bedding, that gives large cat the last nudge too. A deep rumble of satisfaction vibrates in the felinoid's throat as he pushes his member as deep as it will go and fills Amy's womb with his seed. The big cat's insides in turn grip your penis tightly with each shot of cum shooting through his shaft, making you follow them to an amazing orgasm. You gasp as you grind your hips against the felinoid's furry behind and blast after blast of your sperm shoot into his tight chute.";
		say "     [WaitLineBreak]";
		say "     After a moment of just holding on to the large feline and catching your breath, you pull out and watch the felinoid's pink pucker snap shut before any of your seed can leak out. Satisfied but exhausted after this session, you sink down on Amy's mattress. The big cat and husky girl separate from each other too, then lie down next to you, with Amy cuddling up to the felinoid's soft and warm belly fur. Purring as loud as a idling motor, the big cat starts licking her fur. Looks as if he wants to spread his scent over all of the husky's body.";
	if Fang is in the Grey Abbey Library:
		say "     [line break]";
		if hp of Fang is 1 or hp of Fang is 2:  [Beta Fang]
			if XP of Amy is 0:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Amy a hostile stare. Looks like he's not happy that the big cat is getting pussy he hasn't had. Not happy at all. Noting the wolf's interest, the big feline snarls and Fang slinks back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
			if XP of Amy is 1:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Amy a hostile stare. Seeing the other fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. The feline clutches Amy closer and growls deeply at Fang, sending the wolf slinking back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
			if XP of Amy is 99:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Amy a hostile stare. Seeing the other fuck someone he's been forbidden to mount doesn't make him happy. Not happy at all. The feline clutches Amy closer and growls deeply at Fang, sending the wolf slinking back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
		otherwise:            [Alpha Fang]
			if XP of Amy is 0:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Amy a hostile stare. Looks like he's not happy that the big cat is getting pussy he hasn't had. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if XP of Amy is 1:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Amy a hostile stare. Seeing the other fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
	if Lust of Amy is 0:  [not pregnant yet]
		let AmyPregchance be a random number from 1 to 20;
		if AmyPregchance > 13:
			now Lust of Amy is 24;  [someone has knocked her up - either the player or the Felinoid]
	now lastfuck of Amy is turns;
	now lastfuck of Felinoid Companion is turns;
	
to say AmySex8:    [Fang+Amy+Player Threesome]
	if (hp of Fang is 1 or hp of Fang is 2):    [Beta Fang] 
		say "     Walking over to where Fang's leash is currently tied in the library, you kneel down beside your faithful guardian and stroke him between his ears and over his furred flank. Wagging his tail, he licks your hand, happy at getting attention from his Alpha. 'That's a good wolf. Come on, let's have some fun with Amy' you say and loosen Fang's leash from around his neck. Accompanied by your black wolf, you walk over to the mattress you put up here in the library for the husky girl.";
		say "     Soon after, Amy comes into sight from among the long bookshelves in the library, walking towards you slowly, the stack of books in her hands so high that she can't actually see what is in front of her. As she comes closer, you walk up to her and take more than half of the books from her. She says 'Thank you, that's very nice of you.' - then she notices the look of lust in your eyes and Fang's presence. 'Oh', she says in an amused tone and sets down her books on the ground, then continues with 'Were you boys waiting for me? I wonder why...' in a playfully innocent tone. A moment later, she betrays that she's no blushing virgin as she moves up close to you, her hand feeling up the tent in your pants. With a lustful wink, she then saunters over to her bedding, swishing her tail while demonstratively shaking her hips.";
		say "     [WaitLineBreak]";
		say "     Quickly adding the books in your hands to the pile on the floor, you follow her over to the mattress, pulling off your clothes and dropping them as you go along. Soon you're sitting beside her, as naked as she herself always is, with the Fang standing right beside you. Smiling at Amy, you lean back, holding up your hard cock for her and she quickly gets into a kneeling position, leaning forward to blow you. As she does so, Fang moves up behind her and sniffs Amy's pussy, then looks up to you pleadingly. Seeing his canine cock dangling erect beneath his body, it's pretty obvious what he wants to do, and as you slide your shaft once again into Amy's throat you smile and nod to Fang to continue. Without delay, the wolf jumps up and mounts Amy's body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Amy's pussy. Driven by his feral lust, Fang ruts the young woman mercilessly, growling and panting as he thrusts in and out.";
		say "     Getting blown as you watch Fang mounting your anthro husky housemate, the need to cum quickly rises inside you and you have to grab hold of Amy's head to stop from losing it right then and there. Cock resting for a moment in her throat, you take a deep breath, then slowly pull out and scooch back.  Now having her mouth free, Amy gives lustful pants and yips as Fang drives his shaft into her. Watching the black wolf mate her, you walk around them slowly taking in the full glory of the powerful wolf on top of his more human-like partner.";
		say "     [line break]";
		say "     What do you want to do now? Get blown by Amy and feed her your load (Y), or fuck and come in Fang's ass (N)? ";
		if player consents:     [sucking]
			say "     [line break]";
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Amy immediately goes for it, taking your hard length into her mouth again and starts bobbing up and down on it. She really is a natural at giving blowjobs, holding her lips tight around your shaft and teasing it with her tongue. Running your hands through Amy's hair, you speed up face-fucking the husky girl as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in her throat and shoot spurt after spurt of cum directly into her stomach.";
			say "     Breathing heavily, you stand still as Amy softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to sit down at the end of the mattress and watch the rest of your pet's coupling with Amy.";
			say "     [WaitLineBreak]";
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Amy, then holds still as it expands. Getting tied to Fang was the last straw for the aroused husky, and her body shudders as the feelings from her pussy make her gush femcum to drip down and soak into her bedding. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling Amy's womb with his fertile seed.";
			say "     That should satisfy even as horny a husky as Amy for a while. With both of them standing where they fucked, breathing heavily and patiently waiting for Fang's knot to go down and allow them to separate, you lay back on the mattress and get comfortable.";
		otherwise:              [fucking Fang]
			say "     [line break]";
			say "     Your eyes searching out your goal - the tight hole under Fang's tail - you stroke your hard cock and step closer to Fang's rear end. Running your hands through the fur on his lower back, you grab hold of the wolf's hips and sink your [cock of player] shaft into him with one deep thrust. After giving a loud yelp at the sudden anal invasion, Fang stops for a second and looks back. Seeing it's you, he accepts being fucked as his due to the Alpha, even tightening his anal muscles around you as you move inside him. Then the hot threesome continues, all of you moving together to give each other as much pleasure as you can.";
			say "     [WaitLineBreak]";
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Amy, then holds still as it expands. Getting tied to Fang was the last straw for the aroused husky, and her body shudders as the feelings from her pussy make her gush femcum to drip down and soak into her bedding. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling Amy's womb with his fertile seed. That only leaves you, with Fang's anal muscles twitching and gripping your manhood tightly as you thrust in one last time. Filling the wolf's back passage with a huge load of your seed, you once again prove your dominance as Alpha over him.";
			say "     Resting on Fang's furry back for a moment, you then pull your cock out of his cum-filled hole and sink down on Amy's mattress. Satisfied but exhausted after this session, you lie on it lengthwise and get comfortable. Both Amy and Fang still stand where they fucked, breathing heavily and patiently waiting for Fang's knot to go down and allow them to separate.";
		if felinoid companion is tamed:     [rivalry message - Beta Fang vs Felinoid]
			say "     [line break]";
			if level of Amy is 0:  [felinoid didn't fuck her yet]
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving the Fang and Amy a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional glance of interest at the dog-person and glare at the wolf. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must be your imagination you tell yourself as you doze off...";
			otherwise if level of Amy is 1:  [felinoid did fuck her]
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving the Fang and Amy a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional possessive glance at the dog-person and glare at the wolf for touching what the Felinoid has claimed as his own. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must be your imagination you tell yourself as you doze off...";
			otherwise if level of Amy is 99:  [felinoid forbidden to fuck her]
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving the Fang and Amy a calculating look. You see him pad closer and give a low, frustrated growl. Fang growls in response, holding his own, seemingly aware that you stopped the felinoid from fucking Amy before, but allowed him to fuck and breed her. When his knot goes down enough so he can pull out, Fang and Amy lie down on the mattress to cuddle against you. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional glance at the three of you. In your sleepy haze, you almost think the feline's just biding his time before taking Amy and you as well, but that must be your imagination you tell yourself as you doze off...";
	otherwise if (hp of Fang is 3 or hp of Fang is 4):    [Alpha Fang]  
		say "     Walking over to Fang, you crouch next to the big wolf and stroke him, rubbing his warm belly fur and his quickly hardening erection.  With your Alpha hot and ready to go, you and he walk over to the mattress you put up here in the library for the husky girl.";
		say "     Soon after, Amy comes into sight from among the long bookshelves in the library, walking towards you slowly, the stack of books in her hands so high that she can't actually see what is in front of her. As she comes closer, you walk up to her and take more than half of the books from her. She says 'Thank you, that's very nice of you.' - then she notices the look of lust in your eyes and Fang's presence. 'Oh', she says in an amused tone and sets down her books on the ground, then continues with 'Were you boys waiting for me? I wonder why...' in a playfully innocent tone. A moment later, she betrays that she's no blushing virgin as she moves up close to you, her hand feeling up the tent in your pants. With a lustful wink, she then saunters over to her bedding, swishing her tail while demonstratively shaking her hips.";
		say "     [WaitLineBreak]";
		say "     Amy gets on all fours to sniff and be sniffed by Fang, softly panting in rising arousal. Already knowing what's expected of her, she then turns her backside to the wolf, taking a secure stance and spreads her legs a bit further. With a satisfied growl Fang moves up behind her and sniffs Amy crotch, then jumps up and mounts her more human-like body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into the husky's ready pussy. Driven by his feral lust, Fang ruts the young woman mercilessly, growling and panting as he thrusts in and out.";
		say "     [WaitLineBreak]";
		say "     Seeing your Alpha penetrate Amy makes you quite hard as well and you quickly strip off your clothes. Pulling out your [cock of player] manhood, you pump your hand up and down its length a few times, then step up to the front of the mating couple and present your erection. Amy eagerly licks your balls and cock a bit before taking it into her mouth. ";
		say "     Getting blown as you watch Fang mounting your anthro husky housemate, the need to cum quickly rises inside you and you have to grab hold of Amy's head to stop from losing it right then and there. Cock resting for a moment in her throat, you take a deep breath, then slowly pull out and scooch back.  Now having her mouth free, Amy gives lustful pants and yips as Fang drives his shaft into her. Watching the black wolf mate her, you walk around them slowly taking in the full glory of the powerful wolf on top of his more human-like partner.";
		say "     [line break]";
		say "     What do you want to do now?  Get blown by Amy and feed her your cum (Y), or wait your turn at filling her pussy (N)? ";
		if player consents:     [sucking]
			say "     [line break]";
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Amy immediately goes for it, taking your hard length into her mouth again and starts bobbing up and down on it. She really is a natural at giving blowjobs, holding her lips tight around your shaft and teasing it with her tongue. Running your hands through Amy's hair, you speed up face-fucking the husky girl as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in her throat and shoot spurt after spurt of cum directly into her stomach.";
			say "     Breathing heavily, you stand still as Amy softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to sit down at the end of the mattress and watch the rest of your Alpha's coupling with Amy.";
			say "     [WaitLineBreak]";
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Amy, then holds still as it expands. Getting tied to Fang was the last straw for the aroused husky, and her body shudders as the feelings from her pussy make her gush femcum to drip down and soak into her bedding. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling Amy's womb with his fertile seed.";
			say "     That should satisfy even as horny a husky as Amy for a while. With both of them standing where they fucked, breathing heavily and patiently waiting for Fang's knot to go down and allow them to separate, you lay back on the mattress and get comfortable.";
		otherwise:              [fucking Amy]
			say "     [line break]";
			say "     Deciding that you'll wait your turn, you move to sit on the other end of Amy's mattress, watching your Alpha rut the husky girl and jerk off a bit. After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Amy, then holds still as it expands. Getting tied to Fang was the last straw for the aroused husky, and her body shudders as the feelings from her pussy make her gush femcum to drip down and soak into her bedding. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling Amy's womb with his fertile seed.";
			say "     [WaitLineBreak]";
			say "     You move over to crouch beside them, fondling and stroking both their bodies as you wait for Fang's knot to go down. Some time later, the wolf pulls out of Amy's hole and sits down on the floor nearby, curling up to lick himself clean. With Amy's pussy still gaping a bit and dripping femcum and your Alpha's seed, you quickly get on top of her and ram your erection home. Even stretched by Fang's shaft, she's still nicely tight and feeling your strong Alpha wolf's cum filling her hole and squishing around your thrusting member is a definite plus. It doesn't take all that long until you feel a familiar tingling in your balls, and with one last thrust, you bottom out inside Amy and come, adding your seed to Fang's load.";
			say "     Phew.  Satisfied and just a bit exhausted, you keep your slowly softening shaft in Amy's pussy, just lowering the two of you down to lie on her bedding together.";
		if felinoid companion is tamed:     [rivalry message - Alpha Fang vs Felinoid]
			say "     [line break]";
			if level of Amy is 0:  [Felinoid hasn't fucked Amy yet]
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Amy a calculating look. Seems almost like he's up to something - taking Amy away from Fang and mounting her himself most likely. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			otherwise if level of Amy is 1:  [Felinoid has fucked Amy]
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Amy a calculating look. Seems almost like he's up to something - filling Amy again to make her his alone possibly.  Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			otherwise if level of Amy is 99:  [Felinoid forbidden to fuck her]
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving the Fang and Amy a calculating look. You see him pad closer and give a low, frustrated growl. Fang growls in response, holding his own. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional glance at the three of you. In your sleepy haze, you almost think the feline's just biding his time before taking Amy and you as well, but that must be your imagination you tell yourself as you doze off...";
	if Lust of Amy is 0:  [not pregnant yet]
		let AmyPregchance be a random number from 1 to 20;
		if AmyPregchance > 13:
			now Lust of Amy is 24;  [someone has knocked her up - either the player or Fang]
	now lastfuck of Amy is turns;
	now lastfuck of Fang is turns;
	
	
Amy ends here.