Version 3 of Deer by Stripes begins here.
[Version 3.6 - Updated code and new scenes - Defth]
[- Originally Authored By: Nuku Valente -]

[ HP of Susan                             ]
[ 0 = not active                          ]
[ 1 = angry - creature                    ]
[ 3 = stag with Dr. Matt                  ]
[ 4 = happy - NPC w/Dr. Matt              ]
[ 50+ = NPC w/Dr. Mouse                   ]
[ 50 = Moved, nothing new                 ]
[- 12 turn delay from arrival -           ]
[ 51 = Requested food/water               ]
[ 52 = Received food/water                ]
[- 16 turn delay & hospquest 18+ -        ]
[ 53 = Lab coat                           ]
[ 54 = Returned extra supplies            ]
[ 73+ Doe-buck w/Dr. Mouse                ]
[ 73 = Doe-buck Susan                     ]
[ 74 = Returned extra supplies            ]


[ Libido of Susan                         ]
[ 0 = regular form                        ]
[ 1 = doe-buck form                       ]

"Adds a deer to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Event

Table of GameEventIDs (continued)
Object	Name
Unusual Creature	"Unusual Creature"

Unusual Creature is a situation.
ResolveFunction of Unusual Creature is "[ResolveEvent Unusual Creature]". It is inactive.
Sarea of Unusual Creature is "Park".

to say ResolveEvent Unusual Creature:
	say "     Wandering through the wildly overgrown park, your ears pick up a faint sound and you decide to check it out. Carefully bending aside a branch, you peer into the bushes and see a bipedal deer woman not too far away in the underbrush. She doesn't appear to be wearing clothing and has only the fur on her body to protect her from the elements, which allows you to realize that she's not quite completely female, instead having a thick black shaft dangling between her legs. The hermaphrodite is crying quietly, face buried in her palms and her body curled against a tree. She doesn't react as you slip in closer, not even noticing you until you're almost on top of her. She gasps loudly when she does notice you, throwing herself back against the tree with wide eyes.";
	say "     'Don't look at me! I'm a monster,' the anthro deer cries out, trying futilely to cover her nonhuman form with arms and hands. Clearly, she's retained a much more human self-image than most infected in the city. Tension and stress is visible in everything from her stance to the somewhat shrill tone of her voice. You can see the muscles in her legs tremble, possibly preparing for all out flight from you."; [maybe add her reacting to nonhumans/humans]
	LineBreak;
	say "     [bold type]Quick! What do you want to do with the deer?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Grab her before she runs off";
	now sortorder entry is 1;
	now description entry is "You were asked to bring her in by Dr. Matt and she's freaking out right now. Sometimes one has to be a little forceful with people.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Try to calm her down and console her";
	now sortorder entry is 2;
	now description entry is "A calm voice and a smile sometimes can work wonders with desperate and distraught people. You can take her to Dr. Matt once she's more relaxed.";
	[]
	if Libido of Player > 50 and player is male:
		choose a blank row in table of fucking options;
		now title entry is "Jump the woman and fuck her";
		now sortorder entry is 3;
		now description entry is "Dominate the doe and then take her to Doctor Matt. Having a little fun with before he examines her should be no problem, right?";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Just tell her to follow you.[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> ";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Grab her before she runs off"):
					say "[Unusualgrab]";
				if (nam is "Try to calm her down and console her"):
					say "[Unusualconsole]";
				if (nam is "Jump the woman and fuck her"):
					say "[Unusualfuck]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Unsure what to do, you just stand and wait. She eventually stops her crying and looks up at you with a confused expression. 'What do you want?' the anthro deer asks, shifting her weight from one hoof to the other. 'I - I'm Susan. But... aren't you horrified by this freaky body of mine? I mean, you don't seem to be one of the rape-y ones, so what's your deal hanging out with the ugly mutant?' Calmly stating that she's far from that, you smile at her and explain that there's actually someone working on understanding and fixing this whole mess. Susan looks around at the overgrown park, then up at the colossal form of a wyvern circling high in the sky. Finally she shrugs her furred shoulders. 'I really doubt that will work, but I guess I don't have anything better to do,' she muses, then nods for you to lead the way.";
			DrMattSusanLabArrival; [this is found in the file Main Storyline.i7x]
			now Unusual Creature is resolved;
			now Resolution of Unusual Creature is 1; [Told Susan to follow you]
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	wait for any key;
	clear the screen and hyperlink list;

to say Unusualgrab:
	say "     With a quick lunge forward, you grab hold of one arm of the long-limbed doe. Her brown fur is soft to the touch under your fingers and pleasantly warm, creating a counterpoint to the woman's shrill squeal of terror and her trying to pull away from you. 'NoNoNoNo! Let me go!' she whimpers while struggling to escape, her whole attention on simply getting away. Not making any aggressive move even in a situation like this, you don't have too hard a time curtailing all attempts of escape and soon pin her against the tree, arms held down against her sides. She seems to resign herself to being your prisoner after another moment or two, then finally says, 'I - I give up. P-please be gentle, alright? I'm Susan.' Clearing your throat, you explain that you're not actually here for any sort of sex and instead just want to bring her to someone who's working on understanding and fixing this whole mess.";
	say "     Susan looks left and right at the overgrown park, then up at the colossal form of a wyvern circling high in the sky. Finally she shrugs her furred shoulders. 'I really doubt that will work. Or maybe it will work, if the guy has his own goon squad.' The last sentence is said sullenly, with her gaze resting straight on yourself, prompting you to soften your grasp a little and apologizing for being a little rough. But of course, who knows what trouble she may have run into if you had let her go. This argument mollifies the anthro doe a little, until she finally says, 'Fine. Okay. Maybe you are right. I'll meet your scientist buddy.' Then she nods for you to lead the way.";
	DrMattSusanLabArrival; [this is found in the file Main Storyline.i7x]
	now Unusual Creature is resolved;
	now Resolution of Unusual Creature is 2; [Grabbed Susan]

to say Unusualconsole:
	project the Figure of Susan_face_icon;
	say "     Raising your hands in a consoling gesture and smiling at her, you tell the anthro doe that she has nothing to fear from you and is far from being a monster. There is a slight pause in her sobbing and she looks doubtfully past her hands, really focusing on you for the first time. Slowly reaching out, you hold an open hand for her to take, which she does with some hesitation. Rubbing your thumb gently over the soft fur of her hand, you tell her that she's not ugly at all. 'B-but I'm a freak. A creature just like all of those... those feral beasts!' she sniffs. Giving her further encouraging words, she slowly warms up to you, then leans in against your chest, prompting you to put a hand on her shoulder. This must have been some sort of signal to her, as she suddenly pulls you even closer and kisses your mouth firmly, her slender snout up against your face for a long moment. 'I'm Susan,' the young woman says with a hopeful tone, for the first time daring to believe that someone could accept her even as she is now.";
	say "     As you explain that there's actually someone working on understanding and fixing this whole mess, Susan looks around at the overgrown park, then up at the colossal form of a wyvern circling high in the sky. Finally she shrugs her furred shoulders. 'I really doubt that will work, but I guess I'll come. For you. I hope it'll help,' she says quietly, then nods for you to lead the way.";
	DrMattSusanLabArrival; [this is found in the file Main Storyline.i7x]
	now Loyalty of Susan is 1; [consoled or fucked]
	now Unusual Creature is resolved;
	now Resolution of Unusual Creature is 3; [Consoled Susan]

to say Unusualfuck:
	project the Figure of Susan_face_icon;
	say "     Just going ahead and pulling your [Cock of Player] cock out, you lunge forward and grab hold of the long-limbed doe. She doesn't have time to do much more than let out a frightened squeal before she is pushed down to the ground, falling onto the leaves with her belly up. It doesn't look like there is any aggressive bone at all in her body, as she doesn't try to defend herself even in this situation, allowing you to spread her legs wide with ease. 'No, wait! I- oooohhhhHH!' she starts to say, then gasps out loud as you hammer into her wet, receptive pussy. The hermaphrodite doe feels amazing around your cock, both her nether lips as well as her furry balls stroking the sides of your shaft as it slides in and out. The shocked squeals of your first entry into her soon give way to sounds of pleasure as she adapts, raising her hips to meet your powerful thrusts before much longer. Your bodies dance together, her own cock grinding against your belly each time you plunge deep into her.";
	say "     As the climax of a quick, wild romp on the forest floor, the doe's cunt suddenly tightens like a vice around you. With a bleat of delight, she writhes under you, hands digging grooves into the ground left and right as her cock fountains thick spurts of cum to splatter all over her chest and breasts. You can feel your balls clenching in response, with the muscle contractions of her twitching pussy driving you over the edge right along with the anthro herm. Grunting out loud, you fill her belly with hot gushes of seed while grinding against her crotch. As the pleasure of your shared orgasms eventually ebbs off, you smile down at the sexy woman you've claimed for yourself by right of breeding. 'I guess I'm your woman now. I'm Susan, by the way,' she says in a somewhat star-struck tone. Postponing any reply about that, you clear your throat and explain that you didn't originally come here just to fuck her and say that someone important wants to meet her. 'Oh, okay then. I'll come, just lead the way,' she says with a nod, and indeed does so after you pull out and guide her from the park.";
	DrMattSusanLabArrival; [this is found in the file Main Storyline.i7x]
	now Loyalty of Susan is 1; [consoled or fucked]
	now Unusual Creature is resolved;
	now Resolution of Unusual Creature is 4; [Fucked Susan]

Section 2 - NPC Basics

Susanoversize is a truth state that varies. Susanoversize is usually false.
Susanfirsttime is a number that varies. Susanfirsttime is usually 0

Table of GameCharacterIDs (continued)
object	name
Susan	"Susan"

