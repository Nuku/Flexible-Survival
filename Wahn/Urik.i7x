Version 1 of Urik by Wahn begins here.
[Version 1 - New NPC]
[Version 1.1 Character relocation - Luneth]

[ Urik, the NPC                                                                ]
[                                                                              ]

[ Stamina of Urik - last turn he got some cum                                  ]

[ Intelligence - Title the player has chosen                                   ]
[  0: standard setting - Boss                                                  ]
[  1: Don                                                                      ]
[  2: Capo                                                                     ]
[  3: Kingpin                                                                  ]
[  4: Oyabun                                                                   ]
[  5: Chief                                                                    ]
[  6: Master                                                                   ]
[  7: Mistress                                                                 ]
[  8: Daddy                                                                    ]
[  9: Mommy                                                                    ]

[ Thirst of Urik - Cum Delivery                                                ]
[  0: player hasn't seen the cum needs scene                                   ]
[  1: player agreed to give him some bottles                                   ]

[ Charisma of Urik - Hawkman interaction                                       ]
[   0: not met yet                                                             ]
[   1: jerked Urik off onto him                                                ]
[   2: Urik got to fuck him                                                    ]
[  99: simply let go after library breakin                                     ]

[ CandyUrikInteraction                                                         ]
[   0: no contact yet                                                          ]
[   1: Urik grabbed Candy to fuck                                              ]
[ 100: player forbid Urik to take Candy                                        ]


CandyUrikInteraction is a number that varies.
lastCandyUrikInteraction is a number that varies.



Section 1 - Combat Companion & NPC

Table of GameCharacterIDs (continued)
object	name
orc supersized breeder	"orc supersized breeder"

orc supersized breeder is a pet. orc supersized breeder is a part of the player.
understand "Urik" as orc supersized breeder.
printed name of orc supersized breeder is "Urik".
The description of orc supersized breeder is "[UrikDesc]".
The weapon damage of orc supersized breeder is 17.
The level of orc supersized breeder is 20.
The Dexterity of orc supersized breeder is 17.
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
		say "     The punishment that Boghrim put Urik through seems to have had a perculiar effect on the orc warrior, as he clearly didn't become a typical orc breeder, what with them being smaller, much more plyable and submissive. 'Fucker,' Urik grunts at the knocked-out orc, then turns back to you. 'No respect in some of these punks,' he comments. 'So, as I was saying, I'm all yours boss. Just tell me what you want me to do.' With that said, the orc's gaze flicks down to your crotch for a few seconds, and he subconsciously runs the tip of his tongue over his lips. From the looks of it, he's become a breeder in at least that aspect of things, inheriting the craving for cum they all have. It'll remain to be seen if this will remain the full extent of his transition, or if Urik's behavior is just an intermediary stage to something else.";
		now PlayerMet of Urik is true;
	LineBreak;
	project the figure of Urik_naked_icon;
	say "     [bold type]What do you want to talk with Urik about?[roman type]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat";
	now sortorder entry is 1;
	now description entry is "Chat a bit with Urik";
	[]
	if Loyalty of Urik is 0: [TODO: remove condition once there are texts for the deeper forks]
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
	if orc supersized breeder is not tamed and Urik is in Grey Abbey Library and PlayerFriended of Urik is true and Loyalty of Urik > 5 and Loyalty of Urik < 80:
		choose a blank row in table of fucking options;
		now title entry is "Ask if he'd like to accompany you out into the city";
		now sortorder entry is 4;
		now description entry is "Offer Urik the chance to be your combat companion";
	[]
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
	if Urik is in Main Hall and Loyalty of Urik > 0: [Urik is in the orc lair]
		choose a blank row in table of fucking options;
		now title entry is "Send him to the library";
		now sortorder entry is 99;
		now description entry is "Send Urik to stay with you in the Grey Abbey Library";
	[]
	choose a blank row in table of fucking options;
	now title entry is "How he should address you";
	now sortorder entry is 100;
	now description entry is "Tell Urik the title he should use for you";
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
				else if nam is "Ask if he'd like to accompany you out into the city":
					say "[UrikTalk_Companion]";
				else if nam is "Talk about Eric":
					say "[UrikTalk4]";
				else if nam is "Talk about Spike":
					say "[UrikTalk5]";
				else if nam is "Send him to the library":
					say "[UrikTalk_LibraryTransfer]";
					now DoneTalking is true;
				else if nam is "How he should address you":
					say "[UrikRenameMenu]";
				if DoneTalking is false: [looping around for more talk options]
					say "[UrikTalkMenu]";
				wait for any key;
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
	if Loyalty of Urik is 0:
		say "     The towering, muscular orc scrunches up his features, then gives a shrug. 'Meh, it's just like... if you got a gang, tribe or whatever, there's gotta be a boss, otherwise people tear each other apart. I see now that I fucked up with Toven and all that shit, and so Boghrim laid down the law. If you do wrong, you gotta be a man and bear the punishment.' Thinking back to how the scene that started all of this played out, you remember there being some resistance from Urik, despite what he says now. But then, the orc warrior did not start a defiant brawl against Boghrim either, despite having at least somewhat of a chance due to his own might. Interrupting your thoughts as he waves a large green hand through the air, indicating yourself, Urik adds, 'And you've at least shown that you're someone to be reckoned with, bringing in all those new sluts. I can respect and follow a person like that.'";
		say "     Hearing the orc's rationalization of his status as [']yours['], you can't help but wonder if this is the honest opinion of the original man and/or the orc warrior that he once was, or how much his viewpoint shifted after who knows how many face-fucks Boghrim gave him. It's really impossible to know, but you feel that the green-skinned man did tell the truth about being ready to obey. You specifically that is, not just any dominant partner like the far more submissive regular orc breeders would. Things might be different at times if his ingrained hunger for cum takes overhand, but overall, this seems to be what you can expect.";
		LineBreak;
		say "     [bold type]Knowing this about Urik, you think you can trust him to make his way to the library on his own, if you choose so.[roman type][line break]";
		now Loyalty of Urik is 1; [talked about his view on things]
	else if PlayerFriended of Urik is true:
		if Loyalty of Urik is 1:
			say "...";
		else if Loyalty of Urik is 2:
			say "...";
	else if PlayerControlled of Urik is true:
		say "...";

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
		say "     As you bring up Spike, Urik chuckles under his breath. 'Your little slut-puppy? What about him?' Looking at him with a raised eyebrow prompts the orc to roll his eyes and waves a large hand, then adds, 'I mean your 'companion'. Don't you worry, I won't just grab him and bend him over to show him his inner bitch. Wouldn't do to have a breeder pound your pet, yadda yadda.' With a shrug of his broad, muscular shoulders, Urik lets that part of the topic drop, moving on to saying, 'If you're serious about using the boy for something more than a bedwarmer, I'll have to train him a bit though. You don't wanna be embarrassed by a weak-ass puppy following you around, do you? What is he supposed to do? Yap at people to distract them?'";
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
			say "     Stepping up to the big orc, you take his jaw in your hand and keep his head in a firm grip as you look him into the eyes. Doing your best to project dominance, you then ask the orc who and what he is. After a little grumble, Urik replies, 'I'm an orc breeder. Your breeder, [UrikPlayerAddress]. But still, the - umnph!' The further words he wanted to say after his admission are cut short as you push two fingers into his mouth and tell him to suck on them, like a good little cumslut. He obeys immediately, with the usual built-in sexual submissiveness to authority figures that is typical of an orc breeder. Planting your other hand on his crotch and giving the orc's balls a tight squeeze, you tell him in no uncertain terms that he should keep his hands off Spike and not bother him again. When you let go of Urik eventually, he blows out his breath and finally says, 'I'll tell the little bitch that training's cancelled next time I see him. Would probably have been too weak in the end anyways.'";
			now Stamina of Spike is 100; [training stopped - and Urik won't be nice about giving the news ]
	else if Stamina of Spike is 2 or Stamina of Spike is 3: [Spike got a 'protein shake']
		say "     As you bring up Spike, Urik chuckles under his breath. 'Your little slut-puppy? What about him?' Looking at him with a raised eyebrow prompts the orc to roll his eyes and waves a large hand, then adds, 'I mean your 'companion'. Don't you worry, I won't just grab him and bend him over to show him his inner bitch. Wouldn't do to have a breeder pound your pet, yadda yadda.' With a shrug of his broad, muscular shoulders, Urik lets that part of the topic drop, moving on to saying, 'At least the boy's trying in our training sessions. He's still far too weak, maybe as strong as a half-grown orcling, but there's some determination in that puppy. I think given time, we can make something out of him!'";
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
		say "     As you bring up Spike, Urik chuckles under his breath. 'Your little slut-puppy? What about him?' Looking at him with a raised eyebrow prompts the orc to roll his eyes and waves a large hand, then adds, 'I mean your 'companion'. Don't you worry, I won't just grab him and bend him over to show him his inner bitch. Wouldn't do to have a breeder pound your pet, yadda yadda.' With a shrug of his broad, muscular shoulders, Urik lets that part of the topic drop, moving on to saying, 'At least the boy's trying in our training sessions. He's still far too weak, maybe as strong as a half-grown orcling, but there's some determination in that puppy. I think given time, we can make something out of him! You should see him chug down the protein shakes, they'll help a bunch too.'";
	else if Stamina of Spike is 50: [Spike won't accept any more drinks]
		say "     As you bring up Spike, Urik chuckles under his breath. 'Your little slut-puppy? What about him?' Looking at him with a raised eyebrow prompts the orc to roll his eyes and waves a large hand, then adds, 'I mean your 'companion'. Don't you worry, I won't just grab him and bend him over to show him his inner bitch. Wouldn't do to have a breeder pound your pet, yadda yadda.' With a shrug of his broad, muscular shoulders, Urik lets that part of the topic drop, moving on to saying, 'At least the boy's trying in our training sessions. He's still far too weak, maybe as strong as a half-grown orcling, but there's some determination in that puppy. I think given time, we can make something out of him!'";
		say "     Informing the orc that you've told Spike about the possibility of there being cum in his shakes, the orc looks at you somewhat sullenly. 'Aw, what did you do that for? He needs his things, err - nutrients! So what if I put half a load of my cum into it? What do you think makes orclings strong and grow so much right away once they're 'out of the pouch'?' As a reminder that his all-male species has a perculiar way of reproduction, the orc gives his own buttock a slap, drawing your attention to it. 'The squeamish little bitch won't take no shakes no more, I bet! I can keep training him, but without the support, that'll take ages! You really don't wanna have a puppy-boy that's worth something in a fight? Your call, I guess.'";
		now Stamina of Spike is 51;
	else if Stamina of Spike > 50 and Stamina of Spike < 100: [Urik won't offer any more shakes]
		say "     As you bring up Spike, Urik sighs. 'I'm still training your little slut-puppy, but the progress is really slow. Should have let me keep giving him shakes. They were good for him!' With an annoyed grunt, he waves off the topic, not wanting to say any more about it.";
	else if Stamina of Spike is 100: [training ended]
		say "     As you bring up Spike, Urik looks at you sullenly and grumbles. 'I won't do anything with your little slut-puppy, fine?! Leave me alone about him.'";

to say UrikTalk6: [how he transformed]
	say "     With a grin that shows his sharp tusks on his face as he recalls the day that he got transformed, Urik clears his throat and adjusts his bulge a little. 'Okay [UrikPlayerAddress], sure! As you might know, things were going to hell in a handbasket when this whole crazy shit started. I mean, one day things are normal, kinda slow. Bike's in the shop - don't think I'm still regretting that decision - and I'm out with some buds drinking, go home, sleep the buzz off. Next morning, I'm woken up by some asshole screaming and banging on my door. Literally, as I stumbled out of the bedroom and what did I see? My mailwoman, face pressed against the window of the door, with a big-boobed fucking gryphon shafting her from behind! Kind of a shocker, early in the morning, and I wondered if I was still drunk and not just hung over, I can tell you that! Then she looked at me and called my name, and I knew it was real. I turn away for a moment to grab the shotgun and load it, but by the time I get back, it's two dick-swinging bird-babes on my porch, one of them in she shreds of a mail uniform. Hot, but freaky, so I booked it out the back door quick after that.'";
	say "     Shrugging, Urik waves his hand in the air and adds, 'It was a big free-for-all in the streets, but critters did kinda avoid me since I was armed. Thought I'd make it to our watering hole, see if I could link up with some of the guys, get out of dodge. That plan went overboard quick when suddenly a frightened piggy peeled around the street corner in front of me at a dead run, to bounce right off me when we collided. I stumbled back a few steps, he went down on the ground. Oh, what a sight he was - pretty blue uniform shirt ripped, with the dude's pecs hanging out, and he had a wild expression on his face, calling out to help him.' The orc chuckles at that, miming himself holding a shotgun and an exaggeratedly frightened expression for the cop. 'What came after him a second later was a beast! More or less human, but big enough to have burst the clothes he had on, broad-shouldered and muscular, with protruding tusks and green skin!'";
	WaitLineBreak;
	say "     'I was halfway there to raise the gun and blast that motherfucker, humans holding together and all that shit, even if the runner was a dirty pig. And then, the greenskin grinned and laughed, saying, 'Don't recognize me, do you?!' Made me hesitate and really look at him, that - and you know who he was? My buddy Pete, with about three times the muscle that fat bastard had ever had before! The scared pig shouted for me to take him out, only to receive a bump on the head from Pete, who went on to tell me that being an orc is great. I was still doubtful for a while, but he knew shit, you know? Reminded me of the trip to Mexico we had the year before, and some shit no one else could have known. When I lowered the gun, he went ahead to casually rip the clothes of the stunned cop. Showed off his muscles and new body as he did, and a moment later rammed into him deep!' Pulling down his shorts to let a fully erect, huge orc cock free from its constraints, Urik wraps his fingers around the girth of his shaft, stroking up and down. 'It was a hot show, with that thick rod going into the little punk!'";
	say "     'When he was done seeding the police bitch and pulled out of the moaning slut, Pete was all, 'Wanna have a turn?' Course I said yes!' Slapping his girthy piece of man-meat into the open palm of his other hand, Urik grins at you and adds, 'Let me tell you, he was tight! Snug around my dick even after taking that orc beercan! I pounded the little bitch, hard and deep, churning up his cum-filled boipussy! And as I was doing so, I got to thinking 'Is he getting tighter?' But that wasn't it - my dick was growing, at the same time as my skin was going green! Man, I was so horny that I didn't even care! Just kept enjoying the snug hole around my prick, right until the point that I added some spunk to the bitch's chute! Then Pete went for him again, followed by another round for me!'";
	WaitLineBreak;
	say "     Swiping up a thick drop of pre from his cum-slit, Urik rubs it over the mushroom head of his thick orc cock, then proudly holds his shaft up. Clearing his throat, Urik continues, 'By the time we were done, we didn't have a piggy there anymore. Nah, the dude had become a proper little orc breeder! Pretty but muscular, with teeny tiny tusks.' With that said, the orc uses his finger to wipe off a droplet of pre-cum from his own dickhead and licks it off eagerly. 'Anyways, I felt as good as ever, and decided to just throw in with the orcs. Hah, going back to that cop station and joining the gangbangs around returning pigs was fun!' Bringing his tale to a conclusion, Urik focuses more on the slow stroke of his dick for a moment. Then he gives you a light poke with his elbow. 'Man, thinking back to it made me really horny! I could go for a bit of fun, [UrikPlayerAddress]!'";
	now lastfuck of Urik is turns + 10;

to say UrikTalk_Companion: [companion Urik]
	say "     As you offer Urik the chance to go out into the city with you, the orc livens up immediately, a grin instantly appearing on his face as he bellows, 'FUCK YEAH! Finally some action!' He flexes his arms in an impressive gun-show, then brings a balled-up fist into the palm of his other hand with a loud smack. 'Really hope you weren't kidding about that, [UrikPlayerAddress]! I'm ready to go, just say the word!' Smiling, you step closer to the orc, laying a hand on his arm and squeezing it in camaraderie. Reminding him that he's a powerful warrior that you want by your side makes the orc stand tall and proud. You've definitely earned a lot of respect from him with this.";
	say "     (Urik the supersized orc breeder is now a possible companion! You can make him your active companion by typing [bold type][link]companion Urik[end link][roman type] or [bold type][link]companion orc supersized breeder[end link][roman type] and initiate sex with him while active by typing [bold type][link]fuck Urik[end link][roman type]. You can see all the companions you have with the [bold type][link]companion[end link][roman type] command. Companions will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a companion? Use [bold type][link]companion dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";
	now orc supersized breeder is tamed;

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
		say "     'Starting your own tribe? Yeah, that's awesome! Glad to be there for it, chief!' Urik replies, saluting with a fist held against his chest.";
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
	say "     The orc's eyes widen a little as you demand that he call you master, but he swallows his pride after a second or two of hesitation and bows his head. 'Yes, Master.'";
	now Intelligence of Urik is 8;

to say UrikPlayerNameMistress:
	say "     The orc's eyes widen a little as you demand that he call you mistress, but he swallows his pride after a second or two of hesitation and bows his head. 'Yes, Mistress.' [if player is not female]There is a bit of a curious expression on his face at this choice of title even though you're not really female right now, but he suppresses the urge to ask about it.[end if]";
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

Section 4 - Fucking

Instead of fucking Urik:
	say "[UrikSexMenu]";

to say UrikSexMenu:
	if (lastfuck of Urik - turns < 5):
		say "     Urik says, 'I need a break for a moment. An orc isn't a fuck machine, [UrikPlayerAddress]!'";
	else if Libido of Urik is 0: [first time the player has sex with Urik]
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
				now Loyalty of Urik is -1; [cuts out any of the library content]
			else:
				say "     Shaking your head a little to clear the lustful thoughts for a second, you decide not to take Urik for now.";
		else: [first time in library]
			say "     This being your first time with the orc, you've got a choice to make. Yes, you won him as a prize and you can do what you will with him, but Urik is - almost - a virgin, with only Toven having fucked him before as part of Boghrim's punishment for the demoted warrior. So, you better choose well on how you want to start things out with the big, green male you've now brought home with you.";
			say "     [bold type]How do you plan to fuck Urik?[roman type][line break]";
			LineBreak;
			say "     [link](1)[as]1[end link] - Get him on his back, missionary style, and look him in the eyes as you make him yours.";
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
	say "...";
	NPCSexAftermath Urik receives "AssFuck" from Player;
	if Player consents:
		say "...";
		CreatureSexAftermath "Urik" receives "OralCock" from "Orc Warrior";
		CreatureSexAftermath "Urik" receives "OralCock" from "Orc Warrior";
		CreatureSexAftermath "Urik" receives "OralCock" from "Orc Warrior";
		add "Slut" to Traits of Urik; [free fuckhole]
	else:
		say "...";
		CreatureSexAftermath "Urik" receives "AssFuck" from "Orc Warrior";
		add "Private_Breeder" to Traits of Urik; [only the player may use his ass]

to say UrikFirstFuck_Library_Missionary:
	say "...";
	NPCSexAftermath Urik receives "AssFuck" from Player;

to say UrikFirstFuck_Library_Doggystyle:
	say "...";
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
		say "     Leaning in over the orc, you put your hand on his firm, muscular pec and squeeze Urik's muscles, then slide your fingers under the leather harness he wears on his chest. The green brute allows himself to be pulled upright with a firm tug, grinning broadly around his sharp tusks as you move his head towards your crotch. 'Knew you'd want some action [UrikPlayerAddress],' the large orc grunts in obvious anticipation. Pushing the front of your pants down impatiently, you free the rapidly hardening length of your manhood and hold it out for the orc slave. Urik grunts in a lusty tone as he slides his lips over your shaft, taking it into his mouth all the way without stopping even once. You really should thank Boghrim sometime - the time Urik spent as his cum-slut really did wonders for your muscular slut's oral skills.";
		say "     You look down upon Urik as he eagerly bobs his head over your dick, working his tongue along your hard length while giving you an expert blow-job. Quite a fun situation, with this mighty warrior now being your obedient fuck-toy. You almost want to take hold of his head with both hands as you face-fuck him as hard as you can... but no, you have other plans right now. You pull your manhood out of his mouth, chuckling as he tries to follow it by stretching his neck, then slide your fingers between the strands of his shoulder-long black hair. Grabbing the orc's hair, you pull his head back somewhat roughly and look down into his face, then order him to turn around and present his ass to you.";
		WaitLineBreak;
		say "     'Fuck yeah!' the big orc bellows eagerly as he stands up from the sofa. The mesh pouch at the front of his skin-tight stripper underwear bulges out quite a bit from his hard cock. Yeah - this orc clearly loves being fucked now! Turning around, he kneels on the sofa, gripping the backrest to brace himself and raise his ass for you to take. You can't help but appreciate how perfect his outfit is for this - ass-free for easy access. With a grin, you slap the rounded cheeks of the orc's bare butt, leaving a hand-print until it fades away some seconds later. Urik replies only with a happy groan... he likes it rough!";
		say "     Quickly getting rid of your own clothes and gear, you step up behind the powerful orc and smack your shaft into the crack between his buttocks. Rubbing up against him, you revel in the power you have over this green-skinned man - and the sensations of his warm skin against yours of course. Willing to give your so eager slave a treat, you lean forward and reach around him, hands stroking over the tented mesh bulge of his briefs. Tugging it down to free Urik's thick pole, you stroke up and down along his length, milking his copious pre-cum into your other hand - then lube your own cock with the slick, somewhat sticky goop.";
		WaitLineBreak;
		say "     Time to fuck your orcish butt-slut! Lining your cock up with his pucker, you brush over it lightly and then settle the tip of your erection against the small dip it forms, not yet pushing in. Then you lean forward, grabbing hold of the studded straps of his leather harness - and with a satisfied shout, you ram yourself home! Balls deep in one thrust! The super-sized orc breeder feels amazing around your prick - warm and tight, but with his inner muscles still spreading readily in answer to your push into him. 'Pound my ass [UrikPlayerAddress],' Urik gasps out in a breathless bellow and rocks his body back against your hips.";
		say "     More than ready to comply with your slave's request, you slide yourself back out until just the tip of your meat remains inside him. The way his back door gets pulled outwards a little by your receding shaft draws a chuckle from you - it's almost as if the orc's hole doesn't want to let go of your cock. But then, it doesn't have to. A heartbeat later, you're back to thrusting hard into your orc slut, making your balls slap against his own as you drive yourself home and proceed to pound into him again and again and again.";
		WaitLineBreak;
		say "     The library is filled by the sounds of your coupling - moans and grunts, as well as Urik's bellows to take him harder. It is a hell of a lot of fun to shaft him deep... and definitively something you wouldn't have expected to be doing before all of this chaos started. Openly fucking someone in a public library - and that someone being a large and muscular orc, who is rock hard from submitting to you. This nanite apocalypse does have some upsides, that's for sure! With your dick buried in Urik's back passage, feeling his muscles flex around your length, you revel in the sensations and for a little while and forget about all the troubles out in the city.";
		say "     After a little while longer of hard fucking, your orc slave starts to pant and moan even louder than before and you can feel his inner muscles clench a little tighter. He's close! With a broad grin on your face, you stop your thrusts suddenly, then pull firmly on the leather harness to keep him tightly pressed against your crotch. 'GhnnngH!' he groans breathlessly, 'I need to cum, now!' You give him a little thrust of your hips, sliding in and out for a second, then pause once more to tease the needy slut. 'Fuuuuckkk! Please [UrikPlayerAddress]! Fuck the cum out of me, I need this!' Urik finally begs, prompting you to start pounding him again, harder than ever before.";
		WaitLineBreak;
		say "     After another moment or two of thrusting deep into Urik and rubbing his prostate with your cock, he lets out a satisfied bellow, stiffening under (and around) you. You can feel his inner muscles twitch and flex in a rhythmic pattern and quickly lean forward on his broad back, arms sliding around Urik to take hold of his cock. The mighty pole of orcish man-meat is warm and firm, pulsing out heavy blasts of orc cum to splatter the sofa under your slave. While the orc's balls send forth their bounty of creamy cum to soak into the fabric underneath, your own erection is being almost milked by the green-skinned slut's inner muscles.";
		say "     Just moments after Urik himself, you reach your own orgasm while balls-deep inside him and start to fill your slave with cum. Throbbing deep inside him, your cock paints Urik's back passage white with a thick and creamy load, renewing your claim on the big brute's ass as your property. You just stay like that for a while - cock buried inside the orc and resting on his unwavering and firm back. Man, the time since you came up here to fuck him sure was a blast! Eventually, you start going soft inside him and with a sigh, withdraw yourself from Urik's well-bred asshole.";
		WaitLineBreak;
		say "     It doesn't look like the orc is willing to part with even the smallest amount of your seed, as his hole stays open and gaping for only a second or two before the ring muscle clenches tight again. The recuperative powers of orc physiology really are quite amazing, as he heals within moments - even if it is only an over-stretched pucker and not really a wound. Letting out a very satisfied groan, the orc half turns around to slump backwards onto the sofa, stretching out on its length without really caring about the section of it that is still damp with his cum.";
		say "     'That was a blast!' the orc tells you with a grin and shows a thumbs-up. 'I'm looking forward to the next time you wanna relieve some pressure.' Looking down over himself, the orc sees a drop of cum clinging to his dickhead and quickly wipes it off with a finger he then brings up to his mouth to lick it off. Smacking his lips in satisfaction, Urik then takes a deep breath and says, 'Damn - it's still so hard to believe that getting pounded is even better than shafting a guy...' You leave him to ponder his new reality as an orc breeder and get dressed.";
	else: [Urik in the library]
		if PlayerFriended of Urik is false and PlayerControlled of Urik is false: [pre-slut/bro choice scene]
			say "     Pushing down on the orc's shoulders, you make him kneel at your feet, then pull the front of your pants down impatiently. The rapidly hardening length of your manhood swings right in front of Urik's face, and a second later, you take hold of it and brush it over his lips. Urik grunts in a lusty tone as he slides his lips over your shaft, taking it into his mouth all the way without stopping even once. You really should thank Boghrim sometime - the time Urik spent as his cum-slut really did wonders for your muscular slut's oral skills. You look down upon Urik as he eagerly bobs his head over your dick, working his tongue along your hard length while giving you an expert blow-job.";
			say "     Quite a fun situation, with this mighty warrior now being your obedient fuck-toy. And numerous other orcs think so too, laughing and stroking at the show. You almost want to take hold of Urik's head with both hands as you face-fuck him as hard as you can... but no, you have other plans right now. You pull your manhood out of his mouth, chuckling as he tries to follow it by stretching his neck, then slide your fingers between the strands of his shoulder-long black hair. Grabbing the orc's hair, you pull his head back somewhat roughly and look down into his face, then order him to turn around and present his ass to you.";
			WaitLineBreak;
			say "     'Fuck yeah!' the big orc bellows eagerly as he stands up from the ground. The mesh pouch at the front of his skin-tight stripper underwear bulges out quite a bit from his hard cock. Yeah - this orc clearly loves being fucked now! Turning around, he takes a few steps until right in front of one of the heavily built long tables in here, gripping its edge to brace himself and raise his ass for you to take. You can't help but appreciate how perfect his outfit is for this - ass-free for easy access. With a grin, you slap the rounded cheeks of the orc's bare butt, leaving a hand-print until it fades away some seconds later. Urik replies only with a happy groan... he likes it rough!";
			say "     Quickly getting rid of your own clothes and gear, you step up behind the powerful orc and smack your shaft into the crack between his buttocks. Rubbing up against him, you revel in the power you have over this green-skinned man - and the sensations of his warm skin against yours of course. Willing to give your so eager slave a treat, you lean forward and reach around him, hands stroking over the tented mesh bulge of his briefs. Tugging it down to free Urik's thick pole, you stroke up and down along his length, milking his copious pre-cum into your other hand - then lube your own cock with the slick, somewhat sticky goop.";
			WaitLineBreak;
			say "     Time to fuck your orcish butt-slut! Lining your cock up with his pucker, you brush over it lightly and then settle the tip of your erection against the small dip it forms, not yet pushing in. Then you lean forward, grabbing hold of the studded straps of his leather harness - and with a satisfied shout, you ram yourself home! Balls deep in one thrust! The super-sized orc breeder feels amazing around your prick - warm and tight, but with his inner muscles still spreading readily in answer to your push into him. 'Pound my ass [UrikPlayerAddress],' Urik gasps out in a breathless bellow and rocks his body back against your hips.";
			say "     More than ready to comply with your slave's request, you slide yourself back out until just the tip of your meat remains inside him. The way his back door gets pulled outwards a little by your receding shaft draws a chuckle from you - it's almost as if the orc's hole doesn't want to let go of your cock. But then, it doesn't have to. A heartbeat later, you're back to thrusting hard into your orc slut, making your balls slap against his own as you drive yourself home and proceed to pound into him again and again and again.";
			WaitLineBreak;
			say "     The main hall of the lair is filled by the sounds of your coupling - moans and grunts, as well as Urik's bellows to take him harder. It is a hell of a lot of fun to shaft him deep... and definitively something you wouldn't have expected to be doing before all of this chaos started. Openly fucking someone in the middle of a (former) police station - and that someone being a large and muscular orc, who is rock hard from submitting to you. This nanite apocalypse does have some upsides, that's for sure! With your dick buried in Urik's back passage, feeling his muscles flex around your length, you revel in the sensations and for a little while forget about all the troubles out in the city.";
			say "     After a little while longer of hard fucking, your orc slave starts to pant and moan even louder than before and you can feel his inner muscles clench a little tighter. He's close! With a broad grin on your face, you stop your thrusts suddenly, then pull firmly on the leather harness to keep him tightly pressed against your crotch. 'GhnnngH!' he groans breathlessly, 'I need to cum, now!' You give him a little thrust of your hips, sliding in and out for a second, then pause once more to tease the needy slut. 'Fuuuuckkk! Please [UrikPlayerAddress]! Fuck the cum out of me, I need this!' Urik finally begs, prompting you to start pounding him again, harder than ever before.";
			WaitLineBreak;
			say "     After another moment or two of thrusting deep into Urik and rubbing his prostate with your cock, he lets out a satisfied bellow, stiffening under (and around) you. You can feel his inner muscles twitch and flex in a rhythmic pattern and quickly lean forward on his broad back, arms sliding around Urik to take hold of his cock. The mighty pole of orcish man-meat is warm and firm, pulsing out heavy blasts of orc cum to the ground and table under your slave. Or at least the first spurt does, as another orc breeder from the communal slave pool quickly slides under Urik on his knees to wrap his lips around his dickhead. While the orc's balls send forth their bounty of creamy cum to be eagerly devoured by the green-skinned man, your own erection is being almost milked by the green-skinned slut's inner muscles.";
			say "     Just moments after Urik himself, you reach your own orgasm while balls-deep inside him and start to fill your slave with cum. Throbbing deep inside him, your cock paints Urik's back passage white with a thick and creamy load, renewing your claim on the big brute's ass as your property. You just stay like that for a while - cock buried inside the orc and resting on his unwavering and firm back. Man, the time since you came up here to fuck him sure was a blast! Eventually, you start going soft inside him and with a sigh, withdraw yourself from Urik's well-bred asshole.";
			WaitLineBreak;
			say "     It doesn't look like the orc is willing to part with even the smallest amount of your seed, as his hole stays open and gaping for only a second or two before the ring muscle clenches tight again. The recuperative powers of orc physiology really are quite amazing, as he heals within moments - even if it is only an over-stretched pucker and not really a wound. Letting out a very satisfied groan, the orc half turns around to slump backwards onto one of the long benches flanking the table, stretching out on its length without really caring about the section of it that is still wet with his own cum.";
			say "     'That was a blast!' the orc tells you with a grin and shows a thumbs-up. 'I'm looking forward to the next time you wanna relieve some pressure.' Looking down over himself, the orc sees a drop of cum clinging to his dickhead and quickly wipes it off with a finger he then brings up to his mouth to lick it off. Smacking his lips in satisfaction, Urik then takes a deep breath and says, 'Damn - it's still so hard to believe that getting pounded is even better than shafting a guy...' You leave him to ponder his new reality as an orc breeder and get dressed.";
		else if PlayerControlled of Urik is true: [slut scene]
			say "     ";
		else if PlayerFriended of Urik is true: [bro scene]
			say "     ";
	NPCSexAftermath Urik receives "AssFuck" from Player;
	now Stamina of Urik is turns; [last time he got some cum]

Section 5 - Events

instead of navigating Grey Abbey Library while (Urik is in Sitting Area and Loyalty of Urik is 1):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Urik Arrival[line break]";
	say "     As you arrive at the library, you immediately notice Urik, who's sitting on the edge of the front desk, casually flicking through an old magazine for motorcycle enthusiasts he must have found somewhere in the stacks. 'Hey boss,' he says upon noticing you, standing up and taking a few steps forward. 'Found the place alright, following your description. Claimed a couch on the upper floor, in that sitting area, if that's alright by you.' He nods towards the stairs leading up and you tell him it's fine. 'Gotta say, I was surprised just how different this area is than back at the lair. I mean, just walking a number of miles to get here, I saw critters that I had never seen before. Oh yeah, and some little hyena sluts on souped-up bikes trying to act like dudes, and as if they were the big cheese around here. There were three of them together, and still they didn't dare to try me, hah! Man, back in my day we'd have curb-stomped such a sorry excuse for a gang and sent [']em running back to mommy with a baggie of their teeth.'";
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
	say "     Walking along the upper floor of the library, you hear some noises coming from up ahead, slurping sounds as well as moans. Curious about what exactly is going on, you glance around the corner of a bookshelf first, allowing you to see your big orc warrior/breeder Urik lying stretched-out on a sofa in the back of the sitting area. He's completely naked, fingers wrapped around the towering pole of his manhood as he strokes it furiously. Scant moments after you lay eyes on him, the orc lets out a loud groan and humps his hips up into the air while his cock erupts like a geyser and showers his broad chest in thick, creamy streaks of cum. Even while still stroking himself, Urik immediately begins to scoop up his own load, hungrily sucking it off his fingers. Feasting your eyes on the large, green-skinned hunk, you decide to walk up to him openly, grinning as he soon notices your approach and pulls his hand away from his face.";
	say "     'Hey [UrikPlayerAddress], I was just...' he says, sitting up and trying to hide what he was doing. Yet even as he does so, the orc seems painfully aware of how he looks right now, naked and covered in cum, and he can't seem to find anything to say to explain that away. Finally, he seems to shrink a little in shame, bursting out with, 'Fuck, you saw it all, didn't you? Me gobbling down my own spunk like a weak little breeder! I couldn't resist the craving anymore! Man, once you've got that taste on your mind, it doesn't let you go.' His eyes glaze over as he seems to relive a recent memory for a moment, and he adds, 'Especially after sucking down I don't know how many loads when Boghrim was face-fucking me.' Shaking his head and giving in to his inner urges, the orc strokes a hand over the bulging pecs of his chest, wiping up more cum. It draws some strings between his fingers as he licks them clean one by one.";
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
			say "     Demonstratively adjusting yourself at the crotch, you grin down at the orc and tell him that you'll properly fulfill his needs, he shouldn't worry about that. He meets your eyes as you say this, relief visible in his eyes as the admonishment about his 'weakness' doesn't materialize that he was expecting, with you instead being understanding and willing to take care of him. The orc shows a hopeful smile on his face and reaches out to touch your leg, giving it a friendly squeeze. 'Thank you, [UrikPlayerAddress]!' he says with conviction, then wipes up another little dollop of cum he missed before, sucking it off his finger without shame now. 'I hate being a burden and... needy, though. So if you gave me some bottles too, that'd free you up to not worry about myself for some time, alright?'";
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
		say "     Stepping up and running a hand over the bulging pecs and bicep that your orc warrior/breeder sports, you tell Urik that this is his new home. Using terms he's familiar with, you stress that as part of your [']tribe['], he should live here with you. Such a powerful warrior as him will be very useful for defending the place. 'Yeah!' the orc replies, showing his sharp tusks in a broad grin. 'Knew you'd be an awesome [UrikPlayerAddress]! Imagine a pitiful looter busting through the door in here and running into me as his surprise, hah!' The orcs eyes are filled with hope - and lust - as he meets your gaze. At the same time, he has to adjust his cock inside those tight but stretchy pants Boghrim put him in. Holding out one huge green fist for a bump with you, Urik then collects his book and struts to the stairway to the second library floor.";
		now PlayerFriended of Urik is true; [let him have some pride, enables his dominant events with others in the library]
	if calcnumber is 2:
		LineBreak;
		say "     Looking him in the eye, you tell Urik that this is his new home and that you wanted to get him out of the orc lair to avoid any chance of the other orcs abusing him. He blusters a little, puffing up his chest and making a fist. 'As if those pussies would have dared!' Despite his bravado, you know that he was significantly affected by being fucked and the gallons of orc cum that Boghrim face-fucked into Urik, so you're not so sure about if his will would have held up or he might have succumbed to cravings for cum in the end. Maybe Urik thinks of the same, because a moment later he adds, 'But thanks for the thought, [UrikPlayerAddress]. It'll be nice to have a bit of room to stretch without bumping into other guys all the time, or stumble over passed-out drunk orcs.' Holding out one huge green fist for a bump with you, Urik then collects his book and struts to the stairway to the second library floor.";
		now PlayerFriended of Urik is true; [let him have some pride, enables his dominant events with others in the library]
	else if calcnumber is 3:
		LineBreak;
		say "     Walking up to the orc, you brush your hand over his muscled chest, then up to his bearded face, brushing your fingertip over his lips. With a lusty grin on your face, you tell him that it's best to have your eye candy close, for the time you want to make use of it. Urik's eyes widen, and after a second or two he replies, 'Oh... Alright then,' sounding a little deflated. 'I'll be waiting upstairs for you.' With that said, he goes to grab his magazine and walks up the stairway to the second library floor. Shrugging as you watch him leave, you tell yourself that he'll change his tune before long. All of the breeder sluts in the orc lair were happy little cocksleeves too after all.";
		add "Slut" to Traits of Urik; [everything goes]
		now PlayerControlled of Urik is true; [squashed his hopes, told him he's just a cumslut]
	else if calcnumber is 4:
		LineBreak;
		say "     Walking up to the orc, you brush your hand over his muscled chest, then circle around him and give Urik's bare buttocks a satisfying slap, watching them wobble a little. Fingers running up and down his crack, you brush over his pucker, still looking virginal after only the one fuck from Toven before. You push your fingertip inside just a little bit, drawing a pant of helpless lust from the orc's lips. With a lusty grin on your face, you tell him that you want your supersized breeder close, to make use of his womb often. Urik's eyes widen, and after a second or two he replies, 'Mmh. So, you'll make me what? A full on orcling factory?' the orc replies, sounding somewhat apprehensive. 'I'll be waiting upstairs for you.' With that said, he goes to grab his magazine and walks up the stairway to the second library floor. Shrugging as you watch him leave, you tell yourself that he'll change his tune before long. All of the breeder sluts in the orc lair were happy little cocksleeves too after all.";
		add "Private_Breeder" to Traits of Urik; [just the player gets to use his ass]
		now PlayerControlled of Urik is true; [squashed his hopes, told him he's just a cumslut]


[
instead of navigating Grey Abbey Library while (Urik is in Sitting Area and PlayerFriended of Urik is true and Loyalty of Urik is 6 and a random chance of 1 in 5 succeeds): [Urik catches a hawkman]
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
	say "     While you investigate the intruder's bag, Urik carries his captive over to a nearby sofa, laying him onto it on his back. Now that he's got his hands free, the orc investigates the anthro bird closer, running his fingers over soft feathers, the curved beak, then the scaly hands and feet with their sharp claws. Finally, he parts the tail-feathers, chuckling a little as he spots the pink opening hidden underneath them. 'So, boss - he's fair game, right? He tried to break in, and I caught him myself.' As he says this, the orc adjusts the growing bulge in his tight, stretchy pants. It's clear what he's asking.";
	say "     [bold type]What is your reply?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Let him fuck the hawkman.";
	say "     [link](2)[as]2[end link] - Step up and jerk the orc off - right onto the hawkman.";
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
		say "     ...";
		[TODO: Option for the player to join in]
		now Charisma of Urik is 2; [fucked the bird]
		now Loyalty of Urik is 7; [hawkman dealt with, Urik's happy about the outcome]
	else if calcnumber is 2:
		LineBreak;
		say "     ...";
		now Charisma of Urik is 1; [jerked off onto the bird]
		now Loyalty of Urik is 7; [hawkman dealt with, Urik's happy about the outcome]
	else if calcnumber is 3:
		LineBreak;
		say "     ...";
		now Charisma of Urik is 99; [let him go]
		now Loyalty of Urik is 80; [hawkman dealt with, grumpy Urik]
]

instead of navigating Grey Abbey Library while (Urik is in Sitting Area and PlayerFriended of Urik is true and Candy is in Bunker and CandyUrikInteraction < 1 and (lastfuck of Urik - turns > 10)):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Urik grabs Candy - CandyUrikInteraction: [CandyUrikInteraction], lastCandyUrikInteraction: [lastCandyUrikInteraction], current turn: [turns][line break]";
	say "     As you enter the library, you spot Candy lying stretched-out on his belly, occupying one of the sofas further back in the room. His upper body raised on the girly raccoon's elbows, he is intently reading a book - and at the same time has his lower legs raised, slowly rubbing them against one another. The skirt of his candy striper uniform has been pulled up at the back, revealing his pink lace-trimmed panties. Knowing the eager boy-slut, you don't believe for a second that his pose is anything but intentional. Apparently it had the intended effect too - as your orc slave Urik is striding up towards Candy in a purposeful manner, showing a very respectable bulge in his stretchy stripper-pants.";
	say "     Before you can do or say anything about it, Urik simply grabs Candy off the sofa and throws him over his shoulder, making the raccoon squeal in surprise. Seems he didn't expect anyone to just man-handle him. Meanwhile, Urik gives a content grunt as he cups Candy's ass with a large hand, squeezing his buttocks testingly. Then the orc hooks two fingers under the panties on the pink raccoon, ripping them away effortlessly and dropping the shredded fabric on the ground. This leads Candy to give Urik's back a light slap as he complains, 'Hey! Hon, I like the hands-on approach but you got to leave the outfit intact. Do you know how hard it is to - ooooohhhhhHHHHH!'";
	WaitLineBreak;
	say "     Having just pushed a spit-covered finger past Candy's pucker to try out the gay raccoon's fuck-hole, Urik thrusts his digit in and out rapidly a few times, making Candy writhe in his position over the orc's shoulder. Despite how much the moaning raccoon fidgets at the merciless stimulation, Urik holds him firmly with his other arm, making sure he doesn't fall off. Eventually, Urik relents, pulling out of Candy's hole again and slapping his captive's ass moderately hard. 'You'll do, breeder slut. And if you don't want that stupid girly shit ripped off you, don't wear it when flaunting your ass!' Panting for several more seconds after Urik stops finger-fucking him, Candy gasps out, 'Umm... okay. Whatever you say big guy.'";
	say "     Looks like Candy bit off a bit more than he expected with this orc, getting a taste of the green brute's dominance now. Still, it looks like he's enjoying the treatment nonetheless and just has to adjust his mannerisms to this new demanding fuck-buddy. 'That's better,' Urik replies in a gruff tone, 'You'll make a proper breeder after some hard pounding, I'm sure! Let's see if I can't fuck you green!' With that said, the orc turns around and starts walking towards the stairs to the upper floor, no doubt intending to introduce his captive to a thick cock on 'his' sofa. Coming up close to you, the orc gives a respectful nod to his boss as he passes.";
	LineBreak;
	say "     [bold type]Do you let the orc carry Candy off and fuck him?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure. The furry boy-slut is grinning at you from his position over Urik's shoulder!";
	say "     ([link]N[as]n[end link]) - Nope. Urik should get used to not being a free orc warrior anymore. You decide where and if he sticks his dick anywhere now!";
	if Player consents:
		LineBreak;
		say "     [bold type]Do you want to go after them and watch?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yeah, looks like a good time.";
		say "     ([link]N[as]n[end link]) - Nah, not right now.";
		if Player consents:
			LineBreak;
			project the figure of Urik_naked_icon;
			say "     Following Urik as he walks up the stairs, you face Candy on the way, who keeps smiling happily and making kissy faces at you. Soon, the three of you arrive at Urik's camp, with the orc kicking a few strewn-about possessions of his aside to walk up to the comfy sofa he claimed as his resting place. He pulls Candy off his shoulder and drops him on the cushions, then almost rips off his own loincloth, revealing the thick shaft of his orcish manhood. 'Oh wow, you really are a big boy all over,' Candy comments gleefully and sits up, reaching out to touch Urik's erection. The raccoon strokes it with both hands, prompting a satisfied grunt from Urik at being jerked off. Soon, a glistening drop of pre-cum forms at the tip of the orc's shaft.";
			say "     'Taste it, slut!' the green-skinned brute groans and puts a hand on Candy's furred head, pushing him closer. The boy-toy obeys without hesitation, sticking his tongue out to lick over Urik's cum-slit. His eyes go wide as he tastes the aphrodisiac-laden pre his dominant partner produces. 'Mmmmhh!' Candy groans in pleasure, his lips immediately enveloping the orc's dickhead and sucking on it some more while he milks the big man's cock. 'That's it little breeder! Amazing stuff, isn't it?!' Urik grunts in a mixture of lust and amusement, shoving Candy's further down on his girthy shaft. He face-fucks the raccoon with little restraint, managing to force quite a bit of his length down the girly-boy's throat as he uses Candy like a living fleshlight.";
			WaitLineBreak;
			say "     Urik's lustful grunts build in volume and urgency as the orc revels in dominating the smaller guy, up to a point when he suddenly gives a deep grunt and wrenches Candy's head back by his hair, pulling him off his erection. The orc's other hand wraps around the base of his cock and the balls, squeezing tightly as he tries to control his urge to cum - and succeeds. Urik's cock throbs visibly and there are a few spurts of fluid that cover Candy's stretched-out tongue... but it is clear pre, not actual cum. 'Got a talented mouth, slut! That swirl of your tongue at the end there almost pushed me over the edge,' Urik grunts in appreciation, looking down at the raccoon's open mouth and eager face as he catches another spurt.";
			say "     In that moment, the orc's expression wavers a little - losing some of his dominant grin and taking on an undertone of hunger and need. After all, he has been trained as a cum-slut by Boghrim himself... and now he acts on the urges that instilled in him. Strong hands slide under Candy's armpits and pick the anthro furry up in a sudden wrench, bringing his face to the same level as Urik's own. And just like that, the orc starts to make out with his partner, their tongues wrestling with one another as both strive to swallow as much of his tasty pre as they can. The antics of the two of them are quite fun to watch - a big green brute holding a girly-boy raccoon to his chest, both of them sporting erections. Candy's dick creates an especially nice image, as it pokes out under the rim of his short pink skirt.";
			WaitLineBreak;
			say "     Eventually, the cum-sluts seem to have used up all the orc pre, as Urik pulls back from snogging with Candy and looks the smaller guy in the eye. 'Time to fuck!' he announces gleefully and the raccoon gives a needy moan in reply. Looks like he's got a low resistance to the effects of Urik's pre... or just swallowed more while he was being face-fucked. No matter which, Candy now acts like a bitch in heat, churring while having his arms wrapped around the large male and rubbing up against his muscular chest. Meanwhile, Urik takes hold of his hard cock and rubs it between Candy's buns, then pushes the candy striper down on his erection. With a satisfied grunt (and a breathless gasp from Candy), the orc slides into his smaller partner, stretching his chute wide with the girth of his manhood.";
			say "     Wound up as the two of them are, there is no hesitation, no slow 'getting used to' phase for their fucking - Candy grinds his ass down on Urik's cock before the orc even starts to thrust. The orc isn't dainty with his cock either, hammering Candy down on it till his balls slap the candy-striper's ass with a satisfying thud, then again and again in a rapid tempo. Oblivious to everything around them, the two men fuck with gleeful abandon, filling the library with moans, grunts and gasps in ever-increasing urgency. Before long, their breathless mating rises to a shouted climax, with Urik forcing his cock all the way into Candy's stretched hole and pumping blast after heavy blast of cum into him. At the same time, the lust-drunk raccoon comes too, splattering the rock-hard abs on Urik with his own load.";
			WaitLineBreak;
			say "     For a little while, Urik stands still and just holds on to the limp raccoon in his arms, not moving a muscle - other than the ones in his crotch, as his balls keep twitching with another and another spurt of cum being delivered. 'You're one fine breeder to get off in,' he grunts in satisfaction as his orgasm slowly peters out. His partner does little but moan in a pleasantly blissed-out way in response - clearly riding the high that actual orc cum delivers in much greater potency than just Urik's pre-cum. And apparently, the big orc wants a slice of that too. The next thing that Urik does is sit down on the sofa, followed by tugging his fuck-toy off his half-hard erection and spinning Candy bodily around.";
			say "     Holding the freshly-bred raccoon upside-down now, Urik puts his face between the furry globes of Candy's buttocks, pushing his tongue against the gay man's cum-slick pucker and eating him out. Hungrily slurping cum from his sex toy, Urik joins Candy in blissful delirium, with the two of them writhing against each other while riding their high. As most of the action seems to be over by now, you leave them at it and return to other matters, walking down the stairs to the library ground floor.";
		else:
			LineBreak;
			say "     Urik vanishes upstairs with Candy and before long, you can hear ecstatic moaning coming from up there, combined with the heavy slaps of a certain orc's full balls against Candy's ass. Sounds like the girly-boy is having the time of his life!";
		now CandyUrikInteraction is 1; [initial scene done]
		NPCSexAftermath Candy receives "AssFuck" from Urik;
	else:
		LineBreak;
		say "     Stopping the orc cold with a forceful command, you stand before him with crossed arms as the orc turns around and looks at you sullenly. 'Aw, come on!' he growls out between his tusks, pointing at Candy. 'The slut was just asking for it, and you weren't using him, so I -' Urik falls silent as you wave him off, and command that he put the raccoon down. Reluctantly, he obeys, setting the candy striper down on his slender paws. You nod at the show of submission and step up to your orc slave, sliding a hand under his loincloth to cup his heavy balls and feel the more than half-hard cock he calls his own. With a reminder that he, his dick and the bounty of his balls is yours, you then send the orc back upstairs - with the express order that he may not fuck Candy without your permission.";
		say "     After Urik stomps up the stairs without another word, you turn around to see Candy standing before you, arms crossed over his slender chest. 'Way to kill the mood,' he complains, throwing a look filled with longing after the orc. With that said, the pink raccoon turns on his heel and stalks off too.";
		now CandyUrikInteraction is 100; [further interaction forbidden]


Section 6 - Endings




Urik ends here.
