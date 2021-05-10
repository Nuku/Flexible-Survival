Version 2 of Urik by Wahn begins here.
[ Version 1 - New NPC]
[ Version 1.1 Character relocation - Luneth]
[ Version 2 - Complete Rebuild, more stories, more scenes, more everything ]

[ Urik, the NPC                                                                     ]
[                                                                                   ]

[ Stamina of Urik - last turn he got some cum                                       ]

[ Intelligence - Title the player has chosen                                        ]
[  0: standard setting - Boss                                                       ]
[  1: Don                                                                           ]
[  2: Capo                                                                          ]
[  3: Kingpin                                                                       ]
[  4: Oyabun                                                                        ]
[  5: Chief                                                                         ]
[  6: Master                                                                        ]
[  7: Mistress                                                                      ]
[  8: Daddy                                                                         ]
[  9: Mommy                                                                         ]

[ Thirst of Urik - Cum Delivery                                                     ]
[  0: player hasn't seen the cum needs scene                                        ]
[  1: player agreed to give him some bottles                                        ]

[ Perception of Urik - Looting trips                                                ]
[   0: not started yet                                                              ]

[ Charisma of Urik - Hawkman interaction                                            ]
[   0: not met yet                                                                  ]
[   1: jerked Urik off onto him                                                     ]
[   2: Urik got to fuck him                                                         ]
[  99: simply let go after library break-in                                         ]

[ Loyalty of Urik                                                                   ]
[  -1: library content cut, fucked in the orc lair                                  ]
[   0: starting state                                                               ]
[   1: can be trusted to go to the library on his own                               ]
[   2: arrived safely and had a talk with the player                                ]
[   3: Urik's concerns about the library building were addressed or discarded       ]
[   4: player made a decision about Urik's cum needs                                ]
[   5: gave the player some loot                                                    ]
[   6: bro/slut decision made                                                       ]
[   7: hawkman dealt with, Urik's happy about the outcome                           ]
[   8: hawkman dealt with, grumpy Urik                                              ]
[   9: had a talk after the hawkman incident                                        ]
[  10: he offered looting trips                                                     ]

[ CandyUrikInteraction                                                              ]
[   0: no contact yet                                                               ]
[   1: Urik grabbed Candy to fuck                                                   ]
[ 100: player forbid Urik to take Candy                                             ]

[ History Details for Urik/Curtis                                                   ]
[ 1954 ( 0) - Born in Toledo, Ohio, as Curtis Earl Grey                             ]
[ 1957 ( 3) - Little sister was born, Leslie Donna Grey                             ]
[ 1958 ( 4) - Family moved to Detroit, father in the automobile industry            ]
[ 1973 (19) - Curtis started an apprenticeship in the factory his father worked in  ]
[           - Leslie (16) got hooked on Crack Cocaine, pregnant with Troy           ]
[ 1975 (21) - Curtis joined the army                                                ]
[ 1983 (29) - Participated in the Invasion of Grenada 1983 (in the US army)         ]
[ 1984 (30) - Got his tattoos in 84 from his (more than a) friend Declan            ]
[ 1985 (31) - Joined a biker gang after taking revenge for Dec's murder             ]
[ 1992 (38) - He and his nephew Troy (19) kidnapped a bike cop                      ]
[ 2008 (54) - Willingly transformed into an orc warrior in the Nanite Apocalypse    ]

[ Traits for Urik in the Lair                                                       ]
[ "Slut": free fuckhole                                                             ]
[ "Oral Only Slut": free mouth fuckhole                                             ]
[ "Breeder Only Slut": only the player and orc breeders may use/eat his ass         ]
[ "Private_Breeder": only the player may use his ass                                ]

[ Traits for Urik in the Library                                                    ]
[ "Everything Goes": he may fuck or be fucked by other people                       ]
[ "Stud": he may fuck other people                                                  ]
[ "Private Breeder": he may not touch others                                        ]
[ "Selective Breeding": discouraged from all sex that you don't plan for him        ]
[ "Molestation Detox": discouraged from fight-sex                                   ]

[ Collection of Ideas and Snippets                                                  ]
[ - Event where Urik finds the remains of a friend, who melted at the outbreak      ]
[ - Let Urik tell the player about his favorite times of fucking people             ]
[   (pre infection rapes, orc interactions, etc.)                                   ]
[ - Have another event with the orc researcher and get some orc cum protein shake/  ]
[   strength supplement from him that doesn't make people addicted or turn them     ]


CandyUrikInteraction is a number that varies.
lastCandyUrikInteraction is a number that varies.[@Tag:NotSaved] lastCandyUrikInteraction is usually 20000.
Stamina of Urik is usually 20000.[@Tag:NotSaved]




Section 1 - Combat Companion & NPC

Table of GameCharacterIDs (continued)
object	name
orc supersized breeder	"orc supersized breeder"

orc supersized breeder is a pet.
NPCObject of orc supersized breeder is Urik.
understand "Urik" as orc supersized breeder.
IDList of orc supersized breeder is { "Urik", "urik", "orc", "orc warrior", "warrior", "breeder", "orc breeder", "orc supersized breeder" }.
printed name of orc supersized breeder is "Urik".
Description of orc supersized breeder is "[UrikDesc]".
Weapon Damage of orc supersized breeder is 20.
The level of orc supersized breeder is 1.
Dexterity of orc supersized breeder is 10.
The summondesc of orc supersized breeder is "[SummonUrik]".
The dismissdesc of orc supersized breeder is "[DismissUrik]".
The assault of orc supersized breeder is "[one of]Urik lands some heavy punches on your opponent.[or]The orc gives your opponent a good kick.[or]A bellowed insult by Urik distracts your enemy a moment - long enough for you to score a quick hit![or]Urik lands a back-handed slap on your opponent's face.[at random]".
the fuckscene of orc supersized breeder is "[SexwithUrikCompanion]".

to say SummonUrik:
	if Urik is visible: [summoning while standing next to him]
		project the Figure of Urik_clothed_icon;
		if Urik is asleep:
			say "     You make a beeline for the sofa Urik's claimed as his own, shaking the towering orc awake and explaining that you need him with you right now. '[one of]Oh yeah[or]Nice[or]Finally[or]Let's get rockin[or]Hammer time[at random]!' the orc replies, cracking his knuckles eagerly after getting up.";
			now Sleeping of Urik is false;
		else:
			say "     Calling out for Urik to join you is answered by a bellow of '[one of]Oh yeah[or]Nice[or]Finally[or]Let's get rockin[or]Hammer time[at random]!' from the orc, who jumps to his feet and cracks his knuckles. The towering orc is more than ready to get fighting by your side!";
	else: [regular summoning]
		say "     And how do you want to do that? Cell phone reception kinda went downhill with the start of the nanite apocalypse and it's not like you can just magic up Urik to appear next to you. Go pick him up yourself.";
		now SummonFailure is true;

to say DismissUrik:
	project the Figure of Urik_clothed_icon;
	if Player is in Sitting Area:
		say "     You tell Urik that you don't need him right now. He looks over and gives you a tusk-bearing grin, followed by the words, 'Later then, [UrikPlayerAddress].' With that said, he wanders off and sits down on the nearby sofa.";
	else if Player is booked or player is bunkered: [dismissing him in the abbey]
		say "     You tell Urik that you don't need him right now. He looks over and gives you a tusk-bearing grin, followed by the words, 'Later then, [UrikPlayerAddress].' With that said, he wanders off, likely to hang out in his usual spot on the upper floor.";
	else:
		say "     You tell Urik that you don't need him right now. He looks over and gives you a tusk-bearing grin, followed by the words, 'Later then, [UrikPlayerAddress]. I'll make my way back to the library.' With that said, he wanders off and is quickly out of sight.";
	move Urik to Sitting Area;

to say SexwithUrikCompanion:
	if Player is not in Sitting Area and Player is not in Main Hall:
		say "     Looking at the towering orc warrior and how pumped up he is about the prospect of fighting again, an inner voice tells you that maybe you should only have sex in the [bold type]Sitting Area[roman type] of the library or the [bold type]Main Hall[roman type] of the orc lair.";
	else:
		say "[UrikSexMenu]";

Section 2 - NPC

Table of GameCharacterIDs (continued)
object	name
Urik	"Urik"

Urik is a man.
ScaleValue of Urik is 4. [human+ sized]
Body Weight of Urik is 7. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Urik is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Urik is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Urik is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Urik is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Urik is 5. [length in inches]
Breast Size of Urik is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Urik is 2. [count of nipples]
Asshole Depth of Urik is 12. [inches deep for anal fucking]
Asshole Tightness of Urik is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Urik is 1. [number of cocks]
Cock Girth of Urik is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Urik is 15. [length in inches]
Ball Count of Urik is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Urik is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Urik is 0. [number of cunts]
Cunt Depth of Urik is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Urik is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Urik is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Urik is false.
PlayerRomanced of Urik is false.
PlayerFriended of Urik is false.
PlayerControlled of Urik is false.
PlayerFucked of Urik is false.
OralVirgin of Urik is false.
Virgin of Urik is true.
AnalVirgin of Urik is false.
PenileVirgin of Urik is false.
SexuallyExperienced of Urik is true.
TwistedCapacity of Urik is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Urik is true. [for now - until there's proper tribe development coded]
MainInfection of Urik is "Orc Warrior".
Description of Urik is "[UrikDesc]".
The icon of Urik is Figure of Urik_clothed_icon.

to say UrikDesc:
	project the Figure of Urik_clothed_icon;
	if PlayerFriended of Urik is false and PlayerControlled of Urik is false: [no choice made]
		say "     Urik looks the part of a proud orc warrior, tall and strong, with a brutishly handsome face, his square jaw showing two sharp tusks jutting upwards. There are only two pieces of 'clothing' on his impressive physique, leaving little to the imagination. The first is a quite well-crafted leather harness that is strapped around Urik's chest - a masterpiece of tough, studded leather and shiny buckles that promises lots of handholds for fucking him. Covering the large orc's thighs, there is a tight-fitting pair of trunks with a mesh pouch at the front (showing off his package), as well as decorative slits on the sides. It is completely open on the back side, with only two straps on the top and bottom, allowing unrestricted access to his ass.";
		say "     The orc has black hair, an unruly mop of long strands falling down between his shoulder-blades, accentuated by a short beard following his chin-line. There is a moderate amount of chest hair on his pecs, curling around Urik's pierced nipples, then leading down to his crotch in a thinner treasure trail of hair. The bush of his pubes can be seen through the mesh of Urik's underwear and his legs bear a nice amount of body hair too. Two impressive tattoos on the back of his forearms and hands complete the image of a big and tough guy. You guess that he likely had them done before his transformation, as the attention to detail speaks of long hours with an excellent tattoo artist.";
		say "     After publicly mistreating one of the human-sized breeder orcs he owned, Boghrim forced him into becoming a breeder slut himself, making him hunger for hard dicks and a tasty load of cum in his belly... and now he's yours, to do with as you please.";
	else if PlayerFriended of Urik is true: [bro Urik]
		say "     Urik looks the part of a proud orc warrior, tall and strong, with a brutishly handsome face, his square jaw showing two sharp tusks jutting upwards. There are only two pieces of 'clothing' on his impressive physique, leaving little to the imagination. The first is a quite well-crafted leather harness that is strapped around Urik's chest - a masterpiece of tough, studded leather and shiny buckles that promises lots of handholds for fucking him. ";
		if "Saber Urik" is listed in traits of Urik:
			say "Besides that, he's taken to wearing the cavalry saber you looted together most of the time, its sheath fastened to one of the leather bands across his broad back. ";
		say "Covering the large orc's thighs, there is a tight-fitting pair of trunks with a mesh pouch at the front (showing off his package), as well as decorative slits on the sides. It is completely open on the back side, with only two straps on the top and bottom, allowing unrestricted access to his ass. The orc has black hair, an unruly mop of long strands falling down between his shoulder-blades, accentuated by a short beard following his chin-line. There is a moderate amount of chest hair on his pecs, curling around Urik's pierced nipples, then leading down to his crotch in a thinner treasure trail of hair. The bush of his pubes can be seen through the mesh of Urik's underwear and his legs bear a nice amount of body hair too.";
		say "     As Urik notices your attention, the orc starts to pose a little, flexing his muscles and showing off the two impressive tattoos on the back of his forearms. You guess that he likely had them done before his transformation, as the attention to detail speaks of long hours with an excellent tattoo artist.";
	else if PlayerControlled of Urik is true:
		say "     Urik looks the part of a proud orc warrior, tall and strong, with a brutishly handsome face, his square jaw showing two sharp tusks jutting upwards. There are only two pieces of 'clothing' on his impressive physique, leaving little to the imagination. The first is a quite well-crafted leather harness that is strapped around Urik's chest - a masterpiece of tough, studded leather and shiny buckles that promises lots of handholds for fucking him. Covering the large orc's thighs, there is a tight-fitting pair of trunks with a mesh pouch at the front (showing off his package), as well as decorative slits on the sides. It is completely open on the back side, with only two straps on the top and bottom, allowing unrestricted access to his ass. The orc has black hair, an unruly mop of long strands falling down between his shoulder-blades, accentuated by a short beard following his chin-line. There is a moderate amount of chest hair on his pecs, curling around Urik's pierced nipples, then leading down to his crotch in a thinner treasure trail of hair. The bush of his pubes can be seen through the mesh of Urik's underwear and his legs bear a nice amount of body hair too.";
		say "     As Urik notices your attention, the orc looks aside, careful not to meet your gaze, and he angles his body a little bit to show the curve of his ass. It almost seems to be a reflexive act, him falling into submissive behavior now that you've made it clear that you expect him to be mainly your breeding slut.";
	if orc supersized breeder is listed in companionList of Player:
		say "     [bold type]He is currently following you as your battle companion.[roman type][line break]";

Conversation of Urik is { "<Placeholder>" }.

The scent of Urik is "     Urik has a quite masculine smell, underlined with a little bit of sweat and cum that somehow just makes him more attractive.".

instead of conversing Urik:
	say "[UrikTalkMenu]";

a postimport rule: [bugfixing code]
	if Urik is in Main Hall or Urik is in Sitting Area:
		now PlayerMet of Urik is true;

to say UrikTalkMenu:
	if PlayerMet of Urik is false: [first time]
		say "     As you approach the large orc, Urik gives you a glance up and down, followed by a grunt. He shifts his stance a little, right hand bunching up to a fist and starting to rise, only to drop by his side and relax again as he aborts a reflexive fist-bump. 'So... hey,' the towering brute says instead, nodding to you, apparently unsure about how to act given your relative rank and position. 'Guess you're my boss now, eh?' he adds, his voice surprisingly free of defiance. You're about to answer when suddenly one of the other orcs in the drunken mob simply steps between Urik and yourself, rudely interrupting as he tries to shoulder past. And he really does only [italic type]try[roman type] to do so, as your newly won orc companion intercepts him with one hand on his chest. 'We're talking here, dipshit!' Urik growls, clamping his fingers around the somewhat smaller intruder's neck and literally lifting him off the ground. The next thing that happens is that the orc gets flung face-first into the nearby wall, hitting it with a thud, then crumpling unconscious to the floor.";
		say "     The punishment that Boghrim put Urik through seems to have had a peculiar effect on the orc warrior, as he clearly didn't become a typical orc breeder, what with them being smaller, much more pliable and submissive. 'Fucker,' Urik grunts at the knocked-out orc, then turns back to you. 'No respect in some of these punks,' he comments. 'So, as I was saying, I'm all yours boss. Just tell me what you want me to do.' With that said, the orc's gaze flicks down to your crotch for a few seconds, and he subconsciously runs the tip of his tongue over his lips. From the looks of it, he's become a breeder in at least that aspect of things, inheriting the craving for cum they all have. It'll remain to be seen if this will remain the full extent of his transition, or if Urik's behavior is just an intermediary stage to something else.";
		now PlayerMet of Urik is true;
	else if "Broken" is listed in Traits of Urik:
		say "     'Nothing much to say, you own me, I'm your slut,' the disgraced orc warrior says in a submissive tone. 'How do you want to fuck me next?'";
		stop the action;
	LineBreak;
	project the figure of Urik_clothed_icon;
	say "     [bold type]What do you want to talk with Urik about?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[
	[TODO: write this scene]
	[Scene: Urik got info about someone making bootleg beer; he wants to go loot them - but as the player and him arrive there, some creature is rampaging the beermaker's building, Urik and player can save them and get free beer in the future]
	if "Bootleg Beer" is listed in Traits of Urik:
		choose a blank row in table of fucking options;
		now title entry is "Share a drink with him";
		now sortorder entry is 1;
		now description entry is "Hang out a bit with Urik";
	]
	choose a blank row in table of fucking options;
	now title entry is "Your relationship";
	now sortorder entry is 2;
	now description entry is "Ask Urik how he sees things between him and yourself";
	[]
	if Loyalty of Urik > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask how he became an orc";
		now sortorder entry is 3;
		now description entry is "Let Urik tell you his story";
	[]
	if Loyalty of Urik > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask him about his sexual preferences";
		now sortorder entry is 4;
		now description entry is "Let Urik tell you what he prefers";
	[]
	if "Preferences Talk" is listed in Traits of Urik:
		choose a blank row in table of fucking options;
		now title entry is "Talk with him about men";
		now sortorder entry is 5;
		now description entry is "Have a chat about what he's looking for in a man";
	[]
	if "Preferences Talk" is listed in Traits of Urik:
		choose a blank row in table of fucking options;
		now title entry is "Talk with him about other genders";
		now sortorder entry is 6;
		now description entry is "Discuss his views on trans-people";
	[]
	if "Breeding Interest" is listed in Traits of Urik: [TODO: Write this scene]
		choose a blank row in table of fucking options;
		now title entry is "Talk with him about breeding and impregnation";
		now sortorder entry is 7;
		now description entry is "Discuss his views on having offspring";
	[]
	if NonconList is not banned and PlayerFucked of Urik is true and "First Time Gentle" is listed in Traits of Urik or "First Time Rough" is listed in Traits of Urik:
		choose a blank row in table of fucking options;
		now title entry is "Let him tell you the full story of that biker cop";
		now sortorder entry is 8;
		now description entry is "Ask Urik about a tale he mentioned before";
	[]
	if "Transformation Story" is listed in Traits of Urik:
		choose a blank row in table of fucking options;
		now title entry is "Ask him about his past";
		now sortorder entry is 9;
		now description entry is "Let Urik tell you about himself before the nanite apocalypse";
	[]
	if "Bike Cop Story" is listed in Traits of Urik or "Urik's Past" is listed in Traits of Urik:
		choose a blank row in table of fucking options;
		now title entry is "Ask him about his sister";
		now sortorder entry is 10;
		now description entry is "Let Urik tell you about his sister, and what went on with her";
	[]
	if "Urik's Past" is listed in Traits of Urik:
		choose a blank row in table of fucking options;
		now title entry is "Ask him about Declan";
		now sortorder entry is 11;
		now description entry is "Carefully ask him about his old friend";
	[]
	[
	if "Yoga" is listed in Traits of Urik:
		choose a blank row in table of fucking options;
		now title entry is "Ask him about doing yoga"; [TODO: write this scene]
		now sortorder entry is 12;
		now description entry is "Bring up that he seems an odd person to be doing yoga";
	[]
	if UrikEricInteraction > 0 and Urik is booked:
		choose a blank row in table of fucking options;
		now title entry is "Talk about Eric";
		now sortorder entry is 20;
		now description entry is "Chat with your orc about Eric";
	]
	if (Stamina of Spike > 0 or Dexterity of Spike > 0): [Stamina of Spike = Interaction with Controlled Urik; Dexterity = Interaction with Friend Urik]
		choose a blank row in table of fucking options;
		now title entry is "Talk about Spike";
		now sortorder entry is 21;
		now description entry is "Chat with your orc about Spike";
	[]
	if HP of Gregory > 0 and HP of Gregory < 90 and Urik is booked:
		choose a blank row in table of fucking options;
		now title entry is "Talk about Gregory";
		now sortorder entry is 22;
		now description entry is "Chat with your orc about Gregory";
	[]
	if orc supersized breeder is not tamed and Urik is booked and PlayerFriended of Urik is true and Loyalty of Urik > 5 and Loyalty of Urik < 80:
		choose a blank row in table of fucking options;
		now title entry is "Ask if he'd like to accompany you out into the city";
		now sortorder entry is 70;
		now description entry is "Offer Urik the chance to be your combat companion";
	[]
	if Perception of Urik is 1 or Perception of Urik is 2 or Perception of Urik is 4: [1st + 2nd trip past the wyvern tree, then beer quest]
		choose a blank row in table of fucking options;
		now title entry is "Take him up on the looting trip he suggested";
		now sortorder entry is 71;
		now description entry is "Set out to get some nice loot with Urik";
	[]
	if Urik is in Main Hall and Loyalty of Urik > 0 and orc supersized breeder is not listed in companionList of Player: [Urik is in the orc lair]
		choose a blank row in table of fucking options;
		now title entry is "Send him to the library";
		now sortorder entry is 99;
		now description entry is "Send Urik to stay with you in the Grey Abbey Library";
	[]
	if Urik is booked or orc supersized breeder is listed in companionList of Player:
		choose a blank row in table of fucking options;
		now title entry is "How he should address you";
		now sortorder entry is 100;
		now description entry is "Tell Urik the title he should use for you";
	[]
	if Thirst of Urik > 0 and carried of orc cum > 0:
		choose a blank row in table of fucking options;
		now title entry is "Give him a bottle of orc cum";
		now sortorder entry is 101;
		now description entry is "Hand Urik a bottle of potent orcish cum to sate his cravings";
	[]
	if PlayerFriended of Urik is true or PlayerControlled of Urik is true:
		choose a blank row in table of fucking options;
		now title entry is "Ask him about what drinking orc cum does";
		now sortorder entry is 102;
		now description entry is "Inquire about effects of orc cum on Urik";
	[]
	if PlayerFriended of Urik is true or PlayerControlled of Urik is true:
		choose a blank row in table of fucking options;
		now title entry is "Him getting pregnant";
		now sortorder entry is 103;
		now description entry is "Discuss the orc getting pregnant - he's a breeder after all";
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
				let DoneTalking be false;
				now sextablerun is 1;
				if nam is "Just chat":
					say "[UrikTalk1]";
				else if nam is "Your relationship":
					say "[UrikTalk2]";
				else if nam is "Ask how he became an orc":
					say "[UrikTalk6]";
				else if nam is "Ask him about his sexual preferences":
					say "[UrikTalk_Preferences]";
				else if nam is "Talk with him about men":
					say "[UrikTalk_Guys]";
				else if nam is "Talk with him about other genders":
					say "[UrikTalk_Trans]";
				else if nam is "Let him tell you the full story of that biker cop":
					say "[UrikTalk_BikerCop]";
				else if nam is "Ask him about his past":
					say "[UrikTalk_Past]";
				else if nam is "Ask him about Declan":
					say "[UrikTalk_Declan]";
				else if nam is "Ask him about his sister":
					say "[UrikTalk_Sister]";
				else if nam is "Talk about Eric":
					say "[UrikTalk4]";
				else if nam is "Talk about Spike":
					say "[UrikTalk5]";
				else if nam is "Talk about Gregory":
					say "[UrikTalk_Gregory]";
					if "GregoryPlans_Offlimits" is not listed in Traits of Urik and "GregoryPlans_Recruit" is not listed in Traits of Urik and "GregoryPlans_Private Slut" is not listed in Traits of Urik and "GregoryPlans_Couple Slut" is not listed in Traits of Urik: [no choice made yet]
						now DoneTalking is true;
				else if nam is "Take him up on the looting trip he suggested":
					say "[UrikTalk_Looting]";
					now DoneTalking is true;
				else if nam is "Ask if he'd like to accompany you out into the city":
					say "[UrikTalk_Companion]";
				else if nam is "Send him to the library":
					say "[UrikTalk_LibraryTransfer]";
					now DoneTalking is true;
				else if nam is "How he should address you":
					say "[UrikRenameMenu]";
				else if nam is "Give him a bottle of orc cum":
					say "[UrikCumDelivery]";
				else if nam is "Ask him about what drinking orc cum does":
					say "[UrikCumEffects]";
				else if nam is "Him getting pregnant":
					say "[UrikPregDiscussion]";
					if PlayerControlled of Urik is true:
						now DoneTalking is true;
				wait for any key;
				if DoneTalking is false: [looping around for more talk options]
					say "[UrikTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the orc warrior, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say UrikCumEffects:
	say "     Stepping up to the towering, muscular orc, you tell him that you're interested in the effects of orc cum. The orc looks at you[if PlayerControlled of Urik is true] with a calculating expression, [else], [end if]then makes a hand-waving gesture and grunts. 'What doesn't it do!? It's... potent stuff. Having pumped a lot of loads into guys, and now swallowed more than a few, I think I might actually know as much about it as anyone[if PlayerFriended of Urik is true]. Or more, because I'm not constantly stoned out of my mind being bred.' [else]. Being made into a cumslut does give one an inside view of it, I can tell you.' [end if]Letting out a snort at finding himself being the 'knowledgeable expert' on orc cum, Urik raises his eyebrows and looks at you. He clears his throat after licking his lips, then says, 'Well, the obvious thing even the dumbest brick-head of an orc can tell you is that it makes people drunk as fuck, very pliable and horny! As you wrestle someone, you just rub pre on their mouth or back door, and before long, they'll be in no condition to resist anymore! Then you take em home or seal the deal by breeding them right then and there!'";
	say "     Shrugging his broad shoulders, the large orc adds, 'Though that's the easy, lazy way to get your lay. A welcoming breeder is one thing, but when it comes to breaking in a new guy, I like taking him to the mat while they've still got that fire inside him, you know?! Have him struggling all throughout a good wrestle, whimpering that he's not gay. Tensing his asshole as my dick presses against it, leaking pre on his pucker and feeling it tremble. Then BAM, you ram in and show the guy that he's nothing but your bitch! Hearing him yell in shock as he's broken in! Hah, it's so much fun to have a former 'top' pinned down under me, his hole stretched around my dick! Seeing a muscle stud's eyes go wide as your load splashes into him after a hard pounding really is the best!' Urik grins broadly as he says this, eyes having a far-away look to them for a moment as he seems to remember his favorite encounters in the recent past.";
	WaitLineBreak;
	say "     'So yeah, drunk and horny, all that good shit. And of course, if they become a breeder or just after a day or three, the guys you breed have their tummies swelling with an orcling. Maybe even twins if you really gave it to him good, or after a gangbang with a bunch of tops. Being pumped full of load after load kicks that off, making a breeding pouch in em, I mean. I remember there was one guy someone brought in who took almost a week to fully transform - stayed mostly human for a few days before he went green. Even so, he had his first little one the very next day after reaching the lair.' He gets a bit of a thoughtful expression for a moment, then adds, 'You know, I dumped loads in a fair number of breeders in the lair, and lots of guys outside of it. Mostly just once for the latter ones, so I don't think any of it took, but... I've been wondering if some of the breeder's orclings were mine. It's been a regret of mine, having become old without ever having had family. Mh, maybe if Dec had lived, we'd have adopted someone after settling down.'";
	say "     The orc looks at the ground for a second, thinking, with his expression darkening quickly and him adding, 'But even if some orclings were mine, it didn't count for much in the [if Urik is not in Main Hall]old [end if]lair. The mob of guys kinda just absorbed any new warrior and any new orc never really was [italic type]mine[roman type]. Never had the chance to get to know em before they became just another rowdy punk.' Urik runs a hand through his long, black hair, biting his lip as he reaches back to rub his own buttocks for a second. 'As for being on the other end... man, there's nothing coming even close to describe how amazing orc cum is! You desire it, crave it, and only that will hit your special itch. Might just be orcs for the next one, but... when I chug down a good mouthful of creamy cum, it's like my asshole is itching for more to be shot into it. Fill me good, knock me up. Like... yeah, like a bitch in heat, kinda.'";
	WaitLineBreak;
	say "     'Personally, it also makes my dick hard as a rock, and I kinda want to sink that into someone. Not as urgently as getting my ass stuffed, but it's a proper drive to rut!' He grabs his crotch with a grin, as if to whip out his cock to demonstrate, then winks at you. 'Like [if Hunger of Chris is 0]that other orc you brought in[else]Chris[end if] for example - having a [if Libido of Chris is 1]breeder[else]stud[end if] right here in the library with me, strolling past with [if libido of chris is 1]his fertile ass[else]the faint smell of orc cum in the air after he jerks off[end if]... that drives me wild!' Urik snorts, then looks at you once more before he says, 'But there's more - remember all those breeders in the lair? If you think of it, they look like muscular gym bunnies even though most of what they do is lie around all day and get boned! Turns out orc cum really bulks you up too! Been feeling it myself a bit, lately.' ";
	say "     That said, Urik takes a pose and flexes, making the muscles under his skin bulge to show his massive, herculean physique. Thinking back to the first time you ran into him, you got to admit that he looks even more toned than back then. 'Orclings work the same, pretty much. The little ones are born shredded as fuck - no wonder, marinating in all the loads that are pumped into their breeder daddies. Might actually be that the more loads the breeders get, the bigger the orc warriors that come out. From what the others told me, the first day after the breakout was a nonstop gangbang with everyone filling the piggies they overwhelmed. And the firstborn are among the stronger orcs - you know, Yatur, Koghh, Mul, and so on.'";
	TraitGain "Orc Cum Lore" for Urik;

to say UrikTalk1: [chatting over a drink]
	say "     Urik says, '[one of]I still can't believe Boghrim did this to me. And all over that stupid little breeder...'[or]I'd never have believed how good it feels to be fucked before.'[at random]"; [more to be added]

to say UrikTalk2: [Relationship]
	if PlayerFriended of Urik is false and PlayerControlled of Urik is false: [neither fork reached so far]
		say "     The towering, muscular orc scrunches up his features, then gives a shrug. 'Meh, it's just like... if you got a gang, tribe or whatever, there's gotta be a boss, otherwise people tear each other apart. I see now that I fucked up with Toven and all that shit, and so Boghrim laid down the law. If you do wrong, you gotta be a man and bear the punishment.' Thinking back to how the scene that started all of this played out, you remember there being some resistance from Urik, despite what he says now. But then, the orc warrior did not start a defiant brawl against Boghrim either, despite having at least somewhat of a chance due to his own might. Interrupting your thoughts as he waves a large green hand through the air, indicating yourself, Urik adds, 'And you've at least shown that you're someone to be reckoned with, bringing in all those new sluts. I can respect and follow a person like that.'";
		say "     Hearing the orc's rationalization of his status as [']yours['], you can't help but wonder if this is the honest opinion of the original man and/or the orc warrior that he once was, or how much his viewpoint shifted after who knows how many face-fucks Boghrim gave him. It's really impossible to know, but you feel that the green-skinned man did tell the truth about being ready to obey. You specifically that is, not just any dominant partner like the far more submissive regular orc breeders would. Things might be different at times if his ingrained hunger for cum takes overhand, but overall, this seems to be what you can expect.";
		if Loyalty of Urik is 0:
			LineBreak;
			say "     [bold type]Knowing this about Urik, you think you can trust him to make his way to the library on his own, if you choose so.[roman type][line break]";
			now Loyalty of Urik is 1; [talked about his view on things]
	else if PlayerFriended of Urik is true:
		say "     The towering, muscular orc puts a broad, tusk-baring grin on, reaching out to grasp your shoulder with one large hand. 'I'm your orc all the way, [UrikPlayerAddress]! Proud to be in your tribe and get a second chance here! After having fucked up with Toven and all that shit, I thought my life was over. Wasn't going to weasel out or anything, but... fuck, if anyone else had won that competition, I bet they'd have made me be just a slam-pig for cock!' Scrunching up his features, you can see that the orc holds some disdain for the idea. Given his active and pretty pushy personality, you can see that being put into a purely submissive position would eat him up inside. Giving you a firm squeeze with his fingers, Urik continues after a moment.";
		say "     'Hah, seeing you deliver dude after dude you had claimed in the competition, I already was impressed. Well, from what I saw of them anyways, in between being rammed down on Boghrim's cock. Then you actually won, and brought me to the library, to be part of your tribe!' His pear-green eyes hold your gaze firmly and shine with the sincerity of his words as Urik adds, 'You're my chieftain, and I'll follow you to the ends of the earth! Not that I don't respect Boghrim anymore, you see - his punishment was harsh, but kinda deserved - but I'd choose to serve under you instead of him any day[if PlayerFucked of Urik is true]! And that includes the other way of being under you too!' The last words are added with a lusty undertone, followed by the orc running the tip of his tongue over his lips. [else]!'[end if]";
	else if PlayerControlled of Urik is true:
		say "     The towering, muscular orc scrunches up his features, then gives a shrug. 'What's there to say? I'm your breeder, you bend me over and dump some loads when you feel like it. Should I take any special position right now?' He glances around, nodding to one spot or another that might be good for some action. The orc's cock grows a little from the thought at being fucked, bulging out his stretchy shorts. You let him go on for a little while, then wave Urik off.";
		say "     With you previously having given the orc a firm decision on that he shouldn't expect anything else but serving as a fucktoy from his new station in your place, he seems to be a little down overall, but is starting to adapt to being primarily a breeder now. Every additional fuck should drive that home further.";

to say UrikTalk6: [how he transformed]
	say "     With a grin that shows his sharp tusks on his face as he recalls the day that he got transformed, Urik clears his throat and adjusts his bulge a little. 'Okay [UrikPlayerAddress], sure! As you might know, things were going to hell in a handbasket when this whole crazy shit started. I mean, one day things are normal, kinda slow. Bike's in the shop - don't think I'm still regretting that decision - and I'm out with some buds drinking, go home, sleep the buzz off. Next morning, I'm woken up by some asshole screaming and banging on my door. Literally, as I stumbled out of the bedroom and what did I see? My mailwoman, face pressed against the window of the door, with a big-boobed fucking gryphon shafting her from behind! Kind of a shocker, early in the morning, and I wondered if I was still drunk and not just hung over, I can tell you that! Then she looked at me and called my name, and I knew it was real. I turn away for a moment to grab the shotgun and load it, but by the time I get back, it's two dick-swinging bird-babes on my porch, one of them in she shreds of a mail uniform. Hot, but freaky, so I booked it out the back door quick after that.'";
	say "     Shrugging, Urik waves his hand in the air and adds, 'It was a big free-for-all in the streets, but critters did kinda avoid me since I was armed. Thought I'd make it to our watering hole, see if I could link up with some of the guys, get out of dodge. That plan went overboard quick when suddenly a frightened piggy peeled around the street corner in front of me at a dead run, to bounce right off me when we collided. I stumbled back a few steps, he went down on the ground. Oh, what a sight he was - pretty blue uniform shirt ripped, with the dude's pecs hanging out, and he had a wild expression on his face, calling out to help him.' The orc chuckles at that, miming himself holding a shotgun and an exaggeratedly frightened expression for the cop. 'What came after him a second later was a beast! More or less human, but big enough to have burst the clothes he had on, broad-shouldered and muscular, with protruding tusks and green skin!'";
	WaitLineBreak;
	say "     'I was halfway there to raise the gun and blast that motherfucker, humans holding together and all that shit, even if the runner was a dirty pig. And then, the greenskin grinned and laughed, saying, 'Don't recognize me, do you?!' Made me hesitate and really look at him, that - and you know who he was? My buddy Pete, with about three times the muscle that fat bastard had ever had before! The scared pig shouted for me to take him out, only to receive a bump on the head from Pete, who went on to tell me that being an orc is great. I was still doubtful for a while, but he knew shit, you know? Reminded me of the trip to Mexico we had the year before, and some shit no one else could have known. When I lowered the gun, he went ahead to casually rip the clothes of the stunned cop. Showed off his muscles and new body as he did, and a moment later rammed into him deep!' Pulling down his shorts to let a fully erect, huge orc cock free from its constraints, Urik wraps his fingers around the girth of his shaft, stroking up and down. 'It was a hot show, with that thick rod going into the little punk!'";
	say "     'When he was done seeding the police bitch and pulled out of the moaning slut, Pete was all, 'Wanna have a turn?' Course I said yes!' Slapping his girthy piece of man-meat into the open palm of his other hand, Urik grins at you and adds, 'Let me tell you, he was tight! Snug around my dick even after taking that orc beercan! I pounded the little bitch, hard and deep, churning up his cum-filled boipussy! And as I was doing so, I got to thinking 'Is he getting tighter?' But that wasn't it - my dick was growing, at the same time as my skin was going green! Man, I was so horny that I didn't even care! Just kept enjoying the snug hole around my prick, right until the point that I added some spunk to the bitch's chute! Then Pete went for him again, followed by another round for me!'";
	WaitLineBreak;
	say "     Swiping up a thick drop of pre from his cum-slit, Urik rubs it over the mushroom head of his thick orc cock, then proudly holds his shaft up. Clearing his throat, Urik continues, 'By the time we were done, we didn't have a piggy there anymore. Nah, the dude had become a proper little orc breeder! Pretty but muscular, with teeny tiny tusks.' With that said, the orc uses his finger to wipe off a droplet of pre-cum from his own dickhead and licks it off eagerly. 'Anyways, I felt as good as ever, and decided to just throw in with the orcs. Hah, going back to that cop station and joining the gangbangs around returning pigs was fun!' Bringing his tale to a conclusion, Urik focuses more on the slow stroke of his dick for a moment. Then he gives you a light poke with his elbow. 'Man, thinking back to it made me really horny! I could go for a bit of fun, [UrikPlayerAddress]!'";
	if "Transformation Story" is not listed in Traits of Urik:
		add "Transformation Story" to Traits of Urik;
	now lastfuck of Urik is turns + 10;

to say UrikTalk_Preferences:
	say "     As you ask him about his sexual interests, Urik lets out a grunt and focuses his gaze on you. 'Well, shit. That'd have been a much easier answer just a little while ago. Been a dom and top for the last thirty years! Hell, even when Dec and me tried experimenting a bit once or twice, we kinda just drifted back to him under me. Fuuuck, I can't even put into words just how amazing he felt around my cock, clutching onto me and making out while I pounded his brains out.' Blowing out his breath and running both hands through his long hair, Urik closes his eyes for a few seconds, seemingly recalling a precious memory of his past life. When he finally shakes off the thought and pays attention to you once more, he scratches his bearded chin. 'As for now, I can't deny that I fuckin['] love taking dicks myself too. It's kinda like Toven flipped a switch or something, when Boghrim awarded him that revenge-fuck. Maybe it's the whole being an orc thing, or karma winding up to give me a good kicking.'";
	say "     Shrugging, the green-skinned brute adds, 'Not that I don't still like railing an attractive hunk's tight behind myself. So, guess that makes me a vers, eh?' Nodding, you direct the discussion a little bit towards the orc's thoughts on other genders. Urik grunts and waves a hand in the air, 'Um, okay... well, I don't hate women or anything. Just never had much interest in boobs, I guess. Shit, who knows why, eh? For all I know, it could be because mom went all 'modern mother of the 50's' and bottle fed me. Pfft. Besides, I really can't stand the bitchyness and self-important arrogance of some of em, acting like men should just fall to their knees and worship them when they show some skin[if Player is not female or PlayerControlled of Urik is true].' [else]Thankfully, you're not one of those, of course.' [end if]He lets out a snort and shrugs. 'I did have my dick in a pussy or two, way back when I was in the army. In the eighties, when you were out with your squad-mates and a drunken night ended in a brothel, you didn't just say 'no thanks' and not take your turn - that make you look gay, eh?' The way Urik says the word in a serious tone tells you clearly that this wasn't a category one wanted to be openly classified in, not in that time, and especially not in the army.";
	WaitLineBreak;
	say "     Waving a hand in the air as if to clear away the bygone past and its implied homophobia, the orc goes on to say, 'Didn't feel that bad, I guess. Just... kinda loose, you know, compared to a sweet tight asshole. Maybe that was because it was a fucked-out whore, who am I to say. I can tell you that I did have my eye on the naked bodies of my mates when I dropped loads in the bitches though. And that was okay, because I was clearly 'no homo', not with my dick wet with pussy juice.' Saying the last sentence with a roll of his eyes, Urik adds, 'Hell, I don't think any of them realized that most of the goop clinging to my cock was their own cum, hah! Never went first, you see - watching their asses pump up and down was a much nicer thing to watch for a start.' The two of you chat about a few more anecdotes about Urik's sexual encounters in the army - which apparently were plentiful and overwhelmingly gay, just with all of them on the down low.";
	say "     As your discussion is slowly petering off a little while later, you think of one more thing to ask Urik, which is what he thinks of the 'other' genders now out and about in the city. There's a lot more than just men and women around after all. He looks at you with his eyebrows scrunching together in thought and replies, 'Er... Hmh. Man, things really got complicated fast when all this weird shit kicked off, eh? Fuck, I don't know. Guess it depends on the person. Though slapping a cock on some annoying bitch won't make her any easier to stand, that I'm sure of!'";
	TraitGain "Preferences Talk" for Urik;

to say UrikTalk_Guys: [chat with Urik about men]
	say "     Asking Urik about his preferences in men, the orc let's out a chuckle and grins, rubbing his large hands together. 'Well, I love proper, manly men. You know, broad shoulders, muscles, square jaw - and maybe with a nice beard on em.' Almost demonstratively, he brushes his own facial hair with his thumb, then smiles broadly, baring his tusks. 'Most guys like that think they're tops, hah! Those are the absolute best to butt heads with, and then make your bitch after showing them the error of their ways! Some of those guys might be ready to hand out punches if you tell them to spread their cheeks like good little boys, but that's just what you gotta tough out when taking them down. God, hearing a formerly virgin muscle-stud whimper and beg for me to fuck him harder is always worth some bruises in my book!'";
	say "     The orc gets a far-away expression on his face at that point, holding out his right arm in front of his broad, muscular chest and looking down at it as he makes a fist, then relaxes it again. 'You know, that was one of the things that most annoyed me about it. Getting old, bah! Trained bitches like ";
	if "Bike Cop Story" is not listed in Traits of Urik:
		say "this one dude I know ";
	else:
		say "Pat ";
	say "are great and all, but sometimes I really itched to try breaking in a new one. But there's only so far you can go with experience and guile before a punk of a young buck is faster than you, stronger, or trained in some kung-fu shit.' Chuckling and shaking his head, Urik makes a throwing-away gesture and shrugs, before turning a bit more serious with the next thing he adds. 'Turned 54 in January, you know. Damn, I was just about ready to try out what my buddy Quentin kept suggesting. Picking up a spunky jock with daddy issues and molding him into a proper muscleboy. QT always praised his boytoy and I gotta say the kid has a sweet ass. Hah, his [']daddy['] dropped him off in front of my door as a present for a day on my birthday, wearing just a leather jock and a leash!' Scratching his neck, Urik shrugs. 'Wonder if I'd have ended up with a boy like him at my beck and call, if this whole nanite thing hadn't kicked off...'";
	TraitGain "Daddy Training Interest" for Urik;

to say UrikTalk_Trans: [chat with Urik about women/other]
	if "Trans Appreciation" is not listed in Traits of Urik: [he's got no real interest male herms and FTM yet]
		say "     Asking Urik about his views on trans-people and hermaphrodites, the orc shrugs. 'Well, I can tell you that I don't really see a point in boobs and stuff. They're just some wobbly bumps on women's chests, shaken about like that's something special. Now a proper pec - that you gotta work for!' Demonstratively slapping his hand on his firmly muscled chest, he gives the muscle a squeeze and flicks his fingertip over his own nipple. 'Nips are nice, but other than that, I'd take a hard body any time over saggy milkbags.' Seeing the orc's expression, you don't think he could be brought to see breasts in another way anytime soon. Wanting to redirect the discussion a little after that, you ask Urik about male-herms and trans-men instead. The disapproving expression from before is still on his face, if somewhat less pronounced - at least until you bring up that he should imagine a nice, manly body first, then think of the somewhat unconventional arrangements at the crotch.";
		say "     'Mh - actually, that would be... fine. A hunky stud, with a self-lubing bonus hole I guess,' the orc says, scratching his chin thoughtfully. Tapping a finger on his jawline, he seems to mull the image over for a little while, before he finally adds, 'Or, yeah - why not just a slit either. Not like a bottom needs a big dick anyways, eh? I think I could work with a breeder boy like that. Self-lubing and convenient too, hah! As long as he's tight and all.' The seed your little discussion has planted in the orc's head seems so sprout at that point, as he has to adjust his cock a little, with the huge dick filling out a bit. 'Pushing into a nice muscleboy breeder like that, hearing him moan for more of my dick... yeah, that'd be something! But, you know, proper moans, no high-pitched harpy shrieks or anything like that!' You and Urik talk a little more about male-herms and FTM trans-people. After your little thought-experiment, it appears that the orc has gained some new interest there, at least in theory.";
		TraitGain "Trans Appreciation" for Urik;
	else:
		say "     Bringing up herms and trans-people again, you see a smirk appear on Urik's face. 'As long as they're properly manly, I don't think I'd have a problem with [']em. I mean, it's a bonus hole to try, and if all fails, there's always ass.' Tracing the shape of a man in the air and wiggling his fingers as if he was groping the guy's ass, the orc winks a you and nods. 'The things that annoy me about women really are the bitchyness, shrill voices and trying to wave boobs in my face, as if that's supposed to hypnotize me or some shit.' You and Urik talk a little more about male-herms and FTM trans-people, with the orc clearly being open to interactions on that front, much more than with regular females at least.";

to say UrikTalk_BikerCop: [storytime with Urik]
	if "Bike Cop Story" is not listed in Traits of Urik:
		say "     As you bring up the bike cop that Urik mentioned before, the orc's face draws into a wide grin. 'Made you curious with that one, eh? It was a pretty hot time, in more ways than one!' ";
	else:
		say "     As you bring up the bike cop again, the orc's face draws into a wide grin. 'Can't get enough of hearing about the little slut? Hah! Hope one of these days I can take you to enjoy Pat yourself!' ";
	if orc supersized breeder is listed in companionList of Player:
		say "Chuckling as he adjusts his cock inside the stretchy shorts he's wearing, Urik gives an amused grunt, then starts to tell you the story";
	else:
		say "Leading you over to the sofa he has claimed as his own, the orc leans back into a comfortable sitting position, adjusting his cock inside the stretchy shorts he's wearing. Sharing a lewd look with you and reaching over to touch your thigh lightly, Urik lets out an amused grunt and starts to tell you the story";
	say ": 'Okay, it was back in... [']92, yeah that sounds about right, and I was on the Mother Road, driving west, towards the coast. Absolute beauty of a bike giving a deep, rich vibration between my legs, and a young stud having his arms around my chest from behind. Man, I loved that bike - lots of power, and with the tank and trim lacquered in a bright metallic scarlet red. Did the finish myself when I got it back in [']88. The dude behind me on his third or so ride-along was Troy, my nineteen year old nephew. He was close to being accepted in the gang at that point. Solid, dependable lad, despite who his mother was.' Urik's voice takes on a biting edge as he says the last words, but he quickly brushes the thought aside and continues.";
	say "     'So, there we were in the hot summer of 92, driving along at a good pace in the late afternoon sun, wind blowing into our faces and the open road stretching out to the horizon. Then I hear the motor of another bike, followed by a siren. Glance over my shoulder confirmed it was a fucking pig, having the nerve to wave me to the side. Twice actually, after I gave him the handsign to fuck off the first time.' Felt Troy's chest vibrate against my back as he laughed about the idiot's persistence. He knew what was what by that time, being close to initiation. Urik shakes his head in amusement at the idea of having to obey the law, then audibly cracks his knuckles. 'So, when it became clear the punk wouldn't go away, I slowed down and let my bike run out on the shoulder of the road, flicking down the kickstand. With me and Troy getting off the bike, biker piggy came to a stop not too far behind. I gave Troy a little wave to circle around when the cop strutted up to us.' Pitching his voice high, the orc adds, 'How fast do you think you were going, sir?'";
	WaitLineBreak;
	say "     Snorting, Urik explains, 'Man, when I got a good look at him, I realized a little piglet in disguise was standing there in front of me. Couldn't have been that much older than Troy, and trying so hard to appear as a proper man, from polished boots all the way up to mirror-shined aviator glasses and a clunky police helmet. Laughed as I saw it, and that made the boy angry.' Again changing his voice, Urik adds, 'Sir, this is no laughing matter! I'm gonna have to write you a ticket!' Grinning, Urik recounts, 'Such a stupid, overconfident kid. Still, I found him amusing and thought I'd give him a last chance, so I met his gaze as he was starting to reach for his little ticketing book. Then I reached up to tap the patch on my jacket, wanting to hell him that you don't ticket someone like me, and he just ignored it. Guess no one had taken that piggy aside to tell him what was what before sending him out on the road.'";
	say "     Urik blows out his breath, then waves to the side. 'By then, Troy had walked around and was checking out that police bike, so I called out to him and asked if he liked it. Hah, supercop hadn't even noticed my nephew going on his stroll, and he half-turned to look for him as Troy answered. That's when I cold-cocked the little bitch, sending his pretty glasses flying as he went down. Pathetic fucker, one solid hit and he was out! That's what you get when you let pretty-boys do a man's job. And he really was pretty, you know, that became obvious when we stripped him down to the buff and draped him over the bike. Had a nice tan, the boy, obviously been outside quite a bit. Pale white ass though, with strong tan-lines - he'd lose those right quick in the aftermath, I tell you! While I was giving piggy a few slaps to see how red those cheeks could go, Troy cuffed him with his own wrist bracelets, hooked under the kickstand, and stuffed his white briefs into the cop's mouth to shut him up.";
	WaitLineBreak;
	say "     'Took a little while for the cop to start stirring again. Hah, he was freaking in that moment - coming to, feeling the sun on his back and wind blowing between his cheeks, mouth gagged and wrists locked! I grabbed a good handful of his blond hair and pulled his head up, grinning as I met the piggy's confused blue eyes. That's when I explained to the little idiot how the world worked - that the roads aren't theirs, but ours! You don't just tell a biker what to do without paying the price! He really started to become afraid when my zipper came down and I slapped his face with my cock, hah!' As he says this, Urik pulls out his own cock, stroking up and down along the shaft. 'Troy was by my side a minute later, pants pushed down too, and we made it clear that any pig is beneath even an uninitiated biker. Had Troy rub his hard dick all over the pig's face!'";
	say "     'Thinking back to it, he looked pretty hot himself, and it was good to have another guy I could trust there with me. Man, wish Troy was here to become an orc too! Too bad he moved to Seattle back in [']01.' Shrugging, Urik goes on to say, 'Anyways, so finally the time had come to finish the pig's education! Left Troy holding the boy's head, walked around the cop bike and slapped my dick between his buns. Oh, he tried kicking at first, and screaming into his gag, but fat lot of good that did to the piggy! I spread his pale cheeks with my hands, hotdogging my thick cock between them. Hah, he was really getting active at that point! When I was lining myself up and rammed into him, I learned why. Must have been a virgin, as tight as he was! Really slammed his hole hard every time he tried to buck me off, so I guess he learned the lesson eventually from his sore ass. Maybe he thought he'd just have to endure and it'd be over when I came.' A snort tells you that isn't what happened.";
	WaitLineBreak;
	say "     'So, I fucked him deep, enjoying every moment of it, then dropped a fat load into that hole! When I pulled out, the little bitch relaxed for a few seconds, but only until the moment that I slapped Troy's shoulder and told him he was up next. Despite being my worthless sister's son, he made me proud that day - sliding his fat cock home right away and jackrabbiting the cum-filled bitch! Full of energy, as a young stud should be, hah!' Giving a well-satisfied nod as he recalls his mental image of the day, Urik smirks. 'Must have been a sight for the three or so cars that passed us. Hah, one of them even honked and gave a thumbs up, and the others were bright enough not to stop.' The orc's stroking hand on his erection slows down at this point, with Urik wiping off a drop of pre-cum and sucking it off his finger. 'When Troy blew his load, I had another go. Piggy was a bit of a mess by that point, but that was half the fun. Churning up the two loads inside him and seeing it drip down his legs in a froth. Ah, good times!'";
	say "     Reaching down, Urik fondles his balls with a broad grin. 'While I was working up to dump a second fat load into the cop, Troy checked out his stuff. You know, wallet and whatnot, unclipping the badge from his shirt and sliding it into his pocket as a trophy. When I blasted my seed into our fucktoy, Troy asked, 'So, what are we gonna do with... Police Trooper Patrick Rayleigh now?' He read that name off the pig's license before flinging it out into the desert brush. Looking down at the guy, and his bike, got me thinking. I mean, he was pretty docile - for the moment - after getting three fucks and hanging over his bike with his head down in the bright sun for so long. So I gave his ass a nice strong slap and told him, 'Pat, you're gonna have an adventure!' 'Took a little bit of pulling and squeezing, but we got the pants back on the piggy. After that, I took him on my bike, in front of me. Still handcuffed, and from being used so hard, plus maybe some sun-stroke, he was pretty woozy. Had to use two belts tied together end to end to strap him to my front so he didn't just fall off.'";
	WaitLineBreak;
	say "     'Troy took the cop bike, and together we rode on at a fairly relaxed tempo, taking some detours so we didn't have to pass right through the center of any town or so. Took a bunch of hours that way, but eventually, after passing into Cally and it getting dark, we arrived at the watering hole that I was taking Troy to in the first place. It was ours, you see - owned by Al, one of my biker bro's. Took both bikes behind the place, parking them there and leaving Pat in Troy's care to walk inside and have a talk with the guys that were in that night.' A broad smirk crosses Urik's features, exposing his tusks as he adds, 'Telling them we'd taken down a cop made quite splash, as did the fact that Troy was throat-fucking our piggy when everyone stepped outside to check things out. Had his hand clamped on Pat's nose to force him to breathe through the mouth, so he couldn't just try to keep it shut or get any other ideas of resisting!'";
	say "     'Everyone started to laugh as I pointed out the large wet spot covering the inseam of Pat's stretchy pants. The guys were joking about him pissing himself in fear, but then I peeled the fabric off Pat's ass and showed them that it was cum leaking from his used hole! That got everyone excited right quick, hah! When they saw that we'd taken things this far, all holds went out the window and the dicks came out! In a hot minute, the gangbang started! We made a weekend out of it, with those guys who weren't there for the first night cycling through as some calls were made and word spread. Can't even begin to guess just how many dicks went into that piglet's hole! Man, it was almost like having an orc breeder now - he just got used so much that it became second nature to him! Not sure when the slut started getting off from it, but I remember that I felt his hole twitch around my cock at some point during the second day. Haha - he was emptying his balls without his pale-white bitch dick ever being touched!'";
	WaitLineBreak;
	say "     'Come Monday morning, I was laying on the mattresses in the back room after another night of taking turns with the guys. What do you think I woke up to, eh?' Urik asks that question with a grin, not really waiting for a reply before slapping your arm in camaraderie. 'Pat's whore mouth on my dick, that's what! He was bobbing up and down on it like he was on autopilot, with no one making him do it! Patted his head and praised him for being the good boy he had grown to be over the weekend.' Starting up to stroke his cock faster again, the orc continues, 'Hell, everyone else was still passed out, so piggy could have tried to sneak out of the place if he'd had any resistance left in him anymore. Instead, he was gobbling up my dick, and soon after Troy woke up too, taking Pat's eager fuckhole for another ride! He was humming in pleasure around my schlong every time Troy hit his g-spot!'";
	say "     Urik puts both hands behind his head, flexing his muscles a little before going on to say, 'And that's what was going on when Al and a bunch of the others came in that morning, holding a brand new jacket for Troy! My nephew literally got inducted while cumming inside a piggy, with the vest being slid over his arms mid-thrust! In the aftermath, he even got to keep the cop's bike - after it spent a week or two in a garage to be worked over, that is. Taking off some recognizable bits, new paint job and whatnot! As for Pat - he didn't even seem to want to leave, hah! Al made him a waiter in the bar, prancing around shirtless and with a pair of special pants as his uniform. You know, with two zippers, one front and one back, for easy access! Been there ever since, and I always drop by when I'm in the area to give him a dicking for old time's sake.'";
	WaitLineBreak;
	say "     As he finishes the story, a thoughtful expression crosses Urik's face, with the orc stroking his chin, then looking down at his green-skinned hand. 'Now I'm wondering how far this nanite thing extends, or if we can get out of the quarantine somehow. Imagine making Pat a true orc breeder, and all the orclings the little whore will pop out after that... ";
	if "Private Breeder" is listed in Traits of Urik: [Urik's not supposed to sex up anyone]
		say "It'd be awesome to see you knock him up again and again, [UrikPlayerAddress]!' The orc smiles broadly as he says this, giving you a lust-filled look.";
	else:
		say "How about sharing him between us, and keeping him filled with cum constantly?!' The orc smiles broadly as he says this, giving you a lust-filled look.";
	if "Bike Cop Story" is not listed in Traits of Urik:
		add "Bike Cop Story" to Traits of Urik;

to say UrikTalk_Past:
	say "     As you bring up wanting to know more about him from before the current situation with transformation nanites and all, Urik grunts and looks you in the eyes. 'Aw, really want me digging up that old stuff, [UrikPlayerAddress]? Most of it won't be too interesting, it's been a bunch of decades. Old news,' the orc says, shrugging his broad, muscular shoulders. Repeating that you're interested in him, you watch the large man take a deep breath and scratch the back of his neck. 'Okay then, here we go. I was born in 1954, in Toledo. My folks named me Curtis Earl Gray.' ";
	if "Urik's Past" is not listed in Traits of Urik:
		say "Your eyes widen at the revelation, while the orc reaches out for you, putting his hand on your shoulder to give you a squeeze. ";
	say "Then Urik follows up with a serious look, 'No fucking jokes about the name, alright? Heard em all, and I was named for my gramps, not some stupid tea! Anyways, had a mom, dad, little sister, all that good shit. Dad took on a job in Detroit in [']58, welding cars. Wasn't too bad a place for growing up in those days, I guess. Before the rot set in.'";
	say "     Grimacing, Urik continues, 'Things went downhill slowly, bit by bit. Kinda obvious in hindsight, not so much if you're living though the shit. It's like that story with the idiot frog sitting in a pot of water until it boils. The start I guess was when mom left when I was seven. The early seventies were when crap hit the fan eventually. Hanging out with some assholes, my stupid sister got herself hung on crack, and pregnant at sixteen. Meanwhile, I finished high school and took on an apprenticeship in dad's factory in [']73 - with the fucking place being shut down in [']74! Bah!' Making a throwing-away gesture, Urik growls at the memory, then shakes his head to clear it. 'Joined the army in [']75, as a way out. Engineering corps. Ups and downs there, going through boot camp and all, but then getting in a good company, you know. Stayed on for a bunch of years, even through a war. Not that anyone remembers that one these days, as it was a 'small' one. Sure didn't feel like that small, being shot at while storming the beach.'";
	WaitLineBreak;
	say "     Your orcish companion falls silent for a little while, mulling things over with a bittersweet smile on his lips. 'Hit things off with a guy right there, actually. On the island I mean, him being a marine - but I didn't hold that against him. Hah, had to save Declan from being shanked by a hooker and her pimp in an alley. In the days after the fighting, all of us didn't have too much to do, so the local [']talent['] were making a killing - but instead of getting his dick wet, they tried to do in Dec and just roll him for everything he had.' With a grunt, shaking his head about the situation, Urik continues, 'Dragging a guy from an alley with his arm over your shoulders in such a situation sure makes fast friends. Started hanging out together, shared drinks, girls, everything. God, he and I just clicked. I could talk about anything with Dec.' Grunting and letting his hand stroke over the tattoo on his right forearm, Urik's eyes are filled with a far-away look for a good minute or so before he focuses back on you. 'Gotta understand how different the time was, back in 1983. I mean, you didn't just let it all hang out like people do these days, especially in this city here on the west coast. So, no kissy-kissy in public, but god, I boned Dec every chance I got! On the down low, of course.'";
	say "     Holding out his arms side by side to show you the detailed pattern tattooed on both, Urik says, 'He actually gave me these in [']84 while he was on leave. By that time I'd gotten out of the army, finally having had enough after that war, and I moved to the west coast to be close to Dec's base. Took on a job in an auto shop, had my man close by, good year that was - 1984. Met his bro Isaiah, a tough as nails biker dude known on the streets as Buffalo. He knew what was going on, you know, but was okay with it. Sure, he teased Dec about it when it was just us, but overall, [']Saiah was on our side, and his gang-buddies followed along. Heck, had some bar fights with some of them in support even without Dec's bro there to rouse em, when this idiot or that was throwing gay slurs.' Taking a breath deep breath, Urik continues, 'Hung out some with the bikers, socially and soon a bunch of [']em coming in to the shop to have some serious talk about their machines. Rode the highways myself quite a bit that summer, up and down the Mother Road. Hell of a shame they took it off the highway map the next year.'";
	WaitLineBreak;
	say "     At that point, Urik's demeanor becomes stony and hard, with his next words having a broken and rough tone to them. '11th of February, 1985. 11:04 PM. That's when Declan was shot, in the back, while taking a leak in the alley beside the bar we were in. Punk who did it thought he was [']Saiah, wanted to make a name for himself gunning him down. Guess one dude looks like another in the dark, eh? Even if one is a lean marine, and the other built like a brick house!' Looking to the side, as if to direct the hatred in his gaze to the past instead of at you, Urik adds in a cold tone, 'Took us three days, and crippling two of his buds for life, to run him down. In the end, the pissant fled. Made it almost to the state line of Arizona, but with me, [']Saiah, and all the rest of the gang covering the routes he could take, that didn't work out so well for him. Left quite a long red streak along Route 66, before the last pieces of him fell of the chain.'";
	say "     Silence stretches out between the two of you, until Urik eventually gives a twitch of his shoulders. 'After that, I was one of the gang. Mh, even those guys who were grumbling before, about us fags and all, were my bro's. Guess killing someone together outweighs everything, eh? Perfect way to solve prejudice.' His last words were meant as a joke, you notice only after a few seconds due to the flat, dead delivery the orc gave them. A moment later, Urik clears his throat. 'Listen, [UrikPlayerAddress] - can we stop for now? Those are quite some memories.' You nod silently patting the orc's arm and give him some space.";
	if "Urik's Past" is not listed in Traits of Urik:
		add "Urik's Past" to Traits of Urik;

to say UrikTalk_Declan:
	say "     As you bring up Declan's name, Urik falls silent for a long moment, his gaze far-away. Then finally, he takes a deep breath and looks at you again. 'You know... it's been over twenty years, but I can still see his face clearly, when I close my eyes. I loved that man, with all my heart. We didn't even have two full years together, but those were the most important days of my life. If only there had been more time for us.' By the pained expression that crosses his face at that point, followed by a momentary flash of bottomless hatred, the orc is recalling the bloody end of his relationship, and the fate of the murderer who took Declan from him. Thankfully, he doesn't dwell on it for long, instead glancing down at the tattoos covering his forearms.";
	say "     Moving one hand to stroke over the complex pattern decorating his skin, the orc says, 'Took him a few days to do these. Declan was an artist, and he wanted every line to be perfect. Hah, might have had something to do with me distracting him all too often with steamy kisses.' Scratching his chin, Urik adds, 'He really loved my beard, couldn't get enough of it. Always ran his fingers through it when we made out.' Looking down to the tattoos again, he continues, 'I - I really don't know what I would have done if the transformation had done something to them. But no, they kinda grew along with me, perfect like the day Dec put them on me. I know it's just some ink in the end, but it means a lot to me. Like a tiny bit of him is still with me.'";

to say UrikTalk_Sister:
	say "     As you bring up his sister, Urik grunts scornfully. Taking a deep breath, he says, 'Leslie Donna Grey. Man, grandma must have rotated in her coffin when she saw what the little girl getting her name made of herself. I mean... wasn't too bad when she was still a kid, just my little sis that I played with. Didn't seem dumb or anything either, but when puberty hit... damn. Didn't want to go to school, but did want to out with her new friends that popped up from the woodworks when her boobs came in though. Early 1973, she was hooked on crack, and pregnant from who knows who, at the age of 16. Man, when I beat up her dealer, instead of thanking me, Les and I had a screaming match. Took a hell of a lot of effort - and some handcuffs, actually - to keep her from using during the rest of the pregnancy.'";
	say "     Contempt lies heavy in Urik's voice as he recounts the tale of his sister. 'My nephew Troy was born in December [']73, and Les seemed to have a turn-around when she started caring for him. Bah - it was just a trick! Little bitch ran off mid-January, when we weren't watching her so close anymore. One day, when I came home from the plant I just found Troy, lying in his crib alone and screaming from hunger. My dear sis had just packed up and left him. Tried to find her for a while, but then the car factory closed later that summer. With dad and myself out of work all of a sudden, we had other things to do. One of which was caring for her kid! Bit more than a year later, I was called in to identify a body. Pretty hard to recognize her by then, but the tattoo she'd gotten on her shoulder two years before was proof enough.' Grimacing as if having a bad taste in his mouth, Urik, concludes, 'So, I had a sister, once. For eighteen years. Now I don't.' You nod silently patting the orc's arm and give him some space.";
	if "Sister Story" is not listed in Traits of Urik:
		add "Sister Story" to Traits of Urik;

to say UrikTalk4: [talk about Eric]
	if UrikEricInteraction is 1: [Urik grabbed Eric, player stepped in and allowed Eric to watch the orc finger himself]
		say "     Urik grumbles a little and says, 'Don't worry - I haven't touched a hair on your little redhead. You're the [UrikPlayerAddress] and he's a dick-less freak anyways.'";
	else	if UrikEricInteraction is 2: [Urik grabbed Eric, player stepped in and allowed Eric to get oral pleasure from the orc]
		say "     Urik grumbles a little and says, 'Don't worry - I haven't touched a hair on your little redhead. You're the [UrikPlayerAddress].' There are a few moments of silence, then the large orc adds in a casual tone, 'Even though it's a downright shame to not train the li'l pussy properly. He's got the temperament of a breeder slut - that's for sure. Should have seen the look in his eyes when he tasted my cum.'";
	else if UrikEricInteraction is 3: [Urik went down on Eric's pussy, then fed him his orc cum in a sloppy kiss]
		say "     Urik gives a little amused snort as you bring up Eric, then waves his hand in the air casually. 'I do admit - the kid's kinda cute to have hanging around. But really, he's too frigging shy! Hell, you've declared that he can order me around and what does he do? Nothing, that's what! A day-old orcling has more balls than him - and chest hair, and a fucking dick. Any orc teen would be out roaming the neighborhood for something to fuck!' The muscled orc rubs his crotch through the loincloth and a smile spreads over his face, 'Not that the li'l redhead didn't want some action though... after a bit of encouragement.' As you raise your eyebrow at his comment, Urik is fast to add, 'Hey [UrikPlayerAddress]. Don't you look at me that way... I didn't do nothing until he asked for it. He even said please, hmpf. Needs some lessons to realize he has to just take what he wants, that kid.'";
	else if UrikEricInteraction is 4: [Eric + Urik had 69 action]
		say "     Urik gives a little amused snort as you bring up Eric, then waves his hand in the air casually. 'Well, at least he's learning - came right up to me the last time and said he wants some fun.' The orc sticks out his tongue and wiggles it up and down, then grins. 'I'm just doing what he wants me to, alright [UrikPlayerAddress]? Following your orders and being all nice and accommodating.' A twitch of the thick shaft hidden under the orc warrior's loincloth tells you that he's clearly enjoying the time he spends with Eric.";
	else if UrikEricInteraction is 5: [Eric thanked Urik for being nice (and all the oral sex) with a BJ]
		say "     'You know what,' the orc warrior says and rubs his chin-beard with a thoughtful gesture before adding, 'I don't know how, but Eric's actually grown on me. Doesn't mean that he isn't likely a lost cause with that shyness - hell, I try to teach him to be more forward, take what he wants and all... and he blows me like a cum-hungry breeder as his thanks. Just hopeless... but I like him. Too cute by half, that little redhead.'";
	else if UrikEricInteraction > 5: [Urik pounded Eric's pussy and bred him]
		say "     'Eric's my li'l buddy,' the orc warrior says, then shows you a beaming grin as he adds, '...and he's a fucking hot lay too! Never thought pussy could be as good as a sweet ass, but... man the kid feels nice. Tight as hell and with that thingy inside - you know, like a pucker to push through when you're already balls-deep in him. Fucked his womb so hard and pumped it full of cum!' Urik gives a low grunt and slides one hand under his loincloth to stroke himself, getting hard from just thinking about the sex he had with Eric.";
		say "     After being lost in his thoughts for a few seconds, Urik focuses back on you a moment later, then says, 'Oh, and there's another funny thing... I kinda end up hanging out with Eric quite often, even without having sex. Weird, eh? It's really fun, even if he just wants to read books together or... do some other shit together.'";

to say UrikTalk5: [talk about Spike]
	if PlayerControlled of Urik is true:
		if Stamina of Spike is 1: [Urik goaded Spike intro training]
			say "     As you bring up Spike, Urik chuckles under his breath. 'Your little slut-puppy? What about him?' Looking at him with a raised eyebrow prompts the orc to roll his pear-green eyes and waves a large hand, then adds, 'I mean your 'companion'. Don't you worry, I won't just grab him and bend him over to show him his inner bitch. Wouldn't do to have a breeder pound your pet, yadda yadda.' With a shrug of his broad, muscular shoulders, Urik lets that part of the topic drop, moving on to saying, 'If you're serious about using the boy for something more than a bedwarmer, I'll have to train him a bit though. You don't wanna be embarrassed by a weak-ass puppy following you around, do you? What is he supposed to do? Yap at people to distract them?'";
			LineBreak;
			say "     [bold type]What do you reply to the orc?[roman type][line break]";
			LineBreak;
			say "     [link](1)[as]1[end link] - You like having Spike as your companion, though he could use some more training. Urik should go ahead with the workouts.";
			say "     [link](2)[as]2[end link] - Not everyone needs massive muscles to be a good fighter. Spike's quick, that's something too. Urik should stop prodding him to be something he's not.";
			say "     [link](3)[as]3[end link] - Order Urik to leave the young man in peace. The orc's here as your fucktoy and should act like it.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to encourage training, [link]2[end link] to discourage training or [link]3[end link] to put the orc in his place.";
			if calcnumber is 1:
				LineBreak;
				say "     As you tell Urik that he may proceed with working out together with Spike, the big male grins broadly and replies, 'Knew you'd see it my way, [UrikPlayerAddress]! Just you wait, I'll help the little bitch reach his full potential!'";
			else if calcnumber is 2:
				LineBreak;
				say "     Urik snorts at your mention of other combat tactics. 'You mean dodging and shit? Yeah, that'll last right until he's smacked aside by the one hit he can't dodge? And where will you be then, huh?' Clearing your throat to remind him that you're the master and Urik himself now has the role of pleasing you, the orc makes a throwing-away gesture and replies, 'Bah, fine. I'll tell the little bitch that training's cancelled next time I see him. Would probably have been too weak in the end anyways.'";
				now Stamina of Spike is 100; [training stopped - and Urik won't be nice about giving the news ]
			else if calcnumber is 3:
				LineBreak;
				say "     Stepping up to the big orc, you take his jaw in your hand and keep his head in a firm grip as you look him into the pear-green eyes. Doing your best to project dominance, you then ask the orc who and what he is. After a little grumble, Urik replies, 'I'm an orc breeder. Your breeder, [UrikPlayerAddress]. But still, the - umnph!' The further words he wanted to say after his admission are cut short as you push two fingers into his mouth and tell him to suck on them, like a good little cumslut. He obeys immediately, with the usual built-in sexual submissiveness to authority figures that is typical of an orc breeder. Planting your other hand on his crotch and giving the orc's balls a tight squeeze, you tell him in no uncertain terms that he should keep his hands off Spike and not bother him again. When you let go of Urik eventually, he blows out his breath and finally says, 'I'll tell the little bitch that training's cancelled next time I see him. Would probably have been too weak in the end anyways.'";
				now Stamina of Spike is 100; [training stopped - and Urik won't be nice about giving the news ]
		else if Stamina of Spike is 2 or Stamina of Spike is 3: [Spike got a 'protein shake']
			say "     As you bring up Spike, Urik chuckles under his breath. 'Your little slut-puppy? What about him?' Looking at him with a raised eyebrow prompts the orc to roll his pear-green eyes and waves a large hand, then adds, 'I mean your 'companion'. Don't you worry, I won't just grab him and bend him over to show him his inner bitch. Wouldn't do to have a breeder pound your pet, yadda yadda.' With a shrug of his broad, muscular shoulders, Urik lets that part of the topic drop, moving on to saying, 'At least the boy's trying in our training sessions. He's still far too weak, maybe as strong as a half-grown orcling, but there's some determination in that puppy. I think given time, we can make something out of him!'";
			LineBreak;
			say "     [bold type]What do you reply to the orc?[roman type][line break]";
			LineBreak;
			say "     [link](1)[as]1[end link] - Commend him about his service in training Spike.";
			say "     [link](2)[as]2[end link] - Ask about what exactly is in that 'protein shake' he gave Spike.";
			say "     [link](3)[as]3[end link] - Order Urik to leave the young man in peace. The orc's here as your fucktoy and should act like it.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to encourage training, [link]2[end link] to ask about the shake or [link]3[end link] to put the orc in his place.";
			if calcnumber is 1:
				LineBreak;
				say "     As you tell Urik that he may proceed with working out together with Spike, the big male grins broadly and replies, 'Knew you'd see it my way, [UrikPlayerAddress]! Just you wait, I'll help the little bitch reach his full potential!'";
			else if calcnumber is 2:
				LineBreak;
				say "     As you pose a question about what exactly he did feed Spike, Urik clears his throat and says, 'It's all good stuff in there, just what the boy needs. Protein powder, clean water and so on, you know.' Raising an eyebrow and giving him a pointed look, you wait for him to continue, at which point Urik rubs the back of his neck. '...and maybe just, er, half a load of my cum. Thereabouts,' he adds in a casual tone of voice. 'Hey, why are you looking at me like that?! It's good for him, you know. What do you think makes orclings strong and grow so much right away once they're 'out of the pouch'?' As a reminder that his all-male species has a peculiar way of reproduction, the orc gives his own buttock a slap, drawing your attention to it. 'It didn't look like he's turning green or getting tusks, so you don't have to worry about Spike becoming an orc. It'll just make him build some mass quicker, alright? And maybe become a little bit horny.'";
				say "     The last sentence Urik said fairly quietly, and you read between the lines to realize that being dosed with Urik's cum will make Spike grow muscle mass, but also push the doberman's arousal, with the possibility of making him quite plyable and hungry for more. Enough of it will likely put him in a blissed-out state of drunken lust. [bold type]Given this realization, what do you want to do about the matter?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Let Urik continue to hand out his special shakes.";
				say "     ([link]N[as]n[end link]) - Enough of this. Forbid the orc to dose Spike!";
				if Player consents:
					LineBreak;
					say "     Seeing that you're cool about what he's been doing with Spike, Urik puts on a rather relieves smile. 'I looted the powder from a top fitness studio not to far away. With that stuff and a little orc oomph, your puppyboy will be a tough guy for sure! I'll make something out of him.";
				else:
					LineBreak;
					say "     As you categorically forbid the orc to feed Spike any more of those 'special' shakes, the orc grumbles and sullenly looks to the side. 'Well, that'll shoot the progress for training him in the foot for sure, [UrikPlayerAddress]. I can keep training him, but without the support, that'll take ages! You really don't wanna have a puppy-boy that's worth something in a fight? Your call, I guess.'";
					now Stamina of Spike is 51;
		else if Stamina of Spike is 4 or Stamina of Spike is 5 or Stamina of Spike is 6:
			say "     As you bring up Spike, Urik chuckles under his breath. 'Your little slut-puppy? What about him?' Looking at him with a raised eyebrow prompts the orc to roll his pear-green eyes and waves a large hand, then adds, 'I mean your 'companion'. Don't you worry, I won't just grab him and bend him over to show him his inner bitch. Wouldn't do to have a breeder pound your pet, yadda yadda.' With a shrug of his broad, muscular shoulders, Urik lets that part of the topic drop, moving on to saying, 'At least the boy's trying in our training sessions. He's still far too weak, maybe as strong as a half-grown orcling, but there's some determination in that puppy. I think given time, we can make something out of him! You should see him chug down the protein shakes, they'll help a bunch too.'";
		else if Stamina of Spike is 50: [Spike won't accept any more drinks]
			say "     As you bring up Spike, Urik chuckles under his breath. 'Your little slut-puppy? What about him?' Looking at him with a raised eyebrow prompts the orc to roll his pear-green eyes and waves a large hand, then adds, 'I mean your 'companion'. Don't you worry, I won't just grab him and bend him over to show him his inner bitch. Wouldn't do to have a breeder pound your pet, yadda yadda.' With a shrug of his broad, muscular shoulders, Urik lets that part of the topic drop, moving on to saying, 'At least the boy's trying in our training sessions. He's still far too weak, maybe as strong as a half-grown orcling, but there's some determination in that puppy. I think given time, we can make something out of him!'";
			say "     Informing the orc that you've told Spike about the possibility of there being cum in his shakes, the orc looks at you somewhat sullenly. 'Aw, what did you do that for? He needs his things, err - nutrients! So what if I put half a load of my cum into it? What do you think makes orclings strong and grow so much right away once they're 'out of the pouch'?' As a reminder that his all-male species has a peculiar way of reproduction, the orc gives his own buttock a slap, drawing your attention to it. 'The squeamish little bitch won't take no shakes no more, I bet! I can keep training him, but without the support, that'll take ages! You really don't wanna have a puppy-boy that's worth something in a fight? Your call, I guess.'";
			now Stamina of Spike is 51;
		else if Stamina of Spike > 50 and Stamina of Spike < 100: [Urik won't offer any more shakes]
			say "     As you bring up Spike, Urik sighs. 'I'm still training your little slut-puppy, but the progress is really slow. Should have let me keep giving him shakes. They were good for him!' With an annoyed grunt, he waves off the topic, not wanting to say any more about it.";
		else if Stamina of Spike is 100: [training ended]
			say "     As you bring up Spike, Urik looks at you sullenly and grumbles. 'I won't do anything with your little slut-puppy, fine?! Leave me alone about him.'";
	else if PlayerFriended of Urik is true:
		if Dexterity of Spike < 100:
			say "     As you bring up Spike, Urik lets out a chuckle [if Spike is visible]and glances over to the dobie[end if]. 'He's got spunk, I gotta give [if MaxHP of Spike is 1]your little doggie son that[else]that to the dog-boy[end if]. Of course, that'll get him into a bunch of trouble, if he's not ready to back up his big words.' [if Spike is visible]As he hears this, Spike lets out a bark, then calls out in a joking tone, 'Up yours, old man!' Urik chuckles and flips him the bird. [end if]Bringing his hand up to stroke the hair of his beard, the orc continues, 'But don't you worry, I'm gonna make something out of that kid! He'll be shredded in no time, hah! ";
			if "Spike_Player_Son" is listed in Traits of Urik: [Urik knows Spike is the player's son]
				say "Become a proper heir to the tribe and all!' [if Spike is visible]As he hears this, Spike comes wandering over, tail wagging behind his back. Seems like he likes where Urik is going with what he's saying, and the young man soon joins in with you two, talking a little about training and getting more muscular. [end if][line break]";
			else:
				say "Just imagine what a hot little package he'll be then!' [if Spike is visible]'I'm already hotter than you can handle!' Spike calls over and gives a raspberry at the towering orc. [end if]";
				if "Private Breeder" is listed in Traits of Urik: [Urik's not supposed to touch anyone]
					say "After a momentary pause, as if remembering that his words might be misinterpreted, Urik steps up and places one of his large hands on your shoulder. He meets your gaze with his eyes, holding it for a second before he adds quietly, 'I'm not planning on doing anything but train him though, you understand? Unless you want to bring him into a three-way[if MaxHP of Spike is 1]. Some family fun-time, if you know what I mean!' [else].'[end if] His honesty is clearly apparent in the orc's words and you put your hand on his, smiling and nodding.";
				else if "Selective Breeding" is listed in Traits of Urik: [player decides whom he can fuck]
					say "After a momentary pause, Urik clears his throat, then scratches the back of his neck before saying quietly, 'Just saying, I like the pupper. He's a very good boy.' Raising his eyebrow, he adds, 'If he's into it, or you gave him the same deal as me, picking who can breed whom... let me just say that you've got a volunteer to make some half-orc doggos. Your decision, of course. I'm not planning on doing anything but train him without your say, you understand?' His honesty is clearly apparent in the orc's words and you smile and nod as you register his opinion on the matter.";
				else if "Molestation Detox" is listed in Traits of Urik: [gave Urik a time-out for forcing himself on others]
					say "After a momentary pause, Urik suddenly blushes, apparently remembering the rules you gave him and how his words might be misinterpreted. He raises his hands in a pacifying gesture and quickly adds in a somewhat quiet tone, 'Not that I'm planning to do anything! Learned that lesson the hard way, didn't I?! I'm not planning on doing anything but train him, unless he asks me to[if MaxHP of Spike is 1] and you're fine with that[end if], alright [UrikPlayerAddress]?' His honesty is clearly apparent in the orc's words and you smile and nod as you register his pledge of good behavior.";
				else if "Stud" is listed in Traits of Urik or "Everything Goes" is listed in Traits of Urik: [he may fuck others]
					if "Spike_Player_Son" is listed in Traits of Urik: [Urik knows Spike is the player's son]
						say "After a momentary pause, during which you can see a somewhat lewd smirk cross Urik's face, the orc clears his throat and adds in a somewhat quiet tone, 'Though getting him ready for fighting really is the main priority. We need some more strong men to support the tribe! If he becomes a proper muscleboy, I'd be fine with carrying his half-orc doggos. I like the pupper, he's a very good boy.' Raising his eyebrow, Urik adds, 'Really love that in this tribe, a guy can be a warrior and a breeder! Opens up all new possibilities, hah!' Content about the fact that Urik is accepting that there needs to be consent between tribesmembers, even if you're fine with him sleeping around, you nod and pat his arm.";
					else:
						say "After a momentary pause, during which you can see a somewhat lewd smirk cross Urik's face, the orc clears his throat and adds in a somewhat quiet tone, 'Though getting him ready for fighting really is the main priority. We need some more strong men to support the tribe! Not that knocking him up with some half-orc doggos wouldn't be a way to do that too. Maybe he'll be open for it after we put some more muscle on those bones. Really love that in this tribe, a guy can be a warrior and a breeder! Opens up all new possibilities, hah!' Content about the fact that Urik is accepting that there needs to be consent between tribesmembers, even if you're fine with him sleeping around, you nod and pat his arm.";
		else if Dexterity of Spike is 100: [Player shut down the workout path]
			say "     As you bring up Spike, Urik bristles a little, remembering that you told him to stay away from the dobie. 'Mh? What about that [if MaxHP of Spike is 1]little daddy's boy[else]noodle-armed poodle[end if]? Kept my distance from him, as you instructed. Wish you'd have let me put him through his paces - I'm telling you, the boy won't be of much use if he doesn't bulk up at least a little.' Grumbling under his breath the orc doesn't say anything further about Spike after that, redirecting the conversation elsewhere.";
			[
			TODO: Add additional talk here to discuss this further
			if "Workout Blocked & Discussed" is listed in Traits of Urik:
				TraitGain "Workout Blocked & Discussed" for Urik;
			]

to say UrikTalk_Gregory:
	if HP of Gregory is 1: [asleep in the library]
		if "GregoryPlans_Offlimits" is not listed in Traits of Urik and "GregoryPlans_Recruit" is not listed in Traits of Urik and "GregoryPlans_Private Slut" is not listed in Traits of Urik and "GregoryPlans_Couple Slut" is not listed in Traits of Urik: [no choice made yet]
			say "     As you bring up Gregory, the orc ";
			if "Private Breeder" is listed in Traits of Urik: [Urik's not supposed to touch anyone]
				say "raises an eyebrow and looks pretty interested. 'I'd been wondering what you'd want to do with him.' He appears to want to say something more, but thinks better of it, simply waiting for your verdict. Knowing the orc and his interests, you can imagine what he's thinking, namely that the two of you are an item, but that just maybe you could want to use Gregory together...";
			else if "Selective Breeding" is listed in Traits of Urik: [player decides whom he can fuck]
				say "licks his lips and looks quite interested. 'I'd been wondering what you'd want to do with him. Any chance you decided to let me pump some loads in there? Before long, we'll have a fertile little breeding hole on our stud!'";
			else if "Molestation Detox" is listed in Traits of Urik or "Stud" is listed in Traits of Urik or "Everything Goes" is listed in Traits of Urik: [he may fuck others]
				say "shows you a lewd smile. 'I'd been wondering what you'd want to do with him. Just let me drop a few loads in there and he'll be a receptive little breeder in no time!'";
			say "[GregoryPlansMenu]"; [time to make a choice]
		else if "GregoryPlans_Offlimits" is listed in Traits of Urik: [no one is supposed to mess with Gregory]
			say "     'Don't worry, I'll keep my hands off him. I know you've got other plans for him, [UrikPlayerAddress]!'";
		else if "GregoryPlans_Recruit" is listed in Traits of Urik: [you want Gregory to join your tribe]
			say "     'This tribe really is something different entirely, isn't it? With all sorts of members, really. Hope Greg will appreciate the chance he's given when he wakes up and will join us!'";
		else if "GregoryPlans_Private Slut" is listed in Traits of Urik: [the half-wyvern soldier is yours alone]
			say "     'Don't worry, I'll keep my hands off him. I know he's your fuckpet, [UrikPlayerAddress]!'";
		else if "GregoryPlans_Couple Slut" is listed in Traits of Urik: [you want to make Gregory the special pet of both Urik and yourself]
			if PlayerFucked of Gregory is false: [no sex between Urik/Gregory/Player yet]
				say "     'Really looking forward to breaking him in together! You and me, together!' With that said, the orc leans in to slide an arm around you, pulling you close and giving you an enthusiastic kiss. Looks like he's pretty aroused and eager for action!'";
			else: [after sex between Urik/Gregory/Player]
				say "     'Man, I really didn't think something like this was in the cards for me anymore! Having a proper partner with whom you share everything - including your own private breeder! This tribe - and you - are just a dream!' With that said, the orc leans in to slide an arm around you, pulling you close and giving you an enthusiastic kiss. 'I love having threesomes with you! Let's do him again, soon!'";
		else if "GregoryPlans_Tribe Breeder" is listed in Traits of Urik: [anyone can have a go with the man, he'll be the communal sex toy of your tribe]
			say "     'Man, if we can find more studs like Greg, your tribe will be the best in the city! Both from guys flocking to us to have a share of great breeders like this, and all the orclings that'll come out of pounding him nonstop, hah!' Urik grins broadly at you as he says this, lowering a hand to stroke over his bulge.";

to say GregoryPlansMenu: [TODO: add Menu]
	project the figure of Urik_clothed_icon;
	say "     [bold type]What do you tell Urik you want to do with Gregory? (choose wisely, this will determine your future relationships)[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "He's off-limits sexually and should be treated well";
	now sortorder entry is 1;
	now description entry is "You really just wanted to save the guy from the fate of total transformation into another wyvern. Decide that he'll be off-limits to anyone (including yourself) - at a minimum until he wakes up";
	[]
	choose a blank row in table of fucking options;
	now title entry is "He's in your plans as a potential warrior recruit";
	now sortorder entry is 2;
	now description entry is "You want to turn the handsome hunk of a guy into a warrior tribesmember. Hopefully he'll be open for that";
	[]
	choose a blank row in table of fucking options;
	now title entry is "He's to be your private slut";
	now sortorder entry is 3;
	now description entry is "You'll lay claim to all of Gregory and want no one else to touch him";
	[]
	if "Private Breeder" is listed in Traits of Urik:
		choose a blank row in table of fucking options;
		now title entry is "He's to be your private slut (as a couple)";
		now sortorder entry is 4;
		now description entry is "You and Urik together will lay claim to Gregory";
	[]
	choose a blank row in table of fucking options;
	now title entry is "He's to be a fucktoy and breeder for all the tribe";
	now sortorder entry is 5;
	now description entry is "You want Gregory to be available to anyone who needs to dump a load - or ride a cock";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				let DoneTalking be false;
				now sextablerun is 1;
				if nam is "He's off-limits sexually and should be treated well":
					say "[GregoryPlan_Offlimits]";
				else if nam is "He's in your plans as a potential warrior recruit":
					say "[GregoryPlans_Recruit]";
				else if nam is "He's to be your private slut":
					say "[GregoryPlans_Private Slut]";
				else if nam is "He's to be your private slut (as a couple)":
					say "[GregoryPlans_Couple Slut]";
				else if nam is "He's to be a fucktoy and breeder for all the tribe":
					say "[GregoryPlans_Tribe Breeder]";
				wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";

to say GregoryPlan_Offlimits:
	say "     Telling Urik that Gregory is off-limits in 'that' regard, you draw a little bit of a frown and a disappointed grunt from Urik. The orc waits for a few seconds, studying your face as he does so, then says, 'Oh man, you're not kidding, are you? Damn! ";
	if "Private Breeder" is listed in Traits of Urik: [Urik's not supposed to touch anyone]
		say "I really thought you'd make our sleeping beauty a breeder for the tribe. Not that I'd have used him, with you and me being an item, but... would have been nice just to see folks breed him, or watch you take a turn too. And sharing a dude can be a great source of camaraderie, you know. A tribe that fucks together stays together, eh?' ";
	else if "Selective Breeding" is listed in Traits of Urik: [player decides whom he can fuck]
		say "And here I was, thinking you'd tell me to have a go at him, start the dude popping out orclings as a breeder for the tribe. Build up our numbers, and sharing a dude can be a great source of camaraderie, you know. A tribe that fucks together stays together, eh?' ";
	else if "Molestation Detox" is listed in Traits of Urik or "Stud" is listed in Traits of Urik or "Everything Goes" is listed in Traits of Urik: [he may fuck others]
		say "I really thought you'd make our sleeping beauty a breeder for the tribe. Kinda been itching to give him a go ever since we brought him back. And yes, I'd be nice, and have shared him proper with everyone else - learned that lesson the hard way, didn't I?' ";
	say "Making a long face, the orc scratches his neck, then does his best to shake the glum mood off. 'Oh well, nothing much more to be said about it then. You're the boss and what you say goes. Might turn out for the best in the end, I guess. It could be useful to have an only 'lightly used' soldier around for when the army finally makes a big push to retake the city. Could put in a good word for us, and all that jazz.'";
	add "GregoryPlans_Offlimits" to Traits of Urik; [no one is supposed to mess with Gregory]

to say GregoryPlans_Recruit:
	say "     Telling Urik that you do plan to recruit Gregory for your tribe, the orc's eyebrows rise, followed by thoughtful expression crossing his face. 'Mh - makes sense, now that you say it. Seems I'm a little too stuck in the 'orcs rule' mindset of the old tribe. With your setup being much more open for people's roles, and species I guess too, getting a hunk like Greg on the rolls will help us along nicely.' Scratching his bearded chin, Urik adds, 'I can have a word with him, once he wakes up. You know, soldier to soldier, with me having been in the army way back when. With his new looks, there's no way he can fit back into the fold, that's for sure, so joining an up and coming tribe like ours really will be the best for him.'";
	add "GregoryPlans_Recruit" to Traits of Urik; [you want Gregory to join your tribe]

to say GregoryPlans_Private Slut:
	say "     Telling Urik that Gregory is off-limits in 'that' regard because you're claiming him as your private fucktoy, you draw a little bit of a frown and a disappointed grunt from Urik. 'Mhh - can't say I blame you, [UrikPlayerAddress]. He's a sweet piece of tail, no doubt about it. ";
	if "Private Breeder" is listed in Traits of Urik: [Urik's not supposed to touch anyone]
		say "Not that I had designs to do anything with him anyways, with you and me being an item. Though would it be alright if I watched you have him? ";
	else if "Selective Breeding" is listed in Traits of Urik: [player decides whom he can fuck]
		say "Not that I'd have bred him without your say-so, of course. ";
	else if "Molestation Detox" is listed in Traits of Urik or "Stud" is listed in Traits of Urik or "Everything Goes" is listed in Traits of Urik: [he may fuck others]
		say "Kinda been itching to give him a go ever since we brought him back. ";
	say "Once we get some more tribesmembers, they'll watch with envy as you enjoy Greg. But that's the perks to being the boss, hah!'";
	add "GregoryPlans_Private Slut" to Traits of Urik; [the half-wyvern soldier is yours alone]

to say GregoryPlans_Couple Slut:
	say "     Telling Urik that Gregory is off-limits for the tribe in 'that' regard, you draw a little bit of a frown and a disappointed grunt from Urik. But then, you hook your hand behind his neck and draw the orc into a deep kiss before you add that he isn't a 'regular' tribesmember after all. The orc's eyes widen as you tell him that Gregory will be your private slut - and by 'you' you mean yourself, and your bug, muscly hunk of an orc partner. 'God, ending up with you is the best thing that could have happened to me!' Urik says excitedly, wrapping his arms around you to give you a close hug. You can feel his cock throbbing in anticipation, pressed together as you are right now.";
	add "GregoryPlans_Couple Slut" to Traits of Urik; [you want to make Gregory the special pet of both Urik and yourself]

to say GregoryPlans_Tribe Breeder:
	say "     Telling Urik that Gregory is going to be a breeder for the whole tribe, you draw a chuckle and a lewd smile from the orc. 'Yeah, he'll be one nice stud to breed! Just imagine those abs swelling with orcings. And sharing a dude can be a great source of camaraderie too, you know. A tribe that fucks together stays together, eh? ";
	if "Private Breeder" is listed in Traits of Urik: [Urik's not supposed to touch anyone]
		say "Not that I had designs to do anything to him, with you and me being an item. But a guy can look, can't he?'";
	else if "Selective Breeding" is listed in Traits of Urik: [player decides whom he can fuck]
		say "Really hope you'll tell me to take a turn sometime too! I'll put some nice orclings in him for you! Real warriors to fill the ranks of the tribe!'";
	else if "Molestation Detox" is listed in Traits of Urik or "Stud" is listed in Traits of Urik or "Everything Goes" is listed in Traits of Urik: [he may fuck others]
		say "Kinda been itching to give him a go ever since we brought him back. And no, I'd have shared him proper with everyone else - learned that lesson the hard way, didn't I?'";
	add "GregoryPlans_Tribe Breeder" to Traits of Urik; [anyone can have a go with the man, he'll be the communal sex toy of your tribe]

to say UrikTalk_Companion: [companion Urik]
	say "     As you offer Urik the chance to go out into the city with you, the orc livens up immediately, a grin instantly appearing on his face as he bellows, 'FUCK YEAH! Finally some action!' He flexes his arms in an impressive gun-show, then brings a balled-up fist into the palm of his other hand with a loud smack. 'Really hope you weren't kidding about that, [UrikPlayerAddress]! I'm ready to go, just say the word!' Smiling, you step closer to the orc, laying a hand on his arm and squeezing it in camaraderie. Reminding him that he's a powerful warrior that you want by your side makes the orc stand tall and proud. You've definitely earned a lot of respect from him with this.";
	say "     (Urik the supersized orc breeder is now a possible ally! You can make him your active ally by typing [bold type][link]ally Urik[end link][roman type] or [bold type][link]ally orc supersized breeder[end link][roman type] and initiate sex with him while active by typing [bold type][link]fuck Urik[end link][roman type]. You can see all the allies you have with the [bold type][link]allies[end link][roman type] command. Allies will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of an ally? Use [bold type][link]ally dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";
	now orc supersized breeder is tamed;

to say UrikTalk_Looting:
	if Urik is not booked and Urik is not bunkered:
		if Perception of Urik < 3:
			say "     You think about taking Urik up for a looting excursion, but then remember that the place he wants to go to is fairly close to the library. Also, he doesn't have his bag with him right now. Maybe take it up again when you're actually in the Grey Abbey Library.";
		else if Perception of Urik is 4:
			say "     You think about taking Urik up for a looting excursion, but then remember that he doesn't have his bag with him right now. Maybe take it up again when you're in the Grey Abbey Library to set out properly prepared.";
	else:
		if Perception of Urik is 1:
			UrikFirstLootingTrip;
		else if Perception of Urik is 2:
			UrikSecondLootingTrip;
		else if Perception of Urik is 4:
			UrikThirdLootingTrip; [BEER!]

to UrikFirstLootingTrip:
	say "     As you speak to Urik about his suggestion of a place that might be good for looting, a grin instantly appears on his face. 'Yeah! Let's go grab ourselves something nice!' Clearly eager to have some adventure with you, the orc rushes off to grab his big sports bag so he can be ready to lug anything you find back with you. 'Let's get going!' comes his shout from the front door moments later, showing his desire to be on the move. Walking up to join Urik, you grab his bicep and give it a squeeze, then meet the orc's gaze and tell him to lead on. The two of you set out down the middle of the street, with Urik strutting forward confidently by your side, taking care to never step ahead of you even as he points out which way to go and what corner to take. Along the way, you pass by various buildings and vehicles, a fair number in fairly abysmal conditions as they have been ransacked already. Yet there are also those that look mostly untouched, and others are fortified in a self-made fashion, indicating that someone or something is living there.";
	say "     'With so many people in this city originally, it's little wonder that a lot of places have been looted before. I mean, people gotta eat something!' your orcish companion brings up in casual conversation as you wander the mid-apocalyptic streets. He chuckles every time you encounter one of the more run of the mill feral creatures that live hereabouts, at which point most of them quickly turn around or duck out of sight. The combination of both Urik as well as yourself seems enough to scare many of them off. 'Weak little fucks around here,' the orc comments about a partially infected person wrapped in ragged clothing, who immediately scrambles under a wrecked car to hide. 'But even wretches like that will hit most promising locations once they get hungry. Unless there's something scaring them off...' Just moments after saying this, the two of you round a corner, with the sight ahead making you freeze in you steps. Urik clearly timed things for effect, you can tell from the tusk-bearing grin on his face.";
	WaitLineBreak;
	say "     The structure ahead of you is large and towers several stories above the main roadway it was created on, and is quite inhuman in its construction. Well, the things it was made of - cars, mainly - are human made, but they've been piled, stacked and twisted together and covered in a slimly-looking organic resin. The stuff must be fairly tough once dry, as it keeps the thing standing despite looking like it was thought up by an insane architect, with no thought for statics or support for the higher levels. Eyes wandering over the odd shape, you struggle to come up with a name for it. Organic tower? Slime-Car Tree? Then it hits you - that is a [italic type]nest[roman type], judging by the bulging clumps of numerous cocoons embedded in the crusty resin all over its shape. 'Some wyverns take a fair while to incubate their young,' Urik says with a grin, then raises his arm to point, not at the wyvern nest but past it. 'And that's where we're going!'";
	say "     Tearing your gaze away from the half-organic car tree, you spot the street forking off the repurposed main road, leading to a somewhat out of the way neighborhood on the other side. With a tree-flanked riverbed bending around the back side of it, there doesn't appear to be any way to reach it besides the direction you're coming from. 'Being anywhere close while they were building that thing would have been a bad idea - must have been several wyverns, and they'd have picked off anything that moved. Cars to use as material, and the people to stock their nest. But after, they just fuck off. Come on, let's get going - if one hatches while we're close, we can just punch it out. That's barely any danger at all!' That said, the orc grins broadly and sets out with you past the wyvern nest, eerie silence all around you. It is a somewhat awe-inspiring sight to see the huge thing up close, with those cars stick out at odd angles, from rusty trash to high quality sports cars. And in between those many large cocoons, some fairly human-shaped, others less so.";
	WaitLineBreak;
	say "     The tense moments pass as Urik calmly leads you down the road, eventually arriving at the entrance to the neighborhood beyond. It looks fairly peaceful, and quiet, with just some claw-grooves in the asphalt left as a reminder that things went quite different just a little while ago. An image forms in front of your mind's eye: Suburbanites setting out to go to work in their cars, with a flock of wyvern circling in the sky above. Then they swoop down, some just snatching up cars with claws digging into their roofs and lifting them. Some drivers are fast enough to react, forcing other wyverns to chase them, which they do in a ground-hugging flight, claws scraping the ground as they miss dodging cars, until they don't. Urik waits patiently for a little while, then clears his throat and waves his large green hand to indicate a whole row of buildings. 'Pick one, [UrikPlayerAddress]!'";
	LineBreak;
	say "[UrikLootChoiceMenu]";
	WaitLineBreak;
	say "     Exploring a little further, you sadly don't find anything else of any great interest, as regular 'valuables' don't help much in this kind of situation, so eventually, the two of you step outside of the building again. 'How about that one next? Got a good feeling about the color,' Urik says with a playful grunt, pointing at a house painted in a pale yellow tone. You give him the go-ahead and move over to Urik's pick, where the orc takes hold of the outside doorknob and pushes against it until you hear the low sound of splintering wood. [if ScaleValue of Player < 4]Seems like one doesn't kneed a crowbar if there's a large orc along for the ride. [end if]A short hallway lies beyond, with a door to the side. Urik checks it out and sees that it is just an empty restroom, followed by him walking down the hallway. Before the orc actually reaches the end, he steps on a floorboard that creates a very loud creak under his heavy steps.";
	say "     This causes a reaction in the room beyond, as you can see a blanket lying on the couch there stir, followed by a feminine shape raising her head and rubbing sleep-wary eyes. The young woman is of Asian descent and mostly human, if one ignores the double row of nipples down her pale-skinned front, as well as a pair of canine ears on top of her head. As she actually focuses on who's standing just a few steps from her, she lets out a frightened scream and jumps up from the sofa, knocking over a loaded laundry rack as she does so. The still-wet clothing must be everything she has, as the young woman isn't wearing anything to cover her fully naked, and very much pregnant, form. 'Oops,' Urik murmurs under his breath and starts walking up to the still screaming woman. He towers immensely over her and growls, 'Will you shut up already?' at which point she seems to freeze into panicked motionlessness. Urik reaches out to grab the woman's shoulder, but before he can actually do so, running steps of naked feet on hardwood floor herald the arrival of another person.";
	WaitLineBreak;
	say "     The newcomer is a somewhat further infected woman, bearing a fully canine anthro head, fur covering her arms and hand-paws. The rest of her is human, quite visibly so as she's naked, and she also bears the rounded belly bulge of early pregnancy. Besides that, her hands are clutching a long broom handle whose end has been sharpened to a point, holding it ready to jab into Urik's side. 'Keep your hands off Tuyen, asshole!' Urik snorts as he looks over at her, asking, 'And what do you think you can do with that toothpick?' Even though she's quite a bit shorter than the green brute, and about a quarter his weight, if that, the second woman doesn't shrink back from Urik, instead throwing words back at him, 'Touch my girlfriend, and you'll find out!' Eyebrows rising, the orc looks at her, his muscles tensing, followed by a loud guffaw as he laughs heartily. 'You got spunk, gotta give you that!' With that, the orc takes a step back, raising his hands demonstratively.";
	say "     The spear-wielding woman steps up to the first one, laying an arm around her. 'Shhhh, it's alright baby,' she says, giving the Asian-American a kiss on the cheek. Clearing his throat, Urik says, 'Well, I'm Urik, this is [if player is not defaultnamed][name of Player][else]my [UrikPlayerAddress][end if]. My bad about the door, I guess. Didn't think any of the people living down this street made it, what with the wyverns and whatnot.' Silence stretches out for a few seconds as the second woman glares at you, followed by a tiny shrug to herself. 'I'm Roxana, this is my girlfriend Tuyen. We're squatting here. Tuyen had regular babysitting gigs here before, so they gave her a key.' The first woman nods shily, then steps behind her girlfriend to hide. Roxana's grip tightens a little around her broom handle again, then she asks, 'What are you goin- Er, what will you try to do to us? We won't go back without a fight!'";
	WaitLineBreak;
	say "     Seeing the shared fur color on the nonhuman parts of these two, and given the fact that they're both pregnant to about the same degree, it's not too hard to guess what she means. 'Haven't been out much, eh? Or met any orcs before?' Urik asks after taking a deep breath. 'No, why-' Roxana starts, but Urik interrupts her, 'Fine then, let me tell you what's what! I'm an orc, and I don't give a flying fuck about whoever your baby-daddy is. I'm not a bounty hunter for some ass-hat either. And let me just say, neither of you are my type. Might look you up if you have sons with the same fire in them though, hah!' Roxana stares at him disbelievingly, and you can almost see the gears in her head spinning. 'Wait - what? You're saying you're gay? And what did you mean about my kids? That, that doesn't make sense. We're just... a little along. I'm sure that it'll be a while before this crazy pregnancy goes all the way, even with all the weirdness. And you better not try to put your hands on little kids, pervert!'";
	say "     Vehemently shaking his head, Urik replies, 'Oh, god no - man, you've really been living under a rock. There aren't really any kids around, girls! They grow up in a few hours!' As he says this, the two women look at each other with wide eyes, hands lowering to touch their bulging bellies. 'As for the other thing - yup, orcs are gay. All man on man action! Got a problem with that?' Urik asks Roxana, who rolls her eyes. 'Err, of course not. Didn't you hear me say girlfriend and all?' She demonstratively gives the other woman a squeeze as she says this. With a nod and a grunt, the orc pulls some of the food you found earlier from his bag, setting it down on the ground. 'Small apology for the door. You might want to push some furniture behind it once we leave, now that the lock is busted.' Then he gives you a hand sign behind is back, indicating that you should both leave.";
	LineBreak;
	say "     [link](1)[as]1[end link] - Offer them the chance to come with you.";
	say "     [link](2)[as]2[end link] - Give them some more food from your pack.";
	say "     [link](3)[as]3[end link] - Leave the house.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to offer them refuge in the library, [link]2[end link] to give them some more food, or [link]3[end link] to just leave.";
	if calcnumber is 1:
		LineBreak;
		say "     As you explain that you've got a safe camp in the Grey Abbey Library and the bunker underneath it, offering them the chance to find refuge there, Roxana bares her teeth and growls. Hand-paws squeeze her improvised spear tightly as she snarls, 'Fuck you! Think we're stupid enough to fall for that again? That's what Francisco said, before...' She is interrupted as Tuyen lets out a sob behind her when she hears the name. Roxana lets go of the spear with one hand to reach back and calm down her girlfriend, who clearly has been traumatized by the events that must have happened before. '[UrikPlayerAddress] wasn't lying, you know. But we'll leave you to think about it,' Urik says to the two of them, then backs out of the house together with you.";
		say "     After closing the door behind him, Urik shrugs his broad shoulders. 'Hm, I guess we should knock before in the future. I don't have any issues with having a good fight and earning some rewards for that, but taking anything those two might have had would be wrong.' He shrugs at not being able to explain it in more detail. 'Anyways, got a good haul for now, so how about we call it a day for the moment?' Nodding, you follow Urik back to the library, where he stashes away his part of the loot.";
		add "RoxanaJoinOffer" to Traits of Urik;
	else if calcnumber is 2:
		LineBreak;
		say "     You dig out some food from your own pack, adding it to what Urik placed on the ground. Roxana watches you with a suspicious expression on her face, which only softens a tiny bet as you and Urik withdraw afterwards, closing the entrance door behind you. Shrugging his broad shoulders, Urik says, 'Hm, I guess we should knock before in the future. I don't have any issues with having a good fight and earning some rewards for that, but taking anything those two might have had would be wrong.' He shrugs at not being able to explain it in more detail. 'Anyways, got a good haul for now, so how about we call it a day for the moment?' Nodding, you follow Urik back to the library, where he stashes away his part of the loot.";
		ItemLoss food by 1;
		add "RoxanaFoodGiven" to Traits of Urik;
	else if calcnumber is 3:
		LineBreak;
		say "     As staying here uninvited for much longer would probably just lead to a fight, you agree, walking out of the house and closing the door behind you. 'Hm, I guess we should knock before in the future. I don't have any issues with having a good fight and earning some rewards for that, but taking anything those two might have had would be wrong.' He shrugs at not being able to explain it in more detail. 'Anyways, got a good haul for now, so how about we call it a day for the moment?' Nodding, you follow Urik back to the library, where he stashes away his part of the loot.";
	now Perception of Urik is 2; [first looting trip finished]

to say UrikLootChoiceMenu:
	say "     [bold type]Which house do you want to loot?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if "Saber Urik" is not listed in Traits of Urik:
		choose a blank row in table of fucking options;
		now title entry is "Point at the big townhouse with the faux-marble columns next to its door";
		now sortorder entry is 1;
		now description entry is "";
	[]
	if "Picture House" is not listed in Traits of Urik:
		choose a blank row in table of fucking options;
		now title entry is "Pick the house with the nice veranda (complete with a swinging bench)";
		now sortorder entry is 2;
		now description entry is "";
	[]
	if "Prepper House" is not listed in Traits of Urik:
		choose a blank row in table of fucking options;
		now title entry is "The house with the flagpole out front sure is a good start";
		now sortorder entry is 3;
		now description entry is "";
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
			let nam be title entry;
			let DoneTalking be false;
			now sextablerun is 1;
			if nam is "Point at the big townhouse with the faux-marble columns next to its door":
				say "[UrikLoot_ColumnHouse]";
			else if nam is "Pick the house with the nice veranda (complete with a swinging bench)":
				say "[UrikLoot_VerandaHouse]";
			else if nam is "The house with the flagpole out front sure is a good start":
				say "[UrikLoot_PrepperHouse]";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say UrikLoot_ColumnHouse:
	LineBreak;
	say "     The orc nods to you as you make your choice, then moves towards the townhouse. As you walk over with him, you let your gaze sweep over the front yard, with its well-manicured rose bushes. Not a cheap house, that's for sure. Coming to stand in front of the door, Urik makes a fist and simply punches through the stained-glass centerpiece, feeling around a bit before he opens the door with the inside knob. As it swings open, you can hear an electronic beep start demanding urgent attention - it's an alarm system! 'Fat lot that's gonna do them now. Not like anyone will come answer that call,' Urik snorts, smashing the box on the wall with his fist to at least shut up the loudspeaker. ";
	if "CarryingGregory" is listed in Traits of Urik:
		say "The next thing he does is carefully lower Gregory onto the ground inside the building, leaving him free to explore without having to worry about the wyvern hybrid for now. ";
	say "Then you start going through the house, with the first point of interest being the kitchen, which turns out to be decked out in really nice granite countertops, and all sorts of expensive kitchenware.";
	say "     Sadly though, the huge fridge isn't battery-supported like the alarm was, so the prime quality organic foodstuffs that were in it have devolved into a disgusting sludge that makes your eyes water from the smell. The only thing that seems salvageable looks to be two unopened jars of Greek cheese cubes floating in oil. Urik quickly snatches them and stuffs them in his bag. Being driven out of the room to avoid that rancid stench in your nose, you pass through a dining room and into a family room with a large fireplace. 'Hey, these could be useful!' Urik says with a nod at the fireplace, where two cavalry sabers hang crossed over each other. He takes one down and draws it from its sheath, then tries it on one of the curtains in the room, easily cutting it down. 'They're really sharp! Not just decorations then.' Re-sheathing the saber, he moves up to you and presents it to you, smiling as you accept, then grabbing the other saber for himself and stuffing it in the bag.";
	add "Saber Urik" to Traits of Urik; [TODO: add mentions of this throughout his content]
	ItemGain cavalry saber by 1;
	ItemGain food by 1;

to say UrikLoot_VerandaHouse:
	LineBreak;
	say "     The orc nods to you as you make your choice, then moves towards the house with the veranda. It swings a little in the wind as you take up the steps onto the veranda, followed by Urik moving in to give the door a shove, easily breaking its lock. ";
	if "CarryingGregory" is listed in Traits of Urik:
		say "The next thing he does is carefully lower Gregory onto the ground inside the building, leaving him free to explore without having to worry about the wyvern hybrid for now. ";
	say "Beyond the entrance is a cozy family home, filled with lots and lots of pictures on the walls and available surfaces. Following the wall, you can literally trace all the steps of these people's life, from a smiling couple, to three children getting progressively bigger, then apparently moving out for college, with at least one having graduated. There are some pictures of the now elderly couple in various spots around the globe, followed by a portrait of the husband, smiling but also looking pale and with sunken cheeks. The further pictures after that point feature only the wife, almost always with a dog by her side, or one of her children.";
	say "     'Found something!' Urik's voice bellows from the next room, shaking you from your inspection of the picture wall. You go to take a look and find it being the kitchen. The fridge is standing open, being almost completely empty, but Urik has found a shelf with a row of dog-food cans lined up on it. 'Food is food,' he says with a shrug, taking them one by one and filling his bag with cans. As you look around a little more while he's busy, you spot a piece of paper lying on the counter. It is a shopping list, written in a very neat, almost calligraphic style of handwriting. Picking it up and letting your gaze sweep over the text without actually reading it, you idly wonder if the woman and her dog maybe were already out when things started going down here. She could have gotten up in the early hours, as old people often do, and been at the mall, or something.";
	ItemGain food by 1;
	add "Picture House" to Traits of Urik; [TODO: add a call-out to this in the mall]

to say UrikLoot_PrepperHouse:
	say "     The orc nods to you as you make your choice, then moves towards the house with the flagpole. As you follow him, you're momentarily puzzled by the grass around the building being very flat and groomed, with no strand out of position. That mystery is quickly solved though, as you see a little plastic vehicle roll into view. Walking over to it, you realize that it's one of those new automatic lawnmowers. The solar panels on top would explain how it is still running even with power out through most of the city. Hurrying your steps to catch up to Urik, you find the orc standing in front of a quite solid-looking door. It has already got a dent where the orc punched it, but apparently that wasn't enough to take the door down. Digging his fingernail under the broken wood and levering it up, Urik shows you why. 'It's reinforced, there's metal under here.' Taking a step back, he gives the door a closer inspection, knocks on the frame around it, then finally focuses his attention on the other side, where the hinges are. What follows ups a solid, forceful kick of his large green foot, bursting the material with a metallic crack.";
	say "     It takes two more kicks to break the other hinge, at which point Urik can force the door open to allow you entry. ";
	if "CarryingGregory" is listed in Traits of Urik:
		say "The next thing he does is carefully lower Gregory onto the ground inside the building, leaving him free to explore without having to worry about the wyvern hybrid for now. ";
	say "What lies beyond the entrance appears to be the house of a doomsday prepper, quite orderly and almost military in its layout. Well, except for the fact that about a dozen weapons have been removed from their stands, same as some boxy equipment that left dents in the carpet where it must have rested for quite a while. The kitchen cupboards have been hastily emptied of MREs and water bottles, but thankfully the owner of the house must have run out of space when he bugged out to wherever he thought he'd outlast the nanite apocalypse better. One section is still stuffed with good packs, which Urik presents to you with a broad grin. 'Jackpot!' He fills his bag with vacuum-sealed food packages, as do you.";
	ItemGain food by 5;
	add "Prepper House" to Traits of Urik; [TODO: add a call-out to this somewhere - maybe with Garth, asking him if it was his place]

to UrikSecondLootingTrip:
	say "     As you speak to Urik about another trip to go looting, a grin instantly appears on his face. 'Yeah! Let's go grab ourselves something nice!' Clearly eager to have some adventure with you, the orc rushes off to grab his big sports bag so he can be ready to lug anything you find back with you. 'Let's get going!' comes his shout from the front door moments later, showing his desire to be on the move. Walking up to join Urik, you grab his bicep and give it a squeeze, then meet the orc's gaze and tell him to lead on. The two of you set out down the middle of the street, with Urik strutting forward confidently by your side, taking the same route as before and arriving at the towering structure of the wyvern nest before too much longer.";
	say "     Looming several stories above the main roadway it was created on, the hybrid construction still gives you pause with its sheer size as your eyes fall upon it again. Dozens of cars, plus maybe a truck or two, stacked and twisted together in a wild jumble and covered in slimy-looking organic resin. You can't help but gape at the seemingly impossible structure that the giant beasts have created, with the hardened goop keeping it from collapsing even though there seems to have been little thought given to statics when assembling it. Eyes wandering over the odd shape, you count the bulging clumps of numerous cocoons embedded in the upper reaches. There's one or two that hang open and deflated, having released their occupants to bolster the wyvern population of the city. 'Nice of em to build big, eh? Keeps most of the other looters away, hah! Pussies!' Urik comments, giving your shoulder a friendly punch to show your camaraderie.";
	WaitLineBreak;
	say "     The two of you are partly around the half-organic car tree when the orc pauses for a second, glancing up at the wyvern nest. 'Hey, that one's new!' he comments, raising a muscle-packed arm to point at a camouflage-covered Humvee planted at the spot where a 'branch' of the structure splits. It looks pretty recognizable too, being far less gunked-up to stay attached than most of the other vehicles. Letting his gaze wander from the new car and studying the 'trunk' of the wyvern nest on this side, Urik throws you a look and wiggles his eyebrows. 'You thinking what I'm thinking? Could get some nice stuff out of that thing, I bet! Would be a waste to let it rot up there, or be covered up when they continue building. Your choice if you want us to go for it, of course [UrikPlayerAddress]!'";
	LineBreak;
	say "     [link](1)[as]1[end link] - Climb the wyvern nest with Urik and go poking around in the Humvee - what's the worst that could happen?";
	say "     [link](2)[as]2[end link] - You'll leave that to him. The orc can make the climb while you... err, hold lookout.";
	say "     [link](3)[as]3[end link] - Nope, literally climbing on a wyvern nest seems to be a really stupid idea!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go climbing, [link]2[end link] to let Urik do it, or [link]3[end link] to just continue on.";
	if calcnumber is 1:
		LineBreak;
		say "     As you agree with the orc to go climbing, Urik gives you a broad grin, setting one strong hand on your upper arm and squeezing it. 'This'll be fun!' he says eagerly, and the two of you set out towards the side of the alien-looking structure. Thankfully, it isn't actually that hard to find good handholds, as the dried resin is actually pretty easy to grip and hold on to, despite its slimy appearance. On top of that, the bits of cars that are sticking out of the gunk are ready-made to serve as a climbing wall too, and so you make good progress upwards. Urik's large size is a boon for the orc, as he can easily reach far-apart handholds and pulls himself up with superior strength. Therefore he's the first to reach the 'crown' of the car tree, where he stops to hold out a large arm to pull you up the last few feet.";
		say "     Standing on a slanted roof of a car in the upper reaches of the wyvern nest feels odd, surrounded by the strange architecture and with at least two dozen bulging cocoons in sight at various locations along the branches. Glancing out over the city, you actually have a fairly nice view, being roughly forty to fifty feet up from the ground. There is a lot of activity out there too, all sorts and shapes of creatures moving around in the distance - well, mostly fucking each other actually. Your sightseeing is interrupted as Urik moves on along one 'branch', with the metal of the gooped-together cars groaning under his weight, and you follow him towards the Humvee that is your target. The car looks fairly intact, if one ignores the deep gouges on the roof and the punch-marks where a wyvern dug its claws through the armored plates to hold and carry it here.";
		WaitLineBreak;
		say "     The lower bits of the car are smeared with goop, making it appear to meld with the rest of the nest in an organic fashion. This doesn't give Urik any pause though, as he simply steps up and grabs the door-handle, exerting enough force to break the resin that was holding the door trapped. Throwing it open for you to check out the interior, he climbs up on the hood to reach the other side of the car. As you get to checking out the inside of the car, you find a mess, to say it mildly. The air-lift by a giant flying reptile jostled everything that was in the car around quite a bit, and the left back window is completely shattered, so a bunch of stuff must have fallen out through that. Still, lifting a dented jerry-can out of the way, you feel around under the seat and pull a fresh medkit into view. Score! Continuing your exploration, a bunch of the stuff you find is sadly broken, dented or shredded in some degree or other. The glove compartment however is another win however, as it is stuffed with half a box of energy bars - and the tasty kind with chocolate too!";
		ItemGain medkit by 1;
		ItemGain food by 4;
		say "     By the time you've added the food to your backpack, Urik has wrenched up the slanted back hatch of the armored car, picking some stuff from back there to add to his own bag. Ducking down so he can meet your gaze, the orc then says, 'Climb over the car, you'll wanna see this one!' Following his suggestion, you move to join Urik behind the car, immediately seeing what he's referring to. A cocoon is protruding from the floor just beyond, looking more 'wet' than the material all around it. Your companion gives it a poke, showing you that it is actually still soft and squishy, with long strings of slime stretching away from the skin to Urik's hand before he wipes it off on the ground. 'Hasn't set fully yet. I think this might be one of the guys who was in the Humvee. So, what do you think? [bold type]Wanna open that thing up?[roman type]'[line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yeah, why not!";
		say "     ([link]N[as]n[end link]) - Better not...";
		if player consents:
			LineBreak;
			if "Saber Urik" is listed in Traits of Urik:
				say "     Pulling his cavalry saber from the sheath strapped to his back, Urik makes a shallow cut, about to foot in length, then slips his fingers into the gap and pulls the opening wider, revealing the shape curled up inside. ";
			else:
				say "     At first making a fist and moving as if to punch through the skin of the cocoon, Urik then thinks better of it and simply sets his extended index finger against the material, pushing into it. At first, then flexible goop just stretches, but then eventually it tears under the pressure, creating an opening that allows Urik to push more fingers in and start tipping it wider. Soon, this reveals the shape curled up inside. ";
			say "What lies before you in the slimy interior of the wyvern egg/cocoon is a recognizably human male, though there have been some changes and additions already. Looks like his clothing was either ripped away or dissolved in contact with the goop he was trapped in, so there's nothing left to the imagination as you let your gaze wander over him. It is a fit, muscular soldier, with the skin color a curious mix of Caucasian white over most of the body, and the earthy tone of a wyvern in other spots - like the outsides of his arm and hands, where the little finger and ring finger have been restructured to form the support of still modestly-sized bat-like wing membranes. His face has shifted partly towards forming a muzzle and two horns have sprouted above his forehead, leaving him in an interesting anthro-hybrid shape of a wyvern. And finally, the well-sized cock between his legs doesn't look all that human anymore, with a more pointy mushroom head and a series of interesting-looking ridges along the shaft.";
			say "     Stirring weakly, now that cold air is washing over him instead of the warmth of the slime, you can see the soldier breathing, still deep in his transformative stasis. Doesn't look like he'll wake anytime soon. Urik reaches down and takes hold of the dog tags that the man is still wearing around his neck - most likely them not being dissolved because they were made of metal. 'Gregory Russlan Jr.' he reads aloud, then glances up at you and asks, 'So, what do we want to do with him?'";
			say "[GregoryEggMenu]";
		else:
			LineBreak;
			say "     Shaking your head and telling him that this is a bad idea, you see a moment of disappointment flash over Urik's face before he accepts your decision. With nothing more to be done here, you start the climb back down soon after, eventually stepping back onto the smooth asphalt of the road. After that, you continue to walk towards the nearby neighborhood. With a tree-flanked riverbed bending around the back side of it, there isn't any way to reach it besides the direction you're coming from. 'Let's get looting then! Those little bitches we ran into last time surely would have barely made a dent in such rich pickings!'";
	else if calcnumber is 2:
		LineBreak;
		say "     As you tell the orc that he can go check it out by himself, Urik raises an eyebrow at you, seeming a little bit disappointed at the fact that you're not planning to join him. Then he shrugs to himself and gets moving, approaching the alien-looking structure and starting to climb on it. His large size is a boon in doing so, as the orc can easily reach handholds that are far apart and pull himself up with his superior strength. It is actually quite a sight to watch him move, muscles rippling under green skin, and with the round globes of his ass in full view. Eventually, he reaches the upper branches and you lose sight of him, mostly, only some movement and glimpses of his green shape visible. A few somewhat alarming noises follow, being the creak of metal under stress and soon a crunch of breaking resin.";
		say "     Some minutes later, Urik comes climbing down again, working his way along the side of the structure and finally stepping down onto the asphalt beside you. Reaching into the sports bag he has slung over his chest by a long strap, he pulls out an olive-green medkit with a big red cross on top of it. 'Brought you something, [UrikPlayerAddress]! Also, I found a fresh egg up there beside the Humvee - the wyverns must have picked that patrol off not long ago.'";
		ItemGain medkit by 1;
		say "     You accept Urik's gift and pack it away before continuing to walk towards the nearby neighborhood. With a tree-flanked riverbed bending around the back side of it, there isn't any way to reach it besides the direction you're coming from. 'Let's get looting then! Those little bitches we ran into last time surely would have barely made a dent in such rich pickings!'";
	else if calcnumber is 3:
		LineBreak;
		say "     As you tell him no, the orc warrior takes your decision amicably enough. Continuing to walk towards the nearby neighborhood, he shrugs his broad shoulders and comments, 'We could have taken the odd wyvern or two, even if they came back to check the nest out, but fine.' With nothing much more said, you approach the out of the way neighborhood on the other side of the main road. With a tree-flanked riverbed bending around the back side of it, there isn't any way to reach it besides the direction you're coming from. 'Let's get looting then! Those little bitches we ran into last time surely would have barely made a dent in such rich pickings!'";
	say "[UrikLootChoiceMenu]";
	WaitLineBreak;
	say "     Coming out of the house ahead of you";
	if "CarryingGregory" is listed in Traits of Urik:
		say " after picking up the limp form of Gregory once more";
	say ", Urik takes a few steps towards the next one, then suddenly pauses and raises his hand to draw your attention. 'Wait, there's something...' he says, letting his gaze sweep over your surroundings searchingly. Picking up a random piece of trash from the ground, the orc then suddenly flings it at the overgrown hedge bordering the neighboring house, which serves to drive the person watching you out of her hiding spot about ten feet to the left of where his throw hit. It's Roxana, the human-canine hybrid you ran into before. She's dressed in casual clothes this time, light enough to not quite hide the bulge of her pregnant belly. The young woman is armed with a somewhat improved spear now, as it has a kitchen knife duct-taped to the pointy end. 'Stop throwing shit at me!' she growls, looking at Urik with half-bared teeth.";
	say "     Urik chuckles and responds, 'Stop trying to stalk us then, little bitch! Say, you still holed up over there? Just tell us, or we might freak out your girl by kicking in the wrong door again!' The two of them stare at each other for a moderately long moment, before Roxana eventually grimaces and gives in. 'Yeah, fine! We're still in that house. Even with the front door busted thanks to a certain green asshole, it's the best place we got. Tuyen has the keys, so we're using the back door and we barricaded the front.' Nodding to her, the orc responds, 'There, that wasn't so hard, now was it? Remember, I got absolutely no interest in pussy, and whatever flaws I got, being violent to pregnant guys - or bitches - sure ain't it!' His last words put a puzzled expression on the young woman's face, and Roxana can't help but ask, 'Err - pregnant guys? What the fuck - no, wait. Don't tell me. All sorts of unnatural shit is happening, I don't need to know about it.' As she says this, she moves her gaze to look at her own furry forearms and the bulge of her very recent yet still visible pregnancy.";
	WaitLineBreak;
	say "     'Guess we've got our fill with looting for a while anyways, so we can leave little miss warrior bitch here to calm the fuck down, eh [UrikPlayerDon]?' the orc then asks you, and remembering the respect he seems to hold for actively child-bearing people, you give him a nod, earning a satisfied smile from him. Roxana still seems ready to defend herself, never letting her guard down even as Urik turns to go. Before you join him, you feel like you should say something...";
	LineBreak;
	say "     [link](1)[as]1[end link] - Offer them the chance to come with you.";
	say "     [link](2)[as]2[end link] - Leave some food for her and her girlfriend.";
	say "     [link](3)[as]3[end link] - Tell her to just say out of your way and you won't have problems.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to offer refuge in the library, [link]2[end link] to give some food, or [link]3[end link] to tell her to stay out of the way.";
	if calcnumber is 1:
		LineBreak;
		if "RoxanaJoinOffer" is not listed in Traits of Urik:
			say "     As you explain that you've got a safe camp in the Grey Abbey Library and the bunker underneath it, offering her and her girlfriend the chance to find refuge there, Roxana bares her teeth and growls. Hand-paws squeeze her improvised spear tightly as she snarls, 'Fuck you! Think we're stupid enough to fall for that again? That's what Francisco said, before...' Her words taper off, but it isn't hard to guess what she's referring to. Seems like despite your so far relatively amicable interactions, she can't help but be suspicious and hostile about that topic. The betrayal that caused her partial transformation, and pregnancy, must be sitting quite prominently in her mind. With a shrug you say she should think about it, then follow Urik back to the library, where he ";
			add "RoxanaJoinOffer" to Traits of Urik;
		else if "CarryingGregory" is listed in Traits of Urik:
			say "     Bringing up the option of both Roxana and Tuyen finding a refuge in the Grey Abbey Library and the bunker underneath it, Roxana looks at you suspiciously. 'Yeah, right! That plan might work better if your goon wasn't carrying around a knocked-out captive, you know!' You explain how you came to have Gregory along, freeing him from a wyvern cocoon and all that. It doesn't quite look like she believes you. With a shrug you say she should think about the offer it, then follow Urik back to the library, where he ";
		else:
			say "     Bringing up the option of both Roxana and Tuyen finding a refuge in the Grey Abbey Library and the bunker underneath it, Roxana looks at you suspiciously. 'You're pretty persistent about that. Not having much success in luring new victims to your lair, or what? We trusted someone once, and look where it got us!' With a shrug you say she should think about it, then follow Urik back to the library, where he ";
	else if calcnumber is 2:
		LineBreak;
		say "     You dig out some food from your own pack, making sure to use something that's in a closed package with a freshness seal so she can't accuse you of tampering with it. Telling Roxana that it's for both of them, you place it on the ground, meeting her suspicious gaze before turning to leave. Maybe you were imagining things, or maybe there was a little softening in her eyes just before you broke the line of sight. Still, nothing much more to be done now, so you follow Urik back to the library, where he ";
		ItemLoss food by 1;
		if "RoxanaFoodGiven" is not listed in Traits of Urik:
			add "RoxanaFoodGiven" to Traits of Urik;
	else if calcnumber is 3:
		LineBreak;
		say "     Meeting the young woman's gaze, you call out to her that she should just stay out of your way. Urik and you will be back for more looting eventually. She scoffs, then replies, 'Fine, but you better stay away from our place!' Nodding, you follow Urik back to the library, where he ";
		add "RoxanaStayAway" to Traits of Urik;
	if "CarryingGregory" is listed in Traits of Urik:
		say "lays down the limp form of Gregory on a sofa close to the one he has claimed himself, then stashes away his part of the loot. 'Don't worry about our sleeping beauty here. That nanite shit will keep anyone alive pretty much, and I'll keep an eye on him until he's ready to wake up.";
		now Gregory is in Sitting Area;
	else:
		say "stashes away his part of the loot.";
	now Perception of Urik is 3; [second looting trip finished]

to say GregoryEggMenu:
	say "     [bold type]What do you want to do with the unconscious man?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Rescue him from this place, now that you have interrupted the transformation";
	now sortorder entry is 1;
	now description entry is "Urik will have to carry the man";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Have a go at Gregory's ass before you leave";
		now sortorder entry is 2;
		now description entry is "Let Urik lift the unconscious man and hold him for you to fuck";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Roll Gregory onto his back and ride his cock before you leave";
	now sortorder entry is 3;
	now description entry is "Let the sleeping beauty fill you with his cum";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just leave him";
	now sortorder entry is 4;
	now description entry is "You were only curious about what would be in the cocoon";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			let nam be title entry;
			now sextablerun is 1;
			if nam is "Rescue him from this place, now that you have interrupted the transformation":
				say "[Gregory_Rescue]";
			else if nam is "Have a go at Gregory's ass before you leave":
				say "[Gregory_Fuck]";
			else if nam is "Roll Gregory onto his back and ride his cock before you leave":
				say "[Gregory_Ride]";
			else if nam is "Just leave him":
				say "[Gregory_Leave]";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say Gregory_Rescue: [Urik carries him]
	say "     As you tell Urik that you want to take the wyvern hybrid along, a broad smile crosses the orc's face. 'Nice! Just what I was thinking - with a body like this, soldiers like him really are prime breeding material! Just what a new orc tribe like yours needs!' With that said, he immediately steps up to the Humvee again, gathering up the shreds of uniform fabric within. 'Gotta wipe Greg down, if we want to make it down the tree with him. Too slippery otherwise...' While Urik is busy like this, you decide to just leave him his idea what will happen with Gregory for now - there'll be plenty of time for you to make up your mind about him anyways. The next ten minutes or so are a slimy but also fun time, rubbing the toned body of your new (unconscious) acquaintance down, in the course of which he gets a hardon, showcasing the fully erect state of his new inhuman member. Then finally, the orc gathers the man into his arms, holding him tight and secure against his chest.";
	say "     Together, you make your way back to the central trunk of the car-tree, at which point a new problem presents itself: how to get Gregory down to the ground while Urik needs his hands free for climbing. It takes a little bit of creative rearrangement of Urik's chest harness to make it serve for strapping the wyvern hybrid to Urik's chest, with you making doubly sure that the clasps are secure and straps tight against the limp form of the naked man. Thankfully, the actual climb down goes through without a hitch, at which point you find yourself standing on the smooth asphalt beneath the car tree once more. Getting busy to return Urik's harness to its intended shape, you wonder if the three of you should just return to the library straight away, but the orc waves you off confidently. 'Our sleeping beauty isn't actually that heavy, you know. I can carry him along, no problem! The infection must have given him hollow bones or something like that, to allow him to fly.'";
	WaitLineBreak;
	add "CarryingGregory" to Traits of Urik;
	say "     After tugging his chest straps back into position, the orc warrior lifts Gregory with casual ease, hanging him over his shoulder and just holding on with one large hand planted on his naked ass. 'See? Easy to carry this boy!' With nothing much more said, you approach the out of the way neighborhood on the other side of the main road. With a tree-flanked riverbed bending around the back side of it, there isn't any way to reach it besides the direction you're coming from. 'Let's get looting then! Those little bitches we ran into last time surely would have barely made a dent in such rich pickings!'";
	now HP of Gregory is 1; [brought to the library]

to say Gregory_Fuck: [player humps his ass before leaving]
	say "     Telling Urik that you want to pump your load into the hunk he's found for you puts a broad grin on the orc's face. 'Sure thing, [UrikPlayerAddress]! Too bad he's still out for the count though - it's more fun when they're a bit lively and can hold a position you put em in.' As he says this, you pat one of his thick, muscular arms, going on to say that he can help you with that. The orcs eyes widen and he chuckles, then leans over the opened cocoon to scoop out the naked hybrid. 'He's fucking slippery all over,' Urik adds as he man almost escapes his grasp several times. By the time he's got the transformed soldier in a secure grip, with his back pressed against Urik's broad chest and his legs spread invitingly, [if player is not naked]your clothes and gear have come off and [end if]you're ready to have some fun, with your hard [cock of player] dick in hand. Stepping up between Gregory's legs, you let your fingers slide over his slick skin, squeezing his buttocks and feeling for the wrinkled opening between them.";
	say "     Using the wyvern goop as lube, you push a slimed-up digit against the soldier's pucker, finding it very tight and slow to allow you entry. As you sink your finger deeper into Gregory, you meet Urik's eyes and tell him that you scored a virgin, which puts a smile on his face. 'Fuck yeah, that's hot! I can tell you, back in my day in the force, I'd have approached a hunky dude like him in a heartbeat. All stealthy-like, behind closed doors, you know. Can't think it's gotten much different these days, with more lax rules. If Greg here hasn't had dick yet, he must be straight - or a top. Not that that'll matter much in a moment, eh?!' Chuckling together with Urik, you decide to reach under the man the orc is holding as if he's a living sex sling, soon feeling the big bulge of Urik's cock straining against the material of his shorts. Hooking your fingers over the rim of the garment, you pull it down and free Urik's erection, swinging up to slap the small of Gregory's back.";
	WaitLineBreak;
	say "     As much fun as bonding with Urik through the naked man held between you is, your desire to feel Gregory's hole around your dick soon dominates your thoughts. Recognizing your lusty expression, Urik lifts his burden to just the right height for your crotch, letting out an amused grunt. You gather up a handful of wyvern goop from the half-transformed soldier's abs, using it to lube your shaft, then set it against his opening. Thanks to your fucktoy being unconscious, you're free to go as fast as you want, and so it is with an urgent, forceful thrust that you take Gregory's virginity, burying yourself into his tight squeeze of a hole. Even without any muscle tension, his asshole clamps down tightly around your erection, being forced to stretch by your girth. A subconscious grunt escapes the man's lips as you sink deeper and deeper into him, then finally bottom out.";
	NPCSexAftermath Gregory receives "AssFuck" from Player;
	say "     'If our sleeping beauty doesn't wake up from that, I don't think he will no matter what you do. Go on, pound that hunk!' Urik comments with a grin, and you do just that, starting up a rapid series of deep thrusts that make your hips slap wetly against Gregory's slime-dripping rear. With Urik there to push back against even your hardest slams into the unconscious man, and him also moving Gregory to meet your incoming cock like an oversized fleshlight, the sex is even better than you imagined beforehand, driving your libido to new heights. It doesn't take all that long before the no-holds-barred pounding pushes you over the edge, erupting deep into your hybrid fucktoy, eyes closed as you focus on the sensations around your cock. When you open them again, your gaze meets the orc's and for a second, both of you seem almost spellbound - then he grunts loudly, making you realize that the large man has been slowly humping against his burden all this time, and that he's about to come from that.";
	say "     ([link]Y[as]y[end link]) - Kiss him.";
	say "     ([link]N[as]n[end link]) - Tell him to come for you.";
	if Player consents:
		LineBreak;
		say "     Stretching yourself, you meet the orc's lips with your own, surprising Urik with a kiss, followed by your tongue darting into his mouth. The sudden intimacy seems to be just what he needed to push him over the edge that last little step, and even as you make out, his thick orc cock erupts, painting Gregory's lower back white and splashing cum between your legs and onto the insides of your thighs. You continue to snog with your big, strong companion all throughout his orgasm, sharing the moment with him and strengthening the bond between the two of you. ";
	else:
		LineBreak;
		say "     Putting on a commanding voice, you tell the orc to come, which gives him the last little push needed to erupt in orgasm, painting Gregory's lower back white and splashing cum between your legs and onto the insides of your thighs. You keep eye contact with your big, strong orc companion all throughout his orgasm, sharing the moment with him and strengthening his bond to you even further. ";
	say "Finally, after Urik shoots his last spurts of cum and slowly winds down, you allow your own softening cock to slip out of your fucktoy, adding a little bit more to the overall mess with some of the cum you pumped into him dripping from the transformed soldier's ass.";
	say "     Squeezing Urik's bicep with one hand, you tell the orc that you had a lot of fun doing this with him, but that he should put the hybrid wyvern back where you found him. He was a nice tight hole to breed with your load, but you don't really want to be burdened by carrying him along. Sated and content as he is, the orc follows your instructions without a second thought, lowering the transformed solder back into his opened cocoon. Then the two of you clean up as good as you can, wiping each other down with the remains of several uniforms you from the interior of the Humvee. Eventually, you leave the military vehicle behind, and soon after the two of you have climbed back down to the base of the towering wyvern nest. Then you continue to walk towards the nearby neighborhood. With a tree-flanked riverbed bending around the back side of it, there isn't any way to reach it besides the direction you're coming from. 'Let's get looting then! Those little bitches we ran into last time surely would have barely made a dent in such rich pickings!'";
	add "GregoryUsed_Unconscious" to Traits of Urik;
	now HP of Gregory is 98; [player fucked Gregory]

to say Gregory_Ride: [player rides his cock before leaving]
	say "     Telling Urik that you want to tell Gregory's dick inside you puts a smirk on the orc's face. 'Feeling adventurous, eh [UrikPlayerAddress]?' the orc comments, throwing a glance at the wyvern hybrid's member. Then he reaches into the opened cocoon, trying to roll the man onto his side to prepare him for you. 'He's fucking slippery all over,' Urik adds as he man almost escapes his grasp several times. By the time he's got the transformed soldier finally a little bit more stretched out, and on his back, [if player is not naked]your clothes and gear have come off and [end if]you're ready to have some fun, rubbing your [if player is female]eager pussy[else]hungry hole[end if] with one hand.  With Urik helping by bracing you as you climb into the opening, you enter the slick cocoon/egg that housed the soldier. Thankfully there is enough room for both of you to move against each other, on one hand because Gregory was clearly meant to grow a bit in his transformation, and also as you're still halfway sticking outside.";
	say "     As you crouch over the unconscious man, sinking into the wyvern goop that he was marinating in, you're surprised to feel that it is actually warm and comfortable on your skin. Something about being surrounded by the flexible shell seems to be keeping the slime at a comfortable body-temperature. But then, you're here for something more than just an unconventional 'bath', so you reach down and stroke the half-transformed soldier's cock with eager hands. He is quick to react to your stimulation, readily hardening in your hand and filling your grasp quite nicely. Though no longer human in shape, his erection is still close enough for comfort, with the somewhat more pointy shape and ridged underside promising a good time. As Gregory is literally soaking in what might almost be called lube, you don't have to wait one second longer to experience it either, simply lining your [if player is female]needy sex[else]back door[end if] up with his shaft and sinking down over it.";
	WaitLineBreak;
	say "     As you feel Gregory's wyvern cock slip [if player is female]between your nether lips[else]past your pucker[end if] and penetrate you deeply, you can't help but throw your head back in a full-throated moan, eyes closing as you concentrate on the full sensations he wakes in you. Those little ridges feel so very good against your inner walls, as well as when you slide back up on the hard shaft, sawing softly against your opening. Up and down you go, riding the handsome half-man at your own pace, when you hear a grunting sound and open your eyes to see what's going on: It came from Urik, standing tall right next to the cocoon with his green cock in hand. Seems he got turned on by seeing your naked form gyrating on the hybrid male, or maybe he's imagining himself in your position, being the one feeling a hard shaft. Looking up at the orc and meeting his eyes, you almost seem to combine arousal with each other for a moment, spurring you on to rock ever more energetically against the glorious dick inside you.";
	say "     Urik isn't unaffected by the sensation either, his hand moving faster up and down along his shaft. This sends the trickle of pre-cum welling up from his cum-slit flying every which way in the form of droplets, drawing slimy trails behind themselves. Judging from the growing volume of his grunts, and the way you can see his balls pulling up, you'd say that he's getting quite close too. ";
	if player is male:
		say "Reaching out to grasp his dickhead in your fingers, you only have a second to decide where you want to aim that thing:";
		say "     ([link]Y[as]y[end link]) - Gregory.";
		say "     ([link]N[as]n[end link]) - Yourself.";
		if Player consents:
			LineBreak;
			say "     Pulling the orc's cock down just as it starts to throb, you watch the first heavy splurge of his rich seed strike the wyvern hybrid's chest, painting a white splotch onto it. Then another and another spurt follows, continuing to cover Gregory in Urik's cum. Seeing your orc companion reach his climax and literally feeling him erupt with your hand on his dickhead, you grind your crotch against your unconscious sex toy with even greater urgency, eager to join Urik in his pleasure. As you do so, a new sensation suddenly fills you - the pulsing of Gregory's cock, blasting a first gush of cum deep into your [if player is female]pussy[else]asshole[end if]! With Urik making quite a bit of noise, panting and grunting as he comes, you didn't notice the soldier's breath quickening, making it a bit of a surprise to be filled by his load all of a sudden. A laugh bubbles up inside you as you squeeze your insides tight around his erection, with the feeling of being bred by this man without him even knowing it finally driving you over the edge.";
		else:
			LineBreak;
			say "     Pulling the orc's cock down just as it starts to throb, you feel the first heavy splurge of his rich seed splash against your chest, painting a white splotch onto it. Then another and another spurt follows, continuing to cover yourself in Urik's cum. Seeing your orc companion reach his climax and literally feeling him erupt with your hand on his dickhead, you grind your crotch against your unconscious sex toy with even greater urgency, eager to join Urik in his pleasure. As you do so, a new sensation suddenly fills you - the pulsing of Gregory's cock, blasting a first gush of cum deep into your [if player is female]pussy[else]asshole[end if]! With Urik making quite a bit of noise, panting and grunting as he comes, you didn't notice the soldier's breath quickening, making it a bit of a surprise to be filled by his load all of a sudden. A laugh bubbles up inside you as you squeeze your insides tight around his erection, with the feeling of being bred by this man without him even knowing it finally driving you over the edge.";
	else:
		say "The orc aims his cock down just as it starts to throb, and you watch the first heavy splurge of his rich seed strike the wyvern hybrid's chest, painting a white splotch onto it. Then another and another spurt follows, continuing to cover Gregory in Urik's cum. Seeing your orc companion reach his climax, you grind your crotch against your unconscious sex toy with even greater urgency, eager to join Urik in his pleasure. As you do so, a new sensation suddenly fills you - the pulsing of Gregory's cock, blasting a first gush of cum deep into your [if player is female]pussy[else]asshole[end if]! With Urik making quite a bit of noise, panting and grunting as he comes, you didn't notice the soldier's breath quickening, making it a bit of a surprise to be filled by his load all of a sudden. A laugh bubbles up inside you as you squeeze your insides tight around his erection, with the feeling of being bred by this man without him even knowing it finally driving you over the edge.";
	say "     With a breathless shout, you orgasm[if player is herm], femcum gushing out around Gregory's erection and streaks of your own cum joining Urik's load in painting a wild pattern on the transforming soldier's chest[else if player is female], femcum gushing out around Gregory's erection[else if player is male], streaks of your own cum joining Urik's load in painting a wild pattern on the transforming soldier's chest[end if]. Continuing to ride the man wile you experience the high to the fullest, your energy ebbs eventually, at which point you sink down onto Gregory, bracing against his chest just to catch your breath. As you do so, with some more of the warm wyvern slime sliding down the cocoon's walls and covering your sides, you somehow feel that this could be just the place to rest a bit. Just laying down some more, curling up with Gregory in a warm, protected shell... then suddenly, a strong arm slides underneath your chest and you're lifted out of the cocoon, dripping cum and slime. Urik pats you on the cheeks, left and right, looking at you closely as he holds you up. 'Sorry, [UrikPlayerAddress]. Seemed like you were about to join him incubating or something. Guess now we know why he's still out even after all this, hah!'";
	WaitLineBreak;
	say "     Sitting you down on the ground for a moment, the orc goes to grab any shreds of fabric he can find in the Humvee, then gets to work wiping you (and his arms) down. By the time you're thinking a bit more clearly again, you thank your orc companion for watching out for you, then collect your [if player is not naked]clothes and [end if]gear from where you dripped it earlier. After that, you and Urik climb back over the Humvee, with the two of you soon having climbed back down to the base of the towering wyvern nest. Then you continue to walk towards the nearby neighborhood. With a tree-flanked riverbed bending around the back side of it, there isn't any way to reach it besides the direction you're coming from. 'Let's get looting then! Those little bitches we ran into last time surely would have barely made a dent in such rich pickings!'";
	if Player is female: [pussy available]
		NPCSexAftermath Player receives "PussyFuck" from Gregory;
	else:
		NPCSexAftermath Player receives "AssFuck" from Gregory;
	add "GregoryUsed_Unconscious" to Traits of Urik; [TODO: Call up an event where he remembers this and the player can then set further rules - like "don't molest friends, but others are fine" or "things are different out in the city, gotta make a name for yourself"]
	now HP of Gregory is 99; [player rode his dick]

to say Gregory_Leave: [just leaving him behind]
	say "     As you tell Urik that you've seen enough and to just leave the wyvern hybrid behind, the orc looks at you with a nonplussed expression. 'But - but he's prime breeding material! Don't you want that stud for your new tribe?' Telling him not to argue with you, you wave Urik towards the way you came from, and he finally turns his gaze away from the unconscious man and climbs back over the Humvee. You follow him without a glance back, and soon after the two of you have climbed back down to the base of the towering wyvern nest. Then you continue to walk towards the nearby neighborhood. With a tree-flanked riverbed bending around the back side of it, there isn't any way to reach it besides the direction you're coming from. 'Let's get looting then! Those little bitches we ran into last time surely would have barely made a dent in such rich pickings!'";
	now HP of Gregory is 100; [left behind in the cocoon]

to UrikThirdLootingTrip:
	say "     As you speak to Urik about another trip to go looting, a grin instantly appears on his face. 'Yeah! Let's go grab ourselves some good beer!' Clearly eager to have some adventure with you, the orc rushes off to grab his big sports bag so he can be ready to lug anything you find back with you. 'Let's get going!' comes his shout from the front door moments later, showing his desire to be on the move. Walking up to join Urik, you grab his bicep and give it a squeeze, then meet the orc's gaze and tell him to lead on. The two of you set out down the middle of the street, with Urik strutting forward confidently by your side. Pulling out a yellow piece of paper and unfolding it as you reach a big intersection, he looks down on it and says, 'So, which way first? 'Mallon Sap Brews' is that way, towards the capitol. 'Henry's Hammer Brewery' to the north. Must be close to the grassland then.'";
	say "     [bold type]Which way do you want to go?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Travel to the capitol district to check out 'Mallon Sap Brews'.";
	say "     [link](2)[as]2[end link] - Travel towards the dry plains to check out 'Henry's Hammer Brewery'.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go to 'Mallon Sap Brews', or [link]2[end link] to go to 'Henry's Hammer Brewery'.";
	if calcnumber is 1:
		LineBreak;
		say "     After making the decision, the two of you set out through the streets of the inner city, having to follow a winding path as some areas are too overrun with infected and dangerous in other ways. For example, neither of you is willing to come anywhere near the seemingly placid pool of silvery liquid taking the place where a section of road and three buildings once were. Better to make a big circle around weird stuff like that. Thankfully, individual infected or even small groups that you run into on the way avoid people traveling together, especially if there is an orc involved, so you do not actually have to fight anyone on the way. When the capitol building comes into view in the distance, along with the columns of rising smoke from the volcano, Urik clears his throat. 'We're getting close, I think. Do you see any street signs?'";
		say "     Weirdly enough, something seems to have removed pretty much all of the signposts along the roads. A closer inspection of the remaining stumps shows that they were... gnawed off, with deep gashes in the metal from sharp teeth. After spending some time in a fruitless search, Urik gets frustrated and eventually starts going door to door, hammering against them with his large green fist. The third door he tries is opened after a moment, with a somewhat bedraggled-looking young woman half-hiding behind the wood. She's mostly human, but with tiny, shimmering scales covering half her neck and continuing down past the neckline of her clothes. 'P-please don't break in, Mr. orc-ssir! Without the door, I'd be helpless against anyone coming over to - to...' She gulps instead of saying the words, teary-eyed as she waves down the narrow hallway behind her. 'I-I don't have much to take. And... I know that it's better to submit. Do you want me to... p-please you and your friend?'";
		WaitLineBreak;
		say "     Urik grunts in what almost appears to be embarrassment at the terrified young woman's stuttered words, then barks out, 'STOP! Shut up for a moment!' The woman twitches as if he had struck her, looking wide-eyed at the orc. 'What's your name, girl?' Gulping, she replies, 'A-abigail. Sir.' Urik nods at her to acknowledge her words, then clears his throat and goes on to say, 'We don't actually want any of your shit, and you can keep your knickers on! Now, be a good girl and tell me where the fuck the brewery is that is supposed to be somewhere around here!' She gapes at him, blinks, then blinks again before finding her voice, 'I - um, err... down the street to the end, then left, then second on your right.' 'That's all we need from you. Shoo, lock yourself in again. Oh, and you might want to know that orcs have no real interest in pussy.' With that, Urik turns away from her and starts to follow her directions, with the building's door being hastily closed a second later.";
		say "     Now that you know the way, it doesn't take long to reach the brewery you've been searching for, which occupies an old brick building, complete with a quite artistic door-sign showing a large tree and the words 'Mallon Sap Brews'. 'Finally!' Urik grunts as he strides up to the entrance, trying the handle and finding it locked. 'Hasn't been broken into yet. Good sign,' the orc adds, then twists the handle with sudden, overwhelming force, creating a mixed sound of squealing metal and breaking wood. Striding into the building, he jovially exclaims, 'Let's see about those microbrews now!' You follow him into an abandoned reception area, where Urik immediately goes to check out a display vitrine that holds several bottles of beer. Casually smashing the glass, he reaches inside and grabs two of them, flicking the bottlecaps off with his thumb and handing you one. Taking a thirsty swig, the orc grins broadly and lets out a satisfied belch. 'Yeah, that's good stuff!'";
		WaitLineBreak;
		PlayerDrink 6;
		addAlcPoints 1;
		ItemGain TodtGrains Beer by 3;
		say "     While you collect the remaining three bottles and are busy packing them away, Urik steps up to the 'Staff Only' door that leads deeper into the building, pushing it open easily despite a lock trying to resist. Just as you are zipping the backpack a moment later, the angry shout of 'Motherfuckers!' comes from the other room. You quickly follow Urik, finding yourself in a moderate to large room, with some interestingly-shaped copper vats taking up half of the available space. There are stacks of boxes with empty bottles, a bottling line, the open door to an office, and another open door, mostly blocked by Urik's broad-shouldered frame. Past him, you can barely make out the word 'storeroom' on a sign. Walking up behind the orc, you join him at the door to the storeroom, who's staring angrily at the empty room, complete with a large, gaping hole in the middle of its ground. Looks like someone cleaned the place out!";
		say "     Unwilling to give up this easily, Urik moves to the hole and looks into it, then jumps in - which still leaves him visible, as it's only about as deep as his nipples. He's got to crouch and duck his head to be able to look into the tunnel leading off into the dark, far too small for someone as large as him to fit into comfortably, unless he crawls on all fours. A moment later, when his eyes get somewhat used to the darkness in the hole, Urik reaches out and grabs something, then stands up again. He's holding a pick-axe, complete with a half-broken wooden handle. It looks pretty ancient, and has some etched patterns along the metal head. 'The fuck?! I think this place was raided by dwarves or some shit!' In the aftermath of the disappointing find, you confirm that there is no drop of beer left in the building besides what you already grabbed. Cursing under his breath, Urik says, 'Let's hope we've got more luck at the other place!' And with that said, trace your steps back to the intersection where you were before.";
		WaitLineBreak;
		TraitGain "Abigail_Met" for Urik;
		TraitGain "Dwarven Beerstealers" for Urik;
		say "[Henry_Brewery]";
	else:
		LineBreak;
		say "[Henry_Brewery]";

to say Henry_Brewery:
	let SecondBrewery be false;
	if "Dwarven Beerstealers" is listed in Traits of Urik:
		now SecondBrewery is true;
	say "     Setting out through the streets and moving away from the inner city, your route leads you to crest a small-ish hill, from which you can already see the expanse of the dry plains in the distance, flat grassland having displaced most of the buildings that once lay in that direction. It's still a fair bit off to the beginning of the grass though, with blocks and blocks of buildings ahead. 'Really hope our brewery wasn't eaten by the grassland. [if SecondBrewery is true]Or raided by some assholes like those fucking dwarves! [end if]Damn waste of time if it was!' Urik says, trying to suppress his apprehension at the possibility of failure. The trip moving towards your destination is thankfully relatively quiet, with few creatures out and about right now. Who knows why, but you're certain not to complain about having an easy time traveling.";
	say "     'Should be getting close now,' Urik says, glancing up at the street-signs on a pole as he is taking a turn around the corner of a block. This almost leads to him running someone down, as a man coming the other way is right in his path and has to jump aside so he doesn't face-plant against Urik's muscular chest. Studying the person that almost collided with your orc companion, you see that he's a somewhat scruffy and lanky canine, maybe an anthro dingo or so? The guy is dressed in shorts and a t-shirt, with an open beer-bottle in his hand, bearing a label depicting a large black man with a mighty hammer and the word's 'John Henry's Finest'. Urik spots the latter at just about the same time as yourself, at which point he pounces and grabs a large handful of the dog-person's shirt, preventing him from running away and half-lifting him into the air. 'Seems we've got competition! Where did you loot that beer?!' the orc starts to interrogate the man, who stares in fright at the towering muscle-hunk before him. 'I didn't!? Let go of me, I traded for this!'";
	WaitLineBreak;
	say "     Urik blinks in surprise, lowering the dingo back onto his own feet. 'Wait, what? Are you saying the brewery is still open? Where is it?!' The canine replies, 'Yeah, duh! Down the street and left. Now let go, that's my last clean shirt!' Urik releases the dog and watches him run off, then shrugs and moves forward, following the directions given. Some minutes later, you round another corner, at which point you see a mid-sized building just a few doors down the road, complete with a stylish sign that reads 'Henry's Hammer Brewery'. A small line of people is standing before its entrance, most of which are holding some sort of trade goods in their hands. They give you apprehensive looks as Urik's towering shape walks towards them, with one or two deciding to give up their spots in line and dashing off with their possessions clutched tight.";
	say "     Getting closer to the building, you can see a handwritten sign next to the door, listing trade-in prices for various items, given in bottles of beer. Besides that, one other thing you notice is that there are some strands of yellow-ish grass swaying in the wind in a few spots of the road, apparently having grown in spots where it was damaged - or possibly burst through the paving - one of those two options. Further along the road, and actually fairly close (you'd guess less than 100 feet ahead) lies the start of dense grassland, with only a few ruins sticking up from it to bear witness that all that was once part of the city. Urik steps up behind the last person in line and clears his throat loudly, with the anthro toad in question turning around to look at him with large, globular eyes and a sour expression. 'I was here first, you got to wait,' the squat being says to Urik. With their clothing being stitched together from different pieces to fit a rather broad frame, you can't tell at all what gender they might be. Either way, the toad lets out an unimpressed huff as Urik makes a fist and flexes his muscles dominantly.";
	WaitLineBreak;
	say "     'If you try anything, I'll mess you up! I'm poisonous, you know!' the toad says defiantly, wagging a gloved hand at the orc. Urik opens his mouth to reply - at which point a pandemonium of noise crashes over everyone, coming from within the building. Some sort of heavy impact starts the racked, followed by the sounds of falling and shattering bricks, screams, pained shrieks, grunts and shouts of multiple people, all mixed together so one can't understand any single thing. Everyone in line is still getting over their shock when the scream of tortured metal is added to the ongoing noise, then suddenly is interrupted just as someone lets out a deep, strained grunt. Before anyone can really think better of it, the group standing in line - including you and Urik - rushes through the door of the building, gaping at what awaits all of you inside:";
	say "     The brewery is a mid-sized building with open floor-plan, brick walls and concrete roof held up by steel girders, with a long I-bar set as a column to support the center of the roof. The most obvious issue before you is that the back wall barely exists anymore, having a behemoth-sized hole in it. Which isn't surprising, as said behemoth is currently getting up from the crumpled pile of metal that remains of a brewing vat he landed on. An aggressively bellowing, enormously giant bull is about to step through the hole to follow his opponent and continue the battle that launched the beast through the wall. More to the foreground of the scene are several people of various infections who must have been here to trade, all more or less injured by flying bricks, with some even unconscious on the ground, leaking blood. And to cap it all off - the support column for the roof has a severe buckle in its previously straight, load-bearing shape and looks ready to snap under the stress. Seems like the behemoth impacted it with an arm or leg during its flight. The roof is sagging alarmingly, and might already have collapsed if there wasn't a quite big anthro Hercules beetle holding onto the brace, visibly straining to keep it standing with two large arms. He calls out, 'Some help, please!' waving at the injured with a smaller, second pair of arms.";
	project Figure of Henry_soft_icon;
	WaitLineBreak;
	say "     The people ahead of you rush forward, but while the toad actually grasps one of the unconscious people under their armpits and starts to drag them outside (being careful to only touch with their gloved hands), several others literally step over wounded to rush to a pile of trade goods and filled bottles. 'Hey, leave that alone! And help the wounded!' the beetle shouts in obvious shock at what he sees, yet unable to stop holding up the roof himself. A pained shriek from the back of the room tells the tale of the behemoth attempting to claw its taurus opponent's eyes out, which prompts two of the opportunistic looters to peel off and rush an emergency exit in the side wall, arms full of their ill-gotten goods. Urik wades into the room and hefts two people up under his arms, rushing them outside.";
	say "     [bold type]Meanwhile, you...[roman type][line break]";
	say "     [link](1)[as]1[end link] - Take more wounded to safety!";
	say "     [link](2)[as]2[end link] - Holler and shout as you run towards the fighting creatures in the back!";
	say "     [link](3)[as]3[end link] - Help brace the roof!";
	say "     [link](4)[as]4[end link] - Get out of there. This is a lost cause!";
	say "     [link](5)[as]5[end link] - Call Urik to your side and loot what you can!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 5:
		say "Choice? (1-5)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to evacuate, [link]2[end link] to rush the creatures, [link]3[end link] to help brace the roof, [link]4[end link] to flee in panic or [link]5[end link] to loot.";
	if calcnumber is 1:
		LineBreak;
		say "     Rushing to grab one of the unconscious buyers, you drag them outside, then go in again to evacuate of another. Between the toad, Urik and yourself, you manage to rescue everyone in short notice, until only the Hercules beetle is left inside, still bracing the roof. Even the two fighting beasts have left, making the hole in the wall even larger in doing so. You dash over to the beetle, asking why he's not gotten to safety himself yet. 'I can't! Not easily. I kinda... locked my joints to keep this up, it's hard to let go. And if I do, everything I have will be squished! Could you... help me save at least some of the gear?! That smaller still over there is empty right now, so your friend should be able to lift it. And those gallon jugs of malt extract! And...'";
		say "[Henry_Choice]";
	else if calcnumber is 2:
		LineBreak;
		say "     Running at the two fighting beasts and waving your arms wildly as you shout... doesn't really seem to impress them much, as they only have eyes for one another. Despite the fact that they almost completely ignore you, the behemoth and taurus actually do leave the building, as the former grabs the latter by the horns and throws him, making the hole in the back wall even larger. Than the towering creature rushes after its opponent, intent to do him further harm. You stare at the fighting beasts for a moment longer, then remember about the things going on in the front part of the brewery and rush back there. You help the last of the wounded out through the front door, then return to the beetle still bracing the roof, asking why he's not gotten to safety himself yet. 'I can't! Not easily. I kinda... locked my joints to keep this up, it's hard to let go. And if I do, everything I have will be squished! Could you... help me save at least some of the gear?! That smaller still over there is empty right now, so your friend should be able to lift it. And those gallon jugs of malt extract! And...'";
		say "[Henry_Choice]";
	else if calcnumber is 3:
		LineBreak;
		say "     Rushing over to grab onto the bent steel column yourself, you do as much you can to support the Hercules beetle, who looks at you ";
		if ScaleValue of Player is 5:
			say "in relief as you take a fair bit of pressure off him. 'Thank you so much!' ";
		else if ScaleValue of Player is 4:
			say "in relief as you take some of the pressure off him. 'Thank you so much!' ";
		else:
			say "with surprise, as he doesn't expect you to be able to do all that much to relieve him. 'Thanks, but I think I got this...' ";
		say "he pants out, then concentrates back on keeping the building from collapsing. Meanwhile, the remaining knocked-out people and wounded are evacuated, and even the fighting beasts shift their fight outside, making the gaping hole in the back wall even larger. With only the two of you now left inside, you ask the beetle he's not gotten to safety himself yet. 'I can't! Not easily. I kinda... locked my joints to keep this up, it's hard to let go. And if I do, everything I have will be squished! Could you... help me save at least some of the gear?! That smaller still over there is empty right now, so your friend should be able to lift it. And those gallon jugs of malt extract! And...'";
		say "[Henry_Choice]";
	else if calcnumber is 4:
		LineBreak;
		say "     Deciding that a building on the verge of collapse is not the best place to be, especially not with two enormous creatures inside that are fighting one another, you turn tail and run outside. Dashing past Urik and calling to him that it isn't safe to stay a moment longer, you keep running, not stopping to look back. Only when you are at least a block distant do you slow down a little, checking and being relieved that Urik is close behind you. The orc steps up beside you, and gives you a sidelong glance. 'Couldn't we have stayed to save some of those folks?' comes a somewhat sharp question from him, but he accepts your decision when you say that you did what was best. He takes a deep breath, then blows it out, putting his disappointment in you aside before saying, 'Man, that was a bust! And still no beer... ";
		if "Dwarven Beerstealers" is listed in Traits of Urik:
			say "Bah, and that was the last chance.' The trip back is fairly quiet, with the orc not in the mood to talk as you trot along.";
		else:
			say "Man, I think someone just doesn't want us to have a good time. I bet if we went to the other place, that'd be a catastrophe too. Let's just go back to the library.' The trip back is fairly quiet, with the orc not in the mood to talk as you trot along.";
		TraitGain "Henry Abandoned" for Urik;
	else if calcnumber is 5:
		LineBreak;
		say "     Shouting for Urik to help, you rush to the pile of trade goods that the brewer amassed, snatching a bag from among the stuff and stuffing what you can into it before it can't hold anything more. As the orc approaches, you shove the overloaded sack of loot at him, then clutch what you can to your chest and both make a run for it. As you hurry away, leaving the building and fighting creatures behind, you hear metal shriek and several loud crashes moments later. That must have been the roof finally collapsing in on itself, most likely taking some part of the walls down with it. You do not stop running, or even look back. When you are several blocks distant and slow down a little, Urik gives you a sidelong glance. 'Couldn't we have stayed to at least save some of those folks? Yeah, we got a bunch of stuff from that, but...' the orc says, then adds in a mumble, 'It felt like the low thing to do.' He lets out a huff, followed by the words, ";
		if "Dwarven Beerstealers" is listed in Traits of Urik:
			say "'Bah, and that was the last chance.' The trip back is fairly quiet, with the orc not in the mood to talk as you trot along.";
		else:
			say "'Man, I think someone just doesn't want us to have a good time. I bet if we went to the other place, that'd be a catastrophe too. Let's just go back to the library.' The trip back is fairly quiet, with the orc not in the mood to talk as you trot along.";
		ItemGain water bottle by 7;
		ItemGain food by 12;
		ItemGain nightstick by 1;
		ItemGain aviator goggles by 1;
		TraitGain "Henry Looted" for Urik;
	now Perception of Urik is 5; [after the brewery]

to say Henry_Choice:
	say "     [bold type]What do you reply?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Save the brewing equipment first! Follow Henry's wishes!";
	say "     [link](2)[as]2[end link] - It's too risky! Ignore what the beetle wants and tell Urik to grab Henry and run!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to save the gear first, or [link]2[end link] to have Urik carry the beetle outside.";
	if calcnumber is 1:
		LineBreak;
		say "     Giving in to the urgent requests by the beetle, you, Urik and even the toad snatch up the things he points out, going as quick as you can to carry it all outside and adding it to a large pile of stuff growing out in the street. Speed is more important than orderliness, in this instance, and you manage to rescue a fair bit of stuff before there is another loud crash from the back of the room. The fighting opponents are still at it outside, behind the building, and a tail-slap of the behemoth that missed his enemy just took out one of the corners of the brewery! A groan starts to build in the roof girders as they lose support from one of their four anchor points. 'Help!' the Hercules beetle shouts, and Urik rushes in to grab hold of the man, wrenching him off the steel column and running from the building. The anthro insect wasn't kidding about locking his joints - he's stiff as a statue, at least in his larger arms and legs.";
		say "     Behind the two of them, the column finally snaps with a tortured shriek, followed by all of the bracing of the roof giving way and the whole ceiling coming down, including some part of the walls too! It is an almost shockingly loud racket that leaves everyone close by with a ringing in their ears and has you coughing from the large dust cloud washing over everything. By the time you can see something again, there is little left of the building but some stumps of the walls, and a mountain of rubble between them, with everything smelling distinctly like beer. Having managed to get his limbs moving again, the Hercules beetle stares glumly at the devastation, then turns around and takes in the pile of stuff you were able to save. Some varied expressions cross his face, from disappointment to relief, until he finally gives a shrug and says to himself, 'Well, it's more than I started this business with at least. And I still got all my recipes.'";
		WaitLineBreak;
		say "     The anthro toad is the first to speak, coming closer to the beetle and laying a gloved hand on the brewer's shoulder. 'I'm so sorry, Henry!' Nodding to show his acceptance of the sentiment, the Hercules beetle lets a tired gaze sweep over everyone here, and he says, 'At least no one died. Thanks Marlowe, and you two strangers too. Couldn't have done without you.' Having addressed the toad, Urik and yourself, Henry then starts to sort through his remaining belongings, bundling it together as good as he can for transport. 'Hm, I don't even know where to go now. Definitely can't stay here, not with those neighbors - and the grass of doom out to destroy it all!' As he says this, the beetle pulls a wrench from where it was lying on the road, untangling it from the yellow grass that had wrapped around it tightly. You can see scratches and fine grooves on the metal, as if someone had taken a very fine rasp to the surface.";
		say "     Overhearing Henry, Urik turns to you and raises his eyebrows to get your attention, then unobtrusively points at you, himself and the beetle, miming walking with his fingers afterwards. Looks like he wants to invite Henry to come with you.";
		say "     [link](1)[as]1[end link] - Nod.";
		say "     [link](2)[as]2[end link] - Shake your head.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 2:
			say "Choice? (1-2)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to agree, or [link]2[end link] to refuse.";
		if calcnumber is 1:
			LineBreak;
			say "     Giving Urik the sign to go ahead, you watch the orc approach the Hercules beetle and start talking to him in a quiet tone. Walking over to join the conversation, you hear, '...so yeah, there's a bunch of empty stores that you could set up, just across the road. And you'd have no problems with anyone trying to mess with ya, if I make it known you're protected.' Henry glances from the orc to you, and back, tilts his head a little as he seems to think, then finally replies, 'Well, I don't know either of you, but... you seem like good people. And hell, what do I have left to lose? Fine, it's a deal! I'll really need some help to lug all this stuff there though!' The next little while after that is spent sorting and packing stuff, with some items being given away by Henry to his acquaintances and former customers, given that even the three of you can't carry everything, with Urik's sports bag already stuffed enough to almost burst.";
			say "     Finally, the Hercules beetle asks for your help to load him up, and it is an awe-inspiring sight just how much weight he can lift. The limiting factor really mostly is bulk, not weight, as Henry lets you load him up so far that he can barely see where he's going, with a giant stack of items carried on his person. Urik for one lugs the brewing apparatus, a huge chunk of metal, while you carry several bags of what remains. After saying goodbye to the gathered people and getting well-wishes from them Henry finally lets you lead him away, trekking through the city to reach the library after an exhausting bit of travel. Afterwards Urik guides him to the looted row of stores directly west of the library, of which the beetle picks one with a large storeroom in the back, moving all of his gear in there and starting to set it up. 'Thank you so much,' he says, a little hope for the future growing in his tone. You leave the beetle to it and follow Urik back to the library.";
			TraitGain "Henry Recruited" for Urik;
			now Henry is in Henry's Brewery;
			connect Henry's Brewery;
		else:
			LineBreak;
			say "     Shaking your head quietly, you watch the orc deflate a little as you shoot his idea down. Standing a little out of the way, the two of you watch Henry sort through his remaining possessions, packing some items and giving away others to his acquaintances and former customers, given that he can't carry everything with him. Finally, he asks some of them to help pile everything that remains onto him. It is an awe-inspiring sight just how much weight he can lift. The limiting factor really mostly is bulk, not weight, as Henry lets them load him up so far that he can barely see where he's going, with a giant stack of items carried on his person. After saying goodbye to the gathered people and getting well-wishes from them Henry finally starts out down the road, into an uncertain future. Urik and yourself also begin to leave, and the orc says, 'Man, that was a bust! And still no beer... ";
			if "Dwarven Beerstealers" is listed in Traits of Urik:
				say "Bah, and that was the last chance.' The trip back is fairly quiet, with the orc not in the mood to talk as you trot along.";
			else:
				say "Man, I think someone just doesn't want us to have a good time. I bet if we went to the other place, that'd be a catastrophe too. Let's just go back to the library.' The trip back is fairly quiet, with the orc not in the mood to talk as you trot along.";
		TraitGain "Henry Saved" for Urik;
	else if calcnumber is 2:
		LineBreak;
		say "     Telling Urik what to do, over the protests of the anthro insect, you watch the large orc grab hold of the man, then wrench him off the steel column and run from the building. The Hercules beetle wasn't kidding about locking his joints - he's stiff as a statue, at least in his larger set of arms and the legs. Behind the two of them, the column finally snaps with a tortured shriek, followed by all of the bracing of the roof giving way and the whole ceiling coming down, including some part of the walls too! It is an almost shockingly loud racket that leaves everyone close by with a ringing in their ears and has you coughing from the large dust cloud washing over everything. By the time you can see something again, there is little left of the building but some stumps of the walls, and a mountain of rubble between them, with everything smelling distinctly like beer.";
		say "     Having managed to get his limbs moving again, the Hercules beetle collapses to his knees, looking in desperation at the devastation before him. The anthro toad is the first to speak, laying a gloved hand on the brewer's shoulder and saying, 'I'm so sorry, Henry!' Shaking his head in disbelief, the Hercules beetle opens his mouth, then closes it again, then says, 'I - it's all gone. There's literally nothing left! Not even myself!' Shell-shocked, he gets to his feet again, letting a hollow-eyed gaze sweep over everyone here, then says quietly, 'At least no one died. Thanks Marlowe, and you two strangers too.' Having addressed the toad, Urik and yourself, the Hercules beetle looks around aimlessly afterwards, then shakes himself and finally says, 'I - I need to be alone.' With that, the covers of his wings fold up and he rises up with a loud drone of chitinous wings beating quickly, flying off into the distance.";
		WaitLineBreak;
		say "     The survivors of the catastrophe slowly disperse as their wounds knit together and they feel well enough to walk off, eventually only leaving Urik, yourself and Marlowe the toad. 'Not such a bad dude after all, I guess,' he or she says to Urik after another intense stare of those huge eyes, then holds out a gloved hand to shake with him, and you afterwards. 'Best of luck surviving this mess,' the amphibian tells you, then leaves in a somewhat awkward, squat walk. Urik and yourself also begin to leave, and the orc says, 'Man, that was a bust! And still no beer... ";
		if "Dwarven Beerstealers" is listed in Traits of Urik:
			say "Bah, and that was the last chance.' The trip back is fairly quiet, with the orc not in the mood to talk as you trot along.";
		else:
			say "Man, I think someone just doesn't want us to have a good time. I bet if we went to the other place, that'd be a catastrophe too. Let's just go back to the library.' The trip back is fairly quiet, with the orc not in the mood to talk as you trot along.";
		TraitGain "Henry Survived" for Urik;

to say UrikTalk_LibraryTransfer: [send him to the library]
	say "     Urik listens to your instructions with a quiet intensity that makes it clear he commits the directions to the library to his memory. 'Okay [UrikPlayerAddress], I'll go there straight away.' With a playful slap at his muscled buttocks, you send him off into the city.";
	now Urik is nowhere;
	TraitGain "Library Move Underway" for Urik;

to say UrikRenameMenu:
	say "     [bold type]What should Urik use to address you in the future?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Intelligence of Urik is not 0:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Boss";
		now sortorder entry is 0;
		now description entry is "Make Urik call you Boss";
	[]
	if Intelligence of Urik is not 1:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Chief";
		now sortorder entry is 1;
		now description entry is "Make Urik call you Chief";
	[]
	if Intelligence of Urik is not 2:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Don";
		now sortorder entry is 2;
		now description entry is "Make Urik call you Don";
	[]
	if Intelligence of Urik is not 3:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Capo";
		now sortorder entry is 3;
		now description entry is "Make Urik call you Capo";
	[]
	if Intelligence of Urik is not 4:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Kingpin";
		now sortorder entry is 4;
		now description entry is "Make Urik call you Kingpin";
	[]
	if Intelligence of Urik is not 5:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Oyabun";
		now sortorder entry is 5;
		now description entry is "Make Urik call you Oyabun";
	[]
	if Intelligence of Urik is not 6:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Sir";
		now sortorder entry is 6;
		now description entry is "Make Urik call you Sir";
	[]
	if Intelligence of Urik is not 7:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Hoss";
		now sortorder entry is 7;
		now description entry is "Make Urik call you Hoss";
	[]
	if Intelligence of Urik is not 8:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Master";
		now sortorder entry is 8;
		now description entry is "Let Urik call you Master";
	[]
	if Intelligence of Urik is not 9:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Mistress";
		now sortorder entry is 9;
		now description entry is "Let Urik call you Mistress";
	[]
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
				if nam is:
					-- "Tell him to call you Boss":
						say "[UrikPlayerNameBoss]";
					-- "Tell him to call you Chief":
						say "[UrikPlayerNameChief]";
					-- "Tell him to call you Don":
						say "[UrikPlayerDon]";
					-- "Tell him to call you Capo":
						say "[UrikPlayerNameCapo]";
					-- "Tell him to call you Kingpin":
						say "[UrikPlayerNameKingpin]";
					-- "Tell him to call you Oyabun":
						say "[UrikPlayerNameOyabun]";
					-- "Tell him to call you Sir":
						say "[UrikPlayerNameSir]";
					-- "Tell him to call you Hoss":
						say "[UrikPlayerNameHoss]";
					-- "Tell him to call you Master":
						say "[UrikPlayerNameMaster]";
					-- "Tell him to call you Mistress":
						say "[UrikPlayerNameMistress]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You change your mind and wave off the topic of conversation.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say UrikPlayerNameBoss:
	say "     'Of course. Will do, Boss!' Urik replies, giving you a respectful nod.";
	now Intelligence of Urik is 0;

to say UrikPlayerNameChief:
	if "Player_Tribe" is not listed in Traits of Urik: [player hasn't talked about making a new tribe]
		say "     'Starting your own tribe? Yeah, that's awesome! Glad to be there for it, Chief!' Urik replies, saluting with a fist held against his chest.";
		add "Player_Tribe" to Traits of Urik;
	else:
		say "     'That's the proper title for the head of a tribe, yeah! Will do, Chief!' Urik replies, saluting with a fist held against his chest.";
	now Intelligence of Urik is 1;

to say UrikPlayerDon:
	say "     'Will do, Capo! Guess you're styling your tribe as the new mob, eh?' Urik replies, giving you a respectful nod.";
	now Intelligence of Urik is 2;

to say UrikPlayerNameCapo:
	say "     'Will do, Capo! Guess you're styling your tribe as the new mob, eh?' Urik replies, giving you a respectful nod.";
	now Intelligence of Urik is 3;

to say UrikPlayerNameKingpin:
	say "     'Prohibition style, eh? Will do, Kingpin!' Urik replies, giving you a respectful nod.";
	now Intelligence of Urik is 4;

to say UrikPlayerNameOyabun:
	say "     'What, like those Asian mobsters? Fine, Oyabun!' Urik replies, adding an inexpert bow.";
	now Intelligence of Urik is 5;

to say UrikPlayerNameSir:
	say "     Urik crosses his arms in front of his chest, looking at you with an intense expression. 'Sir, eh? Takes me back to Grenada, that.' Grimacing as if he's got a bad taste in his mouth, the orc shakes off what seems to be an old memory of his, then takes a deep breath and straightens himself. He delivers a somewhat rusty, but clearly professional salute before relaxing again.";
	now Intelligence of Urik is 6;

to say UrikPlayerNameHoss:
	say "     'Ya like cowboy tales, eh? Me too, Hoss!' Urik replies, with a grin and a nod.";
	now Intelligence of Urik is 7;

to say UrikPlayerNameMaster:
	say "     The orc's pear-green eyes widen a little as you demand that he call you master, but he swallows his pride after a second or two of hesitation and bows his head. 'Yes, Master.'";
	now Intelligence of Urik is 8;

to say UrikPlayerNameMistress:
	say "     The orc's pear-green eyes widen a little as you demand that he call you mistress, but he swallows his pride after a second or two of hesitation and bows his head. 'Yes, Mistress.' [if player is not female]There is a bit of a curious expression on his face at this choice of title even though you're not really female right now, but he suppresses the urge to ask about it.[end if]";
	now Intelligence of Urik is 9;

to say UrikPlayerAddress:
	if Intelligence of Urik is:
		-- 0:
			say "Boss";
		-- 1:
			say "Chief";
		-- 2:
			say "Capo";
		-- 3:
			say "Kingpin";
		-- 4:
			say "Oyabun";
		-- 5:
			say "Don";
		-- 6:
			say "Sir";
		-- 7:
			say "Hoss";
		-- 8:
			say "Master";
		-- 9:
			say "Mistress";

to say UrikCumDelivery:
	say "     Stepping up to the orc, you smile at him, followed by digging a bottle of orc cum from your pack and handing it over to him. The big, green-skinned brute looks at the plastic bottle in his hands, filled with its opaque white-ish contents and can't help but lick his lips immediately. 'Thank you, [UrikPlayerAddress]! Just what I need if the cravings hit me!' He seems to be fighting with the urge to just chug down the contents of the bottle right away for a second, then lowers it on one hand and doesn't look down after that. Seems like he really does want to stash it somewhere for later.";
	if Thirst of Urik < 10:
		increase Thirst of Urik by 1;

to say UrikPregDiscussion:
	if PlayerFriended of Urik is true:
		say "     As you bring up knocking him up, Urik looks at you with a mixture of apprehension and shame. 'Well, [UrikPlayerAddress] - to be honest... I don't think I'm ready to have kids yet. I mean, something inside me is aching for it to happen, but... that's what kinda frightens me. I've seen lots of breeders pop out one orcling after the other, and it's all they're thinking about really.' Grimacing as he says this, he scratches the back of his neck. 'I worry about losing this thing between you and me. I mean, being a warrior in your new tribe, as well as a breeder. I want to be there with you, stand by your side as you take this tribe as far as you want to. Fight for it, and all that.' Urik looks into your eyes, waiting to see how you're taking his revelation, then adds quietly, 'I've been taking some contraceptives, I admit it.'";
		say "     With him feeling this strongly about it, you decide to be supportive about what Urik has been doing (for now). Maybe at a future time when your relationship has progressed further and he's more sure of himself, he could be convinced to bear your offspring. After all, his life as a warrior doesn't have to be over just because he gets pregnant. Even before the nanite apocalypse, there were plenty of women who had good jobs despite taking some time to have children.";
	else if PlayerControlled of Urik is true:
		say "     As you bring up knocking him up, Urik looks at you and gives a noncommittal shrug. 'Guess it'll happen if it happens, you know. Don't hold your breath, things might take some time.' With that said, he deflects to another topic, exchanging a few more words with you before moving a short distance away. Doesn't look like he's too eager to feel your children growing inside him.";

Section 4 - Fucking

Instead of fucking Urik:
	say "[UrikSexMenu]";

to say UrikSexMenu:
	if (lastfuck of Urik - turns < 5):
		say "     Urik says, 'I need a break for a moment. An orc isn't a fuck machine, [UrikPlayerAddress]!'";
	else if PlayerMet of Urik is false:
		say "     Maybe it'd be a good idea to talk to him at least once before you get to fucking...";
	else if PlayerFucked of Urik is false: [first time the player has sex with Urik]
		if Player is not male:
			say "     With Urik being what he is, and orc's general preference for males, an inner voice tells you that it really would be best to start out your sexual relationship with him as a male.";
		else if Player is in Main Hall: [first time in orc lair]
			say "     Being in the midst of a whole tribe of drunken and horny orcs and publicly using Urik in this environment might set a certain precedent, especially for your first time with the orc. There might be other options if you take him somewhere private instead.";
			say "     [bold type]Do you really want to fuck him, right here and now?[roman type][line break]";
			LineBreak;
			say "     [link](1)[as]1[end link] - Yeah, bend that big green slut over and ram into him!";
			say "     [link](2)[as]2[end link] - On second thought... maybe it'd be nicer to do this alone, in the library. [if Loyalty of Urik is 0]Maybe talk to him about your relationship first though.[end if]";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 2:
				say "Choice? (1-2)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to have your first fuck of Urik in the lair or [link]2[end link] to postpone for now.";
			if calcnumber is 1:
				LineBreak;
				say "[UrikFirstFuck_Lair]";
				TraitGain "Broken" for Urik;
				now PlayerFucked of Urik is true;
				now Loyalty of Urik is -1; [cuts out any of the library content]
			else:
				say "     Shaking your head a little to clear the lustful thoughts for a second, you decide not to take Urik for now.";
		else: [first time in library]
			if PlayerFriended of Urik is true: [tribesman Urik gets the loving into to sex, the harsher tone of the other option doesn't fit too well]
				say "[UrikFirstFuck_Library_Missionary]";
			else:
				say "     This being your first time with the orc, you've got a choice to make. Yes, you won him as a prize and you can do what you will with him, but you better choose well on how you want to start things out with the big, green male you've now brought home with you.";
				say "     [bold type]How do you plan to fuck Urik?[roman type][line break]";
				LineBreak;
				say "     [link](1)[as]1[end link] - Get him on his back, missionary style, and look him in the eyes as you make him yours. Go slow and show him the pleasure of being your breeder.";
				say "     [link](2)[as]2[end link] - Bend him over and put him in his place with some hard thrusting! Cumsluts get used in doggystyle fashion!";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 2:
					say "Choice? (1-2)>[run paragraph on]";
					get a number;
					if calcnumber is 1 or calcnumber is 2:
						break;
					else:
						say "Invalid choice. Type [link]1[end link] to go missionary or [link]2[end link] to go doggystyle.";
				if calcnumber is 1:
					LineBreak;
					say "[UrikFirstFuck_Library_Missionary]";
				else:
					LineBreak;
					say "[UrikFirstFuck_Library_Doggystyle]";
			now PlayerFucked of Urik is true;
	else:
		LineBreak;
		project the figure of Urik_face_icon;
		say "     [bold type]What do you want to do with Urik?[roman type][line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if Urik is not in Main Hall and (PlayerFriended of Urik is true): [blocked for the center of the orc lair, and only for friends]
			choose a blank row in table of fucking options;
			now title entry is "Jerk Urik off";
			now sortorder entry is 1;
			now description entry is "Get your hands on the orc's huge cock and milk a load out of him";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Take Urik's ass";
			now sortorder entry is 2;
			now description entry is "Fill the orc's ass with your cock";
		[
		choose a blank row in table of fucking options;
		now title entry is "Ride Urik's cock and take him in your ass";
		now sortorder entry is 6;
		now description entry is "Take what pleasure you want from his thick orc cock";
		[]
		if Player is female: [female + herm]
			choose a blank row in table of fucking options;
			now title entry is "Ride Urik's cock and take him in your pussy";
			now sortorder entry is 7;
			now description entry is "Take what pleasure you want from his thick orc cock";
		]
		if Urik is not in Main Hall and Player is not dominant and (ScaleValue of Player is 1 and PlayerFriended of Urik is true or PlayerControlled of Urik is true): [normal/sub player; small Player; must have chosen one route for Urik]
			choose a blank row in table of fucking options;
			now title entry is "Submit to Urik for a pounding";
			now sortorder entry is 8;
			now description entry is "Lay back and present yourself for him to take";
		[]
		if Urik is not in Main Hall and Player is not dominant and (PlayerFriended of Urik is true or PlayerControlled of Urik is true): [normal/sub player; must have chosen one route for Urik]
			choose a blank row in table of fucking options;
			now title entry is "Submit to Urik for a pounding";
			now sortorder entry is 9;
			now description entry is "Lay back and present yourself for him to take";
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
					if (nam is "Jerk Urik off"):
						say "[UrikSex_Jerking]";
					else if (nam is "Take Urik's ass"):
						say "[UrikSex_Assfuck]";
					else if (nam is "Ride Urik's cock and take him in your ass"):
						say "[UrikSex_RideAnal]";
					else if (nam is "Ride Urik's cock and take him in your pussy"):
						say "[UrikSex_RideVaginal]";
					else if (nam is "Submit to Urik for a pounding"):
						say "[UrikSex_Submission]";
					wait for any key;
					now lastfuck of Urik is turns;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You step back from the large orc, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say UrikFirstFuck_Lair:
	say "     Walking up to Urik, you hook a hand under one of the leather straps crossing his broad chest, and start to guide the big brute along by it, making a beeline to one of the long tables standing in the room. As soon as you are there, you clear some room at the end with a swipe of your arm, pushing the half-filled mugs of orc brew on it further down, then slap the surface of the table and command Urik to bend over it. 'Wait, you mean you want -' the large orc starts to say, but he's drowned out by a bunch of orc warriors pointing and laughing, hollering for their friends to 'Come watch as Urik's being fucked'. When you don't correct them, instead pulling on your new orc breeder's shoulder to get him moving, Urik gives in after a little resistance, bending over as you instructed, his hands gripping the sides of the solid wooden table.";
	say "     Seeing him like that ass out and getting ready, you slap the rounded cheeks of Urik's bare butt, leaving a hand-print until it fades away some seconds later. Urik replies only with a groan... but you can see his cock throb inside the stretchy pants Boghrim put on him. Your orc slut he likes it rough! Quickly[if player is not naked] getting rid of your own clothes and gear[end if], you step up behind the powerful orc and smack your shaft into the crack between his buttocks. As you rub yourself against him, you revel in your ownership and power over this green-skinned man - and the sensations of his warm skin against yours of course. Other orcs in the room close in all around the two of you, with cheers and gropes coming from them, the former for you, the latter mostly focused on Urik, although there are a few touches on your own naked body that aren't quite the shoulder-slaps of congratulation most orcs give you.";
	WaitLineBreak;
	say "     Wanting to really rub in his new status, you loudly tell Urik that his dick isn't more than a lube-dispenser now, as he's nothing but your receptive fuckhole from now on. Reaching around the orc, your hands stroke over the tented mesh bulge of his briefs, then tug it down to free Urik's thick pole, hard and erect despite your harsh words. You stroke up and down along his length, milking the copious pre-cum welling up from his cum-slit into your other hand - then lube your own cock with the slick, somewhat sticky goop, and leave his erection dangling, without a second thought of his pleasure. Then you line your cock up with his pucker, first brushing over it lightly and then settle the tip of your erection against the small dip it forms, not yet pushing forward. 'Get it over with already, [UrikPlayerAddress]!' Urik grunts through clenched teeth, to which you give the back of his head a slap, demanding that he beg some more. Accompanied by laughter from the gathered crowd, he does so, and you see him go emerald green in embarrassment before you finally relent.";
	say "     Grabbing hold of the studded straps of Urik's leather harness, you ram yourself home with a satisfied shout! Balls deep in one thrust! The super-sized orc breeder feels amazing around your prick - warm and tight, but with his inner muscles still spreading readily in answer to your push into him. Pretty much every orc warrior in the room cheers you on, calling for you to 'give it to him good'. Meanwhile, Urik groans at your penetration, breath pushed out of him from your forceful entry. 'Fuck, that stings - but it also feels good,' the orc gasps out breathlessly, hands clenching tight around the table as he weathers your anal assault. After a moment of just grinding against his ass to go as deep as you can, you slide yourself back out until just the tip of your meat remains inside him. Watching the way his back door gets pulled outwards a little by your receding shaft makes you throb hard and leak some pre-cum into him - it's almost as if the orc's hole doesn't want to let go of your cock.";
	WaitLineBreak;
	say "     A heartbeat later, you're back to thrusting all the way into your orc slut, making your balls slap against his own as you drive yourself home and proceed to pound into him again and again and again. The noisy interior of the orc lair, with all the moans and grunts of sex happening everywhere, would normally just swallow your own coupling's noises, but Urik's grunts and groans are pretty loud, and at some point you seem to break through to causing him more pleasure than pain and he starts to call for you to go harder, deeper, and faster. On top of that, the orcs keep egging you on, sometimes even physically, with large hands shoving at you to ram into Urik with increased force. It's hot as hell to shaft his rear deeply... and definitely something you wouldn't have expected to be doing before all of this chaos started. Openly fucking someone in the middle of a police station (far less one converted to an orc lair, full of horny brutes) - and that someone being a large and muscular orc, who is rock hard from submitting to you. This nanite apocalypse does have some upsides, that's for sure!";
	say "     With your dick buried in Urik's back passage, feeling his muscles flex around your length, you revel in the sensations and for a little while forget about all the troubles out in the city, closing your eyes and fully focusing on the orc's tight grip on your [cock of player] prick. After hard fucking for who knows how long, lost as you are in the moment, you notice Urik starting to pant and moan even louder than before. You can feel his inner muscles clench a little tighter, telling you that he must be close! With a broad grin on your face, you stop your thrusts suddenly, then pull firmly on the leather harness to keep him tightly pressed against your crotch. 'GhnnngH!' he groans breathlessly, 'I need to cum, now!' You give him a little thrust of your hips, sliding in and out for a second, then pause once more to tease the needy slut. Using both your hands, you give his buttocks a little bit of a spanking, watching the meaty globes wiggle left and right of where your erection enters the orc. Every time your hands hit him, the orc's hole squeezes tight around you, heightening your pleasure without you even needing to move your hips at all.";
	WaitLineBreak;
	say "     'Damn! Your cock inside my ass is better than fucking someone with my own cock somehow! Don't stop, please! I'm so close!' Urik finally begs, prompting you to start pounding him again, harder than ever before. After another moment or two of thrusting deep into Urik and rubbing his prostate with your cock, he lets out a satisfied bellow, stiffening under (and around) you. As you start to feel his inner muscles twitch and flex in a rhythmic pattern, you see one of the public orc breeders that were brought in through the competition crawl quickly under the table, with loud slurping starting up as the green-skinned cumslut opens wide to suckle on Urik's throbbing cock. Reaching between Urik's legs, you feel his weighty balls pulse and throb as he unloads a bounty of creamy cum into the other orc breeder. 'Look at those dirty whores!' one of the watching orc warriors shouts, with one of his neighbors laughing and replying, 'Yeah, fucking breeders! So hot!' while he speeds up the jerking movements of his hand on the thick piece of man-meat between his legs.";
	say "     Meanwhile, your own erection is almost being milked by the green-skinned slut's inner muscles. Just moments after Urik himself, you reach your own orgasm while balls-deep inside him and start to fill your green-skinned muscle-stud with cum. Throbbing deep inside him, your cock paints Urik's back passage white with a thick load, solidly posting your claim on the big brute's ass as your property. You stay like that for a while - cock buried inside the orc and resting against his unwavering and firm back, feeling his body tremble a little as he grunts and moans while he finishes unloading down the other breeder's throat. 'Be'in a breeder isn't to bad,' Urik slurs out breathlessly, already affected by your potent seed soaking into his inner walls, squeezing his insides a little around your shaft, as if to draw more cum out of you. In response, you wrap your arms around him and play with the orc's nipples, pinching and flicking them until the stand out as erect little nubs.";
	WaitLineBreak;
	say "     It's fun to play with your orc a little while, riding out your afterglow, but eventually you start going soft inside him and withdraw yourself from Urik's well-bred asshole with a sigh. It doesn't look like the orc is willing to part with even the smallest amount of your seed, as his hole stays open and gaping for only a second or two before the ring muscle clenches tight again. At that point, you feel a strong hand slap down on your shoulder, with a cheerfully drunk orc slurring the words, 'Bro, you're gonna let us have a go, right?' Paying attention to your surroundings again for the first time in a little while, you realize that you're surrounded by orcs - mostly orc warriors, but also a few orc breeders between their larger brethren.";
	say "     [bold type]What do you reply?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Of course you'll let your orc brothers fill your needy slut with all the cum he can take!";
	say "     [link](2)[as]2[end link] - You're the only one who breeds Urik, but they can use his mouth.";
	say "     [link](3)[as]3[end link] - You're the only one who breeds Urik, but you'll let a lucky breeder eat him out.";
	say "     [link](4)[as]4[end link] - Nope, this is your needy slut! Private property!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to let Urik be gangbanged, [link]2[end link] to let the other orcs fuck his face, [link]3[end link] to let an orc breeder eat him out or [link]4[end link] to deny anyone else access to Urik.";
	if calcnumber is 1:
		LineBreak;
		say "     Slapping the nearest orc warrior's back in camaraderie, you put a wide grin on your face and yell that today will be a treat for all your orc bro's. With that, you pull the horny warrior into position behind Urik and tell him with a lewd laugh to get fucking. 'Whazzat?' Urik slurs, glancing over his shoulder, already somewhat buzzed on your heavy load of cum being absorbed by his insides. And that's the only thing he manages to say, as a bellowing cheer goes through the crowd when the brute takes your offer and rams his already rock hard into Urik's cum-filled, sloppy hole, coming out white with your seed at his first pull back. Other orc warriors cheer at your generosity, and you're getting lots of fist-bumps, bro-punches to the shoulder and offers of foaming orc brew for you to chug while Urik is penetrated again and again, with many a load being dumped into his receptive boypussy.";
		say "     There is so much of it that it starts to squirt out around the later participants cocks, running down the insides and backs of Urik's legs, until it is licked up by the orc breeders soon kneeling between and beside Urik's legs. The large orc breeder loves all the attention he's getting, riding a sustained high from all the rich orc cum being churned up inside him, and you can see that he's rock hard himself throughout the experience, with multiple smaller breeders kneeling before his cock and lapping at it, while the original cock-sucker is long passed-out, sated on Urik's copious seed bulging his stomach a little. The gangbang goes on for a long while, complete with you getting hard again as you see the absolute mess that the gathered orcs make of Urik, sliding yourself into his sodden fuckhole and dropping another load inside. Only when Urik's legs eventually go weak and the big brute passes out into blissful oblivion due to a massive overdose of potent orc cum do you call it for now, waving off those orcs who would have happily continued to breed the unconscious brute. Instead, you let them help you carry Urik outside, where he's cleaned up by emptying a water barrel over him, then brought back inside and put on a sofa to sleep off his buzz.";
		add "Slut" to Traits of Urik; [free fuckhole]
	else if calcnumber is 2:
		say "     Slapping the nearest orc warrior's back in camaraderie, you put a wide grin on your face and yell that today will be a treat for all your orc bro's. Urik's ass may be yours, but you're willing to let them fuck his mouth all they want. With that, you take hold of Urik's arm and pull him around, making the big brute look at you wide-eyed and slur 'Whazzat?' as he clearly is buzzed by your heavy load of cum that is being absorbed by his insides. You don't reply, simply pushing down on his shoulders and making him kneel, then grasp the back of his head with your hand and ram his open mouth down on the orc warrior's erection. A bellowing cheer goes through the crowd when the horny green-skin starts to face-fuck Urik's at full force, his balls slapping against your slut's chin. While there's some muttering about wanting to experience Urik's amazing ass, most orc warriors cheer at your generosity, and you're getting lots of fist-bumps, bro-punches to the shoulder and offers of foaming orc brew for you to chug while a load of cum is pumped right into Urik's stomach before much longer, with another orc stepping up right after.";
		say "     With all the face-fucking an already drunk Urik, he drools quite a lot of the cum, which draws more breeders to his side, kneeling next to the big brute to lick and kiss Urik and the current face-fucker, hungrily swallowing all of the orcish ambrosia they can get. The large orc breeder loves all the attention he's getting, riding a sustained high from all the rich orc cum being churned up inside him, and you can see that he's rock hard himself throughout the experience, with the original cock-sucking breeder now stretched out on the ground before him, still suckling his erection and chugging every drop of cum Urik has to give. His belly is a little swollen from the output of your slut, but he just can't get enough. The face-fucking gangbang goes on for a long while, complete with you getting hard again as you see the absolute mess that the gathered orcs make of Urik, sliding yourself into his sodden mouth and dropping another load inside.";
		WaitLineBreak;
		say "     Only when Urik's legs eventually go weak and the big brute passes out into blissful oblivion due to a massive overdose of potent orc cum do you call it for now, waving off those orcs who would have happily continued to breed the unconscious brute. Instead, you let them help you carry Urik outside, where he's cleaned up by emptying a water barrel over him, then brought back inside and put on a sofa to sleep off his buzz.";
		add "Oral Only Slut" to Traits of Urik; [free mouth fuckhole]
	else if calcnumber is 3:
		LineBreak;
		say "     Having to raise your voice to a shout, you tell the gathered crowd that Urik's your breeder, and off limits to anyone else, at least when it comes to filling his hole with cum. Some protests start to be raised, which Boghrim deals with by shouting, 'Shut your traps, you whiny bitches! If you wanted Urik, you should have been better at the competition. He was won and is his master's property now. If you wanna get off, use the public sluts! Or do we need another round of competitions?' His words make the orc warriors back off from you and Urik, even if some act like sulky teenagers as they do so. That leaves a few orc breeders who stood close by, of which you grab one by the arm, drawing him closer. Telling the very pretty example of a submissive orc that you want him to eat out Urik, you grab him by the back of the head and press his face between your slut's buttocks, at which point the slender green-skin starts to lap eagerly.";
		say "     At first using only his tongue while you hold him in place, then later going on to include his fingers to tease Urik's hole open, the happy breeder eats out your orc to his hearts content, hungrily swallowing all of your seed that he can get. His eyes go a little glazed as the potency of the aphrodisiacs in your cum hit his system, making the breeder moan whorishly between slurps. This turns around the mood among the orc warriors, as the men murmur among themselves how hot this looks, starting to jerk off to the show. One somewhat less drunk orc actually realizes that while he may not use Urik, the second breeder is fair game, so he strides up with a grin and shoves himself into the rimming orc's rear and starts to fuck him with deep thrusts. Meanwhile, Urik revels in this extra level of anal stimulation, letting out unintelligible noises of pleasure as he rocks his rear back against the other breeder's face. After a little while comes again, providing another load to the second breeder that crawled in front of him earlier. You watch them go at it for a while, enjoying the show, before the group of three orc breeders and the warrior eventually wind down and the two breeders that aren't yours are immediately snatched up to be fucked by other horny orc warriors.";
		add "Breeder Only Slut" to Traits of Urik; [only the player and orc breeders may use/eat his ass]
	else if calcnumber is 4:
		LineBreak;
		say "     Having to raise your voice to a shout, you tell the gathered crowd that Urik's your breeder, and off limits to anyone else. Some protests start to be raised, which Boghrim deals with by shouting, 'Shut your traps, you whiny bitches! If you wanted Urik, you should have been better at the competition. He was won and is his master's property now. If you wanna get off, use the public sluts! Or do we need another round of competitions?' His words make the orc warriors back off from you and Urik, even if some act like sulky teenagers as they do so. Even the orc breeder that sucked your slut's cock does his best to inconspicuously crawl away, while Urik turns around to look at you with his pear-green eyes, a cum-drunk smile spreading on his face. 'Fuck'em assholes,' he slurs as he wraps his arms around you, 'Imn-not some whore. Just yours, boss!' He's mumbling as he says this, swaying from his body absorbing more and more of your potent seed, so you guide your big breeder to a nearby bench, allowing him to sit down. Before long, he's slumped back against the wall behind it and is snoring a little, sleeping off his buzz.";
		add "Private_Breeder" to Traits of Urik; [only the player may use his ass]
	NPCSexAftermath Urik receives "AssFuck" from Player;

to say UrikFirstFuck_Library_Missionary:
	say "     Walking up to Urik, you stroke a hand down his muscle-packed chest, then move it over to squeeze the side of his hips. 'Like my body, eh [UrikPlayerAddress]?' the orc says in reply, squaring his shoulders proudly and flexing a little. Then you tell him that the time has finally come to enjoy his sweet ass, and he stiffens visibly as he hears those words, with his breath speeding up and the irises of his pear-green eyes widening. It is kind of funny how quickly this absolute powerhouse of a man can be reduced to someone akin to a virgin teen about to have his first time. Putting a hand on his shoulder to connect with him, you tell the orc with a smile that he'll enjoy it. He still seems somewhat apprehensive, which isn't much of a surprise as Urik is actually pretty close to being an anal virgin in this matter, most likely only ever having been a top until the episode with Toven where he was made to take the former breeder's cock. Given their recuperative powers, this orc surely will have become as tight as before by now.";
	say "     You let your hand on his hip wander further, gripping a firm buttock of the large orc while imagining the squeeze of his hole on your [cock of player] cock. 'Man, I've seen that expression often, just I never thought I'd be at the receiving end of it from you. It always was just my biker bros, or orc buddies, as we were about to pounce on a dude. Hell, I remember making that smirk when I was approaching a young punk of a bike cop, reflecting at me in his sunglasses, all confident in his badge and all that shit...' While it certainly sounds to be an interesting anecdote of a story, you recognize what Urik is doing, perhaps subconsciously or not, trying to delay the inevitable. Moving your hand from his shoulder to rest on the left pec of the orc, you can feel the rapid throb of his heart and meet his gaze as the orc looks at you with the question of what is going on in his eyes. Calmingly telling Urik to relax and that it'll be okay, you gently push aside his squeamishness.";
	WaitLineBreak;
	say "     As words might not be the best way to continue, you decide to use the facet of orc breeder behavior he must already have internalized and reach up to brush your fingers over his lips instead, then playfully touch the tips of his protruding tusks. The act draws a smile from Urik, opening his lips further and allowing your thumb to freely slip into his mouth, feeling and pressing down on the orc's tongue. In that moment, you feel him start to suckle almost as a reflex and can't help but wonder if that's part of the basic orc breeder mentality that he inherited. Allowing him to continue for a little while, caressing his chest at the same time, you eventually hook your hand over his shoulder and push down on it. He knows the position you want him in, and after only a little pause to remind himself he's been demoted and you own him now, Urik sinks down and kneels at your feet.";
	say "     Grinning hungrily at him as you stroke your fingers through the soft, shoulder-length black hair on Urik, you [if player is not barecrotch]quickly bare your crotch and [end if]take hold of your rapidly hardening cock. Swaying it left and right before his eyes, like a cobra preparing to strike, you brush it over his lips soon after. The orc's nostrils flare, breathing in the scent of pre-cum clinging to your dickhead and now dabbed onto his lips, which almost seems to flick a switch in him. Suddenly reacting with a lusty grunt, the orc slides his lips over your shaft, taking it into his mouth all the way without stopping even once. Man, he really has the insatiable hunger for cum of a true breeder. You look down upon Urik as he eagerly bobs his head over your dick, working his tongue along your hard length while giving you a passable, but very enthusiastic blow-job. Quite an exciting situation, with this mighty warrior now being your obedient fuck-toy.";
	WaitLineBreak;
	say "     You're tempted to take hold of Urik's head with both hands as you face-fuck him as hard as you can, but instead control your lust and pull your manhood out of his mouth before much longer. The fact that he tries to follow it by stretching his neck makes you chuckle, even as you place your hand on his forehead to stop him. Hungry for your cum, he even sticks out his tongue, trying to reach your cock again. Playfully wagging your finger at him, you say a firm yet friendly tone that he's going to get fucked now instead. Tension returns to Urik's form, showing in a ripple of muscles under the green skin of the orc, but given that he's on his knees and has the fresh taste of your pre-cum on his tongue, this further step seems to be a little less insurmountable for him to take. You explain to the orc that his mouth won't be enough, and if he wants your cum, he'll need to take it up his ass. 'Fine [UrikPlayerAddress], but don't go crazy, alright?' he replies, then presses his lips together before finally adding, '...where do you want me?'";
	say "     Guiding him over to a nearby sofa, you instruct the orc to lay back on it. Stepping between the spread, muscly legs of the large orc, you let your gaze sweep over him with a grin on your face. It's a nice sight, from his handsome, tusked face, over the bulging abs and washboard-like pecs, down to a large bulge in his pants. Lowering your hands to his thighs, you stroke along them, feeling the hair on the orc's skin and the firm muscle tone he has all over. You walk your fingers towards his crotch, tracing the outline of his growing erection inside the stretchy underwear Boghrim put on him, then move even further up, bracing yourself on his chest to lean over Urik. Eyes taking in the fulness of his lips and the little details of Urik's features as you come closer, and closer, soon feeling the warmth of his breath on your face. The orc looks almost stunned as you kiss him, playing your tongue up and down his tusks before slipping it into his mouth.";
	WaitLineBreak;
	say "     Having felt the orc's breathing quicken when you licked his tusks, you just know that he's very receptive orally, so you start exploring a little. Your lips brush against each other and with your tongue sliding over Urik's own, the orc responds in turn, lightly nipping you with his tusks while his hands rise to touch you. 'What's this?' the orc asks in a somewhat puzzled tone between your kisses, unaccustomed to a simple affectionate approach. Smiling, you reply that you don't just want to simply mount him, you want to make him [italic type]yours[roman type]. A grunt, combined with somewhat drawn-together eyebrows, tells you that he isn't quite following, so you proceed to show him what you mean, starting to trace your tongue down from his mouth over his green skin, planting some kisses on the way. Soon, you're down to his pierced nipples, feeling the little double-headed arrows through them with your tongue and suckling a little, drawing a pleasure-filled gasp from Urik.";
	say "     'Harder! Bite me!' the orc he grunts after a second or two, throwing back his head and breathing a little heavier as you do, hard enough to leave a little ring of bitemarks on his pec. Seems your big brute really likes that, and he raises his hand to very lightly touch the back of your head, making sure he doesn't seem to be forcing you while still showing that he wants you to continue. He's pinching himself on the other side at the same time, which prompts you to switch nipples after a moment and attack his other peck, lightly nipping it with your teeth and then sucking hard on the second nipple. Going back and forth a few times, you play roughly with Urik, covering his pecs with love-bites and hickeys, only really stopping when you feel something poke you in the stomach - it's his enormous cock, having escaped its confinement to stand straight and proud above the orc's crotch. 'Damn!' Urik grunts under his breath, apparently surprised himself at how horny you've been making him.";
	WaitLineBreak;
	say "     Chuckling, you slide your hands down his chest and take hold of the big cock, stroking up and down over it and watching pre-cum well up at the tip, then run down the shaft where your hands spread it. Besides his obvious arousal, Urik seems pleasantly surprised at having his erection being played with, which isn't typical custom in the orc lair, now that you think back to it. Wound up and aroused, now is the right time for you to enter Urik, so you [if player is not naked]proceed to quickly get rid of your own clothes and gear, then [end if]bring your own erection forward to touch his. Rubbing dicks against each other, you jerk Urik and milk more of the slick, somewhat sticky pre from his cock, using it to lube yourself. Soon, it is covered in a shiny sheen, at which point you look up into the panting face of your orc, meeting his pear-green eyes and commanding Urik to pull his legs up. He obeys without even thinking about it, revealing the somewhat darker skin inside his crack and the puckered ring of your goal.";
	say "     Giving Urik a broad grin, you lower your head to his spread crack and lick him, nose pressed against his lightly sweaty skin and breathing in the clean, male musk of the large orc. 'What are you doing? Are you- ooohhhghhhh!' He squirms in pleasure and moans loudly as you flick the tip of your tongue over his opening, lapping a few times to follow up and see Urik react before you push yourself back up and meet his now very round and surprised eyes. Lining your cock up with his opening, you brush over it lightly and then settle the tip of your erection against the small dip it forms, not yet pushing in. Instead, you grin at the orc, asking him what you're touching, and what he wants to you to with it. With your eyebrows and expression, as well as a few gestures to guide him, the orc replies, 'Huh? It's my a- err, YOUR fuckhole? And I want you to breed me. Yeah, breed me. Hard and deep!'";
	WaitLineBreak;
	say "     He added the last words himself, saying them with conviction, which makes your cock throb in arousal. He truly is ready to accept his new reality of being your private orc breeder. Toven might have been the first - and so far only - man to be inside Urik, but there is a deeper level of taking him for the first time as his [italic type]owner[roman type], and both of you know it. Leaning forward, you feel your cock enter Urik, stretching his inner walls around your girth slowly - then suddenly all the way, as Urik's legs close around your hips and he pushes his big feet against your rear, likely with more force than intended, as you're rammed balls-deep into the orc in a heartbeat's moment. The super-sized orc breeder feels amazing around your prick - warm and tight, but with his inner muscles still spreading readily to welcome to your invading member.";
	say "     Urik groans at the sudden penetration's depth, breath pushed out of him from your sudden entry brought on by his impatience. Nevertheless, as soon as he can take in a gulp of air, the orc gasps out in an excited tone, 'God, that feels amazing!' Seems like while he knows a lot about gay sex obviously, he has much to learn about being on the receiving end. From all appearances though, the rough entry just made him harder, so apparently your big brute likes to be used hard. 'Fuuuckkk! More! Damn it, pound my ass [UrikPlayerAddress]!' Urik bellows, now simply bursting out with anything that comes to his mind, without thinking too much about it anymore. Reflexes he never knew he had awaken, with the orc rocking his hips to meet your thrusts. More than ready to comply with his urgent request, you slide yourself back out until just the tip of your meat remains inside him. The way his back door gets pulled outwards a little by your receding shaft makes you throb hard - it's almost as if the orc's hole doesn't want to let go of your cock.";
	WaitLineBreak;
	say "     A heartbeat later, you're back to thrusting all the way into your orc breeder-in-training, making your balls slap against his butt as you drive yourself home and proceed to pound into him again and again and again. The interior of the library is filled by the sounds of your coupling - moans and grunts, as well as Urik's bellows for more and faster fucking. It's hot as hell to shaft his rear deeply... and definitely something you wouldn't have expected to be doing before all of this chaos started. Openly fucking a man in the middle of a library (abandoned or not) - and that someone being a large and muscular orc, who is rock hard from submitting to you. This nanite apocalypse does have some upsides, that's for sure! With your dick buried in Urik's back passage, feeling his muscles flex around your length, you revel in the sensations and for a little while forget about all the troubles out in the city, focusing fully on you and him for now, and the way his insides tightly grip your [cock of player] shaft.";
	say "     After some time of nonstop hard fucking, you decide to switch things up a little, moving your angle of entry to be steeper than before, and that's when it happens. Thrusting deep into your orc, you penetrate something different inside him, a passage just a little bit behind the prostate that feels much tighter than the orc's colon. 'GhnnngH!' Urik he groans in mixed shock and lust, thrashing wildly on the sofa and making unintelligible noises. His insides squeeze your cock like a vise, incredibly tight and warm around the part of your dick that is spreading the new passage. Even if you wanted to pull out, you don't think you could, so you simply rest against his ass for a little while, even though your cock is still throbbing hard where it is, stimulating Urik further. Waiting for the orc to get used to the feeling, it takes a little while before his eyes focus again instead of being rolled up in his skull.";
	WaitLineBreak;
	say "     'Daaammnn! I think you're fucking in the opening of my orcling channel! Ya'know, the thing leading up to the womb!' are the first understandable words he utters a little while later, looking a little shell-shocked about this new part of himself he hasn't so far come to terms with. Cautiously asking Urik if its a bad thing that you entered him like this, you get a vehement shake of the head as a reply from the panting orc, who clamps his legs around your hips tightly to keep you inside him. 'No, it's just fucking tight! N-never been stretched! Fuck, that first thrust smarted somewhat fierce, but it's soo good to feel you inside it!' With the orc apparently okay, you try grinding your hips against him a little, which creates shallow thrusting movements into Urik's second passage, driving him wild once more. 'Fuuuuckkk yeah! More! God, you're gonna fuck the cum out of me!' Urik literally shouts, prompting you to go further and give him some proper thrusts next, though you do need a few tries to hit the second opening inside his ass once more.";
	say "     Almost as soon as you slip back into his orcling channel, Urik lets out a satisfied bellow, stiffening under (and around) you. Aiming to increase his pleasure to really blow the orc's mind, you quickly reach out to grab his nipples, pinching and lightly twisting them to push him even further. You can feel Urik's inner muscles twitch and flex in a rhythmic pattern as his cock erupts like a volcano, with thick blasts of cum curving through the air and splatting down on the orc's chest, face and the sofa he's lying on. While the orc's balls send forth their bounty of creamy cum, your own erection is almost being milked by the green-skinned stud's inner muscles. Just moments after Urik himself, you reach your own orgasm while balls-deep inside him and start to fill your orcish muscle-stud with cum. With just how tightly his inner passage is lying snug around your cock, you know that none of your seed leaks out of that, instead all shooting deeper inside the orc's reproductive system, leaking straight into his womb and firmly staking your claim on the big breeder's ass.";
	WaitLineBreak;
	say "     You stay like that for a while - cock buried inside the orc and watching him before you, covering himself in more cum by the second. 'Fwuuuckk,' Urik slurs a little as his insides absorb your cum and the orc breeder side of him revels in a well-sated victory. 'God, being fucked is amazhing! And you slipping your dick in [italic type]there[roman type] was fucking awesome! Being in my orcling channel made the side of your shaft press against my prostate the whole time!' Urik tells you, slurring his words a little and out of breath, while squeezing his insides a little around your erection, as if to milk more cum out of you. In response, you trace your fingers through the puddles of cum that cover his abs, then wave the orc to bend his upper body forwards and push your sticky fingers right into his mouth. It's an awesome treat to play with your orc like this, riding out your afterglow as you feed him his own cum, but eventually you start going soft inside him and withdraw yourself from Urik's well-bred asshole with a sigh.";
	say "     It doesn't look like the orc is willing to part with even the smallest amount of your seed, as his hole stays open and gaping for only a second or two before the ring muscle clenches tight again. The recuperative powers of orc physiology really are quite amazing, as he recovers within moments - even if it is only an over-stretched pucker and not really a physical wound or anything. Letting out a very satisfied groan, the orc lets himself fall back into the cushions. He's still a little hyper from the cum-injection, and happily babbles, 'I'm your breeder now, [UrikPlayerAddress]! Can barely think of anything except doing that! No wonder the pigs squealed so happily when we made them ours!' He's clearly exhausted from all the action, his energy flagging a little now. As the orc seems ready to doze off, you step up and pull him to the side a little, guiding him in his last moments awake to stretch out on the sofa. With a smile, you pat the side of his thigh as he curls up a little and drifts off, then leave him in peace to dream of your dick as you get dressed.";
	add "First Time Gentle" to Traits of Urik;
	add "Orcling Channel Fucked" to Traits of Urik;
	NPCSexAftermath Urik receives "AssFuck" from Player;

to say UrikFirstFuck_Library_Doggystyle:
	say "     Walking up to Urik, you stroke a hand down his muscle-packed chest, then move it over to squeeze the side of his hips. 'Like my body, eh [UrikPlayerAddress]?' the orc says in reply, squaring his shoulders proudly and flexing a little. Then you tell him that the time has finally come to enjoy the sweet ass of the supersized breeder you've won, and he stiffens visibly as he hears you objectifying him like that, with his breath speeding up and the irises of his pear-green eyes widening. It is kind of funny how quickly this absolute powerhouse of a man can be reduced to someone akin to a virgin teen about to have his first time, but you take care not to show even the hint of a smile on your face as you watch his reaction. But then, Urik is actually pretty close to being an anal virgin in this matter, most likely only ever having been a top until the episode with Toven where he was made to take the former breeder's cock. Given their recuperative powers, this orc surely will have become as tight as before by now.";
	say "     You let your hands wander further, gripping a firm buttock of the large orc while imagining the squeeze of his hole on your [cock of player] cock. 'Man, I've seen that expression often, but I never thought I'd ever be at the receiving end of you doing it. It always was just my biker bros, or orc buddies, as we were about to pounce on a dude. Hell, I remember making that smirk when I was approaching a young punk of a bike cop, reflecting at me in his sunglasses, all confident in his badge and all that shit...' While it certainly sounds to be an interesting anecdote of a story, you recognize what Urik is doing, perhaps subconsciously or not, trying to delay the inevitable. But really, his ass has been destined to take your rod ever since you won the competition, so you do not let his sudden squeamishness distract you from that. Instead, you decide to use the facet of orc breeder behavior he must already have internalized and reach up to place your fingers on his mouth shutting Urik up.";
	WaitLineBreak;
	say "     Pushing your thumb between his lips and pressing down on Urik's tongue, you feel him start to suckle almost as a reflex and silently thank Boghrim for breaking in your breeder to sucking cock. The towering orc warrior knows the position you want him in as your hand pushes down on his muscular, green-skinned shoulder, but he still resists at first, only making himself submit after remembering that he's been demoted and you own him now. Slowly, Urik sinks down and kneels at your feet. Grinning hungrily at him as you stroke your fingers through the soft, shoulder-length black hair on Urik, you [if player is not barecrotch]bare your crotch impatiently and [end if]take hold of your rapidly hardening cock. Swaying it left and right before his eyes, like a cobra preparing to strike, you brush it over his lips soon after. The orc's nostrils flare, breathing in the scent of pre-cum clinging to your dickhead and now dabbed onto his lips, which almost seems to flick a switch in him. Suddenly reacting with a lusty grunt, the orc slides his lips over your shaft, taking it into his mouth all the way without stopping even once.";
	say "     Man, the time Urik spent as his former chief's cum-slut really imbued him with the insatiable hunger for cum of a true breeder. You look down upon Urik as he eagerly bobs his head over your dick, working his tongue along your hard length while giving you a passable, but very enthusiastic blow-job. Quite an exciting situation, with this mighty warrior now being your obedient fuck-toy. You're tempted to take hold of Urik's head with both hands as you face-fuck him as hard as you can, but nevertheless pull your manhood out of his mouth before much longer. The fact that he tries to follow it by stretching his neck makes you chuckle, even as you grab a handful of his black hair to stop him. Hungry for your cum, he even sticks out his tongue, trying to reach your cock again. Pulling back the orc's head roughly and looking down into his face, you then say in a commanding tone that he's going to get fucked now.";
	WaitLineBreak;
	say "     Tension returns to Urik's form, showing in a ripple of muscles under the green skin of the orc, but given that he's on his knees and has the fresh taste of your pre-cum on his tongue, this further step seems to be a little less insurmountable for him to take. You explain to the orc that his mouth won't be enough, and if he wants your cum, he'll need to take it up his ass. 'Fine [UrikPlayerAddress],' he replies, then presses his lips together before finally adding, '...where do you want me?' Guiding him over to a nearby sofa, you put Urik onto it in a variant of the doggystyle position: the orc kneeling on the ground with his upper body resting on the cushion while. You can see the tension in his back, but he still obeys and stretches up his ass receptively. It's a nice sight, tempting you to give his round buttocks a quick slap with your hand that makes Urik twitch and let out a moan into the fabric of the couch as your palm connects with his ass. Deciding to keep going as your slut reacts well to the little bit of force you applied, you spank Urik a few times, which seems to arouse more than hurt him. Then you demand that he beg you to fuck him, getting a hesitant, '[UrikPlayerAddress], please fuck me!' after a few seconds of delay.";
	say "     Walking around the submissively presenting orc to enjoy yourself while inspecting him, you see that the mesh pouch at the front of his skin-tight stripper underwear bulges out quite a bit from his hard cock. A smirk crosses your lips at having pushed the man this far already, just about ready to receive your cock for a very memorable first time. You can't help but appreciate how perfect his outfit is for this - bare buttocks for easy access. With a grin, [if player is not naked]proceed to quickly get rid of your own clothes and gear, then [else]you [end if]step up behind the powerful orc and smack your shaft into the crack between his buttocks. He twitches at the sudden touch, raising his head from where it was pressed down against the couch cushions and glancing over his shoulder apprehensively. Rubbing up against him, you revel in the power you have over this green-skinned man - and the sensations of his warm skin against yours of course. Then you have an idea that will serve to drive home your dominance over him: reaching under the orc, you stroke the tented mesh bulge of his briefs, then forcefully tug the piece of clothing down over his hips, baring his crotch completely and leaving it bunched up just above his knees, pulling against the orc's legs and restricting his movement a bit.";
	WaitLineBreak;
	say "     With Urik's thick pole now accessible, you bend it down to hook under the cushion, ensuring that it will rub against it with every thrust you take into him. Then you start to stroke up and down along his length, milking the copious pre-cum welling up from his cum-slit and previously leaving wet marks on the couch. Now you gather it in your other hand and lube your own cock with the slick, somewhat sticky goop. Joking about him apparently really wanting you inside him, with all the lube he's providing so readily, you hit the right balance of dominance and lust in the orc, making him gasp out needy moans and hurriedly nod to a question if he wants to cum from your dick inside him. Then it is time to induct your sexy brute into his new reality of being your private orc breeder. Toven might have been the first - and to your knowledge only - man to be inside Urik, but there is a deeper level of taking him for the first time as his [italic type]owner[roman type], and both of you know it.";
	say "     Lining your cock up with his pucker, you brush over it lightly and then settle the tip of your erection against the small dip it forms, not yet pushing in. Urik's muscle flexes and tightens a little right then, showing he is nice and reactive to even the slightest touch. Then you lean forward, grabbing hold of the studded straps of his leather harness - and with a satisfied shout, you ram yourself home! Balls deep in one thrust! The super-sized orc breeder feels amazing around your prick - warm and tight, but with his inner muscles still spreading readily in answer to your push into him. Urik groans at your penetration, breath pushed out of him from your forceful entry. Nevertheless, as soon as he can take in a gulp of air, the orc gasps out in an excited tone, 'God, why does that feel amazing!' Seems like while he knows a lot about gay sex obviously, he wasn't fully prepared to someone ramming into his prostate with your vehemence, nor your shaft rubbing it in further thrusts.";
	WaitLineBreak;
	say "     'Fuuuckkk! More! Damn it, please pound my ass [UrikPlayerAddress]!' Urik bellows soon after that, apparently even surprising himself with the outburst. Reflexes that he never knew he had kick in, with the orc rocking his body back against your hips. More than ready to reward him for his submission, you slide yourself back out until just the tip of your meat remains inside him. The way his back door gets pulled outwards a little by your receding shaft makes you throb hard - it's almost as if the orc's hole doesn't want to let go of your cock. A heartbeat later, you're back to thrusting all the way into your orc slut-in-training, making your balls slap against his own as you drive yourself home and proceed to pound into him again and again and again. The interior of the library is filled by the sounds of your coupling - moans and grunts, as well as Urik's bellows to take him harder.";
	say "     It's hot as hell to shaft his rear deeply... and definitely something you wouldn't have expected to be doing before all of this chaos started. Openly fucking a tight piece of ass in the middle of a library (abandoned or not) - and that someone being a large and muscular orc, who is rock hard from submitting to you. This nanite apocalypse does have some upsides, that's for sure! With your dick buried in Urik's back passage, feeling his muscles flex around your length, you revel in the sensations and for a little while forget about all the troubles out in the city, focusing fully on yourself and the pleasure to be had inside Urik now, and the way his insides tightly grip your [cock of player] shaft. After some time of nonstop hard fucking, Urik starts to pant and moan even louder than before and you can feel his inner muscles clench a little tighter. He's close! With a broad grin on your face, you stop your thrusts suddenly, then pull firmly on the leather harness while still holding him down to keep his ass tightly pressed against your crotch.";
	WaitLineBreak;
	say "     'GhnnngH!' he groans breathlessly, 'I need to cum, now!' You give him a quick thrust of your hips, sliding in and out for a second, then pause once more to tease the needy slut and tell him that he has to ask properly if he wants anything from you. 'Please, [UrikPlayerAddress]! Let me cum!' bursts past his lips a second later. Better, but he still deserves punishment for presuming before that. Using both your hands, you give his buttocks a little bit of a spanking, watching the meaty globes wiggle left and right of where your erection enters the orc. Every time your hands hit him, the orc's hole squeezes tight around you, heightening your pleasure without you even needing to move your hips at all. 'Fuuuuckkk yeah! Use me! But please [UrikPlayerAddress], rub my prostate with your cock! Fuck the cum out of me soon, or I'm gonna burst!' Urik finally begs, prompting you to start pounding him again, harder than ever before. After another moment or two of thrusting deep into Urik and stimulating his pleasure-button with your cock, he lets out a satisfied bellow, stiffening under (and around) you.";
	say "     While you stop moving your hips to fully enjoy his ass squeezing your [cock of player] cock, Urik quickly takes up rocking back against you, basically fucking himself now. You can feel his inner muscles twitch and flex in a rhythmic pattern and quickly reach down to cup his balls, massaging them as they send forth pulses of cum that splatter the ground and the side of the sofa. While the orc's balls send forth their bounty of creamy cum, your own erection is almost being milked by the green-skinned slut's inner muscles. Just moments after Urik himself, you reach your own orgasm while balls-deep inside him and start to fill your orcish muscle-stud with cum. Throbbing deep inside him, your cock paints Urik's back passage white with a thick and creamy load, firmly staking your claim on the big brute's ass as your property. You stay like that for a while - cock buried inside the orc and resting against his unwavering and firm back. 'Fwuuuckk,' Urik slurs a little as his insides absorb your cum and the orc breeder side of him revels in a well-sated victory.";
	WaitLineBreak;
	say "     'That - that rweally hit the spot,' Urik continues to babble in slurred words in between breathless gasps while squeezing his insides a little around your shaft, as if to milk more cum out of you. In response, you wrap your arms around him and play with the orc's nipples, pinching and flicking them until the stand out as erect little nubs. It's an awesome treat to play with your orc like this, riding out your afterglow, but eventually you start going soft inside him and withdraw yourself from Urik's well-bred asshole with a sigh. It doesn't look like the orc is willing to part with even the smallest amount of your seed, as his hole stays open and gaping for only a second or two before the ring muscle clenches tight again. The recuperative powers of orc physiology really are quite amazing, as he recovers within moments - even if it is only an over-stretched pucker and not really a physical wound or anything.";
	say "     Letting out a very satisfied groan, the orc allows his head sink forward to rest against the cushions, then mumbles, 'Fuck.' Curious about what's going on you pull him up a little so he's easier to understand, and hear the slurred words of, 'I'm your fucking breeder now, [UrikPlayerAddress]. Can barely think of anything but that fucking cock in me! Haha - no wonder the pigs squealed so happily when we made them ours!' Eventually sobering up at least a little bit, he then pushes himself up on one elbow and looks over his shoulder. 'Looking forward to the next time you wanna relieve some pressure,' he says in clearer words, but with exhaustion noticeable in his voice. Tapping his back, you tell him he'd better be ready for lots of hard fucking in the future, as he's your private fuckhole now. Nodding tiredly, the orc dozes off after that, still in his freshly fucked position. You leave him to dream about your dick and get dressed.";
	add "First Time Rough" to Traits of Urik;
	NPCSexAftermath Urik receives "AssFuck" from Player;

to say UrikSexXX1: [suck the orc]
	say "     <WIP>";
	NPCSexAftermath Player receives "OralCock" from Urik;

to say UrikSexXX2: [get a BJ from Urik]
	say "     <WIP>";
	NPCSexAftermath Urik receives "OralCock" from Player;

to say UrikSex_Jerking: [player strokes Urik until he comes]
	say "     Moving closer to Urik, you let your gaze roam over his impressive physique, with firm muscles under green, somewhat hairy skin. The orc notices your attention and a broad grin spreads over his face as he sees the lusty glint in your eyes. 'See something you like, [UrikPlayerAddress]?' His tusks are in full display as the smiling man begins to bend forward a little, flexing his bicep for your viewing pleasure, really making those thick cords of muscle bulge and dance. You stroke his pride a little by watching the gun-show with open interest, even reaching out to feel his presented bicep ";
	if "Private Breeder" is listed in Traits of Urik:
		say "and then leaning in to plant a kiss on his bulging muscle, followed by smiling at the big man. ";
	else:
		say "and praising him for his impressive physique. ";
	say "Yet for all his strength, there is one part of the hunk of an orc that you're especially interested in right now. Running your hands down his front, only stopping for a moment to rub and lightly pinch his nipples. You let your fingertips go through the dips and rises of his abs, then finally follow the treasure-trail of hair down to his crotch. Urik grunts in a lust-filled, throaty chuckle as you start to caress his bulge, with the enormous cock rapidly hardening in your grasp.";
	say "     It takes a matter of mere moments to free the orc's erection, allowing it to swing up to stand proudly erect and pointing right at you. The thick, meaty shaft is a little darker in shade as the rest of his body, with a broad mushroom head at the end. [if ScaleValue of Player is 5]Even given your huge size, it's still a handful[else if ScaleValue of Player is 5]Even being as large as Urik himself, it's still more than a handful[else if ScaleValue of Player is 3]You have to use both hands to reach all the way around the girth[else if ScaleValue of Player is 2]You can barely manage to handle its great girth[else]It takes both of your arms to span around it[end if], already leaking a steady trickle of pre-cum from the mushroom-shaped head. Eagerly squeezing and stroking along his piece of man-meat, in between cupping the orc's balls and playing with them, you find yourself being touched in turn by his large hands, returning caresses. 'Man, ending up with you sure is great! Gotta admit that I never even thought of doing this, with the breeders. Sure, they came from having the cum fucked out of them and being bred - but the idea of simply touching one of the little muscleboys and giving him a wank without thinking of my own next nut? Nope!' Shaking his head ";
	if "Stud" is not listed in Traits of Urik and "Everything Goes" is not listed in Traits of Urik:
		say "with a somewhat guilty expression, Urik adds, 'Sure puts things in perspective, to be on the other end for a change. And have someone care for you like this.'";
	else:
		say "and then giving a shrug, Urik adds, 'They sure loved being shafted hard and deep, so everyone got what they wanted, though!'";
	WaitLineBreak;
	say "     Looking the orc in the eyes, you waggle your eyebrows and slide your thumb over his dickhead, rubbing his cum-slit as a fresh throb of pre wells up from it. As good as a little introspection is for Urik, you also want to see him cum! The big man's reaction to your stimulation is immediate, as he lets out a horny grunt and reflexively thrusts his hips forward a little, grinding his erection against your hand. Chuckling, you begin to jerk his piece of man-meat in earnest, enjoying winding the powerful male up more and more. His thick cock is hot under your fingers, and it feels amazing to control the big muscle hunk with just this part of him in your grasp. Every squeeze is answered by a lustful grunt from the orc, and he starts to pant hot and heavy as you run a fingertip around the sensitive rim of Urik's swollen dickhead. Playfully, you slow down the jerking movements along his erection and instead just caress his glans - squeezing its base, then moving to the tip and pulling a little with two fingers to stretch open his cum-slit and watch pre leak from it.";
	say "     Edging the orc with a broad grin on your face, fondle his balls with one hand while tracing your fingers over the veins on his shaft, and can even feel the beat of his heart through your fingertips. 'NNnnghh!' Urik lets out an urgent grunt, which draws you to look up at his lust-blushed face and watch the orc's nostrils flare as his arousal flares. At that point, he tries reaching out to grab his own dick and take over, but you refuse to let go and instead push his hand aside. Instead, you run both of yours over his pre-cum slick dickhead, then spread the slick goo all the way down the thick shaft of your horny, wound-up orc. Before you're more than halfway down his length, you can feel a heavy throb go through the rock-hard pole, heralding a spurt of pre that has enough force to literally shoot out his dick and splash you. Both of you can't help but chuckle as your eyes meet a moment afterwards, and you scoop up as much as you can of the patch of wetness, then reach up to offer your fingers to Urik, who readily licks his pre off and sucks a little on them. Returning to double-fisting his big, slick cock, you decide that this is about enough teasing for your green-skinned friend. His balls must be getting quite tight by now, so it's about time to give him his sweet release.";
	LineBreak;
	say "     [bold type]How do you want to finish the orc off?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Aim his big dick at his chest and hose him down with his own load!";
	say "     [link](2)[as]2[end link] - Slip your lips over his dickhead and swallow his load!";
	say "     [link](3)[as]3[end link] - Get a mouthful of cum, then make out with Urik and feed him some of his own load!";
	say "     [link](4)[as]4[end link] - Get a bottle to catch his cum!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to make Urik cum on his chest, [link]2[end link] to get a mouthful of orc cum, [link]3[end link] to kiss and feed him his own cum, or [link]4[end link] to bottle Urik's load.";
	if calcnumber is 1:
		LineBreak;
		say "     Hefting the mighty tool of the orc's shaft in both hands, you squeeze and stroke up and down on it, listening for the rising urgency in his grunts of lust. It does take but a moment to push him over the edge after that. Seeing his weighty balls pull up a little as they ready their first shot, you quickly push the orc's cock up, slapping against Urik's muscular abs right as his cock erupts like a volcano of cum. The first heavy blast actually hits the towering male on the underside of his jaw, creating a white splotch in his beard and sending globs of cum splattering from collarbone to collarbone, and also dripping down onto you. A heartbeat or two later, the next shot of orcish seed is ready, splurging up in a white streak across Urik's chest. Moment by moment, the mess steadily worse as you aim Urik's cock to parts of his chest not yet drenched in his own load. It's great fun to paint your orc friend white, though you're far from clean yourself by the time his orgasm eventually ebbs off.";
		say "     'Man, that felt great!' Urik says with a broad grin on his face, at which point you reply that you're not quite done with him yet. This is when you start scooping up the first glob of the creamy load slowly trickling down his front, then push your fingers between his lips, to be eagerly sucked clean. You spend the next little while feeding the orc his own cum, which Urik swallows down hungrily.";
		NPCSexAftermath Urik receives "Stroking" from Player;
	else if calcnumber is 2:
		LineBreak;
		say "     Hefting the mighty tool of the orc's shaft in both hands, you squeeze and stroke up and down on it, listening for the rising urgency in his grunts of lust. It does take but a moment to push him over the edge after that. Seeing his weighty balls pull up a little as they ready their first shot, you quickly open your mouth and slip your lips over his dickhead, just in time to feel his first heavy blast of cum hit the back of your throat with some force. You sputter and choke a little bit, swallowing to clear your throat, by which time the next gush of potent orc cum already washes over your tongue. Being on the receiving end of Urik's huge cock, and the quite vigorous production of his balls, you have little choice but to keep gulping down every bit of cum he shoots into your mouth. Moment by moment, you guzzle down more of his sperm, and before long, you feel a bit light-headed and giggly from the potent stuff. Nevertheless, you cannot get enough of it, with your lips tightly wrapped around his dickhead all the time until his orgasm eventually ebbs off. 'Man, that felt great!' Urik says with a broad grin on his face, then slides his hands under your armpits to make sure you don't fall over in your current inebriated state.";
		NPCSexAftermath Player receives "OralCock" from Urik;
	else if calcnumber is 3:
		LineBreak;
		say "     Hefting the mighty tool of the orc's shaft in both hands, you squeeze and stroke up and down on it, listening for the rising urgency in his grunts of lust. It does take but a moment to push him over the edge after that. Seeing his weighty balls pull up a little as they ready their first shot, you quickly open your mouth and slip your lips over his dickhead, just in time to feel his first heavy blast of cum hit the back of your throat with some force. You sputter and choke a little bit, swallowing to clear your throat, by which time the next gush of potent orc cum already washes over your tongue. Being on the receiving end of Urik's huge cock, and the quite vigorous production of his balls, hold your breath and let him fill your mouth with his load, then eventually pull away from his erection, letting it shoot its next spurts wherever they will land while you pull Urik's head closer and plant a big kiss on his lips, shoving your cum-drenched tongue against his own.";
		say "     This kicks off a wild bit of making out between the two of you, both getting a little drunk on Urik's potent cum and having a lot of fun passing the mix of cum and spit back and forth as you tongue-wrestle. When you eventually pull back and your eyes meet, Urik says in a somewhat slurred tone, 'Man, t'was great!'";
		NPCSexAftermath Player receives "OralCock" from Urik;
	else if calcnumber is 4:
		LineBreak;
		say "     After quickly collecting an empty bottle from your gear, you heft the mighty tool of the orc's shaft in both hands, squeezing and stroking up and down on it while you listen for the rising urgency in his grunts of lust. It does take but a moment to push him over the edge after that. Seeing his weighty balls pull up a little as they ready their first shot, you quickly press the opening of the small plastic bottle over his cum-slit. The first heavy blast hits the end of the bottle with an audible thud, splattering the inside of the bottle with white globs from the force of its impact. A heartbeat or two later, the next shot of orcish seed is ready, splurging up from his balls to erupt into the bottle. Moment by moment, the bottle is filled by his spurts, almost getting ready to overflow by the time his orgasm eventually ebbs off. 'Man, that felt great!' Urik says with a broad grin on his face, then looks at your bottle of collected orc cum and raises his eyebrow.";
		say "     'What exactly do you plan on doing with that?' he asks in a casual tone. The fact that he licks his lips hungrily right after that betrays easily that the orc is more than a little interested in chugging it all down himself.";
		NPCSexAftermath Urik receives "Stroking" from Player;
		[TODO: ItemGain Urik's Cum]

to say UrikSex_Assfuck: [player fucks Urik]
	if Urik is in Main Hall: [slut mode in the orc lair]
		say "     Walking up to Urik, you stroke your hand over his muscle-packed chest, giving his nipples a few pinches and flicking them lightly, which draws a moan from the big breeding slut. Then you tell him that you want to make use of him. 'Yes [UrikPlayerAddress],' he replies submissively, putting a grin on your face at the fact that he seems to have internalized the role you've given him. It only takes a light tap on the orc's shoulders to make him kneel at your feet, obedient and ready as you [if player is not barecrotch]bare your crotch and [end if]take hold of your rapidly hardening manhood and brush it over his lips. This doesn't go unnoticed by several other orc warriors, who laugh and joke about seeing Urik act this way, pulling out their own cocks as they enjoy the spectacle. Meanwhile, Urik grunts in a lusty tone, his tongue flicking outside to lick your dickhead, followed by him basically inhaling your erection, not stopping until his nose is pressing against your pubic mound.";
		say "     Breathlessly telling the orc warrior that he's a good little cumslut, you look down upon Urik as he bobs his head over your dick, working that tongue of his along your hard length while giving you an expert blow-job. You can't help but feel that he was wasted as just another orc warrior before, if he adapted to this new role so readily and became a lustful fucktoy for you. The orc goes down on your dick with a cum-hungry slut's enthusiasm, so much so that you're almost tempted to face-fuck him instead, but you keep a hold of your libido and pull out before much longer. Grabbing a handful of his shoulder-length, soft black hair, you pull Urik's head back to make him look at you, then tell him you want to fuck his ass from behind. '[UrikPlayerAddress], I need it bad!' the big orc grunts readily enough, standing up from the ground right away. The mesh pouch at the front of his skin-tight stripper underwear bulges out quite a bit from the hard and erect monster of his cock, underlining the depth of his submission.";
		WaitLineBreak;
		say "     Turning around, Urik takes a few steps towards the nearest wall, having to pass a gauntlet of groping hands from the watching orc warriors, who grope and slap his ass, joking about him getting a proper breeding now. Your slut endures this without a comment, though he does shoulder aside one orc who's especially insistent, demonstrating that while he's been made your breeder, he's still strong as an ox. Soon, the orc places his large hands against the wall to brace himself, looking over his shoulder to you and pushing his ass out invitingly. You can't help but appreciate how perfect his outfit is for this - bare buttocks for easy access. With a grin, you pass by a group of jealous orcs, slapping the rounded cheeks of Urik's bare butt, leaving a hand-print until it fades away some seconds later. Urik replies only with a happy groan... he likes it rough!";
		say "     Quickly[if player is not naked] getting rid of your own clothes and gear[end if], you step up behind the powerful orc and smack your shaft into the crack between his buttocks. As you rub yourself against him, you revel in your ownership and power over this green-skinned man - and the sensations of his warm skin against yours of course. A number of orcs in the room cheer you on, calling for you to 'give it to him good'. Relenting to give your orc slut a reward for his obedience, you lean forward and reach around him, hands stroking over the tented mesh bulge of his briefs. Tugging it down to free Urik's thick pole, you stroke up and down along his length, milking the copious pre-cum welling up from his cum-slit into your other hand - then lube your own cock with the slick, somewhat sticky goop. Then you line your cock up with his pucker, first brushing over it lightly and then settle the tip of your erection against the small dip it forms, not yet pushing in.";
		WaitLineBreak;
		say "     'Take me, [UrikPlayerAddress],' Urik moans in a needy tone, and you are only too happy to comply with his begged request. Grabbing hold of the studded straps of his leather harness, you ram yourself home with a satisfied shout! Balls deep in one thrust! The super-sized orc breeder feels amazing around your prick - warm and tight, but with his inner muscles still spreading readily in answer to your push into him. Urik groans at your penetration, breath pushed out of him from your forceful entry. Nevertheless, as soon as he can take in a gulp of air, the orc gasps out in an excited tone, 'Pound my ass [UrikPlayerAddress]!' and rocks his body back against your hips. After a moment of just grinding against his ass to go as deep as you can, you slide yourself back out until just the tip of your meat remains inside him. Watching the way his back door gets pulled outwards a little by your receding shaft makes you throb hard and leak some pre-cum into him - it's almost as if the orc's hole doesn't want to let go of your cock. A heartbeat later, you're back to thrusting all the way into your orc slut, making your balls slap against his own as you drive yourself home and proceed to pound into him again and again and again.";
		say "     The noisy interior of the orc lair, with all the moans and grunts of sex happening everywhere, would normally just swallow your own coupling's noises, but Urik's bellows for you go harder, deeper, and faster peak through with little effort. On top of that, there's cheers from orcs egging you on, sometimes even physically, with large hands shoving at you to ram into Urik with increased force. It's hot as hell to shaft his rear deeply... and definitely something you wouldn't have expected to be doing before all of this chaos started. Openly fucking someone in the middle of a police station (far less one converted to an orc lair, full of horny brutes) - and that someone being a large and muscular orc, who is rock hard from submitting to you. This nanite apocalypse does have some upsides, that's for sure! With your dick buried in Urik's back passage, feeling his muscles flex around your length, you revel in the sensations and for a little while forget about all the troubles out in the city, closing your eyes and fully focusing on the orc's tight grip on your [cock of player] prick.";
		WaitLineBreak;
		say "     After hard fucking for who knows how long, lost as you are in the moment, you notice Urik starting to pant and moan even louder than before. You can feel his inner muscles clench a little tighter, telling you that he must be close! With a broad grin on your face, you stop your thrusts suddenly, then pull firmly on the leather harness to keep him tightly pressed against your crotch. 'GhnnngH!' he groans breathlessly, 'I need to cum, now!' You give him a little thrust of your hips, sliding in and out for a second, then pause once more to tease the needy slut. Using both your hands, you give his buttocks a little bit of a spanking, watching the meaty globes wiggle left and right of where your erection enters the orc. Every time your hands hit him, the orc's hole squeezes tight around you, heightening your pleasure without you even needing to move your hips at all. 'Fuuuuckkk yeah! Use me! But please [UrikPlayerAddress]! Fuck the cum out of me soon, or I'm gonna burst!' Urik finally begs, prompting you to start pounding him again, harder than ever before. After another moment or two of thrusting deep into Urik and rubbing his prostate with your cock, he lets out a satisfied bellow, stiffening under (and around) you.";
		say "     As you start to feel his inner muscles twitch and flex in a rhythmic pattern, you see one of the public orc breeders that were brought in through the competition crawl quickly in front of your big orc fucktoy, with loud slurping starting up as the green-skinned cumslut opens wide to suckle on Urik's throbbing cock. Reaching between Urik's legs, you feel his weighty balls pulse and throb as he unloads a bounty of creamy cum into the other orc breeder. 'Look at those dirty whores!' one of the watching orc warriors shouts, with one of his neighbors laughing and replying, 'Yeah, fucking breeders! So hot!' while he speeds up the jerking movements of his hand on the thick piece of man-meat between his legs. Meanwhile, your own erection is almost being milked by the green-skinned slut's inner muscles. Just moments after Urik himself, you reach your own orgasm while balls-deep inside him and start to fill your green-skinned muscle-stud with cum. Throbbing deep inside him, your cock paints Urik's back passage white with a thick load, renewing your claim on the big brute's ass as your property.";
		WaitLineBreak;
		say "     You stay like that for a while - cock buried inside the orc and resting against his unwavering and firm back, feeling his body tremble a little as he grunts and moans while he finishes unloading down the other breeder's throat. 'That really hit the spot,' Urik tells you breathlessly, squeezing his insides a little around your shaft, as if to draw more cum out of you. In response, you wrap your arms around him and play with the orc's nipples, pinching and flicking them until the stand out as erect little nubs. It's fun to play with your orc like this, riding out your afterglow, but eventually you start going soft inside him and withdraw yourself from Urik's well-bred asshole with a sigh. It doesn't look like the orc is willing to part with even the smallest amount of your seed, as his hole stays open and gaping for only a second or two before the ring muscle clenches tight again.";
		if "Slut" is listed in Traits of Urik: [free fuckhole]
			say "     Slapping the nearest orc warrior's back in camaraderie, you put a wide grin on your face and yell that today will be a treat for all your orc bro's. With that, you pull the horny warrior into position behind Urik and tell him with a lewd laugh to get fucking. 'Whazzat?' Urik slurs, glancing over his shoulder, already somewhat buzzed on your heavy load of cum being absorbed by his insides. And that's the only thing he manages to say, as a bellowing cheer goes through the crowd when the brute takes your offer and rams his already rock hard into Urik's cum-filled, sloppy hole, coming out white with your seed at his first pull back. Other orc warriors cheer at your generosity, and you're getting lots of fist-bumps, bro-punches to the shoulder and offers of foaming orc brew for you to chug while Urik is penetrated again and again, with many a load being dumped into his receptive boypussy.";
			say "     There is so much of it that it starts to squirt out around the later participants cocks, running down the insides and backs of Urik's legs, until it is licked up by the orc breeders soon kneeling between and beside Urik's legs. The large orc breeder loves all the attention he's getting, riding a sustained high from all the rich orc cum being churned up inside him, and you can see that he's rock hard himself throughout the experience, with multiple smaller breeders kneeling before his cock and lapping at it, while the original cock-sucker is long passed-out, sated on Urik's copious seed bulging his stomach a little. The gangbang goes on for a long while, complete with you getting hard again as you see the absolute mess that the gathered orcs make of Urik, sliding yourself into his sodden fuckhole and dropping another load inside. Only when Urik's legs eventually go weak and the big brute passes out into blissful oblivion due to a massive overdose of potent orc cum do you call it for now, waving off those orcs who would have happily continued to breed the unconscious brute. Instead, you let them help you carry Urik outside, where he's cleaned up by emptying a water barrel over him, then brought back inside and put on a sofa to sleep off his buzz.";
		else if "Oral Only Slut" is listed in Traits of Urik: [free mouth fuckhole]
			say "     Slapping the nearest orc warrior's back in camaraderie, you put a wide grin on your face and yell that today will be a treat for all your orc bro's. Urik's ass may be yours, but you're willing to let them fuck his mouth all they want. With that, you take hold of Urik's arm and pull him around, making the big brute look at you wide-eyed and slur 'Whazzat?' as he clearly is buzzed by your heavy load of cum that is being absorbed by his insides. You don't reply, simply pushing down on his shoulders and making him kneel, then grasp the back of his head with your hand and ram his open mouth down on the orc warrior's erection. A bellowing cheer goes through the crowd when the horny green-skin starts to face-fuck Urik's at full force, his balls slapping against your slut's chin. While there's some muttering about wanting to experience Urik's amazing ass, most orc warriors cheer at your generosity, and you're getting lots of fist-bumps, bro-punches to the shoulder and offers of foaming orc brew for you to chug while a load of cum is pumped right into Urik's stomach before much longer, with another orc stepping up right after.";
			say "     With all the face-fucking an already drunk Urik, he drools quite a lot of the cum, which draws more breeders to his side, kneeling next to the big brute to lick and kiss Urik and the current face-fucker, hungrily swallowing all of the orcish ambrosia they can get. The large orc breeder loves all the attention he's getting, riding a sustained high from all the rich orc cum being churned up inside him, and you can see that he's rock hard himself throughout the experience, with the original cock-sucking breeder now stretched out on the ground before him, still suckling his erection and chugging every drop of cum Urik has to give. His belly is a little swollen from the output of your slut, but he just can't get enough. The face-fucking gangbang goes on for a long while, complete with you getting hard again as you see the absolute mess that the gathered orcs make of Urik, sliding yourself into his sodden mouth and dropping another load inside.";
			WaitLineBreak;
			say "     Only when Urik's legs eventually go weak and the big brute passes out into blissful oblivion due to a massive overdose of potent orc cum do you call it for now, waving off those orcs who would have happily continued to breed the unconscious brute. Instead, you let them help you carry Urik outside, where he's cleaned up by emptying a water barrel over him, then brought back inside and put on a sofa to sleep off his buzz.";
		else if "Breeder Only Slut" is listed in Traits of Urik:
			LineBreak;
			say "     Feeling playful, you go to grab a nearby breeder, drawing him closer. Telling the very pretty example of a submissive orc that you want him to eat out Urik, you grab him by the back of the head and press his face between your slut's buttocks, at which point the slender green-skin starts to lap eagerly. At first using only his tongue while you hold him in place, then later going on to include his fingers to tease Urik's hole open, the happy breeder eats out your orc to his hearts content, hungrily swallowing all of your seed that he can get. His eyes go a little glazed as the potency of the aphrodisiacs in your cum hit his system, making the breeder moan whorishly between slurps. This turns around the mood among the orc warriors who had been starting at you in jealousy so far, as the men murmur among themselves how hot this looks and start to jerk off to the show.";
			say "     One somewhat less drunk orc actually realizes that while he may not use Urik, the second breeder is fair game, so he strides up with a grin and shoves himself into the rimming orc's rear and starts to fuck him with deep thrusts. Meanwhile, Urik revels in this extra level of anal stimulation, letting out unintelligible noises of pleasure as he rocks his rear back against the other breeder's face. After a little while comes again, providing another load to the second breeder that crawled in front of him earlier. You watch them go at it for a while, enjoying the show, before the group of three orc breeders and the warrior eventually wind down and the two breeders that aren't yours are immediately snatched up to be fucked by other horny orc warriors.";
	else: [Urik in the library]
		if PlayerFriended of Urik is false and PlayerControlled of Urik is false: [pre-slut/bro choice scene]
			say "     Pushing down on the orc's shoulders, you make him kneel at your feet, then [if player is not barecrotch]bare your crotch impatiently[else]stroke over your crotch playfully[end if]. The rapidly hardening length of your manhood swings right in front of Urik's face, and a second later, you take hold of it and brush it over his lips. Urik grunts in a lusty tone as he slides his lips over your shaft, taking it into his mouth all the way without stopping even once. You really should thank Boghrim sometime - the time Urik spent as his cum-slut really did wonders for your muscular slut's oral skills. You look down upon Urik as he eagerly bobs his head over your dick, working his tongue along your hard length while giving you an expert blow-job. Quite a fun situation, with this mighty warrior now being your obedient fuck-toy.";
			say "     Almost tempted to take hold of Urik's head with both hands as you face-fuck him as hard as you can, you nevertheless pull your manhood out of his mouth before much longer. The fact that he tries to follow it by stretching his neck makes you chuckle, even as you slide your fingers between the strands of his shoulder-long black hair. Grabbing a handful, you pull his head back somewhat roughly and look down into his face, then order him to turn around and present his ass to you. 'Yeah, I need it bad!' the big orc grunts eagerly as he stands up from the ground. The mesh pouch at the front of his skin-tight stripper underwear bulges out quite a bit from his hard cock. Turning around, he takes a few steps towards the nearest wall, placing his large hands against it to brace himself as he pushes his ass out invitingly. You can't help but appreciate how perfect his outfit is for this - bare buttocks for easy access.";
			WaitLineBreak;
			say "     With a grin, you slap the rounded cheeks of the orc's bare butt, leaving a hand-print until it fades away some seconds later. Urik replies only with a happy groan... he likes it rough! Quickly getting rid of your own clothes and gear, you step up behind the powerful orc and smack your shaft into the crack between his buttocks. Rubbing up against him, you revel in the power you have over this green-skinned man - and the sensations of his warm skin against yours of course. Willing to give your eager orc a treat, you lean forward and reach around him, hands stroking over the tented mesh bulge of his briefs. Tugging it down to free Urik's thick pole, you stroke up and down along his length, milking the copious pre-cum welling up from his cum-slit into your other hand - then lube your own cock with the slick, somewhat sticky goop.";
			say "     Time to fuck your orcish butt-slut! Lining your cock up with his pucker, you brush over it lightly and then settle the tip of your erection against the small dip it forms, not yet pushing in. Then you lean forward, grabbing hold of the studded straps of his leather harness - and with a satisfied shout, you ram yourself home! Balls deep in one thrust! The super-sized orc breeder feels amazing around your prick - warm and tight, but with his inner muscles still spreading readily in answer to your push into him. Urik groans at your penetration, breath pushed out of him from your forceful entry. Nevertheless, as soon as he can take in a gulp of air, the orc gasps out in an excited tone, 'Pound my ass [UrikPlayerAddress]!' and rocks his body back against your hips. More than ready to comply with his request, you slide yourself back out until just the tip of your meat remains inside him. The way his back door gets pulled outwards a little by your receding shaft makes you throb hard - it's almost as if the orc's hole doesn't want to let go of your cock.";
			WaitLineBreak;
			say "     A heartbeat later, you're back to thrusting all the way into your orc slut, making your balls slap against his own as you drive yourself home and proceed to pound into him again and again and again. The interior of the library is filled by the sounds of your coupling - moans and grunts, as well as Urik's bellows to take him harder. It's hot as hell to shaft his rear deeply... and definitely something you wouldn't have expected to be doing before all of this chaos started. Openly fucking someone in the middle of a library (abandoned or not) - and that someone being a large and muscular orc, who is rock hard from submitting to you. This nanite apocalypse does have some upsides, that's for sure! With your dick buried in Urik's back passage, feeling his muscles flex around your length, you revel in the sensations and for a little while forget about all the troubles out in the city, focusing fully on you and him for now, and the way his insides tightly grip your [cock of player] shaft.";
			say "     After a little while longer of hard fucking, Urik starts to pant and moan even louder than before and you can feel his inner muscles clench a little tighter. He's close! With a broad grin on your face, you stop your thrusts suddenly, then pull firmly on the leather harness to keep him tightly pressed against your crotch. 'GhnnngH!' he groans breathlessly, 'I need to cum, now!' You give him a little thrust of your hips, sliding in and out for a second, then pause once more to tease the needy slut. Using both your hands, you give his buttocks a little bit of a spanking, watching the meaty globes wiggle left and right of where your erection enters the orc. Every time your hands hit him, the orc's hole squeezes tight around you, heightening your pleasure without you even needing to move your hips at all. 'Fuuuuckkk yeah! Use me! But please [UrikPlayerAddress]! Fuck the cum out of me soon, or I'm gonna burst!' Urik finally begs, prompting you to start pounding him again, harder than ever before.";
			WaitLineBreak;
			say "     After another moment or two of thrusting deep into Urik and rubbing his prostate with your cock, he lets out a satisfied bellow, stiffening under (and around) you. You can feel his inner muscles twitch and flex in a rhythmic pattern and quickly lean forward over his broad back, arms sliding around Urik to take hold of his cock. The mighty pole of orcish man-meat is warm and firm, pulsing out heavy blasts of orc cum to the ground and wall against which he's bracing. While the orc's balls send forth their bounty of creamy cum to give the library a new coat of paint, your own erection is almost being milked by the green-skinned slut's inner muscles. Just moments after Urik himself, you reach your own orgasm while balls-deep inside him and start to fill your green-skinned muscle-stud with cum. Throbbing deep inside him, your cock paints Urik's back passage white with a thick and creamy load, renewing your claim on the big brute's ass as your property.";
			say "     You stay like that for a while - cock buried inside the orc and resting against his unwavering and firm back. 'That really hit the spot,' Urik tells you breathlessly, squeezing his insides a little around your shaft, as if to milk more cum out of you. In response, you wrap your arms around him and play with the orc's nipples, pinching and flicking them until the stand out as erect little nubs. It's an awesome treat to play with your orc like this, riding out your afterglow, but eventually you start going soft inside him and withdraw yourself from Urik's well-bred asshole with a sigh. It doesn't look like the orc is willing to part with even the smallest amount of your seed, as his hole stays open and gaping for only a second or two before the ring muscle clenches tight again. The recuperative powers of orc physiology really are quite amazing, as he recovers within moments - even if it is only an over-stretched pucker and not really a physical wound or anything.";
			WaitLineBreak;
			say "     Letting out a very satisfied groan, the orc turns around to half-slump against the wall, looking at you with a sated, happy expression on his face. 'That was a blast!' the orc tells you with a grin and shows a thumbs-up. 'I'm looking forward to the next time you wanna relieve some pressure.' Looking down over himself, the orc sees a drop of cum clinging to his dickhead and quickly wipes it off with a finger he then brings up to his mouth to lick it off. Smacking his lips in satisfaction, Urik then takes a deep breath and says, 'Damn - it's still so hard to believe that getting pounded is even better than shafting a guy...' You leave him to ponder his new reality as an orc breeder and get dressed.";
		else if PlayerControlled of Urik is true: [slut scene]
			say "     Walking up to Urik, you stroke your hand over his muscle-packed chest, giving his nipples a few pinches and flicking them lightly, which draws a moan from the big breeding slut. Then you tell him that you want to make use of him. 'Yes [UrikPlayerAddress],' he replies submissively, putting a grin on your face at the fact that he seems to have internalized the role you've given him. Pushing down on the orc's shoulders, you feel him resist for a second, before he gives in and obeys as you make him kneel at your feet, ready as you [if player is not barecrotch]bare your crotch and [end if]take hold of your rapidly hardening manhood and brush it over his lips. Urik grunts in a lusty tone, his tongue flicking outside to lick your dickhead, followed by him basically inhaling your erection, not stopping until his nose is pressing against your pubic mound.";
			say "     Breathlessly telling the orc warrior that he's a good little cumslut, you look down upon Urik as he bobs his head over your dick, working that tongue of his along your hard length while giving you an expert blow-job. You can't help but feel that he was wasted as just another orc warrior before, as he adapted to this new role so readily and became a lustful fucktoy for you. The orc goes to down on your dick with a cum-hungry slut's enthusiasm, so much so that you are tempted to face-fuck him instead, giving him a deep thrust all of a sudden and chuckling as he chokes on your dick a little. Not letting your libido get out of hand, you relent after a few moments though and soon pull out, leaving Urik coughing and gasping for air. Grabbing a handful of his shoulder-length, soft black hair, you pull the orc's head back to make him look at you, then tell him that you want to fuck his ass from behind. '[UrikPlayerAddress], I need it bad!' the big orc grunts readily enough, standing up from the ground right away. The mesh pouch at the front of his skin-tight stripper underwear bulges out quite a bit from the hard and erect monster of his cock, underlining the depth of his submission.";
			WaitLineBreak;
			say "     Turning around, Urik takes a few steps towards the nearest wall, placing his large hands against it to brace himself as he pushes his ass out invitingly. You can't help but appreciate how perfect his outfit is for this - bare buttocks for easy access. With a grin, you slap the rounded cheeks of the orc's bare butt, leaving a hand-print until it fades away some seconds later. Urik replies only with a happy groan... he likes it rough! You lay into him some more, getting a little stronger with your slaps of his buttocks and giving the round globes a brighter emerald-green hue as Urik twitches with each strike, his sounds escalating to a needy whine. Quickly[if player is not naked] getting rid of your own clothes and gear[end if], you step up behind the powerful orc and smack your shaft into the crack between his buttocks. As you rub yourself against him, you revel in your ownership and power over this green-skinned man - and the sensations of his warm skin against yours of course.";
			say "     Bending forward to speak into Urik's ear, you tell him that his dick isn't more than a lube-dispenser now, as he's nothing but your receptive fuckhole now. Reaching around the orc, your hands stroke over the tented mesh bulge of his briefs, then tug it down to free Urik's thick pole, hard and erect despite your harsh words. You stroke up and down along his length, milking the copious pre-cum welling up from his cum-slit into your other hand - then lube your own cock with the slick, somewhat sticky goop, and leave his erection dangling, without a second thought of his pleasure. Then you line your cock up with his pucker, first brushing over it lightly and then settle the tip of your erection against the small dip it forms, not yet pushing forward. 'Put it in already, [UrikPlayerAddress]!' Urik moans in a needy tone, to which you give the back of his head a slap, demanding that he beg some more. When the orc does so in sufficient deference, you grab hold of the studded straps of his leather harness and ram yourself home with a satisfied shout! Balls deep in one thrust! The super-sized orc breeder feels amazing around your prick - warm and tight, but with his inner muscles still spreading readily in answer to your push into him.";
			WaitLineBreak;
			say "     Urik groans at your penetration, breath pushed out of him from your forceful entry. Nevertheless, as soon as he can take in a gulp of air, the orc gasps out in an somewhat strained tone, 'Nnnnghhh! Damn, [UrikPlayerAddress]!' After a moment of just grinding against his ass to go as deep as you can, you slide yourself back out until just the tip of your meat remains inside him. Watching the way his back door gets pulled outwards a little by your receding shaft makes you throb hard and leak some pre-cum into him - it's almost as if the orc's hole doesn't want to let go of your cock, and he starts rocking back against you. A heartbeat later, you're back to thrusting all the way into your orc slut, making your balls slap against his own as you drive yourself home and proceed to pound into him again and again and again. The interior of the library is filled by the sounds of your coupling - moans and grunts, as well as Urik's needy bellows to take him harder. It's hot as hell to shaft his rear deeply... and definitely something you wouldn't have expected to be doing before all of this chaos started.";
			say "     Openly fucking someone in the middle of a library (abandoned or not) - and that someone being a large and muscular orc, whom you own as property and who is rock hard from submitting to you. This nanite apocalypse does have some upsides, that's for sure! With your dick buried in Urik's back passage, feeling his muscles flex around your length, you revel in the sensations and for a little while forget about all the troubles out in the city. After who knows how long a time of hard fucking, you notice Urik starting to pant and moan even louder than before. You can feel his inner muscles clench a little tighter, telling you that he must be close! With a broad grin on your face, you stop your thrusts suddenly, then pull firmly on the leather harness to keep him tightly pressed against your crotch. 'GhnnngH!' he groans breathlessly, 'I need to cum, now!'";
			WaitLineBreak;
			say "     You give him a little thrust of your hips, sliding in and out for a second, then pause once more to tease the needy slut. Using both your hands, you give his buttocks a hard spanking, watching the meaty globes wiggle left and right of where your erection enters the orc. Every time your hands hit him and leave emerald-green outlines of your fingers, the orc's hole squeezes tight around you, heightening your pleasure without you even needing to move your hips at all. 'Fuuuuckkk! Use me! But please [UrikPlayerAddress]! Fuck the cum out of me soon, or I'm gonna burst!' Urik finally begs, prompting you to start pounding him again, harder than ever before. After another moment or two of thrusting deep into Urik and rubbing his prostate with your cock, he lets out a satisfied bellow, stiffening under (and around) you. You can feel his inner muscles twitch and flex in a rhythmic pattern, in rhythm with the orc's mighty pole pulsing out heavy blasts of orc cum to the ground and wall against which he's bracing. He came without anyone ever touching his dick, just from the sensations of his [UrikPlayerAddress] ramming into him.";
			say "     Just moments after Urik himself, you reach your own orgasm while balls-deep inside him and start to fill your green-skinned muscle-stud with cum. Throbbing deep inside him, your cock paints Urik's back passage white with a thick and creamy load, renewing your claim on the big brute's ass as your property. You stay like that for a while - cock buried inside the orc and resting against his unwavering and firm back. Reaching around to stroke his abs, you ask him if he can feel your offspring taking hold inside him, as they no doubt will soon. If not from this fuck, then the next. Urik stiffens a little at your words, but his insides react on instinct still, squeezing a little around your shaft, as if to milk more cum out of you. You can't help but chuckle and tell him how much of a needy breeder slut he is, to which the orc replies, 'Yes [UrikPlayerAddress].' He's just taking your ribbing silently, so you keep pushing, reaching around to pinch and flick his nipples, teasing him about being ready to feed the next generation with them. It's an awesome treat to play with your orc like this, riding out your afterglow, but eventually you start going soft inside him and withdraw yourself from Urik's well-bred asshole with a sigh.";
			WaitLineBreak;
			say "     It doesn't look like the orc is willing to part with even the smallest amount of your seed, as his hole stays open and gaping for only a second or two before the ring muscle clenches tight again. The recuperative powers of orc physiology really are quite amazing, as he recovers within moments - even if it is only an over-stretched pucker and not really a wound. Letting out a very satisfied groan, the orc turns around to half-slump against the wall, looking at you with a sated expression on his face. 'I can feel your load inside me, it's soo good,' Urik says with a somewhat cum-drunk sigh as your cum is being absorbed by his inner walls. Looking down over himself, the orc sees a drop of cum clinging to his dickhead and quickly wipes it off with a finger he then brings up to his mouth to lick it off. Seeing his desire for cum, you have an idea and with a grin, tell him to lick up the mess he made. There is only a small moment of hesitation before he starts to do just that, kneeling down to lap his own cum off the wall.";
		else if PlayerFriended of Urik is true: [bro scene]
			say "     Walking up to Urik, you stroke your hand over his muscle-packed chest, admiring your strong warrior's physique and telling him you're proud to have someone like him in your tribe. 'Thanks [UrikPlayerAddress],' he replies with a tusk-bearing grin, flexing demonstratively for you, in between returning some caresses of his own. Being an breeder on top of a powerhouse of a fighter, the orc knows full well where things are going, and feeling his pride being stroked only adds to the big man's lust. It only takes a light tap on the orc's shoulders to make him kneel at your feet, obedient and ready as you [if player is not barecrotch]bare your crotch and [end if]take hold of your rapidly hardening manhood and brush it over his lips. Urik grunts in a lusty tone, his tongue flicking outside to lick your dickhead, followed by him basically inhaling your erection, not stopping until his nose is pressing against your pubic mound.";
			say "     Breathlessly praising the orc warrior for his oral skills, you look down upon Urik as he bobs his head over your dick, working his tongue along your hard length while giving you an expert blow-job. You can't help but feel that you made the right decision about him before, declaring Urik a proper part of your tribe and earning his undying loyalty as well as boundless lust. The orc goes to down on your dick with great enthusiasm, so much so that you have to place both of your hands on his head and hold him still to pull your manhood out before it becomes too tempting to just let him continue and blow a load down his throat. As Urik looks up at you with a grin, you brush your fingers through his soft, shoulder-length black hair and tell him that you want to fuck his ass from behind. 'Yeah, I need it bad!' the big orc grunts eagerly as he stands up from the ground. The mesh pouch at the front of his skin-tight stripper underwear bulges out quite a bit from the hard and erect monster of his cock that speaks volumes of the orc's feelings towards you.";
			WaitLineBreak;
			say "     Turning around, Urik takes a few steps towards the nearest wall, placing his large hands against it to brace himself as he pushes his ass out invitingly. You can't help but appreciate how perfect his outfit is for this - bare buttocks for easy access. With a grin, you slap the rounded cheeks of the orc's bare butt, leaving a hand-print until it fades away some seconds later. Urik replies with a happy groan... he likes it rough! 'Yeah, you know my ass is awesome! Give me some more, I wanna feel your hands on me!' Playfully swatting his buttocks some more, you watch them shake a little and then switch up between caressing their roundness and giving more little slaps, much to the pleasure of your orc companion. Quickly[if player is not naked] getting rid of your own clothes and gear[end if], you step up behind the powerful orc and smack your shaft into the crack between his buttocks. He rubs himself against your touch and you revel in holding both the respect as well as ownership of this green-skinned Hercules - and the sensations of his warm skin against yours of course.";
			say "     Wanting to give your eager orc a treat, you lean forward and reach around him, hands stroking over the tented mesh bulge of his briefs. Tugging it down to free Urik's thick pole, you stroke up and down along his length, milking the copious pre-cum welling up from his cum-slit into your other hand - then lube your own cock with the slick, somewhat sticky goop. 'That's so hot, knowing that I'm on your dick when you fuck me!' Then you line your cock up with his pucker, first brushing over it lightly and then settle the tip of your erection against the small dip it forms, not yet pushing in. 'Take me, [UrikPlayerAddress],' Urik moans in a needy tone, and you are only too happy to comply with his urgent request. Grabbing hold of the studded straps of his leather harness, you ram yourself home with a satisfied shout! Balls deep in one thrust! The super-sized orc breeder feels amazing around your prick - warm and tight, but with his inner muscles still spreading readily in answer to your push into him.";
			WaitLineBreak;
			say "     Urik groans at your penetration, breath pushed out of him from your forceful entry. Nevertheless, as soon as he can take in a gulp of air, the orc gasps out in an excited tone, 'Pound my ass [UrikPlayerAddress]!' and rams his body back against your hips, basically fucking himself on your shaft for a little while. He glances over his shoulder and grins broadly with bared tusks, saying, 'That's how I like it! Give me that big dick like this!' Calming down again after meeting your eyes and wiggling his eyebrows, the orc proceeds to just grind his ass against your hips, wiggling it as a sign for you to grab on and take over once more. Doing just that, you slide yourself back out until just the tip of your meat remains inside him. Watching the way his back door gets pulled outwards a little by your receding shaft makes you throb hard and leak some pre-cum into him - it's almost as if the orc's hole doesn't want to let go of your cock. A heartbeat later, you're back to thrusting all the way into your orc brother, making your balls slap against his own as you drive yourself home and proceed to pound into him again and again and again. The interior of the library is filled by the sounds of your coupling - moans and grunts, as well as Urik's bellows to take him harder.";
			say "     It's hot as hell to shaft his rear deeply... and definitely something you wouldn't have expected to be doing before all of this chaos started. Starting an orc tribe in a former library, with this large and muscular orc, who is rock hard from submitting to you and feeling his [UrikPlayerAddress] ramming into him with hard and repeated thrusts. This nanite apocalypse does have some upsides, that's for sure! With your dick buried in Urik's back passage, feeling his muscles flex around your length, you revel in the sensations and for a little while forget about all the troubles out in the city. After who knows how long a time of hard fucking, you notice Urik starting to pant and moan even louder than before. You can feel his inner muscles clench a little tighter, telling you that he must be close! With a broad grin on your face, you stop your thrusts suddenly, then pull firmly on the leather harness to keep him tightly pressed against your crotch. 'GhnnngH!' he groans breathlessly, 'I need to cum, now!'";
			WaitLineBreak;
			say "     You give him a little thrust of your hips, sliding in and out for a second, then pause once more to tease the needy slut. Using both your hands, you give his buttocks a little bit of a spanking, watching the meaty globes wiggle left and right of where your erection enters the orc. Every time your hands hit him, the orc's hole squeezes tight around you, heightening your pleasure without you even needing to move your hips at all. 'Fuuuuckkk yeah! Use me! Rub your dick against my prostate, [UrikPlayerAddress]! Fuck the cum out of me, or I'm gonna burst!' Urik finally begs, prompting you to start pounding him again, harder than ever before. After another moment or two of thrusting deep into Urik and rubbing his pleasure-spot with your cock, he lets out a satisfied bellow, stiffening under (and around) you. You can feel his inner muscles twitch and flex in a rhythmic pattern and quickly lean forward over his broad back, arms sliding around Urik to take hold of his cock. The mighty pole of orcish man-meat is warm and firm, pulsing out heavy blasts of orc cum to the ground and wall against which he's bracing. While the orc's balls send forth their bounty of creamy cum to give the library a new coat of paint, your own erection is almost being milked by the green-skinned slut's inner muscles.";
			say "     Just moments after Urik himself, you reach your own orgasm while balls-deep inside him and start to fill your green-skinned muscle-stud with cum. Throbbing deep inside him, your cock paints Urik's back passage white with a thick and creamy load, renewing your claim on the big brute's ass as your breeding hole. You stay like that for a while - cock buried inside the orc and resting against his unwavering and firm back. 'That really hit the spot,' Urik tells you breathlessly, squeezing his insides a little around your shaft, as if to milk more cum out of you. In response, you wrap your arms around him and play with the orc's nipples, pinching and flicking them until the stand out as erect little nubs. He leans his head against yours in a comfortable moment of closeness. It's an awesome treat to play with your orc like this, riding out your afterglow, but eventually you start going soft inside him and withdraw yourself from Urik's well-bred asshole with a sigh.";
			WaitLineBreak;
			say "     It doesn't look like the orc is willing to part with even the smallest amount of your seed, as his hole stays open and gaping for only a second or two before the ring muscle clenches tight again. The recuperative powers of orc physiology really are quite amazing, as he recovers within moments - even if it is only an over-stretched pucker and not really a wound. Letting out a very satisfied groan, the orc turns around to half-slump against the wall, looking at you with a sated, happy expression on his face. 'That was a blast!' the orc tells you with a grin and shows a thumbs-up. 'I'm looking forward to the next time you wanna relieve some pressure.' Looking down over himself, the orc sees a drop of cum clinging to his dickhead and quickly wipes it off with a finger that he then brings up to his mouth to lick. Smacking his lips in satisfaction, Urik then takes a deep breath and says, 'Damn - being part of your tribe is really something.' He grins at you happily as he says this, touching the side of your arm and giving it a squeeze.";
	[TODO: Add Impregnation chances, plus self-impregnation chance]
	NPCSexAftermath Urik receives "AssFuck" from Player;
	now Stamina of Urik is turns; [last time he got some cum]

to say UrikSex_RideVaginal: [Urik fucks player pussy]
	say "     <WIP>";
	NPCSexAftermath Player receives "PussyFuck" from Urik;

to say UrikSex_RideAnal: [Urik fucks player ass]
	say "     <WIP>";
	NPCSexAftermath Player receives "AssFuck" from Urik;

to say UrikSex_Submission: [player submits to Urik - bad end if the player treated him badly]
	if PlayerControlled of Urik is true: [slut scene - bad end]
		say "     Walking up to Urik, you stroke your hand over his muscle-packed chest, letting your fingers trace over his rock-hard abs as they follow a trail of hair to his crotch. Fingertips going through his curly pubic hair, you cup the large bulge of his crotch, squeezing it in anticipation. 'You like handling a big one, eh [UrikPlayerAddress]?' the orc comments, a grin spreading over his face as pride brings a little bit of his old self back to the forefront - the boisterous, dominant orc you originally saw in the orc lair. Not bothering to deny it, or even remind the orc that you're the boss, you glance down and stroke his bulge some more, feeling it fill out under your fingers. Soon, your eager fingers work to bare the rapidly hardening shaft, allowing you to feast your eyes on it. The orc really has a massive, thick prick, with a weighty pair of balls to go with it. Stroking up and down, you're rewarded with a thick droplet of pre-cum welling up at his cum-slit, bringing with it an enticing aroma of manliness.";
		say "     You find yourself tempted to taste Urik's pre, quickly wiping up the glistening bead of fluid and bringing it to your tongue. It's musky, manly and tastes great! As you suckle the essence of the big orc from your fingertip, a moan of pleasure rises from the depth of your throat, which Urik himself comments with a hearty chuckle. Feeling your libido spike as the potent fluid affects your body, you feel ever more convinced of what you planned to do: Taking the humongous cock and feeling it stretch your insides around Urik's girth! After a last appreciative squeeze of the orc's big balls, you pull your hands away from his muscular body and [if Player is not naked]quickly strip, piling all your clothes and gear[else]quickly take off your gear, piling it[end if] on the ground before taking a position on your back, legs braced slightly spread. Breathily, you call out for Urik to take you, now!";
		WaitLineBreak;
		say "     Eyes widening at the request, [if Player is not male]the orc looks down at your dickless crotch and lets out a grunt of disapproval. 'Not even a dude anymore. Stupid entitled bitch. Hope the ass is at least tight,' the orc says under his breath, then gives himself a push to get to work. Resigned to service you, he sinks to his knees between your legs, towering over your stretched-out body. [else]he grunts, 'Yeah! Now we're talking!' With temperance being far from one of Urik's virtues, the orc's quick to react, lowering himself onto his knees between your legs and towering over you. [end if]His big, green hands grab your thighs firmly, spreading them further to allow his broad form to scooch right up to your crotch. Then he gathers a gob of spit, letting it drip off his tongue to land between your buttocks as he pulls your hips up in preparation. The next thing you feel is the warmth of his dickhead brushing up and down along your crack, spreading the improvised lube and mixing it with the pre-cum he's leaking steadily by now. Some pleasant tingles run through you as he rubs his shaft [if player is herm]over your nether lips, then along your own manhood's length[else if player is female]over your nether lips and clit[else if player is male]along your own manhood's length[else]over the sensitive skin of your sexless crotch[end if], before moving on to lining his erection up with your asshole.";
		say "     Urik spends a few more scant moments rubbing his cock over your pucker, pushing in a little and backing off to stretch it some and allow the mixture of his spit and pre to soak into you. Looking down as you prepare yourself for what is to come, you see his shaft throb a little, heralding more pre-cum being brought forth to slick you up. Then, all too soon for your helpless hole - or maybe not soon enough for your cock-hungry self, the orc pushes into you with unrelenting force and grunts, 'Take it, [if Player is not female]whore[else]cunt[end if]!' You cannot do anything but gasp and writhe under him as Urik's monster of a cock penetrates into you, spreading your inner walls around its girth. The mixture of eager lust and breathlessly endured discomfort as you adjust to having him inside you clearly excites the big male, and you can hear Urik grunt, 'So much for being the big boss, hah. Whines like a needy breeder!'";
		WaitLineBreak;
		say "     Trying to think of a reply, you open your mouth and... all that comes out is a shocked shout as Urik rams several more inches of his dick up your ass, spreading the ring of your muscles even further! Pain and pleasure mix and combine as his dick rubs [if player is male]your prostate[else]sensitive spots inside you[end if], followed by a slight withdraw and then another forceful thrust! 'Gonna break you, [if Player is not male]cunt! You're not the boss of me! Gonna turn your ass into a proper breeding hole, I won't even need to stick it into that loose, flabby pussy you have!' [else]fucker! This hole'll be my new cock-sleeve!'[end if] One or two more of those moves to jack-hammer into you later, you can feel some new pressure against your crotch. It takes a second or two before your foggy mind can understand what it is - Urik's huge balls, pressing against your skin. He's literally balls-deep inside you! [if Cock Length of Urik > Asshole Depth of Player + 2]It's almost inconceivable how he could have fit[else]You can take cocks this big, but it's still quite a lot[end if] - not that you have time to mull over it more than a second or two before the orc starts to hammer your hole in a wild fuck!";
		say "     Being reduced to little more than a cock-sheath for a huge, horny orc, your gasps and moans mix with Urik's satisfied grunts and the slap of his balls to create the unmistakable sound of a bitch being used hard, deep, and loving every minute of it. You chose to submit to him after all, and with the resulting pleasure and all the potent fluids Urik's been leaking into you, there is little doubt in your hazy mind that this is the best you've ever felt! Whimpering and asking for more, you wrap your legs around his hips and push him with your heels, literally begging for the next harsh thrust. 'Fucking [if Player is not male]entitled bitch! You think you can just make a guy bow down and obey you? Look at yourself now, pushing back against my prick as it reams you a proper breeding hole!' [else]weakling - and you thought you could control me?! Look at you now, pushing yourself on my prick as it destroys your puny hole!' [end if]Moments of pleasure flow into each other and you couldn't even tell how long he's been fucking you by the time Urik's grunts build to a shouted crescendo, with him burying his whole length deep inside you as it starts to flood your hole with his rich seed! The sensation of him pulsing his sperm into your depths pushes you over the edge right along with Urik, and you [if Player is herm]spray strings of cum over your chest and leak femcum[else if player is male]spray strings of cum over your chest[else if Player is female]leak a lot of femcum[else]shudder in pleasure[end if] while panting loudly.";
		NPCSexAftermath Player receives "AssFuck" from Urik;
		WaitLineBreak;
		say "     The deluge of aphrodisiac-laden orc cum combines with your own orgasm, leaving you blissed out, cum-drunk and giggly. Riding the pleasure-high, you writhe weakly under Urik, squeezing your hole around his shaft as if to milk more cum out of him, or coax him into an encore. It takes a moment before you register a contemptuous scoff reaching your ears for what it is, at which point you open your eyes to look up at the orc in confusion. 'So much for the big bad 'you're nothing but a slut to me' boss! Who's the whore now, eh? Almost let myself slump into following along with you like a weak little breeder. Thanks for reminding me how good it feels to be the one on top, bitch!' As a look of shock at the sudden turn-around crosses your face, Urik clamps one hand over your mouth to prevent you from speaking (not that you'd have managed more than some slurred words right now). [if Player is not male]'Just shut up! No one's interested in what you have to say, whore! You're just a breeding hole to me, understand?!'[else]'Just shut up and moan like the punk-ass slut you are!'[end if]";
		say "     With that said, the big male begins to fuck you again, his cock quickly regaining what little hardness it lost as the orc establishes dominance over you. Exhausted from the fuck and thoroughly drunk on the orc's cum, you have no chance to resist him at all as Urik fucks you again right away, dumping another, and another load inside you. Or maybe more, you can't be sure as you pass out after the third. ";
		if "Microwaved" is not listed in Feats of Player and scenario is not "Researcher": [player is able to transform]
			say "Being subjected to massive amounts of Urik's transformative sperm being pumped into your body, you find yourself being molded to the orc's preferred body shape in short order. Green-skinned, muscular and male, with a juicy ass to fuck and sate his relentless lusts. Before long, your stomach begins to swell not just from the cum, but also the first of many orclings he knocked you up with!";
		else:
			LineBreak;
		trigger ending "Urik's Breeder";
		end the story saying "You treated Urik as a slut, then gave him power over you - and he used the chance to turn the tables!";
	else if PlayerFriended of Urik is true: [bro scene]
		say "     Walking up to Urik, you stroke your hand over his muscle-packed chest, admiring your strong warrior's physique and telling him you're proud to have someone like him in your tribe. 'Thanks [UrikPlayerAddress],' he replies with a tusk-bearing grin, flexing demonstratively for you. Letting your fingers trace over his rock-hard abs as they follow a trail of hair to his crotch, you run your finger through his curly pubic hair, then cup the large bulge of his crotch, squeezing it in anticipation. 'You like handling a big one, eh [UrikPlayerAddress]?' the orc comments, a grin spreading over his face as pride brings a little bit of his old self back to the forefront - the boisterous, dominant orc you originally saw in the orc lair. Not bothering to deny it, you meet his eyes and smile yourself, then add that you were interested in him for more than just a hole to fuck. 'Is that so?' Urik replies, his thick dick throbbing under your fingers.";
		say "     'I bet I know what you're about to say next. You want a big, orc daddy to show you what he can do with his prick!?' Urik states, with you nodding [if Player is submissive]eagerly and saying that you want his daddy dick inside you [else]and telling him you want to try out being submissive for a little bit [end if]as you grasp his weighty pair of balls and massage them. Chuckling, he bares his rapidly hardening shaft, allowing you to feast your eyes on it. It is long, thick and meaty, with a droplet of pre-cum welling already up at his cum-slit, bringing with it an enticing aroma of manliness. You find yourself tempted to taste Urik's pre, quickly wiping up the glistening bead of fluid and bringing it to your tongue. It's musky, manly and tastes great! As you suckle the essence of the big orc from your fingertip, a moan of pleasure rises from the depth of your throat, which Urik himself comments with a hearty chuckle. 'Man, this really is quite a different tribe. I like it!' he adds, stroking over the back of your head and giving your shoulder a squeeze.";
		WaitLineBreak;
		if Player is submissive:
			say "     Feeling your libido spike as the two of you touch each other and give in to your desire for submission, with the potent fluid of his pre affecting your body on top of that, you feel ever more convinced of what you planned to do: Taking the humongous cock and feeling Urik's girth stretch your insides! After a last appreciative squeeze of the orc's big balls, you pull your hands away from his muscular body and [if Player is not naked]start to quickly strip, only to feel the orc's hand on your arm. 'No, no. Give me a show!' he says with a grin, and you oblige, swaying your hips as you slide off piece by piece, finally ending up with a pile of clothing and gear that you bend over to place the last item on, wiggling your ass at your green-skinned partner [else]quickly take off your gear, piling it on the ground [end if]before stepping up to the large orc, looking up to him and waiting for him to take you. 'Trying to be so good for daddy!? Good little breeder!' he says in a mix of amusement and lust, with you giving a submissive whimper and nodding to him. The orc's cock visibly throbs in excitement, with Urik immediately snatching you up in his arms, your naked bodies closely pressed together as he lowers you to the ground. Looking down at your stretched-out form, he grunts in satisfaction, 'Now we're talking!' With temperance being far from one of Urik's virtues, his big, green hands grab your thighs firmly, spreading them further to allow his broad form to scooch right up to your crotch.";
		else: [switch scene]
			say "     Feeling your libido spike as the two of you touch each other and give in to the new roles of your fun little game, with the potent fluid of his pre affecting your body on top of that, you feel ever more convinced of what you planned to do: Taking the humongous cock and feeling Urik's girth stretch your insides! After a last appreciative squeeze of the orc's big balls, you pull your hands away from his muscular body and [if Player is not naked]start to quickly strip, only to feel the orc's hand on your arm. 'No, no. Give me a show!' he says with a grin, and you oblige, swaying your hips as you slide off piece by piece, finally ending up with a pile of clothing and gear that you bend over to place the last item on, wiggling your ass at your green-skinned partner [else]quickly take off your gear, piling it on the ground [end if]before taking a position on your back, legs braced slightly spread. With a smile and one eyebrow raised suggestively, you ask Urik to take you. Licking his lips in anticipation, he grunts, 'Yeah! Now we're talking!' With temperance being far from one of Urik's virtues, the orc's quick to react, lowering himself onto his knees between your legs and towering over you. His big, green hands grab your thighs firmly, spreading them further to allow his broad form to scooch right up to your crotch.";
		say "     Then he gathers a gob of spit, letting it drip off his tongue to land between your buttocks as he pulls your hips up in preparation. The next thing you feel is the warmth of his dickhead brushing up and down along your crack, spreading the improvised lube and mixing it with the pre-cum he's leaking steadily by now. Some pleasant tingles run through you as he rubs his shaft [if player is herm]over your nether lips, then along your own manhood's length[else if player is female]over your nether lips and clit[else if player is male]along your own manhood's length[else]over the sensitive skin of your sexless crotch[end if], before moving on to lining his erection up with your asshole. [if Player is submissive]'I'm gonna fuck you so hard, my little breeder!' he grunts dominantly. [else]'You think you can handle this?' he asks somewhat provocatively, wiggling his thick eyebrows, with shooting back a grin and saying to bring it on! [end if]Urik begins to stroke along his cock with one hand, methodically milking more of his slippery pre onto your pucker and massaging it inside with the fingers of his other hand. Knowing full well just how big he is, Urik takes his time to prepare you, working his digits in and out and getting you pre-stretched.";
		WaitLineBreak;
		if Player is submissive:
			say "     Finally, the orc rubs his large mushroom head up and down over your opening, teasing you until you cannot control your desire for his thick piece of man-meat anymore. With a breathless pant on your lips, you push yourself down against him, shivering in pleasure as his dickhead enters your body. 'Greedy for this dick, aren't you? Well, you're gonna get it - but at my pace!' the orc calls out, chastising you with a grin on his face. Clamping his hands on your hips, the orc pins you down so you can't move, then watches you squirm a little, wanting more of his girth to fill you. Laughing, the big green-skinned man then continues to sink himself into your body with a steady push. Even as eager and well-prepped as you are, his girth is quite a lot to take, but you welcome every inch of it! Giving yourself to the orc daddy, you gasp and writhe under him as Urik's monster of a cock penetrates into you, spreading your inner walls wide.";
			say "     The mixture of eager lust and stoically endured discomfort as you adjust to having him inside you clearly excites the big male, and you can hear Urik grunt, 'Hell yeah, little breeder! Gonna fuck some orclings into you!' There's plenty of lust in his voice, but without any trace of the callous, arrogant dominance of 'regular orcs'. Instead, he moves a large hand to lay on your chest, another point of connection as he meets your gaze and pushes his cock deeper inch by inch.";
		else:
			say "     Finally, the orc says, 'I think you're as ready as you're gonna get!' Curling a broad finger inside your hole to give [if player is male]your prostate[else]a sensitive spot[end if] a rub, he then withdraws his hand and guides his throbbing erection to your opening. With a slow, steady push, he sinks himself into your body, making you thankful that he prepped you as well as he did, because his girth is quite a lot to take even so. You cannot do anything but gasp and writhe under him as Urik's monster of a cock penetrates into you, spreading your inner walls wide. The mixture of eager lust and breathlessly endured discomfort as you adjust to having him inside you clearly excites the big male, and you can hear Urik grunt, 'Hell yeah, fucking the [UrikPlayerAddress]!' There's plenty of lust in his voice, but without any trace of the callous, arrogant dominance of 'regular orcs'. Instead, he moves a large hand to lay on your chest, another point of connection as he meets your gaze and pushes his cock deeper inch by inch.";
		say "     Happily moaning for him to take you, the next thing that comes out of your mouth afterwards is a gasp as Urik becomes bolder, giving a shallow thrust of his hips that sinks several more inches of his dick up your ass all at once and spreads the ring of your muscles even further! Pain and pleasure mix and combine as his dick rubs [if player is male]your prostate[else]sensitive spots inside you[end if], followed by a slight withdraw and then another quick jab of his cock! It seems that you've properly awoken his primal urges by now, so the slow start is clearly at an end. One or two more of those moves to jack-hammer into you later, you can feel some new pressure against your crotch. It takes a second or two before your foggy mind can understand what it is - Urik's huge balls, pressing against your skin.";
		WaitLineBreak;
		say "     He's literally balls-deep inside you! [if Cock Length of Urik > Asshole Depth of Player + 2]It's almost inconceivable how he could have fit[else]You can take cocks this big, but it's still quite a lot[end if] - not that you have time to mull over it more than a second or two before the orc starts to hammer your hole in a wild fuck! Being reduced to little more than a cock-sheath for a huge, horny orc, your gasps and moans mix with Urik's satisfied grunts and the slap of his balls to create the unmistakable sound of a bitch being used hard, deep, and loving every minute of it. You chose to submit to him after all, and with the resulting pleasure and all the potent fluids Urik's been leaking into you, there is little doubt in your hazy mind that this is the best you've ever felt! Whimpering and asking for more, you wrap your legs around his hips and push him with your heels, literally begging for the next harsh thrust.";
		say "     Moments of pleasure flow into each other and you couldn't even tell how long he's been fucking you by the time Urik's grunts build to a shouted crescendo, with him burying his whole length deep inside you as it starts to flood your hole with his rich seed! The sensation of his shaft pulsing against your inner walls, with thick spurts of cum painting your depths pushes you over the edge right along with Urik, and you [if Player is herm]spray strings of cum over your chest and leak femcum[else if player is male]spray strings of cum over your chest[else if Player is female]leak a lot of femcum[else]shudder in pleasure[end if] while panting loudly. Himself breathing quickly, the orc sinks down on top of you while his shaft continues to throb inside your body, taking care to brace himself on his elbows so he doesn't crush you with his bulk.";
		NPCSexAftermath Player receives "AssFuck" from Urik;
		WaitLineBreak;
		if Player is submissive:
			say "     Slowly starting to come down from your respective orgasms, and with you feeling somewhat drunk and bubbly from the deluge of aphrodisiac-laden orc cum filling your ass, you and Urik grin at each other, faces close together. 'Gotta say, you make one fine little breeder[if Player is not defaultnamed], [Name of Player][end if]! Not gonna try to push you around outside of sex, but this was just great! Made me feel like myself again!' The throb of his erection as he adds yet another spurt of cum to your squelching insides covers his meaning wordlessly, and Urik simply chuckles in a satisfied tone. ";
		else:
			say "     Slowly starting to come down from your respective orgasms, and with you feeling somewhat drunk and bubbly from the deluge of aphrodisiac-laden orc cum filling your ass, you and Urik grin at each other, faces close together. 'Gotta say, I'm really starting to love that it's not just 'do this and that's all you're good for' with you, [UrikPlayerAddress]! I mean, sure I can admit that it feels fucking great to be fucked, but...' The throb of his erection as he adds yet another spurt of cum to your squelching insides covers his meaning wordlessly, and Urik simply chuckles in a satisfied tone. ";
		if "Private Breeder" is listed in Traits of Urik:
			say "As he continues to hold you, the orc's eyes meet yours and he gets a serious look on his face for a second. 'This meant a lot to me,' Urik says to you, then leans in and kisses you deeply. His lips brush against yours with surprising softness, followed by a little nip of tusks poking against your skin. The orc is very careful with them while making out, showing that even with him being a big brute of an orc, there is a gentle side to this man. You somehow feel certain that he's not showing it to anyone but those he is closest to. ";
		say "The two of you stay like that for a little while, closely entwined and with him inside you, then eventually pull apart and clean yourselves up.";
	if "Dominance Returned_Player" is not listed in Traits of Urik and "Dominance Returned_Other" is not listed in Traits of Urik: [hasn't been on top for fucking since he was made a breeder]
		add "Dominance Returned_Player" to Traits of Urik; [he got to be on top again - deepening his connection to the player]

Section 5 - Events

instead of navigating Grey Abbey Library while ("Library Move Underway" is listed in Traits of Urik and Loyalty of Urik is 1):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Urik Arrival[line break]";
	project the Figure of Urik_clothed_icon;
	say "     As you arrive at the library, you immediately notice Urik, who's sitting on the edge of the front desk, casually flicking through an old magazine for motorcycle enthusiasts he must have found somewhere in the stacks. 'Hey boss,' he says upon noticing you, standing up and taking a few steps forward. 'Found the place alright, following your description. Claimed a couch on the upper floor, in that sitting area, if that's alright by you.' He nods towards the stairs leading up and you tell him it's fine. 'Gotta say, I was surprised just how different this area is than back at the lair. I mean, just walking a number of miles to get here, I saw critters that I had never seen before. Oh yeah, and some little hyena sluts on souped-up bikes trying to act like dudes, and as if they were the big cheese around here. There were three of them together, and still they didn't dare to try me, hah! Man, back in my day we'd have curb-stomped such a sorry excuse for a gang and sent [']em running back to mommy with a baggie of their teeth.'";
	if (number of bunkered people + number of booked people > 2): [anyone there besides just Urik?]
		if (number of bunkered people + number of booked people > 3):
			say "     While you talk with the orc, you notice some movement in out of the way spots of the library, like between the shelves. Realizing that you kind of just set up an orc invasion of the library without warning anyone about it, you're prompted to clear your throat and call everyone in the building together, to explain what Urik is doing here. [bold type]Within a few minutes, everyone is gathered and you lay things out, to the following reactions:[roman type][line break]";
		else if (number of bunkered people + number of booked people is 3):
			say "     While you talk with the orc, you notice some movement in out of the way spots of the library, like between the shelves. Realizing that you kind of just set up an orc invasion of the library without warning anyone about it, you're prompted to clear your throat and call the other inhabitant of the building to join you, explaining what Urik is doing here. [bold type]Soon, you have laid out how things will go, getting the following reaction:[roman type][line break]";
		else:
			say "     The two of you talk a little more about what's going on around the library, then Urik goes upstairs to hang out in his new place.";
		LineBreak;
		if Alexandra is booked or Alexandra is bunkered:
			say "     Alexandra crosses her arms and looks Urik up and down, then says in an unimpressed tone, 'I don't know about this one, seen tougher dudes out there. Sure you don't want to take him back to the shop and get a bigger one?' Grunting at the challenge, Urik meets her gaze, with the two of them staring at each other for half a minute before Urik snorts. 'I like you, bitch! You're just the right kind of dog for this city!'";
			WaitBreakReactions;
		if Amy is booked or Amy is bunkered:
			say "     Amy strolls right up to the towering orc, standing very close and gazing up at him with wide open eyes. 'Wow, you're so big. Like a giant... but, are you a bad guy? I read some things about... you know, people with tusks.' Urik chuckles and pats her head. 'Don't believe everything in a book. You've got nothing to fear from myself, little lady.' After she walks away soon after, he remarks, 'Cute doggie.'";
			WaitBreakReactions;
		if Brutus is booked or Brutus is bunkered:
			if DBCaptureQuestVar is 5: [controlled]
				if "Master's Bite" is listed in Traits of demon brute:
					say "     Brutus steps up, inserting himself between Urik and yourself. He gives Urik a stare, as if measuring the orc's strength and worth, then reaches out to offer a hand to shake. As they grasp hands, you can see muscles flex on both of their arms as they begin to squeeze as hard as they can. Eventually, Brutus nods and ends the little dick-measuring contest and grunts, 'You'll do.'";
				else if Resolution of Demonic Redemption is 7: [somewhat pacified]
					say "     Brutus throws a grim stare at Urik, simply standing where he is and not saying anything. The large orc gives him the finger and then ignores him.";
				else: [standard hateful captive]
					say "     Throwing piercing stares at Urik, your captive demon Brutus growls, 'More meat! Once I break free, I'll rape you both into bleeding wrecks!' The orc gives him the middle finger and shoots back, 'Better men have tried, fucker!'";
			else if DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99: [cleansed]
				say "     Looking over at Urik, your demon companion Brutus gives the orc a nod, acknowledging someone who can match his strength. The orc raises one eyebrow and nods back to the demon, exchanging a greeting without saying a word.";
			WaitBreakReactions;
		if Candy is booked or Candy is bunkered:
			say "     'I know who I want to man-handle me now! Hellllooo muscle daddy!' Candy calls out in a teasing tone, shaking his hips and tail as he saunters up to Urik. As the candy coon trap starts to grope the much larger male's crotch, the orc comments amusedly, 'So, you're the local buttslut then? I usually prefer men whose balls have already dropped, but I can see the appeal of a happy and available breeding hole.' Candy snorts and steps back a step, then winks at Urik and replies, 'Sure thing, daddy. I'll be waiting for you.' With that, he sashays away, flipping his skirt up to show his butt to the orc before turning a corner behind the bookshelves.";
			WaitBreakReactions;
		if Pink Raccoon is booked or Pink Raccoon is bunkered: [mindless Candy]
			say "     Your pink raccoon pet comes up to Urik, looking at him with adoration and going right in to squeeze the orc's leg muscles and grope his bulge. The next thing after that is him dropping to all fours, ass raised high and presenting his asshole to the green-skinned brute. Urik chuckles and says, 'Eager as a breeder, hah! I'll find you when I want to drop a load.' Then he shoos away the mostly mindless pet you allowed Dr. Mouse to create.";
			WaitBreakReactions;
		if Carl is booked or Carl is bunkered:
			say "     Carl stiffens warily as he looks at Urik, then addresses you with the question, 'Sure it's wise to bring someone like him here? Imagine him going berserk suddenly if his lust overwh-' Urik scoffs and interrupts, 'Speak for yourself, you overgrown sled dog! Seen a fuckton more mutts in animal fuck-piles than rampaging orcs. Also, hell of a way to talk about a veteran. Served my time too, you know!' Carl opens his mouth, then closes it suddenly, staring at the orc in surprise. 'I - uhm... sorry,' he starts to stumble over his words, until Urik adds, 'It's fine, don't get your tail in a twist! More of a twist than it already is, hah!' and offers a large hand for the husky to shake, burying the hatchet between them.";
			WaitBreakReactions;
		if Chris is booked or Chris is bunkered: [TODO: include Player-Dad status]
			if Libido of Chris is 0: [half-orc]
				say "     Chris strolls right up to Urik, looking up at the larger male and offering him a hand to shake. 'Hey there and welcome to the library! I'm Chris!' Despite the his welcoming words, it is immediately apparent to both yourself as well as Urik that he's fairly tense as he stands before the taller man, most likely a result of Val's warnings about other orcs. 'Relax, I'm not gonna eat ya, kid!' the much bigger orc snorts and grabs Chris's hand, squeezing it firmly. The half-orc relaxes at least a little, but still seems quite aware of their comparative sizes as he exchanges more words with Urik. 'We can hang out sometime, and have a talk, orc to orc!' Chris says at the end, then makes his exit. After watching Chris walk away Urik comments, 'Friendly kid. Don't think I've ever seen an orc that was so... human. Is he some kind of half-breed or so?'";
				TraitGain "Chris - Knows Half-Orc" for Urik;
				TraitGain "Urik - Knows Neutral" for Chris;
			else if Libido of Chris is 1: [orc breeder]
				if "Breeder_Slut" is listed in Traits of Chris: [slut breeder]
					say "     Chris walks up to Urik, then shily raises a hand, stretches it forward a little and pulling it back before touching the orc's crotch. Chuckling, Urik tells him, 'My eyes are up here, you know!' Prompted like that, Chris finally pulls his gaze away from Urik's bulge and glances up at him, saying 'Hello... uhm, Urik. I'm Chris. Are you a breeder too? I didn't think a warrior would talk to me.' The larger orc snorts somewhat nervously, brushing away his question and instead saying, 'Don't you worry your pretty little head about that! I know you must be itching to worship all this!' With that, he waves a hand in front of the rippling muscles of his chest, then reaches out to run his big fingers through the long hair on Chris's head. Grabbing hold of the smooth strands in his fist, you can see the corners of Urik mouth rise into a lusty smirk as he remembers the good times he had making use of breeder boys just like this. Yet then he pauses, glancing over to you as a reminder of just what brought him here to this place. Letting go immediately, Urik instead just pats Chris on the head gently and says, 'Run along now, little breeder. I'm sure we'll see each other plenty.' Nodding eagerly, the orc breeder does as he was told.";
					TraitGain "Chris - Knows Slut Breeder" for Urik;
					TraitGain "Urik - Knows Neutral" for Chris;
				else: [happy breeder]
					say "     Chris walks up to Urik, then shily raises a hand, waiting for the orc to take it, while his eyes at the same time flick down to linger on the orc's crotch for a moment or two several times. Chuckling, Urik tells him, 'My eyes are up here, you know!' Letting out an embarrassed laugh, Chris quickly pulls his gaze away from Urik's bulge and meets his gaze fully, saying 'Hey there! It's nice to meet you. I'm Chris!' The bigger orc's widen a little in surprise at the talkativeness of this breeder, and Chris quickly shoots another sentence afterwards, 'Maybe we can hang out sometime?' Urik catches himself before long and replies, 'Yeah, sure. Why not. We can... talk, and stuff.' Chris smiles at him, 'Awesome! See you then, big guy!' With that, the orc breeder gives a little wave and walks away, leaving Urik to look after him with a thoughtful expression on his face. 'You know, I think that's the most words I ever exchanged with a breeder. Don't know how to feel about that. It's odd, but kinda nice too.'";
					TraitGain "Chris - Knows Happy Breeder" for Urik;
					TraitGain "Urik - Knows Neutral" for Chris;
			else if Libido of Chris is 2: [orc warrior]
				if "Subby Bro" is listed in Traits of Chris or "Subby Dad" is listed in Traits: [player's subbing for Chris, orc got rougher] [TODO: split out subby dad?]
					say "     Chris strides up to Urik, coming fairly close before the two of them size each other up. The older orc is a fair bit bigger than Chris, which is saying a lot, given that Chris out-masses most bodybuilders. Grunting in recognition of each other's strength, Chris still tries a sudden chest-bump against the other orc, as if trying to push him over. Urik pushes right back, grunting into Chris's face with his tusks bared. No matter what his role to you, the orc is far from ready to just give in to others.";
					TraitGain "Chris - Knows Dom" for Urik;
					TraitGain "Urik - Knows Neutral" for Chris;
				else: [Bro/Bro with Benefits/Dad with Benefits - more chill warrior] [TODO: Expand on this]
					say "     Chris strides up to Urik, coming fairly close before the two of them size each other up. The older orc is a fair bit bigger than Chris, which is saying a lot, given that Chris out-masses most bodybuilders. 'Nice bod, dude!' Chris acknowledges Urik's muscular physique, then raises a hand to exchange a fist-bump and a nod.";
					TraitGain "Chris - Knows Bro" for Urik;
					TraitGain "Urik - Knows Neutral" for Chris;
			WaitBreakReactions;
		if Colleen is booked or Colleen is bunkered:
			if SarahSlut < 2: [not transformed, or only a little]
				say "     'I think I'll keep my distance, thank you,' Colleen comments, looking at Urik with suspicion. He huffs, 'You got nothing that interests me, sugartits!' and dismisses her with a wave of his hand.";
			else:
				say "     'You're not going to let him fuck me, are you? His cock must be enormous!' Colleen comments, looking at Urik with suspicion. He huffs, 'You got nothing that interests me, sugartits!' and dismisses her with a wave of his hand.";
			WaitBreakReactions;
		if David is booked or David is bunkered:
			say "     Staring open-mouthed at the muscled bulk of the newcomer, David catches himself staring and shakes his head, as if to clear it. Then he moistens his lips and swallows, steeling himself to walk up to Urik and giving him a nod in greeting. 'Private David Jackson, nice to meet you.' Smiling at the soldier, the orc replies, 'You can call me Urik. Don't worry, I don't bite - unless you ask nicely.' The human soldier blushes and laughs, his eyes widening as he realizes the orc wasn't exactly joking. 'Err... yeah, I'm good. See you later.' With that, he backs away, not taking his eyes off Urik before he's several feet away.";
			WaitBreakReactions;
		if Denise is booked or Denise is bunkered:
			say "     With a flutter of her wings, Denise lands on top of one of the long bookshelves, sitting there and looking over at Urik. She seems fairly wary of getting too close to such a large man. Urik glances up to her and calls out, 'You know, I'm not a bad guy. No need to hide. Uhm... you got nice feathers. Very blue and all.' She fans out a wing and gives a hint of a shy smile, then folds it back in again, still not coming down.";
			WaitBreakReactions;
		if (Elijah is booked or Elijah is bunkered) and HP of Elijah > 3:
			if HP of Elijah is 99: [evil]
				say "     Studying Urik for a moment with a smirk on his face, Elijah asks, 'So, why's a big brute like you taking orders? Or are you a whiny bitch on the inside?' Urik gives him the middle finger and replies, 'Trying to be bossy, pretty-boy? Fuck off!' The fallen angel gives Urik a dark stare, muttering under his breath, 'We'll see about you, asshole!' as he walks away in a huff.";
			else: [good]
				say "     Walking up to Urik, Elijah gives the orc a friendly smile and says, 'May you find peace here.' Raising one eyebrow, Urik replies, 'Dude, you've [italic type]seen[roman type] what's going on in the city? Big whup about peace - now it's survival of the strongest!' The angel lets out a sigh, ruffling his feathers a bit to console himself. 'I - I hope people can get over that. You got to believe, you know! How about we talk about this some more, later?' With a strained smile, he waves to the orc and leaves soon after that.";
			WaitBreakReactions;
		if Eric is booked or Eric is bunkered:
			if HP of Eric > 0 and HP of Eric < 21:
				say "     Looking at the huge, muscular orc, Eric appears to decide that it'd be best if he keeps his distance. The young man quickly vanishes behind the bookshelf he looked out from.";
			else if HP of Eric > 20 and HP of Eric < 50: [horsecock/satyrcock/orccock]
				say "     Looking at the huge, muscular orc, Eric approaches cautiously before saying, 'Hey there, big guy. Uhm... welcome to the library?' The young man shakes hands with Urik, then goes back to what he was doing before.";
			WaitBreakReactions;
		if Fang is booked or Fang is bunkered:
			say "     Fang pads closer, sniffing the air and looking at Urik, then appears to decide that the orc isn't an immediate threat and sits down, keeping an eye on the orc. 'Urban wolves, eh? Reclaiming civilization for the wild, I guess?' Urik comments, glancing at Fang with a raised eyebrow.";
			WaitBreakReactions;
		if HP of Fiona > 4:
			say "     Seemingly appearing from a dark corner in which she was hiding, Fiona stalks closer on all fours, then brushes up against Urik's legs and purrs. He smiles and bends down to pet her while saying, 'Pspspss - ouch!' In typical feline fashion, she's bitten him (lightly) after he barely touched her, followed by dashing away a little, then looking over her shoulder and purring more to draw him closer again. Shaking his hand, Urik grunts at her, 'You can forget about that, you little bitch. I like nice cats, not hormonal pussy monsters!'";
			WaitBreakReactions;
		if Gabriel is booked or Gabriel is bunkered:
			say "     Curious about the orc, Gabriel comes closer and says hello. At the same time, Urik takes in the angel's body, collar and the wrist- and ankle-cuffs, letting out a lewd chuckle. 'Tamed him yourself, didcha?' Reaching up to touch his collar, Gabriel lowers his head submissively and says, '[Master] showed me what I was made for.' He stands there, with Urik's hungry gaze focused on him, until the orc says, 'Nice!' Then the angel goes back to where he came from.";
			WaitBreakReactions;
		if Hayato is booked or Hayato is bunkered:
			say "     Walking up to Urik and showing a friendly expression, Hayato shakes his hand and introduces himself, then adds, 'Kinda nice to see that I'm not the only one who ended up in primary colors. Crazy times, eh?' Urik smirks, then shrugs. 'I kinda like it, being green!' He gives the oni a friendly pat on the arm, adding, 'Red's your color, too! Kinda makes me wonder if you'd have yellow kids if I knocked you up!' Hayato's eyes bulge as he takes in these words, with his mouth opening and closing in shock. 'Oh, haha...' he laughs embarrassedly, then walks off, not realizing that Urik could actually impregnate him.";
			WaitBreakReactions;
		if Helen is booked or Helen is bunkered:
			say "     Dashing towards Urik on all fours, Helen goes in to sniff him, then licks his hand as he leans down to reach for her with a somewhat puzzled expression. 'Is this a dog or something? Or did you go through a lot of training with her?' the orc asks, then pats her head when you confirm her origins. [if Lust of Helen > 3]'New friend?' she suddenly asks, followed by a happy bark as Urik says, 'Sure, I always liked well-trained dogs.' [end if]Afterwards, Helen happily runs off.";
			WaitBreakReactions;
		if Hobo is booked or Hobo is bunkered:
			say "     Hobo rushes up to meet the new person with his tongue hanging out of the side of his mouth. Urik leans down to let him sniff his hand, then proceeds to give the dog's ears a good scratch while releasing a warm chuckle.";
			WaitBreakReactions;
		if Honey is booked or Honey is bunkered:
			say "     Honey buzzes through the air stopping just inches away from Urik's face and inspecting him before quickly saying, 'Hi mister! You're really big' before giggling into her hands and flying away.";
			WaitBreakReactions;
		if Korvin is booked or Korvin is bunkered:
			if gsd_pet >= 20 and gsd_pet < 60:	[Subby Korvin]
				say "     Leaning against the end of a bookshelf and keeping his distance, Korvin looks to you after just a quick glance at Urik. With you having broken him in to be submissive to you, it seems the German shepherd is looking to take his queues on how to treat Urik from yourself and isn't really interested in talking with him.";
			else:
				say "     Leaning against the end of a bookshelf and keeping his distance, Korvin gives Urik a wary glance, then nods to him. 'I'll just... stay out of your way, big guy, alright?' Then the usually so cocky German shepherd ducks around the corner and makes himself scarce. After he is gone, Urik grunts and glances to you. 'Mh, he looks like the type of guy that's fun to tussle with, but then that reaction... someone abuse your dog before? Saw the scar on his muzzle, and all.' You nod in confirmation and explain that you found him like that, wild in the streets, which draws some anger from the orc - not at you, but rather the people who did things to Korvin.";
			WaitBreakReactions;
		if Klauz is booked or Klauz is bunkered:
			say "     Klauz stays sitting on a nearby sofa for a long while, casually licking a paw and stroking it over his head-fur while throwing a sidelong glance or two in the direction of the orc. Then eventually, he gets up and saunters closer, sniffing the air as he draws circles around Urik, that end up with him brushing up against the tall man's legs. As he rubs his fur against the orc, spreading his scent all over the man, the felinoid purrs like an idling motor, drawing Urik to bend down and pet him. 'Affectionate pussycat, isn't he?'";
			WaitBreakReactions;
		if Malik is booked or Malik is bunkered:
			say "     Malik struts up to Urik, grinning at the other orc and saying, 'Hey man, nice to meet'cha!' He gives the taller man a fist-bump, then goes on to say, 'Wow, you're shredded as fuck! I wanna bulk up just like you!' Urik chuckles and raises one arm to flex and show off, then pat's Malik's shoulder. 'Sure thing, kid. We should work out together sometime!' They exchange some more words with each other, until Malik eventually makes his goodbyes and walks off.";
			WaitBreakReactions;
		if Nadia is booked or Nadia is bunkered:
			say "     Nadia gives Urik a shy smile and waves to him in greeting. 'Hello there. I - I hope you'll want to be a nice neighbor? Just want to have a nice, secure nest, you know.' Raising his eyebrows, Urik replies, 'Okay then, I'll be sure to put a stomp on any egg-thieves coming in, that what you wanted to hear?' The anthro bird smiles in relief and adds, 'Thank you! I'll have to think of some way to pay you back. Talk to you later...' With that said, she walks off, a thoughtful expression on her face. 'Got a bit of a one-track mind, that one, eh?' Urik comments and shrugs.";
			WaitBreakReactions;
		if Rane is booked or Rane is bunkered:
			say "     Sauntering up to the orc with a smirk on his face, Rane nods to Urik and says, 'Hey there, name's Rane. Guess I'm getting some competition for picking up guys around here, knowing that orcs don't go for women, eh? I personally like either, hah! Or are you more of an bottom yourself, my man?' Scrunching up his features at the last question, Urik gives Rane a stare and snorts derisively. 'Shows how much you know, blue man. A typical orc breeders is shorter and less muscular, about shoulder-height for me! And I'd like to see you try competing with me!' The blue oni chuckles at the combative reply and says, 'Okay, it's on then - we'll see who gets laid first, and by whom!' With a wink at Urik, he turns around and struts off.";
			WaitBreakReactions;
		if Ryousei is booked or Ryousei is bunkered:
			say "     Ryousei walks up to Urik with measured steps, eyes focused on the orc as if taking stock of how he holds himself, his strength and experience. When the tiger soon comes to a halt before Urik, he gives a shallow bow in greeting. 'Greetings Urik, my name is Ryousei. I recognize you as a fellow warrior, and do hope we will have the chance to talk over tea sometime.' Glancing over to you, the tiger adds, 'For all its barbarism and oddly sexual customs, your world continues to surprise me. I did not believe I could ever have a civil conversation with one of the blood-ragers of the Southern Wastes - or this world's equivalent, at least.' Eyebrows drawing together, Urik stares at the tiger and asks, 'Wait a minute - are you calling me some sort of savage?' Ryousei raises one paw in a pacifying gesture and shakes his head. 'My apologies, I was just making a comparison to my own home plane. No offense meant, I assure you. I'll gladly discuss this with you later.' With another bow to both of you, Ryousei then makes his exit. Urik grumbles under his breath as he watches the feline leave."; [TODO: Adjust Ryo/Xerxes scene a bit to let Xerxes give consent (awesome fruit, etc.)]
			WaitBreakReactions;
		if Tehuantl is booked or Tehuantl is bunkered:
			if Tehuantl is male:
				say "     Tehuantl steps into view from between the bookshelves, bearing his shield and Aztec sword as he walks up to the orc. The jaguar warrior comes to stand before him, sizing up Urik for a long moment before giving him a smile that bares the feline's fangs. 'You are strong, this is good. I will gladly call you brother, as another warslave honor-bound to the master.' Having said what he wanted, the anthro warrior turns and strides away, leaving Urik looking after him with a somewhat befuddled expression. 'Err... what was that? He looked like some sort of reenactor to me at first, but...' You quickly explain where and how you met Tehuantl, and that he genuinely believes to be an authentic Aztec warrior. 'Huh, never a dull moment in this city, eh? He's got a nice bod though, even if he's loopy.'"; [TODO: adjust after reworking Tehuantl as a character, and/or the Korvin/Tehuantl scene]
			else:
				say "     Tehuantl steps into view from between the bookshelves, walking up to the orc with her hips swaying side to side. She smiles at Urik, holding her upper body in a pose that exposes her breasts quite nicely. Of course, this holds little interest for the orc, who looks more bored than anything else. Seeing her charms fail makes the jaguar-woman's smile waver a little, before she catches herself and gives Urik a bow of her head. 'Welcome to this place to you,' she says, then makes her exit soon after.";
			WaitBreakReactions;
		if (Sarah is booked or Sarah is bunkered) and SarahCured > 3:
			say "     Sarah confidently strides up to Urik and offers her hand in greeting. 'It's always good to see more sane people come here. I'm sure if we hold together we'll make it out of this too!' Himself being fairly at home in the chaos that has spread throughout the city, the orc gives a casual shrug and shakes the husky's hand as he replies, 'I wouldn't worry too much about that. I can punch out anyone coming in to try something in here!' Sarah gapes at Urik open-mouthed as she takes in his words, then gives her rebuttal a moment after. 'But what about all the innocents that cannot protect themselves?' Shrugging, the orc replies flippantly, 'They're not my problem, are they?' Scrunching up her muzzle, the husky can only shake her head and then storms off."; [TODO: add "expected better from a woman" in the Sarah/Alexandra clash]
			WaitBreakReactions;
		if Spike is booked or Spike is bunkered:
			say "     Walking closer and looking at Urik with big eyes, Spike asks, 'So is he going to be muscle for our crew? No one will be able to stop us together!' Raising one eyebrow, the orc replies, 'If so, what do you think you can contribute? Must be travel entertainment or for crawling into narrow holes, with nothing but that weak beanpole physique to speak for you.' Dismayed at not being taken seriously, Spike throws back, 'Hey! I can fight!' As Urik flat out starts laughing, the dobie stomps off to sulk somewhere else."; [TODO: add "beanpole" to Spike's later scenes]
			WaitBreakReactions;
		if Sven is booked or Sven is bunkered:
			if HP of Sven >= 30 and HP of Sven < 50:	[self-confident Sven]
				say "     Coming up to the large orc, Sven looks up to Urik's face and says, 'Wow, you're really big. Nice to meet you.' Bravely sticking out his hand in greeting, he shakes with Urik. Having picked up on the snow leopard's accent, the orc warrior asks, 'So, where are you from?' 'I'm from Norway and an exchange student,' Sven replies. 'Guess you didn't expect turning into a pussycat or roaming fighting random people in the streets when you picked the US to travel to, eh?' The two of them chat a little bit before Sven eventually makes an exit, going back to what he was doing before.";
			else if HP of Sven > 7 and HP of Sven < 11: [collared sex pet]
				say "     Stepping out from behind a tall bookshelf, Sven saunters over towards Urik and yourself, swinging his hips a little as he does so. 'Wow, you're... you're so big!' he says in awe as he reaches Urik, realizing just how much the orc is towering over him. 'That I am!' Urik confirms with a chuckle, then reaches out to run a finger along Sven's jawline and touches the collar around his neck when the slender male looks up. 'Like being a good little pet, eh?' he asks and strokes over the feline anthro's head, with Sven leaning into his touch and purring loudly. A casual glance down to his crotch, you can see the snow leopard's cock starting to push out of his sheath a little too. When he leaves a little while later, Urik chuckles and says, 'Cute, for a femboy.'";
			else:
				say "     Shily stepping out from behind a tall bookshelf, Sven keeps his extra long and thick tail raised before himself, partly hiding behind it. 'Wow, you're... you're so big!' he says in awe, staring at the orc towering over him. 'That I am!' Urik confirms with a chuckle. Having picked up on the snow leopard's accent, the orc warrior asks, 'So, where are you from?' 'I - uhm, I'm from Norway. An... an exchange student,' Sven replies, somewhat tongue-tied after being put on the spot. 'Guess you didn't expect turning into a pussycat or roaming fighting random people in the streets when you picked the US to travel to, eh?' When he leaves after exchanging some more words, the orc lets out a snort, coupled with a roll of his eyes. 'Hah, femboys...'";
			WaitBreakReactions;
		if Xerxes is booked or Xerxes is bunkered:
			say "     Dashing towards Urik on all fours, Xerxes goes in to sniff him, then licks his hand as he leans down to reach for the human dog with a somewhat puzzled expression. 'Is this a dog or something? Or did you go through a lot of training with him?' the orc asks, then pats the young man's head when you confirm his origins. 'Sweet little package he turned into,' Urik comments and lets his hand slide down Xerxes's back, [if Lust of Xerxes > 6]tracing the tattooed leash's path across his smooth skin, then finally [end if]giving the human dog's ass a squeeze that is happily received. [if Lust of Xerxes > 3]'Like new friend!' Xerxes proclaims suddenly, wiggling his rear a little to rub against the orc's palm. [end if]A little while later, the transformed canine trots off to relax in one of his favorite spots.";
			WaitBreakReactions;
		now IntroReactionCounter is 0; [reset]
		TraitGain "Introduced" for Urik;
	remove "Library Move Underway" from Traits of Urik;
	move Urik to Sitting Area;
	now Loyalty of Urik is 2; [arrived safely and had a talk with the player]

instead of navigating Grey Abbey Library while (Urik is in Sitting Area and Loyalty of Urik is 2 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Urik comments about defensibility[line break]";
	project the Figure of Urik_clothed_icon;
	say "     As you turn the corner into 7th street, you immediately notice Urik leaning against the outside wall next to the planters flanking the library entrance. The towering orc has his arms crossed in front of his chest and is letting his gaze sweep over the T-intersection in front of the Grey Abbey Library. While you're still approaching, you hear a rustling nose, made by a shopping cart with a half-broken wheel being pushed over asphalt. From the west, two humanoid figures come into view a second later, with one pushing the cart, the other trying to look imposing with a length of pipe held in hands covered by shaggy brown fur on their back sides. You can't make out much more of their shapes, or even genders, as the two of them wear very baggy hoodies with the hoods up. Pushing himself off from the wall, Urik puts two fingers into his mouth and lets out a cuttingly loud whistle.";
	say "     'Some advice for looting, kids: Always be aware whose turf you're on when doing it. This place for example,' he indicates over his shoulder with his thumb, 'you better make a wide circle around. Unless you're eager for a good shafting, hah!' Reaching down to adjust his - very - visible cock in the tight stretch-pants he's wearing, Urik gives the scavengers a tusk-baring grin. The two figures freeze in motion, and you can make out 'Shit, since when do we have green giants around here?! Think we can take him?' and 'Fuck no! Look at the dude!' Then they hurriedly turn flee away down the street, both dragging on the shopping cart to keep it upright and rolling as fast as they can. Urik laughs as he watches them go, then turns his head to acknowledge you.";
	WaitLineBreak;
	say "     'Hey [UrikPlayerAddress], just getting to know the neighbors. Though I think those two came from elsewhere. This part of the city is more picket fences, less hoody muggers. Hell, most hybrids and critters I saw all day weren't even armed, and they ran as soon as they saw me. Pity really, could have used a workout,' the orc says in a conversational tone, cracking his knuckles to accompany his last words. 'That's something I wanted to talk to you about by the way. I mean, the library is a nice place, roomy and whatnot, but it's not exactly a fortress, is it? Too open, with many windows and it's not like you have a key to the place either, right? If those two punks were any indication, intruders wouldn't exactly be dangerous, but having to be alert in your own lair all the time would be annoying.' He mimes slapping away some imaginary enemy and draws a face.";
	say "     'Trying to fortify the place isn't the way to go here - that'd make it seem like you're afraid of something. So how about putting some proper fear into those who might get ideas? Lot less of a bother if most don't dare approach! Could put a territory marker out here, instead of having me stand around all day, eh?' The orc meets your gaze straight on after that, having said his piece and now waiting for a decision. It is clear that he feels he is right about the matter, but he didn't want to act without clearing it up with you beforehand.";
	say "     [bold type]What's your reply?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Sure, let everyone know that the Grey Abbey Library is yours now!";
	say "     [link](2)[as]2[end link] - No, attracting attention like that would be a bad idea. A library shouldn't be a prime target for looters anyways.";
	say "     [link](3)[as]3[end link] - No, and you don't want to have Urik frightening passersby either.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to let Urik construct a territory marker, [link]2[end link] to prefer to stay inconspicuous or [link]3[end link] to refuse and admonish Urik.";
	if calcnumber is 1:
		LineBreak;
		say "     Acknowledging Urik's idea as having some merit, you give the orc your go-ahead. He grunts in satisfaction, nodding to you respectfully. 'Be right back, [UrikPlayerAddress]!' With that said, the large orc wanders off down the street, making his way to a construction site not too far away. He returns with a bundle of steel rebar rods under one arm, as well as a plastic bag that rattles metallically as he drops it on the ground. The last item that he needs is the hood of a car, which Urik wrenches off one of the nearby wrecks. What follows next is an impressive mixture of raw violence and home-crafting, in which the orc punches holes into the metal of the car hood, sticking through the steel rods and bending them a little to create a large sign that he rams into the asphalt hard enough to shatter it. The contents of the bag turn out to be spray-paint cans, with which Urik decorates the front of the sign, switching out cans a few times and obviously putting some effort into it.";
		say "     Eventually nodding to himself and putting down the spray cans, Urik waves you over to check out his creation. Having sat on the library stairs and watched as he was creating it, you know that it is a testament of violent strength, but as you step up to join the orc in front of the territory marker, you realize that some artistic skill went into it too. The text that the orc created in surprising speed is well-readable and even has shadows behind the letters for added effect: '[if player is not defaultnamed]Territory of [Name of Player]! Keep Out!' [else]Tribal Territory! Keep Out!' [end if]A snarling orc's face at the upper right corner (similar to Urik himself) and what looks to be a scattering of fallen skulls at the base of the sign drive the message home. You congratulate Urik to the nice sign, but he waves it off. 'Ah, that's nothing! You should have seen -' Urik starts to say, then stops with a grunt and shrugs to himself. 'Anyways, that should keep most of the punks out, eh?' Patting the sign with a metallic clang, the orc then collects the bag of spray cans, taking them with him as the two of you enter the building afterwards.";
		now Territory Marker is in Main & 7th Street;
		add "Marker_Accepted" to Traits of Urik;
	else if Calcnumber is 2:
		LineBreak;
		say "     Clearing your throat, you tell the orc that you do not want him to construct such an obvious marker. After all, there is security in obscurity too, and a public library isn't exactly the prime looting spot, unless someone points it out with an arrow and blinking lights. Urik grunts at your reasoning, looking a little grumpy - not about you but rather the world. 'Okay, I see what you mean. I guess these days people avoid buildings like this out of reflex. Forget I said anything.' With a shrug, he turns around and walks into the building right after that.";
		add "Marker_Discouraged" to Traits of Urik;
	else if Calcnumber is 3:
		LineBreak;
		say "     Clearing your throat, you tell the orc that you do not want him to construct any obvious marker, and that he shouldn't be frightening random passersby either. They might not all be out to ransack the library or make other trouble. Snorting and raising one eyebrow, the orc looks at you and replies, 'Really? You've seen the shit going on everywhere! But fine, forget I said anything!' With a shrug, he turns around and walks into the building right after that.";
		add "Marker_Rejected" to Traits of Urik;
	now Loyalty of Urik is 3; [Urik's concerns about the library building were addressed or discarded]

Table of GameCharacterIDs (continued)
object	name
Territory Marker	"Territory Marker"

Territory Marker is a person. [for easy saving, and in case some variables are needed in the future]
Description of Territory Marker is "[MarkerDesc]".

to say MarkerDesc:
	say "     A large sign, constructed of a number of rebar steel rods and the motor hood of a car has been put up in front of the library by Urik. He drove the rods into the asphalt of the street with enough force to shatter it, making sure that this sign is well and truly planted where is. On it, the text that the orc created is well-readable and even has shadows behind the letters for added effect: '[if player is not defaultnamed]Territory of [Name of Player]! Keep Out!' [else]Tribal Territory! Keep Out!' [end if]A snarling orc's face at the upper right corner (similar to Urik himself) and what looks to be a scattering of fallen skulls at the base of the sign drive the message home.";

The linkaction of Territory Marker is "Possible Actions: [link]smell[as]smell Territory Marker[end link][line break]";

The scent of Territory Marker is "The large sign smells of metal and paint.".

after going to Sitting Area while (Urik is in Sitting Area and Loyalty of Urik is 3 and Stamina of Urik - turns > 8):
	if debugactive is 1:
		say "     DEBUG: Urik eats his own cum - last cum had in turn: [Stamina of Urik], current turn: [turns][line break]";
	try looking;
	project the Figure of Urik_naked_icon;
	say "     Walking along the upper floor of the library, you hear some noises coming from up ahead, slurping sounds as well as moans. Curious about what exactly is going on, you glance around the corner of a bookshelf first, allowing you to see your big orc warrior/breeder Urik lying stretched-out on a sofa in the back of the sitting area. He's completely naked, fingers wrapped around the towering pole of his manhood as he strokes it furiously. His other hand is between his legs, fingers buried in his own asshole, fingering his prostate to push himself over the edge. Scant moments after you lay eyes on him, the orc lets out a loud groan and humps his hips up into the air while his cock erupts like a geyser and showers his broad chest in thick, creamy streaks of cum. Even while still stroking himself, Urik immediately begins to scoop up his own load, hungrily sucking it off his fingers. Feasting your eyes on the large, green-skinned hunk, you decide to walk up to him openly, grinning as he soon notices your approach and pulls his hand away from his face.";
	say "     'Hey [UrikPlayerAddress], I was just...' he says, sitting up and trying to hide what he was doing. Yet even as he does so, the orc seems painfully aware of how he looks right now, naked and covered in cum, and he can't seem to find anything to say to explain that away. Finally, he seems to shrink a little in shame, bursting out with, 'Fuck, you saw it all, didn't you? Me gobbling down my own spunk like a weak little breeder! I couldn't resist the craving anymore! Man, once you've got that taste on your mind, it doesn't let you go.' His pear-green eyes glaze over as he seems to relive a recent memory for a moment, and he adds, 'Especially after sucking down I don't know how many loads when Boghrim was face-fucking me.' Shaking his head and giving in to his inner urges, the orc strokes a hand over the bulging pecs of his chest, wiping up more cum. It draws some strings between his fingers as he licks them clean one by one.";
	WaitLineBreak;
	say "     Urik continues to eat more cum, then eventually comments in a bit of a frustrated tone, 'My own takes the edge off a bit, but somehow it's not as satisfying as another orc's.' You decide not to mention that this could be a sign of him not being a full orc warrior anymore, holding your tongue as Urik scoops up more of his own seed and swallows it. 'With you being out in the city a fair bit, and all... would it be too much to ask if you could come back and give me what I need regularly? Or maybe you could give me some bottled cum, you know? To tide me over?'";
	say "     [bold type]What's your reply?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - You'll see what you can do about [if player is male]feeding him yourself, and [end if]maybe getting him some orc cum in a bottle. Can't leave your orc hunk hanging!";
	say "     [link](2)[as]2[end link] - It's your choice if and when he gets some. He better not think that he can make demands!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to tell him you'll keep him sated or [link]2[end link] to admonish him for asking.";
	if calcnumber is 1:
		LineBreak;
		if player is male:
			say "     Demonstratively adjusting yourself at the crotch, you grin down at the orc and tell him that you'll properly fulfill his needs, he shouldn't worry about that. He meets your eyes as you say this, relief visible in his pear-green eyes as the admonishment about his 'weakness' doesn't materialize that he was expecting, with you instead being understanding and willing to take care of him. The orc shows a hopeful smile on his face and reaches out to touch your leg, giving it a friendly squeeze. 'Thank you, [UrikPlayerAddress]!' he says with conviction, then wipes up another little dollop of cum he missed before, sucking it off his finger without shame now. 'I hate being a burden and... needy, though. So if you gave me some bottles too, that'd free you up to not worry about myself for some time, alright?'";
		else:
			say "     Leaning forward and patting the orc's slightly sticky chest, you smile at him and say that you understand his needs. 'Thanks, [UrikPlayerAddress]!' he says with a grin, letting go of his thick cock to reach over an give your leg a friendly squeeze.";
		now Thirst of Urik is 1; [the player agreed to bottled cum deliveries]
	else:
		LineBreak;
		say "     As you begin to lay into him verbally, the orc raises his hands defensively and says, 'Wow, [UrikPlayerAddress]! I didn't mean it that way! Relax! I was just... asking, you know.' You give him a hard stare and remind the orc who his master is, then walk away, leaving him lying there on the sofa. Internally, you make up your mind not to give him any orc cum, even if you have it, so Urik doesn't think he has won.";
	now Stamina of Urik is turns;
	now Loyalty of Urik is 4; [player made a decision about Urik's cum needs]

instead of navigating Grey Abbey Library while (Urik is in Sitting Area and Loyalty of Urik is 4 and a random chance of 1 in 3 succeeds): [Urik has loot]
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Urik Loot[line break]";
	project the Figure of Urik_clothed_icon;
	say "     As you arrive at the library, a 'Hey [UrikPlayerAddress]!' shout from the side draws your attention to one of the reading nooks nearby. In it, you see Urik sitting on a sofa, hand raised to wave you over. As you proceed to stride towards him, you notice something in the orc's big hand. It's a good sixteen inches long, fairly thick and meaty, and the big man brings it up to his face to take a large bite out of it when you come to stand before him. Mumbling a little with his mouth full, Urik asks, 'Want some salami?' He grins broadly as you ask where he got that, and then reaches behind the sofa, lifting a shopping bag into view to offer it to you. Swallowing, the orc explains, 'I went to check out the neighborhood a little while you were out, [UrikPlayerAddress]. Good territory you got here. Might help that it didn't have any orcs so far, kicking in doors, hah! I bet there's a bunch more stuff to find too.'";
	say "     Glancing in the bag he handed you, you see several more food items that have a long shelf life and surely are still good. Besides that, there's a bottle of soda in there too. You thank the orc for finding supplies, which Urik eats up with a broad grin. Dropping the salami onto his lap, he raises his arms demonstratively and alternately flexes one bicep, then the other, showing off a little. 'Wanna go out looting together sometime, [UrikPlayerAddress]? Would be fun.'";
	ItemGain food by 3;
	ItemGain soda by 1;
	now Loyalty of Urik is 5; [gave the player some loot]

instead of navigating Grey Abbey Library while (Urik is in Sitting Area and Loyalty of Urik is 5): [neither bro'd nor sluttified, all three Loyalty building events done]
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Urik Decision Time - Bro or Slut[line break]";
	project the Figure of Urik_clothed_icon;
	say "     As you arrive at the library, you immediately notice Urik, who's sitting on the edge of the front desk, casually flicking through a thick book in his hands. Looks like some sort of technical manual. 'Hey [UrikPlayerAddress],' he says upon noticing you, standing up and taking a few steps forward. 'You know, having had a little time sitting here in the library now, I couldn't help but start thinking a bit. What's the plan with the move? Why send me here?' The orc looks at you with a neutral expression, but you pick up on a little bit of a hopeful undertone to his words. ";
	if "Marker_Accepted" is listed in Traits of Urik:
		say "You having chosen to accept him marking your territory ";
	else if "Marker_Discouraged" is listed in Traits of Urik:
		say "You having chosen to explain why you had to shoot down his idea of a territory marker ";
	else if "Marker_Rejected" is listed in Traits of Urik:
		say "Despite you having flat out rejected his idea of a territory marker ";
	if Thirst of Urik > 0:
		say "and being understanding towards his need for cum ";
	else:
		say "and not mocking him about his need for cum ";
	say "he seems to have developed some ideas about maybe being more than just a slut to you.";
	say "     [bold type]This feels like an important decision that could determine your future relationship. What do you reply?[roman type][line break]";
	say "     [link](1)[as]1[end link] - He's a warrior in your [']tribe['] now, and this is his new home.";
	say "     [link](2)[as]2[end link] - You wanted to get him out from the orc lair. Remove the chance for abuse by the other orcs.";
	say "     [link](3)[as]3[end link] - Gotta keep your cumsluts close by, to use when you feel like it.";
	say "     [link](4)[as]4[end link] - Better keep your breeders where no one else can knock [']em up.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to call him a warrior or [link]2[end link] to give him the title of cumslut.";
	if calcnumber is 1:
		LineBreak;
		say "     Stepping up and running a hand over the bulging pecs and bicep that your orc warrior/breeder sports, you tell Urik that this is his new home. Using terms he's familiar with, you stress that as part of your [']tribe['], he should live here with you. Such a powerful warrior as him will be very useful for defending the place. 'Yeah!' the orc replies, showing his sharp tusks in a broad grin. 'Knew you'd be an awesome [UrikPlayerAddress]! Imagine a pitiful looter busting through the door in here and running into me as his surprise, hah!' The orc's pear-green eyes are filled with hope - and lust - as he meets your gaze. At the same time, he has to adjust his cock inside those tight but stretchy pants Boghrim put him in. Holding out one huge green fist for a bump with you, Urik then collects his book and struts to the stairway to the second library floor.";
		now PlayerFriended of Urik is true; [let him have some pride, enables his dominant events with others in the library]
	if calcnumber is 2:
		LineBreak;
		say "     Looking him in the eye, you tell Urik that this is his new home and that you wanted to get him out of the orc lair to avoid any chance of the other orcs abusing him. He blusters a little, puffing up his chest and making a fist. 'As if those pussies would have dared!' Despite his bravado, you know that he was significantly affected by being fucked and the gallons of orc cum that Boghrim face-fucked into Urik, so you're not so sure about if his will would have held up or he might have succumbed to cravings for cum in the end. Maybe Urik thinks of the same, because a moment later he adds, 'But thanks for the thought, [UrikPlayerAddress]. It'll be nice to have a bit of room to stretch without bumping into other guys all the time, or stumble over passed-out drunk orcs.' Holding out one huge green fist for a bump with you, Urik then collects his book and struts to the stairway to the second library floor.";
		now PlayerFriended of Urik is true; [let him have some pride, enables his dominant events with others in the library]
	else if calcnumber is 3:
		LineBreak;
		say "     Walking up to the orc, you brush your hand over his muscled chest, then up to his bearded face, brushing your fingertip over his lips. With a lusty grin on your face, you tell him that it's best to have your eye candy close, for the time you want to make use of it. Urik's pear-green eyes widen, and after a second or two he replies, 'Oh... Alright then,' sounding a little deflated. 'I'll be waiting upstairs for you.' With that said, he goes to grab his magazine and walks up the stairway to the second library floor. Shrugging as you watch him leave, you tell yourself that he'll change his tune before long. All of the breeder sluts in the orc lair were happy little cocksleeves too after all.";
		add "Slut" to Traits of Urik; [everything goes]
		now PlayerControlled of Urik is true; [squashed his hopes, told him he's just a cumslut]
	else if calcnumber is 4:
		LineBreak;
		say "     Walking up to the orc, you brush your hand over his muscled chest, then circle around him and give Urik's bare buttocks a satisfying slap, watching them wobble a little. Fingers running up and down his crack, you brush over his pucker, still looking virginal after only the one fuck from Toven before. You push your fingertip inside just a little bit, drawing a pant of helpless lust from the orc's lips. With a lusty grin on your face, you tell him that you want your supersized breeder close, to make use of his womb often. Urik's pear-green eyes widen, and after a second or two he replies, 'Mmh. So, you'll make me what? A full on orcling factory?' the orc replies, sounding somewhat apprehensive. 'I'll be waiting upstairs for you.' With that said, he goes to grab his magazine and walks up the stairway to the second library floor. Shrugging as you watch him leave, you tell yourself that he'll change his tune before long. All of the breeder sluts in the orc lair were happy little cocksleeves too after all.";
		add "Private_Breeder" to Traits of Urik; [just the player gets to use his ass]
		now PlayerControlled of Urik is true; [squashed his hopes, told him he's just a cumslut]
	now Loyalty of Urik is 6; [bro/slut decision made]

instead of navigating Grey Abbey Library while (Urik is in Sitting Area and PlayerFriended of Urik is true and Loyalty of Urik is 6 and orc supersized breeder is not listed in companionList of Player and a random chance of 2 in 5 succeeds): [Urik catches a hawkman]
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Urik catches a hawkman[line break]";
	project the Figure of Urik_clothed_icon;
	say "     After a trip through the wild streets of the city, you walk up the stairs to the entrance of the Grey Abbey Library. Stepping inside, you take a deep breath, happy to be back in your home for the apocalypse, a safe and peacef-[line break]";
	say "     *CRASH*[line break]";
	say "     *SCREECH*[line break]";
	say "     *THUD*[line break]";
	say "     ...";
	say "     Blinking away your shock at the sudden noise ringing through the building, you orient yourself. It's coming from upstairs! Sprinting up the stairway, you see movement at the eastern end of the wide open library interior. A fight is underway there, with at least one of the participants having large wings, beating them wildly. It's a hawkman, who lets out another loud screech as a large green hand grabs him by the leg and he's wrenched out of the air to impact one of the bookshelves. As the anthro bird goes down in a shower of falling books and the second combatant stumbles back to avoid being hit, you recognize your orc warrior/breeder Urik. The towering green-skinned man wades back into the fray as you arrive at the fight, stepping over untidy piles of fallen books to get to the avian before he can dig himself out of the literary avalanche. 'Oh no you don't!' Urik bellows, delivering a sharp punch that knocks the hawkman unconscious.'";
	say "     'Hey [UrikPlayerAddress]!' the orc greets you, then nods to the pile of books and feathered intruder at his feet. 'Look whom I spotted making an entrance though our broken window over here.' Reaching down, he grips the hawkman by the back of the neck and under one arm, pulling him up from the ground and out from beneath about fifty fallen books. 'Man, crazy light the little fucker. Guess he'd have to be, to fly,' he comments, turning the avian in his grasp to have a look at him. The orc lifts one wing, pulling relatively gently to see it unfold then lets it drop again. 'Oh hey, he's got a bag on him,' Urik adds next, pulling the sling of a carrier bag from over the captured hawkman's neck. Weighing it in his hand for a second, he throws it to you with an underhanded swing, and you catch it easily. There's a large bag of peanuts inside, as well as two water bottles.";
	ItemGain food by 1;
	ItemGain water bottle by 1;
	WaitLineBreak;
	say "     While you investigate the intruder's bag, Urik carries his captive over to a nearby sofa, laying him onto it on his back. Now that he's got his hands free, the orc investigates the anthro bird closer, running his fingers over soft feathers, the curved beak, then the scaly hands and feet with their sharp claws. Finally, he parts the tail-feathers, chuckling a little as he spots the pink opening hidden underneath them. 'So, [UrikPlayerAddress] - he's fair game, right? He tried to break in, and I caught him myself.' As he says this, the orc adjusts the growing bulge in his tight, stretchy pants. It's clear what he's asking.";
	say "     [bold type]What is your reply?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Let him sink his cock into the hawkman, he earned it.";
	say "     [link](2)[as]2[end link] - Step up to stroke, caress and finger the orc as a reward. Make him blow his load all over the hawkman.";
	say "     [link](3)[as]3[end link] - Deny Urik's request and just let the hawkman go.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to let Urik fuck the bird, [link]2[end link] to jerk Urik off onto the bird or [link]3[end link] to let the bird go unmolested.";
	if calcnumber is 1:
		LineBreak;
		say "     Smiling at the orc and nodding, you tell him that a proud warrior like him deserves a reward for protecting your lair. Urik raises a fist in victory and shouts, 'Oh yeah!' He shoves his shorts down in a heartbeat, causing the thick, meaty rod of his erection to bounce up and slap his abs with a thud. Moving forward with lust in his eyes, he kneels before the sofa, putting his crotch at a fitting height for fucking the hawkman stretched out before him. Chuckling lustily, Urik strokes his cock with one hand and spits a gob of saliva onto the fingers of the other, bringing them to the anthro bird's hole to lube it up and start stretching him. Having two thick orc warrior fingers pushed into his asshole rouses the hawkman from unconsciousness fairly quickly, and he soon lets out a shocked squawk at finding himself being fingered by Urik. Trying to sit up, the avian is shoved back by his captor's large hand on his chest, and he lets out a combative shriek, only to get a reply of, 'Shut up already, you lost!' from the orc.";
		say "     Wrenching his digits from the hawkman's clenching hole, Urik wipes off some of the copious pre-cum already leaking from his cum-slit, then shoves the slick fingers down the anthro bird's throat, forcing him to taste and swallow it. Simply ignoring all attempts of resistance from his still fairly groggy and weak captive, Urik does so several times more, and you notice that the bird's protests ebb off pretty soon and a pointy avian penis pushes out between his crotch-feathers. Seems that even though he's a warrior/breeder hybrid now, Urik's seed still has fairly potent aphrodisiac effects! Having subdued the hawkman enough that he doesn't need to hold him down constantly, the orc then returns his attention to his captive's asshole. The thick, green cock sticking up hard and erect just a few inches away from it seems pretty monstrously big in comparison, so Urik takes some care not to just ram it in and hurt the anthro. Instead, he goes back to fingering the bird with two fingers, using them to thrust in and out and spread the opening, all the while slowly milking his own cock for more pre and pushing it into the hawkman with his fingers.";
		WaitLineBreak;
		say "     You watch as Urik preps his glassy-eyed and aroused captive quickly but thoroughly, then lines himself up with the pink ring, pushing inside at the same time as withdrawing his fingers, so there is no chance for the hawkman to clench it again. The ring of the avian's pucker is stretched taunt by the large mushroom head of his cock, making the bird spasm visibly even in his cum-drunk state. 'God, that's one tight little slut! This your first time, birdie?' Urik grunts, grinning broadly as he lets his gaze roam over the male he's just entering. The hawkman doesn't reply in words, being too busy to pant rapid breaths in and out of his open beak, but as he digs clawed fingers into the sofa cushions and clenches his eyes, the movements of a nod are visible for his head. 'Hot! Love breaking in virgins!' Urik calls out in arousal, and you can see his cock throb a little as another spurt of pre is delivered, this time right into the hawkman. Watching the two of them go at it, you start [if player is male]stroking your [cock of player] cock[else]fingering yourself[end if]. Urik notices this and preens a little, almost showing off as he sees that you are aroused by his actions.";
		say "     Given the size difference between the two males, with Urik being toweringly big and the avian much smaller, and a lot more fine-boned, if one takes away the puffy volume of his feathers, it is hard to imagine that the orc could fuck him. Yet before your very eyes, it happens, as Urik pushes himself deeper slowly, gradually, but also inevitably, sinking inch by inch into the hawkman. 'It's the pre-cum, makes em pliable and stretchy,' the large brute says while looking over to you, explaining in a casually conversationalist tone as he takes his time to open his captive up properly. Then finally, he's all the way in, the weighty orbs of his balls pressing against the bird's tail-feathers. 'Course, that only goes so far. The actual cum does most of the work after. Hmm... you know, I'm in this little bitch, and he's a really nice, tight squeeze, but now I guess I'm in a bit of a bind. Can't start fucking yet really, or that might mess him up bad. You know, turn him inside out.' His face turning emerald-green in embarrassment, Urik scrunches up his face, trying to think while holding his libido in check.";
		WaitLineBreak;
		say "     Seems like the brutish orc did actually learn something from the incident with Toven, as he is clearly a little concerned about the well-being of the hawkman impaled on his cock. This is a novel thing for an orc from what you've seen - both being okay with forcing himself on someone, while at the same time thinking about their side. Might be because of Urik's unique viewpoint as both a warrior and a breeder. The avian meanwhile is simply panting shallowly, eyes and hands clenched as he tries to come to terms with having his body invaded by such a giant dick. Your attention is drawn back to Urik as you hear him clear his throat a moment later. 'Eh, [UrikPlayerAddress]... could you, maybe, finger my ass?' The words are spoken almost shily, as if Urik seems afraid to have it be interpreted as a demand. Beyond that, there seems to be a little shamefulness involved too, from Urik admitting to himself that his dick alone isn't the complete focus of arousal anymore. Smiling to calm his worries, you look Urik in the eyes and tell him that you're proud of his thoughtfulness, and that he deserves a treat.";
		say "     Then you walk up to the two of them, reach down to stroke the tapering cock of the hawkman do gather some of his pre-cum and use that as the lube for entering Urik. The orc spreads his own buttocks with both hands to make it even easier for you to slide your fingers over his pucker, then pushing in against it. 'Yeah! Rub my prostate, please!' he groans loudly, moving back a little against your touch. Of course, this also tugs on the hawkman as they're connected quite tightly, drawing a whimper from the anthro bird. 'Sorry!' Urik adds hurriedly and moves his hands to grip the hawkman's hips tightly, in order to make sure his erection doesn't move inside him. Meanwhile, you find his prostate with your fingers and start to rub back and forth over it, really pushing the orc's arousal to new heights. Despite this, he forces himself to remain as motionless as possible, never wavering from his self-appointed task even as you quickly speed him along towards his building climax.";
		WaitLineBreak;
		say "     Focusing on stimulating the large orc isn't too hard, given that he's got a well-sized prostate and is fairly vocal, moaning with every touch of his pleasure-spot. As such, it doesn't take all that long before you have him ready to shoot, then thrust your fingers in deep and push Urik over the edge. 'Fuuuckk YEAH!' he bellows, his cock starting to erupt with full force into the hawkman, drawing a shocked squawk from the bird-man as he is filled for the first time, the flat abs of his belly swelling a little as the orc cum has nowhere to go but deeper inside him. Such sounds of discomfort and distress are quickly replaced by moans though, as the orc's load begins to be absorbed by the hawkman's inner walls, unfolding its effects very quickly. While Urik is still blasting more sperm into him, the hawkman's body spasms and his cock starts to shoot streaks of cum over the feathers of his chest.";
		say "     You continue to rub Urik in his special spot while he rides out his orgasm together with the hawkman, then slowly withdraw your fingers and give his ass a playful swat. Glancing over his shoulder, Urik grins at you and says, 'Thank you, [UrikPlayerAddress]. That was just what I needed.' With that said, he starts to pull his huge cock out of the bird, and you can see that it is white with cum all over the shaft, lubed by Urik's own sperm to slide out easily. Having his cherry picked, and a huge injection of orc cum, has a noticeable effect on the hawkman, who is passed-out in a blissful haze on the sofa now. 'Took it like a champ,' Urik quips, patting his captive on the chest. I guess we can just let him sleep it off and I'll place the sofa at the window so he can get out right away when he does.' The next thing the orc does is actually picking up the piece of furniture, hawkman and all, and carrying it over to the window to place it just in front of it.";
		WaitLineBreak;
		say "     The two of you withdraw, to the sitting area, with Urik cheerfully chatting about how nice it felt to be inside the hawkman before. 'Thank you for allowing me to, you know, go at him. Made me feel like before again, when I was just a normal orc warrior and all the city was there for me to take! That means a lot, you know.' You smile at the orc's happy grin, feeling that you really gave Urik's confidence a boost by showing him he's a full tribesman in your operation here. A little while later, you hear the sound of beating wings as your uninvited guest leaves.";
		wait for any key;
		move Player to Garden View;
		try looking;
		now Charisma of Urik is 2; [fucked the bird]
		NPCSexAftermath Aeca receives "AssFuck" from Urik;
		if "Dominance Returned_Player" is not listed in Traits of Urik and "Dominance Returned_Other" is not listed in Traits of Urik: [hasn't been on top for fucking since he was made a breeder]
			add "Dominance Returned_Other" to Traits of Urik; [he got to be on top again - with someone who's not the Player]
		now Loyalty of Urik is 7; [hawkman dealt with, Urik's happy about the outcome]
	else if calcnumber is 2:
		LineBreak;
		say "     Smiling at the orc and nodding, you tell him that a proud warrior like him deserves a reward for protecting your lair. Urik raises a fist in victory and shouts, 'Oh yeah!' He shoves his shorts down in a heartbeat, causing the thick, meaty rod of his erection to bounce up and slap his abs with a thud. Yet instead of just letting him do his thing, you stroll up to Urik and put your hand on his side, caressing the rippling muscles of the big brute's chest. His gaze immediately jumps from the captive bird to you, pear-green eyes widening a little as he realizes that he'll not have some random fuck right now but rather get a treat from a person he respects deeply. His massive erection throbs visibly [if PlayerFucked of Urik is true]from the memory of your previous time having sex [end if]and you reach out to take hold of the thick, green pole.";
		say "     Urik grunts in arousal as your fingers [if ScaleValue of Player < 4]come to rest on [else]encircle [end if]his manhood and you start to jerk him off. Starting out with slow, long strokes, you revel in the loyalty and authority you have over such a powerful man as the orc. He responds very vocally to your caresses, moaning and panting in lust, especially as you also start pinching his nipples with your free hand. Soon, he starts leaning your way a little to make it easier to reach his whole chest, and he puts a muscle-packed arm around your shoulders to in a gesture of togetherness. 'This is nice,' the orc says, giving you a little squeeze before adding, 'Eh, [UrikPlayerAddress]... could you, maybe, also finger my ass?' The words are spoken almost shily, as if Urik seems afraid to have it be interpreted as a demand. Beyond that, there seems to be a little shamefulness involved too, from Urik admitting to himself that his dick alone isn't the complete focus of arousal anymore.";
		WaitLineBreak;
		say "     Smiling to calm his worries, you look Urik in the eyes and tell him that he deserves this as a special treat. Then you raise your hand from where it was resting on his pecs and brush your fingers over his lips, to have the orc open his mouth and suck on them, getting your digits good and wet. Praising him by saying he's a good breeder in a playful tone, you reach around Urik and feel for his crack, which the orc makes easier by spreading his cheeks with both hands. Quickly finding the wrinkled rosette of his pucker, you slip your slick fingers inside, drawing an immediate grunt from the large orc, coupled with a hard throb of his erection. 'God, yeah!' he moans as you feel around and soon find the right spot to stimulate his prostate, rubbing back and forth over it. He reflexively humps against your hand on his cock, then back against your probing fingers, showing that your treat is very well received.";
		say "     While you're having an enjoyable time playing with your large boytoy of an orc, rapidly driving him wild with the double stimulation and filling the library with Urik's moans, neither of you is actually watching what the captive hawkman is doing. The avian groggily drifts out of unconsciousness, twitching and groaning a little, his noises unnoticed besides Urik's lusty bellows as he gets closer and closer to orgasm. Rubbing his forehead in pain, still feeling Urik's last blow, the hawkman opens his eyes soon after, finding himself staring at a lusty, moaning orc being jerked off right before him. The surprised screech and attempt to stand up from the hawkman draws your attention away from what you're doing, creating an interesting little chain of events...";
		WaitLineBreak;
		say "     Half-turning towards the bird, you inadvertently ram your fingers even deeper into Urik, firmly brushing over his prostate and then dipping into an opening just a little beyond it. Finding himself being surprise finger-fucked in that special hole, Urik's whole body spasms and he is finally pushed over the edge, shouting 'Fuuuckkk! That's my orcling channel [UrikPlayerAddress]!' as his cock starts to erupt with full force - right into the face of the hawkman! You can feel Urik's inner muscles spasm around your fingers, as well as the shaft of his cock throb hard, instantly followed by a thick gush of orc cum blasting from his dickhead. That first shot is not so much a spurt but rather a solid stream washing over the avian's beak and eyes, causing him to clench them shut and let out an unintelligible avian shriek. Of course, that only ensures that the next shot goes right in his open beak, involuntarily being swallowed as it covers the intruder's tongue and throat.";
		say "     The hawkman falls back in shock, rubbing at his eyes and trying to scrape Urik's cum off his tongue by brushing it against the edge of his beak. It's a somewhat futile attempt, as he already swallowed most of it. Meanwhile, Urik and yourself are clutching on to each other out of reflex, holding firm in your moment of shock, and after it, as it actually feels pretty nice. You, with Urik's strong arm around you, and him being stimulated by your fingers and the squeeze of your hand on his cock. The orc continues to let loose a bit of a deluge of cum, showering the wall, sofa and hawkman with lots of his potent seed. Sadly, the screams of the hawkman rubbing his eyes are a distraction for Urik riding out his climax in full, and while he's still cumming, the orc reaches down to snatch up the bird-man with one hand closing around his throat. 'Will you stop that stupid noise?!' the orc bellows at him, but the hawkman continues as he tries to escape out of Urik's iron grip without much success.";
		WaitLineBreak;
		say "     'God, fine!' Urik grumbles and suddenly walks off, dragging the bird with him. He re-emerges from the area where he usually hangs out just seconds later, now holding a partially drunken plastic bottle of drinking water in his one free hand. Since he doesn't have a hand free, Urik clamps the cap of the bottle between his teeth and turns the bottle instead, spitting out the plastic cap as it pops off soon after and upending the bottle over the hawkman's face. It flows everywhere, washing his eyes but also over his beak and nostrils, which causes the hawkman to sputter and gasp, swallowing some. As the hawkman opens his eyes after that, focusing a sullen gaze on Urik, the orc carries the anthro bird over to the shattered window that he entered the building through. 'This is [if player is not defaultnamed][Name of Player]'s [else]a [end if]private tribal lair, you weak-boned fucker. No uninvited birds allowed!'";
		say "     With that said, the orc flings his captive out of the building in an upwards trajectory, giving the hawkman just enough time to find his bearings and spread his wings before crashing. Shouting some shocked bird-noises back at you, he flies off straight away. Urik looks after the former captive as he flies off, chuckling as he does so before stopping by to give you a fist-bump and thanking you. With a grin on his face, he walks back to his usual hangout spot.";
		wait for any key;
		move Player to Garden View;
		try looking;
		now Charisma of Urik is 1; [jerked off onto the bird]
		now Loyalty of Urik is 7; [hawkman dealt with, Urik's happy about the outcome]
	else if calcnumber is 3:
		LineBreak;
		say "     As you shake your head and tell Urik to keep it in his pants, the orc draws a little bit of a face, 'Really? Aw man, I -' he catches himself at that point, blowing out his breath and giving a shrug of those impressively broad shoulders of his. 'Fine, okay. Guess there's nothing left but showing this asshole the door then.' Grabbing the intruder by the neck, he lifts him off the sofa and carries the anthro bird over to the shattered window that he entered the building through. Some none too gentle slaps to his cheeks later, the hawkman comes to again, letting out a choked screech since Urik still has his fingers wrapped around his neck. 'This is [if player is not defaultnamed][Name of Player]'s [else]a [end if]private tribal lair, you weak-boned fucker. No uninvited birds allowed!'";
		say "     With that said, the orc flings his captive out of the building in an upwards trajectory, giving the hawkman just enough time to find his bearings and spread his wings before crashing. Shouting some shocked bird-noises back at you, he flies off straight away. You don't think you'll see him again. Urik looks after the former captive as he flies off, lets out a wordless grunt and walks back to his usual hangout spot. [bold type]It might be a good idea to follow him and talk about why you made the decision you did. [roman type][line break]";
		wait for any key;
		move Player to Garden View;
		try looking;
		now Charisma of Urik is 99; [let him go]
		now Loyalty of Urik is 8; [hawkman dealt with, grumpy Urik]
	if orc supersized breeder is listed in companionList of Player:
		remove orc supersized breeder from companionList of Player;

after going to Sitting Area while (Urik is in Sitting Area and (Loyalty of Urik is 7 or Loyalty of Urik is 8)): [post-bird discussion]
	if debugactive is 1:
		say "     DEBUG: Post-bird discussion with Urik, Loyalty of Urik: [Loyalty of Urik ], current turn: [turns][line break]";
	try looking;
	project the Figure of Urik_clothed_icon;
	if Loyalty of Urik is 7: [hawkman dealt with, Urik's happy about the outcome]
		say "     As you walk over to the sitting area, you see Urik further in the back, lounging on his usual sofa with what looks like a swimwear catalog in his hands. Who knows where he found that, as you doubt that a normal library stocks such things. He seems to be in a fairly good mood, and somewhat aroused too, judging from the bulge in his shorts. 'Hey [UrikPlayerAddress]!' Urik calls out to you as he notices you while looking past the page he is currently on. Laying the open catalog down on the sofa, he stands up and walks over to join you. 'As I was thinking back to the fun-time that that hawkman provided, I got to thinking a bit. With you creating your own tribe here, different than my old, and all that...' (He clearly means the fact that you're treating him as a proper tribesman, not just a fucktoy.) 'I thought that maybe I should ask about, err... ground rules? For sex, you know. I really don't wanna anger my amazing new  [UrikPlayerAddress] and all that.' He seems very willing to adapt to your wishes, so [italic type]better choose your next words wisely[roman type].";
		say "     [bold type]What do you tell Urik about interacting with others sexually?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Everything goes, that's fine by you. Him fucking others, or taking loads up his rear. But he better keep himself ready for when you want to have a go.";
		say "     [link](2)[as]2[end link] - He can play stud all he wants, fucking people freely. But his ass is [italic type]yours[roman type]! You've got some plans for it...";
		say "     [link](3)[as]3[end link] - You picked him for your tribe because you [italic type]like[roman type] Urik. As in, wanting to be with him, maybe exclusively in the future.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to say the bird was unworthy to be bred, [link]2[end link] to say you didn't want him to fall off the wagon with sexual violence or [link]3[end link] to tell Urik you want him to be exclusively yours.";
		if calcnumber is 1:
			LineBreak;
			say "     Reaching out to plant your hand on the orc's crotch, you give it a quick squeeze and smile at him, then explain that he's free to fuck - and be fucked - by anyone he has his eye on. The orc snorts a little as you mention being fucked and says, 'Hah, not much danger of that[if PlayerFucked of Urik is true]! Except you of course!' [else]!' [end if]He's clearly happy with your very liberal fucking policy, and you chat for a little while more before getting up eventually and leaving the orc to ponder your words.";
			add "Everything Goes" to Traits of Urik; [he may fuck or be fucked by other people]
		else if calcnumber is 2:
			LineBreak;
			say "     Reaching out to plant your hand on the orc's crotch, you give it a quick squeeze and smile at him, then explain that he's free to fuck anyone he has his eye on. [if PlayerFucked of Urik is true]The orc grins broadly at your words,  raising his hand to stroke your arm as you grope him. He's [else]The orc looks at you with a little bit of curiosity in his eyes, given the fact that you haven't actually been inside him so far. Still, he's [end if]clearly happy with your very liberal fucking policy, and you chat for a little while more before getting up eventually and leaving the orc to ponder your words.";
			add "Stud" to Traits of Urik; [he may fuck other people]
		else if calcnumber is 3:
			LineBreak;
			say "     Putting a hand on the orc's thigh, you explain how you feel about him, stroking up and down the inside of his leg a little bit as you say this. 'Oh? Oooooohhhh!' Urik replies, his pear-green eyes going wide as he looks into yours. 'Um, I -' he stammers, about as shell-shocked as if you had pulled out a two-by-four and clocked him in the head with it. '[if PlayerFucked of Urik is false]But, you - we - didn't even fuck yet?' [else]But that's not how things went in the old tribe? You just take whom you want and fuck?' [end if]the orc adds, noncomprehension written on his face. You can't help but shake your head and sigh a little at the both endearing as well as somewhat aggravating lack of knowledge of actual relationships in the orc, so you go to plan B: Hooking a hand behind his head and pulling him into a kiss. Your lips meet for that first peck, followed by you playfully licking over his tusks, then going for an in-depth snog with the big green brute.";
			say "     By the time you pull back from making out to catch your breath, Urik's confusion has made way to wanting more of what you just did with him. Stroking his bearded face, you explain that he's [italic type]your[roman type] special orc, and you don't want to see him with others. Laying your arms around his chest and giving him a squeeze, you tell him that he'll get all the loving he needs from you personally. 'But what about the birdie, before? I mean, you were there when stuff happened.' Smiling, you tell him that that's the point. You can do stuff together, as a couple, but you don't want anything going on behind your back. 'Guess this really is a whole other type of tribe, eh?' the orc replies, still trying to catch up but apparently more than willing to try this 'relationship' thing you're on about. Clearly, being the leader has its upsides, so you decide to continue with some more kissing next, advancing his education of simple affectionate gestures and having a good time while doing it.";
			now PlayerRomanced of Urik is true; [1:1 relationship - well, at least for Urik's end of the deal]
			add "Private Breeder" to Traits of Urik; [he may not touch others]
	else if Loyalty of Urik is 8: [hawkman dealt with, grumpy Urik]
		say "     As you walk over to the sitting area, you see Urik further in the back, half-leaned back on a sofa that he moved to face a wall. In his hand is a tennis ball, which he throws with some force, bouncing it off the ground, the wall, then catching it from the air again. After watching three cycles of this as you approach, with Urik never looking up or noticing you, it isn't hard to tell that he's in a little bit of a funk right now. You clear your throat, standing next to the sofa, just as the orc catches the ball again and he breaks off the movement for another throw, sitting up a little straighter as he says, 'Oh, hey [UrikPlayerAddress].' Greeting him in turn, you take a few more steps and sit down next to him on the sofa, turned to look at the orc. He looks down at the sofa cushions you are sitting on, a little bit of a sullen twist flashing over his lips before he shakes that off and raises his gaze to meet your eyes. 'What up?' It is painfully easy to recognize that his grumpiness is about the hawkman you made him let go. You've got to address it, so [italic type]better choose your next words wisely[roman type].";
		say "     [bold type]What do you tell Urik about why you made him let the hawkman go?[roman type][line break]";
		say "     [link](1)[as]1[end link] - It was just a stupid bird, not worthy of his seed. You want only the best in your tribe, and he should trust you to pick suitable males he can fuck and possibly knock up.";
		say "     [link](2)[as]2[end link] - You didn't want him to fall back into old patterns of behavior. Given his previous track record with Toven, punching out someone and then fucking him might be a bad idea.";
		say "     [link](3)[as]3[end link] - You picked him for your tribe because you [italic type]like[roman type] Urik. As in, wanting to be with him, and getting jealous if he just whips out his dick for others.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to say the bird was unworthy to be bred, [link]2[end link] to say you didn't want him to fall off the wagon with sexual violence or [link]3[end link] to tell Urik you want him to be exclusively yours.";
		if calcnumber is 1:
			LineBreak;
			say "     Planting your hand on his upper arm, you squeeze the orc's bulging bicep and tell him that he's an amazing example of an orc - strong and powerful, just what you need for your tribe. As such, filling that weak thing of a hawkman with his cum would be an absolute waste. Urik looks at you, eyebrows drawn together in puzzlement. 'What do you mean?' he asks, curiosity audible in his voice. Dropping your hand down to his crotch, you stroke over the bulge in his pants and explain that he's the perfect example of an orc that you want, so his own children[if PlayerFucked of Urik is true], ideally put into him yourself, [end if]and offspring he fathers in others are special. As such, you don't want him to knock up just anyone. 'Oh, so... I guess I can understand that. And you'll tell me when I can knock someone up? What about, you know, blowjobs and stuff?' You smile and nod for his first question, and tell him that you want him to save all his sperm for the right time as an answer to the second. After hanging out a little longer and talking with the orc some more, you eventually get up and leave him alone to ponder what you said.";
			add "Selective Breeding" to Traits of Urik; [discouraged from all sex that you don't plan for him]
		else if calcnumber is 2:
			LineBreak;
			say "     Planting your hand on his upper arm, you give the orc a squeeze and clear your throat, then tell him to think back to what happened with Toven. As Urik grimaces, you go on to say that he's in a kind of withdrawal from thinking it is okay to apply violence to have sex. If he went back to boning people he just beat up too quickly, he could get out of control again, and really hurt someone. 'Oh, I see... thanks for looking out for me, I guess.' You nod and tell him that things will be okay eventually, but for now, you need him to control himself. After hanging out a little longer and talking with the orc some more, you eventually get up and leave him alone to ponder what you said.";
			add "Molestation Detox" to Traits of Urik; [discouraged from fight-sex]
		else if calcnumber is 3:
			LineBreak;
			say "     Putting a hand on the orc's thigh, you explain how you feel about him, stroking up and down the inside of his leg a little bit as you say this. 'Oh? Oooooohhhh!' Urik replies, his pear-green eyes going wide as he looks into yours. 'Um, I -' he stammers, about as shell-shocked as if you had pulled out a two-by-four and clocked him in the head with it. '[if PlayerFucked of Urik is false]But, you - we - didn't even fuck yet?' [else]But that's not how things went in the old tribe? You just take whom you want and fuck?' [end if]the orc adds, non-comprehension written on his face. You can't help but shake your head and sigh a little at the both endearing as well as somewhat aggravating lack of knowledge of actual relationships in the orc, so you go to plan B: Hooking a hand behind his head and pulling him into a kiss. Your lips meet for that first peck, followed by you playfully licking over his tusks, then going for an in-depth snog with the big green brute.";
			say "     By the time you pull back from making out to catch your breath, Urik's confusion has made way to wanting more of what you just did with him. Stroking his bearded face, you explain that he's [italic type]your[roman type] special orc, and you don't want to see him with others. You can do stuff together, as a couple, but you don't want anything going on behind your back. Laying your arms around his chest and giving him a squeeze, you tell him that he'll get all the loving he needs from you personally. 'Oh, so that's why I had to let the birdie go? Guess this really is a whole other type of tribe, eh?' the orc replies, still trying to catch up but apparently more than willing to try this 'relationship' thing you're on about. Clearly, being the leader has its upsides, so you decide to continue with some more kissing next, advancing his education of simple affectionate gestures and having a good time while doing it.";
			now PlayerRomanced of Urik is true; [1:1 relationship - well, at least for Urik's end of the deal]
			add "Private Breeder" to Traits of Urik; [he may not touch others]
	now Loyalty of Urik is 9; [had a talk after the hawkman incident]

instead of navigating Grey Abbey Library while (PlayerFriended of Urik is true and Loyalty of Urik is 9): [Urik wants to go looting]
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Urik offers looting[line break]";
	project the Figure of Urik_clothed_icon;
	if Urik is in Sitting Area:
		say "     As you arrive at the library, you immediately see Urik, who's casually leaning against the corner of the front desk, waiting for you. 'Hey [UrikPlayerAddress]!' he calls out, coming to a stand and walking up to you. Offering a respectful fist-bump that you return, the orc clears his throat, 'Just so you know, I've been looking around a bit in the neighborhood. Found some places not too far away that could have great loot. So... how about we have a little trip?' With a hopeful expression, the orc wiggles his eyebrows at you, then steps back over to the desk, leaning over it to grab a large sports bag that he demonstratively holds up, showing you just how much room for loot is in it. Finally, he hangs it over one shoulder by a solid-looking strap, grinning as he ways, 'I'm ready anytime, just talk to me and say the word!'";
	else if orc supersized breeder is listed in companionList of Player:
		say "     As you arrive at the library and enter, Urik reaches out and taps your shoulder. 'Hey [UrikPlayerAddress]. I wanted to talk to you about something,' he says, coming to a stand before you and meeting your gaze. 'Remember that I checked out the neighborhood a bit on the way here? Well, there actually were a few places nearby that looked like they might have great loot. So... how about we have a little trip? Didn't want to bring it up before, since the location is actually fairly close to here, and I needed to get something from here anyways.' With a hopeful expression, the orc wiggles his eyebrows at you, then walks over to the front desk, leaning over it to grab a large sports bag stashed behind. Demonstratively holding it up, the orc shows you just how much room for loot is in it, then hangs it over one shoulder by a solid-looking strap. 'I'm ready anytime, just talk to me and say the word!'";
	now Loyalty of Urik is 10; [he offered looting trips]
	now Perception of Urik is 1; [enabled the talk option]


[ ------------------------------------------------------------------------------------------------ ]

[
instead of navigating Grey Abbey Library while (PlayerFriended of Urik is true and Loyalty of Urik > 8 and Urik is booked and Korvin is booked and "Relationship_Talk_Done" is listed in Traits of Korvin):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Urik meets Korvin[line break]";
	say "     Making your way through the city on the way back to your home base in the Grey Abbey Library, you soon see the familiar shape rise up before you. Thankfully your trip was fairly uneventful, as you managed to avoid the attention from the more hostile infected, and others went out of your way or were 'busy' fucking each other's brains out. Crossing the street [if Territory Marker is in Main & 7th Street]and walking past the territory marker for your 'tribe' that Urik put up[end if] you stride up the broad steps in front of the library door and enter the building, with the heavy front door swinging shut with a comforting thud behind you. You start to relax, having reached your safe home territory, but before you can do much more than start to put down some of your gear, two voices call out to you almost at the same time:";
	say "     The first one is Korvin's, saying, 'Hey [if Player is not defaultnamed][name of Player][else]boss[end if], welcome back!' Your German shepherd is lurking around between the bookshelves a little bit further back on the right, putting down a book and starting to come closer with his tail wagging behind his back. The second voice belongs to Urik, who must have heard you come in, as he strolls down the stairs from above and is on the left half of the splitting stairway as he calls, 'Welcome [if Player is not defaultnamed][name of Player][else]chief[end if]! Been pretty quiet while you were out.' Approaching from two directions, the men size each other up with sidelong glances at each other, then come to stand before you, with some feet distance between them. Seems like they never really talked with each other in any meaningful way before, despite living in the same building. If you had to guess why, you'd say that Korvin likely stayed well out of the way of the much larger orc - for all his usual cocky arrogance, the anthro wouldn't want to chance being abused.";
	WaitLineBreak;
	say "     Seems like it's well past time that you introduce the two of them to each other, so you ";
	if "Relationship_Lover" is listed in Traits of Korvin and "Private Breeder" is listed in Traits of Urik: [two boyfriends]
		say "...<choice point - threeway relationship, or each separate for the player>...";
	else if "Relationship_Lover" is listed in Traits of Korvin: [Korvin's the special one]
		say "...Urik's your warrior bro";
	else if "Private Breeder" is listed in Traits of Urik: [Urik's the special one]
		if "Relationship_Tool" is listed in Traits of Korvin: [Korvin's just trash]
			say "...Urik doesn't have to respect Korvin...";
		else if "Relationship_Bro" is listed in Traits of Korvin: [Korvin's a bro]
			say "...Urik should respect Korvin";
	else: [neither of them is taken off limits]
		say "...";
]

[ "Everything Goes": he may fuck or be fucked by other people                       ]
[ "Stud": he may fuck other people                                                  ]
[ "Private Breeder": he may not touch others                                        ]
[ "Selective Breeding": discouraged from all sex that you don't plan for him        ]
[ "Molestation Detox": discouraged from fight-sex                                   ]


[ Relationship Memory Traits for Korvin:                                                                     ]
["Relationship_Bro" - Player and Korvin are buddies, might fuck someone together, no committed relationship  ]
["Relationship_Lover" - Player told Korvin they want more, committed relatinship, etc.                       ]
["Relationship_Tool" - Player uses Korvin and expects him to do as he's told                                 ]

[ Sex Rules for Korvin in the Library + Bunker                                                               ]
["Library_free fucks" - Korvin may fuck anyone in the library freely - as long as he doesn't force it        ]
[   + "Relationship_Lover" + "Harem Master" Player Feat - lover may fuck your harem too                      ]
[   + "Relationship_Bro" + "Harem Master" Player Feat - bro may fuck your harem too                          ]
["Library_no fucks" - Korvin should not fuck anyone in the library                                           ]
[   + "Harem Master" feat for the player - no access for him                                                 ]
["Library_bitched out" - Korvin is free game for anyone                                                      ]
["Library_private lover" - Player wants to be the main partner of Korvin, only threesomes allowed (maybe)    ]
[   + "Harem Master" player feat - sharing the Harem together                                                ]


instead of navigating Grey Abbey Library while (PlayerFriended of Urik is true and Perception of Urik is 3 and a random chance of 1 in 3 succeeds): [Urik wants beer]
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Urik wants beer[line break]";
	project the Figure of Urik_clothed_icon;
	if Urik is in Sitting Area:
		say "     As you arrive at the library and go inside, you see Urik off to one side, sitting at one of the desks near the walls, where he is flipping through a motorcycle magazine. ";
	else if orc supersized breeder is listed in companionList of Player:
		say "     As you arrive at the library and go inside, Urik clears his throat and tells you that he'll take a break for a little while. As you nod and tell him that is fine, the orc strolls off to one side, sitting down at one of the desks near the walls, starting to flip through a motorcycle magazine he had picked out earlier. ";
	say "While casually reading the articles, the orc grabs the bottle of soda standing on the table in front of him and takes a swig of it, only to grimace and plunk the plastic bottle back down. Curiosity drives you to walk closer and ask what's wrong, with the orc turning his upper body partly around to greet you. 'Oh, hey [UrikPlayerAddress]! It's just... I hate how this stuff tastes. Sickly sweet and chemical. What kind of name is 'Ocean Breeze' for something to drink anyways?!' Snatching up the bottle and showing you the flashy label and the neon blue contents, the orc puts the lid back on before flinging it aside in disgust, to hit the ground near the corner of the room.";
	say "     Grumbling, Urik stands up and leans against the wall, crossing his arms with a sour expression on his face. 'I know the whole city's gone to shit, but I could really use a drink! A good drink, not just any swill in a bottle. That I can find without too much trouble. No wonder kinds these days are such rotten punks, if they drink that shit all the time!' He waves over to the discarded soda bottle, then looks back at you. 'Ah, before you ask - I'm not talking about orc brew either. Sure, that stuff has the proper amount of alcohol to pack some punch, but... if you ask me, it kinda tastes like ass. And not in a good way!' Rolling his eyes, he continues, 'Fuck! You can bet that most of the good stuff that was in the city has been chugged by now, or is in the hands of someone who'll not part with it easy. And it's not like there'll be any deliveries anytime soon, not with that military blockade.'";
	WaitLineBreak;
	say "     Urik continues to complain some more, clearly annoyed by the situation. Yet when he begins to tell you about his favorite, imported brands, this shakes loose a fact in your head that you vaguely remember. You can't tell where you heard it anymore, if it was some news, radio or a newspaper, but you recall hearing that local microbreweries were rising in popularity these last few years and apparently produce top quality beers. As you mention this to Urik, the orc's eyes go wide. 'That's actually a great idea!' he bursts out with a grin, slapping his hand on your shoulder and giving it a squeeze before rushing over to the front desk and digging around in the drawers until triumphantly holding up the yellow booklet of the city's business register. Flipping through the book, he finds something, then comes rushing back to you.";
	say "     'You were right - there's three right here in the city! No, wait - by the address, I think that one might have been flattened when the quarantine ring was blasted clear of buildings to provide firing zones for the army. Either that or it's behind the line. Which leaves these two. 'Mallon Sap Brews' in the business district near the capitol, and 'Henry's Hammer Brewery' out on the north side!' Eager and animated, the large man nods towards the library entrance and says, 'Come on, let's take a trip! Imagine what we could loot from those places!'";
	say "     [bold type]What is your reply?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Sure, you'll set out right now.";
	say "     [link](2)[as]2[end link] - You'll go, in a little while, when you're ready.";
	say "     [link](3)[as]3[end link] - You're not gonna trek halfway through the city just to get him some booze.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to set out right now, [link]2[end link] to postpone, or [link]3[end link] to blow off the trip.";
	if calcnumber is 1:
		LineBreak;
		UrikThirdLootingTrip;
	else if calcnumber is 2:
		LineBreak;
		say "     Clearing your throat, you tell the orc that right now isn't the best of time for this trip. He'll have to wait a while until you're ready. Thankfully, this does little to break Urik's elevated spirit, and he just nods and says, 'Sure thing, [UrikPlayerAddress]. Just tell me when you wanna go looting and I'll be ready to set out right away!'";
		now Perception of Urik is 4; [ready for trip #3]
	else if calcnumber is 3:
		LineBreak;
		say "     Shaking your head, you tell the orc that you don't plan on trekking through half the city in the middle of the nanite apocalypse, just to find something to drink for him. Urik grumbles a little and is visibly deflated, but soon replies, 'Fine, [UrikPlayerAddress]. Would have been fun, but I know what you say goes. Forget about it then.'";
		now Perception of Urik is 5; [after the beer trip - completed or skipped]

instead of navigating Grey Abbey Library while (Urik is in Sitting Area and Loyalty of Urik > 8 and Loyalty of Urik < 80 and PlayerFriended of Urik is true and "Selective Breeding" is not listed in Traits of Urik and Loyalty of Urik > 8 and Candy is in Bunker and CandyUrikInteraction < 1 and (lastfuck of Urik - turns > 10)):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Urik grabs Candy - CandyUrikInteraction: [CandyUrikInteraction], lastCandyUrikInteraction: [lastCandyUrikInteraction], current turn: [turns][line break]";
	project Figure of Candy_clothed_icon;
	if PlayerRomanced of Urik is true:
		say "     As you enter the library, you spot Candy lying stretched-out on his belly, occupying one of the sofas further back in the room. His upper body raised on the girly raccoon's elbows, he is intently reading a book - and at the same time has his lower legs raised, slowly rubbing them against one another. The skirt of his candy striper uniform has been pulled up at the back, revealing his pink lace-trimmed panties. Knowing the eager boy-slut, you don't believe for a second that his pose is anything but intentional. Apparently it had the intended effect too - as your orc warrior/breeder Urik is showing a very respectable bulge in his stretchy stripper-pants. 'Like what you see?' Candy asks him, glancing over his shoulder and giggling. The towering orc grunts in response, baring his tusks as he responds, 'Bah, I got someone real to be with. Though maybe if [SubjectPro of Player] wants, we'll pound you together later and use you as the breeder slut you are.' With that said, the orc turns a cold shoulder to the raccoon and just walks away.";
		now CandyUrikInteraction is 101; [Urik gave Candy the cold shoulder]
	else:
		say "     As you enter the library, you spot Candy lying stretched-out on his belly, occupying one of the sofas further back in the room. His upper body raised on the girly raccoon's elbows, he is intently reading a book - and at the same time has his lower legs raised, slowly rubbing them against one another. The skirt of his candy striper uniform has been pulled up at the back, revealing his pink lace-trimmed panties. Knowing the eager boy-slut, you don't believe for a second that his pose is anything but intentional. Apparently it had the intended effect too - as your orc warrior/breeder Urik is striding up towards Candy in a purposeful manner, showing a very respectable bulge in his stretchy stripper-pants. Before you can do or say anything about it, Urik simply grabs Candy off the sofa and throws him over his shoulder, making the raccoon squeal in surprise. Seems he didn't expect anyone to just man-handle him.";
		say "     'What are you on about? You were lounging around like a little breeder slut itching for a fuck!' the orc says in an amused tone, reaching up to cup Candy's ass with a large hand and squeezing his buttocks a little. Then the orc hooks a single finger under the panties on the pink raccoon, ripping them away effortlessly and dropping the shredded fabric on the ground. This leads Candy to give Urik's back a light slap as he complains, 'Hey! Hon, I like the hands-on approach but you got to leave the outfit intact! Do you know how hard it is to - ooooohhhhhHHHHH!' Having just pushed a spit-covered finger past Candy's pucker to try out the gay raccoon's fuck-hole, Urik thrusts his digit in and out rapidly a few times, making Candy writhe in his position over the orc's shoulder. Despite how much the moaning raccoon fidgets at the merciless stimulation, Urik holds him firmly with his other arm, making sure he doesn't fall off.";
		WaitLineBreak;
		say "     Eventually, Urik relents, pulling out of Candy's hole again and slapping his captive's ass moderately hard. 'You'll do, breeder slut. And if you don't want that stupid girly shit ripped off you, don't wear it when flaunting your ass!' Panting for several more seconds after Urik stops finger-fucking him, Candy gasps out, 'Umm... okay. Whatever you say big guy.' Looks like Candy bit off a bit more than he expected with this orc, getting a taste of the green brute's dominance now. Still, it looks like he's enjoying the treatment nonetheless and just has to adjust his mannerisms to this new demanding fuck-buddy. 'That's better,' Urik replies in a gruff tone, 'You'll make a proper breeder after some hard pounding, I'm sure! Let's see if I can't fuck you green!' With that said, the orc turns around and starts walking towards the stairs to the upper floor, no doubt intending to introduce his captive to a thick cock on 'his' sofa. Coming up close to you, the orc gives a respectful nod as he is about to walk by.";
		LineBreak;
		say "     [bold type]Do you let the orc carry Candy off and fuck him?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Sure, it's clearly what [italic type]both[roman type] of them want. And you'll follow after the orc to watch too!";
		say "     [link](2)[as]2[end link] - Why not, let them have their fun.";
		say "     [link](3)[as]3[end link] - Nope! That's not gonna roll in your lair!";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to follow them and watch, [link]2[end link] to say let them fuck or [link]3[end link] to tell Urik to stop.";
		if calcnumber is 1:
			LineBreak;
			project the figure of Urik_naked_icon;
			say "     Following Urik as he walks up the stairs, you face Candy on the way, who keeps smiling happily and making kissy faces at you. Soon, the three of you arrive at Urik's camp, with the orc kicking a few strewn-about possessions of his aside to walk up to the comfy sofa he claimed as his resting place. He pulls Candy off his shoulder and drops him on the cushions, then shoves down the stretchy pants he wears, revealing the thick shaft of his orcish manhood. 'Oh wow, you really are a big boy all over,' Candy comments gleefully and sits up, reaching out to touch Urik's erection. The raccoon strokes it with both hands, prompting a satisfied grunt from Urik at being jerked off. Soon, a glistening drop of pre-cum forms at the tip of the orc's shaft. 'Taste it, slut!' the green-skinned brute groans and puts a hand on Candy's furred head, pushing him closer. The boy-toy obeys without hesitation, sticking his tongue out to lick over Urik's cum-slit.";
			say "     His eyes go wide as he tastes the aphrodisiac-laden pre his dominant partner produces. 'Mmmmhh!' Candy groans in pleasure, his lips immediately enveloping the orc's dickhead and sucking on it some more while he milks the big man's cock. 'That's it little breeder! Amazing stuff, isn't it?!' Urik grunts in a mixture of lust and amusement, shoving Candy's further down on his girthy shaft. He face-fucks the raccoon with little restraint, managing to force quite a bit of his length down the girly-boy's throat as he uses Candy like a living fleshlight. Urik's lustful grunts build in volume and urgency as the orc revels in dominating the smaller guy, up to a point when he suddenly gives a deep grunt and wrenches Candy's head back by his hair, pulling him off his erection. The orc's other hand wraps around the base of his cock and the balls, squeezing tightly as he tries to control his urge to cum - and succeeds.";
			WaitLineBreak;
			say "     Urik's cock throbs visibly and there are a few spurts of fluid that cover Candy's stretched-out tongue... but it is clear pre, not actual cum. 'Got a talented mouth, slut! That swirl of your tongue at the end there almost pushed me over the edge,' Urik grunts in appreciation, looking down at the raccoon's open mouth and eager face as he catches another spurt. In that moment, the orc's expression wavers a little - losing some of his dominant grin and taking on an undertone of hunger and need. After all, he has cravings for orc cum himself... and now he acts on the urges that instilled in him. Strong hands slide under Candy's armpits and pick the anthro furry up in a sudden wrench, bringing his face to the same level as Urik's own. And just like that, the orc starts to make out with his partner, their tongues wrestling with one another as both strive to swallow as much of his tasty pre as they can.";
			say "     The antics of the two of them are quite fun to watch - a big green brute holding a girly-boy raccoon to his chest, both of them sporting erections. Candy's dick creates an especially nice image, as it pokes out under the rim of his short pink skirt. Eventually, the cum-sluts seem to have used up all the orc pre, as Urik pulls back from snogging with Candy and looks the smaller guy in the eye. 'Time to fuck!' he announces gleefully and the raccoon gives a needy moan in reply. Looks like he's got a low resistance to the effects of Urik's pre... or just swallowed more while he was being face-fucked. No matter which, Candy now acts like a bitch in heat, churring while having his arms wrapped around the large male and rubbing up against his muscular chest.";
			WaitLineBreak;
			project Figure of Candy_naked_icon;
			say "     Meanwhile, Urik takes hold of his hard cock and rubs it between Candy's buns, then pushes the candy striper down on his erection. With a satisfied grunt (and a breathless gasp from Candy), the orc slides into his smaller partner, stretching his chute wide with the girth of his manhood. Wound up as the two of them are, there is no hesitation, no slow 'getting used to' phase for their fucking - Candy grinds his ass down on Urik's cock before the orc even starts to thrust. The orc isn't dainty with his cock either, hammering Candy down on it till his balls slap the candy-striper's ass with a satisfying thud, then again and again in a rapid tempo. Oblivious to everything around them, the two men fuck with gleeful abandon, filling the library with moans, grunts and gasps in ever-increasing urgency.";
			say "     Before long, their breathless mating rises to a shouted climax, with Urik forcing his cock all the way into Candy's stretched hole and pumping blast after heavy blast of cum into him. At the same time, the lust-drunk raccoon comes too, splattering the rock-hard abs on Urik with his own load. For a little while, Urik stands still and just holds on to the limp raccoon in his arms, not moving a muscle - other than the ones in his crotch, as his balls keep twitching with another and another spurt of cum being delivered. 'You're one fine breeder to get off in,' he grunts in satisfaction as his orgasm slowly peters out. His partner does little but moan in a pleasantly blissed-out way in response - clearly riding the high that actual orc cum delivers in much greater potency than just Urik's pre-cum. And apparently, the big orc wants a slice of that too. The next thing that Urik does is sit down on the sofa, followed by tugging his fuck-toy off his half-hard erection and spinning Candy around bodily.";
			WaitLineBreak;
			say "     Holding the freshly-bred raccoon upside-down now, Urik puts his face between the furry globes of Candy's buttocks, pushing his tongue against the gay man's cum-slick pucker and eating him out. Hungrily slurping cum from his sex toy, Urik joins Candy in blissful delirium, with the two of them writhing against each other while riding their high. As most of the action seems to be over by now, you leave them at it and return to other matters, walking down the stairs to the library ground floor.";
			now CandyUrikInteraction is 1; [initial scene done]
			NPCSexAftermath Candy receives "AssFuck" from Urik;
			if "Dominance Returned_Player" is not listed in Traits of Urik and "Dominance Returned_Other" is not listed in Traits of Urik: [hasn't been on top for fucking since he was made a breeder]
				add "Dominance Returned_Other" to Traits of Urik; [he got to be on top again - with someone who's not the Player]
		else if calcnumber is 2:
			LineBreak;
			say "     Urik vanishes upstairs with Candy and before long, you can hear ecstatic moaning coming from up there, combined with the heavy slaps of a certain orc's full balls against Candy's ass. Sounds like the girly-boy is having the time of his life!";
			now CandyUrikInteraction is 1; [initial scene done]
			NPCSexAftermath Candy receives "AssFuck" from Urik;
			if "Dominance Returned_Player" is not listed in Traits of Urik and "Dominance Returned_Other" is not listed in Traits of Urik: [hasn't been on top for fucking since he was made a breeder]
				add "Dominance Returned_Other" to Traits of Urik; [he got to be on top again - with someone who's not the Player]
		else:
			LineBreak;
			say "     Stopping the orc cold with a firm-voiced command, you stand with crossed arms waiting for Urik to turn around. 'Aw, come on!' he groans out between his tusks, pointing at Candy. 'The slut was just asking for it, and you weren't using him, so I -' Urik falls silent as you wave him off, and command that he put the raccoon down. With a sigh, he obeys, setting the candy striper down on his slender paws. You nod at the show of submission and step up to the orc brute. Touching his side just above the hips, you give him a little squeeze and say that this is your lair, and you just don't want him fucking Candy. 'As you command, [UrikPlayerAddress],' he replies, not particularly happy about the decision, but ready enough to obey.";
			say "     After Urik gives you a respectful nod and then stomps up the stairs, you hear someone clearing his throat behind you. It is Candy, striking a sexy but also exasperated pose with one hand on his hip. 'Way to kill the mood,' he complains, throwing a look filled with longing after the orc. With that said, the pink raccoon turns on his heel and stalks off to find something else to amuse himself with.";
			now CandyUrikInteraction is 100; [further interaction forbidden]

after going to Sitting Area while (Urik is in Sitting Area and Loyalty of Urik > 5 and ("Braiding_Ignored" is not listed in Traits of Urik and "Braiding_Watched" is not listed in Traits of Urik and "Braiding_Helped" is not listed in Traits of Urik) and a random chance of 1 in 3 succeeds):
	if debugactive is 1:
		say "     DEBUG: Urik braids his hair: [Loyalty of Urik], current turn: [turns][line break]";
	try looking;
	project the Figure of Urik_clothed_icon;
	say "     Walking along the upper floor of the library, you step past the bookshelves around the sitting area and let your gaze wander over it. Sitting on the large sofa against the back wall is Urik, who appears to be busy redoing the two braids he's always wearing. It is somewhat of an odd, yet intriguing sight to catch the huge muscle hunk of an orc in a moment of personal grooming, underlining that he's a person, not some sort of movie monster. The large, green-skinned man seems quite focused on what he's doing and oblivious to anything around him. From what you can see, he's having a little difficulty in doing tight braid on himself, caused by his relatively large fingers now that he's an orc.";
	LineBreak;
	say "     [bold type]Do you want to do something?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Walk up and keep Urik company, watching him do the braid.";
	say "     [link](2)[as]2[end link] - Walk up and offer to help him.";
	say "     [link](3)[as]3[end link] - Nah, just leave him to it.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to watch, [link]2[end link] to help or [link]3[end link] to ignore Urik.";
	if calcnumber is 1:
		say "     Directing your steps over towards Urik, you clear your throat, [if PlayerFriended of Urik is true]at which point he looks up from just staring into space before, with a slight smile appearing on his face[else]at which point he looks up from just staring into space before, somewhat startled[end if]. 'Oh, hey [UrikPlayerAddress]. I was just... uhm, you know,' the orc says, flicking the strands of hair he's holding in his hands up a little. Nodding, you tell him that you saw that, and decided to keep him a some company. With that said, you walk over and sit down next to the orc, looking with interest at what he's doing. 'I usually do this by myself,' the big man says somewhat embarrassedly, then starts up again, continuing to work with his hair.";
		say "     Watching from close up, you can see in the sure movements of his fingers and the stoic way he ignores the pinch of pulling on the strands of hair to achieve a tight braid that Urik must have years of experience in doing this. Even the fact that he's somewhat less dexterous as an orc now isn't stopping Urik, although he does have to re-grasp a time or two to get only those hairs he wanted between his fingers. While you keep him company, you can't help but wonder out loud what made him pick braids like these, as it's an unconventional hairdo for a man. Urik grunts in reaction, [if PlayerFriended of Urik is true]throwing you a sideways grin[else]looking over to you somewhat guardedly as if wondering why you're suddenly appearing to care about him[end if], then says, 'Family tradition, I guess. My grandpa moved the family to the US from Scandinavia after WW1. Man, the stories he told me as a kid! Real hardcore myths with blood and guts, hah! I always wanted to go on raids, like in the sagas.'";
		WaitLineBreak;
		say "     Urik continues to braid for a few seconds, then bites his lip and adds, 'When I started doing them again after I got out of the army, Declan loved it! Called me his big, strong viking!' The orc's expression takes on a faraway look after those words, until he soon wraps up the braid and fixes it into position with a hairband. 'What do you think? Do I look butch enough to be seen with, even if I have braids?' Given that they fit him fairly well and you can't think of a better look than the iconic viking braids right now anyways, you smile and nod, throwing in that he could even add little pink bows and still look all manly. 'Yeah, no chance for that happening!' Urik replies with an amused snort, then starts on the other side's braid. You keep him company until he finishes that too, casually chatting about this or that topic."; [TODO: add variant for relationship with Urik]
		add "Braiding_Watched" to Traits of Urik;
	else if calcnumber is 2:
		say "     Directing your steps over towards Urik, you clear your throat, [if PlayerFriended of Urik is true]at which point he looks up from just staring into space before, with a slight smile appearing on his face[else]at which point he looks up from just staring into space before, somewhat startled[end if]. 'Oh, hey [UrikPlayerAddress]. I was just... uhm, you know,' the orc says, flicking the strands of hair he's holding in his hands up a little. Nodding, you tell him that you saw that, and decided to keep him a some company. With that said, you walk over and sit down next to the orc, looking with interest at what he's doing. 'I usually do this by myself,' the big man says somewhat embarrassedly, at which point you reach out to lay a hand on his bicep and offer your help. 'Uhm, I -' he starts to reply, then stops himself and says, 'That'd be nice, actually. Even though I'm used to braiding, it's different now. Thicker fingers, you know.'";
		say "     You gently slide your fingers under Urik's hands and take hold of the strands of hair, then wait, inviting the orc to guide you in just how he wants the braids done. He tells you to make it a tight, firm braid, stoically ignoring the pinch when you pulling on the strands of hair. While you're working on his hair, you can't help but wonder out loud what made him pick braids like these, as it's an unconventional hairdo for a man. Urik grunts in reaction, [if PlayerFriended of Urik is true]throwing you a sideways grin[else]looking over to you somewhat guardedly as if wondering why you're suddenly acting so nicely[end if], then says, 'Family tradition, I guess. My grandpa moved the family to the US from Scandinavia after WW1. Man, the stories he told me as a kid! Real hardcore myths with blood and guts, hah! I always wanted to go on raids, like in the sagas.'";
		WaitLineBreak;
		say "     Urik watches you braid for a few seconds, then bites his lip and adds, 'When I started doing them again after I got out of the army, Declan loved it! Called me his big, strong viking!' The orc's expression takes on a faraway look after those words, until you soon tell him that you're done on one side and he fixes the braid into position with a hairband. 'What do you think? Do I look butch enough to be seen with, even if I have braids?' Given that they fit him fairly well and you can't think of a better look than the iconic viking braids right now anyways, you smile and nod, throwing in that he could even add little pink bows and still look all manly. 'Yeah, no chance for that happening!' Urik replies with an amused snort, then turns his head and allows you to start on the other side's braid. You work on that until it is finished too, casually chatting about this or that topic."; [TODO: add variant for relationship with Urik]
		add "Braiding_Helped" to Traits of Urik;
	else:
		say "     Shrugging to yourself, you turn your attention elsewhere.";
		add "Braiding_Ignored" to Traits of Urik;

after going to Sitting Area while (Urik is in Sitting Area and Gregory is in Sitting Area and ("Gregory_Stretching_Seen" is not listed in Traits of Urik and "Gregory_Stretching_Ignored" is not listed in Traits of Urik) and a random chance of 1 in 3 succeeds):
	if debugactive is 1:
		say "     DEBUG: Urik stretches Gregory: [Loyalty of Urik], current turn: [turns][line break]";
	try looking;
	project the Figure of Urik_clothed_icon;
	say "     As you walk into the sitting area, you see Urik bent over the half-wyvern soldier you brought back here. He's got his hands on the man and is doing... something to the man. You can't see exactly what, as the orc has his back turned to you and his great bulk hides Gregory from view mostly. Urik still has his clothing on too, so this might not be anything overtly sexual.";
	say "     [bold type]How do you react to this?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Walk up and ask what he's doing.";
	say "     [link](2)[as]2[end link] - Just shrug it off.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to walk up or [link]2[end link] to ignore whatever Urik is doing.";
	if calcnumber is 1:
		say "     Directing your steps towards the orc, you soon are in a position to see a bit more of what is going on. Using his large, muscular hands, the orc takes Gregory's leg and raises it, pulling on the knee to bend it and press it up towards the unconscious man's chest, then lowers the limb again before switching to the other. Looks like he isn't so much feeling the soldier up, but rather is just working on giving him some stretches. Clearing your throat, you draw Urik's attention, then ask him what's going on here. As he looks up from man-handling the partly transformed soldier, Urik gives a grunt and replies, 'I'm just... working him out, you see. Since we don't have a clue when he might wake up or how long he already was in that egg without working his muscles, I figured this might help him later.' Having a quick glance down at the naked man, you see that his cock is soft, so it appears that Urik is telling the truth, with nothing he was doing straying anywhere near the soldier's crotch, not even for a casual grope.";
		say "     Finishing the set of stretches, Urik lowers Gregory's legs back down, then turns to you to continue explaining, 'Back when I was in the army and all, Aaron, a good buddy of mine got clocked in the head by some shrapnel and was out for almost a month. Damn, he could barely move afterwards and had to be in rehabilitation for ages. His physical therapist said half of that coulda been avoided if they'd let him work on the guy while he was still lying flat. Guess back in [']84, the doctors didn't put much stock in the opinion of a muscle mechanic, so my bud got the short end of the stick in the end.' Shrugging, he looks down at the stretched-out man, his gaze lingering on his muscular form and crotch especially. 'We grabbed us a proper little hunk here, and it'd be a shame if he turned into a limp noodle that can't move, eh? Told ya I'd take care of him.' He does have a bit of a point with that, and since neither of you knows for sure if the nanites might help avoid muscle weakening, you tell him to keep up what he's doing. 'Will do, [UrikPlayerAddress]!' the orc says, then turns back to now work on Gregory's arms.";
		add "Gregory_Stretching_Seen" to Traits of Urik;
	else:
		say "     Shrugging to yourself, you turn your attention elsewhere.";
		add "Gregory_Stretching_Ignored" to Traits of Urik;


to say GreyAbbeyLibraryObservation_Urik:
	project the figure of Urik_clothed_icon;
	say "     [bold type]What are you interested in watching?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if PlayerFriended of Urik is true:
		choose a blank row in table of fucking options;
		now title entry is "Story - Neighborhood Patrol";
		now sortorder entry is 1;
		now description entry is "Watch what he does outside of the library (following him)";
	[]
	if LastFuck of Urik - turns > 4 and PlayerFriended of Urik is true and Loyalty of Urik > 8:
		choose a blank row in table of fucking options;
		now title entry is "Sex (Gay) - Intruder Troubles (Husky)";
		now sortorder entry is 2;
		now description entry is "Watch him deal with an intruder";
	[
	if LastFuck of Urik - turns > 4:
		choose a blank row in table of fucking options;
		now title entry is "Sex (Gay) - Boning Candy";
		now sortorder entry is 3;
		now description entry is "Watch Urik fuck Candy";
	]
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
				let DoneTalking be false;
				now sextablerun is 1;
				if nam is "Story - Neighborhood Patrol":
					say "[UrikObservation_NeighborhoodPatrol]";
				else if nam is "Sex (Gay) - Intruder Troubles (Husky)":
					say "[UrikObservation_IntruderTroubles]";
				else if nam is "Sex (Gay) - Boning Candy":
					say "[UrikObservation_BoningCandy]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say UrikObservation_NeighborhoodPatrol:
	say "     Taking position in an out of the way spot from which you have a good view, you settle down to wait what will happen - and before long, Urik comes strolling down the stairs from the upper level of the library. Apparently he's not content with just sitting around all day and instead has decided to go out for a while. Curiosity about the things the orc will be doing while you're not with him, you follow unobtrusively, keeping a suitable distance. It's not actually that hard, as Urik strides down the street with cocksure confidence, secure in his knowledge that he's among the biggest and baddest that roam the streets anywhere close to the library. He doesn't really scout or look behind him, instead just walking along and checking out this or that when the mood strikes him. The quite varied creatures that populate the streets do their best to stay out of the way of the towering brute, with many hiding and others running off with frightened shouts once they see him, which draws amused chuckles from Urik.";
	let RandomEncounter be a random number from 1 to 2;
	if RandomEncounter is 1: [trader]
		say "     After the orc turns a corner on his way, you have to hurry a bit to catch up and not lose sight of him for too long. By the time you glance around the corner, you see several partially human and other completely transformed beings hurrying away, past you and along the street that Urik turned into. It's not hard to spot where they all came from, as there is a trading cart set up beneath the roof of a gas station one house down on the right. The location provides cover against flying observers, which is all the more important these days, now that numerous flying things inhabit the city. Seems all the customers decided to get going while the going was good, with the trader being unable to do the same, given the cumbersome construction of their vehicle, consisting of two shopping carts strapped together side by side and laden with all sorts of stuff.";
		WaitLineBreak;
		say "     The person owning the cart is covered almost completely in a stitched-together, hooded robe, but they appear to be some sort of lizard, judging from the tail sticking out on the back, and the scaly hands gripping the handles as they try to drag their cart away. With one wheel getting stuck in a crack in the ground, that attempt fails miserably, and Urik easily closes the distance. When the trader snatches up a handcrafted spear (really just a broom-handle with a kitchen knife taped to one end) to brandish it while shouting to keep away, the orc stops and puts his hands on his hips, looking down at the much smaller being. 'Really? And what do you think you can do with that?!' he asks in an amused, challenging tone, then brings his large hands together, cracking his knuckles loudly. The spear waves a bit in the air as the hands holding it tremble, allowing Urik to push it aside easily and step closer. You can't quite make out what the trader says when he does so.";
		say "     'Relax, you're not my type, and I don't have an interest in plundering all your shit,' Urik replies, waving a hand at the various wares in the cart, then pausing and plucking one item out. Is that a watermelon? No, a giant apple! 'Though I could use a bite, and you're offering free samples, ain't that right?!' The crunch as he takes a bite from the apple right after that makes it clear that this was a statement rather than a question. The next few minutes are filled with a short conversation between Urik and the lizard, which you can't follow too closely from a distance, what with the orc chewing loudly and also speaking with a full mouth. The next clearly understandable bit is when Urik finishes his snack and says, 'So, keep your business open, no problem. Just remember who owns the neighborhood and offer some samples, eh?' Then he sets out to continue walking, leaving the trader behind.";
		TraitGain "Protection Racket" for Urik; [player knows that Urik is taking stuff from people nearby - a little bit, at least]
	else if RandomEncounter is 2: [hyenas]
		say "     At some point during Urik's trip, the sounds of two motors can be heard in the near distance, quickly followed by two motorbikes arriving onto a crossroads ahead, then turning the corner to ride further down the road, away from the road you are walking on. The riders of the bikes are two anthro hyenas in leather jackets, weaving their machines around the various wrecked cars and piles of trash, with passersby jumping out of the way as the felines cut things fairly closely and arrogantly jeer at people to get out of the way. Something about the two of them seems to draw Urik's interest, as he begins to jog after them, actually making good headway in following them, given that they've got to navigate slowly due to the mid-apocalyptic road conditions. When the hyenas soon pull into a side alleyway and shut down their engines, Urik's behind less than a minute, with you arriving soon after him and glancing around the corner.";
		WaitLineBreak;
		say "     You can see the orc standing about twenty feet into the alley, with the hyenas about the same distance further ahead. They apparently do not appreciate being followed, as one of them is just pulling a baseball bat from a holster on the side of the bike, the other has a length of chain in their hands, swinging the end threateningly in the air. 'What'cha want, you big fucker? You gonna start some beef?' the hyena herm with the bat calls out to Urik, who replies, 'Not if you don't, sugartits! I just like a nice bike and wanted to have a closer look at yours.' The second hyena jeers back, 'Why, you gonna try to steal em? Fat chance, we just got these and we're not giving them up! The previous owners sure don't need em anymore, hah!' Shrugging his broad shoulders, the orc says, 'Bit small for me these days, I'm afraid. And the guy who let a good classic machine like yours get to that state deserves whatever you dished out for him.'";
		say "     The left hyena replies, 'Wait - what?! Is there something wrong with this thing?' Urik snorts and points at the other bike, 'Didn't you hear the difference to your bitch-friend's machine? You should have a good, smooth roar, not that extra sound. The fucker must have let her gathering dust in a garage without taking care of the bike. Got a vacuum leak, plain and simple!' Hyena number two chuckles and comments, 'So much for getting first pick and taking the flashy one, eh? You picked the broken piece of crap, haha!' The other hyena grumbles at her compatriot, with Urik throwing in, 'It's not that bad, actually. Fairly easy fix...' That said, he saunters up to them, wholly unconcerned about the weapons still in their hands, and in short notice, he's pointing out the things that are wrong with the engine. As the three of them continue talking some more, the hyenas eventually pull out some beers from an under-seat storage compartment, offering them to Urik to fix what he can. Eventually, the little meeting breaks up on moderately amicable terms, with the hyenas riding away to a much improved sounding roar of both bikes.";
		TraitGain "Hyena Bike Mechanic" for Urik;
	WaitLineBreak;
	say "     The rest of his excursion is fairly similar to before, with Urik strolling about. Given that he looms a head or three over almost everyone on the streets, he is given a quite respectful - or frightened - reception. A little while later, his route swings back around to the library, with you following and stopping in the entrance area, barely catching sight of the orc as he goes back upstairs.";

to say UrikObservation_IntruderTroubles:
	project Figure of HuskyAlpha_soft_icon;
	say "     You take position and casually observe, soon seeing Urik wander down the stairs from his usual haunts on the first floor and starting to browse in the magazine shelves. Picking out a motorcycle mag, the big orc strolls over to a sofa situated towards the middle of the room, just on the back side of the large branching staircase. Sitting down and leaning back comfortably, he then starts to read. As the minutes tick on while you observe the orc slowly flipping through the pages, you wonder if you should give up on your pursuit as it is getting somewhat boring - but almost as if fate had heard your thoughts, [if Alexandra is booked and Fang is booked]just a little while after you saw Alexandra and Fang leave, with her doing whatever in the rec room and him likely taking a leak in the back garden, [else if Alexandra is booked]just a little while after you saw Alexandra leave to do whatever in the rec room, [else if Fang is booked]just a little while after you saw Fang leave to take a leak in the back garden, [else]a moment later [end if]the entrance door is pushed open somewhat forcefully, with an anthro husky striding inside as if he owns the place. He has a cursory, lazy glance around, completely missing you while doing so, given your hidden position. Urik is completely outside of his line of sight too, with the stairway between the orc and the entrance.";
	if "Husky Intruder Caught" is not listed in Traits of Urik:
		say "     Arrogant confidence is thick in the muscular canine's voice as he says to himself, 'Let's see if the little bitch was right about there being a kitchen in here!' ";
	else:
		say "     Arrogant confidence is thick in the muscular canine's voice as he says to himself, 'Let's find that asshole who roughed up my packmate!' ";
	say "With that said, he turns slightly left, walking towards the doorway in the northern wall. Seems like he's got at least some idea how the place is laid out. Meanwhile, Urik has quietly laid down his magazine on ground, still open on the page he was on, as he apparently intends to continue reading in a bit. Standing next to the back corner of the stairs, he simply waits for the intruder to stroll past him, at which point the orc snatches the husky by one arm and the scruff of his neck, then swings the anthro dog in an arch clean over his own head. The male husky barely has time to start a shocked and surprised whine before he impacts on the couch with a resounding THUD that drives the air from his lungs.";
	WaitLineBreak;
	project Figure of Urik_naked_icon;
	say "     Dazed for a few seconds before he can start pushing himself up, the anthro finds himself staring at the green, thickly muscled legs that come into his line of sight first, followed by a glance up at the grinning orc, accompanied by the words, 'Oh shit!' Urik snorts in amusement, raising one eyebrow as he looks at the other man. [if Territory Marker is in Main & 7th Street]'So, I guess you're too stupid to read, eh? Must have strolled right past the marker I put up outside!' [end if]Grabbing the husky by the neck-fur and pulling him up, far enough to have his face on the level of Urik's crotch, the orc says, 'Would'a thought that word gets around which places one shouldn't try to rob. You new around here? Freshly transformed and a bit soft in the head or something?' At that point, the husky's pride pushes him to protest, bursting out with, 'Hey! No, I -' That his how far he gets before the orc clamps a hand around his muzzle, effortlessly shutting him up completely.";
	say "     'Nah, you're not that much of an idiot who just wanders in here blindly. I bet you're here to pay tribute to the true bosses of this whole area, ain't that right?!' With that, the large orc pulls the husky's head forward, rubbing it against his own crotch and making the canine huff his musky scent. The intruder puts both of his hands on Urik's thick thighs, trying to brace against them and push himself away from the orc's crotch and the growing erection there, without much success. After a few more moments of literally rubbing the intruder's nose in the trouble he's gotten himself into, Urik then ";
	if "Molestation Detox" is listed in Traits of Urik: [not supposed to force people]
		say "hesitates for a second before clearing his throat. 'Though I guess I shouldn't just take you like this. Promised to try to be nicer about fucking random dudes, and I'll hold to that. So let me ask then...' At that point, he bares his crotch fully, gripping the base of his pretty enormous and thick cock, then whacking it softly against the tip of the husky's muzzle, brushing off a glistening drop of pre against his wet nose. 'Wanna take my cock? Trust me, you'll love it!'";
		WaitLineBreak;
		say "     Staring wide-eyed and fearfully at the orc's erection, the husky shakes his head as much as he's able to while still having his muzzle held shut and making grunting noises. 'Scared little bitch,' Urik comments in a huff, then adds, 'You know I can't just let you stroll out of here though, right? That'd give ideas to others. Little bit of body paint should do the trick, hah!' With that said, the orc begins to jerk himself off rapidly, keeping a tight grip on the husky's head as he does so. It doesn't take long before he pushes himself over the edge and lets thick strings of cum fly, painting his captive from head to toe and plastering quite a bit of fur to his skin. One Urik's orgasm ebbs off, the husky is then unceremoniously carried to the entrance of the library and flung through once the door has been pulled open. Given the nanite's healing abilities, bouncing down several stairs and landing in the dust of the sidewalk shouldn't result in any lasting damage for the canine, though the clinging scent of orc cum all over his body might result in a grievous hit to his reputation. Urik meanwhile only snorts and turns away from the entrance after closing it, then saunters to his sofa and goes back to reading the magazine.";
		CreatureSexAftermath "Husky Alpha" receives "Stroking" from "Urik";
	else if "Private Breeder" is listed in Traits of Urik: [reserved lover for the player]
		say "blows out his breath and adds, 'Well, if that's what you were after, I gotta disappoint you, doggo. Got a special someone, and I'm not in the market for others.' The husky lets out a sound somewhere between surprise and relief, ears perking up a little in hope to be let go, but Urik still holds on to him with an iron grip. 'You know I can't just let you stroll out of here though, right? That'd give ideas to others. Little bit of body paint should do the trick, hah!'";
		WaitLineBreak;
		say "     The next thing Urik does is baring his crotch fully, which frees his enormous cock to swing up and smack against his abs. Then he closes his eyes and starts to jerk off furiously, panting and grunting some thing under his breath. You think you can make out your name in what he says, so the big orc seems to imagining you as he touches himself. It doesn't take long before he pushes himself over the edge and lets thick strings of cum fly, painting his captive from head to toe and plastering quite a bit of fur to his skin. One Urik's orgasm ebbs off, the husky is then unceremoniously carried to the entrance of the library and flung through once the door has been pulled open. Given the nanite's healing abilities, bouncing down several stairs and landing in the dust of the sidewalk shouldn't result in any lasting damage for the canine, though the clinging scent of orc cum all over his body might result in a grievous hit to his reputation. Urik meanwhile only snorts and turns away from the entrance after closing it, then saunters to his sofa and goes back to reading the magazine.";
		CreatureSexAftermath "Husky Alpha" receives "Stroking" from "Urik";
	else if "Selective Breeding" is listed in Traits of Urik: [not supposed to cum in people - saved for breeding those that the player wants knocked up]
		say "blows out his breath and adds, 'Too bad my cum's reserved for special purposes, doggo. So you won't get to feel this shaft up your ass or muzzle.' The husky lets out a sound somewhere between surprise and relief, ears perking up a little in hope to be let go, but Urik still holds on to him with an iron grip. 'You know I can't just let you stroll out of here though, right? That'd give ideas to others. And you can still show your submission in another way!'";
		WaitLineBreak;
		say "     The next thing Urik does is baring his crotch fully, then kicking off his clothing, after which he man-handles the husky to lay upside-down on the couch, head dangling just over the edge. Before the guy can say anything, Urik kneels over him, legs left and right of the intruder's body and with his crack just above the dog's muzzle. 'Get licking, mutt! And you better be good!' Urik grunts demandingly, reaching down to push the husky's muzzle against his rear. With little choice in the matter, the canine proceeds to do what he must, lapping at Urik's trembling asshole, which the big green brute clearly enjoys quite a bit. While letting the husky tease his asshole with his tongue, Urik milks his own cock in a slow, controlled tempo, resulting in a steady leakage of pre-cum from his dickhead, which he smears gleefully onto the husky under him.";
		say "     Even while holding back from cumming, the orc enjoys playing around with his captive quite a bit, so it takes a moderately long time before he finally proclaims, 'That's enough,' and dis-mounts the husky. Next, the intruder is unceremoniously carried to the entrance of the library and flung through once the door has been pulled open. Given the nanite's healing abilities, bouncing down several stairs and landing in the dust of the sidewalk shouldn't result in any lasting damage for the canine, though the clinging scent of orc's pre all over his body might result in a grievous hit to his reputation. Urik meanwhile only snorts and turns away from the entrance after closing it, then saunters to his sofa and goes back to reading the magazine.";
		CreatureSexAftermath "Husky Alpha" receives "Stroking" from "Urik";
	else if "Everything Goes" is listed in Traits of Urik or "Stud" is listed in Traits of Urik: [free to dump a load in the husky]
		say "chuckles and adds, 'Okay, time to pay up for bursting in here, doggo!' That said, he bares his crotch fully, gripping the base of his pretty enormous and thick cock, then whacking it softly against the tip of the husky's muzzle, brushing off a glistening drop of pre against his wet nose. 'Open up!' the orc demands, softening his grip on the intruder's muzzle, but the canine keeps his jaws clamped shut, shaking his head determinedly.";
		WaitLineBreak;
		say "     'Tough luck! And don't you dare think about biting - or I'll rip you a new asshole!' Urik grunts aggressively, digging in his thumb and fingers on both sides of the husky's jaw and forcing it open, then jamming the thick shaft of his erection into the mouth of the anthro. As his cock glides over the soft, wet tongue of his captive, the horny orc leaks more pre-cum, which is quickly absorbed by the dog. It is only a question of time before his initial resistance ebbs off and the potent effects of orc pre and cum show themselves. Far from his previous macho self, the husky begins to readily accept the thick cock, even pushing his own head forwards to take more of it. Before long, Urik advances to grabbing the back of the canine's head and throat-fucking him, with his thick erection really bulging out the husky's neck every time it slides in.";
		say "     Between the relentless oral assault and a steady trickle of aphrodisiac-laden pre down his gullet, the intruder is put into a semiconscious, lusty haze, his own canine shaft rock hard while he is used as Urik's cock-sheath. Hammering forward into the receptive muzzle and making his big balls smack the anthro's chin in a steady rhythm, Urik builds up to harsher and harsher fucking as his lust builds to the inevitable climax. 'It's coming, bitch-boy! Your first load of orc cum!' the big brute of a man soon shouts, clamping both hands onto the husky's head as he rams himself home fully, then starts to unload into the guy's stomach, giving him a hearty, protein-laden meal. Glug, glug, glug, you can see the guy's throat move - thinking at first he's swallowing before you realize that that's from the throb of Urik's cock alone, bulging out every time another spurt is delivered.";
		WaitLineBreak;
		say "     The load is so big that Urik has to pull out in the midst of it, relenting to the captive doesn't pass out from sheer lack of oxygen. Of course, even as Urik's cock leaves the husky's mouth with a wet slurp, the orc never stops cumming, instead splattering the intruder's front with rich streaks of semen. The husky collapses before Urik, panting desperately for air, and the orc waits for him to recover at least a little. Next, the intruder is unceremoniously carried to the entrance of the library and flung through once the door has been pulled open. Given the nanite's healing abilities, bouncing down several stairs and landing in the dust of the sidewalk shouldn't result in any lasting damage for the canine, though the clinging scent of orc's pre all over his body might result in a grievous hit to his reputation. Urik meanwhile only snorts and turns away from the entrance after closing it, then saunters to his sofa and goes back to reading the magazine.";
		CreatureSexAftermath "Husky Alpha" receives "OralCock" from "Urik";
		TraitGain "Husky Intruder Dosed" for Urik; [he was made to swallow a load, so is at least moderately craving orc cum]
	TraitGain "Husky Intruder Caught" for Urik;


to say UrikObservation_BoningCandy:
	say "...";

Section 6 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Urik's Breeder"	"BadEnd"	"Sex Slave"	Urik's Breeder rule	20	false

This is the Urik's Breeder rule:
	if ending "Urik's Breeder" is triggered: [TODO: Add variants where people in the library are also taken by Urik]
		say "     Days flow into each other afterwards, with not a clear-headed moment for you between being used for the orc's pleasure, and having another load being delivered orally or anally to swell your stomach. It doesn't take all that long before this treatment leaves you addicted to the pleasure your orc master can give you, and you docilely serve him, even begging for a fuck when you feel the rush of his seed's effects abate. Having lost his status among Boghrim's orc tribe, Urik never goes back to them, instead preferring to remain independent and away from the other green-skinned brutes. This way he can have a harem of little sluts just to himself - although he allows his other breeders [if IncestList is not banned]including your own sons[end if] to use and abuse your ass too, making you the bottom of the group and resulting in almost constant pregnancies as you pop out more orclings for your master. The strong self you were when you won the competition for Urik's ownership is long forgotten by this point, replaced by a slavishly obedient breeder who can think of little more than their next fuck and the dose of orc cum you crave.";
		the Player is enslaved;

Urik ends here.