Susan is a person. "Susan, a bipedal deer.". Description of Susan is "[Susandesc]".
Conversation of Susan is { "Bleat!" }.
The fuckscene of Susan is "[sexwithSusan]".

to say Susandesc:
	project the Figure of Susan_face_icon;
	if debugactive is 1:
		say "DEBUG ->  HP: [HP of Susan], Loyalty of Susan: [Loyalty of Susan], Susanoversize: [if Susanoversize is true]True[else]False[end if]  <- DEBUG[line break]";
	if HP of Susan is 52 and hospcountdown - turns >= 16 and hospquest >= 18 and lastfuck of Susan - turns < 4:
		say "[Susanlabcoatscene]";
	else if HP of Susan is 3:
		say "     Susan is a bipedal deer with soft brown fur and creamy off-white belly and undertail standing a little over six feet tall. Her nose, ear-tips and hands are darker in hue, creating an interesting pattern of fur overall. She's grown in size since you first found her, her body a mix of masculine strength and feminine sensuality. She has broadened shoulders and chest, but a slender waist and girly hips. Her arms and legs are still slender and effeminate, but have gained increased strength to match her enlarged form.";
		say "     Her head is now crowned by an impressive rack of antlers and Susan's face is somewhere between that of a strong buck and a delicate doe. Her male genitals have grown as part of her transformation, giving her a foot-long cock and balls the size of juicy lemons. She has a hungry, lustful look in her eyes, one hand usually straying to her cock, stroking it almost absent-mindedly. Despite her animalistic appearances, she has hair like a human, running down to a little past her shoulders, a little darker than the brown fur of the majority of her form.";
	else if HP of Susan < 52:
		say "     Susan is a bipedal deer with soft brown fur and creamy off-white belly and undertail standing about 5['] 6['][']. Her nose, ear-tips and hands are darker in hue, creating an interesting pattern of fur overall. She has large cream covered breasts capped with thick black teats. She has a hungry, lustful look in her eyes, one hand usually straying to her cock, stroking it almost absentmindedly. It is disturbingly human in appearance, ebon-black fleshed with a cream sheath at the base. She has large, plum-sized balls contained in a creamy colored, softly furred sac. Despite her animalistic appearances, she has hair like a human, running down to a little past her shoulders, a little darker than the brown fur of the majority of her form.";
	else if HP of Susan < 73:
		say "     Susan is a bipedal deer with soft brown fur and creamy off-white belly and undertail standing a little over six feet tall. Her nose, eartips and hands are dark hues. She's grown in size since you first found her, her body a mix of masculine strength and feminine sensuality. She has broadened shoulders and chest, but a slender waist and girly hips. Her arms and legs are still slender and effeminate, but have gained increased strength to match her enlarged form. Atop her head is now an impressive rack of antlers and her face is somewhere between that of a strong buck and a delicate doe.";
		say "     She's been provided a lab coat while working with Dr. Mouse. She's hemmed it slightly so better fit her altered body. It covers those large, black teated breasts of hers as well as her plump, ebon-black fleshed cock and creamy furred sheath and balls. Her male genitals have grown as part of her transformation, giving her a foot-long cock and balls the size of juicy lemons. She frequently slips a hooved hand into her coat to absentmindedly fondle her manhood. She looks at you with increased confidence, though she still has that hungry, lustful look in her eyes. Despite her animalistic appearances, she has hair like a human, running down to a little past her shoulders, a little darker than the brown fur of the majority of her form.";
	else:
		say "     Susan is a bipedal deer with soft brown fur and creamy off-white belly and undertail standing about 5['] 6['][']. Her nose, ear-tips and hands are darker in hue, creating an interesting pattern of fur overall. She's been provided a lab coat while working with Dr. Mouse. She's hemmed it slightly so it better shows her effeminate body. It covers those large, black teated breasts of hers as well as her ebon-black fleshed cock and creamy furred sheath and balls. She frequently slips a hoofed hand into her coat to absentmindedly fondle it. She has a hungry, lustful look in her eyes, her infected body keeping her quite aroused. Despite her animalistic appearances, she has hair like a human, running down to a little past her shoulders, a little darker than the brown fur of the majority of her form.";

instead of sniffing Susan:
	say "The herm deer has a mix of doe and buck scents, heavy with arousal and longing.";

to FeralizeSusan:
	now HP of Susan is 1;
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Deer":
			now MonsterID is y;
			break;
	now area entry is "Park";

