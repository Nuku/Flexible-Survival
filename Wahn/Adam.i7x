Version 1 of Adam by Wahn begins here.
[Version 1 - Put into its own file]

[ HP of Adam - Camp Bravo Tracking                          ]
[   0: never been to the camp                               ]
[   2: intro event to Camp Bravo done                       ]
[   3: player got access to Camp Bravo                      ]
[   4: female breeding allowed                              ]
[   5: Adam was born                                        ]

[ Energy of Adam - Personality                              ]
[   0: player didn't talk to him about himself              ]
[   1: player talked to him about himself                   ]
[   2: talked to him about how he felt in Camp Bravo        ]
[   10: talked about future. Supported freedom of choice    ]
[   20: talked about future. Neutral response               ]
[   30: talked about future. Told to stay a soldier         ]

[ Thirst of Adam - Memories]
[   0: player didn't ask about his parents                  ]
[   1: player learned of his 'odd memories'                 ]
[   2: Tiny Tim first memory                                ]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - Events
[***********************************************************]
[***********************************************************]
[***********************************************************]

[...]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
Adam	"Adam"

Adam is a man.
ScaleValue of Adam is 3. [human sized]
Cock Count of Adam is 1.
Cock Length of Adam is 10.
Ball Size of Adam is 8.
Ball Count of Adam is 2.
Cunt Count of Adam is 0.
Cunt Length of Adam is 0.
Cunt Tightness of Adam is 0.
Nipple Count of Adam is 2. [2 nipples]
Breast Size of Adam is 0.
TwistedCapacity of Adam is false.
Sterile of Adam is false.
[Basic Interaction states as of game start]
PlayerMet of Adam is false.
PlayerRomanced of Adam is false.
PlayerFriended of Adam is false.
PlayerControlled of Adam is false.
PlayerFucked of Adam is false.
OralVirgin of Adam is true.
Virgin of Adam is true.
AnalVirgin of Adam is true.
PenileVirgin of Adam is true.
SexuallyExperienced of Adam is false.
MainInfection of Adam is "Minotaur".
The description of Adam is "[AdamDesc]".
The conversation of Adam is { "<This is nothing but a placeholder!>" }.
The scent of Adam is "     Adam has a nice scent somewhere between the pheromone-laden musk of his father and a clean human man's smell. It doesn't have you ripping your clothes off, but sure is attractive.".

to say AdamDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Adam: [HP of Adam] <- DEBUG[line break]";
	say "     The offspring of Elaine Scott and the minotaur out in the middle of the camp, Adam is a... half-minotaur you'd say. While his lower body consists of furred, two-jointed legs and hooves like his father's, from the waist up he's almost completely human, with only small nubby horns poking out from under his shoulder-length black hair. All in all, he's much less bulky than his father, having a more slender build and the upper body of a fit young man of about nineteen. His handsome, beardless face is very open and he smiles a lot. At the moment he's dressed in a black t-shirt and wide camo-shorts - with a hole in the back to allow for his moderately long flexible tail (which has a larger tuft of black fur at the end).";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Conversation
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing Adam:
	project Figure of Adam_icon;
	say "     He looks at you attentively as you step up, saying 'Oh, hello... I mean... Provisional Private Adam Scott ready for orders, [sir]!' Accepting his salute, you chat a bit and find the boy charming and pretty eager to please.";
	say "[AdamTalkMenu]";

to say AdamTalkMenu:
	say "     [bold type]What do you want to talk to Adam about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Adam to tell you about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His parents";
	now sortorder entry is 2;
	now description entry is "Ask him about his relationship with his parents";
	[]
	if Energy of Adam > 0:
		choose a blank row in table of fucking options;
		now title entry is "His life in Camp Bravo";
		now sortorder entry is 3;
		now description entry is "Ask Adam to tell you how he feels about his life in Camp Bravo";
	[]
	if Thirst of Adam > 0:
		choose a blank row in table of fucking options;
		now title entry is "His father's odd memories";
		now sortorder entry is 4;
		now description entry is "Question Adam about the memories that he mentioned of his father";
	[]
	if Energy of Adam > 1:
		choose a blank row in table of fucking options;
		now title entry is "His dreams for the future";
		now sortorder entry is 5;
		now description entry is "Inquire about his future ambitions.";
	[]
	if PlayerFucked of Adam is true:
		choose a blank row in table of fucking options;
		now title entry is "Sex";
		now sortorder entry is 6;
		now description entry is "Ask Adam how his sex life is going.";
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
				if (nam is "Himself"):
					say "[AdamTalkHimself]";
				if (nam is "His parents"):
					say "[AdamTalkParents]";
				if (nam is "His life in Camp Bravo"):
					say "[AdamTalkCamp]";
				if (nam is "His father's odd memories"):[Tiny Tim memory]
					say "[AdamTalkMemory1]";
				if (nam is "His dreams for the future"):
					say "[AdamTalkFuture]";
				if (nam is "Sex talk"):
					say "[AdamTalkSex]";
				wait for any key;
				say "[AdamTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young half-minotaur, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AdamTalkHimself: [Have Adam talk about himself]
	say "     The half-minotaur faces you, nodding with a shy smile, as you tell him about your interest in knowing a little more about himself. He shifts his look to the side, as if thinking about an answer. 'Well...' he stops for a moment, scratching the back of his head. 'You should know by now that my name is Adam, and that I'm the newest addition to Camp Bravo.' he says with a shrug, then goes on. 'I'm staying around here to help my mother in a few tasks, as I'm still getting used to all this. Might as well start somewhere, right?' Adam briefly glances around before lowering his head slightly, lowering his voice to an almost whispering tone. 'Though I admit it's a bit overwhelming. Being born in a military camp is no easy feat, everyone expects you to be a good soldier and follow orders without questioning.' He sighs, but ends with a quiet smile as he returns his gaze to you.";
	if Energy of Adam is 0:
		increase Energy of Adam by 1;

to say AdamTalkParents: [Have Adam talk about his parents]
	say "     You explain that you're curious about his relationship with his parents, Tiny Tim and Elaine. He seems eager to answer, as he leans forward with a big smile. 'It's actually great! My mother took very good care of me until I could stand on both my hooves, and she's the one who teaches me the most things. She's really smart.' he says, smiling still. 'As for my father, I usually talk to him between... you know, him breeding people and all that.' He hesitates, but you immediately know what he means. 'He's good hearted, hugged me really tight and licked my face, called me his son... He may not be as smart as mother, but he's genuine. I felt safe in his arms. Smothered, but safe,' he says, his cheeks blushing from the talk, showing a happy smile on his face. 'Although I inherited some odd memories regarding father...'";
	if Thirst of Adam is 0:
		increase Thirst of Adam by 1;

to say AdamTalkCamp: [Have Adam share what he feels about living in Camp Bravo]
	say "     You tell him that you'd like to know more about the life in the military camp. He gives you a slight smile, nodding before replying. 'It's pretty alright... Getting up in the morning, daily training, what you'd expect from a soldier's routine. Food could be better, though. These military rations taste like cardboard' he complains, grimacing as he waves a hand at some boxes stacked in one corner of the tent. He shrugs, but continues speaking... 'I did try something different that my mother brought, one day. A bit squishy but juicy and sweet, thought I can't remember what it was. It comes from trees. Definitely better than cardboard,' he chuckles. 'I might be on the lookout for some more of those when I'm sent on patrols. In fact, I would like see the world some more. Some days are just walking around the camp, on constant chores, and it's very monotonous.'";
	if Energy of Adam is 1:
		increase Energy of Adam by 1;

to say AdamTalkMemory1: [Tiny Tim 1st memory]
	say "     Remembering that Adam told you about having some odd memories about his father, you question him about it. 'Oh, about that...' he replies, hesitantly. 'I guess I could share them with you, if you're interested.' The half-minotaur clears his throat before he begins telling you all about it.";
	say "     'This was somewhere out in the city, but not too far from the camp I think. There was a coyote fellow with a white labcoat standing in the background, calling out to the soldiers around him that they needed to bring Tiny in. They hesitated for a moment, then one guy handed his rifle off to another and stepped forwards. 'Come on boys, seems we've got some cattle wrassling to do!' he shouted and a few more joined him to approach Tiny. Hah, those guys surely were staring wide eyed when he bent down and sniffed the one standing at the front! Some of them never saw someone like Tiny up close! Then, in the end, one guy, an african-american soldier, pulled a chocolate bar out of his pocket and offered it to Tiny, who licked it out of his grip and ate it whole.'";
	say "     'Then he grunted, 'You nice. Wanna fuck nice man!' He wasn't joking about it, having tried to grab that very soldier right then and there, ready to lick his face and give him one of his smothering hugs! But Sergeant Alexander stepped in immediately and talked him down, dismissing everyone else afterwards. Soon after, Tiny was brought into the camp and they fed him, with Alexander even brushing his fur and slowly laying down a few ground rules like not being allowed to grab anyone he wanted to fuck. And he didn't have to anyways, with the breeding assignments starting the very next morning, all those soldiers lining up to get filled.'";
	WaitLineBreak;
	say "     Adam looks back at you, blushing for reliving this memory. 'Hope you enjoyed the story time. I might remember a few more things if you ask me later. I'll gladly share them with you!' he said, happily smiling for having talked to you.";
	if Thirst of Adam is 1:
		increase Thirst of Adam by 1;

to say AdamTalkFuture: [Ask Adam about his dreams for the future]
	say "     After you asked him how he felt about living in Camp Bravo, you press on a more personal subject. Specifically, what he wants to do in the future. 'I don't really know how to answer that' he replies with a shrug, shifting his look to the side. 'From the day I was born, I had my path set. The skills and memories I inherited made me into a natural soldier.' he continues, with his hands low and his fingers intertwined. 'Wasn't given much of a choice, though. Being born in a military camp does that, I guess. The camp needs me, and they teach me well. But... looking at it now, I feel like I might be losing out on a lot of things if I just stay here.'";
	If Energy of Adam is 2: [This should only trigger once]
		say "     You notice a trace of hesitation in Adam's words. He seems unsure of what to actually think about this subject, or too timid to share how he truly feels. Maybe you could push him a little and [bold type]tell him what you personally think?[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - He could leave one day and decide who he wants to be. Adam doesn't absolutely have to be a soldier, no matter what he was born into.";
		say "     [link](2)[as]2[end link] - It's acceptable that they give him some basic training as a soldier. The world outside can be dangerous, so he'll be prepared.";
		say "     [link](3)[as]3[end link] - He was born for this. He should be grateful they were willing to have and train him as a soldier in the camp.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to encourage him to follow his own path, [link]2[end link] to support his perspective, or [link]3[end link] to defend that he should stay a soldier.";
		if calcnumber is 1:[motivate him to choose his own path]
			LineBreak;
			say "     'Is that so?' the half-minotaur tilts his head, wondering about what you just said. 'I don't know, this entire camp thing feels natural to me, like I innately know what to do as a soldier. Even though it's tiring work, it somehow makes sense.' he claims, but when he's about to continue, he hesitates. 'But... you might be right. I'll have to consider that. You gave me a lot to think about.' he says, smiling back at you and thanking you for the insights. Though, he seems more troubled now, facing the natural questions of life. Perhaps in the future, you might be able to follow up on this subject.";
			now Energy of Adam is 10; [free choice]
		if calcnumber is 2:[keep him neutral]
			LineBreak;
			say "     'It's true. From what I've been told, it's a nasty world out there. If one is caught unprepared, their might end up turned into one of those creatures.' he defends, acknowledging your agreement on his perspective. 'This is a good place to start and getting acquainted with all the dangers, learn some skills... And the camp has already been teaching me a lot of useful things!' he continues, though you get the feeling he's not quite convinced of what he's saying. Perhaps in the future, you might be able to follow up on this subject.";
			now Energy of Adam is 20; [neutral]
		if calcnumber is 3:[encourage him to stay a soldier]
			LineBreak;
			say "     'It's a fact that I was born for this. Even my inherited skills are those of a soldier. 'he shrugs, avoiding eye contact with you. You notice a hint of disappointment in his expression, but he shakes it off and looks back at you with a timid smile. 'Maybe I'm overthinking this. Like you said, I should be grateful for the chance they're giving me, and all this training... I think I'll focus on my current duties.' he continues, nodding and thanking you for sharing your opinion. However, you get the feeling he's not quite convinced with what he just said. Perhaps in the future, you might be able to follow up on this subject.";
			now Energy of Adam is 30;[stay a soldier]

to say AdamTalkSex: [Talk to Adam about sex, after sexing him up]
	say "     You bring the subject of sex to the half-minotaur, who immediately blushes, pulling his shoulder-length hair back and scratching his head slightly. 'It felt... really good. I think that was the best thing I've done in a while... you're really good with your hands.' he says, chuckling amidst every word. He's still nervous about this matter, but it's clear that he enjoyed it. 'Sometimes I... do it myself. It doesn't feel the same as when someone else is touching it, though... I wish we could do it more often...' Adam's cheeks are so red by now, and his breathing got slightly deeper, evident signs of arousal.";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

Instead of fucking Adam:
	project Figure of Adam_icon;
	if (lastfuck of Adam - turns < 4):
		say "     Adam chuckles as you try to talk him into sex again. 'You're just insatiable, aren't you? Too bad I don't have quite dad's stamina, so I need a break before I'm ready to go again...'";
	else:
		say "[AdamSexMenu]";

to say AdamSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	say "     You wiggle your eyebrows at Adam, catching his attention, then gesture to follow you. Curious what you want from him, he lets you lead him to the very back of the tent, stepping behind a stuffed shelf and out of sight of Elaine and anyone else who might be in here.";
	say "     [bold type]Now that you have him in semi-privacy, what exactly do you want to do with Adam?[roman type][line break]";
	[]
	if PlayerFucked of Adam is false: [total virgin]
		choose a blank row in table of fucking options;
		now title entry is "Introduce him to jerking off";
		now sortorder entry is 1;
		now description entry is "Step up behind Adam and guide him to touch his dick";
	else:
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Jerk off together with Adam";
			now sortorder entry is 1;
			now description entry is "Invite him for some shared stroking";
		[]
		if Player is female:
			choose a blank row in table of fucking options;
			now title entry is "Stroke yourself while Adam jerks off";
			now sortorder entry is 2;
			now description entry is "Invite him for some shared self-pleasure";
		[
		if Oralvirgin of Adam is true and player is male:
			choose a blank row in table of fucking options;
			now title entry is "Show him how to suck cocks";
			now sortorder entry is 2;
			now description entry is "Take Adam's oral virginity";
		[]
		if Oralvirgin of Adam is true and player is female:
			choose a blank row in table of fucking options;
			now title entry is "Show him how to lick a pussy";
			now sortorder entry is 2;
			now description entry is "Take Adam's oral virginity";
		[]
		if Oralvirgin of Adam is false and player is male:
			choose a blank row in table of fucking options;
			now title entry is "Have him blow you";
			now sortorder entry is 2;
			now description entry is "Put Adam's mouth to good use";
		[]
		if Oralvirgin of Adam is false and player is female:
			choose a blank row in table of fucking options;
			now title entry is "Have him lick your pussy";
			now sortorder entry is 2;
			now description entry is "Put Adam's mouth to good use";
		[]
		if PenileVirgin of Adam is true:
			choose a blank row in table of fucking options;
			now title entry is "Give him his first blowjob";
			now sortorder entry is 3;
			now description entry is "Introduce him to sex by blowing him";
		[]
		if PenileVirgin of Adam is false:
			choose a blank row in table of fucking options;
			now title entry is "Suck Adam's cock";
			now sortorder entry is 3;
			now description entry is "Taste some half-minotaur seed";
		[]
		if PenileVirgin of Adam is true and player is female:
			choose a blank row in table of fucking options;
			now title entry is "Offer your pussy for him to fuck";
			now sortorder entry is 4;
			now description entry is "Take Adam's virginity by letting him fuck you";
		[]
		if PenileVirgin of Adam is false and player is female:
			choose a blank row in table of fucking options;
			now title entry is "Let Adam fuck your pussy";
			now sortorder entry is 4;
			now description entry is "Let the boy breed you";
		[]
		if PenileVirgin of Adam is true:
			choose a blank row in table of fucking options;
			now title entry is "Offer your ass for him to fuck";
			now sortorder entry is 4;
			now description entry is "Take Adam's virginity by letting him fuck you";
		[]
		if PenileVirgin of Adam is false:
			choose a blank row in table of fucking options;
			now title entry is "Let Adam fuck your ass";
			now sortorder entry is 4;
			now description entry is "Let the boy fill your ass with his seed";
		[]
		if AnalVirgin of Adam is true and lust of Adam is 0:
			choose a blank row in table of fucking options;
			now title entry is "Introduce him to having something up his ass";
			now sortorder entry is 5;
			now description entry is "Show Adam the fun of anal by fingering him";
		[]
		if lust of Adam > 0:
			choose a blank row in table of fucking options;
			now title entry is "Finger Adam's ass";
			now sortorder entry is 5;
			now description entry is "Have some fun playing with Adam's ass";
		[]
		if lust of Adam > 0 and player is male:
			choose a blank row in table of fucking options;
			now title entry is "Take Adam's ass";
			now sortorder entry is 6;
			now description entry is "Fill the half-minotaur's ass with your cock";
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
				now sextablerun is 1;
				if (nam is "Introduce him to jerking off"):
					say "[AdamJerkoff_Virgin]";
				else if (nam is "Jerk off together with Adam"):
					say "[AdamJerkoff_Male]";
				else if (nam is "Stroke yourself while Adam jerks off"):
					say "[AdamJerkoff_Female]";
				else if (nam is "Show him how to suck cocks"):
					say "[AdamOral_Male_Virgin]";
				else if (nam is "Show him how to lick a pussy"):
					say "[AdamOral_Female_Virgin]";
				else if (nam is "Have him blow you"):
					say "[AdamOral_Male]";
				else if (nam is "Have him lick your pussy"):
					say "[AdamOral_Female]";
				else if (nam is "Give him his first blowjob"):
					say "[AdamBJ_Virgin]";
				else if (nam is "Suck Adam's cock"):
					say "[AdamBJ]";
				else if (nam is "Offer your pussy for him to fuck"):
					say "[AdamPussyFuck_Virgin]";
				else if (nam is "Let Adam fuck your pussy"):
					say "[AdamPussyFuck]";
				else if (nam is "Offer your ass for him to fuck"):
					say "[AdamAssFuck_Virgin]";
				else if (nam is "Let Adam fuck your ass"):
					say "[AdamAssFuck]";
				else if (nam is "Introduce him to having something up his ass"):
					say "[AdamAssFingering_Virgin]";
				else if (nam is "Finger Adam's ass"):
					say "[AdamAssFingering]";
				else if (nam is "Take Adam's ass"):
					say "[AdamAssFucked]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the half-minotaur, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say AdamJerkoff_Virgin: [introduce him to jerking]
	say "     You gently approach Adam, making a suggestive glance as you move behind him, asking his permission to touch him. 'Huh? Sure?' he replies, somewhat confused, but you answer by carefully placing your hands over his broad shoulders, working your way through a few pressure points. 'O-oh, that feels nice...' he replies, a little startled by your move, but he doesn't fight it. He's leaning his head back and taking deep breaths as you massage the back of his neck, moving your thumb in circles across his tense muscles. You whisper to him that you'd like to show him something fun. Taking his deeper exhaling as a positive sign, you both move behind one of the long storage shelves in the tent. You help him take his black t-shirt off, revealing his fit, human upper body, before you move onto his fine chest. He lets out a shy moan as you grasp and squeeze his pectorals. The slight friction between your palm and his nipples make him shiver, indicative that they're quite sensitive. Pleased with your study, you begin moving your hands lower...";
	say "     'I never... felt anything like this...' he moans, relaxing in your embrace as you slide your hands over his rippled abs, only slowing down as you move them below his waist. His breathing quickens again, and when he's about to say something, he grabs your wrists in a reflex. 'W-what's happening?' he asks, his deep voice stuttering as you comfort him, asking him to trust you. 'I n-never...' he doesn't finish that sentence as you're moving your hands onto his wide camo shorts. Adam softened his grip as you started to undo his leather belt, loosening it as you create enough space to slide one of your hands underneath his shorts. The soft fur you're presented with reminds you that he's a half-minotaur, were it not also for a slight hint of animalistic musk as he gets more and more aroused by your touch.";
	WaitLineBreak;
	say "     You slowly slide his shorts down, as Adam still holds both your wrists, but lets you move freely. As they slide past his crotch, his large, humanly shaped cock springs out, rock solid and throbbing, eager for attention. You estimate its size to be about ten inches long. Adam's grasp tightens a little, so you take your time to comfort him some more, whispering him to breathe in and relax. The tip of his dick is slick and glistening, precum already making its way through the slit. You move one of your hands over his shaft, feeling his heavy erection pulsing in your hands, as your gently stroke it. Your motions get him moaning and somewhat shaking between your arms, and you can nearly hear his heart pounding. Having sated your own curiosity, you tell Adam to touch himself, placing your hands and fingers above his.";
	say "     With your own grip, you lead his hands over his hard cock, guiding them through his length. You get him to stroke his dick, performing slow motions going up and down his shaft. 'It... feels amazing...' he moans, as you let him masturbate, planting a soft kiss on the back of his neck.";
	say "     [bold type]Now that you got him jerking off, what will you do to help him finish?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Rub his chest."; [have the player play with his nipples]
	say "     ([link]N[as]n[end link]) - Fondle his balls."; [have the playey rubbing his ballsac]
	if Player consents:
		LineBreak;
		say "     Deciding that Adam will eventually figure out his way around his own dick, you move your hands back to his chest, feeling the voluminous pecs under your palms again. He keeps moaning as you caress him, causing him to hasten his stroking. You follow up by moving your fingers around his nipples, carefully running the tip of your index and thumb around them, rubbing and squeezing. Adam lets out a loud groan, which he abruptly interrupts once he realizes his tone, as his breathing quickens. 'Oh... I'm starting to feel...' you immediately understand what he's saying, so you just tell him to keep going... and don't stop. Following your instructions, he accelerates the pace, rubbing his entire length even faster while you caress his nipples. The half-minotaur's breathing shortens, getting unstable amidst his moaning voice. 'I'm gonna...' he goes on, as you continue to squeeze his nips.";
		say "     Not long after, you feel his hips thrusting back and forth as Adam lets out a loud grunt. You see his dick throbbing, harder than ever, as he shoots his load with incredible force. The thick, white stream of cum only lands several meters further ahead, as the shots keep coming out stronger than the previous. He's literally fucking his hand as he orgasms, leaving a large trail of cum on the ground.";
		WaitLineBreak;
		say "     Eventually, his climax wears off. Adam tries to catch his breath before he turns to you. 'This was... amazing...' he says, still trying to slow down his breath. He pulls his shorts up and puts his t-shirt back on, giving you a shy kiss. 'I... I need to clean this up before someone comes over...' he goes on, smiling at you. Nodding, you decide to leave him cleaning his mess. You both exchange a smirk as you part ways. The half-minotaur was still blushing.";
		now PlayerFucked of Adam is true; [he had a sexual encounter with the player]
		now lastfuck of Adam is turns;
	else:
		LineBreak;
		say "     Resolving that you wouldn't want to move your hands too far from his dick, you run them down to his balls. He responds with a moan as you fondle them, moving your fingers around his ballsac and squeezing them softly. He keeps moaning as you caress him, causing him to hasten his stroking. His balls are sizeable and heavy, filling your hands nicely as you grasp them. Adam lets out a loud groan, which he abruptly interrupts once he realizes his tone, as his breathing quickens. 'Oh... I'm starting to feel...' you immediately understand what he's saying, so you just tell him to keep going... and don't stop. Following your instructions, he accelerates the pace, rubbing his entire length even faster while you caress his balls. The half-minotaur's breathing shortens, getting unstable amidst his moaning voice. 'I'm gonna...' he goes on, as you continue to feel up his gonads.";
		say "     Not long after, you feel his hips thrusting back and forth as Adam lets out a loud grunt. You see his dick throbbing, harder than ever. As you feel his balls retracting, the half-minotaur shoots his load with incredible force. The thick, white stream of cum only lands several meters further ahead, as the shots keep coming out stronger than the previous. He's literally fucking his hand as he orgasms, leaving a large trail of cum on the ground. You feel his testicles pulse at every shot.";
		WaitLineBreak;
		say "     Eventually, his climax wears off. Adam tries to catch his breath before he turns to you. 'This was... amazing...' he says, still trying to slow down his breath. He pulls his shorts up and puts his t-shirt back on, giving you a shy kiss. 'I... I need to clean this up before someone comes over...' he goes on, smiling at you. Nodding, you decide to leave him cleaning his mess. You both exchange a smirk as you part ways. The half-minotaur was still blushing.";
		now PlayerFucked of Adam is true; [he had a sexual encounter with the player]
		now lastfuck of Adam is turns;

to say AdamJerkoff_Male:
	say "     You kiss the half-minotaur deeply as you move your hands down underneath his t-shirt and around his waist. With a quick tug, you pull it up and over his head next, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by licking over his chest and neck until you reach the chin and kiss him again. You lean over his ear, and whispering, you ask him to jerk off together, as you move back a step and quickly slide off your clothes. Adam watches you undress, then smiles and eagerly replies 'My pleasure, [sir]!' before he moves his hands over his shorts, undoing the zipper of his shorts, then pull them down off his legs, freeing his proudly erect human manhood. Delighted with the view, you do the same and pull off your cock, as you begin to stroke it.";
	say "     Grasping his by now proudly standing erection in one hand, Adam strokes it softly a few times, giving his balls a gentle squeeze as he lets out a pant of pleasure. He fixates his gaze on your own manhood, turning him on even further as he then rubs his chest and plays with his nipples. You're stroking with him, following his motions, rubbing your fingers across your length. You even look at him in the eye as you tease him with your own meat, which makes the half-minotaur even hornier, stroking faster and taking deeper, shorter breaths. Adam's dick is throbbing harder than ever, his balls bouncing around as he rubs his cock with both his hands, jerking his hips back and forth. You feel like he's getting close.";
	say "     [bold type]What do you do to finish?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Kiss him."; [Kiss Adam and stroke closer]
	say "     ([link]N[as]n[end link]) - Give him a handjob."; [stroke him]
	if Player consents:
		say "     You slowly approach Adam with your cock still in one hand, as you move the other onto the back of his head, feeling his shoulder length hair between your fingers. You pull him to you and give him a deep kiss, playfully exploring his mouth with your tongue. You hear and feel him moaning as he jerks his erection even faster while both your cocks rub against eachother. He turns to you, moaning 'I'm pretty close...' as you keep up with him, stroking your length as fast as you can. Eventually, you both reach your climaxes, standing as you are, shooting cum all over yourselves. Spurt after spurt, Adam coats your own manhood with his warm seed, some hitting you in the navel and below. You don't last much longer before a mind-blowing orgasm shakes your body, spurting your load on him as he did to you.";
		say "     With both of you drenched in eachother's loads, you kiss him again, tongue-wrestling him playfully as you give him a gentle tap on his waist. Takes you a while to realize you need to clean yourselves up before returning to your affairs.";
		now lastfuck of Adam is turns;
	else:
		say "     You slowly approach Adam with your cock still in one hand, as you move the other to feel his proud erection, pulsing with need. Pulling his cock to you, both your precum-coated tips rub against eachother. He reaches for yours, causing you to let out a moan of pleasure, as he vigorously strokes your manhood. With both of your meats throbbing, Adam turns to you, moaning 'I'm pretty close...' as you keep up with him, stroking his length as fast as you can. Eventually, you both reach your climaxes, standing as you are, shooting cum all over yourselves. Spurt after spurt, Adam coats your own manhood with his seed, some hitting you in the navel and below. You don't last much longer before a mind-blowing orgasm shakes your body, spurting your load on him as he did to you.";
		say "     With both of you drenched in eachother's loads, you kiss him, playfully exploring his mouth with your tongue as you give him a gentle tap on his waist. Takes you a while to realize you need to clean yourselves up before returning to your affairs.";
		now lastfuck of Adam is turns;

to say AdamJerkoff_Female:
	say "     You kiss the half-minotaur deeply as you move your hands down underneath his t-shirt and around his waist. You then pull it up and over his head, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by licking over his chest and neck until you reach the chin and kiss him again. You lean over his ear, and whispering, you ask him to jerk off for you, as you move back a step and quickly slide off your clothes. Adam watches you undress, then smiles and eagerly replies 'My pleasure, [sir]!' before he moves his hands over his shorts, undoing the zipper of his shorts, then pull them down off his legs, freeing his proudly erect human manhood. Delighted with the view, you do the same and slide one hand over your pussy, as you begin to stroke it.";
	say "     Grasping his by now proudly standing erection in one hand, Adam strokes it softly a few times, giving his balls a gentle squeeze as he lets out a pant of pleasure. He fixates his gaze on your womanhood, turning him on even further as he then rubs his chest and plays with his nipples. You're now stroking yourself, accompanying his motions, rubbing your fingers around your clit. You even look at him in the eye as you tease him with your own wet cunt, which makes the half-minotaur even hornier, stroking faster and taking deeper, shorter breaths. Adam's dick is throbbing harder than ever, his balls bouncing around as he rubs his cock with both his hands, jerking his hips back and forth. You feel like he's getting close.";
	say "     [bold type]What do you do to finish?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Kiss him."; [Kiss Adam and stroke closer]
	say "     ([link]N[as]n[end link]) - Give him a handjob."; [stroke him]
	if Player consents:
		say "     You slowly approach Adam with one hand still caressing your parts, as you move the other onto the back of his head, feeling his shoulder length hair between your fingers. You pull him to you and give him a deep kiss, playfully exploring his mouth with your tongue. You hear and feel him moaning as he jerks his erection even faster. He turns to you, moaning 'I'm pretty close...' as you move some of your fingers inside your by now soaked pussy, while rubbing your clit at the same time. Eventually, you both reach your climaxes, standing as you are. Spurt after spurt, Adam coats you with his warm seed, hitting you in the navel and below. You don't last much longer before a mind-blowing orgasm shakes your body. You continue to finger your pussy as you lose yourself in amazing sensations, soaking them with your vaginal fluids.";
		say "     With both of you drenched in eachother's loads, you kiss him again, tongue-wrestling him playfully as you give him a gentle tap on his waist. Takes you a while to realize you need to clean yourselves up before returning to your affairs.";
		now lastfuck of Adam is turns;
	else:
		say "     You slowly approach Adam with one hand still caressing your parts, as you move the other to feel his proud erection, pulsing with need. Pulling his cock to you, he reaches for your pussy, causing you to let out a moan of pleasure, as he begins pushing his fingers inside you. With his meat throbbing and your wet cunt being thoroughly caressed and stroked, Adam turns to you, moaning 'I'm pretty close...' as you keep up with him, stroking his length as fast as you can. Eventually, you both reach your climaxes, standing as you are. Spurt after spurt, Adam coats you with his warm seed, hitting you in the navel and below. You don't last much longer before a mind-blowing orgasm shakes your body. The half-minotaur continues to finger your pussy as you lose yourself in amazing sensations, soaking his hand with your vaginal fluids.";
		say "     With both of you drenched in eachother's loads, you kiss him, playfully exploring his mouth with your tongue as you give him a gentle tap on his waist. Takes you a while to realize you need to clean yourselves up before returning to your affairs.";
		now lastfuck of Adam is turns;

to say AdamOral_Male_Virgin:
	say "...";
	NPCSexAftermath Adam receives "OralCock" from Player;

to say AdamOral_Female_Virgin:
	say "...";
	NPCSexAftermath Adam receives "OralPussy" from Player;

to say AdamOral_Male: [have Adam suck the player char's cock]
	say "     You pull Adam aside and lead him behind one of the long storage shelves in the tent. Giving him a deep kiss, you put your arms around him and slide your hands into his shorts at the back, feeling and softly squeezing his furred buns. Then you move on to his t-shirt, grabbing it and pulling it up and over his head, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by licking over his chest and neck until you reach the chin and kiss him again. You lean over his ear, and whispering, you ask him to blow you, as you move back a step and quickly slide off your clothes. Adam watches you undress, then smiles and eagerly replies 'My pleasure, [sir]!' before he licks his lips and kneels down.";
	say "     Grasping your by now proudly standing erection in one hand, Adam strokes it softly a few times, then holds it up as he gives your balls a tentative lick and runs his tongue up the underside of your shaft, making you pant in pleasure. Arriving at the tip, he circles the head of your cock a few times with his tongue, then takes it between your lips. Your manhood slowly slides deeper into his mouth, his lips caressing the sensitive skin and giving you amazing sensations. Soon, your cock hits the back of your mouth, but Adam takes a deep breath and continues going, sliding your shaft deeper and deeper. When his nose finally bumps into the skin under your navel, you moan loudly from the warm and tight feeling that it gives you.";
	LineBreak;
	say "     Pulling off your cock to get some air, Adam strokes its saliva-coated length some more, then start sucking you off in earnest, pumping his lips up and down on the hard shaft. He keeps going for a while, bringing you to the brink of an orgasm several times, but stopping each time to let you cool down a bit. Then finally he goes all out, sucking on your cock hard and pumping it in and out of his throat. With all the built up arousal, you don't last much longer before a mind-blowing orgasm shakes your body, spurt after spurt of your seed filling Adam's mouth.";
	say "     Adam sticks out his tongue, showing off your white creamy cum, then demonstratively swallows it all. Then he stands up and gives you a deep kiss, making you taste some of your cum and playfully tongue-wrestling with you.";
	NPCSexAftermath Adam receives "OralCock" from Player;

to say AdamOral_Female:
	say "...";
	NPCSexAftermath Adam receives "OralPussy" from Player;

to say AdamBJ_Virgin:
	say "...";
	NPCSexAftermath Player receives "OralCock" from Adam;

to say AdamBJ: [suck Adam's cock]
	say "     You pull Adam aside and lead him behind one of the long storage shelves in the tent. Giving him a deep kiss, you put your arms around him and slide your hands into his shorts at the back, feeling and softly squeezing his furred buns. Then you move on to his t-shirt, grabbing it and pulling it up and over his head, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by a line of kisses down over his abs until you're crouched in front of the half-minotaur. Stroking the obvious bulge of his cock through the fabric of his shorts, you have him moaning needfully in no time. You smile up at Adam, undoing the zipper of his shorts, then pull them down off his legs, freeing his proudly erect human manhood.";
	say "     Starting with a tentative lick over his balls, you run your tongue along the side of Adam's long shaft, circling the head of his cock as you get to it. You stroke his dick with your hand a few times, then take its tip between your lips. Adam moans as you slowly slide his manhood deeper into your mouth, running your tongue over its sensitive skin. Soon, he hits the back of your mouth, but you take a deep breath and continue going, sliding his shaft deeper and deeper. When your nose finally bumps into the skin under his navel, you have Adam halfway down your throat and gasping almost incoherently how good it feels.";
	LineBreak;
	say "     Pulling off his cock to get some air, you run your hands through the black fur on his legs and tight buns, delighted in its softness. Then you stroke his saliva-coated manhood some more and start sucking him in earnest, pumping your lips up and down on his hard shaft. You keep Adam going for a while, bringing him to the brink of an orgasm several times, but stopping each time to let him cool down a bit. Then finally you go all out, sucking on his cock hard and pumping it in and out of your throat. With all the built up arousal, Adam doesn't last much longer before a mind-blowing orgasm shakes his body, his cock pulsing as spurt after spurt of his seed shoot directly into your stomach.";
	say "     Satisfied with pleasing the young half-minotaur, you stand up and give him another deep kiss, playfully exploring his mouth with your tongue.";
	NPCSexAftermath Player receives "OralCock" from Adam;

to say AdamPussyFuck_Virgin:
	say "...";
	NPCSexAftermath Player receives "PussyFuck" from Adam;

to say AdamPussyFuck: [pussy-fucked by Adam]
	say "     You pull Adam aside and lead him behind one of the long storage shelves in the tent. Giving him a deep kiss, you put your arms around him and slide your hands into his shorts at the back, feeling and softly squeezing his furred buns. Then you move on to his t-shirt, grabbing it and pulling it up and over his head, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by licking over his chest and neck until you reach the chin and kiss him again. You lean over his ear, and whispering, you tell the half-minotaur you want him inside you. Stroking his cock through the shorts, you then move back a step and quickly slide off your clothes. Adam watches you undress with a smile on his face and eagerly replies 'My pleasure, [sir]!' before grabbing a pile of blankets out of the shelf and spreading them on the floor.";
	say "     Lying down on the improvised bedding, you have a nice view as Adam pulls down his shorts to stand naked before you. His long cock stands proudly erect in your direction, showing an interesting contrast of white skin against the black fur of his legs. Liking what you see, you spread your legs invitingly and stroke the lips of your pussy, inviting him to take you. Adam is very eager to follow, kneeling down and putting his head between your legs to lick your pussy. And what a long and talented tongue he has - after running it over your sensitive lips and clit, he sticks it inside your vagina, wiggling around and poking your inner walls with the tip. Next, he [if Player is male]runs his tongue up the underside of your cock[else]puts a line of small kisses up to your belly button[end if], then moves up to lie on top of you and gives you a hungry kiss.";
	WaitLineBreak;
	say "     Yearning for his cock inside you, you reach down and guide it to your opening, then scooch down a bit to get the head in. Adam moans in lust, sliding his manhood deeper, spreading your inner walls around his hard shaft. Soon he's all the way in, with his balls and soft furred hips rubbing against your body. For a moment, he just stays still like that, connected to you as intimately as possible, before starting to slide in and out. Moans rise in both your throats as he starts fucking you in earnest, going faster and faster with his deep strokes and rubbing just the right spots inside you. With the noise of your coupling quite loud now, it doesn't surprise you to see Elaine and a male soldier look behind the storage shelf to check out what's going on. You don't care if they watch, your whole mind focused on the virile half-minotaur fucking you.";
	say "     Wrapping your legs around him, you pull him towards you with each of his thrusts, making him slam into you harder and deeper. You lose track of time for a while as you're so thoroughly fucked, only few things registering through the lust-filled buzz in your head. One thing you do remember is Elaine pulling the soldier with her out of sight and moans starting up from the direction of her bed. As Adam does another deep thrust into your body, he stops for a moment, gasping 'I'm getting pretty close.'";
	say "     [bold type]So, where do you want him to cum?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Your pussy.";
	say "     ([link]N[as]n[end link]) - Your mouth.";
	if Player consents:
		LineBreak;
		say "     You beckon him to fill you with his beast-boy cum while flexing your inner muscles around his cock. Eager to follow your command, he resumes his deep and hard strokes, only lasting for a few more before his body stiffen in your embrace. Adam holds tight onto you with his arms as spurt after spurt of his fertile seed shoots out of his throbbing cock and into you, filling your womb with warm cum.[fimpregchance]";
		say "     'That was amazing - you are amazing,' he moans in between kisses as you lie there for a while, making out with each other as you come down from the rush of orgasm.";
		NPCSexAftermath Player receives "PussyFuck" from Adam;
	else:
		LineBreak;
		say "     You tell him that you want his cum in your mouth and slide your hands down to his hips to softly push him off. Eager to follow your command, Adam pulls out and moves up over you, kneeling down with his legs left and right of your body. His soft fur feels amazing against your chest and... what's still stroking your pussy? You stretch your head far enough to the side to look past Adam and catch a glimpse of his flexible tail stroking you with the bushy tip. Smiling, you pull on Adam's hips so he moves up a bit more, then get to work on his cock, teasing it with your tongue before sucking on it. It doesn't take long before you push him over the edge, gasping in lust as cum boils up from his balls and gushes into your mouth. You fondle his balls as he comes, feeling them twitch with each new blast of seed.";
		say "     After you milk the last bit of cum out of his cock, Adam moves back to lie down with you on the blankets. 'That was amazing - you are amazing,' he moans as you pull him in for a sloppy kiss, making him taste his own cum from your mouth. You stay there together for a while, making out with each other as you come down from the rush of orgasm.";
		NPCSexAftermath Player receives "OralCock" from Adam;

to say AdamAssFuck_Virgin:
	say "...";
	NPCSexAftermath Player receives "AssFuck" from Adam;

to say AdamAssFuck: [ass-fucked by Adam]
	say "     You pull Adam aside and lead him behind one of the long storage shelves in the tent. Giving him a deep kiss, you put your arms around him and slide your hands into his shorts at the back, feeling and softly squeezing his furred buns. Then you move on to his t-shirt, grabbing it and pulling it up and over his head, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by licking over his chest and neck until you reach the chin and kiss him again. You lean over his ear, and whispering, you tell the half-minotaur you want him to take you from behind. Stroking his cock through the shorts, you then move back a step and quickly slide off your clothes. Adam watches you undress with a smile on his face and eagerly replies 'My pleasure, [sir]!' before grabbing a pile of blankets out of the shelf and spreading them on the floor.";
	say "     Adam pulls down his shorts to stand naked before you, his long cock standing proudly erect in anticipation and showing an interesting contrast of white skin against the black fur of his legs. Liking what you see, you kneel down on the improvised bedding and wiggle your ass at him, inviting him to fuck your hole. Adam is very eager to follow, getting behind you on his knees, then leaning down to rim you. And what a long and talented tongue he has - after running it over the outside of your hole a few times, he sticks it inside, wiggling around and poking your inner walls with the tip. Next, he puts a line of small kisses up your back until he reaches your neck and softly pulls your head to the side for a quick kiss.";
	WaitLineBreak;
	say "     You feel Adam's soft fur against your ass and legs and the warmth of his engorged cock rest on the small of your back. Yearning to feel him inside you, you reach back and stroke his shaft, then scooch forward a bit until it's resting in the crack of your ass. Adam moans in lust as he pushes forward, slowly increasing the pressure against your pucker before it relents and his cockhead enters you. Putting his arms around you from behind, he holds you close as he slides his manhood deeper, spreading your inner walls around his hard shaft. Soon he's all the way in, with his balls and soft furred hips rubbing against your body. For a moment, he just stays still like that, connected to you as intimately as possible, before starting to slide in and out. Moans rise in both your throats as he starts fucking you in earnest, going faster and faster with his deep strokes and rubbing just the right spots inside you.";
	say "     With the noise of your coupling quite loud now, it doesn't surprise you to see Elaine and a male soldier look behind the storage shelf to check out what's going on. You don't care if they watch, your whole mind focused on the virile half-minotaur fucking you.";
	say "     You rock backwards against him with each of his thrusts, making him slam into you harder and deeper. Losing track of time for a while as you're so thoroughly fucked, only few things not to do with Adam's movements, smell, etc. register through the lust-filled buzz in your head. One thing you do remember is Elaine pulling the soldier with her out of sight and moans starting up from the direction of her bed. As Adam does another deep thrust into your body, he stops for a moment, gasping 'I'm getting pretty close.'";
	say "     [bold type]So, where do you want him to cum?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Your ass.";
	say "     ([link]N[as]n[end link]) - Your mouth.";
	if Player consents:
		LineBreak;
		say "     You beckon him to fill you with his beast-boy cum while flexing your inner muscles around his cock. Eager to follow your command, he resumes his deep and hard strokes, only lasting for a few more before his orgasm overcomes him. Adam holds on tight with his arms around you as spurt after spurt of his fertile seed shoots out of his throbbing cock and into you, filling your asshole with warm cum. [if Player is male]Feeling your lover's load inside you, your own arousal mounts quickly, and after a moment of rapid stroking you come all over the blankets below.[end if]";
		say "     Turning you around, Adam says 'That was amazing - you are amazing.' before pulling you down on the blankets to make out and lie there together as come down from the rush of orgasm.";
		NPCSexAftermath Player receives "AssFuck" from Adam;
	else:
		LineBreak;
		say "     You tell him that you want his cum in your mouth and slide your hands down to his hips to softly push him off. Eager to follow your command, Adam pulls out and moves around you, holding his hard cock out for you to suck. Smiling, you lean forward a bit and get to work on his cock, teasing it with your tongue before sucking on it. It doesn't take long before you push him over the edge, gasping in lust as his cum gushes into your mouth. You fondle his balls as he comes, feeling them twitch with each new blast of seed they deliver.";
		say "     After you milk the last bit of cum out of his cock, Adam moves back to lie down with you on the blankets. 'That was amazing - you are amazing,' he moans as you pull him in for a sloppy kiss, making him taste his own cum from your mouth. You stay there together for a while, making out with each other as you come down from the rush of orgasm.";
		NPCSexAftermath Player receives "OralCock" from Adam;

to say AdamAssFingering_Virgin:
	say "<scene text>";
	now Lust of Adam is 1; [he has been fingered]

to say AdamAssFingering:
	say "<scene text>";

to say AdamAssFucked: [give Adam's tight ass a good fucking]
	say "     You pull Adam aside and lead him behind one of the long storage shelves in the tent. Giving him a deep kiss, you put your arms around him and slide your hands into his shorts at the back, feeling and softly squeezing his furred buns. Then you move on to his t-shirt, grabbing it and pulling it up and over his head, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by licking over his chest and neck until you reach the chin and kiss him again. You lean over his ear, and whispering, you tell the half-minotaur you're going to fuck him. Then, you push him to the next shelf and turn him around. Standing close behind him, rubbing your crotch against his ass, you grab his hands and set them on one of the higher shelf boards so he can hold on to it. Then you run your hands down over his defined chest, arriving at his shorts. Quickly undoing the button and zipper, you pull them down, so Adam now is naked and ready for you to fuck him.";
	say "     Shucking off your own clothes in no time at all, you take your engorged cock in hand and move in position behind your half-minotaur lover. It's an amazingly soft feeling as you slide it up and down along the crack of his ass with his short black fur rubbing against your skin. Yearning to feel his hole around your cock, you lean forward, pressing against his pucker with the tip of your maleness. Adam moans in lust as you pop in, stretching his sphincter around your cock's girth. Putting your arms around him from behind, you hold him close as you slide your manhood deeper, spreading his inner walls around your hard shaft. Soon you're all the way in, with your balls and hips touching the soft fur of Adam's ass. For a moment, you just stay still like that, connected to him as intimately as possible, before starting to slide in and out. Moans rise in both your throats as you start fucking him in earnest, going faster and faster with deep strokes and rubbing just the right spots to make him gasp and moan.";
	say "     With the noise of your coupling quite loud now, it doesn't surprise you to see Elaine look behind the storage shelf to check out what's going on. You don't care if she or anyone else watch, your whole mind focused on the tight hole of your virile half-minotaur buddy. Grabbing his hips with both hands, you speed up, slamming into Adam harder and deeper. Then suddenly he gasps, a shudder running through his body as the anal stimulation drives him to orgasm, with long spurts of his cum splattering all over the supply chests of the shelf he's holding on to. With his tight hole flexing around your shaft with each of his shots, you're soon getting close to cumming yourself.";
	LineBreak;
	say "     [bold type]So, where do you want him to cum?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - In his ass.";
	say "     ([link]N[as]n[end link]) - In his mouth.";
	if Player consents:
		LineBreak;
		say "     You just keep going, thrusting into Adam several more times hard enough to create loud slapping noises as your hips meet his ass. Then as you feel your balls tightening, you bottom out in him, holding Adam tightly around the chest while spurt after spurt of your seed shoot into him.";
		say "     When you pull your cock out of his dripping hole a while later, Adam turns around, saying 'That was amazing - you are amazing.' before pulls you into an embrace, making out with you.";
		NPCSexAftermath Adam receives "AssFuck" from Player;
	else:
		LineBreak;
		say "     You let Adam know that you're close and tell him you want to cum in his mouth, while carefully pulling out of his ass. Eager to follow your command, Adam turns around and kneels before you, taking hold of your hard cock. Smiling, he runs his tongue over the underside, then goes to work giving you a blow-job. It doesn't take long before he pushes you over the edge, gasping in lust as your load gushes into Adam's mouth. After he milks the last bit of cum out of your cock, Adam looks up at you and sticks out his tongue, showing you the ample load you shot. Pulling him up from the ground, you give him a deep kiss, tasting your own cum as your tongues explore each other's mouths.";
		say "     Coming back up to breath, Adam moans 'That was amazing - you are amazing.' affectionately stroking your cheek.";
		NPCSexAftermath Adam receives "AssFuck" from Player;
		NPCSexAftermath Adam receives "OralCock" from Player;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 5 - Ending
[***********************************************************]
[***********************************************************]
[***********************************************************]

[
when play ends:
	if (HP of Adam > 4): [Adam was born]
		if Adam is in Quartermaster's Tent: [never left the camp]
			if humanity of Player < 10:
				increase score by 0; [do nothing, player succumbed and unaware of Adam's fate.]
			else:
				say "     <Meeting Adam outside the city in the ending>";
		else if (Adam is in Bunker):
			if (humanity of Player < 10):
				say "     <Player succumbs, usually comes to the bunker and does things to their companions>";
			else:
				say "     <Player survives and leaves the city with companions>";
]

Adam ends here.
