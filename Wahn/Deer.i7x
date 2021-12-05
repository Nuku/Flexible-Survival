Version 4 of Deer by Wahn begins here.
[- Originally Authored By: Nuku Valente -]
[ Version 3 - Updated code and new scenes - Defth]
[ Version 4 - Update and expansion by Wahn ]

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

[ Loyalty of Susan                                                          ]
[  0 = Default Value                                                        ]
[  1 = Player wants to go medical route for the experiment                  ]
[  2 = Player wants to fuck her for the experiment                          ]
[  3 = Ready for medical                                                    ]
[  4 = Ready for fuck                                                       ]
[  5 = Player told Matt that Susan should decide (will go medical)          ]
[  6 = Post-Experiment (either way)                                         ]


[ IMPORTANT NOTE: Do not give Fem-Herm Susan A cock larger than 9 inches!   ]
[ -> Cock length is used to differentiate F/M-Herm variants                 ]

[ Affection Overview                                                        ]
[  +1 - consoled her in original encounter                                  ]
[  +1 - asked about her past                                                ]
[  +1 - asked about how she was transformed                                 ]
[  +1 - amorously/platonically consoled or given hope for a cure            ]
[  +1 - insisted to Dr. Matt that Susan should decide about the experiment  ]


[TODO: Add event for high affection Susan bandaging the player if they're hurt]

SusanDom is a truth state that varies.[@Tag:NotSaved]SusanDom is usually false.
SusanSub is a truth state that varies.[@Tag:NotSaved]SusanSub is usually false.

Section 1 - Event

Table of GameEventIDs (continued)
Object	Name
Unusual Creature	"Unusual Creature"

Unusual Creature is a situation.
ResolveFunction of Unusual Creature is "[ResolveEvent Unusual Creature]". It is inactive.
Sarea of Unusual Creature is "Park".

to say ResolveEvent Unusual Creature:
	project the Figure of Susan_FHerm_clothed_icon;
	say "     Wandering through the wildly overgrown park, your ears pick up a faint sound and you decide to check it out. Carefully bending aside a branch, you peer into the bushes and see a bipedal deer woman not too far away in the underbrush. She's wearing nothing but a fairly ripped pair of short shorts and a tank top, likely the clothes she had on when originally transforming. Besides those, only the fur on her body protects her from the elements. As you let your eyes wander down over her once more, you spot that she doesn't appear to be completely female, if the bulge at the front of her pants is any indication. The anthro is crying quietly, face buried in her palms and her body curled against a tree. She doesn't react as you slip in closer, not even noticing you until you're almost on top of her. She gasps loudly when she does notice you, throwing herself back against the tree with wide eyes.";
	if Player is Fully Human:
		say "     'Don't look at me! I'm a monster,' she cries out, trying futilely to cover her nonhuman form with arms and hands. Clearly, she's retained a much more human self-image than most infected in the city. Tension and stress is visible in everything from her stance to the somewhat shrill tone of her voice. You can see the muscles in her legs tremble, possibly preparing for all out flight from you.";
	else: [not fully human]
		say "     'W-what are you?' she cries out, clearly afraid over your less than human appearance. Then the young woman wails, 'You - you're infected too, aren't you? A monster, just like me!' all the while futilely trying to cover her form with arms and hands. Clearly, she's retained a much more human self-image than most infected in the city. Tension and stress is visible in everything from her stance to the somewhat shrill tone of her voice. You can see the muscles in her legs tremble, possibly preparing for all out flight from you.";
	LineBreak;
	say "     [bold type]Quick! What do you want to do with the deer?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Grab her before she runs off";
	now sortorder entry is 1;
	now description entry is "Sometimes one has to be a little forceful with people";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Try to calm her down and console her";
	now sortorder entry is 2;
	now description entry is "A calm voice and a smile sometimes can work wonders. Then take her to Dr. Matt once she's more relaxed";
	[]
	if Libido of Player > 50 and player is male:
		choose a blank row in table of fucking options;
		now title entry is "Jump the woman and fuck her";
		now sortorder entry is 3;
		now description entry is "Dominate the doe before taking her to Doctor Matt. Having a little fun first will be no problem, right";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Just tell her to follow you.[as]0[end link][line break]";
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
	AffectionGain 1 for Susan;
	now Unusual Creature is resolved;
	now Resolution of Unusual Creature is 3; [Consoled Susan]

to say Unusualfuck:
	project the Figure of Susan_FHerm_hard_icon;
	say "     Just going ahead and pulling your [Cock of Player] cock out, you lunge forward and grab hold of the long-limbed doe. She doesn't have time to do much more than let out a frightened squeal before she is pushed down to the ground, falling onto the leaves with her belly up. It doesn't look like there is any aggressive bone at all in her body, as she doesn't try to defend herself even in this situation, allowing you to pull down her shorts and spread her legs wide with ease. 'No, wait! I- oooohhhhHH!' she starts to say, then gasps out loud as you hammer into her wet, receptive pussy. The hermaphrodite doe feels amazing around your cock, both her nether lips as well as her furry balls stroking the sides of your shaft as it slides in and out. The shocked squeals of your first entry into her soon give way to sounds of pleasure as she adapts, raising her hips to meet your powerful thrusts before much longer. Your bodies dance together, her own cock grinding against your belly each time you plunge deep into her.";
	say "     As the climax of a quick, wild romp on the forest floor, the doe's cunt suddenly tightens like a vice around you. With a bleat of delight, she writhes under you, hands digging grooves into the ground left and right as her cock fountains thick spurts of cum to splatter all over her chest and breasts. You can feel your balls clenching in response, with the muscle contractions of her twitching pussy driving you over the edge right along with the anthro herm. Grunting out loud, you fill her belly with hot gushes of seed while grinding against her crotch. As the pleasure of your shared orgasms eventually ebbs off, you smile down at the sexy woman you've claimed for yourself by right of breeding. 'I guess I'm your woman now. I'm Susan, by the way,' she says in a somewhat star-struck tone. Postponing any reply about that, you clear your throat and explain that you didn't originally come here just to fuck her and say that someone important wants to meet her. 'Oh, okay then. I'll come, just lead the way,' she says with a nod, and indeed does so after you pull out and guide her from the park.";
	DrMattSusanLabArrival; [this is found in the file Main Storyline.i7x]
	DepravityGain 1 for Susan;
	now Unusual Creature is resolved;
	now Resolution of Unusual Creature is 4; [Fucked Susan]

Section 2 - NPC Basics

Susanoversize is a truth state that varies. Susanoversize is usually false.
Susanfirsttime is a number that varies. Susanfirsttime is usually 0

Table of GameCharacterIDs (continued)
object	name
Susan	"Susan"
Susan	"Samson"

Susan is a person.
ScaleValue of Susan is 3. [human sized]
Body Weight of Susan is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Susan is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Susan is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Susan is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Susan is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Susan is 5. [length in inches]
Breast Size of Susan is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Susan is 2. [count of nipples]
Asshole Depth of Susan is 8. [inches deep for anal fucking]
Asshole Tightness of Susan is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Susan is 1. [number of cocks]
Cock Girth of Susan is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Susan is 9. [length in inches]
Ball Count of Susan is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Susan is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Susan is 1. [number of cunts]
Cunt Depth of Susan is 9. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Susan is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Susan is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Susan is false.
PlayerRomanced of Susan is false.
PlayerFriended of Susan is false.
PlayerControlled of Susan is false.
PlayerFucked of Susan is false.
OralVirgin of Susan is false.
Virgin of Susan is false.
AnalVirgin of Susan is true.
PenileVirgin of Susan is true.
SexuallyExperienced of Susan is true.
TwistedCapacity of Susan is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Susan is false. [steriles can't knock people up]
MainInfection of Susan is "Deer".
Description of Susan is "[Susandesc]".
understand "Samson" as Susan.
Conversation of Susan is { "Bleat!" }.
The fuckscene of Susan is "[sexwithSusan]".

when game begins:
	SetFemalePronouns for Susan;

a postimport rule:
	if "Samson Active" is listed in Traits of Susan:
		SetMalePronouns for Susan;

an everyturn rule:
	if (TimeKeepingVar is 1 or TimeKeepingVar is -7) and Affection of Susan < 0: [post midnight]
		increase Affection of Susan by 1;
		if Affection of Susan is 0:
			say "     [bold type]You get the feeling that [Susan]'s anger might have lessened by now. [roman type][line break]";

to say SusanDesc:
	if debugactive is 1:
		say "DEBUG ->  HP: [HP of Susan], Loyalty of Susan: [Loyalty of Susan], Susanoversize: [if Susanoversize is true]True[else]False[end if]  <- DEBUG[line break]";
	if HP of Susan is 52 and hospcountdown - turns >= 16 and hospquest >= 18 and lastfuck of Susan - turns < 4:
		say "[Susanlabcoatscene]";
	else if Resolution of Unusual Creature is 1 or Resolution of Unusual Creature is 2: [grumpy femherm mode]
		project the Figure of Susan_FHerm_clothed_icon;
		say "     Susan is an anthro doe standing a little over five feet tall. She has soft brown fur, a creamy off-white belly and undertail, while her nose, ear-tips and hands are darker in hue, creating an interesting pattern of fur overall. She has delicate, beautiful features, with the quite mobile ears working to add to any expressions that cross her face. Despite her animalistic appearances, she has hair like a human, a little darker than the brown fur of the majority of her form and freely falling down to just a little past her shoulders. As Susan notices your attention, she gives you a sullen, distrustful look. Seems she's still cross with you for bringing her here without her consent.";
		say "     Ignoring the stare, you let your gaze roam over Susan's body, following the curves of her cream-colored breasts barely hidden by a fairly ripped tank top. The protruding nipples of the anthro are clearly visible through the thin fabric. Further down on the level of her crotch, you can see a noticeable bulge in her short-shorts, leaving little doubt that this young woman is packing something extra down there. An audible huff draws your attention back up to her face, looking annoyed and unimpressed at having been inspected by you like a piece of meat.";
	else if Cock Length of Susan < 10 and Susan is in Primary Lab: [femherm mode in trevor labs]
		SusanFemHerm_Base; [Used both for Dr. Matt & Dr. Mouse form - moved below as a callout so the text isn't duplicated]
		say "     You let your gaze roam over Susan's body, following the curves of her cream-colored breasts barely hidden by a fairly ripped tank top. The protruding nipples of the anthro are clearly visible through the thin fabric. Further down on the level of her crotch, you can see a noticeable bulge in her short-shorts, leaving little doubt that this young woman is packing something extra down there. Casually observing her, you notice that from time to time, she lets a hand stray down to the bulge of her short shorts, lightly rubbing and adjusting it.";
	else if Cock Length of Susan > 10 and Susan is in Primary Lab: [buck mode in Trevor Labs]
		SusanMaleHerm_Base; [Used both for Dr. Matt & Dr. Mouse form - moved below as a callout so the text isn't duplicated]
		if "Samson Active" is listed in Traits of Susan: [Samson description, male pronouns]
			say "     Having physically grown in size since you first found him, Samson's body is now conforming to much more of a masculine shape that includes broadened shoulders and chest, as well as more muscle tone of the arms and legs. His bosom appears to have shrunk a bit - or maybe it's just that the anthro's pectoral muscles have filled in, catching up to stick out above a flat belly and well-defined abs. That's not to say that he's turned completely male though, as you can still see some rounded curves of Samson's breasts at the lower edge of his pecs, with nicely large areolas and protruding nipples. He's still a herm, but a decidedly masculine one now. Glancing down at the crotch of your deer friend, you can see that the bulge in the short-shorts is larger than it was before too, and you know full well that an 11-inch cock is just waiting for you within.";
		else: [Susan description, female pronouns]
			say "     Having physically grown in size since you first found her, Susan's body is now conforming to much more of a masculine shape that includes broadened shoulders and chest, as well as more muscle tone of the arms and legs. Her bosom appears to have shrunk a bit - or maybe it's just that the anthro's pectoral muscles have filled in, catching up to stick out above a flat belly and well-defined abs. That's not to say that she's turned completely male though, as you can still see some rounded curves of Susan's breasts at the lower edge of her pecs, with nicely large areolas and protruding nipples visible through the thin fabric of her ripped tank top. She's still a herm, but a decidedly masculine one now. Glancing down at the crotch of your deer friend, you can see that the bulge in the short-shorts is larger than it was before too, and you know full well that an 11-inch cock is just waiting for you within.";
	else if HP of Susan > 50 and HP of Susan < 73: [doe mode with labcoat in the hospital]
		SusanFemHerm_Base; [Used both for Dr. Matt & Dr. Mouse form - moved below as a callout so the text isn't duplicated]
		say "     Being somewhat of a hospital lab assistant now, she's been provided a lab coat while working with Dr. Mouse. Susan has hemmed it slightly so it better shows her effeminate body. It covers her well-rounded breasts and hangs down over her body and crotch, not quite hiding a bulge there. Casually observing her, you notice that she frequently slips a hoofed hand into her coat to absentmindedly fondle it.";
	else if HP of Susan > 72: [buck mode in the hospital]
		SusanMaleHerm_Base; [Used both for Dr. Matt & Dr. Mouse form - moved below as a callout so the text isn't duplicated]
		if "Samson Active" is listed in Traits of Susan: [Samson description, male pronouns]
			say "     Having physically grown in size since you first found him, Samson's body is now conforming to much more of a masculine shape that includes broadened shoulders and chest, as well as more muscle tone of the arms and legs. Being somewhat of a hospital lab assistant now, he's been provided a lab coat while working with Dr. Mouse. Under the white coat, you can see that his bosom seems to be flatter and less pointy than it appeared before - maybe it's shrunk a bit, it could just be that the anthro's pectoral muscles have filled in, catching up to stick out above a flat belly and well-defined abs. That's not to say that he's turned completely male though, as you catch a glimpse of some rounded curves of Samson's breasts at the lower edge of his pecs, with nicely large areolas and protruding nipples. He's still a herm, but a decidedly masculine one now. Glancing down at the crotch of your deer friend, you can see that the bulge in the short-shorts is larger than it was before too, and you know full well that an 11-inch cock is just waiting for you within.";
		else: [Susan description, female pronouns]
			say "     Having physically grown in size since you first found her, Susan's body is now conforming to much more of a masculine shape that includes broadened shoulders and chest, as well as more muscle tone of the arms and legs. Being somewhat of a hospital lab assistant now, she's been provided a lab coat while working with Dr. Mouse. Under the white coat, you can see that her bosom seems to be flatter and less pointy than it appeared before - maybe it's shrunk a bit, it could just be that the anthro's pectoral muscles have filled in, catching up to stick out above a flat belly and well-defined abs. That's not to say that she's turned completely male though, as you can still see some rounded curves of Susan's breasts at the lower edge of her pecs, with nicely large areolas and protruding nipples visible through the thin fabric of her ripped tank top. She's still a herm, but a decidedly masculine one now. Glancing down at the crotch of your deer friend, you can see that the bulge in the short-shorts is larger than it was before too, and you know full well that an 11-inch cock is just waiting for you within.";

to SusanFemHerm_Base:
	project the Figure of Susan_FHerm_clothed_icon;
	say "     Susan is an anthro doe standing a little over five feet tall. She has soft brown fur, a creamy off-white belly and undertail, while her nose, ear-tips and hands are darker in hue, creating an interesting pattern of fur overall. She has delicate, beautiful features, with the quite mobile ears working to add to any expressions that cross her face. Despite her animalistic appearances, she has hair like a human, a little darker than the brown fur of the majority of her form and freely falling down to just a little past her shoulders. As Susan notices your attention, ";
	if "Submissive" is listed in Traits of Susan: [Player's the man]
		say "she gives you a submissive, almost demure look, happy to be noticed. Then she changes her pose a little, subconsciously seeking to present herself from her best side and entice you. She's clearly come far from being a frightened and lost being hiding out alone in the overgrown park.";
	else if "Equal" is listed in Traits of Susan: [equal partners]
		say "she smiles happily and gives you a wink, then even poses a little to show off her body to you. The anthro has come far from being a frightened and lost being hiding out alone in the overgrown city park. She usually has a confident, lustful look in her eyes, and watching her, you can frequently see that she lets one hand stray down to her crotch to casually rub or adjust herself.";
	else: [not talked her about being mates yet]
		say "she gives you a shy smile.";

to SusanMaleHerm_Base:
	if "Samson Active" is listed in Traits of Susan: [Samson description, male pronouns]
		say "     Samson is an anthro buck standing about six and a half feet tall. He has soft brown fur, a creamy off-white belly and undertail, while his nose, ear-tips and hands are darker in hue, creating an interesting pattern of fur overall. The deer herm's head is crowned by an impressive rack of antlers and he has masculine features, with just a hint of the delicate doe you originally found in the park. Despite his animalistic appearances, he has hair like a human, a little darker than the brown fur of the majority of his form and drawn into a ponytail that hangs down and over one of his shoulders. As Samson notices your attention, ";
		if "Dominant" is listed in Traits of Susan: [Samson's the man]
			say "he gives you a grin, then raises one arm to flex a little, proudly displaying his muscles. Then he runs a hand down his front, cupping the bulge of his pants and winking at you after wiggling his eyebrows. He's clearly come far from being a frightened little doe hiding out alone in the overgrown park.";
		else if "Equal" is listed in Traits of Susan: [equal partners]
			say "he smiles happily and gives you a wink, then even poses a little to show off his body to you. The anthro has come far from being a frightened little doe hiding out alone in the overgrown city park. He usually has a confident, lustful look in his eyes, and watching him, you can frequently see that he lets one hand stray down to his crotch to casually rub or adjust himself.";
	else: [Susan description, female pronouns]
		say "     Susan is an anthro doe-buck standing a little over six feet tall. She has soft brown fur, a creamy off-white belly and undertail, while her nose, ear-tips and hands are darker in hue, creating an interesting pattern of fur overall. The deer herm's head is crowned by an impressive rack of antlers and she has masculine features, with just a hint of the delicate doe you originally found in the park. Despite her animalistic appearances, she has hair like a human, a little darker than the brown fur of the majority of her form and freely falling down to just a little past her shoulders. As Susan notices your attention, ";
		if "Submissive" is listed in Traits of Susan: [Player's the man]
			say "she gives you a submissive, almost demure look, happy to be noticed. Then she changes her pose a little, subconsciously seeking to present herself from her best side and entice you. She's clearly come far from being a frightened little doe hiding out alone in the overgrown park.";
		else if "Equal" is listed in Traits of Susan: [equal partners]
			say "she smiles happily and gives you a wink, then even poses a little to show off her body to you. The anthro has come far from being a frightened little doe hiding out alone in the overgrown city park. She usually has a confident, lustful look in her eyes, and watching her, you can frequently see that she lets one hand stray down to her crotch to casually rub or adjust herself.";

instead of sniffing Susan:
	say "     The herm deer has a mix of doe and buck scents, heavy with arousal and longing.";

to FeralizeSusan:
	now HP of Susan is 1;
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Deer":
			now MonsterID is y;
			break;
	now area entry is "Park";

to SusanTalkMenu: [TODO: Add talk option about sexual orientation]
	let DoneTalking be false;
	if Cock Length of Susan < 11: [FHerm mode]
		project the Figure of Susan_face_icon;
	LineBreak;
	say "     [bold type]What do you want to talk to [PosAdj of Susan] about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if "Samson Active" is listed in Traits of Susan:
		choose a blank row in table of fucking options;
		now title entry is "His life";
		now sortorder entry is 1;
		now description entry is "Get to know Samson a bit more";
	else:
		choose a blank row in table of fucking options;
		now title entry is "Her life";
		now sortorder entry is 1;
		now description entry is "Get to know Susan a bit more";
	[]
	if "Samson Active" is listed in Traits of Susan:
		choose a blank row in table of fucking options;
		now title entry is "How he got infected";
		now sortorder entry is 2;
		now description entry is "Ask Samson how he ended up a deer";
	else:
		choose a blank row in table of fucking options;
		now title entry is "How she got infected";
		now sortorder entry is 2;
		now description entry is "Ask Susan how she ended up a deer";
	[]
	if "Herm Life Talk Done" is not listed in Traits of Susan:
		choose a blank row in table of fucking options;
		now title entry is "Her feelings about being a herm";
		now sortorder entry is 3;
		now description entry is "Ask Susan how she feels about her dual gender";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Living in the park";
	now sortorder entry is 4;
	now description entry is "Ask [Susan] how [SubjectPro of Susan] survived all this time in the park";
	[]
	if "Transformation Talk Done" is listed in Traits of Susan and "Background Talk Done" is listed in Traits of Susan and "Herm Life Talk Done" is listed in Traits of Susan and "Deer Life Talk Done" is not listed in Traits of Susan:
		if "Samson Active" is listed in Traits of Susan:
			choose a blank row in table of fucking options;
			now title entry is "His feelings about being an anthro deer";
			now sortorder entry is 5;
			now description entry is "Ask Samson how he ended up a deer";
		else:
			choose a blank row in table of fucking options;
			now title entry is "Her feelings about being an anthro deer";
			now sortorder entry is 5;
			now description entry is "Ask Susan how she ended up a deer";
	[]
	if Affection of Susan > 1 and "Herm Life Talk Done" is listed in Traits of Susan and PlayerControlled of Susan is false and Resolution of Unusual Creature is 4 and (HP of Susan is 0 or HP of Susan is 4): [no control, fucked, f-herm]
		choose a blank row in table of fucking options;
		now title entry is "Tell her she's yours";
		now sortorder entry is 89;
		now description entry is "You've already laid claim on Susan by taking her, and now that you know her a bit, you can make her fully submit";
	[]
	if Affection of Susan > 2 and "Herm Life Talk Done" is listed in Traits of Susan and ((M-Herm Susan Transformation Start is active and M-Herm Susan Transformation Start is resolved) or (M-Herm Susan Transformation Start is inactive)) and PlayerFriended of Susan is false and Resolution of Unusual Creature is 3: [no relationship, consoled]
		choose a blank row in table of fucking options;
		now title entry is "Approach her about finding comfort with each other";
		now sortorder entry is 90;
		now description entry is "You know and like each other, so suggest making things physical between the two of you";
	[]
	if HP of Doctor Matt < 8: [not yet finished Matt's experiment]
		choose a blank row in table of fucking options;
		now title entry is "Starting Dr. Matt's Experiment";
		now sortorder entry is 100;
		now description entry is "Bring up the experiment Dr. Matt wants to perform with the two of you";
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
				if (nam is "Her life" or nam is "His life"):
					say "[SusanBackgroundTalk]";
				else if (nam is "How she got infected" or nam is "How he got infected"):
					say "[SusanTransformationTalk]";
				else if (nam is "Her feelings about being a herm"):
					say "[SusanHermLifeTalk]";
				else if (nam is "Living in the park"):
					say "[SusanParkLifeTalk]";
				else if (nam is "His feelings about being an anthro deer" or nam is "Her feelings about being an anthro deer"):
					say "[SusanDeerLifeTalk]";
					now DoneTalking is true;
				else if (nam is "Tell her she's yours"):
					say "[SusanClaimTalk]";
					now DoneTalking is true;
				else if (nam is "Approach her about finding comfort with each other"):
					say "[SusanRelationshipTalk]";
					now DoneTalking is true;
				else if (nam is "Starting Dr. Matt's Experiment"):
					say "[SusanExperimentTalk]";
					now DoneTalking is true;
				if DoneTalking is false and Affection of Susan >= 0:
					SusanTalkMenu; [looping back to continue talking]
				else:
					wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the anthro deer, shaking your head slightly as [SubjectPro of Susan] gives you a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SusanBackgroundTalk:
	if "Background Talk Done" is not listed in Traits of Susan: [note: no varying texts needed in this, as Samson cannot exist without this being talked about]
		say "     Curiosity drives you to bring up a question about Susan's life before the start of the current craziness, which results in her letting out a little sigh, her ears twitching nervously. She turns to you and raises a hand, seeming ready to reply - but then she pauses, letting her gaze drop to focus on the not quite human look of her arm, being covered by the short hair of her furry coat. As she presses her lips together and sniffs a little, with silence starting to stretch out, you realize that you'll have to do something, so you lay a consoling hand on her arm and go first, aiming to break the ice. As you give your name and explain what led to you being in the city for the nanite outbreak, this seems to show Susan that she can do this too, finally leading to the anthro taking a deep breath and starting to talk.";
		say "     Sadness is audible in Susan's voice as she says, 'I'm - uhm, I mean... when I was a human, my name was Susan Gideon. Not sure if that's even me anymore though. I'm 24. Moved to the city last year when I was starting my new job, at Etheric Vibes. You know, the music company? I became one of the event organizers in the main office, downtown. Arranging things with venues, getting our bands scheduled, all that. I like doing the work, it's interesting and challenging.' Letting out a sigh, she shakes her head at that point. 'I don't even know if I still have a job. After missing all of my appointments the day that... things happened, and not coming to work since. They wouldn't recognize me either. But also, who knows if the company even exists anymore, or if everyone just turned... into things.' Brushing a stand of hair out of her face, she adds, 'It was hard making new friends, after moving. Never seemed the right moment, and so I only really know a few co-workers a little bit, outside of work. I - I'm kinda glad about that now. The thought that someone you're close to is lost in all of this would be terrifying!'";
		WaitLineBreak;
		say "     The two of you continue chatting for a while longer, sharing more details about both of your lives. Being able to talk about things seems to dispel the bouts of sadness and gloom around Susan at least partially. Eventually, when you run out of easy topics to discuss, Susan looks at you and a shy smile appears on her muzzle. 'Thank you. I didn't realize just how good it'd feel to let some of the things out and just talk about things with someone. I mean... it's hard enough to do even outside a difficult time like this... so I appreciate what you're doing!'";
		TraitGain "Background Talk Done" for Susan;
		AffectionGain 1 for Susan;
	else: [repeat talk, with Samson variant]
		if Cock Length of Susan > 10: [m-herm mode in Trevor Labs/Hospital]
			say "     Bringing up [Susan]'s life before the nanite outbreak again, [SubjectPro of Susan] gives a somewhat amused snort. 'Is my life that interesting? Never thought there was anything special about me. But fine, if you wanna hear it all again. When I was a human, my name was Susan Gideon. God, that name feels a million miles away now, after everything that's happened, and keeps happening.' As [SubjectPro of Susan] says this, the anthro reaches up and taps the side of one of [PosAdj of Susan] antlers, then looks down over [PosAdj of Susan] fairly masculinized form. 'Anyways, I'm 24. Moved to the city last year when I was starting my new job, at Etheric Vibes. You know, the music company? I became one of the event organizers in the main office, downtown. Arranging things with venues, getting our bands scheduled, all that. I like doing the work, it's interesting and challenging.'";
			say "     Letting out a sigh, [SubjectPro of Susan] shakes [PosAdj of Susan] head at that point. 'I don't even know if I still have a job. After missing all of my appointments the day that I transformed, and not coming to work since. They wouldn't recognize me either, now even less than before. But also, who knows if the company even exists anymore, or if everyone just turned... into all sorts of shapes. And they might be following their new instincts to do other stuff now. Mostly fucking, I guess.' Pulling [PosAdj of Susan] ponytail to hang over the other shoulder, [SubjectPro of Susan] adds, 'It was hard making new friends, after moving. Never seemed the right moment, and so I only really know a few coworkers a little bit, outside of work. I'm kinda glad about that now. The thought that someone you're close to is lost in all of this would be terrifying! ";
			if "Dominant" is listed in Traits of Susan: [Samson's the man]
				say "You're not so bad yourself, but when you do get in trouble, do come here and let me protect you.'";
			else:
				say "So, I know you can handle yourself, but... please be careful out there, alright?'";
			WaitLineBreak;
			say "     The two of you continue chatting for a while longer, sharing more details about both of your lives. Being able to talk about things seems to dispel the periodic bouts of [Susan] going silent and quietly mulling over everything. Eventually, when you run out of easy topics to discuss, [SubjectPro of Susan] looks at you and a smile appears on [PosAdj of Susan] muzzle. 'Thank you. I didn't realize just how good it'd feel to let some of the things out and just talk about things with someone. I mean - it's hard enough to do even outside a difficult time like this... so I appreciate what you're doing!'";
		else:	[f-herm mode]
			say "     Bringing up Susan's life before the nanite outbreak again, she puts on a little smile and looks at you. 'Is my life that interesting? Never thought there was anything special about me. But fine, if you wanna hear it all again... I'm - uhm, I mean... when I was a human, my name was Susan Gideon. Not sure if that's even me anymore though. I'm 24. Moved to the city last year when I was starting my new job, at Etheric Vibes. You know, the music company? I became one of the event organizers in the main office, downtown. Arranging things with venues, getting our bands scheduled, all that. I like doing the work, it's interesting and challenging.' Letting out a sigh, she shakes her head at that point. 'I don't even know if I still have a job. After missing all of my appointments the day that... things happened, and not coming to work since. They wouldn't recognize me either. But also, who knows if the company even exists anymore, or if everyone just turned... into all sorts of shapes. And they might be following their new instincts to do other stuff now. Mostly... you know.' Brushing a stand of hair out of her face, she adds, 'It was hard making new friends, after moving. Never seemed the right moment, and so I only really know a few coworkers a little bit, outside of work. I - I'm kinda glad about that now. Knowing that someone you're close to is lost in all of this would be terrifying! ";
			if "Submissive" is listed in Traits of Susan: [Player's the man]
				say "I am glad that I don't have to worry about this with you, and can find protection with you.'";
			else:
				say "So, I know you can handle yourself, but... please be careful out there, alright?'";
			WaitLineBreak;
			say "     The two of you continue chatting for a while longer, sharing more details about both of your lives. Being able to talk about things seems to dispel the periodic bouts of sadness and gloom in Susan. Eventually, when you run out of easy topics to discuss, she looks at you and a smile appears on her muzzle. 'Thank you. I didn't realize just how good it'd feel to let some of the things out and just talk about things with someone. I mean... it's hard enough to do even outside a difficult time like this... so I appreciate what you're doing!'";

to say SusanTransformationTalk:
	if "Transformation Talk Done" is not listed in Traits of Susan: [note: no varying texts needed in this, as Samson cannot exist without this being talked about]
		say "     Showing interest in the anthro deer, you ask Susan to please share how she got transformed and ended up in the wooded parts of the public park. Becoming a bit skittish at your question, the young woman hesitates, then finally says, 'I - uhm. ";
	else: [repeat talk, with Samson variant - note: stuttering and pauses for Susan variant, which has a shorter cock]
		say "     Showing interest in the anthro deer, you ask [Susan] to please repeat the story of how [SubjectPro of Susan] got transformed. [SubjectProCap of Susan] replies, 'Am I really that interesting that you want to hear it again? Alright, fine... ";
	say "It [if Cock Length of Susan < 10]- it [end if]kinda just happened, out of the blue! Everything was normal at first that day. I had appointments with some people in various parts of the city, so I didn't have to come into the office right away. After going to a really nice outdoor venue in the west of the city and clearing up the schedule for one of our bands, I went down the block to the next StarBull's, got one of their amazing Furppuchino's and was nipping on that mocha goodness while walking to my bus stop. I remember getting there and waiting for my bus to arrive, nice warm sunlight on my skin, thinking about - well, the guy I had my morning meeting with earlier, Roberto. He'd kinda been really nice and charming, even gave me a free ticket for the place so I could watch the band perform too.'";
	say "     [Susan]'s eyes have a bit of a faraway look for a second, as [SubjectPro of Susan] dwells on [ObjectPro of Susan] last memories of being human. Then [SubjectPro of Susan] clears [PosAdj of Susan] throat and adds, 'The next thing I know, there's this little kid. Just a small boy, not even up to my hip. And he was holding the hand of his mom, waiting for the bus just like me. Then suddenly, I hear 'Mommy, mommy! That woman has funny ears!' His mother looked down at the boy, smiled and told him to please not bother anyone. Then she glanced up at me and[if Cock Length of Susan < 10]... [else] [end if]screamed! It was painfully loud! I just had to raise my hands to cover my ears, and[if Cock Length of Susan < 10]... [else] [end if]felt these instead. They're very sensitive, you know.' With that said, [Susan] bends one of [PosAdj of Susan] long deer ears forward with [PosAdj of Susan] hand, looking at the soft, fur-covered body part.";
	WaitLineBreak;
	say "     'It wasn't just that either, there was fur sprouting out of my arm, and hand, [if Cock Length of Susan < 10]and...[end if] people all around me were shouting, and backing away. ";
	if "Samson Active" is listed in Traits of Susan: [Samson's the man]
		say "One dude actually just ran into traffic, in his panic. I heard a honking and a thump, but he likely was okay. I don't think that passing cars had too much speed at that location. Anyways, ";
	else:
		say "One of them - not the kid, thank god, but some other guy - ran into traffic out of fright from seeing me! I think I remember hearing a crash, really hope he wasn't hurt badly! Don't actually know what happened, because I... ";
	say "I ran, at that point. I had to get out of the middle of people screaming, and pointing, and everything. It's all a bit of a blur after that. There's flashes of buildings I passed, shocked faces and whatnot. Then at one point, I suddenly couldn't even talk straight anymore and fell down, right on the street. I thought [if Cock Length of Susan < 10]I - [end if]I stepped in a hole or something, had broken my lower leg, because when I looked down there was a bend where there shouldn't be one! ";
	if "Samson Active" is listed in Traits of Susan: [Samson's the man]
		say "At that point, I was pretty freaked out by it. But it didn't hurt at all. It just had become something different.' To demonstrate, he raises one leg a little, wiggling the last section of his digitigrade leg a little.";
		say "     'I was in the way of a car too, and that guy honked at me. So, so loud in my new ears! I scrambled back up and kept running, and something, maybe instinct or so drove me to run towards the park. Nature and trees seemed... safe, you know. I just jumped the low wall surrounding the park - felt pretty great to find myself just bounding over it, in retrospect. Didn't really run up to it fast or anything, just a quick little sprint and then across the wall I went. And I kept going, into the woods, fast - with the underbrush snagging and tearing at my clothes. I was pretty glad that the park is really big, with swatches of forest that has very few paths. Anytime I heard voices, or footsteps, I moved out of sight. Not sure if they even knew I was there or were trying to find me - but I gave them all the slip. No one had a chance to catch me, hah! Well, until you tracked me down, that is. If not for that, I think I might just have stayed there. Never talked to another person again, to just be a weird two-legged deer.' You thank him for opening up about his story, which brings a little smile to Samson's face, followed by him nodding to you. 'I - uhm, thanks. I think I needed to go over this with someone. It feels good to get it all off my chest, you know.'";
	else:
		say "I was so afraid! But somehow, it only hurt a little. It just had become something different.' To demonstrate, she raises one leg a little, wiggling the last section of her digitigrade leg a little.";
		say "     'I was in the way of a car too, and that guy honked at me. So, so loud in my new ears! I scrambled back up and kept running, and something, maybe instinct or so drove me to run towards the park. Nature and trees seemed... safe, you know. I just jumped the low wall surrounding the park and ran into the woods to hide, underbrush snagging and tearing at my clothes. I was so glad that the park is really big, with swatches of forest that has very few paths. Anytime I heard voices, or footsteps, I moved out of sight. And that's how I hid, until you came and caught me. If not for you, I think I might just have... stayed there. Never talked to another person again, to just be a weird two-legged deer.' You thank her for opening up about her story, which brings a little smile to Susan's face, followed by her putting a hand on your arm. 'I - uhm, thanks. I think I needed to go over this with someone. It feels good to get it all off my chest, you know.'";
	if "Transformation Talk Done" is not listed in Traits of Susan:
		TraitGain "Transformation Talk Done" for Susan;
		AffectionGain 1 for Susan;

to say SusanParkLifeTalk:
	say "     Out of curiosity, you ask [Susan] how [SubjectPro of Susan] survived in the park for so long. When you found [ObjectPro of Susan] there, it didn't look like [SubjectPro of Susan] knew all that much about the city surrounding, or went scavenging. [SubjectProCap of Susan] nods in confirmation, then says, 'Yeah, [if Cock Length of Susan < 10]I... [end if]I kinda just lived on what I could find in the park. There's a stream with fresh water flowing through the woods thankfully, and as for food...' [Susan ] draws a shame-faced expression, then quietly adds, '[if Cock Length of Susan < 10]Grass. And plants. Some leaves.' [else]I actually grazed. All greens. Grass and so on.' [end if]After pausing for effect, [SubjectPro of Susan] explains, 'At first, after I fled into the park, I didn't eat anything. Got really [if Cock Length of Susan < 10]really[end if] hungry after a day or two, and when I was debating with myself if I should leave and try to find some food, another hunger-pang hit. I don't know what drove me to it, but I kinda found myself ripping off a handful of grass and stuffed it in my mouth! Started chewing and it actually kinda tasted good, so I kept going. Anyways, as it turns out, this body can digest most vegetation. Which is[if Cock Length of Susan < 10]... [else] [end if]fine, I guess. But it made me feel even less human. [if Cock Length of Susan < 10]Even though I was already vegetarian before then.' [else]And with my new bulk, I don't know if that'd be enough for me now.' [end if][line break]";
	TraitGain "Park Life Talk Done" for Susan;

to say SusanHermLifeTalk:
	say "     Stepping up to Susan, you ask her how she's dealing with [if Resolution of Unusual Creature is 3]her gender situation[else]having a cock and a pussy[end if]. The anthro deer opens her mouth, then pauses, no words actually coming out. 'I - I don't really know, actually. It may sound crazy, but this one thing I'm actually not [italic type]that[roman type] freaked out over. I've been feeling pretty... nice, even somewhat... randy. And when I got excited, thoughts of both men and even sometimes women flashed through my mind. I mean, I did, uhm... experiment a little before, but I've only had boyfriends, ever.' Shaking her head as if in disbelief over her own words, she brushes a hand over her hair, then brushes her fingers along the side of her muzzle, feeling its shape and the short fur on her face. 'I mean, maybe it's just something of an overload because I'm so focused on not actually being human anymore, but... hmm. It's not like I suddenly lost what I'm used to completely, down there. There's just something... new. And I've been surprised a few times by its... reactions. Seems like it's got a mind of its own sometimes. I mean, it's been popping up at the drop of a hat, in the weirdest moments.' As she says this, Susan lightly pats the bulge at the front of her shorts, seeming a bit embarrassed. Yet then, her ears give a flick and she looks at you, eyebrows rising. 'Not so long ago, I didn't think I'd be leaving the forest again, and be among people. But now that you're actually asking me about it, I'm starting to worry. What will other people think? What do [italic type]you[roman type] think of me, like this? Am I a woman, or a man?'";
	LineBreak;
	say "     [bold type]What do you reply to her?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - She's perfect the way she is. There is beauty in her dual form, and she shouldn't need to feel that she should be one thing or another.";
	say "     [link](2)[as]2[end link] - She's still a woman in your eyes. Just... with a little extra, and that's not a bad thing.";
	say "     [link](3)[as]3[end link] - Her having a masculine side is actually quite nice in your eyes. You'd love to see her take on that role too, and be more confident in herself.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to say she's fine as she is, [link]2[end link] to say she's still a woman, or [link]3[end link] to say you'd love to see her a bit more manly.";
	if calcnumber is 1:
		LineBreak;
		say "     With a smile, you tell Susan that she doesn't actually need to choose just one side or the other. She can be both, in one person, beautiful in her own right. It is clear from her expression that this is something she didn't think was an option. 'Do - do you really think so?' comes a shy question, carrying with it an air of wonder and relief. Nodding with a smile, you confirm what you said, then add that she can have the best of both worlds. No matter who she might choose to be with in the future, she'll be compatible with them physically. She should think of all the new opportunities that opens up for her. 'I think I like it, if you say it like that.' After saying those words, it appears to you that her eyes are filled with a bit more energy and inner fire than before, and the smile showing on her muzzle has a bit of a naughty twist to it.";
	else if calcnumber is 2:
		LineBreak;
		say "     With a smile, you tell Susan that she shouldn't worry. From your perspective, there's still a very beautiful and desirable woman standing right in front of you. So what if she's got a little... extra down below. That's nothing to be ashamed of, and there's plenty of herms in the city now. She can be as much of a woman as she wants to, no one can take that away from her. What is important is how she sees herself. 'Do - do you really think so?' comes a shy question, carrying with it an air of wonder and relief. Nodding with a smile, you confirm what you said, then add that she can have the best of both worlds. Experiment a little with the... other part of her new body, when she's ready. 'I think I like it, if you say it like that.' After saying those words, it appears to you that her eyes are filled with a bit more energy and inner fire than before, and the smile showing on her muzzle has a bit of a seductive twist to it.";
	else if calcnumber is 3:
		LineBreak;
		say "     With a smile, you tell Susan that she shouldn't worry. From your perspective, she's actually got an almost enviable state now. The mind and more sensual outlook of a woman, in charge of her new equipment added down below. Asking if she's felt the virile urges and burning desires yet that being part male brings, Susan presses her lips together, not quite suppressing a mischievous smile, then nods quickly. Chuckling, you tell her she should embrace it. Try experiencing being more masculine and assertive, live that to the fullest. She's been a woman her whole life, so let her experience this new side. At the same time, she can be comforted by knowing that what she's used to is still a part of her, there when she wants it. 'Do - do you really think so?' comes a shy question, carrying with it an air of wonder and relief. Nodding with a smile, you confirm what you said, then add that she can have the best of both worlds. 'I do like it, if you say it like that.' After saying those words, it appears to you that her eyes are filled with a bit more energy and inner fire than before, and the smile showing on her muzzle has a bit of a cocky twist to it.";
		say "     [bold type]Some inner voice tells you that it might be a good idea to give Susan some time alone to think about what you just said.[roman type][line break]";
		now M-Herm Susan Transformation Start is active; [walk-in event with the horns starting to come in activated]
	TraitGain "Herm Life Talk Done" for Susan;

Table of GameEventIDs (continued)
Object	Name
M-Herm Susan Transformation Start	"M-Herm Susan Transformation Start"

M-Herm Susan Transformation Start is a situation.
M-Herm Susan Transformation Start is inactive.
ResolveFunction of M-Herm Susan Transformation Start is "[ResolveEvent M-Herm Susan Transformation Start]".
Sarea of M-Herm Susan Transformation Start is "Nowhere".

instead of going to Primary Lab while (M-Herm Susan Transformation Start is active and M-Herm Susan Transformation Start is not resolved and Susan is in Primary Lab):
	move player to Primary Lab;
	say "[ResolveEvent M-Herm Susan Transformation Start]";

to say ResolveEvent M-Herm Susan Transformation Start:
	say "     As you step into the laboratory room once more, you see Susan just getting up from one of the examination tables at the other end, with Doctor Matt standing next to her. He says a few quiet words to her, too low for you to hear over the hum of the air con. Then he walks over to his workstation and begins entering notes, seemingly eager to put down something new he has learned. Curious about what's going on, you approach the anthro deer and are welcomed with a somewhat tired smile. Asking if she's alright, Susan answers, 'Well, kind of. Been having some light headaches and aches, so I asked the doctor to do a check-up. Turns out that I'm not done changing yet. Gained half an inch in height, and some more muscle tone, apparently.' Your gaze follows the movements as she pats some parts of her body, making you realize that the anthro has become a little more masculine in her appearance with added muscle definition. 'And as for the headaches... look at this!' Bending her neck, she parts her hair, then points to two tiny little bulges on top of her head.";
	say "     'Doctor Matt said he wasn't sure if it'll really happen, but... there's a possibility I'll be growing actual antlers! That's crazy, isn't it?! The doctor is happy because he gets to study it happening, but I'm not exactly thrilled that I'm changing [italic type]again[roman type]. And they're pretty itchy too!' Rubbing at her head, then snatching her hands away, Susan blows out her breath in exasperation. Finally, she starts looking for some busy-work in the lab, to distract herself from these new developments of her body. As you watch her go and start to lift and re-stack some supplies, subconsciously picking a job that matches her now greater strength, you can't help but wonder to yourself if this might have something to do with the discussion about her gender you had with the anthro deer just a little while ago. She wouldn't literally change physically just because you suggested she should try out her masculine side more, or would she? [bold type]The possibility of her becoming even more of a masculine herm flashes through your thoughts. Maybe this could be made to happen for someone she really likes. [roman type][line break]";
	now Resolution of M-Herm Susan Transformation Start is 1;
	now M-Herm Susan Transformation Start is resolved;

Table of GameEventIDs (continued)
Object	Name
M-Herm Susan Transformation End	"M-Herm Susan Transformation End"

M-Herm Susan Transformation End is a situation.
M-Herm Susan Transformation End is inactive.
ResolveFunction of M-Herm Susan Transformation End is "[ResolveEvent M-Herm Susan Transformation End]".
Sarea of M-Herm Susan Transformation End is "Nowhere".

instead of going to Primary Lab while (M-Herm Susan Transformation End is active and M-Herm Susan Transformation End is not resolved and Susan is in Primary Lab):
	move player to Primary Lab;
	say "[ResolveEvent M-Herm Susan Transformation End]";

to say ResolveEvent M-Herm Susan Transformation End:
	say "     As you step into the laboratory room once more, you Dr. Matt standing next to one of the examination tables, on which a large and fairly muscular anthro deer lies outstretched. He's naked, with your gaze automatically being drawn to his manhood lying on his stomach, sizable even given that it is soft in the somewhat chilly room. The doctor in his hazmat suit is standing with his back to you, making your approach unnoticed by him and blocking the face and chest of the deer from your sight. Only an impressive rack of antlers can be seen past him. Your imagination goes through a flurry of thoughts of who this might be. Where did he come from? Maybe he came looking for Susan? Tracked her here by scent? But then, Orthas didn't say anything about a new arrival, either. And where [italic type]is[roman type] your very special deer anyways? You're not seeing her in here! Worry builds moment by moment as scenarios of what might have happened build up in your mind - only to be interrupted as Dr. Matt speaks.";
	say "     'Fascinating. You are quite healthy, impressively so. To be honest, before the outbreak of the current calamity, I never had a patient in such excellent physical condition.' As he picks up a clipboard and makes some notes on it, you hear the patient ask, 'Yes, but does this mean I'll just continue shifting like this? I hadn't even gotten used to my old body, and now I'm... different, again!' The voice is immediately familiar to you, despite a slight shift in its tone. That's Susan! Walking a few steps to the side, you see your realization confirmed, as it is indeed your deer friend on the table, albeit with somewhat masculinized features of her face, as well as broader shoulders and more muscular shape. Her pecs have gotten bigger with muscle and stick out, de-empathizing the herm's breasts, even while she still has nicely big, perky nipples.";
	WaitLineBreak;
	say "     Turning a page to check a computer printout on his clipboard, Dr. Matt shakes his head. 'While I can't promise you an absolute guarantee or anything, given that this is technology I am still working on understanding, it does not appear that you will need to worry about that. From what my analysis can tell, the nanites in your body have been switched over to a level of reduced activity. Maintaining the status quo, contrary to building their numbers and preparing for another burst of activity.' Letting out a sigh, Susan replies, 'I guess that's comforting, in some way. Still don't know what I'm supposed to do now, though! I feel different, like a new person!' 'Feelings like that are not unexpected, given the extent of your newest shift, and this partial [']transition['] to a more masculine form. I'm afraid I can give only limited advice for your current situation, but if you actually do feel like another person, have you contemplated maybe adopting a new name? It could be beneficial to your mental state and help you come to accept the new reality for yourself.'";
	say "     'I - I wouldn't even begin to know where to start with something like that,' Susan says, somewhat helplessly. Dr. Matt glances down at his clipboard for a second, looking at her first and last name, then adds, 'Most patients among the transgender community choose something at least a little similar to their old name. Same first letter, a thematic connection, or a person you might admire. I also noted the biblical connection of your last name - Gideon - so that's also an idea. So, just to name a few options, how about... Saul, Syrus, Shaun, Samson or Solomon?' The anthro deer presses her lips together, a thoughtful expression on her face. 'But please, do not let yourself feel pressured into doing this. I am just suggesting an option. It is up to you to do what you feel is best.' Taking a deep breath, then blowing it out, Susan replies, 'I know, thank you doctor.' She pauses for a moment, licking her lips, then adds, 'Samson actually would sound kinda neat, and can be shortened to [']Sam['] if I decide to. Also, my great-uncle on mom's side actually had the name. Loved visiting his farm when I was a little kid, he was a very kind man.' There's a little pause, followed by, 'I'm just still unsure if I really should go that far...'";
	LineBreak;
	say "     [bold type]Do you want to try to influence Susan's decision?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - No. This is something she needs to choose for herself."; [Samson]
	say "     [link](2)[as]2[end link] - Wave to get her attention, then give her a thumbs up. Samson does sound neat to you too."; [Samson]
	say "     [link](3)[as]3[end link] - Wave to get her attention, then shake your head. Susan is a pretty name, after all."; [Susan]
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to leave the decision to Susan, [link]2[end link] to support becoming Samson, or [link]3[end link] to support staying Susan.";
	if calcnumber is 1:
		LineBreak;
		say "     You keep still, pausing where you are to not draw any attention or distract Susan from the important decision she's trying to make. With both Doctor Matt and yourself patiently waiting to let her mull things over, the anthro deer hems and haws for a little while over what to do. Eventually, when she reflexively tries to brush a strand of hair out of her face, her hand bumps into the base of her antlers. Susan looks up at the front points of the antlers which are just barely in her field of vision, then apparently coming to a decision. '[bold type]Yes. This is something I will do. So, Doctor Matt - could you please update my name in your file to Samson?' [roman type]'Of course. And congratulations. I hope you will be happy with your decision, Samson!' With that, the suited man holds out his arm to shake the anthro deer's hand, then makes the correction on his clipboard. He walks over to his workstation afterwards, giving you a friendly nod as he notices you in passing. Left behind on the examination table, Samson swings his legs over its side and stands up. Moving closer to join him, you notice that he's at least a foot taller than Susan was, giving him quite an imposing stature at roughly six and a half feet tall.";
		SamsonRenaming;
		now Resolution of M-Herm Susan Transformation End is 1; [let her choose -> Samson]
	else if calcnumber is 2:
		LineBreak;
		say "     Walking forward a little further, you raise an arm and give Susan a little wave, drawing attention to yourself. Her eyes focus on you, then the smile and thumbs-up you're giving her. With a thankful expression, she gives you a relieved nod, then says out loud. '[bold type]Yes. This is something I should do. Will do. So, Doctor Matt - could you please update my name in your file to Samson?' [roman type]'Of course. And congratulations. I hope you will be happy with your decision, Samson!' With that, the suited man holds out his arm to shake the anthro deer's hand, then makes the correction on his clipboard. He walks over to his workstation afterwards, giving you a friendly nod as he notices you in passing. Left behind on the examination table, Samson swings his legs over its side and stands up. Moving closer to join him, you notice that he's at least a foot taller than Susan was, giving him quite an imposing stature at roughly six and a half feet tall.";
		SamsonRenaming;
		now Resolution of M-Herm Susan Transformation End is 2; [supported name change -> Samson]
	else if calcnumber is 3:
		LineBreak;
		say "     Walking forward a little further, you raise an arm and give Susan a little wave, drawing attention to yourself. Her eyes focus on you, then the serious expression and shake of the head you're giving her. With a slightly surprised expression, she gives you a nod, then says out loud. '[bold type]No. I don't think a new name is something for me after all. [roman type]My parents chose this name for me, and I've been happy with it all my life, so just abandoning it doesn't seem right. But thank you for your suggestion anyways, Doctor Matt.' 'Of course, as you prefer.' With that said, the suited man smiles at the anthro deer, then walks over to his workstation afterwards, giving you a friendly nod as he notices you in passing. Left behind on the examination table, Susan swings her legs over its side and stands up. Moving closer to join her, you notice that she's at least a foot taller than before, giving her quite an imposing stature at roughly six and a half feet tall.";
		say "     'So, this is who I am now,' the anthro deer says, waving a hand to indicate her naked body with markedly less shyness than she exhibited previously. As your gaze follows the movement, it inevitable passes over her crotch, allowing you to take in the herm's cock, which looks to have gained an inch or two and some girth, at least from what you can tell with her being soft right now. Chuckling, Susan wraps her fingers around the soft member and wags it towards you in a playful gesture, then takes a step to the side to pick up his clothes. Stepping into the shorts and pulling them up works without too much issue, although they are almost obscenely tight and show the outline of her member, but when Susan tries to slip the top over her head and raised arms, the garment catches on one of the sharp spikes of her antlers and rips to shreds. It is comical to see the muscled buck-herm stand there with her arms and antlers entangled in the garment, but you help her get free, mostly suppressing your chuckles about the situation.";
		WaitLineBreak;
		say "     'Guess you prefer looking at my naked chest anyways, eh?' Susan comments, joining you in laughing before glancing down at her pecs/breasts. She places a hand on the firm flesh and kneads it under her fingers, then lightly flicks a finger over her left nipple. As she looks up and notices your eyes staring intently at her chest, a smirk crosses her features. The herm buck leans in to bring her muzzle close to your ear, then says, 'Kinda feeling like a total stud now, hah. Looking forward to trying things out with you later. ";
		if "Dominant" is listed in Traits of Susan:
			say "Be sure you're ready for your new buck.' [if Player is submissive]A little pleasant shiver goes through you about the tone of voice that Susan said those words in. The buck runs a hand down your body, lightly groping you before letting go. [else if Player is dominant]You meet her eyes with a little bit of challenge, waggling your eyebrows to show you're not just going to completely submit to her. The buck grunts and gives you a friendly bump to the shoulder. [end if]";
		else:
			say "It'll be fun!' [if Player is submissive]A smile crosses your features as you think about what she can do to you when you have some play-time. [else if Player is dominant]A smile crosses your features as you think about what you can do to her when you have some play-time. You run a hand down her body, lightly groping her before letting go. [end if]";
		say "With a smirk, she winks at you, then proceeds to put her body through its paces, lifting this or that heavy thing and experimentally sprinting up and down the hallway leading to the lab.";
		now Resolution of M-Herm Susan Transformation End is 3; [rejected name change -> Susan]
	now Body Definition of Susan is 7;
	now Androginity of Susan is 2;
	now Cock Length of Susan is 11;
	now Ball Size of Susan is 4;
	now M-Herm Susan Transformation End is resolved;

to SamsonRenaming:
	say "     'So, this is who I am now,' the anthro deer says, waving a hand to indicate his naked body with markedly less shyness than Susan showed before. As your gaze follows the movement, it inevitable passes over his crotch, allowing you to take in the herm's cock, which looks to have gained an inch or two and some girth, at least from what you can tell with him being soft right now. Chuckling, Samson wraps his fingers around the soft member and wags it towards you in a playful gesture, then takes a step to the side to pick up his clothes. Stepping into the shorts and pulling them up works without too much issue, although they are almost obscenely tight and show the outline of his member, but when Samson tries to slip the top over his head and raised arms, the garment catches on one of the sharp spikes of his antlers and rips to shreds. It is comical to see the muscled buck stand there with his arms and antlers entangled in the garment, but you help him get free, mostly suppressing your chuckles about the situation.";
	WaitLineBreak;
	say "     'Guess you prefer looking at my naked chest anyways, eh?' Samson comments, joining you in laughing before glancing down at his pecs/breasts. He places a hand on the firm flesh and kneads it under his fingers, then lightly flicks a finger over his left nipple. As he looks up and notices your eyes staring intently at his chest, a smirk crosses his features. The herm buck leans in to bring his muzzle close to your ear, then says, 'Kinda feeling like a total stud now, hah. Looking forward to trying things out with you later. ";
	if "Dominant" is listed in Traits of Susan:
		say "Be sure you're ready for your new buck.' [if Player is submissive]A little pleasant shiver goes through you about the tone of voice that Samson said those words in. The buck runs a hand down your body, lightly groping you before letting go. [else if Player is dominant]You meet his eyes with a little bit of challenge, waggling your eyebrows to show you're not just going to completely submit to him. The buck grunts and gives you a friendly bump to the shoulder. [end if]";
	else:
		say "It'll be fun!' [if Player is submissive]A smile crosses your features as you think about what he can do to you when you have some play-time. [else if Player is dominant]A smile crosses your features as you think about what you can do to him when you have some play-time. You run a hand down his body, lightly groping him before letting go. [end if]";
	say "With a smirk, he winks at you, then proceeds to put his body through its paces, lifting this or that heavy thing and experimentally sprinting up and down the hallway leading to the lab.";
	now printed name of Susan is "Samson";
	TraitGain "Samson Active" for Susan;
	SetMalePronouns for Susan;

to say SusanDeerLifeTalk:
	say "     Clearing your throat, you tell [Susan] that you'd like to talk about [PosAdj of Susan] views on being an anthro. The hermaphrodite's expression falls as you bring up the topic, with [ObjectPro of Susan] letting out a deep sigh. [SubjectProCap of Susan] waves a hand in front of [PosAdj of Susan] chest, then says, 'Turning into this isn't how I imagined my life going after moving to the big city, you know. I mean, we've talked about me getting the new job here last year, and for my transformation went. It's[if Cock Length of Susan < 10]... [else] [end if]pretty much guaranteed I'm out of a job, and I'm not even human anymore! People have stared, pointed and shouted at me from the moment this whole thing started[if Cock Length of Susan < 10]!' [SubjectProCap of Susan] sniffs as [SubjectPro of Susan] says this, getting a bit worked up about things. [else]! That's not cool at all, is it?!' [SubjectProCap of Susan] draws a grimace to underline [PosAdj of Susan] sentiment. [end if]'So yeah, between all of that, and being treated like a monster the rest of my life - I wish I still was human! Maybe your Doctor Matt will find a way to turn me back?'";
	LineBreak;
	say "     [bold type]Sounds like a pretty 'doom and gloom' outlook for being transformed. It feels like you should reply and give your own opinion. (Choose wisely, this might have marked consequences)[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - There are a number of upsides that [SubjectPro of Susan] maybe hasn't thought about."; [platonic consoling]
	say "     [link](2)[as]2[end link] - Say that some people actually see someone like [ObjectPro of Susan] as pretty desirable, then touch [Susan]'s arm in a light caress."; [amorous consoling]
	say "     [link](3)[as]3[end link] - Agree with [ObjectPro of Susan]. It'd be best if a cure was found. That's why you're helping Dr. Matt."; [platonic consoling]
	say "     [link](4)[as]4[end link] - Tell [Susan] things are actually still worse. Infected go nuts over time if they don't follow their sexual urges."; [aka "lying your ass off"]
	say "     [link](5)[as]5[end link] - Say that [SubjectPro of Susan] is making far too much of a deal out of this. [Susan] shouldn't whine if others have it worse."; [crash and burn]
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 5:
		say "Choice? (1-5)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to platonically console [Susan], [link]2[end link] to amorously console [Susan], [link]3[end link] to agree and offer hope for a cure, [link]4[end link] to lie about needing to submit to one's urges, or [link]5[end link] to ask that [SubjectPro of Susan] stop whining.";
	if calcnumber is 1:
		LineBreak;
		say "     With a gentle smile, you tell [Susan] that things might not be as bad as [SubjectPro of Susan] might see it right now. After all, from everything you've seen so far of the nanite effects, those who have them heal even from grievous injuries. If they potentially counteract aging too, [SubjectPro of Susan] might actually be able to live for a long, long time. And as for quality of life... the bus stop [Susan] mentioned is actually 12 blocks from the edge of the park, if you remember right. That must have been quite a run, followed by casually jumping over a not that short wall. On top of that, [SubjectPro of Susan]'s got sharp senses [if Cock Length of Susan > 9]and a tall, killer body [end if]too. 'Yes, but -' the anthro starts to say, but you raise a hand to show you're not finished yet. Before [Susan] ran rally [PosAdj of Susan] words, you go on to say that the nanite outbreak has affected a large swatch of an enormous city. There must be thousands, no tens of thousands of transformed people. Being like [ObjectPro of Susan] won't be so extraordinary and freaky for people for long. Doubtless, there are many other deer people out there.";
		say "     As you wrap up your list of mostly positive points about [Susan]'s situation, the anthro deer closes [PosAdj of Susan] mouth audibly. With [PosAdj of Susan] lips pressed together as a thoughtful expression crosses the hermaphrodite's face, [Susan] looks down to the ground, followed by scratching the back of [PosAdj of Susan] neck. 'I hadn't thought of all that. Hmm. Thank you. I'm still not sure if I can accept some of the things you said as being right, and good for me, but... it bears thinking on. Give me a moment alone, okay?' With that, [SubjectPro of Susan] wanders off to a quiet corner.";
		TraitGain "Platonically Consoled" for Susan;
		AffectionGain 1 for Susan;
	else if calcnumber is 2: [note: if the player is already in a fuckbuddy relationship with Susan/Samson, this hints at more, if not it hints at a physical relationship]
		LineBreak;
		say "     Looking into [Susan]'s eyes, you give [ObjectPro of Susan] a warm smile, then say in your best charming tone that being treated like an outsider and shunned by others might not be as much of a problem as [SubjectPro of Susan] envisions. There are actually lots of people who'd see someone with [PosAdj of Susan] looks as quite desirable and beautiful. [if PlayerFriended of Susan is true]Some might even want to spend the rest of their days with [ObjectPro of Susan]. [end if]'I can't believe that! Who would -' the anthro deer starts out to refute your words, only to have [PosAdj of Susan] words fail [ObjectPro of Susan] when you reach out to lay a hand on the soft-furred upper arm of [PosAdj of Susan]. As your fingers move in a gentle caress, [Susan]'s eyes widen and [SubjectPro of Susan] says, 'Oh. Ooooh!' If there wasn't fur on the anthro's face, you'd bet [SubjectPro of Susan] would be blushing bright pink now. 'I - uhm, err. Thank you for those nice words, and... everything. I don't quite know if I can believe it, for myself, but... yeah. This bears thinking on. Could you give me a moment, please?' With that, [SubjectPro of Susan] wanders off to a quiet corner, looking over [PosAdj of Susan] shoulder at you and giving you a nice little smile more than once while standing there.";
		TraitGain "Amorously Consoled" for Susan;
		AffectionGain 1 for Susan;
	else if calcnumber is 3:
		LineBreak;
		say "     Nodding to [Susan], you say that you agree that it would be best if everyone could return to being human. Ideally, the positive effects of the nanites can be harnessed without these wild and chaotic transformations. That's one possibility if Dr. Matt is successful in his research, and one of the reasons you're supporting him. The anthro deer gives you a somewhat tired smile, then says, 'Exactly! Thank you for being on my side on this!'";
		TraitGain "Given hope for cure" for Susan;
		AffectionGain 1 for Susan;
	else if calcnumber is 4:
		LineBreak;
		say "     As you present your made-up story about infected needing to give into their sexual urges or become wild and feral, like most of those roaming the streets on the search for sex, [Susan]'s eyes go wide [if Cock Length of Susan < 10]and she covers her gaping mouth with one hand. 'I - uhm, I gotta think about what that means, for me. Please excuse me,' the anthro deer says in a shocked tone, then walks off to a quiet corner. [else]and [SubjectPro of Susan] shakes [PosAdj of Susan] head while saying sarcastically, 'Well, ain't that just fucking great. Things are getting better and better. I gotta think about what to do with that information. Give me a moment alone, okay?' With that, [SubjectPro of Susan] wanders off to a quiet corner.";
		TraitGain "Told to give in to lust" for Susan;
		DepravityGain 1 for Susan;
	else if calcnumber is 5:
		LineBreak;
		say "     As soon as the words are out of your mouth, [if Cock Length of Susan < 10][Susan] bursts into tears, followed by sobbing out the words, [else][Susan]'s expression darkens in anger, with [ObjectPro of Susan] almost shouting the words, [end if]'How can you say such a thing?! I thought you'd understand! I - I can't even look at you right now!' With that, [SubjectPro of Susan] storms off, clearly fuming. You've got little doubt that [Susan] will calm down, but feel that you've shot yourself in the foot for any trust being built between the two of you.";
		TraitGain "Told to stop whining" for Susan;
		AffectionLoss 5 for Susan;
	TraitGain "Deer Life Talk Done" for Susan;

to say SusanExperimentTalk:
	if Loyalty of Susan is 3: [ready for medical]
		say "     As you bring up the experiment again, [Susan] nods to you. 'I'm ready when you are. You can tell the doctor that.'";
		say "     [bold type]You should tell Doctor Matt that you're ready to start with the experiment now. [roman type][line break]";
	else if Loyalty of Susan is 4: [ready for sex]
		say "     [Susan] smiles and lightly touches your arm, then nods to the bed. Taking a deep breath, [SubjectPro of Susan] adds, [if Cock Length of Susan < 10]'So. Do you - do we... uhm. Lie down now?' She seems a bit jittery, looking around nervously and even lightly trembling. [else]'So, guess it's time to do it then, hm?' [SubjectProCap of Susan] seems a bit nervous, looking around distractedly. [end if]At the same time though, [SubjectPro of Susan] appears eager to feel that someone doesn't see [ObjectPro of Susan] as some sort of weird creature and still wants to be with [ObjectPro of Susan] intimately.";
		say "     [bold type]You should tell Doctor Matt that you're ready to start with the experiment now. [roman type][line break]";
	else if Resolution of Unusual Creature is 3: [consoled her]
		if Loyalty of Susan is 1: [player intends to go the medical route]
			if Affection of Susan > 2:
				say "     [Susan] smiles as you approach, [PosAdj of Susan] long ears flicking a little before [SubjectPro of Susan] says, 'I overheard what you two discussed. And... uhm, realize what options there are for the doctor's 'controlled exposure'. Thank you for taking it on you to - to be experimented on. I really appreciate everything you've been doing. Showing me compassion when I was out there in the park, and all. Also, I'm kinda afraid what it even would be like to be with someone, like this.' As [Susan] says those words, [SubjectPro of Susan] looks down upon [ReflexPro of Susan], running [PosAdj of Susan] fingers over the fur of [PosAdj of Susan] arm as if hoping it might just rub off to reveal a normal human self. 'Maybe the doctor can find some way to fix me?' Biting her lip, [SubjectPro of Susan] looks at you shily, and [SubjectPro of Susan] surely would be blushing if [SubjectPro of Susan] didn't have fur all over. 'What I mean to say is this: [bold type]I'm ready when you are. You can tell the doctor that[roman type].'";
			else:
				say "     [Susan] smiles shily as you approach, [PosAdj of Susan] long ears flicking a little before [SubjectPro of Susan] says, 'I overheard what you two discussed. And... uhm, realize what options there are for the doctor's 'controlled exposure'. Are you sure you want to - to be experimented on?' As [Susan] says those words, [SubjectPro of Susan] looks down upon [ReflexPro of Susan], running [PosAdj of Susan] fingers over the fur of [PosAdj of Susan] arm as if hoping it might just rub off to reveal a normal human self. 'Thank you for that. Maybe the doctor can find some way to fix me?' Biting [PosAdj of Susan] lip, [SubjectPro of Susan] looks at you with a somewhat lost and afraid expression. 'What I mean to say is this: [bold type]I'm ready when you are. You can tell the doctor that[roman type].'";
			now Loyalty of Susan is 3; [Susan ready for medical]
		else if Loyalty of Susan is 2: [player wants to lay her]
			if Affection of Susan > 2:
				say "     [Susan] smiles as you approach, [PosAdj of Susan] long ears flicking a little before [SubjectPro of Susan] says, 'I overheard what you two discussed. And... uhm, the way you want to do the doctor's 'controlled exposure'. I - I think you're brave wanting to touch someone as strange as I turned out to be. Thank you for that, and wanting to make me feel comfortable about it, instead of just a... 'procedure' to be done.' As [Susan] says those words, [SubjectPro of Susan] looks down upon [ReflexPro of Susan], running [PosAdj of Susan] fingers over the fur of [PosAdj of Susan] arm as if hoping it might just rub off to reveal a normal human self. 'Maybe the doctor can find some way to fix me afterwards?' Biting [PosAdj of Susan] lip, [SubjectPro of Susan] looks at you shily, and [SubjectPro of Susan] surely would be blushing if [SubjectPro of Susan] didn't have fur all over. 'What I mean to say is this: [bold type]I'm ready when you are. You can tell the doctor that[roman type]'";
			else:
				say "     [Susan] nervously looks down to the ground as you approach, [PosAdj of Susan] long ears flicking a little before [SubjectPro of Susan] glances up and says, 'I overheard what you two discussed. And... uhm, the way you want to do the doctor's 'controlled exposure'. I - I'm fine with it, I think. It's pretty... direct, ";
				if PlayerFriended of Susan is false: [no relationship talk yet]
					say "since we don't even know each other at all, ";
				say "but... I really hope the doctor can find some way to fix me afterwards!' Biting [PosAdj of Susan] lip, [SubjectPro of Susan] looks at you shily, and [SubjectPro of Susan] surely would be blushing if [SubjectPro of Susan] didn't have fur all over. 'What I mean to say is this: [bold type]I'm ready when you are. You can tell the doctor that[roman type]'";
			now Loyalty of Susan is 4; [ready for a fuck]
		else if Loyalty of Susan is 5: [player wants to get her opinion]
			say "     [Susan] smiles as you approach, [PosAdj of Susan] long ears flicking a little before [SubjectPro of Susan] says, 'I overheard what you two discussed. And... uhm, realize what options there are for the doctor's 'controlled exposure'. Thank you. For... for insisting that I get to have a word in this too. I really appreciate everything you've been doing. Showing me compassion when I was out there in the park, and now keeping to your same kind behavior.' Silence stretches out for a little while, with [Susan] looking down upon [ReflexPro of Susan], then running [PosAdj of Susan] fingers over the fur of [PosAdj of Susan] arm as if hoping it might just rub off to reveal a normal human self. 'I - I think I want to go with a medical procedure. Anything else in front of the Doctor would be... awkward. And maybe he can find some way to fix me then?' Biting [PosAdj of Susan] lip, [SubjectPro of Susan] looks at you shily, and [SubjectPro of Susan] surely would be blushing if [SubjectPro of Susan] didn't have fur all over. 'What I mean to say is this: [bold type]I'm ready when you are. You can tell the doctor that[roman type].'";
			AffectionGain 1 for Susan;
			now Loyalty of Susan is 3; [Susan ready for medical]
	else if Resolution of Unusual Creature is 4: [fucked her]
		if Loyalty of Susan is 1: [player intends to go the medical route]
			say "     [Susan] presses [PosAdj of Susan] lips together as you approach, [PosAdj of Susan] long ears flicking a little before [SubjectPro of Susan] says, 'I overheard what you two discussed. And... uhm, realize what options there are for the doctor's 'controlled exposure'. So you don't want to... uhm, do what we did in the park again?' The tone of [PosAdj of Susan] voice makes you think that [SubjectPro of Susan] is slightly conflicted about it - on one hand, relieved that someone [SubjectPro of Susan] barely knows isn't just going to fuck [PosAdj of Susan] again, on the other hand... you might possibly having awoken some submissive urges in [PosAdj of Susan] when you simply took [PosAdj of Susan] as yours before. Silence stretches out for a little while, with [Susan] looking down upon [ReflexPro of Susan], then running [PosAdj of Susan] fingers over the fur of [PosAdj of Susan] arm as if hoping it might just rub off to reveal a normal human self. 'Maybe the doctor can find some way to fix me?' Biting [PosAdj of Susan] lip, [SubjectPro of Susan] looks at you shily, and [SubjectPro of Susan] surely would be blushing if [SubjectPro of Susan] didn't have fur all over. 'What I mean to say is this: [bold type]I'm ready when you are. You can tell the doctor that[roman type].'";
			now Loyalty of Susan is 3; [Susan ready for medical]
		else if Loyalty of Susan is 2: [player wants to lay her]
			say "     [Susan] smiles as you approach, [PosAdj of Susan] long ears flicking a little before [SubjectPro of Susan] says, 'I overheard what you two discussed. And... uhm, the way you want to do the doctor's 'controlled exposure'. So you're going to do again what we did before? That's... fine, I guess.' As [Susan] says those words, [SubjectPro of Susan] looks down upon [ReflexPro of Susan], running [PosAdj of Susan] fingers over the fur of [PosAdj of Susan] arm as if hoping it might just rub off to reveal a normal human self. 'Maybe the doctor can find some way to fix me afterwards?' Biting [PosAdj of Susan] lip, [SubjectPro of Susan] looks at you shily, and [SubjectPro of Susan] surely would be blushing if [SubjectPro of Susan] didn't have fur all over. 'What I mean to say is this: [bold type]I'm ready when you are. You can tell the doctor that[roman type].'";
			now Loyalty of Susan is 4; [ready for a fuck]
		else if Loyalty of Susan is 5: [player wants to get her opinion]
			say "     [Susan] smiles as you approach, [PosAdj of Susan] long ears flicking a little before [SubjectPro of Susan] says, 'I overheard what you two discussed. And... uhm, realize what options there are for the doctor's 'controlled exposure'. Thank you. For... for insisting that I get to have a word in this too. I - I'm a little surprised that you don't just want to... do what we did in the park, before. I guess it shows that people have different sides to them, and don't always show the same, hm?' The tone of [PosAdj of Susan] voice makes you think that [SubjectPro of Susan] is slightly conflicted about it - on one hand, relieved that someone [SubjectPro of Susan] barely knows isn't just going to fuck [PosAdj of Susan] again, on the other hand... you might possibly having awoken some submissive urges in [PosAdj of Susan] when you simply took [PosAdj of Susan] as yours before. Silence stretches out for a little while, with [Susan] looking down upon [ReflexPro of Susan], then running [PosAdj of Susan] fingers over the fur of [PosAdj of Susan] arm as if hoping it might just rub off to reveal a normal human self. 'I - I think I want to go with a medical procedure. Anything else in front of the Doctor would be... awkward. And maybe he can find some way to fix me then?' Biting [PosAdj of Susan] lip, [SubjectPro of Susan] looks at you shily, and [SubjectPro of Susan] surely would be blushing if [SubjectPro of Susan] didn't have fur all over. 'What I mean to say is this: [bold type]I'm ready when you are. You can tell the doctor that[roman type].'";
			AffectionGain 1 for Susan; [kinda going for the "beaten wife" syndrome with her in this fork]
			now Loyalty of Susan is 3; [Susan ready for medical]

to say SusanClaimTalk: [player claims her to fuck with]
	say "     Reaching out to Susan, you take her arm and pull her to your chest, tightly embracing the anthro deer. In a firm, dominant voice, you tell her she's yours now. She looks in your face and opens her mouth to say something, only to have you press your own lips to hers, invading her mouth with your tongue. Just like the last time when you claimed her in the park, she doesn't really pose much resistance to your desires. As you tell her that she'll submit to you now, and serve for your pleasure, Susan goes wide-eyed, and puts up a token try to pull away, futile against your firm grip. Shaking your head, you tell her that she shouldn't anger you and just obey like a good little doe. She needs you, because where would she be without you right now? Hiding in a forest, just waiting for the next horny creature to jump and violently rape her while she sleeps.";
	say "     As you paint a fairly gruesome picture, a look of fear rises in her eyes, with you being able to pat and stroke the doe in response, telling her she'll be safe with you, [italic type]if[roman type] she's a good girl. 'I - I... I'll be good! Anything you want!' she replies, trembling a little in your grasp. You spend a little while making out with the little herm and feeling her up, then nod over to the door of the side room where Orthas set up a cot for Susan. She obediently lets you lead her over to it.";
	TraitGain "Submissive" for Susan;
	now PlayerControlled of Susan is true;
	now M-Herm Susan Transformation Start is resolved; [killing the option for her to go m-herm]
	now M-Herm Susan Transformation End is resolved; [killing the option for her to go m-herm]
	SusanSexMenu;

to say SusanRelationshipTalk:
	say "     Reaching out and touching Susan's arm gently, you give it a light stroke with your fingers. Her eyes widen as she looks at your face, seeing the amorous expression on your face. In your most charming voice, you tell the anthro deer that you'd love to take your relationship to a new physical level. [if PlayerFucked of Susan is true]More than just doing it as an experiment for Dr. Matt, you quickly add, thinking back to the last time. [end if]You like her, a lot, and the two of you could find some comfort with each other. Susan, in a mixture of shock and pleasant surprise, takes a moment to find her words again, then finally says, 'Oh - I... that's just... wow! I know we talked about some things, but I still didn't think anyone would really want to... be with me, being like this. No longer human.' Not wanting to let her doubts get out of hand, you take Susan's hand and give it a squeeze, then say that you do not have any problems at all with her. You'd really like to be with her. She relaxes as she hears your words, squeezing you back and giving you a smile.";
	LineBreak;
	say "     [bold type]Looks like you're well received. But what sort of relationship do you intend to pursue with Susan?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - The little feminine herm clearly needs someone to protect her and take a dominant role."; [F-Herm Susan Sub]
	say "     [link](2)[as]2[end link] - Invite the little feminine herm to try out being equal partners."; [F-Herm Susan Switch]
	say "     [link](3)[as]3[end link] - Ask her to be your buck, hoping that she might become more dominant for you."; [M-Herm Susan/Samson Dom]
	say "     [link](4)[as]4[end link] - Offer that she could be the buck, and you could try being equal partners, perhaps switching who's in charge."; [M-Herm Susan/Samson Switch]
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to offer being her dom, [link]2[end link] to become her equal partner, [link]3[end link] to ask her to become your dominant buck, or [link]4[end link] to offer that she could be the buck, and both of you equal partners.";
	if calcnumber is 1:
		LineBreak;
		say "     Leaning in to kiss Susan, you embrace her tightly, arms wrapping around the little herm's body and pulling her into yours. You can feel her breasts pressing against your front while pushing your tongue forward into her mouth, sliding against hers. Somehow, it seems like she was just waiting for someone to take her and hold her tight. Continuing to kiss her, again and again, for a while, you eventually pull back a little, a beaming smile on your face as you watch her breathless, happy expression. Stroking over her head, you say that you're glad you found her when you did - after all, anything could have happened with her alone in the woods. Everyone has to sleep sometime, and is completely helpless during that time. As you lay these facts out, you can see Susan's eyes widening and her bite her lip, as she seems to imagine horrible fates for herself if she stayed where she was. 'I don't think I actually thanked you for finding me, before now. I'm really glad you brought me here, so thank you!' come her next words, with Susan giving you an admiring, almost worshipful glance.";
		say "     When you then ask her to be your your woman, sweet little doe, she happily replies, 'Yes, of course! I feel so safe in your arms!' The two of you keep kissing and touching for a little while longer, before you nod over to the door of the side room where Orthas set up a cot for Susan. She happily lets you lead her to it, eager for what will come next.";
		TraitGain "Submissive" for Susan;
		SusanSexMenu;
	else if calcnumber is 2:
		LineBreak;
		say "     Leaning in to kiss Susan, you embrace her tightly, arms wrapping around the little herm's body and pulling her into yours. You can feel her breasts pressing against your front while pushing your tongue forward into her mouth, sliding against hers. Somehow, it seems like she was just waiting for someone to take her and hold her tight. Continuing to kiss her, again and again, for a while, you eventually pull back a little, a beaming smile on your face as you watch her breathless, happy expression. Then you ask her to be your doe, and promise to be there for her as well, as equals. Susan happily replies, 'Yes, of course!' The two of you keep kissing and touching for a little while longer, before you nod over to the door of the side room where Orthas set up a cot for Susan. Hand in hand, you walk over to it, eager for what will come next.";
		TraitGain "Equal" for Susan;
		SusanSexMenu;
	else if calcnumber is 3:
		LineBreak;
		say "     Seemingly registering some unspoken hints you must have been giving with your body language and expression, the deer suddenly lays her arms around you, pulling you close in a tight embrace. You can feel her chest pressing against your front and look up to meet her eyes, leading to her planting a kiss on your mouth. You let your tongue flick into her mouth, teasing and enticing her to do the same to you. Somehow, it seems that she gets more forward in your play the longer you do it, with her soon wrestling down your own tongue in your mouth. Continuing to kiss her in hungry abandon for a while, you eventually pull back a little, a beaming smile on your face as you watch her breathless, happy expression. Then you ask her to be your buck, to be strong and someone you can cuddle yourself against. Susan runs a hand up your back, cradling your head with it as she gives you another deep kiss, followed by her reply of, 'Yes, of course!'";
		say "     The two of you keep kissing and touching for a little while longer, before she eventually pulls back a little. You can see in her eyes that she's got something on her mind, so you just wait patiently, letting her come to terms and find the right words. 'This is... a big step, you know. Me being [']the man['], so to say. I might need a little time to think about what that means. Hope you'll be alright with that.' Giving her a soft smile full of understanding and leaning in your head to rest against Susan's chest, you say that you'll wait for her to tell you when she's ready.";
		say "     [bold type]Some inner voice tells you that it'd be a really good idea to give Susan some time alone, so she can think things through.[roman type][line break]";
		TraitGain "Dominant" for Susan;
		now M-Herm Susan Transformation End is active;
	else if calcnumber is 4:
		LineBreak;
		say "     Taking hold of her arms and laying them around your chest, the deer soon catches what you want and begins embracing you tightly. You can feel her chest pressing against your front and look up to meet her eyes, leading to her planting a kiss on your mouth. You let your tongue flick into her mouth, teasing and enticing her to do the same to you. Somehow, it seems that she gets more forward in your play the longer you do it, with her soon wrestling down your own tongue in your mouth. Continuing to kiss her in hungry abandon for a while, you eventually pull back a little, a beaming smile on your face as you watch her breathless, happy expression. Then you ask her to be your buck, and promise to be there for her as well, as equals. Susan runs a hand up your back, cradling your head with it as she gives you another deep kiss, followed by her reply of, 'Yes, of course!'";
		say "     The two of you keep kissing and touching for a little while longer, before she eventually pulls back a little. You can see in her eyes that she's got something on her mind, so you just wait patiently, letting her come to terms and find the right words. 'This is... a big step, you know. Me being [']the man['], so to say. I - er, might need a little time to think about what that means. Would you be alright with that?' Giving her a smile full of understanding, you look right into her eyes and plant a peck on her lips, then say that you'll wait for her to be ready.";
		say "     [bold type]Some inner voice tells you that it'd be a really good idea to give Susan some time alone, so she can think things through.[roman type][line break]";
		TraitGain "Equal" for Susan;
		now M-Herm Susan Transformation End is active;
	now PlayerFriended of Susan is true;

instead of conversing the Susan:
	project the Figure of Susan_face_icon;
	if HP of Doctor Matt < 7:
		say "     Maybe you should talk to Dr. Matt first and learn about the results of his examination.";
	else if HP of Doctor Matt is 7: [ready for experiment]
		if Loyalty of Susan < 3 or Loyalty of Susan is 5: [not talked into medical/fucking yet]
			if Resolution of Unusual Creature < 3: [not consoled/fucked]
				say "     As you approach, Susan gives you an annoyed look, 'What, you drag me over here to be prodded and poked, then want to chat like nothing has happened? Hope your boss got all he needed, because I've had my fill of this place!' With that, she starts a light-footed dash to a side door leading to another part of the building. You do your best to catch up and bring her back, to no great avail as the deer demonstrates her speed and dexterity, always escaping you no matter what you do. She must have memorized the floorplan of the building that's hanging near one of the doors in the lab, and leads you for a merry chase before eventually reaching an emergency exit far away from the lobby and Orthas, running off into the city through it. As you return to Dr. Matt alone some time later, he gives you a deflated look, shaking his head and murmuring, 'Such a pity, to lose out on an opportunity like this.'";
				now Susan is nowhere;
				now Loyalty of Susan is 99; [she ran off]
				FeralizeSusan; [making her an enemy in the park]
				now HP of Doctor Matt is 8; [post-Susan]
			else if Resolution of Unusual Creature is 3 or Resolution of Unusual Creature is 4: [player consoled her or fucked her]
				SusanTalkMenu;
		else if Loyalty of Susan is 3: [ready for medical]
			say "     As you approach, [Susan] nods to you. 'I'm ready when you are. You can tell the doctor that.'";
			say "     [bold type]You should tell Doctor Matt that you're ready to start with the experiment now. [roman type][line break]";
		else if Loyalty of Susan is 4: [ready for fuck]
			say "     [Susan] smiles and lightly touches your arm, then nods to the bed. Taking a deep breath, [SubjectPro of Susan] adds, [if Cock Length of Susan < 10]'So. Do you - do we... uhm. Lie down now?' She seems a bit jittery, looking around nervously and even lightly trembling. [else]'So, guess it's time to do it then, hm?' [SubjectProCap of Susan] seems a bit nervous, looking around distractedly. [end if]At the same time though, [SubjectPro of Susan] appears eager to feel that someone doesn't see [ObjectPro of Susan] as some sort of weird creature and still wants to be with [ObjectPro of Susan] intimately.";
			say "     [bold type]You should tell Doctor Matt that you're ready to start with the experiment now. [roman type][line break]";
	else if Affection of Susan < 0: [disliked]
		say "     As you approach, [Susan] shoots you a hostile glare and says, 'Go away, I don't want to talk to you!' Looks like [SubjectPro of Susan] hates your guts at the moment. [bold type]Maybe give her a day - or week - or so to cool down.[roman type][line break]";
	else if Susan is in Primary Lab: [Trevor Labs]
		SusanTalkMenu;
	else: [talk stuff in the Hospital]
		SusanTalkHospital;

to SusanTalkHospital:
	let doecheck be false;
	let ec_check be false;
	if BodyName of Player is "Deer":
		now doecheck is true;
	else if hospquest >= 19:
		if BodyName of Player is "Enhanced Chimera":
			now ec_check is true;
	if HP of Susan is 3:
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
		say "     'As fun as it is, I do need a little break every now and again,' [Susan] says with a chuckle.";
	else if HP of Doctor Matt < 7: [not yet ready for the experiment]
		say "     [bold type]You should talk to Dr. Matt first before trying to do that.";
	else if HP of Doctor Matt is 7: [ready for the experiment]
		if (Loyalty of Susan < 3 or Loyalty of Susan is 5):
			say "     [bold type]You really should talk to [Susan] and clear up what you want to do about Dr. Matt's experiment first. [roman type][line break]";
		else if Loyalty of Susan is 3:
			say "     [bold type]Maybe you should wrap up the experiment with Doctor Matt first. It is noticable that he's throwing you glances quite often, and that's a little unnerving. [roman type][line break]";
		else if Loyalty of Susan is 4:
			say "     [Susan] smiles and lightly touches your arm, then nods to the bed. Taking a deep breath, [SubjectPro of Susan] adds, [if Cock Length of Susan < 10]'So. Do you - do we... uhm. Lie down now?' She seems a bit jittery, looking around nervously and even lightly trembling. [else]'So, guess it's time to do it then, hm?' [SubjectProCap of Susan] seems a bit nervous, looking around distractedly. [end if]At the same time though, [SubjectPro of Susan] appears eager to feel that someone doesn't see [ObjectPro of Susan] as some sort of weird creature and still wants to be with [ObjectPro of Susan] intimately.";
			say "     [bold type]You should tell Doctor Matt that you're ready to start with the experiment now. [roman type][line break]";
	else if M-Herm Susan Transformation End is active and M-Herm Susan Transformation End is not resolved: [m-herm Susan initiated but not completed yet]
		say "     As you bring up sex with her, Susan bites her lip and looks a little insecure. 'I'm still... thinking about what you said. Coming to terms with it. [bold type]Could you... give me some more time please[roman type]?'";
	else if PlayerControlled of Susan is false and PlayerFriended of Susan is false: [non-relationship area]
		if Affection of Susan < 0:
			say "     Given that [Susan] actively dislikes you now, this seems quite unlikely to happen. [if Resolution of Unusual Creature is 4]With both Doctor Matt and Orthas close by, just taking [ObjectPro of Susan] despite this also doesn't seem to be a good idea. [end if][bold type]Maybe give [ObjectPro of Susan] a day - or week - to cool down.[roman type][line break]";
		else if Affection of Susan < 2 and Resolution of Unusual Creature is 4:
			say "     [bold type]You should get to know Susan at least a tiny bit, and then make it clear to the anthro deer that you lay claim to her before you do this. [roman type][line break]";
		else if Affection of Susan > 1 and Resolution of Unusual Creature is 4:
			say "     [bold type]Maybe you should approach her and claim her as yours first. [roman type][line break]";
		else if Affection of Susan < 3 and Resolution of Unusual Creature is 3:
			say "     [bold type]You should get to know [Susan] a bit better, then talk to [ObjectPro of Susan] about the possibility of a physical relationship between the two of you. [roman type][line break]";
		else if Affection of Susan > 2 and Resolution of Unusual Creature is 3:
			say "     [bold type]Maybe talk to [ObjectPro of Susan] about being in a physical relationship first. [roman type][line break]";
	else if HP of Susan is 52 and hospcountdown - turns >= 16 and hospquest >= 18: [old hospital stuff]
		say "[Susanlabcoatscene]"; [TODO: Rewrite/Rebuild]
	else: [relationship area]
		SusanSexMenu;

to SusanSexMenu:
	if "Dominant" is listed in Traits of Susan:
		now SusanDom is true;
		now SusanSub is false;
	else if "Submissive" is listed in Traits of Susan:
		now SusanDom is false;
		now SusanSub is true;
	project the Figure of Susan_face_icon;
	LineBreak;
	say "     [bold type]What do you want to do with Susan?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		if "Samson Active" is listed in Traits of Susan:
			choose a blank row in table of fucking options;
			now title entry is "Ask Samson for a blowjob";
			now sortorder entry is 0;
			now description entry is "Have your muscular buck go down on you";
		else:
			choose a blank row in table of fucking options;
			now title entry is "Ask Susan for a blowjob";
			now sortorder entry is 0;
			now description entry is "Fill your sweet doe go down on you";
	[]
	if Player is female:
		if "Samson Active" is listed in Traits of Susan:
			choose a blank row in table of fucking options;
			now title entry is "Ask Samson to go down on your pussy";
			now sortorder entry is 1;
			now description entry is "Have your muscular buck go down on you";
		else:
			choose a blank row in table of fucking options;
			now title entry is "Ask Susan to go down on your pussy";
			now sortorder entry is 1;
			now description entry is "Fill your sweet doe go down on you";
	[
	if Player is male and SusanDom is true:
		if "Samson Active" is listed in Traits of Susan:
			choose a blank row in table of fucking options;
			now title entry is "Fuck Samson's pussy";
			now sortorder entry is 2;
			now description entry is "Fill your muscular buck's pussy with your cock";
		else:
			choose a blank row in table of fucking options;
			now title entry is "Fuck Susan's pussy";
			now sortorder entry is 2;
			now description entry is "Fill your sweet doe's pussy with your cock";
	[]
	if Player is male and SusanDom is true:
		if "Samson Active" is listed in Traits of Susan:
			choose a blank row in table of fucking options;
			now title entry is "Fuck Samson's ass";
			now sortorder entry is 3;
			now description entry is "Fill your muscular buck's ass with your cock";
		else:
			choose a blank row in table of fucking options;
			now title entry is "Fuck Susan's ass";
			now sortorder entry is 3;
			now description entry is "Fill your sweet doe's ass with your cock";
	]
	if "Samson Active" is listed in Traits of Susan:
		choose a blank row in table of fucking options;
		now title entry is "Go down on Samson's cock";
		now sortorder entry is 4;
		now description entry is "Give the sexy buck pleasure with your mouth";
	else:
		choose a blank row in table of fucking options;
		now title entry is "Go down on Susan's cock";
		now sortorder entry is 4;
		now description entry is "Give the sweet doe pleasure with your mouth";
	[
	if "Samson Active" is listed in Traits of Susan:
		choose a blank row in table of fucking options;
		now title entry is "Go down on Samson's pussy";
		now sortorder entry is 5;
		now description entry is "Give the sexy buck pleasure with your mouth";
	else:
		choose a blank row in table of fucking options;
		now title entry is "Go down on Susan's pussy";
		now sortorder entry is 5;
		now description entry is "Give the sweet doe pleasure with your mouth";
	]
	if Player is female:
		if "Samson Active" is listed in Traits of Susan:
			choose a blank row in table of fucking options;
			now title entry is "Offer your pussy to Samson";
			now sortorder entry is 6;
			now description entry is "Let the sexy buck fuck you";
		else:
			choose a blank row in table of fucking options;
			now title entry is "Offer your pussy to Susan";
			now sortorder entry is 6;
			now description entry is "Let the sweet doe fuck you";
	[
	if "Samson Active" is listed in Traits of Susan:
		choose a blank row in table of fucking options;
		now title entry is "Offer your ass to Samson";
		now sortorder entry is 7;
		now description entry is "Let the sexy buck fuck you";
	else:
		choose a blank row in table of fucking options;
		now title entry is "Offer your ass to Susan";
		now sortorder entry is 7;
		now description entry is "Let the sweet doe fuck you";
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
				if (nam is "Ask Samson for a blowjob" or nam is "Ask Susan for a blowjob"):
					say "[Susan gives BJ]";
				else if (nam is "Ask Samson to go down on your pussy" or nam is "Ask Susan to go down on your pussy"):
					say "[Susan gives Cunni]";
				else if (nam is "Fuck Samson's pussy" or nam is "Fuck Susan's pussy"):
					say "[Susan receives PussyFuck]";
				else if (nam is "Fuck Samson's ass" or nam is "Fuck Susan's ass"):
					say "[Susan receives AssFuck]";
				else if (nam is "Go down on Samson's cock" or nam is "Go down on Susan's cock"):
					say "[Susan receives BJ]";
				else if (nam is "Go down on Samson's cock" or nam is "Go down on Susan's cock"):
					say "[Susan receives Cunni]";
				else if (nam is "Offer your pussy to Samson" or nam is "Offer your pussy to Susan"):
					say "[Susan gives PussyFuck]";
				else if (nam is "Offer your ass to Samson" or nam is "Offer your ass to Susan"):
					say "[Susan gives AssFuck]";
				infect "Deer";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the anthro deer, shaking your head slightly as [SubjectPro of Susan] gives you a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say Susan gives BJ:
	if Cock Length of Susan > 10: [M-Herm]
		if SusanDom is true: [dom scene]
			say "     Stepping up to [Susan] with an eager expression on your face, you place a hand on the bulge of [PosAdj of Susan] left pec, giving the firm muscle a squeeze. In reaction, the dominant anthro slides a hand around your midriff and pulls you close, then kisses you right on the lips. 'Like that, don't you,' [Susan] mumbles while making out with you, flexing his pecs a little to make them dance under your touch. Smooching with the anthro is playful and fun, especially as [SubjectPro of Susan] starts to push [PosAdj of Susan] tongue into your mouth, trying to push yours down playfully. Soon, you're tongue-wrestling back and forth, with [Susan] giving as good as you are. The breathless, stormy bout of kissing eventually culminates with you pulling back, or at least trying to, as [Susan] keeps a hand on the back of your head to give you one last kiss on the lips. Chuckling, [SubjectPro of Susan] lets you go after that, with both of you grinning at each other.";
			say "     As your eyes meet, you let your eyebrows wiggle up and down, then plead for [ObjectPro of Susan] to suck your cock. [SubjectProCap of Susan] grins and gives your chest a playful slap, then says, 'Fine. On the bed with you!' [if Player is not barecrotch]Eager to get it on with [Susan], your hands quickly fly to bare your crotch, [else]Stroking a hand over your naked crotch, you [end if] quickly move over to [PosAdj of Susan] cot and lie down, waiting for [ObjectPro of Susan] to come to you. Bending over your stretched-out form, one hand firmly planted on the middle of your chest, both to feel you up and keep you held down, [Susan] takes hold of your erection with the other. You grunt in lustful anticipation as [SubjectPro of Susan] leans in to give its head a lick, followed by [PosAdj of Susan] lips sliding over it. Soon, your erection is inside [PosAdj of Susan] muzzle, with [PosAdj of Susan] long and agile tongue dancing over its shaft, wrapping around and teasing you to keep your arousal growing.";
			WaitLineBreak;
			say "     [SubjectProCap of Susan] is quite good at this, making it hard to keep yourself from cumming right then and there, with only some strength of mind and sometimes fairly urgent squeezes of [PosAdj of Susan] hand on your chest keeping things in check. [Susan] wants to make this last for a while, so [SubjectPro of Susan] switches over to going slow at times, tasting your [Cock of Player] cock and all the pre you're leaking. Yet despite those moments of reprieve, [SubjectPro of Susan] always returns to bobbing on your erection before long, inevitably driving you closer and closer to orgasm. As you finally throw your head back and let out a breathless pant, telling [ObjectPro of Susan] you're about to unload soon, you feel some vibrations around your cock as [Susan] chuckles, never letting up from the sucking even as [SubjectPro of Susan] does so. [Susan] continues to bob on your shaft for a little while longer, listening intently to the urgency of your moans.";
			say "     As you then are just about to explode, [SubjectPro of Susan] then pulls off with a loud pop, [PosAdj of Susan] fingers wrapping tightly around your hard and throbbing shaft and jerking you at a furious pace. 'Why don't you show your buck how much you need [ObjectPro of Susan] to take care of you! Cum for me, baby!' Given how wound up you already are, [PosAdj of Susan] handjob pushes you over the edge in short notice, with [Susan] aiming your erection right at your own chest, then watching gleefully as you hump up against [PosAdj of Susan] hand, then begin to blast out creamy strings of cum to splat down all over your front. [if Player is female]At the same time, pussy gets wet and dripping, clenching reflexively as if wishing it was filled with a cock. [end if]Making you to paint yourself in white streaks, the anthro buck continues to stroke and tease you all throughout your orgasm, until your cock eventually becomes sensitive and you try to brush [ObjectPro of Player] off. [Susan] glances over to you, shaking [PosAdj of Susan] head and saying, 'Getting a bit unruly, aren't you? I know just what to do, haha!'";
			WaitLineBreak;
			say "     The anthro deer lets [PosAdj of Susan] hands slide over your chest, scooping up cum with [PosAdj of Susan] fingers and then feeding it to you. 'A tasty treat for you!' you hear the anthro buck say with a wink, smiling as [SubjectPro of Susan] sinks another two cummy digits into your mouth. [SubjectProCap of Susan] continues to feed you your own cum until there is nothing left but a somewhat sticky feeling on your chest, then meets your eyes with a raised eyebrow. 'What did you think of that?', [SubjectPro of Susan] asks, inviting you to happily tell [ObjectPro of Susan] that you loved how [SubjectPro of Susan] took charge. [SubjectProCap of Susan] laughs and gives your shoulder a friendly slap, then leans in and kisses you right on the lips before standing back up.";
		else: [regular scene]
			say "     Stepping up to [Susan], you place a hand on the bulge of [PosAdj of Susan] left pec, giving the firm muscle a squeeze, then brushing your fingers down a little, feeling the lightly rounded curve that serves as a reminder that [Susan] still has some female characteristics. Like very sensitive nipples for example, which you gleefully exploit, giving them a light pinch while planting a hungry kiss on your sexy buck's lips. 'That feels nice,' [Susan] mumbles while making out with you, flexing [PosAdj of Susan] pecs a little to make them dance under your touch. Smooching with the anthro is playful and fun, with you starting off by pushing your tongue into [PosAdj of Susan] mouth, only to have [ObjectPro of Susan] take you up on that. Soon, you're tongue-wrestling back and forth, with [Susan] giving as good as you are. The breathless, stormy bout of kissing eventually culminates with you pulling back, with both of you grinning at each other, then laughing happily. As your eyes meet, you let your eyebrows wiggle up and down, then ask [ObjectPro of Susan] to suck your cock. [SubjectProCap of Susan] chuckles and gives your chest a playful slap, then readily sinks down onto [PosAdj of Susan] knees, looking up with a smile on [PosAdj of Susan] face. [if Player is not barecrotch]Eager to get it on with [Susan], your hands quickly fly to bare your crotch, [else]Stroking a hand over your naked crotch, you [end if]then wrap your fingers around your hard [Cock of Player] shaft.";
			say "     Holding it out for [Susan], you grunt in lustful anticipation as [SubjectPro of Susan] leans in to give its head a lick, followed by [PosAdj of Susan] lips sliding over it. Soon, your erection is inside [PosAdj of Susan] muzzle, with [PosAdj of Susan] long and agile tongue dancing over its shaft, wrapping around and teasing you to keep your arousal growing. [SubjectProCap of Susan] is quite good at it, making it hard to keep yourself from cumming right then and there, with only some strength of mind and sometimes fairly urgent squeezes of [PosAdj of Susan] shoulder keeping things in check. [Susan] is happy enough to switch over to going slow at times, tasting your [Cock of Player] cock and all the pre you keep feeding [ObjectPro of Susan] while jerking [PosAdj of Susan] own cock right along with blowing you. Yet despite those moments of reprieve, [SubjectPro of Susan] always returns to bobbing on your erection before long, inevitably driving you closer and closer to orgasm. As you finally throw your head back and let out a breathless pant, telling [ObjectPro of Susan] you're about to unload soon, you feel some vibrations around your cock as [Susan] chuckles, never letting up from the sucking even as [SubjectPro of Susan] does so.";
			WaitLineBreak;
			say "     [Susan] then decides to go all out, sucking hard on your cock and pushing [ObjectPro of Susan]self to take every last inch, [PosAdj of Susan] nose pressed into your crotch as [SubjectPro of Susan] sucks hard on your erection. Then [SubjectPro of Susan]... hums, making [PosAdj of Susan] tongue vibrate against the underside and top of your dick, given that it's wrapped around it. Wound up as you are, this is the last little push to drive you over the edge, and you groan in satisfaction as your cock begins to erupt[if Player is female] and your pussy gets wet and dripping[end if]. Spurt after rich spurt, you blast down [Susan]'s throat, with [ObjectPro of Susan] hungrily gulping it down. You ride our your orgasm like that, filling [PosAdj of Susan] stomach with gusto. Then, when you eventually wind down and your member is getting sensitive to being touched, you have to pat [Susan] on [PosAdj of Susan] shoulder before [SubjectPro of Susan] lets up sucking on you. As [SubjectPro of Susan] pulls back with a string of semen still connecting your penis to [PosAdj of Susan] lips, the anthro quickly catches it with [PosAdj of Susan] outstretched tongue, then swallows even this little bit down.";
			say "     'Tasty!' you hear the anthro buck say with a wink, then stands up with a smile on [PosAdj of Susan] face. The next thing coming from [PosAdj of Susan] mouth is a lustful pant as [SubjectPro of Susan] goes full out with jerking [PosAdj of Susan] own cock. It only takes mere moments before he erupts, with heavy spurts of seed painting your front in white streaks. [PosAdjCap of Susan] legs tremble as he experiences [PosAdj of Susan] orgasm, and [SubjectPro of Susan] has to reach out to steady [ObjectPro of Susan]self on your shoulder. With a firm grip of the anthro's strong hand of your shoulder, you feel even closer and more connected than [']just['] being cum upon, and you put your hand on [ObjectPro of Susan] as you watch [Susan] ride out [PosAdj of Susan] climax. When the anthro finally winds down, [SubjectPro of Susan] smiles at you, then holds out a fist between you, which you bump with your own, thanking [Susan] for the great blowjob. [SubjectProCap of Susan] laughs and gives your shoulder a friendly slap, then leans in and kisses you right on the lips, sharing a little of your own taste with you.";
	else: [F-Herm]
		if SusanSub is true: [sub scene]
			say "     Stepping up to Susan, you place a hand on the curve of her left breast, giving it a little squeeze while you lean in to plant a hungry kiss on your sweet doe's lips. She melts into your touch as you slide an arm around her midriff, pulling Susan closer. Making out with the submissive anthro, you invade her mouth with your tongue, wrestling her own appendage down. The breathless, stormy bout of kissing eventually culminates with you pulling back, with her stretching her neck a little to follow for a second, eager to receive more attention from you. Instead, you meet her blue-hazel eyes with a lusty smirk on your face and tell the doe to suck your cock. As soon as you lay one hand on her shoulder, she readily sinks down onto her knees, looking up happily to serve you. [if Player is not barecrotch]Eager to get it on with Susan, your hands quickly fly to bare your crotch, [else]Stroking a hand over your naked crotch, you [end if]then wrap your fingers around your hard [Cock of Player] shaft.";
			say "     Holding it out for Susan, you grunt in lustful anticipation as she leans in to give its head a shy lick, soon followed by her lips sliding over it. With your erection sliding into her muzzle, you run a hand through Susan's hair and cup the back of her head, then press her down further towards your crotch. Soon, your whole erection is inside her muzzle, with her starting to use her long and agile tongue to wrap around it and tease you, keeping your arousal growing. She isn't bad at all at this, but still keeps waiting for you to take control, which you do, by pumping your length in and out of her mouth. Feeling her lips, her muzzle, her tongue on your shaft, is amazing, as is the feeling of dominating the doe, and you have got to hold back at times, to keep yourself from cumming right then and there. Susan is happy enough no matter if you go fast or slow, with her eagerly tasting your [Cock of Player] cock and all the pre you keep feeding her while enjoying her mouth.";
			WaitLineBreak;
			say "     Yet despite the moments of reprieve in between, your libido demands that you go back to hard face-fucking before long every time, inevitably driving you closer and closer to orgasm. As you finally throw your head back and let out a breathless pant, calling out that you're about to unload soon, you feel some vibrations around your cock as Susan tries to say something or other. As she never lets up from sucking, this just gives you another little bit of stimulation. Just enough for the last push that catapults you over the edge, making you thrust all the way in and grind against her muzzle while your cock erupts[if Player is female] and your pussy gets wet and dripping[end if]. Spurt after rich spurt, you blast down Susan's throat, with her hungrily gulping it down. You ride our your orgasm like that, filling her tummy with gusto. Then, when you finally release her head, she pulls back with a string of semen still connecting your penis to her lips, which she quickly catches with her outstretched tongue, swallowing even this little bit down.";
			say "     'That was tasty! Thank you for the meal,' you hear the anthro doe say with a wink, looking up at you with a smile on her face. You stroke over her hair, telling Susan what a good little doe she's been for you. She leans her head into your touch and stays right there until you stop stroking, happy to have you as her dom. Only when you finally pull your hand away does the anthro stand back up.";
		else: [regular scene]
			say "     Stepping up to Susan, you place a hand on the curve of her left breast, giving it a little squeeze while you lean in to plant a hungry kiss on your sweet doe's lips. She leans into your touch as you slide an arm around her midriff, pulling Susan closer. Making out with the anthro is playful and fun, with you starting off by pushing your tongue into her mouth, only to have her take you up on that. Soon, you're tongue-wrestling back and forth, with Susan not exactly winning, but still giving back with more of a dancer's moves than forceful ones. The breathless, stormy bout of kissing eventually culminates with you pulling back, with both of you grinning at each other, then laughing happily. As your eyes meet, you let your eyebrows wiggle up and down, then ask her to suck your cock. She giggles and gives your chest a playful slap, then readily sinks down onto her knees, looking up with a smile on her face. [if Player is not barecrotch]Eager to get it on with Susan, your hands quickly fly to bare your crotch, [else]Stroking a hand over your naked crotch, you [end if]then wrap your fingers around your hard [Cock of Player] shaft.";
			say "     Holding it out for Susan, you grunt in lustful anticipation as she leans in to give its head a lick, followed by her lips sliding over it. Soon, your erection is inside her muzzle, with her long and agile tongue dancing over its shaft, wrapping around and teasing you to keep your arousal growing. She is quite good at it, making it hard to keep yourself from cumming right then and there, with only some strength of mind and sometimes fairly urgent squeezes of her shoulder keeping things in check. Susan is happy enough to switch over to going slow at times, tasting your [Cock of Player] cock and all the pre you keep feeding her. At the same time, she alternates between stroking her own cock and sinking her fingers between the sensitive folds of her female sex. Yet despite those moments of reprieve, she always returns to bobbing on your erection before long, inevitably driving you closer and closer to orgasm. As you finally throw your head back and let out a breathless pant, telling her you're about to unload soon, you feel some vibrations around your cock as Susan chuckles, never letting up from the sucking even as she does so.";
			WaitLineBreak;
			say "     Susan then decides to go all out, sucking hard on your cock and pushing herself to take every last inch, her nose pressed into your crotch as she sucks hard on your erection. Then she... hums, making her tongue vibrate against the underside and top of your dick, given that it's wrapped around it. Wound up as you are, this is the last little push to drive you over the edge, and you groan in satisfaction as your cock begins to erupt[if Player is female] and your pussy gets wet and dripping[end if]. Spurt after rich spurt, you blast down Susan's throat, with her hungrily gulping it down. You ride our your orgasm like that, filling her tummy with gusto. Then, when you eventually wind down and your member is getting sensitive to being touched, you have to pat Susan on her shoulder before she lets up sucking on you. As she pulls back with a string of semen still connecting your penis to her lips, the anthro quickly catches it with her outstretched tongue, then swallows even this little bit down.";
			say "     'That was tasty! Thank you for the meal,' you hear the anthro doe say with a wink, looking up at you with a smile on her face even as she digs two fingers into her pussy, frigging it hard. The next thing coming from her mouth is a lustful pant as she pushes herself to join you in orgasm, leaking femcum all over her own fingers and having her cock blast streaks of cum over the floor between your feet. You stroke over her hair, telling Susan that you enjoyed doing this with her. She leans her head into your touch for a second, smiling, then stands up and kisses you right on the lips, sharing a little of your own taste with you.";
	NPCSexAftermath Susan receives "OralCock" from Player;

to say Susan gives Cunni:
	if Cock Length of Player > 10: [M-Herm]
		if SusanDom is true: [dom scene]
			say "     Stepping up to [Susan] with an eager expression on your face, you place a hand on the bulge of [PosAdj of Susan] left pec, giving the firm muscle a squeeze. In reaction, the dominant anthro slides a hand around your midriff and pulls you close, then kisses you right on the lips. 'Like that, don't you,' [Susan] mumbles while making out with you, flexing his pecs a little to make them dance under your touch. Smooching with the anthro is playful and fun, especially as [SubjectPro of Susan] starts to push [PosAdj of Susan] tongue into your mouth, trying to push yours down playfully. Soon, you're tongue-wrestling back and forth, with [Susan] giving as good as you are. The breathless, stormy bout of kissing eventually culminates with you pulling back, or at least trying to, as [Susan] keeps a hand on the back of your head to give you one last kiss on the lips. Chuckling, [SubjectPro of Susan] lets you go after that, with both of you grinning at each other.";
			say "     As your eyes meet, you let your eyebrows wiggle up and down, then plead for [ObjectPro of Susan] to eat out your pussy. [SubjectProCap of Susan] grins and gives your chest a playful slap, then says, 'Fine. On the bed with you!' [if Player is not barecrotch]Eager to get it on with [Susan], your hands quickly fly to bare your crotch, [else]Stroking a hand over your naked crotch, you [end if] quickly move over to [PosAdj of Susan] cot and lie down, waiting for [ObjectPro of Susan] to come to you. [if Player is male]At the same time, you cup your dick and balls, holding them up so that Susan can freely reach your female parts. [end if]Bending over your stretched-out form, one hand firmly planted on the middle of your chest, both to feel you up and keep you held down, [Susan] spreads your nether lips with [PosAdj of Susan] fingers. You grunt in lustful anticipation as [SubjectPro of Susan] leans in with outstretched tongue, brushing its tip over your folds. [Susan] follows the outline of your nether lips, creating a trail of tingly, pleasurable sensations, slowly moving upwards along the left side, then the right, before finally tracing further up, towards your clit. [SubjectProCap of Susan] doesn't just jump to sucking on it either, instead brushing [PosAdj of Susan] tongue over your crotch in a small spiral that becomes tighter and tighter, then finally ends at the very sensitive bump of your pleasure-button.";
			WaitLineBreak;
			say "     [PosAdjCap of Susan] tongue licks over it, once, twice, then three times before [Susan] looks up, meeting your gaze and giving you a satisfied smile, then just sticking out [PosAdj of Susan] tongue again, rapidly flicking its tip over your clit, left and right this time. As you gasp for breath from the change in sensations, [Susan] lets out a satisfied chuckle, then intensifies [PosAdj of Susan] efforts even more. Then, before you can get too used to this, [SubjectPro of Susan] switches again, licking over it from the bottom in longer passes. 'God, if I think back to what my idiot ex thought was the best way to treat a pussy... so clueless! You better appreciate this, hear me?' the anthro deer quips amusedly, meeting your eyes and wiggling [PosAdj of Susan] eyebrows. Cocky and nicely dominant, just like you like [ObjectPro of Susan]. And [SubjectPro of Susan] really is amazing at giving you head, knowing very well how to treat a woman. [PosAdjCap of Susan] teasing and licking somehow just hits the very best rhythm to make your legs tremble and knees go weak at the feelings it wakes inside you. Side by side, up and down, spirals going clockwise, or counter-clockwise, [SubjectPro of Susan] really has a lot of surprises for you ready to go, one after another.";
			say "     The anthro deer takes special note of what especially winds you up, and soon [SubjectPro of Susan] gives those an encore, hitting you with the best, the most pleasurable, and in an all-new order too so you never know exactly what's coming next. 'Like that, don't you? Being a sweet little doe for me?!' [SubjectPro of Susan] asks in a teasing tone, and just as you're about to reply, [Susan] decides to go all out, placing [PosAdj of Susan] lips over the nub of your clit and sucking on it while also flicking [PosAdj of Susan] tongue-tip back and forth. At the same time, [PosAdj of Susan] fingers slide between the lips of your pussy, not too deep, just an inch or two - but when [SubjectPro of Susan] curls them there, this brushes against something that makes you feel amazing. It's as if [SubjectPro of Susan]'s working on your clitoris from two angles now, doubling the pleasure and sensations that brings with it. The buck works your body to perfection, relentlessly stoking the flames of your arousal.";
			WaitLineBreak;
			say "     Wound up as [PosAdj of Susan] tireless tongue-work has already made you, it doesn't take long for [PosAdj of Susan] efforts to push the wave of pleasure building in you as high as it can possibly be, then past that point. As a lustful gasp escapes your lips, [Susan] raises [PosAdj of Susan] head and grins at you. Your body tries to follow [ObjectPro of Susan] reflexively, thrusting up your hips upwards, which the anthro takes as a prompt to dig [PosAdj of Susan] fingers deeper into your pussy. The climax leaves you panting and trembling, weak as a kitten as you lie on the bed. [if Player is male]At the same time, your erect cock blasts out long strings of creamy cum, directed right at your own chest, as [Susan] keeps a good hold of your erection and angles it that way with a chuckle. Gleefully watching, [SubjectPro of Susan] fingers and jerks you, prolonging your orgasm to really paint your front white. [else][Susan] keeps [PosAdj of Susan] hand between your legs, pressed against your nether lips as [PosAdj of Susan] fingers are buried deep and wiggling to keep your orgasm going. [end if]The anthro buck continues to stroke and tease you all throughout your orgasm, until your genitals eventually become sensitive and you try to brush [ObjectPro of Player] off. [Susan] glances over to you, shaking [PosAdj of Susan] head and saying, 'Too much for you? Poor baby, haha!'";
			say "     Thankfully, [Susan] does relent after a few more moments, pulling [PosAdj of Susan] hands away and letting [PosAdj of Susan] wander over your body to take in [PosAdj of Susan] handiwork. 'What did you think of that?', [SubjectPro of Susan] asks, inviting you to happily tell [ObjectPro of Susan] that you loved how [SubjectPro of Susan] took charge. [SubjectProCap of Susan] laughs and pats your chest in a friendly yet lustful way, then leans in and kisses you right on the lips before standing back up.";
		else: [regular scene]
			say "     Stepping up to [Susan], you place a hand on the bulge of [PosAdj of Susan] left pec, giving the firm muscle a squeeze, then brushing your fingers down a little, feeling the lightly rounded curve that serves as a reminder that [Susan] still has some female characteristics. Like very sensitive nipples for example, which you gleefully exploit, giving them a light pinch while planting a hungry kiss on your sexy buck's lips. 'That feels nice,' [Susan] mumbles while making out with you, flexing [PosAdj of Susan] pecs a little to make them dance under your touch. Smooching with the anthro is playful and fun, with you starting off by pushing your tongue into [PosAdj of Susan] mouth, only to have [ObjectPro of Susan] take you up on that. Soon, you're tongue-wrestling back and forth, with [Susan] giving as good as you are. The breathless, stormy bout of kissing eventually culminates with you pulling back, with both of you grinning at each other, then laughing happily. As your eyes meet, you let your eyebrows wiggle up and down, then say that you'd love to have your pussy eaten out, if [SubjectPro of Susan] is in the mood that is. [SubjectProCap of Susan] chuckles and gives your chest a playful slap, then says, 'Why don't you sit on the edge of the cot, okay?'";
			say "     [if Player is not barecrotch]Eager to get it on with [Susan], your hands quickly fly to bare your crotch, [else]Stroking a hand over your naked crotch, you [end if]then step up to where [Susan] sleeps and sit down. The anthro buck follows right away, then readily sinks down onto [PosAdj of Susan] knees between your legs, looking up with a smile on [PosAdj of Susan] face. [if Player is male]At the same time, you cup your dick and balls, holding them up so that Susan can freely reach your female parts. [end if]Pushing your hips forward a little, you grunt in lustful anticipation as [SubjectPro of Susan] leans in and sticks out [PosAdj of Susan] tongue, brushing its tip over your folds. [Susan] follows the outline of your nether lips, creating a trail of tingly, pleasurable sensations, slowly moving upwards along the left side, then the right, before finally tracing further up, towards your clit. [SubjectProCap of Susan] doesn't just jump to sucking on it either, instead brushing [PosAdj of Susan] tongue over your crotch in a small spiral that becomes tighter and tighter, then finally ends at the very sensitive bump of your pleasure-button.";
			WaitLineBreak;
			say "     [PosAdjCap of Susan] tongue licks over it, once, twice, then three times before [Susan] looks up, meeting your gaze and giving you an eager smile, then just sticking out [PosAdj of Susan] tongue again, rapidly flicking its tip over your clit, left and right this time. As you gasp for breath from the change in sensations, [Susan] lets out a satisfied chuckle, then intensifies [PosAdj of Susan] efforts even more. Then, before you can get too used to this, [SubjectPro of Susan] switches again, licking over it from the bottom in longer passes. 'Good thing I'm not a guy with no clue what he's doing, eh?' the anthro deer quips amusedly, meeting your eyes and wiggling [PosAdj of Susan] eyebrows. Something tells you that [SubjectPro of Susan]'s talking from experience, and what must have been several underwhelming experiences. [Susan] [ReflexPro of Susan] thankfully is amazing at giving you head, knowing very well how to treat a woman. [PosAdjCap of Susan] teasing and licking somehow just hits the very best rhythm to make your legs tremble and knees go weak at the feelings it wakes inside you. Side by side, up and down, spirals going clockwise, or counter-clockwise, [SubjectPro of Susan] really has a lot of surprises for you ready to go, one after another.";
			say "     The anthro deer takes special note of what especially winds you up, and soon [SubjectPro of Susan] gives those an encore, hitting you with the best, the most pleasurable, and in an all-new order too so you never know exactly what's coming next. 'Like that, don't you?' [SubjectPro of Susan] asks in a teasing tone, and just as you're about to reply, [Susan] decides to go all out, placing [PosAdj of Susan] lips over the nub of your clit and lightly sucking on it while also flicking [PosAdj of Susan] tongue-tip back and forth. At the same time, [PosAdj of Susan] fingers slide between the lips of your pussy, not too deep, just an inch or two - but when [SubjectPro of Susan] curls them there, this brushes against something that makes you feel amazing. It's as if [SubjectPro of Susan]'s working on your clitoris from two angles now, doubling the pleasure and sensations that brings with it. The buck works your body to perfection, relentlessly stoking the flames of your arousal.";
			WaitLineBreak;
			say "     Wound up as [PosAdj of Susan] tireless tongue-work has already made you, it doesn't take long for [PosAdj of Susan] efforts to push the wave of pleasure building in you as high as it can possibly be, then past that point. As you reach climax, femcum starts to gush out of your pussy, washing over [Susan]'s muzzle, with the deer quickly closing [PosAdj of Susan] eyes. A lustful gasp escapes your lips as you climax panting and trembling, even having to catch yourself on [Susan]'s shoulders to brace and not collapse as your knees go weak. [if Player is male]At the same time, your erect cock blasts out long strings of creamy cum, going right over the handsome buck's head to land who knows where. [end if]The eager herm doesn't let this distract [ObjectPro of Susan], keeping those lips firmly planted over your clit and still teasing and fingering you, prolonging your high of pleasure as long as [SubjectPro of Susan] can. Then, when you eventually wind down and are getting sensitive to being touched, down there, you have to pat [Susan] on [PosAdj of Susan] shoulder before [SubjectPro of Susan] lets up, almost as if reluctant to let go from being in control over you.";
			say "     As [SubjectPro of Susan] pulls back with a string of saliva still connecting your crotch to [PosAdj of Susan] lips, the anthro quickly swipes it away with [PosAdj of Susan] outstretched tongue, then smiles up at you. 'I know you enjoyed [italic type]that[roman type]! Maybe you wanna return the favor sometime,' you hear the anthro doe say with a wink, followed by [ObjectPro of Susan] standing up, hard cock in hand. The anthro goes full out with jerking [PosAdj of Susan] own cock, and so it's only a matter of moments [SubjectPro of Susan] erupts, with heavy spurts of seed painting your front in white streaks. [PosAdjCap of Susan] legs tremble as [SubjectPro of Susan] experiences [PosAdj of Susan] orgasm, and [Susan] has to brace [PosAdj of Susan] legs against the side of the bed to keep standing. Reaching out to touch the soft-furred side of [PosAdj of Susan] legs, you feel even closer and more connected than [']just['] being cum upon, and you smile up at the deer. When [Susan] finally winds down, [SubjectPro of Susan] smiles at you, then holds out a fist between you, which you bump with your own, thanking [Susan] for the pleasure [ObjectPro of Susan] gave you. [SubjectProCap of Susan] laughs and gives your shoulder a friendly slap, then leans in and kisses you right on the lips.";
	else: [F-Herm]
		if SusanSub is true: [sub scene]
			say "     Stepping up to Susan, you place a hand on the curve of her left breast, giving it a little squeeze while you lean in to plant a hungry kiss on your sweet doe's lips. She melts into your touch as you slide an arm around her midriff, pulling Susan closer. Making out with the submissive anthro, you invade her mouth with your tongue, wrestling her own appendage down. The breathless, stormy bout of kissing eventually culminates with you pulling back, with her stretching her neck a little to follow for a second, eager to receive more attention from you. Instead, you meet her blue-hazel eyes with a lusty smirk on your face and tell the doe to eat your pussy. As soon as you lay one hand on her shoulder, she readily sinks down onto her knees, looking up happily to serve you. [if Player is not barecrotch]Eager to get it on with Susan, your hands quickly fly to bare your crotch, [else]Stroking a hand over your naked crotch, you [end if]then pull your nether lips apart a little, stroking over the sensitive nub of your clit. [if Player is male]At the same time, you cup your dick and balls, holding them up so that Susan can freely reach your female parts. [end if][line break]";
			say "     Putting a hand on the top of her head, you guide Susan forwards, with her sticking out her tongue to begin tracing it over your folds. Susan follows the outline of your nether lips, creating a trail of tingly, pleasurable sensations, slowly moving upwards along the left side, then the right, before finally moving on towards your clit. She doesn't just jump to sucking on it either, instead brushing her tongue over your crotch in a small spiral that becomes tighter and tighter, then finally ends at the very sensitive bump of your pleasure-button. Her tongue licks over it, once, twice, then three times before Susan looks up, meeting your gaze and giving you an eager smile, then just sticking out her tongue again, rapidly flicking its tip over your clit, left and right this time. As you gasp for breath from the change in sensations, Susan lets out a pleased giggle. Wanting more, you put both hands on her head and hold her tight against your crotch.";
			WaitLineBreak;
			say "     Knowing very well how to treat a pussy, from having had one all her life, Susan is amazing at eating you out. Her teasing and licking somehow just hits the very best rhythm to make your legs tremble and knees go weak at the feelings it wakes inside you. Side by side, up and down, spirals going clockwise, or counter-clockwise, she really has a lot of surprises for you ready to go, one after another. The anthro deer listens well as you tell her which things you especially liked, so she is ready when you soon demand an encore of the best and most pleasurable. Serving you eagerly, the deer follows all commands right away, then eventually has an idea to give you even more pleasure and asks, 'Should I suck you, and also use my fingers?' Grunting in lust, you nod to her, pushing against the back of her head impatiently.";
			say "     At this point the young woman goes all out, placing her lips over the nub of your clit and lightly sucking on it while also flicking her tongue-tip back and forth. At the same time, her fingers slide between the lips of your pussy, not too deep, just two or three inces - but when she curls them there, this brushes against something that makes you feel amazing. It's as if she's working on your clitoris from two angles now, doubling the pleasure and sensations that brings with it. Wound up as her tireless tongue-work has already made you, it doesn't take long for her efforts to push the wave of arousal building in you as high as it can possibly be, then past that point. As you reach climax, femcum starts to gush out of your pussy, washing over Susan's muzzle, with the deer quickly closing her eyes, long lashes resting on her upper cheeks. A lustful gasp escapes your lips as you climax panting and trembling, even having to catch yourself on Susan's shoulders to brace and not collapse as your knees go weak. [if Player is male]At the same time, your erect cock blasts out long strings of creamy cum, going right over the young woman's head to land who knows where. [end if]The dutiful herm doesn't let this distract her, keeping those lips firmly planted over your clit and still teasing and fingering you, prolonging your high of pleasure as long as she can.";
			WaitLineBreak;
			say "     Then, when you eventually wind down and are getting sensitive to being touched, down there, you tell Susan to stop and she pulls back, a happy smile at having been of service on her face. 'Hope you liked it,' you hear the anthro doe say shily, looking relieved when you say you did and stroke over her head. She leans her head into your touch for a second, smiling, then stands up and kisses your cheek.";
		else: [regular scene]
			say "     Stepping up to Susan, you place a hand on the curve of her left breast, giving it a little squeeze while you lean in to plant a hungry kiss on your sweet doe's lips. She leans into your touch as you slide an arm around her midriff, pulling Susan closer. Making out with the anthro is playful and fun, with you starting off by pushing your tongue into her mouth, only to have her take you up on that. Soon, you're tongue-wrestling back and forth, with Susan not exactly winning, but still giving back with more of a dancer's moves than forceful ones. The breathless, stormy bout of kissing eventually culminates with you pulling back, with both of you grinning at each other, then laughing happily. As your eyes meet, you let your eyebrows wiggle up and down, then say that you'd love to have your pussy eaten out, if she's in the mood that is. Susan giggles and gives your chest a playful slap, then readily sinks down onto her knees, looking up with a smile on her face. [if Player is not barecrotch]Eager to get it on with Susan, your hands quickly fly to bare your crotch, [else]Stroking a hand over your naked crotch, you [end if]then pull your nether lips apart a little, stroking over the sensitive nub of your clit. [if Player is male]At the same time, you cup your dick and balls, holding them up so that Susan can freely reach your female parts. [end if][line break]";
			say "     Pushing your hips forward a little, you grunt in lustful anticipation as she leans in and sticks out her tongue, Tracing its tip over your folds. Susan follows the outline of your nether lips, creating a trail of tingly, pleasurable sensations, slowly moving upwards along the left side, then the right, before finally tracing upwards, towards your clit. She doesn't just jump to sucking on it either, instead brushing her tongue over your crotch in a small spiral that becomes tighter and tighter, then finally ends at the very sensitive bump of your pleasure-button. Her tongue licks over it, once, twice, then three times before Susan looks up, meeting your gaze and giving you an eager smile. Then she asks, 'Like it?' and when you nod eagerly, she sticks out her tongue again, rapidly flicking its tip over your clit, left and right this time. As you gasp for breath from the change in sensations, Susan lets out a pleased giggle, then intensifies her efforts even more. Then, before you can get too used to this, she switches again, licking over it from the bottom in longer passes.";
			WaitLineBreak;
			say "     Knowing very well how to treat a pussy, from having had one all her life, Susan is amazing at eating you out. Her teasing and licking somehow just hits the very best rhythm to make your legs tremble and knees go weak at the feelings awakening inside of you. Side by side, up and down, spirals going clockwise, or counter-clockwise, she has a lot of surprises ready for you, one after another. The anthro deer takes special note of what especially winds you up, and soon she gives those an encore, hitting you with the best, the most pleasurable, and in an all-new order too so that you never know exactly what's coming next. 'I know just the thing to do next - really liked this myself when... you know.' With that said, she places her lips over the nub of your clit and lightly sucking on it while also flicking her tongue-tip back and forth. At the same time, her fingers slide between the lips of your pussy, not too deep, just two or three inches - but when she curls them there, this brushes against something that makes you feel amazing. It's as if she's working on your clitoris from two angles now, doubling the pleasure and sensations that brings with it.";
			say "     Wound up as her tireless tongue-work has already made you, it doesn't take long for her efforts to push the wave of arousal building in you as high as it can possibly be, then past that point. As you reach climax, femcum starts to gush out of your pussy, washing over Susan's muzzle, with the deer quickly closing her eyes, long lashes resting on her upper cheeks. A lustful gasp escapes your lips as you pant and tremble, even having to catch yourself on Susan's shoulders to brace and not collapse as your knees go weak. [if Player is male]At the same time, your erect cock blasts out long strings of creamy cum, going right over the young woman's head to land who knows where. [end if]The eager herm doesn't let this distract her, keeping those lips firmly planted over your clit and still teasing and fingering you, prolonging your high of pleasure as long as she can. Then, when you eventually wind down and are getting sensitive to being touched, down there, you have to pat Susan on her shoulder before she lets up. As she pulls back with a string of saliva still connecting your crotch to her lips, the anthro quickly swipes it away with her outstretched tongue, then smiles up at you.";
			WaitLineBreak;
			say "     'Hope you liked it,' you hear the anthro doe say with a bashful smile, even as she digs two fingers into her own pussy, frigging it hard. The next thing coming from her mouth is a lustful pant as she pushes herself to join you in orgasm, leaking femcum all over her own fingers and having her cock blast streaks of cum over the floor between your feet. You stroke over her hair, telling Susan that you enjoyed doing this with her. She leans her head into your touch for a second, smiling, then stands up and kisses you right on the lips, sharing a little of your own taste with you.";
	NPCSexAftermath Susan receives "OralPussy" from Player;

to say Susan receives PussyFuck:
	if Cock Length of Susan > 10: [M-Herm]
		if SusanDom is true and Affection of Susan < 10: [high bar for dom Samson/Susan]
			say "Yeah, not happening!";
		else if Affection of Susan < 5: [moderate high bar for Samson/Susan]
			say "Yeah, not happening!";
		else:
			say "     ";
			NPCSexAftermath Susan receives "PussyFuck" from Player;
	else: [F-Herm]
		if SusanSub is true: [sub scene]
			say "     ";
		else: [regular scene]
			say "     ";
		NPCSexAftermath Susan receives "PussyFuck" from Player;

to say Susan receives AssFuck:
	if Cock Length of Susan > 10: [M-Herm]
		if SusanDom is true and Affection of Susan < 10: [high bar for dom Samson/Susan]
			say "Yeah, not happening!";
		else if Affection of Susan < 5: [moderate high bar for Samson/Susan]
			say "Yeah, not happening!";
		else:
			if AnalVirgin of Susan is true: [first time fucking]
				say "     ";
				TraitGain "Fucked a pussy" for Susan;
			else: [repeat]
				say "     ";
			NPCSexAftermath Susan receives "AssFuck" from Player;
	else: [F-Herm]
		if AnalVirgin of Susan is true: [first time fucking]
			say "     ";
		else: [repeat]
			say "     ";
	NPCSexAftermath Susan receives "AssFuck" from Player;


to say Susan receives BJ:
	if Cock Length of Susan > 10: [M-Herm]
		if SusanDom is true: [dom scene]
			say "     Stepping up to [Susan] with an eager expression on your face, you place a hand on the bulge of [PosAdj of Susan] left pec, giving the firm muscle a squeeze. In reaction, the dominant anthro slides a hand around your midriff and pulls you close, then kisses you right on the lips. 'Like that, don't you,' [Susan] mumbles while making out with you, flexing his pecs a little to make them dance under your touch. Smooching with the anthro is playful and fun, especially as [SubjectPro of Susan] starts to push [PosAdj of Susan] tongue into your mouth, trying to push yours down playfully. Soon, you're tongue-wrestling back and forth, with [Susan] giving as good as you are. The breathless, stormy bout of kissing eventually culminates with you pulling back, or at least trying to, as [Susan] keeps a hand on the back of your head to give you one last kiss on the lips. Chuckling, [SubjectPro of Susan] lets you go after that, with both of you grinning at each other.";
			say "     As your eyes meet, you let your eyebrows wiggle up and down, then plead for [ObjectPro of Susan] to let you suck [PosAdj of Susan] cock. [SubjectProCap of Susan] grins and gives your chest a playful slap, then says, 'Fine. On the bed with you!' Eager to get it on with [Susan], you quickly move over to [PosAdj of Susan] cot and lie down, waiting for [ObjectPro of Susan] to kick off [PosAdj of Susan] clothes and come to you. Bending over your stretched-out form, one hand firmly planted on the middle of your chest, both to keep you held down and brace a little, [Susan] then swings a leg over you, climbing on top. [PosAdjCap of Susan] erection is already hard and swings through the air just above your face. Licking your lips, you open up and stick out your tongue, lightly flicking it over the dickhead of your deer companion before pulling back again. 'Better watch out who you tease like that,' [SubjectPro of Susan] says with an amused grunt, almost immediately followed by a droplet of pre-cum welling up from the cum-slit.";
			WaitLineBreak;
			say "     The dominant herm buck takes hold of your head at that point, pushing [PosAdj of Susan] erection into your mouth and giving you taste of [PosAdj of Susan] essence as [PosAdj of Susan] dickhead slides over your tongue. Eager to service [PosAdj of Susan], you tighten your lips around the girth of [PosAdj of Susan] manhood while letting your tongue play over [PosAdj of Susan] glans and shaft. 'Yeah, that's it!' [Susan] says breathily, tightening [PosAdj of Susan] grip and giving some shallow thrusts with [PosAdj of Susan] hips that become deeper and deeper as he goes on face-fucking you. Before too much longer, your nose is buried in the soft fuzz of [PosAdj of Susan] pubic fur, with the anthro's whole shaft being engulfed and its end down your throat. Glancing upwards, you meet the wide eyes of your dominant deer friend, then intentionally make the swallowing motion, watching [ObjectPro of Susan] gasp as your inner muscles squeeze in around [PosAdj of Susan] erection.";
			say "     This seems to be just the signal that [Susan]'s more animalistic urges need, and [SubjectPro of Susan] goes into what might be called a mini-rut, bellowing lustily as [PosAdj of Susan] other hand shoots forward to join in gripping your head even tighter. [PosAdjCap of Susan] fingers keep you in an iron grip as the deer thrusts [PosAdj of Susan] hips forward, rabbit-fucking your throat with urgent haste. You do your best to relax your throat, allowing for the rapid in and out of [PosAdj of Susan] cock, interspersed with moments in which [SubjectPro of Susan] just grinds [PosAdj of Susan] crotch against your face, dick as far in as it can go. In those times, you swallow again, or wiggle your tongue a little, wanting to make it as good as possible for the herm. You even attempt to cheer [ObjectPro of Susan] on a little, and though the cock in your mouth makes sure that none of it is intelligible, the movement and vibration around [PosAdj of Susan] shaft gives [Susan] more pleasure.";
			WaitLineBreak;
			say "     Thoroughly enjoying being able to face-fuck you, the anthro keeps going at it for quite a while, thrusting into your throat or just resting in it. This makes it necessary for you to take several breaks in between to catch your breath, which sometimes takes some urgent patting of [Susan]'s thighs before [SubjectPro of Susan] lets you up from choking on [PosAdj of Susan] erection. Even then, [SubjectPro of Susan] doesn't fully let go, keeping a hand on your head to continue with one of [PosAdj of Susan] favorite things to do with a cock as soon as possible. As [SubjectPro of Susan] gets [PosAdj of Susan] full oral experience, [Susan] gets closer and closer to orgasm, easily recognizable by [PosAdj of Susan] more and more urgent pants. When you can tell [SubjectPro of Susan]'s pretty close, you take out all the stops and suck all the harder on [PosAdj of Susan] cock, at the same time as cupping [PosAdj of Susan] furry cum-factories with your hands, lightly squeezing [PosAdj of Susan] balls. The effect is fairly immediate, with you being able to feel them throb [italic type]hard[roman type] under your fingers, at the same time as [PosAdj of Susan] cock pulses against your tongue, delivering a first heavy spurt of creamy cum right down your throat.";
			say "     You take the next two or three shots like this too, before [Susan] pulls back and lets [PosAdj of Susan] cum land in streaks across your tongue. The anthro keeps this position until [PosAdj of Susan] orgasm has run its course, then pulls out and says, 'Stick out your tongue for me!' A broad grin spreads over [PosAdj of Susan] muzzle as you show your cum-covered tongue, followed by brushing his index finger over it and painting a line across one of your cheeks, as if you mark you as [PosAdj of Susan]. Then [SubjectPro of Susan] commands, 'Now swallow it all!' You do so without question, gulping the rest of [Susan]'s load down, then showing your clean tongue. Nodding proudly, the buck then bends down and brings his antler-crowned head to yours, giving you a deep and demanding kiss that escalates into another long, pleasant bout of making out with each other.";
		else: [regular scene]
			say "     Stepping up to [Susan], you put your hands on [PosAdj of Susan] hips, then slide them up along the handsome buck's sides, pulling [ObjectPro of Susan] closer to plant a kiss on [PosAdj of Susan] lips. [SubjectProCap of Susan] leans into your touch as you wrap your arms around [PosAdj of Susan] chest, then start making out with the anthro. Smooching with [Susan] is playful and fun, with you starting off by pushing your tongue into [PosAdj of Susan] mouth, only to have [ObjectPro of Susan] take you up on that. Soon, you're tongue-wrestling back and forth, with [Susan] giving as good as you are. The breathless, stormy bout of kissing eventually culminates with you pulling back, with both of you grinning at each other, then laughing happily. As your eyes meet, you let your eyebrows wiggle up and down, then tell [ObjectPro of Susan] you want to suck [PosAdj of Susan] cock. ";
			if "Received BJ" is not listed in Traits of Susan: [first time BJ]
				say "[Susan]'s eyes widen as [SubjectPro of Susan] takes in your words, gaze flicking down between the two of you, then up at your face again. 'You know, I'd been thinking about doing that ever since... well, I became more of a guy, you know. And here you are, wanting to suck [italic type]my cock[roman type]! Guess there are [italic type]some[roman type] upsides to being a herm at least.'";
				say "     Chuckling and saying [SubjectPro of Susan]'s in for a treat, you lower your hands down to [Susan]'s crotch, undoing the button and zipper of [PosAdj of Susan] ripped shorts. With an urgent push, you make them fall down [PosAdj of Susan] legs, followed by the anthro stepping out of the entangling fabric, grunting excitedly as you put your hand on [PosAdj of Susan] growing erection. As you suggest [SubjectPro of Susan] get on the bed, the anthro herm smiles and nods, then moves to sit down on the edge of the cot. As [SubjectPro of Susan] spreads [PosAdj of Susan] legs wide, you can see that [PosAdj of Susan] cock is rapidly hardening to full mast, dangling invitingly over the edge of the bed. You're quick to follow [ObjectPro of Susan], kneeling down and bringing you face to crotch with [Susan]. Reaching out and wrapping your hand around [PosAdj of Susan] cock, you can feel its pleasant warmth under your fingers, as well as the deer's heartbeat in the rhythmic throb of the shaft. [SubjectProCap of Susan] pants quietly as you touch [ObjectPro of Susan], shifting [PosAdj of Susan] hips forward reflexively.";
				WaitLineBreak;
				say "     Licking your lips, you open up and stick out your tongue, flicking it over the dickhead of your deer companion. 'God yeah,' [SubjectPro of Susan] pants under [PosAdj of Susan] breath, almost immediately followed by a droplet of pre-cum welling up from the cum-slit. Another swipe gives you a first little taste of the herm buck, followed by going in for more as you brush your lips over [PosAdj of Susan] mushroom head and take it into your mouth. 'This feels amazing,' [Susan] says breathily, stroking a hand over your head. You just continue servicing [ObjectPro of Susan], at first exploring [PosAdj of Susan] cum-slit and the sensitive rim of [PosAdj of Susan] dickhead with your tongue, then moving on to bobbing down on [PosAdj of Susan] shaft, taking more of it into your mouth every time. Before too much longer, your nose brushes against the soft fuzz of [PosAdj of Susan] pubic fur, with the anthro's whole shaft being engulfed and its end down your throat. Glancing upwards, you meet the wide eyes of your deer friend, then intentionally make the swallowing motion, watching [ObjectPro of Susan] gasp as your inner muscles squeeze in around [PosAdj of Susan] erection.";
				say "     Feeling [PosAdj of Susan] cock be in such a tight, warm and pleasurable place seems to be something that [Susan] simply wasn't prepared for, not fully at least. You can see [PosAdj of Susan] nostrils flare as [SubjectPro of Susan] breathes in deeply, then lets out almost a bellow, as if [SubjectPro of Susan] was in rut or something. Instincts take over as [PosAdj of Susan] hands shoot forward, both gripping your head tightly as the deer thrusts [PosAdj of Susan] hips forward, rabbit-fucking your throat with urgent haste. You do your best to relax your throat, allowing for the rapid in and out of [PosAdj of Susan] cock, interspersed with moments in which [SubjectPro of Susan] just grinds [PosAdj of Susan] crotch against your face, dick as far in as it can go. In those times, you swallow again, or wiggle your tongue a little, wanting to make it as good as possible for the herm having [PosAdj of Susan] first experience with getting a blowjob.";
				WaitLineBreak;
				say "     Being as new as [SubjectPro of Susan] is to getting the full oral experience with a cock, it isn't that surprising that [Susan] gets closer and closer to orgasm before much longer, at least judging from [PosAdj of Susan] more and more urgent pants. At this point, you take out all the stops and suck all the harder on [PosAdj of Susan] cock, at the same time as cupping [PosAdj of Susan] furry cum-factories with your hands, lightly squeezing [PosAdj of Susan] balls. The effect is fairly immediate, with you being able to feel them throb [italic type]hard[roman type] under your fingers, at the same time as [PosAdj of Susan] cock pulses against your tongue, delivering a first heavy spurt of creamy cum right down your throat. You take the next two or three shots like this too, then pull back a little, catching the rest of [Susan]'s load on your tongue and keeping it in your mouth.";
				say "     As the anthro rides out [PosAdj of Susan] orgasm and it eventually ebbs off, a look of alarm crosses [PosAdj of Susan] face. 'Man, that was amazing! Kinda lost control for a little while there. I - uhm, was I too rough?' [SubjectPro of Susan] asks, somewhat wary of what you might reply. Slowly pulling off [PosAdj of Susan] shaft and keeping your lips pressed together, you half-rise from where you were kneeling and meet [Susan]'s eyes, then shake your head with the edges of your mouth pulling up. Then lean in to kiss the anthro, your cum-slick tongue pushing right into [PosAdj of Susan] mouth and sharing [PosAdj of Susan] own load with [Susan]. This escalates into another long, pleasant bout of making out with each other, which works wonders for quelling any doubts in [PosAdj of Susan] mind that you didn't do exactly what you wanted with [ObjectPro of Susan].";
			else:
				say "A smile spreads over [Susan]'s face as [SubjectPro of Susan] takes in your words, gaze flicking down between the two of you, then up at your face again. 'You know, when I was [']just['] a woman before, I didn't quite understand why my boyfriend back in school kept pestering me so much oral. I mean, yeah, I know it feels nice but wanting to do it all the time... well, now I know! God, the rush of male orgasm, and cumming in someone's tight, squeezing throat! I won't say no to that!'";
				say "     Right after saying those words, [Susan] hastily undoes the button and zipper of [PosAdj of Susan] ripped shorts, shoving them down over [PosAdj of Susan] furry rear. As the entangling fabric falls down [PosAdj of Susan] legs, [SubjectPro of Susan] steps out of it and kicks the shorts aside. Meanwhile, your own hand is already reaching for [PosAdj of Susan] crotch, fingers sliding over a growing erection. 'Can't wait to feel your mouth on it again!' the anthro herm says in a lust-filled tone, then pulls you with [ObjectPro of Susan] to the cot, places [PosAdj of Susan] hands on your shoulders and pushes down on them. As you sink to your knees readily, [SubjectPro of Susan] lets herself drop down on it in a sitting position too, spreading [PosAdj of Susan] legs and scooching right to the edge of the cot. Rapidly hardening to full mast, [PosAdj of Susan] cock dangles invitingly right in front of your face. Wrapping [PosAdj of Susan] fingers around the base of the shaft, [Susan] swings it up and down a little, seeming eager and almost a little impatient for you to get going. [PosAdjCap of Susan] hand reaching out to lightly rest on top of your head is another sign of this, pushing it a little towards [PosAdj of Susan] crotch.";
				WaitLineBreak;
				say "     Licking your lips, you open up and stick out your tongue, lightly flicking it over the dickhead of your deer companion before pulling back again. 'God, don't just tease me like that,' [SubjectPro of Susan] pants under [PosAdj of Susan] breath, almost immediately followed by a droplet of pre-cum welling up from the cum-slit. Another swipe gives you a nice little taste of the herm buck, followed by going in for more as you brush your lips over [PosAdj of Susan] mushroom head and take it into your mouth. 'Yeah, that's it!' [Susan] says breathily, stroking your head and again pushing a little on it, encouraging you to do more. You playfully service [ObjectPro of Susan], sometimes just following the back and forth movements [PosAdj of Susan] hand directs you into, sometimes surprising [ObjectPro of Susan], for example by exploring [PosAdj of Susan] cum-slit and the sensitive rim of [PosAdj of Susan] dickhead with your tongue, then working up to inhaling all of [PosAdj of Susan] shaft. Before too much longer, your nose is buried in the soft fuzz of [PosAdj of Susan] pubic fur, with the anthro's whole shaft being engulfed and its end down your throat.";
				say "     Glancing upwards, you meet the wide eyes of your deer friend, then intentionally make the swallowing motion, watching [ObjectPro of Susan] gasp as your inner muscles squeeze in around [PosAdj of Susan] erection. This seems to be just the signal that [Susan]'s more animalistic urges need, and as expected, [SubjectPro of Susan] goes into what might be called a mini-rut, bellowing lustily as [PosAdj of Susan] hands shoot forward to grip your head tightly. [PosAdjCap of Susan] fingers keep you in an iron grip as the deer thrusts [PosAdj of Susan] hips forward, rabbit-fucking your throat with urgent haste. You do your best to relax your throat, allowing for the rapid in and out of [PosAdj of Susan] cock, interspersed with moments in which [SubjectPro of Susan] just grinds [PosAdj of Susan] crotch against your face, dick as far in as it can go. In those times, you swallow again, or wiggle your tongue a little, wanting to make it as good as possible for the herm. You even attempt to cheer [ObjectPro of Susan] on a little, and though the cock in your mouth makes sure that none of it is intelligible, the movement and vibration around [PosAdj of Susan] shaft gives [Susan] more pleasure.";
				WaitLineBreak;
				say "     Thoroughly enjoying being able to face-fuck you, the anthro keeps going at it for quite a while, thrusting into your throat or just resting in it. This makes it necessary for you to take several breaks in between to catch your breath, which sometimes takes some urgent patting of [Susan]'s thighs before [SubjectPro of Susan] lets you up from choking on [PosAdj of Susan] erection. Even then, [SubjectPro of Susan] doesn't fully let go, keeping a hand on your head to continue with one of [PosAdj of Susan] favorite things to do with a cock as soon as possible. As [SubjectPro of Susan] gets [PosAdj of Susan] full oral experience, [Susan] gets closer and closer to orgasm, easily recognizable by [PosAdj of Susan] more and more urgent pants. When you can tell [SubjectPro of Susan]'s pretty close, you take out all the stops and suck all the harder on [PosAdj of Susan] cock, at the same time as cupping [PosAdj of Susan] furry cum-factories with your hands, lightly squeezing [PosAdj of Susan] balls. The effect is fairly immediate, with you being able to feel them throb [italic type]hard[roman type] under your fingers, at the same time as [PosAdj of Susan] cock pulses against your tongue, delivering a first heavy spurt of creamy cum right down your throat.";
				say "     You take the next two or three shots like this too, then pull back a little, catching the rest of [Susan]'s load on your tongue and keeping it in your mouth. [SubjectProCap of Susan] knows full well what you're doing, and the next thing that happens is that the anthro's hands slide under your arms, hooking you at the armpits and pulling you up and on top of her. With both of you laughing, you a bit muffled due to your full mouth, you kiss [ObjectPro of Susan] deeply, pushing your cum-covered tongue into [PosAdj of Susan] mouth as you do. This escalates into another long, pleasant bout of making out with each other.";
	else: [F-Herm]
		if SusanSub is true: [sub scene]
			say "     Stepping up to Susan, you put your hands on her hips, then slide them up along the sweet doe's sides, pulling her closer to plant a kiss on her lips. She melts into your touch as you wrap your arms around her chest, then start making out with the submissive anthro. It is playful and fun, with you invading her mouth with your tongue, wrestling her own appendage down. The breathless, stormy bout of kissing eventually culminates with you pulling back, with her stretching her neck a little to follow for a second, eager to receive more attention from you. Instead, you meet her blue-hazel eyes with a lusty smirk on your face and tell the doe you want to suck her cock. Susan's eyes widen as she takes in your words, gaze flicking down between the two of you, then up at your face again. 'I - um, I know I've had this thing for a while, but it's still somewhat unbelievable to me. You know, hearing someone they want to suck [italic type]my cock[roman type]! Being on the receiving end and all that.'";
			say "     Chuckling and saying she's in for a treat, you lower your hands down to Susan's crotch, undoing the button and zipper of her ripped shorts. With an urgent push, you make them fall down her legs, followed by the anthro stepping out of the entangling fabric, panting excitedly as you put your hand on her growing erection. As you suggest she get on the bed, the anthro herm smiles and nods, then moves to lie down on her back. Her erection stands up like a flagpole and Susan spreads her legs almost reflexively, preparing herself to be yours. You're quick to follow her, climbing on the bed and bending over to bring your face over Susan's crotch. Reaching out and wrapping your hand around her cock, you can feel its pleasant warmth under your fingers, as well as the deer's heartbeat in the rhythmic throb of the shaft. She pants quietly as you touch her, shifting her hips up to push against your hand.";
			WaitLineBreak;
			say "     Licking your lips, you open up and stick out your tongue, flicking it over the dickhead of your deer companion. 'God,' she pants under her breath, almost immediately followed by a droplet of pre-cum welling up from the cum-slit. Another swipe gives you a first little taste of the herm doe, followed by going in for more as you brush your lips over her mushroom head and take it into your mouth. 'This feels amazing,' Susan says breathily, stroking a hand over your head. You just continue servicing her, at first exploring her cum-slit and the sensitive rim of her dickhead with your tongue, then moving on to bobbing down on her shaft, taking more of it into your mouth every time. Before too much longer, your nose brushes against the soft fuzz of her pubic fur, with the anthro's whole shaft being engulfed and its end down your throat. Glancing upwards, you meet the wide eyes of your deer friend, then intentionally make the swallowing motion, watching her gasp as your inner muscles squeeze in around her erection.";
			say "     Feeling her cock be in such a tight, warm and pleasurable place seems to awaken something in Susan, as her nostrils flare and she breathes in deeply, then lets out a lustful grunt. She somewhat hesitantly puts her hands on your head, pushing lightly against it to encourage you for more. You push back a little, just to tell her that you're still the one in control here, then do proceed to go down on her. Sliding down on her shaft, you relax your throat to take it all, then pull back slowly once more before starting up a faster rhythm of bobbing up and down. In between, you spend some moments to just go as far down as you can and rest like that, squeezing your inner muscles around the anthro's shaft. It is fun to see her eager reactions when you swallow again, or wiggle your tongue a little, making you want to give her a really good time.";
			WaitLineBreak;
			say "     Being as new as she is to getting the full oral experience with a cock, it isn't that surprising that Susan gets closer and closer to orgasm before much longer, at least judging from her more and more urgent pants. At this point, you take out all the stops and suck all the harder on her cock, at the same time as cupping her furry cum-factories with your hands, lightly squeezing her balls. The effect is fairly immediate, with you being able to feel them throb [italic type]hard[roman type] under your fingers, at the same time as her cock pulses against your tongue, delivering a first heavy spurt of creamy cum right down your throat. You take the next two or three shots like this too, then pull back a little, catching the rest of Susan's load on your tongue and keeping it in your mouth.";
			say "     As the anthro rides out her orgasm and it eventually ebbs off, a look of alarm crosses her face. 'I - I'm sorry! Don't know what came over me there. Was I too rough?' she asks, somewhat afraid of your reply. Slowly pulling off her shaft and keeping your lips pressed together, you half-rise from where you were kneeling and meet Susan's eyes, then shake your head with the edges of your mouth pulling up. And then you surprise her for the second time in a row, as you lean in to kiss the anthro, your cum-slick tongue pushing right into her mouth and sharing her own load with Susan. This escalates into another long, pleasant bout of making out with each other.";
		else: [regular scene]
			say "     Stepping up to Susan, you put your hands on her hips, then slide them up along the sweet doe's sides, pulling her closer to plant a kiss on her lips. She leans into your touch as you wrap your arms around her chest, then start making out with the anthro. It is playful and fun, with you starting off by pushing your tongue into her mouth, only to have her take you up on that. Soon, you're tongue-wrestling back and forth, with Susan not exactly winning, but still giving back with more of a dancer's moves than forceful ones. The breathless, stormy bout of kissing eventually culminates with you pulling back, with both of you grinning at each other, then laughing happily. As your eyes meet, you let your eyebrows wiggle up and down, then tell her you want to suck her cock. ";
			if "Received BJ" is not listed in Traits of Susan: [first time BJ]
				say "Susan's eyes widen as she takes in your words, gaze flicking down between the two of you, then up at your face again. 'I - um, I know I've had this thing for a while, but it's still somewhat unbelievable to me. You know, hearing someone they want to suck [italic type]my cock[roman type]! Being on the receiving end and all that.'";
				say "     Chuckling and saying she's in for a treat, you lower your hands down to Susan's crotch, undoing the button and zipper of her ripped shorts. With an urgent push, you make them fall down her legs, followed by the anthro stepping out of the entangling fabric, panting excitedly as you put your hand on her growing erection. As you suggest she get on the bed, the anthro herm smiles and nods, then moves to sit down on the edge of the cot. As she spreads her legs wide, you can see that her cock is rapidly hardening to full mast, dangling invitingly over the edge of the bed. You're quick to follow her, kneeling down and bringing you face to crotch with Susan. Reaching out and wrapping your hand around her cock, you can feel its pleasant warmth under your fingers, as well as the deer's heartbeat in the rhythmic throb of the shaft. She pants quietly as you touch her, shifting her hips forward reflexively.";
				WaitLineBreak;
				say "     Licking your lips, you open up and stick out your tongue, flicking it over the dickhead of your deer companion. 'God,' she pants under her breath, almost immediately followed by a droplet of pre-cum welling up from the cum-slit. Another swipe gives you a first little taste of the herm doe, followed by going in for more as you brush your lips over her mushroom head and take it into your mouth. 'This feels amazing,' Susan says breathily, stroking a hand over your head. You just continue servicing her, at first exploring her cum-slit and the sensitive rim of her dickhead with your tongue, then moving on to bobbing down on her shaft, taking more of it into your mouth every time. Before too much longer, your nose brushes against the soft fuzz of her pubic fur, with the anthro's whole shaft being engulfed and its end down your throat. Glancing upwards, you meet the wide eyes of your deer friend, then intentionally make the swallowing motion, watching her gasp as your inner muscles squeeze in around her erection.";
				say "     Feeling her cock be in such a tight, warm and pleasurable place seems to be something that Susan simply wasn't prepared for, not fully at least. You can see her nostrils flare as she breathes in deeply, then lets out almost a bellow, as if she was in rut or something. Instincts take over as her hands shoot forward, both gripping your head tightly as the deer thrusts her hips forward, rabbit-fucking your throat with urgent haste. You do your best to relax your throat, allowing for the rapid in and out of her cock, interspersed with moments in which she just grinds her crotch against your face, dick as far in as it can go. In those times, you swallow again, or wiggle your tongue a little, wanting to make it as good as possible for the herm having her first experience with getting a blowjob.";
				WaitLineBreak;
				say "     Being as new as she is to getting the full oral experience with a cock, it isn't that surprising that Susan gets closer and closer to orgasm before much longer, at least judging from her more and more urgent pants. At this point, you take out all the stops and suck all the harder on her cock, at the same time as cupping her furry cum-factories with your hands, lightly squeezing her balls. The effect is fairly immediate, with you being able to feel them throb [italic type]hard[roman type] under your fingers, at the same time as her cock pulses against your tongue, delivering a first heavy spurt of creamy cum right down your throat. You take the next two or three shots like this too, then pull back a little, catching the rest of Susan's load on your tongue and keeping it in your mouth.";
				say "     As the anthro rides out her orgasm and it eventually ebbs off, a look of alarm crosses her face. 'I - I'm sorry! Don't know what came over me there. Was I too rough?' she asks, somewhat afraid of your reply. Slowly pulling off her shaft and keeping your lips pressed together, you half-rise from where you were kneeling and meet Susan's eyes, then shake your head with the edges of your mouth pulling up. And then you surprise her for the second time in a row, as you lean in to kiss the anthro, your cum-slick tongue pushing right into her mouth and sharing her own load with Susan. This escalates into another long, pleasant bout of making out with each other, which works wonders for quelling any doubts in her mind that you didn't do exactly what you wanted with her.";
			else:
				say "A smile spreads over Susan's face as she takes in your words, gaze flicking down between the two of you, then up at your face again. 'You know, when I was [']just['] a woman before, I didn't quite understand why my boyfriend back in school kept pestering me so much oral. I mean, yeah, I know it feels nice but wanting to do it all the time... well, now I know! God, the rush of male orgasm, and cumming in someone's tight, squeezing throat! I won't say no to that!'";
				say "     Right after saying those words, Susan hastily undoes the button and zipper of her ripped shorts, shoving them down over her furry rear. As the entangling fabric falls down her legs, she steps out of it and kicks the shorts aside. Meanwhile, your own hand is already reaching for her crotch, fingers sliding over a growing erection. 'Can't wait to feel your mouth on it again!' the anthro herm says in a lust-filled tone, then pulls you with her to the cot, places her hands on your shoulders and pushes down on them. As you sink to your knees readily, she lets herself drop down on it in a sitting position too, spreading her legs and scooching right to the edge of the cot. Rapidly hardening to full mast, her cock dangles invitingly right in front of your face. Wrapping her fingers around the base of the shaft, Susan swings it up and down a little, seeming eager and almost a little impatient for you to get going. Her hand reaching out to lightly rest on top of your head is another sign of this, pushing it a little towards her crotch.";
				WaitLineBreak;
				say "     Licking your lips, you open up and stick out your tongue, lightly flicking it over the dickhead of your deer companion before pulling back again. 'God, don't just tease me like that,' she pants under her breath, almost immediately followed by a droplet of pre-cum welling up from the cum-slit. Another swipe gives you a nice little taste of the herm doe, followed by going in for more as you brush your lips over her mushroom head and take it into your mouth. 'Yeah, that's it!' Susan says breathily, stroking your head and again pushing a little on it, encouraging you to do more. You playfully service her, sometimes just following the back and forth movements her hand directs you into, sometimes surprising her, for example by exploring her cum-slit and the sensitive rim of her dickhead with your tongue, then working up to inhaling all of her shaft. Before too much longer, your nose is buried in the soft fuzz of her pubic fur, with the anthro's whole shaft being engulfed and its end down your throat.";
				say "     Glancing upwards, you meet the wide eyes of your deer friend, then intentionally make the swallowing motion, watching her gasp as your inner muscles squeeze in around her erection. This seems to be just the signal that Susan's more animalistic urges need, and as expected, she goes into what might be called a mini-rut, bellowing lustily as her hands shoot forward to grip your head tightly. Her fingers keep you in an iron grip as the deer thrusts her hips forward, rabbit-fucking your throat with urgent haste. You do your best to relax your throat, allowing for the rapid in and out of her cock, interspersed with moments in which she just grinds her crotch against your face, dick as far in as it can go. In those times, you swallow again, or wiggle your tongue a little, wanting to make it as good as possible for the herm. You even attempt to cheer her on a little, and though the cock in your mouth makes sure that none of it is intelligible, the movement and vibration around her shaft gives Susan more pleasure.";
				WaitLineBreak;
				say "     Thoroughly enjoying being able to face-fuck you, the anthro keeps going at it for quite a while, thrusting into your throat or just resting in it. This makes it necessary for you to take several breaks in between to catch your breath, which sometimes takes some urgent patting of Susan's thighs before she lets you up from choking on her erection. Even then, she doesn't fully let go, keeping a hand on your head to continue with one of her favorite things to do with a cock as soon as possible. As she gets her full oral experience, Susan gets closer and closer to orgasm, easily recognizable by her more and more urgent pants. When you can tell she's pretty close, you take out all the stops and suck all the harder on her cock, at the same time as cupping her furry cum-factories with your hands, lightly squeezing her balls. The effect is fairly immediate, with you being able to feel them throb [italic type]hard[roman type] under your fingers, at the same time as her cock pulses against your tongue, delivering a first heavy spurt of creamy cum right down your throat.";
				say "     You take the next two or three shots like this too, then pull back a little, catching the rest of Susan's load on your tongue and keeping it in your mouth. She knows full well what you're doing, and the next thing that happens is that the anthro's hands slide under your arms, hooking you at the armpits and pulling you up and on top of her. With both of you laughing, you a bit muffled due to your full mouth, you kiss her deeply, pushing your cum-covered tongue into her mouth as you do. This escalates into another long, pleasant bout of making out with each other.";
	TraitGain "Received BJ" for Susan;
	NPCSexAftermath Player receives "OralCock" from Susan;

to say Susan receives Cunni:
	if Cock Length of Susan > 10: [M-Herm]
		if "Received BJ" is not listed in Traits of Susan: [first time BJ]
			say "     ";
		else: [repeat]
			say "     ";
	else: [F-Herm]
		if "Received BJ" is not listed in Traits of Susan: [first time BJ]
			say "     ";
		else: [repeat]
			say "     ";
	NPCSexAftermath Player receives "OralPussy" from Susan;

to say Susan gives PussyFuck:
	if Cock Length of Susan > 10: [M-Herm]
		if SusanDom is true: [dom scene]
			if "Fucked a pussy" is not listed in Traits of Susan: [first time fucking]
				say "     Stepping up to [Susan] with an eager expression on your face, you place a hand on the bulge of [PosAdj of Susan] left pec, giving the firm muscle a squeeze. In reaction, the dominant anthro slides a hand around your midriff and pulls you close, then kisses you right on the lips. 'Like that, don't you,' [Susan] mumbles while making out with you, flexing his pecs a little to make them dance under your touch. Smooching with the anthro is playful and fun, especially as [SubjectPro of Susan] starts to push [PosAdj of Susan] tongue into your mouth, trying to push yours down playfully. Soon, you're tongue-wrestling back and forth, with [Susan] giving as good as you are. The breathless, stormy bout of kissing eventually culminates with you pulling back, or at least trying to, as [Susan] keeps a hand on the back of your head to give you one last kiss on the lips. Chuckling, [SubjectPro of Susan] lets you go after that, with both of you grinning at each other.";
				say "     As your eyes meet, you let your eyebrows wiggle up and down, then plead for [ObjectPro of Susan] to fuck you with [PosAdj of Susan] cock. [SubjectProCap of Susan] grins and gives your chest a playful slap, then says, 'Time to become the true buck you wanted me to be, eh babe? Let's do it! On the bed with you!' Eager to get it on with [Susan], you quickly move over to [PosAdj of Susan] cot and lie down, waiting for [ObjectPro of Susan] to kick off [PosAdj of Susan] clothes and come to you. Bending over your stretched-out form, [SubjectPro of Susan] runs one hand along your naked chest, stroking and teasing your body, then climbs on top of you, face to face and with [PosAdj of Susan] muscular chest pressing against your own. The herm buck plants a demanding kiss on your lips, then reaches down and dips two fingers into your wet snatch, caressing your inner walls before spreading the slickness of your female juices over [PosAdj of Susan] cock. After a few more times of this, [SubjectPro of Susan] takes hold of [PosAdj of Susan] glistening shaft and lines it up with your opening.";
				WaitLineBreak;
				say "     'Now you'll become my doe, and I your buck!' [SubjectPro of Susan] says with an eager grunt, almost immediately followed by [ObjectPro of Susan] pressing into you, [PosAdj of Susan] large cock nudging apart your sensitive nether lips to slide in between them. 'Oooh yeah! This feels amazing!' [SubjectPro of Susan] grunts as [PosAdj of Susan] erection is enveloped by your slick, warm and tightly gripping insides, marking [PosAdj of Susan] first experience of fucking someone's pussy. A shiver of ecstasy runs up your spine as [PosAdj of Susan] cock fills you, spreading your insides around its girth, and you can literally feel the rapid heartbeat of the very excited buck pulse inside you. As [SubjectPro of Susan] soon bottoms out, with [PosAdj of Susan] long cock fully sheathed inside your body and [Susan]'s furry balls rubbing against your crotch, you can see an inner fire start to blaze in [PosAdj of Susan] eyes, with a grunt rising in the masculine anthro's chest. 'God, I can feel it now. I wanna pound that pussy until I knock you up!' [SubjectPro of Susan] adds, giving voice to [PosAdj of Susan] natural urges wanting to make their presence known.";
				say "     With a broad and eager grin on your face, you ask your buck to give it to you - and [SubjectPro of Susan] starts doing so right away, withdrawing most of the way and then pounding [PosAdj of Susan] shaft back into your receptive snatch. The shock of [PosAdj of Susan] furry hips smacking against your own runs through your whole body, making you gasp at [PosAdj of Susan] virility. Then the anthro buck begins to jack-hammer into you, [PosAdj of Susan] girthy shaft sliding along your sensitive inner walls and reducing you to a panting and twitching sheath for [Susan]'s glorious cock. The both of you are so focused on the in and out of [PosAdj of Susan] erection sliding home into your sloshing wet pussy that it comes as a shock when you suddenly find yourself without support for your head and shoulders, complete with the sensation of seeing the world upside down. [Susan] fucked you so hard that [SubjectPro of Susan] pushed you up along the bed, until finally pushing your upper half across the end! [SubjectProCap of Susan] pounds into you one more time, pushing you further, before your wildly flailing arms and sounds of distress make [Susan] realize what is going on.";
				WaitLineBreak;
				say "     'Oops, got a bit out of control there, haha!' [Susan] grunts in lusty amusement, then slides two strong arms underneath your torso and pulls you up against [PosAdj of Susan] chest. Holding you tight and with [PosAdj of Susan] whole cock still balls-deep inside you, the muscular buck turns around, then lowers you to rest on the bed, now in the other direction than before. [SubjectProCap of Susan] doesn't let go of you though, only moving [PosAdj of Susan] hands to hook over your shoulders from beneath, securing you from sliding away as [SubjectPro of Susan] prepares to ram into you forcefully yet again. The moment of being re-bedded allows your blissed-out mind to winder about the impressive stamina that [Susan] is showing for this being [PosAdj of Susan] first time - before conscious thought is washed away once more when [SubjectPro of Susan] gets back into rutting your pussy with full force. You can't even tell how long [SubjectPro of Susan] continues to fuck you like this, only that you enjoy every last minute of it, and finally are pushed to a loud, full-throated moan as you climax while impaled on [PosAdj of Susan] shaft.";
				say "     With your pussy spasming wildly around the herm buck's large cock, [SubjectPro of Susan] lets go of [PosAdj of Susan] self-control and you can feel [PosAdj of Susan] erection throb HARD inside you. A gush of thick, creamy deer cum paints your insides white, accompanied by the almost shockingly loud bellow of a dominant stag emerging from [Susan]'s throat as [SubjectPro of Susan] throws [PosAdj of Susan] proudly crowned head backwards to tell the world of [PosAdj of Susan] conquest. [PosAdjCap of Susan] erection continues to pulse and throb with more cum being blasted into you for a long time, while you panting underneath [Susan], enjoying the feeling of being filled by [ObjectPro of Susan]. When the pulsing of more cum into your pussy eventually ebbs off, the herm buck lowers [PosAdj of Susan] muzzle to yours and gives you a long kiss, followed by making out and exploring your mouth with [PosAdj of Susan] tongue. Finally, [SubjectPro of Susan] says, 'This was great! I can't wait to do it again!' At the same time, [SubjectPro of Susan] slides a hand down your front and feels over your tummy, possibly imagining it swelling with [PosAdj of Susan] fawns.";
				AffectionGain 1 for Susan;
				TraitGain "Fucked a pussy" for Susan;
			else: [repeat]
				say "     Stepping up to [Susan] with an eager expression on your face, you place a hand on the bulge of [PosAdj of Susan] left pec, giving the firm muscle a squeeze. In reaction, the dominant anthro slides a hand around your midriff and pulls you close, then kisses you right on the lips. 'Like that, don't you,' [Susan] mumbles while making out with you, flexing his pecs a little to make them dance under your touch. Smooching with the anthro is playful and fun, especially as [SubjectPro of Susan] starts to push [PosAdj of Susan] tongue into your mouth, trying to push yours down playfully. Soon, you're tongue-wrestling back and forth, with [Susan] giving as good as you are. The breathless, stormy bout of kissing eventually culminates with you pulling back, or at least trying to, as [Susan] keeps a hand on the back of your head to give you one last kiss on the lips. Chuckling, [SubjectPro of Susan] lets you go after that, with both of you grinning at each other.";
				say "     As your eyes meet, you let your eyebrows wiggle up and down, then plead for [ObjectPro of Susan] to fuck you with [PosAdj of Susan] cock. [SubjectProCap of Susan] grins and gives your chest a playful slap, then says, 'Knew you couldn't resist coming back for more, babe! On the bed with you, sit on the end!' Eager to get it on with [Susan], you quickly move over to [PosAdj of Susan] cot[if Player is not naked], strip [end if]and sit on its edge, waiting for [ObjectPro of Susan] to kick off [PosAdj of Susan] clothes and come to you. Hooking a hand behind your neck, [SubjectPro of Susan] leans in to give you a kiss, then pushes against your chest to make you lay back. [Susan] then hooks [PosAdj of Susan] hands under your legs, raises and spreads them so [SubjectPro of Susan] can step in between. [PosAdjCap of Susan] is already hard and erect, leading the way, with a few beads of pre-cum dripping down onto your crotch to show [PosAdj of Susan] eagerness. The muscular herm buck slides [PosAdj of Susan] hands under your thighs to get a good grip, then bends [PosAdj of Susan] knees to line [PosAdj of Susan] erection up with your wet pussy.";
				WaitLineBreak;
				say "     'I love giving my doe what [SubjectPro of Player] needs!' [Susan] says with an eager grunt, almost immediately followed by [ObjectPro of Susan] pressing into you, [PosAdj of Susan] large cock nudging apart your sensitive nether lips to slide in between them. 'Oooh yeah! This feels amazing!' [SubjectPro of Susan] grunts as [PosAdj of Susan] erection is enveloped by your slick, warm and tightly gripping insides, which readily welcome [PosAdj of Susan] hard shaft once again. A shiver of ecstasy runs up your spine as [PosAdj of Susan] cock fills you, spreading your insides around its girth, and you can literally feel the rapid heartbeat of the very excited buck pulse inside you. As [SubjectPro of Susan] soon bottoms out, with [PosAdj of Susan] long cock fully sheathed inside your body and [Susan]'s furry balls rubbing against your crotch, you can see an inner fire start to blaze in [PosAdj of Susan] eyes, with a grunt rising in the masculine anthro's chest. 'God, this rush is the best thing I ever felt! I wanna pound that pussy until I knock you up!' [SubjectPro of Susan] adds, giving voice to [PosAdj of Susan] natural urges wanting to make their presence known.";
				say "     With a broad and eager grin on your face, you ask your buck to give it to you hard - and [SubjectPro of Susan] starts doing so right away, withdrawing most of the way and then pounding [PosAdj of Susan] shaft back into your receptive snatch. The shock of [PosAdj of Susan] furry hips smacking against your own runs through your whole body, making you gasp at [PosAdj of Susan] virility. The anthro buck begins to jack-hammer into you, [PosAdj of Susan] girthy shaft sliding along your sensitive inner walls and reducing you to a panting and twitching sheath for [Susan]'s glorious cock. This time though, there is no danger of being fucked off the bed, as [Susan] keeps a solid grip to prevent you from sliding away. 'You feel amazing babe, you know that?!' [Susan] grunts in lusty excitement, then leans in to French-kiss you, a pleasant little distraction before [SubjectPro of Susan] prepares to ram into you forcefully yet again.";
				WaitLineBreak;
				say "     You have a moment to think about how far [SubjectPro of Susan] has come from the shy little doe you found in the forest, before conscious thought is washed away once more when [SubjectPro of Susan] gets back into rutting your pussy with full force. You can't even tell how long [SubjectPro of Susan] continues to fuck you like this, only that you enjoy every last minute of it, and finally are pushed to a loud, full-throated moan as you climax while impaled on [PosAdj of Susan] shaft. With your pussy spasming wildly around the herm buck's large cock, [SubjectPro of Susan] lets go of [PosAdj of Susan] self-control and you can feel [PosAdj of Susan] erection throb HARD inside you. A gush of thick, creamy deer cum paints your insides white, accompanied by the almost shockingly loud bellow of a dominant stag emerging from [Susan]'s throat as [SubjectPro of Susan] throws [PosAdj of Susan] proudly crowned head backwards to tell the world of [PosAdj of Susan] conquest.";
				say "     [PosAdjCap of Susan] erection continues to pulse and throb with more cum being blasted into you for a long time, while you panting underneath [Susan], enjoying the feeling of being filled by [ObjectPro of Susan]. When the pulsing of more cum into your pussy eventually ebbs off, the herm buck lowers [PosAdj of Susan] muzzle to yours and gives you a long kiss, followed by making out and exploring your mouth with [PosAdj of Susan] tongue. Finally, [SubjectPro of Susan] says, 'This was great! I can't wait to do it again!' At the same time, [SubjectPro of Susan] slides a hand down your front and feels over your tummy, possibly imagining it swelling with [PosAdj of Susan] fawns.";
		else: [normal scene]
			if "Fucked a pussy" is not listed in Traits of Susan: [first time fucking]
				say "     Stepping up to [Susan], you place a hand on the bulge of [PosAdj of Susan] left pec, giving the firm muscle a squeeze, then brushing your fingers down a little, feeling the lightly rounded curve that serves as a reminder that [Susan] still has some female characteristics. Like very sensitive nipples for example, which you gleefully exploit, giving them a light pinch while planting a hungry kiss on your sexy buck's lips. 'That feels nice,' [Susan] mumbles while making out with you, flexing [PosAdj of Susan] pecs a little to make them dance under your touch. Smooching with the anthro is playful and fun, with you starting off by pushing your tongue into [PosAdj of Susan] mouth, only to have [ObjectPro of Susan] take you up on that. Soon, you're tongue-wrestling back and forth, with [Susan] giving as good as you are. The breathless, stormy bout of kissing eventually culminates with you pulling back, with both of you grinning at each other, then laughing happily. As your eyes meet, you let your eyebrows wiggle up and down, then ask [ObjectPro of Susan] to fuck your pussy.";
				say "     [PosAdj of Susan] eyes go wide as [SubjectPro of Susan] looks at you, then down to your crotch, and from there to [PosAdj of Susan] own, just as you put your hand on the front of [PosAdj of Susan] pants. 'Are you sure? I - I've never done it, in this position. You know, as the [']man['].' Simply smiling at this hesitancy, you proceed to stroke [ObjectPro of Susan] through the fabric of [PosAdj of Susan] shorts, soon feeling something stir within. As the herm buck's breath starts to quicken, betraying the arousal building in [PosAdj of Susan] body, you pop the button of the garment, freeing her rapidly hardening cock from its cloth prison. With just a little push by your hands, the shorts fall down, simply sliding off her slender hooves as [SubjectPro of Susan] lifts them up. Cupping [PosAdj of Susan] soft-furred balls, you give them a playful squeeze, then move your hand up a little, wrapping your fingers around the hard member he's packing. Eleven inches long and with a nice girth, it lays well in your hand, getting [ObjectPro of Susan] even more excited as you stroke it up and down.";
				WaitLineBreak;
				say "     With a chuckle, you tell [ObjectPro of Susan] that you don't think [SubjectPro of Susan]'ll have any problems, from what you're seeing. [Susan] beams at you and appears to be more secure in [PosAdj of Susan] masculinity afterwads, leaning in to give you a somewhat more dominant kiss. With your hand still on [PosAdj of Susan] erection, you lead the buck to [PosAdj of Susan] cot, then slide your hand over [PosAdj of Susan] muscular chest and squeeze [PosAdj of Susan] firm pecs. Bending your head, you seek out [PosAdj of Susan] nipples, gently suckling on them one by one. You continue playing with [Susan]'s sensitive nips a little while longer, then glance up to meet [PosAdj of Susan] eyes, telling [ObjectPro of Susan] that you'll be ready in just a second. [if Player is not naked]After stripping off your own clothes and gear, just dropping them wherever in your eagerness, you lie down on the cot. [else]Hastily putting down your gear, you then lie down on the cot. [end if][Susan] watches you get ready with a lusty expression. [SubjectProCap of Susan] is panting rapidly, as if [SubjectPro of Susan] can't believe this is happening, and takes a deep breath, then climbs onto the cot with you, moving forward until [SubjectPro of Susan]'s right on top of you.";
				WaitLineBreak;
				say "     Reaching down to take hold of [PosAdj of Susan] erection, you've got your finger on [Susan]'s dickhead as your nether lips brush against [PosAdj of Susan] shaft the very first time, which results in a feeling of slight wetness against your fingertips. With a smile, you wipe off the trickle of pre-cum welling up from [PosAdj of Susan] cum-slit, then hold your hand out in front of [Susan]'s face, spreading your fingers to show off the strings of pre stretching between them. With a smile on your face, you tell the herm buck that [PosAdj of Susan] body's clearly more than ready to take this next step. Then you take [PosAdj of Susan] hand and guide it to wrap around [Susan]'s erection, followed by spreading yourself open for [ObjectPro of Susan]. [if Player is male]Jerking your own cock, [else]Rubbing over your clit, [end if]you moan for [Susan] to fuck you, meeting [PosAdj of Susan] eyes as the last vestiges of hesitation fall away. Biting [PosAdj of Susan] lip, [SubjectPro of Susan] inches forward while pushing the tip of [PosAdj of Susan] shaft down, easily finding your opening as nature intended. A shiver of ecstasy runs up your spine as [PosAdj of Susan] cock nudges apart your folds and slides right in.";
				say "     [PosAdjCap of Susan] rock-hard cock feels warm and filling as it spreads your pussy around its girth, and you can literally feel the rapid heartbeat of the very excited buck pulse inside you. The feeling of having [PosAdj of Susan] cock completely enveloped by a receptive pussy for the first time is almost overwhelming for [Susan], with [ObjectPro of Susan] starting to hump [PosAdj of Susan] hips forward wildly, driving [ReflexPro of Susan] deeper before sliding out and then jack-hammering into you again. Moaning with a broad grin on your face at the eagerness of your cervine partner, push against her crotch with every thrust, receiving the fucking you've wanted from [ObjectPro of Susan]. It feels amazing to see the herm buck let loose with [PosAdj of Susan] eleven-inch cock, pumping [PosAdj of Susan] erection into your body with a warm and slick sensation - [SubjectPro of Susan] must be leaking pre-cum like a faucet! Knowing full well that the buck won't last all that long in [PosAdj of Susan] first time, you bring a hand to your crotch, [if Player is male]jerking your own erection franticly to catch up with her raging libido. [else]frigging your clit franticly to catch up with her raging libido. [end if][line break]";
				WaitLineBreak;
				say "     You manage to time things properly for your lust to reach its crescendo just slightly ahead of [Susan], letting out a full-throated moan as you climax while impaled on [PosAdj of Susan] shaft. With your pussy spasming wildly around the herm's well-sized erection, you give [ObjectPro of Susan] the last little push over the edge and feel [PosAdj of Susan] erection throb HARD inside you. A gush of thick, creamy deer cum paints your insides white, accompanied by an almost shocked gasp from [Susan] at the sheer ecstasy of a male orgasm as it rocks through [ObjectPro of Susan]. You relish in [PosAdj of Susan] orgasm, reaching up to wrap your arms around [PosAdj of Susan] body and pull [ObjectPro of Susan] in close, kissing the anthro deer on [PosAdj of Susan] muzzle as [SubjectPro of Susan] holds [ReflexPro of Susan] tightly pressed against your crotch. 'That - that was amazing,' the buck says in an exhausted but happy tone as [SubjectPro of Susan] looks into your eyes. Reaching up to caress the base of [PosAdj of Susan] antlers, you add that you expect [ObjectPro of Susan] to be ready for more, if and when the mood for [PosAdj of Susan] hard cock strikes you. 'Like me being the buck, eh? So do I!' [SubjectPro of Susan] replies happily, and you can feel a little throb go through [PosAdj of Susan] cock as [SubjectPro of Susan] thinks about future sex.";
				AffectionGain 1 for Susan;
				TraitGain "Fucked a pussy" for Susan;
			else: [repeat]
				say "     Sliding an arm around [Susan], you tell [PosAdj of Susan] that you want to take [PosAdj of Susan] cock in your pussy. The anthro buck's eyes go wide and a smile crosses [PosAdj of Susan] muzzle. Reaching down to plant a hand on [PosAdj of Susan] crotch, you can feel [PosAdj of Susan] manhood start to grow. 'I've been thinking about our last time - like, a lot!' [SubjectPro of Susan] admits, which you reward with a grin and a peck on [PosAdj of Susan] lips. Wiggling your eyebrows, you tell [ObjectPro of Susan] that you knew [SubjectPro of Susan]'d get into fucking, then pop the button of [PosAdj of Susan] pants, freeing [PosAdj of Susan] rapidly hardening cock from its cloth prison. With just a little push by your hands, the shorts fall down, simply sliding off [PosAdj of Susan] hooves as [SubjectPro of Susan] lifts them up. Cupping [PosAdj of Susan] soft-furred balls, you give them a playful squeeze, then move your hand up a little, wrapping your fingers around the hard member [SubjectPro of Susan]'s packing. Eleven inches long and with a nice girth, it lays well in your hand, getting [ObjectPro of Susan] even more excited as you stroke it up and down.";
				say "     With your hand still on [PosAdj of Susan] erection, you lead the buck to [PosAdj of Susan] cot, then slide your hand over [PosAdj of Susan] muscular chest and squeeze [PosAdj of Susan] firm pecs. Bending your head, you seek out [PosAdj of Susan] nipples, gently suckling on them one by one. You continue playing with [Susan]'s sensitive nips a little while longer, then glance up to meet [PosAdj of Susan] eyes, telling [ObjectPro of Susan] that you'll be ready in just a second. [if Player is not naked]After stripping off your own clothes and gear, just dropping them wherever in your eagerness, you lie down on the cot. [else]Hastily putting down your gear, you then lie down on the cot. [end if][Susan] watches you get ready with a lusty expression. [SubjectProCap of Susan] is panting rapidly, eager for what will come next, and takes a deep breath, then climbs onto the cot with you, moving forward until [SubjectPro of Susan]'s right on top of you.";
				WaitLineBreak;
				say "     Reaching up to put your hands on the anthro's sides, you slide your fingers over [PosAdj of Susan] chest to search out [Susan]'s breasts, lightly pinching and stimulating [PosAdj of Susan] nipples. While you do so, the anthro takes hold of [PosAdj of Susan] erection and guides it to the receptive pussy waiting for it between your legs, brushing the dickhead along your sensitive nether lips, mingling the herm's pre-cum with your own female juices and drawing a pleased pant from both of your mouths. Then [SubjectPro of Susan] moves ahead to nudge apart your folds and slides right in. [PosAdjCap of Susan] rock-hard cock feels warm and filling as it spreads your pussy around its girth, and you can literally feel the rapid heartbeat of the very excited buck pulse inside you. The feeling of having [PosAdj of Susan] cock completely enveloped by a pussy is almost irresistible for [Susan], with [ObjectPro of Susan] starting to hump [PosAdj of Susan] hips forward wildly, driving [ReflexPro of Susan] deeper before sliding out and then jack-hammering into you again.";
				say "     Moaning with a broad grin on your face at the eagerness of your cervine partner, push against [PosAdj of Susan] crotch with every thrust, receiving the fucking you've wanted from [SubjectPro of Susan]. It feels amazing to see the herm buck let loose with [PosAdj of Susan] eleven-inch cock, pumping [PosAdj of Susan] erection into your body with a warm and slick sensation - [SubjectPro of Susan] must be leaking pre-cum like a faucet! Knowing that [SubjectPro of Susan] runs the danger of being overwhelmed by the searing intensity of male arousal after having been a woman for most [PosAdj of Susan] life, you make [Susan] pace [ReflexPro of Susan] by pulling the grunting doe down on top of you and keeping [ObjectPro of Susan] from living out the urges of [PosAdj of Susan] breeding rut, legs wrapped around [PosAdj of Susan] hips to pin them down and your mouth seeing out [PosAdj of Susan] muzzle in a breathless bout of making out. Though no less pleasurable, this dulls the sharp edge of [ObjectPro of Susan] needing to cum too quickly, prolonging your shared fun when you release [ObjectPro of Susan] again and [SubjectPro of Susan] begins to hammer into your wet pussy once more.";
				WaitLineBreak;
				say "     Before long though, the rutting buck cannot be denied any longer, and [Susan] shakes off your attempts to draw [ObjectPro of Susan] in again, instead just bucking against you with ever-increasing vigor. As you realize this, you change tracks yourself, quickly bringing a hand down to [if Player is male]your own cock and jerking it with furious intensity[else]your clit and frigging it with furious intensity[end if]. A heartbeat later, you feel [Susan]'s cock throb deep inside your body, erupting into your pussy with a thick, creamy load of virile deer cum. The sensation of being bred by your sexy buck is the last little push besides your own stimulation you needed, and with a loud, full-throated moan, you climax while impaled on [PosAdj of Susan] shaft. Your [if Player is male]cock jerks and swings up and down from the movements of fucking, spraying its own load all over [Susan] and yourself while your [end if]pussy gushes with femcum and soaks [Susan]'s fur. You relish in the shared orgasm between the two of you, gyrating your hips to grind against [Susan] even as [SubjectPro of Susan] stiffens on top of you, completely focused on erupting into your depths.";
				say "     You relish in [PosAdj of Susan] orgasm, reaching up to wrap your arms around [PosAdj of Susan] body and pull [ObjectPro of Susan] in close, kissing the anthro deer on [PosAdj of Susan] muzzle as [SubjectPro of Susan] holds [ReflexPro of Susan] tightly pressed against your crotch. 'That - that was amazing,' the buck says in an exhausted but happy tone as [SubjectPro of Susan] looks into your eyes. Then you add that you expect [ObjectPro of Susan] to be ready for more, if and when the mood for [PosAdj of Susan] hard cock strikes you. 'Like me being the buck, eh? So do I!' [SubjectPro of Susan] replies happily, and you can feel a little throb go through [PosAdj of Susan] cock as [SubjectPro of Susan] thinks about future sex.";
	else: [F-Herm]
		if "Fucked a pussy" is not listed in Traits of Susan: [first time fucking]
			say "     Sliding an arm around Susan, you tell her that you want to take her cock in your pussy. The young woman's eyes go wide as she looks at you, then down to her crotch, and from there to her own, just as you put your hand on the front of her pants. 'Are you sure? I - I've never done it, in this position. You know, as the [']man['].' Simply smiling at this hesitancy, you proceed to stroke her through the fabric of her shorts, soon feeling something stir within. As the doe herm's breath starts to quicken, betraying the arousal building in her body, you pop the button of the garment, freeing her rapidly hardening cock from its cloth prison. With just a little push by your hands, the shorts fall down, simply sliding off her slender hooves as she lifts them up. Cupping her soft-furred balls, you give them a playful squeeze, then move your hand up a little, wrapping your fingers around the hard member she's packing. Nine inches long and with a nice girth, it lays well in your hand, getting her even more excited as you stroke it up and down.";
			say "     With a chuckle, you tell her that you don't think she'll have any problems, from what you're seeing. Susan laughs musically, beaming at you and then leaning in to nuzzle you. With your hand still on her erection, you lead the doe to her cot, then pull the top off her body and caress her breasts. Bending your head, you seek out her nipples, gently suckling on them one by one. ";
			if SusanSub is true: [powerbottom - ride Susan's cock]
				say "You continue playing with Susan's breasts a little while longer, then nod at the cot, telling her to lie down and get ready for you. While the submissive doe does so, you [if Player is not naked]quickly strip off your own clothes and gear, just dropping them wherever in your eagerness and step up to the foot of the cot. [else]hastily put down your gear and step up to the foot of the cot. [end if]Lying on her back, her erection standing fully upright like a flagpole, Susan watches you with a lusty yet shy expression. She is panting rapidly, as if she can't believe this is happening, and takes a deep breath as you climb onto the cot with her, moving forward until you're right on top of the anthro.";
			else: [missionary fuck]
				say "You continue playing with Susan's breasts a little while longer, then glance up to meet her eyes, telling her that you'll be ready in just a second. [if Player is not naked]After stripping off your own clothes and gear, just dropping them wherever in your eagerness, you lie down on the cot. [else]Hastily putting down your gear, you then lie down on the cot. [end if]Susan watches you get ready with a lusty expression. She is panting rapidly, as if she can't believe this is happening, and takes a deep breath, then climbs onto the cot with you, moving forward until she's right on top of you.";
			WaitLineBreak;
			say "     Reaching down to take hold of her erection, you've got your finger on Susan's dickhead as your nether lips brush against her shaft the very first time, which results in a feeling of slight wetness against your fingertips. With a smile, you wipe off the trickle of pre-cum welling up from her cum-slit, then hold your hand out in front of Susan's face, spreading your fingers to show off the strings of pre stretching between them. With a smile on your face, you tell the herm doe that her body's clearly more than ready to take this next step. Then you ";
			if SusanSub is true: [powerbottom - ride Susan's cock]
				say "use your hand to hold her erection steady as you lower yourself down upon it. [if Player is male]Your own cock twitches and drips a little pre from the tip as you do so. [end if]Meeting her eyes, you say that she'll get her first fuck now, and grin as she gasps and bites her lip. A shiver of ecstasy runs up your spine as her cock nudges apart your folds and slides right in.";
				say "     Her rock-hard cock feels warm and filling as it spreads your pussy around its girth, and you can literally feel the rapid heartbeat of the very excited doe pulse inside you. The feeling of having her cock completely enveloped by a receptive pussy for the first time is almost overwhelming for Susan, with her finding herself reflexively humping her hips up against yours. Grinning broadly at the eagerness of your cervine partner, you lean over her and brace yourself against the bed, then plant a kiss on her muzzle before rocking back against her shaft. It feels amazing to dominate the little doe even as you take her nine-inch cock, pumping up and down on the spear of her manhood. The sensation of her inside you is one of warmth and slickness - she must be leaking pre-cum like a faucet! Knowing full well that the doe won't last all that long in her first time, you bring a hand to your own crotch, [if Player is male]jerking your own erection franticly to catch up with her raging libido. [else]frigging your clit franticly to catch up with her raging libido. [end if][line break]";
				WaitLineBreak;
				say "     You manage to time things properly for your lust to reach its creshendo just slightly ahead of Susan, letting out a full-throated moan as you climax while impaled on her shaft. With your pussy spasming wildly around the herm's well-sized shaft, you give her the last little push over the edge and feel her erection throb HARD inside you. A gush of thick, creamy deer cum paints your insides white, accompanied by an almost shocked gasp from Susan at the sheer ecstasy of a male orgasm as it rocks through her. You relish in her orgasm, continuing to slide on and down on her shaft to continue stimulating her in varying ways and prolong the experience - so much so that she soon pants and whimpers desperately as her cock becomes sensitive after a while. Susan's hands move to grasp your hips, yet she never truly attempts to hold you fast, being too shy and compliant to do so. This leaves you free to ride her a little while longer before you finally relent, sinking down on her cock and keeping it inside you.";
				say "     'That - that was amazing,' the doe says in an exhausted but happy tone as she looks up at you, and you lean down to kiss her once more. Then you add that you expect her to be ready for more, if and when the mood for her hard cock strikes you. 'Of course! Anything for you!' she replies happily, and you can feel a little throb go through her cock as she thinks about future sex.";
			else:
				say "take her hand and guide it to wrap around Susan's erection, followed by spreading yourself open for her. [if Player is male]Jerking your own cock, [else]Rubbing over your clit, [end if]you moan for Susan to fuck you, meeting her eyes as the last vestiges of hesitation fall away. Biting her lip, she inches forward while pushing the tip of her shaft down, easily finding your opening as nature intended. A shiver of ecstasy runs up your spine as her cock nudges apart your folds and slides right in.";
				say "     Her rock-hard cock feels warm and filling as it spreads your pussy around its girth, and you can literally feel the rapid heartbeat of the very excited doe pulse inside you. The feeling of having her cock completely enveloped by a receptive pussy for the first time is almost overwhelming for Susan, with her starting to hump her hips forward wildly, driving herself deeper before sliding out and then jack-hammering into you again. Moaning with a broad grin on your face at the eagerness of your cervine partner, push against her crotch with every thrust, receiving the fucking you've wanted from her. It feels amazing to see the herm doe let loose with her nine-inch cock, pumping her erection into your body with a warm and slick sensation - she must be leaking pre-cum like a faucet! Knowing full well that the doe won't last all that long in her first time, you bring a hand to your crotch, [if Player is male]jerking your own erection franticly to catch up with her raging libido. [else]frigging your clit franticly to catch up with her raging libido. [end if][line break]";
				WaitLineBreak;
				say "     You manage to time things properly for your lust to reach its crescendo just slightly ahead of Susan, letting out a full-throated moan as you climax while impaled on her shaft. With your pussy spasming wildly around the herm's well-sized shaft, you give her the last little push over the edge and feel her erection throb HARD inside you. A gush of thick, creamy deer cum paints your insides white, accompanied by an almost shocked gasp from Susan at the sheer ecstasy of a male orgasm as it rocks through her. You relish in her orgasm, reaching up to wrap your arms around her body and pull her in close, kissing the anthro deer on her muzzle as she holds herself tightly pressed against your crotch. 'That - that was amazing,' the doe says in an exhausted but happy tone as she looks into your eyes. Then you add that you expect her to be ready for more, if and when the mood for her hard cock strikes you. 'Of course! Anything for you!' she replies happily, and you can feel a little throb go through her cock as she thinks about future sex.";
			AffectionGain 1 for Susan;
			TraitGain "Fucked a pussy" for Susan;
		else: [repeat]
			say "     Sliding an arm around Susan, you tell her that you want to take her cock in your pussy. The young woman's eyes go wide and a smile crosses her muzzle. Reaching down to plant a hand on her crotch, you can feel her manhood start to grow. 'I've been thinking about our last time - like, a lot!' she admits, which you reward with a grin and a peck on her lips. Wiggling your eyebrows, you tell her that you knew she'd get into fucking, then pop the button of her pants, freeing her rapidly hardening cock from its cloth prison. With just a little push by your hands, the shorts fall down, simply sliding off her slender hooves as she lifts them up. Cupping her soft-furred balls, you give them a playful squeeze, then move your hand up a little, wrapping your fingers around the hard member she's packing. Nine inches long and with a nice girth, it lays well in your hand, getting her even more excited as you stroke it up and down.";
			say "     With your hand still on her erection, you lead the doe to her cot, then pull the top off her body and caress her breasts. Bending your head, you seek out her nipples, gently suckling on them one by one. ";
			if SusanSub is true: [powerbottom - ride Susan's cock]
				say "You continue playing with Susan's breasts a little while longer, then nod at the cot, telling her to lie down and get ready for you. While the submissive doe does so, you [if Player is not naked]quickly strip off your own clothes and gear, just dropping them wherever in your eagerness and step up to the foot of the cot. [else]hastily put down your gear and step up to the foot of the cot. [end if]Lying on her back, her erection standing fully upright like a flagpole, Susan watches you with a lusty expression, her fingers wrapping around the base of her shaft to hold it steady. She is panting rapidly, eager for what will come next, and takes a deep breath as you climb onto the cot with her, moving forward until you're right on top of the anthro.";
				WaitLineBreak;
				say "     With a smile, you move your hips to brush the folds of your sex over Susan's shaft, feeling the slight sensation of wetness as you touch her dickhead and the pre-cum welling up from it. Then you begin to lower yourself down upon her erection. [if Player is male]Your own cock twitches and drips a little pre from the tip as you do so. [end if]A shiver of ecstasy runs up your spine as her cock nudges apart your folds and slides right in. Her rock-hard cock feels warm and filling as it spreads your pussy around its girth, and you can literally feel the rapid heartbeat of the very excited doe pulse inside you. The feeling of having her cock completely enveloped by a receptive pussy wakes lustful urges in Susan yet again, with her finding herself reflexively humping her hips up against yours. Grinning broadly at the eagerness of your cervine partner, you lean over her and brace yourself against the bed, then plant a kiss on her muzzle before rocking back against her shaft. It feels amazing to dominate the little doe even as you take her nine-inch cock, pumping up and down on the spear of her manhood. The sensation of her inside you is one of warmth and slickness - she must be leaking pre-cum like a faucet!";
				say "     This time, you make sure that your pairing won't be over too quickly, despite the anthro's urgent desire to breed you right away. With you being on top, it's not hard to do so, simply pressing yourself down and staying impaled on her shaft to catch a breather, pinning her arms to the bed as she tries to pull on you to start moving again. Smiling and telling her to enjoy herself and not to rush, you kiss her, then her breasts, licking and suckling on Susan's protruding nipples before you begin sliding up and down again. The sensation of her shaft rubbing your inner passage is breathtaking, stimulating you just right to turn your arousal into a furious blaze. It isn't just Susan that you need to take your little breaks for, but yourself as well, as the glorious cock almost sends you barreling over the edge more than once before you can get things under control again.";
				WaitLineBreak;
				say "     Finally, you decide to take out all the stops and begin wildly grinding and gyrating your hips against the anthro deer. Given how much you've wound her up already, it isn't surprising that this quickly drives her over the edge, panting and gasping loudly, 'This feels so good! I'm gonna come!' A heartbeat later, you feel her cock throb deep inside your body, erupting into your pussy with a thick, creamy load of virile deer cum. The sensation of being bred by your sexy doe is the last little push you needed yourself, and with a loud, full-throated moan, you climax while impaled on her shaft. Your [if Player is male]cock jerks and swings up and down from the movements of fucking, spraying its own load all over Susan and yourself while your [end if]pussy gushes with femcum and soaks Susan's fur. You relish in the shared orgasm between the two of you, continuing to slide on and down on her shaft to prolong the experience - so much so that she soon pants and whimpers desperately as her cock becomes sensitive after a while.";
				say "     Susan's hands move to grasp your hips, yet she never truly attempts to hold you fast, being too shy and compliant to do so. This leaves you free to ride her a little while longer before you finally relent, sinking down on her cock and keeping it inside you. 'That - that was amazing,' the doe says in an exhausted but happy tone as she looks up at you, and you lean down to kiss her once more. Then you add that you expect her to be ready for more, if and when the mood for her hard cock strikes you. 'Of course! Anything for you!' she replies happily, and you can feel a little throb go through her cock as she thinks about future sex.";
			else: [missionary fuck]
				say "You continue playing with Susan's breasts a little while longer, then glance up to meet her eyes, telling her that you'll be ready in just a second. [if Player is not naked]After stripping off your own clothes and gear, just dropping them wherever in your eagerness, you lie down on the cot. [else]Hastily putting down your gear, you then lie down on the cot. [end if]Susan watches you get ready with a lusty expression. She is panting rapidly, eager for what will come next, and takes a deep breath, then climbs onto the cot with you, moving forward until she's right on top of you.";
				WaitLineBreak;
				say "     Reaching up to put your hands on the anthro's sides, you slide your fingers over her chest to search out Susan's breasts, lightly pinching and stimulating her nipples. While you do so, the takes hold of her erection and guides it to the receptive pussy waiting for it between your legs, brushing the dickhead along your sensitive nether lips, mingling the herm's pre-cum with your own female juices and drawing a pleased pant from both of your mouths. Then she moves ahead to nudge apart your folds and slides right in. Her rock-hard cock feels warm and filling as it spreads your pussy around its girth, and you can literally feel the rapid heartbeat of the very excited doe pulse inside you. The feeling of having her cock completely enveloped by a pussy is irresistible for Susan, with her starting to hump her hips forward wildly, driving herself deeper before sliding out and then jack-hammering into you again.";
				say "     Moaning with a broad grin on your face at the eagerness of your cervine partner, push against her crotch with every thrust, receiving the fucking you've wanted from her. It feels amazing to see the herm doe let loose with her nine-inch cock, pumping her erection into your body with a warm and slick sensation - she must be leaking pre-cum like a faucet! Knowing that she runs the danger of being overwhelmed by the searing intensity of male arousal after having been a woman for most her life, you make Susan pace herself by pulling the grunting doe down on top of you and keeping her from living out the urges of her breeding rut, legs wrapped around her hips to pin them down and your mouth seeing out her muzzle in a breathless bout of making out. Though no less pleasurable, this dulls the sharp edge of her needing to cum too quickly, prolonging your shared fun when you release her once more and she begins to hammer into your wet pussy once more.";
				WaitLineBreak;
				say "     Before long though, the rutting buck inside of your sweet doe cannot be denied any longer, and Susan shakes off your attempts to draw her in again, instead just bucking against you with ever-increasing vigor. As you realize this, you change tracks yourself, quickly bringing a hand down to [if Player is male]your own cock and jerking it with furious intensity[else]your clit and frigging it with furious intensity[end if]. A heartbeat later, you feel Susan's cock throb deep inside your body, erupting into your pussy with a thick, creamy load of virile deer cum. The sensation of being bred by your sexy doe is the last little push besides your own stimulation you needed, and with a loud, full-throated moan, you climax while impaled on her shaft. Your [if Player is male]cock jerks and swings up and down from the movements of fucking, spraying its own load all over Susan and yourself while your [end if]pussy gushes with femcum and soaks Susan's fur. You relish in the shared orgasm between the two of you, gyrating your hips to grind against Susan even as she stiffens on top of you, completely focused on erupting into your depths.";
				say "     You relish in her orgasm, reaching up to wrap your arms around her body and pull her in close, kissing the anthro deer on her muzzle as she holds herself tightly pressed against your crotch. 'That - that was amazing,' the doe says in an exhausted but happy tone as she looks into your eyes. Then you add that you expect her to be ready for more, if and when the mood for her hard cock strikes you. 'Of course! Anything for you!' she replies happily, and you can feel a little throb go through her cock as she thinks about future sex.";
	NPCSexAftermath Player receives "PussyFuck" from Susan;

to say Susan gives AssFuck:
	say "...";
	NPCSexAftermath Player receives "AssFuck" from Susan;

to say SusanSex1: [fuck Susan]
	say "     She grabs directly for your [cock size desc of Player] [Cock of Player] cock and grins up at you as she strokes it, 'It is just right,' she declares as she pushes you back to the ground, guiding you to lay down and slipping up on top of you. Her warm frame presses softly as it goes and she lines herself up, one hand holding the thick tip of your member, the other parting her nethers. She sinks down along your member, shuddering as it fills her grasping tunnel perfectly. Her wet labia sink down to your groin as she settles on you, breathing hard and just enjoying the feelings for the moment as she gazes into your eyes with a burning affection.";
	NPCSexAftermath Susan receives "PussyFuck" from Player;
	say "     You reach for her sides, trailing upwards and caressing her chest. Fingers catch thick black teats and her back arches towards you as you flick and tease at them. Her hips raise and fall a few inches at a time, wetly sliding across your excited member, wedged deep inside of her. Her own member stands stiff and proud, twitching with her pleasure and dripping thick bits of clear precum along its length and onto your [bodytype of Player] body even as she rides against you, taking your cock deeper with every drop of her curvy form against you. Your hips are soon moving faster, driving up, bouncing her in firm shuddering motions. Her breasts heave against your grasping hands are you hold her, drawing her down against your increasingly frantic ruts.";
	WaitLineBreak;
	say "     She leans back away from your hands, her hands settling on the ground as she bends almost backwards, rutting in a bent position. Your hands find her belly and sides, rubbing and caressing her, hungry eyes taking in the bulge that your own cock creates along her belly, stretched taut in her new position. She moans softly as her shaft tenses and begins to fire, splattering herself with her seed as it arcs through the air in powerful streams. A small part of yourself wonders what it would feel like to be filled with that same seed, but that part is quieted for the moment as your own shaft tenses and lurches, filling the willing doe with your fertile offering.";
	say "     She straightens, then flops on top of you, squirming as you round her with your cum. Her messy front presses stickily to your [bodydesc of Player] body as she hugs tightly to you, heedless of the sticky warmth she shares with you. When your shaft has calmed and lays half firm within her, she leans up to kiss you on either cheek. 'I love you,' she whispers. You smile, grabbing her at the bottom and squeezing her close to snuggle for a moment, enjoying the peace before you are forced to return to other tasks.";
	if HP of Susan is 2:
		now HP of Susan is 4;

to say SusanSex2: [small penis fuck]
	say "     She kneels down in front of you and cups your [cock size desc of Player] [Cock of Player] tool gently, stroking along it with the bare tips of her furry fingers. She firmly strokes along your swiftly hardening shaft as she gazes up into your eyes, 'My great buck, you need to be as large on the outside, as you are on the inside.' You aren't entirely sure what part of you is big on the inside, but cease to care as her snout descends over your cock and begins to suckle noisily at you. Her skilled fingers dip lower to caress your [Ball Size Adjective of Player] orbs in slow teasing as she bobs against you, working you to greater heights as the tingle of change sweeps through you, intensifying with every passing moment.";
	NPCSexAftermath Player receives "OralCock" from Susan;
	say "     The pleasure haze ebbs just slightly as she pulls free of you and returns to slow stroking, 'Still not quite large enough to sate me, my virile buck. We will just wait a little longer.' Her tail wags behind her excitedly as she leans in to lap over the head of your shaft, insufficiently sized or not, and her strokes become firm and fast. Your groans mix with her own as if she could feel your pleasure as if it were within her own body. She squeezes at your entire member with her softly furred paws and your balls clench. Your seed sprays in great milky shots across her long snout, drawing a soft bleat of approval from her. Her long tongue darts to collect the treasure as she raises to her feet, 'Come back later, we can try again.'";
	NPCSexAftermath Player receives "Stroking" from Susan;
	if HP of Susan is 2:
		now HP of Susan is 4;

to say SusanSex3: [Hyper Fuck]
	say "     Susan eyeballs your [cock size desc of Player] shaft a moment before she shakes her head vigorously. 'That's got to be too large for me,' she exclaims, then leans in. 'Isn't it?' The sexy doe takes in the scent of your manhood with a soft, needy sigh and then lets her warm tongue bathe across it. She strokes your [Cock of Player] pole with her soft palms and gives you another moaning lick. Pleasant tingles run through your loins as she continues to lather your cock with her tongue until it's glistening with her saliva.";
	say "     The two of you kiss and snuggle for a while after sex. You run your hands over her [if Ball Size of Player > 6]cum-swollen belly[else if Ball Size of Player > 5]visibly rounded tummy[else]soft tummy[end if] while she caresses your sides. 'Ooo! That was... wow! It's hard to believe I managed to fit that huge cock of yours. Guess it's another crazy thing about that crazy world. Ohhh... though I think I'm going to need a bit of a break before going again after that,' she says, brushing her fingertips across her stretched, swollen and leaking pussy.";
	NPCSexAftermath Susan receives "PussyFuck" from Player;
	now Susanoversize is true;
	if HP of Susan is 2:
		now HP of Susan is 4;

to say SusanSex4: [Hyper Fun]
	say "     Susan eyeballs your [cock size desc of Player] shaft with wide-eyed amazement. 'I was so surprised you could take me with that big cock of yours before. Let's go for it again. Just... just go slow,' she adds, your impressive size still quite daunting. The sexy doe leans in and takes in the scent of your manhood with a soft, needy sigh. Her soft warm tongue bathes over your [Cock of Player] pole as she strokes it with her soft palms. Pleasant tingles run through your loins as she continues to lather your cock with her tongue until it's glistening with her saliva.";
	say "     You guide the pretty doe to lay on her back and spread her legs. Now longing for the [cock size desc of Player] cock she's been worshiping so ardently, she puts her arms around you as you get into position atop her. Lining up your cock to her juicy pussy, you lock your lips to hers and ease forward[if Cock Length of Player > 24]. You go extra slow for your delicate doe, letting her cervine cunt adjust and stretch to accept your massive meat[else]. You go slow for your loving doe, letting her cervine cunt adjust and stretch to fit your oversized meat[end if]. Susan moans into the kiss and hugs you all the tighter, her body quivering in delight as she's penetrated to fully.";
	NPCSexAftermath Susan receives "PussyFuck" from Player;
	WaitLineBreak;
	say "     As you break the kiss and lean up, you're treated to the lovely sight of your cervine lover panting in pleasure as you fuck her. Her cream-furred breasts jiggle and nicely with every large thrust of your pulsing rod into her[if Cock Length of Player >= 36]. Her chest is stretched visibly by your titanic member's phallic shape[else if Cock Length of Player >= 24]. Her tummy is stretched by your mighty member to raise a phallic bulge that moves with every thrust[else]. Her tummy shows a notable bulge from having your large member stuffed inside her[end if]. She rubs a paw over her plumped tummy in blissful awe.";
	say "     'Do it. Do it, my big buck. Give it to me and fill your needy doe-oh-oh-oooooh!' she calls out in orgasmic delight. The feeling of having her hot tunnel squeeze and quiver around you as her femcum soaks your crotch is wonderful. It's so good, you can't hold back for long before you two are crying out in climactic release. You pump your [Cum Load Size of Player] load into the moaning doe, painting her uterus with your semen.";
	if HP of Susan is 2:
		now HP of Susan is 4;

to say SusanSex5: [Susan Sucks the player]
	say "     Kneeling before you Susan holds your [Cock of Player] rod. The doe starts caressing it with her hands and tongue to full hardness and taking it into her snout. You feel her tongue on the back of your cock while she moves it doing her best to keep your arousal growing. With this talent, it's hard to keep yourself from cumming right then and there, but with some strength of mind, you keep yourself in check. Sometimes she goes slow and tastes your [Cock of Player] cock, especially all the pre you keep feeding her. Your horny lover finally lets your rod free. Looking at her to look for an answer on why she would suddenly stop, you can see only a smile and those breasts being pressed against your cock. The deer presses your cock, now fully lubed with her saliva, between her orbs. Her eyes keep staring at you amusedly as those breasts are massaging you.";
	say "     When she is satisfied with your face, she goes back to sucking you. The feeling of both her mouth and the slick press of her breasts around your [Cock of Player] length get you so close to cumming that you close your eyes for a moment. Feeling some vibrations running in your cock, you know that she is amused with this	occurrence. You feel her saliva pooling between her breasts and your cock, exciting you to a point of only pleasure. The doe hungers more and more for your seed, and you intend to give it her.";
	WaitLineBreak;
	say "     You push her head against your groin, penetrating her throat fully. She struggles with the sudden push and invasion but is quick to get used to it. You wait no time and feed her a huge dose of your semen. Rope after long, thick rope of seed you fill her tummy with gusto. When you finally release her head she pulls back with a string of semen still connected to your penis which she cleans quickly. 'Thanks for the meal,' you hear her say with a wink before you get ready for your adventures.";
	NPCSexAftermath Susan receives "OralCock" from Player;
	if HP of Susan is 2:
		now HP of Susan is 4;

to say SusanSex6: [Susan fucks Pussy]
	say "     You kiss the little doe lips, putting your hand on that ebony cock and pulling your lover to her cot. You keep pulling the doe by her cock until you start lining it up with your pussy. [if Susanfirsttime is 0]First you feel the head of her cock, pushing your lips open, and right after she penetrates you completely without warming. You wince from the pain of the sudden invasion, but she doesn't stop. Susan keeps fucking you with eagerness and without experience. As she does so, her body suddenly shifts a little, bulking up - especially at the chest and shoulders. She transitions into a strong and sexy doe-buck that is an attractive mix of the feminine and the masculine. [end if]With ease, she slides that dark cock in your tight pussy. Now used to you and to your body, she keeps pushing while hitting all the right spots, making you almost cum time and time again. Her thrusts get faster as she lets you get more used to her new size, stretching your inner walls until her cock is all the way in and hitting the entrance of your womb.";
	say "     Trying to hold on something to keep yourself stable you end up hugging her neck - and hear her long breaths in your ear. Hearing her grunts and sexy noises makes you feel happy and connected with your deer lover. You feeling your [Skin of Player] skin against her fur and smell her now strong musk. You let yourself get lost in her body. Feeling the doe cock slamming into you making you almost jump from her arms. Her balls are heavy with a need to be emptied inside you. Now all you can do is let her do what she wants to do with you.";
	WaitLineBreak;
	say "     The horny deer keeps trusting into your needy pussy. You can feel her whole cock, all her veins pulsating and sending her heartbeat to your body. You feel yourself orgasming first, your mind goes blank and your body holds her closer. Her balls move and compact as her climax comes to her - your own orgasm grips the black rod that is inside you, begging to be bred by that delicious cock. Your pussy's calls are answered as she finally penetrates your womb, filling it with her potent seed and painting everything inside your womb her color, doing her best to make you pregnant.";
	NPCSexAftermath Player receives "PussyFuck" from Susan;
	say "     When both of you come back from ecstasy you two find each other hugging and heavily breathing. She kisses you and lets you go back to your adventures.";
	if Susanfirsttime is 0:
		now Susanfirsttime is 1;
	if HP of Susan is 2:
		now HP of Susan is 3;

to say SusanSex7: [Susan fucks ass]
	say "     <WIP, sorry, nothing here yet>";
	NPCSexAftermath Player receives "AssFuck" from Susan;

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
		if Player is female:
			NPCSexAftermath Player receives "PussyFuck" from Susan;
		else:
			NPCSexAftermath Player receives "AssFuck" from Susan;
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
		NPCSexAftermath Susan receives "PussyFuck" from Player;
		WaitLineBreak;
		say "     Susan flops back onto her bunk, panting heavily and seeming thoroughly satisfied as she smiles up at you. 'Oh, you are such a wonderful buck, my deer. Thanks for helping me get that out of my system. I love being your doe and I don't want to ever change that.' You smile down at her and lean in, giving her a tender kiss before pulling out, leaving her to rest and recover from the rutting romp that's left her exhausted and sated.";
		now HP of Susan is 53;
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
	now Species Name entry is "Deer"; [name of the overall species of the infection, used for children, ...]
	add "Deer" to infections of CervineList;
	add "Deer" to infections of FurryList;
	add "Deer" to infections of NatureList;
	add "Deer" to infections of HermList;
	add "Deer" to infections of BipedalList;
	add "Deer" to infections of TailList;
	now Name entry is "Deer"; [Name of your new Monster]
	now enemy title entry is "Deer Herm"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is "Susan";
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[if level of Player > 5][one of]One of her helpers grabs you from behind as she lands a solid punch in your gut.[or]Just as you dodge past one of her strikes, you feel soft hands pawing at your groin, one of her helpers manhandling you with eager roughness.[or]To the cheer of her herd, she headbutts you, sharp antlers stinging powerfully where they strike.[at random][else][one of]She mashes you against the ground, heavy breasts pressed to you.[or]Her thick cock slaps against you as she roughly shoves at you.[or]Thick horns prove to be quite sharp as they poke you.[or]A sudden kick lands in your midsection as she lands a hoof on you.[at random][end if]";
	now defeated entry is "[if level of Player > 5]Her allies array in front of her suddenly, guarding her as they all start to back away. The fight seems to be over, for now[else]She gives a loud bleat of pain and scowls at you before she takes flight. Her graceful body carries her long and fast away[end if].";
	now victory entry is "[deer attack]";
	now desc entry is "[mongendernum 5]     A bipedal deer with soft brown fur and creamy off-white belly and undertail. Her nose, eartips and hands are dark hues. Atop her head is a large rack of antlers, proud and powerful. She has large cream covered breasts capped with thick pink teats. She has a hungry, lustful look in her eyes, one hand usually straying to her cock, stroking it almost absentmindedly. It is disturbingly human in appearance, ebon-black fleshed with a cream sheath at the base. She has large, plum-sized balls contained in a creamy colored, softly furred sac. Despite her animalistic appearances, she has hair like a human, running down to a little past her shoulders, a little darker than the brown fur of the majority of her form.[if level of Player > 5] [doestats][end if]"; [ Description of the creature when you encounter it.]
	now face entry is "that of a furry, [if Susan is in primary lab or Susan is in Hidden Lab]feminine[else]antlered[end if], head of an enchanting stag-doe. Your eyes burn with a smoldering lust as they look about from the end of your muzzled face";
	now body entry is "feminine and graceful looking[if Libido of Susan > 0], though your chest and shoulders become strong and masculine[end if]. You have long delicate arms and hands, capped with blackened fingertips, like hooves that don't compromise dexterity";
	now skin entry is "brown furred"; [ skin Description, format as "Looking at yourself, your body is covered in (your text) skin"]
	now tail entry is "Your butt has a deer's tail over it, fluffy and cute with soft cream along the underside. The rest of your ass is quite curvy, your tail hiding nothing.";
	now cock entry is "human";
	now face change entry is "your face draws out into a snout, slender with a wide nose, new scents teasing your addled senses as your ears grow long and narrow, twitching towards sounds. Thick fur swells ticklishly over your new contours as a distracting pain builds at the top of your head[if Susan is in primary lab or Susan is in Hidden Lab]. Grand new antler points swell and grow ornately[end if]. You give a pant, long tongue hanging a moment";
	now body change entry is "your limbs grow long and graceful, slender, feminine[if Libido of Susan > 0]. Your shoulders broader, becoming strong and masculine in contrast to your narrow waist and girly hips[end if]. Your nails seem to cover your fingertips in a protective hoof each. Your feet chance more dramatically, becoming deer hooves";
	now skin change entry is "soft tingles spread in waves as fur sprouts in odd patterns across you, slowly settling into brown fur across sides and back, and a cream line that runs from under your chin to your groin";
	now ass change entry is "a short, upturned, and furry deer tail sprouts into being over your deliciously round and spankable ass";
	now cock change entry is "your , but human-shaped";
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
		CreatureSexAftermath "Player" receives "PussyFuck" from "Deer";
		if Nipple Count of Player > 0 and Breast Size of Player > 0:
			say "     Her hands wrap around you and she softly teases at your nipples, flicking and pinching at them as she rocks against you. As she adjusts her angle of entry, she makes to grab at your [breast size desc of Player] breasts, massaging into the sensitive flesh eagerly, kneading at you as her groin grinds up against your ass, pushing that black cock as deep as it can go.";
		say "     With a triumphant bleat, she unleashes into your waiting cunt, powerful squirts of virile seed splashing into your belly. You groan with unasked for pleasure, body trembling as climax overtakes you. You clench powerfully around her tool, coating it with your own arousal. [if Player is male]Your [cock size desc of Player] dick lurches, then begins to spray against the ground as it abruptly reaches peak as well, emptying your [Ball Size Adjective of Player] balls in waves of bliss. [end if]You slump to the ground and the deer slips off of you, stroking herself a few last times as she eyes you hungrily. 'Later!' she says, turning to leave.";
	else:
		say "     She scowls. 'You are missing something, doe.' She reaches between your legs, rubbing slowly, the soft fur tickling delightfully at sensitive flesh as she caresses you. Warm tingles of nanite change creep through you.";
		follow the sex change rule;
		if Player is female:
			say "     Wrestling your hips up into position, she pinches your bottom with her hard fingertips. 'Naughty doe, playing so hard to get. See what you're missing.' She sinks into you with a wet squelch, your mutinous body already warm and set for her arrival as she sinks deeply into your grasping cunt, thick plug snugly held within you a moment before she draws back. Her motions are sharp and powerful, thick balls slapping up against your ass with each movement.";
			CreatureSexAftermath "Player" receives "PussyFuck" from "Deer";
			if Nipple Count of Player > 0 and Breast Size of Player > 0:
				say "     Her hands wrap around you and she softly teases at your nipples, flicking and pinching at them as she rocks against you. As she adjusts her angle of entry, she makes to grab at your [breast size desc of Player] breasts, massaging into the sensitive flesh eagerly, kneading at you as her groin grinds up against your ass, pushing that black cock as deep as it can go.";
			say "     With a triumphant bleat, she unleashes into your waiting cunt, powerful squirts of virile seed splashing into your belly. You groan with unasked for pleasure, body trembling as climax overtakes you. You clench powerfully around her tool, coating it with your own honeys. [if Player is male]Your [cock size desc of Player] dick lurches, then begins to spray against the ground as it abruptly reaches peak as well, emptying your [Ball Size Adjective of Player] balls in waves of bliss. [end if]You slump to the ground and the deer slips off of you, stroking herself a few last times as she eyes you hungrily. 'Later!' she says, turning to leave.";
		else:
			say "     She grunts in frustration. 'You refuse to be a proper doe for me,' she complains darkly before rolling you onto your belly. 'No matter, even a man can be made a doe,' she says with a disturbing smile as she hikes your ass up and aligns her heavy black cock to you. She roughly mounts, plunging the thick plug of a member into your poor ass, showing her dominance with her punishing motions. Her hands show her softer side, caressing your front in slow, circular motions, promise of a better future if you can get past the searing pain and humiliation you are suffering.";
			if Player is male:
				say "     Her soft palm brushes against your [Cock of Player] member, starting to stroke it in time with her deep pushes into your body. Possibly despite yourself, pleasure builds in your loins and spreads through you. You want to release so badly all of a sudden, [cock size desc of Player] pole throbbing needfully as she strokes it faster and faster.";
				CreatureSexAftermath "Player" receives "Stroking" from "Deer";
			WaitLineBreak;
			say "     She pulls you back suddenly, body rigid as heat begins to spread inside of you from her twitching member. [if Player is male]Your [Ball Size Adjective of Player] balls lurch and you spray into the air, coaxed on by gentle squeezes of her hand, milking you even as she fills you with her thick seed. [end if]Her tongue licks over an ear. 'Good doe. You will be welcome in the herd when you learn your place,' she whispers as she draws free and leaves you, bruised but sated. As she goes, you see her scratching lightly at her heavy balls, scheming lustfully of her next conquest.[mimpregchance]";
			CreatureSexAftermath "Player" receives "AssFuck" from "Deer";

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