instead of conversing the Susan:
	project the Figure of Susan_face_icon;
	let doecheck be false;
	let ec_check be false;
	if BodyName of Player is "Deer":
		now doecheck is true;
	else if hospquest >= 19:
		if BodyName of Player is "Enhanced Chimera":
			now ec_check is true;
	if HP of Doctor Matt < 7:
		say "     Maybe you should talk to Dr. Matt first and learn about the results of his examination.";
	else if HP of Susan < 2:
		if Resolution of Unusual Creature < 3: [not consoled/fucked]
			say "     As you approach, Susan gives you an annoyed look, 'What, you drag me over here to be prodded and poked, then want to chat like nothing has happened? Hope your boss got all he needed, because I've had my fill of this place!' With that, she starts a light-footed dash to a side door leading to another part of the building. You do your best to catch up and bring her back, to no great avail as the deer demonstrates her speed and dexterity, always escaping you no matter what you do. She must have memorized the floorplan of the building you think you remember from a wall in the lab, and leads you for a merry chase before eventually reaching an emergency exit far away from the lobby and Orthas, running off into the city through it. As you return to Dr. Matt alone some time later, he gives you a deflated look, shaking his head and murmuring, 'Such a pity, to lose out on an opportunity like this.'";
			now Susan is nowhere;
			now Loyalty of Susan is 99; [she ran off]
			FeralizeSusan; [making her an enemy in the park]
			now HP of Doctor Matt is 8; [post-Susan]
		else if Resolution of Unusual Creature > 2: [player consoled or fucked her]
			[todo: address her feelings about being a herm]
			if Loyalty of Susan is 1: [player intends to go the medical route]
				say "     Susan smiles as you approach, her long ears flicking a little before she says, 'I overheard what you two discussed. About wanting to get a sample of what made me like this and seeing if it affects you. I - um, I'm not saying I don't want to do that, but... [if Resolution of Unusual Creature is 3]I thought there may be more, between the two of us. You've been the first who showed me any compassion since all of this happened, and I think I'd prefer a more intimate option.' [else]with the way you just took control over me before. Held me down to take me like a proper stag, that makes me think there's more between the two of us. [end if]Biting her lip, she looks at you shily, and she surely would be blushing if she didn't have fur all over. 'What I mean to say is this: [bold type]Will you be my mate and we can do it together? And you'll stay with me if we both end up as deer?[roman type]'";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes, agree to be the little herm's mate.";
				say "     ([link]N[as]n[end link]) - You'd still prefer if it was simply a medical study between you.";
				if Player consents:
					if "Female Preferred" is listed in feats of Player:
						say "     She lets out a happy little shout and throws her arms around you, plastering herself against your body as she kisses you on the mouth. A moment later though, she pulls back a little bit, sniffing you with some concern, 'Oh dear, uh, pun not intended. You simply cannot be my stag. I can smell it. So I will be the stag.' She playfully slaps your ass and gives you an impish smile. Warm tingles sweep over your form, and it almost feels like an electric charge is building between the two of you. 'I'm so eager for us to do it, even if Dr. Matt has to be there to watch us! Go tell him we're ready!'";
					else:
						say "     She lets out a happy little shout and throws her arms around you, plastering herself against your body as she kisses you on the mouth. 'Fantastic! I will be your doe, and you will be my stag,' she says with a dreamy sigh. Warm tingles sweep over your form, and it almost feels like an electric charge is building between the two of you. 'I'm so eager for us to do it, even if Dr. Matt has to be there to watch us! Go tell him we're ready!'";
					deerfy;
					now Loyalty of Susan is 4; [Player became Susan's mate]
				else:
					say "     'Oh,' Susan says quietly, looking crushed at your refusal. 'I - I guess I was mistaken then.' She turns away so you don't see her wipe a tear from her eye, not looking at you as she adds, 'Go talk to the doctor, I'll be along in a little while then.'";
					now Loyalty of Susan is 3; [player refused to be her mate, Susan's sad but not crushed, will go stay with Orthas later]
			else if Loyalty of Susan is 2: [player wants to lay her]
				say "     Susan smiles as you approach, her long ears flicking a little before she says, 'I overheard what you two discussed. About you wanting to have sex with me! [if Resolution of Unusual Creature is 3]Ever since we met, I thought there may be more, between the two of us. You've been the first who showed me any compassion since all of this happened, and I'd be happy to spend some intimate time with you.' [else]Given the way you just took control over me before, I knew we were made for each other. You held me down to take me like a proper stag, I want to feel that way again!' [end if]Biting her lip, she looks at you shily, and she surely would be blushing if she didn't have fur all over. 'So, [bold type]will you be my mate and we can do it together? And you'll stay with me if we both end up as deer?[roman type]'";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes, agree to be the little herm's mate.";
				say "     ([link]N[as]n[end link]) - On second thought, she seems pretty clingy. Maybe you'd be best advised not to start something with Susan...";
				if Player consents:
					if "Female Preferred" is listed in feats of Player:
						say "     She lets out a happy little shout and throws her arms around you, plastering herself against your body as she kisses you on the mouth. A moment later though, she pulls back a little bit, sniffing you with some concern, 'Oh dear, uh, pun not intended. You simply cannot be my stag. I can smell it. So I will be the stag.' She playfully slaps your ass and gives you an impish smile. Warm tingles sweep over your form, and it almost feels like an electric charge is building between the two of you. 'I'm so eager for us to do it, even if Dr. Matt has to be there to watch us! Go tell him we're ready!'";
					else:
						say "     She lets out a happy little shout and throws her arms around you, plastering herself against your body as she kisses you on the mouth. 'Fantastic! I will be your doe, and you will be my stag,' she says with a dreamy sigh. Warm tingles sweep over your form, and it almost feels like an electric charge is building between the two of you. 'I'm so eager for us to do it, even if Dr. Matt has to be there to watch us! Go tell him we're ready!'";
					deerfy;
					now Loyalty of Susan is 4; [Player became Susan's mate]
				else:
					say "     'Oh,' Susan says quietly, looking crushed at your sudden change of mind. 'But, but - I thought you wanted me! Guess I'm too much of a freak after all!' Before you can even begin to say or to anything, the sobbing young woman already has dashed to a side door leading to another part of the building and is through it. You do your best to catch up and bring her back, to no great avail as the deer demonstrates her speed and dexterity, always escaping you no matter what you do. She must have memorized the floorplan of the building you think you remember from a wall in the lab, and leads you for a merry chase before eventually reaching an emergency exit far away from the lobby and Orthas, running off into the city through it. As you return to Dr. Matt alone some time later, he gives you a deflated look, shaking his head and murmuring, 'Such a pity, to lose out on an opportunity like this.'";
					now Susan is nowhere;
					now Loyalty of Susan is 99; [player refused to be her mate, Susan ran off]
					FeralizeSusan; [making her an enemy in the park]
					now HP of Doctor Matt is 8; [post-Susan]
		else if Loyalty of Susan > 0:
			say "     'You should go talk to the doctor first. I will wait for you.'";
	else if HP of Susan is 2:
		say "     Susan smiles and lays her arms around you, giving you a peck on the cheek and nodding to the bed. 'So, time to go for it then, my mate!' The eagerness to spend some intimate moments with you is audible in her voice, and the lithe herm is half-hard already from her excitement.";
	else if HP of Susan is 3:
		say "     '[one of]I guess it's alright living here. I mean, the doctor's nice enough... though he does look at me oddly at times.'[or][if doecheck is true]I'm so glad you decided to be my mate,' she says happily[else]Please don't forget about me when all of this is over,' she says with concern[end if].[or][if lastfuck of Susan - turns >= 4]We should have some more fun again soon,' she says eagerly[else]This transformation's made me so excitable. With the way I'm feeling, I think I'll be ready for another round of fun soon,' she says, stretching and thus inadvertently putting her sexy doe-buck body on display[end if].[or]You're such a brave doe to keep going out there. I was so, so scared and confused that I almost broke down completely. Thank you for finding and helping me,' she says affectionately.[or]There's not too much to do around here when you're not around. Dr. Matt doesn't want me touching stuff and I don't think that scary dragon downstairs likes me very much.'[or][if HP of Orthas > 3]I don't like how that dragon downstairs looks at you, my deer[else]I don't think that scary dragon downstairs likes me very much[end if].'[at random]";
	else if HP of Susan >= 4 and HP of Susan < 50:
		say "     '[one of]I guess it's alright living here. I mean, the doctor's nice enough... though he does look at me oddly at times.'[or][if doecheck is true]I'm so glad you decided to be my mate,' she says happily[else]Please don't forget about me when all of this is over,' she says with concern[end if].[or][if lastfuck of Susan - turns >= 4 and player is male]We should have some more fun again soon,' she says eagerly[else if lastfuck of Susan - turns >= 4]Let's see if we can't get your cock back so you can be my buck again[else]This transformation's made me so excitable. With the way I'm feeling, I think I'll be ready for another round of fun soon,' she says, stretching and thus inadvertently putting her sexy doe body on display[end if].[or]You're such a brave buck to keep going out there. I was so, so scared and confused that I almost broke down completely. Thank you for finding and helping me,' she says affectionately.[or]There's not too much to do around here when you're not around. Dr. Matt doesn't want me touching stuff and I don't think that scary dragon downstairs likes me very much.'[or][if HP of Orthas > 3]I don't like how that dragon downstairs looks at you, my deer[else]I don't think that scary dragon downstairs likes me very much[end if].'[at random]";
	else if HP of Susan is 50 and hospcountdown - turns >= 12:
		say "     Susan glances over at the busy Doctor Mouse and moves further away from him before speaking to you. 'I could use your help, my mate. Now, the doctor's been nice to me and makes sure that I'm brought food, but it's this icky hospital stuff. He says its perfectly nutritious and all of that, but it's all bland mush. If anything, it tastes more like medicine and antiseptic cleaners than food. I need you to bring me some food and water so I can have something edible from time to time.'";
		say "     She takes another glance over at the mouse and, finding him still busy, continues. 'I was helping him when he was figuring out how that enhancement machine we took from the lab. I've also been taking notes for him while he's run some tests on the staff. I can fudge those numbers to hide that I used it on you. But I don't want to risk upsetting the doctor for nothing. Gimme about a half-dozen meals and bottles of water and we'll call it even,' she says with a grin.";
		now waterneed is 6;
		now foodneed is 6;
		now HP of Susan is 51;
	else if HP of Susan is 51:
		now foodcount is carried of food;
		now watercount is carried of water bottle;
		now tempnum is foodneed;
		now tempnum2 is waterneed;
		repeat with zz running from 1 to 6:
			say "[thefoodening]";
			say "[thewatering]";
		if tempnum > foodneed:
			if foodneed is 0:
				say "     'Great, hon! I should be able to hold out for quite a while with all this,' she says, stashing the food you've brought in a locker that's been provided to her. 'I promise I'll use it sparingly.' You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
			else:
				say "     'I'll tuck that away for later. I'll only use a little every now and then,' the doe says, taking the food from you. 'I could still use another [foodneed] more meal(s) though.' You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
		if tempnum2 > waterneed:
			if waterneed is 0:
				say "     'Great, sweetie! A mouthful of this after every meal'll help wash the taste of that hospital gunk out of my mouth after I have to choke it down. Even the water they bring me in here tastes a little off,' she says quietly. She discreetly stashes the water in her personal locker. You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
			else:
				say "     'Let me put that away for safe keeping. Every little bit helps,' the doe says, taking the water from you. 'I could still use another [waterneed] more liter(s) though.' You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
		if foodneed is 0 and waterneed is 0:
			say "     Having safely stored away the supplies, Susan thanks you with a kiss. She then arranges a small distraction for Dr Mouse, leaving her free to quickly use the nanite enhancement device on you.";
			wait for any key;
			now foodwaterbonus is 1;
			featget;
			WaitLineBreak;
			now HP of Susan is 52;
			now hospcountdown is turns;
		else if tempnum2 is waterneed and tempnum is foodneed:		[no change]
			say "     'Please don't forget about those supplies I need, my brave stud,' she says quietly.";
			say "     [bracket][foodneed] food and [waterneed] water bottle(s) still needed.[close bracket][line break]";
	else if HP of Susan is 52 and hospcountdown - turns >= 16 and hospquest >= 18 and lastfuck of Susan - turns < 4:
		say "[Susanlabcoatscene]";
	else if HP of Susan <= 52:
		say "     '[one of]I guess it's alright staying here. I mean, the doctor's tries to be friendly enough, though he can be a bit cold at times.'[or][if doecheck is true]I'm so glad you decided to be my mate,' she says happily[else if ec_check is true]I got to help the doctor with your current, sexy form,' she says, running her hands over your chimeric body[else]Please don't forget about me when all of this is over,' she says with concern[end if].[or][if lastfuck of Susan - turns >= 4 and player is male]We should have some more fun again soon,' she says eagerly[else if lastfuck of Susan - turns >= 4]Let's see if we can't get your cock back so you can be my buck again[else]This transformation's made me so excitable. With the way I'm feeling, I think I'll be ready for another round of fun soon,' she says, stretching and thus inadvertently putting her sexy doe body on display[end if].[or]You're such a brave buck to keep going out there. I was so, so scared and confused that I almost broke down completely. Thank you for finding and helping me,' she says affectionately.[or]I'm glad Dr. Mouse is giving me little things to do around here. It helps keep my mind occupied while you're away. Those big orderlies don't seem particularly friendly, so it's not like I can chat with them.'[or][if HP of Orthas > 3]I'm glad we're done with that dragon. I didn't like you she looked at you[else]I don't like how those jaguars look at me sometimes. I can't help feeling like they see me as dinner... but that might just be the timid doe in me talking[end if].'[or]I don't like how those jaguars look at me sometimes. I can't help feeling like they see me as dinner... but that might just be the timid doe in me talking.'[or]Those... creatures Dr. Mouse has me feeding are really creepy,' she says about the chained chimeras. 'He says they're poor victims of the transformation. He ran some tests on them in the early days, but wasn't able to help them get better.' She gives a visible shudder and looks away from them.[at random]";
	else if hospcountdown - turns > 12 and ( HP of Susan is 53 or HP of Susan is 73 ):
		say "     Susan leads you over to her small corner of the room and opens up her personal locker. 'I've gotten used to the hospital food. It's not really so bad. Since I don't really need this stuff anymore, you can have the leftovers back,' she says. She returns a meal's worth of food and a pair of water bottles.";
		ItemGain food by 1;
		ItemGain water bottle by 2;
		increase HP of Susan by 1;
	else if HP of Susan is 53:	[doe-y w/lab coat]
		say "     '[one of]It's not bad staying here. I mean, the doctor's tries to be friendly enough and he can be a bit cold at times, but he lets me do my own thing when he doesn't need my help.'[or][if doecheck is true]I'm so glad you decided to be my mate,' she says happily[else if ec_check is true]Can you tell I got to help Dr. Mouse with your new form, my mate?' she asks teasingly, running her hands over chimeric body[else]Please don't forget about me when all of this is over,' she says with concern[end if].[or][if lastfuck of Susan - turns >= 4 and player is male]We should have some more fun again soon,' she says eagerly[else if lastfuck of Susan - turns >= 4]Let's see if we can't get your cock back so you can be my buck again[else]This transformation's made me so excitable. With the way I'm feeling, I think I'll be ready for another round of fun soon,' she says, stretching and thus inadvertently pressing the top of her lab coat around her bosom in a tantalizing display[end if].[or]You're such a brave buck to keep going out there. I was so, so scared and confused that I almost broke down completely. Thank you for finding and helping me,' she says affectionately.[or]I'm glad Dr. Mouse is giving me little things to do around here. It helps keep my mind occupied while you're away. Those big orderlies don't seem particularly friendly, so it's not like I can chat with them.'[or]I don't like how those jaguars look at me sometimes. I can't help feeling like they see me as dinner... but that might just be the timid doe in me talking.'[or]Those poor creatures,' she says sadly as she looks over at the chained chimeras she's been tending to for Dr. Mouse. 'He says they're unfortunate victims of a particularly chaotic transformation. He ran some tests on them in the early days, but wasn't able to help them get better.' She sighs sadly and looks away.[at random]";
	else if HP of Susan is 54:
		say "     '[one of]I guess it's alright staying here. I mean, the doctor's tries to be friendly enough, though he can be a bit cold at times. It's because he's so dedicated to his work.'[or][if doecheck is true]I'm so glad you decided to be my mate,' she says happily[else if ec_check is true]Can you tell I got to help Dr. Mouse with your new form, my mate?' she asks teasingly, running her hands over chimeric body[else]Please don't forget about me when all of this is over,' she says with concern[end if].[or][if lastfuck of Susan - turns >= 4 and player is male]We should have some more fun again soon,' she says eagerly[else if lastfuck of Susan - turns >= 4]Let's see if we can't get your cock back so you can be my buck again[else]This transformation's made me so excitable. With the way I'm feeling, I think I'll be ready for another round of fun soon,' she says, stretching and thus inadvertently pressing the top of her lab coat around her bosom in a tantalizing display[end if].[or]You're such a brave buck to keep going out there. I was so, so scared and confused that I almost broke down completely. Thank you for finding and helping me,' she says affectionately.[or]I'm glad Dr. Mouse is giving me little things to do around here. It helps keep my mind occupied while you're away. Those big orderlies aren't very talkative, though they make up for it in other ways,' she adds with a wink and a flick of her cute doe tail[or]I guess those jaguars aren't so bad. Dr. Mouse introduced me to a couple of them. They seem mean and can play a little rough with a timid doe like me, but they're not so bad once you get to know them,' she giggles.[or]Those poor creatures Dr. Mouse has me feeding aren't so bad once you get used to them. They can even be downright friendly once they get used to you, as long as you're careful. I help keep them calm so the doctor can focus on his important work.'[at random]";
	else if HP of Susan is 73:	[doe-buck w/lab coat]
		say "     '[one of]It's not bad staying here. I mean, the doctor's tries to be friendly enough and he can be a bit cold at times, but he lets me do my own thing when he doesn't need my help.'[or][if doecheck is true]I'm so glad you decided to be my mate. I really enjoy getting to be both the doe and the buck with you,' she says happily[else if ec_check is true]Can you tell I got to help Dr. Mouse with your new form, my mate?' she asks teasingly, running her hands possessively over chimeric body[else]I really enjoyed being the buck. You should be my sweet doe again soon,' she says, caressing your cheek with her strong hand[end if].[or][if lastfuck of Susan - turns >= 4]We should have some more fun again soon,' she says eagerly[else]I'm even more excitable now that I'm a strong, sexy doe-buck like you, my mate. Thank you for letting me have my turn on top. We should do it again soon,' she says, caressing your rear[end if].[or]You're a brave buck to keep going out there. I was so silly and scared before that I almost broke down completely before I met you. I feel much more confident now, thanks to you,' she says, leaning in to give you a kiss.[or]I'm glad Dr. Mouse is giving me little things to do around here. It helps keep my mind occupied while you're away.'[or]Those jaguars don't seem quite so scary anymore,' she states. 'I might have to show them I'm not a little timid doe anymore,' she says, smacking a fist into her palm with a grin.[or]Those poor creatures,' she says sadly as she looks over at the chained chimeras she's been tending to for Dr. Mouse. 'He says they're unfortunate victims of a particularly chaotic transformation. He ran some tests on them in the early days, but wasn't able to help them get better.' She sighs sadly and looks away.[at random]";
	else:
		say "     '[one of]I guess it's alright staying here. I mean, the doctor's tries to be friendly enough, though he can be a bit cold at times. It's because he's so dedicated to his work'[or][if doecheck is true]I'm so glad you decided to be my mate. I really enjoy getting to be both the doe and the buck with you,' she says happily[else if ec_check is true]Can you tell I got to help Dr. Mouse with your new form, my mate?' she asks teasingly, running her hands possessively over chimeric body[else]I really enjoyed being the buck. You should be my sweet doe again soon,' she says, caressing your cheek. 'Though I'd happily welcome you as my stag as well,' she adds[end if].[or][if lastfuck of Susan - turns >= 4]We should have some more fun again soon,' she says eagerly[else]I'm even more excitable now that I'm a strong, sexy doe-buck like you, my mate. Thankfully, some of the other staff have been helping with that,' she says with a grin while fondling the bulging manhood under her coat[end if].[or]You're a brave buck to keep going out there. I was so silly and scared before that I almost broke down completely before I met you. I feel much more confident now, all thanks to you,' she says, leaning in to give you a kiss.[or]I'm glad Dr. Mouse is giving me little things to do around here to help keep my mind occupied while you're away. And when he doesn't need me, he lets me go down into the hospital. Those orderlies don't seem so scary anymore and those vixens are really fun,' she says with a wink.[or]'The doc was nice enough to introduce me to a couple of those hot nurses when I asked about them. That was a lot of fun,' she says with a grin.[or]'Those jaguars don't bother me anymore now that I've taught a few of them that I'm the big buck around here,' she says, giving her thick manhood a meaningful squeeze.[or]Those poor creatures Dr. Mouse has me feeding aren't so bad once you get used to them. They can even be downright friendly once they get used to you, as long as you're careful. I help keep them calm so the doctor can focus on his important work.'[at random]";


Section 3 - Sex with Susan

to say sexwithSusan:
	project the Figure of Susan_face_icon;
	if lastfuck of Susan - turns < 4:
		say "     'As fun as it is, I do need a little break every now and again, my sweet.'";
	else if HP of Doctor Matt < 8:
		say "     She blushes and nudges you, 'You should talk to the Doctor first.'";
	else if HP of Susan is 52 and hospcountdown - turns >= 16 and hospquest >= 18:
		say "[Susanlabcoatscene]";
	else:
		say "[SusanSexMenu]";

to say SusanSexMenu:
	project the Figure of Susan_face_icon;
	setmonster "Deer";
	choose row MonsterID from the Table of Random Critters;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male and Cock Length of Player > 6 and Cock Length of Player < 15:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Susan";
		now sortorder entry is 1;
		now description entry is "Fill your little doe's pussy with your cock";
	[]
	if Player is male and Cock Length of Player < 6:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Susan with your small penis";
		now sortorder entry is 2;
		now description entry is "Fuck the little doe with your little cock";
	[]
	if Cock Length of Player >= 15 and Susanoversize is false:
		choose a blank row in table of fucking options;
		now title entry is "Hyper fuck";
		now sortorder entry is 3;
		now description entry is "Try to fit your giant cock on the little doe";
	[]
	if Cock Length of Player >= 15 and Susanoversize is true:
		choose a blank row in table of fucking options;
		now title entry is "Hyper fun";
		now sortorder entry is 4;
		now description entry is "Now you know you can fit your giant cock on her, why not do it again?";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Make Susan Suck your cock";
		now sortorder entry is 5;
		now description entry is "Make the deer suck the cock she loves so very much";
	[]
	if HP of Susan >= 2 and player is female:
		choose a blank row in table of fucking options;
		now title entry is "Let Susan fuck your pussy";
		now sortorder entry is 6;
		now description entry is "Let Susan be the stag and fuck your Pussy";
	[
	if HP of Susan >= 2:
		choose a blank row in table of fucking options;
		now title entry is "Let Susan fuck your ass";
		now sortorder entry is 7;
		now description entry is "Take the not so little cock of your doe in your ass";
	]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> ";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fuck Susan":
					say "[SusanSex1]";
				else if nam is "Fuck Susan with your small penis":
					say "[SusanSex2]";
				else if nam is "Hyper fuck":
					say "[SusanSex3]";
				else if nam is "Hyper fun":
					say "[SusanSex4]";
				else if nam is "Make Susan Suck your cock":
					say "[SusanSex5]";
				else if nam is "Let Susan fuck your pussy":
					say "[SusanSex6]";
				else if nam is "Let Susan fuck your ass":
					say "[SusanSex7]";
				now lastfuck of Susan is turns;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the deer making her sigh with neediness.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say SusanSex1: [fuck Susan]
	say "     She grabs directly for your [cock size desc of Player] [Cock of Player] cock and grins up at you as she strokes it, 'It is just right,' she declares as she pushes you back to the ground, guiding you to lay down and slipping up on top of you. Her warm frame presses softly as it goes and she lines herself up, one hand holding the thick tip of your member, the other parting her nethers. She sinks down along your member, shuddering as it fills her grasping tunnel perfectly. Her wet labia sink down to your groin as she settles on you, breathing hard and just enjoying the feelings for the moment as she gazes into your eyes with a burning affection.";
	say "     You reach for her sides, trailing upwards and caressing her chest. Fingers catch thick black teats and her back arches towards you as you flick and tease at them. Her hips raise and fall a few inches at a time, wetly sliding across your excited member, wedged deep inside of her. Her own member stands stiff and proud, twitching with her pleasure and dripping thick bits of clear precum along its length and onto your [bodytype of Player] body even as she rides against you, taking your cock deeper with every drop of her curvy form against you. Your hips are soon moving faster, driving up, bouncing her in firm shuddering motions. Her breasts heave against your grasping hands are you hold her, drawing her down against your increasingly frantic ruts.";
	WaitLineBreak;
	say "     She leans back away from your hands, her hands settling on the ground as she bends almost backwards, rutting in a bent position. Your hands find her belly and sides, rubbing and caressing her, hungry eyes taking in the bulge that your own cock creates along her belly, stretched taut in her new position. She moans softly as her shaft tenses and begins to fire, splattering herself with her seed as it arcs through the air in powerful streams. A small part of yourself wonders what it would feel like to be filled with that same seed, but that part is quieted for the moment as your own shaft tenses and lurches, filling the willing doe with your fertile offering.";
	say "     She straightens, then flops on top of you, squirming as you round her with your cum. Her messy front presses stickily to your [bodydesc of Player] body as she hugs tightly to you, heedless of the sticky warmth she shares with you. When your shaft has calmed and lays half firm within her, she leans up to kiss you on either cheek. 'I love you,' she whispers. You smile, grabbing her at the bottom and squeezing her close to snuggle for a moment, enjoying the peace before you are forced to return to other tasks.";
	deerfy;
	if HP of Susan is 2:
		now HP of Susan is 4;

to say SusanSex2: [small penis fuck]
	say "     She kneels down in front of you and cups your [cock size desc of Player] [Cock of Player] tool gently, stroking along it with the bare tips of her furry fingers. She firmly strokes along your swiftly hardening shaft as she gazes up into your eyes, 'My great buck, you need to be as large on the outside, as you are on the inside.' You aren't entirely sure what part of you is big on the inside, but cease to care as her snout descends over your cock and begins to suckle noisily at you. Her skilled fingers dip lower to caress your [Ball Size Adjective of Player] orbs in slow teasing as she bobs against you, working you to greater heights as the tingle of change sweeps through you, intensifying with every passing moment.";
	say "     The pleasure haze ebbs just slightly as she pulls free of you and returns to slow stroking, 'Still not quite large enough to sate me, my virile buck. We will just wait a little longer.' Her tail wags behind her excitedly as she leans in to lap over the head of your shaft, insufficiently sized or not, and her strokes become firm and fast. Your groans mix with her own as if she could feel your pleasure as if it were within her own body. She squeezes at your entire member with her softly furred paws and your balls clench. Your seed sprays in great milky shots across her long snout, drawing a soft bleat of approval from her. Her long tongue darts to collect the treasure as she raises to her feet, 'Come back later, we can try again.'";
	deerfy;
	if HP of Susan is 2:
		now HP of Susan is 4;

to say SusanSex3: [Hyper Fuck]
	say "     Susan eyeballs your [cock size desc of Player] shaft a moment before she shakes her head vigorously. 'That's got to be too large for me,' she exclaims, then leans in. 'Isn't it?' The sexy doe takes in the scent of your manhood with a soft, needy sigh and then lets her warm tongue bathe across it. She strokes your [Cock of Player] pole with her soft palms and gives you another moaning lick. Pleasant tingles run through your loins as she continues to lather your cock with her tongue until it's glistening with her saliva.";
	say "     The two of you kiss and snuggle for a while after sex. You run your hands over her [if Ball Size of Player > 6]cum-swollen belly[else if Ball Size of Player > 5]visibly rounded tummy[else]soft tummy[end if] while she caresses your sides. 'Ooo! That was... wow! It's hard to believe I managed to fit that huge cock of yours. Guess it's another crazy thing about that crazy world. Ohhh... though I think I'm going to need a bit of a break before going again after that,' she says, brushing her fingertips across her stretched, swollen and leaking pussy.";
	now Susanoversize is true;
	deerfy;
	if HP of Susan is 2:
		now HP of Susan is 4;

to say SusanSex4: [Hyper Fun]
	say "     Susan eyeballs your [cock size desc of Player] shaft with wide-eyed amazement. 'I was so surprised you could take me with that big cock of yours before. Let's go for it again. Just... just go slow,' she adds, your impressive size still quite daunting. The sexy doe leans in and takes in the scent of your manhood with a soft, needy sigh. Her soft warm tongue bathes over your [Cock of Player] pole as she strokes it with her soft palms. Pleasant tingles run through your loins as she continues to lather your cock with her tongue until it's glistening with her saliva.";
	say "     You guide the pretty doe to lay on her back and spread her legs. Now longing for the [cock size desc of Player] cock she's been worshiping so ardently, she puts her arms around you as you get into position atop her. Lining up your cock to her juicy pussy, you lock your lips to hers and ease forward[if Cock Length of Player > 24]. You go extra slow for your delicate doe, letting her cervine cunt adjust and stretch to accept your massive meat[else]. You go slow for your loving doe, letting her cervine cunt adjust and stretch to fit your oversized meat[end if]. Susan moans into the kiss and hugs you all the tighter, her body quivering in delight as she's penetrated to fully.";
	WaitLineBreak;
	say "     As you break the kiss and lean up, you're treated to the lovely sight of your cervine lover panting in pleasure as you fuck her. Her cream-furred breasts jiggle and nicely with every large thrust of your pulsing rod into her[if Cock Length of Player >= 36]. Her chest is stretched visibly by your titanic member's phallic shape[else if Cock Length of Player >= 24]. Her tummy is stretched by your mighty member to raise a phallic bulge that moves with every thrust[else]. Her tummy shows a notable bulge from having your large member stuffed inside her[end if]. She rubs a paw over her plumped tummy in blissful awe.";
	say "     'Do it. Do it, my big buck. Give it to me and fill your needy doe-oh-oh-oooooh!' she calls out in orgasmic delight. The feeling of having her hot tunnel squeeze and quiver around you as her femcum soaks your crotch is wonderful. It's so good, you can't hold back for long before you two are crying out in climactic release. You pump your [Cum Load Size of Player] load into the moaning doe, painting her uterus with your semen.";
	deerfy;
	if HP of Susan is 2:
		now HP of Susan is 4;

to say SusanSex5: [Susan Sucks the player]
	say "     Kneeling before you Susan holds you [Cock of Player] rod. The doe starts caressing it with her hands and tongue to full hardness and taking it into her snout. You feel her tongue on the back of your cock while she moves it doing her best to keep your arousal growing. With this talent, it's hard to keep yourself from cumming right then and there, but with some strength of mind, you keep yourself in check. Sometimes she goes slow and tastes your [Cock of Player] cock, especially all the pre you keep feeding her. Your horny lover finally lets your rod free. Looking at her to look for an answer on why she would suddenly stop, you can see only a smile and those breasts being pressed against your cock. The deer presses your cock, now fully lubed with her saliva, between her orbs. Her eyes keep staring at you amusedly as those breasts are massaging you.";
	say "     When she is satisfied with your face, she goes back to sucking you. The feeling of both her mouth and the slick press of her breasts around your [Cock of Player] length get you so close to cumming that you close your eyes for a moment. Feeling some vibrations running in your cock, you know that she is amused with this	occurrence. You feel her saliva pooling between her breasts and your cock, exciting you to a point of only pleasure. The doe hungers more and more for your seed, and you intend to give it her.";
	WaitLineBreak;
	say "     You push her head against your groin, penetrating her throat fully. She struggles with the sudden push and invasion but is quick to get used to it. You wait no time and feed her a huge dose of your semen. Rope after long, thick rope of seed you fill her tummy with gusto. When you finally release her head she pulls back with a string of semen still connected to your penis which she cleans quickly. 'Thanks for the meal,' you hear her say with a wink before you get ready for your adventures.";
	deerfy;
	if HP of Susan is 2:
		now HP of Susan is 4;

to say SusanSex6: [Susan fucks Pussy]
	say "     You kiss the little doe lips, putting your hand on that ebony cock and pulling your lover to her cot. You keep pulling the doe by her cock until you start lining it up with your pussy. [if Susanfirsttime is 0]First you feel the head of her cock, pushing your lips open, and right after she penetrates you completely without warming. You wince from the pain of the sudden invasion, but she doesn't stop. Susan keeps fucking you with eagerness and without experience. As she does so, her body suddenly shifts a little, bulking up - especially at the chest and shoulders. She transitions into a strong and sexy doe-buck that is an attractive mix of the feminine and the masculine. [end if]With ease, she slides that dark cock in your tight pussy. Now used to you and to your body, she keeps pushing while hitting all the right spots, making you almost cum time and time again. Her thrusts get faster as she lets you get more used to her new size, stretching your inner walls until her cock is all the way in and hitting the entrance of your womb.";
	say "     Trying to hold on something to keep yourself stable you end up hugging her neck - and hear her long breaths in your ear. Hearing her grunts and sexy noises makes you feel happy and connected with your deer lover. You feeling your [Skin of Player] skin against her fur and smell her now strong musk. You let yourself get lost in her body. Feeling the doe cock slamming into you making you almost jump from her arms. Her balls are heavy with a need to be emptied inside you. Now all you can do is let her do what she wants to do with you.";
	WaitLineBreak;
	say "     The horny deer keeps trusting into your needy pussy. You can feel her whole cock, all her veins pulsating and sending her heartbeat to your body. You feel yourself orgasming first, your mind goes blank and your body holds her closer. Her balls move and compact as her climax comes to her - your own orgasm grips the black rod that is inside you, begging to be bred by that delicious cock. Your pussy's calls are answered as she finally penetrates your womb, filling it with her potent seed and painting everything inside your womb her color, doing her best to make you pregnant.[impregchance]";
	say "     When both of you come back from ecstasy you two find each other hugging and heavily breathing. She kisses you and lets you go back to your adventures.";
	deerfy;
	if Susanfirsttime is 0:
		now Susanfirsttime is 1;
	if HP of Susan is 2:
		now HP of Susan is 3;

to say SusanSex7: [Susan fucks ass]
	say "     <WIP, sorry, nothing here yet>";

to say Susanlabcoatscene:
	let x be 1; [default = accept]
	setmonster "Deer";
	choose row MonsterID from the Table of Random Critters;
	say "     What do you think, hon?' Susan asks, posing in the new lab coat she's wearing. It is a typical one, clean and white, though the back's been adjusted to let her puff of deer tail poke out. 'After a little incident, the doc thought it best I have something on while helping him. Lab chemicals can be dangerous.'";
	say "     She moves in closer to you, rubbing her body against yours. 'I was hoping you'd come by to play. I've been feeling pretty randy,' she whispers throatily in your ear. She grinds the hard bulge of her covered erection against your [if scalevalue of Player < 3]side[else if scalevalue of Player > 3]thigh[else]hip[end if]. 'Come on. Let's have some fun,' she says, pulling you off to her bunk in the corner. Dr Mouse notices this, but quietly smiles and says nothing.";
	say "     Susan gives you a powerful kiss, tongue diving into your mouth as her hands run over you with aggressive need. They slip off your gear, stripping you down before pushing you back onto her cot. Opening her new coat, she reveals that hard black cock you felt earlier. You're unsure, but it seems larger than before, though that may simply be that you've never seen it this full and hard before either. She moves between your legs and aims that pulsing rod at you; it seems your timid doe's ready to be the buck instead.";
	if Player is male:
		LineBreak;
		say "     [bold type]Shall you let her take you or shall you take your rightful place as the buck in this relationship?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Let her take you.";
		say "     ([link]N[as]n[end link]) - Be the buck.";
		if Player consents:
			now x is 1; [accept]
		else:
			now x is 0; [refuse]
	if x is 1:
		say "     Smiling up at your lover, you willingly spread your legs and raise your hips, welcoming her into you. She thrusts her ebon rod into you, sinking it [if Player is female]sensually into your needy cunny[else]slowly into your tight asshole[end if]. She gives a long, moaning bleat of happiness as she penetrates you, fucking someone for the first time. 'Mmmm yeah! That's so nice. I should do this more often,' she pants between thrusts. Growing more excited, she leans over you with her hands on your shoulders as she pounds into you. 'You feel so good, baby. Why didn't I do this before? Being the buck's great.'";
		say "     Susan fucks you hard and rough, though more from inexperience and over-eagerness than callousness. If anything, her cervine face smiles down at you with even greater affection and you can't help but feel your bond with her growing as well. So focused are you on looking into her doey eyes that you miss at first how your pretty doe is changing. She bulks up, especially at the chest and shoulders, as her body gets stronger. She transitions into a strong and sexy doe-buck that is an attractive mix of the feminine and the masculine.";
		WaitLineBreak;
		say "     If the wonderful sensations from your [if Player is female]vagina[else]ass[end if] are to be believed, her body is not the only thing to have changed. Her cock has definitely added a couple more inches inside you as well, adding to your pleasure. As antlers start to sprout from the top of her head, she releases a long pent-up cry of lustful release as she climaxes. Throughout her climax, they rapidly grow up and outwards until she has an impressive rack and Susan has fully become a strong and sexy doe-buck. You feel an orgasmic rush of delight as her potent semen flows into you, spreading her altered doe-buck infection to you as well.[impregchance]";
		now Libido of Susan is 1;
		now HP of Susan is 73;
		if Name entry is "Deer":			[Adjusting infection size values]
			now Cock Length entry is 12;
			now Ball Size entry is 3;
			now Cunt Depth entry is 12;
			now Cunt Tightness entry is 8;
	else:
		say "     Taking the doe by the shoulders, you roll the both of you over on the cot. She gives a playful giggle. 'Oh, I think someone's also feeling randy.' With one hand guiding your cock into her, you grab her black penis with the other. She moans as you slide into her wet cunny and start stroking her throbbing manhood. It twitches and pulses in your grip, leaking precum steadily. She moves her hands up to her breasts and arches her back as she starts playing with her thick black nipples. She makes a lewd display of it, smiling up at you as she pushes one tit upwards so she can lick across her nipple with her broad tongue. This wanton display arouses you all the more and you thrust into her harder, eager to show her what a powerful buck you can be for your sweet little doe.";
		say "     You rut the herm doe with strong, deep thrusts, confident in your position as the buck. And she loves every moment of it, smiling blissfully up at you as your [cock size desc of Player] cock pushes into her over and over again, claiming her as your doe. She pushes her hips into your thrusts and wriggles them upon your manhood, moaning about what a big, strong buck you are. Her wet pussy squeezes and tugs at your manhood with increasing need as her panting breathing grows heavier with her rapidly approaching orgasm. You don't let up, smiling back down at her with loving affection, eager to see your precious deer cum. And when she does, it is a strong, messy release in excess of her usual production. As she cums, her swollen cock and balls shrink back down to their usual size, freeing her from the need to rut. Seeing her paint her beautiful body with streaks of white semen gets to be too much for you and you bury your pulsing rod fully inside her, unloading your [Cum Load Size of Player] load into her.";
		WaitLineBreak;
		say "     Susan flops back onto her bunk, panting heavily and seeming thoroughly satisfied as she smiles up at you. 'Oh, you are such a wonderful buck, my deer. Thanks for helping me get that out of my system. I love being your doe and I don't want to ever change that.' You smile down at her and lean in, giving her a tender kiss before pulling out, leaving her to rest and recover from the rutting romp that's left her exhausted and sated.";
		now HP of Susan is 53;
	now lastfuck of Susan is turns;
	deerfy;
	now hospcountdown is turns;
	WaitLineBreak;
	if HP of Susan is 53:
		say "     While Susan rests and recovers, you approach Dr. Mouse to speak to him about her odd behavior.";
		say "     'I'm uncertain exactly what may have happened. I've not really inquired about your relationship with her - I've never had an interest in mundane interpersonal matters - but she does tend to prattle on about her feelings for you. She has expressed that she had no desire to take the dominant or male role. Then again, she may simply have been denying her male urges for so long that they built up beyond her level of self-control,' he posits.";
		say "     'Regardless, it appears she's calmed down and back to normal after that bit of fun the two of you had over there. All's well that ends well, it seems.'";
	else:
		say "     After you've had a chance to recover, you head over to speak with Dr. Mouse about Susan's changes. He'd been attentively watching the events unfold and is cleaning up the small mess he's left behind as you approach him.";
		say "     'I'm uncertain exactly what may have happened. I've not really inquired about your relationship with her - I've never had an interest in mundane interpersonal matters - but she does tend to prattle on about her feelings for you. She has expressed that she had no desire to take the dominant or male role. Then again, she may simply have been denying her male urges for so long that they built up beyond her level of self-control. And with that release, her masculine drive has been expanded,' he posits.";
		if intelligence of Player >= 15:
			say "     Asking if she might have come into contact with something, he scratches his ear. 'There was a minor mishap with a bit of testing solution recently. This is the reason why I've been insisting she follow proper safety and wear a lab coat, I might add. But that was nothing but a mundane solution and would not have affected her in such a manner. I'd even examined her at the time and found nothing amiss. Perhaps she'd later come into contact with another material or otherwise sampled something without my knowledge or permission. You must admit that she's not the brightest creature out there. I shall have to keep a closer eye on her,' he adds.";
			say "     'Regardless, let me assure you that I'll give her a thorough examination to make certain she is healthy and that there are no deleterious effects or unexpected surprises arising from this transition. Though you certainly seemed pleased enough with the results of her change,' he adds with a teasing grin.";


Section 4 - Monster Table Data

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Deer" to infections of CervineList;
	add "Deer" to infections of FurryList;
	add "Deer" to infections of NatureList;
	add "Deer" to infections of HermList;
	add "Deer" to infections of BipedalList;
	add "Deer" to infections of TailList;
	now Name entry is "Deer"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is "Susan";
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[if level of Player > 5][one of]One of her helpers grabs you from behind as she lands a solid punch in your gut.[or]Just as you dodge past one of her strikes, you feel soft hands pawing at your groin, one of her helpers manhandling you with eager roughness.[or]To the cheer of her herd, she headbutts you, sharp antlers stinging powerfully where they strike.[at random][else][one of]She mashes you against the ground, heavy breasts pressed to you.[or]Her thick cock slaps against you as she roughly shoves at you.[or]Thick horns prove to be quite sharp as they poke you.[or]A sudden kick lands in your midsection as she lands a hoof on you.[at random][end if]";
	now defeated entry is "[if level of Player > 5]Her allies array in front of her suddenly, guarding her as they all start to back away. The fight seems to be over, for now[else]She gives a loud bleat of pain and scowls at you before she takes flight. Her graceful body carries her long and fast away[end if].";
	now victory entry is "[deer attack]";
	now desc entry is "[mongendernum 5]     A bipedal deer with soft brown fur and creamy off-white belly and undertail. Her nose, eartips and hands are dark hues. Atop her head is a large rack of antlers, proud and powerful. She has large cream covered breasts capped with thick black teats. She has a hungry, lustful look in her eyes, one hand usually straying to her cock, stroking it almost absentmindedly. It is disturbingly human in appearance, ebon-black fleshed with a cream sheath at the base. She has large, plum-sized balls contained in a creamy colored, softly furred sac. Despite her animalistic appearances, she has hair like a human, running down to a little past her shoulders, a little darker than the brown fur of the majority of her form.[if level of Player > 5] [doestats][end if]"; [ Description of the creature when you encounter it.]
	now face entry is "that of a furry, [if Susan is in primary lab or Susan is in Hidden Lab]feminine[else]antlered[end if], head of an enchanting stag-doe. Your eyes burn with a smoldering lust as they look about from the end of your muzzled face";
	now body entry is "feminine and graceful looking[if Libido of Susan > 0], though your chest and shoulders become strong and masculine[end if]. You have long delicate arms and hands, capped with blackened fingertips, like hooves that don't compromise dexterity";
	now skin entry is "brown furred"; [ skin Description, format as "Looking at yourself, your body is covered in (your text) skin"]
	now tail entry is "Your butt has a deer's tail over it, fluffy and cute with soft cream along the underside. The rest of your ass is quite curvy, your tail hiding nothing.";
	now cock entry is "pitch black human";
	now face change entry is "your face draws out into a snout, slender with a wide nose, new scents teasing your addled senses as your ears grow long and narrow, twitching towards sounds. Thick fur swells ticklishly over your new contours as a distracting pain builds at the top of your head[if Susan is in primary lab or Susan is in Hidden Lab]. Grand new antler points swell and grow ornately[end if]. You give a pant, long tongue hanging a moment";
	now body change entry is "your limbs grow long and graceful, slender, feminine[if Libido of Susan > 0]. Your shoulders broader, becoming strong and masculine in contrast to your narrow waist and girly hips[end if]. Your nails seem to cover your fingertips in a protective hoof each. Your feet chance more dramatically, becoming deer hooves";
	now skin change entry is "soft tingles spread in waves as fur sprouts in odd patterns across you, slowly settling into brown fur across sides and back, and a cream line that runs from under your chin to your groin";
	now ass change entry is "a short, upturned, and furry deer tail sprouts into being over your deliciously round and spankable ass";
	now cock change entry is "your cock darkens until it is entirely black, but human-shaped";
	now str entry is 16;
	now dex entry is 12;
	now sta entry is 18;
	now per entry is 16;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 30;
	now lev entry is 3; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 8; [Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 9; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 5; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 8;
	now Cunt Tightness entry is 6;
	now SeductionImmune entry is false;
	now libido entry is 35; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if Libido of Susan > 0][one of]androgynous[or]strong[or]sexy[at random][else][one of]effeminate[or]sexy[or]alluring[at random][end if]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "cervine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]



To say doestats:
	repeat with y running from 1 to number of rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Deer":
			now MonsterID is y;
			break;
	choose row MonsterID in Table of Random Critters;
	now lev entry is level of Player minus 1;
	if lev entry < 15:
		now dex entry is lev entry + 6; [quick dex and HP growth early on]
		now HP entry is lev entry times 10;
		now wdam entry is ( ( lev entry * 2 ) / 3 ) plus 6;
	else:
		now dex entry is 18 + ( lev entry / 5 ); [normal hard mode dex growth at lvl 15+]
		now HP entry is 60 + ( lev entry times 6 ); [boss hard mode HP growth at lvl 15+]
		now wdam entry is ( ( 4 * lev entry ) / 11 ) + 11; [strong dmg growth for lvl 15+]
	now monsterHP is HP entry;
	say "There are [if lev entry < 21][lev entry divided by 2][else]numerous[end if] other does with her, following her dutifully and gazing at you with their hungry eyes. They look very similar, but lack the antlers.";


Section 5 - Monster Victory

to say deer attack:
	say "     She approaches your fallen form with a smile on her cervine face. 'Little doe, this is where you belong, as part of my herd. You had your chance to be the stag,' she says, tongue rolling across her snout as she reaches to rub over your [Skin of Player] [breast size desc of Player] chest.";
	WaitLineBreak;
	if Player is female:
		say "     Wrestling your hips up into position, she pinches your bottom with her hard fingertips. 'Naughty doe, playing so hard to get. See what you're missing.' She sinks into you with a wet squelch, your mutinous body already warm and set for her arrival as she sinks deeply into your grasping cunt, thick plug snugly held within you a moment before she draws back. Her motions are sharp and powerful, thick balls slapping up against your ass with each movement.";
		if Nipple Count of Player > 0 and Breast Size of Player > 0:
			say "     Her hands wrap around you and she softly teases at your nipples, flicking and pinching at them as she rocks against you. As she adjusts her angle of entry, she makes to grab at your [breast size desc of Player] breasts, massaging into the sensitive flesh eagerly, kneading at you as her groin grinds up against your ass, pushing that black cock as deep as it can go.";
		say "     With a triumphant bleat, she unleashes into your waiting cunt, powerful squirts of virile seed splashing into your belly. You groan with unasked for pleasure, body trembling as climax overtakes you. You clench powerfully around her tool, coating it with your own arousal. [if Player is male]Your [cock size desc of Player] dick lurches, then begins to spray against the ground as it abruptly reaches peak as well, emptying your [Ball Size Adjective of Player] balls in waves of bliss. [end if]You slump to the ground and the deer slips off of you, stroking herself a few last times as she eyes you hungrily. 'Later!' she says, turning to leave.[impregchance]";
	else:
		say "     She scowls. 'You are missing something, doe.' She reaches between your legs, rubbing slowly, the soft fur tickling delightfully at sensitive flesh as she caresses you. Warm tingles of nanite change creep through you.";
		follow the sex change rule;
		if Player is female:
			say "     Wrestling your hips up into position, she pinches your bottom with her hard fingertips. 'Naughty doe, playing so hard to get. See what you're missing.' She sinks into you with a wet squelch, your mutinous body already warm and set for her arrival as she sinks deeply into your grasping cunt, thick plug snugly held within you a moment before she draws back. Her motions are sharp and powerful, thick balls slapping up against your ass with each movement.";
			if Nipple Count of Player > 0 and Breast Size of Player > 0:
				say "     Her hands wrap around you and she softly teases at your nipples, flicking and pinching at them as she rocks against you. As she adjusts her angle of entry, she makes to grab at your [breast size desc of Player] breasts, massaging into the sensitive flesh eagerly, kneading at you as her groin grinds up against your ass, pushing that black cock as deep as it can go.";
			say "     With a triumphant bleat, she unleashes into your waiting cunt, powerful squirts of virile seed splashing into your belly. You groan with unasked for pleasure, body trembling as climax overtakes you. You clench powerfully around her tool, coating it with your own honeys. [if Player is male]Your [cock size desc of Player] dick lurches, then begins to spray against the ground as it abruptly reaches peak as well, emptying your [Ball Size Adjective of Player] balls in waves of bliss. [end if]You slump to the ground and the deer slips off of you, stroking herself a few last times as she eyes you hungrily. 'Later!' she says, turning to leave.[impregchance]";
		else:
			say "     She grunts in frustration. 'You refuse to be a proper doe for me,' she complains darkly before rolling you onto your belly. 'No matter, even a man can be made a doe,' she says with a disturbing smile as she hikes your ass up and aligns her heavy black cock to you. She roughly mounts, plunging the thick plug of a member into your poor ass, showing her dominance with her punishing motions. Her hands show her softer side, caressing your front in slow, circular motions, promise of a better future if you can get past the searing pain and humiliation you are suffering.";
			if Player is male:
				say "     Her soft palm brushes against your [Cock of Player] member, starting to stroke it in time with her deep pushes into your body. Possibly despite yourself, pleasure builds in your loins and spreads through you. You want to release so badly all of a sudden, [cock size desc of Player] pole throbbing needfully as she strokes it faster and faster.";
			WaitLineBreak;
			say "     She pulls you back suddenly, body rigid as heat begins to spread inside of you from her twitching member. [if Player is male]Your [Ball Size Adjective of Player] balls lurch and you spray into the air, coaxed on by gentle squeezes of her hand, milking you even as she fills you with her thick seed. [end if]Her tongue licks over an ear. 'Good doe. You will be welcome in the herd when you learn your place,' she whispers as she draws free and leaves you, bruised but sated. As she goes, you see her scratching lightly at her heavy balls, scheming lustfully of her next conquest.[mimpregchance]";


Section 6 - Additional Mechanics

to deerfy:
	if hospquest < 19:
		infect "Deer";
		if "Microwaved" is listed in feats of Player:
			say "WARNING: Sex shifting nanites detected! Allow?";
			if Player consents:
				say "OK.";
				follow the sex change rule;
			else:
				say "You wave a tiny microwave transmitter over the affected area. Ahhh, all clean!";
	else if BodyName of Player is "Enhanced Chimera":
		if Player is pure:
			increase score by 0; [do nothing]
		else:
			say "Contact with Susan has stimulated your latent chimeric infection, causing it to activate.";
			infect "Enhanced Chimera";
	else:
		infect "Deer";
		if "Microwaved" is listed in feats of Player:
			say "WARNING: Sex altering nanites detected! Allow?";
			if Player consents:
				say "OK.";
				follow the sex change rule;
			else:
				say "You wave a tiny microwave transmitter over the affected area. Ahhh, all clean!";


Section 7 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Susan's Epilogue"	"NPCSharedInfection"	""	Susan's Epilogue rule	900	false
"Deer Infection"	"Infection"	""	Deer Infection rule	1000	false

This is the Susan's Epilogue rule:
	if Susan is not in primary lab and Susan is not in hidden lab:
		make no decision;
	if Player has no body of "Deer" and Player has no body of "Reindeer":
		make no decision;
	[If we got this far, her epilogue will play]
	trigger ending "Susan's Epilogue"; [Here it states, that the ending has been played.]
	if Player has a body of "Deer":
		if humanity of Player < 10:
			if Susan is in primary lab:
				say "     Fear grips your heart and you take off running like the wind until you reach Susan's arms, leaping into them and curling up against her a moment. She calms you and pets you. Despite your loss of humanity, she remains clear, and cares for you as a mother, even if she likes playing with you like a lover. When rescue does come, she escorts you to society and continues to care for you to the end of your days, never leaving you wanting for company, or anything else.";
			else if Susan is in hidden lab:
				say "     Fear grips your heart and you take off running like the wind until you reach Susan's arms, leaping into them and curling up against her a moment. She calms you and pets you. Despite your loss of humanity, she remains clear, and cares for you as a mother, even if she likes playing with you like a lover. When Dr Mouse leaves the city, she goes with him and takes you into hiding with them. As the doctor continues his work in the shadows, the deer continues to care for you to the end of your days, never leaving you wanting for company, or anything else.";
		else:
			if Susan is in primary lab:
				if Player is male and "Sterile" is not listed in feats of Player:
					say "     When the rescue comes, you return to Susan and leave the city hand in hand. Despite any other loves or friends you pick up, she remains your favored. Her belly is swollen round often with the fruit of your couplings, and she accompanies you almost everywhere, tending to your every whim. You are both happy with the arrangement, and remain together, loving, for the rest of your long lives, eventually tended to by the children you sired and raised so well.";
					if HP of Orthas >= 4:
						say "     Susan remains your loving and loyal doe, bearing twin foals from your union. Your new family convinces you to settle down with them in a life that, though perhaps unplanned, you still find rewarding. Her work assisting Dr. Matt's research continues to yield fascinating discoveries.";
						say "     Your two relationships cause some friction at first, but eventually Susan and Orthas learn to live with, and even rely on and care for each other in times of trouble. Your children grow up together, well-protected and cared for. Dr. Matt's exposure to your family causes him to reconsider some of his less ethical approaches to science.";
				else:
					say "     When the rescue comes, you return to Susan and leave the city hand in hand. Despite any other loves or friends you pick up, she remains your favored. She accompanies you almost everywhere, tending to your every whim. You are both happy with the arrangement, and remain together, loving, for the rest of your long lives.";
					if HP of Orthas >= 4:
						say "     Your twin relationships with both Susan and Orthas cause some friction at first, but eventually the two of them learn to live with, and even rely on and care for each other in times of trouble. Dr. Matt's exposure to your family causes him to reconsider some of his less ethical approaches to science.";
			else if Susan is in hidden lab:
				if Player is male and "Sterile" is not listed in feats of Player:
					say "     When the rescue comes, you return to Susan and leave the city hand in hand, using your false identities as cover. Despite any other loves or friends you pick up, she remains your favored. Her belly is swollen round often with the fruit of your couplings, and she accompanies you almost everywhere, tending to your every whim. You are both happy with the arrangement, and remain together, loving, for the rest of your long lives, eventually tended to by the children you sired and raised so well.";
				else:
					say "     When the rescue comes, you return to Susan and leave the city hand in hand, using your false identities as cover. Despite any other loves or friends you pick up, she remains your favored. She accompanies you almost everywhere, tending to your every whim. You are both happy with the arrangement, and remain together, loving, for the rest of your long lives.";
	if Player has a body of "Reindeer":
		if humanity of Player < 10:
			if Susan is in primary lab:
				say "     Drawn to it by some fading memory, you fly to Trevor Labs, spreading holiday cheer in your wake. A rather angry looking dragon comes out, shaking its fist at you and yelling about having to shovel snow now. You start to laugh, but a fiery blast sends you banking off. But then there is a joyous yell as a doe runs out and pushes the dragon aside, right into a snowbank. Feeling a connection to this lovely creature, that fading memory, you zip down and scoop her up into your arms. You fly off with her as the scaly Scrooge yells 'Good riddance, you pests.' The doe clutches you tightly, kissing you again and again, saying how she knew you'd come back and how you have a lovely body. Soon you are mating in the air and she's becoming more and more a holiday-infused reindeer like yourself, joining the herd. When she start to fly on her own, your lovemaking gets even more acrobatic and the snowfall increases, spreading more holiday cheer over the infected city.";
			else if Susan is in Hidden Lab:
				say "     Drawn to it by some fading memory, you fly the City Hospital, spreading holiday cheer in your wake. Some angry jaguars come out, yelling and shaking their fists at you. But when several silvery vixens come out and start playing in the snow nude, they seem to get into the spirit of things and join the girls in the fun. Several mismatched creatures, which your mind interprets as mismatched toys, come out as well to make a snow fort. You hear a joyous yell or surprise and see an elated doe bouncing up and down at one of the upper story windows, yelling and waving her arms wildly to get your attention. When she sees you've noticed her, she motions for you to wait, dashes to the stairs and comes running out. As she climbs down the steps, a mouse in a lab coat grabs her by the wrist, trying to hold her back.";
				say "     Angry that this little Scrooge would try to keep her from enjoying your winter wonderland, you zoom down to them. You land and shove the mouse to the snowy ground all in one smooth motion. But when you do, all sound of merriment around you stops. There is a collective gasp and all eyes are locked on you. The doe clutches you tightly and whispers fearfully for you to escape. Wrapping your arms around her, you do just that as the hospital hordes start to charge. As you fly off with your doe, you can see the mouse stomping about as he berates the others, all cringing fearfully before his ire, slinking back into the gloomy hospital.";
				say "     Having rescued your doe from the grinchy mouse, you soar across the city with her in your arms. She clutches you tightly, kissing you again and again, saying how she knew you'd come back and how you have a lovely body. Soon you are mating in the air and she's becoming more and more a holiday-infused reindeer like yourself, joining the herd. When she start to fly on her own, your lovemaking gets even more acrobatic and the snowfall increases, spreading more holiday cheer over the infected city.";
		else:
			if Susan is in primary lab:
				say "     Susan happily joins you when you move north, sharing your home. At first, she merely tolerates your collection of holiday kitsch. But she loves you deeply all the same, and you her. ";
				if Player is not male and "Sterile" is not listed in feats of Player:
					say "She's a reluctant buck at first, but is soon rutting you every night, much to your delight. Every year, come Christmas Day, you give birth to a new fawn.";
				else if Player is not male:
					say "She's a reluctant buck at first, but is soon rutting you every night, much to your delight.";
				else:
					say "You rut her often and she ends up giving you a new fawn every year for Christmas.";
				say "     As the holiday season starts to come around, she begins to get more and more into the spirit of things, helping you decorate and even adding to your collection. Subtly at first, but more quickly as that special day gets nearer and nearer, she grows more beautiful and caribou-like. Soon enough, she's helping you 'make' the egg nog for the office Christmas party with a sexy Mrs. Claus outfit on her fully reindeer body[if Player is male] while you rut her from behind[end if].";
			if Susan is in Hidden Lab:
				say "     Susan happily joins you when you move north, sharing your home. Dr Mouse is a little upset about losing his assistant, but you find him a bit grinchy and always keep your dealings with him brief. At first, she merely tolerates your collection of holiday kitsch. But she loves you deeply all the same, and you her. ";
				if Player is not male and "Sterile" is not listed in feats of Player:
					say "She's a reluctant buck at first, but is soon rutting you every night, much to your delight. Every year, come Christmas day, you give birth to a new fawn.";
				else if Player is not male:
					say "She's a reluctant buck at first, but is soon rutting you every night, much to your delight.";
				else:
					say "You rut her often and she ends up giving you a new fawn every year for Christmas.";
				say "     As the holiday season starts to come around, she begins to get more and more into the spirit of things, helping you decorate and even adding to your collection. Subtly at first, but more quickly as that special day gets nearer and nearer, she grows more beautiful and caribou-like. Soon enough, she's helping you 'make' the egg nog for the office Christmas party with a sexy Mrs. Claus outfit on her fully reindeer body[if Player is male] while you rut her from behind[end if].";

This is the Deer Infection rule:
	if ending "Susan's Epilogue" is triggered:
		make no decision;
	if Player has a body of "Deer":
		trigger ending "Deer Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     You can feel your humanity drifting away from you and flee to where your instincts urge you. You find the herd of deer, led by that magnificent stag. On seeing you, Susan steps forward and welcomes you into her arms, holding your shivering form tight to herself, 'Now you see?' she whispers, then lays you down, rutting you to the cheers of the others, many of whom stroke their black cocks over your coupling bodies, spraying you and her with hot strings of seed even as she fills your belly and officially claims you as her own.";
			say "     When she is done, she rises from you, and one of your pack sisters takes her place, rutting you just as eagerly. She rolls over, putting you on top [if Player is female]and leaving the way open for another sister to come up and claim your ass, sandwiching you between as you're fucked by[else]fucking you wildly before passing you along to[end if] each sister in turn, passed around twice through the entire circle of adoring deer. By the time it is done, you are sore but satisfied, and begin your life as a member of the herd.";
		else:
			say "     Your sleek lines attract many. You easily secure a job as a secretary, but live for the weekends, when you'd hit the clubs and dance the night away to the gawkings of others. Though some humans remain fearful on basis of your being mutated at all, more than a few approach you openly, seeing your attention and affection. You show them a good time, on the dance floor, or the bedroom floor, depending on how much you like them. Man, woman, you find yourself not caring as much between the two.";


Deer ends here.
