Version 2 of Amy by Wahn begins here.
[Version 2 - More fun with all kinds of NPCs]
[Version 2.1 - Beta Fang additions and sex interaction restructuring by Prometheus]

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
[ 101: no interest of the player to fuck her                            ]
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
[ XP of Amy (relationship with Fang)                                    ]
[   0: nothing happened                                                 ]
[   1: Fang fucked her                                                  ]
[   2: Denied Beta Fang mating with Amy                                 ]
[  97: player forbade Beta Fang to mate with Amy, did not satisfy her   ]
[  98: player forbade Beta Fang to mate with Amy, satisfied her         ]
[  99: player forbade Omega Fang to get close to Amy                    ]
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
[ SnowAmySex (relationship with Snow)                                   ]
[   0: nothing happened                                                 ]
[   1: Snow fucked her                                                  ]
[  99: player stepped in before Snow could fuck Amy                     ]
[                                                                       ]
[ IcarusAmySex (relationship with Icarus)                               ]
[   0: nothing happened                                                 ]
[   1: Icarus fucked her                                                ]
[  99: player stopped Icarus                                            ]
[                                                                       ]
[ AlexandraAmySex (relationship with Alexandra)                         ]
[   0: nothing happened                                                 ]
[   1: Alexandra had fun with Amy                                       ]
[  99: player stepped in before Alexandra had any fun with Amy          ]
[                                                                       ]
[ CarlAmySex (relationship with Carl)                                   ]
[   0: nothing happened                                                 ]
[   1: Carl learned she's his daughter and stopped himself              ]
[  51: player pushed Carl to fuck Amy                                   ]

AmyNewPuppies is a number that varies. AmyNewPuppies is usually 0.
lastAmySpotted is a number that varies. lastAmySpotted is usually 255.
AmyShyness is a number that varies. AmyShyness is usually 1.
AmyMaturityCounter is a number that varies.
SvenAmySex is a number that varies.
BrutusAmySex is a number that varies.
SnowAmySex is a number that varies.
IcarusAmySex is a number that varies.
AlexandraAmySex is a number that varies.
CarlAmySex is a number that varies.

a postimport rule:
	if HP of Amy is 0: [shouldn't be in that state, bugfix code]
		now HP of Amy is 2;

Table of GameCharacterIDs (continued)
object	name
Amy	"Amy"

Amy is a woman.
[physical details as of game start]
ScaleValue of Amy is 3. [human sized]
Cock Count of Amy is 0. [no cock]
Cock Length of Amy is 0. [no cock length]
Ball Size of Amy is 0. [no ball size]
Ball Count of Amy is 0. [no balls]
Cunt Count of Amy is 1. [1 pussy]
Cunt Depth of Amy is 8. [gets stretched a bit by an alpha husky]
Cunt Tightness of Amy is 3. [gets stretched a bit by an alpha husky]
Nipple Count of Amy is 4. [4 nipples]
Breast Size of Amy is 2. [B cup at the start]
[Basic Interaction states as of game start]
PlayerMet of Amy is false.
PlayerRomanced of Amy is false.
PlayerFriended of Amy is false.
PlayerControlled of Amy is false.
PlayerFucked of Amy is false.
OralVirgin of Amy is true.
Virgin of Amy is true.
AnalVirgin of Amy is true.
PenileVirgin of Amy is true.
SexuallyExperienced of Amy is false.
MainInfection of Amy is "Husky Bitch".

The icon of Amy is Figure of Amy_icon.
Description of Amy is "[AmyDesc]".
Conversation of Amy is { "Woof." }.

instead of conversing the Amy:
	project the figure of Amy_face_icon;
	say "[AmyTalkMenu]";

to say AmyTalkMenu:
	LineBreak;
	say "What do you want to talk with Amy about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Talk about what comes to mind";
	[]
	if George's Animal Emporium is known and HP of Amy > 1 and "Collared_red" is not listed in Traits of Amy and "Collared_blue" is not listed in Traits of Amy:
		choose a blank row in table of fucking options;
		now title entry is "Take her to the pet store to find a collar for her";
		now sortorder entry is 2;
		now description entry is "Take Amy to the nearby animal emporium to see what you can find";
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
				if (nam is "Just chat a bit"):
					say "[AmyTalk1]";
				else if (nam is "Take her to the pet store to find a collar for her"):
					say "[AmyTalk_PetStore]";
				wait for any key;
				say "[AmyTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young woman, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say AmyTalk1:
	if (HP of Amy is 1): [child-like]
		say "     Amy says [one of]'This place is soo big. I wouldn't have believed it can exist if you hadn't brought me here.'[or]'You're really nice.'[or]'Woof!'[or]'I like you.'[or]'Some of the books here smell funny.'[at random]";
	else if HP of Amy is 2 or HP of Amy is 10: [matured]
		say "     Amy says [one of]'Thanks for bringing me here. I realize now how dangerous our trip through the city was.'[or]'I wonder how mother is doing. I wasn't with her all that long, but now that I think back, she didn't have anything on her mind except... well, sex.'[or]'Woof! Woof!' Then she laughs and adds 'Just kidding.'[or]'So much interesting stuff to read in here...'[or]'How were things before the nanites spread? The stories in the books seem... more peaceful, mostly.'[at random]";
	else if (HP of Amy is 11):[fucked]
		say "     Amy says [one of]'Thanks for bringing me here. I realize now how dangerous our trip through the city was.'[or]'I wonder how mother is doing. I wasn't with her all that long, but now that I think back, she didn't have anything on her mind except... well, sex.'[or]'Woof! Woof!' Then she laughs and adds 'Just kidding.'[or]'So much interesting stuff to read in here...'[or]'How were things before the nanites spread? The stories in the books seem... more peaceful, mostly.'[or]'I sometimes get all wet just thinking about sex. I guess that's something I inherited from mom, hm?[at random]";
	else if (HP of Amy is 12):[has puppies]
		say "     Amy says [one of]'Thanks for bringing me here. I realize now how dangerous our trip through the city was.'[or]'I wonder how mother is doing. I wasn't with her all that long, but now that I think back, she didn't have anything on her mind except... well, sex.'[or]'Woof! Woof!' Then she laughs and adds 'Just kidding.'[or]'So much interesting stuff to read in here...'[or]'How were things before the nanites spread? The stories in the books seem... more peaceful, mostly.'[or]'I sometimes get all wet just thinking about sex. I guess that's something I inherited from mom, hm?'[or]'One of the pups shredded a book - I hope that's not too bad.'[or]'Aren't the little ones cute?'[or]'One of the pups shredded a book - I hope that's not too bad.'[or]'Aren't the little ones cute?'[at random]";
	else:
		say "ERROR-Amy-[HP of Amy]C: She isn't in one of the states she should be in! Please report how you got to this message.";

to say AmyTalk_PetStore:
	say "     Approaching Amy, you ask her if she'd like to go on a little adventure, outside. She looks at you with a shy smile and asks, 'Sure, but will it be safe? We saw so many dangerous things on the way here, and...' You smile and pat her arm, explaining that it's just across the street really. Nothing dangerous this close to the library. She's happy to hear that and perks up, agreeing without any further hesitation. 'Yay, I hope it'll be fun!' the anthro dog adds in a chipper tone, and she's immediately ready to come with you for the excursion. Setting out together, it's not all that long of a walk till you get to the ransacked shopping street just west of the Grey Abbey Library, where you angle your steps towards the entrance of George's Animal Emporium. As you lead the way through the entrance door and the young husky woman follows, she sniffs the air, looking at the utter chaos within with innocent eyes. The aroma of dried cum doesn't seem to disturb her in any way, and she lets her curiosity run wild as she begins to explore and dig around a bit in the room.";
	say "     Of course Amy isn't the only one who looks around, and you poke and prod at the general chaos in the store, turning over things that are broken, sticky, spoiled and the like. After a little bit of searching, you do find what you're looking for - a nice, sky blue collar made of supple leather, perfect for a lovely demure husky woman. Hm, or shall you take that one over there - vibrant and red, its leather a little bit broader and more firm, fitting an active bitch that is ready for what the world throws at her. Well, or maybe that's just what your imaginative mind assigns to the colors. In the end, it's kind of a fashion choice. You call over Amy and show her the two collars you found, and she's immediately delighted, looking at them with interest. 'They're pretty. What are they?' she asks, full of innocence, and you explain that they're symbols of belonging to something - a family, a pack, an owner, ... you don't go into detail which one you see them for, instead just asking if she'd like to try one. You're sure it'd look pretty on her. Amy's tail wags in a happy sway, and she nods eagerly.";
	LineBreak;
	say "     [bold type]Which collar would you like to put on Amy?[roman type][line break]";
	let Amy_Collar_Choices be a list of text;
	add "The sky blue one!" to Amy_Collar_Choices;
	add "The vibrant red one!" to Amy_Collar_Choices;
	let Amy_Collar_Choice be what the player chooses from Amy_Collar_Choices;
	if Amy_Collar_Choice is:
		-- "The sky blue one!":
			say "     Petting her and stroking a hand over Amy's head, you advance with the blue collar in your hand, sliding it gently around her neck and then buckling the strip of leather. She gives you a happy, eager look, and tries to glance down to see her new bit of gear, without much success. Taking her to the wash room in the back, you allow Amy to look at herself in the mirror, which ends up causing her tail to beat wildly, as she loves how the collar looks on her. 'It's so pretty, I'll never take it off!' she exclaims happily, then gives you a hug and a content nuzzle of her nose against the side of your neck. Having done what you'd planned to do, you set out back towards the Grey Abbey Library.";
			TraitGain "Collared_blue" for Amy;
		-- "The vibrant red one!":
			say "     Petting her and stroking a hand over Amy's head, you advance with the red collar in your hand, sliding it gently around her neck and then buckling the strip of leather. She gives you a happy, eager look, and tries to glance down to see her new bit of gear, without much success. Taking her to the wash room in the back, you allow Amy to look at herself in the mirror, which ends up causing her tail to beat wildly, as she loves how the collar looks on her. 'It's so pretty, I'll never take it off!' she exclaims happily, then gives you a hug and a content nuzzle of her nose against the side of your neck. Having done what you'd planned to do, you set out back towards the Grey Abbey Library.";
			TraitGain "Collared_red" for Amy;

to say AmyDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Amy], LUST: [lust of Amy], LIBIDO: [Libido of Amy], THIRST: [thirst of Amy], LEVEL: [level of Amy], XP: [XP of AMY], DEXTERITY: [dexterity of Amy], SVENAMYSEX: [SvenAmySex], BRUTUSAMYSEX: [BrutusAmySex], SNOWAMYSEX: [SnowAmySex]  <- DEBUG[line break]";
	say "     Amy is a young and beautiful anthro canine, her body covered in soft, snowy fur. She has a slim, feminine muzzle and perky, overly large ears along with a large, fluffy husky tail. [if HP of Amy < 12]Her chest bears two firm and grope-able B cup breasts along with two smaller A cup pairs of breasts underneath them[else]Her chest bears two firm and grope-able C cup breasts along with two smaller B cup pairs of breasts underneath them. They all ooze small droplets of milk[end if][if Lust of Amy > 12]. There is a kind of special glow to her, and she seems to be very happy and fulfilled right now[else if Lust of Amy > 0]. Her belly bulges in obvious pregnancy, making her a very content and happy husky[end if]. ";
	if "Collared_red" is listed in Traits of Amy:
		say "He's wearing a sturdy, very well made dog collar of supple red leather, tight around her slender neck.";
	else if "Collared_blue" is listed in Traits of Amy:
		say "He's wearing a slender, very well made dog collar of sky blue leather, tight around her slender neck.";
	else:
		LineBreak;
	if HP of Amy is 1:
		say "     Her character is rather child-like, which might have something to do with having been born not all that long ago. She doesn't wear any clothing and usually moves around on all fours like a real dog.";
	else:
		say "     Having had time to read quite a bit in the library, Amy has visibly matured compared to how she acted when you brought her here. By now, she's taken up acting more like a normal human, a glint of intelligence in her eyes. She also no longer moves on all fours, but walks on her two digitigrade legs - although she still doesn't seem to see the point in clothing, preferring to be naked except for her fur.";
	if HP of Amy is 12:
		if Libido of Amy is 1:
			say "     On and around the mattress that serves as Amy's bedding, her firstborn puppy capers about, playfully exploring and looking for new interesting things. His mother[if Lust of Amy > 0 and Lust of Amy < 13], already pregnant with a new litter,[end if] is busy watching over him, but also immensely happy at having a child.";
		else if Libido of Amy > 1:
			say "     On and around the mattress that serves as Amy's bedding, her [Libido of Amy] puppies caper about, playing with each other and exploring for new interesting things. Their mother[if Lust of Amy > 0 and Lust of Amy < 13], already pregnant with the next litter,[end if] is quite busy riding herd on them all, but also immensely happy at having these children.";

The scent of Amy is "     Amy smells a bit of husky - and a ready and fertile one at that. The scent makes you pretty horny - especially after she licks your face when you come close to smell her.".

An everyturn rule:
	if Lust of Amy is 1:
		now AmyNewPuppies is a random number between 1 and 3;
		if Player is in the Grey Abbey Library:
			say "     Suddenly, Amy calls 'It's time!' and can be heard panting loudly. You rush over to the mattress serving as her bedding and see her lying on it, holding her bulging belly. There's a large patch of wetness under her spread legs, amniotic fluid from her womb showing that this isn't a false alarm. With nothing else you can do to help, you just sit beside Amy, holding her hand-paw and stroking her fur.";
			if AmyNewPuppies is 1:
				say "     Soon, her contractions come quicker and quicker, and then a single puppy slides out of her stretched vagina. It's rather large for a dog, but then - Amy isn't a normal husky either. You quickly grab a towel and wipe the newborn down, then put it up against the husky woman's breasts to drink. Hungrily sucking up milk, the little one quickly grows, arriving at early teen development before slowing down again.";
			else if AmyNewPuppies is 2:
				say "     Soon, her contractions come quicker and quicker, and then a puppy slides out of her stretched vagina, quickly followed by another. They're rather large for newborn dogs, but then - Amy isn't a normal husky either. You quickly grab a towel and wipe the two down, then put them up against the husky woman's breasts to drink. Hungrily sucking up milk, the little ones quickly grow, arriving at early teen development before slowing down again.";
			else if AmyNewPuppies is 3:
				say "     Soon, her contractions come quicker and quicker, and then a puppy slides out of her stretched vagina, quickly followed by another and another. They're rather large for newborn dogs, but then - Amy isn't a normal husky either. You quickly grab a towel and wipe the three down, then put them up against the husky woman's breasts to drink. Hungrily sucking up milk, the little ones quickly grow, arriving at early teen development before slowing down again.";
		else:
			say "     You have a strange feeling in your body, as if you somehow just know that a new life has entered this world. Maybe you should go check on Amy in the library...";
		increase Libido of Amy by AmyNewPuppies;
		now AmyNewPuppies is 0;
		now HP of Amy is 12;
		increase score by a random number between 5 and 10;
		now Lust of Amy is 0;
	if Lust of Amy > 1:
		decrease Lust of Amy by 1;
	if AmyMaturityCounter is 1:
		now HP of Amy is 2;
		now AmyMaturityCounter is 0;
	if AmyMaturityCounter > 1:
		decrease AmyMaturityCounter by 1;

instead of going up from Bunker while (HP of Amy is 1 and lastAmySpotted - turns > 3 and Amy is booked):
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: AMY SOLO WALKIN [line break]";
	now lastAmySpotted is turns;
	if AmyMaturityCounter > 16: [child-like]
		say "     As you come out of the bunker, you spot Amy standing on all fours over a book lying on the floor, just flipping a page with one of her paw-hands. It's a children's book, with many colorful pictures, but from the looks of it she's actually reading the descriptions too...";
	else if AmyMaturityCounter > 8:
		say "     As you come out of the bunker, you see Amy sitting on her mattress, reading a book. Stepping a bit closer, you catch a glimpse of its cover - it's a [one of]detective story for younger teenagers, judging from the picture of a group of adolescents on it, one of whom brandishes a large magnifying glass[or]book about fairy tales, containing collected stories from all kinds of places[at random].";
	else if AmyMaturityCounter > 1:
		say "     As you come out of the bunker, you see Amy sitting at one of the tables in the library, reading a book. Stepping a bit closer, you catch a glimpse of its cover - it's a schoolbook. High school from the looks of, specifically [one of]a history[or]a biology[or]a chemistry[or]a physics[at random] book.";

instead of navigating Grey Abbey Library while (HP of Amy is 1 and lastAmySpotted - turns > 3 and Amy is booked):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: AMY SOLO WALKIN [line break]";
	now lastAmySpotted is turns;
	if AmyMaturityCounter > 16: [child-like]
		say "     As you enter the library, you spot Amy standing on all fours over a book lying on the floor, just flipping a page with one of her paw-hands. It's a children's book, with many colorful pictures, but from the looks of it she's actually reading the descriptions too...";
	else if AmyMaturityCounter > 8:
		say "     As you enter the library, you see Amy sitting on her mattress, reading a book. Stepping a bit closer, you catch a glimpse of its cover - it's a [one of]detective story for younger teenagers, judging from the picture of a group of adolescents on it, one of whom brandishes a large magnifying glass[or]book about fairy tales, containing collected stories from all kinds of places[at random].";
	else if AmyMaturityCounter > 1:
		say "     As you enter the library, you see Amy sitting at one of the tables in the library, reading a book. Stepping a bit closer, you catch a glimpse of its cover - it's a schoolbook. High school from the looks of, specifically [one of]a history[or]a biology[or]a chemistry[or]a physics[at random] book.";

instead of going up from Bunker while ((HP of Amy > 1 and HP of Amy < 90) and (lastfuck of Amy - turns) > 12 and Amy is booked):
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: AMY LUST WALKIN [line break]";
	now lastfuck of Amy is turns + 4;
	if HP of Amy is 2: [mature virgin]
		say "     As you come out of the bunker, Amy walks up to you, something clearly on her mind. She says 'I've been feeling some... urges lately, and read up a bit about that. There were some novels over in that section -' At that, she points to a large bookcase over on a nearby wall, bearing a sign with 'Romance' on it. As she does so, Amy's arm brushes against her breast, causing the young husky to moan before she can stop herself. Biting her lip, she continues 'I-I... would you be my first? It's supposed to be with someone you care for and - you saved me from those ferals out on the streets, brought me here, allowed me to learn so much.'";
		say "     The young husky woman is clearly aching to be fucked - but before you can say anything about it, she turns her head a bit and says 'Oh, but you were just going somewhere, weren't you? I don't want to distract you, so I'll just... be here and if you ever want to spend some time with me.'";
		now HP of Amy is 10;
	else if HP of Amy is 10:
		say "     As you come out of the bunker, you see Amy sitting on her mattress, reading one of those romance novels with a pirate and a half-dressed woman on the front. She's slowly rubbing her breasts, moaning silently - which makes you remember her coming to talk to you about losing her virginity. The young husky woman is clearly aching to be fucked - you should probably just follow her invitation and take care of her - sometime soon.";
	else:
		say "     As you come out of the bunker, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Maybe you should help her out with that...";

instead of navigating Grey Abbey Library while (lastAmySpotted - turns > 24 and Libido of Amy > 3 and NadiaChickCounter > 3 and a random chance of 1 in 3 succeeds and Amy is booked):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	now lastAmySpotted is turns;
	if debugactive is 1:
		say "     DEBUG: AMY/NADIA TEACHING WALKIN [line break]";
	if NadiaChar-C is "0":
		now NadiaChar-C is "1";
	move player to Grey Abbey Library;
	say "     Entering the library, you're treated to the sight of Nadia having descended to the library's first floor, the colorful avian woman having left the familiar comforts of her nest. The reason for that soon becomes clear: massed in front of her in what used to be an old reading area are a number of both Amy and Nadia's younger children, and the latter is putting her education to good use, holding an impromptu class of sorts. She reads to the youngsters from an array of books, teaching them some basic mathematics while Amy acts as her teaching assistant, nipping rowdy canine and avian kids alike into line and supplying her with class materials from the stacks. The husky herself watches the class between such activities, clearly intent on learning as much as she can, too.";
	say "     The sight of the odd impromptu class, carried out by the two mothers, is quite encouraging. Compared to the numerous feral mutants in the city, it's nice to know that at least some of the next generation are having what humanity they were born with reinforced as opposed to the other way around.";

instead of navigating Grey Abbey Library while (lastNadiaSpotted - turns > 12 and lust of Amy > 1 and lust of Amy < 13 and NadiaPregVisibility > 1 and Amy is booked):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	now lastNadiaSpotted is turns;
	if debugactive is 1:
		say "     DEBUG: AMY/NADIA PREG WALKIN[line break]";
	say "     Nadia's left her nest and come to the library's first floor, where she's fussing with Amy. The latter seems a little nervous, like a young woman being fitted for a particularly fine dress, and as it turns out, that's not too far from the truth.";
	say "     The two of them are standing a little way away from Amy's mattress, half-hidden by some shelves, and as you draw closer you realize what their secret little meeting is all about. Both of them are far along enough in their pregnancies that they're showing quite well. Nadia is obviously quite happy to have found another breeder as good-natured as she is, and hums happily to herself measuring the size of Amy's baby bump with a measuring tape she's found somewhere in the library. The husky fidgets nervously as Nadia fits the tape snugly about her waist, blushing when Nadia tells her how big she is around now.";
	WaitLineBreak;
	say "     'I'm sure mine's bigger than yours!' Amy says, before taking the tape from Nadia and returning the favor.";
	LineBreak;
	say "     'No, I'm sure mine's bigger than yours!' Nadia retorts, but practically preens in pleasure when Amy tells her how much her pregnancy's grown.";
	LineBreak;
	say "     The back-and-forth goes on for a little while, both ladies clearly proud of their coming children, although the entire argument is quite playful - they're obviously teasing each other. As you leave, though, you catch a few snippets of their conversation:[line break]";
	let randomnumber be a random number from 1 to 6;
	if randomnumber is:
		-- 1:
			say "     'I'll be bigger than you are before the puppies are born!'";
			LineBreak;
			say "     'That's not fair, you can have a whole litter at a go while I only have one egg at a time!'";
			LineBreak;
			say "     Amy sticks out her tongue at Nadia. 'Well, you do get extra heavy and get a head start on the next one as well, so we'll call it even on that.'";
		-- 2:
			say "     'I've been feeling really, really hungry of late,' Nadia says, fluffing her feathers. 'Anything the chicks bring back in from the city is gone before I know it.'";
			LineBreak;
			say "     'But your tummy aside, you don't seem to have put on much weight.'";
			LineBreak;
			say "     Nadia pats her pregnancy happily. 'What can I say? I suppose I don't waste anything when I go about turning tasty treats into children.'";
		-- 3:
			say "     'Recently, I've had a strange desire to have ice-cream,' Amy tells Nadia. 'But I'm not sure if I could even recognize it if I saw some. I mean, I've only seen pictures and read about it in the library's books. It's supposed to be delicious.'";
			LineBreak;
			say "     'It is, and it's quite a pity. It's likely that any ice-cream still out there in the city will have melted by now. Maybe we can have some after we're rescued.'";
			LineBreak;
			say "     Amy looks a little upset by this news, but nods. 'It's just odd. I've never seen or even smelled it for real, but somehow I know what it is, and that I should have some...'";
		-- 4:
			say "     'The puppies are really pushing down on me,' Amy says as she runs her paws over the swell of her pregnancy. 'How do you stand getting so big so often?'";
			LineBreak;
			say "     'I'm not quite sure myself, let alone if it's something that can be learned,' Nadia replies. 'My body just handles each chick easier than the last.'";
			LineBreak;
			say "     'I'm sort of jealous.'";
		-- 5:
			say "     '...So, you learned everything you know just from reading the books in the library?'";
			LineBreak;
			say "     Amy looks confused at Nadia's question. 'Yes. Is that so surprising?'";
			LineBreak;
			say "     'My word. I-I'm not exactly sure how I should feel about this...'";
		-- 6:
			say "     'Have you ever experienced... you know, when you're trying to sleep at night and the puppies just won't quiet down inside you?'";
			LineBreak;
			say "     'It doesn't bother me, really,' Nadia says happily. 'In fact, it's actually quite comforting and reassuring, especially when I close my eyes and feel my little ones snuggling up inside me. Maybe you just need to think of it in a new light.'";
			LineBreak;
			say "     'All right then, I'll give it a try.' Amy sounds pretty unsure, though.";

instead of navigating Grey Abbey Library while ((HP of Amy > 1 and HP of Amy < 90) and (lastfuck of Amy - turns) > 12 and Amy is booked):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: AMY/OTHER SEX WALKIN [line break]";
	now lastfuck of Amy is turns + 4;
	if HP of Amy is 2:[mature virgin]
		say "     As you enter the library, Amy walks up to you, something clearly on her mind. She says 'I've been feeling some... urges lately, and read up a bit about that. There were some novels over in that section -' At that, she points to a large bookcase over on a nearby wall, bearing a sign with 'Romance' on it. As she does so, Amy's arm brushes against her breast, causing the young husky to moan before she can stop herself. Biting her lip, she continues 'I-I... would you be my first? It's supposed to be with someone you care for and - you saved me from those ferals out on the streets, brought me here, allowed me to learn so much.' The young husky woman is clearly aching to be fucked - but before you can say anything about it, she turns her head a bit and says 'Oh, but you were just going somewhere, weren't you? I don't want to distract you, so I'll just... be here and if you ever want to spend some time with me.'";
		say "     [bold type]How do you want to deal with this?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Have sex with her right now.";
		say "     [link](2)[as]2[end link] - Tell her to wait just a little longer.";
		say "     [link](3)[as]3[end link] - Tell her (tactfully) that you don't want to fuck her.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to have sex, [link]2[end link] to postpone or [link]3[end link] to tell her you won't do it.";
		if calcnumber is 1:
			LineBreak;
			say "[AmyFirstFuck]";
			now HP of Amy is 11;
		else if calcnumber is 2:
			LineBreak;
			say "     Clearing your throat, you catch Amy by the arm and tell her that you don't have time for her right now. She looks a little disappointed for a moment, but then nods to you and says she'll wait for you. With that, she skips off to distract herself with a good book.";
			now HP of Amy is 10;
		else if calcnumber is 3:
			LineBreak;
			say "     Clearing your throat, you catch Amy by the arm and calmly have a word with her, explaining that not everyone has the same sexual interests. She looks a little disappointed for a moment, but then seems to accept your decision. With a shy little nod, she then skips off to distract herself with a good book.";
			now HP of Amy is 101;
	else if HP of Amy is 10:[mature virgin, told the player she's horny]
		say "     As you enter the library, you see Amy sitting on her mattress, reading one of those romance novels with a pirate and a half-dressed woman on the front. She's slowly rubbing her breasts, moaning silently - which makes you remember her coming to talk to you about losing her virginity. The young husky woman is clearly aching to be fucked - you should probably just follow her invitation and take care of her - sometime soon.";
	else if HP of Amy > 10 and CuckList is not banned and Player is not CoA:
		say "[AmyNPCSexTable]";

to say AmyNPCSexTable:
	let AmyCandidateList be { "None" };
	let AmyChosenCandidate be "";
	if Xerxes is in Grey Abbey Library:
		add "Xerxes" to AmyCandidateList;
	if Felinoid Companion is tamed:
		add "Felinoid" to AmyCandidateList;
	if Fang is in Grey Abbey Library and Fang is Male:
		add "Fang" to AmyCandidateList;
	if Elijah is bunkered and HP of Elijah > 3 and HP of Elijah < 100:
		add "Elijah" to AmyCandidateList;
	if Sven is bunkered and HP of Sven > 5 and HP of Sven < 49:
		add "Sven" to AmyCandidateList;
	if demon brute is tamed and demon brute is listed in companionList of Player and DemonBruteStatus < 2 and (DBCaptureQuestVar is 5 or DBCaptureQuestVar is 7):
		add "Brutus" to AmyCandidateList;
	if Snow is in the Grey Abbey Library:
		add "Snow" to AmyCandidateList;
	if Icarus is in the Garden View:
		add "Icarus" to AmyCandidateList;
	if Alexandra is in the Grey Abbey Library and HP of Alexandra < 50:
		add "Alexandra" to AmyCandidateList;
	if Carl is in the Grey Abbey 2F:
		add "Carl" to AmyCandidateList;
	sort AmyCandidateList in random order;
	now AmyChosenCandidate is entry 1 of AmyCandidateList;
	if AmyChosenCandidate is:
		-- "Xerxes": [Xerxes]
			if thirst of Amy is 0: [first interest of Xerxes in her]
				if lust of Xerxes < 3:
					project Figure of Xerxes_hard_icon;
				else:
					project Figure of Xerxes_awesome_hard_icon;
				say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. A fact that hasn't gone unnoticed by someone else... you can see Xerxes standing on all fours not too far from the young husky, his eyes riveted on her naked form. The erection visible under his toned body shows that he's very interested indeed. Nevertheless, your well-behaved and trained dog doesn't act on his desires, just watching her intently.";
				say "     As you walk up beside him, the human dog gives you an exuberant greeting and licks your hand, then gives a little pleading whine [if lust of Xerxes > 2]followed by the question 'Master's Friend - Sex?' [end if]and another hungry look over at Amy. It seems pretty obvious that he'd love to be the one to fulfill Amy's current need.";
				LineBreak;
				say "     [bold type]Do you allow it and go ask Amy if she'd like to spend some time with your pet, or forbid Xerxes to get close to her?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Ask her is she'd like to spend some time with your pet.";
				say "     ([link]N[as]n[end link]) - Forbid Xerxes to get close to her.";
				if Player consents:[Amy+Xerxes Sex]
					LineBreak;
					say "     Walking towards Amy, she finally notices you when you're just a few steps away. She gives a high-pitched 'Oh', pulling her hands away from her crotch and sitting up before continuing sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand that she has these urges, then explain that she doesn't have to deal with them on her own if she'd rather have company. With a whistle, you call Xerxes, the human dog immediately appearing at your side, looking attentively from you to Amy. The young husky's eyes are immediately drawn to his hard cock and her libido flares up again. She gives you a beaming smile and a nod, then rolls over and gets on all fours, spreading her legs a bit as she presents herself to the transformed dog.";
					if lust of Xerxes >= 4:[awesome/intelligent Xerxes]
						say "     You pat Xerxes shoulder and tell him to 'Go for it' with a grin. Having gained intelligence to go along with his canine mind, he is able to hold back his instinctive desire to rut her hard and fast for a while, taking the time to run his hands over Amy's back and female curves first. He leans close against her back to cup two of the husky's breasts with his hands while moving his hips to position his shaft at her opening. Then, with a quick thrust accompanied by two persons very satisfied moans, he sinks his manhood into her dripping wet pussy. Xerxes takes slower thrusts at first, enjoying the feel of Amy's hot, wet hole around his pulsing shaft. His hands roam over her[if lust of Xerxes < 7] almost as if he were petting Amy[else], stroking and caressing Amy's body with growing adeptness[end if]. He nuzzles at the back of the young husky's neck, panting with a growing excitement that has his pace quicken in response.";
						say "     Xerxes fucks Amy with a relentless wild energy, his hard thrusts hitting very sensitive spots again and again, making her pant and yip in pleasure. This soon drives Amy's arousal to the max, giving her a mind-blowing orgasm that moistens Xerxes cock with even more slippery femcum. He obviously likes the feeling of that, as his growls of lust increase and he speeds up before plunging in one last time and filling Amy's womb with his human seed.";
					else:[basic Xerxes]
						say "     Almost before you're finished telling him to 'Go for it', Xerxes is on top of Amy, his muscular chest against her back as he hugs her tightly and grinds his crotch against her body. Being a natural in the typical 'doggie-style', his shaft quickly finds her dripping opening and plunges deep into the husky's body. Xerxes fucks Amy with a relentless wild energy, his hard thrusts hitting very sensitive spots again and again, making her pant and yip in pleasure. This soon drives Amy's arousal to the max, giving her a mind-blowing orgasm that moistens Xerxes cock with slippery femcum. He obviously likes the feeling of that, as his growls of lust increase and he speeds up before plunging in one last time and filling Amy's womb with his human seed.";
					say "     As his cock and balls keep twitching with blast after blast of cum into his sexual partner, Xerxes just keeps holding on to Amy, panting with his head over her shoulder. Exhausted, the husky lowers herself to lie on her bedding, taking your human dog with her so they end up cuddled together on the mattress[if lust of Xerxes >= 4]. Raising his head to look at you for a moment, Xerxes mumbles 'Mmm... Master-Friend Amy nice' to you, then snuggles up to her with his arms around the young woman's chest[end if].";
					if Lust of Amy is 0: [not pregnant]
						let AmyPregchance be a random number from 1 to 20;
						if AmyPregchance > 13: [30% chance]
							now Lust of Amy is 24; [24 turns till birth]
					now thirst of Amy is 1;
					NPCSexAftermath Amy receives "PussyFuck" from Xerxes;
				else:[Xerxes forbidden]
					LineBreak;
					say "     Shaking your head to the dog in the body of a human teenager, you take Xerxes to his cot, some distance away from Amy. After having him sit on it, you continue to tell him that he should stay away from Amy. Your pet gives a somewhat sad yip as he looks over at the naked husky again, then accepts his master's orders and lies down.";
					now thirst of Amy is 99; [Xerxes/Amy sex forbidden]
			else if (lastfuck of Xerxes - turns) > 12 and thirst of Amy is 1 and a random chance of 1 in 5 succeeds:
				if lust of Xerxes < 3:
					project Figure of Xerxes_hard_icon;
				else:
					project Figure of Xerxes_awesome_hard_icon;
				say "     Entering the library, you see Amy - on all fours on her bedding, with Xerxes mounting her from behind. Looks like she felt the need to get some relief from her mounting arousal again. You human dog's firmly muscled ass moves back and forth as he pounds her pussy with a relentless wild energy, his hard thrusts obviously hitting just the right spots, judging from Amy's pants and pleased yips. This soon drives Amy's libido to the max, giving her a mind-blowing orgasm that moistens Xerxes cock with slippery femcum. He obviously likes the feeling of that, as his growls of lust increase and he speeds up before plunging in one last time and filling Amy's womb with his human seed.";
				say "     As his cock and balls keep twitching with blast after blast of cum into his sexual partner, Xerxes just keeps holding on to Amy, panting with his head over her shoulder. Exhausted, the husky lowers herself to lie on her bedding, taking your human dog with her so they end up cuddled together on the mattress[if lust of Xerxes >= 4]. Raising his head to look at you for a moment, Xerxes mumbles 'Mmm... Master-Friend Amy nice' to you, then snuggles up to her with his arms around the young woman's chest[end if].";
				if Lust of Amy is 0:
					let AmyPregchance be a random number from 1 to 20;
					if AmyPregchance > 13:
						now Lust of Amy is 24;
				NPCSexAftermath Amy receives "PussyFuck" from Xerxes;
			else if (lastfuck of Xerxes - turns) > 12 and thirst of Amy is 99 and a random chance of 1 in 5 succeeds and Player is male: [having sex in front of Xerxes]
				if lust of Xerxes < 3:
					project Figure of Xerxes_hard_icon;
				else:
					project Figure of Xerxes_awesome_hard_icon;
				say "     As you enter the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. You also notice that Xerxes is crouched on his cot, watching her from a distance. Obedient as ever, the human dog does follow your orders to stay away from Amy to the letter, though that doesn't mean his interest in her isn't still burning bright. All on its own, a wicked little idea suddenly comes to the forefront of your mind - maybe it'd be fun, to go over there and take Amy for a ride, just now. A bit naughty towards the dutiful human dog, savoring something denied to him right before his eyes, but... that's half the thrill of it, isn't it?";
				say "     [bold type]Do you want to fuck Amy while Xerxes watches?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if Player consents:
					if AmyShyness is 1:
						say "     A wide grin spreading over your face, you saunter over to Amy's bed and are finally noticed by her when you're just a few steps away. She gives a high-pitched 'Oh', pulling her hands away from her crotch and sitting up before continuing sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand that she has these urges and that there's no problem at all to masturbating - well, as long as she doesn't mind an audience, you then add, with a nod towards Xerxes. Giving a shocked little yip, she shyly covers herself with her hands, though you manage to distract her from too many worries about being having given the human dog a show when you kneel down and embrace her from behind. With you sliding your hands over her naked body and whispering in a pointed ear that she doesn't have to hide herself and can just let him look, it doesn't take long before the aroused husky woman lowers her arms and turns to kiss you.";
					else if AmyShyness is 2:
						say "     A wide grin spreading over your face, you saunter over to Amy's bed and are finally noticed by her when you're just a few steps away. She gives a high-pitched 'Oh', pulling her hands away from her crotch and sitting up before continuing sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand that she has these urges and that there's no problem at all to masturbating - well, as long as she doesn't mind an audience, you then add, with a nod towards Xerxes. Giving a shocked little yip, her arm moves a bit as if to cover her breasts, then she gives herself a little shrug and lets it drop again. 'Too late now for modesty, isn't it?' she muses in a thoughtful tone before you distract her by stepping up and embracing her from behind. With you sliding your hands over her naked body and whispering in a pointed ear that she doesn't have to hide herself and can just let him look, the aroused husky soon forgets about anyone else and just turns around to kiss you hungrily.";
					else if AmyShyness is 3:
						say "     A wide grin spreading over your face, you saunter over to Amy's bed and are finally noticed by her when you're just a few steps away. She gives a high-pitched 'Oh', pulling her hands away from her crotch and sitting up before continuing sheepishly with 'I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand that she has these urges and that there's no problem at all to masturbating - well, as long as she doesn't mind an audience, you then add, with a nod towards Xerxes. Giving a shy little smile, she bites her lip and says 'I... knew he was there.' Giving Xerxes a short look, she then moves to embrace you and gives you a hungry kiss.";
					else if AmyShyness is 4:
						say "     A wide grin spreading over your face, you saunter over to Amy's bed and are finally noticed by her when you're just a few steps away. She gives a high-pitched 'Oh', pulling her hands away from her crotch and sitting up before continuing sheepishly with 'I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand that she has these urges and that there's no problem at all to masturbating - well, as long as she doesn't mind an audience, you then add, with a nod towards Xerxes. Demonstratively raising herself up a bit more and stroking a hand sensuously over her four breasts, she smiles at the human dog for a moment, then giggles and says 'Oh, I know he's watching. Wanna... give him some more to see?' With that, she moves to embrace you and gives you a hungry kiss.";
					if AmyShyness < 4:
						increase AmyShyness by 1;
					if (Lust of Amy > 1 and Lust of Amy < 12): [pregnant version]
						say "     After a moment of breathless tongue-wrestling, Amy moans, 'I need you inside me,' and quickly gets on all fours showing her ass and the dripping vagina between her legs invitingly. Hurriedly throwing off your clothes, you move to kneel behind Amy, then lean over her. As you wrap your arms around her from behind, fondling her four breasts and rubbing the bulging pregnant belly, your [Cock of Player] shaft comes to rest hotly against her furred ass. Amy moans as you take hold of your cock, pushing it down a bit and rubbing its head over her pussy lips, then put its tip between them. Sliding into her wet and tight vagina in one smooth move, you grunt deeply as you bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, then start pulling out a bit and thrusting back in, fucking the young husky.";
						WaitLineBreak;
						say "     Amy is a very enthusiastic sex-partner, rocking back to meet you with her hips as you pound into her. In between moans and pants, she groans 'Harder. Harder!', only satisfied when your balls smack against her buttcheeks with an audible thud each time you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
						say "     Immensely satisfied, you stay like that on top of her for a while, then pull your softening cock out and lie down with Amy. Spooning her, you run a hand through her soft belly fur, feeling the rounded curve of her body that bulges with the new life growing inside her.";
					else: [regular version]
						say "     After a moment of breathless tongue-wrestling, Amy moans, 'I need you inside me,' and quickly lies down on the bed, spreading her legs invitingly. Hurriedly throwing off your clothes, you move to kneel behind Amy, then lean over her. As your hands move to cup her four breasts, your [Cock of Player] shaft comes to rest hotly against her pubic mound. Amy moans as you take hold of your cock, rubbing its head over her pussy lips, then put its tip between them. Sliding into her wet and tight vagina in one smooth move, you grunt deeply as you bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, then start pulling out a bit and thrusting back in, fucking the young husky.";
						WaitLineBreak;
						say "     Amy is a very enthusiastic sex-partner, holding you close with her arms and making out as you pound into her. She even wraps her legs around your hips to pull your crotch down harder against her, moaning as your balls hit her buttcheeks when you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
						say "     Immensely satisfied, you stay like that on top of her for a while, then pull your softening cock out and lie down with Amy. Spooning her, you run a hand through her soft belly fur, circling her nipples with your finger, then just hold her.";
						if Lust of Amy is 0:
							let AmyPregchance be a random number from 1 to 20;
							if AmyPregchance > 10:
								now Lust of Amy is 24;
					NPCSexAftermath Amy receives "PussyFuck" from Player;
				else:
					say "     Slowly shaking your head, you push the thought aside and turn your attention to other things again.";
			else:
				say "     As you come out of the bunker, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Maybe you should help her out with that...";
		-- "Felinoid": [Klauz]
			if level of Amy is 0: [first interest of the Felinoid in her]
				say "     Entering the library, you see Amy walking towards her bedding with a book in hand, reading intently. Then suddenly, Klauz moves into her way, giving a welcoming growl as he circles the young husky, rubbing his flank against her hips. Amy gives a pleased giggle at his presence and reaches down to pet him, rubbing behind his ears and down over his back, making the large feline purr almost as loud as an idling motor. He luxuriates in her touch, stretching so she can get to the best spots and brushing against her as often as he can. You can see Amy take a deep breath through her nose, giving a soft moan as she does so. Before long, the young husky is crouched down beside the big cat, her book lying forgotten on the ground while she strokes under his chin, her other hand on her crotch, caressing her open and quickly swelling pussy lips.";
				LineBreak;
				say "     Having been close to the felinoid and been in the influence of his stimulating musk yourself, you can see where this is going from a mile away.";
				say "     [bold type]Do you let Amy get her first sexual experience with the large cat, or should you move in and put a stop to this?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Allow this.";
				say "     ([link]N[as]n[end link]) - Stop it.";
				if Player consents: [felinoid fucks Amy]
					LineBreak;
					say "     Spellbound by the soothing purr, the soft touch of Klauz's fur and his stimulating musk, Amy's arousal mounts higher and higher by the minute. It doesn't take much longer until she moves into position on all fours, her legs spread and tail held high to allow the felinoid access to her pussy. Giving a satisfied rumbling purr, the large cat moves to sniff Amy's pussy, then licks over her female parts with its wide tongue. Several licks later, he moves further up, running his tongue over the young husky's back fur and then her neck.";
					say "     Now standing over the smaller shape of Amy, his belly-fur touching her back, Klauz is in the perfect position to fuck her. Lowering his hind legs a bit, your feline companion rubs his spined cock up and down the inside of husky girl's legs until he soon finds Amy's tight opening and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking her with powerful and deep thrusts. Moans, barks and growls of lust fill the library and you move a bit closer to watch the show.";
					WaitLineBreak;
					say "     After quite a while of hot and heavy fucking, Amy's moans and noises rise up to a loud pleased yip, announcing her orgasm to anyone in hearing range. Visibly satisfied in making her come, Klauz isn't far behind, burying his hard cock all the way in the young husky's pussy and holding still, only his balls pulsing as they fill her up with his seed. When he finishes cumming, the big cat pulls out and throws himself on the floor right at that spot to lounge in satisfaction. Amy kneels down beside him to lick his cock clean, then joins him on the floor, snuggling up against his warm furred shape.";
					if Lust of Amy is 0:[not pregnant]
						let AmyPregchance be a random number from 1 to 20;
						if AmyPregchance > 13:
							now Lust of Amy is 24; [24 turns till birth]
					NPCSexAftermath Amy receives "PussyFuck" from Klauz;
					now level of Amy is 1;
				else: [stop this]
					LineBreak;
					say "     Quickly walking over there, you take Amy softly by the arm, pulling her up and walking some distance away from the felinoid with her. As she stands there, no longer in the immediate influence of your feline companion, she starts to wind down again, though she is still breathing rather heavily and stroking over her breasts with her fingers as you go pick up her book. Klauz purrs and rubs his shoulder against you as you do so, and knowing him, you just give him a quick pat on the head, holding your breath until you stand back up. 'Not her,' you tell your companion, who gives a disappointed mew, then stalks off. As you're sure that he'll try again no matter what, you warn Amy not to get too close to him in the future when you give her the book back.";
					now level of Amy is 99;
			else if (lastfuck of felinoid companion - turns) > 12 and level of Amy is 99 and a random chance of 1 in 5 succeeds and Player is male:
				say "     As you enter the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. You also notice that Klauz is sitting not too far away, silently watching with his tail twitching from time to time. Knowing the beast, he must be waiting for the right moment to get close to Amy, when she's too far in the grasp of lust to remember your warning about him and his entrancing musk. That big cat really is totally incorrigible and far too smart than is good for everyone else. As you make the first step to go and shoo him away from the young woman, a wicked little idea suddenly comes to the forefront of your mind - it would be fun to tease the felinoid and fuck Amy right before his eyes, just now. Impotently watching as someone else takes what he desires might put him in his place for once...";
				LineBreak;
				say "     [bold type]Do you want to fuck Amy while Klauz watches?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if Player consents:
					LineBreak;
					if AmyShyness is 1:
						say "     A wide grin spreading over your face, you saunter over to Amy's bed, running a finger along the side of Klauz's ear as you pass him. Feeling the weight of his gaze on your back as you move on, you come to stand before Amy's mattress before much longer. Amy notices you when you softly clear your throat, giving a high-pitched 'Oh.' and pulling her hands away from her crotch in a flash. Sitting up straight, she says sheepishly, 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand that she has these urges and that there's no problem at all to masturbating - well, as long as she doesn't mind an audience, you then add, with a nod towards the silently watching felinoid. Giving a shocked little yip, she shyly covers herself with her hands, though you manage to distract her from too many worries about being having given the big cat a show when you kneel down and embrace her from behind. With you sliding your hands over her naked body and whispering in a pointed ear that she doesn't have to hide herself and can just let him look, it doesn't take long before the aroused husky woman lowers her arms and turns to kiss you.";
					else if AmyShyness is 2:
						say "     A wide grin spreading over your face, you saunter over to Amy's bed, running a finger along the side of Klauz's ear as you pass him. Feeling the weight of his gaze on your back as you move on, you come to stand before Amy's mattress before much longer. Amy notices you when you softly clear your throat, giving a high-pitched 'Oh.' and pulling her hands away from her crotch in a flash. Sitting up straight, she says sheepishly, 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand that she has these urges and that there's no problem at all to masturbating - well, as long as she doesn't mind an audience, you then add, with a nod towards the silently watching felinoid. Giving a shocked little yip, her arm moves a bit as if to cover her breasts, then she gives herself a little shrug and lets it drop again. 'Too late now for modesty, isn't it?' she muses in a thoughtful tone before you distract her by kneeling down and embracing her from behind. With you sliding your hands over her naked body and whispering in a pointed ear that she doesn't have to hide herself and can just let him look, the aroused husky soon forgets about anyone else and just turns around to kiss you hungrily.";
					else if AmyShyness is 3:
						say "     A wide grin spreading over your face, you saunter over to Amy's bed, running a finger along the side of Klauz's ear as you pass him. Feeling the weight of his gaze on your back as you move on, you come to stand before Amy's mattress before much longer. Amy notices you when you softly clear your throat, giving a high-pitched 'Oh.' and pulling her hands away from her crotch in a flash. Sitting up straight, she says sheepishly, 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand that she has these urges and that there's no problem at all to masturbating - well, as long as she doesn't mind an audience, you then add, with a nod towards the silently watching felinoid. Giving a shy little smile, she bites her lip and says 'I... knew he was there.' Giving the big cat a short look, she then moves to embrace you and gives you a hungry kiss.";
					else if AmyShyness is 4:
						say "     A wide grin spreading over your face, you saunter over to Amy's bed, running a finger along the side of Klauz's ear as you pass him. Feeling the weight of his gaze on your back as you move on, you come to stand before Amy's mattress before much longer. Amy notices you when you softly clear your throat, giving a high-pitched 'Oh.' and pulling her hands away from her crotch in a flash. Sitting up straight, she says sheepishly, 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand that she has these urges and that there's no problem at all to masturbating - well, as long as she doesn't mind an audience, you then add, with a nod towards the silently watching felinoid. Demonstratively raising herself up a bit more and stroking a hand sensuously over her four breasts, she smiles at the big cat for a moment, then giggles and says 'Oh, I know he's watching. Wanna... give him some more to see?' With that, she moves to embrace you and gives you a hungry kiss.";
					if AmyShyness < 4:
						increase AmyShyness by 1;
					if (Lust of Amy > 1 and Lust of Amy < 12): [pregnant version]
						say "     After a moment of breathless tongue-wrestling, Amy moans, 'I need you inside me,' and quickly gets on all fours showing her ass and the dripping vagina between her legs invitingly. Hurriedly throwing off your clothes, you move to kneel behind Amy, then lean over her. As you wrap your arms around her from behind, fondling her four breasts and rubbing the bulging pregnant belly, your [Cock of Player] shaft comes to rest hotly against her furred ass. Amy moans as you take hold of your cock, pushing it down a bit and rubbing its head over her pussy lips, then put its tip between them. Sliding into her wet and tight vagina in one smooth move, you grunt deeply as you bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, then start pulling out a bit and thrusting back in, fucking the young husky.";
						WaitLineBreak;
						say "     Amy is a very enthusiastic sex-partner, rocking back to meet you with her hips as you pound into her. In between moans and pants, she groans 'Harder. Harder!', only satisfied when your balls smack against her buttcheeks with an audible thud each time you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
						say "     Immensely satisfied, you stay like that on top of Amy for a while. Looking over at Klauz, you see that he's turned his back to you, as if totally disinterested with what you were doing - but the angle his ear is turned right at you belies that impression. He then turns his head to look at you for a short moment, the disdain at not being the one balls deep in Amy right now glaringly obvious, then he stalks off towards the entrance door of the library. His agitation and annoyance becomes obvious from the way his tail is whipping and twitching left and right, and you don't doubt that he will hunt for a husky somewhere out there that he can mount and breed. As he leaves, you pull your softening cock out and lie down with Amy. Spooning her, you run a hand through her soft belly fur, feeling the rounded curve of her body that bulges with the new life growing inside her.";
					else: [regular version]
						say "     After a moment of breathless tongue-wrestling, Amy moans, 'I need you inside me,' and quickly lies down on the bed, spreading her legs invitingly. Hurriedly throwing off your clothes, you move to kneel behind Amy, then lean over her. As your hands move to cup her four breasts, your [Cock of Player] shaft comes to rest hotly against her pubic mound. Amy moans as you take hold of your cock, rubbing its head over her pussy lips, then put its tip between them. Sliding into her wet and tight vagina in one smooth move, you grunt deeply as you bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, then start pulling out a bit and thrusting back in, fucking the young husky.";
						WaitLineBreak;
						say "     Amy is a very enthusiastic sex-partner, holding you close with her arms and making out as you pound into her. She even wraps her legs around your hips to pull your crotch down harder against her, moaning as your balls hit her buttcheeks when you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
						say "     Immensely satisfied, you stay like that on top of Amy for a while. Looking over at Klauz, you see that he's turned his back to you, as if totally disinterested with what you were doing - but the angle his ear is turned right at you belies that impression. He then turns his head to look at you for a short moment, the disdain at not being the one balls deep in Amy right now glaringly obvious, then he stalks off towards the entrance door of the library. His agitation and annoyance becomes obvious from the way his tail is whipping and twitching left and right, and you don't doubt that he will hunt for a husky somewhere out there that he can mount and breed. As he leaves, you pull your softening cock out and lie down with Amy. Spooning her, you run a hand through her soft belly fur, circling her nipples with your finger, then just hold her.";
						if Lust of Amy is 0:
							let AmyPregchance be a random number from 1 to 20;
							if AmyPregchance > 10:
								now Lust of Amy is 24;
					NPCSexAftermath Amy receives "PussyFuck" from Player;
				else:
					LineBreak;
					say "     Deciding against it, you just walk up behind Klauz and pat him on the head, stroking it but then also taking hold of the scruff of his neck. Crouching down, you whisper in his ear that he won't get mount Amy - not today, at least. And it seems he understands, giving a short rumbling mrowl and turning his head to look at you. The expression on his face seems to say 'You didn't just order me around - I didn't want her right now anyways.' After a moment of staring at you, he gives you the cold shoulder, just turning away and stalking off without a look back.";
			else if (lastfuck of felinoid companion - turns) > 12 and level of Amy is 1 and a random chance of 1 in 5 succeeds:
				say "     Entering the library, you see Amy - on all fours on her bedding, with your felinoid companion standing over her, his legs bent a bit as he mounts her from behind. She's clearly under his influence again, all wound up and horny to be fucked hard. Mating her with powerful and deep thrusts, Klauz doesn't hold back in any way. Moans, barks and growls of lust fill the library and you move a bit closer to watch the show.";
				say "     After quite a while of hot and heavy fucking, Amy's moans and noises rise up to a loud pleased yip, announcing her orgasm to anyone in hearing range. Visibly satisfied in making her come, Klauz isn't far behind, burying his hard cock all the way in the young husky's pussy and holding still, only his balls pulsing as they fill her up with his seed. When he finishes cumming, the big cat pulls out and throws himself on her bedding to lounge in satisfaction. Amy kneels down beside him to lick his cock clean, then joins him on the mattress, snuggling up against his warm furred shape.";
				if Lust of Amy is 0:
					let AmyPregchance be a random number from 1 to 20;
					if AmyPregchance > 13:
						now Lust of Amy is 24;
				NPCSexAftermath Amy receives "PussyFuck" from Klauz;
			else:
				say "     As you come out of the bunker, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Maybe you should help her out with that...";
		-- "Fang": [Fang]
			project Figure of Fang_hard_icon;
			if XP of Amy is 0 and (HP of Fang > 1 and HP of Fang < 6):[first interest of Fang in her]
				if HP of Fang < 5:
					say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Her head is leaned back, eyes closed, and she moans silently to herself. Looks like she's pretty horny, aching for a fuck. A fact that hasn't gone unnoticed by someone else... close to her, slowly stalking forward is Fang, his canine shaft hanging erect under his black-furred body. Then suddenly, he pounces the young husky, making her give a surprised yip that leads over to a lust-filled gasp as the wolf sinks his cock deep into her pussy with the first thrust. As deep in the grip of her own libido as she is, Amy just accepts the virile male on top of her, moaning as he starts rutting her with urgent movements.";
					if HP of Fang < 3: [Omega Fang can be stopped]
						LineBreak;
						say "     [bold type]Do you allow your pet wolf to fuck Amy, or do you want to put an end to this?[roman type][line break]";
						LineBreak;
						say "     ([link]Y[as]y[end link]) - Let him.";
						say "     ([link]N[as]n[end link]) - Stop him.";
						if Player consents:[Fang gets to fuck her]
							LineBreak;
							say "     Walking up to them, you pat the wolf's back and lean down to rub his furry balls as he thrusts into her again and again, feeling them lie heavy in your hand, full of the load he's got prepared for Amy's womb. 'Mmm... yes,' the aroused husky girl cries out as the wolf keeps pounding into her like a wild animal, 'Harder! Faster!' You slip your fingers to Amy's wet folds, caressing them as Fang's hard canine cock slides in and out.";
							if Player is male and anallevel > 1: [male/herm and anal sex allowed]
								say "     Being so close to the hot action of their mating, your own lust rears its head, giving you an almost painfully hard cock tenting your pants. The urge to bury it into the gripping embrace of Fang's tight asshole rises inside you. Do you do so?";
								if Player consents: [player fucks Fang]
									LineBreak;
									say "     Quickly pulling off your clothes and moving in behind Fang, you get your throbbing cock lined up with his tailhole, then push it into his tight pucker. Fang releases a soft whimper, but takes your cock easily enough in his experienced hole and doesn't let up at with his own thrusts into the wet pussy under him. Amy, meanwhile, moans loudly as your pounding against Fang's ass presses the wolf's shaft even deeper into her body. She rubs her hand-paws over his neck and ears, pulling his head down to trade licks, muzzle to muzzle.";
									say "     Fang licks her face and fucks her even harder, slamming his swollen knot against Amy's sore pussy until it stretches open enough to let that oversized knot pop in and tie with her. The black wolf howls triumphantly when this happens, unleashing a hot rush of semen into Amy, filling your husky girl with his ample load as he drains his large, virile balls into her. She writhes beneath him in ecstasy, cumming hard as well from taking your pet wolf's seed. On his back-end, you feel the wolf's insides twitch around your manhood with each burst of his cum into Amy, quickly driving you towards your own orgasm. As his muscles almost jerk you off as he spurts another and another blast of his seed, you can hold back no longer and blow your load deep into the wolf's bowels, claiming him once more as your own.";
									NPCSexAftermath Fang receives "AssFuck" from Player;
								else: [just watch and touch]
									LineBreak;
									say "     Being content to just watch and touch them a bit for now, you stay right beside Fang and Amy on the mattress, caressing her breasts and body as well as his balls. He pounds into her hard and fast while the young husky's needy cunt grips and squeezes around that feral wolf cock. She moans about how strong your pet wolf is, how virile, to breed her like the bitch she is. Clearly pleased by those words, Fang licks her face and fucks her even harder, slamming his swollen knot against Amy's sore pussy until it stretches open enough to let that oversized knot pop in and tie with her. The black wolf howls triumphantly when this happens, unleashing a hot rush of semen into Amy, filling your husky girl with his ample load as he drains his large, virile balls into her. She writhes beneath him in ecstasy, cumming hard as well from taking his canine seed. When his knot goes down, he pops his cock from her, letting his excess semen flow out to soak into the mattress, leaving the scent of it upon Amy and her bedding as a reminder to you and others that he bred her.";
							else: [just watch and touch]
								say "     Being content to just watch and touch them a bit for now, you stay right beside Fang and Amy on the mattress, caressing her breasts and body as well as his balls. He pounds into her hard and fast while the young husky's needy cunt grips and squeezes around that feral wolf cock. She moans about how strong your pet wolf is, how virile, to breed her like the bitch she is. Clearly pleased by those words, Fang licks her face and fucks her even harder, slamming his swollen knot against Amy's sore pussy until it stretches open enough to let that oversized knot pop in and tie with her. The black wolf howls triumphantly when this happens, unleashing a hot rush of semen into Amy, filling your husky girl with his ample load as he drains his large, virile balls into her. She writhes beneath him in ecstasy, cumming hard as well from taking his canine seed. When his knot goes down, he pops his cock from her, letting his excess semen flow out to soak into the mattress, leaving the scent of it upon Amy and her bedding as a reminder to you and others that he bred her.";
							if Lust of Amy is 0:[not pregnant]
								let AmyPregchance be a random number from 1 to 20;
								if AmyPregchance > 13:
									now Lust of Amy is 24; [24 turns till birth]
							NPCSexAftermath Amy receives "PussyFuck" from Fang;
							now XP of Amy is 1; [he fucked her and may do it again]
						else:[stop Fang]
							LineBreak;
							say "     Rushing forward, you grab Fang by the scruff of his neck and on his back, pulling him off the young husky under him and throwing him back from her. Snarling at being stopped from mounting a horny female, the black wolf shows his teeth for a second, then whines and tucks in his tail in submission a moment later as you give him your best domineering stare and remind him of his position as your Omega. Turning to Amy, you ask if she's okay, getting a moaned 'Yes, but I need someone to fuck me - now!' as an answer. Getting hammered by a randy wolf for a moment sent Amy's body into overdrive and she really needs someone to take up the slack, and quickly.";
							if Player is male:
								WaitLineBreak;
								say "     Well, you can't just leave her hanging now, can you? Quickly sliding off your clothes, you step up and kneel between Amy's legs, then lean over her. As you start making out hungrily, your [Cock of Player] shaft comes to rest hotly against her pubic mound. Amy moans as you take hold of your cock, rubbing its head over her pussy lips, then put its tip between them. Sliding into her wet and tight vagina in one smooth move, you grunt deeply as you bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, meanwhile seeking out Fang with a hard stare and growling to him to show that Amy is yours. Then you start pulling out a bit and thrusting back in, fucking the young husky.";
								say "     Amy is a very enthusiastic sex-partner, holding you close with her arms and making out as you pound into her. She even wraps her legs around your hips to pull your crotch down harder against her, moaning as your balls hit her buttcheeks when you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
								LineBreak;
								say "     Immensely satisfied, you stay like that on top of her for a while, then pull your softening cock out and lie down with Amy. Spooning her, you run a hand through her soft belly fur, circling her nipples with your finger, then just hold her.";
								if Lust of Amy is 0:[not pregnant]
									let AmyPregchance be a random number from 1 to 20;
									if AmyPregchance > 13:
										now Lust of Amy is 24; [24 turns till birth]
								NPCSexAftermath Amy receives "PussyFuck" from Player;
								now XP of Amy is 99; [no Amy-pussy for Fang]
							else:
								WaitLineBreak;
								say "     Well, you can't just leave her hanging now, can you? Quickly sliding off your clothes, you step up and kneel between Amy's legs, then lean over her. As you start making out hungrily, you move your hand down her naked body, stroking over her breasts and soft-furred stomach to arrive at her crotch. Carefully spreading the husky's sensitive pussy lips with your fingers, you rub over her clit, making her moan in pleasure. While you proceed to push your fingers into her wet pussy, stroking the aroused husky's insides, you look over at Fang, still standing nearby in his submissive stance. 'Fetch' you call out to him, pointing at the dildo you keep on a nearby shelf for use on Amy. The black wolf complies, delivering the rubber sex toy to you, though not without a whine that it'll go where he's been forbidden.";
								say "     Grinning, you hold out the dildo to Fang to have him lick it, then send him off to his usual spot with a wave of your hand. He's only a pet after all, something he clearly needs a reminder of. Bringing the dildo to Amy's crotch next, you rub its head over her pussy lips and push it in between them, going deeper and deeper. She moans loudly as you sink the whole rubber shaft into her, up till the balls as its base touch her crotch. Taking hold of the sex toy there, you pull it out halfway again, then thrust it back into her, fucking Amy with it and rubbing her inner walls with the hard rubber shaft. Fucking the husky woman is a lot of fun, though a bit tiring for your arm, so you switch off your left and right hands as you take care of the insatiably horny husky. Accompanied by moans and gasps to go harder and faster, Amy's libido builds up higher and higher and her arousal finally culminates in a pretty noisy orgasm. Giving a lust-filled howl as she comes, Amy writhes on her mattress, her femcum glistening wetly on the rubber shaft of the dildo you're fucking her with.";
								LineBreak;
								say "     Satisfied in having taken care of her, you leave the dildo buried in her pussy and lie down with Amy on her mattress. Spooning her, you run a hand through her soft belly fur, circling her nipples with your finger, then just hold her.";
								NPCSexAftermath Amy receives "PussyDildoFuck" from Player;
								now XP of Amy is 99; [no Amy-pussy for Fang]
					else if HP of Fang is 3 or HP of Fang is 4: [Alpha Fang fucks her for sure]
						say "     You stand there and watch as Fang mounts Amy, as is his right as Alpha over you - and now her as well. He pounds into her hard and fast while the young husky's needy cunt grips and squeezes around that feral wolf cock. She moans about how strong your big alpha is, how virile, to breed her like the bitch she is. Clearly pleased by those words, Fang licks her face and fucks her even harder, slamming his swollen knot against Amy's sore pussy until it stretches open enough to let that oversized knot pop in and tie with her. The black wolf howls triumphantly when this happens, unleashing a hot rush of semen into Amy, filling your husky girl with his ample load as he drains his large, virile balls into her. She writhes beneath him in ecstasy, cumming hard as well from taking your master's seed. When his knot goes down, he pops his cock from her, letting his excess semen flow out to soak into the mattress, leaving the scent of it upon Amy and her bedding as a reminder to you and others that she belongs to him now.";
						if Lust of Amy is 0:[not pregnant]
							let AmyPregchance be a random number from 1 to 20;
							if AmyPregchance > 13:
								now Lust of Amy is 24; [24 turns till birth]
						NPCSexAftermath Amy receives "PussyFuck" from Fang;
						now XP of Amy is 1;
				else if HP of Fang is 5: [Beta Fang can be stopped]
					say "     Entering the library, you see Amy and Fang talking, the husky lying on her bedding with her legs spread and a hand stroking the lips of her pussy absent-mindedly as she converses with the wolf who seems unfazed by her activity, even when the occasional moan escapes her lips. It looks like she's pretty horny and aching for a fuck, so you are mildly surprised that Fang hasn't jumped her. Despite his civility, you can see his canine shaft hanging erect beneath his black-furred body and his nose twitching as he inhales the scent of her arousal. Whatever they are discussing, it comes as a shock when Amy leans forward and grasps his cock with one paw while licking at his muzzle, the wolf returning her affection and kissing her back. It would seem that the husky has found a willing, not to mention enthusiastic, partner to placate her soaring libido. You doubt that it will be long until they consummate their mutual attraction.";
					LineBreak;
					say "     [bold type]Do you wish to allow Fang and Amy to get more intimate with each other?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Yes. Bonding is important between pack members";
					say "     ([link]N[as]n[end link]) - No. Despite her willingness, Amy is yours";
					if Player consents:[Fang gets to fuck her]
						LineBreak;
						say "     Finding a comfortable viewing spot, you politely wait for the two canines to get to know each other better. In the heat of the moment you're unsure whether they have noticed you, but in their lust filled state, you doubt that they would mind. Amy rolls over and kneels on all fours, presenting to Fang and hiking her tail to the side to reveal her swollen canine spade, its lips soft, puffy, and leaking a pheromone-laced fluid. She needs to be bred. Badly. The wolf doesn't hesitate, pressing his nose beneath her tail, licking at her juices and inhaling the aroma of her need, causing her vulva to dilate and contract rhythmically with each pass of his tongue. An impatient whine from Amy convinces Fang to mount her, the wolf's larger size meaning that he has to stand over top of her without making her support his weight, the fur of his tummy pressed against her back. The husky reaches a paw back between her legs to guide her partner into her pussy, pausing for a moment as her fingers encircle his shaft before holding his tip against her entrance, a needy expression on her face as she waits for Fang to proceed.";
						say "     Fang doesn't even wait a second, hunching atop Amy and spearing her with his scarlet cock and eliciting an ecstatic cry of unbridled pleasure from the husky as the craving of her loins is soothed by the firm flesh of the wolf's penis. Your beta's thrust doesn't stop until his groin is flat against the canine's bottom, his balls swinging forward beneath them, heavy with his seed. A second thrust soon follows the first and then more as the pair begin vigorously mating, grunts, growls, and moans filling the air, and you are sure that others in the library will hear, though you doubt that it will cause any problems between the residents other than perhaps envy that it is currently Fang breeding the pretty husky and not them. As their copulation continues, Amy exposes her neck to the larger male, the wolf nuzzling against her and licking the side of her muzzle, marking her with his scent and claiming her as a member of his pack.";
						WaitLineBreak;
						say "     You can see Fang's forepaws tighten on Amy's shoulders and his thrusts speed up as he approaches orgasm. This has the unintended side-effect of placing more of his weight upon the husky, causing her arms to collapse and her chest to be pressed against the carpet, each slap of their bodies colliding rubbing her blissful face across the floor. You can see the determination on Fang's face to knot his bitch, the bulbous swell of flesh stretching her lips further with each forceful thrust until, with a squelch, it is finally driven into the warm, wet embrace of the canine's pussy. It would seem that it isn't a moment too soon as you watch the wolf's balls tensing and releasing, sending their contents washing into Amy's womb. Perhaps due to instinct, Fang lifts a hind-leg over top of his partner and turns to face away, still firmly locked with her vagina, the husky lifting her front half up again and resting upon her elbows as she basks in the feeling of being filled with the wolf's cum, occasionally looking over her shoulder to meet his eyes with a look of adoration. You decide to give them their privacy as they have this moment, thinking to yourself that Amy will definitely be an enthusiastic member of yours and Fang's pack as you walk away.";
						if Lust of Amy is 0:[not pregnant]
							let AmyPregchance be a random number from 1 to 20;
							if AmyPregchance > 13:
								now Lust of Amy is 24; [24 turns till birth]
						NPCSexAftermath Amy receives "PussyFuck" from Fang;
						now XP of Amy is 1; [he fucked her and may do it again]
					else:[stop Fang]
						LineBreak;
						say "     Deciding that you would prefer that Fang didn't mate with Amy now or in future, you quickly run towards the two of them, shouting for Fang to heel. He gives you a withering glare, growling, 'I am not a dog,' but complies anyway with an apologetic look at the husky. Amy whines pitifully as the wolf's cock slips from her hand, turning to look accusingly at you for interfering with their moment, a feeling that you are sure that Fang shares despite his current obedience. 'You have neglected me for so long and now you come back and won't let someone more attentive sooth the pain of my heat. Can you understand why this upsets me?' the husky-girl asks you, returning to stimulating her cunt with her fingers in desperation to take the edge of her carnal hunger. 'I like Fang. He's strong, kind, and his fur feels nice against me. If you are worried he is forcing himself upon me or tricking me with pheromones, don't be. Admittedly, he smells nice, but he wants me as part of his, and your, pack so he wants a bond of trust. Would you deny me this comfort and companionship?'";
						LineBreak;
						say "     [bold type]Amy seems to want this. Do you relent and allow Fang to continue?[roman type][line break]";
						LineBreak;
						say "     ([link]Y[as]y[end link]) - Yes. If that is what she wants";
						say "     ([link]N[as]n[end link]) - No. Your authority must be respected";
						if Player consents:
							LineBreak;
							say "     Accepting that you aren't always around to soothe Amy's lusts and that she seems to have formed an attachment to the wolf, you let out a sigh before giving them a nod and find a comfortable place to sit while they mate. Amy rolls over and kneels on all fours, presenting to Fang and hiking her tail to the side to reveal her swollen canine spade, its lips soft, puffy, and leaking a pheromone-laced fluid. She needs to be bred. Badly. The wolf doesn't hesitate, pressing his nose beneath her tail, licking at her juices and inhaling the aroma of her need, causing her vulva to dilate and contract rhythmically with each pass of his tongue. An impatient whine from Amy convinces Fang to mount her, the wolf's larger size meaning that he has to stand over top of her without making her support his weight, the fur of his tummy pressed against her back. The husky reaches a paw back between her legs to guide her partner into her pussy, pausing for a moment as her fingers encircle his shaft before holding his tip against her entrance, a needy expression on her face as she waits for Fang to proceed.";
							say "     Fang doesn't even wait a second, hunching atop Amy and spearing her with his scarlet cock and eliciting an ecstatic cry of unbridled pleasure from the husky as the craving of her loins is soothed by the firm flesh of the wolf's penis. Your beta's thrust doesn't stop until his groin is flat against the canine's bottom, his balls swinging forward beneath them, heavy with his seed. A second thrust soon follows the first and then more as the pair begin vigorously mating, grunts, growls, and moans filling the air, and you are sure that others in the library will hear, though you doubt that it will cause any problems between the residents other than perhaps envy that it is currently Fang breeding the pretty husky and not them. As their copulation continues, Amy exposes her neck to the larger male, the wolf nuzzling against her and licking the side of her muzzle, marking her with his scent and claiming her as a member of his pack.";
							WaitLineBreak;
							say "     You can see Fang's forepaws tighten on Amy's shoulders and his thrusts speed up as he approaches orgasm. This has the unintended side-effect of placing more of his weight upon the husky, causing her arms to collapse and her chest to be pressed against the carpet, each slap of their bodies colliding rubbing her blissful face across the floor. You can see the determination on Fang's face to knot his bitch, the bulbous swell of flesh stretching her lips further with each forceful thrust until, with a squelch, it is finally driven into the warm, wet embrace of the canine's pussy. It would seem that it isn't a moment too soon as you watch the wolf's balls tensing and releasing, sending their contents washing into Amy's womb. Perhaps due to instinct, Fang lifts a hind-leg over top of his partner and turns to face away still firmly locked within her vagina, the husky lifting her front half up again and resting upon her elbows as she basks in the feeling of being filled with the wolf's cum, occasionally looking over her shoulder to meet his eyes with a look of adoration. You decide to give them their privacy as they have this moment, thinking to yourself that Amy will definitely be an enthusiastic member of yours and Fang's pack as you walk away.";
							if Lust of Amy is 0:[not pregnant]
								let AmyPregchance be a random number from 1 to 20;
								if AmyPregchance > 13:
									now Lust of Amy is 24; [24 turns till birth]
							NPCSexAftermath Amy receives "PussyFuck" from Fang;
							now XP of Amy is 1; [he fucked her and may do it again]
						else:
							say "     You look at the two of them sternly, uttering a single, 'No,' before waiting for them to comply. Amy looks ready to continue arguing but Fang reluctantly backs off. Despite his retreat he still confidently meets your gaze. 'Fine. No sex. But I shall still care for the girl. She is part of your pack and mine.' Not seeing anything wrong with this arrangement, you agree that that is acceptable, breathing an internal sigh of relief that there wasn't more pushback. It would be a shame to have to discipline Fang in front of others and diminish his authority. 'If you won't let him fuck me, you better be willing to do so yourself because my needs haven't been satisfied yet,' Amy complains while looking at you expectantly, her fingers still working over her dripping pussy. 'A sense of belonging is nice, but if it means that I'm left horny each day then pack be damned, I would rather be my own woman.'";
							LineBreak;
							say "     [bold type]Will you have sex with Amy yourself?[roman type][line break]";
							LineBreak;
							say "     ([link]Y[as]y[end link]) - Yes. You do sort of owe her that";
							say "     ([link]N[as]n[end link]) - No. You don't feel like it";
							if Player consents:
								LineBreak;
								if Player is male:
									WaitLineBreak;
									say "     While you may not be willing to let Fang have sex with your husky-girl, you don't have any problems doing so yourself. Stepping up to her, you grasp the back of her head and lock lips with her, kissing her deeply and heatedly before separating, both of you gasping for breath. She gives a momentary apologetic look at the wolf before turning around, dropping to all fours and presenting to you, her tail flagged to the side revealing her puffy and leaking pussy. Expecting Fang to leave, you are surprised when he lies down in front of Amy, watching the both of you intently. With a shrug, you crouch behind her and align your cock with her enlarged vulva, neither of you in the mood for foreplay. Taking a firm hold of her hips, you ram yourself in, the walls of her cunt spreading around your girth and causing a startled yelp to burst from Amy's lips. Her surprise doesn't last, and before long she is thrusting back to meet you, a hand grasping one of Fang's paws and squeezing each time you bottom out.";
									say "     You can feel the splash of Amy's juices against your groin each time you impact against her, the stickiness mixing with your sweat as you exert yourself to plunge into her harder and faster. You try angling the entry of your shaft every now and then to keep her excitement high as you rut with the husky. She isn't bothering to keep her voice down, loudly moaning, gasping, and egging you on, bringing a smirk to your mouth as you readily complying with her pleas to breed her and soothe the ache of her heat. Eventually, you can feel your climax boiling in your loins and you thrust into her one last time[if player is knotted], knotting her like the bitch that she is[end if] and flooding her womb with your seed. You are sure that Fang can hear as each spurt of cum splatters against the walls of her uterus and a small perverse pleasure lurks in the corner of your mind at him listening to you potentially knocking someone up. When you finally pull out of Amy, she slumps against the floor tiredly, a trickle of semen flowing from between the spread lips of her pussy. Given her state, you decide to leave her to recover, returning to the front of the library to decide what to do next.";
									if Lust of Amy is 0:[not pregnant]
										let AmyPregchance be a random number from 1 to 20;
										if AmyPregchance > 13:
											now Lust of Amy is 24; [24 turns till birth]
									NPCSexAftermath Amy receives "PussyFuck" from Player;
									now XP of Amy is 98; [Beta Fang denied mating with Amy, satisfied Amy]
								else if Player is female:
									WaitLineBreak;
									say "     While you may not be willing to let Fang have sex with your husky-girl, you don't have any problems doing so yourself. Eyeing what you assume is one of Amy's dildoes partially obscured by her blankets, you approach and more closely inspect it after flipping the sheet aside. It has ridges up the side as well as a knot near the base, like some sort of mythical monster, and you give the canine a dirty grin. You are definitely using this. She looks excited at this development, quickly approaching you when you beckon her, pressing herself against you and locking lips with you to give a brief heated kiss. The two of you lie down together, one of your arms around her back to clutch her to your side, the husky spreading her legs in preparation for the dildo's insertion. Expecting Fang to leave, you are surprised when he lies down beside Amy with a clear view of her pussy. Caring little for his presence, you align the tip of the synthetic shaft with your partner's swollen cunt, waiting for the go ahead before pushing the dildo in all the way to the knot.";
									say "     Amy gives a lustful moan as her walls are stretched apart by the toy's girth, releasing soft whimpers each time the ridges enter her. While her eyes are clenched shut, you notice that she is holding Fang's paw, her grip tightening each time the knot slaps against her entrance, and a corner of your mind revels in the perverse pleasure that this is as much as Fang will be getting from her unless you ever give him permission to do more. The texture of the dildo is definitely having an effect on the husky as it isn't long before her juices become more copious, splashing against your hand with each plunge of the toy. She isn't bothering to keep her voice down, loudly moaning, gasping, and egging you on, bringing a smirk to your mouth as you readily complying with her pleas to soothe the ache of her heat. Deciding to finish this, you give one last hard push and plunge the knot into the tight embrace of her cunt, triggering her climax. Both of her paws grip your wrist as she shudders in orgasm, her legs twitching sporadically and a euphoric expression on her face. When she doesn't respond to you waving a hand in front of her face, you decide to leave her under Fang's care to recover, returning to the front of the library to decide what to do next.";
									now XP of Amy is 98; [Beta Fang denied mating with Amy, player satisfied Amy]
								else:
									say "     Interrupting you as you agree to have sex with her, Amy angrily growls, 'You don't even have genitals. How are you meant to fuck me? Forget this, I'm going for a walk.' The husky storms off between the bookshelves, sensibly choosing to sulk in the library rather than going outside. Fang looks at you disappointedly, 'I'll talk to her and see whether I can cheer her up. Perhaps if you are unwilling or unable to properly satisfy someone you shouldn't deny them pleasures with others that they find. Alpha.' Fang bows to you and lopes off after Amy, leaving you to contemplate the encounter. While that could definitely have gone better, you place the blame on the two of them for considering having sex without your permission. If they had asked you could at least have nipped the problem in the bud. With a sigh, you return to the entrance of the library and decide what to do next.";
									now XP of Amy is 97; [Beta Fang denied mating with Amy, player did not satisfy Amy]
							else: [No sex with Amy]
								say "     'You're kidding me. Not only am I not allowed to fuck the wolf, you won't fuck me either? Forget this, I'm going for a walk.' The husky storms off between the bookshelves, sensibly choosing to sulk in the library rather than going outside. Fang looks at you disappointedly, 'I'll talk to her and see whether I can cheer her up. Perhaps if you are unwilling or unable to properly satisfy someone you shouldn't deny them pleasures with others that they find. Alpha.' Fang bows to you and lopes off after Amy, leaving you to contemplate the encounter. While that could definitely have gone better, you place the blame on the two of them for considering having sex without your permission. If they had asked you could at least have nipped the problem in the bud. With a sigh, you return to the entrance of the library and decide what to do next.";
								now XP of Amy is 97; [Beta Fang denied mating with Amy, player did not satisfy Amy]
			else if (lastfuck of Fang - turns) > 12 and XP of Amy is 99 and HP of Fang < 7 and a random chance of 1 in 5 succeeds and Player is male:
				say "     As you enter the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. You also notice that Fang is padding into her direction on silent paws. He's moving a bit hesitantly, likely remembering your commands not to bother Amy again, but the fact that his canine shaft is dangling erect between his legs shows that he really is on the way to mount her. Looks like your pet wolf needs a reminder to follow his master's orders. As you walk towards the two of them, a wicked little idea suddenly comes to the forefront of your mind - maybe you should just show the wolf that Amy is his alpha's bitch and fuck her right before his eyes, just now. The sting of impotently watching as someone else takes what he desires will remind him of his place as a lowly pack-member.";
				say "     [bold type]Do you want to fuck Amy while ordering Fang to watch?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if Player consents:
					LineBreak;
					if AmyShyness is 1:
						say "     A wide grin spreading over your face, you saunter over to Amy's bed and grab Fang by the scruff of his neck, bringing him to a standstill and ordering him to stay there until you allow him to move. The dark-furred wolf lowers his head and gives a submissive whine, as if to admit that he got caught doing something he shouldn't and that he accepts his punishment. Amy notices you as you deal with Fang, giving a high-pitched 'Oh.' Pulling her hands away from her crotch and sitting up, she continues sheepishly, 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand that she has these urges and that there's no problem at all to masturbating - well, as long as she doesn't mind an audience, you then add, with a nod towards silently watching Fang. Giving a shocked little yip, she shyly covers herself with her hands, though you manage to distract her from too many worries about being having given the feral wolf a show when you kneel down and embrace her from behind. With you sliding your hands over her naked body and whispering in a pointed ear that she doesn't have to hide herself and can just let him look, it doesn't take long before the aroused husky woman lowers her arms and turns to kiss you.";
					else if AmyShyness is 2:
						say "     A wide grin spreading over your face, you saunter over to Amy's bed and grab Fang by the scruff of his neck, bringing him to a standstill and ordering him to stay there until you allow him to move. The dark-furred wolf lowers his head and gives a submissive whine, as if to admit that he got caught doing something he shouldn't and that he accepts his punishment. Amy notices you as you deal with Fang, giving a high-pitched 'Oh.' Pulling her hands away from her crotch and sitting, she continues sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand that she has these urges and that there's no problem at all to masturbating - well, as long as she doesn't mind an audience, you then add, with a nod towards the silently watching Fang. Giving a shocked little yip, her arm moves a bit as if to cover her breasts, then she gives herself a little shrug and lets it drop again. 'Too late now for modesty, isn't it?' she muses in a thoughtful tone before you distract her by kneeling down and embracing her from behind. With you sliding your hands over her naked body and whispering in a pointed ear that she doesn't have to hide herself and can just let him look, the aroused husky soon forgets about anyone else and just turns around to kiss you hungrily.";
					else if AmyShyness is 3:
						say "     A wide grin spreading over your face, you saunter over to Amy's bed and grab Fang by the scruff of his neck, bringing him to a standstill and ordering him to stay there until you allow him to move. The dark-furred wolf lowers his head and gives a submissive whine, as if to admit that he got caught doing something he shouldn't and that he accepts his punishment. Amy notices you as you deal with Fang, giving a high-pitched 'Oh.' Pulling her hands away from her crotch and sitting, she continues sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand that she has these urges and that there's no problem at all to masturbating - well, as long as she doesn't mind an audience, you then add, with a nod towards the silently watching Fang. Giving a shy little smile, she bites her lip and says 'I... knew he was there.' Giving Fang a short look, she then moves to embrace you and gives you a hungry kiss.";
					else if AmyShyness is 4:
						say "     A wide grin spreading over your face, you saunter over to Amy's bed and grab Fang by the scruff of his neck, bringing him to a standstill and ordering him to stay there until you allow him to move. The dark-furred wolf lowers his head and gives a submissive whine, as if to admit that he got caught doing something he shouldn't and that he accepts his punishment. Amy notices you as you deal with Fang, giving a high-pitched 'Oh.' Pulling her hands away from her crotch and sitting, she continues sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand that she has these urges and that there's no problem at all to masturbating - well, as long as she doesn't mind an audience, you then add, with a nod towards the silently watching Fang. Demonstratively raising herself up a bit more and stroking a hand sensuously over her four breasts, she smiles at the feral wolf for a moment, then giggles and says 'Oh, I know he's watching. Wanna... give him some more to see?' With that, she moves to embrace you and gives you a hungry kiss.";
					if AmyShyness < 4:
						increase AmyShyness by 1;
					if (Lust of Amy > 1 and Lust of Amy < 12): [pregnant version]
						say "     After a moment of breathless tongue-wrestling, Amy moans, 'I need you inside me,' and quickly gets on all fours showing her ass and the dripping vagina between her legs invitingly. Hurriedly throwing off your clothes, you move to kneel behind Amy, then lean over her. As you wrap your arms around her from behind, fondling her four breasts and rubbing the bulging pregnant belly, your [Cock of Player] shaft comes to rest hotly against her furred ass. Amy moans as you take hold of your cock, pushing it down a bit and rubbing its head over her pussy lips, then put its tip between them. Sliding into her wet and tight vagina in one smooth move, you grunt deeply as you bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, then start pulling out a bit and thrusting back in, fucking the young husky.";
						WaitLineBreak;
						say "     Amy is a very enthusiastic sex-partner, rocking back to meet you with her hips as you pound into her. In between moans and pants, she groans 'Harder. Harder!', only satisfied when your balls smack against her buttcheeks with an audible thud each time you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
						say "     Immensely satisfied, you stay like that on top of Amy for a while. Looking over at Fang, still standing where you left him with his painfully erect cock, you meet his eye with a superior expression and call out that he may now leave. With a submissive whine, the wolf turns and walks off, then lies down on the ground once he's some distance away to take care of himself by licking at his own crotch. While he does so, you pull your softening cock out and lie down with Amy. Spooning her, you run a hand through her soft belly fur, feeling the rounded curve of her body that bulges with the new life growing inside her.";
					else: [regular version]
						say "     After a moment of breathless tongue-wrestling, Amy moans, 'I need you inside me,' and quickly lies down on the bed, spreading her legs invitingly. Hurriedly throwing off your clothes, you move to kneel behind Amy, then lean over her. As your hands move to cup her four breasts, your [Cock of Player] shaft comes to rest hotly against her pubic mound. Amy moans as you take hold of your cock, rubbing its head over her pussy lips, then put its tip between them. Sliding into her wet and tight vagina in one smooth move, you grunt deeply as you bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, then start pulling out a bit and thrusting back in, fucking the young husky.";
						WaitLineBreak;
						say "     Amy is a very enthusiastic sex-partner, holding you close with her arms and making out as you pound into her. She even wraps her legs around your hips to pull your crotch down harder against her, moaning as your balls hit her buttcheeks when you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
						say "     Immensely satisfied, you stay like that on top of Amy for a while. Looking over at Fang, still standing where you left him with his painfully erect cock, you meet his eye with a superior expression and call out that he may now leave. With a submissive whine, the wolf turns and walks off, then lies down on the ground once he's some distance away to take care of himself by licking at his own crotch. While he does so, you pull your softening cock out and lie down with Amy. Spooning her, you run a hand through her soft belly fur, circling her nipples with your finger, then just hold her.";
						if Lust of Amy is 0:
							let AmyPregchance be a random number from 1 to 20;
							if AmyPregchance > 10:
								now Lust of Amy is 24;
					NPCSexAftermath Amy receives "PussyFuck" from Player;
				else:
					say "     Deciding against it, you just walk up behind Fang and grab him by the scruff of his neck, then drag him off without Amy even noticing the wolf was there. Some distance away, you scold your disobedient pet, then leave him to stalk back to his place with his tail between his legs.";
			else if (lastfuck of Fang - turns) > 12 and XP of Amy is 1 and a random chance of 1 in 5 succeeds:
				if HP of Fang < 3: [Omega Fang]
					say "     Entering the library, you see Amy - on all fours on her bedding, with Fang mounting her from behind. Looks like she felt the need to get some relief from her mounting arousal again and he was only too happy to fuck the horny husky. The black wolf pounds into her hard and fast while the young husky's needy cunt grips and squeezes around that feral wolf cock. She moans about how strong your pet wolf is, how virile, to breed her like the bitch she is. Clearly pleased by those words, Fang takes the fur of her neck between his teeth in a careful bite and fucks her even harder, slamming his swollen knot against Amy's sore pussy until it stretches open enough to let that oversized knot pop in and tie with her. The black wolf howls triumphantly when this happens, unleashing a hot rush of semen into Amy, filling the husky girl with his ample load as he drains his large, virile balls into her. She writhes beneath him in ecstasy, cumming hard as well from taking your wolf's seed. When his knot goes down, he pops his cock from her, letting his excess semen flow out to soak into the mattress, leaving the scent of it upon Amy and her bedding as a reminder to you and others that he bred her.";
				else if HP of Fang is 3 or HP of Fang is 4: [Alpha Fang]
					say "     Entering the library, you see Amy - on all fours on her bedding, with Fang mounting her from behind. As he should be - as Alpha, he's got the right to take any female - or male - he likes, whenever he wants. He pounds into her hard and fast while the young husky's needy cunt grips and squeezes around that feral wolf cock. She moans about how strong your big alpha is, how virile, to breed her like the bitch she is. Clearly pleased by those words, Fang takes the fur of her neck between his teeth in a careful bite and fucks her even harder, slamming his swollen knot against Amy's sore pussy until it stretches open enough to let that oversized knot pop in and tie with her. The black wolf howls triumphantly when this happens, unleashing a hot rush of semen into Amy, filling the husky girl with his ample load as he drains his large, virile balls into her. She writhes beneath him in ecstasy, cumming hard as well from taking your master's seed. When his knot goes down, he pops his cock from her, letting his excess semen flow out to soak into the mattress, leaving the scent of it upon Amy and her bedding as a reminder to you and others that she belongs to him.";
				else: [Beta Fang]
					say "     Entering the library, you see Amy on all fours with Fang mounting her from behind. Whether she is being bred due to needing relief from her mounting arousal or the wolf strengthening his bond with her again is unimportant as either way they both seem to be enjoying their coupling. Amy doesn't hesitate to express her enjoyment of being pounded by the larger male, pushing back to meet his thrusts as she moans for him to breed her like the bitch she is and to fill her with his virile seed to put a litter of puppies in her. This encourages Fang to more vigorously mate with her, lightly grasping the fur of her neck between his teeth as he plunges his steadily swelling knot past her engorged vulva, the squelches and slurps showing just how lustful the both of them are.";
					say "     You seem to have caught the end of their coupling as soon the wolf gives one last thrust, the lips of the husky's pussy stretching around the sizable knot until with rush, it slips inside to lock the two of them together in the stereotypical canine tie. Fang howls triumphantly as he unleashes a deluge of semen into Amy's womb, the feeling of his virile seed filling her causing the husky girl to join him in orgasm, a look of absolute euphoria upon her face. As he continues to spurt his semen inside her, driven by instinct, the wolf lifts a hind-leg over top of his partner and turns to face away, his tongue lolling from the corner of his mouth, looking distinctly pleased with himself. He twitches an ear in greeting as he sees you but other than that keeps his attention on the pretty husky woman. Eventually, the two of them are able to separate, a steady stream of cum flowing from Amy's distended cunt as Fang pulls his softening shaft from her with an audible squelch. Your beta briefly licks her leaking pussy, even going so far as to slip his tongue inside to collect some of his semen, before swallowing and circling around to curl up beside the husky, the two of them sharing an intimate moment as they tenderly kiss. Deciding not to intrude on this moment any lnger, you leave the two of them alone, the last view you get being of Amy lovingly stroking Fang's lush fur.";
				if Lust of Amy is 0:
					let AmyPregchance be a random number from 1 to 20;
					if AmyPregchance > 13:
						now Lust of Amy is 24;
				NPCSexAftermath Amy receives "PussyFuck" from Fang;
			else:
				say "     As you come out of the bunker, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Maybe you should help her out with that...";
		-- "Elijah": [Elijah]
			if Dexterity of Amy is 0:[first interest of Elijah in her]
				if HP of Elijah is 99: [evil Elijah]
					say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. As you stand there, eyes riveted on her naked form, you suddenly hear a voice from behind you say 'Quite a horny bitch, the little husky you've brought here.' Elijah steps into view beside you a second later, giving you the usual expression of vain handsomeness, with his Adonis-like body only dressed in skin-tight leather pants and the pair of large black wings behind his back slightly spread. He claps a hand on your shoulder in an artificially comradely gesture, continuing with an awfully chummy-sounding 'I'm sure you don't have any problems with your good buddies having a go with her either? No? Good.' Having said that last bit in one go, without waiting a second for a response, he then starts walking towards the aroused husky, one hand rubbing his crotch through the tight leather pants.";
					LineBreak;
					say "     [bold type]Do you just stand back and watch the fallen angel approach Amy, or explain to your 'buddy' that he should keep his distance from her?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Stand back.";
					say "     ([link]N[as]n[end link]) - Step in and explain.";
					if Player consents:[Amy+Evil Elijah Sex]
						LineBreak;
						say "     Pulling off his boots, quickly followed by his leather pants, the now completely naked Elijah silently walks over to Amy. With her head leaned back and eyes closed as she revels in lustful fantasies, Amy doesn't even know the fallen angel is there until he's kneeling between her legs and reaches out to cup one of her breasts. With a surprised yip, Amy asks 'Who are you, what' - then she can't help but moan as he brings his other hand against her pussy, stroking her nether lips and clit with skillful fingers. 'Hush, my sweet little bitch. I'm here to give you what you need...' Elijah replies, then presses a kiss on the husky girl's lips as she tries to say something, just melting away any resistance she might have had left.";
						say "     As Amy starts to eagerly make out with him, the fallen angel aligns his erect shaft with her swollen and dripping pussy, then thrusts forward, sinking himself deep into her. There is a combined grunt and yip from the both of them as Elijah slides into Amy, rubbing against all the right spots. They gasp in lust as their hips touch, all of him now deep inside the young husky's body. Pushing his upper body up on his arms, the fallen angel gives a wide grin at Amy, then starts moving his hips, thrusting his cock into her again and again. He soon starts giving lustful grunts as he starts to pound more forcefully into her, driving his shaft deep in rapid movements. It's rather overwhelming for Amy, reducing her to gasping and moaning in pleasure as he starts using all kinds of other tricks, stroking her body in just the right spots while his cock finds pleasure zones she didn't even know she had. Must be something he learned from all those incubi and succubi he often picks up out in the city.";
						WaitLineBreak;
						say "     Elijah indulges himself with Amy for a long time, keeping her in a pleasant lustful buzz and giving her more than one orgasm, but at some point his self-control just is at an end. Giving a final satisfied moan, he drives his cock into her pussy as deep as he can and fills Amy's womb with spurt after spurt of his fertile seed. With a satisfied sigh, he pulls out of her and gets up, his load trickling out of her stretched pussy to soak into her bedding. Not even looking back as he leaves her, the dark angel then picks up his pants and boots, sauntering over to you in absolutely shameless nakedness. He gives you a wide grin and says 'Nice pussy, can't wait for the next time. Oh, and you really should put a collar and leash on her... wouldn't want such a fine bitch to run off.' With that, he walks away to go clean himself up.";
						if Lust of Amy is 0:
							let AmyPregchance be a random number from 1 to 20;
							if AmyPregchance > 13:
								now Lust of Amy is 24;
						NPCSexAftermath Amy receives "PussyFuck" from Elijah;
						now Dexterity of Amy is 51;
					else:[Evil Elijah forbidden]
						LineBreak;
						say "     Shaking off the effects of his slick charm and quick-talking, you hurriedly step forward, grabbing Elijah by the arm before he's more than a third towards Amy. Bringing the dark angel to a stop, you tell him in no uncertain terms that he should keep his hands off Amy. For a second, annoyance and anger flicker over his handsome face, then his features smooth out again as he brings himself under control. 'As you wish. And of course, she's not really trained yet after all. No leash or even a collar.' He shrugs and continues 'I guess I'm off a bit then, gonna hunt me down some sweet little thing and give her - or him - a good pounding.' With that, the dark angel saunters to the library entrance and goes out.";
						now Dexterity of Amy is 99; [Elijah/Amy sex forbidden]
				else: [good Elijah]
					say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. As you stand there, eyes riveted on her naked form, you suddenly hear a voice from your left say 'How was it out there today? Not too bad, I hope? Hey, what are you looking at -' It's Elijah, walking up between two long bookshelves. As he clears the shelf blocking his view on Amy and turns his head towards her, his eyes get wide and he can't take his gaze off her. Which leads to him literally bumping into you as he's still walking while staring at the husky girl. 'Oh, err - sorry. I was just...' Elijah stammers, his cheeks getting a bit red as he looks over to Amy again, then quickly down - which only draws your attention to the boner that has sprung up in his jeans, tenting them quite a bit. 'I - I got to go. Later...' he brings out, then starts turning, no doubt wanting to run off to hide his arousal and beat off somewhere quiet.";
					LineBreak;
					say "     [bold type]Do you want to stop him and introduce Elijah - intimately - to Amy, or just let him go?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Stop him and introduce them.";
					say "     ([link]N[as]n[end link]) - Let him go.";
					if Player consents:[Amy+Elijah Sex]
						LineBreak;
						say "     Grabbing Elijah by the arm, you hold on to him until he stops to weakly pull away, then say that you'll introduce him with a wink. Accompanied by the still blushing angel, you walk towards Amy and she finally notices you when the two of you are just a few steps away. She gives a high-pitched 'Oh', pulling her hands away from her crotch and sitting up before continuing sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand and it's nothing to be ashamed of. Then you push Elijah a step forward and introduce the two of them to each other. With the young husky looking up at him, the angel stammers out, 'Hi - you - you're beautiful.'";
						say "     There's a moment of silence as they just look at each other, with sexual tension almost palpable in the air between them, then you've got your arms around Elijah from behind and are undoing the button and zipper of his jeans. A quick pull downward later, your handsome angel stands bare-ass naked - and quite erect - in front of Amy. Telling Amy that she doesn't have to deal with her natural needs alone, you give Elijah a playful slap on the butt and tell them to have fun together. Then you move over to a nearby reading table, grab one of the chairs and sit down in a spot with a good view.";
						WaitLineBreak;
						say "     Amy is the first to respond to your sudden exposure of Elijah's hard shaft, moaning softly as she lays eyes on his heavenly perfect manhood. Her hands move to brush over her four breasts and she moans loudly, spreading her legs a bit and exposing her moist and swollen pussy for him. Now quickly succumbing to the grasp of his arousal, Elijah just gives a lustful pant, then sinks to his knees in front of the female husky and leans over her. Their lips meet and they start kissing hungrily, with his erection coming to lie hotly against her crotch. It's just a matter of moments until his rocking back and forth in their make-out-session puts the angel's cock right between her dripping pussy lips and he instinctively thrusts forward, sinking himself deep into her pussy.";
						say "     There is a combined grunt and yip from the both of them as Elijah slides into Amy, rubbing against all the right spots. They gasp in lust as their hips touch, all of Elijah now deep inside the young husky's body. After taking a deep breath, the handsome angel leans down again, giving Amy another kiss on the lips while his hips start moving, thrusting his cock into her again and again. And he's quite skillful in fucking her too - stroking and caressing her body as he goes along, nuzzling her four breasts and switching up with different positions that make his partner pant and howl in pleasure. Makes you wonder if he's found a copy of the Kama Sutra somewhere in the library or if he's just a natural...";
						WaitLineBreak;
						say "     Elijah indulges Amy's needs for a long time, keeping her in a pleasant lustful buzz and giving her more than one orgasm, but at some point his self-control just is at an end. Giving a final satisfied moan, he drives his cock into her pussy as deep as he can and fills Amy's womb with spurt after spurt of his fertile seed. With a satisfied sigh, he just holds her against his chest afterwards, staying with the young husky to cuddle a bit on her mattress.";
						if Lust of Amy is 0:
							let AmyPregchance be a random number from 1 to 20;
							if AmyPregchance > 13:
								now Lust of Amy is 24;
						NPCSexAftermath Amy receives "PussyFuck" from Elijah;
						now Dexterity of Amy is 1;
					else:
						LineBreak;
						say "     Grinning at the antics of your handsome angel, you just let him go, though your thoughts stray to what he'll be doing to himself soon, sending a tingle of lust through your body. Maybe you should fuck him a bit more often, if just the sight of a masturbating Amy gets him this hot and bothered. Though it is quite a nice view, you have to admit...";
						now Dexterity of Amy is 99;
			else if HP of Elijah > 3 and HP of Elijah < 100 and Dexterity of Amy > 0 and Dexterity of Amy < 99 and a random chance of 1 in 5 succeeds:[repeat sex between Elijah and Amy]
				if HP of Elijah is 99: [evil Elijah]
					say "     Entering the library, you see Amy - lying on her bedding and panting loudly as Elijah thrusts his hard cock into her in a rapid pace. He's holding her legs spread apart, hands gripping her fur tightly as he really pounds her pussy, filling the library with slapping sounds of his hips hitting her crotch. Looks like the two of them have been going at it for a while now, judging from the cum-soaked spot on the mattress under Amy's hips and the wet squishing noises as Elijah slams into her, making one of his previous loads ooze out around his shaft. Wanting to get a closer look, you move in and watch from behind a nearby bookshelf, observing their movements against each other and listening to the pants and moans as they come quicker and quicker. It's obvious that Elijah is getting close to another climax quickly and he suddenly grips Amy by the hips, holding her tight against himself as his balls twitch again, sending pulse after pulse of his seed deep into the husky's womb. Amy writhes beneath him in ecstasy, cumming hard as well from taking even more of the dark angel's seed.";
					say "     With a satisfied sigh, he pulls out of her and gets up, his fresh load trickling out of her stretched pussy to soak into her bedding. Not even looking back as he leaves her, the dark angel then picks up his pants and boots, grinning at you as he stands up, having obviously spotted you. He saunters over in absolutely shameless nakedness and says 'Nice pussy, can't wait for the next time. Oh, and you really should put a collar and leash on her... wouldn't want such a fine bitch to run off.' With that, he walks away to go clean himself up.";
				else:
					say "     Entering the library, you see Amy - straddling the hips of a naked Elijah as he lies on her bedding. She rocks back and forth, moaning loudly as his hard cock moves inside her while Elijah has his arms stretched up, hands caressing her breasts. Looks like the two of them have been going at it for a while now, taking care of each other's needs. Not wanting to disturb their eager coupling, you just watch them from behind a nearby bookshelf, observing their movements against each other and listening to the pants and moans as they come quicker and quicker. It's obvious that Elijah's climax quickly approaches and he suddenly grips Amy by the hips, rolling the two of them around so she's now under him. He thrusts into her a few more times with urgent movements, then suddenly stiffens, grunting as his balls twitch and unload his fertile seed deep in the husky girl's pussy. Amy writhes beneath him in ecstasy, cumming hard as well from taking your angelic friend's seed. With a satisfied sigh, he just holds her against his chest afterwards, staying with the young husky to cuddle a bit on her mattress.";
				if Lust of Amy is 0:
					let AmyPregchance be a random number from 1 to 20;
					if AmyPregchance > 13:
						now Lust of Amy is 24;
				NPCSexAftermath Amy receives "PussyFuck" from Elijah;
			else if (Dexterity of Amy is 99 and HP of Elijah < 99 and a random chance of 1 in 5 succeeds and Player is male): [having sex in front of Elijah]
				say "     As you enter the library, you see Elijah sitting cross-legged on the ground between the rows bookshelves, apparently so captivated by a good book that he just sat down right there to read it. Not far away, just around the corner of the shelves and a few steps to the side, Amy is lying on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck - and it's obvious that Elijah hasn't noticed her soft gasps and moans yet. The situation causes a wicked little idea to suddenly come to the forefront of your mind - maybe it'd be fun to go over there and take Amy for a ride just now, with the added thrill of possibly getting 'caught' if - no, when - the angel notices.";
				say "     [bold type]Do you want to fuck Amy and make Elijah blush?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if Player consents:
					LineBreak;
					if AmyShyness is 1:
						say "     A wide grin spreading over your face, you saunter over to Amy's bed along a route not in Elijah's field of view. As you're just a few steps away, you softly whisper the young woman's name a few times to get her attention, putting a finger in front of your mouth to stop her from making a sound. Turning her head a bit sideways to look at you, the husky gives a curious expression and whispers 'Oh?' while pulling her hands away from her crotch and sitting up. After you quickly move over and kneel beside her, Amy whispers sheepishly 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you whisper back that you understand that she has these urges and that there's no problem at all to masturbating - but that you'd like to do something better with her right now.";
						say "     Softly pulling her head around with a finger on her muzzle, you indicate the bookshelf behind which Elijah is sitting and whisper 'Let's fuck over there.' Amy's eyes go wide as she spots the angel's white wings through the gaps above the standing books and she replies 'But - but he'll notice us. That will -' While drawing her into a kiss to quell those concerns, you lower your hand to rub the husky's wet and swollen pussy, stoking the fires of her arousal to full force. In the grasp of lust, she readily lets herself be pulled to her feet and led over to the bookshelf after that.";
					else if AmyShyness is 2:
						say "     A wide grin spreading over your face, you saunter over to Amy's bed along a route not in Elijah's field of view. As you're just a few steps away, you softly whisper the young woman's name a few times to get her attention, putting a finger in front of your mouth to stop her from making a sound. Turning her head a bit sideways to look at you, the husky gives a curious expression and whispers 'Oh?' while pulling her hands away from her crotch and sitting up. After you quickly move over and kneel beside her, Amy whispers sheepishly 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you whisper back that you understand that she has these urges and that there's no problem at all to masturbating - but that you'd like to do something better with her right now.";
						say "     Softly pulling her head around with a finger on her muzzle, you indicate the bookshelf behind which Elijah is sitting and whisper 'Let's fuck over there.' Amy's eyes go wide as she spots the angel's white wings through the gaps above the standing books and she replies 'But - but he'll notice us. That's so naughty...' While drawing her into a kiss to quell those concerns, you lower your hand to rub the husky's wet and swollen pussy, stoking the fires of her arousal to full force. In the grasp of lust, she readily lets herself be pulled to her feet and led over to the bookshelf after that.";
					else if AmyShyness is 3:
						say "     A wide grin spreading over your face, you saunter over to Amy's bed along a route not in Elijah's field of view. As you're just a few steps away, you softly whisper the young woman's name a few times to get her attention, putting a finger in front of your mouth to stop her from making a sound. Turning her head a bit sideways to look at you, the husky gives a curious expression and whispers 'Oh?' while pulling her hands away from her crotch and sitting up. After you quickly move over and kneel beside her, Amy whispers sheepishly 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you whisper back that you understand that she has these urges and that there's no problem at all to masturbating - but that you'd like to do something better with her right now.";
						say "     Softly pulling her head around with a finger on her muzzle, you indicate the bookshelf behind which Elijah is sitting and whisper 'Let's fuck over there.' Amy's eyes go wide as she spots the angel's white wings through the gaps above the standing books and she replies 'He'll notice us for sure. You're very mean to want to shock him like that...' The glint of amusement in her eyes tells you that she doesn't really mean it and is in fact looking forward to getting 'caught' by Elijah. Drawing her into a kiss, you lower your hand to rub the husky's wet and swollen pussy, stoking the fires of her arousal to full force. Excited and in the grasp of lust, she willingly lets herself be pulled to her feet and led over to the bookshelf after that.";
					else if AmyShyness is 4:
						say "     A wide grin spreading over your face, you saunter over to Amy's bed along a route not in Elijah's field of view. As you're just a few steps away, you softly whisper the young woman's name a few times to get her attention, putting a finger in front of your mouth to stop her from making a sound. Turning her head a bit sideways to look at you, the husky gives a curious expression and whispers 'Oh?' while pulling her hands away from her crotch and sitting up. After you quickly move over and kneel beside her, Amy whispers sheepishly 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you whisper back that you understand that she has these urges and that there's no problem at all to masturbating - but that you'd like to do something better with her right now.";
						say "     Softly pulling her head around with a finger on her muzzle, you indicate the bookshelf behind which Elijah is sitting and whisper 'Let's fuck over there.' With her eyes instantly seeking out the place where the angel's white wings are visible through the gaps over the books, Amy gives a shy little smile and whispers, 'I... I was hoping he'd notice me before and maybe come over. If we fuck so close to him, he'll simply have to.' A mischievous smile plays over her muzzle as she adds, 'You're very mean to want to shock him like that...' The glint of amusement tells you how much she is looking forward to getting 'caught' by Elijah. Drawing her into a kiss, you lower your hand to rub the husky's wet and swollen pussy, stoking the fires of her arousal to full force. Excited and in the grasp of lust, she willingly lets herself be pulled to her feet and led over to the bookshelf after that.";
					if AmyShyness < 4:
						increase AmyShyness by 1;
					WaitLineBreak;
					if (Lust of Amy > 1 and Lust of Amy < 12): [pregnant version]
						say "     Coming to stand between the rows of bookshelves, just a small distance and one aisle away from Elijah, you share a deep kiss with Amy, the two of you exploring each other's mouth with your tongues. After a moment of very pleasurable tongue-wrestling, Amy gives a breathless, silent whisper of 'I need you inside me. Fuck me.' You pull back slightly, letting your eyes wander down over the sexy body of the husky, those shapely breasts and the tummy swollen with the new life inside, then meet her needy gaze and reach out to touch her. Softly pushing to turn her around, you bend her over to lean against one of the support struts of the bookshelf, sticking out her nice and round behind and exposing her sex. Then you step up right behind her and guide your hard cock to her crotch. Soft pussy lips spread readily for your invading member, allowing you to slide into her in one swift move that really has her fighting to suppress a moan.";
						say "     Now balls-deep in the sexy canine, you take a moment to revel in the feeling and give Amy's back a kiss, then start thrusting in and out. At first, the two of you do your best to keep quiet, panting silently under your breath and holding back from too heavy fucking, but all too quickly, arousal and lust make you forget about that. Stopping your movements for a second as the first full on gasp escapes Amy's lips, you look over at Elijah, but he remains as oblivious as ever to what's going on around him, still with his back turned and book in hand. After that, your restraint vanishes almost completely in short order, making you hump Amy against the bookshelf with ever-growing ardor and filling the library with moans and gasps.";
						WaitLineBreak;
						if a random chance of 3 in 4 succeeds:
							say "     Then it happens - one of your deep thrusts shakes the bookshelf so much that a book tumbles out of it on the other side, falling, falling... and landing right next to Elijah with a thunk that has the angel jump to his feet. He picks up the book, a curious expression on his face, then comes walking around the end of the bookshelf, soon stepping into the aisle you're in. The angel's eyes go wide as he spots Amy and you - and the fact that you are inside Amy - making him do a funny little 'Eeep' sound that has you and your husky partner turn your heads and look at him. The deliciously naughty feeling of getting caught in doing something fun and sexy crackles in the air between you and Amy, giving a nice little arousing tingle. With the way Elijah's face turns quite red in embarrassment, the two of you can't help but grin widely at him. As Elijah stammers, 'Oh... I'm sorry... I didn't want to disturb...' you start thrusting again, quite deliberately showing off.";
							say "     At first Amy tries to hold in the moans, biting her lower lip, but soon that resistance fades and she gasps loudly as your hard cock rubs a very sensitive spot deep inside her. That was the last straw for Elijah, overtaxing him with embarrassment and causing him to simply bolt, dashing off to leave you at it. You just keep going, now fully concentrating on Amy and taking out all the stops as you pound into her with full force. Nibbling on her ear, you pull her hips down harder against your crotch, the two of you moaning together as your balls hit her ass when you bottom out. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limits your endurance are reached. With a gasped 'I'm coming!', you thrust into Amy one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes against you, tongue lolling out of her mouth as she gets swept away by her orgasm.";
							WaitLineBreak;
							say "     Immensely satisfied, you pull your softening cock out with a little gush of cum, then pick up Amy and carry her back to her mattress. Putting her down on it, you move over to lie behind her. Spooning the beautiful husky, you run a hand through her soft belly fur, feeling the rounded curve of her body that bulges with the new life growing inside her.";
						else:
							say "     At that point, one of your deep thrusts shakes the bookshelf so much that one book, standing alone and without any neighbors that hold it in place, gets rocked towards the edge. You see it from the corner of your eye and look over, hips stopping in their tracks and heart beating incredibly fast as you watch it move as if in slow motion. Jostled forward from the impact of your hips against Amy's behind, transmitted through the bookshelf since she's pressed against it, the book starts to tip - slowly, slowly - tipping a bit more... and then it rocks back to stand solidly upright again, its back and binding hanging almost an inch over the edge. That was close. Really close. Just a little bit further and it would have fallen almost exactly on Elijah's head.";
							say "     It is in that moment that you realize that you don't want to get caught after all. No, it'd be far more exciting to fuck your sexy little husky Amy just on the other side of this bookshelf and a few steps away from Elijah - and get away with it. As entranced as the angel is in that book, not having heard you mating with Amy even if you are so close, you've still got a chance. And you actually want to use it, now. Leaning forward, you put both arms around Amy from behind, cupping her shapely breasts as you whisper in her pointed ear to hold fast and keep as silent as possible. Giving you a happy little smile over her shoulder, the young woman takes a deep breath, then presses her lips together and nods for you to continue.";
							WaitLineBreak;
							say "     Pulling back out of her, you take hold of your wet and slick erection and rub it over the husky's open and swollen nether lips, then start fucking her again - slower, this time, and making sure that you hold back at the end of each thrust as not to jostle the bookshelf too much. It's... quite a change of pace to fuck her like this now, different but also very nice, with you having the time to do some tricks like rotating your hips, creating all kinds of good sensations for both of you. Sliding in and out and relishing each moment, grinding your crotch against her furry behind, you build up arousal almost as quickly as if you were pounding into her with full force, until you soon feel the need to come rise from deep inside. Leaning forward to nibble on Amy's ear, you pull her hips down harder against your crotch, the two of you moaning together as your balls hit her ass when you bottom out.";
							say "     Panting 'I'm coming!' into her ear, you thrust into Amy one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes against you, tongue lolling out of her mouth as she gets swept away by her orgasm. But even so, she does her best to keep the noise down, only giving little yips and whimpers as her eyes seek out Elijah - who still is sitting with his back to the bookshelf, and the two of you, totally oblivious to what's been going on.";
							WaitLineBreak;
							say "     Immensely satisfied, you pull your softening cock out with a little gush of cum, creating a bit of a sticky mess on the library floor. Then you pick up Amy and carry her back to her mattress, silently giggling to each other at having fucked right next to Elijah and gotten away with it. Soon arriving at Amy's not too distant sleeping place, you lay her down on it and move to lie behind her. Spooning the beautiful husky, you run a hand through her soft belly fur, feeling the rounded curve of her body that bulges with the new life growing inside her.";
					else: [regular version]
						say "     Coming to stand between the rows of bookshelves, just a small distance and one aisle away from Elijah, you share a deep kiss with Amy, the two of you exploring each other's mouth with your tongues. After a moment of very pleasurable tongue-wrestling, Amy gives a breathless, silent whisper of 'I need you inside me. Fuck me.' You pull back slightly, letting your eyes wander down over the sexy body of the husky, those shapely breasts and the dripping folds between her legs, then meet her needy gaze and reach out to touch her. While Amy wraps her arms around you to hold on, you pull the young woman's leg up and against your hips, then change your grip, sliding both hands under her shapely behind to lift Amy off her feet. With her arms holding on to your shoulders and legs wrapped around your body, it's easy to snake a hand to your crotch and align the tip of your cock with her sex. Soft pussy lips spread readily for your invading member, allowing you to slide into her in one swift move that really has her fighting to suppress a moan.";
						say "     Now balls-deep in the sexy canine, you take a moment to revel in the feeling and give Amy another kiss, then lean her back against one of the support struts of the bookshelf and start thrusting in and out. At first, the two of you do your best to keep quiet, panting silently under your breath and holding back from too heavy fucking, but all too quickly, arousal and lust make you forget about that. Stopping your movements for a second as the first full on gasp escapes Amy's lips, you look over at Elijah, but he remains as oblivious as ever to what's going on around him, still with his back turned and book in hand. After that, your restraint vanishes almost completely in short order, making you hump Amy against the bookshelf with ever-growing ardor and filling the library with moans and gasps.";
						WaitLineBreak;
						if a random chance of 3 in 4 succeeds:
							say "     Then it happens - one of your deep thrusts shakes the bookshelf so much that a book tumbles out of it on the other side, falling, falling... and landing right next to Elijah with a thunk that has the angel jump to his feet. He picks up the book, a curious expression on his face, then comes walking around the end of the bookshelf, soon stepping into the aisle you're in. The angel's eyes go wide as he spots Amy and you - and the fact that you are inside Amy - making him do a funny little 'Eeep' sound that has you and your husky partner turn your heads and look at him. The deliciously naughty feeling of getting caught in doing something fun and sexy crackles in the air between you and Amy, giving a nice little arousing tingle. With the way Elijah's face turns quite red in embarrassment, the two of you can't help but grin widely at him. As Elijah stammers, 'Oh... I'm sorry... I didn't want to disturb...' you start thrusting again, quite deliberately showing off.";
							say "     At first Amy tries to hold in the moans, biting her lower lip, but soon that resistance fades and she gasps loudly as your hard cock rubs a very sensitive spot deep inside her. That was the last straw for Elijah, overtaxing him with embarrassment and causing him to simply bolt, dashing off to leave you at it. You just keep going, now fully concentrating on Amy and taking out all the stops as you pound into her with full force. Kissing her, you pull her hips down harder against your crotch, the two of you moaning together when your balls rub against her when you bottom out. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limits your endurance are reached. With a gasped 'I'm coming!', you thrust into Amy one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes in your arms, tongue lolling out of her mouth as she gets swept away by her orgasm.";
							WaitLineBreak;
							say "     Immensely satisfied, you carry Amy back to her mattress, holding her tight against your chest, then lie down together. Pulling your softening cock out with a little gush of cum, you move over to lie behind her. Spooning the beautiful husky, you run a hand through her soft belly fur, circling her nipples with your finger, then just hold her.";
						else:
							say "     At that point, one of your deep thrusts shakes the bookshelf so much that one book, standing alone and without any neighbors that hold it in place, gets rocked towards the edge. You see it from the corner of your eye and look over, hips stopping in their tracks and heart beating incredibly fast as you watch it move as if in slow motion. Jostled forward from the impact of your hips against Amy's crotch, transmitted through the bookshelf since her back is pressed against it, the book starts to tip - slowly, slowly - tipping a bit more... and then it rocks back to stand solidly upright again, its back and binding hanging almost an inch over the edge. That was close. Really close. Just a little bit further and it would have fallen almost exactly on Elijah's head.";
							say "     It is in that moment that you realize that you don't want to get caught after all. No, it'd be far more exciting to fuck your sexy little husky Amy just on the other side of this bookshelf and a few steps away from Elijah - and get away with it. As entranced as the angel is in that book, not having heard you mating with Amy even if you are so close, you've still got a chance. And you actually want to use it, now. Leaning forward, you bring your lips to Amy's muzzle and kiss her, then whisper in her pointed ear to hold fast and keep as silent as possible. Giving you a happy little smile, the young woman takes a deep breath, then presses her lips together and nods for you to continue.";
							WaitLineBreak;
							say "     Pulling back out of her, you take hold of your wet and slick erection and rub it over the husky's open and swollen nether lips, then start fucking her again - slower, this time, and making sure that you hold back at the end of each thrust as not to jostle the bookshelf too much. It's... quite a change of pace to fuck her like this now, different but also very nice, with you having the time to do some tricks like rotating your hips, creating all kinds of good sensations for both of you. Sliding in and out and relishing each moment, grinding your crotch against her soft-furred hips, you build up arousal almost as quickly as if you were pounding into her with full force, until you soon feel the need to come rise from deep inside. Leaning forward to make out with her, you pull her hips down harder against yourself, the two of you moaning together as your balls hit her crotch when you bottom out.";
							say "     Panting 'I'm coming!' between two kisses, you thrust into Amy one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes against you, tongue lolling out of her mouth as she gets swept away by her orgasm. But even so, she does her best to keep the noise down, only giving little yips and whimpers as her head turns to look over her shoulder at Elijah - who still is sitting with his back to the bookshelf, and the two of you, totally oblivious to what's been going on.";
							WaitLineBreak;
							say "     Immensely satisfied, you carry Amy back to her mattress, all the while you are silently giggling to each other for having fucked right next to Elijah and having gotten away with it. Soon arriving at Amy's not too distant sleeping place, you lay her down on it and move to lie behind her. Spooning the beautiful husky, you run a hand through her soft belly fur, circling her nipples with your finger, then just hold her for a while and whisper how much fun that was.";
						if Lust of Amy is 0:
							let AmyPregchance be a random number from 1 to 20;
							if AmyPregchance > 10:
								now Lust of Amy is 24;
					NPCSexAftermath Amy receives "PussyFuck" from Player;
				else:
					LineBreak;
					say "     Slowly shaking your head, you push the thought aside and turn your attention to other things again.";
			else:
				say "     As you come out of the bunker, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Maybe you should help her out with that...";
		-- "Sven": [Sven]
			if SvenAmySex is 0:[first interest of Sven in her]
				if HP of Sven > 5 and HP of Sven < 30: [Subby Sven]
					say "     Entering the library, you see Amy, sitting at one of the reading tables that have the library entrance in view with a book in her hands. When she notices you, she puts it down and gets up, walking towards you with something clearly on her mind. Judging from the cover of the book she was reading - a steamy romance novel with a pirate and a woman on the front - and the pronounced sway of her hips, you'd say she's in one of her frequent heat periods and pretty wound up with arousal. Coming to a stop before you that bounces her four breasts enticingly, the husky girl says 'Welcome back. I wanted to ask you what's up with the snow-leopard guy who seems to be living in the cellar. I've seen him a few times from a distance, browsing books and cleaning up, but he always runs away when I go to talk to him.' Then she adds with a sigh 'Too bad, because he's really cute. I've tried to catch him on the way back to the stairs today, but he's escaped and now is hiding somewhere back there.'";
					WaitLineBreak;
					say "     Telling Amy that the snowmeow is your pet kitty Sven, you explain that he's rather shy, but that his behavior to her still is a bit strange and you'll go talk to him. The young husky nods to you, then goes to pick up her book, taking it to her mattress to indulge in some more romantic fantasies. Meanwhile, you make your way along the long rows of bookshelves, looking around until you eventually find the hiding Sven, peeking around the other end of a bookshelf. Coming up behind him silently, you give him quite a fright as you say his name. As the transformed exchange student whirls around quickly, you see a look of embarrassment on his face - and from the way he holds his bushed-out tail in front of himself, wringing the end with his hands, you can guess why...";
					say "     After patting his head and scritching behind Sven's ears a bit to calm him down, you then order your pet to explain himself. He says 'The husky woman up here is... very pretty. And every time I get close to her and smell her, I...' and then he moves his tail a bit to the side, revealing his almost painfully hard cock. Giving him some more time to mumble his explanations, you see the whole problem - the smell of Amy's heat arouses Sven to no end and he's far too embarrassed at having his boner sticking out at her to even talk to the husky. That's why he's been trying to avoid her at all costs.";
					LineBreak;
					say "     [bold type]Do you want to introduce the two of them to each other (intimately) and show Sven he doesn't have to be embarrassed about his feelings towards Amy, or do you just send him into the bunker and tell him to simply jerk off a few times before coming back up here so he doesn't get as affected by her as he is now?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Introduce them.";
					say "     ([link]N[as]n[end link]) - Send him into the bunker.";
					if Player consents:
						LineBreak;
						say "     Ordering Sven to follow, you walk back to Amy's mattress and introduce them to each other, then motion to Sven to explain himself. He looks up from the floor to Amy, then stammers 'You're - very pretty, and you smell so nice that I always get... aroused when I'm close to you.' Smiling, you reach out for his tail that he was holding in front of himself again, pulling it to the side to reveal Sven's hard manhood. Amy's eyes go wide and she moans a little 'Oh', obviously quite interested in the snowmeow's hard and ready equipment. Sitting down beside her, Sven shyly chats a bit with Amy, but even then neither of them brings the topic of the quite obvious mounting sexual tension between them up on their own.";
						say "     With both of them rather submissive in temperament, it takes a suggestion from you till Amy makes the first step, reaching out for the big, gray cock of your snowmeow and wrapping her fingers around it. Sven shifts over and stretches out on his back, allowing her to straddle him as she moves into position over his hard rod. She lines up her opening with his cock, while he softly mewls his desire to fuck and fill her hot pussy. The husky girl sinks herself down over his big cock with ease, letting it fill her wide cunt slowly until he's all the way inside. Then she starts riding it, rocking back and forth on his pole while caressing your kitty's ears and scratching his cheeks. Sven purrumbles in pleasure, bucking lightly up into Amy as she rides him, but letting her set the pace. From her moans and pants, it's quite obvious how much Amy likes his long, thick and hard cock inside her. And she doesn't hold back in telling him that either, saying that he's a good and sexy kitty.";
						WaitLineBreak;
						say "     Amy has a good, long fuck session with your fucktoy, reducing him to a mewling slut by the time her climax comes. Her pussy clamps down around his shaft, milking and tugging at it as her femcum soaks his crotch fur. The feel of a warm and wet cunt spasming around his throbbing rod is too much and Sven yowls in lust as he sprays his hot load into Amy moments later. The ample supply from his large balls flows up into her, causing the husky girl's tummy to swell as it fills her womb. Visibly pleased with the full feeling that gives her, Amy lies down on top of Sven, just keeping his cock inside her as she snuggles with him on her mattress. Only when his cock softens enough to plop out on its own does his load start leaking out of her, soaking into his fur and the bedding below the cuddling couple.";
						if Lust of Amy is 0:
							let AmyPregchance be a random number from 1 to 20;
							if AmyPregchance > 13:
								now Lust of Amy is 24;
						NPCSexAftermath Amy receives "PussyFuck" from Sven;
						now SvenAmySex is 1;
					else:
						say "     Telling Sven that while he's right in saving himself for your pleasure, it still doesn't excuse him being rude to Amy by not even talking to her. With the admonition that he should jerk off a few times before each time he wants to come up here so he can meet her without springing a hard-on every time, you send him back down into the bunker.";
						now SvenAmySex is 99;
				else: [Confident Sven] [TODO: Add scene for confident Sven]
					say "     As you come out of the bunker, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Maybe you should help her out with that...";
			else if HP of Sven > 5 and HP of Sven < 50 and SvenAmySex is 1 and a random chance of 1 in 5 succeeds:[repeat sex between Sven and Amy]
				say "     Entering the library, you see Amy - with Sven under her on her mattress, both of them moaning as she fucks him in the cowgirl position. Looks like she decided to use your pet kitty for her own pleasure again. She rocks back and forth on his pole while caressing your snowmeow's ears and scratching his cheeks. Sven purrumbles in pleasure, bucking lightly up into Amy as she rides him, but letting her set the pace. From her moans and pants, it's quite obvious how much Amy likes his long, thick and hard cock inside her. And she doesn't hold back in telling him that either, saying that he's a good and sexy kitty.";
				say "     Amy has a good, long fuck session with your fucktoy, reducing him to a mewling slut by the time her climax comes. Her pussy clamps down around his shaft, milking and tugging at it as her femcum soaks his crotch fur. The feel of a warm and wet cunt spasming around his throbbing rod is too much and Sven yowls in lust as he sprays his hot load into Amy moments later. The ample supply from his large balls flows up into her, causing the husky girl's tummy to swell as it fills her womb. Visibly pleased with the full feeling that gives her, Amy lies down on top of Sven, just keeping his cock inside her as she snuggles with him on her mattress. Only when his cock softens enough to plop out on its own does his load start leaking out of her, soaking into his fur and the bedding below the cuddling couple.";
				if Lust of Amy is 0:
					let AmyPregchance be a random number from 1 to 20;
					if AmyPregchance > 13:
						now Lust of Amy is 24;
				NPCSexAftermath Amy receives "PussyFuck" from Sven;
			else if HP of Sven > 5 and HP of Sven < 50 and SvenAmySex is 1 and a random chance of 1 in 5 succeeds:[repeat sex between confident Sven and Amy] [TODO: Add scene for confident Sven]
				say "     As you come out of the bunker, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Maybe you should help her out with that...";
			else:
				say "     As you come out of the bunker, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Maybe you should help her out with that...";
		-- "Brutus": [Brutus]
			if BrutusAmySex is 0: [first interest of Brutus in her]
				if DBCaptureQuestVar is 5: [evil Brutus]
					say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. As you stand there, eyes riveted on her naked form, you suddenly feel warmth radiate from right beside you. Turning your head, you see that its source is your captive demon brute, or rather his enormous cock, fully erect as it is right now. A lusty rumble comes from the beast's throat and his clawed hands twitch a bit as he is held back from what he'd love to do now by the amulet's magic.";
					LineBreak;
					say "As horny as she is, Amy might perhaps enjoy a round on your demonic slave's thick pole.";
					say "     [bold type]Do you offer her your pet to mount for her own enjoyment?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Yes.";
					say "     ([link]N[as]n[end link]) - No.";
					if Player consents: [Amy+Evil Brutus Sex]
						LineBreak;
						say "     Accompanied by the muscular demon, you walk towards Amy and she finally notices you when the two of you are just a few steps away. She gives a high-pitched 'Oh', pulling her hands away from her crotch and sitting up before continuing sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand and it's nothing to be ashamed of and that she could make use of your demon companion if she wanted to. Amy's eyes get wide as she turns her gaze on the large, muscled demon and you order him to pose for her. Soon your husky friend is rubbing her pussy lips again, watching as you take your slave through a nude dancer's routine bit by bit.";
						say "     As she continues masturbating and gets dripping wet down below, you guess that Amy is ready for the next step now and command the demon to lie down. The young husky can barely take her eyes off his thick pole standing erect above the humanoid beast's crotch. Though even with her being aroused as hell, she still is rather submissive in temperament, so it takes a suggestion from you before Amy makes the first step, reaching for the massive cock and jerking it a few times with both her hands on the shaft. The controlled demon twists and stretches on his back, fighting against the magic that keeps him from raping both you and her, then lies still as you command him, helpless against his master's wishes.";
						WaitLineBreak;
						say "     Meanwhile, Amy moves to straddle him, getting in position over the hard rod. She lines up her opening with his cock, then slowly sinks herself down on top of it, gasping as the tip nudges apart her nether lips. It's big - very big, stretching her pussy lips wide around it, then sliding deeper and deeper into Amy's body, making the husky moan and gasp as the bumps on his shaft rub her inner walls. Even with her copious amount of female juices lubricating Amy, it's a lot to take, and she has to stop several times to get used to it before she can continue. Some time later, she finally takes all of it in her husky body, his two large cum-factories resting against her crotch. It's still a bit surprising to you that all of him actually fit inside her, and you can only guess how Amy must be feeling right now.";
						say "     A few minutes of deep, relaxing breathing later, Amy starts to fuck herself on the thick cock - slowly. Riding it, sliding up and down on the long shaft, Amy takes her time to enjoy the demon to the fullest extent bringing herself to more than one orgasm in the long fuck session that follows. Your slave meanwhile isn't lucky enough to get off himself, as you tell him several times that he only may cum when you want him to. As Amy's fun with him goes on and on, the demon's angry grunts at your control first take on a pleading tone, then lead over into whimpers begging for release. You let this continue for another good little while, until the by then rather tired Amy reaches another orgasm. Finally relenting on the big brute, you allow the seriously blue-balled demon to come. And oh does he do it. His large balls visibly pulse as the demon's cock erupts, pumping Amy's insides full of his seed. With the head of his shaft pushing open her cervix, he easily fills her womb and vagina, with the remaining cum squirting out around the thick cock. When he finally finishes shooting and Amy pulls herself off his cock with a wet slurp, her stomach looks distended from the sheer amount of cum he has injected into her, with more of it leaking from her stretched hole to create a white-ish puddle on the ground below.";
						if Lust of Amy is 0:
							let AmyPregchance be a random number from 1 to 20;
							if AmyPregchance > 13:
								now Lust of Amy is 24;
						NPCSexAftermath Amy receives "PussyFuck" from demon brute;
						now BrutusAmySex is 51;
					else: [Brutus forbidden]
						LineBreak;
						say "     No, perhaps better not. You wouldn't want the demon to get any ideas, and his shaft might just be a bit much to handle even for your horny husky friend...";
						now BrutusAmySex is 99; [Brutus/Amy sex forbidden]
				else if DBCaptureQuestvar is 7: [cleansed Brutus]
					say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. As you stand there, eyes riveted on her naked form, you suddenly feel warmth radiate from right beside you. Turning your head, you see that its source is Brutus, or rather his enormous cock, fully erect as it is right now. A lusty rumble comes from your demon companion's throat and he openly watches the beautiful husky on her mattress, appreciating the view. Just grabbing and raping people may be a thing of the past for him, though he is still a pretty horny creature.";
					LineBreak;
					say "You think Amy might enjoy a round of sex with Brutus, getting fucked by his massive cock, and you're sure Brutus would love to breed the young husky.";
					say "     [bold type]Do you want to introduce them to each other?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Yes.";
					say "     ([link]N[as]n[end link]) - No.";
					if Player consents: [Amy+Brutus Sex]
						LineBreak;
						say "     Accompanied by the muscular demon, you walk towards Amy and she finally notices you when the two of you are just a few steps away. She gives a high-pitched 'Oh', pulling her hands away from her crotch and sitting up before continuing sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' Smiling, you tell her you understand and it's nothing to be ashamed of. Then you push Brutus a step forward and introduce the two of them to each other. With the young husky looking up at him, wide-eyed at his big cock, the purple demon says 'Hi - you're really hot.'";
						say "     There's a moment of silence as they just ogle each other, with sexual tension almost palpable in the air between them, and you can see that Brutus is clearly at a loss for words, not used to actually talking to people he finds attractive as compared to just raping them. Then, just as you think you've got to step in, the demon asks Amy 'So, wanna fuck? I - I'll be gentle.' That rather blunt invitation is enough to get a needy pant and urgent nod from the husky, who's swept up into Brutus's muscular arms seconds later. Holding the much smaller Amy against his wide chest, Brutus licks over her breasts with his forked tongue, then kisses her deeply.";
						WaitLineBreak;
						say "     Smiling at how well-behaved the formerly ravenous beast has become, you watch Brutus touch Amy's body while they make out, stroking softly to give her pleasure for some time before he directs his attention towards her pussy. By that time, she's well and truly dripping wet, the fur of her crotch matted with female juices. Running a finger over Amy's sensitive pussy lips, Brutus licks it off sensuously, then reaches down to hold his shaft up and lowers the husky until its tip touches her pussy. With an eager, lust-filled grunt, the demon pulls her down further, nudging apart her nether lips and entering Amy with his cock. And it's big - very big, stretching her pussy lips wide around it, then sliding deeper and deeper into Amy's body, making the husky moan and gasp as the bumps on his shaft rub her inner walls. Even then, it's a lot to take, and Brutus has to stop several times for her to get used to it, which he takes in stride and understanding, making out with her in the meantime. Finally he bottoms out inside the young husky's pussy, hard shaft buried all the way and his two large cum-factories resting against her crotch. It's still a bit surprising to you that all of him actually fit inside her, and you can only guess how Amy must be feeling right now.";
						WaitLineBreak;
						say "     A few minutes of making out with Brutus later, Amy tells him to continue - slowly. Holding her with his large hands as he moves in and out of her, the bumps on his cock rub against her stretched insides, making the young husky shudder with rising lust. Over time, it becomes easier for her to have him inside, with the demon leaking more and more precum and her muscles being stretched out and getting used to it. Which allows your companion to speed up his thrusts, going faster and faster, the slapping noises of his balls against Amy's hips now coming in rapid succession. Soon, this drives her arousal over the edge and with a loud moan, the anthro canine orgasms, femcum running down from her stretched cunt.";
						say "     The demon gives something like a very deep purr, his satisfaction at actually giving pleasure and not just taking it for himself quite obvious. He keeps fucking Amy while she rides out her orgasm, getting even faster than before in his urge to join her. Soon, he reaches his own climax - and with a loud grunt, he begins to pump Amy's insides full of his seed. With the head of his shaft pushing open her cervix, he easily fills your womb and vagina, with the remaining cum squirting out around Brutus's thick cock as he thrusts into Amy a few more times. When he finally pulls her off his cock with a wet slurp, Amy's stomach looks distended from the sheer amount of cum he has injected into her, with more of it leaking from her stretched hole to create a white-ish puddle under her on the ground.";
						if Lust of Amy is 0:
							let AmyPregchance be a random number from 1 to 20;
							if AmyPregchance > 13:
								now Lust of Amy is 24;
						NPCSexAftermath Amy receives "PussyFuck" from demon brute;
						now BrutusAmySex is 1;
					else:
						LineBreak;
						say "     Hm, perhaps better not. Brutus might just be a bit much to handle even for your horny husky friend...";
						now BrutusAmySex is 99;
			else:
				say "     As you come out of the bunker, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Maybe you should help her out with that...";
		-- "Snow": [Snow]
			if SnowAmySex is 0:[first interest of Snow in her]
				say "     Entering the library, you see Amy on her bedding, sitting beside Snow and listening intently to the squirrel girl. Curious what Amy starts giggling about a moment later, you step a bit closer and overhear '...really, he was this long and...' followed by a detailed and intimate description of Snow's last encounter with a minotaur out in the city. As she continues with the raunchy tale, you see Amy spread her legs a bit, revealing an already a bit moist pussy that shows her obvious arousal.";
				LineBreak;
				say "";
				say "     [bold type]Well, you can see where this is going from a mile away. As Snow moves her hand to rub the hard cock barely contained in her pants, you...[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Stand back and watch your two friends fuck.";
				say "     ([link]N[as]n[end link]) - Walk up to them and interrupt.";
				if Player consents: [Amy+Snow Sex]
					LineBreak;
					say "     Snow leans over, running her hand up the inside of Amy's thigh until she gets to her crotch, then stroking a finger over the husky's sensitive pussy lips, making her moan loudly. 'You need it bad, don't you,' the squirrel herm says to Amy with a husky tone, then continues 'Let me take care of you' and pulls Amy's paw-hand over on the increasingly large and throbbing, bulge in her pants. The only answer from Amy is lustful panting as she caresses Snow's bulge with one hand, while the other moves in between her legs. The horny squirrel enjoys the hand on her package some moments longer, then pops open the button of her pants, followed by its zipper sliding down. That frees her massive cock from its confinement, to stand fully erect in front of a suddenly wide-eyed Amy.";
					say "     Lightly turning Amy's muzzle to give her a kiss, Snow says softly 'Now don't you worry none. I'll be right gentle.' and squirms out of her pants. She puts her hand on the huge member, bulging with thick veins along its human-shaped but inhumanly pink and massive length. A noticeable trickle of precum runs down from the slit on its tip, towards her heavy, grapefruit-sized balls. Jerking herself a few times, the herm squirrel lubes her shaft with the precum, then moves over in front of Amy. After another hot bit of tongue-wrestling that leaves both of them a bit breathless, she softly pushes against the husky's chest, making her lie back on the mattress.";
					WaitLineBreak;
					say "     Snow brushes the tip of the member against Amy's dripping wet nethers, teasing her for a long moment before she eases into her, giving a playful growl as she does so. 'You know,' she says, suddenly looking thoughtful even as she plunges into the young husky under her, '[one of]I cannot remember if I was a girl or a boy to start - but I sure love this[or]You feel amazing, baby[or]Will you bear my child? You would make an awesome mom, I bet[or]Maybe next time you can be on top[at random].' As the moment of glib passes, she grips Amy's hips more firmly, starting to rock against her in deep, urgent, pushes, pistoning against the husky's wet sex as she leans in over her.";
					say "     The big squirrel's breasts as absolutely huge, swaying in the air as she grinds against Amy and even rubbing the husky's smaller but more numerous breasts when Snow leans forward a bit more. Gasps of pleasure from Amy fill the library, combined with Snow's own moaning as her heavy balls slap against Amy's thighs with every rapid pierce into her anthro canine body. Snow's hands eagerly caress her partner, exploring your every contour. Then, with a sudden lurch, she seals herself against Amy, holding her tight against herself as pulsing waves of rich squirrel seed erupt into the husky girl's body.";
					WaitLineBreak;
					say "     As she rides out her orgasm and with her member still pulsing with spurt after spurt of cum painting Amy's womb white, Snow rolls the two of them over to lie on their sides on the mattress. The squirrel and husky start making out and keep going for quite a while, their hands stroking and caressing each other while they kiss.";
					if Lust of Amy is 0:
						let AmyPregchance be a random number from 1 to 20;
						if AmyPregchance > 13:
							now Lust of Amy is 24;
					NPCSexAftermath Amy receives "PussyFuck" from Snow;
					now SnowAmySex is 1;
				else:
					LineBreak;
					say "     Moving over to the two of them, you greet Amy and Snow and chat a bit with them about mundane topics, breaking the mood building between them. After some minutes of talking, Snow gives Amy a friendly hug and excuses herself with wanting to get some fresh air outside. From the still pretty big bulge in her pants, you presume she'll go pick up one of the feral huskies out there and fuck the girl senseless.";
					now SnowAmySex is 99;
			else if SnowAmySex is 1 and a random chance of 1 in 5 succeeds:[repeat sex between Snow and Amy]
				say "     Entering the library, you see Amy - gripping the sheets on her mattress tightly and moaning as Snow pounds away at her needy pussy. The squirrel herm's thick veiny member thrusts in and out of your husky friend, with Snow's heavy, grapefruit-sized balls audibly smacking against Amy's hips each time. Snow pants '[one of]I cannot remember if I was a girl or a boy to start - but I sure love this[or]You feel amazing, baby[or]Will you bear my child? You would make an awesome mom, I bet[at random].'";
				say "     The big squirrel's breasts as absolutely huge, swaying in the air as she grinds against Amy and even rubbing the husky's smaller but more numerous breasts when Snow leans forward a bit more. Gasps of pleasure from Amy fill the library, combined with Snow's own moaning as her heavy balls slap against Amy's thighs with every rapid pierce into her anthro canine body. Then, with a sudden lurch, she seals herself against Amy, holding her tight against herself as pulsing waves of rich squirrel seed erupt into the husky girl's body.";
				say "     As she rides out her orgasm and with her member still pulsing with spurt after spurt of cum painting Amy's womb white, Snow rolls the two of them over to lie on their sides on the mattress. The squirrel and husky start making out and keep going for quite a while, their hands stroking and caressing each other while they kiss.";
				if Lust of Amy is 0:
					let AmyPregchance be a random number from 1 to 20;
					if AmyPregchance > 13:
						now Lust of Amy is 24;
				NPCSexAftermath Amy receives "PussyFuck" from Snow;
			else:
				say "     As you come out of the bunker, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Maybe you should help her out with that...";
		-- "Icarus": [Icarus]
			if IcarusAmySex is 0:[first interest of Icarus in her]
				if HP of Icarus > 49: [dom Icarus]
					say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny and has taken to masturbation, her head resting on a pillow with closed eyes as she imagines... well, most likely you. As you stand there, eyes riveted on her naked form, a sudden flutter of wings in the air above you heralds the arrival of Icarus. The dominant blue chaffinch lands right next to you and gives Amy a hungry look. 'Horny little bitch you have there. I think I'll try her out and maybe make her mine instead.' Grabbing his balls suggestively while giving you an overbearing grin, Icarus then starts to strut towards the unsuspecting husky.";
					LineBreak;
					say "     [bold type]Do you want to watch as Icarus take Amy, or would you rather turn away and not watch?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Watch.";
					say "     ([link]N[as]n[end link]) - Turn away.";
					if Player consents: [Amy+dom Icarus Sex]
						LineBreak;
						say "     With Amy totally concentrated on her fantasy and her eyes closed, she doesn't notice the anthro bird coming up to her and then kneel on the mattress. With little preamble, he gets his stiff cock lined up with her pussy and pulls the young husky's hand out of the way. His taloned hands grip her hips tightly as she opens her eyes in surprise, then he thrusts into her with his avian rod. The slick, tapered cock pushes into Amy easily, causing her first shocked yelp to run over into a moan of pleasure at getting fucked. Soon the feathered fellow is drilling her hard, chirping occasionally as he does.";
						say "     Amy grows increasingly aroused as the mating continues, with Icarus soft feathers rubbing against her thighs, crotch and pussy lips as he thrusts into her. With her not resisting his advances, just gripping the sheets with her paw-hands as waves of lust run through her body, Icarus is free to let his taloned hands roam over Amy's soft-furred body. Between the soft feathers rubbing against her and the hard cock pumping inside her needy pussy, it's not much longer until both of them finally climax loudly, his chirping and moaning joining her lust-filled barks. Icarus spreads his feathers a bit and gives you a smug nod as his hot seed pumps into Amy's cunt and flows into her womb.";
						say "     When he's done, Icarus dismounts and gives Amy's breasts a grope before flying off with a chuckle. She's left lying there with his cum leaking from her stuffed pussy, exhausted and somewhat dazed by the avian male's sudden appearance and actions.";
						if Lust of Amy is 0:
							let AmyPregchance be a random number from 1 to 20;
							if AmyPregchance > 13:
								now Lust of Amy is 24;
						[-----WIP-----]
						NPCSexAftermath Amy receives "PussyFuck" from Icarus;
						now IcarusAmySex is 50; [dom Icarus + Amy sex will come up in the future]
					else:[don't watch]
						LineBreak;
						say "     Being dominated by Icarus is one thing, watching him take Amy another, so you turn away and decide to stroll deeper into the library. As you pass row after row of shelves, the sounds of their coupling get a bit muffled, but even as you reach the back wall, still some of the moans and grunts reach you. In the end, you pick a book at random and read a bit of it to distract yourself before going back, where you find the freshly fucked Amy dozing on her mattress, with Icarus cum slowly leaking out of her pussy.";
						if Lust of Amy is 0:
							let AmyPregchance be a random number from 1 to 20;
							if AmyPregchance > 13:
								now Lust of Amy is 24;
						[-----WIP-----]
						NPCSexAftermath Amy receives "PussyFuck" from Icarus;
						now IcarusAmySex is 51; [not watching Icarus/Amy sex in the future]
				else if HP of Icarus > 0 and HP of Icarus < 50: [sub Icarus]
					say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny and has taken to masturbation, her head resting on a pillow with closed eyes as she imagines... well, most likely you. As you stand there, eyes riveted on her naked form, a sudden flutter of wings in the air above you heralds the arrival of Icarus. The submissive blue chaffinch lands right next to you and gives Amy an appreciative look. 'She's really hot. I'd love to take that doggie for a ride,' he chirps, and you notice his avian cock quickly hardening. As you're looking at him, Icarus suddenly remembers that he's now just supposed to be your slutty pet bird and gets a bit flustered, chirping nervously as he adds 'I - I mean...'";
					LineBreak;
					say "     [bold type]Do you want to allow Icarus to indulge in some of his old behavior, or do you send him off to await your pleasure when you want to make use of him?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Let him indulge.";
					say "     ([link]N[as]n[end link]) - Send him off.";
					if Player consents:[Amy+sub Icarus Sex]
						LineBreak;
						say "     You tell Icarus Amy's name and give him your permission to fuck her - if she lets him. The horny chaffinch thanks you and hurries over to the husky before you can change your mind. Kneeling before her, he ruffles his feathers to look as impressive as possible, then chirps a nice and short little song at her. Until now totally concentrated on her fantasy, Amy opens her eyes with a surprised expression on her face, seeing the blue chaffinch in all his feathered glory kneeling between her legs. Before she can say anything, Icarus continues with 'Hello there, beautiful. Why dream about things when you can have me in reality?' while leaning over her to run his hands along her curves and cup her breasts. And it works - seems like her nipples were just the right buttons to caress, as the thoroughly aroused Amy just pants and lets her head sink back down, giving herself over to the anthro bird.";
						say "     With a satisfied chirp, Icarus smoothly moves forward on top of Amy, lining his stiff cock up with her pussy. His taloned hands grip her hips tightly, then he thrusts into her with his avian rod. The slick, tapered cock pushes into Amy easily, causing her to moan loudly at being filled by his manhood. Soon the feathered fellow is drilling her hard, chirping occasionally as he does.";
						WaitLineBreak;
						if Player is male:
							say "     Watching your little birdy fuck Amy, his tight butt moving up and down as he pounds her, your own member gets quite hard and ready for some action too. Maybe you should... join them, taking Icarus ass to remind him of his place.";
							say "     [bold type]Do you do so?[roman type][line break]";
							LineBreak;
							say "     ([link]Y[as]y[end link]) - Yes.";
							say "     ([link]N[as]n[end link]) - No.";
							if Player consents:
								LineBreak;
								say "     Quickly dropping your gear and clothes on the ground as you go along, you're completely naked before you're more than halfway to the fucking couple. Pounding into the increasingly aroused and noisy Amy under him, Icarus doesn't notice you coming up behind him, erect cock leading the way. As you suddenly push up his tail-feathers and expose his white-feathered bottom, he lets out a surprised chirp, then moans as you rub your hard shaft against his crack and get your cock lined up with his pucker. Gripping him tightly around the hips, you push forward, forcing his tight hole to spread open for your [cock size desc of Player] [Cock of Player] phallus.";
								say "     As you start humping away, you push Icarus own cock deeper into Amy's pussy, making the passerine chirp in pure lust from the double sensations of fucking while being fucked. With the husky under him panting loudly and Icarus begging for more, you go faster and faster, pounding his ass hard and deep. Teasing him for being such a puny, little slut, - even while fucking a woman - you grin as he moans and nods in agreement, loving being a horny cock slut now.";
								say "     You keep it up, something in the weak bird's behavior egging you on to be rough with him. And certainly, he loves it as well. The gasps and chirps from him rising in pitch and the way his asshole tightens around you suddenly is all the warning you get before the stuffed bird cums hard, pumping his hot seed into Amy's cunt to flow into her womb. You cum a few moments later, claiming his ass once again[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load leaves the poor songbird so bloated and full of your cum that some leaks out of his beak. His body is left rounded like a feathery balloon from it all. He can only give a weak chirp as you pull out and your hot cum pours of his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load leaves the poor songbird rounded like a feathery balloon. When you pull out, he gives a weak chirp as your hot cum pours of his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed. When you pull out, he gives a weak chirp as hot cum leaks from his stretched and stuffed ass[else]. He gives a weak chirp when you pull out, hot cum leaking from his stretched and creamy ass[end if]. While taking a moment to check that your birdie pet's still fine, you wipe your cock clean on his blue tail-feathers before heading off, leaving him and Amy there to eventually recover.";
								NPCSexAftermath Icarus receives "AssFuck" from Player;
							else:
								LineBreak;
								say "     Nah, you decide to let him have his fun for now and just watch them go at it.";
								say "     Amy grows increasingly aroused as the mating continues, with Icarus soft feathers rubbing against her thighs, crotch and pussy lips as he thrusts into her. With her not resisting his advances, just gripping the sheets with her paw-hands as waves of lust run through her body, Icarus is free to let his taloned hands roam over Amy's soft-furred body. Between the soft feathers rubbing against her and the hard cock pumping inside her needy pussy, it's not much longer until both of them finally climax loudly, his chirping and moaning joining her lust-filled barks. Icarus spreads his feathers a bit and gives a smug grin as his hot seed pumps into Amy's cunt and flows into her womb.";
								say "     When he's done, the blue chaffinch rubs his feathered head against Amy's cheek, then dismounts and gives Amy's breasts a grope before flying off with a chuckle. She's left lying there with his cum leaking from her stuffed pussy, exhausted and somewhat dazed by the avian male's sudden appearance and actions.";
						else:
							say "     Amy grows increasingly aroused as the mating continues, with Icarus soft feathers rubbing against her thighs, crotch and pussy lips as he thrusts into her. With her not resisting his advances, just gripping the sheets with her paw-hands as waves of lust run through her body, Icarus is free to let his taloned hands roam over Amy's soft-furred body. Between the soft feathers rubbing against her and the hard cock pumping inside her needy pussy, it's not much longer until both of them finally climax loudly, his chirping and moaning joining her lust-filled barks. Icarus spreads his feathers a bit and gives a smug grin as his hot seed pumps into Amy's cunt and flows into her womb.";
							say "     When he's done, the blue chaffinch rubs his feathered head against Amy's cheek, then dismounts and gives Amy's breasts a grope before flying off with a chuckle. She's left lying there with his cum leaking from her stuffed pussy, exhausted and somewhat dazed by the avian male's sudden appearance and actions.";
						if Lust of Amy is 0:
							let AmyPregchance be a random number from 1 to 20;
							if AmyPregchance > 13:
								now Lust of Amy is 24;
						NPCSexAftermath Amy receives "PussyFuck" from Icarus;
						now IcarusAmySex is 1; [sub Icarus + Amy sex will come up in the future]
					else:[no sex for Icarus]
						LineBreak;
						say "     Gripping Icarus by the feathers on his head, you give him a strict look and tell him that he's yours and that you decide what he does or doesn't do. Then you tell him that he may - no he must - watch Amy play with herself and get fucked... and that he's forbidden from joining her or even masturbating. There, that should wind the little slut up some, making him especially needy for your touch. With a grin, you give his feathered butt a squeeze, then grab a chair from a nearby table and watch him a while, standing there to observe Amy and sometimes twitching a bit as he has to hold himself back from touching his increasingly aroused body.";
						now IcarusAmySex is 99; [Icarus/Amy sex forbidden]
			else if IcarusAmySex > 0 and IcarusAmySex < 99 and a random chance of 1 in 5 succeeds:[repeat sex between Icarus and Amy]
				if IcarusAmySex is 50: [dom Icarus]
					say "     Entering the library, you see Amy - lying on her bedding and panting loudly as Icarus thrusts into her with his avian rod. The feathered fellow is drilling her hard with his tapered, slick cock, chirping occasionally as he does. With this having gone on for a while obviously, Amy is quite aroused by him mating her, with Icarus soft feathers rubbing against her thighs, crotch and pussy lips as he fucks her. She's not resisting his advances, just gripping the sheets with her paw-hands as waves of lust run through her body and Icarus is free to let his taloned hands roam over Amy's soft-furred body. Between the soft feathers rubbing against her and the hard cock pumping inside her needy pussy, it's not much longer until both of them finally climax loudly, his chirping and moaning joining her lust-filled barks. Icarus spreads his feathers a bit and gives you a smug nod as his hot seed pumps into Amy's cunt and flows into her womb.";
					say "     When he's done, Icarus dismounts and gives Amy's breasts a grope before flying off with a chuckle. She's left lying there with his cum leaking from her stuffed pussy, exhausted by the hot fuck he just gave her.";
					if Lust of Amy is 0:
						let AmyPregchance be a random number from 1 to 20;
						if AmyPregchance > 13:
							now Lust of Amy is 24;
				else if IcarusAmySex is 51:[don't watch]
					say "     Entering the library, you see Amy - lying on her bedding and panting loudly, with her fur a bit matted by sweat. The fur on her crotch looks wet and a trickle of white cum is leaking out between her nether lips to soak into the mattress. Clearly she's been well-fucked and bred not too long ago, and a few small blue feathers on the mattress around her show who did it too. Icarus had some fun with her, filling the husky's womb with his seed.";
				else if IcarusAmySex is 1: [sub Icarus + Amy]
					say "     Entering the library, you see Amy - lying on her bedding and panting loudly as Icarus thrusts into her with his avian rod. The feathered fellow is drilling her hard with his tapered, slick cock, chirping occasionally as he does. With this having gone on for a while obviously, Amy is quite aroused by him mating her, with Icarus soft feathers rubbing against her thighs, crotch and pussy lips as he fucks her. She's not resisting his advances, just gripping the sheets with her paw-hands as waves of lust run through her body and Icarus is free to let his taloned hands roam over Amy's soft-furred body. Between the soft feathers rubbing against her and the hard cock pumping inside her needy pussy, it's not much longer until both of them finally climax loudly, his chirping and moaning joining her lust-filled barks. Icarus spreads his feathers a bit and gives a smug grin as his hot seed pumps into Amy's cunt and flows into her womb.";
					say "     When he's done, the blue chaffinch rubs his feathered head against Amy's cheek, then dismounts and gives Amy's breasts a grope before flying off with a chuckle. She's left lying there with his cum leaking from her stuffed pussy, exhausted by the hot fuck he just gave her.";
					if Lust of Amy is 0:
						let AmyPregchance be a random number from 1 to 20;
						if AmyPregchance > 13:
							now Lust of Amy is 24;
				NPCSexAftermath Amy receives "PussyFuck" from Icarus;
			else:
				say "     As you come out of the bunker, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Maybe you should help her out with that...";
		-- "Alexandra": [Alexandra]
			project Figure of Alexandra&Amy_icon;
			if AlexandraAmySex is 0:[first interest of Alexandra in her]
				say "     Entering the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny and has taken to masturbation, her head resting on a pillow with closed eyes as she imagines... well, most likely you. As you stand there, eyes riveted on her naked form, Alexandra walks into your line of sight - seems like the former policewoman is interested in Amy too. Being the tough dobie bitch that she is, the anthro woman walks up to the young husky with confident steps, then comes to stand just a few feet before her, appraisingly gazing down at the silently moaning female. After ogling Amy for a moment, the doberwoman says 'Quite a horny bitch, aren't you? I can see why the boss brought you in...'";
				if AmyShyness is 1:
					say "     Pulled out of her fantasy by Alexandra's comment, Amy opens her eyes and gives a high-pitched 'Oh', pulling her hands away from her crotch and sitting up before continuing sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' At that point, Amy notices the intensity of Alexandra's hungry looks wandering over her naked body and visible, wet pussy. With a shy little yip, she raises an arm to cover her breasts and closes her legs, much to the annoyance of the doberwoman standing before her. Giving the young husky a teasing stare, Alexandra barks 'Don't act like a pup now, girl. It's not like I haven't already seen all of you. And hiding a body like that would be a crime... especially if it's from your pack-mates.'";
				else if AmyShyness is 2:
					say "     Pulled out of her fantasy by Alexandra's comment, Amy opens her eyes and gives a high-pitched 'Oh', pulling her hands away from her crotch and sitting up before continuing sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' At that point, Amy notices the intensity of Alexandra's hungry looks wandering over her naked body and visible, wet pussy. With a shy little yip, she starts to raise an arm to cover her breasts, then hesitates and lets it drop again. Giving the young husky an approving nod, Alexandra barks 'That's right, it's not like I haven't already seen all of you, girl. And it would be a crime to hide a body like that... especially from your pack-mates.'";
				else if AmyShyness is 3:
					say "     Pulled out of her fantasy by Alexandra's comment, Amy opens her eyes and gives a high-pitched 'Oh', pulling her hands away from her crotch and sitting up before continuing sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' At that point, Amy notices the intensity of Alexandra's hungry looks wandering over her naked body and visible, wet pussy. She bites her lip for a second, then shrugs and stays as she is, letting Alexandra watch freely. Giving the young husky an approving nod, Alexandra barks 'That's right, it's not like I haven't already seen all of you, girl. And it would be a crime to hide a body like that... especially from your pack-mates.'";
				else if AmyShyness is 4:
					say "     Pulled out of her fantasy by Alexandra's comment, Amy opens her eyes and gives a high-pitched 'Oh', pulling her hands away from her crotch and sitting up before continuing sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' At that point, Amy notices the intensity of Alexandra's hungry looks wandering over her naked body and visible, wet pussy. Used to showing herself to others, Amy just smiles and leans back a bit, stroking a hand over her four breasts and providing Alexandra with an even better view. Giving the young husky an approving nod, Alexandra barks 'Exhibitionistic too, very nice. Just as you should be. It'd be a crime to hide a body like that... especially from your pack-mates.'";
				WaitLineBreak;
				say "     Amy looks at the other woman with a curious expression, then says 'Pack-mates? But... I've never been in a pack. What do you mean?' With a barking laugh, Alexandra replies 'What else did you think you were doing, girl? Following the boss to [if Player is purefemale]her home and having sex with her[else]his home and having sex with him[end if]? You're in the pack, just like me.' With that, Alexandra steps up to Amy and crouches down beside her, stroking a finger along the underside of the husky's muzzle and looking deep into her eyes. 'I see I'm gonna have to teach you how to be a real pack bitch, pup. The first lesson is to always give yourself completely to the boss and his top bitch - me. Now... I'm gonna show you how good it feels to just submit.'";
				LineBreak;
				say "     [bold type]Do you want to stand back and just watch what Alexandra will do to Amy, or do you tell the dobie bitch to leave her alone?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Stand back and watch.";
				say "     ([link]N[as]n[end link]) - Tell the bitch to leave her alone.";
				if Player consents:[Amy+Alexandra Sex]
					LineBreak;
					say "     While Amy is still sitting around, looking a bit baffled but at the same time intrigued, Alexandra opens her belt and pulls it through the loops of her jeans. Then she walks over to the nearest bookshelf and barks in a domineering tone, 'Over here. Now.' Pliable as Amy is, she follows her orders, coming to stand beside Alexandra a moment later. Instructing the husky to lean against one of the shelf's struts, Alexandra then has her raise her arms and ties them above her head with the belt, gently but nevertheless quite tight. That puts Amy now in the typical 'Tied-up princess' position - with her shapely body in full view, nicely presenting her four breasts and wet, swollen pussy. Stepping back a bit, Alexandra takes in her handiwork, then says, 'Beautiful little bitch,' before looking over her shoulder and adding, 'She's definitively a nice catch, boss.'";
					WaitLineBreak;
					say "     Accepting the compliment with a winning grin, you nod to the former cop to continue, after which Alexandra moves in close to Amy again and starts to fondle her with a mixture of arrogant confidence and surprising gentleness. In one moment, she's roughly groping the tied-up woman's breasts or shoving her fingers in and out of her pussy, then she suddenly switches to gently licking her nipples, slowly stroking the husky and nuzzling her muzzle. In short, your tough dobie bitch plays Amy like a fiddle, keeping her highly aroused and on the edge for quite a while, though never quite allowing her to reach the height of orgasm. Panting and moaning, her inner thighs long soaked by female juices, the young husky can't help herself but start struggling with her bindings at some point, trying to get a hand free to finally get herself off.";
					say "     Alexandra lets her pull at the tightly bound belt for a moment, chuckling, then says 'No chance, honey. I know how to tie someone up and you've got to learn that a lowly bitch like you gets off when the boss - or [if Player is purefemale]her[else]his[end if] top bitch wants you to.' She lets Amy whimper and beg a bit for release while keeping to fondle and stroke her, then finally crouches down and starts to lap away at the desperately aroused husky's pussy. With the doberwoman's tongue agilely pleasuring the young woman's cunt, it doesn't take long at all till she drives Amy over the edge, yipping and barking as she reaches her climax.";
					WaitLineBreak;
					say "     Muzzle wet with femcum, Alexandra stands up and pulls Amy into a deep kiss, then says 'And that's your first lesson in being a real pack bitch. You like that, don't you, little slut?' Amy can only moan as an answer, still deep in the grip of her orgasm, which has Alexandra give a barking laugh, then making out with her some more. A while later, the former cop undoes the belt around Amy's wrists and helps the exhausted husky back to her mattress to rest a bit.";
					NPCSexAftermath Alexandra receives "OralPussy" from Amy;
					now AlexandraAmySex is 1; [repeat scenes enabled]
					if AmyShyness < 4:
						increase AmyShyness by 1;
				else:
					LineBreak;
					say "     Giving a sharp whistle that attracts the two women's attention, you order Alexandra to stop. The doberwoman replies with, 'Sure thing, boss,' then tells Amy with a grin 'Sounds like [if Player is purefemale]she[else]he[end if] has some other plans for you. That'll definitively be something worth watching. See ya, little slut.' After that, Alexandra lets a hand wander down Amy's body, caressing her curves and even dipping in a finger to rub her clit, drawing a breathless moan from the young husky. Then she stands up and walks up to you, rubbing her breasts against your side as she says 'Very nice little bitch you got there. Wish you'd let me train her to be an even better pet, but you're the boss...'";
					now AlexandraAmySex is 99; [denied, no repeats - though enabling the 'watching' scenes]
			else if (lastfuck of Amy - turns) > 12 and AlexandraAmySex is 99 and a random chance of 1 in 5 succeeds and Player is male: [having sex in front of Alexandra]
				say "     As you enter the library, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Not too far from her, Alexandra is casually leaning against a bookshelf, arms crossed as she keeps an eye on the naked husky. Seems like she's still quite interested in Amy, even though she does follow your orders not to touch her. A wicked little idea suddenly comes to the forefront of your mind - maybe it'd be fun to go over there and fuck Amy right now, giving your dobie bitch a bit of a show.";
				say "     [bold type]Do you want to fuck Amy while Alexandra watches?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if Player consents:
					LineBreak;
					if AmyShyness is 1:
						say "     As you start walking towards the two sexy women, Alexandra gives you a knowing nod, then gives a loud bark that shocks Amy out of whatever fantasy she was masturbating to. She gives a high-pitched 'Eeep', pulling her hands away from her crotch and sitting up, then looking from Alexandra to you. After a short moment of gathering her thoughts, the young husky says sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' 'Yeah yeah - we all know you're a needy slut, you little bitch,' Alexandra says with a laugh, then continues, 'But now the boss is gonna take care of you good. See that look in his eye - that says he's gonna fuck you hard. And I'm gonna watch as he puts you in your place as one of his pack bitches.' The doberwoman gives Amy a toothy smile and lets her eyes roam shamelessly over her naked body, prompting Amy to try to cover herself up with her hands, warding off Alexandra's stares. Smiling at the antics of your two prize bitches, you kneel down beside Amy and pull her muzzle to your lips, giving her a kiss that makes her forget about everything but you for a while. Sliding your hands over her shapely body, you whisper in the husky's pointed ear that she doesn't have to hide herself and can just let Alexandra look - after all, you're chosen her right now, and not the doberwoman. It doesn't take long before the aroused husky woman lowers her arms and turns to kiss you.";
					else if AmyShyness is 2:
						say "     As you start walking towards the two sexy women, Alexandra gives you a knowing nod, then gives a loud bark that shocks Amy out of whatever fantasy she was masturbating to. She gives a high-pitched 'Eeep', pulling her hands away from her crotch and sitting up, then looking from Alexandra to you. After a short moment of gathering her thoughts, the young husky says sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' 'Yeah yeah - we all know you're a needy slut, you little bitch,' Alexandra says with a laugh, then continues, 'But now the boss is gonna take care of you good. See that look in his eye - that says he's gonna fuck you hard. And I'm gonna watch as he puts you in your place as one of his pack bitches.' The doberwoman gives Amy a toothy smile and lets her eyes roam shamelessly over her naked body, prompting Amy to try to cover herself up with her hands... until she gives herself a little shrug and lets her arms drop again. 'Too late now for modesty, isn't it?' she muses in a thoughtful tone and looks up at Alexandra. Smiling at the antics of your two prize bitches, you kneel down beside Amy and pull her muzzle to your lips, giving her a kiss that makes her forget about everything but you for a while. Sliding your hands over her shapely body, you whisper in the husky's pointed ear that she doesn't have to hide herself and can just let Alexandra look - after all, you're chosen her right now, and not the doberwoman. It doesn't take long before the aroused husky woman lowers her arms and turns to kiss you.";
					else if AmyShyness is 3:
						say "     As you start walking towards the two sexy women, Alexandra gives you a knowing nod, then gives a loud bark that shocks Amy out of whatever fantasy she was masturbating to. She gives a high-pitched 'Eeep', pulling her hands away from her crotch and sitting up, then looking from Alexandra to you. After a short moment of gathering her thoughts, the young husky says sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' 'Yeah yeah - we all know you're a needy slut, you little bitch,' Alexandra says with a laugh, then continues, 'But now the boss is gonna take care of you good. See that look in his eye - that says he's gonna fuck you hard. And I'm gonna watch as he puts you in your place as one of his pack bitches.' The doberwoman gives Amy a toothy smile and lets her eyes roam shamelessly over her naked body, something that Amy takes with defiant calm. Smiling at the antics of your two prize bitches, you kneel down beside Amy and pull her muzzle to your lips, giving her a kiss that makes her forget about everything but you for a while. Sliding your hands over her shapely body, you whisper in the husky's pointed ear that she doesn't have to hide herself and can just let Alexandra look - after all, you're chosen her right now, and not the doberwoman. It doesn't take long before the aroused husky woman lowers her arms and turns to kiss you.";
					else if AmyShyness is 4:
						say "     As you start walking towards the two sexy women, Alexandra gives you a knowing nod, then gives a loud bark that shocks Amy out of whatever fantasy she was masturbating to. She gives a high-pitched 'Eeep', pulling her hands away from her crotch and sitting up, then looking from Alexandra to you. After a short moment of gathering her thoughts, the young husky says sheepishly with 'I - I got so horny that I just couldn't take it anymore. I just had to...' 'Yeah yeah - we all know you're a needy slut, you little bitch,' Alexandra says with a laugh, then continues, 'But now the boss is gonna take care of you good. See that look in his eye - that says he's gonna fuck you hard. And I'm gonna watch as he puts you in your place as one of his pack bitches.' The doberwoman gives Amy a toothy smile and lets her eyes roam shamelessly over her naked body. As an answer to that, Amy puts her hands on her hips, sticking out her quartet of breasts defiantly as she says 'Better watch out that I'm not gonna get YOUR spot as his favorite bitch. He's choosing me right now, and you can do nothing but watch.' Smiling at the antics of your two prize bitches, you kneel down beside Amy and pull her muzzle to your lips, giving her a kiss that makes her throw a winning smile towards Alexandra as soon as you pull back to take a breath. Sliding your hands over the young woman's shapely body, you whisper in her ear that you want to fuck her.";
					if AmyShyness < 4:
						increase AmyShyness by 1;
					if (Lust of Amy > 1 and Lust of Amy < 12): [pregnant version]
						say "     After a moment of breathless tongue-wrestling, Amy moans, 'I need you inside me,' and quickly gets on all fours showing her ass and the dripping vagina between her legs invitingly. Hurriedly throwing off your clothes, you move to kneel behind Amy, then lean over her. As you wrap your arms around her from behind, fondling her four breasts and rubbing the bulging pregnant belly, your [Cock of Player] shaft comes to rest hotly against her furred ass. Amy moans as you take hold of your cock, pushing it down a bit and rubbing its head over her pussy lips, then put its tip between them. Sliding into her wet and tight vagina in one smooth move, you grunt deeply as you bottom out in her, your balls touching her soft crotch-fur.";
						if AmyShyness is 1:
							say "     While you stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, Alexandra crouches down in front of the two of you and gives Amy a toothy grin. 'Doesn't that feel good, little slut? Being taken by the boss right in front of me? We're his pack bitches, so you better get used to it. He might want to fuck us in a threesome soon.' Amy looks down and stammers, 'What? I... I can't...', clearly embarrassed by the pushy doberwoman's presence. Alexandra just barks, 'You'll learn in time,' giving one of the young husky's breasts a squeeze that flusters her even more, then stepping back to leave her master to his pleasures. At that, you start pulling out a bit and thrusting back in, fucking the young woman under you.";
						else if AmyShyness is 2:
							say "     While you stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, Alexandra crouches down in front of the two of you and gives Amy a toothy grin. 'Doesn't that feel good, little slut? Being taken by the boss right in front of me? We're his pack bitches, so you better get used to it. He might want to fuck us in a threesome soon.' Amy lowers her head reflexively, then looks up at Alexandra before she stammers, 'What? You and me?', a bit flustered by the pushy doberwoman's presence. Alexandra just barks, 'You'll learn in time,' giving one of the young husky's breasts a squeeze that makes her moan before she can stop herself. Then your dobie bitch steps back to leave her master to his pleasures. At that, you start pulling out a bit and thrusting back in, fucking the young woman under you.";
						else if AmyShyness is 3:
							say "     While you stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, Alexandra crouches down in front of the two of you and gives Amy a toothy grin. 'Doesn't that feel good, little slut? Being taken by the boss right in front of me? We're his pack bitches, there is no room for any hangups and false shame in that.' Amy raises her upper body at that and uses both hands to demonstratively rub her nipples, as if to demonstrate that she's learned her lesson well. Alexandra gives a wolfish grin at the little show, then suddenly leans forward to lick Amy's breasts, surprising the husky and putting her in her place a bit. Then the doberwoman steps back to leave her master to his pleasures. At that, you start pulling out a bit and thrusting back in, fucking the young woman under you.";
						else if AmyShyness is 4:
							say "     While you stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, Alexandra crouches down in front of the two of you and gives Amy a toothy grin. The doberwoman says 'Doesn't that feel good, little slut? Being taken by the boss right in front of -' And that's how far she gets before Amy suddenly pulls her close and kisses her deeply in a surprisingly forward move. Seems the usually so submissive husky had enough from Alexandra's teasing and wanted to shut her up this time. The two women make out with each other and Alexandra's hands move to grope Amy's breasts, then after a short while, the doberwoman pulls back and gives an appreciative nod to Amy. 'There might just be a real pack bitch in this one after all, boss. You certainly know how to pick [']em,' Alexandra tells you, then steps back to leave her master to his pleasures. At that, you start pulling out a bit and thrusting back in, fucking the young woman under you.";
						WaitLineBreak;
						say "     Amy is a very enthusiastic sex-partner, rocking back to meet you with her hips as you pound into her. In between moans and pants, she groans 'Harder. Harder!', only satisfied when your balls smack against her buttcheeks with an audible thud each time you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
						say "     'Yeah, boss. Fill her up good! Bathe her puppies in cum' Alexandra tells you with a grin, then looks down at Amy and says 'But don't you think that changes anything between us. I'm still alpha bitch in this pack - and we're gonna have words if you imagine otherwise.' Alexandra cracks her knuckles and gives Amy's naked body a leer, then walks off. Immensely satisfied from having had such fun with Amy, you stay on top of her for a while, then pull your softening cock out and lie down with her. Spooning, you run a hand through her soft belly fur, feeling the rounded curve of her body that bulges with the new life growing inside her.";
					else: [regular version]
						say "     After a moment of breathless tongue-wrestling, Amy moans, 'I need you inside me,' and quickly lies down on the bed, spreading her legs invitingly. Hurriedly throwing off your clothes, you move to kneel behind Amy, then lean over her. As your hands move to cup her four breasts, your [Cock of Player] shaft comes to rest hotly against her pubic mound. Amy moans as you take hold of your cock, rubbing its head over her pussy lips, then put its tip between them. Sliding into her wet and tight vagina in one smooth move, you grunt deeply as you bottom out in her, your balls touching her soft crotch-fur.";
						if AmyShyness is 1:
							say "     While you stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, Alexandra crouches down next to the two of you and gives Amy a toothy grin. 'Doesn't that feel good, little slut? Being taken by the boss right in front of me? We're his pack bitches, so you better get used to it. He might want to fuck us in a threesome soon.' Amy looks down and stammers, 'What? I... I can't...', clearly embarrassed by the pushy doberwoman's presence. Alexandra just barks, 'You'll learn in time,' giving one of the young husky's breasts a squeeze that flusters her even more, then stepping back to leave her master to his pleasures. At that, you start pulling out a bit and thrusting back in, fucking the young woman under you.";
						else if AmyShyness is 2:
							say "     While you stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, Alexandra crouches down next to the two of you and gives Amy a toothy grin. 'Doesn't that feel good, little slut? Being taken by the boss right in front of me? We're his pack bitches, so you better get used to it. He might want to fuck us in a threesome soon.' Amy lowers her head reflexively, then looks up at Alexandra before she stammers, 'What? You and me?', a bit flustered by the pushy doberwoman's presence. Alexandra just barks, 'You'll learn in time,' giving one of the young husky's breasts a squeeze that makes her moan before she can stop herself. Then your dobie bitch steps back to leave her master to his pleasures. At that, you start pulling out a bit and thrusting back in, fucking the young woman under you.";
						else if AmyShyness is 3:
							say "     While you stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, Alexandra crouches down next to the two of you and gives Amy a toothy grin. 'Doesn't that feel good, little slut? Being taken by the boss right in front of me? We're his pack bitches, there is no room for any hangups and false shame in that.' Amy arches her back and uses both hands to demonstratively rub her nipples, as if to demonstrate that she's learned her lesson well. Alexandra gives a wolfish grin at the little show, then suddenly leans forward to lick Amy's breasts, surprising the husky and putting her in her place a bit. Then your dobie bitch steps back to leave her master to his pleasures. At that, you start pulling out a bit and thrusting back in, fucking the young woman under you.";
						else if AmyShyness is 4:
							say "     While you stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, Alexandra crouches down next to the two of you and gives Amy a toothy grin. The doberwoman says 'Doesn't that feel good, little slut? Being taken by the boss right in front of -' And that's how far she gets before Amy suddenly reaches out and pulls her down on top of her, kissing Alexandra deeply in a surprisingly forward move. Seems the usually so submissive husky had enough from Alexandra's teasing and wanted to shut her up this time. The two women make out with each other and Alexandra's hands move to grope Amy's breasts, then after a short while, the doberwoman pulls back and gives an appreciative nod to Amy. 'There might just be a real pack bitch in this one after all, boss. You certainly know how to pick [']em,' Alexandra tells you, then steps back to leave her master to his pleasures. At that, you start pulling out a bit and thrusting back in, fucking the young woman under you.";
						WaitLineBreak;
						say "     Amy is a very enthusiastic sex-partner, holding you close with her arms and making out as you pound into her. She even wraps her legs around your hips to pull your crotch down harder against her, moaning as your balls hit her buttcheeks when you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
						say "     'Yeah, boss. Fill her up good!' Alexandra tells you with a grin, then looks down at Amy and says 'But don't you think that changes anything between us. I'm still alpha bitch in this pack - and we're gonna have words if you imagine otherwise.' Alexandra cracks her knuckles and gives Amy's naked body a leer, then walks off. Immensely satisfied from having had such fun with Amy, you stay like that on top of her for a while, then pull your softening cock out and lie down with her. Spooning, you run a hand through her soft belly fur, circling her nipples with your finger, then just hold her.";
						if Lust of Amy is 0:
							let AmyPregchance be a random number from 1 to 20;
							if AmyPregchance > 10:
								now Lust of Amy is 24;
					NPCSexAftermath Amy receives "PussyFuck" from Player;
				else:
					say "     Slowly shaking your head, you push the thought aside and turn your attention to other things again.";
			else if AlexandraAmySex is 1 and HP of Alexandra < 50 and a random chance of 1 in 5 succeeds:[repeat sex between Alexandra and Amy]
				say "     Entering the library, you see Amy - gripping the sheets on her mattress tightly and moaning as Alexandra laps away at her needy pussy. The doberwoman is on all fours on top of her in the classical 69 position. A moment later, she raises her head to look back at the husky, barking 'Keep licking, girl,' after which Amy hurriedly gets back to pleasing the former cop. Quite a hot sight, to find your two canine bitches entwined on the ground like that, having oral sex, so you walk up to them to have a closer look. They're mostly using their long canine tongues to lap and lick each other's pussies, though fingers also come into play to rub and stroke, especially the inside of their legs and outer nether lips.";
				say "     With them clearly having been at it a while, it doesn't take all that long before the two women climax together, accompanied by yips and moans. After allowing Amy to lap up her femcum, Alexandra then moves to lie next to the young husky, arm around her and gently stroking her fur. In that position, you've got a perfect view of all of their female charms, clearly intended by the tough bitch, as she calls out 'Hope you liked the show, boss.' a moment later.";
				NPCSexAftermath Amy receives "OralPussy" from Alexandra;
				NPCSexAftermath Alexandra receives "OralPussy" from Amy;
			else:
				say "     As you come out of the bunker, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Maybe you should help her out with that...";
		-- "Carl": [Carl]
			if CarlAmySex is 0:[first interest of Carl in her]
				say "     Entering the library, you see Amy walk along the bookshelves, an open book that has to be a romance novel in hand, judging from the dreamy look on her face. As the young husky woman strolls along, another anthro canine suddenly comes out between the shelves - it's Carl, with a head-high stack of books in his hands - which leads to the two of them walking right into each other, sending books tumbling all over the floor. 'Oh, I'm sorry - are you alright? Didn't mean to almost bowl you over,' the husky soldier says after both of them catch their balance again, then he crouches down to pick up the fallen books.";
				say "     As he grabs Amy's novel a moment later, Carl set his own book pile aside and stands up to hand it to her, saying. 'Here you go. I'm Carl, by the way.' Accepting the book, the female husky replies, 'Amy... thanks for being so nice about this. It's always good to meet friendly people. And especially other huskies. That said, she leans in to lick his muzzle in an affectionate gesture akin to a kiss on the cheek - though as she does so, you hear the young woman give several deep sniffs, hovering with her nose close to his for more than just a short moment. 'You smell really nice,' she eventually says in a shy voice, continuing with, 'So strong and... safe,' as she moves her foot-paws just a little bit closer, bringing their bodies into contact.";
				WaitLineBreak;
				say "     Finding Amy's breasts pressing against his side and her muzzle raised to do far more than just lick him, Carl raises his paws to embrace and touch her - but then suddenly, his nostrils flare as he takes a frantic breath. Instead of wrapping around her to make out, his paws grasp Amy be the shoulders and softly push her back. 'I - I'm really sorry Amy, I got to go - now!' Leaving the young woman standing, a nonplussed expression on her face and still clutching the romance novel, Carl dashes off, taking several steps on the stairs up at one and just abandoning his own book stack.";
				say "     You wonder what that was about. Couldn't have been a lack of attraction, as you clearly saw the male husky's erection tent his pants. After consoling Amy about having her interesting new 'friend' run off, you do follow the husky to investigate. As you climb the last few steps, you see Carl standing at the window and staring outside intently, as if trying to distract himself from everything in here. Stepping up beside the man, you give him a questioning look and after a few moments of sullen silence, he says, 'Damn, damn, damn! Amy is a seriously hot bitch and I wanted to...' Making a fist and hitting the window-frame, he continues, '...I wanted to just grab her and breed her right there between the bookshelves. I almost didn't realize that under the smell of her heat, she is... very familiar, with a scent that resembles Davies... and myself.";
				WaitLineBreak;
				say "     Carl is clearly fighting with himself about the conflicting feelings for what he's pretty sure is his daughter. Its obvious that this has to be resolved somehow, as you don't want him to tear himself up inside.";
				say "     [bold type]So, what's your advice to the canine soldier?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - He should do the right thing and tell her what's up.";
				say "     ([link]N[as]n[end link]) - He's surely just imagining things and should go for some dog on dog action.";
				if Player consents:
					LineBreak;
					say "     Stepping up close to Carl, you put a hand on his shoulder and quietly tell him that he shouldn't just leave things like this with Amy. She is his daughter after all, so just running off on her isn't going to cut it. Telling him that she is sad and confused about being left alone like that, Carl swallows hard and lets his ears droop, then nods. 'Of course, you're right. I just panicked because, well... you know. She smells just amazing. Pheromones and shit.' He waves a hand at the still quite obvious bulge in his shorts. Putting a hand on the man's arm, you give it a supportive squeeze, then remind him that he's a man and not just an animal. You've seen quite a lot out in the city yourself, and drawing on that experience you try to give him a few tips to hold on to his composure. But for now, with him having a pretty 'acute' case on his hands... the easiest way to deal with it is just jerking off before he tries talking to Amy. With a grin, you tell Carl to take care of things, then join you and Amy afterwards.";
					say "     With that said, you stroll down the stairs to the ground floor of the library and seek out Amy, who's by now sitting cross-legged on her mattress, a book in her paw-hands. Her tail begins beating hard as she realizes that you're coming over to her and the young woman puts a bookmark in to give you her full attention. You sit down next to her, chatting a little about this and that, then soon notice that Carl is coming down the stairs too, dressed in a fresh uniform and with an earnest, yet friendly expression on his face. Coming up to the two of you, he clears his throat, then crouches down says, 'Hello Amy. I'm sorry for just... running off on you. I shouldn't have done that, but... I was too shocked to react right, at first. You see - you're my daughter.'";
					WaitLineBreak;
					say "     There is a moment of silence in which Carl gives Amy a somewhat sheepish look and her eyes get rounder by the second - then Amy suddenly jumps him with a squeal of 'Dadddyyyy!', wrapping her arms around the canine soldier and bowling him over. 'Oof,' the husky coughs out as the air is driven from his lungs, his fully-grown anthro husky daughter on top of him, busy rubbing her furred cheek against his and sharing a few friendly licks. 'I read so many stories about having a dad. Really made me want to have one too. I'm so happy you found me!' Taking a deep breath and letting it out in a happy chuckle, Carl replies, 'Me too, princess.' Amy's tail begins to beat even faster at that and she quickly asks, 'Oooh! Having a dad makes me a princess too?! Ah, and there's one more thing I was wondering about - what exactly am I supposed to do when you bring me sugar?'";
					say "     Carl coughs at the last question, barely bringing out, 'Er... that's... you see...' He then sits up, moving his hands to push the very enthusiastic young bitch back a bit - after hesitating a little and denying himself a grip on her breasts, or hips and finally gently taking her by the shoulders. Seems like Carl has his hands full for the foreseeable future...";
					now CarlAmySex is 1; [Carl and Amy know they're family]
				else:
					LineBreak;
					say "     Stepping up close to Carl, you put a hand on his shoulder and quietly tell him that while Amy is Davies daughter, there were quite a few males involved in breeding the soldier after his - or rather her - transformation. Surely it's unlikely that specifically Carl's seed was responsible for creating Amy. Letting a hand wander down his body and giving the still pretty obvious tent in the husky's pants a quick squeeze, you recommend that he stop worrying so much. He surely only smelled himself on Amy because he just ran into her... that's no reason not to enjoy himself with the so clearly willing bitch.";
					say "     Carl's muzzle opens as if to say something, but the canine soldier's words remain unspoken as a thoughtful expression crosses his face. You can almost see in his eyes how he swings back and forth between accepting your oh so convenient argumentation, and the certainty in his mind that Amy is indeed his offspring. Finally, after a long moment, he gives a low rumble from his throat and you see the fabric of his shorts twitch, just as if a canine cock just slid out of its shaft once more inside them. The male husky huffs in obvious excitement as he tells you, 'That must be it. Just a case of mistaken smell. Thanks for the help.' And with that said, he quickly dashes down the stairs, tail wagging wildly behind him.";
					LineBreak;
					say "     [bold type]It's not hard to see where this is going. What will you do next?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Go after him and watch.";
					say "     ([link]N[as]n[end link]) - Let things run their course, but don't peep on them.";
					if Player consents:
						LineBreak;
						say "     Why would you arrange for this and then not enjoy the show? Of course you're right behind Carl, shadowing him as he walks up to Amy sitting on her mattress, cross-legged and with a book between her paws. Clearing his throat, the canine soldier crouches down in front of her and says, 'Hello Amy. I'm sorry for just... running off on you.' She looks up from reading and her tail starts wagging at the close-by husky, just as her nostrils flare to take in his scent too. Meanwhile, Carl moves a bit closer, visibly panting as he comes to kneel in front of Amy and leans in over her and their muzzles touch, followed by him licking her. 'You just smell soo good,' he almost grunts, pulling the book from Amy's hand-paws and lightly throwing it aside, then setting his hands to cup her breasts. As the female husky moans at his touch, Carl lowers his head to lap over her nipples, teasing them with his long and flexible tongue.";
						say "     By now Amy is on her back fully, with Carl on top of her and both of them are totally oblivious to the world around them as they make out like there is no tomorrow. Hands explore each other's bodies and soon Amy's fingers find the edge of Carl's shirt, pulling it up over hard muscles visible under his short fur, then up over his head to be discarded to the side. Her trembling fingers attack his belt-buckle next, undoing it and then pulling down the zipper of the soldier's camo shorts, allowing him to brush the last article of clothing down over his legs and wiggle out of it, kicking the shorts off with an impatient growl. 'I'm gonna fuck you hard, you sexy bitch!' comes the growl from Carl a moment later, immediately answered by a needy yip in Amy's voice.";
						WaitLineBreak;
						say "     Instincts as old as the first wolf come to the forefront and Amy wiggles out from under the male husky's body, rolling over and lifting her rear, assuming the perfect position for doggy style fucking. Carl doesn't hesitate more than a heartbeat, then he's on her and drives his shaft home with a victorious howl, gripping her hard around the hips and humping into the young woman hard. The mating of the two huskies is a wild and untamed affair, with Carl thrusting into her wet folds with animalistic vigor and him even using his muzzle to get a loose grip on the fur over her neck, holding Amy down. Not that he needed to, really - as the young bitch revels in a strong male soothing the fires of her unending heat, fucking her like she was meant to be taken.";
						say "     Soon, Carl's movements build up to a frantic climax, and with a very satisfied howl, the husky drives himself fully inside Amy, shuddering all over as his knot swells up in her pussy, locking the two of them together. Crouching a bit, you can see the soldier's furry orbs twitch and pulse as their seed spurts deep into the young woman that you're quite sure is his daughter, no matter what excuses the man accepted from you. The knowledge what you just witnessed makes a hot and cold shiver run down your spine, and you can't help but feel a grin spreading over your lips[if Lust of Amy is 0]. You wonder how the puppies will turn out..[run paragraph on][end if].";
					else:
						LineBreak;
						say "     Content with just arranging for their mating to happen, you let Carl and Amy go at it without an audience. You do hear quite a bit of happy, aroused and eventually climactic barking not too much later though. Quite a racket, between your husky friend and his daugh- err... totally unrelated bitch.";
					if Lust of Amy is 0:
						now Lust of Amy is 24;
					NPCSexAftermath Amy receives "PussyFuck" from Carl;
					now CarlAmySex is 51; [player arranged for Carl to fuck Amy]
			else if (lastfuck of Carl - turns) > 12 and CarlAmySex is 51 and a random chance of 1 in 5 succeeds:
				say "     Entering the library, you see Amy - on all fours on her bedding, with Carl humping into the young woman hard. The mating of the two huskies is a wild and untamed affair, with the canine soldier thrusting into her wet folds with animalistic vigor and him even using his muzzle to get a loose grip on the fur over her neck, holding Amy down. Not that he needed to, really - as the young bitch revels in a strong male soothing the fires of her unending heat, fucking her like she was meant to be taken.";
				say "     Soon, Carl's movements build up to a frantic climax, and with a very satisfied howl, the husky drives himself fully inside Amy, shuddering all over as his knot swells up in her pussy, locking the two of them together. Crouching a bit, you can see the soldier's furry orbs twitch and pulse as their seed spurts deep into the young woman that you're quite sure is his daughter, no matter what excuses the man accepted from you. The knowledge what you just witnessed makes a hot and cold shiver run down your spine, and you can't help but feel a grin spreading over your lips[if Lust of Amy is 0]. You wonder how the puppies will turn out..[run paragraph on][end if].";
				if Lust of Amy is 0:
					let AmyPregchance be a random number from 1 to 20;
					if AmyPregchance > 13:
						now Lust of Amy is 24;
				NPCSexAftermath Amy receives "PussyFuck" from Carl;
			else:
				say "     As you come out of the bunker, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Maybe you should help her out with that...";
		-- "None":
			say "     As you come out of the bunker, you see Amy on her bedding, legs spread and a hand stroking her own pussy lips. Looks like she's pretty horny, aching for a fuck. Maybe you should help her out with that...";

Instead of fucking the Amy:
	if HP of Amy is 1: [child-like]
		say "     With her being not even a week old and rather child-like in temperament, it doesn't seem right to just fuck Amy. You decide you'd rather not do that right now.";
	else if HP of Amy is 2: [matured]
		say "     Deciding that you'll just be straightforward about things, you walk up to Amy and tell her you'd like to have sex with her. 'Oh,' the young husky says, looking to the side for a moment to a bookcase a sign above denounces to be filled with romance novels. 'I've read a bit about that when I started getting some funny feelings. So you want to... be my first? It's supposed to be someone special, a prince or a pirate or... a hero.' With that, she smiles at you. 'You saved me when we were out in the streets, brought me here and have been pretty nice, so sure - let's do it.' She takes you by the hand, leading you over to her mattress and sitting down on it.";
		say "[AmyFirstFuck]";
		now lastfuck of Amy is turns;
		now HP of Amy is 11;
	else if (HP of Amy is 10): [she told the player she wanted them to fuck her]
		say "     Deciding that you'll just be straightforward about things, you walk up to Amy and tell her you'd like to have sex with her. The young husky happily embraces you, moaning a bit as her four breasts rub against your chest. 'Thank you for making me the happiest girl in the world. It'll be just like in the books, with you my hero.' She takes you by the hand, leading you over to her mattress and sitting down on it.";
		say "[AmyFirstFuck]";
		now lastfuck of Amy is turns;
		now HP of Amy is 11;
	else: [repeat sex]
		if (lastfuck of Amy - turns < 2):
			say "     As you approach Amy, the young husky bitch looks at you and sighs. 'I want to have sex with you, but I'm pretty exhausted from last time. Please give me a moment to rest, OK?'";
		else:
			say "[AmySexMenu]";

to say AmyFirstFuck:
	if Player is male: [males+herm]
		say "     After quickly stripping off your clothes, you let your gaze wander over Amy's naked form, your manhood hardening as you look at her female curves. The husky knowingly smiles, arching her back a bit to present her four breasts to you, sensually stroking over them. 'I'm waiting for you,' she coos, giving you her best 'come hither' look. Kneeling down beside her, you bring your mouth to hers and kiss her, your hands roaming over her body, then holding her to lower her onto her back. Lying on top of her, you make out with the hot little husky, bringing her arousal she hasn't felt before. Then you move lower, cupping her breasts and playfully sucking on her nipples before going even further down her body and arriving at her pussy. Carefully spreading the husky's sensitive pussy lips, you put your tongue to it and lick, paying close attention to her clit. Amy gasps loudly as she experiences oral sex for the first time.";
		say "     Teasing the virgin husky with your tongue, you get her really wet down there in no time at all, with Amy just writhing on the mattress as you take her to new heights. Hearing her nonstop panting and moaning, you decide it's time to take this one step further and show her what really getting fucked is like. Holding open her legs, your hands rubbing Amy's soft fur, you move up until your [Cock of Player] shaft rests hotly against her pubic mound. Leaning over her, you kiss the aroused husky and slowly slide your head into her, soon pushing against her hymen.";
		WaitLineBreak;
		say "     Wanting to distract her from the pain of losing her virginity, you give her another deep kiss, move your hands to cup her top two breasts - and then make a quick downward thrust, only stopping as your crotch touches hers. There is only a short yip from Amy as her hymen is broken by your invading member, the moment of pain drowned out almost instantly by the pleasurable sensations of being kissed, touched and fucked. She starts moaning again as you move inside her, rubbing her inner walls with your hard shaft. Fucking the husky woman feels great, with the warm and tight vagina around your cock and her soft-furred female body in your arms. Being her first time having sex, and your first time in her, it's not too much longer until your coupling culminates in two pretty noisy orgasms. Amy is the first to reach her goal, giving a lust-filled howl as she comes, her femcum making your shaft even wetter than before. After a few more deep thrusts, you follow her to the other side, body shuddering as your balls release burst after burst of cum to splash into the husky's womb.";
		say "     Satisfied, you stay like that with Amy for a while, listening to her comparing what you just did to the books she read, mostly in terms of '...soo much better than I had imagined, even after reading about Lady Catherine and Lord Malcomb...' Running your hands through her soft belly fur, circling a nipple with your finger, you soon start making out with your canine mate, telling her she doesn't need those books now as there's lots more interesting stuff to do with you in reality.";
		NPCSexAftermath Amy receives "PussyFuck" from Player;
		let AmyPregchance be a random number from 1 to 20;
		if AmyPregchance > 7 and Sterile of Player is false:
			now Lust of Amy is 24;
	else if Player is female: [females]
		say "     After quickly stripping off your clothes, you let your gaze wander over Amy's naked form, a shiver of excitement going through you as you look at her female curves. The husky knowingly smiles, arching her back a bit to present her four breasts to you, sensually stroking over them. 'I'm waiting for you,' she coos, giving you her best 'come hither' look. Kneeling down beside her, you bring your mouth to hers and kiss her, your hands roaming over her body, then holding her to lower her onto her back. Lying on top of her, you make out with the hot little husky, bringing her arousal she hasn't felt before. Then you move lower, cupping her breasts and playfully sucking on her nipples before going even further down her body and arriving at her pussy. Carefully spreading the husky's sensitive pussy lips, you put your tongue to it and lick, paying close attention to her clit. Amy gasps loudly as she experiences oral sex for the first time.";
		say "     Teasing the virgin husky with your tongue, you get her really wet down there in no time at all, with Amy just writhing on the mattress as you take her to new heights. Hearing her nonstop panting and moaning, you decide it's time to take this one step further and show her what really getting fucked is like. Grabbing the dildo you brought for this purpose from between the pile of your cast-off clothing, you kiss Amy, then hold the rubber sex top up for her to see. As she takes it from you to put it in her mouth, you spread open her legs, your hands rubbing Amy's soft fur, then rub your fingers over her pussy mound and downwards, stroking her sensitive nether lips. Leaning over her, you take the now wet and ready dildo from her, you rub its head over her pussy lips and start to slowly push it in between them, soon bumping against her hymen.";
		WaitLineBreak;
		say "     Wanting to distract her from the pain of losing her virginity, you give her another deep kiss, move a hand to cup one of her upper breasts - and then make a quick downward thrust with the dildo, only stopping as the rubber balls at its base touch her crotch. There is only a short yip from Amy as her hymen is broken by the invading member, the moment of pain drowned out almost instantly by the pleasurable sensations of being kissed, touched and fucked. She starts moaning again as you move the toy inside her, rubbing her inner walls with the hard rubber shaft. Fucking the husky woman is a lot of fun, though you ache for some release of your own, so you get on top of her in 69 position. Without any prompting, Amy starts licking you again, driving you to higher and higher arousal. Being her first time having sex, and you already aroused from taking care of Amy, it's not too much longer until your coupling culminates in two pretty noisy orgasms. Amy is the first to reach her goal, giving a lust-filled howl as she comes, her femcum glistening wetly on the rubber shaft of the dildo you're fucking her with. Just moments later, you experience your own climax, the young husky's talented tongue driving you over the edge.";
		say "     Satisfied, you stay like that with Amy for a while, listening to her comparing what you just did to the books she read, mostly in terms of '...soo much better than I had imagined, even after reading about Lady Catherine and Lord Malcomb...' Running your hands through her soft belly fur, circling a nipple with your finger, you soon start making out with your canine mate, telling her she doesn't need those books now as there's lots more interesting stuff to do with you in reality.";
		NPCSexAftermath Amy receives "PussyDildoFuck" from Player;
		NPCSexAftermath Amy receives "OralPussy" from Player;
		NPCSexAftermath Player receives "OralPussy" from Amy;
	else: [neuter]
		say "     After quickly stripping off your clothes, you let your gaze wander over Amy's naked form, a shiver of excitement going through you as you look at her female curves. The husky knowingly smiles, arching her back a bit to present her four breasts to you, sensually stroking over them. 'I'm waiting for you,' she coos, giving you her best 'come hither' look. Kneeling down beside her, you bring your mouth to hers and kiss her, your hands roaming over her body, then holding her to lower her onto her back. Lying on top of her, you make out with the hot little husky, bringing her arousal she hasn't felt before. Then you move lower, cupping her breasts and playfully sucking on her nipples before going even further down her body and arriving at her pussy. Carefully spreading the husky's sensitive pussy lips, you put your tongue to it and lick, paying close attention to her clit. Amy gasps loudly as she experiences oral sex for the first time.";
		say "     Teasing the virgin husky with your tongue, you get her really wet down there in no time at all, with Amy just writhing on the mattress as you take her to new heights. Hearing her nonstop panting and moaning, you decide it's time to take this one step further and show her what really getting fucked is like. Grabbing the dildo you brought for this purpose from between the pile of your cast-off clothing, you kiss Amy, then hold the rubber sex top up for her to see. As she takes it from you to put it in her mouth, you spread open her legs, your hands rubbing Amy's soft fur, then rub your fingers over her pussy mound and downwards, stroking her sensitive nether lips. Leaning over her, you take the now wet and ready dildo from her, you rub its head over her pussy lips and start to slowly push it in between them, soon bumping against her hymen.";
		WaitLineBreak;
		say "     Wanting to distract her from the pain of losing her virginity, you give her another deep kiss, move a hand to cup one of her upper breasts - and then make a quick downward thrust with the dildo, only stopping as the rubber balls at its base touch her crotch. There is only a short yip from Amy as her hymen is broken by the invading member, the moment of pain drowned out almost instantly by the pleasurable sensations of being kissed, touched and fucked. She starts moaning again as you move the toy inside her, rubbing her inner walls with the hard rubber shaft. Fucking the husky woman is a lot of fun, though with it being her first time having sex, it's not too much longer until you drive the husky girl to a pretty noisy orgasm. As Amy reaches her goal, she gives a lust-filled howl and comes, her femcum glistening wetly on the rubber shaft of the dildo you're fucking her with.";
		say "     Satisfied, you stay like that with Amy for a while, listening to her comparing what you just did to the books she read, mostly in terms of '...soo much better than I had imagined, even after reading about Lady Catherine and Lord Malcomb...' Running your hands through her soft belly fur, circling a nipple with your finger, you soon start making out with your canine mate, telling her she doesn't need those books now as there's lots more interesting stuff to do with you in reality.";
		NPCSexAftermath Amy receives "PussyDildoFuck" from Player;

to say AmySexMenu:
	LineBreak;
	project the figure of Amy_icon;
	say "     You walk over to Amy, who immediately starts smiling and stroking her breasts as she sees the lust-filled twinkle in your eyes.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Have her blow your cock";
		now sortorder entry is 1;
		now description entry is "Put the husky's mouth to good use";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Have her lick your pussy";
		now sortorder entry is 2;
		now description entry is "Put the husky's mouth to good use";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Finger her pussy";
	now sortorder entry is 3;
	now description entry is "Finger-fuck Amy's pussy to make her cum";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her pussy";
		now sortorder entry is 4;
		now description entry is "Fill the husky bitch with your cock";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Take Amy's ass";
		now sortorder entry is 5;
		now description entry is "Fill the husky bitch's ass with your cock";
	[]
	if (Player is male and thirst of Amy is 1 and Xerxes is in the Grey Abbey Library):
		choose a blank row in table of fucking options;
		now title entry is "Have a threesome with Amy and Xerxes";
		now sortorder entry is 6;
		now description entry is "Have sex with both your human dog and horny husky";
	[]
	if (Player is male and level of Amy is 1 and felinoid companion is tamed):
		choose a blank row in table of fucking options;
		now title entry is "Have a threesome with Amy and Klauz";
		now sortorder entry is 7;
		now description entry is "Have sex with both your felinoid companion and horny husky";
	[]
	if (Player is male and XP of Amy is 1 and Fang is in the Grey Abbey Library and HP of Fang < 7):
		choose a blank row in table of fucking options;
		now title entry is "Have a threesome with Amy and Fang";
		now sortorder entry is 8;
		now description entry is "Have sex with both the black wolf and horny husky";
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
				if (nam is "Have her blow your cock"):
					say "[AmySex1]";
				else if (nam is "Have her lick your pussy"):
					say "[AmySex2]";
				else if (nam is "Finger her pussy"):
					say "[AmySex3]";
				else if (nam is "Fuck her pussy"):
					say "[AmySex4]";
				else if (nam is "Take Amy's ass"):
					say "[AmySex5]";
				else if (nam is "Have a threesome with Amy and Xerxes"):
					say "[AmySex6]";
				else if (nam is "Have a threesome with Amy and Klauz"):
					say "[AmySex7]";
				else if (nam is "Have a threesome with Amy and Fang"):
					say "[AmySex8]";
				now lastfuck of Amy is turns;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the female husky, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say AmySex1: [cock sucked by Amy]
	say "     A smile on your face as you walk up to her, you grab the bulge in your pants and ask her if she could help you it with it. No longer the innocent little husky you first found, she grins at you and licks her lips, then kneels before you. Pulling out your [Cock of Player] cock, you hold it out with one hand, allowing Amy to put it in her muzzle and suck on it. She really is a natural at giving blowjobs, holding her lips tight around your shaft and teasing it with her tongue. Before too much longer, the husky girl's enthusiastic sucking drives your arousal through the roof. As she goes down on your cock again, you hold her head against your crotch, shooting long blasts of cum into her mouth. When she pulls off your cock after you're done, Amy shows you the large load on her tongue, then swallows it demonstratively. Jokingly, you call her a 'Good dog', tousling her hair, then softly pull Amy to her feet and give her a deep kiss.";
	NPCSexAftermath Amy receives "OralCock" from Player;

to say AmySex2: [cunt licked by Amy]
	say "     A smile on your face as you walk up to her, you rub the crotch of your pants and ask her if she could help you it with it. No longer the innocent little husky you first found, she grins at you and licks her lips, then kneels before you. Pulling off your pants, you show your already a bit moist pussy, allowing Amy to put her muzzle between your legs and lick. She really is a natural at stimulating you with that tongue of hers, pushing it into your vagina and teasing your clit with its tip. Before too much longer, the husky girl's enthusiastic oral attention drives your arousal through the roof. As she goes down on you to lick your pussy again, you hold her head against your crotch, breathing deeply as the husky girl slurps up the femcum running down your legs. Jokingly, you call her a 'Good dog', tousling her hair, then softly pull Amy to her feet and give her a deep kiss.";
	NPCSexAftermath Amy receives "OralPussy" from Player;

to say AmySex3: [Amy's cunt licked/fingered]
	say "     Walking up close to Amy, you put your arms around her and give her a hug. As your lips find hers for a kiss, your hands move down over her naked body, softly stroking her curves. Coming back up for air, you start rubbing over her sensitive pussy lips, making Amy give a needful moan. Guiding the aroused husky over to her bedding, you kneel between her legs as she lies down on her back. Her pussy, already a bit swollen and moist in anticipation, lies ready for you between the canine girl's legs. Leaning forward, you bring your mouth to it, licking over her crotch, then playing with Amy's clit with the tip of your tongue. It's a lot of fun to hear her gasp and moan under your ministrations and you switch up between fingering her and licking. Under your skilled fingers and tongue, it doesn't take long until Amy's moans get louder and louder and the female husky pants almost nonstop. Then suddenly, she arches her back, hands flying to hold your head in place as she climaxes. Your face is a bit wet with squirts of her femcum as you move on top of Amy afterwards to give her a deep kiss. The young husky smiles and licks your face, her arms around your body to hold you close.";
	NPCSexAftermath Player receives "OralPussy" from Amy;

to say AmySex4: [Amy's pussy fucked by player]
	if (Lust of Amy > 1 and Lust of Amy < 12): [pregnant version]
		say "     Walking up close to Amy, you put your arms around her and give her a hug. As your lips find hers for a kiss, your hands move down over her naked body, softly stroking her curves and carefully touching her pregnant belly. Coming back up for air, you tell her how hard thinking about fucking her makes you. 'You're not the only one,' she coos back at you, taking your hand and putting it between her legs to feel her sex already a bit moist, open and swollen. As you start stroking over her sensitive pussy lips with a finger, Amy moves up against you closely, rubbing her breasts against your body. The two of you enjoy touching each other for a bit, you fondling her breasts and Amy rubbing your cock, until the building arousal between you can no longer be contained. Holding you by her paw-hand, Amy almost pulls you over to her mattress, where she gets on all fours, showing her ass and the dripping vagina between her legs invitingly.";
		say "     Quickly sliding off your clothes, you step up and kneel behind Amy, then lean over her. As you wrap your arms around her from behind, fondling her four breasts and rubbing the bulging pregnant belly, your [Cock of Player] shaft comes to rest hotly against her furred ass. Amy moans as you take hold of your cock, pushing it down a bit and rubbing its head over her pussy lips, then put its tip between them. Sliding into her wet and tight vagina in one smooth move, you grunt deeply as you bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, then start pulling out a bit and thrusting back in, fucking the young husky.";
		WaitLineBreak;
		say "     Amy is a very enthusiastic sex-partner, rocking back to meet you with her hips as you pound into her. In between moans and pants, she groans 'Harder. Harder!', only satisfied when your balls smack against her buttcheeks with an audible thud each time you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
		say "     Immensely satisfied, you stay like that on top of her for a while, then pull your softening cock out and lie down with Amy. Spooning her, you run a hand through her soft belly fur, feeling the rounded curve of her body that bulges with the new life growing inside her.";
	else: [regular version]
		say "     Walking up close to Amy, you put your arms around her and give her a hug. As your lips find hers for a kiss, your hands move down over her naked body, softly stroking her curves. Coming back up for air, you tell her how hard thinking about fucking her makes you. 'You're not the only one,' she coos back at you, taking your hand and putting it between her legs to feel her sex already a bit moist, open and swollen. As you start stroking over her sensitive pussy lips with a finger, Amy moves up against you closely, rubbing her breasts against your body. The two of you enjoy touching each other for a bit, you fondling her breasts and Amy rubbing your cock, until the building arousal between you can no longer be contained. Holding you by her paw-hand, Amy almost pulls you over to her mattress, where she lies down on her back, spreading her legs invitingly.";
		say "     Quickly sliding off your clothes, you step up and kneel between Amy's legs, then lean over her. As you start making out hungrily, your [Cock of Player] shaft comes to rest hotly against her pubic mound. Amy moans as you take hold of your cock, rubbing its head over her pussy lips, then put its tip between them. Sliding into her wet and tight vagina in one smooth move, you grunt deeply as you bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, then start pulling out a bit and thrusting back in, fucking the young husky.";
		WaitLineBreak;
		say "     Amy is a very enthusiastic sex-partner, holding you close with her arms and making out as you pound into her. She even wraps her legs around your hips to pull your crotch down harder against her, moaning as your balls hit her buttcheeks when you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
		say "     Immensely satisfied, you stay like that on top of her for a while, then pull your softening cock out and lie down with Amy. Spooning her, you run a hand through her soft belly fur, circling her nipples with your finger, then just hold her.";
		if Lust of Amy is 0:
			let AmyPregchance be a random number from 1 to 20;
			if AmyPregchance > 10 and Sterile of Player is false:
				now Lust of Amy is 24;
	NPCSexAftermath Amy receives "PussyFuck" from Player;

to say AmySex5: [Amy's ass fucked by player]
	if (Lust of Amy > 1 and Lust of Amy < 12): [pregnant version]
		say "     Walking up close to Amy, you put your arms around her and give her a hug. As your lips find hers for a kiss, your hands move down over her naked body, softly stroking her curves and carefully touching her pregnant belly. Coming back up for air, you tell her how hard thinking about fucking her makes you. 'You're not the only one,' she coos back at you, taking your hand and putting it between her legs to feel her sex already a bit moist, open and swollen. As you start stroking over her sensitive pussy lips with a finger, Amy moves up against you closely, rubbing her breasts against your body. The two of you enjoy touching each other for a bit, you fondling her breasts and Amy rubbing your cock, until the building arousal between you can no longer be contained. Holding you by her paw-hand, Amy almost pulls you over to her mattress, where she gets on all fours, showing her ass and the dripping vagina between her legs invitingly.";
		say "     Quickly sliding off your clothes, you step up and kneel behind Amy, then lean over her. As you wrap your arms around her from behind, fondling her four breasts and rubbing the bulging pregnant belly, your [Cock of Player] shaft comes to rest hotly against her furred ass. Amy moans as you take hold of your cock, pushing it down a bit and rubbing its head over her pussy lips to get it all slippery and wet with her juices just dripping out of it. Then you move back up and put the tip between her buttcheeks, right against the young husky's pucker. Slowly and carefully, you increase the pressure against it until the muscle yields and allows your shaft into her tight and warm passage. Sinking deeper into her hole, stretching it around your hard manhood, you grunt deeply as you finally bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member, then start pulling out a bit and thrusting back in, fucking the young husky's ass.";
		WaitLineBreak;
		say "     Amy is a very enthusiastic sex-partner, rocking back to meet you with her hips as you pound into her. In between moans and pants, she groans 'Harder. Harder!', only satisfied when your balls smack against her buttcheeks with an audible thud each time you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [Cock of Player] shaft in her butt. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's insides. The feeling of a male's cum filling her gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her own orgasm.";
		say "     Immensely satisfied, you stay like that on top of her for a while, then pull your softening cock out and lie down with Amy. Spooning her, you run a hand through her soft belly fur, feeling the rounded curve of her body that bulges with the new life growing inside her.";
	else: [regular version]
		say "     Walking up close to Amy, you put your arms around her and give her a hug. As your lips find hers for a kiss, your hands move down over her naked body, softly stroking her curves. Coming back up for air, you tell her how hard thinking about fucking her makes you. 'You're not the only one,' she coos back at you, taking your hand and putting it between her legs to feel her sex already a bit moist, open and swollen. As you start stroking over her sensitive pussy lips with a finger, Amy moves up against you closely, rubbing her breasts against your body. The two of you enjoy touching each other for a bit, you fondling her breasts and Amy rubbing your cock, until the building arousal between you can no longer be contained. Holding you by her paw-hand, Amy almost pulls you over to her mattress, where she gets on all fours, showing her ass and the dripping vagina between her legs invitingly.";
		say "     Quickly sliding off your clothes, you step up and kneel behind Amy, then lean over her. As you wrap your arms around her from behind, fondling her four breasts and rubbing her soft belly-fur, your [Cock of Player] shaft comes to rest hotly against her furred ass. Amy moans as you take hold of your cock, pushing it down a bit and rubbing its head over her pussy lips to get it all slippery and wet with her juices just dripping out of it. Then you move back up and put the tip between her buttcheeks, right against the young husky's pucker. Slowly and carefully, you increase the pressure against it until the muscle yields and allows your shaft into her tight and warm passage. Sinking deeper into her hole, stretching it around your hard manhood, you grunt deeply as you finally bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member, then start pulling out a bit and thrusting back in, fucking the young husky's ass.";
		WaitLineBreak;
		say "     Amy is a very enthusiastic sex-partner, rocking back to meet you with her hips as you pound into her. In between moans and pants, she groans 'Harder. Harder!', only satisfied when your balls smack against her buttcheeks with an audible thud each time you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [Cock of Player] shaft in her butt. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's insides. The feeling of a male's cum filling her gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her own orgasm.";
		say "     Immensely satisfied, you stay like that on top of her for a while, then pull your softening cock out and lie down with Amy. Spooning her, you run a hand through her soft belly fur, circling her nipples with your finger, then just hold her.";
	NPCSexAftermath Amy receives "AssFuck" from Player;

to say AmySex6: [Xerxes+Amy+Player Threesome]
	say "     Stepping by Xerxes bunk, you ruffle the human dog's hair and say 'Come on, boy', then make your way to Amy's bedding accompanied by him. Walking up close to Amy, you put your arms around her and give her a hug. As your lips find hers for a kiss, your hands move down over her naked body, softly stroking her curves[if Lust of Amy > 1 and Lust of Amy < 12] and carefully touching her pregnant belly[end if]. Coming back up for air, you tell her how hard thinking about fucking her makes you. 'You're not the only one,' she coos back at you, giving a smiling nod down to Xerxes, who's busy sniffing her already a bit moist, open and swollen pussy. She crouches down[if Lust of Amy > 1 and Lust of Amy < 12] with a bit of help from you, pregnant as she is[end if], then sits on her mattress and pulls the human dog's head to hers, exchanging some licks and kisses with him too.";
	say "     Joining the two of them on the mattress, Amy sitting and Xerxes on all fours, you start stroking over the husky's sensitive pussy lips with a finger, your other hand cupping and caressing her breasts. There's quite a bit of touching, kissing and licking going on between the three of you for a while, then Amy's mounting arousal can no longer be contained. Getting up on her knees, the young husky moves around on the mattress, then takes a position on all fours, showing her ass and the dripping vagina between her legs invitingly.";
	WaitLineBreak;
	say "     Your human dog sniffs the air, taking in Amy's female scent, and is quite obviously rock hard and almost trembling with the desire to mount her right now. Nevertheless, he obediently waits on all fours beside you, his training overcoming his natural urges even now. Though he does give you an incredibly hard to resist pleading puppy dog look[if lust of Xerxes >= 4] as he says 'Me fuck Amy?'[end if] - amazing that still works, even though he's in the body of a teenage human.";
	LineBreak;
	say "     So - do you allow Xerxes to mount Amy, or take that position yourself?";
	say "     [bold type]Who shall fuck her?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - You.";
	say "     ([link]N[as]n[end link]) - Xerxes.";
	if Player consents: [player mounts her]
		LineBreak;
		say "     Shaking your head at Xerxes, you quickly strip off your clothes, then hold your already quite hard shaft out for him. With a happy yip, he starts licking it, running his talented tongue along your shaft, then lapping at your balls before returning to the tip of your cock and taking it in his mouth. After Xerxes bobs up and down on your cock a few times, you smile and tussle his hair, then pull out and move to kneel behind Amy. One hand on your slick and wet manhood, you rub its tip over the young husky's swollen nether lips, then press in between them. Sliding into her tight vagina in one smooth move, you grunt deeply as you bottom out in her, your balls touching her soft crotch-fur. You stay like that for a moment, giving her the opportunity to get used to your member spreading her inner passage, then start pulling out a bit and thrusting back in, fucking the young husky.";
		LineBreak;
		say "     Not forgetting about your human dog, in between moans you tell him to... (Y = mount you, N = move to get sucked off by Amy) ";
		if Player consents: [Xerxes fucks the player]
			LineBreak;
			say "     You wiggle your ass at Xerxes and reach back to spread your cheeks invitingly, to which the human dog pounces on your ass and starts lapping up and down your crack. Already hot and ready from his lust for Amy, that quickly leads over to him mounting you from behind in typical doggie-style, hugging your chest has his hips grind against you. His hard shaft pokes your ass and rubs up and down your crack until he finally finds your hole and presses in against you. As your pucker yields to Xerxes invading member, he plunges deep into your body, giving a lustful growl as he bottoms out in one thrust.";
			if lust of Xerxes >= 4:
				say "     Having gained intelligence to go along with his canine mind, he is able to hold back his instinctive desire to rut you hard and fast for a while, taking the time to run his hands over your [one of][bodytype of Player][or][if Player is herm]herm[else if Player is male]male[else if Player is female]female[else]genderless[end if][as decreasingly likely outcomes] body as he takes slower thrusts at first, enjoying the feel of your hot, tight hole around his pulsing shaft. His hands roam over you[if lust of Xerxes < 7] almost as if he were petting you[else], stroking and caressing your [bodydesc of Player] body with growing adeptness[end if]. He nuzzles at the back of your neck, panting with a growing excitement that has his pace quicken in response. As he thrusts harder, you moan what a good boy he is.";
			WaitLineBreak;
			say "     Xerxes fucks you with a relentless wild energy, his hard thrusts rubbing very sensitive and pleasurable spots inside you, just as you pound the very enthusiastic Amy in front of yourself. In between moans and pants, she groans 'Harder. Harder!', only satisfied when your balls smack against her buttcheeks with an audible thud each time you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
			say "     In the grip of your own climax, your anal muscles twitch around Xerxes cock, which obviously excites him, making his growls of lust increase and him speed up before plunging in one last time and filling your asshole with his human seed. As his cock and balls keep twitching with blast after blast of cum into you, Xerxes just keeps holding on to you, panting with his head over your shoulder. Turning your head, you pull his lips to yours, kissing him and sticking your tongue in his mouth. Holding him against you with one arm, the other one on Amy, you pull your little trio down to lie on the mattress, where you enjoy each other's warmth and closeness for a while as you come down from your respective orgasms[if lust of Xerxes >= 4]. 'Mmm... Master good fuck,' he mumbles softly, snuggling up to your back lovingly[end if].";
			NPCSexAftermath Player receives "AssFuck" from Xerxes;
		else: [Xerxes gets sucked off by Amy]
			LineBreak;
			say "     Telling [if lust of Xerxes >= 4]Xerxes to get a blowjob from Amy, you watch the naked body of the human dog as he rushes around to her front, then kneels in front of her, his erect cock sticking up straight in front of her face[else]Xerxes to go to Amy, you watch the naked body of the human dog as moves to her front, then throws himself on the ground in front of her, rolling on his back with spread legs to allow her to suck his shaft[end if]. The young husky takes it in her muzzle, carefully keeping her teeth away as she starts bobbing up and down. While Xerxes is getting an amazing blowjob, you fuck Amy's tight pussy, pounding into the very enthusiastic young husky. In between moans and pants, she groans 'Harder. Harder!', only satisfied when your balls smack against her buttcheeks with an audible thud each time you bottom out again. You wish you could keep the amazing feelings you give each other up forever, but all too soon, the limit of your ability to hold back is reached. With a gasped 'I'm coming!', you thrust into her one last time, burying your [Cock of Player] shaft inside her pussy[if Cock Length of Player > 10] until it pushes against her cervix[end if]. Then your balls send the massive load built up inside them on its way, burst after burst of your fertile seed shooting into your beautiful husky's womb. The feeling of a male's cum flooding her insides gives Amy the last push she needed too. While you're still pumping more shots inside her, she writhes under you, tongue lolling out of her mouth as she rides her orgasm.";
			say "     After a moment, when the feelings of just having come ebb out, Amy continues the blowjob she was giving Xerxes and before too much longer, the husky girl's enthusiastic sucking drives his lust through the roof. As she goes down on the human dog's cock again, he[if lust of Xerxes >= 4] moans 'Aaah - Good Amy' and[end if] yips as he comes, shooting long blasts of cum into her mouth. When she pulls off his cock after he's done, Amy shows you the large load on her tongue, then swallows it demonstratively. Jokingly, you call her and Xerxes both 'Good dog', tousling their hair, then pull Amy's head to yours and give her a deep kiss. Lying down on the mattress with your two friends after that, you enjoy each other's warmth and closeness for a while[if lust of Xerxes >= 4]. 'Mmm... Amy and Master nice,' Xerxes mumbles softly, snuggling up to your back lovingly[end if].";
			NPCSexAftermath Amy receives "OralCock" from Xerxes;
		NPCSexAftermath Amy receives "PussyFuck" from Player;
	else:[Xerxes gets on Amy]
		LineBreak;
		if lust of Xerxes >= 4:[awesome/intelligent Xerxes]
			say "     You pat Xerxes shoulder and say 'Go for it' with a grin. Having gained intelligence to go along with his canine mind, he is able to hold back his instinctive desire to rut her hard and fast for a while, taking the time to run his hands over Amy's back and female curves first. He leans close against her back to cup two of the husky's breasts with his hands while moving his hips to position his shaft at her opening. Then, with a quick thrust accompanied by two persons very satisfied moans, he sinks his manhood into her dripping wet pussy. Xerxes takes slower thrusts at first, enjoying the feel of Amy's hot, wet hole around his pulsing shaft. His hands roam over her[if lust of Xerxes < 7] almost as if he were petting Amy[else], stroking and caressing Amy's body with growing adeptness[end if]. He nuzzles at the back of the young husky's neck, panting with a growing excitement that has his pace quicken in response.";
			LineBreak;
			say "     Having quickly gotten rid of your clothes and gear while your two companions got into fucking each other, you now stand naked beside them, your cock hard and ready for action. How do you want to join in on their coupling? (Y = have Amy suck you, N = fuck Xerxes ass)[line break]";
		else:[basic Xerxes]
			say "     Almost before you're finished saying 'Go for it, boy', Xerxes is on top of Amy, his muscular chest against her back as he hugs her tightly and grinds his crotch against her body. Being a natural in the typical 'doggie-style', his shaft quickly finds her dripping opening and plunges deep into the husky's body. Quickly stripping off your own clothes as they start fucking each other, you now stand naked beside them, your cock hard and ready for action. How do you want to join in on their coupling? (Y = have Amy suck you, N = fuck Xerxes ass)[line break]";
		if Player consents: [have Amy blow the player]
			LineBreak;
			say "     Walking around the two of them till you're in front of Amy, you sit down and hold your hard shaft out for her. The young husky takes it in her muzzle, carefully keeping her teeth away as she starts bobbing up and down. She really is a natural at giving blowjobs, holding her lips tight around your shaft and teasing it with her tongue. While you're getting an amazing blowjob, Xerxes fucks Amy with a relentless wild energy, his hard thrusts hitting very sensitive spots again and again, making her pant and yip in pleasure. This soon drives Amy's arousal to the max, giving her a mind-blowing orgasm that moistens Xerxes cock with even more slippery femcum. He obviously likes the feeling of that, as his growls of lust increase and he speeds up before plunging in one last time and filling Amy's womb with his human seed.";
			say "     After a moment of riding out her own orgasm, Amy continues the blowjob she was giving you and before too much longer, the husky girl's enthusiastic sucking drives your lust through the roof. As she goes down on your cock again, you hold her head against your crotch, shooting long blasts of cum into her mouth. When she pulls off your cock after you're done, Amy shows you the large load on her tongue, then swallows it demonstratively. Jokingly, you call her and Xerxes both 'Good dog', tousling their hair, then pull Amy's head to yours and give her a deep kiss. Lying down on the mattress with your two friends after that, you enjoy each other's warmth and closeness for a while[if lust of Xerxes >= 4]. 'Mmm... Amy good fuck,' Xerxes mumbles softly, snuggling up to your back lovingly and nuzzling your neck[end if].";
			NPCSexAftermath Amy receives "OralCock" from Player;
		else: [assfuck for Xerxes]
			LineBreak;
			say "     Walking around the two of them till you're behind Xerxes, you kneel down and quickly lube up your shaft. Running your hands down the muscular back of your human dog, from up on his shoulders down to his hips, you grip them tightly to hold him still for a moment and bring your hard cock against his pucker. Telling him in soft tones to relax, you push forward and slide into his body. Xerxes hole is incredibly warm and tight - no wonder, with only Mike and maybe one or two of the other human dogs having been in there before you. You take a moment to appreciate the tightly gripping feel of his ass as you bottom out, then start fucking him, with Xerxes panting and yipping in lust as you slide in and out[if lust of Xerxes >= 4]. 'Good master,' he moans, pressing his rear back into your thrusts[end if]. As you pound into him from behind, your pet's shaft gets pushed deeper into Amy's pussy in turn, making her pants and moans join Xerxes. That almost makes you feel like you're fucking them both at the same time...";
			say "     You run your hands over Xerxes sexy body, caressing his lovely skin[if lust of Xerxes >= 7] and running your fingers along his collar tattoo[end if] as you lean overtop of him. This draws added moans and yips of pleasure from him and he pushes himself back into your thrusts, his ass squeezing along your shaft as you fuck him like a dog. You play with his nipples while fucking him, whispering in his ear what a good boy he is.";
			WaitLineBreak;
			say "     Getting shafted while being in Amy himself soon drives Xerxes over the edge, and as you do another deep thrust into his tight ass he gives a deep grunt and climaxes, squirting blast after blast of his human seed directly into the young husky's womb. With the flexing of his anal muscles around your shaft with each of his spurts, you're close behind him, moaning loudly as you cream his asshole with your sperm. With your cock twitching inside, painting his insides white, you pull Xerxes upper body against your chest and give him a deep kiss. Then, after your last shot, you pull your little trio down to lie on Amy's mattress, where you enjoy each other's warmth and closeness for a while as you come down from your respective orgasms[if lust of Xerxes >= 4]. 'Mmm... Amy nice. Master fuck Xerxes good,' he mumbles softly, snuggling up to you lovingly[end if][if lust of Xerxes >= 7] as you kiss along the tattooed collar ringing his neck[end if].";
			NPCSexAftermath Xerxes receives "AssFuck" from Player;
		NPCSexAftermath Amy receives "PussyFuck" from Xerxes;
	if Lust of Amy is 0: [not pregnant yet]
		let AmyPregchance be a random number from 1 to 20;
		if AmyPregchance > 13:
			now Lust of Amy is 24; [someone has knocked her up - either the player or Xerxes]

to say AmySex7: [Felinoid+Amy+Player Threesome]
	say "     Accompanied by Klauz, you walk over to the mattress you put up here in the library for Amy. The large cat sniffs the female husky's bedding with interest, then turns his head to you and gives a questioning rumble from his throat. Running both hands through his warm fur and scratching him affectionately behind the ears, you answer, 'Yeah, let's have some fun with her.'";
	say "     Soon after, Amy comes into sight from among the long bookshelves in the library, walking towards you slowly, the stack of books in her hands so high that she can't actually see what is in front of her. As she comes closer, you walk up to her and take more than half of the books from her. She says, 'Thank you, that's very nice of you.' Then she notices the look of lust in your eyes and the felinoid's presence. 'Oh,' she says in an amused tone and sets down her books on the ground, then continues with 'Were you boys waiting for me? I wonder why...' in a playfully innocent tone. A moment later, she betrays that she's no blushing virgin as she moves up close to you, her hand feeling up the tent in your pants. With a lustful wink, she then saunters over to her bedding, swishing her tail while demonstratively shaking her hips.";
	WaitLineBreak;
	say "     Quickly adding the books in your hands to the pile on the floor, you follow her over to the mattress, pulling off your clothes and dropping them as you go along. Soon you're sitting beside her, as naked as she herself always is, with Klauz standing right beside you. The large cat circles you both, giving a pleasantly rumbling purr and rubbing the side of his furred body against yours, his long tail lazily flicking through the air in front of your faces. The effects of his touch and heady musk take effect almost immediately, with both Amy's and your breathing becoming quicker as you start panting in rising lust. Her pussy gets moist and ready for sex, a fact easily visible as she spreads her nether lips with her fingers and starts rubbing them.";
	say "     Suddenly stopping behind Amy, Klauz puts his head over her shoulder, rubbing the side of his furry face against hers. Then he lifts a paw, softly pushing against her back while giving suggestive rumbles from his throat. Taking the hint, the young husky gets up from the mattress to move around on it and gets into a position on all fours, her legs spread a bit and tail raised high, presenting her ready and dripping pussy.";
	WaitLineBreak;
	say "     After circling around you once more, the felinoid moves to Amy's backside, licking her crotch with his rough tongue a few times. Then he continues further up, licking over the arched back of the husky girl and continuing to her neck. Standing over the smaller shape of Amy, his belly-fur touching her back, Klauz now is in the perfect position to fuck her. Lowering his hind legs a bit, the feline rubs his spined cock up and down the anthro husky's crotch until he soon finds Amy's swollen pussy lips and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library.";
	LineBreak;
	say "     What would you like to do now?";
	say "     [bold type]Do you let Amy blow you and feed her your load, or do you want to fuck and come inside Klauz's ass?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Let Amy blow you and feed her your load.";
	say "     ([link]N[as]n[end link]) - Fuck and come inside Klauz's ass.";
	if Player consents: [sucked by Amy]
		LineBreak;
		say "     Your own libido awakened by the images of the large cat on top of the human-like Amy, as well as Klauz's touch and musk, you quickly decide that it's time to join in. Putting a hand on your raging [Cock of Player] hard-on, you stroke it a few times before moving into position and holding it out for Amy. The young husky takes it in her muzzle, carefully keeping her teeth away as she starts bobbing up and down. She really is a natural at giving blowjobs, holding her lips tight around your shaft and teasing it with her tongue. While you're getting an amazing blowjob, the felinoid fucks Amy with a relentless wild energy, his hard thrusts hitting very sensitive spots again and again, making her pant and yip in pleasure.";
		say "     Even though he is a quite virile male, everyone's stamina has its limits. When Amy suddenly gives a pleased yip and orgasms, her female juices dripping down to soak into her bedding, that gives the large cat the last nudge too. A deep rumble of satisfaction vibrates in Klauz's throat as he pushes his member as deep as it will go and fills Amy's womb with his seed.";
		WaitLineBreak;
		say "     After a moment of riding out her own orgasm, Amy continues the blowjob she was giving you and before too much longer, the husky girl's enthusiastic sucking drives your lust through the roof. As she goes down on your cock again, you hold her head against your crotch, shooting long blasts of cum into her mouth. When she pulls off your cock after you're done, Amy shows you the large load on her tongue, then swallows it demonstratively. Jokingly, you call her a 'Good dog', tousling their hair, then pull Amy's head to yours and give her a deep kiss. Lying down on the mattress with your two friends after that, you enjoy each other's warmth and closeness for a while, accompanied by Klauz's rumbling purr.";
		NPCSexAftermath Amy receives "OralCock" from Player;
	else: [fucking the Felinoid]
		LineBreak;
		say "     Your own libido awakened by the images of the large cat on top of the human-like Amy, as well as Klauz's touch and musk, you quickly decide that it's time to join in. Putting a hand on your raging [Cock of Player] hard-on, you grab the bottle of lube you've got lying around not too far way. After spreading some of the slick substance on your shaft, you step up behind the large shape of the rutting felinoid. Running your hands up through the soft fur on his lower back, you grab the feline's hips tightly then slam forward, burying your cock to the hilt in his warm, tight cave. Roaring at the sudden anal intrusion, Klauz stops thrusting into Amy for a moment, looking back over his shoulder with partly bared teeth. That doesn't last long, though - moving in and out of his hole, your shaft stimulates his sensitive prostate, and soon your big cat is purring in satisfaction and fucking Amy again.";
		say "     Even though you'd wish your threesome could last forever, everyone's stamina has its limits. When Amy suddenly gives a pleased yip and orgasms, her female juices dripping down to soak into her bedding, that gives the large cat the last nudge too. A deep rumble of satisfaction vibrates in Klauz's throat as he pushes his member as deep as it will go and fills Amy's womb with his seed. The big cat's insides in turn grip your penis tightly with each shot of cum shooting through his shaft, making you follow them to an amazing orgasm. You gasp as you grind your hips against the felinoid's furry behind and blast after blast of your sperm shoot into his tight chute.";
		WaitLineBreak;
		say "     After a moment of just holding on to the large feline and catching your breath, you pull out and watch Klauz's pink pucker snap shut before any of your seed can leak out. Satisfied but exhausted after this session, you sink down on Amy's mattress. The big cat and husky girl separate from each other too, then lie down next to you, with Amy cuddling up to the felinoid's soft and warm belly fur. Purring as loud as an idling motor, the big cat starts licking her fur. Looks as if he wants to spread his scent over all of the husky's body.";
		NPCSexAftermath Klauz receives "AssFuck" from Player;
	if Fang is in the Grey Abbey Library and Fang is Male:
		LineBreak;
		if HP of Fang is 1 or HP of Fang is 2: [Vanilla or Omega Fang]
			if XP of Amy is 0:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Amy a hostile stare. Looks like he's not happy that the big cat is getting pussy he hasn't had. Not happy at all. Noting the wolf's interest, the big feline snarls and Fang slinks back to his post for the moment. Oh well, Klauz seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
			if XP of Amy is 1:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Amy a hostile stare. Seeing the other fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. The feline clutches Amy closer and growls deeply at Fang, sending the wolf slinking back to his post for the moment. Oh well, Klauz seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
			if XP of Amy is 99:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Amy a hostile stare. Seeing the other fuck someone he's been forbidden to mount doesn't make him happy. Not happy at all. The feline clutches Amy closer and growls deeply at Fang, sending the wolf slinking back to his post for the moment. Oh well, Klauz seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
		else if HP of Fang is 3 or HP of Fang is 4 or HP of Fang is 7: [Alpha Fang]
			if XP of Amy is 0:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Amy a hostile stare. Looks like he's not happy that the big cat is getting pussy he hasn't had. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if XP of Amy is 1:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Amy a hostile stare. Seeing the other fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
		else if HP of Fang is 5:
			if XP of Amy is 0:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Amy a hostile stare. Looks like he's not happy that the big cat is bonding with Amy before he has had a chance to. Not happy at all. Noting the wolf's interest, the big feline snarls and Fang stares him down for a moment before reluctantly retreating. While Klauz may be able to intimidate your wolf guard at the moment, you hope that there won't be any issue in future, you think to yourself as you doze off...";
			if XP of Amy is 1:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Amy a hostile stare. Seeing the other fuck someone he had counted as his his packmate doesn't make him happy. Not happy at all. The feline clutches Amy closer and growls deeply at Fang, the wolf growling back before retreating for the moment. While Klauz may be able to intimidate your wolf guard at the moment, you hope that there won't be any issue in future, you think to yourself as you doze off...";
			if XP of Amy is 99:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Amy a hostile stare. Seeing the other fuck someone he's been forbidden to mount doesn't make him happy. Not happy at all. The feline clutches Amy closer and growls deeply at Fang, the wolf growling back before retreating for the moment. While Klauz may be able to intimidate your wolf guard at the moment, you hope that there won't be any issue in future, you think to yourself as you doze off...";
	if Lust of Amy is 0: [not pregnant yet]
		let AmyPregchance be a random number from 1 to 20;
		if AmyPregchance > 13:
			now Lust of Amy is 24; [someone has knocked her up - either the player or the Felinoid]
	NPCSexAftermath Amy receives "PussyFuck" from Klauz;

to say AmySex8: [Fang+Amy+Player Threesome]
	if (HP of Fang is 1 or HP of Fang is 2): [Omega Fang]
		say "     Walking over to where Fang's leash is currently tied in the library, you kneel down beside your faithful guardian and stroke him between his ears and over his furred flank. Wagging his tail, he licks your hand, happy at getting attention from his Alpha. 'That's a good wolf. Come on, let's have some fun with Amy' you say and loosen Fang's leash from around his neck. Accompanied by your black wolf, you walk over to the mattress you put up here in the library for the husky girl.";
		say "     Soon after, Amy comes into sight from among the long bookshelves in the library, walking towards you slowly, the stack of books in her hands so high that she can't actually see what is in front of her. As she comes closer, you walk up to her and take more than half of the books from her. She says 'Thank you, that's very nice of you.' - then she notices the look of lust in your eyes and Fang's presence. 'Oh,' she says in an amused tone and sets down her books on the ground, then continues with 'Were you boys waiting for me? I wonder why...' in a playfully innocent tone. A moment later, she betrays that she's no blushing virgin as she moves up close to you, her hand feeling up the tent in your pants. With a lustful wink, she then saunters over to her bedding, swishing her tail while demonstratively shaking her hips.";
		WaitLineBreak;
		say "     Quickly adding the books in your hands to the pile on the floor, you follow her over to the mattress, pulling off your clothes and dropping them as you go along. Soon you're sitting beside her, as naked as she herself always is, with the Fang standing right beside you. Smiling at Amy, you lean back, holding up your hard cock for her and she quickly gets into a kneeling position, leaning forward to blow you. As she does so, Fang moves up behind her and sniffs Amy's pussy, then looks up to you pleadingly. Seeing his canine cock dangling erect beneath his body, it's pretty obvious what he wants to do, and as you slide your shaft once again into Amy's throat you smile and nod to Fang to continue. Without delay, the wolf jumps up and mounts Amy's body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Amy's pussy. Driven by his feral lust, Fang ruts the young woman mercilessly, growling and panting as he thrusts in and out.";
		say "     Getting blown as you watch Fang mounting your anthro husky housemate, the need to cum quickly rises inside you and you have to grab hold of Amy's head to stop from losing it right then and there. Cock resting for a moment in her throat, you take a deep breath, then slowly pull out and scooch back. Now having her mouth free, Amy gives lustful pants and yips as Fang drives his shaft into her. Watching the black wolf mate her, you walk around them slowly taking in the full glory of the powerful wolf on top of his more human-like partner.";
		LineBreak;
		say "     What do you want to do now?";
		say "     [bold type]Get blown by Amy and feed her your load, or fuck and come in Fang's ass?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get blown by Amy.";
		say "     ([link]N[as]n[end link]) - Fuck and come in Fang's ass.";
		if Player consents: [sucking]
			LineBreak;
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Amy immediately goes for it, taking your hard length into her mouth again and starts bobbing up and down on it. She really is a natural at giving blowjobs, holding her lips tight around your shaft and teasing it with her tongue. Running your hands through Amy's hair, you speed up face-fucking the husky girl as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in her throat and shoot spurt after spurt of cum directly into her stomach.";
			say "     Breathing heavily, you stand still as Amy softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to sit down at the end of the mattress and watch the rest of your pet's coupling with Amy.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Amy, then holds still as it expands. Getting tied to Fang was the last straw for the aroused husky, and her body shudders as the feelings from her pussy make her gush femcum to drip down and soak into her bedding. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling Amy's womb with his fertile seed.";
			say "     That should satisfy even as horny a husky as Amy for a while. With both of them standing where they fucked, breathing heavily and patiently waiting for Fang's knot to go down and allow them to separate, you lay back on the mattress and get comfortable.";
			NPCSexAftermath Amy receives "OralCock" from Player;
		else: [fucking Fang]
			LineBreak;
			say "     Your eyes searching out your goal - the tight hole under Fang's tail - you stroke your hard cock and step closer to Fang's rear end. Running your hands through the fur on his lower back, you grab hold of the wolf's hips and sink your [Cock of Player] shaft into him with one deep thrust. After giving a loud yelp at the sudden anal invasion, Fang stops for a second and looks back. Seeing it's you, he accepts being fucked as his due to the Alpha, even tightening his anal muscles around you as you move inside him. Then the hot threesome continues, all of you moving together to give each other as much pleasure as you can.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Amy, then holds still as it expands. Getting tied to Fang was the last straw for the aroused husky, and her body shudders as the feelings from her pussy make her gush femcum to drip down and soak into her bedding. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling Amy's womb with his fertile seed. That only leaves you, with Fang's anal muscles twitching and gripping your manhood tightly as you thrust in one last time. Filling the wolf's back passage with a huge load of your seed, you once again prove your dominance as Alpha over him.";
			say "     Resting on Fang's furry back for a moment, you then pull your cock out of his cum-filled hole and sink down on Amy's mattress. Satisfied but exhausted after this session, you lie on it lengthwise and get comfortable. Both Amy and Fang still stand where they fucked, breathing heavily and patiently waiting for Fang's knot to go down and allow them to separate.";
			NPCSexAftermath Fang receives "AssFuck" from Player;
		if felinoid companion is tamed: [rivalry message - Omega Fang vs Felinoid]
			LineBreak;
			if level of Amy is 0: [felinoid didn't fuck her yet]
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Amy a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. Klauz then pads to lie down on the floor between you and the door, grooming himself with the occasional glance of interest at the dog-person and glare at the wolf. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must be your imagination you tell yourself as you doze off...";
			else if level of Amy is 1: [felinoid did fuck her]
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz companion standing some distance away among the bookshelves and giving the Fang and Amy a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. Klauz then pads to lie down on the floor between you and the door, grooming himself with the occasional possessive glance at the dog-person and glare at the wolf for touching what Klauz has claimed as his own. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must be your imagination you tell yourself as you doze off...";
			else if level of Amy is 99: [felinoid forbidden to fuck her]
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving the Fang and Amy a calculating look. You see him pad closer and give a low, frustrated growl. Fang growls in response, holding his own, seemingly aware that you stopped Klauz from fucking Amy before, but allowed him to fuck and breed her. When his knot goes down enough so he can pull out, Fang and Amy lie down on the mattress to cuddle against you. Klauz then pads to lie down on the floor between you and the door, grooming himself with the occasional glance at the three of you. In your sleepy haze, you almost think the feline's just biding his time before taking Amy and you as well, but that must be your imagination you tell yourself as you doze off...";
	else if (HP of Fang is 3 or HP of Fang is 4): [Alpha Fang]
		say "     Walking over to Fang, you crouch next to the big wolf and stroke him, rubbing his warm belly fur and his quickly hardening erection. With your Alpha hot and ready to go, you and he walk over to the mattress you put up here in the library for the husky girl.";
		say "     Soon after, Amy comes into sight from among the long bookshelves in the library, walking towards you slowly, the stack of books in her hands so high that she can't actually see what is in front of her. As she comes closer, you walk up to her and take more than half of the books from her. She says 'Thank you, that's very nice of you.' - then she notices the look of lust in your eyes and Fang's presence. 'Oh,' she says in an amused tone and sets down her books on the ground, then continues with 'Were you boys waiting for me? I wonder why...' in a playfully innocent tone. A moment later, she betrays that she's no blushing virgin as she moves up close to you, her hand feeling up the tent in your pants. With a lustful wink, she then saunters over to her bedding, swishing her tail while demonstratively shaking her hips.";
		WaitLineBreak;
		say "     Amy gets on all fours to sniff and be sniffed by Fang, softly panting in rising arousal. Already knowing what's expected of her, she then turns her backside to the wolf, taking a secure stance and spreads her legs a bit further. With a satisfied growl Fang moves up behind her and sniffs Amy crotch, then jumps up and mounts her more human-like body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into the husky's ready pussy. Driven by his feral lust, Fang ruts the young woman mercilessly, growling and panting as he thrusts in and out.";
		WaitLineBreak;
		say "     Seeing your Alpha penetrate Amy makes you quite hard as well and you quickly strip off your clothes. Pulling out your [Cock of Player] manhood, you pump your hand up and down its length a few times, then step up to the front of the mating couple and present your erection. Amy eagerly licks your balls and cock a bit before taking it into her mouth.";
		say "     Getting blown as you watch Fang mounting your anthro husky housemate, the need to cum quickly rises inside you and you have to grab hold of Amy's head to stop from losing it right then and there. Cock resting for a moment in her throat, you take a deep breath, then slowly pull out and scooch back. Now having her mouth free, Amy gives lustful pants and yips as Fang drives his shaft into her. Watching the black wolf mate her, you walk around them slowly taking in the full glory of the powerful wolf on top of his more human-like partner.";
		LineBreak;
		say "     What do you want to do now?";
		say "     [bold type]Get blown by Amy and feed her your cum, or wait your turn at filling her pussy?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get blown by Amy.";
		say "     ([link]N[as]n[end link]) - Wait your turn at filling her pussy.";
		if Player consents: [sucking]
			LineBreak;
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Amy immediately goes for it, taking your hard length into her mouth again and starts bobbing up and down on it. She really is a natural at giving blowjobs, holding her lips tight around your shaft and teasing it with her tongue. Running your hands through Amy's hair, you speed up face-fucking the husky girl as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in her throat and shoot spurt after spurt of cum directly into her stomach.";
			say "     Breathing heavily, you stand still as Amy softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to sit down at the end of the mattress and watch the rest of your Alpha's coupling with Amy.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Amy, then holds still as it expands. Getting tied to Fang was the last straw for the aroused husky, and her body shudders as the feelings from her pussy make her gush femcum to drip down and soak into her bedding. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling Amy's womb with his fertile seed.";
			say "     That should satisfy even as horny a husky as Amy for a while. With both of them standing where they fucked, breathing heavily and patiently waiting for Fang's knot to go down and allow them to separate, you lay back on the mattress and get comfortable.";
			NPCSexAftermath Amy receives "OralCock" from Player;
		else: [fucking Amy]
			LineBreak;
			say "     Deciding that you'll wait your turn, you move to sit on the other end of Amy's mattress, watching your Alpha rut the husky girl and jerk off a bit. After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Amy, then holds still as it expands. Getting tied to Fang was the last straw for the aroused husky, and her body shudders as the feelings from her pussy make her gush femcum to drip down and soak into her bedding. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling Amy's womb with his fertile seed.";
			WaitLineBreak;
			say "     You move over to crouch beside them, fondling and stroking both their bodies as you wait for Fang's knot to go down. Some time later, the wolf pulls out of Amy's hole and sits down on the floor nearby, curling up to lick himself clean. With Amy's pussy still gaping a bit and dripping femcum and your Alpha's seed, you quickly get on top of her and ram your erection home. Even stretched by Fang's shaft, she's still nicely tight and feeling your strong Alpha wolf's cum filling her hole and squishing around your thrusting member is a definite plus. It doesn't take all that long until you feel a familiar tingling in your balls, and with one last thrust, you bottom out inside Amy and come, adding your seed to Fang's load.";
			say "     Phew. Satisfied and just a bit exhausted, you keep your slowly softening shaft in Amy's pussy, just lowering the two of you down to lie on her bedding together.";
			NPCSexAftermath Amy receives "PussyFuck" from Player;
		if felinoid companion is tamed: [rivalry message - Alpha Fang vs Felinoid]
			LineBreak;
			if level of Amy is 0: [Felinoid hasn't fucked Amy yet]
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Amy a calculating look. Seems almost like he's up to something - taking Amy away from Fang and mounting her himself most likely. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			else if level of Amy is 1: [Felinoid has fucked Amy]
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Amy a calculating look. Seems almost like he's up to something - filling Amy again to make her his alone possibly. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			else if level of Amy is 99: [Felinoid forbidden to fuck her]
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving the Fang and Amy a calculating look. You see him pad closer and give a low, frustrated growl. Fang growls in response, holding his own. Klauz then pads to lie down on the floor between you and the door, grooming himself with the occasional glance at the three of you. In your sleepy haze, you almost think the feline's just biding his time before taking Amy and you as well, but that must be your imagination you tell yourself as you doze off...";
	else if HP of Fang is 5: [Beta Fang]
		say "     Walking over to Fang, you crouch next to the big wolf and stroke him, rubbing his warm belly fur and his quickly hardening erection. With your friend hot and ready to go, you and he walk over to the mattress you put up here in the library for the husky girl.";
		say "     Soon after, Amy comes into sight from among the long bookshelves in the library, walking towards you slowly, the stack of books in her hands so high that she can't actually see what is in front of her. As she comes closer, you walk up to her and take more than half of the books from her. She says 'Thank you, that's very nice of you.' - then she notices the look of lust in your eyes and Fang's presence. 'Oh,' she says in an amused tone and sets down her books on the ground, then continues with 'Were you boys waiting for me? I wonder why...' in a playfully innocent tone. A moment later, she betrays that she's no blushing virgin as she moves up close to you, her hand feeling up the tent in your pants. With a lustful wink, she then saunters over to her bedding, swishing her tail while demonstratively shaking her hips.";
		WaitLineBreak;
		say "     Amy gets on all fours to sniff and be sniffed by Fang, softly panting in rising arousal. Eager to feel his weight atop her, she then turns her backside to the wolf, taking a secure stance and spreads her legs a bit further. With a satisfied growl Fang moves up behind her and sniffs Amy's crotch, then jumps up and mounts her more human-like body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into the husky's ready pussy. Resisting his feral lust, Fang thrusts in and out of the young woman tenderly, allowing her to become used to the shape and girth of his penis before accelerating his thrusts until his balls are slapping against her skin and she is gasping encouragement between euphoric moans.";
		WaitLineBreak;
		say "     Seeing the wolf penetrate Amy makes you quite hard as well and you quickly strip off your clothes. Pulling out your [Cock of Player] manhood, you pump your hand up and down its length a few times, then step up to the front of the mating couple and present your erection. Amy eagerly licks your balls and cock a bit before taking it into her mouth.";
		say "     Watching Fang mount the husky while she blows you causes the need to cum to rapidly approach overwhelming you and it isn't long before you have to gently pull her head off your shaft to avoid coming before you are ready. Cock resting for a moment in her throat, you take a deep breath, then slowly pull out and scooch back to enjoy watching your two pack members carnally reacquaint themselves with each other. Now that her mouth is free, Amy is able to more vocally express the pleasure of having Fang's shaft driven into her, yipping and panting lustfully. Watching the black wolf mate her, you walk around them slowly taking in the full glory of the powerful animal on top of his more human-like partner.";
		LineBreak;
		say "     What do you want to do now?";
		say "     [bold type]Get blown by Amy and feed her your cum, or wait your turn at filling her pussy?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get blown by Amy.";
		say "     ([link]N[as]n[end link]) - Wait your turn at filling her pussy.";
		if Player consents: [sucking]
			LineBreak;
			say "     Approaching the front of the two lovers, you hold your erect member in front of Amy's face and stroke it in an attempt to entice her to suck you off again. To your surprise, Fang manages to get a lick in before the husky pushes him aside with her enthusiasm to take your cock into her mouth, bobbing up and down on it immediately. Despite the surprise, it is nice to know that Fang was willing to pleasure you even while he breeds the bitch beneath him. Amy really is a natural at giving blowjobs, holding her lips tight around your shaft and teasing it with her tongue. Running your hands through Amy's hair, you allow the husky-girl to set the pace as you approach climax, trusting in her instinct to give you an enjoyable finish. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in her throat and shoot spurt after spurt of cum on a direct path towards her stomach.";
			say "     Breathing heavily, you stand still as Amy softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to sit down at the end of the mattress and watch the rest of your Beta's coupling with Amy.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Amy, then holds still as it expands. Getting tied to Fang was the last straw for the aroused husky, and her body shudders as the feelings from her pussy make her gush femcum to drip down and soak into her bedding. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling Amy's womb with his fertile seed.";
			say "     That should satisfy even as horny a husky as Amy for a while. With both of them standing where they fucked, breathing heavily and patiently waiting for Fang's knot to go down and allow them to separate, you lay back on the mattress and get comfortable.";
			NPCSexAftermath Amy receives "OralCock" from Player;
		else: [fucking Amy]
			LineBreak;
			say "     Deciding that you'll wait your turn, you move to sit on the other end of Amy's mattress, watching your trusted guard rut the husky girl while passively caressing your shaft. After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Amy, then holds still as it expands. Getting tied to Fang was the last straw for the aroused husky, and her body shudders as the feelings from her pussy make her gush femcum to drip down and soak into her bedding. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling Amy's womb with his fertile seed.";
			WaitLineBreak;
			say "     You move over to crouch beside them, stroking both their bodies while whispering affectionate comments as you wait for Fang's knot to go down. After a while, the wolf pulls out of Amy's hole and sits down on the floor nearby, unashamedly licking himself clean, savoring the flavor of both Amy's and his own sexual juices. With the husky's pussy still gaping, dripping femcum, and leaking Fang's seed from their recent copulation, you quickly get on top of her and plunge your erection into her slickened cunt. Even stretched by Fang's shaft, she's still has enough muscle control to tighten nicely around your thrusting member as you fuck her, the wolf's cum acting as a lubricant. It doesn't take all that long until you feel a familiar sensation rising in your balls, and with one last thrust, you bottom out inside Amy and come, adding your seed to Fang's load.";
			say "     Phew. Satisfied and just a bit exhausted, you keep your slowly softening shaft in Amy's pussy, just lowering the two of you down to lie on her bedding together.";
			NPCSexAftermath Amy receives "PussyFuck" from Player;
		if felinoid companion is tamed: [rivalry message - Alpha Fang vs Felinoid]
			LineBreak;
			if level of Amy is 0: [Felinoid hasn't fucked Amy yet]
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Amy a calculating look. Seems almost like he's up to something - taking Amy away from Fang and mounting her himself most likely. He quickly backs off when Fang glares at him and lets out a small growl. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			else if level of Amy is 1: [Felinoid has fucked Amy]
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Amy a calculating look. Seems almost like he's up to something - filling Amy again to make her his alone possibly. He reluctantly backs off when Fang glares at him and lets out a small growl. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			else if level of Amy is 99: [Felinoid forbidden to fuck her]
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Amy a calculating look. You see him pad closer and give a low, frustrated growl. Fang growls in response, holding his own. Klauz then pads to lie down on the floor between you and the door, grooming himself with the occasional glance at the three of you. In your sleepy haze, you almost think the feline's just biding his time before taking Amy and you as well, but even if that is your imagination, Fang would protect you both you tell yourself as you doze off...";
	if Lust of Amy is 0: [not pregnant yet]
		let AmyPregchance be a random number from 1 to 20;
		if AmyPregchance > 13:
			now Lust of Amy is 24; [someone has knocked her up - either the player or Fang]
	NPCSexAftermath Amy receives "PussyFuck" from Fang;


Amy ends here.
