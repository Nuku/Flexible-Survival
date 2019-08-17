Version 3 of Adam by Wahn begins here.
[Version 1 - Put into its own file]
[Version 2 - Fitness Training - Gherod]
[Version 3 - More Oral Scenes - Gherod]

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

[ Thirst of Adam - Memories                                 ]
[   0: player didn't ask about his parents                  ]
[   1: player learned of his 'odd memories'                 ]
[   2: Tiny Tim first memory                                ]

[ Stamina of Adam - Last fitness training turn              ]

Stamina of Adam is usually 10000.
AdamDoneTalking is a truth state that varies.[@Tag:NotSaved]

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
Cunt Depth of Adam is 0.
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
	now AdamDoneTalking is false;
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
	if Energy of Adam > 1:
		choose a blank row in table of fucking options;
		now title entry is "Workout together";
		now sortorder entry is 6;
		now description entry is "Suggest Adam some workout together.";
	[]
	if PlayerFucked of Adam is true:
		choose a blank row in table of fucking options;
		now title entry is "Sex talk";
		now sortorder entry is 7;
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
				if (nam is "Workout together"):
					say "[AdamFitness]";
					now AdamDoneTalking is true;
				if (nam is "Sex talk"):
					say "[AdamTalkSex]";
				wait for any key;
				if AdamDoneTalking is false: [override for after training]
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
	say "     You tell him that you'd like to know more about the life in the military camp. He gives you a slight smile, nodding before replying. 'It's pretty alright... Getting up in the morning, daily training, what you'd expect from a soldier's routine. Food could be better, though. These military rations taste like cardboard,' he complains, grimacing as he waves a hand at some boxes stacked in one corner of the tent. He shrugs, but continues speaking... 'I did try something different that my mother brought, one day. A bit squishy but juicy and sweet, thought I can't remember what it was. It comes from trees. Definitely better than cardboard,' he chuckles. 'I might be on the lookout for some more of those when I'm sent on patrols. In fact, I would like see the world some more. Some days are just walking around the camp, on constant chores, and it's very monotonous.'";
	if Energy of Adam is 1:
		increase Energy of Adam by 1;

to say AdamTalkMemory1: [Tiny Tim 1st memory]
	say "     Remembering that Adam told you about having some odd memories about his father, you question him about it. 'Oh, about that...' he replies, hesitantly. 'I guess I could share them with you, if you're interested.' The half-minotaur clears his throat before he begins telling you all about it.";
	say "     'This was somewhere out in the city, but not too far from the camp I think. There was a coyote fellow with a white labcoat standing in the background, calling out to the soldiers around him that they needed to bring Tiny in. They hesitated for a moment, then one guy handed his rifle off to another and stepped forwards. 'Come on boys, seems we've got some cattle wrassling to do!' he shouted and a few more joined him to approach Tiny. Hah, those guys surely were staring wide-eyed when he bent down and sniffed the one standing at the front! Some of them never saw someone like Tiny up close! Then, in the end, one guy, an African-American soldier, pulled a chocolate bar out of his pocket and offered it to Tiny, who licked it out of his grip and ate it whole.'";
	say "     'Then he grunted, 'You nice. Wanna fuck nice man!' He wasn't joking about it, having tried to grab that very soldier right then and there, ready to lick his face and give him one of his smothering hugs! But Sergeant Alexander stepped in immediately and talked him down, dismissing everyone else afterwards. Soon after, Tiny was brought into the camp and they fed him, with Alexander even brushing his fur and slowly laying down a few ground rules like not being allowed to grab anyone he wanted to fuck. And he didn't have to anyways, with the breeding assignments starting the very next morning, all those soldiers lining up to get filled.'";
	WaitLineBreak;
	say "     Adam looks back at you, blushing for reliving this memory. 'Hope you enjoyed the story time. I might remember a few more things if you ask me later. I'll gladly share them with you!' he said, happily smiling for having talked to you.";
	if Thirst of Adam is 1:
		increase Thirst of Adam by 1;

to say AdamTalkFuture: [Ask Adam about his dreams for the future]
	say "     After you asked him how he felt about living in Camp Bravo, you press on a more personal subject. Specifically, what he wants to do in the future. 'I don't really know how to answer that,' he replies with a shrug, shifting his look to the side. 'From the day I was born, I had my path set. The skills and memories I inherited made me into a natural soldier.' he continues, with his hands low and his fingers intertwined. 'Wasn't given much of a choice, though. Being born in a military camp does that, I guess. The camp needs me, and they teach me well. But... looking at it now, I feel like I might be losing out on a lot of things if I just stay here.'";
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
	if OralVirgin of Adam is false or PenileVirgin of Adam is false:
		say "     You bring the subject of sex to the half-minotaur, who immediately blushes, pulling his shoulder-length hair back and scratching his head slightly. 'It surely is different now... Knowing we can do so much stuff! But we haven't done it all yet, have we?' he asks, and you assure him that there's still a lot more to try and that you'd be willing to do all of it with him. 'That's good! I mean... I can't wait! It's always a blast with you to show me around... and when you're not, my mind occasionally drifts around that subject. Gets me a boner everytime and sometimes I have to take care of it...' Adam's cheeks are so red by now, but he gives you a smile and doesn't shift his gaze from your eyes. Seems like the young soldier is slowly opening up more!";
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
		[]
		if "Cock Connoisseur" is not listed in Traits of Adam and player is male:
			choose a blank row in table of fucking options;
			now title entry is "Show him how to suck cocks";
			now sortorder entry is 2;
			now description entry is "Have Adam give you his first blowjob";
		[]
		if "Pussy Connoisseur" is not listed in Traits of Adam and player is female:
			choose a blank row in table of fucking options;
			now title entry is "Show him how to lick a pussy";
			now sortorder entry is 2;
			now description entry is "Have Adam give you his first cunnilingus";
		[]
		if "Cock Connoisseur" is listed in Traits of Adam and player is male:
			choose a blank row in table of fucking options;
			now title entry is "Have him blow you";
			now sortorder entry is 2;
			now description entry is "Put Adam's mouth to good use";
		[]
		if "Pussy Connoisseur" is listed in Traits of Adam and player is female:
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
		[
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
	say "     ([link]N[as]n[end link]) - Fondle his balls."; [have the player rubbing his ballsack]
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
		say "     Resolving that you wouldn't want to move your hands too far from his dick, you run them down to his balls. He responds with a moan as you fondle them, moving your fingers around his ballsack and squeezing them softly. He keeps moaning as you caress him, causing him to hasten his stroking. His balls are sizable and heavy, filling your hands nicely as you grasp them. Adam lets out a loud groan, which he abruptly interrupts once he realizes his tone, as his breathing quickens. 'Oh... I'm starting to feel...' you immediately understand what he's saying, so you just tell him to keep going... and don't stop. Following your instructions, he accelerates the pace, rubbing his entire length even faster while you caress his balls. The half-minotaur's breathing shortens, getting unstable amidst his moaning voice. 'I'm gonna...' he goes on, as you continue to feel up his gonads.";
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
		say "     You slowly approach Adam with your cock still in one hand, as you move the other onto the back of his head, feeling his shoulder length hair between your fingers. You pull him to you and give him a deep kiss, playfully exploring his mouth with your tongue. You hear and feel him moaning as he jerks his erection even faster while both your cocks rub against each other. He turns to you, moaning 'I'm pretty close...' as you keep up with him, stroking your length as fast as you can. Eventually, you both reach your climaxes, standing as you are, shooting cum all over yourselves. Spurt after spurt, Adam coats your own manhood with his warm seed, some hitting you in the navel and below. You don't last much longer before a mind-blowing orgasm shakes your body, spurting your load on him as he did to you.";
		say "     With both of you drenched in each other's loads, you kiss him again, tongue-wrestling him playfully as you give him a gentle tap on his waist. Takes you a while to realize you need to clean yourselves up before returning to your affairs.";
		now lastfuck of Adam is turns;
	else:
		say "     You slowly approach Adam with your cock still in one hand, as you move the other to feel his proud erection, pulsing with need. Pulling his cock to you, both your precum-coated tips rub against each other. He reaches for yours, causing you to let out a moan of pleasure, as he vigorously strokes your manhood. With both of your meats throbbing, Adam turns to you, moaning 'I'm pretty close...' as you keep up with him, stroking his length as fast as you can. Eventually, you both reach your climaxes, standing as you are, shooting cum all over yourselves. Spurt after spurt, Adam coats your own manhood with his seed, some hitting you in the navel and below. You don't last much longer before a mind-blowing orgasm shakes your body, spurting your load on him as he did to you.";
		say "     With both of you drenched in each other's loads, you kiss him, playfully exploring his mouth with your tongue as you give him a gentle tap on his waist. Takes you a while to realize you need to clean yourselves up before returning to your affairs.";
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
		say "     With both of you drenched in each other's loads, you kiss him again, tongue-wrestling him playfully as you give him a gentle tap on his waist. Takes you a while to realize you need to clean yourselves up before returning to your affairs.";
		now lastfuck of Adam is turns;
	else:
		say "     You slowly approach Adam with one hand still caressing your parts, as you move the other to feel his proud erection, pulsing with need. Pulling his cock to you, he reaches for your pussy, causing you to let out a moan of pleasure, as he begins pushing his fingers inside you. With his meat throbbing and your wet cunt being thoroughly caressed and stroked, Adam turns to you, moaning 'I'm pretty close...' as you keep up with him, stroking his length as fast as you can. Eventually, you both reach your climaxes, standing as you are. Spurt after spurt, Adam coats you with his warm seed, hitting you in the navel and below. You don't last much longer before a mind-blowing orgasm shakes your body. The half-minotaur continues to finger your pussy as you lose yourself in amazing sensations, soaking his hand with your vaginal fluids.";
		say "     With both of you drenched in each other's loads, you kiss him, playfully exploring his mouth with your tongue as you give him a gentle tap on his waist. Takes you a while to realize you need to clean yourselves up before returning to your affairs.";
		now lastfuck of Adam is turns;

to say AdamOral_Male_Virgin:
	say "     You kiss the half-minotaur deeply as you move your hands down underneath his t-shirt and around his waist. With a quick tug, you pull it up and over his head next, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by licking over his chest and neck until you reach the chin and kiss him again. You lean over his ear, and whispering, you tell him that'd you like to introduce him to something new. Letting out a naughty chuckle, you [if player is not naked]slide off your clothes, before[else]give your bare chest a gentle pat as[end if] you stroke the young soldier's hair, pulling him to you gently.";
	say "     At first, it's just more kissing, but he follows your suggestive pushing and heads lower on your face, then to your neck and down to your chest, his soft lips smooching your body where you lead him. One would guess he's probably very clueless at how this is going to end, but one sure thing is the boner that's growing between your legs, just awaiting your dear friend's arrival. However, until then, your beast-boy gets busy teasing your nipples for a while, which only makes you harder and tempted to just push him all the way to your cock immediately, but you fight your urge for now, and his tongue does feel good wrapping itself around the sensitive nubs, one at a time. He also uses his hands to really feel up your body, sliding them across your back and sides. He seems to be teasing you on purpose by taking his sweet time...";
	WaitLineBreak;
	say "     There's no way you can wait so long to be able to teach him about the wonders of having a needy throbbing cock in his mouth, so you push him down yet again. He kisses his way lower as well, his mouth traveling through your torso's frontside, and to your surprise, you feel his fingers wrapping around your length with utmost care, which only makes your cock twitch in response. He looks at you, his breath tickling your dick as his gaze meets yours. Stroking his cheek and slipping your hand behind his neck, then placing it on the back of his head, you give him a gentle push as the tip of your dong is slowly shoved between his lips. Hesitantly, but willingly, Adam takes it in... deeper... and deeper... but he chokes on the way, pulling out with an embarassed look.";
	say "     'Ah... I've never done this before... I-it's gonna be a little messy...' he ashamedly admits, but you let him know that everything's okay and that he has all the time in the world to train his blowjob skills. The half-minotaur shows you a smile as he gives it another try, this time sliding your cock in his mouth slowly as he's comfortable, working his tongue around the glans as he strokes your shaft. Very cautiously, he tests how deep he can take you, [if cock length of player < 8]his efforts fruitful as he manages to take inch after inch of your hard length inside his mouth with relative ease[else if cock length of player >= 8 and cock length of player <= 12]his efforts, albeit with some difficulty given your size, fruitful as he manages to take inch after inch of your hard length inside his mouth[else if cock length of player > 12]but given the grand size of your dick, Adam doesn't really manage to get it all in, despite his efforts. However, several inches of your length were still taken down in his mouth, inch by inch as the half-minotaur gave his very best[end if]. You praise him, which gives your soldier buddy even more motivation to please you, his lips still wrapped around your shaft and taking as much of it as he can.";
	WaitLineBreak;
	say "     Though he said he has never done this before, he performs quite well! The young beast-boy must have already caught a soldier getting blown, or perhaps he's just a quick learner. Soon, he's discovering your sensitive spots, and is confident enough to exploit this, making you delirious with lust with his eager tongue around your cock. His hands are never still, he keeps using them to stroke where his mouth can't go, ocasionally giving your balls a gentle squeeze, and even slides a naughty finger between your buttcheeks at times. Whatever he does, you make sure you give him positive reinforcement, which further excites your pupil. He doesn't let go of your dick, not even for a second nor to catch his breath, and such dedication quickly drives you close to the edge.";
	say "     Despite your attempts at warning him that you're about to cum, he doesn't listen. As it is, he won't give you any other choice but to make him swallow your load, which isn't a bad option at all. He actually seems to want it, given at how hungrily he's sucking you, his lips sliding back and forth through your shaft, the tip of your manhood rubbing against the insides of his throat... It's too much, you can't hold it anymore. And it's when he starts to moan, as if begging you to feed him, looking at your eyes and giving you a tummy rub, you feel your cock exploding in his mouth with a strong spurt of cum sliding down his throat. You can hear him audibly gulping each and every drop you give him, your climax making you feel dizzy with how intense it was.";
	say "     When your orgasm begins wearing off, Adam pulls your cock out, still licking his lips off any jizz that managed to escape through, and you can't help but to smile at him after he's done such a good job. Though it pities you seeing that your beast-boy friend is still hard and throbbing, despite having made you cum. [bold type]How about you praise his efforts in another way?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Give him a kiss and treat him with a handjob."; [Kiss Adam and stroke closer]
	say "     ([link]N[as]n[end link]) - Tease him and let him finish on his own."; [stroke him]
	if Player consents:
		LineBreak;
		say "     With your decision made, you grab the young soldier and make him stand up, then plant your mouth on his, shoving your tongue between his lips. You're still able to taste your own seed in there as you tongue-wrestle your partner, but you shouldn't forget to stroke his ten-inch long wood, craving for your touch so bad that it throbs like mad the second your fingers wrap around his shaft. Adam moans as you kiss him again, and it doesn't take long until he's actually grunting, getting closer and closer to cum with each stroke. With an unforgiving motion, you keep jerking his cock faster and faster, and never stop nor slow down as he shoots his own seed forward, that load looking like a geyser of cum being shot at an immense force.";
	else:
		LineBreak;
		say "     As you've made your decision, you give a nod to the young soldier, telling him to take care of his boner as well. Grabbing him by his chin, you tell him of what a good boy he was, having learned so quickly and pleased you so much. His gaze, however, quickly shifted from your eyes to your still half-hard manhood, standing so close to his face as of now. You can even feel his breath tickling your dick as he's stroking his own, encouraged by you stroking his hair and telling him to cum for you. 'Ahh, [sir]... I'm gonna cum now...!' he informs you with a rather breathy tone, and it takes very little time for it to happen. Soon, his jerking his cock faster and faster, shooting his own seed all over his abs, that load looking like a geyser of cum being shot at an immense force.";
	WaitLineBreak;
	say "     Another lesson learned, and you're both satisfied with the time you spent together. 'This was great!' - he happily says - 'I've already... huh... caught a couple of soldiers doing this. Like, one was on his knees sucking the other... And I've been, since then, thinking of doing this with... you... Because I'm too shy to just approach anyone else with this stuff.' he admits. You can't help but tease him a bit about that, as he just half-confessed that he jerks off while thinking about you. His face gets so flushed that you nearly feel bad for pointing it out, but in fact he doesn't disagree with you. 'You're quite the catch! I mean... it's very hard not to think about you...' he continues, and you end up assuring him that you'll be doing much more together, to which he smiles. 'Hope so! You're the best! Maybe we can do this again next time you show up...?'";
	say "     Eventually, you kiss Adam goodbye, playfully exploring his mouth with your tongue as you give him a gentle tap on his waist. After cleaning yourselves up, you follow on with your own affairs.";
	now lastfuck of Adam is turns;
	now OralVirgin of Adam is false;
	add "Cock Connoisseur" to Traits of Adam;
	NPCSexAftermath Adam receives "OralCock" from Player;

to say AdamOral_Female_Virgin:
	say "     You kiss the half-minotaur deeply as you move your hands down underneath his t-shirt and around his waist. With a quick tug, you pull it up and over his head next, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by licking over his chest and neck until you reach the chin and kiss him again. You lean over his ear, and whispering, you tell him that'd you like to introduce him to something new. Letting out a naughty chuckle, you [if player is not naked]slide off your clothes, before[else]give your bare chest a gentle pat as[end if] you stroke the young soldier's hair, pulling him to you gently.";
	say "     At first, it's just more kissing, but he follows your suggestive pushing and heads lower on your face, then to your neck and down to your chest, his soft lips smooching your body where you lead him. One would guess he's probably very clueless at how this is going to end, but one sure thing is that your groin's feeling wet from all his touching, your womanhood just awaiting your dear friend's arrival. However, until then, your beast-boy gets busy teasing your nipples for a while, which only makes you harder and tempted to just push him all the way to your groin immediately, but you fight your urge for now, and his tongue does feel good wrapping itself around the sensitive nubs, one at a time. He also uses his hands to really feel up your body, sliding them across your back and sides. He seems to be teasing you on purpose by taking his sweet time...";
	WaitLineBreak;
	say "     There's no way you can wait so long to be able to teach him about the wonders and taste of a gorgeous, moist pussy craving for a tongue like yours is, so you push him down yet again. He kisses his way lower as well, his mouth traveling through your torso's frontside, and to your surprise, you feel his fingers caressing your labia with utmost care, which only makes you shudder at any mere touch. He looks at you, his breath caressing your labia as his gaze meets yours. Stroking his cheek and slipping your hand behind his neck, then placing it on the back of his head, you give him a gentle push, allowing him to give your vulva a tender lick, his tongue finding its way all over your genitals in short time.";
	say "     The sensations quickly start to get you as the half-minotaur sloppily makes out with your crevice, though he stops at some point, with a question. 'Am I doing it right? I... I have never done this before, and there aren't many women around here to... you know, uh... observe...' he asks, blushing and a little embarassed, but you rush to tell him that he's doing very well, and that in fact, he should continue his work down there. More confident this time, Adam gives you his best, delighting himself in your love juices that so prominently ooze out of your slit. You can tell he's enjoying himself by the way he drills you deep with his tongue, almost feeling like he wants to be in it! Your legs feel weak at this much pleasure, and you can't help but let out a few moans during the process.";
	WaitLineBreak;
	say "     Though he said he has never done this before, he performs quite well! His skill in sex must have came with his genetics, or perhaps he's just a quick learner. Soon, he's discovering your sensitive spots, and is confident enough to exploit this, making you delirious with lust with his eager tongue-fuck. His hands are never still, he keeps using them to stroke where his mouth can't go, ocasionally giving your clit a teasing rub, or even reaching for your chest and squeezing it in a way that makes you feel very appreciated. Whatever he does, you make sure you give him positive reinforcement, which further excites your pupil. He doesn't let go of your pussy, not even for a second nor to catch his breath, and such dedication quickly drives you close to the edge.";
	say "     Despite your attempts at warning him that you're getting very close to orgasm, he doesn't listen. As it is, it won't take very long until you're melting in pleasure, which isn't a bad option at all. He actually seems to really want it, given the naughty look he gives you as you're squirming in an almost painful antecipation, his tongue wiggling around inside you, so masterfully that you doubt about his inexperience for a second. It's too much, you can't hold it anymore. He's deliberately teasing you, holding you in the edge for a good while, before your body bursts in an overwhelming orgasm. For moments, your vulva grinds against his face, and he doesn't really seem to mind it, as he's in fact grabbing your legs and encouraging you to continue until your climax slowly subsides.";
	say "     When your orgasm begins wearing off, Adam pulls his face from your groin, still licking his lips off any juice that still managed to cling unto his mouth, and you can't help but to smile at him after he's done such a good job. Though it pities you seeing that your beast-boy friend is still hard and throbbing, despite having driven you to climax. [bold type]How about you praise his efforts in another way?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Give him a kiss and treat him with a handjob."; [Kiss Adam and stroke closer]
	say "     ([link]N[as]n[end link]) - Tease him and let him finish on his own."; [stroke him]
	if Player consents:
		LineBreak;
		say "     With your decision made, you grab the young soldier and make him stand up, then plant your mouth on his, shoving your tongue between his lips. You're still able to taste your own sexual fluids in there as you tongue-wrestle your partner, but you shouldn't forget to stroke his ten-inch long wood, craving for your touch so bad that it throbs like mad the second your fingers wrap around his shaft. Adam moans as you kiss him again, and it doesn't take long until he's actually grunting, getting closer and closer to cum with each stroke. With an unforgiving motion, you keep jerking his cock faster and faster, and never stop nor slow down as he shoots his own seed forward, that load looking like a geyser of cum being shot at an immense force.";
	else:
		LineBreak;
		say "     As you've made your decision, you give a nod to the young soldier, telling him to take care of his boner as well. Grabbing him by his chin, you tell him of what a good boy he was, having learned so quickly and pleased you so much. His gaze, however, quickly shifted from your eyes to your still fluid-coated parts, standing so close to his face as of now. You can even feel his breath tickling your clitoris as he's stroking his cock, encouraged by you stroking his hair and telling him to cum for you. 'Ahh, [sir]... I'm gonna cum now...!' he informs you with a rather breathy tone, and it takes very little time for it to happen. Soon, his jerking his cock faster and faster, shooting his own seed all over his abs, that load looking like a geyser of cum being shot at an immense force.";
	WaitLineBreak;
	say "     Another lesson learned, and you're both satisfied with the time you spent together. 'This was great!' - he happily says - 'I'm too shy to just approach anyone else with this stuff. My dad told me about it, but I never bolstered up any courage to get it going with any of the female soldiers... The only person I thought about asking was you, and I thought about it a lot...' he admits. You can't help but tease him a bit about that, as he just half-confessed that he jerks off while thinking about you. His face gets so flushed that you nearly feel bad for pointing it out, but in fact he doesn't disagree with you. 'You're quite the catch! I mean... it's very hard not to think about you...' he continues, and you end up assuring him that you'll be doing much more together, to which he smiles. 'Hope so! You're the best! Maybe we can do this again next time you show up...?'";
	say "     Eventually, you kiss Adam goodbye, playfully exploring his mouth with your tongue as you give him a gentle tap on his waist. After cleaning yourselves up, you follow on with your own affairs.";
	now lastfuck of Adam is turns;
	now OralVirgin of Adam is false;
	add "Pussy Connoisseur" to Traits of Adam;
	NPCSexAftermath Adam receives "OralPussy" from Player;

to say AdamOral_Male: [have Adam suck the player char's cock]
	say "     You pull Adam's face for a deep kiss, putting your arms around him and then sliding your hands into his shorts at the back, feeling and softly squeezing his furred buns. Then you move on to his t-shirt, grabbing it and pulling it up and over his head, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by licking over his chest and neck until you reach the chin and kiss him again. You lean over his ear, and whispering, you ask him to blow you, just like you showed him before, as you move back a step and quickly slide off your clothes. Adam watches you undress, then smiles and eagerly replies 'My pleasure, [sir]!' before he licks his lips and kneels down.";
	say "     Grasping your by now proudly standing erection in one hand, Adam strokes it softly a few times, then holds it up as he gives your balls a tentative lick and runs his tongue up the underside of your shaft, making you pant in pleasure. Arriving at the tip, he circles the head of your cock a few times with his tongue, then takes it between your lips. Your manhood slowly slides deeper into his mouth, his lips caressing the sensitive skin and giving you amazing sensations. Soon, your cock hits the back of his mouth, but Adam takes a deep breath and continues going, sliding your shaft deeper and deeper. When his nose finally bumps into the skin under your navel, you moan loudly from the warm and tight feeling that it gives you.";
	WaitLineBreak;
	say "     Pulling off your cock to get some air, Adam strokes its saliva-coated length some more, then start sucking you off in earnest, pumping his lips up and down on the hard shaft. He keeps going for a while, bringing you to the brink of an orgasm several times, but stopping each time to let you cool down a bit. Then finally he goes all out, sucking on your cock hard and pumping it in and out of his throat. With all the built up arousal, you don't last much longer before a mind-blowing orgasm shakes your body, spurt after spurt of your seed filling Adam's mouth.";
	say "     Adam sticks out his tongue, showing off your white creamy cum, then demonstratively swallows it all. Then he stands up and gives you a deep kiss, making you taste some of your cum and playfully tongue-wrestling with you. 'Hot as always, [sir]! Can we do this again sometime?'";
	now lastfuck of Adam is turns;
	NPCSexAftermath Adam receives "OralCock" from Player;

to say AdamOral_Female:
	say "     You pull Adam's face for a deep kiss, putting your arms around him and then sliding your hands into his shorts at the back, feeling and softly squeezing his furred buns. Then you move on to his t-shirt, grabbing it and pulling it up and over his head, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by licking over his chest and neck until you reach the chin and kiss him again. You lean over his ear, and whispering, you ask him to lick you down there, just like you showed him before, as you move back a step and quickly slide off your clothes. Adam watches you undress, then smiles and eagerly replies 'My pleasure, [sir]!' before he licks his lips and kneels down.";
	say "     As he kneels down and positions his face in reach for your pussy, Adam strokes it softly a few times, before slipping his tongue between your labia in a tentative lick, then running it across your vulva, making you pant in pleasure. Arriving at your clit, he circles it a few times and plants a soft kiss there before going back to your crevice, pressing his lips against your lower ones and shoving his wiggling tongue inside. As he slides it in deeper, you feel yourself being overtaken by amazing sensations, only further stimulated by the ondulating presence around your vulva as well as the warmth of his mouth planted underneath you. With his face almost buried deep in your womanhood, you moan loudly from the feeling that it gives you.";
	WaitLineBreak;
	say "     Pulling out to get some air, Adam caresses and gives your pink pearl some more rubbing, then returns for an even more intense cunnilingus, eating you out in earnest as his energetic tongue finds itself, once more, pressing against your rosebud. He keeps going at it for a while, bringing you to the brink of an orgasm several times, but stopping each time to let you cool down a bit. Then finally he goes all out, wiggling his tongue as well as his face around, giving your clit just enough rubbing to set you loose. With all the built up arousal, you don't last much longer before a mind-blowing orgasm shakes your body, a massive hot wave of pleasure overtaking your senses as your beast-boy licks you vigorously.";
	say "     With a smile on his face, Adam stands up and gives you a deep kiss, making you have a taste of your own love juices and playfully tongue-wrestling with you. 'Hot as always, [sir]! Can we do this again sometime?'";
	now lastfuck of Adam is turns;
	NPCSexAftermath Adam receives "OralPussy" from Player;

to say AdamBJ_Virgin:
	say "     You kiss the half-minotaur deeply as you move your hands down underneath his t-shirt and around his waist. With a quick tug, you pull it up and over his head next, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by licking over his chest and neck until you reach the chin and kiss him again. You lean over his ear, and whispering, you tell him that'd you like to introduce him to something new. Letting out a naughty chuckle, you [if player is not naked]slide off your clothes, before[else]give your bare chest a gentle pat as[end if] you stroke the young soldier's hair, pulling him to you gently.";
	say "     At first, it's just more kissing, but you're soon lowering your lips over the side of his neck, and even give his ear a soft tugging with your mouth, which makes your buddy shiver slightly. Letting out a deep breath, he moves his hands to the backside of your torso, encouraging you to continue. With his receptive attitude set, you're now ready to begin moving even lower, through his shoulder and chest. Now, [if OralVirgin of Adam is false]from what he has done to you before, he must already have an idea of what's going to happen next, his ten inch-long meat beginning to harden visibly from where you're looking with the antecipation[else]one would guess he's probably very clueless at how this is going to end, but one sure thing is the boner that's growing between his legs, unknowingly awaiting your arrival[end if]. You do take your time tugging on each one of his nipples, once again, as you know what that does to him... 'That feels so good... I'm liking this new thing so far...' he says in a breathy tone, obviously bothered by your stimulation.";
	WaitLineBreak;
	say "     Giving those nips a little sucking and a teasing bite, you feel up his body with the rest of your hands as your start kneeling in front of him, then moving your touch lower through his abs, your lips then kissing their way down by his treasure trail. To your surprise, a hand finds its place on your head, stroking your ear and cheek as you look up at Adam. He's biting down his lower lip, and you can feel him begging you with his eyes for what you're about to give him. With a squeeze, you fondle his balls as you place your tongue underneath them, then slowly licking your way up, reaching the base of his shaft and following through the underline towards the tip, causing an shiver running down the half-minotaur's spine as he moans with his teeth clenched.";
	say "     With the sizeable meat in your hands and so close to your mouth, throbbing in its prime, it's time to give the beast-boy some good and long-awaited sucking. Starting with a tentative lick around the glans, your then circle around the sensitive surface before your lips smooch it completely, then it's only a matter of letting them slide through his length, shoving his cock inside your mouth as deep as you're able to take him. Keeping a steady pace, your lips slide back and forth with utmost dedication, giving him the best example of a well-done blowjob. The salty and sweet moisture oozing into your tongue is an indicative of how much he's enjoying you down there, besides the reluctant pushing you're feeling on the back of your head.";
	WaitLineBreak;
	say "     Though that pushing isn't hesitant for long. When you're at it for a while, the young soldier feels confident enough to get a good grasp on the back of your head and start pulling you. Feeling less and less the need to move by your own, eventually you feel like the half-minotaur is effectively facefucking you, and it actually pleases you knowing he's quickly getting the hang of it. You actually encourage him, by letting him do it, and the beast-boy doesn't hold back! With him getting rougher with his motions, it's you who now has to learn how to please this horny hybrid between a human and a minotaur, who's just letting his wild side take control as his cock dives deep in your throat.";
	say "     'I'm... gonna cum...!' he says, amidst some moaning. You inevitably find your nose bumping into his pubes more than once, the large prick bulging out from within your neck, and he gives you no other choice but to swallow his cum, which isn't a bad option at all. Given how good he tastes, his load will be only an improvement, and you can't wait to have it in your mouth. As he thrusts in harder and faster, you feel his manhood throbbing in eagerness as a hot and creamy liquid is shot down your throat. Each spurt is followed by an audible gulp as the half-minotaur pumps all his load in you, holding you tight so that you don't think about pulling out before he's done. With you almost choking on the virile seed, Adam's orgasm seems to subside after a while, and you're free to catch a breath.";
	WaitLineBreak;
	say "     'Ahh! Fuck... Damn...' he pants, dizzy with the intensity of his climax. 'A-are you okay? Hope I wasn't too rough, but... you really drove me nuts with your mouth...' he asks, legitimately preoccupied. Though you really just assure him that he did very well, and that there isn't an issue in being in control sometimes. 'Yes, I... loved this! I mean... I like when you order me around, but... This was really good, too... We can keep switching around, right?' he asks. It sounds like Adam enjoys filling you with his cum once in a while, and you can't say it's bad, either. Looks like you'll have a naughtier half-minotaur around after this one! 'So... Maybe we can do this again next time you show up...?'";
	say "     Eventually, you kiss Adam goodbye, playfully exploring his mouth with your tongue as you give him a gentle tap on his waist. After cleaning yourselves up, you follow on with your own affairs.";
	now PenileVirgin of Adam is false;
	NPCSexAftermath Player receives "OralCock" from Adam;

to say AdamBJ: [suck Adam's cock]
	say "     You pull Adam aside and lead him behind one of the long storage shelves in the tent. Giving him a deep kiss, you put your arms around him and slide your hands into his shorts at the back, feeling and softly squeezing his furred buns. Then you move on to his t-shirt, grabbing it and pulling it up and over his head, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by a line of kisses down over his abs until you're crouched in front of the half-minotaur. Stroking the obvious bulge of his cock through the fabric of his shorts, you have him moaning needfully in no time. You smile up at Adam, undoing the zipper of his shorts, then pull them down off his legs, freeing his proudly erect human manhood.";
	say "     Starting with a tentative lick over his balls, you run your tongue along the side of Adam's long shaft, circling the head of his cock as you get to it. You stroke his dick with your hand a few times, then take its tip between your lips. Adam moans as you slowly slide his manhood deeper into your mouth, running your tongue over its sensitive skin. Soon, he hits the back of your mouth, but you take a deep breath and continue going, sliding his shaft deeper and deeper. When your nose finally bumps into the skin under his navel, you have Adam halfway down your throat and gasping almost incoherently how good it feels.";
	WaitLineBreak;
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
Section 5 - Fitness Training
[***********************************************************]
[***********************************************************]
[***********************************************************]

to say AdamFitness:
	if Stamina of Adam - turns < 9: [trained together in the last 24 hours]
		say "     As you consider training with Adam again, your sore muscles remind you that you've already had enough for today. As good and healthy as exercise is, you probably shouldn't overdo it. Body needs to recover, or you'll risk a serious injury, not to mention that you need to stay capable of defending yourself against the many threats overrunning this dangerous city. In the end, you reconsider and decide to not bring that up, leaving the shared workout for another time.";
	else: [ready for training]
		if Hunger of Adam is 0: [first time bringing up the subject]
			say "     You walk up to the half-minotaur, recalling that he mentioned a daily workout routine in one of your conversations. Bringing up the subject, you ask him if you could join him at some point. 'Are you sure about that? I mean, that's great! But it's really demanding! This is a military camp, after all!' Despite his attempts at warning you, he can't hide the excitement of having you accompanying him, were it not for his usually blushing cheeks whenever he sees and talks to you. But the proposal is serious, and you make sure he understands that. Giving him a friendly squeeze around his bicep, you also take the chance to compliment his broad musculature in an attempt to flatter him, leaving Adam chuckling shyly. Whatever he does shows some obvious results in his body, as you can't help but notice how firm his arm feels under your palm.";
			say "     'Well, if that is what you want, I'd gladly show you the ropes!' he says with a bright smile, gesturing you to walk out of the tent by his side. You both share some circumstantial talking while moving out of the camp, allowing the beast-boy to lead you towards where he usually does his training, mostly around the camp with a few key open areas. 'Stretching is important, you should never forget warming up first, especially if you're going for something intense!' he informs you as he gives instructions on how you should do it. You simply follow what he does, which takes about a couple of minutes.";
		else if Hunger of Adam is 1: [worked out with Adam once]
			say "     You walk up to the half-minotaur, decided that you want to have another go at his demanding military routine. Bringing up the subject, you ask if you could join him again. 'Well, since you weren't half bad on the first time, I suppose I can put you through another session!' Clearly enthusiastic, Adam pats you in the shoulder as he gestures you to walk out of the tent by his side. You both share some circumstantial talking while moving out of the camp, allowing the beast-boy to lead you towards where you did your training before. He goes on about the usual warm-up exercises as you follow after him.";
		else if Hunger of Adam is 2: [working out regularly]
			say "     You walk up to the half-minotaur, decided that you want to have another go at his demanding military routine. Bringing up the subject, you ask if you could join him again. 'Good timing! I was just about to go, if you want to tag along!' Happy to see you, Adam pats you in the shoulder as he gestures you to walk out of the tent by his side. You both share some circumstantial talking while moving out of the camp, allowing the beast-boy to lead you towards where you did your training before. He goes on about the usual warm-up exercises as you follow after him.";
		WaitLineBreak;
		let randomnumber be a random number from 1 to 3;
		if randomnumber is:
			-- 1: [resistance training]
				say "     'Today we're going for some jogging, so I hope you're ready to get those legs to work!' says the half-minotaur as he starts to run ahead of you, a clear sign that it's time to move out. With quick steps, you dash to his side, keeping up the pace with the beast-boy. Both of you jog around the camp at a comfortable pace, starting to build up a sweat once you've completed a lap. You run for about more twenty minutes before your start running out of stamina, but Adam starts slowing down before you have to say anything. 'Alright, that's enough running for now, but we're not done yet.' he warns as he gives your shoulder a pat, gently pushing you towards a spot on the ground. 'We're gonna do some quick push-ups and sit-ups, now! Let's get on it!'";
				say "     With barely enough time to catch your breath, you get in position next to him, lying down with your hands on the ground for the push-ups. Following his count the best way you can, you do one series, then shift to the sit-ups, and repeating a few couple of times before he tells you it's time to get up. You look at the half-minotaur, his flushing red face drenched in sweat, as must be yours, along with his t-shirt which tightly holds around his torso. Taking a few seconds to catch your breath, he charges ahead, shouting 'one more lap!' as he glances back at you. At the very brink of exhaustion, you do one last effort to accompany him through the end of the workout.";
				WaitLineBreak;
				say "     As you reach the end of the lap around the camp, Adam slows down, walking at a recovering pace as he waits for you to reach his side. 'That was a good one! [if Hunger of Adam is 0]I'm glad you could keep up with me, it seems you could fit in the military, after all![else]I'm glad we had another workout together! You just keep getting better at it.'[end if] he says, panting amidst his speech as he throws you a genuine smile, holding his shoulder-length hair back as a few drops of sweat run down his blushing face. You can feel his mild musky scent from here, intensified by the heat of exercise as the sight of the panting beast-boy captivates your attention. As you make it back to the camp, the half-minotaur fetches you a towel from the tent to allow you to dry yourself off, as he does the same.";
				if a random chance of 1 in 3 succeeds:
					StatChange "Stamina" by 1;
			-- 2: [weight training]
				say "     'Today we're having some muscle work. It's important to keep fit and strong, especially around here. We'll run up the hill and return to do some weight exercises, understood?' he says in a commanding tone you weren't expecting and you give him a surprised expression, to which he laughs at. 'Let's get started, then!' he adds before gesturing you to follow him. The terrain elevation he puts you through is, indeed, very effective at tiring your legs. Doesn't take you long to start sweating and feeling your muscles starting to struggle. Adam, however, seems very into it. Perhaps it's those furred limbs of his being naturally stronger, giving him the advantage. Nonetheless, you give your best to not disappoint the young soldier.";
				say "     You both make it to the top of the hill, and you're barely given time to catch your breath. 'Alright, we're done going up. Now we return!' he says, immediately starting to walk back. You think going down is an easier task, but it turns out to be more difficult than you anticipated. Part of you just wants to roll over and let gravity take you, as you can barely feel your legs from all the physical effort, but besides that looking rather silly, you're sure the half-minotaur would scold you. Slowly arriving at your next destination, Adam compliments your performance before he heads inside the camp to grab the weights he talked about.";
				WaitLineBreak;
				say "     'Now that we're properly warmed up, it's time to get on these. Let's do a few series of each, just go along with what I do.' he instructs as he goes about all the exercises he's proposing. Some you do with him without a problem, but there are others you actually need his help to get the hang of it, namely regarding technique and execution. The young soldier's hands sometimes find their way on certain areas of your body - rather gently - so you can adjust your position and properly exercise your muscles. After all the intense workout he put you through, he tells you to stand up to do some more, promising it's the last for today.";
				say "     When you're done with what he asks, you're both sweaty and tired, but made it to the end without giving up. 'That was a good one! [if Hunger of Adam is 0]I'm glad you could keep up with me, it seems you could fit in the military, after all![else]I'm glad we had another workout together! You just keep getting better at it.'[end if] he says, panting amidst his speech as he throws you a genuine smile, holding his shoulder-length hair back as a few drops of sweat run down his blushing face. You can feel his mild musky scent from here, intensified by the heat of exercise as the sight of the panting beast-boy captivates your attention. As you make it back to the camp, the half-minotaur fetches you a towel from the tent to allow you to dry yourself off, as he does the same.";
				if a random chance of 1 in 3 succeeds:
					StatChange "Strength" by 1;
			-- 3: [sparring]
				say "     'Today we'll be practicing reflexes and precision. No, we're not shooting anything, just sparring. You're with me on this?' he asks you with a smile, placing himself in front of you with his hands up. Nodding, you follow him and do the same, but before you can raise your hands, he continues 'Let's train some self-defense moves.' Seems like a good opportunity to learn a few more moves and tricks to aid you in battle. You both train some blows and strikes on each other, including escape techniques and defensive blocks. At first, this doesn't seem like an especially tiring exercise, but Adam keeps you going, and soon, you're starting to work up a sweat.";
				say "     'More important than strength is knowing where to strike and how to move around your opponent. A well-delivered blow can save you in a pinch.' The half-minotaur is a surprisingly good teacher. Soon, you're performing all the new moves somewhat decently, dodging and blocking most of his attacks, and he praises you for that. However, fighting a military soldier hand-to-hand, especially someone with animalistic genes, proves to be a much greater challenge than one could anticipate. Inevitably, the beast-boy completely outmatches you with a sequence of moves and quick blows too fast for you to even understand that send you to the ground.";
				WaitLineBreak;
				say "     Being temporarily dazed, you look to Adam as he extends his hand to help you get up. 'Alright, we're over for today, you took enough beating!' he playfully mocks you, and as a little revenge, you actually push him instead of standing up, making him fall on top of you. As you tease him with the talk about speed and reflexes, which he clearly didn't have right now, the half-minotaur laughs it off and points your [']lack of finesse['] in the way you turn the tables. However, during the brief moments of silence, you see the young soldier blushing and nervously chuckling, as he realizes he's sitting on top of you. Getting up, you decide not to pull another prank at your friend and just return to camp together.";
				say "     'Well, that was a good one! [if Hunger of Adam is 0]I'm glad you could keep up with me, it seems you could fit in the military, after all![else]I'm glad we had another workout together! You just keep getting better at it.'[end if] he says, panting amidst his speech as he throws you a genuine smile, holding his shoulder-length hair back as a few drops of sweat run down his blushing face. You can feel his mild musky scent from here, intensified by the heat of exercise as the sight of the panting beast-boy captivates your attention. As you make it back to the camp, the half-minotaur fetches you a towel from the tent to allow you to dry yourself off, as he does the same.";
				if a random chance of 1 in 3 succeeds:
					StatChange "Dexterity" by 1;
		LineBreak;
		say "     [bold type]Having spent a nice little while with Adam, just working out and talking, you somehow feel a bit more like yourself again.[roman type] It's nice to have someone to share a few moments with.[line break]";
		SanBoost 10;
		now Stamina of Adam is turns;
		WaitLineBreak;
		say "     As you exchange a few more words about workout and fitness, to which Adam seems very eager in talking about, he then turns to you as you seemed to be about to part ways. [if Hunger of Adam is 0]'By the way, we've got working showers here, at the camp, if you ever need to use them. I'm heading off to take one right now, so...[else]'Anyway, I'm about to head off for a shower now, so...[end if] do you, uh... want to tag along?' he shyly asks as he scratches the back of his head, tilting it slightly to the side. Seems he's either inviting you to some hot and steamy time, or just genuinely caring about your hygiene affairs, as you're indeed a little stinky right now.";
		say "     [bold type]Do you join Adam in the Camp showers?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Why not? He's such a good company, after all.";
		say "     ([link]N[as]n[end link]) - You'll clean yourself after him.";
		if player consents:
			Linebreak;
			say "     You reply to the half-minotaur with a nod as you start walking with him to the shower tent, following his lead through the camp. [if Hunger of Adam is 0]It seems they even have warm water, thanks to a generator you can hear chugging not too far from here. 'Oh, hope you don't mind the noise. It's all we can get with the power shortage if we don't want cold showers.' says the young soldier, referring to the noisy energy source.[else]You can hear the generator chugging not too far from here, which is a good sign, as you won't have to take a cold shower with your soldier buddy.[end if] When you approach the tent, Adam goes in first, leaving his towel on a nearby counter, as you do the same. The water tubes are connected from the outside, forming a clever contraption at the upper part of the tent, where the water comes out through shower faucets, controlled by two typically circular handles on each showering spot, in which temperature can be regulated. There's obviously nothing separating these areas, all soldiers are to stand naked in front of each other while bathing their fit and dirty bodies.";
			say "     [If player is naked]Moving right into the showers, as you have no clothes on[end if]Removing your gear, you move right into the showers and test the water as you exchange some more talking with your beast-boy friend, who stutters a little as he sees you naked in front of him. Focusing on taking his clothes off, the half-minotaur turns around and gets on it, leaving you with an obvious choice to make.";
			say "     [bold type]Would you take the chance to peek at his physique while he's undressing?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - It would be a nice sight, wouldn't it?";
			say "     ([link]N[as]n[end link]) - Leave him be for now.";
			if player consents:
				Linebreak;
				say "     You can't shake off the temptation when you glance at his athletic half-human body as he takes his sweaty t-shirt off with a quick tug, having a good look at his broad shoulders and well-built backside. Every corner of his torso is slightly glistening with the light and his muscles are still pumped from all the exercise time he shared with you. He takes off his shorts as well, sliding them through his furred legs and kicking them to the side, and your eyes inevitably land on his firm buttocks, covered in brown fur, as his soft meaty prick hangs above his nicely sized ballsack on the front, that is, when you're able to catch a glimpse at them once he turns to the side, facing the shower and walking to it. You get the feeling he notices you peeking, but you're not really caring at this point, as an arousing sensation starts building up around your groin, only further intensified by the warm water running over your body.";
				if PlayerFucked of Adam is true:
					AdamShowerSex;
				else:
					WaitLineBreak;
					say "     There's very little talking happening between you both, only the sound of the running water reaching your ears as you wash your body. Something must be keeping the beast-boy from facing you, but you smile to yourself, knowing exactly what. You even hear Adam taking a deep breath, not because of how relaxing the water feels, but due to you being there, naked and at an arm-length distance of each other, and you could swear you saw his dick twitch a little. If the whim struck you, offering to rub his back would be a possibility. Feeling up his body as your hands slid all over his bare musculature, bathing very close to him, sharing the soap... But it might be better if you do this elsewhere, before someone shows up, as this isn't an exactly private place to have your first time with the shy half-minotaur. However, you're obliged to hide your arousal, as all the fantasizing made your blood rush. You wouldn't want to bother poor Adam even more, would you?";
					say "     Eventually, you finish your shower, turn off the water and grab a towel to dry yourself off. The young soldier follows you soon, redressing himself [if player is not naked]as you do the same[else]while you wait for him[end if]. You give each other a pat and move out of the shower tent, feeling clean, refreshed, and a little bit sore. 'Anytime you're around, if you feel like sweating a bit, hit me up at the usual place!' says Adam as he walks away with a smile on his face, returning to his post shortly after.";
			else:
				Linebreak;
				if PlayerFucked of Adam is true:
					say "     Dismissing the thought, you turn your focus on rubbing your body off all the dirty bits caused by the intense workout. Adam later joins you after having removed his clothes, approaching the shower and turning his water on, cautiously testing its temperature as you did. 'Can never be too careful with these things, sometimes it comes out as too hot when you first turn it on.' says Adam as he turns to you, giving your body a quick glance and immediately blushing like always. Despite having already had some sex together, he's still very shy around you, but you know for sure that he likes what he sees, were it not for his half-hardening member that he's somewhat embarassed of showing.";
					AdamShowerSex;
				else:
					say "     Dismissing the thought, you turn your focus on rubbing your body off all the dirty bits caused by the intense workout. However, you don't hear his hooves clopping for a while. That is, until you bend over to slide your hands across your legs with the soap. Out of curiosity, you glance around, only to catch Adam turning around in a rush, quickly stripping off his clothes and nearly getting his furred legs tangled between his shorts. You think for a second that he's about to lose his balance, but fortunately that doesn't happen, as he kicks the shorts to the side and heads to the shower. Pretending you didn't see anything, you turn back to your own affairs, but can't help wondering if he wasn't peeking at you.";
					WaitLineBreak;
					say "     There's very little talking happening between you both, only the sound of the running water reaching your ears as you wash your body. Something must be keeping the beast-boy from facing you, but you smile to yourself, knowing exactly what. You even hear Adam taking a deep breath, not because of how relaxing the water feels, but due to you being there, naked and at an arm-length distance of each other, and you could swear you saw his dick twitch a little. If the whim struck you, offering to rub his back would be a possibility. Feeling up his body as your hands slid all over his bare musculature, bathing very close to him, sharing the soap... But it might be better if you do this elsewhere, before someone shows up, as this isn't an exactly private place to have your first time with the shy half-minotaur. However, you're obliged to hide your arousal, as all the fantasizing made your blood rush. You wouldn't want to bother poor Adam even more, would you?";
					say "     Eventually, you finish your shower, turn off the water and grab a towel to dry yourself off. The young soldier follows you soon, redressing himself [if player is not naked]as you do the same[else]while you wait for him[end if]. You give each other a pat and move out of the shower tent, feeling clean, refreshed, and a little bit sore. 'Anytime you're around, if you feel like sweating a bit, hit me up at the usual place!' says Adam as he walks away with a smile on his face, returning to his post shortly after.";
		else: [didn't join Adam]
			Linebreak;
			say "     You let the half-minotaur know that you'll take care of that later, telling him to go on ahead. 'Alright, then. Well, if you happen to be around and feel like sweating a bit, hit me up at the usual place!' You give each other a pat as he walks away with a smile on his face, returning to his post shortly after.";

to AdamShowerSex:
	say "     Standing at an arm-length distance from each other, there's very little talking happening between you both, only the sound of the running water reaching your ears as you wash your body. However, despite the young soldier's shyness, he keeps throwing looks at you and even attempts to initiate conversation. 'Well... The workout has been doing you good!' he breaks the silence, smiling a lot as your eyes meet once again. One would think he invited you to join him in the showers half-expecting something to happen, and the mood is just right, as you've both forgotten all about washing for a moment. There is something you could do for him in response, if you so desire, or simply reply with sympathy as you carry on.";
	say "     [bold type]Do you want to go with the flow and do something with Adam?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Step ahead and get him nicely soaped.";
	say "     ([link]N[as]n[end link]) - Retribute the compliment and finish showering.";
	If player consents:
		LineBreak;
		say "     With clear sexual tension between you two, there's just no chance you can resist getting hot with your beast-boy friend. As the young soldier is genuinely complimenting you, there's a need you feel in retributing his kindness by saying how good he looks, and how you'd love to show him a good time under the shower. He seems hesitant at first, as this isn't exactly a private place, but since nobody seems to be around for the moment, he lets you approach him. You then get to what your had in your mind, grabbing the soap in one hand and gently rub it across his back, while moving the other hand around his shoulders with a gentle squeeze. There's definitely solid musculature all over him, and you do your best to appreciate all the hard work the young soldier puts into his body by properly feeling him up.";
		say "     'You're good at that. The way you rub...' he comments as his breathing gets deeper and your hands move lower, past his lumbar area. 'I mean, the massaging and all...' his voice suddenly interrupted by a soft moan as your hand slides around his furred buttocks. Out of plain boldness, you move it between them teasingly before you return to your main purpose, getting a pleased reaction from the half-minotaur. He leans his head back, feeling the water running down his torso, and unexpectedly, you feel his hands on your wrists, pushing them to his front, making you drop the soap as your body is brought closer to his. He says nothing, only a huff of pleasure as he feels your nimble grip around his chest.";
		if PenileVirgin of Adam is false:
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Get your hands on his cock.";
			say "     ([link]N[as]n[end link]) - Go down on your knees and give him a steamy blowjob.";
			if player consents:
				AdamShowerHandjob; [Give him a handjob]
			else:
				AdamShowerBlowjob; [Adam gets blown on shower]
		else:
			WaitLineBreak;
			AdamShowerHandjob; [Only Scene possible]
	else:
		LineBreak;
		say "     The young soldier is genuinely complimenting you, as you can see in his smile, so you find yourself in the need to retribute by saying how good he looks and how rewarding these workouts feel. By leading the talk to the subject of fitness, goal achievement and self-improvement, time flies past you as, eventually, the showering session ends. You turn off the water and grab a towel to dry yourself off. The half-minotaur follows you soon, redressing himself [if player is not naked]as you do the same[else]while you wait for him[end if]. You give each other a pat and move out of the shower tent, feeling clean, refreshed, and a little bit sore. 'Anytime you're around, if you feel like sweating a bit, hit me up at the usual place!' says Adam as he walks away with a smile on his face, returning to his post shortly after.";

to AdamShowerHandjob:
	LineBreak;
	say "     There isn't much bathing happening right now, as you're deliberately teasing Adam around his sensitive spots, especially his nipples. You even give them a gentle squeeze, pulling out a moan from the beast-boy, before you slide your hands down over his rippled abs and below. He lets you, and you're sure about what you'll feel in your grasp, a nice and throbbing ten inches long erection, perfectly human in shape, hardened by your loving touch. As soon as you wrap your fingers around it, Adam breathes deeply, to which you respond by kissing his neck and embracing him tighter. It doesn't stop there, as he turns his face to meet yours, your lips colliding with his shortly after. Rubbing his boner like only you know how, you share an intimate tongue play as the half-minotaur's hips start to give in, moving slightly with his dick under your care.";
	say "     Gently turning the rest of him around to face you, Adam caresses the back of your head and pulls you, so you can both share the warm touch of the running water. His hands move around your chest, then to your [if player is male]cock and balls[else]genitalia[end if] to retribute the favor, and you find yourselves masturbating each other while making out, forgetting all about the world around you for a moment. As you're about to be driven over the edge, you stroke the young soldier faster and faster, to which he responds by doing his best to bring you to orgasm. Sharing some more tongue and hot saliva, you hear - and feel - the half-minotaur releasing a grunt as his grasp around you tightens. His [if player is male]skilled hands wrapped around your cock make you cum all over his abs[else]skilled fingers rubbing around your vulva make you hit your climax[end if] shortly after, and he doesn't stop stimulating you until the end of it.";
	WaitLineBreak;
	say "     Not shortly after follows your beast-boy friend, shooting his load towards your torso, spurt after spurt. Were it not for the water, you would have caught a cum bath from the half-minotaur. Instead, his seed was washed off the instant it hit your body, and you're left catching your breath as you slow down your stroking on the young soldier. 'This was good... you're so much fun to have around.' he says before he plants another kiss on your lips. 'We should probably finish up here before someone comes.' With the point taken, you both hurry up washing whatever's left from your sensual affair, turn off the water and grab a towel to dry yourself off. The half-minotaur follows you soon, redressing himself [if player is not naked]as you do the same[else]while you wait for him[end if]. You give each other a pat and move out of the shower tent, feeling clean, refreshed, and a little bit sore. 'Anytime you're around, if you feel like sweating a bit, hit me up at the usual place!' says Adam as he walks away with a smile on his face, returning to his post shortly after.";
	now lastfuck of Adam is turns;

to AdamShowerBlowjob:
	LineBreak;
	say "     There isn't much bathing happening right now, as you're deliberately teasing Adam around his sensitive spots, especially his nipples. You even give them a gentle squeeze, pulling out a moan from the beast-boy, before you slide your hands down over his rippled abs and below. He lets you, and you're sure about what you'll feel in your grasp, a nice and throbbing ten inches long erection, perfectly human in shape, hardened by your loving touch. You don't stop there, because while you were moving your touch lower, you were bending your legs, soon to be on eye level with his cock. The warm water surely made his boner wet, shining before your gaze with an admirable solidity.";
	say "     Once you're done adoring the view, you eventually lean over his prick, not to lick it just yet, but instead you go for his plump ballsac. Sliding them in between your lips, you then suck on each testicle gently, all while the water runs down the half-minotaur's body. Adam lets out a soft moan as you play with his balls, then give him some stroking on his shaft, licking its underline all the way back to the tip and circling around his glans. You're now ready to take it in your mouth, sliding it in slowly until his dick is halfway inside, giving him a gentle twist around his length before pulling back, then forward again, this time deeper. Going past half his ten inches, you then push it into your throat with a swallow until your nose bumps into his pubes, causing some sexual grunting on the young soldier.";
	WaitLineBreak;
	say "     With his hands caressing the back of your head, Adam lets you go at your own pace, enjoying the sensations of the warm water raining over your bodies coupled with the pleasure of your mouth on his cock. It's when you pull it out almost completely, leaving only your lips hugging the tip, that you take a glimpse upwards. Seeing him with his eyes closed, biting down his underlip and leaning his head backwards, his breathing deep and slowly hastening, fills you with the satisfaction of a job well done. You give his abs a firm rubbing as you prepare yourself to suck him eagerly, shoving his full length back into your mouth, and with your other hand you fondle his ballsac carefully and gently. Then you're back on sucking him, alternating between fast, deep motions and slow, teasing movements.";
	say "     It's not long before the half-minotaur gives signs of being close to climax, something that you read given his quick huffs and moaning cries, so you keep him on edge for a little longer. 'P-please, I gotta cum...' he begs you, and you could tell he's trying his best not to force your head deep and fuck your face like a primal sex-driven beast. Seeing Adam almost squirming in lust is only encouragement to give his meat a couple more strokes, enough to set the half-minotaur's load off, being pumped out through his prick in a surprising burst that hits your face, painting it in white with his creamy seed. You let him finish his orgasm before you try to open your eyes, and were it not for the water, it'd be very difficult to clean off, as you've just earned yourself a complete facial.";
	WaitLineBreak;
	say "     You hear Adam chuckling at you, helping you wash your face off any cum left, then grabbing you up for a passionate kiss. His hot and wet body rubs against yours as you enjoy your shower moment just a little longer. 'This was good... you're so much fun to have around.' he says before he plants another kiss on your lips. 'We should probably finish up here before someone comes.' With the point taken, you both hurry up washing whatever's left from your sensual affair, turn off the water and grab a towel to dry yourself off. The half-minotaur follows you soon, redressing himself [if player is not naked]as you do the same[else]while you wait for him[end if]. You give each other a pat and move out of the shower tent, feeling clean, refreshed, and a little bit sore. 'Anytime you're around, if you feel like sweating a bit, hit me up at the usual place!' says Adam as he walks away with a smile on his face, returning to his post shortly after.";
	now lastfuck of Adam is turns;
	NPCSexAftermath Player receives "OralCock" from Adam;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 6 - Ending
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
