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

[ TODO: Add event where Urik finds the remains of a friend, who melted at the outbreak ]


CandyUrikInteraction is a number that varies.
lastCandyUrikInteraction is a number that varies.[@Tag:NotSaved] lastCandyUrikInteraction is usually 20000.
Stamina of Urik is usually 20000.[@Tag:NotSaved]


Section 1 - Combat Companion & NPC

Table of GameCharacterIDs (continued)
object	name
orc supersized breeder	"orc supersized breeder"

orc supersized breeder is a pet. orc supersized breeder is a part of the player.
understand "Urik" as orc supersized breeder.
printed name of orc supersized breeder is "Urik".
The description of orc supersized breeder is "[UrikDesc]".
The weapon damage of orc supersized breeder is 20.
The level of orc supersized breeder is 1.
The Dexterity of orc supersized breeder is 10.
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
		now Urik is nowhere;
	else: [regular summoning]
		say "     And how do you want to do that? Cell phone reception kinda went downhill with the start of the nanite apocalypse and it's not like you can just magic up Urik to appear next to you. Go pick him up yourself.";
		now companion of Player is nullpet;

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
Sterile of Urik is false. [steriles can't knock people up]
MainInfection of Urik is "Orc Warrior".
The description of Urik is "[UrikDesc]".
The icon of Urik is Figure of Urik_clothed_icon.

to say UrikDesc:
	project the Figure of Urik_clothed_icon;
	if PlayerFriended of Urik is false and PlayerControlled of Urik is false: [no choice made]
		say "     Urik looks the part of a proud orc warrior, tall and strong, with a brutishly handsome face, his square jaw showing two sharp tusks jutting upwards. There are only two pieces of 'clothing' on his impressive physique, leaving little to the imagination. The first is a quite well-crafted leather harness that is strapped around Urik's chest - a masterpiece of tough, studded leather and shiny buckles that promises lots of handholds for fucking him. Covering the large orc's thighs, there is a tight-fitting pair of trunks with a mesh pouch at the front (showing off his package), as well as decorative slits on the sides. It is completely open on the back side, with only two straps on the top and bottom, allowing unrestricted access to his ass.";
		say "     The orc has black hair, an unruly mop of long strands falling down between his shoulder-blades, accentuated by a short beard following his chin-line. There is a moderate amount of chest hair on his pecs, curling around Urik's pierced nipples, then leading down to his crotch in a thinner treasure trail of hair. The bush of his pubes can be seen through the mesh of Urik's underwear and his legs bear a nice amount of body hair too. Two impressive tattoos on the back of his forearms and hands complete the image of a big and tough guy. You guess that he likely had them done before his transformation, as the attention to detail speaks of long hours with an excellent tattoo artist.";
		say "     After publicly mistreating one of the human-sized breeder orcs he owned, Boghrim forced him into becoming a breeder slut himself, making him hunger for hard dicks and a tasty load of cum in his belly... and now he's yours, to do with as you please.";
	else if PlayerFriended of Urik is true: [bro Urik]
		say "     Urik looks the part of a proud orc warrior, tall and strong, with a brutishly handsome face, his square jaw showing two sharp tusks jutting upwards. There are only two pieces of 'clothing' on his impressive physique, leaving little to the imagination. The first is a quite well-crafted leather harness that is strapped around Urik's chest - a masterpiece of tough, studded leather and shiny buckles that promises lots of handholds for fucking him. Covering the large orc's thighs, there is a tight-fitting pair of trunks with a mesh pouch at the front (showing off his package), as well as decorative slits on the sides. It is completely open on the back side, with only two straps on the top and bottom, allowing unrestricted access to his ass. The orc has black hair, an unruly mop of long strands falling down between his shoulder-blades, accentuated by a short beard following his chin-line. There is a moderate amount of chest hair on his pecs, curling around Urik's pierced nipples, then leading down to his crotch in a thinner treasure trail of hair. The bush of his pubes can be seen through the mesh of Urik's underwear and his legs bear a nice amount of body hair too.";
		say "     As Urik notices your attention, the orc starts to pose a little, flexing his muscles and showing off the two impressive tattoos on the back of his forearms. You guess that he likely had them done before his transformation, as the attention to detail speaks of long hours with an excellent tattoo artist.";
	else if PlayerControlled of Urik is true:
		say "     Urik looks the part of a proud orc warrior, tall and strong, with a brutishly handsome face, his square jaw showing two sharp tusks jutting upwards. There are only two pieces of 'clothing' on his impressive physique, leaving little to the imagination. The first is a quite well-crafted leather harness that is strapped around Urik's chest - a masterpiece of tough, studded leather and shiny buckles that promises lots of handholds for fucking him. Covering the large orc's thighs, there is a tight-fitting pair of trunks with a mesh pouch at the front (showing off his package), as well as decorative slits on the sides. It is completely open on the back side, with only two straps on the top and bottom, allowing unrestricted access to his ass. The orc has black hair, an unruly mop of long strands falling down between his shoulder-blades, accentuated by a short beard following his chin-line. There is a moderate amount of chest hair on his pecs, curling around Urik's pierced nipples, then leading down to his crotch in a thinner treasure trail of hair. The bush of his pubes can be seen through the mesh of Urik's underwear and his legs bear a nice amount of body hair too.";
		say "     As Urik notices your attention, the orc looks aside, careful not to meet your gaze, and he angles his body a little bit to show the curve of his ass. It almost seems to be a reflexive act, him falling into submissive behavior now that you've made it clear that you expect him to be mainly your breeding slut.";

The conversation of Urik is { "<Placeholder>" }.

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
	LineBreak;
	project the figure of Urik_clothed_icon;
	say "     [bold type]What do you want to talk with Urik about?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat";
	now sortorder entry is 1;
	now description entry is "Chat a bit with Urik";
	[]
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
	if NonconList is not banned and PlayerFucked of Urik is true and "First Time Gentle" is listed in Traits of Urik or "First Time Rough" is listed in Traits of Urik:
		choose a blank row in table of fucking options;
		now title entry is "Let him tell you the full story of that biker cop";
		now sortorder entry is 5;
		now description entry is "Ask Urik about a tale he mentioned before";
	[]
	if "Transformation Story" is listed in Traits of Urik:
		choose a blank row in table of fucking options;
		now title entry is "Ask him about his past";
		now sortorder entry is 6;
		now description entry is "Let Urik tell you about himself before the nanite apocalypse";
	[]
	if "Bike Cop Story" is listed in Traits of Urik or "Urik's Past" is listed in Traits of Urik:
		choose a blank row in table of fucking options;
		now title entry is "Ask him about his sister";
		now sortorder entry is 7;
		now description entry is "Let Urik tell you about his sister, and what went on with her";
	[
	if "Yoga" is listed in Traits of Urik:
		choose a blank row in table of fucking options;
		now title entry is "Ask him about doing yoga"; [TODO: write this scene]
		now sortorder entry is 8;
		now description entry is "Bring up that he seems an odd person to be doing yoga";
	]
	if UrikEricInteraction > 0 and Urik is in Grey Abbey Library:
		choose a blank row in table of fucking options;
		now title entry is "Talk about Eric";
		now sortorder entry is 20;
		now description entry is "Chat with your orc slave about Eric";
	[]
	if Stamina of Spike > 0 and Urik is in Grey Abbey Library:
		choose a blank row in table of fucking options;
		now title entry is "Talk about Spike";
		now sortorder entry is 21;
		now description entry is "Chat with your orc slave about Spike";
	[]
	if orc supersized breeder is not tamed and Urik is in Grey Abbey Library and PlayerFriended of Urik is true and Loyalty of Urik > 5 and Loyalty of Urik < 80:
		choose a blank row in table of fucking options;
		now title entry is "Ask if he'd like to accompany you out into the city";
		now sortorder entry is 70;
		now description entry is "Offer Urik the chance to be your combat companion";
	[]
	if Perception of Urik is 1:
		choose a blank row in table of fucking options;
		now title entry is "Take him up on the looting trip he suggested";
		now sortorder entry is 71;
		now description entry is "Set out to get some nice loot with Urik";
	[]
	if Urik is in Main Hall and Loyalty of Urik > 0: [Urik is in the orc lair]
		choose a blank row in table of fucking options;
		now title entry is "Send him to the library";
		now sortorder entry is 99;
		now description entry is "Send Urik to stay with you in the Grey Abbey Library";
	[]
	if Urik is in Sitting Area or supersized orc breeder is companion of player:
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
				else if nam is "Let him tell you the full story of that biker cop":
					say "[UrikTalk_BikerCop]";
				else if nam is "Ask him about his past":
					say "[UrikTalk_Past]";
				else if nam is "Ask him about his sister":
					say "[UrikTalk_Sister]";
				else if nam is "Talk about Eric":
					say "[UrikTalk4]";
				else if nam is "Talk about Spike":
					say "[UrikTalk5]";
				else if nam is "Take him up on the looting trip he suggested":
					say "[UrikTalk_Looting]";
				else if nam is "Ask if he'd like to accompany you out into the city":
					say "[UrikTalk_Companion]";
				else if nam is "Send him to the library":
					say "[UrikTalk_LibraryTransfer]";
					now DoneTalking is true;
				else if nam is "How he should address you":
					say "[UrikRenameMenu]";
				else if nam is "Give him a bottle of orc cum":
					say "[UrikCumDelivery]";
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

to say UrikTalk1: [chatting]
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

to say UrikTalk_BikerCop: [storytime with Urik]
	if "Bike Cop Story" is not listed in Traits of Urik:
		say "     As you bring up the bike cop that Urik mentioned before, the orc's face draws into a wide grin. 'Made you curious with that one, eh? It was a pretty hot time, in more ways than one!' ";
	else:
		say "     As you bring up the bike cop again, the orc's face draws into a wide grin. 'Can't get enough of hearing about the little slut? Hah! Hope one of these days I can take you to enjoy Pat yourself!' ";
	say "[if supersized orc breeder is companion of player]Chuckling as he adjusts his cock inside the stretchy shorts he's wearing, Urik gives an amused grunt, then starts to tell you the story[else]Leading you over to the sofa he has claimed as his own, the orc leans back into a comfortable sitting position, adjusting his cock inside the stretchy shorts he's wearing. Sharing a lewd look with you and reaching over to touch your thigh lightly, Urik lets out an amused grunt and starts to tell you the story[end if]: 'Okay, it was back in... [']92, yeah that sounds about right, and I was on the Mother Road, driving west, towards the coast. Absolute beauty of a bike giving a deep, rich vibration between my legs, and a young stud having his arms around my chest from behind. Man, I loved that bike - lots of power, and with the tank and trim lacquered in a bright metallic scarlet red. Did the finish myself when I got it back in [']88. The dude behind me on his third or so ride-along was Troy, my nineteen year old nephew. He was close to being accepted in the gang at that point. Solid, dependable lad, despite who his mother was.' Urik's voice takes on a biting edge as he says the last words, but he quickly brushes the thought aside and continues.";
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
	say "     Your orcish companion falls silent for a little while, mulling things over with a bittersweet smile on his lips. 'Hit things off with a guy right there, actually. On the island I mean, him being a marine - but I didn't hold that against him. Hah, had to save Declan from being shanked by a hooker and her pimp in an alley. In the days after the fighting, all of us didn't have too much to do, so the local [']talent['] were making a killing - but instead of getting his dick wet, they tried to do in Dec and just roll him for everything he had.' With a grunt, shaking his head about the situation, Urik continues, 'Dragging a guy from an alley with his arm over your shoulders in such a situation sure makes fast friends. Started hanging out together, shared drinks, girls, then a bed.' Grunting and letting his hand stroke over the tattoo on his right forearm, Urik's eyes are filled with a far-away look for a good minute or so before he focuses back on you. 'Gotta understand how different the time was, back in 1983. I mean, you didn't just let it all hang out like people do these days, especially in this city here on the west coast. So, no kissy-kissy in public, but god, I boned Dec every chance I got! On the down low, of course.'";
	say "     Holding out his arms side by side to show you the detailed pattern tattooed on both, Urik says, 'He actually gave me these in [']84 while he was on leave. By that time I'd gotten out of the army, finally having had enough after that war, and I moved to the west coast to be close to Dec's base. Took on a job in an auto shop, had my man close by, good year that was - 1984. Met his bro Isaiah, a tough as nails biker dude known on the streets as Buffalo. He knew what was going on, you know, but was okay with it. Sure, he teased Dec about it when it was just us, but overall, [']Saiah was on our side, and his gang-buddies followed along. Heck, had some bar fights with some of them in support even without Dec's bro there to rouse em, when this idiot or that was throwing gay slurs.' Taking a breath deep breath, Urik continues, 'Hung out some with the bikers, socially and soon a bunch of [']em coming in to the shop to have some serious talk about their machines. Rode the highways myself quite a bit that summer, up and down the Mother Road. Hell of a shame they took it off the highway map the next year.'";
	WaitLineBreak;
	say "     At that point, Urik's demeanor becomes stony and hard, with his next words having a broken and rough tone to them. '11th of February, 1985. 11:04 PM. That's when Declan was shot, in the back, while taking a leak in the alley beside the bar we were in. Punk who did it thought he was [']Saiah, wanted to make a name for himself gunning him down. Guess one dude looks like another in the dark, eh? Even if one is a lean marine, and the other built like a brick house!' Looking to the side, as if to direct the hatred in his gaze to the past instead of at you, Urik adds in a cold tone, 'Took us three days, and crippling two of his buds for life, to run him down. In the end, the pissant fled. Made it almost to the state line of Arizona, but with me, [']Saiah, and all the rest of the gang covering the routes he could take, that didn't work out so well for him. Left quite a long red streak along Route 66, before the last pieces of him fell of the chain.'";
	say "     Silence stretches out between the two of you, until Urik eventually gives a twitch of his shoulders. 'After that, I was one of the gang. Mh, even those guys who were grumbling before, about us fags and all, were my bro's. Guess killing someone together outweighs everything, eh? Perfect way to solve prejudice.' His last words were meant as a joke, you notice only after a few seconds due to the flat, dead delivery the orc gave them. A moment later, Urik clears his throat. 'Listen, [UrikPlayerAddress] - can we stop for now? Those are quite some memories.' You nod silently patting the orc's arm and give him some space.";
	if "Urik's Past" is not listed in Traits of Urik:
		add "Urik's Past" to Traits of Urik;

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
			say "     As you tell Urik that he may proceed with working out together with Spike, the big male grins bradly and replies, 'Knew you'd see it my way, [UrikPlayerAddress]! Just you wait, I'll help the little bitch reach his full potential!'";
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
			say "     As you tell Urik that he may proceed with working out together with Spike, the big male grins bradly and replies, 'Knew you'd see it my way, [UrikPlayerAddress]! Just you wait, I'll help the little bitch reach his full potential!'";
		else if calcnumber is 2:
			LineBreak;
			say "     As you pose a question about what exactly he did feed Spike, Urik clears his throat and says, 'It's all good stuff in there, just what the boy needs. Protein powder, clean water and so on, you know.' Raising an eyebrow and giving him a pointed look, you wait for him to continue, at which point Urik rubs the back of his neck. '...and maybe just, er, half a load of my cum. Thereabouts,' he adds in a casual tone of voice. 'Hey, why are you looking at me like that?! It's good for him, you know. What do you think makes orclings strong and grow so much right away once they're 'out of the pouch'?' As a reminder that his all-male species has a perculiar way of reproduction, the orc gives his own buttock a slap, drawing your attention to it. 'It didn't look like he's turning green or getting tusks, so you don't have to worry about Spike becoming an orc. It'll just make him build some mass quicker, alright? And maybe become a little bit horny.'";
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



to say UrikTalk_Companion: [companion Urik]
	say "     As you offer Urik the chance to go out into the city with you, the orc livens up immediately, a grin instantly appearing on his face as he bellows, 'FUCK YEAH! Finally some action!' He flexes his arms in an impressive gun-show, then brings a balled-up fist into the palm of his other hand with a loud smack. 'Really hope you weren't kidding about that, [UrikPlayerAddress]! I'm ready to go, just say the word!' Smiling, you step closer to the orc, laying a hand on his arm and squeezing it in camaraderie. Reminding him that he's a powerful warrior that you want by your side makes the orc stand tall and proud. You've definitely earned a lot of respect from him with this.";
	say "     (Urik the supersized orc breeder is now a possible ally! You can make him your active ally by typing [bold type][link]ally Urik[end link][roman type] or [bold type][link]ally orc supersized breeder[end link][roman type] and initiate sex with him while active by typing [bold type][link]fuck Urik[end link][roman type]. You can see all the companions you have with the [bold type][link]allies[end link][roman type] command. Allies will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of an ally? Use [bold type][link]ally dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";
	now orc supersized breeder is tamed;

[TODO: add more content for the wyvern nest - for example a call-out to the military jeep being snatched up by a wyvern]

to say UrikTalk_Looting:
	if Player is not booked:
		say "     You think about taking Urik up for a looting excursion, but then remember that the place he wants to go to is fairly close to the library. Also, he doesn't have his bag with him right now. Maybe take it up again when you're actually in the Grey Abbey Library.";
	else:
		say "     As you speak to Urik about his suggestion of a place that might be good for looting, a grin instantly appears on his face. 'Yeah! Let's go grab ourselves something nice!' Clearly eager to have some adventure with you, the orc rushes off to grab his big sports bag so he can be ready to lug anything you find back with you. 'Let's get going!' comes his shout from the front door moments later, showing his desire to be on the move. Walking up to join Urik, you grab his bicep and give it a squeeze, then meet the orc's gaze and tell him to lead on. The two of you set out down the middle of the street, with Urik strutting forward confidently by your side, taking care to never step ahead of you even as he points out which way to go and what corner to take. Along the way, you pass by various buildings and vehicles, a fair number in fairly abysmal conditions as they have been ransacked already. Yet there are also those that look mostly untouched, and others are fortified in a self-made fashion, indicating that someone or something is living there.";
		say "     'With so many people in this city originally, it's little wonder that a lot of places have been looted before. I mean, people gotta eat something!' your orcish companion brings up in casual conversation as you wander the mid-apocalyptic streets. He chuckles every time you encounter one of the more run of the mill feral creatures that live hereabouts, at which point most of them quickly turn around or duck out of sight. The combination of both Urik as well as yourself seems enough to scare many of them off. 'Weak little fucks around here,' the orc comments about a partially infected person wrapped in ragged clothing, who immediately scrambles under a wrecked car to hide. 'But even wretches like that will hit most promising locations once they get hungry. Unless there's something scaring them off...' Just moments after saying this, the two of you round a corner, with the sight ahead making you freeze in you steps. Urik clearly timed things for effect, you can tell from the tusk-bearing grin on his face.";
		WaitLineBreak;
		say "     The structure ahead of you is large and towers several stories above the main roadway it was created on, and is quite inhuman in its construction. Well, the things it was made of - cars, mainly - are human made, but they've been piled, stacked and twisted together and covered in a slimly-looking organic resin. The stuff must be fairly tough once dry, as it keeps the thing standing despite looking like it was thought up by an insane architect, with no thought for statics or support for the higher levels. Eyes wandering over the odd shape, you struggle to come up with a name for it. Organic tower? Slime-Car Tree? Then it hits you - that is a [italic type]nest[roman type], judging by the bulging clumps of numerous cocoons embedded in the crusty resin all over its shape. 'Some wyverns take a fair while to incubate their young,' Urik says with a grin, then raises his arm to point, not at the wyvern nest but past it. 'And that's where we're going!'";
		say "     Tearing your gaze away from the half-organic car tree, you spot the street forking off the repurposed main road, leading to a somewhat out of the way neighborhood on the other side. With a tree-flanked riverbed bending around the back side of it, there doesn't appear to be any way to reach it besides the direction you're coming from. 'Being anywhere close while they were building that thing would have been a bad idea - must have been several wyverns, and they'd have picked off anything that moved. Cars to use as material, and the people to stock their nest. But after, they just fuck off. Come on, let's get going - if one hatches while we're close, we can just punch it out. That's barely any danger at all!' That said, the orc grins broadly and sets out with you past the wyvern nest, eerie silence all around you. It is a somewhat awe-inspiring sight to see the huge thing up close, with those cars stick out at odd angles, from rusty trash to high quality sports cars. And in between those many large cocoons, some fairly human-shaped, others less so.";
		WaitLineBreak;
		say "     The tense moments pass as Urik calmly leads you down the road, eventually arriving at the entrance to the neighborhood beyond. It looks fairly peaceful, and quiet, with just some claw-grooves in the asphalt left as a reminder that things went quite different just a little while ago. An image forms in front of your mind's eye: Suburbanites setting out to go to work in their cars, with a flock of wyvern circling in the sky above. Then they swoop down, some just snatching up cars with claws digging into their roofs and lifting them. Some drivers are fast enough to react, forcing other wyverns to chase them, which they do in a ground-hugging flight, claws scraping the ground as they miss dodging cars, until they don't. Urik waits patiently for a little while, then clears his throat and waves his large green hand to indicate a whole row of buildings. 'Pick one, [UrikPlayerAddress]!'";
		LineBreak;
		say "     [link](1)[as]1[end link] - Point at the big townhouse with the faux-marble columns next to its door.";
		say "     [link](2)[as]2[end link] - Pick the house with the nice veranda (complete with a swinging bench).";
		say "     [link](3)[as]3[end link] - The house with the flagpole out front sure is a good start.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to go for the house with the columns, [link]2[end link] to go for the veranda house, or [link]3[end link] to pick the house with the flagpole.";
		if calcnumber is 1:
			LineBreak;
			say "     The orc nods to you as you make your choice, then moves towards the townhouse. As you walk over with him, you let your gaze sweep over the front yard, with its well-manicured rose bushes. Not a cheap house, that's for sure. Coming to stand in front of the door, Urik makes a fist and simply punches through the stained-glass centerpiece, feeling around a bit before he opens the door with the inside knob. As it swings open, you can hear an electronic beep start demanding urgent attention - it's an alarm system! 'Fat lot that's gonna do them now. Not like anyone will come answer that call,' Urik snorts, smashing the box on the wall with his fist to at least shut up the loudspeaker. Then you start going through the house, with the first point of interest being the kitchen, which turns out to be decked out in really nice granite countertops, and all sorts of expensive kitchenware.";
			say "     Sadly though, the huge fridge isn't battery-supported like the alarm was, so the prime quality organic foodstuffs that were in it have devolved into a disgusting sludge that makes your eyes water from the smell. The only thing that seems salvageable looks to be two unopened jars of Greek cheese cubes floating in oil. Urik quickly snatches them and stuffs them in his bag. Being driven out of the room to avoid that rancid stench in your nose, you pass through a dining room and into a family room with a large fireplace. 'Hey, these could be useful!' Urik says with a nod at the fireplace, where two cavalry sabers hang crossed over each other. He takes one down and draws it from its sheath, then tries it on one of the curtains in the room, easily cutting it down. 'They're really sharp! Not just decorations then.' Re-sheathing the saber, he moves up to you and presents it to you, smiling as you accept, then grabbing the other saber for himself and stuffing it in the bag.";
			add "Saber Urik" to Traits of Urik; [TODO: add mentions of this throughout his content]
			ItemGain cavalry saber by 1;
			ItemGain food by 1;
		else if calcnumber is 2:
			LineBreak;
			say "     The orc nods to you as you make your choice, then moves towards the house with the veranda. It swings a little in the wind as you take up the steps onto the veranda, followed by Urik moving in to give the door a shove, easily breaking its lock. Beyond is a cozy family home, filled with lots and lots of pictures on the walls and available surfaces. Following the wall, you can literally trace all the steps of these people's life, from a smiling couple, to three children getting progressively bigger, then apparently moving out for college, with at least one having graduated. There are some pictures of the now elderly couple in various spots around the globe, followed by a portrait of the husband, smiling but also looking pale and with sunken cheeks. The further pictures after that point feature only the wife, almost always with a dog by her side, or one of her children.";
			say "     'Found something!' Urik's voice bellows from the next room, shaking you from your inspection of the picture wall. You go to take a look and find it being the kitchen. The fridge is standing open, being almost completely empty, but Urik has found a shelf with a row of dog-food cans lined up on it. 'Food is food,' he says with a shrug, taking them one by one and filling his bag with cans. As you look around a little more while he's busy, you spot a piece of paper lying on the counter. It is a shopping list, written in a very neat, almost calligraphic style of handwriting. Picking it up and letting your gaze sweep over the text without actually reading it, you idly wonder if the woman and her dog maybe were already out when things started going down here. She could have gotten up in the early hours, as old people often do, and been at the mall, or something.";
			ItemGain food by 1;
			add "Picture House" to Traits of Urik; [TODO: add a call-out to this in the mall]
		else:
			LineBreak;
			say "     The orc nods to you as you make your choice, then moves towards the house with the flagpole. As you follow him, you're momentarily puzzled by the grass around the building being very flat and groomed, with no strand out of position. That mystery is quickly solved though, as you see a little plastic vehicle roll into view. Walking over to it, you realize that it's one of those new automatic lawnmowers. The solar panels on top would explain how it is still running even with power out through most of the city. Hurrying your steps to catch up to Urik, you find the orc standing in front of a quite solid-looking door. It has already got a dent where the orc punched it, but apparently that wasn't enough to take the door down. Digging his fingernail under the broken wood and levering it up, Urik shows you why. 'It's reinforced, there's metal under here.' Taking a step back, he gives the door a closer inspection, knocks on the frame around it, then finally focuses his attention on the other side, where the hinges are. What follows ups a solid, forceful kick of his large green foot, bursting the material with a metallic crack.";
			say "     It takes two more kicks to break the other hinge, at which point Urik can force the door open to allow you entry. What lies beyond appears to be the house of a doomsday prepper, quite orderly and almost military in its layout. Well, except for the fact that about a dozen weapons have been removed from their stands, same as some boxy equipment that left dents in the carpet where it must have rested for quite a while. The kitchen cupboards have been hastily emptied of MREs and water bottles, but thankfully the owner of the house must have run out of space when he bugged out to wherever he thought he'd outlast the nanite apocalypse better. One section is still stuffed with good packs, which Urik presents to you with a broad grin. 'Jackpot!' He fills his bag with vacuum-sealed food packages, as do you.";
			ItemGain food by 5;
			add "Prepper House" to Traits of Urik; [TODO: add a call-out to this somewhere - maybe with Garth, asking him if it was his place]
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
			say "     After closing the door behind him, Urik shrugs his broad shoulders. 'Hm, I guess we should knock before in the future. I don't have any issues with having a good fight and earning some rewards for that, but taking anything those two might have had would be wrong.' He shrugs at not being able to explain it in more detail. 'Anyways, got a good haul for now, so how about we call it a day for the moment?' Nodding, you follow Urik back to the library, here he stashes away his part of the loot.";
		else if calcnumber is 2:
			LineBreak;
			say "     You dig out some food from your own pack, adding it to what Urik placed on the ground. Roxana watches you with a suspicious expression on her face, which only softens a tiny bet as you and Urik withdraw afterwards, closing the entrance door behind you. Shrugging his broad shoulders, Urik says, 'Hm, I guess we should knock before in the future. I don't have any issues with having a good fight and earning some rewards for that, but taking anything those two might have had would be wrong.' He shrugs at not being able to explain it in more detail. 'Anyways, got a good haul for now, so how about we call it a day for the moment?' Nodding, you follow Urik back to the library, here he stashes away his part of the loot.";
			ItemLoss food by 1;
		else if calcnumber is 3:
			LineBreak;
			say "     As staying here uninvited for much longer would probably just lead to a fight, you agree, walking out of the house and closing the door behind you. 'Hm, I guess we should knock before in the future. I don't have any issues with having a good fight and earning some rewards for that, but taking anything those two might have had would be wrong.' He shrugs at not being able to explain it in more detail. 'Anyways, got a good haul for now, so how about we call it a day for the moment?' Nodding, you follow Urik back to the library, here he stashes away his part of the loot.";
	now Perception of Urik is 2;

to say UrikTalk_LibraryTransfer: [send him to the library]
	say "     Urik listens to your instructions with a quiet intensity that makes it clear he commits the directions to the library to his memory. 'Okay [UrikPlayerAddress], I'll go there straight away.' With a playful slap at his muscled buttocks, you send him off into the city.";
	move Urik to Sitting Area;

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
				now PlayerFucked of Urik is true;
				now Loyalty of Urik is -1; [cuts out any of the library content]
			else:
				say "     Shaking your head a little to clear the lustful thoughts for a second, you decide not to take Urik for now.";
		else: [first time in library]
			if PlayerFriended of Urik is true: [tribesman Urik gets the loving into to sex, the harsher tone of the other option doesn't fit too well]
				say "[UrikFirstFuck_Library_Missionary]";
			else:
				say "     This being your first time with the orc, you've got a choice to make. Yes, you won him as a prize and you can do what you will with him, but Urik is - almost - an anal virgin, with as far as you know only Toven having fucked him before as part of Boghrim's punishment for the demoted warrior. So, you better choose well on how you want to start things out with the big, green male you've now brought home with you.";
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
		[
		choose a blank row in table of fucking options;
		now title entry is "Suck Urik's cock";
		now sortorder entry is 1;
		now description entry is "Give him a blow-job";
		[]
		if (lust of Urik > 0 and player is male):
			choose a blank row in table of fucking options;
			now title entry is "Have him suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blow-job";
		[]
		if Player is female:
			choose a blank row in table of fucking options;
			now title entry is "Mount Urik's cock with your pussy";
			now sortorder entry is 3;
			now description entry is "Let the orc warrior breed you";
		[]
		if (lust of Urik > 0):
			choose a blank row in table of fucking options;
			now title entry is "Let Urik fuck your ass";
			now sortorder entry is 4;
			now description entry is "Let the orc warrior fill your ass with his seed";
		]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Take Urik's ass";
			now sortorder entry is 5;
			now description entry is "Fill the orc slave's ass with your cock";
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
					if nam is "Suck Urik's cock":
						say "[UrikSex1]";
					else if (nam is "Have him suck your cock"):
						say "[UrikSex2]";
					else if (nam is "Let Urik fuck your pussy"):
						say "[UrikSex3]";
					else if (nam is "Let Urik fuck your ass"):
						say "[UrikSex4]";
					else if (nam is "Take Urik's ass"):
						say "[UrikSex5]";
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

to say UrikSex1: [suck the orc]
	say "     <WIP>";
	NPCSexAftermath Player receives "OralCock" from Urik;

to say UrikSex2: [get a BJ from Urik]
	say "     <WIP>";
	NPCSexAftermath Urik receives "OralCock" from Player;

to say UrikSex3: [Urik fucks player pussy]
	say "     <WIP>";
	NPCSexAftermath Player receives "PussyFuck" from Urik;

to say UrikSex4: [Urik fucks player ass]
	say "     <WIP>";
	NPCSexAftermath Player receives "AssFuck" from Urik;

to say UrikSex5: [player fucks Urik]
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

Section 5 - Events

instead of navigating Grey Abbey Library while (Urik is in Sitting Area and Loyalty of Urik is 1):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Urik Arrival[line break]";
	say "     As you arrive at the library, you immediately notice Urik, who's sitting on the edge of the front desk, casually flicking through an old magazine for motorcycle enthusiasts he must have found somewhere in the stacks. 'Hey boss,' he says upon noticing you, standing up and taking a few steps forward. 'Found the place alright, following your description. Claimed a couch on the upper floor, in that sitting area, if that's alright by you.' He nods towards the stairs leading up and you tell him it's fine. 'Gotta say, I was surprised just how different this area is than back at the lair. I mean, just walking a number of miles to get here, I saw critters that I had never seen before. Oh yeah, and some little hyena sluts on souped-up bikes trying to act like dudes, and as if they were the big cheese around here. There were three of them together, and still they didn't dare to try me, hah! Man, back in my day we'd have curb-stomped such a sorry excuse for a gang and sent [']em running back to mommy with a baggie of their teeth.' The two of you talk a little more about what's going on around the library, then Urik goes upstairs to hang out in his new place.";
	now Loyalty of Urik is 2; [arrived safely and had a talk with the player]

instead of navigating Grey Abbey Library while (Urik is in Sitting Area and Loyalty of Urik is 2 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Urik comments about defensibility[line break]";
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

Territory Marker is a person. [for easy saving, and in vase some variables are needed in the future]
The description of Territory Marker is "[MarkerDesc]".

to say MarkerDesc:
	say "     A large sign, constructed of a number of rebar steel rods and the motor hood of a car has been put up in front of the library by Urik. He drove the rods into the asphalt of the street with enough force to shatter it, making sure that this sign is well and truly planted where is. On it, the text that the orc created is well-readable and even has shadows behind the letters for added effect: '[if player is not defaultnamed]Territory of [Name of Player]! Keep Out!' [else]Tribal Territory! Keep Out!' [end if]A snarling orc's face at the upper right corner (similar to Urik himself) and what looks to be a scattering of fallen skulls at the base of the sign drive the message home.";

The linkaction of Territory Marker is "Possible Actions: [link]smell[as]smell Territory Marker[end link][line break]";

The scent of Territory Marker is "The large sign smells of metal and paint.".


after going to Sitting Area while (Urik is in Sitting Area and Loyalty of Urik is 3 and Stamina of Urik - turns > 8):
	if debugactive is 1:
		say "     DEBUG: Urik eats his own cum - last cum had in turn: [Stamina of Urik], current turn: [turns][line break]";
	try looking;
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

instead of navigating Grey Abbey Library while (Urik is in Sitting Area and PlayerFriended of Urik is true and Loyalty of Urik is 6 and companion of player is not orc supersized breeder and a random chance of 2 in 5 succeeds): [Urik catches a hawkman]
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Urik catches a hawkman[line break]";
	say "     After a trip through the wild streets of the city, you walk up the stairs to the entrance of the Grey Abbey Library. Stepping inside, you take a deep breath, happy to be back in your home for the apocalypse, a safe and peacef-";
	say "     *CRASH*, *SCREECH*, *THUD*";
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
		say "Choice? (1-4)>[run paragraph on]";
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
	if companion of Player is orc supersized breeder:
		now companion of Player is nullpet;

after going to Sitting Area while (Urik is in Sitting Area and (Loyalty of Urik is 7 or Loyalty of Urik is 8)): [post-bird discussion]
	if debugactive is 1:
		say "     DEBUG: Post-bird discussion with Urik, Loyalty of Urik: [Loyalty of Urik ], current turn: [turns][line break]";
	try looking;
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
			say "     Putting a hand on the orc's thigh, you explain how you feel about him, stroking up and down the inside of his leg a little bit as you say this. 'Oh? Oooooohhhh!' Urik replies, his pear-green eyes going wide as he looks into yours. 'Um, I -' he stammers, about as shell-shocked as if you had pulled out a two-by-four and clocked him in the head with it. '[if PlayerFucked of Urik is false]But, you - we - didn't even fuck yet?' [else]But that's not how things went in the old tribe? You just take whom you want and fuck?' [end if]the orc adds, noncomprehension written on his face. You can't help but shake your head and sigh a little at the both endearing as well as somewhat aggravating lack of knowledge of actual relationships in the orc, so you go to plan B: Hooking a hand behind his head and pulling him into a kiss. Your lips meet for that first peck, followed by you playfully licking over his tusks, then going for an in-depth snog with the big green brute.";
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
	if Urik is in Sitting Area:
		say "     As you arrive at the library, you immediately see Urik, who's casually leaning against the corner of the front desk, waiting for you. 'Hey [UrikPlayerAddress]!' he calls out, coming to a stand and walking up to you. Offering a respectful fist-bump that you return, the orc clears his throat, 'Just so you know, I've been looking around a bit in the neighborhood. Found some places not too far away that could have great loot. So... how about we have a little trip?' With a hopeful expression, the orc wiggles his eyebrows at you, then steps back over to the desk, leaning over it to grab a large sports bag that he demonstratively holds up, showing you just how much room for loot is in it. Finally, he hangs it over one shoulder by a solid-looking strap, grinning as he ways, 'I'm ready anytime, just talk to me and say the word!'";
	else if companion of player is orc supersized breeder:
		say "     As you arrive at the library and enter, Urik reaches out and taps your shoulder. 'Hey [UrikPlayerAddress]. I wanted to talk to you about something,' he says, coming to a stand before you and meeting your gaze. 'Remember that I checked out the neighborhood a bit on the way here? Well, there actually were a few places nearby that looked like they might have great loot. So... how about we have a little trip? Didn't want to bring it up before, since the location is actually fairly close to here, and I needed to get something from here anyways.' With a hopeful expression, the orc wiggles his eyebrows at you, then walks over to the front desk, leaning over it to grab a large sports bag stashed behind. Demonstratively holding it up, the orc shows you just how much room for loot is in it, then hangs it over one shoulder by a solid-looking strap. 'I'm ready anytime, just talk to me and say the word!'";
	now Loyalty of Urik is 10; [he offered looting trips]
	now Perception of Urik is 1; [enabled the talk option]

instead of navigating Grey Abbey Library while (Urik is in Sitting Area and Loyalty of Urik > 8 and Loyalty of Urik < 80 and PlayerFriended of Urik is true and "Selective Breeding" is not listed in Traits of Urik and Loyalty of Urik > 8 and Candy is in Bunker and CandyUrikInteraction < 1 and (lastfuck of Urik - turns > 10)):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Urik grabs Candy - CandyUrikInteraction: [CandyUrikInteraction], lastCandyUrikInteraction: [lastCandyUrikInteraction], current turn: [turns][line break]";
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
			say "     Meanwhile, Urik takes hold of his hard cock and rubs it between Candy's buns, then pushes the candy striper down on his erection. With a satisfied grunt (and a breathless gasp from Candy), the orc slides into his smaller partner, stretching his chute wide with the girth of his manhood. Wound up as the two of them are, there is no hesitation, no slow 'getting used to' phase for their fucking - Candy grinds his ass down on Urik's cock before the orc even starts to thrust. The orc isn't dainty with his cock either, hammering Candy down on it till his balls slap the candy-striper's ass with a satisfying thud, then again and again in a rapid tempo. Oblivious to everything around them, the two men fuck with gleeful abandon, filling the library with moans, grunts and gasps in ever-increasing urgency.";
			say "     Before long, their breathless mating rises to a shouted climax, with Urik forcing his cock all the way into Candy's stretched hole and pumping blast after heavy blast of cum into him. At the same time, the lust-drunk raccoon comes too, splattering the rock-hard abs on Urik with his own load. For a little while, Urik stands still and just holds on to the limp raccoon in his arms, not moving a muscle - other than the ones in his crotch, as his balls keep twitching with another and another spurt of cum being delivered. 'You're one fine breeder to get off in,' he grunts in satisfaction as his orgasm slowly peters out. His partner does little but moan in a pleasantly blissed-out way in response - clearly riding the high that actual orc cum delivers in much greater potency than just Urik's pre-cum. And apparently, the big orc wants a slice of that too. The next thing that Urik does is sit down on the sofa, followed by tugging his fuck-toy off his half-hard erection and spinning Candy around bodily.";
			WaitLineBreak;
			say "     Holding the freshly-bred raccoon upside-down now, Urik puts his face between the furry globes of Candy's buttocks, pushing his tongue against the gay man's cum-slick pucker and eating him out. Hungrily slurping cum from his sex toy, Urik joins Candy in blissful delirium, with the two of them writhing against each other while riding their high. As most of the action seems to be over by now, you leave them at it and return to other matters, walking down the stairs to the library ground floor.";
			now CandyUrikInteraction is 1; [initial scene done]
			NPCSexAftermath Candy receives "AssFuck" from Urik;
		else if calcnumber is 2:
			LineBreak;
			say "     Urik vanishes upstairs with Candy and before long, you can hear ecstatic moaning coming from up there, combined with the heavy slaps of a certain orc's full balls against Candy's ass. Sounds like the girly-boy is having the time of his life!";
			now CandyUrikInteraction is 1; [initial scene done]
			NPCSexAftermath Candy receives "AssFuck" from Urik;
		else:
			LineBreak;
			say "     Stopping the orc cold with a firm-voiced command, you stand with crossed arms waiting for Urik to turn around. 'Aw, come on!' he groans out between his tusks, pointing at Candy. 'The slut was just asking for it, and you weren't using him, so I -' Urik falls silent as you wave him off, and command that he put the raccoon down. With a sigh, he obeys, setting the candy striper down on his slender paws. You nod at the show of submission and step up to the orc brute. Touching his side just above the hips, you give him a little squeeze and say that this is your lair, and you just don't want him fucking Candy. 'As you command, [UrikPlayerAddress],' he replies, not particularly happy about the decision, but ready enough to obey.";
			say "     After Urik gives you a respectful nod and then stomps up the stairs, you hear someone clearing his throat behind you. It is Candy, striking a sexy but also exasperated pose with one hand on his hip. 'Way to kill the mood,' he complains, throwing a look filled with longing after the orc. With that said, the pink raccoon turns on his heel and stalks off to find something else to amuse himself with.";
			now CandyUrikInteraction is 100; [further interaction forbidden]


Section 6 - Endings




Urik ends here.
